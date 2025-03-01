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
	movzx	eax, byte ptr [rdi]
	mov	esi, eax
	shr	esi, 2
	shl	eax, 2
	and	eax, 12
	movzx	ecx, byte ptr [rdi + 1]
	mov	edx, ecx
	shr	edx, 5
	or	edx, eax
	shl	ecx, 5
	movzx	eax, byte ptr [rdi + 2]
	mov	r14d, eax
	shr	r14d, 3
	or	r14d, ecx
	mov	r8d, eax
	shr	r8d, 2
	and	r8d, 1
	mov	ebp, eax
	shr	ebp
	and	ebp, 1
	and	eax, 1
	mov	dword ptr [rsp], eax
	lea	rdi, [rip + .L.str]
	mov	ecx, r14d
	and	ecx, 255
	mov	r9d, ebp
	xor	eax, eax
	call	printf@PLT
	lea	rdi, [rip + .L.str.1]
	xor	eax, eax
	call	printf@PLT
	and	r14d, 255
	je	.LBB0_4
# %bb.1:
	lea	r15d, [4*r14 + 3]
	mov	r12d, 3
	lea	r14, [rip + .L.str.2]
	test	bpl, bpl
	je	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mov	esi, dword ptr [rbx + r12]
	mov	rdi, r14
	xor	eax, eax
	call	printf@PLT
	add	r12, 4
	cmp	r12, r15
	jb	.LBB0_2
	jmp	.LBB0_4
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movbe	esi, dword ptr [rbx + r12]
	mov	rdi, r14
	xor	eax, eax
	call	printf@PLT
	add	r12, 4
	cmp	r12, r15
	jb	.LBB0_3
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
	.globl	u32_from_be_bytes               # -- Begin function u32_from_be_bytes
	.p2align	4, 0x90
	.type	u32_from_be_bytes,@function
u32_from_be_bytes:                      # @u32_from_be_bytes
	.cfi_startproc
# %bb.0:
	movbe	eax, dword ptr [rdi]
	ret
.Lfunc_end1:
	.size	u32_from_be_bytes, .Lfunc_end1-u32_from_be_bytes
	.cfi_endproc
                                        # -- End function
	.globl	u32_from_le_bytes               # -- Begin function u32_from_le_bytes
	.p2align	4, 0x90
	.type	u32_from_le_bytes,@function
u32_from_le_bytes:                      # @u32_from_le_bytes
	.cfi_startproc
# %bb.0:
	mov	eax, dword ptr [rdi]
	ret
.Lfunc_end2:
	.size	u32_from_le_bytes, .Lfunc_end2-u32_from_le_bytes
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
	mov	ecx, esi
	mov	eax, edi
                                        # kill: def $cl killed $cl killed $ecx
	rol	al, cl
                                        # kill: def $al killed $al killed $eax
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
	mov	ecx, esi
	mov	eax, edi
                                        # kill: def $cl killed $cl killed $ecx
	ror	al, cl
                                        # kill: def $al killed $al killed $eax
	ret
.Lfunc_end6:
	.size	rotr, .Lfunc_end6-rotr
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function reverse
.LCPI7_0:
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.byte	8                               # 0x8
	.byte	16                              # 0x10
	.byte	32                              # 0x20
	.byte	64                              # 0x40
	.byte	128                             # 0x80
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.byte	8                               # 0x8
	.byte	16                              # 0x10
	.byte	32                              # 0x20
	.byte	64                              # 0x40
	.byte	128                             # 0x80
	.text
	.globl	reverse
	.p2align	4, 0x90
	.type	reverse,@function
reverse:                                # @reverse
	.cfi_startproc
# %bb.0:
	vmovd	xmm0, edi
	vgf2p8affineqb	xmm0, xmm0, xmmword ptr [rip + .LCPI7_0], 0
	vmovd	eax, xmm0
	bswap	eax
	ret
.Lfunc_end7:
	.size	reverse, .Lfunc_end7-reverse
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function shuffle4
.LCPI8_0:
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	12                              # 0xc
	.long	12                              # 0xc
.LCPI8_1:
	.long	1024                            # 0x400
	.long	2048                            # 0x800
	.long	65536                           # 0x10000
	.long	131072                          # 0x20000
	.long	262144                          # 0x40000
	.long	524288                          # 0x80000
	.long	16777216                        # 0x1000000
	.long	33554432                        # 0x2000000
.LCPI8_2:
	.long	12                              # 0xc
	.long	12                              # 0xc
	.long	12                              # 0xc
	.long	12                              # 0xc
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	8                               # 0x8
.LCPI8_3:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	4                               # 0x4
	.long	5                               # 0x5
	.long	4                               # 0x4
	.long	7                               # 0x7
.LCPI8_4:
	.long	1048576                         # 0x100000
	.long	2097152                         # 0x200000
	.long	4194304                         # 0x400000
	.long	8388608                         # 0x800000
	.long	4026531840                      # 0xf0000000
	.long	256                             # 0x100
	.long	15                              # 0xf
	.long	512                             # 0x200
.LCPI8_5:
	.long	32                              # 0x20
	.long	16                              # 0x10
	.long	64                              # 0x40
	.long	128                             # 0x80
	.long	4096                            # 0x1000
	.long	8192                            # 0x2000
	.long	16384                           # 0x4000
	.long	32768                           # 0x8000
	.section	.rodata.cst8,"aM",@progbits,8
.LCPI8_6:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	7                               # 0x7
	.text
	.globl	shuffle4
	.p2align	4, 0x90
	.type	shuffle4,@function
shuffle4:                               # @shuffle4
	.cfi_startproc
# %bb.0:
	mov	eax, edi
	vmovd	xmm0, edi
	vpbroadcastd	ymm0, xmm0
	vpsllvd	ymm1, ymm0, ymmword ptr [rip + .LCPI8_0]
	vpand	ymm1, ymm1, ymmword ptr [rip + .LCPI8_1]
	shl	eax, 4
	shl	edi, 12
	mov	ecx, edi
	and	ecx, 67108864
	and	edi, 134217728
	vpsrlvd	ymm2, ymm0, ymmword ptr [rip + .LCPI8_2]
	vpsrld	xmm3, xmm0, 4
	vpblendd	ymm0, ymm3, ymm0, 240           # ymm0 = ymm3[0,1,2,3],ymm0[4,5,6,7]
	vpshufd	ymm0, ymm0, 0                   # ymm0 = ymm0[0,0,0,0,4,4,4,4]
	vmovd	xmm3, eax
	vpbroadcastd	ymm3, xmm3
	vpblendd	ymm0, ymm0, ymm3, 160           # ymm0 = ymm0[0,1,2,3,4],ymm3[5],ymm0[6],ymm3[7]
	vpmovsxbd	ymm3, qword ptr [rip + .LCPI8_6] # ymm3 = [0,1,2,3,4,5,4,7]
	vpermd	ymm0, ymm3, ymm0
	vpand	ymm0, ymm0, ymmword ptr [rip + .LCPI8_4]
	vpand	ymm2, ymm2, ymmword ptr [rip + .LCPI8_5]
	vpor	ymm0, ymm2, ymm0
	vextracti128	xmm2, ymm0, 1
	vpor	xmm0, xmm0, xmm2
	vpshufd	xmm2, xmm0, 238                 # xmm2 = xmm0[2,3,2,3]
	vpor	xmm0, xmm0, xmm2
	vpshufd	xmm2, xmm0, 85                  # xmm2 = xmm0[1,1,1,1]
	vpor	xmm0, xmm0, xmm2
	vmovd	edx, xmm0
	vextracti128	xmm0, ymm1, 1
	vpor	xmm0, xmm1, xmm0
	vpshufd	xmm1, xmm0, 238                 # xmm1 = xmm0[2,3,2,3]
	vpor	xmm0, xmm0, xmm1
	vpshufd	xmm1, xmm0, 85                  # xmm1 = xmm0[1,1,1,1]
	vpor	xmm0, xmm0, xmm1
	vmovd	eax, xmm0
	or	eax, ecx
	or	eax, edi
	or	eax, edx
	vzeroupper
	ret
.Lfunc_end8:
	.size	shuffle4, .Lfunc_end8-shuffle4
	.cfi_endproc
                                        # -- End function
	.globl	pdep                            # -- Begin function pdep
	.p2align	4, 0x90
	.type	pdep,@function
pdep:                                   # @pdep
	.cfi_startproc
# %bb.0:
	test	rsi, rsi
	je	.LBB9_1
# %bb.3:
	mov	ecx, 1
	xor	eax, eax
	.p2align	4, 0x90
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	mov	rdx, rcx
	and	rdx, rdi
	blsi	r8, rsi
	test	rdx, rdx
	cmove	r8, rdx
	or	rax, r8
	add	rcx, rcx
	blsr	rsi, rsi
	jne	.LBB9_4
# %bb.2:
	ret
.LBB9_1:
	xor	eax, eax
	ret
.Lfunc_end9:
	.size	pdep, .Lfunc_end9-pdep
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function unshuffle4
.LCPI10_0:
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	8                               # 0x8
.LCPI10_2:
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	12                              # 0xc
.LCPI10_3:
	.long	32                              # 0x20
	.long	64                              # 0x40
	.long	128                             # 0x80
	.long	256                             # 0x100
	.long	512                             # 0x200
	.long	1024                            # 0x400
	.long	2048                            # 0x800
	.long	4096                            # 0x1000
.LCPI10_4:
	.long	2                               # 0x2
	.long	1                               # 0x1
	.long	4                               # 0x4
	.long	8                               # 0x8
	.long	16                              # 0x10
	.long	32                              # 0x20
	.long	64                              # 0x40
	.long	128                             # 0x80
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI10_1:
	.long	256                             # 0x100
	.long	512                             # 0x200
	.long	1024                            # 0x400
	.long	2048                            # 0x800
	.text
	.globl	unshuffle4
	.p2align	4, 0x90
	.type	unshuffle4,@function
unshuffle4:                             # @unshuffle4
	.cfi_startproc
# %bb.0:
	vmovd	xmm0, edi
	vpbroadcastd	ymm0, xmm0
	vpsrlvd	ymm1, ymm0, ymmword ptr [rip + .LCPI10_0]
	vpsrld	xmm2, xmm0, 12
	vpbroadcastd	xmm2, xmm2
	vpand	xmm2, xmm2, xmmword ptr [rip + .LCPI10_1]
	mov	edx, edi
	and	edx, 15
	mov	esi, edi
	shr	esi, 4
	vpsrlvd	ymm0, ymm0, ymmword ptr [rip + .LCPI10_2]
	and	esi, 16
	vpand	ymm0, ymm0, ymmword ptr [rip + .LCPI10_3]
	mov	eax, edi
	shr	eax, 12
	mov	ecx, eax
	and	ecx, 8192
	or	ecx, edx
	or	ecx, esi
	vpand	ymm1, ymm1, ymmword ptr [rip + .LCPI10_4]
	vextracti128	xmm3, ymm1, 1
	vpor	xmm1, xmm1, xmm3
	vpshufd	xmm3, xmm1, 238                 # xmm3 = xmm1[2,3,2,3]
	vpor	xmm1, xmm1, xmm3
	vpshufd	xmm3, xmm1, 85                  # xmm3 = xmm1[1,1,1,1]
	vpor	xmm1, xmm1, xmm3
	vmovd	edx, xmm1
	vpshufd	xmm1, xmm2, 238                 # xmm1 = xmm2[2,3,2,3]
	vpor	xmm1, xmm2, xmm1
	vpshufd	xmm2, xmm1, 85                  # xmm2 = xmm1[1,1,1,1]
	vpor	xmm1, xmm1, xmm2
	vmovd	esi, xmm1
	or	esi, edx
	shl	esi, 16
	and	edi, -268435456
	or	esi, edi
	vextracti128	xmm1, ymm0, 1
	vpor	xmm0, xmm0, xmm1
	vpshufd	xmm1, xmm0, 238                 # xmm1 = xmm0[2,3,2,3]
	vpor	xmm0, xmm0, xmm1
	vpshufd	xmm1, xmm0, 85                  # xmm1 = xmm0[1,1,1,1]
	vpor	xmm0, xmm0, xmm1
	vmovd	edx, xmm0
	or	edx, ecx
	and	eax, 49152
	or	eax, esi
	or	eax, edx
	vzeroupper
	ret
.Lfunc_end10:
	.size	unshuffle4, .Lfunc_end10-unshuffle4
	.cfi_endproc
                                        # -- End function
	.globl	pext                            # -- Begin function pext
	.p2align	4, 0x90
	.type	pext,@function
pext:                                   # @pext
	.cfi_startproc
# %bb.0:
	test	rsi, rsi
	je	.LBB11_1
# %bb.3:
	mov	ecx, 1
	xor	eax, eax
	.p2align	4, 0x90
.LBB11_4:                               # =>This Inner Loop Header: Depth=1
	blsi	rdx, rsi
	and	rdx, rdi
	cmovne	rdx, rcx
	or	rax, rdx
	add	rcx, rcx
	blsr	rsi, rsi
	jne	.LBB11_4
# %bb.2:
	ret
.LBB11_1:
	xor	eax, eax
	ret
.Lfunc_end11:
	.size	pext, .Lfunc_end11-pext
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function shuffle1
.LCPI12_0:
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	4                               # 0x4
	.long	5                               # 0x5
	.long	6                               # 0x6
	.long	7                               # 0x7
	.long	8                               # 0x8
.LCPI12_2:
	.long	14                              # 0xe
	.long	15                              # 0xf
	.long	13                              # 0xd
	.long	12                              # 0xc
	.long	11                              # 0xb
	.long	10                              # 0xa
	.long	9                               # 0x9
	.long	8                               # 0x8
.LCPI12_4:
	.long	0                               # 0x0
	.long	7                               # 0x7
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	4                               # 0x4
	.long	5                               # 0x5
	.long	6                               # 0x6
.LCPI12_5:
	.long	65536                           # 0x10000
	.long	262144                          # 0x40000
	.long	1048576                         # 0x100000
	.long	4194304                         # 0x400000
	.long	16777216                        # 0x1000000
	.long	67108864                        # 0x4000000
	.long	268435456                       # 0x10000000
	.long	1073741824                      # 0x40000000
.LCPI12_6:
	.long	4                               # 0x4
	.long	1                               # 0x1
	.long	16                              # 0x10
	.long	64                              # 0x40
	.long	256                             # 0x100
	.long	1024                            # 0x400
	.long	4096                            # 0x1000
	.long	16384                           # 0x4000
.LCPI12_7:
	.long	131072                          # 0x20000
	.long	524288                          # 0x80000
	.long	2097152                         # 0x200000
	.long	8388608                         # 0x800000
	.long	33554432                        # 0x2000000
	.long	134217728                       # 0x8000000
	.long	536870912                       # 0x20000000
	.long	2147483648                      # 0x80000000
.LCPI12_8:
	.long	8                               # 0x8
	.long	2                               # 0x2
	.long	32                              # 0x20
	.long	128                             # 0x80
	.long	512                             # 0x200
	.long	2048                            # 0x800
	.long	8192                            # 0x2000
	.long	32768                           # 0x8000
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI12_1:
	.long	9                               # 0x9
	.long	10                              # 0xa
	.long	11                              # 0xb
	.long	12                              # 0xc
