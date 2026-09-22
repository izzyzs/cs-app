	.file	"float-mov.c"
	.text
	.globl	fcvt
	.type	fcvt, @function
fcvt:
.LFB0:
	.cfi_startproc
	endbr64
	vxorps	%xmm1, %xmm1, %xmm1
	vmovsd	(%rdx), %xmm0
	movq	(%rcx), %rax
	vcvttsd2siq	%xmm0, %r8
	movq	%r8, (%rcx)
	vcvtsi2ssl	%edi, %xmm1, %xmm2
	vmovss	%xmm2, (%rsi)
	vcvtsi2sdq	%rax, %xmm1, %xmm1
	vmovsd	%xmm1, (%rdx)
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	ret
	.cfi_endproc
.LFE0:
	.size	fcvt, .-fcvt
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.3) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
