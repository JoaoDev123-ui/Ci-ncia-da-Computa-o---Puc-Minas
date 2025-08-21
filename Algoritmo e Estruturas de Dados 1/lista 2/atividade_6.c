#include <stdio.h>
#include <math.h>

int main(){
    double a, b, c, x1, del, x2, i, r;

    printf("Valor de a: ");
    scanf("%lf", &a);
    
    printf("Valor de b: ");
    scanf("%lf", &b);
    
    printf("Valor de c: ");
    scanf("%lf", &c);

    del = (b*b - 4*a*c);

    if(del > 0){
        x1 = (-b + sqrt(del)) / (2 * a);
        x2 = (-b - sqrt(del)) / (2 * a);
        printf("X1 = %.2lf\n", x1);
        printf("X2 = %.2lf\n", x2);
    }else if(del < 0){
        r = -b / (2 * a);
        i = sqrt(-del) / (2 * a);
        printf("X1 = %.2lf + %.2lfi\n", r, i);
        printf("X2 = %.2lf - %.2lfi\n", r, i);
    }else{
        x1 = -b / 2 * a;
        printf("Raiz dupla: %.2lf\n", x1);
    }

    return 0;
}