.LCPI12_3:
	.long	7                               # 0x7
	.long	6                               # 0x6
	.long	5                               # 0x5
	.long	4                               # 0x4
	.section	.rodata.cst8,"aM",@progbits,8
.LCPI12_9:
	.byte	0                               # 0x0
	.byte	7                               # 0x7
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.text
	.globl	shuffle1
	.p2align	4, 0x90
	.type	shuffle1,@function
shuffle1:                               # @shuffle1
	.cfi_startproc
# %bb.0:
	vmovd	xmm0, edi
	vpbroadcastd	ymm0, xmm0
	vpsllvd	ymm1, ymm0, ymmword ptr [rip + .LCPI12_0]
	vpsllvd	xmm3, xmm0, xmmword ptr [rip + .LCPI12_1]
	mov	ecx, edi
	shl	ecx, 13
	mov	edx, edi
	shl	edx, 14
	mov	eax, edi
	vpsrlvd	ymm2, ymm0, ymmword ptr [rip + .LCPI12_2]
	shl	eax, 15
	vpsrlvd	xmm4, xmm0, xmmword ptr [rip + .LCPI12_3]
	mov	esi, edi
	shr	esi, 3
	mov	r8d, edi
	shr	r8d, 2
	shr	edi
	vpblendd	ymm4, ymm0, ymm4, 15            # ymm4 = ymm4[0,1,2,3],ymm0[4,5,6,7]
	vmovd	xmm5, esi
	vpbroadcastd	ymm5, xmm5
	vpblendd	ymm4, ymm4, ymm5, 16            # ymm4 = ymm4[0,1,2,3],ymm5[4],ymm4[5,6,7]
	vmovd	xmm5, r8d
	vpbroadcastd	ymm5, xmm5
	vpblendd	ymm4, ymm4, ymm5, 32            # ymm4 = ymm4[0,1,2,3,4],ymm5[5],ymm4[6,7]
	vmovd	xmm5, edi
	vpbroadcastd	ymm5, xmm5
	vpblendd	ymm4, ymm4, ymm5, 64            # ymm4 = ymm4[0,1,2,3,4,5],ymm5[6],ymm4[7]
	vperm2i128	ymm5, ymm1, ymm3, 33    # ymm5 = ymm1[2,3],ymm3[0,1]
	vpalignr	ymm3, ymm3, ymm5, 12            # ymm3 = ymm5[12,13,14,15],ymm3[0,1,2,3,4,5,6,7,8,9,10,11],ymm5[28,29,30,31],ymm3[16,17,18,19,20,21,22,23,24,25,26,27]
	vmovd	xmm5, ecx
	vpbroadcastd	ymm5, xmm5
	vpblendd	ymm3, ymm3, ymm5, 32            # ymm3 = ymm3[0,1,2,3,4],ymm5[5],ymm3[6,7]
	vmovd	xmm5, edx
	vpbroadcastd	ymm5, xmm5
	vpblendd	ymm3, ymm3, ymm5, 64            # ymm3 = ymm3[0,1,2,3,4,5],ymm5[6],ymm3[7]
	vmovd	xmm5, eax
	vpbroadcastd	ymm5, xmm5
	vpblendd	ymm3, ymm3, ymm5, 128           # ymm3 = ymm3[0,1,2,3,4,5,6],ymm5[7]
	vpblendd	ymm0, ymm1, ymm0, 128           # ymm0 = ymm1[0,1,2,3,4,5,6],ymm0[7]
	vpmovsxbd	ymm1, qword ptr [rip + .LCPI12_9] # ymm1 = [0,7,1,2,3,4,5,6]
	vpermd	ymm0, ymm1, ymm0
	vpand	ymm1, ymm3, ymmword ptr [rip + .LCPI12_5]
	vpand	ymm0, ymm0, ymmword ptr [rip + .LCPI12_6]
	vpand	ymm3, ymm4, ymmword ptr [rip + .LCPI12_7]
	vpor	ymm1, ymm3, ymm1
	vpand	ymm2, ymm2, ymmword ptr [rip + .LCPI12_8]
	vpor	ymm0, ymm2, ymm0
	vpor	ymm0, ymm0, ymm1
	vextracti128	xmm1, ymm0, 1
	vpor	xmm0, xmm0, xmm1
	vpshufd	xmm1, xmm0, 238                 # xmm1 = xmm0[2,3,2,3]
	vpor	xmm0, xmm0, xmm1
	vpshufd	xmm1, xmm0, 85                  # xmm1 = xmm0[1,1,1,1]
	vpor	xmm0, xmm0, xmm1
	vmovd	eax, xmm0
	vzeroupper
	ret
.Lfunc_end12:
	.size	shuffle1, .Lfunc_end12-shuffle1
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function unshuffle1
.LCPI13_0:
	.long	2                               # 0x2
	.long	1                               # 0x1
	.long	3                               # 0x3
	.long	4                               # 0x4
	.long	5                               # 0x5
	.long	6                               # 0x6
	.long	7                               # 0x7
	.long	8                               # 0x8
.LCPI13_2:
	.long	256                             # 0x100
	.long	512                             # 0x200
	.long	1024                            # 0x400
	.long	2048                            # 0x800
	.long	4096                            # 0x1000
	.long	8192                            # 0x2000
	.long	16384                           # 0x4000
	.long	32768                           # 0x8000
.LCPI13_4:
	.long	8                               # 0x8
	.long	9                               # 0x9
	.long	10                              # 0xa
	.long	11                              # 0xb
	.long	12                              # 0xc
	.long	13                              # 0xd
	.long	14                              # 0xe
	.long	15                              # 0xf
.LCPI13_5:
	.long	2                               # 0x2
	.long	1                               # 0x1
	.long	4                               # 0x4
	.long	8                               # 0x8
	.long	16                              # 0x10
	.long	32                              # 0x20
	.long	64                              # 0x40
	.long	128                             # 0x80
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI13_1:
	.long	9                               # 0x9
	.long	10                              # 0xa
	.long	11                              # 0xb
	.long	12                              # 0xc
.LCPI13_3:
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	4                               # 0x4
	.long	5                               # 0x5
.LCPI13_6:
	.short	256                             # 0x100
	.short	512                             # 0x200
	.short	1024                            # 0x400
	.short	2048                            # 0x800
	.short	4096                            # 0x1000
	.short	8192                            # 0x2000
	.short	16384                           # 0x4000
	.short	32768                           # 0x8000
	.section	.rodata.cst8,"aM",@progbits,8
.LCPI13_7:
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	8                               # 0x8
	.byte	16                              # 0x10
	.byte	32                              # 0x20
	.byte	64                              # 0x40
	.byte	128                             # 0x80
	.text
	.globl	unshuffle1
	.p2align	4, 0x90
	.type	unshuffle1,@function
unshuffle1:                             # @unshuffle1
	.cfi_startproc
# %bb.0:
	vmovd	xmm0, edi
	vpbroadcastd	ymm3, xmm0
	vpsrlvd	ymm1, ymm3, ymmword ptr [rip + .LCPI13_0]
	vpsrlvd	xmm0, xmm3, xmmword ptr [rip + .LCPI13_1]
	vpmovzxwd	ymm2, xmmword ptr [rip + .LCPI13_6] # ymm2 = [256,512,1024,2048,4096,8192,16384,32768]
	vpand	xmm0, xmm0, xmm2
	mov	eax, edi
	shr	eax, 13
	and	eax, 4096
	mov	edx, edi
	shr	edx, 14
	and	edx, 8192
	mov	ecx, edi
	shr	ecx, 15
	and	ecx, 16384
	or	ecx, edx
	mov	edx, edi
	shr	edx
	vpsrlvd	xmm4, xmm3, xmmword ptr [rip + .LCPI13_3]
	mov	esi, edi
	shr	esi, 6
	mov	r8d, edi
	shr	r8d, 7
	vpsrlvd	ymm3, ymm3, ymmword ptr [rip + .LCPI13_4]
	vmovd	xmm5, edx
	vpinsrd	xmm5, xmm5, edi, 1
	vpermq	ymm4, ymm4, 208                 # ymm4 = ymm4[0,0,1,3]
	vpblendd	ymm4, ymm4, ymm5, 3             # ymm4 = ymm5[0,1],ymm4[2,3,4,5,6,7]
	vmovd	xmm5, esi
	vpbroadcastd	ymm5, xmm5
	vpblendd	ymm4, ymm4, ymm5, 64            # ymm4 = ymm4[0,1,2,3,4,5],ymm5[6],ymm4[7]
	vmovd	xmm5, r8d
	vpbroadcastd	ymm5, xmm5
	vpblendd	ymm4, ymm4, ymm5, 128           # ymm4 = ymm4[0,1,2,3,4,5,6],ymm5[7]
	vpmovzxbd	ymm5, qword ptr [rip + .LCPI13_7] # ymm5 = [2,1,4,8,16,32,64,128]
	vpand	ymm4, ymm4, ymm5
	vpand	ymm2, ymm3, ymm2
	vpor	ymm2, ymm4, ymm2
	vpand	ymm1, ymm1, ymm5
	vextracti128	xmm3, ymm1, 1
	vpor	xmm1, xmm1, xmm3
	vpshufd	xmm3, xmm1, 238                 # xmm3 = xmm1[2,3,2,3]
	vpor	xmm1, xmm1, xmm3
	vpshufd	xmm3, xmm1, 85                  # xmm3 = xmm1[1,1,1,1]
	vpor	xmm1, xmm1, xmm3
	vmovd	edx, xmm1
	vpshufd	xmm1, xmm0, 238                 # xmm1 = xmm0[2,3,2,3]
	vpor	xmm0, xmm0, xmm1
	vpshufd	xmm1, xmm0, 85                  # xmm1 = xmm0[1,1,1,1]
	vpor	xmm0, xmm0, xmm1
	vmovd	esi, xmm0
	or	esi, eax
	or	esi, edx
	or	esi, ecx
	shl	esi, 16
	and	edi, -2147483648
	or	esi, edi
	vextracti128	xmm0, ymm2, 1
	vpor	xmm0, xmm2, xmm0
	vpshufd	xmm1, xmm0, 238                 # xmm1 = xmm0[2,3,2,3]
	vpor	xmm0, xmm0, xmm1
	vpshufd	xmm1, xmm0, 85                  # xmm1 = xmm0[1,1,1,1]
	vpor	xmm0, xmm0, xmm1
	vmovd	eax, xmm0
	or	eax, esi
	vzeroupper
	ret
.Lfunc_end13:
	.size	unshuffle1, .Lfunc_end13-unshuffle1
	.cfi_endproc
                                        # -- End function
	.globl	nth_byte                        # -- Begin function nth_byte
	.p2align	4, 0x90
	.type	nth_byte,@function
nth_byte:                               # @nth_byte
	.cfi_startproc
# %bb.0:
                                        # kill: def $esi killed $esi def $rsi
	mov	eax, esi
	sar	al, 7
	shr	al, 6
	add	al, sil
	and	al, -4
	sub	sil, al
	lea	eax, [8*rsi]
	lea	ecx, [rax + 32]
	cmp	sil, -4
	movzx	eax, al
	movzx	ecx, cl
	cmovb	ecx, eax
	lea	eax, [rcx + 8]
	movzx	eax, al
	sub	eax, ecx
	mov	rdx, -1
	shlx	rax, rdx, rax
	not	eax
	shlx	rax, rax, rcx
	and	eax, edi
	shrx	rax, rax, rcx
                                        # kill: def $al killed $al killed $rax
	ret
.Lfunc_end14:
	.size	nth_byte, .Lfunc_end14-nth_byte
	.cfi_endproc
                                        # -- End function
	.globl	mod                             # -- Begin function mod
	.p2align	4, 0x90
	.type	mod,@function
mod:                                    # @mod
	.cfi_startproc
# %bb.0:
                                        # kill: def $esi killed $esi def $rsi
	mov	eax, edi
                                        # kill: def $ax killed $ax killed $eax
	cwd
	movsx	ecx, sil
	idiv	cx
                                        # kill: def $dx killed $dx def $rdx
	lea	eax, [rdx + rsi]
                                        # kill: def $ax killed $ax killed $eax
	cwd
	idiv	si
	mov	eax, edx
                                        # kill: def $al killed $al killed $ax
	ret
.Lfunc_end15:
	.size	mod, .Lfunc_end15-mod
	.cfi_endproc
                                        # -- End function
	.globl	sbu_expand_keys                 # -- Begin function sbu_expand_keys
	.p2align	4, 0x90
	.type	sbu_expand_keys,@function
sbu_expand_keys:                        # @sbu_expand_keys
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsi], rdi
	xor	ecx, ecx
	lea	rax, [rip + table]
	.p2align	4, 0x90
.LBB16_1:                               # =>This Inner Loop Header: Depth=1
	mov	edx, dword ptr [rsi + 4*rcx + 4]
	mov	edi, dword ptr [rsi + 4*rcx]
	xor	edi, edx
	and	edi, 63
	mov	edi, dword ptr [rax + 4*rdi]
	xor	edx, edi
	mov	dword ptr [rsi + 4*rcx + 8], edx
	and	edi, 63
	mov	edi, dword ptr [rax + 4*rdi]
	xor	edx, edi
	mov	dword ptr [rsi + 4*rcx + 12], edx
	and	edi, 63
	mov	edi, dword ptr [rax + 4*rdi]
	xor	edx, edi
	mov	dword ptr [rsi + 4*rcx + 16], edx
	and	edi, 63
	mov	edi, dword ptr [rax + 4*rdi]
	xor	edx, edi
	mov	dword ptr [rsi + 4*rcx + 20], edx
	and	edi, 63
	mov	edi, dword ptr [rax + 4*rdi]
	xor	edx, edi
	mov	dword ptr [rsi + 4*rcx + 24], edx
	and	edi, 63
	xor	edx, dword ptr [rax + 4*rdi]
	mov	dword ptr [rsi + 4*rcx + 28], edx
	add	rcx, 6
	cmp	rcx, 30
	jne	.LBB16_1
# %bb.2:
	mov	ecx, 24
	.p2align	4, 0x90
.LBB16_3:                               # =>This Inner Loop Header: Depth=1
	mov	edx, dword ptr [rsi + 4*rcx + 24]
	mov	edi, dword ptr [rsi + 4*rcx + 28]
	xor	edi, edx
	and	edi, 63
	mov	r8d, dword ptr [rsi + 4*rcx + 20]
	xor	r8d, dword ptr [rax + 4*rdi]
	mov	dword ptr [rsi + 4*rcx + 20], r8d
	xor	edx, r8d
	and	edx, 63
	mov	edi, dword ptr [rsi + 4*rcx + 16]
	xor	edi, dword ptr [rax + 4*rdx]
	mov	dword ptr [rsi + 4*rcx + 16], edi
	xor	r8d, edi
	and	r8d, 63
	mov	edx, dword ptr [rsi + 4*rcx + 12]
	xor	edx, dword ptr [rax + 4*r8]
	mov	dword ptr [rsi + 4*rcx + 12], edx
	xor	edi, edx
	and	edi, 63
	mov	r8d, dword ptr [rsi + 4*rcx + 4]
	mov	r9d, dword ptr [rsi + 4*rcx + 8]
	xor	r9d, dword ptr [rax + 4*rdi]
	mov	dword ptr [rsi + 4*rcx + 8], r9d
	xor	edx, r9d
	and	edx, 63
	xor	r8d, dword ptr [rax + 4*rdx]
	mov	dword ptr [rsi + 4*rcx + 4], r8d
	xor	r8d, r9d
	and	r8d, 63
	mov	edx, dword ptr [rax + 4*r8]
	xor	dword ptr [rsi + 4*rcx], edx
	add	rcx, -6
	cmp	rcx, -6
	jne	.LBB16_3
