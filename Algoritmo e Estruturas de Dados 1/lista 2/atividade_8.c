#include <stdio.h>

int main(){
    double l1, l2, l3;

    printf("Lado 1: ");
    scanf("%lf", &l1);

    printf("Lado 2: ");
    scanf("%lf", &l2);

    printf("Lado 3: ");
    scanf("%lf", &l3);

    if(l1 == l2 && l2 == l3){
        printf("Triangulo Equilatero\n");
    }else if(l1 == l2 || l1 == l3 || l2 == l3){
        printf("Triangulo Isosceles\n");
    }else{
        printf("Triangulo Escaleno\n");
    }

    return 0;
}
