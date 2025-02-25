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
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.quad	8                               # 0x8
.LCPI8_1:
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.quad	12                              # 0xc
.LCPI8_2:
	.quad	131072                          # 0x20000
	.quad	262144                          # 0x40000
	.quad	524288                          # 0x80000
	.quad	16777216                        # 0x1000000
.LCPI8_3:
	.quad	512                             # 0x200
	.quad	1024                            # 0x400
	.quad	2048                            # 0x800
	.quad	65536                           # 0x10000
.LCPI8_4:
	.quad	4096                            # 0x1000
	.quad	8192                            # 0x2000
	.quad	16384                           # 0x4000
	.quad	32768                           # 0x8000
.LCPI8_5:
	.quad	32                              # 0x20
	.quad	16                              # 0x10
	.quad	64                              # 0x40
	.quad	128                             # 0x80
.LCPI8_6:
	.quad	1048576                         # 0x100000
	.quad	2097152                         # 0x200000
	.quad	4194304                         # 0x400000
	.quad	8388608                         # 0x800000
	.text
	.globl	shuffle4
	.p2align	4, 0x90
	.type	shuffle4,@function
shuffle4:                               # @shuffle4
	.cfi_startproc
# %bb.0:
                                        # kill: def $edi killed $edi def $rdi
	mov	ecx, edi
	test	byte ptr [rip + __cpu_model+14], 2
	jne	.LBB8_2
# %bb.1:
	mov	esi, ecx
	and	esi, 16
	shl	esi, 4
	vmovq	xmm0, rcx
	vpbroadcastq	ymm1, xmm0
	vpsllvq	ymm0, ymm1, ymmword ptr [rip + .LCPI8_0]
	vpsllvq	ymm2, ymm1, ymmword ptr [rip + .LCPI8_1]
	vpand	ymm2, ymm2, ymmword ptr [rip + .LCPI8_2]
	vpand	ymm0, ymm0, ymmword ptr [rip + .LCPI8_3]
	vpor	ymm0, ymm0, ymm2
	mov	rdx, rcx
	shl	rdx, 12
	mov	r8d, edx
	and	r8d, 33554432
	vpsrlq	ymm2, ymm1, 12
	vpsrlq	ymm3, ymm1, 8
	vpand	ymm3, ymm3, ymmword ptr [rip + .LCPI8_4]
	vpand	ymm2, ymm2, ymmword ptr [rip + .LCPI8_5]
	vpor	ymm2, ymm2, ymm3
	vpsrlq	xmm1, xmm1, 4
	vpbroadcastq	ymm1, xmm1
	vpand	ymm1, ymm1, ymmword ptr [rip + .LCPI8_6]
	mov	eax, ecx
	and	eax, 1879048192
	and	edi, -2147483648
	or	rdi, rax
	vextracti128	xmm3, ymm2, 1
	vpor	xmm2, xmm2, xmm3
	vpshufd	xmm3, xmm2, 238                 # xmm3 = xmm2[2,3,2,3]
	vpor	xmm2, xmm2, xmm3
	vmovq	r9, xmm2
	vextracti128	xmm2, ymm1, 1
	vpor	xmm1, xmm1, xmm2
	vpshufd	xmm2, xmm1, 238                 # xmm2 = xmm1[2,3,2,3]
	vpor	xmm1, xmm1, xmm2
	vmovq	rax, xmm1
	or	rax, r9
	or	rax, rdi
	and	ecx, 15
	or	rcx, r8
	or	rcx, rsi
	vextracti128	xmm1, ymm0, 1
	vpor	xmm0, xmm0, xmm1
	vpshufd	xmm1, xmm0, 238                 # xmm1 = xmm0[2,3,2,3]
	vpor	xmm0, xmm0, xmm1
	vmovq	rsi, xmm0
	and	edx, 201326592
	or	rdx, rcx
	or	rdx, rsi
	or	eax, edx
                                        # kill: def $eax killed $eax killed $rax
	vzeroupper
	ret
.LBB8_2:
	mov	eax, 252645135
	pdep	rdx, rcx, rax
	shr	ecx, 16
	mov	eax, 4042322160
	pdep	rax, rcx, rax
	or	eax, edx
                                        # kill: def $eax killed $eax killed $rax
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
	test	byte ptr [rip + __cpu_model+14], 2
	jne	.LBB9_5