# %bb.4:
	ret
.Lfunc_end16:
	.size	sbu_expand_keys, .Lfunc_end16-sbu_expand_keys
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function scramble_op
.LCPI17_0:
	.byte	251                             # 0xfb
	.byte	251                             # 0xfb
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI17_1:
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI17_2:
	.byte	253                             # 0xfd
	.byte	254                             # 0xfe
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI17_3:
	.byte	252                             # 0xfc
	.byte	252                             # 0xfc
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI17_4:
	.byte	16                              # 0x10
	.byte	8                               # 0x8
	.byte	4                               # 0x4
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	8                               # 0x8
	.byte	4                               # 0x4
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI17_5:
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI17_6:
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.section	.rodata,"a",@progbits
.LCPI17_7:
	.byte	251                             # 0xfb
.LCPI17_8:
	.byte	3                               # 0x3
.LCPI17_9:
	.byte	252                             # 0xfc
	.text
	.globl	scramble_op
	.p2align	4, 0x90
	.type	scramble_op,@function
scramble_op:                            # @scramble_op
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	.cfi_offset rbp, -16
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $esi killed $esi def $rsi
	mov	r9d, edi
	vpbroadcastb	xmm1, byte ptr [rip + .LCPI17_7] # xmm1 = [251,251,251,251,251,251,251,251,251,251,251,251,251,251,251,251]
	vpbroadcastb	xmm4, byte ptr [rip + .LCPI17_8] # xmm4 = [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
	vmovd	xmm0, esi
	vpbroadcastb	xmm0, xmm0
	vpaddb	xmm0, xmm0, xmmword ptr [rip + .LCPI17_2]
	vpxor	xmm2, xmm2, xmm2
	vpcmpgtb	xmm3, xmm2, xmm0
	vpand	xmm3, xmm3, xmm4
	vpaddb	xmm3, xmm0, xmm3
	vpbroadcastb	xmm5, byte ptr [rip + .LCPI17_9] # xmm5 = [252,252,252,252,252,252,252,252,252,252,252,252,252,252,252,252]
	vpand	xmm3, xmm3, xmm5
	vpsubb	xmm0, xmm0, xmm3
	vpcmpeqd	xmm3, xmm3, xmm3
	vpextrb	r8d, xmm0, 1
	shl	r8b, 3
	vpminub	xmm6, xmm0, xmm1
	vpcmpeqb	xmm6, xmm0, xmm6
	vpxor	xmm6, xmm6, xmm3
	vpmovsxbq	xmm6, xmm6
	vmovmskpd	eax, xmm6
	movzx	r11d, r8b
	add	r8b, 32
	movzx	r10d, r8b
	test	al, 2
	cmove	r10d, r11d
	lea	r8d, [r10 + 8]
	movzx	r11d, r8b
	sub	r11d, r10d
	mov	r8, -1
	shlx	r11, r8, r11
	not	r11d
	shlx	r11, r11, r10
	and	r11d, edi
	lea	ebx, [rsi + rsi]
	inc	bl
	mov	ebp, esi
	sub	bpl, 1
	vmovd	xmm6, ebp
	vpinsrb	xmm6, xmm6, esi, 1
	vpcmpgtb	xmm7, xmm2, xmm6
	vpand	xmm4, xmm7, xmm4
	vpaddb	xmm4, xmm6, xmm4
	vpand	xmm4, xmm4, xmm5
	vpsubb	xmm4, xmm6, xmm4
	vpminub	xmm1, xmm4, xmm1
	vgf2p8affineqb	xmm5, xmm4, xmmword ptr [rip + .LCPI17_4], 0
	vpcmpeqb	xmm1, xmm4, xmm1
	vpandn	xmm1, xmm1, xmmword ptr [rip + .LCPI17_5]
	vpaddb	xmm1, xmm5, xmm1
	vpaddb	xmm4, xmm1, xmmword ptr [rip + .LCPI17_6]
	vpmovzxbq	xmm4, xmm4              # xmm4 = xmm4[0],zero,zero,zero,zero,zero,zero,zero,xmm4[1],zero,zero,zero,zero,zero,zero,zero
	vpmovzxbq	xmm5, xmm1              # xmm5 = xmm1[0],zero,zero,zero,zero,zero,zero,zero,xmm1[1],zero,zero,zero,zero,zero,zero,zero
	vpsubq	xmm4, xmm4, xmm5
	vpblendd	xmm2, xmm4, xmm2, 10            # xmm2 = xmm4[0],xmm2[1],xmm4[2],xmm2[3]
	vpsllvq	xmm2, xmm3, xmm2
	vpxor	xmm2, xmm2, xmm3
	vpsllvq	xmm2, xmm2, xmm5
	vmovq	xmm3, r9
	vpbroadcastq	xmm3, xmm3
	vpand	xmm3, xmm2, xmm3
	vpsrlvq	xmm3, xmm3, xmm5
	vmovq	r14, xmm3
	shrx	r9, r11, r10
	movzx	r10d, bl
	mov	esi, 2
	cmovae	esi, r10d
	and	r9d, r14d
	mov	r10d, r14d
	not	r10b
	vpextrd	r11d, xmm3, 2
	xor	r9d, r11d
	vmovd	r11d, xmm0
	shl	r11b, 3
	movzx	ebx, r11b
	add	r11b, 32
	movzx	r11d, r11b
	test	al, 1
	cmove	r11d, ebx
	lea	eax, [r11 + 8]
	movzx	eax, al
	sub	eax, r11d
	shlx	rax, r8, rax
	not	eax
	shlx	rax, rax, r11
	and	eax, edi
	shrx	rdi, rax, r11
	vpextrd	eax, xmm2, 2
	and	dil, r10b
	xor	edx, ecx
	vpextrb	ecx, xmm1, 1
	and	edx, eax
	shrx	rax, rdx, rcx
	xor	al, dil
	xor	al, r9b
	mov	ecx, esi
	rol	al, cl
                                        # kill: def $al killed $al killed $rax
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end17:
	.size	scramble_op, .Lfunc_end17-scramble_op
	.cfi_endproc
                                        # -- End function
	.globl	scramble                        # -- Begin function scramble
	.p2align	4, 0x90
	.type	scramble,@function
scramble:                               # @scramble
	.cfi_startproc
# %bb.0:
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset rbx, -16
	mov	eax, edx
	mov	r8d, 31
	sub	r8d, edx
	mov	ebx, dword ptr [rsi + 4*r8]
	xor	ebx, dword ptr [rsi + 4*rax]
	call	rcx
	mov	esi, eax
	shr	esi, 16
	mov	ecx, eax
	shr	ecx, 24
	mov	edx, ecx
	and	edx, esi
	xor	edx, eax
	mov	edi, ecx
	not	dil
	shr	eax, 8
	mov	r8d, eax
	and	r8b, dil
	xor	r8b, dl
	xor	r8b, bl
	rol	r8b, 2
	movzx	edx, r8b
	mov	edi, ecx
	and	edi, edx
	xor	edi, eax
	mov	eax, edx
	not	al
	mov	r8d, esi
	and	r8b, al
	mov	eax, ebx
	shr	eax, 8
	xor	al, r8b
	xor	al, dil
	rol	al, 3
	movzx	eax, al
	mov	edi, eax
	shl	edi, 8
	mov	r8d, eax
	and	r8d, edx
	xor	r8d, esi
	mov	esi, eax
	not	sil
	and	sil, cl
	mov	r9d, ebx
	shr	r9d, 16
	xor	r9b, sil
	xor	r9b, r8b
	rol	r9b, 5
	movzx	esi, r9b
	mov	r8d, esi
	shl	r8d, 16
	or	r8d, edi
	and	eax, esi
	xor	eax, ecx
	not	sil
	and	sil, dl
	shr	ebx, 24
	xor	bl, sil
	xor	bl, al
	ror	bl
	movzx	eax, bl
	shl	eax, 24
	or	eax, r8d
	or	eax, edx
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end18:
	.size	scramble, .Lfunc_end18-scramble
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function mash_op
.LCPI19_0:
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI19_1:
	.byte	252                             # 0xfc
	.byte	252                             # 0xfc
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI19_2:
	.byte	251                             # 0xfb
	.byte	251                             # 0xfb
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.text
	.globl	mash_op
	.p2align	4, 0x90
	.type	mash_op,@function
mash_op:                                # @mash_op
	.cfi_startproc
# %bb.0:
                                        # kill: def $esi killed $esi def $rsi
	lea	eax, [rsi - 1]
	vmovd	xmm0, esi
	vpinsrb	xmm0, xmm0, eax, 1
	vpxor	xmm1, xmm1, xmm1
	vpcmpgtb	xmm1, xmm1, xmm0
	vpand	xmm1, xmm1, xmmword ptr [rip + .LCPI19_0]
	vpaddb	xmm1, xmm0, xmm1
	vpand	xmm1, xmm1, xmmword ptr [rip + .LCPI19_1]
	vpsubb	xmm0, xmm0, xmm1
	vpcmpeqd	xmm1, xmm1, xmm1
	vpextrb	ecx, xmm0, 1
	shl	cl, 3
	vpminub	xmm2, xmm0, xmmword ptr [rip + .LCPI19_2]
	vpcmpeqb	xmm2, xmm0, xmm2
	vpxor	xmm1, xmm2, xmm1
	vpmovsxbq	xmm1, xmm1
	vmovmskpd	eax, xmm1
	movzx	esi, cl
	add	cl, 32
	movzx	r8d, cl
	test	al, 2
	cmove	r8d, esi
	lea	ecx, [r8 + 8]
	movzx	esi, cl
	sub	esi, r8d
	mov	rcx, -1
	shlx	rsi, rcx, rsi
	not	esi
	shlx	rsi, rsi, r8
	and	esi, edi
	shrx	rsi, rsi, r8
	and	esi, 31
	vmovd	r8d, xmm0
	shl	r8b, 3
	movzx	r9d, r8b
	add	r8b, 32
	movzx	r8d, r8b
	test	al, 1
	cmove	r8d, r9d
	lea	eax, [r8 + 8]
	movzx	eax, al
	sub	eax, r8d
	shlx	rax, rcx, rax
	not	eax
	shlx	rax, rax, r8
	xor	edi, dword ptr [rdx + 4*rsi]
	and	eax, edi
	shrx	rax, rax, r8
                                        # kill: def $al killed $al killed $rax
	ret
.Lfunc_end19:
	.size	mash_op, .Lfunc_end19-mash_op
	.cfi_endproc
                                        # -- End function
	.globl	mash                            # -- Begin function mash
	.p2align	4, 0x90
	.type	mash,@function
mash:                                   # @mash
	.cfi_startproc
# %bb.0:
	mov	eax, edi
	shr	eax, 22
	and	eax, 124
	mov	eax, dword ptr [rsi + rax]
	xor	eax, edi
	movzx	ecx, al
	and	eax, 31
	mov	eax, dword ptr [rsi + 4*rax]
	xor	eax, edi
	mov	edx, eax
	and	edx, 65280
	or	edx, ecx
	shr	eax, 6
	and	eax, 124
	mov	ecx, dword ptr [rsi + rax]
	xor	ecx, edi
	mov	eax, ecx
	and	eax, 16711680
	or	eax, edx
	shr	ecx, 14
	and	ecx, 124
	xor	edi, dword ptr [rsi + rcx]
	and	edi, -16777216
	or	eax, edi
	ret
.Lfunc_end20:
	.size	mash, .Lfunc_end20-mash
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function sbu_encrypt_block
.LCPI21_0:
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.byte	8                               # 0x8
	.byte	16                              # 0x10
	.byte	32                              # 0x20
	.byte	64                              # 0x40
	.byte	128                             # 0x80
	.text
	.globl	sbu_encrypt_block
	.p2align	4, 0x90
	.type	sbu_encrypt_block,@function
