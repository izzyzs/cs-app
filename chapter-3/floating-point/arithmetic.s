	.file	"arithmetic.c"
	.text
	.globl	funct
	.type	funct, @function
funct:
.LFB0:
	.cfi_startproc
	endbr64
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2sdl	%edi, %xmm0, %xmm0
	vdivsd	%xmm0, %xmm2, %xmm2
	vsubsd	%xmm2, %xmm1, %xmm0
	ret
	.cfi_endproc
.LFE0:
	.size	funct, .-funct
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
