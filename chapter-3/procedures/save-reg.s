 	.file	"save-reg.c"
	.text
	.globl	Q
	.type	Q, @function
Q:
.LFB23:
	.cfi_startproc
	leaq	(%rdi,%rdi), %rax
	ret
	.cfi_endproc
.LFE23:
	.size	Q, .-Q
	.globl	P
	.type	P, @function
P:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbp
	movq	%rsi, %rdi
	call	Q
	movq	%rax, %rbx
	movq	%rbp, %rdi
	call	Q
	addq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	P, .-P
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%ld"
	.text
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$6, %esi
	movl	$5, %edi
	call	P
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.3) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
