#include <stdio.h>
#include <math.h>

int main(){
    int h, m, x;

    printf("Horas: ");
    scanf("%d", &h);
    
    printf("Minutos: ");
    scanf("%d", &m);    

    h = h * 60; // quantos minutos na quantidade de horas
    x = h - m; 

    printf("Passaram %d minutos", x);

    return 0;
}