sbu_encrypt_block:                      # @sbu_encrypt_block
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	sub	rsp, 24
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -24
	.cfi_offset rbp, -16
	mov	rbx, rsi
	mov	eax, dword ptr [rsi + 124]
	vmovd	xmm0, edi
	vpbroadcastq	xmm1, qword ptr [rip + .LCPI21_0] # xmm1 = [1,2,4,8,16,32,64,128,1,2,4,8,16,32,64,128]
	vmovdqa	xmmword ptr [rsp], xmm1         # 16-byte Spill
	vgf2p8affineqb	xmm0, xmm0, xmm1, 0
	vmovd	edi, xmm0
	bswap	edi
	mov	esi, edi
	shr	esi, 16
	mov	ecx, edi
	shr	ecx, 24
	mov	edx, ecx
	and	edx, esi
	xor	edx, edi
	mov	r8d, ecx
	not	r8b
	shr	edi, 8
	mov	r9d, edi
	and	r9b, r8b
	xor	eax, dword ptr [rbx]
	mov	r8d, eax
	xor	r8b, r9b
	xor	r8b, dl
	rol	r8b, 2
	movzx	edx, r8b
	mov	r8d, ecx
	and	r8d, edx
	xor	r8d, edi
	mov	edi, edx
	not	dil
	mov	r9d, esi
	and	r9b, dil
	mov	edi, eax
	shr	edi, 8
	xor	dil, r9b
	xor	dil, r8b
	rol	dil, 3
	mov	ebp, dword ptr [rbx + 120]
	movzx	edi, dil
	mov	r8d, edi
	shl	r8d, 8
	mov	r9d, edi
	and	r9d, edx
	xor	r9d, esi
	mov	esi, edi
	not	sil
	and	sil, cl
	mov	r10d, eax
	shr	r10d, 16
	xor	r10b, sil
	xor	r10b, r9b
	rol	r10b, 5
	movzx	esi, r10b
	mov	r9d, esi
	shl	r9d, 16
	or	r9d, r8d
	and	edi, esi
	xor	edi, ecx
	not	sil
	and	sil, dl
	shr	eax, 24
	xor	al, sil
	xor	al, dil
	ror	al
	movzx	edi, al
	shl	edi, 24
	or	edi, r9d
	or	edi, edx
	xor	ebp, dword ptr [rbx + 4]
	call	shuffle1
	mov	esi, eax
	shr	esi, 16
	mov	ecx, eax
	shr	ecx, 24
	mov	edx, ecx
	and	edx, esi
	xor	edx, eax
	mov	edi, ecx
	not	dil
	shr	eax, 8
	mov	r8d, eax
	and	r8b, dil
	mov	edi, ebp
	xor	dil, r8b
	xor	dil, dl
	rol	dil, 2
	movzx	edx, dil
	mov	edi, ecx
	and	edi, edx
	xor	edi, eax
	mov	eax, edx
	not	al
	mov	r8d, esi
	and	r8b, al
	mov	eax, ebp
	shr	eax, 8
	xor	al, r8b
	xor	al, dil
	rol	al, 3
	movzx	eax, al
	mov	edi, eax
	and	edi, edx
	xor	edi, esi
	mov	esi, eax
	not	sil
	and	sil, cl
	mov	r8d, ebp
	shr	r8d, 16
	xor	r8b, sil
	xor	r8b, dil
	rol	r8b, 5
	movzx	esi, r8b
	mov	edi, esi
	and	edi, eax
	xor	edi, ecx
	mov	ecx, esi
	not	cl
	and	cl, dl
	shr	ebp, 24
	xor	bpl, cl
	xor	bpl, dil
	ror	bpl
	movzx	edi, bpl
	mov	r8d, edi
	shl	r8d, 24
	or	r8d, edx
	mov	ecx, dword ptr [rbx + 116]
	shl	edx, 4
	mov	r9d, eax
	shl	r9d, 16
	shl	eax, 20
	or	eax, r9d
	mov	r9d, esi
	shl	r9d, 4
	movzx	r9d, r9b
	shl	esi, 8
	and	esi, 61440
	and	edi, 15
	shl	edi, 20
	and	edx, 3840
	and	r8d, -268435441
	or	r8d, r9d
	or	esi, r8d
	or	esi, edi
	or	esi, edx
	and	eax, 252641280
	or	eax, esi
	mov	edi, eax
	shr	edi, 16
	shr	eax, 24
	mov	edx, eax
	and	edx, edi
	xor	edx, r8d
	mov	r8d, eax
	not	r8b
	shr	esi, 8
	mov	r9d, esi
	and	r9b, r8b
	xor	ecx, dword ptr [rbx + 8]
	mov	r8d, ecx
	xor	r8b, r9b
	xor	r8b, dl
	rol	r8b, 2
	movzx	edx, r8b
	mov	r8d, eax
	and	r8d, edx
	xor	r8d, esi
	mov	esi, edx
	not	sil
	mov	r9d, edi
	and	r9b, sil
	mov	esi, ecx
	shr	esi, 8
	xor	sil, r9b
	xor	sil, r8b
	rol	sil, 3
	movzx	esi, sil
	mov	r8d, esi
	shl	r8d, 8
	mov	r9d, esi
	and	r9d, edx
	xor	r9d, edi
	mov	edi, esi
	not	dil
	and	dil, al
	mov	r10d, ecx
	shr	r10d, 16
	xor	r10b, dil
	xor	r10b, r9b
	rol	r10b, 5
	movzx	edi, r10b
	mov	r9d, edi
	shl	r9d, 16
	or	r9d, r8d
	and	esi, edi
	xor	esi, eax
	not	dil
	and	dil, dl
	shr	ecx, 24
	xor	cl, dil
	xor	cl, sil
	ror	cl
	movzx	ecx, cl
	shl	ecx, 24
	or	ecx, r9d
	or	ecx, edx
	mov	eax, dword ptr [rbx + 112]
	vmovd	xmm0, ecx
	vmovdqa	xmm1, xmmword ptr [rsp]         # 16-byte Reload
	vgf2p8affineqb	xmm0, xmm0, xmm1, 0
	vmovd	edi, xmm0
	bswap	edi
	mov	esi, edi
	shr	esi, 16
	mov	ecx, edi
	shr	ecx, 24
	mov	edx, ecx
	and	edx, esi
	xor	edx, edi
	mov	r8d, ecx
	not	r8b
	shr	edi, 8
	mov	r9d, edi
	and	r9b, r8b
	xor	eax, dword ptr [rbx + 12]
	mov	r8d, eax
	xor	r8b, r9b
	xor	r8b, dl
	rol	r8b, 2
	movzx	edx, r8b
	mov	r8d, ecx
	and	r8d, edx
	xor	r8d, edi
	mov	edi, edx
	not	dil
	mov	r9d, esi
	and	r9b, dil
	mov	edi, eax
	shr	edi, 8
	xor	dil, r9b
	xor	dil, r8b
	rol	dil, 3
	movzx	r8d, dil
	mov	edi, r8d
	mov	r9d, r8d
	and	r9d, edx
	xor	r9d, esi
	mov	esi, r8d
	not	sil
	and	sil, cl
	mov	r10d, eax
	shr	r10d, 16
	xor	r10b, sil
	xor	r10b, r9b
	rol	r10b, 5
	shl	edi, 8
	movzx	r9d, r10b
	mov	esi, r9d
	shl	esi, 16
	and	r8d, r9d
	xor	r8d, ecx
	not	r9b
	and	r9b, dl
	shr	eax, 24
	xor	al, r9b
	xor	al, r8b
	ror	al
	or	esi, edi
	movzx	eax, al
	mov	ecx, eax
	shl	ecx, 24
	or	esi, ecx
	or	esi, edx
	and	eax, 31
	mov	eax, dword ptr [rbx + 4*rax]
	xor	eax, esi
	movzx	edx, al
	and	eax, 31
	mov	eax, dword ptr [rbx + 4*rax]
	xor	eax, esi
	mov	edi, eax
	and	edi, 65280
	or	edi, edx
	shr	eax, 6
	and	eax, 124
	xor	esi, dword ptr [rbx + rax]
	mov	eax, esi
	and	eax, 16711680
	or	eax, edi
	shr	esi, 14
	and	esi, 124
	xor	ecx, dword ptr [rbx + rsi]
	and	ecx, -16777216
	or	ecx, eax
	mov	eax, dword ptr [rbx + 108]
	vmovd	xmm0, ecx
	vgf2p8affineqb	xmm0, xmm0, xmm1, 0
	vmovd	edi, xmm0
	bswap	edi
	mov	esi, edi
	shr	esi, 16
	mov	ecx, edi
	shr	ecx, 24
	mov	edx, ecx
	and	edx, esi
	xor	edx, edi
	mov	r8d, ecx
	not	r8b
	shr	edi, 8
	mov	r9d, edi
	and	r9b, r8b
	xor	eax, dword ptr [rbx + 16]
	mov	r8d, eax
	xor	r8b, r9b
	xor	r8b, dl
	rol	r8b, 2
	movzx	edx, r8b
	mov	r8d, ecx
	and	r8d, edx
	xor	r8d, edi
	mov	edi, edx
	not	dil
	mov	r9d, esi
	and	r9b, dil
	mov	edi, eax
	shr	edi, 8
	xor	dil, r9b
	xor	dil, r8b
	rol	dil, 3
	mov	ebp, dword ptr [rbx + 104]
	movzx	edi, dil
	mov	r8d, edi
	shl	r8d, 8
	mov	r9d, edi
	and	r9d, edx
	xor	r9d, esi
	mov	esi, edi
	not	sil
	and	sil, cl
	mov	r10d, eax
	shr	r10d, 16
	xor	r10b, sil
	xor	r10b, r9b
	rol	r10b, 5
	movzx	esi, r10b
	mov	r9d, esi
	shl	r9d, 16
	or	r9d, r8d
	and	edi, esi
	xor	edi, ecx
	not	sil
	and	sil, dl
	shr	eax, 24
	xor	al, sil
	xor	al, dil
	ror	al
	movzx	edi, al
	shl	edi, 24
	or	edi, r9d
	or	edi, edx
	xor	ebp, dword ptr [rbx + 20]
	call	shuffle1
	mov	esi, eax
	shr	esi, 16
	mov	ecx, eax
	shr	ecx, 24
	mov	edx, ecx
	and	edx, esi
	xor	edx, eax
	mov	edi, ecx
	not	dil
	shr	eax, 8
	mov	r8d, eax
	and	r8b, dil
	mov	edi, ebp
	xor	dil, r8b
	xor	dil, dl
	rol	dil, 2
	movzx	edx, dil
	mov	edi, ecx
	and	edi, edx
	xor	edi, eax
	mov	eax, edx
	not	al
	mov	r8d, esi
	and	r8b, al
	mov	eax, ebp
	shr	eax, 8
	xor	al, r8b
	xor	al, dil
	rol	al, 3
	movzx	eax, al
	mov	edi, eax
	and	edi, edx
	xor	edi, esi
	mov	esi, eax
	not	sil
	and	sil, cl
	mov	r8d, ebp
	shr	r8d, 16
	xor	r8b, sil
	xor	r8b, dil
	rol	r8b, 5
	movzx	esi, r8b
	mov	edi, esi
	and	edi, eax
	xor	edi, ecx
	mov	ecx, esi
	not	cl
	and	cl, dl
	shr	ebp, 24
	xor	bpl, cl
	xor	bpl, dil
	ror	bpl
	movzx	edi, bpl
	mov	r8d, edi
	shl	r8d, 24
	or	r8d, edx
	mov	ecx, dword ptr [rbx + 100]
	shl	edx, 4
	mov	r9d, eax
	shl	r9d, 16
	shl	eax, 20
	or	eax, r9d
	mov	r9d, esi
	shl	r9d, 4
	movzx	r9d, r9b
	shl	esi, 8
	and	esi, 61440
	and	edi, 15
	shl	edi, 20
	and	edx, 3840
	and	r8d, -268435441
	or	r8d, r9d
	or	esi, r8d
	or	esi, edi
	or	esi, edx
	and	eax, 252641280
	or	eax, esi
	mov	edi, eax
	shr	edi, 16
	shr	eax, 24
	mov	edx, eax
	and	edx, edi
	xor	edx, r8d
	mov	r8d, eax
	not	r8b
	shr	esi, 8
	mov	r9d, esi
	and	r9b, r8b
	xor	ecx, dword ptr [rbx + 24]
	mov	r8d, ecx
	xor	r8b, r9b
	xor	r8b, dl
	rol	r8b, 2
	movzx	edx, r8b
	mov	r8d, eax
	and	r8d, edx
	xor	r8d, esi
	mov	esi, edx
	not	sil
	mov	r9d, edi
	and	r9b, sil
	mov	esi, ecx
	shr	esi, 8
	xor	sil, r9b
	xor	sil, r8b
	rol	sil, 3
	movzx	esi, sil
	mov	r8d, esi
	shl	r8d, 8
	mov	r9d, esi
	and	r9d, edx
	xor	r9d, edi
	mov	edi, esi
	not	dil
	and	dil, al
	mov	r10d, ecx
	shr	r10d, 16
	xor	r10b, dil
	xor	r10b, r9b
	rol	r10b, 5
	movzx	edi, r10b
	mov	r9d, edi
	shl	r9d, 16
	or	r9d, r8d
	and	esi, edi
	xor	esi, eax
	not	dil
	and	dil, dl
	shr	ecx, 24
	xor	cl, dil
	xor	cl, sil
	ror	cl
	movzx	ecx, cl
	shl	ecx, 24
	or	ecx, r9d
	or	ecx, edx
	mov	eax, dword ptr [rbx + 96]
	vmovd	xmm0, ecx
	vmovdqa	xmm1, xmmword ptr [rsp]         # 16-byte Reload
	vgf2p8affineqb	xmm0, xmm0, xmm1, 0
	vmovd	edi, xmm0
	bswap	edi
	mov	esi, edi
	shr	esi, 16
	mov	ecx, edi
	shr	ecx, 24
	mov	edx, ecx
	and	edx, esi
	xor	edx, edi
	mov	r8d, ecx
	not	r8b
	shr	edi, 8
	mov	r9d, edi
	and	r9b, r8b
	xor	eax, dword ptr [rbx + 28]
	mov	r8d, eax
	xor	r8b, r9b
	xor	r8b, dl
	rol	r8b, 2
	movzx	edx, r8b
	mov	r8d, ecx
	and	r8d, edx
	xor	r8d, edi
	mov	edi, edx
	not	dil
	mov	r9d, esi
	and	r9b, dil
	mov	edi, eax
	shr	edi, 8
	xor	dil, r9b
	xor	dil, r8b
	rol	dil, 3
	movzx	r8d, dil
	mov	edi, r8d
	mov	r9d, r8d
	and	r9d, edx
	xor	r9d, esi
	mov	esi, r8d
	not	sil
	and	sil, cl
	mov	r10d, eax
	shr	r10d, 16
	xor	r10b, sil
	xor	r10b, r9b
	rol	r10b, 5
	shl	edi, 8
	movzx	r9d, r10b
	mov	esi, r9d
	shl	esi, 16
	and	r8d, r9d
	xor	r8d, ecx
	not	r9b
	and	r9b, dl
	shr	eax, 24
	xor	al, r9b
	xor	al, r8b
	ror	al
	or	esi, edi
	movzx	eax, al
	mov	ecx, eax
	shl	ecx, 24
	or	esi, ecx
	or	esi, edx
	and	eax, 31
	mov	eax, dword ptr [rbx + 4*rax]
	xor	eax, esi
	movzx	edx, al
	and	eax, 31
	mov	eax, dword ptr [rbx + 4*rax]
	xor	eax, esi
	mov	edi, eax
	and	edi, 65280
	or	edi, edx
	shr	eax, 6
	and	eax, 124
	xor	esi, dword ptr [rbx + rax]
	mov	eax, esi
	and	eax, 16711680
	or	eax, edi
	shr	esi, 14
	and	esi, 124
	xor	ecx, dword ptr [rbx + rsi]
	and	ecx, -16777216
	or	ecx, eax
	mov	eax, dword ptr [rbx + 92]
	vmovd	xmm0, ecx
	vgf2p8affineqb	xmm0, xmm0, xmm1, 0
	vmovd	edi, xmm0
	bswap	edi
	mov	esi, edi
	shr	esi, 16
	mov	ecx, edi
	shr	ecx, 24
	mov	edx, ecx
	and	edx, esi
	xor	edx, edi
	mov	r8d, ecx
	not	r8b
	shr	edi, 8
	mov	r9d, edi
	and	r9b, r8b
	xor	eax, dword ptr [rbx + 32]
	mov	r8d, eax
	xor	r8b, r9b
	xor	r8b, dl
	rol	r8b, 2
	movzx	edx, r8b
	mov	r8d, ecx
	and	r8d, edx
	xor	r8d, edi
	mov	edi, edx
	not	dil
	mov	r9d, esi
	and	r9b, dil
	mov	edi, eax
	shr	edi, 8
	xor	dil, r9b
	xor	dil, r8b
	rol	dil, 3
	mov	ebp, dword ptr [rbx + 88]
	movzx	edi, dil
	mov	r8d, edi
	shl	r8d, 8
	mov	r9d, edi
	and	r9d, edx
	xor	r9d, esi
	mov	esi, edi
	not	sil
	and	sil, cl
	mov	r10d, eax
	shr	r10d, 16
	xor	r10b, sil
	xor	r10b, r9b
	rol	r10b, 5
	movzx	esi, r10b
	mov	r9d, esi
	shl	r9d, 16
	or	r9d, r8d
	and	edi, esi
	xor	edi, ecx
	not	sil
	and	sil, dl
	shr	eax, 24
	xor	al, sil
	xor	al, dil
	ror	al
	movzx	edi, al
	shl	edi, 24
	or	edi, r9d
	or	edi, edx
	xor	ebp, dword ptr [rbx + 36]
	call	shuffle1
	mov	esi, eax
	shr	esi, 16
	mov	ecx, eax
	shr	ecx, 24
	mov	edx, ecx
	and	edx, esi
	xor	edx, eax
	mov	edi, ecx
	not	dil
	shr	eax, 8
	mov	r8d, eax
	and	r8b, dil
	mov	edi, ebp
	xor	dil, r8b
	xor	dil, dl
	rol	dil, 2
	movzx	edx, dil
	mov	edi, ecx
	and	edi, edx
	xor	edi, eax
	mov	eax, edx
	not	al
	mov	r8d, esi
	and	r8b, al
	mov	eax, ebp
	shr	eax, 8
	xor	al, r8b
	xor	al, dil
	rol	al, 3
	movzx	eax, al
	mov	edi, eax
	and	edi, edx
	xor	edi, esi
	mov	esi, eax
	not	sil
	and	sil, cl
	mov	r8d, ebp
	shr	r8d, 16
	xor	r8b, sil
	xor	r8b, dil
	rol	r8b, 5
	movzx	esi, r8b
	mov	edi, esi
	and	edi, eax
	xor	edi, ecx
	mov	ecx, esi
	not	cl
	and	cl, dl
	shr	ebp, 24
	xor	bpl, cl
	xor	bpl, dil
	ror	bpl
	movzx	edi, bpl
	mov	r8d, edi
	shl	r8d, 24
	or	r8d, edx
	mov	ecx, dword ptr [rbx + 84]
	shl	edx, 4
	mov	r9d, eax
	shl	r9d, 16
	shl	eax, 20
	or	eax, r9d
	mov	r9d, esi
	shl	r9d, 4
	movzx	r9d, r9b
	shl	esi, 8
	and	esi, 61440
	and	edi, 15
	shl	edi, 20
	and	edx, 3840
	and	r8d, -268435441
	or	r8d, r9d
	or	esi, r8d
	or	esi, edi
	or	esi, edx
	and	eax, 252641280
	or	eax, esi
	mov	edi, eax
	shr	edi, 16
	shr	eax, 24
	mov	edx, eax
	and	edx, edi
	xor	edx, r8d
	mov	r8d, eax
	not	r8b
	shr	esi, 8
	mov	r9d, esi
	and	r9b, r8b
	xor	ecx, dword ptr [rbx + 40]
	mov	r8d, ecx
	xor	r8b, r9b
	xor	r8b, dl
	rol	r8b, 2
	movzx	edx, r8b
	mov	r8d, eax
	and	r8d, edx
	xor	r8d, esi
	mov	esi, edx
	not	sil
	mov	r9d, edi
	and	r9b, sil
	mov	esi, ecx
	shr	esi, 8
	xor	sil, r9b
	xor	sil, r8b
	rol	sil, 3
	movzx	esi, sil
	mov	r8d, esi
	shl	r8d, 8
	mov	r9d, esi
	and	r9d, edx
	xor	r9d, edi
	mov	edi, esi
	not	dil
	and	dil, al
	mov	r10d, ecx
	shr	r10d, 16
	xor	r10b, dil
	xor	r10b, r9b
	rol	r10b, 5
	movzx	edi, r10b
	mov	r9d, edi
	shl	r9d, 16
	or	r9d, r8d
	and	esi, edi
	xor	esi, eax
	not	dil
	and	dil, dl
	shr	ecx, 24
	xor	cl, dil
	xor	cl, sil
	ror	cl
	movzx	ecx, cl
	shl	ecx, 24
	or	ecx, r9d
	or	ecx, edx
	mov	eax, dword ptr [rbx + 80]
	vmovd	xmm0, ecx
	vmovdqa	xmm1, xmmword ptr [rsp]         # 16-byte Reload
	vgf2p8affineqb	xmm0, xmm0, xmm1, 0
	vmovd	edi, xmm0
	bswap	edi
	mov	esi, edi
	shr	esi, 16
	mov	ecx, edi
	shr	ecx, 24
	mov	edx, ecx
	and	edx, esi
	xor	edx, edi
	mov	r8d, ecx
	not	r8b
	shr	edi, 8
	mov	r9d, edi
	and	r9b, r8b
	xor	eax, dword ptr [rbx + 44]
	mov	r8d, eax
	xor	r8b, r9b
	xor	r8b, dl
	rol	r8b, 2
	movzx	edx, r8b
	mov	r8d, ecx
	and	r8d, edx
	xor	r8d, edi
	mov	edi, edx
	not	dil
	mov	r9d, esi
	and	r9b, dil
	mov	edi, eax
	shr	edi, 8
	xor	dil, r9b
	xor	dil, r8b
	rol	dil, 3
	movzx	r8d, dil
	mov	edi, r8d
	mov	r9d, r8d
	and	r9d, edx
	xor	r9d, esi
	mov	esi, r8d
	not	sil
	and	sil, cl
	mov	r10d, eax
	shr	r10d, 16
	xor	r10b, sil
	xor	r10b, r9b
	rol	r10b, 5
	shl	edi, 8
	movzx	r9d, r10b
	mov	esi, r9d
	shl	esi, 16
	and	r8d, r9d
	xor	r8d, ecx
	not	r9b
	and	r9b, dl
	shr	eax, 24
	xor	al, r9b
	xor	al, r8b
	ror	al
	or	esi, edi
	movzx	eax, al
	mov	ecx, eax
	shl	ecx, 24
	or	esi, ecx
	or	esi, edx
	and	eax, 31
	mov	eax, dword ptr [rbx + 4*rax]
	xor	eax, esi
	movzx	edx, al
	and	eax, 31
	mov	eax, dword ptr [rbx + 4*rax]
	xor	eax, esi
	mov	edi, eax
	and	edi, 65280
	or	edi, edx
	shr	eax, 6
	and	eax, 124
	xor	esi, dword ptr [rbx + rax]
	mov	eax, esi
	and	eax, 16711680
	or	eax, edi
	shr	esi, 14
	and	esi, 124
	xor	ecx, dword ptr [rbx + rsi]
	and	ecx, -16777216
	or	ecx, eax
	mov	eax, dword ptr [rbx + 76]
	vmovd	xmm0, ecx
	vgf2p8affineqb	xmm0, xmm0, xmm1, 0
	vmovd	edi, xmm0
	bswap	edi
	mov	esi, edi
	shr	esi, 16
	mov	ecx, edi
	shr	ecx, 24
	mov	edx, ecx
	and	edx, esi
	xor	edx, edi
	mov	r8d, ecx
	not	r8b
	shr	edi, 8
	mov	r9d, edi
	and	r9b, r8b
	xor	eax, dword ptr [rbx + 48]
	mov	r8d, eax
	xor	r8b, r9b
	xor	r8b, dl
	rol	r8b, 2
	movzx	edx, r8b
	mov	r8d, ecx
	and	r8d, edx
	xor	r8d, edi
	mov	edi, edx
	not	dil
	mov	r9d, esi
	and	r9b, dil
	mov	edi, eax
	shr	edi, 8
	xor	dil, r9b
	xor	dil, r8b
	rol	dil, 3
	mov	ebp, dword ptr [rbx + 72]
	movzx	edi, dil
	mov	r8d, edi
	shl	r8d, 8
	mov	r9d, edi
	and	r9d, edx
	xor	r9d, esi
	mov	esi, edi
	not	sil
	and	sil, cl
	mov	r10d, eax
	shr	r10d, 16
	xor	r10b, sil
	xor	r10b, r9b
	rol	r10b, 5
	movzx	esi, r10b
	mov	r9d, esi
	shl	r9d, 16
	or	r9d, r8d
	and	edi, esi
	xor	edi, ecx
	not	sil
	and	sil, dl
	shr	eax, 24
	xor	al, sil
	xor	al, dil
	ror	al
	movzx	edi, al
	shl	edi, 24
	or	edi, r9d
	or	edi, edx
	xor	ebp, dword ptr [rbx + 52]
	call	shuffle1
	mov	edi, eax
	shr	edi, 16
	mov	edx, eax
	shr	edx, 24
	mov	ecx, edx
	and	ecx, edi
	xor	ecx, eax
	mov	esi, edx
	not	sil
	shr	eax, 8
	mov	r8d, eax
	and	r8b, sil
	mov	esi, ebp
	xor	sil, r8b
	xor	sil, cl
	rol	sil, 2
	movzx	esi, sil
	mov	ecx, edx
	and	ecx, esi
	xor	ecx, eax
	mov	eax, esi
	not	al
	mov	r8d, edi
	and	r8b, al
	mov	eax, ebp
	shr	eax, 8
	xor	al, r8b
	xor	al, cl
	rol	al, 3
	movzx	ecx, al
	mov	eax, ecx
	and	eax, esi
	xor	eax, edi
	mov	edi, ecx
	not	dil
	and	dil, dl
	mov	r8d, ebp
	shr	r8d, 16
	xor	r8b, dil
	xor	r8b, al
	rol	r8b, 5
	movzx	edi, r8b
	mov	eax, edi
	and	eax, ecx
	xor	eax, edx
	mov	edx, edi
	not	dl
	and	dl, sil
	shr	ebp, 24
	xor	bpl, dl
	xor	bpl, al
	ror	bpl
	movzx	r8d, bpl
	mov	r9d, r8d
	shl	r9d, 24
	or	r9d, esi
	mov	eax, dword ptr [rbx + 64]
	mov	edx, dword ptr [rbx + 68]
	shl	esi, 4
	mov	r10d, ecx
	shl	r10d, 16
	shl	ecx, 20
	or	ecx, r10d
	mov	r10d, edi
	shl	r10d, 4
	movzx	r10d, r10b
	shl	edi, 8
	and	edi, 61440
	and	r8d, 15
	shl	r8d, 20
	and	esi, 3840
	and	r9d, -268435441
	or	r9d, r10d
	or	edi, r9d
	or	edi, r8d
	or	edi, esi
	and	ecx, 252641280
	or	ecx, edi
	mov	r8d, ecx
	shr	r8d, 16
	shr	ecx, 24
	mov	esi, ecx
	and	esi, r8d
	xor	esi, r9d
	mov	r9d, ecx
	not	r9b
	shr	edi, 8
	mov	r10d, edi
	xor	edx, dword ptr [rbx + 56]
	and	r10b, r9b
	mov	r9d, edx
	xor	r9b, r10b
	xor	r9b, sil
	rol	r9b, 2
	movzx	esi, r9b
	mov	r9d, ecx
	and	r9d, esi
	xor	r9d, edi
	mov	edi, esi
	not	dil
	mov	r10d, r8d
	and	r10b, dil
	mov	edi, edx
	shr	edi, 8
	xor	dil, r10b
	xor	dil, r9b
	rol	dil, 3
	movzx	edi, dil
	mov	r9d, edi
	shl	r9d, 8
	mov	r10d, edi
	and	r10d, esi
	xor	r10d, r8d
	mov	r8d, edi
	not	r8b
	and	r8b, cl
	mov	r11d, edx
	shr	r11d, 16
	xor	r11b, r8b
	xor	r11b, r10b
	rol	r11b, 5
	movzx	r8d, r11b
	mov	r10d, r8d
	shl	r10d, 16
	or	r10d, r9d
	and	edi, r8d
	xor	edi, ecx
	not	r8b
	and	r8b, sil
	shr	edx, 24
	xor	dl, r8b
	xor	dl, dil
	ror	dl
	movzx	ecx, dl
	shl	ecx, 24
	or	ecx, r10d
	or	ecx, esi
	vmovd	xmm0, ecx
	vgf2p8affineqb	xmm0, xmm0, xmmword ptr [rsp], 0 # 16-byte Folded Reload
	vmovd	edi, xmm0
	bswap	edi
	mov	esi, edi
	shr	esi, 16
	mov	ecx, edi
	shr	ecx, 24
	mov	edx, ecx
	and	edx, esi
	xor	edx, edi
	mov	r8d, ecx
	not	r8b
	shr	edi, 8
	mov	r9d, edi
	xor	eax, dword ptr [rbx + 60]
	and	r9b, r8b
	mov	r8d, eax
	xor	r8b, r9b
	xor	r8b, dl
	rol	r8b, 2
	movzx	edx, r8b
	mov	r8d, ecx
	and	r8d, edx
	xor	r8d, edi
	mov	edi, edx
	not	dil
	mov	r9d, esi
	and	r9b, dil
	mov	edi, eax
	shr	edi, 8
	xor	dil, r9b
	xor	dil, r8b
	rol	dil, 3
	movzx	edi, dil
	mov	r8d, edi
	shl	r8d, 8
	mov	r9d, edi
	and	r9d, edx
	xor	r9d, esi
	mov	esi, edi
	not	sil
	and	sil, cl
	mov	r10d, eax
	shr	r10d, 16
	xor	r10b, sil
	xor	r10b, r9b
	rol	r10b, 5
	movzx	esi, r10b
	mov	r9d, esi
	shl	r9d, 16
	or	r9d, r8d
	and	edi, esi
	xor	edi, ecx
	not	sil
	and	sil, dl
	shr	eax, 24
	xor	al, sil
	xor	al, dil
	ror	al
	movzx	eax, al
	shl	eax, 24
	or	eax, r9d
	or	eax, edx
	add	rsp, 24
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end21:
	.size	sbu_encrypt_block, .Lfunc_end21-sbu_encrypt_block
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function r_scramble_op
.LCPI22_0:
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI22_1:
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI22_2:
	.byte	252                             # 0xfc
	.byte	252                             # 0xfc
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI22_3:
	.byte	251                             # 0xfb
	.byte	251                             # 0xfb
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI22_4:
	.byte	16                              # 0x10
	.byte	8                               # 0x8
	.byte	4                               # 0x4
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	8                               # 0x8
	.byte	4                               # 0x4
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI22_5:
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI22_6:
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.section	.rodata,"a",@progbits
.LCPI22_7:
	.byte	3                               # 0x3
