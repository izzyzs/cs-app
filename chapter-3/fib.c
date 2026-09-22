short fun_b(unsigned short x) {
        int rdx = 1;
        int rax = 65;
        int rcx;
    L10:
        rcx = x;
        rcx = rcx & 1;
        rax += rax;
        rax |= rcx;
        x >>= 1;
        rdx++;
        if (rdx != 0)
            goto L10;
        return rax;
}

long test_two(unsigned long x) {
    long val = 0;
    long i;
    for (i = 0; i < 64; i++) {
        val = (val << 1) | (x & 0x1);
        x >>= 1;
    }
    return val;
}

long sum_even_numbers() {
    
}