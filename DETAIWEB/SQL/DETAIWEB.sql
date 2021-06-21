CREATE DATABASE  DETAIWEB
go
--  ON PRIMARY
--(
--	name = DETAIWEB_primary,
--	Filename = 'E:\CHAN\sql\DETAIWEB_primary.mdf',
--	Size =  3MB,
--	Maxsize = 10MB,
--	filegrowth = 10%
--)
--LOG ON
--(
--	name  = DETAIWEB_log,
--	Filename = 'E:\CHAN\sql\DETAIWEB_log.ldf',
--	Size = 1MB,
--	Maxsize  = 5MB,
--	Filegrowth  = 10%
--)

USE [DETAIWEB]
go
CREATE TABLE LOAI
(
	MALOAI CHAR(10) NOT NULL PRIMARY KEY,
	TENLOAI NVARCHAR(50)
)

CREATE TABLE SANPHAM
(
    MA INT PRIMARY KEY IDENTITY,
	TENSP NVARCHAR(100),
	TSKT NVARCHAR(300),
	BAOHANH NVARCHAR(30),
	TINHTRANG NVARCHAR(50),
	GIA INT,
	MALOAI CHAR(10),
	HINH CHAR(15),
	CONSTRAINT FK_SP_LOAI FOREIGN KEY (MALOAI) REFERENCES LOAI(MALOAI)
)
CREATE TABLE KHACHHANG
(
	MAKH INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	HOKH NVARCHAR(50),
	TENKH NVARCHAR(50),
	GIOITINH BIT,
	EMAIL NVARCHAR(30),
	SDT NVARCHAR(15),
	MATKHAU NVARCHAR(50),
)
INSERT INTO LOAI
VALUES
('VS',N'VSMART'),
('VI',N'VIVO'),
('XI',N'XIAOMI'),
('SS',N'SAMSUNG'),
('IP',N'IPHONE'),
('OP',N'OPPO'),
('NO',N'NOKIA'),
('RE',N'REALME');

INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'iPhone 11 Pro Max 64GB ',N'Màn hình:	OLED, 6.5", Super Retina XDR
Hệ điều hành:	iOS 13
Camera sau:	3 camera 12 MP
Camera trước:	12 MP
CPU:	Apple A13 Bionic 6 nhân
RAM:	4 GB
Bộ nhớ trong:	64 GB',N'24 tháng','NEW - 100%',33990000,'IP','IP01.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'iPhone Xs Max 256GB',N'Màn hình:	OLED, 6.5", Super Retina
Hệ điều hành:	iOS 13
Camera sau:	Chính 12 MP & Phụ 12 MP
Camera trước:	7 MP
CPU:	Apple A12 Bionic 6 nhân
RAM:	4 GB
Bộ nhớ trong:	256 GB',N'36 tháng','NEW - 100%',30990000,'IP','IP02.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'iPhone SE 64GB (2020)',N'Màn hình:	IPS LCD, 4.7", Retina
Hệ điều hành:	iOS 13
Camera sau:	12 MP
Camera trước:	7 MP
CPU:	Apple A13 Bionic 6 nhân
RAM:	3 GB
Bộ nhớ trong:	64 GB',N'36 tháng','NEW - 100%',12990000,'IP','IP03.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'iPhone 8 Plus 64GB',N'Màn hình:	LED-backlit IPS LCD, 5.5", Retina HD
Hệ điều hành:	iOS 13
Camera sau:	Chính 12 MP & Phụ 12 MP
Camera trước:	7 MP
CPU:	Apple A11 Bionic 6 nhân
RAM:	3 GB
Bộ nhớ trong:	64 GB',N'36 tháng','NEW - 100%',14990000,'IP','IP04.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'iPhone 7 Plus 32GB',N'Màn hình:	LED-backlit IPS LCD, 5.5", Retina HD
Hệ điều hành:	iOS 13
Camera sau:	Chính 12 MP & Phụ 12 MP
Camera trước:	7 MP
CPU:	Apple A10 Fusion 4 nhân
RAM:	3 GB
Bộ nhớ trong:	32 GB',N'36 tháng','NEW - 100%',10990000,'IP','IP05.PNG')

INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Samsung Galaxy Note 10+',N'Màn hình:	Dynamic AMOLED, 6.8", Quad HD+ (2K+)
Hệ điều hành:	Android 9.0 (Pie)
Camera sau:	Chính 12 MP & Phụ 12 MP, 16 MP, TOF 3D
Camera trước:	10 MP
CPU:	Exynos 9825 8 nhân
RAM:	12 GB
Bộ nhớ trong:	256 GB',N'24 tháng','NEW - 100%',17990000,'SS','SS01.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Samsung Galaxy Z Flip" SATA 3',N'Màn hình:	Chính: Dynamic AMOLED, phụ: Super AMOLED, 6.7", Quad HD (2K)
Hệ điều hành:	Android 10
Camera sau:	Chính 12 MP & Phụ 12 MP
Camera trước:	10 MP
CPU:	Snapdragon 855+ 8 nhân
RAM:	8 GB
Bộ nhớ trong:	256 GB',N'24 tháng','NEW - 100%',36000000,'SS','SS02.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Samsung Galaxy A71',N'Màn hình:	Super AMOLED, 6.7", Full HD+
Hệ điều hành:	Android 10
Camera sau:	Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP
Camera trước:	32 MP
CPU:	Snapdragon 730 8 nhân
RAM:	8 GB
Bộ nhớ trong:	128 GB',N'60 tháng','NEW - 100%',8990000,'SS','SS03.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Samsung Galaxy A51',N'Màn hình:	Super AMOLED, 6.5", Full HD+
Hệ điều hành:	Android 10
Camera sau:	Chính 48 MP & Phụ 12 MP, 5 MP, 5 MP
Camera trước:	32 MP
CPU:	Exynos 9611 8 nhân
RAM:	6 GB
Bộ nhớ trong:	128 GB',N'36 tháng','NEW - 100%',7190000,'SS','SS04.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Samsung Galaxy A01',N'Màn hình:	PLS TFT LCD, 5.7", HD+
Hệ điều hành:	Android 10
Camera sau:	Chính 13 MP & Phụ 2 MP
Camera trước:	5 MP
CPU:	Snapdragon 439 8 nhân
RAM:	2 GB
Bộ nhớ trong:	16 GB',N'36 tháng','NEW - 100%',2290000,'SS','SS05.PNG')

INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'OPPO Reno3 Pro',N'Màn hình:	Sunlight Super AMOLED, 6.4", Full HD+
Hệ điều hành:	Android 10
Camera sau:	Chính 64 MP & Phụ 13 MP, 8 MP, 2 MP
Camera trước:	Chính 44 MP & Phụ 2 MP
CPU:	MediaTek Helio P95 8 nhân
RAM:	8 GB
Bộ nhớ trong:	256 GB',N'36 tháng','NEW - 100%',11490000,'OP','OP01.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'OPPO A91',N'Màn hình:	AMOLED, 6.4", Full HD+
Hệ điều hành:	ColorOS 6.1 (Android 9.0)
Camera sau:	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP
Camera trước:	16 MP
CPU:	MediaTek Helio P70 8 nhân
RAM:	8 GB
Bộ nhớ trong:	128 GB',N'36 tháng','NEW - 100%',5490000,'OP','OP02.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'OPPO A5 (2020) ',N'Màn hình:	TFT, 6.5", HD+
Hệ điều hành:	Android 9.0 (Pie)
CPU:	Snapdragon 665 8 nhân
RAM:	4 GB
Bộ nhớ trong:	128 GB',N'36 tháng','NEW - 100%',4490000,'OP','OP03.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'OPPO Reno2 F',N'Màn hình:	AMOLED, 6.5", Full HD+
Hệ điều hành:	Android 9.0 (Pie)
Camera sau:	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP
Camera trước:	16 MP
CPU:	MediaTek Helio P70 8 nhân
RAM:	8 GB
Bộ nhớ trong:	128 GB',N'36 tháng','NEW - 100%',8990000,'OP','OP04.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Xiaomi Redmi 9A',N'Màn hình:	IPS LCD, 6.53", HD+
Hệ điều hành:	Android 10
Camera sau:	13 MP
Camera trước:	5 MP
CPU:	MediaTek Helio G25 8 nhân
RAM:	2 GB
Bộ nhớ trong:	32 GB',N'6 tháng','NEW - 100%',1990000,'XI','XI01.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Xiaomi Redmi Note 9 Pro',N'Màn hình:	IPS LCD, 6.67", Full HD+
Hệ điều hành:	Android 10
Camera sau:	Chính 64 MP & Phụ 8 MP, 5 MP, 2 MP
Camera trước:	16 MP
CPU:	Snapdragon 720G 8 nhân
RAM:	6 GB
Bộ nhớ trong:	128 GB',N'12 tháng','NEW - 100%',6990000,'XI','XI02.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Xiaomi Redmi Note 8 Pro',N'Màn hình:	IPS LCD, 6.53", Full HD+
Hệ điều hành:	Android 9.0 (Pie)
Camera sau:	Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP
Camera trước:	20 MP
CPU:	Mediatek Helio G90T 8 nhân
RAM:	6 GB
Bộ nhớ trong:	128 GB',N'12 tháng','NEW - 100%',5690000,'XI','XI03.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Xiaomi Mi Note 10 Lite',N'Màn hình:	AMOLED, 6.47", Full HD+
Hệ điều hành:	Android 10
Camera sau:	Chính 64 MP & Phụ 8 MP, 5 MP, 2 MP
Camera trước:	16 MP
CPU:	Snapdragon 730G 8 nhân
RAM:	8 GB
Bộ nhớ trong:	128 GB',N'36 tháng','NEW - 100%',9490000,'XI','XI04.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Xiaomi Redmi 9C',N'Màn hình:	IPS LCD, 6.53", HD+
Hệ điều hành:	Android 10
Camera sau:	Chính 13 MP & Phụ 2 MP, 2 MP
Camera trước:	5 MP
CPU:	MediaTek Helio G35 8 nhân
RAM:	2 GB
Bộ nhớ trong:	32 GB ',N'12 tháng','NEW - 100%',2490000,'XI','XI05.PNG')

INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Vivo Y30',N'Màn hình:	IPS LCD, 6.47", HD+
Hệ điều hành:	Android 10
Camera sau:	Chính 13 MP & Phụ 8 MP, 2 MP, 2 MP
Camera trước:	8 MP
CPU:	MediaTek Helio P35 8 nhân
RAM:	4 GB
Bộ nhớ trong:	128 GB',N'12 tháng','NEW - 100%',4990000,'VI','VI01.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Vivo V19 Neo',N'Màn hình:	Super AMOLED, 6.44", Full HD+
Hệ điều hành:	Android 10
Camera sau:	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP
Camera trước:	32 MP
CPU:	Snapdragon 675 8 nhân
RAM:	8 GB
Bộ nhớ trong:	128 GB',N'12 tháng','NEW - 100%',7390000,'VI','VI02.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Vivo U10',N'Màn hình:	IPS LCD, 6.35", HD+
Hệ điều hành:	Android 9.0 (Pie)
Camera sau:	Chính 13 MP & Phụ 8 MP, 2 MP
CPU:	Snapdragon 665 8 nhân
RAM:	4 GB
Bộ nhớ trong:	64 GB',N'12 tháng','NEW - 100%',3790000,'VI','VI03.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Vivo S1 Pro',N'Màn hình:	Super AMOLED, 6.38", Full HD+
Hệ điều hành:	Android 9.0 (Pie)
Camera sau:	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP
Camera trước:	32 MP
CPU:	Snapdragon 665 8 nhân
RAM:	8 GB
Bộ nhớ trong:	128 GB',N'12 tháng','NEW - 100%',6990000,'VI','VI04.PNG')

INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Realme C3',N'Màn hình:	IPS LCD, 6.5", HD+
Hệ điều hành:	Android 10
Camera sau:	Chính 12 MP & Phụ 2 MP, 2 MP
Camera trước:	5 MP
CPU:	MediaTek Helio G70 8 nhân
RAM:	3 GB
Bộ nhớ trong:	64 GB',N'36 tháng','NEW - 100%',3390000,'RE','RE01.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Realme 6',N'Màn hình:	IPS LCD, 6.5", Full HD+
Hệ điều hành:	Android 10
Camera sau:	Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP
Camera trước:	16 MP
CPU:	Mediatek Helio G90T 8 nhân
RAM:	8 GB
Bộ nhớ trong:	128 GB',N'36 tháng','NEW - 100%',6990000,'RE','RE02.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Realme 6 Pro',N'Màn hình:	IPS LCD, 6.6", Full HD+
Hệ điều hành:	Android 10
Camera sau:	Chính 64 MP & Phụ 12 MP, 8 MP, 2 MP
Camera trước:	Chính 16 MP & Phụ 8 MP
CPU:	Snapdragon 720G 8 nhân
RAM:	8 GB
Bộ nhớ trong:	128 GB',N'36 tháng','NEW - 100%',7990000,'RE','RE03.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Realme 5i',N'Màn hình:	IPS LCD, 6.52", HD+
Hệ điều hành:	Android 9.0 (Pie)
Camera trước:	8 MP
CPU:	Snapdragon 665 AIE 8 nhân
RAM:	4 GB
Bộ nhớ trong:	64 GB',N'36 tháng','NEW - 100%',3690000,'RE','RE04.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Realme 5 Pro',N'Màn hình:	IPS LCD, 6.3", Full HD+
Hệ điều hành:	Android 9.0 (Pie)
Camera sau:	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP
Camera trước:	16 MP
CPU:	Snapdragon 712 8 nhân
RAM:	4 GB
Bộ nhớ trong:	128 GB',N'36 tháng','NEW - 100%',4790000,'RE','RE05.PNG')

INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Vsmart Star 4',N'Cooler Màn hình:	IPS LCD, 6.09", HD+
Hệ điều hành:	Android 10
Camera sau:	Chính 8 MP & Phụ 5 MP
Camera trước:	8 MP
CPU:	MediaTek Helio P35 8 nhân
RAM:	3 GB
Bộ nhớ trong:	32 GB',N'36 tháng','NEW - 100%',2290000,'VS','VS01.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Vsmart Joy 3',N'Màn hình:	IPS LCD, 6.5", HD+
Hệ điều hành:	Android 9.0 (Pie)
Camera sau:	Chính 13 MP & Phụ 8 MP, 2 MP
Camera trước:	8 MP
CPU:	Snapdragon 632 8 nhân
RAM:	4 GB
Bộ nhớ trong:	64 GB',N'36 tháng','NEW - 100%',2990000,'VS','VS02.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Vsmart Active 3',N'Màn hình:	AMOLED, 6.39", Full HD+
Hệ điều hành:	Android 9.0 (Pie)
Camera sau:	Chính 48 MP & Phụ 8 MP, 2 MP
Camera trước:	16 MP
CPU:	MediaTek Helio P60 8 nhân
RAM:	6 GB
Bộ nhớ trong:	64 GB',N'36 tháng','NEW - 100%',3490000,'VS','VS03.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Vsmart Star 3',N'Màn hình:	IPS LCD, 6.09", HD+
Hệ điều hành:	Android 9.0 (Pie)
Camera sau:	Chính 8 MP & Phụ 5 MP
Camera trước:	8 MP
CPU:	Snapdragon 215 4 nhân
RAM:	2 GB
Bộ nhớ trong:	16 GB',N'36 tháng','NEW - 100%',1990000,'VS','VS04.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Vsmart Live',N'Màn hình:	AMOLED, 6.2", Full HD+
Hệ điều hành:	Android 9.0 (Pie)
Camera sau:	Chính 48 MP & Phụ 8 MP, 5 MP
Camera trước:	20 MP
CPU:	Snapdragon 675 8 nhân
RAM:	4 GB
Bộ nhớ trong:	64 GB',N'36 tháng','NEW - 100%',3490000,'VS','VS05.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Vsmart Bee',N'Màn hình:	IPS LCD, 5.45", HD+
Hệ điều hành:	Android 8.1 (Oreo)
Camera sau:	8 MP
Camera trước:	5 MP
CPU:	MediaTek MT6739 4 nhân
RAM:	1 GB
Bộ nhớ trong:	16 GB',N'36 tháng','NEW - 100%',790000,'VS','VS06.PNG')

INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Nokia 5.3',N'Màn hình:	IPS LCD, 6.55", HD+
Hệ điều hành:	Android 10
Camera sau:	Chính 13 MP & Phụ 5 MP, 2 MP, 2 MP
CPU:	Snapdragon 665 8 nhân
RAM:	3 GB
Bộ nhớ trong:	64 GB',N'36 tháng','NEW - 100%',3490000,'NO','NO01.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Nokia 2.3',N'Màn hình:	TFT, 6.2", HD+
Hệ điều hành:	Android 10 (Android One)
Camera sau:	Chính 13 MP & Phụ 2 MP
Camera trước:	5 MP
CPU:	Mediatek MT6761 4 nhân (Helio A22)
RAM:	2 GB
Bộ nhớ trong:	32 GB',N'36 tháng','NEW - 100%',1790000,'NO','NO02.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Nokia 230',N'Màn hình:	TFT, 2.8", 65.536 màu
Danh bạ:	1000 số
Thẻ nhớ ngoài:	MicroSD, hỗ trợ tối đa 32 GB
Camera:	2 MP
Jack cắm tai nghe:	3.5 mm
Radio FM:	Có
Dung lượng pin:	1200 mAh',N'36 tháng','NEW - 100%',1250000,'NO','NO03.PNG')
INSERT INTO SANPHAM --(MASP,TENSP,TSKT,BAOHANH,TINHTRANG,GIA,MALOAI,HINH)
VALUES
(N'Nokia 105 Dual',N'Màn hình:	TFT, 1.77", 65.536 màu
Danh bạ:	2000 số
Jack cắm tai nghe:	3.5 mm
Radio FM:	Có
Dung lượng pin:	800 mAh',N'36 tháng','NEW - 100%',370.000,'NO','NO04.PNG')

select * from KHACHHANG
CREATE TABLE ADMINN
(
	TAIKHOAN NCHAR(30) PRIMARY KEY,
	MATKHAU VARCHAR(20)
)
INSERT INTO ADMINN
VALUES('sa','123')

GO
CREATE PROC INSERT_SP (
	@TENSP NVARCHAR(100),
	@TSKT NVARCHAR(300),
	@BAOHANH NVARCHAR(30),
	@TINHTRANG NVARCHAR(50),
	@GIA INT,
	@MALOAI CHAR(10),
	@HINH CHAR(15))
AS
BEGIN
	INSERT INTO SANPHAM 
	 VALUES
	( @TENSP,@TSKT, @BAOHANH, @TINHTRANG,@GIA,@MALOAI,@HINH)
END
go
EXEC INSERT_SP 'A','B','BH','TT',10,'NO', 'H'