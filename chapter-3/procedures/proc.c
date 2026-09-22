void proc(long  a1, long    *a1p,  
          int   a2, int     *a2p,
          short a3, short   *a3p,
          char  a4, char    *a4p)
{
    *a1p += a1;
    *a2p += a2;
    *a3p += a3;
    *a4p += a4;
}

long call_proc() {
    long    x1 = 1; int     x2 = 2;
    short   x3 = 3; char    x4 = 4;
    proc(x1, &x1, x2, &x2, x3, &x3, x4, &x4);
    return (x1 + x2) * (x3 - x4);
}

/*
<asm>
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
</asm>
*/