.LCPI22_8:
	.byte	252                             # 0xfc
.LCPI22_9:
	.byte	251                             # 0xfb
	.text
	.globl	r_scramble_op
	.p2align	4, 0x90
	.type	r_scramble_op,@function
r_scramble_op:                          # @r_scramble_op
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	.cfi_offset rbp, -16
	mov	eax, ecx
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $esi killed $esi def $rsi
	mov	r8d, edi
	lea	ecx, [rsi + rsi]
	inc	cl
	test	esi, esi
	movzx	r9d, cl
	mov	ecx, 2
	cmovne	ecx, r9d
	vmovd	xmm0, esi
	vpbroadcastb	xmm0, xmm0
	vpaddb	xmm0, xmm0, xmmword ptr [rip + .LCPI22_0]
	vpxor	xmm1, xmm1, xmm1
	vpcmpgtb	xmm3, xmm1, xmm0
	vpbroadcastb	xmm2, byte ptr [rip + .LCPI22_7] # xmm2 = [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
	vpand	xmm3, xmm3, xmm2
	vpaddb	xmm4, xmm0, xmm3
	vpbroadcastb	xmm3, byte ptr [rip + .LCPI22_8] # xmm3 = [252,252,252,252,252,252,252,252,252,252,252,252,252,252,252,252]
	vpand	xmm4, xmm4, xmm3
	vpsubb	xmm4, xmm0, xmm4
	vpbroadcastb	xmm0, byte ptr [rip + .LCPI22_9] # xmm0 = [251,251,251,251,251,251,251,251,251,251,251,251,251,251,251,251]
	vpminub	xmm5, xmm4, xmm0
	vgf2p8affineqb	xmm6, xmm4, xmmword ptr [rip + .LCPI22_4], 0
	vpcmpeqb	xmm4, xmm4, xmm5
	vpandn	xmm4, xmm4, xmmword ptr [rip + .LCPI22_5]
	vpaddb	xmm4, xmm6, xmm4
	vpaddb	xmm5, xmm4, xmmword ptr [rip + .LCPI22_6]
	vpmovzxbq	xmm5, xmm5              # xmm5 = xmm5[0],zero,zero,zero,zero,zero,zero,zero,xmm5[1],zero,zero,zero,zero,zero,zero,zero
	vpmovzxbq	xmm6, xmm4              # xmm6 = xmm4[0],zero,zero,zero,zero,zero,zero,zero,xmm4[1],zero,zero,zero,zero,zero,zero,zero
	vpsubq	xmm4, xmm5, xmm6
	vpblendd	xmm5, xmm4, xmm1, 10            # xmm5 = xmm4[0],xmm1[1],xmm4[2],xmm1[3]
	vpcmpeqd	xmm4, xmm4, xmm4
	vpsllvq	xmm5, xmm4, xmm5
	vpxor	xmm5, xmm5, xmm4
	vpsllvq	xmm5, xmm5, xmm6
	vmovq	xmm7, r8
	vpbroadcastq	xmm7, xmm7
	vpand	xmm5, xmm5, xmm7
	vpsrlvq	xmm5, xmm5, xmm6
	vmovq	r9, xmm5
	vpextrd	r10d, xmm5, 2
	mov	r8d, r9d
	and	r8d, r10d
	not	r9b
	lea	r10d, [rsi - 3]
	vmovd	xmm5, r10d
	vpinsrb	xmm5, xmm5, esi, 1
	vpcmpgtb	xmm1, xmm1, xmm5
	vpand	xmm1, xmm1, xmm2
	vpaddb	xmm1, xmm5, xmm1
	vpand	xmm1, xmm1, xmm3
	vpsubb	xmm1, xmm5, xmm1
	vpextrb	esi, xmm1, 1
	shl	sil, 3
	vpminub	xmm0, xmm1, xmm0
	vpcmpeqb	xmm0, xmm1, xmm0
	vpxor	xmm0, xmm0, xmm4
	vpmovsxbq	xmm0, xmm0
	vmovmskpd	ebx, xmm0
	movzx	r10d, sil
	add	sil, 32
	movzx	esi, sil
	test	bl, 2
	cmove	esi, r10d
	lea	r10d, [rsi + 8]
	movzx	r10d, r10b
	sub	r10d, esi
	mov	r14, -1
	shlx	r10, r14, r10
	not	r10d
	shlx	r10, r10, rsi
	mov	r11d, r10d
	and	r11d, edi
	shrx	r11, r11, rsi
                                        # kill: def $cl killed $cl killed $ecx
	ror	r11b, cl
	vmovd	ecx, xmm1
	shl	cl, 3
	movzx	ebp, cl
	add	cl, 32
	movzx	ecx, cl
	test	bl, 1
	cmove	ecx, ebp
	lea	ebx, [rcx + 8]
	movzx	ebx, bl
	sub	ebx, ecx
	shlx	rbx, r14, rbx
	not	ebx
	shlx	rbx, rbx, rcx
	and	ebx, edi
	shrx	rcx, rbx, rcx
	and	cl, r9b
	xor	edx, eax
	and	edx, r10d
	shrx	rax, rdx, rsi
	xor	al, r11b
	xor	al, r8b
	xor	al, cl
                                        # kill: def $al killed $al killed $rax
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end22:
	.size	r_scramble_op, .Lfunc_end22-r_scramble_op
	.cfi_endproc
                                        # -- End function
	.globl	r_scramble                      # -- Begin function r_scramble
	.p2align	4, 0x90
	.type	r_scramble,@function