# %bb.1:
	test	rsi, rsi
	je	.LBB9_2
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
# %bb.6:
	ret
.LBB9_5:
	pdep	rax, rdi, rsi
	ret
.LBB9_2:
	xor	eax, eax
	ret
.Lfunc_end9:
	.size	pdep, .Lfunc_end9-pdep
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function unshuffle4
.LCPI10_0:
	.quad	8                               # 0x8
	.quad	4                               # 0x4
.LCPI10_1:
	.quad	12                              # 0xc
	.quad	8                               # 0x8
.LCPI10_2:
	.quad	16                              # 0x10
	.quad	12                              # 0xc
.LCPI10_3:
	.quad	32                              # 0x20
	.quad	32                              # 0x20
.LCPI10_5:
	.quad	64                              # 0x40
	.quad	64                              # 0x40
.LCPI10_6:
	.quad	128                             # 0x80
	.quad	128                             # 0x80
.LCPI10_7:
	.quad	256                             # 0x100
	.quad	256                             # 0x100
.LCPI10_8:
	.quad	512                             # 0x200
	.quad	512                             # 0x200
.LCPI10_9:
	.quad	1024                            # 0x400
	.quad	1024                            # 0x400
.LCPI10_10:
	.quad	2048                            # 0x800
	.quad	2048                            # 0x800
.LCPI10_11:
	.quad	4096                            # 0x1000
	.quad	4096                            # 0x1000
.LCPI10_12:
	.quad	8192                            # 0x2000
	.quad	8192                            # 0x2000
.LCPI10_13:
	.quad	16384                           # 0x4000
	.quad	16384                           # 0x4000
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI10_4:
	.quad	2                               # 0x2
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.text
	.globl	unshuffle4
	.p2align	4, 0x90
	.type	unshuffle4,@function
unshuffle4:                             # @unshuffle4
	.cfi_startproc
# %bb.0:
	mov	eax, edi
	test	byte ptr [rip + __cpu_model+14], 2
	jne	.LBB10_2
# %bb.1:
	vmovq	xmm0, rax
	vpbroadcastq	xmm1, xmm0
	vpsrlq	xmm0, xmm1, 4
	vpbroadcastq	ymm0, xmm0
	mov	ecx, eax
	shr	ecx, 8
	vmovd	xmm2, ecx
	mov	edx, ecx
	vpsrlvq	xmm3, xmm1, xmmword ptr [rip + .LCPI10_0]
	and	edx, 16
	vpsrlvq	xmm4, xmm1, xmmword ptr [rip + .LCPI10_1]
	vpsrlvq	xmm1, xmm1, xmmword ptr [rip + .LCPI10_2]
	shr	edi, 16
	and	edi, 32768
	mov	esi, eax
	and	esi, 15
	mov	ecx, eax
	shr	ecx, 4
	vpinsrd	xmm2, xmm2, ecx, 2
	and	ecx, 16
	or	ecx, esi
	vpand	ymm0, ymm0, ymmword ptr [rip + .LCPI10_4]
	vextracti128	xmm5, ymm0, 1
	vpor	xmm0, xmm0, xmm5
	vpshufd	xmm5, xmm0, 238                 # xmm5 = xmm0[2,3,2,3]
	vpor	xmm0, xmm0, xmm5
	vpand	xmm5, xmm3, xmmword ptr [rip + .LCPI10_3]
	shr	eax, 12
	and	eax, 32768
	vmovq	rsi, xmm0
	or	rsi, rdx
	vpand	xmm0, xmm2, xmmword ptr [rip + .LCPI10_5]
	vpor	xmm0, xmm0, xmm5
	vpand	xmm2, xmm3, xmmword ptr [rip + .LCPI10_6]
	vpor	xmm0, xmm2, xmm0
	vpand	xmm2, xmm4, xmmword ptr [rip + .LCPI10_7]
	vpor	xmm0, xmm2, xmm0
	vpand	xmm2, xmm4, xmmword ptr [rip + .LCPI10_8]
	vpor	xmm0, xmm2, xmm0
	vpand	xmm2, xmm4, xmmword ptr [rip + .LCPI10_9]
	vpor	xmm0, xmm2, xmm0
	vpand	xmm2, xmm4, xmmword ptr [rip + .LCPI10_10]
	vpor	xmm0, xmm2, xmm0
	vpand	xmm2, xmm1, xmmword ptr [rip + .LCPI10_11]
	vpor	xmm0, xmm2, xmm0
	vpand	xmm2, xmm1, xmmword ptr [rip + .LCPI10_12]
	vpor	xmm0, xmm2, xmm0
	vpand	xmm1, xmm1, xmmword ptr [rip + .LCPI10_13]
	vpor	xmm0, xmm1, xmm0
	vmovq	xmm1, rsi
	vmovd	xmm2, ecx
	vpunpcklqdq	xmm1, xmm1, xmm2        # xmm1 = xmm1[0],xmm2[0]
	vmovd	xmm2, edi
	vmovd	xmm3, eax
	vpunpcklqdq	xmm2, xmm2, xmm3        # xmm2 = xmm2[0],xmm3[0]
	vpor	xmm0, xmm0, xmm2
	vpor	xmm0, xmm0, xmm1
	jmp	.LBB10_3
