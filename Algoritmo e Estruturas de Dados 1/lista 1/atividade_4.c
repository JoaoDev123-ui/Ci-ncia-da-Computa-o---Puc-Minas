#include <stdio.h>
#define PI 3.141592653589793

int main(){
    double r, ar, p;

    printf("Raio: ");
    scanf("%lf", &r);

    ar = PI * r;
    p = 2 * PI * r;

    printf("Area: %.2lf\n", ar);
    printf("Perimetro: %.2lf\n", p);

    return 0;
}