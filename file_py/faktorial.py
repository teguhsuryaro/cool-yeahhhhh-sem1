def faktorial(a):
    i = 1
    faktor = 1
    hasil = 0
    while (i <= a):
        faktor = faktor * i
        i += 1
        
    return faktor


a = int(input("Masukkan angka: "))
result = faktorial(a)
print(f"Hasil faktorial dari {a} adalah {result}")
