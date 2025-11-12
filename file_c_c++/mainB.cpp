#include <iostream>
using namespace std;

int main() {
    int baris,i,j;

    cout << "Masukkan Jumlah Baris : ";
    cin >> baris;

    for (i = baris; i >= 1; i--) {
        for (j = 1; j <= i; j++) {
            cout << "*";
        }
        cout << endl;
    }

    return 0;
}
