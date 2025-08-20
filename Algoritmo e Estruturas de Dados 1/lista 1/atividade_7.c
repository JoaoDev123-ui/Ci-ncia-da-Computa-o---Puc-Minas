#include <stdio.h>
#include <math.h>

int main(){
    double c1, c2, h;

    printf("C1: ");
    scanf("%lf", &c1);

    printf("C2: ");
    scanf("%lf", &c2);

    h = sqrt(pow(c1, 2) + pow(c2, 2));

    printf("Hipotenusa: %.2lf\n", h);

    return 0;
}