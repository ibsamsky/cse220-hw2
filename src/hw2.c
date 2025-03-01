#include <assert.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <errno.h>
#include <math.h>
#include <sys/mman.h>
#include <sys/stat.h>

#ifdef HW2_USE_INTRINSICS
#include <immintrin.h>
#endif

#define HEADER_LEN 3

static inline uint64_t bitmask(uint8_t m, uint8_t n);
static inline uint8_t bit(uint64_t val, uint8_t n);
static inline uint64_t bitsel(uint64_t val, uint8_t m, uint8_t n);
uint64_t pext(uint64_t val, uint64_t mask);
uint64_t pdep(uint64_t val, uint64_t mask);

uint32_t byteswap(uint32_t i);
uint32_t u32_from_be_bytes(const uint8_t b[4]);
uint32_t u32_from_le_bytes(const uint8_t b[4]);
void u32_to_be_bytes(uint8_t b[4], uint32_t i);
void u32_to_le_bytes(uint8_t b[4], uint32_t i);

uint8_t mod(int8_t a, uint8_t b);

// Packet Code:

typedef struct {
  uint8_t hdr[3];
  uint8_t data[];
} AflentPkt;

void print_packet(unsigned char packet[]) {
  uint8_t arrn = bitsel(packet[0], 2, 8);
  uint8_t fragn = bitsel(packet[0], 0, 2) << 2 | bitsel(packet[1], 5, 8);
  uint8_t length = bitsel(packet[1], 0, 5) << 5 | bitsel(packet[2], 3, 8);
  uint8_t encrypt = bit(packet[2], 2), endian = bit(packet[2], 1),
          last = bit(packet[2], 0);

  printf("Array Number: %d\nFragment Number: %d\nLength: %d\nEncrypted: "
         "%d\nEndianness: %d\nLast: %d\n",
         arrn, fragn, length, encrypt, endian, last);

  printf("Data: ");

  int dp = HEADER_LEN;

  while (dp < HEADER_LEN + (length * 4)) {
    uint32_t data = endian == 0 ? u32_from_be_bytes(packet + dp)
                                : u32_from_le_bytes(packet + dp);
    printf("%x ", data);
    dp += 4;
  }
  printf("\n");
}

unsigned char *build_packets(int data[], int data_length, int max_fragment_size,
                             int endianness, int array_number) {

  const int BYTES_PER_DATA = sizeof(*data);
  int num_packets =
      data_length * BYTES_PER_DATA > max_fragment_size
          ? ((data_length * BYTES_PER_DATA) + max_fragment_size - 1) /
                max_fragment_size
          : 1;
  int data_per_packet = (data_length + num_packets - 1) / num_packets;

  // 3 bytes per header, 4 bytes per payload item
  uint8_t *out = malloc((3 * num_packets) + (data_length * BYTES_PER_DATA));

  // header with fragment number 0, last=0, length=0
  uint8_t hdr1 = array_number << 2;
  uint8_t hdr2 = 0U;
  uint8_t hdr3 = endianness << 1;

  int data_written = 0;
  for (int p = 0; p < num_packets; p++) {
    size_t packet_start = (3 * p) + (BYTES_PER_DATA * data_written);
    uint8_t frag = p;
    uint8_t last = (p + 1 == num_packets) ? 1 : 0;
    uint16_t length = data_written + data_per_packet > data_length
                         ? data_length - data_written
                         : data_per_packet;

    // set header values
    uint8_t hdr[3] = {
        (hdr1 | bitsel(frag, 3, 5)),
        (hdr2 | (bitsel(frag, 0, 3) << 5) | bitsel(length, 5, 10)),
        (hdr3 | (bitsel(length, 0, 5) << 3) | last)};

    // copy header
    memcpy(out + packet_start, hdr, 3);

    // copy data
    for (size_t d = 0; d < length; d++) {
      uint8_t *data_start = out + packet_start + 3 + (d * BYTES_PER_DATA);
      if (endianness == 0)
        u32_to_be_bytes(data_start, data[data_written]);
      else
        u32_to_le_bytes(data_start, data[data_written]);

      data_written++;
    }
  }

  return out;
}

