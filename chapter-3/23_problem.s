	.text
	.file	"23_problem.c"
	.globl	dw_loop                         # -- Begin function dw_loop
	.p2align	4, 0x90
	.type	dw_loop,@function
dw_loop:                                # @dw_loop
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%di, %ax
	movw	%ax, -2(%rbp)
	movswl	-2(%rbp), %eax
	movl	$9, %ecx
	cltd
	idivl	%ecx
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -4(%rbp)
	leaq	-2(%rbp), %rax
	movq	%rax, -16(%rbp)
	movswl	-2(%rbp), %eax
	shll	$2, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -18(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movswl	-4(%rbp), %ecx
	movswl	-2(%rbp), %eax
	addl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	movswl	(%rax), %ecx
	addl	$5, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movw	%cx, (%rax)
	movswl	-18(%rbp), %eax
	subl	$2, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -18(%rbp)
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movswl	-18(%rbp), %eax
	cmpl	$0, %eax
	jg	.LBB0_1
# %bb.3:
	movw	-2(%rbp), %ax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	dw_loop, .Lfunc_end0-dw_loop
	.cfi_endproc
                                        # -- End function
	.ident	"Apple clang version 17.0.0 (clang-1700.3.9.908)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
