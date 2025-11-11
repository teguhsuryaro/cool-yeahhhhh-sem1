
terkecil = int(input("Masukkan angka ke-1 : "))
for i in range (1,11):
    n = int(input(f"Masukkan angka ke-{i} : "))
    if(n <= terkecil):
        terkecil = n
        
print(f"angka terkecil adalah : {terkecil}")