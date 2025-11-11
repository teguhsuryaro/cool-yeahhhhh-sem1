print("\t*** Menghitung Volume Prisma Segitiga ***\n")

alas_segitiga = float(input("Masukkan Alas (cm) : "))
tinggi_segitiga = float(input("Masukkan Tinggi Segitiga (cm) : "))
tinggi_prisma = float(input("Masukkan Tinggi Prisma (cm) : "))

luas_alas = 0.5 * alas_segitiga * tinggi_segitiga
volume_prisma = luas_alas * tinggi_prisma

print(f"\nLuas Alas Segitiga = {luas_alas} cm²")
print(f"Volume Prisma Segitiga = {volume_prisma} cm³")