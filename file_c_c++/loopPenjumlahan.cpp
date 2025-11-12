#include <iostream>
using namespace std;
int angka,hasil,i;
int main() {

    //minta user input 5 angka
    for(i = 1; i <= 5 ; i++) {
        cout<<"Masukkan angka : ";
        cin>>angka;
        hasil = hasil +angka;
    }
    cout<<"Hasil penjumlahan : "<< hasil;

    return 0;
}