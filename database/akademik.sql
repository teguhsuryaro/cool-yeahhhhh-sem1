CREATE TABLE mahasiswa (
    nim CHAR(9) PRIMARY KEY,
    nama_mahasiswa VARCHAR(100),
    angkatan INT,
    prodi VARCHAR(50),
    ipk DECIMAL(3,2)
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
    prodi VARCHAR(100),
    IPK DECIMAL(3,2),
    tahun_lulus INT
);

INSERT INTO mahasiswa VALUES
('H1D025079', 'Teguh Surya Romadon', 2025, 'Informatika', 3.85),
('H1S025789', 'Cristiano Ronaldo', 2025, 'Sistem Informasi', 3.45),
('H1D025264', 'Lionel Messi', 2025, 'Informatika', 3.90),
('H1T025323', 'Dani Carvajal', 2025, 'Teknologi Informasi', 3.70),
('H1S025998', 'Neymar Junior', 2025, 'Sistem Informasi', 3.55),
('H1T025887', 'Kevin De Bruyne', 2025, 'Teknologi Informasi', 3.80),
('H1D025356', 'Erling Haaland', 2025, 'Informatika', 3.60),
('H1D025444', 'Kylian Mbappe', 2025, 'Informatika', 3.50),
('H1S025555', 'Robert Lewandowski', 2025, 'Sistem Informasi', 3.40),
('H1T025666', 'Marc Andre Ter Stegen', 2025, 'Teknologi Informasi', 3.75),
('H1D025777', 'Jude Bellingham', 2025, 'Informatika', 3.95);

INSERT INTO dosen_pembimbing VALUES
('D001', 'Helmi Roichatul Jannah, M.Kom'),
('D002', 'Zinedine Zidane'),
('D003', 'Pep Guardiola');

INSERT INTO bimbingan VALUES
('H1D025079', 'D001'),
('H1S025789', 'D002'),
('H1D025264', 'D003'),
('H1T025323', 'D002'),
('H1S025998', 'D003'),
('H1T025887', 'D003'),
('H1D025356', 'D001'),
('H1D025444', 'D002'),
('H1S025555', 'D001'),
('H1T025666', 'D003'),
('H1D025777', 'D002');


INSERT INTO mata_kuliah VALUES

('IF1001', 'Pemrograman Dasar', 3),
('IF1002', 'Basis Data', 3),
('IF1003', 'Struktur Data', 3),
('IF1004', 'Arsitektur Komputer', 3),
('IF1005', 'Kecerdasan Buatan', 3),
('IF1006', 'Algoritma dan Pemrograman', 3),
('IF1007', 'Pemrograman Web', 3),
('IF1008', 'Sistem Operasi', 3),
('IF1009', 'Analisis dan Desain Sistem', 3),
('IF1010', 'Jaringan Komputer', 3),

('SI2001', 'Basis Data', 3),
('SI2002', 'Analisis Sistem Informasi', 3),
('SI2003', 'Pemrograman Web', 3),
('SI2004', 'Sistem Informasi Manajemen', 3),
('SI2005', 'E-Business', 3),

('TI3001', 'Basis Data', 3),
('TI3002', 'Jaringan Komputer', 3),
('TI3003', 'Keamanan Informasi', 3),
('TI3004', 'Pemrograman Berorientasi Objek', 3),
('TI3005', 'Manajemen Proyek TI', 3);

INSERT INTO krs VALUES
('H1D025079', 'IF1001'),
('H1D025079', 'IF1002'),
('H1D025079', 'IF1003'),
('H1D025079', 'IF1006'),

('H1S025789', 'SI2001'),
('H1S025789', 'SI2002'),
('H1S025789', 'SI2003'),

('H1D025264', 'IF1002'),
('H1D025264', 'IF1004'),
('H1D025264', 'IF1009'),

('H1T025323', 'TI3001'),
('H1T025323', 'TI3003'),

('H1S025998', 'SI2003'),
('H1S025998', 'SI2004'),

('H1T025887', 'TI3002'),
('H1T025887', 'TI3005'),

('H1D025356', 'IF1007'),
('H1D025356', 'IF1010'),

('H1D025444', 'IF1001'),
('H1D025444', 'IF1002'),

('H1S025555', 'SI2002'),
('H1S025555', 'SI2005'),

('H1T025666', 'TI3004'),
('H1T025666', 'TI3005'),

('H1D025777', 'IF1003'),
('H1D025777', 'IF1009');


INSERT INTO alumni VALUES
('H1D018089', 'Xavi Hernandez', "Informatika", 3.90, 2022),
('H1D021056', 'Luka Modric', "Sistem Informasi", 3.89, 2025),
('H1D017045', 'Andres Iniesta', "Teknologi Informasi", 3.92, 2021),
('H1D019078', 'Gerard Pique', "Sistem Informasi", 3.64, 2023),
('H1D020032', 'Sergio Ramos', "Informatika", 3.65, 2024);