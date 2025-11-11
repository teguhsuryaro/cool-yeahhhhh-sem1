#include <stdio.h>


int main() {
    int n;
    printf("Masukkan nilai : ");
    scanf("%d", &n);

    if(n > 0){
        printf("Angka tersebut adalah positif");
    } else if(n < 0){
        printf("Angka tersebut adalah negatif");
    } else {
        printf("Angka tersebut adalah 0");
    }

    return 0;
}

