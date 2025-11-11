n = int(input("Masukkan Suhu : "))

if n > 30:
    print("Cuaca Panas")
elif n > 20 and n < 30:
    print("Cuaca Hangat")
else:
    print("Cuaca Dingin")