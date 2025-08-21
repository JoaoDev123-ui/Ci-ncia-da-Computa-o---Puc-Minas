#include <stdio.h>

int main(){
    int n1, n2, dif, div;

    printf("Primeiro numero: ");
    scanf("%d", &n1);

    printf("Segundo numero: ");
    scanf("%d", &n2);

    dif = n2 - n1;

    printf("Diferenca: %d\n", dif);

    if(n2 != 0){
        div = n1 / n2;
    }

    printf("Divisao: %d\n", div);

    return 0;
}