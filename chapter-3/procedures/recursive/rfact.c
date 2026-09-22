#include <stdio.h>

long rfact(long n) {
    long result;
    if (n <= 1)
        result = 1;
    else
        result = n * rfact(n-1);
    return result;
}

int main() {
    long factorial_1 = rfact(1);
    long factorial_5 = rfact(5);

    printf("%ld", factorial_1);
    printf("%ld", factorial_5);
    return 0;
}