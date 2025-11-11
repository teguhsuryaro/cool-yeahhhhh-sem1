#include <stdio.h>
int n = 0;
int angka = 0;
int terkecil;

int main(){
    printf("Masukkan angka ke-1 : ");
    scanf("%d",&terkecil);
    for(int i = 2; i <= 10; i++){
        printf("Masukkan angka ke-%d : ",i);
        scanf("%d",&angka);
        if(angka <= terkecil){
            terkecil = angka;
        }
    }
    printf("angka terkecil adalah %d",terkecil);
}