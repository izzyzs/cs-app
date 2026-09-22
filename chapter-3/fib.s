	.text
	.file	"fib.c"
	.globl	fun_b                           # -- Begin function fun_b
	.p2align	4, 0x90
	.type	fun_b,@function
fun_b:                                  # @fun_b
	.cfi_startproc
# %bb.0:
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_1
.Lfunc_end0:
	.size	fun_b, .Lfunc_end0-fun_b
	.cfi_endproc
                                        # -- End function
	.globl	test_two                        # -- Begin function test_two
	.p2align	4, 0x90
	.type	test_two,@function
test_two:                               # @test_two
	.cfi_startproc
# %bb.0:
	movq	$-64, %rcx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	%edi, %edx
	andl	$1, %edx
	leaq	(%rdx,%rax,2), %rax
	shrq	%rdi
	incq	%rcx
	jne	.LBB1_1
# %bb.2:
	retq
.Lfunc_end1:
	.size	test_two, .Lfunc_end1-test_two
	.cfi_endproc
                                        # -- End function
	.ident	"Apple clang version 17.0.0 (clang-1700.3.9.908)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
