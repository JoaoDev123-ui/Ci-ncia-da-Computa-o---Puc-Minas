#include <stdio.h>

int main(){
    int n;

    printf("Numero: ");
    scanf("%d", &n);

    if(n % 7 == 0){
        printf("Divisivel por 7\n");
    }else{
        printf("Nao e divisivel por 7\n");
    }

    return 0;
}