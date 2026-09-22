#include <stdio.h>

long Q(long v) {
    return v * 2;
}

long P(long x, long y) {
    long u = Q(y);
    long v = Q(x);
    return u + v;
}

int main() {
    long h = 5;
    long g = 6;
    long i = P(h, g);
    printf("%ld", i);
    return 0;
}