r_scramble:                             # @r_scramble
	.cfi_startproc
# %bb.0:
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset rbx, -16
	mov	r9d, edx
	mov	eax, 31
	sub	eax, edx
	mov	r10d, edi
	shr	r10d, 24
	rol	r10b
	mov	eax, dword ptr [rsi + 4*rax]
	mov	r8d, edi
	shr	r8d, 16
	mov	edx, edi
	shr	edx, 8
	mov	r11d, r8d
	and	r11d, edx
	mov	ebx, r8d
	not	bl
	and	bl, dil
	xor	eax, dword ptr [rsi + 4*r9]
	mov	esi, eax
	shr	esi, 24
	xor	r11b, r10b
	xor	r11b, bl
	xor	r11b, sil
	movzx	esi, r11b
	mov	r9d, esi
	shl	r9d, 24
	rol	r8b, 3
	mov	r10d, edi
	and	r10d, edx
	mov	r11d, edx
	not	r11b
	and	r11b, sil
	mov	ebx, eax
	shr	ebx, 16
	xor	r10b, r8b
	xor	r10b, bl
	xor	r10b, r11b
	movzx	r8d, r10b
	mov	r10d, r8d
	shl	r10d, 16
	or	r10d, r9d
	rol	dl, 5
	mov	r9d, esi
	and	r9b, dil
	mov	r11d, edi
	not	r11b
	and	r11b, r8b
	mov	ebx, eax
	shr	ebx, 8
	xor	bl, dl
	xor	bl, r9b
	xor	bl, r11b
	movzx	edx, bl
	mov	r9d, edx
	shl	r9d, 8
	or	r9d, r10d
	rol	dil, 6
	and	r8b, sil
	not	sil
	and	dl, sil
	xor	al, dil
	xor	al, r8b
	xor	al, dl
	movzx	edi, al
	or	edi, r9d
	pop	rbx
	.cfi_def_cfa_offset 8
	jmp	rcx                             # TAILCALL
.Lfunc_end23:
	.size	r_scramble, .Lfunc_end23-r_scramble
	.cfi_endproc
                                        # -- End function
	.globl	r_mash                          # -- Begin function r_mash
	.p2align	4, 0x90
	.type	r_mash,@function
r_mash:                                 # @r_mash
	.cfi_startproc
# %bb.0:
	mov	eax, edi
	shr	eax, 14
	and	eax, 124
	mov	eax, dword ptr [rsi + rax]
	xor	eax, edi
	mov	ecx, eax
	and	ecx, -16777216
	mov	edx, edi
	shr	edx, 6
	and	edx, 124
	mov	edx, dword ptr [rsi + rdx]
	xor	edx, edi
	and	edx, 16711680
	or	edx, ecx
	mov	ecx, edi
	and	ecx, 31
	mov	ecx, dword ptr [rsi + 4*rcx]
	xor	ecx, edi
	and	ecx, 65280
	shr	eax, 22
	and	eax, 124
	xor	edi, dword ptr [rsi + rax]
	movzx	eax, dil
	or	eax, ecx
	or	eax, edx
	ret
.Lfunc_end24:
	.size	r_mash, .Lfunc_end24-r_mash
	.cfi_endproc
                                        # -- End function
	.globl	noop                            # -- Begin function noop
	.p2align	4, 0x90
	.type	noop,@function
noop:                                   # @noop
	.cfi_startproc
# %bb.0:
	mov	eax, edi
	shr	eax, 22
	and	eax, 124
	mov	eax, dword ptr [rsi + rax]
	xor	eax, edi
	movzx	edx, al
	mov	ecx, eax
	and	ecx, 31
	mov	ecx, dword ptr [rsi + 4*rcx]
	xor	ecx, edi
	mov	r8d, ecx
	and	r8d, 65280
	or	r8d, edx
	mov	edx, ecx
	shr	edx, 6
	and	edx, 124
	mov	edx, dword ptr [rsi + rdx]
	xor	edx, edi
	mov	r9d, edx
	and	r9d, 16711680
	or	r9d, r8d
	shr	edx, 14
	and	edx, 124
	mov	edx, dword ptr [rsi + rdx]
	mov	r8d, edx
	xor	r8d, edi
	and	r8d, -16777216
	or	r8d, r9d
	xor	edx, r8d
	mov	r9d, edx
	and	r9d, -16777216
	and	edi, 16711680
	or	r9d, edi
	and	r8d, 31
	xor	ecx, dword ptr [rsi + 4*r8]
	and	ecx, 65280
	or	ecx, r9d
	shr	edx, 22
	and	edx, 124
	xor	eax, dword ptr [rsi + rdx]
	movzx	eax, al
	or	eax, ecx
	ret
.Lfunc_end25:
	.size	noop, .Lfunc_end25-noop
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function sbu_decrypt_block
.LCPI26_0:
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.byte	8                               # 0x8
	.byte	16                              # 0x10
	.byte	32                              # 0x20
	.byte	64                              # 0x40
	.byte	128                             # 0x80
	.text
	.globl	sbu_decrypt_block
	.p2align	4, 0x90
	.type	sbu_decrypt_block,@function