.LBB10_2:
	mov	ecx, 4042322160
	pext	rcx, rax, rcx
	mov	edx, 252645135
	pext	rax, rax, rdx
	vmovd	xmm0, eax
	vmovd	xmm1, ecx
	vpunpcklqdq	xmm0, xmm1, xmm0        # xmm0 = xmm1[0],xmm0[0]
.LBB10_3:
	vmovq	rcx, xmm0
	shl	ecx, 16
	vpextrq	rax, xmm0, 1
	or	eax, ecx
                                        # kill: def $eax killed $eax killed $rax
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
	test	byte ptr [rip + __cpu_model+14], 2
	jne	.LBB11_5
# %bb.1:
	test	rsi, rsi
	je	.LBB11_2
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
# %bb.6:
	ret
.LBB11_5:
	pext	rax, rdi, rsi
	ret
.LBB11_2:
	xor	eax, eax
	ret
.Lfunc_end11:
	.size	pext, .Lfunc_end11-pext
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function shuffle1
.LCPI12_0:
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
.LCPI12_1:
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
.LCPI12_2:
	.quad	4096                            # 0x1000
	.quad	16384                           # 0x4000
	.quad	65536                           # 0x10000
	.quad	262144                          # 0x40000
.LCPI12_3:
	.quad	16                              # 0x10
	.quad	64                              # 0x40
	.quad	256                             # 0x100
	.quad	1024                            # 0x400
.LCPI12_4:
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	13                              # 0xd
	.quad	12                              # 0xc
.LCPI12_5:
	.quad	11                              # 0xb
	.quad	10                              # 0xa
	.quad	9                               # 0x9
	.quad	8                               # 0x8
.LCPI12_6:
	.quad	512                             # 0x200
	.quad	2048                            # 0x800
	.quad	8192                            # 0x2000
	.quad	32768                           # 0x8000
.LCPI12_7:
	.quad	8                               # 0x8
	.quad	2                               # 0x2
	.quad	32                              # 0x20
	.quad	128                             # 0x80
	.text
	.globl	shuffle1
	.p2align	4, 0x90
	.type	shuffle1,@function
shuffle1:                               # @shuffle1
	.cfi_startproc
# %bb.0:
                                        # kill: def $edi killed $edi def $rdi
	mov	eax, edi
	test	byte ptr [rip + __cpu_model+14], 2
	jne	.LBB12_2
