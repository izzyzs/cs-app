	.file	"write-read.c"
	.text
	.globl	write_read
	.type	write_read, @function
write_read:
.LFB23:
	.cfi_startproc
	endbr64
	testq	%rdx, %rdx
	je	.L1
	movl	$0, %eax
.L3:
	movq	%rax, (%rsi)
	movq	(%rdi), %rax
	addq	$1, %rax
	subq	$1, %rdx
	jne	.L3
.L1:
	ret
	.cfi_endproc
.LFE23:
	.size	write_read, .-write_read
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	$-10, (%rsp)
	movq	%rsp, %rbx
	leaq	8(%rsp), %rsi
	movl	$3, %edx
	movq	%rbx, %rdi
	call	write_read
	movl	$3, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	write_read
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L8
	movl	$0, %eax
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L8:
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
