#include <iostream>
using namespace std;

int main() {
    int i = 1;
    int sum = 0;
    int faktorial = 1;
    int j = 1;
    while (i <= 6) {
        

        // hitung faktorial i
        while (j <= i) {
            faktorial *= j;
            j++;
        }

        // tambahkan ke total
        sum += faktorial;

        i += 2; // lompat langsung ke bilangan ganjil berikutnya
    }

    cout << "Jumlah faktorial bilangan ganjil dari 1-6 adalah: " << sum << endl;

    return 0;
}
