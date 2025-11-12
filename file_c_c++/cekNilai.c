#include <stdio.h>


int main() {
    int n;
    printf("Masukkan nilai 1-100 : ");
    scanf("%d", &n);

    if(n >= 85){
        printf("A");
    } else if(n >= 70){
        printf("B");
    } else if(n >= 50){
        printf("C");
    } else {
        printf("D");
    }

    return 0;
}
