#include <stdio.h>
#include <math.h>

int main(){
    double l, ar, p, d;

    printf("Lado: ");
    scanf("%lf", &l);

    ar = l * l;
    p = 4 * l;
    d = l * sqrt(2);

    printf("Area: %.2lf\n", ar);
    printf("Perimetro: %.2lf\n", p);
    printf("Diagonal: %.2lf\n", d);

    return 0;
}