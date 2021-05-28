-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2021 at 05:00 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlsp`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaCTHD` int(11) NOT NULL,
  `MaHD` int(11) NOT NULL,
  `MaHH` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaCTHD`, `MaHD`, `MaHH`, `SoLuong`) VALUES
(1, 1, 1, 5),
(2, 2, 4, 7),
(3, 3, 2, 6),
(4, 4, 3, 6),
(5, 5, 4, 6),
(6, 6, 6, 6),
(7, 7, 5, 7),
(8, 8, 6, 8),
(9, 9, 4, 10),
(10, 10, 3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `hanghoa`
--

CREATE TABLE `hanghoa` (
  `MaHH` int(11) NOT NULL,
  `TenHH` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` int(11) NOT NULL,
  `Hinh` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaLoai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hanghoa`
--

INSERT INTO `hanghoa` (`MaHH`, `TenHH`, `DonGia`, `Hinh`, `MaLoai`) VALUES
(1, 'espresso', 50000, 'https://bitly.com.vn/2c0n4u', 1),
(2, 'Cold Brew', 55000, 'https://bitly.com.vn/j9nq96', 1),
(3, 'Vietnam traditional Coffee', 30000, 'https://bitly.com.vn/oy0qke', 1),
(4, 'Macchiato milk tea', 45000, 'https://bitly.com.vn/v94rpf', 2),
(5, 'Pizza', 89000, 'https://img.dominos.vn/Pizzaminsea.jpg', 5),
(6, 'Malbec', 60000, 'https://bitly.com.vn/aebgoo', 3),
(7, 'Chocolate Cake', 100000, 'https://bitly.com.vn/2qzru5', 6),
(8, 'Corona beer', 65000, 'https://bitly.com.vn/dd1tg0', 4),
(9, 'Matcha cream cheese', 55000, 'https://bitly.com.vn/wn816h', 2),
(10, 'Bánh tráng trộn', 20000, 'https://bitly.com.vn/n9v2k6', 5);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `NgayLapHD` date NOT NULL,
  `MAKH` int(11) NOT NULL,
  `TongTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `NgayLapHD`, `MAKH`, `TongTien`) VALUES
(1, '2021-03-14', 1, 123599),
(2, '2021-12-03', 8, 200000),
(3, '2021-04-25', 2, 200000),
(4, '2020-10-05', 8, 400000),
(5, '2020-12-05', 5, 200000),
(6, '2019-08-07', 4, 500000),
(7, '2018-09-08', 6, 60000),
(8, '2015-08-07', 10, 5000000),
(9, '2021-09-05', 7, 600000),
(10, '2021-03-02', 9, 900000);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(11) NOT NULL,
  `HoTen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DienThoai` int(11) NOT NULL,
  `Email` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `HoTen`, `DienThoai`, `Email`) VALUES
(1, 'Nguyễn văn a', 89412563, 'ahihi@gmail.com'),
(2, 'Đinh Thị C', 98456892, 'bruhhh@gmail.com'),
(3, 'Đinh Thị Tí', 254691832, 'oikayok@gmail.com'),
(4, 'Triệu Nhật Mẫn', 15649826, 'ohoh@gmail.com'),
(5, 'Nguyễn Tiến Công', 936431124, 'ohmg@gmail.com'),
(6, 'Trần văn bảo', 846362113, 'ggngockaf@gmail.com'),
(7, 'Lê Như Hảo', 72352351, '0516892697'),
(8, 'Bành Thị Gái', 1535825235, 'hihi@gmail.com'),
(9, 'Định Văn Giai', 9127412, 'ghaj@gmail.com'),
(10, 'Hoàng trang', 8252364, 'hihii@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

CREATE TABLE `loai` (
  `MaLoai` int(11) NOT NULL,
  `TenLoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`MaLoai`, `TenLoai`, `MoTa`) VALUES
(1, 'Coffee', 'A kind of drink tastes fantastic and it will keep you awake'),
(2, 'Milk Tea', 'A trendy drink that many young and middle-aged people love it!'),
(3, 'Wine', 'these things will bring you to a whole new world'),
(4, 'beer', 'kinda like wine but less stronger'),
(5, 'Fast food', 'try to have some beer and eat with some food your friendship gonna tied up'),
(6, 'Cake', 'have you ever imagined that how bitter and sweat can mixed so perfectly');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`MaCTHD`),
  ADD KEY `fk_chitiethoadon_hoadon` (`MaHD`),
  ADD KEY `fk_chitiethoadon_hanghoa` (`MaHH`);

--
-- Indexes for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`MaHH`),
  ADD KEY `fk_hanghoa_loai` (`MaLoai`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `fk_hoadon_khachhang` (`MAKH`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Indexes for table `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`MaLoai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `MaCTHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `loai`
--
ALTER TABLE `loai`
  MODIFY `MaLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `fk_chitiethoadon_hanghoa` FOREIGN KEY (`MaHH`) REFERENCES `hanghoa` (`MaHH`),
  ADD CONSTRAINT `fk_chitiethoadon_hoadon` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`);

--
-- Constraints for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD CONSTRAINT `fk_hanghoa_loai` FOREIGN KEY (`MaLoai`) REFERENCES `loai` (`MaLoai`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `fk_hoadon_khachhang` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`MaKH`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
