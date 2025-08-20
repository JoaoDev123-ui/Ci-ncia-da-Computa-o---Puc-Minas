#include <stdio.h>

int main() {
    int n, u, d, c;

    printf("Numero: ");
    scanf("%d", &n);

    c = n / 100;     // centena
    n = n % 100;

    d = n / 10;      // dezena
    n = n % 10;

    u = n;           // unidade

    printf("Numero invertido: %d %d %d\n", u, d, c);

    return 0;
}