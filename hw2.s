	.text
	.intel_syntax noprefix
	.file	"hw2.c"
	.globl	print_packet                    # -- Begin function print_packet
	.p2align	4, 0x90
	.type	print_packet,@function
print_packet:                           # @print_packet
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r12
	.cfi_def_cfa_offset 40
	push	rbx
	.cfi_def_cfa_offset 48
	sub	rsp, 16
	.cfi_def_cfa_offset 64
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rdi
	movzx	esi, byte ptr [rdi]
	lea	eax, [4*rsi]
	and	eax, 12
	movzx	ecx, byte ptr [rdi + 1]
	mov	edx, ecx
	shr	edx, 5
	or	edx, eax
	shl	ecx, 5
	movzx	eax, byte ptr [rdi + 2]
	mov	edi, eax
	shr	dil, 3
	movzx	edi, dil
	or	edi, ecx
	mov	ecx, eax
	shr	cl, 2
	and	cl, 1
	mov	ebp, eax
	shr	bpl
	and	bpl, 1
	and	al, 1
	shr	esi, 2
	movsx	r14d, dil
	movzx	r8d, cl
	movzx	r9d, bpl
	movzx	eax, al
	mov	dword ptr [rsp], eax
	lea	rdi, [rip + .L.str]
                                        # kill: def $esi killed $esi killed $rsi
	mov	ecx, r14d
	xor	eax, eax
	call	printf@PLT
	lea	rdi, [rip + .L.str.1]
	xor	eax, eax
	call	printf@PLT
	shl	r14d, 2
	test	r14d, r14d
	jle	.LBB0_4
# %bb.1:
	or	r14d, 3
	mov	r12d, 3
	lea	r15, [rip + .L.str.2]
	test	bpl, bpl
	jne	.LBB0_2
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movbe	esi, dword ptr [rbx + r12]
	mov	rdi, r15
	xor	eax, eax
	call	printf@PLT
	add	r12, 4
	cmp	r12, r14
	jb	.LBB0_3
	jmp	.LBB0_4
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mov	esi, dword ptr [rbx + r12]
	mov	rdi, r15
	xor	eax, eax
	call	printf@PLT
	add	r12, 4
	cmp	r12, r14
	jb	.LBB0_2
.LBB0_4:
	mov	edi, 10
	add	rsp, 16
	.cfi_def_cfa_offset 48
	pop	rbx
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	jmp	putchar@PLT                     # TAILCALL
.Lfunc_end0:
	.size	print_packet, .Lfunc_end0-print_packet
	.cfi_endproc
                                        # -- End function
	.globl	i32_from_be_bytes               # -- Begin function i32_from_be_bytes
	.p2align	4, 0x90
	.type	i32_from_be_bytes,@function
i32_from_be_bytes:                      # @i32_from_be_bytes
	.cfi_startproc
# %bb.0:
	movbe	eax, dword ptr [rdi]
	ret
.Lfunc_end1:
	.size	i32_from_be_bytes, .Lfunc_end1-i32_from_be_bytes
	.cfi_endproc
                                        # -- End function
	.globl	i32_from_le_bytes               # -- Begin function i32_from_le_bytes
	.p2align	4, 0x90
	.type	i32_from_le_bytes,@function
i32_from_le_bytes:                      # @i32_from_le_bytes
	.cfi_startproc
# %bb.0:
	mov	eax, dword ptr [rdi]
	ret
.Lfunc_end2:
	.size	i32_from_le_bytes, .Lfunc_end2-i32_from_le_bytes
	.cfi_endproc
                                        # -- End function
	.globl	build_packets                   # -- Begin function build_packets
	.p2align	4, 0x90
	.type	build_packets,@function
build_packets:                          # @build_packets
	.cfi_startproc
# %bb.0:
	xor	eax, eax
	ret
.Lfunc_end3:
	.size	build_packets, .Lfunc_end3-build_packets
	.cfi_endproc
                                        # -- End function
	.globl	create_arrays                   # -- Begin function create_arrays
	.p2align	4, 0x90
	.type	create_arrays,@function
create_arrays:                          # @create_arrays
	.cfi_startproc
