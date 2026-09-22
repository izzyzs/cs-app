#include <stdio.h>
#define N 4
typedef int fix_matrix[N][N];

int fix_prod_ele(fix_matrix A, fix_matrix B, long i, long k) {
    long j;
    int result = 0;

    for (j = 0; j < N; j++) {
        result += A[i][j] * B[j][k];
    }
    return result;
}

int main() {
    fix_matrix m = {{1, 2, 3, 4}, {5, 6, 7, 8}, {9, 10, 11, 12}, {13, 14, 15, 16}};
    int res = fix_prod_ele(m, m, 0, 0);
    printf("%d\n", res);
    return 0;
}