int **create_arrays(unsigned char packets[], int array_count,
                    int *array_lengths) {
  (void)packets; // This line is only here to avoid compiler issues. Once you
                 // implement the function, please delete this line
  (void)array_count;   // This line is only here to avoid compiler issues. Once
                       // you implement the function, please delete this line
  (void)array_lengths; // This line is only here to avoid compiler issues. Once
                       // you implement the function, please delete this line
  return NULL;
}

// Encryption Code:

#define EXPANDED_KEYS_LENGTH 32

typedef uint64_t sbu_key_t;
typedef uint32_t block_t;
typedef block_t (*permute_func_t)(block_t);

block_t table[] = {
    0x6a09e667, 0xbb67ae84, 0x3c6ef372, 0xa54ff539, 0x510e527f, 0x9b05688b,
    0x1f83d9ab, 0x5be0cd18, 0xcbbb9d5c, 0x629a2929, 0x91590159, 0x152fecd8,
    0x67332667, 0x8eb44a86, 0xdb0c2e0c, 0x47b5481d, 0xae5f9156, 0xcf6c85d2,
    0x2f73477d, 0x6d1826ca, 0x8b43d456, 0xe360b595, 0x1c456002, 0x6f196330,
    0xd94ebeb0, 0x0cc4a611, 0x261dc1f2, 0x5815a7bd, 0x70b7ed67, 0xa1513c68,
    0x44f93635, 0x720dcdfd, 0xb467369d, 0xca320b75, 0x34e0d42e, 0x49c7d9bd,
    0x87abb9f1, 0xc463a2fb, 0xec3fc3f2, 0x27277f6c, 0x610bebf2, 0x7420b49e,
    0xd1fd8a32, 0xe4773593, 0x092197f5, 0x1b530c95, 0x869d6342, 0xeee52e4e,
    0x11076689, 0x21fba37b, 0x43ab9fb5, 0x75a9f91c, 0x86305019, 0xd7cd8173,
    0x07fe00ff, 0x379f513f, 0x66b651a8, 0x764ab842, 0xa4b06be0, 0xc3578c14,
    0xd2962a52, 0x1e039f40, 0x857b7bed, 0xa29bf2de};

// ----------------- Bitwise Functions ----------------- //

uint8_t rotl(uint8_t x, uint8_t shamt) {
  return (x << (shamt % 8)) | (x >> (8 - (shamt % 8)));
}

uint8_t rotr(uint8_t x, uint8_t shamt) {
  return (x >> (shamt % 8)) | (x << (8 - (shamt % 8)));
}

block_t reverse(block_t x) {
  // loop (compiles to 4 instructions)

  // it's probably possible to do this only using masks but it's not worth the
  // effort for me
  block_t res = 0;
  for (int i = 0; i < 32; i++) {
    res |= (x & 1) << (31 - i);
    x >>= 1;
  }
  return res;
}

block_t shuffle4(block_t x) {
  // aaaabbbbccccdddd eeeeffffgggghhhh
  // 1   3   5   7    2   4   6   8
  // high mask: F0F0F0F0
  //  low mask: 0F0F0F0F

  return pdep(bitsel(x, 0, 16), 0x0F0F0F0FUL) |
         pdep(bitsel(x, 16, 32), 0xF0F0F0F0UL);
}

block_t unshuffle4(block_t x) {
  return pext(x, 0xF0F0F0F0UL) << 16 | pext(x, 0x0F0F0F0FUL);
}

block_t shuffle1(block_t x) {
  return pdep(bitsel(x, 0, 16), 0x55555555UL) |
         pdep(bitsel(x, 16, 32), 0xAAAAAAAAUL);
}

block_t unshuffle1(block_t x) {
  return pext(x, 0xAAAAAAAAUL) << 16 | pext(x, 0x55555555UL);
}

uint8_t nth_byte(block_t x, int8_t n) {
  return bitsel(x, 8 * mod(n, 4), 8 * (mod(n, 4) + 1));
}

// ----------------- Encryption Functions ----------------- //

