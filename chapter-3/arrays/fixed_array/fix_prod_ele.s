	.file	"fix_prod_ele.c"
	.text
	.globl	fix_prod_ele
	.type	fix_prod_ele, @function
fix_prod_ele:
.LFB23:
	.cfi_startproc
	endbr64
	salq	$4, %rdx
	addq	%rdx, %rdi
	leaq	(%rsi,%rcx,4), %rsi
	movl	$0, %r8d
	movl	$0, %eax
.L2:
	movl	(%rdi,%rax,4), %ecx
	imull	(%rsi), %ecx
	addl	%ecx, %r8d
	addq	$1, %rax
	addq	$16, %rsi
	cmpq	$4, %rax
	jne	.L2
	movl	%r8d, %eax
	ret
	.cfi_endproc
.LFE23:
	.size	fix_prod_ele, .-fix_prod_ele
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	endbr64
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movl	$1, (%rsp)
	movl	$2, 4(%rsp)
	movl	$3, 8(%rsp)
	movl	$4, 12(%rsp)
	movl	$5, 16(%rsp)
	movl	$6, 20(%rsp)
	movl	$7, 24(%rsp)
	movl	$8, 28(%rsp)
	movl	$9, 32(%rsp)
	movl	$10, 36(%rsp)
	movl	$11, 40(%rsp)
	movl	$12, 44(%rsp)
	movl	$13, 48(%rsp)
	movl	$14, 52(%rsp)
	movl	$15, 56(%rsp)
	movl	$16, 60(%rsp)
	movq	%rsp, %rdi
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rdi, %rsi
	call	fix_prod_ele
	movl	%eax, %edx
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L7
	movl	$0, %eax
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE24:
	.size	main, .-main
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
