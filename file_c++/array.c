#include <stdio.h>

void main() {
    int ages[100];
    int i, j; // deklarasi variable i dan j

    // isi data ke array
    for (i = 0; i < 100; i++) {
        ages[i] = i;
    }

    // cetak isi data
    for (j = 0; j < 100; j++) {
        printf("%d\n", ages[j]); //sudah diperbaiki dari Printf -> printf
    }
}
