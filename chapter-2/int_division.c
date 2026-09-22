/* 
*
* Write a function div16 that returns the value x/16 for any int x. 
* Your function shouldn't use division, modulus, multiplication, 
* any conditionals (if or ?:), any comparison operators (e.g., <, >, or ==) or any loops.
* assume the data type int is 32 bits long and uses two's complement representation
* and that right shifts are performed arithmetically
*
*/

#include <stdio.h>
#include <limits.h>

int div16(int x);

int main() {
    // int dividend = 12340;
	// printf("%d/16 = %d", dividend, div16(dividend));
    int x = 0xFFFF * 0xFFFF;
    printf("%X: %d\n", x, x);
}

// int div16(int x) {
//     int bias = x>>31 & 0xf;
//     printf("bias: %d\n", bias);
// 	int result = (x + bias) >> 4;
// 	return result;
// }

int optarith(int x, int y) {
    int t = x;
    x <<= 5;
    x-=t;
    if (y < 0) y += 7;
    y >>=3;
    return x+y;
}

// x * (2^5 - 1) = 32 - 1  = 31
// (y + (1 << 3) - 1) >> 3 = y * (2^3) = y * 8