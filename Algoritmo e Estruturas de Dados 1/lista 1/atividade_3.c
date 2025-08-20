#include <stdio.h>
#include <math.h>

int main(){
    double b, a, p, ar, d;

    printf("Base: ");
    scanf("%lf", &b);

    printf("Altura: ");
    scanf("%lf", &a);

    ar = b * a;
    p = 2 * (b + a);
    d = sqrt((b * b) + (a * a));

    printf("Area: %.2lf\n", ar);
    printf("Perimetro: %.2lf\n", p);
    printf("Diagonal: %.2lf\n", d);

    return 0;
}