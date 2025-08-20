#include <stdio.h>

int main(){
    double sm, s, x;

    printf("Salario Minimo: ");
    scanf("%lf", &sm);

    printf("Salario Atual: ");
    scanf("%lf", &s);

    x = s / sm;

    printf("%.2lf salarios minimos.\n", x);

    return 0;
}
