long sum_even_numbers() {
    long sum = 0;
    long i;
    for (i = 0; i < 10; i++) {
        if (i & 1)
            continue;
        sum += i;
    }
    return sum;
}

/*
    mov 0, %rdi
    mov 0, %rsi
loop:
    cmp %rsi, 1
    jne loop
    cmp %rsi, 10
    jl return

*/

/*

*/