#include <stdio.h>

/* Determines whether arguments can 
be added without overflow */
int uadd_ok(unsigned x, unsigned y);
int tadd_ok(int x, int y);
int tsub_ok(int x, int y);

int main() {
    int int1 = 3;
    int int2 = 2;
    // printf("int2 = %x;\t%d\n", int2);
    // char *check = uadd_ok(int1, int2) ? "true" : "false";
    // char *check = tadd_ok(int1, int2) ? "true" : "false";
    printf("%d and %d can be added without overflow: %d\n", int1, int2, tadd_ok(int1, int2));
    printf("%d and %d can be subtracted without overflow: %d\n", int1, int2, tsub_ok(int1, int2));
}

int uadd_ok(unsigned x, unsigned y) {
    unsigned sum = x + y;
    return (sum > x) || (sum > y);
}

int tadd_ok(int x, int y) {
    int sum = x + y,
    x_is_positive = x > 0,
    y_is_positive = y > 0,
    sum_is_positive = sum > 0;
    
    return ((x_is_positive && y_is_positive && sum_is_positive) || (!x_is_positive && !y_is_positive && !sum_is_positive));
}

int tsub_ok(int x, int y) {
    printf("x-y = %d\n", x-y);
    int difference = x-y;
    return tadd_ok(x, -y) || (x > y && difference > 0) || (x < y && difference  < 0);
}
// printf("sum-x = %.8x\n", (sum-x));
// printf("sum = %x,\n x = %x,\n y = %.8x\n", sum, x, y);
// printf("sum-y = %.8x\n", (sum-y));
// return (sum-x == y) && (sum-y == x);
