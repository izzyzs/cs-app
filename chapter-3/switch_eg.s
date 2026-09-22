	.file	"switch_eg.c"
	.text
	.globl	long_switch
	.type	long_switch, @function
long_switch:
.LFB23:
	.cfi_startproc
	endbr64
	cmpq	$50, %rdi
	jg	.L2
	cmpq	$5, %rdi
	jl	.L11
	subq	$5, %rdi
	cmpq	$45, %rdi
	ja	.L4
	leaq	.L6(%rip), %rdx
	movslq	(%rdx,%rdi,4), %rax
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L6:
	.long	.L10-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L12-.L6
	.long	.L4-.L6
	.long	.L9-.L6
	.long	.L8-.L6
	.long	.L7-.L6
	.long	.L5-.L6
	.text
.L10:
	movl	$45, %eax
	ret
.L4:
	movl	$0, %eax
	ret
.L2:
	cmpq	$100, %rdi
	jne	.L13
	movl	$400, %eax
	ret
.L9:
	movl	$406, %eax
	ret
.L8:
	movl	$40, %eax
	ret
.L7:
	movl	$4000, %eax
	ret
.L5:
	movl	$450, %eax
	ret
.L11:
	movl	$0, %eax
	ret
.L12:
	movl	$42, %eax
	ret
.L13:
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE23:
	.size	long_switch, .-long_switch
	.globl	switch_eg
	.type	switch_eg, @function
switch_eg:
.LFB24:
	.cfi_startproc
	endbr64
	subq	$100, %rsi
	cmpq	$6, %rsi
	ja	.L21
	leaq	.L17(%rip), %rcx
	movslq	(%rcx,%rsi,4), %rax
	addq	%rcx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L17:
	.long	.L20-.L17
	.long	.L21-.L17
	.long	.L19-.L17
	.long	.L18-.L17
	.long	.L16-.L17
	.long	.L21-.L17
	.long	.L16-.L17
	.text
.L20:
	leaq	(%rdi,%rdi,2), %rax
	leaq	(%rdi,%rax,4), %rdi
	jmp	.L15
.L19:
	addq	$10, %rdi
.L18:
	addq	$11, %rdi
.L15:
	movq	%rdi, (%rdx)
	ret
.L16:
	imulq	%rdi, %rdi
	jmp	.L15
.L21:
	movl	$0, %edi
	jmp	.L15
	.cfi_endproc
.LFE24:
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
.LFB25:
	.cfi_startproc
	endbr64
	subw	$200, %di
	cmpw	$4, %di
	ja	.L23
	movzwl	%di, %edi
	leaq	.L25(%rip), %rdx
	movslq	(%rdx,%rdi,4), %rax
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L25:
	.long	.L29-.L25
	.long	.L28-.L25
	.long	.L27-.L25
	.long	.L26-.L25
	.long	.L24-.L25
	.text
.L29:
	leaq	.LC0(%rip), %rax
	movq	%rax, (%rsi)
	ret
.L28:
	leaq	.LC1(%rip), %rax
	movq	%rax, (%rsi)
	ret
.L27:
	leaq	.LC2(%rip), %rax
	movq	%rax, (%rsi)
.L26:
	leaq	.LC3(%rip), %rax
	movq	%rax, (%rsi)
.L24:
	leaq	.LC4(%rip), %rax
	movq	%rax, (%rsi)
	ret
.L23:
	leaq	.LC5(%rip), %rax
	movq	%rax, (%rsi)
	ret
	.cfi_endproc
.LFE25:
	.size	get_status_message, .-get_status_message
	.globl	get_status_code
	.type	get_status_code, @function
get_status_code:
.LFB26:
	.cfi_startproc
	endbr64
	cmpl	$1, %edi
	je	.L34
	ja	.L33
	testl	%edi, %edi
	jne	.L35
	movl	$200, %eax
.L32:
	movw	%ax, (%rsi)
	ret
.L33:
	subl	$2, %edi
	cmpl	$2, %edi
	ja	.L37
	movl	$204, %eax
	jmp	.L32
.L37:
	movl	$400, %eax
	jmp	.L32
.L34:
	movl	$201, %eax
	jmp	.L32
.L35:
	movl	$400, %eax
	jmp	.L32
	.cfi_endproc
.LFE26:
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
.LFB27:
	.cfi_startproc
	endbr64
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	leaq	8(%rsp), %rdx
	movl	$90, %esi
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
	jne	.L41
	movl	$0, %eax
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L41:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE27:
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
