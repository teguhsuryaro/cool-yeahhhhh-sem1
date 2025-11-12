#include <stdio.h>

struct jam {
    int jam;
    int menit;
    int detik;
};

void coba(struct jam j) {
    if (j.detik >= 60){
        j.menit += 1;
        j.detik -= 60;
        if (j.menit >= 60){
            j.jam += 1;
            j.menit -= 60;
        }
    };

    printf("%d jam, %d menit, %d detik", j.jam,j.menit,j.detik);
}

int main() {
    struct jam j;
    
    printf("Masukkan detik : ");
    scanf("%d", &j.detik);
    printf("Masukkan menit : ");
    scanf("%d", &j.menit);
    printf("Masukkan jam : ");
    scanf("%d", &j.jam);
    
    coba(j);
    return 0;
}