sbu_decrypt_block:                      # @sbu_decrypt_block
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	sub	rsp, 24
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -24
	.cfi_offset rbp, -16
	mov	rbx, rsi
	mov	esi, edi
	shr	esi, 24
	rol	sil
	mov	r8d, edi
	shr	r8d, 16
	mov	edx, edi
	shr	edx, 8
	mov	r9d, r8d
	and	r9d, edx
	mov	r10d, r8d
	not	r10b
	and	r10b, dil
	mov	ecx, dword ptr [rbx + 64]
	mov	eax, dword ptr [rbx + 68]
	xor	ecx, dword ptr [rbx + 60]
	mov	r11d, ecx
	shr	r11d, 24
	xor	r9b, sil
	xor	r9b, r10b
	xor	r9b, r11b
	movzx	esi, r9b
	mov	r9d, esi
	shl	r9d, 24
	rol	r8b, 3
	mov	r10d, edi
	and	r10d, edx
	mov	r11d, edx
	not	r11b
	and	r11b, sil
	mov	ebp, ecx
	shr	ebp, 16
	xor	r10b, r8b
	xor	r10b, bpl
	xor	r10b, r11b
	movzx	r8d, r10b
	mov	r10d, r8d
	shl	r10d, 16
	or	r10d, r9d
	rol	dl, 5
	mov	r9d, esi
	and	r9b, dil
	mov	r11d, edi
	not	r11b
	and	r11b, r8b
	mov	ebp, ecx
	shr	ebp, 8
	xor	bpl, dl
	xor	bpl, r9b
	xor	bpl, r11b
	movzx	edx, bpl
	mov	r9d, edx
	shl	r9d, 8
	or	r9d, r10d
	rol	dil, 6
	and	r8b, sil
	not	sil
	and	dl, sil
	xor	cl, dil
	xor	cl, r8b
	xor	cl, dl
	movzx	ecx, cl
	or	ecx, r9d
	vmovd	xmm0, ecx
	vpbroadcastq	xmm1, qword ptr [rip + .LCPI26_0] # xmm1 = [1,2,4,8,16,32,64,128,1,2,4,8,16,32,64,128]
	vmovdqa	xmmword ptr [rsp], xmm1         # 16-byte Spill
	vgf2p8affineqb	xmm0, xmm0, xmm1, 0
	vmovd	edx, xmm0
	bswap	edx
	mov	ecx, edx
	shr	ecx, 24
	rol	cl
	mov	r8d, edx
	shr	r8d, 16
	mov	esi, edx
	shr	esi, 8
	mov	edi, r8d
	and	edi, esi
	mov	r9d, r8d
	not	r9b
	and	r9b, dl
	xor	eax, dword ptr [rbx + 56]
	mov	r10d, eax
	shr	r10d, 24
	xor	r10b, cl
	xor	r10b, dil
	xor	r10b, r9b
	movzx	edi, r10b
	mov	ecx, edi
	shl	ecx, 24
	rol	r8b, 3
	mov	r9d, edx
	and	r9d, esi
	mov	r10d, esi
	not	r10b
	and	r10b, dil
	mov	r11d, eax
	shr	r11d, 16
	xor	r11b, r8b
	xor	r11b, r9b
	xor	r11b, r10b
	movzx	r9d, r11b
	mov	r10d, r9d
	shl	r10d, 16
	rol	sil, 5
	mov	r8d, edi
	and	r8b, dl
	mov	r11d, edx
	not	r11b
	and	r11b, r9b
	mov	ebp, eax
	shr	ebp, 8
	xor	bpl, sil
	xor	bpl, r8b
	xor	bpl, r11b
	movzx	esi, bpl
	mov	r8d, esi
	shl	r8d, 8
	or	r8d, r10d
	or	r8d, ecx
	rol	dl, 6
	and	r9b, dil
	not	dil
	and	sil, dil
	xor	al, dl
	xor	al, r9b
	xor	al, sil
	movzx	edx, al
	lea	r9d, [r8 + rdx]
	shr	r9d, 4
	mov	edi, r8d
	shr	edi, 8
	shr	r8d, 12
	and	edx, 15
	mov	eax, r9d
	and	eax, 240
	or	eax, edx
	mov	edx, edi
	and	edx, 3840
	mov	esi, r8d
	and	esi, 61440
	or	esi, edx
	and	r9d, 15
	and	edi, 240
	or	edi, r9d
	and	r8d, 3840
	or	r8d, edi
	shl	r8d, 16
	and	ecx, -268435456
	or	ecx, r8d
	lea	r8d, [rsi + rcx]
	mov	edx, dword ptr [rbx + 72]
	mov	r9d, ecx
	shr	r9d, 24
	rol	r9b
	shr	ecx, 16
	shr	r8d, 8
	mov	r10d, ecx
	and	r10d, r8d
	not	cl
	xor	edx, dword ptr [rbx + 52]
	and	cl, al
	mov	r11d, edx
	shr	r11d, 24
	xor	r11b, r9b
	xor	r11b, r10b
	xor	r11b, cl
	movzx	ecx, r11b
	mov	r9d, ecx
	shl	r9d, 24
	rol	dil, 3
	mov	r10d, r8d
	and	r10d, eax
	not	r8b
	and	r8b, cl
	mov	r11d, edx
	shr	r11d, 16
	xor	r11b, dil
	xor	r11b, r10b
	xor	r11b, r8b
	movzx	edi, r11b
	mov	r8d, edi
	shl	r8d, 16
	or	r8d, r9d
	shr	esi, 8
	rol	sil, 5
	mov	r9d, ecx
	and	r9b, al
	mov	r10d, eax
	not	r10b
	and	r10b, dil
	mov	r11d, edx
	shr	r11d, 8
	xor	r11b, sil
	xor	r11b, r9b
	xor	r11b, r10b
	movzx	esi, r11b
	mov	r9d, esi
	shl	r9d, 8
	or	r9d, r8d
	rol	al, 6
	and	dil, cl
	not	cl
	and	sil, cl
	xor	dl, al
	xor	dl, dil
	xor	dl, sil
	movzx	edi, dl
	or	edi, r9d
	call	unshuffle1
	mov	edi, eax
	shr	edi, 24
	rol	dil
	mov	r8d, eax
	shr	r8d, 16
	mov	esi, eax
	shr	esi, 8
	mov	r9d, r8d
	and	r9d, esi
	mov	r10d, r8d
	not	r10b
	and	r10b, al
	mov	edx, dword ptr [rbx + 76]
	xor	edx, dword ptr [rbx + 48]
	mov	ecx, dword ptr [rbx + 80]
	mov	r11d, edx
	shr	r11d, 24
	xor	r9b, dil
	xor	r11b, r10b
	xor	r11b, r9b
	movzx	edi, r11b
	mov	r9d, edi
	shl	r9d, 24
	rol	r8b, 3
	mov	r10d, eax
	and	r10d, esi
	mov	r11d, esi
	not	r11b
	and	r11b, dil
	mov	ebp, edx
	shr	ebp, 16
	xor	bpl, r8b
	xor	bpl, r10b
	xor	bpl, r11b
	movzx	r8d, bpl
	mov	r10d, r8d
	shl	r10d, 16
	or	r10d, r9d
	rol	sil, 5
	mov	r9d, edi
	and	r9b, al
	mov	r11d, eax
	not	r11b
	and	r11b, r8b
	mov	ebp, edx
	shr	ebp, 8
	xor	bpl, sil
	xor	bpl, r9b
	xor	bpl, r11b
	movzx	esi, bpl
	mov	r9d, esi
	shl	r9d, 8
	or	r9d, r10d
	rol	al, 6
	and	r8b, dil
	not	dil
	and	sil, dil
	xor	dl, al
	xor	dl, r8b
	xor	dl, sil
	movzx	eax, dl
	or	eax, r9d
	vmovd	xmm0, eax
	vmovdqa	xmm1, xmmword ptr [rsp]         # 16-byte Reload
	vgf2p8affineqb	xmm0, xmm0, xmm1, 0
	vmovd	eax, xmm0
	bswap	eax
	mov	edx, eax
	shr	edx, 14
	and	edx, 124
	mov	r10d, dword ptr [rbx + rdx]
	xor	r10d, eax
	mov	edx, eax
	shr	edx, 6
	and	edx, 124
	mov	esi, dword ptr [rbx + rdx]
	xor	esi, eax
	mov	r8d, esi
	and	r8d, 16711680
	mov	edx, eax
	and	edx, 31
	mov	edx, dword ptr [rbx + 4*rdx]
	xor	edx, eax
	movzx	edi, dx
	mov	r9d, r10d
	shr	r9d, 24
	shr	r10d, 22
	and	r10d, 124
	xor	eax, dword ptr [rbx + r10]
	or	edi, r8d
	rol	r9b
	shr	r8d, 16
	shr	edi, 8
	mov	r10d, r8d
	and	r10d, edi
	not	r8b
	xor	ecx, dword ptr [rbx + 44]
	and	r8b, al
	mov	r11d, ecx
	shr	r11d, 24
	xor	r11b, r9b
	xor	r11b, r10b
	xor	r11b, r8b
	movzx	r8d, r11b
	mov	r9d, r8d
	shl	r9d, 24
	shr	esi, 16
	rol	sil, 3
	mov	r10d, edi
	and	r10d, eax
	not	dil
	and	dil, r8b
	mov	r11d, ecx
	shr	r11d, 16
	xor	r11b, sil
	xor	r11b, r10b
	xor	r11b, dil
	movzx	esi, r11b
	mov	edi, esi
	shl	edi, 16
	or	edi, r9d
	shr	edx, 8
	rol	dl, 5
	mov	r9d, r8d
	and	r9b, al
	mov	r10d, eax
	not	r10b
	and	r10b, sil
	mov	r11d, ecx
	shr	r11d, 8
	xor	r11b, dl
	xor	r11b, r9b
	xor	r11b, r10b
	movzx	edx, r11b
	mov	r9d, edx
	shl	r9d, 8
	or	r9d, edi
	rol	al, 6
	and	sil, r8b
	not	r8b
	and	dl, r8b
	xor	cl, al
	xor	cl, sil
	xor	cl, dl
	movzx	eax, cl
	or	eax, r9d
	vmovd	xmm0, eax
	vgf2p8affineqb	xmm0, xmm0, xmm1, 0
	vmovd	edx, xmm0
	bswap	edx
	mov	ecx, dword ptr [rbx + 84]
	mov	eax, edx
	shr	eax, 24
	rol	al
	mov	r8d, edx
	shr	r8d, 16
	mov	esi, edx
	shr	esi, 8
	mov	edi, r8d
	and	edi, esi
	mov	r9d, r8d
	not	r9b
	and	r9b, dl
	xor	ecx, dword ptr [rbx + 40]
	mov	r10d, ecx
	shr	r10d, 24
	xor	r10b, al
	xor	r10b, dil
	xor	r10b, r9b
	movzx	edi, r10b
	mov	eax, edi
	shl	eax, 24
	rol	r8b, 3
	mov	r9d, edx
	and	r9d, esi
	mov	r10d, esi
	not	r10b
	and	r10b, dil
	mov	r11d, ecx
	shr	r11d, 16
	xor	r11b, r8b
	xor	r11b, r9b
	xor	r11b, r10b
	movzx	r9d, r11b
	mov	r10d, r9d
	shl	r10d, 16
	rol	sil, 5
	mov	r8d, edi
	and	r8b, dl
	mov	r11d, edx
	not	r11b
	and	r11b, r9b
	mov	ebp, ecx
	shr	ebp, 8
	xor	bpl, sil
	xor	bpl, r8b
	xor	bpl, r11b
	movzx	esi, bpl
	mov	r8d, esi
	shl	r8d, 8
	or	r8d, r10d
	or	r8d, eax
	rol	dl, 6
	and	r9b, dil
	not	dil
	and	sil, dil
	xor	cl, dl
	xor	cl, r9b
	xor	cl, sil
	movzx	edx, cl
	lea	r9d, [r8 + rdx]
	shr	r9d, 4
	mov	edi, r8d
	shr	edi, 8
	shr	r8d, 12
	and	edx, 15
	mov	ecx, r9d
	and	ecx, 240
	or	ecx, edx
	mov	edx, edi
	and	edx, 3840
	mov	esi, r8d
	and	esi, 61440
	or	esi, edx
	and	r9d, 15
	and	edi, 240
	or	edi, r9d
	and	r8d, 3840
	or	r8d, edi
	shl	r8d, 16
	and	eax, -268435456
	or	eax, r8d
	lea	r8d, [rsi + rax]
	mov	edx, dword ptr [rbx + 88]
	mov	r9d, eax
	shr	r9d, 24
	rol	r9b
	shr	eax, 16
	shr	r8d, 8
	mov	r10d, eax
	and	r10d, r8d
	not	al
	xor	edx, dword ptr [rbx + 36]
	and	al, cl
	mov	r11d, edx
	shr	r11d, 24
	xor	r11b, r9b
	xor	r11b, r10b
	xor	r11b, al
	movzx	eax, r11b
	mov	r9d, eax
	shl	r9d, 24
	rol	dil, 3
	mov	r10d, r8d
	and	r10d, ecx
	not	r8b
	and	r8b, al
	mov	r11d, edx
	shr	r11d, 16
	xor	r11b, dil
	xor	r11b, r10b
	xor	r11b, r8b
	movzx	edi, r11b
	mov	r8d, edi
	shl	r8d, 16
	or	r8d, r9d
	shr	esi, 8
	rol	sil, 5
	mov	r9d, eax
	and	r9b, cl
	mov	r10d, ecx
	not	r10b
	and	r10b, dil
	mov	r11d, edx
	shr	r11d, 8
	xor	r11b, sil
	xor	r11b, r9b
	xor	r11b, r10b
	movzx	esi, r11b
	mov	r9d, esi
	shl	r9d, 8
	or	r9d, r8d
	rol	cl, 6
	and	dil, al
	not	al
	and	sil, al
	xor	dl, cl
	xor	dl, dil
	xor	dl, sil
	movzx	edi, dl
	or	edi, r9d
	call	unshuffle1
	mov	edi, eax
	shr	edi, 24
	rol	dil
	mov	r8d, eax
	shr	r8d, 16
	mov	esi, eax
	shr	esi, 8
	mov	r9d, r8d
	and	r9d, esi
	mov	r10d, r8d
	not	r10b
	and	r10b, al
	mov	edx, dword ptr [rbx + 92]
	xor	edx, dword ptr [rbx + 32]
	mov	ecx, dword ptr [rbx + 96]
	mov	r11d, edx
	shr	r11d, 24
	xor	r9b, dil
	xor	r11b, r10b
	xor	r11b, r9b
	movzx	edi, r11b
	mov	r9d, edi
	shl	r9d, 24
	rol	r8b, 3
	mov	r10d, eax
	and	r10d, esi
	mov	r11d, esi
	not	r11b
	and	r11b, dil
	mov	ebp, edx
	shr	ebp, 16
	xor	bpl, r8b
	xor	bpl, r10b
	xor	bpl, r11b
	movzx	r8d, bpl
	mov	r10d, r8d
	shl	r10d, 16
	or	r10d, r9d
	rol	sil, 5
	mov	r9d, edi
	and	r9b, al
	mov	r11d, eax
	not	r11b
	and	r11b, r8b
	mov	ebp, edx
	shr	ebp, 8
	xor	bpl, sil
	xor	bpl, r9b
	xor	bpl, r11b
	movzx	esi, bpl
	mov	r9d, esi
	shl	r9d, 8
	or	r9d, r10d
	rol	al, 6
	and	r8b, dil
	not	dil
	and	sil, dil
	xor	dl, al
	xor	dl, r8b
	xor	dl, sil
	movzx	eax, dl
	or	eax, r9d
	vmovd	xmm0, eax
	vmovdqa	xmm1, xmmword ptr [rsp]         # 16-byte Reload
	vgf2p8affineqb	xmm0, xmm0, xmm1, 0
	vmovd	eax, xmm0
	bswap	eax
	mov	edx, eax
	shr	edx, 14
	and	edx, 124
	mov	r10d, dword ptr [rbx + rdx]
	xor	r10d, eax
	mov	edx, eax
	shr	edx, 6
	and	edx, 124
	mov	esi, dword ptr [rbx + rdx]
	xor	esi, eax
	mov	r8d, esi
	and	r8d, 16711680
	mov	edx, eax
	and	edx, 31
	mov	edx, dword ptr [rbx + 4*rdx]
	xor	edx, eax
	movzx	edi, dx
	mov	r9d, r10d
	shr	r9d, 24
	shr	r10d, 22
	and	r10d, 124
	xor	eax, dword ptr [rbx + r10]
	or	edi, r8d
	rol	r9b
	shr	r8d, 16
	shr	edi, 8
	mov	r10d, r8d
	and	r10d, edi
	not	r8b
	xor	ecx, dword ptr [rbx + 28]
	and	r8b, al
	mov	r11d, ecx
	shr	r11d, 24
	xor	r11b, r9b
	xor	r11b, r10b
	xor	r11b, r8b
	movzx	r8d, r11b
	mov	r9d, r8d
	shl	r9d, 24
	shr	esi, 16
	rol	sil, 3
	mov	r10d, edi
	and	r10d, eax
	not	dil
	and	dil, r8b
	mov	r11d, ecx
	shr	r11d, 16
	xor	r11b, sil
	xor	r11b, r10b
	xor	r11b, dil
	movzx	esi, r11b
	mov	edi, esi
	shl	edi, 16
	or	edi, r9d
	shr	edx, 8
	rol	dl, 5
	mov	r9d, r8d
	and	r9b, al
	mov	r10d, eax
	not	r10b
	and	r10b, sil
	mov	r11d, ecx
	shr	r11d, 8
	xor	r11b, dl
	xor	r11b, r9b
	xor	r11b, r10b
	movzx	edx, r11b
	mov	r9d, edx
	shl	r9d, 8
	or	r9d, edi
	rol	al, 6
	and	sil, r8b
	not	r8b
	and	dl, r8b
	xor	cl, al
	xor	cl, sil
	xor	cl, dl
	movzx	eax, cl
	or	eax, r9d
	vmovd	xmm0, eax
	vgf2p8affineqb	xmm0, xmm0, xmm1, 0
	vmovd	edx, xmm0
	bswap	edx
	mov	ecx, dword ptr [rbx + 100]
	mov	eax, edx
	shr	eax, 24
	rol	al
	mov	r8d, edx
	shr	r8d, 16
	mov	esi, edx
	shr	esi, 8
	mov	edi, r8d
	and	edi, esi
	mov	r9d, r8d
	not	r9b
	and	r9b, dl
	xor	ecx, dword ptr [rbx + 24]
	mov	r10d, ecx
	shr	r10d, 24
	xor	r10b, al
	xor	r10b, dil
	xor	r10b, r9b
	movzx	edi, r10b
	mov	eax, edi
	shl	eax, 24
	rol	r8b, 3
	mov	r9d, edx
	and	r9d, esi
	mov	r10d, esi
	not	r10b
	and	r10b, dil
	mov	r11d, ecx
	shr	r11d, 16
	xor	r11b, r8b
	xor	r11b, r9b
	xor	r11b, r10b
	movzx	r9d, r11b
	mov	r10d, r9d
	shl	r10d, 16
	rol	sil, 5
	mov	r8d, edi
	and	r8b, dl
	mov	r11d, edx
	not	r11b
	and	r11b, r9b
	mov	ebp, ecx
	shr	ebp, 8
	xor	bpl, sil
	xor	bpl, r8b
	xor	bpl, r11b
	movzx	esi, bpl
	mov	r8d, esi
	shl	r8d, 8
	or	r8d, r10d
	or	r8d, eax
	rol	dl, 6
	and	r9b, dil
	not	dil
	and	sil, dil
	xor	cl, dl
	xor	cl, r9b
	xor	cl, sil
	movzx	edx, cl
	lea	r9d, [r8 + rdx]
	shr	r9d, 4
	mov	edi, r8d
	shr	edi, 8
	shr	r8d, 12
	and	edx, 15
	mov	ecx, r9d
	and	ecx, 240
	or	ecx, edx
	mov	edx, edi
	and	edx, 3840
	mov	esi, r8d
	and	esi, 61440
	or	esi, edx
	and	r9d, 15
	and	edi, 240
	or	edi, r9d
	and	r8d, 3840
	or	r8d, edi
	shl	r8d, 16
	and	eax, -268435456
	or	eax, r8d
	lea	r8d, [rsi + rax]
	mov	edx, dword ptr [rbx + 104]
	mov	r9d, eax
	shr	r9d, 24
	rol	r9b
	shr	eax, 16
	shr	r8d, 8
	mov	r10d, eax
	and	r10d, r8d
	not	al
	xor	edx, dword ptr [rbx + 20]
	and	al, cl
	mov	r11d, edx
	shr	r11d, 24
	xor	r11b, r9b
	xor	r11b, r10b
	xor	r11b, al
	movzx	eax, r11b
	mov	r9d, eax
	shl	r9d, 24
	rol	dil, 3
	mov	r10d, r8d
	and	r10d, ecx
	not	r8b
	and	r8b, al
	mov	r11d, edx
	shr	r11d, 16
	xor	r11b, dil
	xor	r11b, r10b
	xor	r11b, r8b
	movzx	edi, r11b
	mov	r8d, edi
	shl	r8d, 16
	or	r8d, r9d
	shr	esi, 8
	rol	sil, 5
	mov	r9d, eax
	and	r9b, cl
	mov	r10d, ecx
	not	r10b
	and	r10b, dil
	mov	r11d, edx
	shr	r11d, 8
	xor	r11b, sil
	xor	r11b, r9b
	xor	r11b, r10b
	movzx	esi, r11b
	mov	r9d, esi
	shl	r9d, 8
	or	r9d, r8d
	rol	cl, 6
	and	dil, al
	not	al
	and	sil, al
	xor	dl, cl
	xor	dl, dil
	xor	dl, sil
	movzx	edi, dl
	or	edi, r9d
	call	unshuffle1
	mov	edi, eax
	shr	edi, 24
	rol	dil
	mov	r8d, eax
	shr	r8d, 16
	mov	esi, eax
	shr	esi, 8
	mov	r9d, r8d
	and	r9d, esi
	mov	r10d, r8d
	not	r10b
	and	r10b, al
	mov	edx, dword ptr [rbx + 108]
	xor	edx, dword ptr [rbx + 16]
	mov	ecx, dword ptr [rbx + 112]
	mov	r11d, edx
	shr	r11d, 24
	xor	r9b, dil
	xor	r11b, r10b
	xor	r11b, r9b
	movzx	edi, r11b
	mov	r9d, edi
	shl	r9d, 24
	rol	r8b, 3
	mov	r10d, eax
	and	r10d, esi
	mov	r11d, esi
	not	r11b
	and	r11b, dil
	mov	ebp, edx
	shr	ebp, 16
	xor	bpl, r8b
	xor	bpl, r10b
	xor	bpl, r11b
	movzx	r8d, bpl
	mov	r10d, r8d
	shl	r10d, 16
	or	r10d, r9d
	rol	sil, 5
	mov	r9d, edi
	and	r9b, al
	mov	r11d, eax
	not	r11b
	and	r11b, r8b
	mov	ebp, edx
	shr	ebp, 8
	xor	bpl, sil
	xor	bpl, r9b
	xor	bpl, r11b
	movzx	esi, bpl
	mov	r9d, esi
	shl	r9d, 8
	or	r9d, r10d
	rol	al, 6
	and	r8b, dil
	not	dil
	and	sil, dil
	xor	dl, al
	xor	dl, r8b
	xor	dl, sil
	movzx	eax, dl
	or	eax, r9d
	vmovd	xmm0, eax
	vmovdqa	xmm1, xmmword ptr [rsp]         # 16-byte Reload
	vgf2p8affineqb	xmm0, xmm0, xmm1, 0
	vmovd	eax, xmm0
	bswap	eax
	mov	edx, eax
	shr	edx, 14
	and	edx, 124
	mov	r10d, dword ptr [rbx + rdx]
	xor	r10d, eax
	mov	edx, eax
	shr	edx, 6
	and	edx, 124
	mov	esi, dword ptr [rbx + rdx]
	xor	esi, eax
	mov	r8d, esi
	and	r8d, 16711680
	mov	edx, eax
	and	edx, 31
	mov	edx, dword ptr [rbx + 4*rdx]
	xor	edx, eax
	movzx	edi, dx
	mov	r9d, r10d
	shr	r9d, 24
	shr	r10d, 22
	and	r10d, 124
	xor	eax, dword ptr [rbx + r10]
	or	edi, r8d
	rol	r9b
	shr	r8d, 16
	shr	edi, 8
	mov	r10d, r8d
	and	r10d, edi
	not	r8b
	xor	ecx, dword ptr [rbx + 12]
	and	r8b, al
	mov	r11d, ecx
	shr	r11d, 24
	xor	r11b, r9b
	xor	r11b, r10b
	xor	r11b, r8b
	movzx	r8d, r11b
	mov	r9d, r8d
	shl	r9d, 24
	shr	esi, 16
	rol	sil, 3
	mov	r10d, edi
	and	r10d, eax
	not	dil
	and	dil, r8b
	mov	r11d, ecx
	shr	r11d, 16
	xor	r11b, sil
	xor	r11b, r10b
	xor	r11b, dil
	movzx	esi, r11b
	mov	edi, esi
	shl	edi, 16
	or	edi, r9d
	shr	edx, 8
	rol	dl, 5
	mov	r9d, r8d
	and	r9b, al
	mov	r10d, eax
	not	r10b
	and	r10b, sil
	mov	r11d, ecx
	shr	r11d, 8
	xor	r11b, dl
	xor	r11b, r9b
	xor	r11b, r10b
	movzx	edx, r11b
	mov	r9d, edx
	shl	r9d, 8
	or	r9d, edi
	rol	al, 6
	and	sil, r8b
	not	r8b
	and	dl, r8b
	xor	cl, al
	xor	cl, sil
	xor	cl, dl
	movzx	eax, cl
	or	eax, r9d
	vmovd	xmm0, eax
	vgf2p8affineqb	xmm0, xmm0, xmm1, 0
	vmovd	edx, xmm0
	bswap	edx
	mov	ecx, dword ptr [rbx + 116]
	mov	eax, edx
	shr	eax, 24
	rol	al
	mov	r8d, edx
	shr	r8d, 16
	mov	esi, edx
	shr	esi, 8
	mov	edi, r8d
	and	edi, esi
	mov	r9d, r8d
	not	r9b
	and	r9b, dl
	xor	ecx, dword ptr [rbx + 8]
	mov	r10d, ecx
	shr	r10d, 24
	xor	r10b, al
	xor	r10b, dil
	xor	r10b, r9b
	movzx	edi, r10b
	mov	eax, edi
	shl	eax, 24
	rol	r8b, 3
	mov	r9d, edx
	and	r9d, esi
	mov	r10d, esi
	not	r10b
	and	r10b, dil
	mov	r11d, ecx
	shr	r11d, 16
	xor	r11b, r8b
	xor	r11b, r9b
	xor	r11b, r10b
	movzx	r9d, r11b
	mov	r10d, r9d
	shl	r10d, 16
	rol	sil, 5
	mov	r8d, edi
	and	r8b, dl
	mov	r11d, edx
	not	r11b
	and	r11b, r9b
	mov	ebp, ecx
	shr	ebp, 8
	xor	bpl, sil
	xor	bpl, r8b
	xor	bpl, r11b
	movzx	esi, bpl
	mov	r8d, esi
	shl	r8d, 8
	or	r8d, r10d
	or	r8d, eax
	rol	dl, 6
	and	r9b, dil
	not	dil
	and	sil, dil
	xor	cl, dl
	xor	cl, r9b
	xor	cl, sil
	movzx	edx, cl
	lea	r9d, [r8 + rdx]
	shr	r9d, 4
	mov	edi, r8d
	shr	edi, 8
	shr	r8d, 12
	and	edx, 15
	mov	ecx, r9d
	and	ecx, 240
	or	ecx, edx
	mov	edx, edi
	and	edx, 3840
	mov	esi, r8d
	and	esi, 61440
	or	esi, edx
	and	r9d, 15
	and	edi, 240
	or	edi, r9d
	and	r8d, 3840
	or	r8d, edi
	shl	r8d, 16
	and	eax, -268435456
	or	eax, r8d
	lea	r8d, [rsi + rax]
	mov	edx, dword ptr [rbx + 120]
	mov	r9d, eax
	shr	r9d, 24
	rol	r9b
	shr	eax, 16
	shr	r8d, 8
	mov	r10d, eax
	and	r10d, r8d
	not	al
	xor	edx, dword ptr [rbx + 4]
	and	al, cl
	mov	r11d, edx
	shr	r11d, 24
	xor	r11b, r9b
	xor	r11b, r10b
	xor	r11b, al
	movzx	eax, r11b
	mov	r9d, eax
	shl	r9d, 24
	rol	dil, 3
	mov	r10d, r8d
	and	r10d, ecx
	not	r8b
	and	r8b, al
	mov	r11d, edx
	shr	r11d, 16
	xor	r11b, dil
	xor	r11b, r10b
	xor	r11b, r8b
	movzx	edi, r11b
	mov	r8d, edi
	shl	r8d, 16
	or	r8d, r9d
	shr	esi, 8
	rol	sil, 5
	mov	r9d, eax
	and	r9b, cl
	mov	r10d, ecx
	not	r10b
	and	r10b, dil
	mov	r11d, edx
	shr	r11d, 8
	xor	r11b, sil
	xor	r11b, r9b
	xor	r11b, r10b
	movzx	esi, r11b
	mov	r9d, esi
	shl	r9d, 8
	or	r9d, r8d
	rol	cl, 6
	and	dil, al
	not	al
	and	sil, al
	xor	dl, cl
	xor	dl, dil
	xor	dl, sil
	movzx	edi, dl
	or	edi, r9d
	call	unshuffle1
	mov	ecx, dword ptr [rbx + 124]
	mov	esi, eax
	shr	esi, 24
	rol	sil
	mov	edi, eax
	shr	edi, 16
	mov	edx, eax
	shr	edx, 8
	mov	r8d, edi
	and	r8d, edx
	mov	r9d, edi
	not	r9b
	and	r9b, al
	xor	ecx, dword ptr [rbx]
	mov	r10d, ecx
	shr	r10d, 24
	xor	r8b, sil
	xor	r10b, r9b
	xor	r10b, r8b
	movzx	esi, r10b
	mov	r8d, esi
	shl	r8d, 24
	rol	dil, 3
	mov	r9d, eax
	and	r9d, edx
	mov	r10d, edx
	not	r10b
	and	r10b, sil
	mov	r11d, ecx
	shr	r11d, 16
	xor	r11b, dil
	xor	r11b, r9b
	xor	r11b, r10b
	movzx	edi, r11b
	mov	r9d, edi
	shl	r9d, 16
	or	r9d, r8d
	rol	dl, 5
	mov	r8d, esi
	and	r8b, al
	mov	r10d, eax
	not	r10b
	and	r10b, dil
	mov	r11d, ecx
	shr	r11d, 8
	xor	r11b, dl
	xor	r11b, r8b
	xor	r11b, r10b
	movzx	edx, r11b
	mov	r8d, edx
	shl	r8d, 8
	or	r8d, r9d
	rol	al, 6
	and	dil, sil
	not	sil
	and	dl, sil
	xor	cl, al
	xor	cl, dil
	xor	cl, dl
	movzx	eax, cl
	or	eax, r8d
	vmovd	xmm0, eax
	vgf2p8affineqb	xmm0, xmm0, xmmword ptr [rsp], 0 # 16-byte Folded Reload
	vmovd	eax, xmm0
	bswap	eax
	add	rsp, 24
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end26:
	.size	sbu_decrypt_block, .Lfunc_end26-sbu_decrypt_block
	.cfi_endproc
                                        # -- End function
	.globl	sbu_encrypt                     # -- Begin function sbu_encrypt
	.p2align	4, 0x90
	.type	sbu_encrypt,@function