# %bb.1:
	mov	edx, eax
	and	edx, 1
	lea	esi, [rax + rax]
	vmovq	xmm0, rax
	vpbroadcastq	ymm1, xmm0
	vpsllvq	ymm0, ymm1, ymmword ptr [rip + .LCPI12_0]
	vpsllvq	ymm2, ymm1, ymmword ptr [rip + .LCPI12_1]
	vpand	ymm2, ymm2, ymmword ptr [rip + .LCPI12_2]
	and	esi, 4
	vpand	ymm0, ymm0, ymmword ptr [rip + .LCPI12_3]
	vpor	ymm0, ymm0, ymm2
	mov	ecx, eax
	shl	ecx, 10
	and	ecx, 1048576
	or	rcx, rdx
	or	rcx, rsi
	mov	edx, eax
	shl	edx, 11
	and	edx, 4194304
	mov	esi, eax
	shl	esi, 12
	and	esi, 16777216
	or	esi, edx
	mov	r8d, eax
	shl	r8d, 13
	and	r8d, 67108864
	mov	edx, eax
	shl	edx, 14
	and	edx, 268435456
	or	edx, r8d
	or	edx, esi
	mov	esi, eax
	shl	esi, 15
	vpsrlvq	ymm2, ymm1, ymmword ptr [rip + .LCPI12_4]
	vpsrlvq	ymm1, ymm1, ymmword ptr [rip + .LCPI12_5]
	and	esi, 1073741824
	vpand	ymm1, ymm1, ymmword ptr [rip + .LCPI12_6]
	vpand	ymm2, ymm2, ymmword ptr [rip + .LCPI12_7]
	vpor	ymm1, ymm2, ymm1
	mov	r8d, eax
	shr	r8d, 7
	and	r8d, 131072
	mov	r10d, eax
	shr	r10d, 6
	and	r10d, 524288
	mov	r9d, eax
	shr	r9d, 5
	and	r9d, 2097152
	or	r9d, r10d
	mov	r10d, eax
	shr	r10d, 4
	and	r10d, 8388608
	mov	r11d, eax
	shr	r11d, 3
	and	r11d, 33554432
	or	r11d, r10d
	mov	r10d, eax
	shr	r10d, 2
	and	r10d, 134217728
	shr	eax
	and	eax, 536870912
	or	eax, r10d
	or	eax, r11d
	and	edi, -2147483648
	vextracti128	xmm2, ymm1, 1
	vpor	xmm1, xmm1, xmm2
	vpshufd	xmm2, xmm1, 238                 # xmm2 = xmm1[2,3,2,3]
	vpor	xmm1, xmm1, xmm2
	vmovq	r10, xmm1
	or	r9, r8
	or	rax, r9
	or	rax, rdi
	or	rax, r10
	vextracti128	xmm1, ymm0, 1
	vpor	xmm0, xmm0, xmm1
	vpshufd	xmm1, xmm0, 238                 # xmm1 = xmm0[2,3,2,3]
	vpor	xmm0, xmm0, xmm1
	vmovq	rdi, xmm0
	or	rdx, rcx
	or	rdx, rsi
	or	rdx, rdi
	or	eax, edx
                                        # kill: def $eax killed $eax killed $rax
	vzeroupper
	ret
.LBB12_2:
	mov	ecx, 1431655765
	pdep	rdx, rax, rcx
	shr	eax, 16
	mov	ecx, 2863311530
	pdep	rax, rax, rcx
	or	eax, edx
                                        # kill: def $eax killed $eax killed $rax
	ret
.Lfunc_end12:
	.size	shuffle1, .Lfunc_end12-shuffle1
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function unshuffle1
.LCPI13_0:
	.quad	3                               # 0x3
	.quad	2                               # 0x2
.LCPI13_1:
	.quad	4                               # 0x4
	.quad	3                               # 0x3
.LCPI13_2:
	.quad	5                               # 0x5
	.quad	4                               # 0x4
.LCPI13_3:
	.quad	6                               # 0x6
	.quad	5                               # 0x5
.LCPI13_4:
	.quad	8                               # 0x8
	.quad	7                               # 0x7
.LCPI13_5:
	.quad	9                               # 0x9
	.quad	8                               # 0x8
.LCPI13_6:
	.quad	10                              # 0xa
	.quad	9                               # 0x9
.LCPI13_7:
	.quad	11                              # 0xb
	.quad	10                              # 0xa
.LCPI13_8:
	.quad	12                              # 0xc
	.quad	11                              # 0xb
.LCPI13_9:
	.quad	13                              # 0xd
	.quad	12                              # 0xc
.LCPI13_10:
	.quad	14                              # 0xe
	.quad	13                              # 0xd
.LCPI13_11:
	.quad	15                              # 0xf
	.quad	14                              # 0xe
.LCPI13_12:
	.quad	32                              # 0x20
	.quad	32                              # 0x20
.LCPI13_13:
	.quad	2                               # 0x2
	.quad	1                               # 0x1
.LCPI13_14:
	.quad	4                               # 0x4
	.quad	4                               # 0x4
.LCPI13_15:
	.quad	8                               # 0x8
	.quad	8                               # 0x8
.LCPI13_16:
	.quad	16                              # 0x10
	.quad	16                              # 0x10
.LCPI13_17:
	.quad	1                               # 0x1
	.quad	2                               # 0x2
