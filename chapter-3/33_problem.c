#include <stdio.h>

int procprob(int a, short b, long *u, char *v) {
    *u += a;
    *v += b;
    return sizeof(a) + sizeof(b);
}

int main() {
    long first = 2;
    short second = 3;
    int size = procprob(2, 3, &first, &second);
    printf("%d", size);
    return 0;
}

/*
<asm>
    procprob:
.LFB23:
	.cfi_startproc
	endbr64
	movslq	%edi, %rdi
	addq	%rdi, (%rdx)
	addb	%sil, (%rcx)
	movl	$5, %eax
	ret
	.cfi_endproc
.LFE23:
	.size	procprob, .-procprob
	.section	.rodata.str1.1,"aMS",@progbits,1
</asm>
*/