#include <stdio.h>
#include <math.h>
#define MAXROWS 30
#define MAXCOLS 30


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
