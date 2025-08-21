#include <stdio.h>
#include <math.h>

int main(){
    double l1, l2, l3, m;

    printf("Lado 1: ");
    scanf("%lf", &l1);

    printf("Lado 2: ");
    scanf("%lf", &l2);

    printf("Lado 3: ");
    scanf("%lf", &l3);

    if(l1 > l2 && l1 > l3){
        m = l1;
    }else if(l2 > l1 && l2 > l3){
        m = l2;
    }else{
        m = l3;
    }

    if(m == (pow(l1,2) + pow(l2, 2))){
        printf("Retangulo");
    }else if(m < (pow(l1,2) + pow(l2, 2))){
        printf("Acutangulo");
    }else{
        printf("Obtusangulo");
    }

    return 0;
}