# %bb.0:
	xor	eax, eax
	ret
.Lfunc_end4:
	.size	create_arrays, .Lfunc_end4-create_arrays
	.cfi_endproc
                                        # -- End function
	.globl	rotl                            # -- Begin function rotl
	.p2align	4, 0x90
	.type	rotl,@function
rotl:                                   # @rotl
	.cfi_startproc
# %bb.0:
	xor	eax, eax
	ret
.Lfunc_end5:
	.size	rotl, .Lfunc_end5-rotl
	.cfi_endproc
                                        # -- End function
	.globl	rotr                            # -- Begin function rotr
	.p2align	4, 0x90
	.type	rotr,@function
rotr:                                   # @rotr
	.cfi_startproc
# %bb.0:
	xor	eax, eax
	ret
.Lfunc_end6:
	.size	rotr, .Lfunc_end6-rotr
	.cfi_endproc
                                        # -- End function
	.globl	reverse                         # -- Begin function reverse
	.p2align	4, 0x90
	.type	reverse,@function
reverse:                                # @reverse
	.cfi_startproc
# %bb.0:
	xor	eax, eax
	ret
.Lfunc_end7:
	.size	reverse, .Lfunc_end7-reverse
	.cfi_endproc
                                        # -- End function
	.globl	shuffle4                        # -- Begin function shuffle4
	.p2align	4, 0x90
	.type	shuffle4,@function
shuffle4:                               # @shuffle4
	.cfi_startproc
# %bb.0:
	xor	eax, eax
	ret
.Lfunc_end8:
	.size	shuffle4, .Lfunc_end8-shuffle4
	.cfi_endproc
                                        # -- End function
	.globl	unshuffle4                      # -- Begin function unshuffle4
	.p2align	4, 0x90
	.type	unshuffle4,@function
unshuffle4:                             # @unshuffle4
	.cfi_startproc
# %bb.0:
	xor	eax, eax
	ret
.Lfunc_end9:
	.size	unshuffle4, .Lfunc_end9-unshuffle4
	.cfi_endproc
                                        # -- End function
	.globl	shuffle1                        # -- Begin function shuffle1
	.p2align	4, 0x90
	.type	shuffle1,@function
shuffle1:                               # @shuffle1
	.cfi_startproc
# %bb.0:
	xor	eax, eax
	ret
.Lfunc_end10:
	.size	shuffle1, .Lfunc_end10-shuffle1
	.cfi_endproc
                                        # -- End function
	.globl	unshuffle1                      # -- Begin function unshuffle1
	.p2align	4, 0x90
	.type	unshuffle1,@function
unshuffle1:                             # @unshuffle1
	.cfi_startproc
# %bb.0:
	xor	eax, eax
	ret
.Lfunc_end11:
	.size	unshuffle1, .Lfunc_end11-unshuffle1
	.cfi_endproc
                                        # -- End function
	.globl	nth_byte                        # -- Begin function nth_byte
	.p2align	4, 0x90
	.type	nth_byte,@function
nth_byte:                               # @nth_byte
	.cfi_startproc
# %bb.0:
	xor	eax, eax
	ret
.Lfunc_end12:
	.size	nth_byte, .Lfunc_end12-nth_byte
	.cfi_endproc
                                        # -- End function
	.globl	sbu_expand_keys                 # -- Begin function sbu_expand_keys
	.p2align	4, 0x90
	.type	sbu_expand_keys,@function
sbu_expand_keys:                        # @sbu_expand_keys
	.cfi_startproc
# %bb.0:
	ret
.Lfunc_end13:
	.size	sbu_expand_keys, .Lfunc_end13-sbu_expand_keys
	.cfi_endproc
                                        # -- End function
	.globl	scramble                        # -- Begin function scramble
	.p2align	4, 0x90
	.type	scramble,@function
scramble:                               # @scramble
	.cfi_startproc
# %bb.0:
	xor	eax, eax
	ret
.Lfunc_end14:
	.size	scramble, .Lfunc_end14-scramble
	.cfi_endproc
                                        # -- End function
	.globl	mash                            # -- Begin function mash
	.p2align	4, 0x90
	.type	mash,@function