.LCPI13_18:
	.quad	64                              # 0x40
	.quad	64                              # 0x40
.LCPI13_19:
	.quad	128                             # 0x80
	.quad	128                             # 0x80
.LCPI13_20:
	.quad	256                             # 0x100
	.quad	256                             # 0x100
.LCPI13_21:
	.quad	512                             # 0x200
	.quad	512                             # 0x200
.LCPI13_22:
	.quad	1024                            # 0x400
	.quad	1024                            # 0x400
.LCPI13_23:
	.quad	2048                            # 0x800
	.quad	2048                            # 0x800
.LCPI13_24:
	.quad	4096                            # 0x1000
	.quad	4096                            # 0x1000
.LCPI13_25:
	.quad	8192                            # 0x2000
	.quad	8192                            # 0x2000
.LCPI13_26:
	.quad	16384                           # 0x4000
	.quad	16384                           # 0x4000
	.text
	.globl	unshuffle1
	.p2align	4, 0x90
	.type	unshuffle1,@function
unshuffle1:                             # @unshuffle1
	.cfi_startproc
# %bb.0:
	mov	eax, edi
	test	byte ptr [rip + __cpu_model+14], 2
	jne	.LBB13_2
# %bb.1:
	mov	edx, eax
	shr	edx, 2
	vmovq	xmm0, rax
	vpbroadcastq	xmm8, xmm0
	vpsrlvq	xmm9, xmm8, xmmword ptr [rip + .LCPI13_0]
	vpsrlvq	xmm10, xmm8, xmmword ptr [rip + .LCPI13_1]
	vpsrlvq	xmm11, xmm8, xmmword ptr [rip + .LCPI13_2]
	vpsrlvq	xmm12, xmm8, xmmword ptr [rip + .LCPI13_3]
	mov	ecx, eax
	vpsrlvq	xmm7, xmm8, xmmword ptr [rip + .LCPI13_4]
	vpsrlvq	xmm6, xmm8, xmmword ptr [rip + .LCPI13_5]
	vpsrlvq	xmm5, xmm8, xmmword ptr [rip + .LCPI13_6]
	vpsrlvq	xmm4, xmm8, xmmword ptr [rip + .LCPI13_7]
	vpsrlvq	xmm3, xmm8, xmmword ptr [rip + .LCPI13_8]
	vpsrlvq	xmm2, xmm8, xmmword ptr [rip + .LCPI13_9]
	vpsrlvq	xmm1, xmm8, xmmword ptr [rip + .LCPI13_10]
	vpsrlvq	xmm0, xmm8, xmmword ptr [rip + .LCPI13_11]
	shr	ecx, 7
	shr	edi, 16
	and	edi, 32768
	vpsrlq	xmm13, xmm8, 1
	vpand	xmm12, xmm12, xmmword ptr [rip + .LCPI13_12]
	mov	esi, eax
	shr	esi, 6
	shr	eax, 15
	vpinsrq	xmm8, xmm8, rdx, 0
	vpand	xmm8, xmm8, xmmword ptr [rip + .LCPI13_13]
	vpand	xmm9, xmm9, xmmword ptr [rip + .LCPI13_14]
	vpand	xmm10, xmm10, xmmword ptr [rip + .LCPI13_15]
	vpand	xmm11, xmm11, xmmword ptr [rip + .LCPI13_16]
	and	eax, 32768
	vpor	xmm10, xmm11, xmm10
	vpand	xmm11, xmm13, xmmword ptr [rip + .LCPI13_17]
	vpor	xmm8, xmm11, xmm8
	vpor	xmm8, xmm9, xmm8
	vpor	xmm8, xmm10, xmm8
	vmovd	xmm9, ecx
	vpinsrd	xmm9, xmm9, esi, 2
	vpand	xmm9, xmm9, xmmword ptr [rip + .LCPI13_18]
	vpor	xmm9, xmm9, xmm12
	vpand	xmm7, xmm7, xmmword ptr [rip + .LCPI13_19]
	vpor	xmm7, xmm9, xmm7
	vpand	xmm6, xmm6, xmmword ptr [rip + .LCPI13_20]
	vpor	xmm7, xmm8, xmm7
	vpand	xmm5, xmm5, xmmword ptr [rip + .LCPI13_21]
	vpor	xmm5, xmm5, xmm6
	vpand	xmm4, xmm4, xmmword ptr [rip + .LCPI13_22]
	vpor	xmm4, xmm4, xmm5
	vpand	xmm3, xmm3, xmmword ptr [rip + .LCPI13_23]
	vpor	xmm3, xmm3, xmm4
	vpand	xmm2, xmm2, xmmword ptr [rip + .LCPI13_24]
	vpor	xmm3, xmm3, xmm7
	vpand	xmm1, xmm1, xmmword ptr [rip + .LCPI13_25]
	vpor	xmm1, xmm1, xmm2
	vpand	xmm0, xmm0, xmmword ptr [rip + .LCPI13_26]
	vpor	xmm0, xmm0, xmm1
	vmovd	xmm1, edi
	vmovd	xmm2, eax
	vpunpcklqdq	xmm1, xmm1, xmm2        # xmm1 = xmm1[0],xmm2[0]
	vpor	xmm0, xmm0, xmm1
	vpor	xmm0, xmm0, xmm3
	jmp	.LBB13_3