void sbu_expand_keys(sbu_key_t key, block_t *expanded_keys) {
  // load
  // expanded_keys[0] = bitsel(key, 0, 32); // [31:0]
  // expanded_keys[1] = bitsel(key, 32, 64); // [63:32]

  // same thing
  memcpy(expanded_keys, &key, 8);

  // generate forward
  for (int i = 2; i <= 31; i++) {
    expanded_keys[i] =
        table[(expanded_keys[i - 1] ^ expanded_keys[i - 2]) % 64] ^
        expanded_keys[i - 1];
  }

  // S[31:30] is constant at this point

  // generate backward
  for (int i = 29; i >= 0; i--) {
    expanded_keys[i] =
        table[(expanded_keys[i + 1] ^ expanded_keys[i + 2]) % 64] ^
        expanded_keys[i];
  }
}

uint8_t scramble_op(block_t B, uint8_t i, block_t keyA, block_t keyB) {
  uint8_t B1 = nth_byte(B, i) ^ (nth_byte(B, i - 1) & nth_byte(B, i - 2)) ^
               (~nth_byte(B, i - 1) & nth_byte(B, i - 3)) ^ nth_byte(keyA, i) ^
               nth_byte(keyB, i);
  return rotl(B1, i == 0 ? 2 : ((2 * i) + 1));
}

block_t scramble(block_t x, block_t *keys, uint32_t round, permute_func_t op) {
  block_t keyA = keys[round], keyB = keys[31 - round];
  block_t B = op(x);
  B = (B & ~bitmask(0, 8)) | scramble_op(B, 0, keyA, keyB);
  B = (B & ~bitmask(8, 16)) | (scramble_op(B, 1, keyA, keyB) << 8);
  B = (B & ~bitmask(16, 24)) | (scramble_op(B, 2, keyA, keyB) << 16);
  B = (B & ~bitmask(24, 32)) | (scramble_op(B, 3, keyA, keyB) << 24);
  return B;
}

uint8_t mash_op(block_t B, uint8_t i, block_t *S) {
  block_t key = S[nth_byte(B, i - 1) % 32];
  return nth_byte(B, i) ^ nth_byte(key, i);
}

block_t mash(block_t x, block_t *keys) {
  x = (x & ~bitmask(0, 8)) | mash_op(x, 0, keys);
  x = (x & ~bitmask(8, 16)) | (mash_op(x, 1, keys) << 8);
  x = (x & ~bitmask(16, 24)) | (mash_op(x, 2, keys) << 16);
  x = (x & ~bitmask(24, 32)) | (mash_op(x, 3, keys) << 24);
  return x;
}

block_t sbu_encrypt_block(block_t plain_text, block_t *expanded_keys) {
  block_t R01 = scramble(plain_text, expanded_keys, 0, reverse);
  block_t R02 = scramble(R01, expanded_keys, 1, shuffle1);
  block_t R03 = scramble(R02, expanded_keys, 2, shuffle4);
  block_t R04 = scramble(R03, expanded_keys, 3, reverse);
  block_t R05 = mash(R04, expanded_keys);
  block_t R06 = scramble(R05, expanded_keys, 4, reverse);
  block_t R07 = scramble(R06, expanded_keys, 5, shuffle1);
  block_t R08 = scramble(R07, expanded_keys, 6, shuffle4);
  block_t R09 = scramble(R08, expanded_keys, 7, reverse);
  block_t R10 = mash(R09, expanded_keys);
  block_t R11 = scramble(R10, expanded_keys, 8, reverse);
  block_t R12 = scramble(R11, expanded_keys, 9, shuffle1);
  block_t R13 = scramble(R12, expanded_keys, 10, shuffle4);
  block_t R14 = scramble(R13, expanded_keys, 11, reverse);
  block_t R15 = mash(R14, expanded_keys);
  block_t R16 = scramble(R15, expanded_keys, 12, reverse);
  block_t R17 = scramble(R16, expanded_keys, 13, shuffle1);
  block_t R18 = scramble(R17, expanded_keys, 14, shuffle4);
  block_t R19 = scramble(R18, expanded_keys, 15, reverse);
  return R19;
}

