	.file	"lab-test.c"
	.text
	.globl	bitXor
	.type	bitXor, @function
bitXor:
.LFB23:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	xorl	%esi, %eax
	ret
	.cfi_endproc
.LFE23:
	.size	bitXor, .-bitXor
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"\nx = %x\n"
.LC1:
	.string	"mask val 0x%X\n"
.LC2:
	.string	"check val: 0x%X\n"
	.text
	.globl	allOddBits
	.type	allOddBits, @function
allOddBits:
.LFB24:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edi, %ebx
	movl	%edi, %edx
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$-1431655766, %edx
	leaq	.LC1(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	andl	$-1431655766, %ebx
	movl	%ebx, %edx
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	cmpl	$-1431655766, %ebx
	sete	%al
	movzbl	%al, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	allOddBits, .-allOddBits
	.globl	isAsciiDigit
	.type	isAsciiDigit, @function
isAsciiDigit:
.LFB25:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	andl	$48, %eax
	cmpl	$48, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%edi, %ecx
	sarl	$3, %ecx
	movl	%ecx, %edx
	andl	$1, %edx
	notl	%edx
	testb	$6, %dil
	sete	%sil
	movzbl	%sil, %esi
	andl	%esi, %ecx
	orl	%ecx, %edx
	testl	$-64, %edi
	sete	%cl
	movzbl	%cl, %ecx
	andl	%edx, %eax
	andl	%ecx, %eax
	ret
	.cfi_endproc
.LFE25:
	.size	isAsciiDigit, .-isAsciiDigit
	.section	.rodata.str1.1
.LC3:
	.string	"0xFFFFFFFD: %d\n"
.LC4:
	.string	"0xFFFFFFFF: %d\n"
.LC5:
	.string	"0xAAAAAAAA: %d\n"
.LC6:
	.string	"\n\n<conditional>"
.LC7:
	.string	"\n\ntest: 0x%X\n"
.LC8:
	.string	"mask: 0x%X\n"
.LC9:
	.string	"logical not(mask): 0x%X\n"
.LC10:
	.string	"value: 0x%X\n\n"
.LC11:
	.string	"</conditional>\n"
.LC12:
	.string	"value: %d\n"
.LC13:
	.string	"min: %d\n"
.LC14:
	.string	"value == min: %d\n"
.LC15:
	.string	"AxorB  => %d\n"
.LC16:
	.string	"result => %d\n"
.LC17:
	.string	"AxorB == result => %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB26:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	$-3, %edi
	call	allOddBits
	movl	%eax, %r12d
	movl	$-1, %edi
	call	allOddBits
	movl	%eax, %ebp
	movl	$-1431655766, %edi
	call	allOddBits
	movl	%eax, %ebx
	movl	%r12d, %edx
	leaq	.LC3(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	%ebp, %edx
	leaq	.LC4(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	%ebx, %edx
	leaq	.LC5(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	movl	$5, %edx
	leaq	.LC7(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$0, %edx
	leaq	.LC8(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$-1, %edx
	leaq	.LC9(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$1, %edx
	leaq	.LC10(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	movl	$-2147483648, %edx
	leaq	.LC12(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$-2147483648, %edx
	leaq	.LC13(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$1, %edx
	leaq	.LC14(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$1002805189, %esi
	movl	$2100610766, %edi
	call	bitXor
	movl	%eax, %ebx
	movl	$1190220043, %edx
	leaq	.LC15(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	%ebx, %edx
	leaq	.LC16(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	cmpl	$1190220043, %ebx
	sete	%dl
	movzbl	%dl, %edx
	leaq	.LC17(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$0, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
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
