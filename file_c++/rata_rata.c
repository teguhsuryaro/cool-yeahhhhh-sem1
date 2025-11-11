#include <stdio.h>

float rata(int a) {
    int angka;
    int jumlah = 0;
    float rata2;
    for(int i = 1; i <= a; i++) {
        printf("Masukkan angka ke-%d : ", i, "\n");
        scanf("%d", &angka);
        jumlah = jumlah + angka;
    }
    
    rata2 = jumlah / a;
    return rata2;
}

int main() {
    int n;
    printf("Ingin masukkan berapa angka : ");
    scanf("%d", &n);
    printf("Rata-rata dari %d angka tersebut adalah : %f\n", n, rata(n));
    return 0;
}