def rata(a):
    i = 1
    hasil = 0
    while (i <= a):
        b = int(input(f"Masukkan angka ke-{i} : "))
        hasil += b
        
        i += 1
        
    rata2 = hasil / a
    return rata2

a = int(input("Masukkan jumlah angka: "))
print(f"Hasil rata-rata dari {a} angka adalah {rata(a)}")