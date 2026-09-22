#include <stdio.h>
#include <stdlib.h>

typedef enum { ONE, TWO, FOUR, EIGHT } ByteLength;

typedef union example_union {
    double d;
    unsigned u[2];
    long l;
    short sh;
    unsigned char ch;
} Example;

typedef struct example_union_w_type_enum {
    ByteLength length;
    Example data;
} ExampleWithType;

ExampleWithType uu2Eight(unsigned word0, unsigned word1) {
    Example temp;
    temp.u[0] = word0;
    temp.u[1] = word1;
    ExampleWithType val = {EIGHT, temp};
    return val;
}

ExampleWithType uu2Four(unsigned word0, unsigned word1) {
    Example temp;
    temp.u[0] = word0;
    temp.u[1] = word1;
    ExampleWithType val = {FOUR, temp};
    return val;
}

ExampleWithType uu2Two(unsigned word0, unsigned word1) {
    Example temp;
    temp.u[0] = word0;
    temp.u[1] = word1;
    ExampleWithType val = {TWO, temp};
    return val;
}

ExampleWithType uu2One(unsigned word0, unsigned word1) {
    Example temp;
    temp.u[0] = word0;
    temp.u[1] = word1;
    ExampleWithType val = {ONE, temp};
    return val;
}

char *int_to_bits(ExampleWithType ex) {
    // enum value is log2(byte_count): ONE=0, TWO=1, FOUR=2, EIGHT=3
    int byte_count = 0x1 << ex.length;
    int total_size = byte_count*8;
    char *bit_pattern = (char*) malloc(total_size + 1);

    int i;
    char bit;
    for (i = total_size-1; i >=0; i--) {
        bit = ex.data.l & 0x1 ? '1' : '0';
        bit_pattern[i] = bit;
        ex.data.l >>= 1;
    }
    bit_pattern[total_size] = '\0';
    return bit_pattern;
}

/*
12b92aae
e6990ed4
e5cd0117
36f01d23
c7663a08
*/

void print_w_space_every_4_characters(char string[]) {
    int space_every = 4, i;
    for (i = 0; string[i] != '\0'; i++) {
        putchar(string[i]);

        if ((i+1) % space_every == 0 && string[i+1] != '\0') {
            putchar(' ');
        }
    }
    
    putchar('\n');
}

int main(void) {
    unsigned one = 0x12b92aae;
    unsigned two = 0xe6990ed4;
    
    ExampleWithType resultAs1Byte = uu2One(one, two);
    char *oneBytePattern = int_to_bits(resultAs1Byte);
    print_w_space_every_4_characters(oneBytePattern);
    printf("resultAs1Byte as a char: %d\n\n", resultAs1Byte.data.ch);
    free(oneBytePattern);
    
    ExampleWithType resultAs2Bytes = uu2Two(one, two);
    char *twoBytePattern = int_to_bits(resultAs2Bytes);
    print_w_space_every_4_characters(twoBytePattern);
    printf("resultAs2Bytes as a short: %u\n\n", resultAs1Byte.data.sh);
    free(twoBytePattern);
    
    
    ExampleWithType resultAs4Bytes = uu2Four(one, two);
    char *fourBytesPattern = int_to_bits(resultAs4Bytes);
    print_w_space_every_4_characters(fourBytesPattern);
    printf("resultAs1Byte as an unsigned int: %u\n\n", *resultAs1Byte.data.u);
    free(fourBytesPattern);
    
    ExampleWithType resultAsEightBytes = uu2Eight(one, two);
    char *pattern = int_to_bits(resultAsEightBytes);
    print_w_space_every_4_characters(pattern);
    printf("resultAs1Byte as a long: %lu\n", resultAs1Byte.data.l);
    free(pattern);
    return 0;
}



// 745a
// 52a6
// 580a