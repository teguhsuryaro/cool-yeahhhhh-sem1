CREATE TABLE dosen_pembimbing (
    id_dosen_pembimbing CHAR(4) PRIMARY KEY,
    nama_dosen VARCHAR(100)
);

CREATE TABLE mahasiswa (
    nim CHAR(9) PRIMARY KEY,
    nama_mahasiswa VARCHAR(100),
    id_dosen_pembimbing CHAR(4),
    FOREIGN KEY (id_dosen_pembimbing) REFERENCES dosen_pembimbing(id_dosen_pembimbing)
);

CREATE TABLE mata_kuliah (
    kode_mk CHAR(4) PRIMARY KEY,
    nama_mk VARCHAR(100),
    dosen_pengampu CHAR(4),
    FOREIGN KEY (dosen_pengampu) REFERENCES dosen_pembimbing(id_dosen_pembimbing)
);

CREATE TABLE data_alumni (
    id_alumni INT PRIMARY KEY,
    nim CHAR(4),
    tahun_lulus YEAR,
    pekerjaan VARCHAR(100),
    FOREIGN KEY (nim) REFERENCES mahasiswa(nim)
);

INSERT INTO dosen_pembimbing VALUES
('D001', 'Mochammad Agri Triansyah, S.Kom., M.Kom'),
('D002', 'Dr. Siti Rahmawati, M.T.'),
('D003', 'Ir. Bambang Sutrisno, M.Kom'),
('D004', 'Dr. Nur Aini, M.T.');

INSERT INTO mahasiswa VALUES
('M001', 'Ahmad Fauzan', 'D001'),
('M002', 'Citra Dewi', 'D001'),
('M003', 'Budi Santoso', 'D002'),
('M004', 'Eka Lestari', 'D003'),
('M005', 'Hendra Saputra', 'D004');

INSERT INTO mata_kuliah VALUES
('MK01', 'Basis Data', 'D001'),
('MK02', 'Struktur Data', 'D002'),
('MK03', 'Pemrograman Web', 'D003'),
('MK04', 'Jaringan Komputer', 'D004');

INSERT INTO data_alumni VALUES
(1, 'M001', 2023, 'Backend Developer'),
(2, 'M002', 2024, 'Data Analyst'),
(3, 'M003', 2022, 'IT Support'),
(4, 'M004', 2023, 'Web Developer'),
(5, 'M005', 2021, 'Network Engineer');
