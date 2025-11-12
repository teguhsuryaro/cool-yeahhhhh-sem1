#include <stdio.h>
#include <math.h>
#define MAXROWS 30
#define MAXCOLS 30

void readinput(int a[][MAXCOLS], int m, int n) {
    int row, col;
    for (row = 0; row < m; ++row) {
        printf("Masukan data untuk baris ke-%2d:\n", row + 1);
        for (col = 0; col < n; ++col)
            scanf("%d", &a[row][col]);
    }

    printf("\nTABLE 1\n");
    for (row = 0; row < m; ++row) {
        printf("\n");
        for (col = 0; col < n; ++col)
            printf(" %d ", a[row][col]);
    }
}

void largest(int a[][MAXCOLS], int m, int n) {
    int i, j, largest;
    largest = a[0][0];
    for (i = 0; i < m; ++i) {
        for (j = 0; j < n; ++j) {
            if (a[i][j] > largest)
                largest = a[i][j];
        }
    }
    printf("\nElemen terbesar matriks adalah %d\n", largest);
}

int main() {
    int nrows, ncols;
    int a[MAXROWS][MAXCOLS];

    printf("Berapa banyaknya baris matrix? ");
    scanf("%d", &nrows);

    printf("Berapa banyaknya kolom matrix? ");
    scanf("%d", &ncols);

    printf("Table:\n");
    readinput(a, nrows, ncols);
    largest(a, nrows, ncols);

    return 0;
}

