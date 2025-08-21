#include <stdio.h>

int main() {
    int a1, b1, c1;
    int a2, b2, c2;
    float x, y;

    printf("a1, b1, c1: ");
    scanf("%d %d %d", &a1, &b1, &c1);

    printf("a2, b2, c2: ");
    scanf("%d %d %d", &a2, &b2, &c2);

    int A1 = a1 * a2;
    int B1 = b1 * a2;
    int C1 = c1 * a2;

    int A2 = a2 * a1;
    int B2 = b2 * a1;
    int C2 = c2 * a1;

    int By = B1 - B2;
    int Cy = C1 - C2;

    if (By != 0) {
         y = (float)Cy / By;

        x = (float)(c1 - b1 * y) / a1;

        printf("x = %.2f, y = %.2f\n", x, y);
    } else {
        printf("Infinitas solucoes\n");
    }

    return 0;
}
