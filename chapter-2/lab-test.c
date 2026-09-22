#include <stdio.h>

void print_binary(int x) {
  unsigned int u = (unsigned) x;
    for (int i = sizeof(u) * 8 - 1; i >= 0; i--) {
        putchar((u & (1u << i)) ? '1' : '0');
    }
    printf("\n");
}


int bitXor(int x, int y) {
  int a = x & y;
  int b = ~x & ~y;
  int res = ~a & ~b;
  return res;
}

int allOddBits(int x) {
    printf("\nx = %x\n", x);
  int mask = 0xAA | 0xAA << 8 | 0xAA << 16 | 0xAA << 24;
  printf("mask val 0x%X\n", mask);
  int check_val = mask & x;
  printf("check val: 0x%X\n", check_val);
  return !(check_val ^ mask);
}

int isAsciiDigit(int x) {
  int upper_mask = 0x30;
  int checkval = upper_mask & x;
  int upper_in_range = !(upper_mask ^ checkval);
  int lower_in_range = ~((x & 0x8) >> 3) | (x & 1000) >> 3 & !(6 & x);
  int no_upper_bytes = !(x & ~0x3F);
  return upper_in_range & lower_in_range & no_upper_bytes;
}

int conditional(int x, int y, int z) {
    static int run = 0;
    run++;
    printf("\nconditional run #%d\n", run);
  // hmm, how do i conditionally assign a value?....
  printf("x: "); print_binary((unsigned) x);
  int truthyFlag = !x;
  printf("truthyFlag = !x: "); print_binary((unsigned) truthyFlag);
  int yMask = (~!truthyFlag + 1);
  printf("~truthyFlag: "); print_binary((unsigned) ~truthyFlag);
  printf("yMask = (~truthyFlag + 1): "); print_binary((unsigned) yMask);
  int zMask = (~truthyFlag + 1);
  return (yMask & y) | (zMask & z);
}

/* 
 * isLessOrEqual - if x <= y  then return 1, else return 0 
 *   Example: isLessOrEqual(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isLessOrEqual(int x, int y) {
  int equal = !(x ^ y);

  int sign_x = (x >> 31) & 1;
  int sign_y = (y >> 31) & 1;
  int diff_signs = sign_x ^ sign_y;

  int xor = x ^ y;

  xor |= xor >> 1;
  xor |= xor >> 2;
  xor |= xor >> 4;
  xor |= xor >> 8;
  xor |= xor >> 16;

  xor >>= 1;
  xor += 1;

  xor = xor & x;

  int same_sign_case = !diff_signs & !xor;
  int diff_sign_case = diff_signs & sign_x;

  return equal | same_sign_case | diff_sign_case;
}

int main() {
  int result, A = 0x7D34C6CE, B = 0x3BC597C5;
  // int A = 0x4;
  // int B = 0x5;

  printf("<lessOrEqual>\n");
  // int result = isLessOrEqual(-2147483648, -1);
  result = isLessOrEqual(0x80000000, -1);
  result = isLessOrEqual(0x40001, 0x40001);
  printf("\n\n");
  result = isLessOrEqual(-7, -1);
  
  // xor = ~xor;
  // printf("~xor:\t%d:\t0x%X\t", xor, xor); print_binary((unsigned) xor);
  // xor = xor + 1;
  // printf("xor + 1:\t%d:\t0x%X\t", xor, xor); print_binary((unsigned) xor);
  printf("</lessOrEqual>\n\n");
  
  // printf("\n\n<conditional>\n");
  // // 2,4,5
  // printf("%d", conditional(-2147483648, 2147483647, -2147483648));
  // printf("%d", conditional(4, 5, 6));
  // printf("</conditional>\n\n");
  

    // int run1 = allOddBits(0xFFFFFFFD);
    // int run2 = allOddBits(0xFFFFFFFF);
    // int run3 = allOddBits(0xAAAAAAAA);
    // printf("0xFFFFFFFD: %d\n", run1);
    // printf("0xFFFFFFFF: %d\n", run2);
    // printf("0xAAAAAAAA: %d\n", run3);
    
    // int test = 0x30;
    // while (test < 0x40) {
    //     printf("test #%d: isAsciiDigit(0x%X) => %d\n", (test-0x30+1), test, isAsciiDigit(test));
    //     test++;
    // }
    // test = 0x7ffffff9;
    // printf("test #%d: isAsciiDigit(0x%X) => %d\n", (test-0x30+1), test, isAsciiDigit(test));




  // int value = 0x1 << 31; 
  // int min = 0x80000000;
  // printf("value: %d\n", value);
  // printf("min: %d\n", min);
  // printf("value == min: %d\n", value == min);

  
    
  //   int AxorB = A ^ B;
  //   int result = bitXor(A, B);
  //   printf("AxorB  => %d\n", AxorB);
  //   printf("result => %d\n", result);
  //   printf("AxorB == result => %d\n", AxorB == result);
    return 0;
}