#include <stdio.h>
#include <math.h>

int main(){
    double r, d, a0;

    printf("Razao: ");
    scanf("%lf", &r);

    printf("Primeiro termo: ");
    scanf("%lf", &a0);

    d = a0 + 9 * r;

    printf("Decimo termo: %.2lf\n", d);

    return 0;
}