	.file	"rfact.c"
	.text
	.globl	rfact
	.type	rfact, @function
rfact:
.LFB23:
	.cfi_startproc
	cmpq	$1, %rdi
	jg	.L8
	movl	$1, %eax
	ret
.L8:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	leaq	-1(%rdi), %rdi
	call	rfact
	imulq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE23:
	.size	rfact, .-rfact
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%ld"
	.text
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movl	$1, %edi
	call	rfact
	movq	%rax, %rbp
	movl	$5, %edi
	call	rfact
	movq	%rax, %rbx
	movq	%rbp, %rdx
	leaq	.LC0(%rip), %rbp
	movq	%rbp, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.3) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
