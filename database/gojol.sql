create table drivers(
    drv_id char (5) NOT NULL primary key,
    drv_name varchar (25) NOT NULL,
    drv_address varchar (30) NOT NULL,
    drv_lisn char (15) NOT NULL,
    drv_contact varchar (15) NOT NULL UNIQUE,
    drv_email varchar (30) NOT NULL

);

CREATE TABLE cust (
     cust_id CHAR(5) NOT NULL PRIMARY KEY,
     cust_name VARCHAR(255) NOT NULL,
     cust_address VARCHAR(255),
     cust_city VARCHAR(50),
     cust_contact VARCHAR(15) NOT NULL UNIQUE,
     cust_email VARCHAR(50) NOT NULL
);

create table routes(
    rout_id char (5) NOT NULL primary key,
    rout_from VARCHAR(255) NOT NULL,
    rout_to VARCHAR(255) NOT NULL,
    rout_distance int NOT NULL
);

CREATE TABLE vehicle (
     veh_plate CHAR(10) NOT NULL PRIMARY KEY,
     veh_model VARCHAR(50) NOT NULL,
     veh_year INT NOT NULL,
     veh_color VARCHAR(30) NOT NULL,
     drv_id char (5) NOT NULL,
     FOREIGN KEY (drv_id) REFERENCES drivers (drv_id)
);

CREATE TABLE promotion (
    promo_id char(5) NOT NULL PRIMARY KEY,
    promo_disc DECIMAL(5, 2),
    promo_name VARCHAR(40),
    promo_desc TEXT,
    promo_start DATETIME,
    promo_end DATETIME
);

CREATE TABLE fare (
    far_id CHAR(5) NOT NULL PRIMARY KEY,
    far_amount INT NOT NULL,
    rout_id char (5) NOT NULL,
    veh_plate CHAR(10) NOT NULL,
    foreign key (rout_id) references routes(rout_id),
    foreign key (veh_plate) references vehicle(veh_plate)
);

CREATE TABLE orders (
    order_id CHAR(5) NOT NULL PRIMARY KEY,
    order_time DATETIME NOT NULL,
    pickup_address VARCHAR(255) NOT NULL,
    destination_address VARCHAR(255) NOT NULL,
    order_status ENUM('Menunggu','Dalam_Perjalanan','Selesai','Dibatalkan'),
    cust_id CHAR(5) NOT NULL,
    drv_id char (5) NOT NULL,
    far_id CHAR(5) NOT NULL,
    promo_id char(5) NOT NULL,
    foreign key (cust_id) references cust(cust_id),
    foreign key (drv_id) references drivers(drv_id),
    foreign key (far_id) references fare(far_id),
    foreign key (promo_id) references promotion(promo_id)
);

create table payment(
    pay_id char (5) NOT NULL primary key,
    pay_type varchar (25) NOT NULL,
    pay_rate INT NOT NULL,
    order_id CHAR(5) NOT NULL,
    foreign key (order_id) references orders(order_id)
);

CREATE TABLE review (
    rev_id CHAR(5) NOT NULL PRIMARY KEY,
    comment VARCHAR(300),
    rate INT CHECK(rate BETWEEN 1 AND 5),
    order_id CHAR(5) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders (order_id)
);

insert into drivers (drv_id, drv_name, drv_address, drv_city, drv_contact, drv_email) values
('D001', 'Budi Santoso', 'Jl. Merdeka No. 1', 'Jakarta', '081234567890', 'budi@example.com'),
('D002', 'Siti Aminah', 'Jl. Sudirman No. 2', 'Bandung', '082345678901', 'siti@example.com');

insert into cust (cust_id, cust_name, cust_address, cust_city, cust_contact, cust_email) values
('C001', 'Andi Wijaya', 'Jl. Thamrin No. 3', 'Jakarta', '081234567890', 'andi@example.com'),
('C002', 'Rina Kusuma', 'Jl. Asia Afrika No. 4', 'Bandung', '082345678901', 'rina@example.com');

insert into routes (rout_id, rout_from, rout_to, rout_distance) values
('R001', 'Jakarta', 'Bandung', 150),
('R002', 'Bandung', 'Yogyakarta', 400);

insert into vehicle (veh_plate, veh_model, veh_year, veh_color, drv_id) values
('B1234CD', 'Toyota Avanza', 2020, 'Silver', 'D001'),
('D5678EF', 'Honda Mobilio', 2019, 'Black', 'D002');


insert into promotion (promo_id, promo_disc, promo_name, promo_desc, promo_start, promo_end) values
('P001', 10.00, 'Diskon Awal Tahun', 'Diskon 10% untuk semua perjalanan di awal tahun', '2024-01-01 00:00:00', '2024-01-31 23:59:59'),
('P002', 15.00, 'Diskon Akhir Pekan', 'Diskon 15% untuk perjalanan di akhir pekan', '2024-02-01 00:00:00', '2024-02-29 23:59:59');

insert into fare (far_id, far_amount, rout_id, veh_plate) values
('F001', 50000, 'R001', 'B1234CD'),
('F002', 150000, 'R002', 'D5678EF');

insert into orders (order_id, order_time, pickup_address, destination_address, order_status, cust_id, drv_id, far_id, promo_id) values
('O001', '2024-01-15 10:00:00', 'Jl. Thamrin No. 3', 'Jl. Sudirman No. 2', 'Menunggu', 'C001', 'D001', 'F001', 'P001'),
('O002', '2024-01-20 14:30:00', 'Jl. Asia Afrika No. 4', 'Jl. Merdeka No. 1', 'Dalam_Perjalanan', 'C002', 'D002', 'F002', 'P002');

insert into payment (pay_id, order_id, pay_amount, pay_date, pay_method) values
('PAY001', 'O001', 45000, '2024-01-15 10:30:00', 'Credit Card'),
('PAY002', 'O002', 127500, '2024-01-20 15:00:00', 'Cash');

insert into review (rev_id, order_id, rev_rating, rev_comment, rev_date) values
('REV001', 'O001', 5, 'Pengalaman yang sangat menyenangkan!', '2024-01-15 11:00:00'),
('REV002', 'O002', 4, 'Layanan baik, tapi bisa lebih cepat.', '2024-01-20 16:00:00');