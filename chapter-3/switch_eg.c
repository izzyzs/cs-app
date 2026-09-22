#include <stdio.h>
enum Status {GET, POST, PUT, UPDATE, DELETE};

/*
<asm>
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
</asm>
*/


long long_switch(long n) {
    switch (n) {
        case 5:
            return 45;
        case 45:
            return 42;
        case 47:
            return 406;
        case 48:
            return 40;
        case 49:
            return 4000;
        case 50:
            return 450;
        case 100:
            return 400;
        default:
            return 0;
    }
}


void switch_eg(long x, long n, long *dest) {
    long val = x;

    switch (n) {
        case 100:
            val *= 13;
            break;
        
        case 102:
            val += 10;

        case 103:
            val += 11;
            break;

        case 104:
        case 106:
            val *= val;
            break;

        default:
            val = 0;
    }

    *dest = val;
}

void get_status_message(short status, const char** http_message_p) {
    switch (status) {
        case 200:
            *http_message_p = "OK";
            break;
            case 201:
            *http_message_p = "Created";
            break;
        case 202:
            *http_message_p = "Accepted";
        case 203:
            *http_message_p = "Non-authoritative Information";
        case 204:
            *http_message_p = "No Content";
            break;
        default:
            *http_message_p = "Forbidden";
    }
}


void get_status_code(enum Status status, short *code) {
    int code_val;
    switch (status) {
        case GET:
            code_val = 200;
            break;
        case POST:
            code_val = 201;
            break;
        case UPDATE:
        case PUT:
            code_val = 202;
        case DELETE:
            code_val = 204;
            break;
        default:
            code_val = 400;
    }
    *code = code_val;
}

int main() {
    
    long dest;
    switch_eg(4, 90, &dest);
    
    
    short code;
    get_status_code(GET, &code);
    
    const char *http_message;
    get_status_message(code, &http_message);

    long dis = long_switch(50);

    printf("%s\n", http_message);
    printf("%d\n", code);
    printf("%ld\n", dest);
    return 0;
}