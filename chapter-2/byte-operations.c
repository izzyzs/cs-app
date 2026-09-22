#include <stdio.h>

void inplace_swap(int *x, int *y); // from cs:app practice problem 2.10
void reverse_array(int a[], int cnt); // from cs:app practice problem 2.11
int bis(int x, int m);
int bic(int x, int m);

void print_list(int len, int *list); // helper function written by me

int main() {
    int a = 4, b = 2;
    printf("a = %d, b = %d\n", a, b);
    inplace_swap(&a, &b);
    printf("a = %d, b = %d\n", a, b);
    int d = 4, e = 4;
    printf("d = %d, d = %d\n", d, d);
    inplace_swap(&d, &d);
    printf("d = %d, d = %d\n", d, d);
    
    int int_list[] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
    print_list(9, int_list);
    reverse_array(int_list, 9);
    print_list(9, int_list);

    int x = 0x87654321;
    printf("0x%X & 0xFF = 0x%.8X\n", x, (x & 0xFF));
    printf("0x%X & ~0xFF = 0x%.8X\n", x, (x ^ ~0xFF));
    printf("0x%X & ~0xFF = 0x%.8X\n", x, (x | 0xFF));

    int bin1 = 0b01110001;
    int mask = 0b00011000;
    printf("%X\n%X\n%X\n", bin1, mask, bis(bic(bin1, mask), mask));
    printf("\n\n");
    char *str = ~0x66 ? "true" : "false";
    printf("%s\n", str);

    // Practice Problem 2.15
    int int1 = 0x66;
    int int2 = 0x66;
    str = !(int1 ^ int2) ? "true" : "false";
    printf("0x%X == 0x%X : %s\n", int1, int2, str);

    int k = 350, w = 32;
    printf("k %% w = %d\n", (k % w));
    printf("%X\n\n", (32));

    /*
    int bar[8], index = 0;
    int divisor = 15;
    while (divisor > 1) {
        printf("Divisor: %d\n", divisor);
        int remainder = divisor%2;
        bar[index] = remainder;
        divisor /= 2;
        index++;   
    }
    for (int i = 0; i < 8; i++) {
        printf("%d ", bar[i]);
    }
    */
    
    return 0;
}

// int c = 0xaa +- 0xaa;
// printf("%x ^ %x = %x", 0xAA, 0xAA, c);

void inplace_swap(int *x, int *y) {
    *y = *x ^ *y;
    *x = *x ^ *y;
    *y = *x ^ *y;
}

void reverse_array(int a[], int cnt) {
    int first, last;
    for (first = 0, last=cnt-1; first <= last; first++, last--) {
        if (first == last)
            continue;
        else
           inplace_swap(&a[first], &a[last]);
    }
}

void print_list(int len, int *list) {
    printf("[");
    for (int i = 0; i < len; i++) {
        if (i == len-1)
        printf("%d", list[i]);
        else
        printf("%d, ", list[i]);
    }
    printf("]\n");
}

int bis(int x, int m) {
    int z = x | m;
    return z;
}

int bic(int x, int m) {
    int z = x & ~m;
    return z;
}