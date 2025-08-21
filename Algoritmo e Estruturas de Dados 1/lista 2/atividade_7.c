#include <stdio.h>

int main(){
    double a, b, ma, me;

    printf("Valor de a: ");
    scanf("%lf", &a);

    printf("Valor de b: ");
    scanf("%lf", &b);
    
    if(a > b){
        ma = a;
    }else{
        ma = b;
    }

    if(a < b){
        me = a;
    }else{
        me = b;
    }

    printf("Maior: %.2lf\n", ma);
    printf("Menor: %.2lf\n", me);

    return 0;
}