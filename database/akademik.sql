CREATE TABLE mahasiswa (
    nim CHAR(9) PRIMARY KEY,
    nama_mahasiswa VARCHAR(100),
    angkatan INT
);

CREATE TABLE dosen_pembimbing (
    id_dosen CHAR(5) PRIMARY KEY,
    nama_dosen VARCHAR(100)
);

CREATE TABLE bimbingan (
    nim CHAR(9),
    id_dosen CHAR(5),
    FOREIGN KEY (nim) REFERENCES mahasiswa(nim),
    FOREIGN KEY (id_dosen) REFERENCES dosen_pembimbing(id_dosen)
);

CREATE TABLE mata_kuliah (
    kode_mk CHAR(6) PRIMARY KEY,
    nama_mk VARCHAR(100),
    sks INT
);

CREATE TABLE krs (
    nim CHAR(9),
    kode_mk CHAR(6),
    FOREIGN KEY (nim) REFERENCES mahasiswa(nim),
    FOREIGN KEY (kode_mk) REFERENCES mata_kuliah(kode_mk)
);

CREATE TABLE alumni (
    nim CHAR(9) PRIMARY KEY,
    nama_alumni VARCHAR(100),
    tahun_lulus INT
);

-- Data Mahasiswa
INSERT INTO mahasiswa VALUES
('H1D025079', 'Teguh Surya Romadon', 2025),
('H1D025789', 'Cristiano Ronaldo', 2025),
('H1D025264', 'Lionel Messi', 2025),
('H1D025323', 'Dani Carvajal', 2025),
('H1D025998', 'Neymar Junior', 2025),
('H1D025887', 'Kevin De Bruyne', 2025),
('H1D025356', 'Erling Haaland', 2025);

-- Data Dosen Pembimbing
INSERT INTO dosen_pembimbing VALUES
('D001', 'Helmi Roichatul Jannah, M.Kom'),
('D002', 'Zinedine Zidane'),
('D003', 'Pep Guardiola');

-- Data Bimbingan
INSERT INTO bimbingan VALUES
('H1D025079', 'D001'),
('H1D025789', 'D002'),
('H1D025264', 'D003'),
('H1D025323', 'D002'),
('H1D025998', 'D003'),
('H1D025887', 'D003'),
('H1D025356', 'D003');

-- Data Mata Kuliah
INSERT INTO mata_kuliah VALUES
('IF1001', 'Pemrograman Dasar', 3),
('IF1002', 'Basis Data', 3),
('IF1003', 'Struktur Data', 3),
('IF1004', 'Arsitektur Komputer', 3),
('IF1005', 'Jaringan Komputer', 3),
('IF1006', 'Pemrograman Web', 3),
('IF1007', 'Kecerdasan Buatan', 3);

-- Data KRS (hubungan mahasiswa dan mata kuliah)
INSERT INTO krs VALUES
('H1D025079', 'IF1001'),
('H1D025079', 'IF1002'),
('H1D025079', 'IF1003'),
('H1D025789', 'IF1002'),
('H1D025789', 'IF1004'),
('H1D025264', 'IF1001'),
('H1D025264', 'IF1006'),
('H1D025323', 'IF1002'),
('H1D025998', 'IF1005'),
('H1D025887', 'IF1007'),
('H1D025356', 'IF1003'),
('H1D025356', 'IF1004');

-- Data Alumni
INSERT INTO alumni VALUES
('H1D018089', 'Xavi Hernandez', 2022),
('H1D021056', 'Luka Modric', 2025),
('H1D017045', 'Andres Iniesta', 2021),
('H1D019078', 'Gerard Pique', 2023),
('H1D020032', 'Sergio Ramos', 2024);
