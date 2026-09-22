double funct3(int *ap, double b, long c, float *dp) {
    int a = *ap;
    float d = *dp;
    if (a > b) return d * c;
    else return 2 * d + c;

}