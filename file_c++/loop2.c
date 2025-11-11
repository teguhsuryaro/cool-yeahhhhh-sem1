#include <stdio.h>

int a;
int hasil;

int main(){
    printf("Masukkan Angka : ");
    scanf("%d",&a);

    int i = 1;
    while(i <= a){
        hasil += i;
        i++;
    }

    printf("hasil deret penjumlahan %d adalah %d",a,hasil);

    return 0;
}