#define N 4
typedef int fix_matrix[N][N];
// my answer
void fix_set_val(fix_matrix A, int val) {
    int *Aptr = &A[0][0];
    int i = 0;
    int iend = N*(N+1);
    do {
        *(Aptr + i) = val;
        i += N + 1;
    } while (i != iend);
}

// textbook's answer
void fix_set_diag_opt(fix_matrix A, int val) {
    int *Abase = &A[0][0];
    long i = 0;
    long iend = N*(N+1);
    do {
        *(Abase + i) = val;
        i += (N+1);
    } while (i != iend);
}