uint8_t r_scramble_op(block_t B, uint8_t i, block_t keyA, block_t keyB) {
  uint8_t B1 = rotr(nth_byte(B, i), i == 0 ? 2 : ((2 * i) + 1));
  return B1 ^ (nth_byte(B, i - 1) & nth_byte(B, i - 2)) ^
         (~nth_byte(B, i - 1) & nth_byte(B, i - 3)) ^ nth_byte(keyA, i) ^
         nth_byte(keyB, i);
}

block_t r_scramble(block_t x, block_t *keys, uint32_t round,
                   permute_func_t op) {
  block_t keyA = keys[round], keyB = keys[31 - round];

  x = (x & ~bitmask(24, 32)) | (r_scramble_op(x, 3, keyA, keyB) << 24);
  x = (x & ~bitmask(16, 24)) | (r_scramble_op(x, 2, keyA, keyB) << 16);
  x = (x & ~bitmask(8, 16)) | (r_scramble_op(x, 1, keyA, keyB) << 8);
  x = (x & ~bitmask(0, 8)) | r_scramble_op(x, 0, keyA, keyB);

  x = op(x);
  return x;
}

block_t r_mash(block_t x, block_t *keys) {
  x = (x & ~bitmask(24, 32)) | (mash_op(x, 3, keys) << 24);
  x = (x & ~bitmask(16, 24)) | (mash_op(x, 2, keys) << 16);
  x = (x & ~bitmask(8, 16)) | (mash_op(x, 1, keys) << 8);
  x = (x & ~bitmask(0, 8)) | mash_op(x, 0, keys);
  return x;
}

block_t noop(block_t x, block_t *keys) { return r_mash(mash(x, keys), keys); }

block_t sbu_decrypt_block(block_t cipher_text, block_t *expanded_keys) {
  block_t R01 = r_scramble(cipher_text, expanded_keys, 15, reverse);
  block_t R02 = r_scramble(R01, expanded_keys, 14, unshuffle4);
  block_t R03 = r_scramble(R02, expanded_keys, 13, unshuffle1);
  block_t R04 = r_scramble(R03, expanded_keys, 12, reverse);
  block_t R05 = r_mash(R04, expanded_keys);
  block_t R06 = r_scramble(R05, expanded_keys, 11, reverse);
  block_t R07 = r_scramble(R06, expanded_keys, 10, unshuffle4);
  block_t R08 = r_scramble(R07, expanded_keys, 9, unshuffle1);
  block_t R09 = r_scramble(R08, expanded_keys, 8, reverse);
  block_t R10 = r_mash(R09, expanded_keys);
  block_t R11 = r_scramble(R10, expanded_keys, 7, reverse);
  block_t R12 = r_scramble(R11, expanded_keys, 6, unshuffle4);
  block_t R13 = r_scramble(R12, expanded_keys, 5, unshuffle1);
  block_t R14 = r_scramble(R13, expanded_keys, 4, reverse);
  block_t R15 = r_mash(R14, expanded_keys);
  block_t R16 = r_scramble(R15, expanded_keys, 3, reverse);
  block_t R17 = r_scramble(R16, expanded_keys, 2, unshuffle4);
  block_t R18 = r_scramble(R17, expanded_keys, 1, unshuffle1);
  block_t R19 = r_scramble(R18, expanded_keys, 0, reverse);
  return R19;
}

void sbu_encrypt(uint8_t *plaintext_input, block_t *encrypted_output,
                 size_t pt_len, uint32_t *expanded_keys) {
  size_t tp = 0;

  while (tp < pt_len - 4) {
    block_t pt_block = u32_from_le_bytes(plaintext_input + tp);
    block_t en_block = sbu_encrypt_block(pt_block, expanded_keys);
    encrypted_output[tp / sizeof(*encrypted_output)] = en_block;
    tp += 4;
  }

  // copy the remainder to zeroed array
  uint8_t last[4];
  memset(last, 0, 4);
  memcpy(last, plaintext_input + tp, pt_len - tp);

  encrypted_output[tp / sizeof(*encrypted_output)] =
      sbu_encrypt_block(u32_from_le_bytes(last), expanded_keys);
}

