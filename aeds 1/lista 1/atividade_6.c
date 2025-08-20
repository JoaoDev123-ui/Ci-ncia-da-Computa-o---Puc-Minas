#include <math.h>
#include <stdio.h>

int main(){
    double a, b, c, y;

    printf("A: ");
    scanf("%lf", &a);

    printf("B: ");
    scanf("%lf", &b);

    printf("C: ");
    scanf("%lf", &c);

    y = a + (b / (c + a)) + 2 * (a - b) + log2(64);

    printf("Y: %.2lf\n", y);

    return 0;
}