sbu_encrypt:                            # @sbu_encrypt
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r13
	.cfi_def_cfa_offset 40
	push	r12
	.cfi_def_cfa_offset 48
	push	rbx
	.cfi_def_cfa_offset 56
	sub	rsp, 24
	.cfi_def_cfa_offset 80
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	rax, qword ptr fs:[40]
	mov	qword ptr [rsp + 16], rax
	mov	rbp, rdx
	xor	r13d, r13d
	add	rbp, -4
	je	.LBB27_2
	.p2align	4, 0x90
.LBB27_1:                               # =>This Inner Loop Header: Depth=1
	mov	edi, dword ptr [r12 + r13]
	mov	rsi, r14
	call	sbu_encrypt_block
	mov	dword ptr [rbx + r13], eax
	add	r13, 4
	cmp	r13, rbp
	jb	.LBB27_1
.LBB27_2:
	mov	dword ptr [rsp + 12], 0
	add	r12, r13
	sub	r15, r13
	lea	rdi, [rsp + 12]
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy@PLT
	mov	edi, dword ptr [rsp + 12]
	mov	rsi, r14
	call	sbu_encrypt_block
	mov	dword ptr [rbx + r13], eax
	mov	rax, qword ptr fs:[40]
	cmp	rax, qword ptr [rsp + 16]
	jne	.LBB27_4
# %bb.3:
	add	rsp, 24
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB27_4:
	.cfi_def_cfa_offset 80
	call	__stack_chk_fail@PLT
.Lfunc_end27:
	.size	sbu_encrypt, .Lfunc_end27-sbu_encrypt
	.cfi_endproc
                                        # -- End function
	.globl	sbu_decrypt                     # -- Begin function sbu_decrypt
	.p2align	4, 0x90
	.type	sbu_decrypt,@function
sbu_decrypt:                            # @sbu_decrypt
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r13
	.cfi_def_cfa_offset 40
	push	r12
	.cfi_def_cfa_offset 48
	push	rbx
	.cfi_def_cfa_offset 56
	push	rax
	.cfi_def_cfa_offset 64
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r15, rcx
	mov	rbx, rdx
	mov	qword ptr [rsp], rsi            # 8-byte Spill
	mov	r12, rdi
	lea	rdi, [rdx + 3]
	and	rdi, -4
	call	malloc@PLT
	mov	r13, rax
	test	rbx, rbx
	je	.LBB28_3
# %bb.1:
	lea	rbp, [rbx - 1]
	shr	rbp, 2
	inc	rbp
	xor	r14d, r14d
	.p2align	4, 0x90
.LBB28_2:                               # =>This Inner Loop Header: Depth=1
	mov	edi, dword ptr [r12 + 4*r14]
	mov	rsi, r15
	call	sbu_decrypt_block
	mov	dword ptr [r13 + 4*r14], eax
	inc	r14
	cmp	rbp, r14
	jne	.LBB28_2
.LBB28_3:
	mov	rdi, qword ptr [rsp]            # 8-byte Reload
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy@PLT
	mov	rdi, r13
	add	rsp, 8
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end28:
	.size	sbu_decrypt, .Lfunc_end28-sbu_decrypt
	.cfi_endproc
                                        # -- End function
	.globl	u32_to_le_bytes                 # -- Begin function u32_to_le_bytes
	.p2align	4, 0x90
	.type	u32_to_le_bytes,@function
u32_to_le_bytes:                        # @u32_to_le_bytes
	.cfi_startproc
# %bb.0:
	mov	dword ptr [rdi], esi
	ret
.Lfunc_end29:
	.size	u32_to_le_bytes, .Lfunc_end29-u32_to_le_bytes
	.cfi_endproc
                                        # -- End function
	.globl	byteswap                        # -- Begin function byteswap
	.p2align	4, 0x90
	.type	byteswap,@function
byteswap:                               # @byteswap
	.cfi_startproc
# %bb.0:
	mov	eax, edi
	bswap	eax
	ret
.Lfunc_end30:
	.size	byteswap, .Lfunc_end30-byteswap
	.cfi_endproc
                                        # -- End function
	.globl	u32_to_be_bytes                 # -- Begin function u32_to_be_bytes
	.p2align	4, 0x90
	.type	u32_to_be_bytes,@function
u32_to_be_bytes:                        # @u32_to_be_bytes
	.cfi_startproc
# %bb.0:
	movbe	dword ptr [rdi], esi
	ret
.Lfunc_end31:
	.size	u32_to_be_bytes, .Lfunc_end31-u32_to_be_bytes
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
	.asciz	"%x "
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
	.addrsig_sym __stack_chk_fail
