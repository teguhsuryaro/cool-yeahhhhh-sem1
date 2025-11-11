CREATE TABLE petinju (
    id_petinju CHAR(4) NOT NULL PRIMARY KEY,
    nama_petinju VARCHAR(255) NOT NULL,
    kelas_berat ENUM('Amatir','Semi Pro'),
    asal_daerah ENUM('Purwokerto','Banyumas','Cilacap','Banjarnegara','Purbalingga')
);

CREATE TABLE pelatih (
    id_pelatih CHAR(4) NOT NULL PRIMARY KEY,
    nama_pelatih VARCHAR(255) NOT NULL,
    lisensi ENUM('Nasional','Internasional'),
    pengalaman_tahun INT(2)
);

CREATE TABLE pertandingan (
    id_pertandingan CHAR(4) NOT NULL PRIMARY KEY,
    petinjuA VARCHAR(255) NOT NULL,
    petinjuB VARCHAR(255) NOT NULL,
    tanggal DATE NOT NULL
);

CREATE TABLE hasil(
    id_hasil CHAR(4) NOT NULL PRIMARY KEY,
    id_pertandingan CHAR(4) NOT NULL,
    pemenang VARCHAR(255) NOT NULL,
    skor VARCHAR(5) NOT NULL,
    FOREIGN KEY (id_pertandingan) REFERENCES pertandingan (id_pertandingan)
);

CREATE TABLE event (
    id_event CHAR(4) NOT NULL PRIMARY KEY,
    nama_event VARCHAR(255) NOT NULL,
    periode CHAR(4),
    jumlah_pertandingan INT(2)
);

INSERT INTO petinju VALUES
('PT01','Farhan Hakim','Amatir','Banyumas'),
('PT02','Aqil Karomy','Amatir','Cilacap'),
('PT03','Satria Megantara','Semi Pro','Purbalingga'),
('PT04','Aufa Algifari','Semi Pro','Purwokerto'),
('PT05','Yoga Nugraha','Amatir','Banjarnegara');

INSERT INTO pelatih VALUES
('PL01','Sugeng Wijaya','Nasional',4),
('PL02','Nova Rianto','Nasional',2),
('PL03','Catur Patria','Internasional',20),
('PL04','Jaka Surya','Internasional',16),
('PL05','Bambang Putra','Nasional',5);

INSERT INTO pertandingan VALUES
('PD01','Farhan Hakim','Aqil karomy','2025-01-12'),
('PD02','Aufa Algifari','Satria Magenta','2025-01-20'),
('PD03','Yoga Nugraha','Farhan Hakim','2025-02-02'),
('PD04','Aqil Karomy','Satria Magenta','2025-02-18'),
('PD05','Aufa Algifari','Yoga Nugraha','2025-02-26');

INSERT INTO hasil VALUES
('HS01','PD01','Aqil Karomy','18-20'),
('HS02','PD02','Aufa Algifari','20-15'),
('HS03','PD03','Farhan Hakim','11-20'),
('HS04','PD04','Satria Magenta','10-20'),
('HS05','PD05','Aufa Algifari','20-17');

INSERT INTO event VALUES
('EV01','Ambatron Boxing Championship','2025',50),
('EV02','Boxing Cup Purwokerto','2024',20),
('EV03','Purbalingga Gelut Day','2023',25),
('EV04','Banjar Combat Sport','2022',20),
('EV05','Cilacap Bergetar','2021',35);