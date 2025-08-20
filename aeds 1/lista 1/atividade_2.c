#include <stdio.h>

int main(){
    double s, vk, vp, vd;
    int k;

    printf("Salario: ");
    scanf("%lf", &s);

    printf("kwh: ");
    scanf("%d", &k);

    vk = (s / 7) / 100;
    vp = vk * k;
    vd = 0.9 * vp;

    printf("Valor de 1 kwh: %.2lf\n", vk);
    printf("Valor a ser pago: %.2lf\n", vp);
    printf("Valor com desconto: %.2lf\n", vd);

    return 0;
}