.LBB13_2:
	mov	ecx, 2863311530
	pext	rcx, rax, rcx
	mov	edx, 1431655765
	pext	rax, rax, rdx
	vmovd	xmm0, eax
	vmovd	xmm1, ecx
	vpunpcklqdq	xmm0, xmm1, xmm0        # xmm0 = xmm1[0],xmm0[0]
.LBB13_3:
	vmovq	rcx, xmm0
	shl	ecx, 16
	vpextrq	rax, xmm0, 1
	or	eax, ecx
                                        # kill: def $eax killed $eax killed $rax
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
	shl	sil, 3
	mov	eax, esi
	and	al, 24
	movzx	ecx, al
	add	al, 8
	movzx	eax, al
	sub	eax, ecx
	mov	rdx, -1
	shlx	rax, rdx, rax
	not	eax
	shlx	eax, eax, esi
	and	eax, edi
	shrx	rax, rax, rcx
                                        # kill: def $al killed $al killed $rax
	ret
.Lfunc_end14:
	.size	nth_byte, .Lfunc_end14-nth_byte
	.cfi_endproc
                                        # -- End function
	.globl	sbu_expand_keys                 # -- Begin function sbu_expand_keys
	.p2align	4, 0x90
	.type	sbu_expand_keys,@function
sbu_expand_keys:                        # @sbu_expand_keys
	.cfi_startproc
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	rbx, rsi
	mov	rsi, rdi
	mov	qword ptr [rbx], rdi
	lea	rdi, [rip + .L.str.4]
	xor	r15d, r15d
	xor	eax, eax
	call	printf@PLT
	mov	esi, dword ptr [rbx]
	lea	rdi, [rip + .L.str.5]
	xor	eax, eax
	call	printf@PLT
	mov	esi, dword ptr [rbx + 4]
	lea	rdi, [rip + .L.str.6]
	xor	eax, eax
	call	printf@PLT
	lea	r14, [rip + table]
	.p2align	4, 0x90
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbx + 4*r15 + 4]
	mov	ecx, dword ptr [rbx + 4*r15]
	xor	ecx, eax
	and	ecx, 31
	mov	ecx, dword ptr [r14 + 4*rcx]
	xor	eax, ecx
	mov	dword ptr [rbx + 4*r15 + 8], eax
	and	ecx, 31
	mov	ecx, dword ptr [r14 + 4*rcx]
	xor	eax, ecx
	mov	dword ptr [rbx + 4*r15 + 12], eax
	and	ecx, 31
	mov	ecx, dword ptr [r14 + 4*rcx]
	xor	ecx, eax
	mov	dword ptr [rbx + 4*r15 + 16], ecx
	cmp	r15, 28
	je	.LBB15_3
# %bb.2:                                #   in Loop: Header=BB15_1 Depth=1
	mov	ecx, dword ptr [rbx + 4*r15 + 16]
	xor	eax, ecx
	and	eax, 31
	xor	ecx, dword ptr [r14 + 4*rax]
	mov	dword ptr [rbx + 4*r15 + 20], ecx
	add	r15, 4
	jmp	.LBB15_1
.LBB15_3:
	mov	esi, dword ptr [rbx + 120]
	lea	rdi, [rip + .L.str.7]
	xor	eax, eax
	call	printf@PLT
	mov	esi, dword ptr [rbx + 124]
	lea	rdi, [rip + .L.str.8]
	xor	eax, eax
	call	printf@PLT
	mov	eax, 24
	.p2align	4, 0x90
