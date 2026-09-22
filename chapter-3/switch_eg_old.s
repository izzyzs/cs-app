	.file	"switch_eg.c"
	.text
	.globl	switch_eg
	.type	switch_eg, @function
switch_eg:
.LFB23:
	.cfi_startproc
	endbr64
	subq	$100, %rsi
	cmpq	$6, %rsi
	ja	.L8
	leaq	.L4(%rip), %rcx
	movslq	(%rcx,%rsi,4), %rax
	addq	%rcx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L4:
	.long	.L7-.L4
	.long	.L8-.L4
	.long	.L6-.L4
	.long	.L5-.L4
	.long	.L3-.L4
	.long	.L8-.L4
	.long	.L3-.L4
	.text
.L7:
	leaq	(%rdi,%rdi,2), %rax
	leaq	(%rdi,%rax,4), %rdi
	jmp	.L2
.L6:
	addq	$10, %rdi
.L5:
	addq	$11, %rdi
.L2:
	movq	%rdi, (%rdx)
	ret
.L3:
	imulq	%rdi, %rdi
	jmp	.L2
.L8:
	movl	$0, %edi
	jmp	.L2
	.cfi_endproc
.LFE23:
	.size	switch_eg, .-switch_eg
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"OK"
.LC1:
	.string	"Created"
.LC2:
	.string	"Accepted"
.LC3:
	.string	"Non-authoritative Information"
.LC4:
	.string	"No Content"
.LC5:
	.string	"Forbidden"
	.text
	.globl	get_status_message
	.type	get_status_message, @function
get_status_message:
.LFB24:
	.cfi_startproc
	endbr64
	subw	$200, %di
	cmpw	$4, %di
	ja	.L10
	movzwl	%di, %edi
	leaq	.L12(%rip), %rdx
	movslq	(%rdx,%rdi,4), %rax
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L12:
	.long	.L16-.L12
	.long	.L15-.L12
	.long	.L14-.L12
	.long	.L13-.L12
	.long	.L11-.L12
	.text
.L16:
	leaq	.LC0(%rip), %rax
	movq	%rax, (%rsi)
	ret
.L15:
	leaq	.LC1(%rip), %rax
	movq	%rax, (%rsi)
	ret
.L14:
	leaq	.LC2(%rip), %rax
	movq	%rax, (%rsi)
.L13:
	leaq	.LC3(%rip), %rax
	movq	%rax, (%rsi)
.L11:
	leaq	.LC4(%rip), %rax
	movq	%rax, (%rsi)
	ret
.L10:
	leaq	.LC5(%rip), %rax
	movq	%rax, (%rsi)
	ret
	.cfi_endproc
.LFE24:
	.size	get_status_message, .-get_status_message
	.globl	get_status_code
	.type	get_status_code, @function
get_status_code:
.LFB25:
	.cfi_startproc
	endbr64
	cmpl	$1, %edi
	je	.L21
	ja	.L20
	testl	%edi, %edi
	jne	.L22
	movl	$200, %eax
.L19:
	movw	%ax, (%rsi)
	ret
.L20:
	subl	$2, %edi
	cmpl	$2, %edi
	ja	.L24
	movl	$204, %eax
	jmp	.L19
.L24:
	movl	$400, %eax
	jmp	.L19
.L21:
	movl	$201, %eax
	jmp	.L19
.L22:
	movl	$400, %eax
	jmp	.L19
	.cfi_endproc
.LFE25:
	.size	get_status_code, .-get_status_code
	.section	.rodata.str1.1
.LC6:
	.string	"%d\n"
.LC7:
	.string	"%ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB26:
	.cfi_startproc
	endbr64
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	leaq	8(%rsp), %rdx
	movl	$106, %esi
	movl	$4, %edi
	call	switch_eg
	leaq	6(%rsp), %rsi
	movl	$0, %edi
	call	get_status_code
	leaq	16(%rsp), %rsi
	movswl	6(%rsp), %edi
	call	get_status_message
	movq	16(%rsp), %rdi
	call	puts@PLT
	movswl	6(%rsp), %edx
	leaq	.LC6(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movq	8(%rsp), %rdx
	leaq	.LC7(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L28
	movl	$0, %eax
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L28:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE26:
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
