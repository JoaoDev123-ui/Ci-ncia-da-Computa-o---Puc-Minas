#include <stdio.h>
#include <math.h>

int main(){
    double r, q, a0;

    printf("Razao: ");
    scanf("%lf", &r);

    printf("Primeiro termo: ");
    scanf("%lf", &a0);
    
    q = a0 * pow(r, 4);

    printf("PG: %.2lf\n", q);

    return 0;
}