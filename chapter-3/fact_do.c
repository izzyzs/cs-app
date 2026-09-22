#include <stdio.h>
#include <stdint.h>

#define DATA_FORMAT_SPECIFIER "%d"
typedef int data_t;

data_t fact_do(int n) {
    data_t result = 1;
    do {
        result *= n;
        n = n-1;
    } while (n > 1);
    return result;
}

// int fact_do(int n) {
//     int64_t result = 1;
//     do {
//         result *= n;
//         n = n-1;
//     } while (n > 1);
//     return result;
// }


int main() {
    printf("%d! :\t", 14);
    data_t fourteenFract = fact_do(14);
    data_t thirteenFractTest = fourteenFract/14;
    data_t thirteenFract = fact_do(13);
    printf("14! => "DATA_FORMAT_SPECIFIER"\n", fourteenFract);
    data_t equal = thirteenFract == thirteenFractTest;
    printf("14!/14 = 13! ("DATA_FORMAT_SPECIFIER") == "DATA_FORMAT_SPECIFIER" = "DATA_FORMAT_SPECIFIER"\n", thirteenFract, thirteenFractTest, equal);
    data_t twelveFractTest = thirteenFract/13;
    data_t twelveFract = fact_do(12);
    printf("13! => "DATA_FORMAT_SPECIFIER"\n", thirteenFract);
    equal = twelveFract == twelveFractTest;
    printf("13!/13 = 12! ("DATA_FORMAT_SPECIFIER") == "DATA_FORMAT_SPECIFIER" = "DATA_FORMAT_SPECIFIER"\n", twelveFract, twelveFractTest, equal);
    data_t elevenFractTest = twelveFract/12;
    data_t elevenFract = fact_do(11);
    printf("12! => "DATA_FORMAT_SPECIFIER"\n", twelveFract);
    equal = elevenFract == elevenFractTest;
    printf("13!/13 = 12! ("DATA_FORMAT_SPECIFIER") == "DATA_FORMAT_SPECIFIER" = "DATA_FORMAT_SPECIFIER"\n", elevenFract, elevenFractTest, equal);
    return 0;
}