void sbu_decrypt(block_t *encrypted_input, char *plaintext_output,
                 size_t pt_len, uint32_t *expanded_keys) {
  size_t ep = 0;

  // round up to nearest multiple of 4
  const size_t BYTES_PER_BLOCK = sizeof(*encrypted_input);
  uint8_t *pt_out = malloc(((pt_len + BYTES_PER_BLOCK - 1) / BYTES_PER_BLOCK) *
                           BYTES_PER_BLOCK);

  while (ep * BYTES_PER_BLOCK < pt_len) {
    block_t pt_block = sbu_decrypt_block(encrypted_input[ep], expanded_keys);
    // copy next 4 bytes to output
    u32_to_le_bytes(pt_out + (ep * BYTES_PER_BLOCK), pt_block);
    // advance
    ep++;
  }

  // copy pt_len bytes to output buffer
  memcpy(plaintext_output, pt_out, pt_len);

  free(pt_out);
}

// ----------------- Utility Functions ----------------- //

// ??? why are they down here

// mask from bit m to bit n, exclusive (Lsb0 order)
static inline uint64_t bitmask(uint8_t m, uint8_t n) {
  return ~(-1UL << (n - m)) << m;
}

static inline uint8_t bit(uint64_t val, uint8_t n) { return (val >> n) & 1; }

// masks and shifts the bits in position m to position n of val (Lsb0 order)
static inline uint64_t bitsel(uint64_t val, uint8_t m, uint8_t n) {
  return (val & bitmask(m, n)) >> m;
}

// Parallel bits EXTract
// https://www.felixcloutier.com/x86/pext
uint64_t pext(uint64_t val, uint64_t mask) {
#ifdef HW2_USE_INTRINSICS
  if (!__builtin_cpu_supports("bmi2")) {
#endif
    uint64_t res = 0;
    for (uint64_t bit = 1; mask; bit += bit) {
      if (val & mask & -mask) // if ls1b of mask set in val
        res |= bit;
      mask &= mask - 1; // clear ls1b
    }
    return res;
#ifdef HW2_USE_INTRINSICS
  }
  return _pext_u64(val, mask);
#endif
}

// Parallel bits DEPosit
// https://www.felixcloutier.com/x86/pdep
uint64_t pdep(uint64_t val, uint64_t mask) {
#ifdef HW2_USE_INTRINSICS
  if (!__builtin_cpu_supports("bmi2")) {
#endif
    // this compiles to a huge simd-vectorized loop :(
    uint64_t res = 0;
    for (uint64_t bit = 1; mask; bit += bit) {
      if (val & bit)
        res |= mask & -mask; // set ls1b of mask in res
      mask &= mask - 1;      // clear ls1b
    }
    return res;
#ifdef HW2_USE_INTRINSICS
  }
  return _pdep_u64(val, mask);
#endif
}

// network?
uint32_t u32_from_be_bytes(const uint8_t b[4]) {
  return (b[0] << 24) | (b[1] << 16) | (b[2] << 8) | b[3];
}

uint32_t byteswap(uint32_t i) {
  return bitsel(i, 0, 8) << 24 | bitsel(i, 8, 16) << 16 |
         bitsel(i, 16, 24) << 8 | bitsel(i, 24, 32);
}

void u32_to_be_bytes(uint8_t b[4], uint32_t i) {
  b[0] = (i >> 24) & 0xFFU;
  b[1] = (i >> 16) & 0xFFU;
  b[2] = (i >> 8) & 0xFFU;
  b[3] = i & 0xFFU;
}

// host/native?
uint32_t u32_from_le_bytes(const uint8_t b[4]) {
  return (b[3] << 24) | (b[2] << 16) | (b[1] << 8) | b[0];
}

void u32_to_le_bytes(uint8_t b[4], uint32_t i) {
  b[0] = i & 0xFFU;
  b[1] = (i >> 8) & 0xFFU;
  b[2] = (i >> 16) & 0xFFU;
  b[3] = (i >> 24) & 0xFFU;
}

// positive modulo of a and b
uint8_t mod(int8_t a, uint8_t b) { return ((a % (int8_t)b) + b) % b; }