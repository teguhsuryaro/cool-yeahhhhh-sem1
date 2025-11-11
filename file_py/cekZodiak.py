print("\t*** Cek Zodiak Kamu ***\n")

tanggal = int(input("Masukkan Tanggal Lahir : "))
bulan = int(input("Masukkan Bulan Lahir (Angka) : "))
tahun = int(input("Masukkan Tahun Lahir : "))
print("------------------------------")

umur = 2025 - tahun
if umur >= 17:
    if bulan == 1:
        if tanggal >= 1 and tanggal <= 19:
            print("Zodiak : Capricorn")
        elif tanggal >= 20 and tanggal <=31:
            print("Zodiak : Aquarius")
    elif bulan == 2:
        if tanggal >= 1 and tanggal <= 18:
            print("Zodiak : Aquarius")
        elif tanggal >= 19 and tanggal <=29:
            print("Zodiak : Pisces")
    elif bulan == 3:
        if tanggal >= 1 and tanggal <= 20:
            print("Zodiak : Pisces")
        elif tanggal >= 21 and tanggal <=31:
            print("Zodiak : Aries")
    elif bulan == 4:
        if tanggal >= 1 and tanggal <= 19:
            print("Zodiak : Aries")
        elif tanggal >= 20 and tanggal <=30:
            print("Zodiak : Taurus")
    elif bulan == 5:
        if tanggal >= 1 and tanggal <= 20:
            print("Zodiak : Taurus")
        elif tanggal >= 21 and tanggal <=31:
            print("Zodiak : Gemini")
    elif bulan == 6:
        if tanggal >= 1 and tanggal <= 20:
            print("Zodiak : Gemini")
        elif tanggal >= 21 and tanggal <=30:
            print("Zodiak : Cancer")
    elif bulan == 7:
        if tanggal >= 1 and tanggal <= 22:
            print("Zodiak : Cancer")
        elif tanggal >= 23 and tanggal <=31:
            print("Zodiak : Leo")
    elif bulan == 8:
        if tanggal >= 1 and tanggal <= 22:
            print("Zodiak : Leo")
        elif tanggal >= 23 and tanggal <=31:
            print("Zodiak : Virgo")
    elif bulan == 9:
        if tanggal >= 1 and tanggal <= 22:
            print("Zodiak : Virgo")
        elif tanggal >= 23 and tanggal <=30:
            print("Zodiak : Libra")
    elif bulan == 10:
        if tanggal >= 1 and tanggal <= 22:
            print("Zodiak : Libra")
        elif tanggal >= 23 and tanggal <=31:
            print("Zodiak : Scorpio")
    elif bulan == 11:
        if tanggal >= 1 and tanggal <= 21:
            print("Zodiak : Scorpio")
        elif tanggal >= 22 and tanggal <=30:
            print("Zodiak : Sagitarius")
    elif bulan == 12:
        if tanggal >= 1 and tanggal <= 21:
            print("Zodiak : Sagitarius")
        elif tanggal >= 21 and tanggal <=31:
            print("Zodiak : Capricorn")
    else:
        print("jawabanmu nguawurrr!!")
else:
    print("usiamu belum cukup kidss!!")