.LBB15_4:                               # =>This Inner Loop Header: Depth=1
	mov	ecx, dword ptr [rbx + 4*rax + 24]
	mov	edx, dword ptr [rbx + 4*rax + 28]
	xor	edx, ecx
	and	edx, 31
	mov	esi, dword ptr [rbx + 4*rax + 20]
	xor	esi, dword ptr [r14 + 4*rdx]
	mov	dword ptr [rbx + 4*rax + 20], esi
	xor	ecx, esi
	and	ecx, 31
	mov	edx, dword ptr [rbx + 4*rax + 16]
	xor	edx, dword ptr [r14 + 4*rcx]
	mov	dword ptr [rbx + 4*rax + 16], edx
	xor	esi, edx
	and	esi, 31
	mov	ecx, dword ptr [rbx + 4*rax + 12]
	xor	ecx, dword ptr [r14 + 4*rsi]
	mov	dword ptr [rbx + 4*rax + 12], ecx
	xor	edx, ecx
	and	edx, 31
	mov	esi, dword ptr [rbx + 4*rax + 4]
	mov	edi, dword ptr [rbx + 4*rax + 8]
	xor	edi, dword ptr [r14 + 4*rdx]
	mov	dword ptr [rbx + 4*rax + 8], edi
	xor	ecx, edi
	and	ecx, 31
	xor	esi, dword ptr [r14 + 4*rcx]
	mov	dword ptr [rbx + 4*rax + 4], esi
	xor	esi, edi
	and	esi, 31
	mov	ecx, dword ptr [r14 + 4*rsi]
	xor	dword ptr [rbx + 4*rax], ecx
	add	rax, -6
	cmp	rax, -6
	jne	.LBB15_4
# %bb.5:
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end15:
	.size	sbu_expand_keys, .Lfunc_end15-sbu_expand_keys
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
.Lfunc_end16:
	.size	scramble, .Lfunc_end16-scramble
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
.Lfunc_end17:
	.size	mash, .Lfunc_end17-mash
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
.Lfunc_end18:
	.size	sbu_encrypt_block, .Lfunc_end18-sbu_encrypt_block
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
.Lfunc_end19:
	.size	r_scramble, .Lfunc_end19-r_scramble
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
.Lfunc_end20:
	.size	r_mash, .Lfunc_end20-r_mash
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
.Lfunc_end21:
	.size	sbu_decrypt_block, .Lfunc_end21-sbu_decrypt_block
	.cfi_endproc
                                        # -- End function
	.globl	sbu_encrypt                     # -- Begin function sbu_encrypt
	.p2align	4, 0x90
	.type	sbu_encrypt,@function
sbu_encrypt:                            # @sbu_encrypt
	.cfi_startproc
# %bb.0:
	ret
.Lfunc_end22:
	.size	sbu_encrypt, .Lfunc_end22-sbu_encrypt
	.cfi_endproc
                                        # -- End function
	.globl	sbu_decrypt                     # -- Begin function sbu_decrypt
	.p2align	4, 0x90
	.type	sbu_decrypt,@function
sbu_decrypt:                            # @sbu_decrypt
	.cfi_startproc
# %bb.0:
	ret
.Lfunc_end23:
	.size	sbu_decrypt, .Lfunc_end23-sbu_decrypt
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
.Lfunc_end24:
	.size	byteswap, .Lfunc_end24-byteswap
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
.Lfunc_end25:
	.size	u32_to_be_bytes, .Lfunc_end25-u32_to_be_bytes
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
.Lfunc_end26:
	.size	u32_to_le_bytes, .Lfunc_end26-u32_to_le_bytes
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
.Lfunc_end27:
	.size	mod, .Lfunc_end27-mod
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

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"key : %016lx\n"
	.size	.L.str.4, 14

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"S[0]: %16x\n"
	.size	.L.str.5, 12

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"S[1]: %08x\n"
	.size	.L.str.6, 12

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"S[30]: %08x\n"
	.size	.L.str.7, 13

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"S[31]: %08x\n"
	.size	.L.str.8, 13

	.ident	"clang version 19.1.7"
	.section	".note.GNU-stack","",@progbits
	.addrsig
