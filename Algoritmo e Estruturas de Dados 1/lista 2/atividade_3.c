#include <stdio.h>

int main(){
    double n1, n2, n3, t;

    printf("Primeiro numero: ");
    scanf("%lf", &n1);

    printf("Segundo numero: ");
    scanf("%lf", &n2);

    printf("Terceiro numero: ");
    scanf("%lf", &n3);

    if((n1 + n2) > n3){
        printf("Pode ser um lado do triangulo\n");
    }else if((n1 + n3) > n2){
        printf("Pode ser um lado do triangulo\n");
    }else if((n2 + n3) > n1){
        printf("Pode ser um lado do triangulo\n");
    }else{
        printf("Nao pode ser um lado do triangulo\n");
    }

    return 0;
}