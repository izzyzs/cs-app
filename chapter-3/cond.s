	.text
	.file	"cond.c"
	.globl	cond                            # -- Begin function cond
	.p2align	4, 0x90
	.type	cond,@function
cond:                                   # @cond
	.cfi_startproc
# %bb.0:
	testw	%di, %di
	je	.LBB0_3
# %bb.1:
	cmpw	%di, (%rsi)
	jge	.LBB0_3
# %bb.2:
	movw	%di, (%rsi)
.LBB0_3:
	retq
.Lfunc_end0:
	.size	cond, .Lfunc_end0-cond
	.cfi_endproc
                                        # -- End function
	.ident	"Apple clang version 17.0.0 (clang-1700.3.9.908)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
