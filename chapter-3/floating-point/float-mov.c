double fcvt(int i, float *fp, double *dp, long *lp) {
    float f = *fp; double d = *dp; long l = *lp;
    *lp = (long) d;
    *fp = (float) i;
    *dp = (double) l;
    return (double) f;
}

void fcvt2(float *fp, double *dp, int *ip1, int *ip2) {
    *ip1 = (int) *fp;
    *ip2 = (int) *dp;
}