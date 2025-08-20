#include <stdio.h>

int main(){
    int n;
    double d, de;

    printf("Numerador: ");
    scanf("%d", &n);

    printf("Denominador: ");
    scanf("%lf", &d);

    de = (double) n / d;

    printf("Decimal: %.2lf\n", de);

    return 0;
}