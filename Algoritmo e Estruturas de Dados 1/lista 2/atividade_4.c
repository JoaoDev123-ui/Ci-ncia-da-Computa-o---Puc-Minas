#include <stdio.h>

int main(){
    double a, x, b;

    printf("Coeficiente a: ");
    scanf("%lf", &a);

    printf("Coeficiente b: ");
    scanf("%lf", &b);

    if(a == 0){
        return 1;
    }else{
        x = ((-b) / a);
    }

    printf("Raiz da equacao: %.2lf\n", x);

    return 0;
}