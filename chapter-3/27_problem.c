#include <stdio.h>

long fibonacci(long n) {
        long x = 0;
        long y = 1;
        long result;
        int run;
        if (n <= 1) return n;

        long i = 2;
        if (i > n)
            goto done;
    loop:
        result = x + y;
        x = y;
        y = result;
        i++;
        if (i <= n)
            goto loop;
    done:
        return result;

}

int main() {
    long res = fibonacci(6);
    printf("%ld\n", res);
    return 0;
}