mash:                                   # @mash
	.cfi_startproc
# %bb.0:
	xor	eax, eax
	ret
.Lfunc_end15:
	.size	mash, .Lfunc_end15-mash
	.cfi_endproc
                                        # -- End function
	.globl	sbu_encrypt_block               # -- Begin function sbu_encrypt_block
	.p2align	4, 0x90
	.type	sbu_encrypt_block,@function
sbu_encrypt_block:                      # @sbu_encrypt_block
	.cfi_startproc
# %bb.0:
	xor	eax, eax
	ret
.Lfunc_end16:
	.size	sbu_encrypt_block, .Lfunc_end16-sbu_encrypt_block
	.cfi_endproc
                                        # -- End function
	.globl	r_scramble                      # -- Begin function r_scramble
	.p2align	4, 0x90
	.type	r_scramble,@function
r_scramble:                             # @r_scramble
	.cfi_startproc
# %bb.0:
	xor	eax, eax
	ret
.Lfunc_end17:
	.size	r_scramble, .Lfunc_end17-r_scramble
	.cfi_endproc
                                        # -- End function
	.globl	r_mash                          # -- Begin function r_mash
	.p2align	4, 0x90
	.type	r_mash,@function
r_mash:                                 # @r_mash
	.cfi_startproc
# %bb.0:
	xor	eax, eax
	ret
.Lfunc_end18:
	.size	r_mash, .Lfunc_end18-r_mash
	.cfi_endproc
                                        # -- End function
	.globl	sbu_decrypt_block               # -- Begin function sbu_decrypt_block
	.p2align	4, 0x90
	.type	sbu_decrypt_block,@function
sbu_decrypt_block:                      # @sbu_decrypt_block
	.cfi_startproc
# %bb.0:
	xor	eax, eax
	ret
.Lfunc_end19:
	.size	sbu_decrypt_block, .Lfunc_end19-sbu_decrypt_block
	.cfi_endproc
                                        # -- End function
	.globl	sbu_encrypt                     # -- Begin function sbu_encrypt
	.p2align	4, 0x90
	.type	sbu_encrypt,@function
sbu_encrypt:                            # @sbu_encrypt
	.cfi_startproc
# %bb.0:
	ret
.Lfunc_end20:
	.size	sbu_encrypt, .Lfunc_end20-sbu_encrypt
	.cfi_endproc
                                        # -- End function
	.globl	sbu_decrypt                     # -- Begin function sbu_decrypt
	.p2align	4, 0x90
	.type	sbu_decrypt,@function
sbu_decrypt:                            # @sbu_decrypt
	.cfi_startproc
# %bb.0:
	ret
.Lfunc_end21:
	.size	sbu_decrypt, .Lfunc_end21-sbu_decrypt
	.cfi_endproc
                                        # -- End function
	.globl	pext                            # -- Begin function pext
	.p2align	4, 0x90
	.type	pext,@function
pext:                                   # @pext
	.cfi_startproc
# %bb.0:
	test	rsi, rsi
	je	.LBB22_1
# %bb.3:
	mov	ecx, 1
	xor	eax, eax
	.p2align	4, 0x90
.LBB22_4:                               # =>This Inner Loop Header: Depth=1
	blsi	rdx, rsi
	and	rdx, rdi
	cmovne	rdx, rcx
	or	rax, rdx
	add	rcx, rcx
	blsr	rsi, rsi
	jne	.LBB22_4
# %bb.2:
	ret
.LBB22_1:
	xor	eax, eax
	ret
.Lfunc_end22:
	.size	pext, .Lfunc_end22-pext
	.cfi_endproc
                                        # -- End function
	.globl	pdep                            # -- Begin function pdep
	.p2align	4, 0x90
	.type	pdep,@function
pdep:                                   # @pdep
	.cfi_startproc
# %bb.0:
	test	rsi, rsi
	je	.LBB23_1
# %bb.3:
	mov	ecx, 1
	xor	eax, eax
	.p2align	4, 0x90
