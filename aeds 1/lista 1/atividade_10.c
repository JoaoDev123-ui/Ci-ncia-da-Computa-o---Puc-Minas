#include <stdio.h>
#include <math.h>

int main(){
    double A, B, C;

    printf("Numero 1: ");
    scanf("%lf", &A);

    printf("Numero 2: ");
    scanf("%lf", &B);

    C = A;
    A = B;
    B = C;

    printf("%.1lf %.1lf\n", A, B);

    return 0;
}