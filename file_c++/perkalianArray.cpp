#include <iostream>
using namespace std;

int main() {

    int A[2][2] = {{1,2},{3,4}};
    int B[2][2] = {{5,6},{7,8}};
    int C[2][2];



    C[0][0] = A[0][0]*B[0][0] + A[0][1]*B[1][0];
    C[0][1] = A[0][0]*B[0][1] + A[0][1]*B[1][1];
    C[1][0] = A[1][0]*B[0][0] + A[1][1]*B[1][0];
    C[1][1] = A[1][0]*B[0][1] + A[1][1]*B[1][1];
    // for (int i = 0; i < 2; i++) {
    //     for (int j = 0; j < 2; j++) {
    //         C[i][j] = 0;
    //         for (int k = 0; k < 2; k++) {
    //             C[i][j] += A[i][k] * B[k][j];
    //         }
    //     }
    // }

    cout << "Hasil perkalian matriks A x B:" << endl;
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++) {
            cout << C[i][j] << " ";
        }
        cout << endl;
    }

    return 0;
}
