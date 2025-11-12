#include <stdio.h>

void hitungLuas(float *p, float *l, float *luas) {
    *luas = (*p) * (*l);
}

void hitungKeliling(float *p, float *l, float *keliling) {
    *keliling = 2 * ((*p) + (*l));
}

int main() {
    float panjang, lebar, luas, keliling;

    printf("Masukkan panjang persegi panjang: ");
    scanf("%f", &panjang);
    printf("Masukkan lebar persegi panjang: ");
    scanf("%f", &lebar);

    hitungLuas(&panjang, &lebar, &luas);
    hitungKeliling(&panjang, &lebar, &keliling);

    printf("\n=== Hasil Perhitungan ===\n");
    printf("Luas Persegi Panjang     = %.2f\n", luas);
    printf("Keliling Persegi Panjang = %.2f\n", keliling);

    return 0;
}
