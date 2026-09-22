	.file	"proc.c"
	.text
	.globl	proc
	.type	proc, @function
proc:
.LFB0:
	.cfi_startproc
	movq	16(%rsp), %rax
	addq	%rdi, (%rsi)
	addl	%edx, (%rcx)
	addw	%r8w, (%r9)
	movl	8(%rsp), %edx
	addb	%dl, (%rax)
	ret
	.cfi_endproc
.LFE0:
	.size	proc, .-proc
	.globl	call_proc
	.type	call_proc, @function
call_proc:
.LFB1:
	.cfi_startproc
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
	movq	$1, 8(%rsp)
	movl	$2, 4(%rsp)
	movw	$3, 2(%rsp)
	movb	$4, 1(%rsp)
	leaq	4(%rsp), %rcx
	leaq	8(%rsp), %rsi
	leaq	1(%rsp), %rax
	pushq	%rax
	.cfi_def_cfa_offset 32
	pushq	$4
	.cfi_def_cfa_offset 40
	leaq	18(%rsp), %r9
	movl	$3, %r8d
	movl	$2, %edx
	movl	$1, %edi
	call	proc
	movslq	20(%rsp), %rax
	addq	24(%rsp), %rax
	movswl	18(%rsp), %edx
	movsbl	17(%rsp), %ecx
	subl	%ecx, %edx
	movslq	%edx, %rdx
	imulq	%rdx, %rax
	addq	$32, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1:
	.size	call_proc, .-call_proc
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.3) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
