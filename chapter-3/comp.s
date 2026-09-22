	.text
	.file	"comp.c"
	.globl	comp                            # -- Begin function comp
	.p2align	4, 0x90
	.type	comp,@function
comp:                                   # @comp
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
	cmpl	%esi, %edi
	setl	%al
	retq
.Lfunc_end0:
	.size	comp, .Lfunc_end0-comp
	.cfi_endproc
                                        # -- End function
	.globl	branch                          # -- Begin function branch
	.p2align	4, 0x90
	.type	branch,@function
branch:                                 # @branch
	.cfi_startproc
# %bb.0:
	movl	%edi, %eax
	shrl	$31, %eax
	retq
.Lfunc_end1:
	.size	branch, .Lfunc_end1-branch
	.cfi_endproc
                                        # -- End function
	.ident	"Apple clang version 17.0.0 (clang-1700.3.9.908)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
