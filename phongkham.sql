-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2024 at 03:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phongkham`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `Ten` int(11) NOT NULL,
  `TenTaiKhoan` varchar(30) NOT NULL,
  `MatKhau` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bacsi`
--

CREATE TABLE `bacsi` (
  `MaBS` int(11) NOT NULL,
  `TenBS` varchar(30) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `MaKhoa` int(11) NOT NULL,
  `anh` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bacsi`
--

INSERT INTO `bacsi` (`MaBS`, `TenBS`, `sdt`, `DiaChi`, `email`, `NgaySinh`, `GioiTinh`, `MaKhoa`, `anh`) VALUES
(27, 'Nguyễn Chí Dũng', '0123456789', 'Hà Nội', 'chidung@gmail.com', '2024-04-13', 'Nam', 1, 'hinh-nen-macbook-air-pro-4k-dep-de-thuong-danh-cho-ifan-13-jpg-1655962533-23062022123533.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(11) NOT NULL,
  `TenKH` varchar(30) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `sdt`, `DiaChi`, `email`, `NgaySinh`, `GioiTinh`) VALUES
(1, 'Hồ Thích An', '123456789', 'Hà Nội', 'an@gmail.com', '2003-02-02', 'Nam'),
(35, 'Đặng Cao Trí', '0123456789', 'Hà Nội', 'caotri@gmail.com', '2023-07-18', 'Nam');

-- --------------------------------------------------------

--
-- Table structure for table `khoakham`
--

CREATE TABLE `khoakham` (
  `MaKhoa` int(11) NOT NULL,
  `TenKhoa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khoakham`
--

INSERT INTO `khoakham` (`MaKhoa`, `TenKhoa`) VALUES
(1, 'Răng hàm mặt'),
(2, 'Thần kinh'),
(6, 'Xương Khớp'),
(7, 'Y Cổ Truyền');

-- --------------------------------------------------------

--
-- Table structure for table `lichkham`
--

CREATE TABLE `lichkham` (
  `MaLichKham` int(11) NOT NULL,
  `ThoiGianDat` datetime NOT NULL DEFAULT current_timestamp(),
  `ThoiGianKham` varchar(11) NOT NULL,
  `NoiDungKham` text NOT NULL,
  `GhiChu` text NOT NULL,
  `MaKH` int(11) NOT NULL,
  `MaPhongKham` int(11) NOT NULL,
  `id_TrangThai` int(11) NOT NULL,
  `MaBS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lichkham`
--

INSERT INTO `lichkham` (`MaLichKham`, `ThoiGianDat`, `ThoiGianKham`, `NoiDungKham`, `GhiChu`, `MaKH`, `MaPhongKham`, `id_TrangThai`, `MaBS`) VALUES
(6, '2024-04-19 23:19:17', '11:00', 'khám tai mũi họng', 'đến đúng h', 1, 1, 2, 27);

-- --------------------------------------------------------

--
-- Table structure for table `phongkham`
--

CREATE TABLE `phongkham` (
  `MaPhongKham` int(11) NOT NULL,
  `TenPhongKham` varchar(11) NOT NULL,
  `MaKhoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phongkham`
--

INSERT INTO `phongkham` (`MaPhongKham`, `TenPhongKham`, `MaKhoa`) VALUES
(1, 'Phong_1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoanadmin`
--

CREATE TABLE `taikhoanadmin` (
  `MaTK` int(11) NOT NULL,
  `TenDangNhap` varchar(20) NOT NULL,
  `MatKhau` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taikhoanadmin`
--

INSERT INTO `taikhoanadmin` (`MaTK`, `TenDangNhap`, `MatKhau`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoankhachhang`
--

CREATE TABLE `taikhoankhachhang` (
  `id` int(11) NOT NULL,
  `TenDangNhap` varchar(30) NOT NULL,
  `MatKhau` varchar(30) NOT NULL,
  `MaKH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `MaTinTuc` int(11) NOT NULL,
  `TieuDe` varchar(150) NOT NULL,
  `HinhAnh` varchar(30) NOT NULL,
  `NoiDung` text NOT NULL,
  `ThoiGianDang` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trangthai`
--

CREATE TABLE `trangthai` (
  `id_TrangThai` int(11) NOT NULL,
  `TenTrangThai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trangthai`
--

INSERT INTO `trangthai` (`id_TrangThai`, `TenTrangThai`) VALUES
(1, 'chưa xác nhận'),
(2, 'đã xác nhận'),
(3, 'đã bị hủy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bacsi`
--
ALTER TABLE `bacsi`
  ADD PRIMARY KEY (`MaBS`),
  ADD KEY `MaKhoa` (`MaKhoa`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Indexes for table `khoakham`
--
ALTER TABLE `khoakham`
  ADD PRIMARY KEY (`MaKhoa`);

--
-- Indexes for table `lichkham`
--
ALTER TABLE `lichkham`
  ADD PRIMARY KEY (`MaLichKham`),
  ADD KEY `MaKH` (`MaKH`,`MaPhongKham`),
  ADD KEY `MaPhongKham` (`MaPhongKham`),
  ADD KEY `id_TrangThai` (`id_TrangThai`),
  ADD KEY `MaBS` (`MaBS`);

--
-- Indexes for table `phongkham`
--
ALTER TABLE `phongkham`
  ADD PRIMARY KEY (`MaPhongKham`),
  ADD KEY `MaKhoa` (`MaKhoa`);

--
-- Indexes for table `taikhoanadmin`
--
ALTER TABLE `taikhoanadmin`
  ADD PRIMARY KEY (`MaTK`);

--
-- Indexes for table `taikhoankhachhang`
--
ALTER TABLE `taikhoankhachhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaKH` (`MaKH`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`MaTinTuc`);

--
-- Indexes for table `trangthai`
--
ALTER TABLE `trangthai`
  ADD PRIMARY KEY (`id_TrangThai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bacsi`
--
ALTER TABLE `bacsi`
  MODIFY `MaBS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `khoakham`
--
ALTER TABLE `khoakham`
  MODIFY `MaKhoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lichkham`
--
ALTER TABLE `lichkham`
  MODIFY `MaLichKham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `phongkham`
--
ALTER TABLE `phongkham`
  MODIFY `MaPhongKham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `taikhoanadmin`
--
ALTER TABLE `taikhoanadmin`
  MODIFY `MaTK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `taikhoankhachhang`
--
ALTER TABLE `taikhoankhachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `MaTinTuc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trangthai`
--
ALTER TABLE `trangthai`
  MODIFY `id_TrangThai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bacsi`
--
ALTER TABLE `bacsi`
  ADD CONSTRAINT `bacsi_ibfk_1` FOREIGN KEY (`MaKhoa`) REFERENCES `khoakham` (`MaKhoa`);

--
-- Constraints for table `lichkham`
--
ALTER TABLE `lichkham`
  ADD CONSTRAINT `lichkham_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `lichkham_ibfk_2` FOREIGN KEY (`MaPhongKham`) REFERENCES `phongkham` (`MaPhongKham`),
  ADD CONSTRAINT `lichkham_ibfk_3` FOREIGN KEY (`id_TrangThai`) REFERENCES `trangthai` (`id_TrangThai`),
  ADD CONSTRAINT `lichkham_ibfk_4` FOREIGN KEY (`MaBS`) REFERENCES `bacsi` (`MaBS`);

--
-- Constraints for table `phongkham`
--
ALTER TABLE `phongkham`
  ADD CONSTRAINT `phongkham_ibfk_1` FOREIGN KEY (`MaKhoa`) REFERENCES `khoakham` (`MaKhoa`);

--
-- Constraints for table `taikhoankhachhang`
--
ALTER TABLE `taikhoankhachhang`
  ADD CONSTRAINT `taikhoankhachhang_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