.LBB23_4:                               # =>This Inner Loop Header: Depth=1
	mov	rdx, rcx
	and	rdx, rdi
	blsi	r8, rsi
	test	rdx, rdx
	cmove	r8, rdx
	or	rax, r8
	add	rcx, rcx
	blsr	rsi, rsi
	jne	.LBB23_4
# %bb.2:
	ret
.LBB23_1:
	xor	eax, eax
	ret
.Lfunc_end23:
	.size	pdep, .Lfunc_end23-pdep
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Array Number: %d\nFragment Number: %d\nLength: %d\nEncrypted: %d\nEndianness: %d\nLast: %d\n"
	.size	.L.str, 87

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Data: "
	.size	.L.str.1, 7

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%d "
	.size	.L.str.2, 4

	.type	table,@object                   # @table
	.data
	.globl	table
	.p2align	4, 0x0
table:
	.long	1779033703                      # 0x6a09e667
	.long	3144134276                      # 0xbb67ae84
	.long	1013904242                      # 0x3c6ef372
	.long	2773480761                      # 0xa54ff539
	.long	1359893119                      # 0x510e527f
	.long	2600822923                      # 0x9b05688b
	.long	528734635                       # 0x1f83d9ab
	.long	1541459224                      # 0x5be0cd18
	.long	3418070364                      # 0xcbbb9d5c
	.long	1654270249                      # 0x629a2929
	.long	2438529369                      # 0x91590159
	.long	355462360                       # 0x152fecd8
	.long	1731405415                      # 0x67332667
	.long	2394180230                      # 0x8eb44a86
	.long	3675008524                      # 0xdb0c2e0c
	.long	1203062813                      # 0x47b5481d
	.long	2925498710                      # 0xae5f9156
	.long	3479995858                      # 0xcf6c85d2
	.long	796084093                       # 0x2f73477d
	.long	1830299338                      # 0x6d1826ca
	.long	2336478294                      # 0x8b43d456
	.long	3814765973                      # 0xe360b595
	.long	474308610                       # 0x1c456002
	.long	1863934768                      # 0x6f196330
	.long	3645816496                      # 0xd94ebeb0
	.long	214214161                       # 0xcc4a611
	.long	639484402                       # 0x261dc1f2
	.long	1477814205                      # 0x5815a7bd
	.long	1891102055                      # 0x70b7ed67
	.long	2706455656                      # 0xa1513c68
	.long	1157183029                      # 0x44f93635
	.long	1913507325                      # 0x720dcdfd
	.long	3026663069                      # 0xb467369d
	.long	3392277365                      # 0xca320b75
	.long	887149614                       # 0x34e0d42e
	.long	1237834173                      # 0x49c7d9bd
	.long	2276178417                      # 0x87abb9f1
	.long	3294864123                      # 0xc463a2fb
	.long	3963601906                      # 0xec3fc3f2
	.long	656899948                       # 0x27277f6c
	.long	1628171250                      # 0x610bebf2
	.long	1948300446                      # 0x7420b49e
	.long	3523054130                      # 0xd1fd8a32
	.long	3833017747                      # 0xe4773593
	.long	153196533                       # 0x92197f5
	.long	458427541                       # 0x1b530c95
	.long	2258461506                      # 0x869d6342
	.long	4007997006                      # 0xeee52e4e
	.long	285697673                       # 0x11076689
	.long	570139515                       # 0x21fba37b
	.long	1135321013                      # 0x43ab9fb5
	.long	1974073628                      # 0x75a9f91c
	.long	2251313177                      # 0x86305019
	.long	3620569459                      # 0xd7cd8173
	.long	134086911                       # 0x7fe00ff
	.long	933187903                       # 0x379f513f
	.long	1723224488                      # 0x66b651a8
	.long	1984608322                      # 0x764ab842
	.long	2763025376                      # 0xa4b06be0
	.long	3277294612                      # 0xc3578c14
	.long	3533056594                      # 0xd2962a52
	.long	503553856                       # 0x1e039f40
	.long	2239462381                      # 0x857b7bed
	.long	2728129246                      # 0xa29bf2de
	.size	table, 256

	.ident	"clang version 19.1.7"
	.section	".note.GNU-stack","",@progbits
	.addrsig
