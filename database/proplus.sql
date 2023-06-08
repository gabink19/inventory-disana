-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2023 at 06:02 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proplus`
--

-- --------------------------------------------------------

--
-- Table structure for table `backset`
--

CREATE TABLE `backset` (
  `url` varchar(100) NOT NULL,
  `sessiontime` varchar(4) DEFAULT NULL,
  `footer` varchar(50) DEFAULT NULL,
  `themesback` varchar(2) DEFAULT NULL,
  `responsive` varchar(2) DEFAULT NULL,
  `namabisnis1` tinytext NOT NULL,
  `tipenota` int(1) NOT NULL,
  `l153n53` int(11) NOT NULL,
  `loginbg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backset`
--

INSERT INTO `backset` (`url`, `sessiontime`, `footer`, `themesback`, `responsive`, `namabisnis1`, `tipenota`, `l153n53`, `loginbg`) VALUES
('http://localhost/proplus', '1000', 'Toko Andalan', '2', '0', 'Indotory Pro Plus', 5, 2, 'dist/upload/images.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `no` int(11) NOT NULL,
  `kode` varchar(20) NOT NULL,
  `sku` varchar(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `kategori` varchar(20) DEFAULT 'NULL',
  `brand` text NOT NULL,
  `barcode` varchar(50) NOT NULL,
  `hargabeli` int(10) NOT NULL,
  `hargajual` int(11) NOT NULL,
  `terjual` int(11) NOT NULL,
  `terbeli` int(11) NOT NULL,
  `sisa` int(11) NOT NULL,
  `retur` int(10) NOT NULL,
  `stokmin` int(10) NOT NULL,
  `ukuran` varchar(10) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `expired` date NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `lokasi` varchar(20) NOT NULL,
  `keterangan` varchar(200) DEFAULT 'NULL',
  `avatar` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`no`, `kode`, `sku`, `nama`, `kategori`, `brand`, `barcode`, `hargabeli`, `hargajual`, `terjual`, `terbeli`, `sisa`, `retur`, `stokmin`, `ukuran`, `warna`, `expired`, `satuan`, `lokasi`, `keterangan`, `avatar`) VALUES
(1, '000001', '1330-2B', 'Sandal  Teplek 37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000001', 21000, 31899, 3, 3, 0, 0, 1, '37', 'Hitam', '0000-11-30', 'Pcs', '', '', 'dist/upload/index.jpg'),
(2, '000002', '1330-2B', 'Sandal  Teplek 38 Hitam', 'Sandal Wanita', 'Balance', 'BRG000005', 21000, 31899, 4, 8, 4, 0, 1, '38', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(3, '000003', '1330-2B', 'Sandal  Teplek 39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000006', 21000, 31899, 4, 5, 1, 0, 1, '39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(4, '000004', '1330-2B', 'Sandal  Teplek 40 Hitam', 'Sandal Wanita', 'Balance', 'BRG000007', 21000, 31899, 4, 4, 0, 0, 1, '40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(5, '000005', '2023-A1', 'Sandal Wedges Jelly 36 Hitam', 'Sandal Wanita', 'Balance', 'BRG000008', 31000, 41000, 2, 3, 1, 0, 1, '36', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(6, '000006', '2023-A1', 'Sandal Wedges Jelly 37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000009', 31000, 41000, 0, 2, 2, 0, 1, '37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(7, '000007', '2023-A1', 'Sandal Wedges Jelly 38 Hitam', 'Sandal Wanita', 'Balance', 'BRG000010', 31000, 41000, 0, 4, 4, 0, 1, '38', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(8, '000008', '2023-A1', 'Sandal Wedges Jelly 39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000011', 31000, 41000, 0, 2, 2, 0, 1, '39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(9, '000009', '2023-A1', 'Sandal Wedges Jelly 40 Hitam', 'Sandal Wanita', 'Balance', 'BRG000012', 31000, 41000, 1, 3, 2, 0, 1, '40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(10, '000010', '2023-A1', 'Sandal Wedges Jelly 36 Putih', 'Sandal Wanita', 'Balance', 'BRG000013', 31000, 41000, 0, 2, 2, 0, 1, '36', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(11, '000011', '2023-A1', 'Sandal Wedges Jelly 37 Putih', 'Sandal Wanita', 'Balance', 'BRG000014', 31000, 41000, 0, 3, 3, 0, 1, '37', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(12, '000012', '2023-A1', 'Sandal Wedges Jelly 38 Putih', 'Sandal Wanita', 'Balance', 'BRG000015', 31000, 41000, 0, 2, 2, 0, 1, '38', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(13, '000013', '2023-A1', 'Sandal Wedges Jelly 39 Putih', 'Sandal Wanita', 'Balance', 'BRG000016', 31000, 41000, 1, 4, 3, 0, 1, '39', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(14, '000014', '2023-A1', 'Sandal Wedges Jelly 40 Putih', 'Sandal Wanita', 'Balance', 'BRG000017', 31000, 41000, 1, 2, 1, 0, 1, '40', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(15, '000015', '269+3', 'Sandal Jpt Fushin 35-36 Hitam', 'Sandal Wanita', 'Balance', 'BRG000018', 24000, 34500, 1, 1, 0, 0, 1, '35-36', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(16, '000016', '269+3', 'Sandal Jpt Fushin 37-38 Hitam', 'Sandal Wanita', 'Balance', 'BRG000019', 24000, 34500, 2, 2, 0, 0, 1, '37-38', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(17, '000017', '269+3', 'Sandal Jpt Fushin 39-40 Hitam', 'Sandal Wanita', 'Balance', 'BRG000020', 24000, 34500, 0, 0, 0, 0, 1, '39-40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(18, '000018', '269+3', 'Sandal Jpt Fushin 35-36 Kuning', 'Sandal Wanita', 'Balance', 'BRG000024', 24000, 34500, 2, 3, 1, 0, 1, '35-36', 'Kuning', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(19, '000019', '269+3', 'Sandal Jpt Fushin 37-38 Kuning', 'Sandal Wanita', 'Balance', 'BRG000025', 24000, 34500, 0, 0, 0, 0, 1, '37-38', 'Kuning', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(20, '000020', '269+3', 'Sandal Jpt Fushin 39-40 Kuning', 'Sandal Wanita', 'Balance', 'BRG000026', 24000, 34500, 0, 1, 1, 0, 1, '39-40', 'Kuning', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(21, '000021', '269+3', 'Sandal Jpt Fushin 35-36 Orange', 'Sandal Wanita', 'Balance', 'BRG000030', 24000, 34500, 0, 0, 0, 0, 1, '35-36', 'Orange', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(22, '000022', '269+3', 'Sandal Jpt Fushin 37-38 Orange', 'Sandal Wanita', 'Balance', 'BRG000031', 24000, 34500, 1, 1, 0, 0, 1, '37-38', 'Orange', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(23, '000023', '269+3', 'Sandal Jpt Fushin 39-40 Orange', 'Sandal Wanita', 'Balance', 'BRG000032', 24000, 34500, 0, 1, 1, 0, 1, '39-40', 'Orange', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(24, '000024', '269+3', 'Sandal Jpt Fushin 35-36 Pink', 'Sandal Wanita', 'Balance', 'BRG000036', 24000, 34500, 0, 1, 1, 0, 1, '35-36', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(25, '000025', '269+3', 'Sandal Jpt Fushin 37-38 Pink', 'Sandal Wanita', 'Balance', 'BRG000037', 24000, 34500, 1, 2, 1, 0, 1, '37-38', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(26, '000026', '269+3', 'Sandal Jpt Fushin 39-40 Pink', 'Sandal Wanita', 'Balance', 'BRG000038', 24000, 34500, 1, 1, 0, 0, 1, '39-40', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(27, '000027', '602-5', 'Sandal Baim 37 Hitam', 'Sandal Wanita', 'Fushin', 'BRG000042', 62000, 72000, 0, 0, 0, 0, 1, '37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(28, '000028', '602-5', 'Sandal Baim 38 Hitam', 'Sandal Wanita', 'Fushin', 'BRG000043', 62000, 72000, 0, 0, 0, 0, 1, '38', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(29, '000029', '602-5', 'Sandal Baim 39 Hitam', 'Sandal Wanita', 'Fushin', 'BRG000044', 62000, 72000, 0, 1, 1, 0, 1, '39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(30, '000030', '602-5', 'Sandal Baim 40 Hitam', 'Sandal Wanita', 'Fushin', 'BRG000045', 62000, 72000, 0, 0, 0, 0, 1, '40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(31, '000031', '602-5', 'Sandal Baim 37 Pink', 'Sandal Wanita', 'Fushin', 'BRG000046', 62000, 72000, 0, 0, 0, 0, 1, '37', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(32, '000032', '602-5', 'Sandal Baim 38 Pink', 'Sandal Wanita', 'Fushin', 'BRG000047', 62000, 72000, 1, 1, 0, 0, 1, '38', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(33, '000033', '602-5', 'Sandal Baim 39 Pink', 'Sandal Wanita', 'Fushin', 'BRG000048', 62000, 72000, 0, 0, 0, 0, 1, '39', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(34, '000034', '602-5', 'Sandal Baim 40 Pink', 'Sandal Wanita', 'Fushin', 'BRG000049', 62000, 72000, 0, 0, 0, 0, 1, '40', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(35, '000035', '602-5', 'Sandal Baim 37 Putih', 'Sandal Wanita', 'Fushin', 'BRG000050', 62000, 72000, 0, 1, 1, 0, 1, '37', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(36, '000036', '602-5', 'Sandal Baim 38 Putih', 'Sandal Wanita', 'Fushin', 'BRG000051', 62000, 72000, 0, 0, 0, 0, 1, '38', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(37, '000037', '602-5', 'Sandal Baim 39 Putih', 'Sandal Wanita', 'Fushin', 'BRG000052', 62000, 72000, 0, 0, 0, 0, 1, '39', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(38, '000038', '602-5', 'Sandal Baim 40 Putih', 'Sandal Wanita', 'Fushin', 'BRG000053', 62000, 72000, 1, 1, 0, 0, 1, '40', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(39, '000039', '602-4', 'Sandal Baim 37 Hitam', 'Sandal Wanita', 'Fushin', 'BRG000054', 60000, 69900, 1, 1, 0, 0, 1, '37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(40, '000040', '602-4', 'Sandal Baim 38 Hitam', 'Sandal Wanita', 'Fushin', 'BRG000055', 60000, 69900, 0, 0, 0, 0, 1, '38', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(41, '000041', '602-4', 'Sandal Baim 39 Hitam', 'Sandal Wanita', 'Fushin', 'BRG000056', 60000, 69900, 0, 1, 1, 0, 1, '39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(42, '000042', '602-4', 'Sandal Baim 40 Hitam', 'Sandal Wanita', 'Fushin', 'BRG000057', 60000, 69900, 0, 0, 0, 0, 1, '40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(43, '000043', '602-4', 'Sandal Baim 37 Pink', 'Sandal Wanita', 'Fushin', 'BRG000058', 60000, 69900, 0, 0, 0, 0, 1, '37', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(44, '000044', '602-4', 'Sandal Baim 38 Pink', 'Sandal Wanita', 'Fushin', 'BRG000059', 60000, 69900, 0, 1, 1, 0, 1, '38', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(45, '000045', '602-4', 'Sandal Baim 39 Pink', 'Sandal Wanita', 'Balance', 'BRG000060', 60000, 69900, 0, 0, 0, 0, 1, '39', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(46, '000046', '602-4', 'Sandal Baim 40 Pink', 'Sandal Wanita', 'Fushin', 'BRG000061', 60000, 69900, 1, 2, 1, 0, 1, '40', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(47, '000047', '602-4', 'Sandal Baim 37 Putih', 'Sandal Wanita', 'Fushin', 'BRG000062', 60000, 69900, 0, 0, 0, 0, 1, '37', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(48, '000048', '602-4', 'Sandal Baim 38 Putih', 'Sandal Wanita', 'Fushin', 'BRG000063', 60000, 69900, 0, 0, 0, 0, 1, '38', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(49, '000049', '602-4', 'Sandal Baim 39 Putih', 'Sandal Wanita', 'Fushin', 'BRG000064', 60000, 69900, 0, 0, 0, 0, 1, '39', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(50, '000050', '602-4', 'Sandal Baim 40 Putih', 'Sandal Wanita', 'Fushin', 'BRG000065', 60000, 69900, 0, 0, 0, 0, 1, '40', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(51, '000051', '178-1', 'Sandal Kelinci 36-37 Hijau', 'Sandal Wanita', 'Balance', 'BRG000066', 19000, 28499, 0, 0, 0, 0, 1, '36-37', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(52, '000052', '178-1', 'Sandal Kelinci 38-39 Hijau', 'Sandal Wanita', 'Balance', 'BRG000068', 19000, 28499, 0, 0, 0, 0, 1, '38-39', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(53, '000053', '178-1', 'Sandal Kelinci 40-41 Hijau', 'Sandal Wanita', 'Balance', 'BRG000070', 19000, 28499, 0, 0, 0, 0, 1, '40-41', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(54, '000054', '178-1', 'Sandal Kelinci 36-37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000072', 19000, 28499, 0, 0, 0, 0, 1, '36-37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(55, '000055', '178-1', 'Sandal Kelinci 38-39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000074', 19000, 28499, 0, 0, 0, 0, 1, '38-39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(56, '000056', '178-1', 'Sandal Kelinci 40-41 Hitam', 'Sandal Wanita', 'Balance', 'BRG000076', 19000, 28499, 0, 0, 0, 0, 1, '40-41', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(57, '000057', '178-1', 'Sandal Kelinci 36-37 Putih', 'Sandal Wanita', 'Balance', 'BRG000078', 19000, 28499, 0, 0, 0, 0, 1, '36-37', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(58, '000058', '178-1', 'Sandal Kelinci 38-39 Putih', 'Sandal Wanita', 'Balance', 'BRG000080', 19000, 28499, 0, 0, 0, 0, 1, '38-39', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(59, '000059', '178-1', 'Sandal Kelinci 40-41 Putih', 'Sandal Wanita', 'Balance', 'BRG000082', 19000, 28499, 0, 0, 0, 0, 1, '40-41', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(60, '000060', '178-1', 'Sandal Kelinci 36-37 Pink', 'Sandal Wanita', 'Balance', 'BRG000084', 19000, 28499, 0, 0, 0, 0, 1, '36-37', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(61, '000061', '178-1', 'Sandal Kelinci 38-39 Pink', 'Sandal Wanita', 'Balance', 'BRG000086', 19000, 28499, 0, 0, 0, 0, 1, '38-39', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(62, '000062', '178-1', 'Sandal Kelinci 40-41 Pink', 'Sandal Wanita', 'Balance', 'BRG000088', 19000, 28499, 0, 0, 0, 0, 1, '40-41', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(63, '000063', '178-1', 'Sandal Kelinci 36-37 Orange', 'Sandal Wanita', 'Balance', 'BRG000090', 19000, 28499, 0, 0, 0, 0, 1, '36-37', 'Orange', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(64, '000064', '178-1', 'Sandal Kelinci 38-39 Orange', 'Sandal Wanita', 'Balance', 'BRG000092', 19000, 28499, 0, 0, 0, 0, 1, '38-39', 'Orange', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(65, '000065', '178-1', 'Sandal Kelinci 40-41 Orange', 'Sandal Wanita', 'Balance', 'BRG000094', 19000, 28499, 0, 0, 0, 0, 1, '40-41', 'Orange', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(66, '000066', '178-1', 'Sandal Kelinci 36-37 Abu-Abu', 'Sandal Wanita', 'Balance', 'BRG000096', 19000, 28499, 0, 0, 0, 0, 1, '36-37', 'Abu-abu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(67, '000067', '178-1', 'Sandal Kelinci 38-39 Abu-Abu', 'Sandal Wanita', 'Balance', 'BRG000098', 19000, 28499, 0, 0, 0, 0, 1, '38-39', 'Abu-abu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(68, '000068', '178-1', 'Sandal Kelinci 40-41 Abu-Abu', 'Sandal Wanita', 'Balance', 'BRG000100', 19000, 28499, 0, 0, 0, 0, 1, '40-41', 'Abu-abu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(69, '000069', 'L029-A1', 'Sandal Selop 36-37 Putih', 'Sandal Wanita', 'Balance', 'BRG000102', 34000, 44000, 0, 1, 1, 0, 1, '36-37', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(70, '000070', 'L029-A1', 'Sandal Selop 38-39 Putih', 'Sandal Wanita', 'Balance', 'BRG000103', 34000, 44000, 0, 1, 1, 0, 1, '38-39', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(71, '000071', 'L029-A1', 'Sandal Selop 40-41 Putih', 'Sandal Wanita', 'Balance', 'BRG000104', 34000, 44000, 0, 1, 1, 0, 1, '40-41', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(72, '000072', 'L029-A1', 'Sandal Selop 36-37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000108', 34000, 44000, 0, 1, 1, 0, 1, '36-37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(73, '000073', 'L029-A1', 'Sandal Selop 38-39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000109', 34000, 44000, 0, 1, 1, 0, 1, '38-39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(74, '000074', 'L029-A1', 'Sandal Selop 40-41 Hitam', 'Sandal Wanita', 'Balance', 'BRG000111', 34000, 44000, 0, 0, 0, 0, 1, '40-41', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(75, '000075', 'L029-B2', 'Sandal Selop 36-37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000114', 34000, 44500, 1, 2, 1, 0, 1, '36-37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(76, '000076', 'L029-B2', 'Sandal Selop 38-39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000115', 34000, 44500, 1, 1, 0, 0, 1, '38-39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(77, '000077', 'L029-B2', 'Sandal Selop 40-41 Hitam', 'Sandal Wanita', 'Balance', 'BRG000116', 34000, 44500, 0, 2, 2, 0, 1, '40-41', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(78, '000078', 'C221-1D', 'Sandal Pesta 37 Ungu', 'Sandal Wanita', 'Balance', 'BRG000120', 23000, 33000, 0, 0, 0, 0, 1, '37', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(79, '000079', 'C221-1D', 'Sandal Pesta 38 Ungu', 'Sandal Wanita', 'Balance', 'BRG000121', 23000, 33000, 0, 0, 0, 0, 1, '38', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(80, '000080', 'C221-1D', 'Sandal Pesta 39 Ungu', 'Sandal Wanita', 'Balance', 'BRG000122', 23000, 33000, 0, 0, 0, 0, 1, '39', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(81, '000081', 'C221-1D', 'Sandal Pesta 40 Ungu', 'Sandal Wanita', 'Balance', 'BRG000123', 23000, 33000, 0, 1, 1, 0, 1, '40', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(82, '000082', 'C221-1D', 'Sandal Pesta 37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000124', 23000, 33000, 1, 1, 0, 0, 1, '37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(83, '000083', 'C221-1D', 'Sandal Pesta 38 Hitam', 'Sandal Wanita', 'Balance', 'BRG000125', 23000, 33000, 0, 0, 0, 0, 1, '38', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(84, '000084', 'C221-1D', 'Sandal Pesta 39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000126', 23000, 33000, 0, 1, 1, 0, 1, '39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(85, '000085', 'C221-1D', 'Sandal Pesta 40 Hitam', 'Sandal Wanita', 'Balance', 'BRG000127', 23000, 33000, 0, 0, 0, 0, 1, '40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(86, '000086', 'C221-1D', 'Sandal Pesta 37 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000128', 23000, 33000, 0, 0, 0, 0, 1, '37', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(87, '000087', 'C221-1D', 'Sandal Pesta 38 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000129', 23000, 33000, 0, 1, 1, 0, 1, '38', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(88, '000088', 'C221-1D', 'Sandal Pesta 39 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000130', 23000, 33000, 0, 0, 0, 0, 1, '39', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(89, '000089', 'C221-1D', 'Sandal Pesta 40 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000131', 23000, 33000, 0, 1, 1, 0, 1, '40', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(90, '000090', '2301-A1', 'Sandal  2 Tali 36-37 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000132', 36000, 45900, 0, 2, 2, 0, 1, '36-37', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(91, '000091', '2301-A1', 'Sandal  2 Tali 38-39 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000134', 36000, 45900, 1, 2, 1, 0, 1, '38-39', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(92, '000092', '2301-A1', 'Sandal  2 Tali 40-41 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000136', 36000, 45900, 0, 2, 2, 0, 1, '40-41', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(93, '000093', '2301-A1', 'Sandal  2 Tali 36-37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000138', 36000, 45900, 0, 1, 1, 0, 1, '36-37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(94, '000094', '2301-A1', 'Sandal  2 Tali 38-39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000140', 36000, 45900, 0, 1, 1, 0, 1, '38-39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(95, '000095', '2301-A1', 'Sandal  2 Tali 40-41 Hitam', 'Sandal Wanita', 'Balance', 'BRG000142', 36000, 45900, 1, 2, 1, 0, 1, '40-41', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(96, '000096', '2301-A2', 'Sandal  2 Tali 36-37 Putih', 'Sandal Wanita', 'Balance', 'BRG000144', 38000, 49900, 0, 6, 6, 0, 1, '36-37', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(97, '000097', '2301-A2', 'Sandal  2 Tali 38-39 Putih', 'Sandal Wanita', 'Balance', 'BRG000146', 38000, 49900, 0, 6, 6, 0, 1, '38-39', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(98, '000098', '2301-A2', 'Sandal  2 Tali 40-41 Putih', 'Sandal Wanita', 'Balance', 'BRG000148', 38000, 49900, 0, 7, 7, 0, 1, '40-41', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(99, '000099', '2301-A2', 'Sandal  2 Tali 36-37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000150', 38000, 49900, 0, 6, 6, 0, 1, '36-37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(100, '000100', '2301-A2', 'Sandal  2 Tali 38-39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000152', 38000, 49900, 0, 9, 9, 0, 1, '38-39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(101, '000101', '2301-A2', 'Sandal  2 Tali 40-41 Hitam', 'Sandal Wanita', 'Balance', 'BRG000154', 38000, 49900, 0, 6, 6, 0, 1, '40-41', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(102, '000102', '8559-A3', 'Sandal  Baim 36-37 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000156', 53000, 63900, 0, 0, 0, 0, 1, '36-37', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(103, '000103', '8559-A3', 'Sandal  Baim 38-39 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000158', 53000, 63900, 0, 1, 1, 0, 1, '38-39', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(104, '000104', '8559-A3', 'Sandal  Baim 40-41 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000160', 53000, 63900, 0, 0, 0, 0, 1, '40-41', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(105, '000105', '8559-A3', 'Sandal  Baim 36-37 Putih', 'Sandal Wanita', 'Balance', 'BRG000162', 53000, 63900, 0, 1, 1, 0, 1, '36-37', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(106, '000106', '8559-A3', 'Sandal  Baim 38-39 Putih', 'Sandal Wanita', 'Balance', 'BRG000164', 53000, 63900, 0, 0, 0, 0, 1, '38-39', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(107, '000107', '8559-A3', 'Sandal  Baim 40-41 Putih', 'Sandal Wanita', 'Balance', 'BRG000167', 53000, 63900, 0, 1, 1, 0, 1, '40-41', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(108, '000108', '8559-A3', 'Sandal  Baim 36-37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000169', 53000, 63900, 0, 1, 1, 0, 1, '36-37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(109, '000109', '8559-A3', 'Sandal  Baim 38-39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000171', 53000, 63900, 0, 0, 0, 0, 1, '38-39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(110, '000110', '8559-A3', 'Sandal  Baim 40-41 Hitam', 'Sandal Wanita', 'Balance', 'BRG000173', 53000, 63900, 0, 0, 0, 0, 1, '40-41', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(111, '000111', '8559-A3', 'Sandal  Baim 36-37 Pink', 'Sandal Wanita', 'Balance', 'BRG000175', 53000, 63900, 0, 0, 0, 0, 1, '36-37', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(112, '000112', '8559-A3', 'Sandal  Baim 38-39 Pink', 'Sandal Wanita', 'Balance', 'BRG000177', 53000, 63900, 0, 1, 1, 0, 1, '38-39', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(113, '000113', '8559-A3', 'Sandal  Baim 40-41 Pink', 'Sandal Wanita', 'Balance', 'BRG000179', 53000, 63900, 0, 0, 0, 0, 1, '40-41', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(114, '000114', '9008-K4-S', 'Sandal  Baim 24-25 Putih', 'Sandal Anak', 'Balance', 'BRG000180', 47000, 59900, 0, 1, 1, 0, 1, '24-25', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(115, '000115', '9008-K4-S', 'Sandal  Baim 26-27 Putih', 'Sandal Anak', 'Balance', 'BRG000182', 47000, 59900, 0, 0, 0, 0, 1, '26-27', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(116, '000116', '9008-K4-S', 'Sandal  Baim 28-29 Putih', 'Sandal Anak', 'Balance', 'BRG000183', 47000, 59900, 0, 1, 1, 0, 1, '28-29', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(117, '000117', '9008-K4-S', 'Sandal  Baim 24-25 Hijau', 'Sandal Anak', 'Balance', 'BRG000184', 47000, 59900, 0, 0, 0, 0, 1, '24-25', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(118, '000118', '9008-K4-S', 'Sandal  Baim 26-27 Hijau', 'Sandal Anak', 'Balance', 'BRG000185', 47000, 59900, 0, 0, 0, 0, 1, '26-27', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(119, '000119', '9008-K4-S', 'Sandal  Baim 28-29 Hijau', 'Sandal Anak', 'Balance', 'BRG000186', 47000, 59900, 0, 1, 1, 0, 1, '28-29', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(120, '000120', '9008-K4-S', 'Sandal  Baim 24-25 Fanta', 'Sandal Anak', 'Balance', 'BRG000187', 47000, 59900, 0, 0, 0, 0, 1, '24-25', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(121, '000121', '9008-K4-S', 'Sandal  Baim 26-27 Fanta', 'Sandal Anak', 'Balance', 'BRG000188', 47000, 59900, 0, 1, 1, 0, 1, '26-27', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(122, '000122', '9008-K4-S', 'Sandal  Baim 28-29 Fanta', 'Sandal Anak', 'Balance', 'BRG000189', 47000, 59900, 0, 0, 0, 0, 1, '28-29', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(123, '000123', '9008-K4-S', 'Sandal  Baim 24-25 Hitam', 'Sandal Anak', 'Balance', 'BRG000190', 47000, 59900, 0, 1, 1, 0, 1, '24-25', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(124, '000124', '9008-K4-S', 'Sandal  Baim 26-27 Hitam', 'Sandal Anak', 'Balance', 'BRG000191', 47000, 59900, 0, 0, 0, 0, 1, '26-27', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(125, '000125', '9008-K4-S', 'Sandal  Baim 28-29 Hitam', 'Sandal Anak', 'Balance', 'BRG000192', 47000, 59900, 0, 0, 0, 0, 1, '28-29', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(126, '000126', '9008-K4-M', 'Sandal  Baim 30-31 Hijau', 'Sandal Anak', 'Balance', 'BRG000193', 50000, 59900, 0, 1, 1, 0, 1, '30-31', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(127, '000127', '9008-K4-M', 'Sandal  Baim 32-33 Hijau', 'Sandal Anak', 'Balance', 'BRG000194', 50000, 59900, 0, 0, 0, 0, 1, '32-33', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(128, '000128', '9008-K4-M', 'Sandal  Baim 34-35 Hijau', 'Sandal Anak', 'Balance', 'BRG000195', 50000, 59900, 0, 1, 1, 0, 1, '34-35', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(129, '000129', '9008-K4-M', 'Sandal  Baim 30-31 Fanta', 'Sandal Anak', 'Balance', 'BRG000196', 50000, 59900, 0, 0, 0, 0, 1, '30-31', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(130, '000130', '9008-K4-M', 'Sandal  Baim 32-33 Fanta', 'Sandal Anak', 'Balance', 'BRG000197', 50000, 59900, 0, 1, 1, 0, 1, '32-33', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(131, '000131', '9008-K4-M', 'Sandal  Baim 34-35 Fanta', 'Sandal Anak', 'Balance', 'BRG000198', 50000, 59900, 0, 0, 0, 0, 1, '34-35', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(132, '000132', '9008-K4-M', 'Sandal  Baim 30-31 Hitam', 'Sandal Anak', 'Balance', 'BRG000199', 50000, 59900, 0, 1, 1, 0, 1, '30-31', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(133, '000133', '9008-K4-M', 'Sandal  Baim 32-33 Hitam', 'Sandal Anak', 'Balance', 'BRG000200', 50000, 59900, 0, 0, 0, 0, 1, '32-33', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(134, '000134', '9008-K4-M', 'Sandal  Baim 34-35 Hitam', 'Sandal Anak', 'Balance', 'BRG000201', 50000, 59900, 0, 0, 0, 0, 1, '34-35', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(135, '000135', '9008-K4-M', 'Sandal  Baim 30-31 Putih', 'Sandal Anak', 'Balance', 'BRG000202', 50000, 59900, 0, 0, 0, 0, 1, '30-31', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(136, '000136', '9008-K4-M', 'Sandal  Baim 32-33 Putih', 'Sandal Anak', 'Balance', 'BRG000203', 50000, 59900, 0, 0, 0, 0, 1, '32-33', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(137, '000137', '9008-K4-M', 'Sandal  Baim 34-35 Putih', 'Sandal Anak', 'Balance', 'BRG000204', 50000, 59900, 0, 1, 1, 0, 1, '34-35', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(138, '000138', '7002-A6-1', 'Sandal  Fuji 36-37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000205', 51000, 61000, 0, 0, 0, 0, 1, '36-37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(139, '000139', '7002-A6-1', 'Sandal  Fuji 38-39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000206', 51000, 61000, 0, 1, 1, 0, 1, '38-39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(140, '000140', '7002-A6-1', 'Sandal  Fuji 40-41 Hitam', 'Sandal Wanita', 'Balance', 'BRG000207', 51000, 61000, 0, 0, 0, 0, 1, '40-41', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(141, '000141', '7002-A6-1', 'Sandal  Fuji 36-37 Fanta', 'Sandal Wanita', 'Balance', 'BRG000208', 51000, 61000, 0, 1, 1, 0, 1, '36-37', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(142, '000142', '7002-A6-1', 'Sandal  Fuji 38-39 Fanta', 'Sandal Wanita', 'Balance', 'BRG000209', 51000, 61000, 0, 1, 1, 0, 1, '38-39', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(143, '000143', '7002-A6-1', 'Sandal  Fuji 40-41 Fanta', 'Sandal Wanita', 'Balance', 'BRG000210', 51000, 61000, 0, 0, 0, 0, 1, '40-41', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(144, '000144', '7002-A6-1', 'Sandal  Fuji 36-37 Putih', 'Sandal Wanita', 'Balance', 'BRG000211', 51000, 61000, 0, 1, 1, 0, 1, '36-37', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(145, '000145', '7002-A6-1', 'Sandal  Fuji 38-39 Putih', 'Sandal Wanita', 'Balance', 'BRG000212', 51000, 61000, 0, 0, 0, 0, 1, '38-39', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(146, '000146', '7002-A6-1', 'Sandal  Fuji 40-41 Putih', 'Sandal Wanita', 'Balance', 'BRG000213', 51000, 61000, 0, 1, 1, 0, 1, '40-41', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(147, '000147', '7002-A21', 'Sandal  Fuji 36-37 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000214', 53000, 63000, 0, 0, 0, 0, 1, '36-37', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(148, '000148', '7002-A21', 'Sandal  Fuji 38-39 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000215', 53000, 63000, 0, 0, 0, 0, 1, '38-39', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(149, '000149', '7002-A21', 'Sandal  Fuji 40-41 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000216', 53000, 63000, 0, 1, 1, 0, 1, '40-41', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(150, '000150', '7002-A21', 'Sandal  Fuji 36-37 Putih', 'Sandal Wanita', 'Balance', 'BRG000217', 53000, 63000, 0, 1, 1, 0, 1, '36-37', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(151, '000151', '7002-A21', 'Sandal  Fuji 38-39 Putih', 'Sandal Wanita', 'Balance', 'BRG000218', 53000, 63000, 0, 0, 0, 0, 1, '38-39', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(152, '000152', '7002-A21', 'Sandal  Fuji 40-41 Putih', 'Sandal Wanita', 'Balance', 'BRG000219', 53000, 63000, 0, 0, 0, 0, 1, '40-41', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(153, '000153', '7002-A21', 'Sandal  Fuji 36-37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000220', 53000, 63000, 0, 0, 0, 0, 1, '36-37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(154, '000154', '7002-A21', 'Sandal  Fuji 38-39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000221', 53000, 63000, 0, 0, 0, 0, 1, '38-39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(155, '000155', '7002-A21', 'Sandal  Fuji 40-41 Hitam', 'Sandal Wanita', 'Balance', 'BRG000222', 53000, 63000, 0, 1, 1, 0, 1, '40-41', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(156, '000156', '7002-A21', 'Sandal  Fuji 36-37 Pink', 'Sandal Wanita', 'Balance', 'BRG000223', 53000, 63000, 0, 1, 1, 0, 1, '36-37', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(157, '000157', '7002-A21', 'Sandal  Fuji 38-39 Pink', 'Sandal Wanita', 'Balance', 'BRG000224', 53000, 63000, 0, 1, 1, 0, 1, '38-39', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(158, '000158', '7002-A21', 'Sandal  Fuji 40-41 Pink', 'Sandal Wanita', 'Balance', 'BRG000225', 53000, 63000, 0, 0, 0, 0, 1, '40-41', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(159, '000159', '8559-A1', 'Sandal  Baim 36-37 Pink', 'Sandal Wanita', 'Balance', 'BRG000226', 58000, 67900, 0, 0, 0, 0, 1, '36-37', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(160, '000160', '8559-A1', 'Sandal  Baim 38-39 Pink', 'Sandal Wanita', 'Balance', 'BRG000227', 58000, 67900, 0, 0, 0, 0, 1, '38-39', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(161, '000161', '8559-A1', 'Sandal  Baim 40-41 Pink', 'Sandal Wanita', 'Balance', 'BRG000228', 58000, 67900, 0, 0, 0, 0, 1, '40-41', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(162, '000162', '8559-A1', 'Sandal  Baim 36-37 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000229', 58000, 67900, 0, 0, 0, 0, 1, '36-37', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(163, '000163', '8559-A1', 'Sandal  Baim 38-39 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000230', 58000, 67900, 0, 0, 0, 0, 1, '38-39', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(164, '000164', '8559-A1', 'Sandal  Baim 40-41 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000231', 58000, 67900, 0, 0, 0, 0, 1, '40-41', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(165, '000165', '8559-A1', 'Sandal  Baim 36-37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000232', 58000, 67900, 0, 0, 0, 0, 1, '36-37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(166, '000166', '8559-A1', 'Sandal  Baim 38-39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000233', 58000, 67900, 0, 0, 0, 0, 1, '38-39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(167, '000167', '8559-A1', 'Sandal  Baim 40-41 Hitam', 'Sandal Wanita', 'Balance', 'BRG000234', 58000, 67900, 0, 0, 0, 0, 1, '40-41', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(168, '000168', '8559-A1', 'Sandal  Baim 36-37 Putih', 'Sandal Wanita', 'Balance', 'BRG000235', 58000, 67900, 0, 0, 0, 0, 1, '36-37', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(169, '000169', '8559-A1', 'Sandal  Baim 38-39 Putih', 'Sandal Wanita', 'Balance', 'BRG000236', 58000, 67900, 0, 0, 0, 0, 1, '38-39', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(170, '000170', '8559-A1', 'Sandal  Baim 40-41 Putih', 'Sandal Wanita', 'Balance', 'BRG000237', 58000, 67900, 0, 0, 0, 0, 1, '40-41', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(171, '000171', '039-3A', 'Sandal  Baim 36-37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000238', 40000, 49999, 1, 1, 0, 0, 1, '36-37', 'Hitam(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(172, '000172', '039-3A', 'Sandal  Baim 38-39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000239', 40000, 49999, 0, 1, 1, 0, 1, '38-39', 'Hitam(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(173, '000173', '039-3A', 'Sandal  Baim 40-41 Hitam', 'Sandal Wanita', 'Balance', 'BRG000240', 40000, 49999, 0, 0, 0, 0, 1, '40-41', 'Hitam(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(174, '000174', '039-3A', 'Sandal  Baim 36-37 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000241', 40000, 49999, 0, 1, 1, 0, 1, '36-37', 'Cokelat(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(175, '000175', '039-3A', 'Sandal  Baim 38-39 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000242', 40000, 49999, 0, 1, 1, 0, 1, '38-39', 'Cokelat(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(176, '000176', '039-3A', 'Sandal  Baim 40-41 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000243', 40000, 49999, 0, 1, 1, 0, 1, '40-41', 'Cokelat(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(177, '000177', '2212-26', 'Sandal Ban Dua 37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000244', 28000, 38900, 1, 4, 3, 0, 1, '37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(178, '000178', '2212-26', 'Sandal Ban Dua 38 Hitam', 'Sandal Wanita', 'Balance', 'BRG000245', 28000, 38900, 0, 3, 3, 0, 1, '38', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(179, '000179', '2212-26', 'Sandal Ban Dua 39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000246', 28000, 38900, 0, 5, 5, 0, 1, '39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(180, '000180', '2212-26', 'Sandal Ban Dua 40 Hitam', 'Sandal Wanita', 'Balance', 'BRG000247', 28000, 38900, 0, 4, 4, 0, 1, '40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(181, '000181', '2212-26', 'Sandal Ban Dua 37 Ungu', 'Sandal Wanita', 'Balance', 'BRG000248', 28000, 38900, 0, 5, 5, 0, 1, '37', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(182, '000182', '2212-26', 'Sandal Ban Dua 38 Ungu', 'Sandal Wanita', 'Balance', 'BRG000249', 28000, 38900, 1, 3, 2, 0, 1, '38', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(183, '000183', '2212-26', 'Sandal Ban Dua 39 Ungu', 'Sandal Wanita', 'Balance', 'BRG000250', 28000, 38900, 0, 4, 4, 0, 1, '39', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(184, '000184', '2212-26', 'Sandal Ban Dua 40 Ungu', 'Sandal Wanita', 'Balance', 'BRG000251', 28000, 38900, 0, 3, 3, 0, 1, '40', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(185, '000185', '2212-26', 'Sandal Ban Dua 37 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000252', 28000, 38900, 0, 4, 4, 0, 1, '37', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(186, '000186', '2212-26', 'Sandal Ban Dua 38 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000253', 28000, 38900, 0, 3, 3, 0, 1, '38', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(187, '000187', '2212-26', 'Sandal Ban Dua 39 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000254', 28000, 38900, 0, 3, 3, 0, 1, '39', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(188, '000188', '2212-26', 'Sandal Ban Dua 40 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000255', 28000, 38900, 0, 4, 4, 0, 1, '40', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(189, '000189', '2225-1', 'Sandal Tali Silang 37 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000256', 23000, 33000, 0, 6, 6, 0, 1, '37', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(190, '000190', '2225-1', 'Sandal Tali Silang 38 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000257', 23000, 33000, 1, 6, 5, 0, 1, '38', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(191, '000191', '2225-1', 'Sandal Tali Silang 39 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000258', 23000, 33000, 0, 5, 5, 0, 1, '39', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(192, '000192', '2225-1', 'Sandal Tali Silang 40 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000259', 23000, 33000, 0, 6, 6, 0, 1, '40', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(193, '000193', '2225-1', 'Sandal Tali Silang 37 Ungu', 'Sandal Wanita', 'Balance', 'BRG000260', 23000, 33000, 0, 4, 4, 0, 1, '37', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(194, '000194', '2225-1', 'Sandal Tali Silang 38 Ungu', 'Sandal Wanita', 'Balance', 'BRG000261', 23000, 33000, 0, 5, 5, 0, 1, '38', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(195, '000195', '2225-1', 'Sandal Tali Silang 39 Ungu', 'Sandal Wanita', 'Balance', 'BRG000262', 23000, 33000, 0, 6, 6, 0, 1, '39', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(196, '000196', '2225-1', 'Sandal Tali Silang 40 Ungu', 'Sandal Wanita', 'Balance', 'BRG000263', 23000, 33000, 0, 5, 5, 0, 1, '40', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(197, '000197', '2225-1', 'Sandal Tali Silang 37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000264', 23000, 33000, 0, 6, 6, 0, 1, '37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(198, '000198', '2225-1', 'Sandal Tali Silang 38 Hitam', 'Sandal Wanita', 'Balance', 'BRG000265', 23000, 33000, 0, 5, 5, 0, 1, '38', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(199, '000199', '2225-1', 'Sandal Tali Silang 39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000266', 23000, 33000, 0, 6, 6, 0, 1, '39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(200, '000200', '2225-1', 'Sandal Tali Silang 40 Hitam', 'Sandal Wanita', 'Balance', 'BRG000267', 23000, 33000, 0, 5, 5, 0, 1, '40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(201, '000201', '039-1A', 'Sandal  Baim 36-37 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000268', 37000, 49500, 0, 11, 11, 0, 1, '36-37', 'Cokelat(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(202, '000202', '039-1A', 'Sandal  Baim 38-39 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000269', 37000, 49500, 1, 16, 15, 0, 1, '38-39', 'Cokelat(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(203, '000203', '039-1A', 'Sandal  Baim 40-41 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000270', 37000, 49500, 1, 6, 5, 0, 1, '40-41', 'Cokelat(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(204, '000204', '039-1A', 'Sandal  Baim 36-37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000271', 37000, 49500, 0, 11, 11, 0, 1, '36-37', 'Hitam(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(205, '000205', '039-1A', 'Sandal  Baim 38-39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000272', 37000, 49500, 0, 10, 10, 0, 1, '38-39', 'Hitam(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(206, '000206', '039-1A', 'Sandal  Baim 40-41 Hitam', 'Sandal Wanita', 'Balance', 'BRG000273', 37000, 49500, 0, 11, 11, 0, 1, '40-41', 'Hitam(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(207, '000207', '6002-6S', 'Sandal  Baim 25-26 Biru', 'Sandal Anak', 'Balance', 'BRG000274', 36000, 46500, 1, 6, 5, 0, 1, '25-26', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(208, '000208', '6002-6S', 'Sandal  Baim 27-28 Biru', 'Sandal Anak', 'Balance', 'BRG000275', 36000, 46500, 0, 5, 5, 0, 1, '27-28', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(209, '000209', '6002-6S', 'Sandal  Baim 29-30 Biru', 'Sandal Anak', 'Balance', 'BRG000276', 36000, 46500, 0, 6, 6, 0, 1, '29-30', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(210, '000210', '6002-6S', 'Sandal  Baim 25-26 Fanta', 'Sandal Anak', 'Balance', 'BRG000277', 36000, 46500, 1, 6, 5, 0, 1, '25-26', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(211, '000211', '6002-6S', 'Sandal  Baim 27-28 Fanta', 'Sandal Anak', 'Balance', 'BRG000278', 36000, 46500, 0, 7, 7, 0, 1, '27-28', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(212, '000212', '6002-6S', 'Sandal  Baim 29-30 Fanta', 'Sandal Anak', 'Balance', 'BRG000279', 36000, 46500, 0, 5, 5, 0, 1, '29-30', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(213, '000213', '6002-6S', 'Sandal  Baim 25-26 Pink', 'Sandal Anak', 'Balance', 'BRG000280', 36000, 46500, 0, 6, 6, 0, 1, '25-26', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(214, '000214', '6002-6S', 'Sandal  Baim 27-28 Pink', 'Sandal Anak', 'Balance', 'BRG000281', 36000, 46500, 0, 6, 6, 0, 1, '27-28', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(215, '000215', '6002-6S', 'Sandal  Baim 29-30 Pink', 'Sandal Anak', 'Balance', 'BRG000282', 36000, 46500, 0, 6, 6, 0, 1, '29-30', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(216, '000216', '6002-6S', 'Sandal  Baim 25-26 Merah', 'Sandal Anak', 'Balance', 'BRG000283', 36000, 46500, 0, 6, 6, 0, 1, '25-26', 'Merah', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(217, '000217', '6002-6S', 'Sandal  Baim 27-28 Merah', 'Sandal Anak', 'Balance', 'BRG000284', 36000, 46500, 0, 6, 6, 0, 1, '27-28', 'Merah', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(218, '000218', '6002-6S', 'Sandal  Baim 29-30 Merah', 'Sandal Anak', 'Balance', 'BRG000285', 36000, 46500, 0, 6, 6, 0, 1, '29-30', 'Merah', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(219, '000219', '6002-6M', 'Sandal  Baim 31-32 Biru', 'Sandal Anak', 'Balance', 'BRG000286', 37000, 46500, 0, 6, 6, 0, 1, '31-32', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(220, '000220', '6002-6M', 'Sandal  Baim 33-34 Biru', 'Sandal Anak', 'Balance', 'BRG000287', 37000, 46500, 0, 6, 6, 0, 1, '33-34', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(221, '000221', '6002-6M', 'Sandal  Baim 35-36 Biru', 'Sandal Anak', 'Balance', 'BRG000288', 37000, 46500, 0, 5, 5, 0, 1, '35-36', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(222, '000222', '6002-6M', 'Sandal  Baim 31-32 Fanta', 'Sandal Anak', 'Balance', 'BRG000289', 37000, 46500, 0, 6, 6, 0, 1, '31-32', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(223, '000223', '6002-6M', 'Sandal  Baim 33-34 Fanta', 'Sandal Anak', 'Balance', 'BRG000290', 37000, 46500, 1, 6, 5, 0, 1, '33-34', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(224, '000224', '6002-6M', 'Sandal  Baim 35-36 Fanta', 'Sandal Anak', 'Balance', 'BRG000291', 37000, 46500, 0, 7, 7, 0, 1, '35-36', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(225, '000225', '6002-6M', 'Sandal  Baim 31-32 Pink', 'Sandal Anak', 'Balance', 'BRG000292', 37000, 46500, 0, 6, 6, 0, 1, '31-32', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(226, '000226', '6002-6M', 'Sandal  Baim 33-34 Pink', 'Sandal Anak', 'Balance', 'BRG000293', 37000, 46500, 0, 6, 6, 0, 1, '33-34', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(227, '000227', '6002-6M', 'Sandal  Baim 35-36 Pink', 'Sandal Anak', 'Balance', 'BRG000294', 37000, 46500, 0, 6, 6, 0, 1, '35-36', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(228, '000228', '6002-6M', 'Sandal  Baim 31-32 Merah', 'Sandal Anak', 'Balance', 'BRG000295', 37000, 46500, 0, 6, 6, 0, 1, '31-32', 'Merah', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(229, '000229', '6002-6M', 'Sandal  Baim 33-34 Merah', 'Sandal Anak', 'Balance', 'BRG000296', 37000, 46500, 1, 6, 5, 0, 1, '33-34', 'Merah', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(230, '000230', '6002-6M', 'Sandal  Baim 35-36 Merah', 'Sandal Anak', 'Balance', 'BRG000297', 37000, 46500, 0, 5, 5, 0, 1, '35-36', 'Merah', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(231, '000231', '9013', 'Sandal  Hiu 36-37 Biru', 'Sandal Wanita', 'Tanpa Merek', 'BRG000298', 35000, 45000, 0, 0, 0, 0, 1, '36-37', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(232, '000232', '9013', 'Sandal  Hiu 38-39 Biru', 'Sandal Wanita', 'Tanpa Merek', 'BRG000299', 35000, 45000, 0, 1, 1, 0, 1, '38-39', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(233, '000233', '9013', 'Sandal  Hiu 40-41 Biru', 'Sandal Wanita', 'Tanpa Merek', 'BRG000300', 35000, 45000, 0, 0, 0, 0, 1, '40-41', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(234, '000234', '9013', 'Sandal  Hiu 36-37 Hitam', 'Sandal Wanita', 'Tanpa Merek', 'BRG000301', 35000, 45000, 0, 0, 0, 0, 1, '36-37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(235, '000235', '9013', 'Sandal  Hiu 38-39 Hitam', 'Sandal Wanita', 'Tanpa Merek', 'BRG000302', 35000, 45000, 0, 1, 1, 0, 1, '38-39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(236, '000236', '9013', 'Sandal  Hiu 40-41 Hitam', 'Sandal Wanita', 'Tanpa Merek', 'BRG000303', 35000, 45000, 1, 1, 0, 0, 1, '40-41', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(237, '000237', '9013', 'Sandal  Hiu 36-37 Pink', 'Sandal Wanita', 'Tanpa Merek', 'BRG000304', 35000, 45000, 0, 0, 0, 0, 1, '36-37', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(238, '000238', '9013', 'Sandal  Hiu 38-39 Pink', 'Sandal Wanita', 'Tanpa Merek', 'BRG000305', 35000, 45000, 0, 0, 0, 0, 1, '38-39', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(239, '000239', '9013', 'Sandal  Hiu 40-41 Pink', 'Sandal Wanita', 'Tanpa Merek', 'BRG000306', 35000, 45000, 1, 1, 0, 0, 1, '40-41', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(240, '000240', '9013', 'Sandal  Hiu 36-37 Hijau', 'Sandal Wanita', 'Tanpa Merek', 'BRG000307', 35000, 45000, 0, 0, 0, 0, 1, '36-37', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(241, '000241', '9013', 'Sandal  Hiu 38-39 Hijau', 'Sandal Wanita', 'Tanpa Merek', 'BRG000308', 35000, 45000, 0, 0, 0, 0, 1, '38-39', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(242, '000242', '9013', 'Sandal  Hiu 40-41 Hijau', 'Sandal Wanita', 'Tanpa Merek', 'BRG000309', 35000, 45000, 0, 1, 1, 0, 1, '40-41', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(243, '000243', '8211-F', 'Sandal  Jpt Pita 36-37 Hijau', 'Sandal Wanita', 'Balance', 'BRG000310', 46000, 55900, 0, 1, 1, 0, 1, '36-37', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(244, '000244', '8211-F', 'Sandal  Jpt Pita 38-39 Hijau', 'Sandal Wanita', 'Balance', 'BRG000311', 46000, 55900, 0, 0, 0, 0, 1, '38-39', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(245, '000245', '8211-F', 'Sandal  Jpt Pita 40-41 Hijau', 'Sandal Wanita', 'Balance', 'BRG000312', 46000, 55900, 0, 0, 0, 0, 1, '40-41', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(246, '000246', '8211-F', 'Sandal  Jpt Pita 36-37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000313', 46000, 55900, 0, 0, 0, 0, 1, '36-37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(247, '000247', '8211-F', 'Sandal  Jpt Pita 38-39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000314', 46000, 55900, 0, 1, 1, 0, 1, '38-39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(248, '000248', '8211-F', 'Sandal  Jpt Pita 40-41 Hitam', 'Sandal Wanita', 'Balance', 'BRG000315', 46000, 55900, 0, 0, 0, 0, 1, '40-41', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(249, '000249', '8211-F', 'Sandal  Jpt Pita 36-37 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000316', 46000, 55900, 0, 1, 1, 0, 1, '36-37', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(250, '000250', '8211-F', 'Sandal  Jpt Pita 38-39 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000317', 46000, 55900, 0, 0, 0, 0, 1, '38-39', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(251, '000251', '8211-F', 'Sandal  Jpt Pita 40-41 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000318', 46000, 55900, 0, 1, 1, 0, 1, '40-41', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(252, '000252', '8211-F', 'Sandal  Jpt Pita 36-37 Pink', 'Sandal Wanita', 'Balance', 'BRG000319', 46000, 55900, 0, 0, 0, 0, 1, '36-37', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(253, '000253', '8211-F', 'Sandal  Jpt Pita 38-39 Pink', 'Sandal Wanita', 'Balance', 'BRG000320', 46000, 55900, 0, 0, 0, 0, 1, '38-39', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(254, '000254', '8211-F', 'Sandal  Jpt Pita 40-41 Pink', 'Sandal Wanita', 'Balance', 'BRG000321', 46000, 55900, 1, 1, 0, 0, 1, '40-41', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(255, '000255', '8826-A', 'Sandal  rmh klinci 36-37 Pink', 'Sandal Wanita', 'Tanpa Merek', 'BRG000322', 49000, 59999, 1, 1, 0, 0, 1, '36-37', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg');
INSERT INTO `barang` (`no`, `kode`, `sku`, `nama`, `kategori`, `brand`, `barcode`, `hargabeli`, `hargajual`, `terjual`, `terbeli`, `sisa`, `retur`, `stokmin`, `ukuran`, `warna`, `expired`, `satuan`, `lokasi`, `keterangan`, `avatar`) VALUES
(256, '000256', '8826-A', 'Sandal  rmh klinci 38-39 Pink', 'Sandal Wanita', 'Tanpa Merek', 'BRG000323', 49000, 59999, 1, 2, 1, 0, 1, '38-39', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(257, '000257', '8826-A', 'Sandal  rmh klinci 40-41 Pink', 'Sandal Wanita', 'Tanpa Merek', 'BRG000324', 49000, 59999, 0, 1, 1, 0, 1, '40-41', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(258, '000258', '8826-A', 'Sandal  rmh klinci 36-37 Hijau', 'Sandal Wanita', 'Tanpa Merek', 'BRG000325', 49000, 59999, 1, 2, 1, 0, 1, '36-37', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(259, '000259', '8826-A', 'Sandal  rmh klinci 38-39 Hijau', 'Sandal Wanita', 'Tanpa Merek', 'BRG000326', 49000, 59999, 0, 1, 1, 0, 1, '38-39', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(260, '000260', '8826-A', 'Sandal  rmh klinci 40-41 Hijau', 'Sandal Wanita', 'Tanpa Merek', 'BRG000327', 49000, 59999, 0, 0, 0, 0, 1, '40-41', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(261, '000261', '8826-A', 'Sandal  rmh klinci 36-37 Hitam', 'Sandal Wanita', 'Tanpa Merek', 'BRG000328', 49000, 59999, 0, 2, 2, 0, 1, '36-37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(262, '000262', '8826-A', 'Sandal  rmh klinci 38-39 Hitam', 'Sandal Wanita', 'Tanpa Merek', 'BRG000329', 49000, 59999, 0, 1, 1, 0, 1, '38-39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(263, '000263', '8826-A', 'Sandal  rmh klinci 40-41 Hitam', 'Sandal Wanita', 'Tanpa Merek', 'BRG000330', 49000, 59999, 0, 2, 2, 0, 1, '40-41', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(264, '000264', '8826-A', 'Sandal  rmh klinci 36-37 Cokelat', 'Sandal Wanita', 'Tanpa Merek', 'BRG000331', 49000, 59999, 0, 0, 0, 0, 1, '36-37', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(265, '000265', '8826-A', 'Sandal  rmh klinci 38-39 Cokelat', 'Sandal Wanita', 'Tanpa Merek', 'BRG000332', 49000, 59999, 0, 1, 1, 0, 1, '38-39', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(266, '000266', '8826-A', 'Sandal  rmh klinci 40-41 Cokelat', 'Sandal Wanita', 'Tanpa Merek', 'BRG000333', 49000, 59999, 0, 2, 2, 0, 1, '40-41', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(267, '000267', '866', 'Sandal  Ank Slop 30-31 Pink', 'Sandal Anak', 'Tanpa Merek', 'BRG000334', 32000, 42000, 0, 1, 1, 0, 1, '30-31', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(268, '000268', '866', 'Sandal  Ank Slop 32-33 Pink', 'Sandal Anak', 'Tanpa Merek', 'BRG000335', 32000, 42000, 0, 0, 0, 0, 1, '32-33', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(269, '000269', '866', 'Sandal  Ank Slop 34-35 Pink', 'Sandal Anak', 'Tanpa Merek', 'BRG000336', 32000, 42000, 0, 1, 1, 0, 1, '34-35', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(270, '000270', '866', 'Sandal  Ank Slop 30-31 Hitam', 'Sandal Anak', 'Tanpa Merek', 'BRG000337', 32000, 42000, 0, 0, 0, 0, 1, '30-31', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(271, '000271', '866', 'Sandal  Ank Slop 32-33 Hitam', 'Sandal Anak', 'Tanpa Merek', 'BRG000338', 32000, 42000, 0, 1, 1, 0, 1, '32-33', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(272, '000272', '866', 'Sandal  Ank Slop 34-35 Hitam', 'Sandal Anak', 'Tanpa Merek', 'BRG000339', 32000, 42000, 0, 0, 0, 0, 1, '34-35', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(273, '000273', '866', 'Sandal  Ank Slop 30-31 Hijau', 'Sandal Anak', 'Tanpa Merek', 'BRG000340', 32000, 42000, 0, 0, 0, 0, 1, '30-31', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(274, '000274', '866', 'Sandal  Ank Slop 32-33 Hijau', 'Sandal Anak', 'Tanpa Merek', 'BRG000341', 32000, 42000, 0, 0, 0, 0, 1, '32-33', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(275, '000275', '866', 'Sandal  Ank Slop 34-35 Hijau', 'Sandal Anak', 'Tanpa Merek', 'BRG000342', 32000, 42000, 0, 1, 1, 0, 1, '34-35', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(276, '000276', '866', 'Sandal  Ank Slop 30-31 Fanta', 'Sandal Anak', 'Tanpa Merek', 'BRG000343', 32000, 42000, 0, 1, 1, 0, 1, '30-31', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(277, '000277', '866', 'Sandal  Ank Slop 32-33 Fanta', 'Sandal Anak', 'Tanpa Merek', 'BRG000344', 32000, 42000, 0, 0, 0, 0, 1, '32-33', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(278, '000278', '866', 'Sandal  Ank Slop 34-35 Fanta', 'Sandal Anak', 'Tanpa Merek', 'BRG000345', 32000, 42000, 0, 0, 0, 0, 1, '34-35', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(279, '000279', 'D-55-7S', 'Sandal  Ank Boneka 24-25 Pink', 'Sandal Anak', 'Balance', 'BRG000346', 43000, 53000, 0, 7, 7, 0, 1, '24-25', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(280, '000280', 'D-55-7S', 'Sandal  Ank Boneka 26-27 Pink', 'Sandal Anak', 'Balance', 'BRG000347', 43000, 53000, 0, 8, 8, 0, 1, '26-27', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(281, '000281', 'D-55-7S', 'Sandal  Ank Boneka 28-29 Pink', 'Sandal Anak', 'Balance', 'BRG000348', 43000, 53000, 0, 7, 7, 0, 1, '28-29', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(282, '000282', 'D-55-7S', 'Sandal  Ank Boneka 24-25 Fanta', 'Sandal Anak', 'Balance', 'BRG000349', 43000, 53000, 0, 6, 6, 0, 1, '24-25', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(283, '000283', 'D-55-7S', 'Sandal  Ank Boneka 26-27 Fanta', 'Sandal Anak', 'Balance', 'BRG000350', 43000, 53000, 0, 7, 7, 0, 1, '26-27', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(284, '000284', 'D-55-7S', 'Sandal  Ank Boneka 28-29 Fanta', 'Sandal Anak', 'Balance', 'BRG000351', 43000, 53000, 0, 8, 8, 0, 1, '28-29', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(285, '000285', 'D-55-7S', 'Sandal  Ank Boneka 24-25 Putih', 'Sandal Anak', 'Balance', 'BRG000352', 43000, 53000, 0, 8, 8, 0, 1, '24-25', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(286, '000286', 'D-55-7S', 'Sandal  Ank Boneka 26-27 Putih', 'Sandal Anak', 'Balance', 'BRG000353', 43000, 53000, 0, 7, 7, 0, 1, '26-27', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(287, '000287', 'D-55-7S', 'Sandal  Ank Boneka 28-29 Putih', 'Sandal Anak', 'Balance', 'BRG000354', 43000, 53000, 0, 7, 7, 0, 1, '28-29', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(288, '000288', 'D-55-7M', 'Sandal  Ank Boneka 30-31 Pink', 'Sandal Anak', 'Balance', 'BRG000355', 46000, 56000, 0, 1, 1, 0, 1, '30-31', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(289, '000289', 'D-55-7M', 'Sandal  Ank Boneka 32-33 Pink', 'Sandal Anak', 'Balance', 'BRG000356', 46000, 56000, 0, 0, 0, 0, 1, '32-33', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(290, '000290', 'D-55-7M', 'Sandal  Ank Boneka 34-35 Pink', 'Sandal Anak', 'Balance', 'BRG000357', 46000, 56000, 0, 1, 1, 0, 1, '34-35', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(291, '000291', 'D-55-7M', 'Sandal  Ank Boneka 30-31 Fanta', 'Sandal Anak', 'Balance', 'BRG000358', 46000, 56000, 0, 1, 1, 0, 1, '30-31', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(292, '000292', 'D-55-7M', 'Sandal  Ank Boneka 32-33 Fanta', 'Sandal Anak', 'Balance', 'BRG000359', 46000, 56000, 0, 1, 1, 0, 1, '32-33', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(293, '000293', 'D-55-7M', 'Sandal  Ank Boneka 34-35 Fanta', 'Sandal Anak', 'Balance', 'BRG000360', 46000, 56000, 0, 0, 0, 0, 1, '34-35', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(294, '000294', 'D-55-7M', 'Sandal  Ank Boneka 30-31 Putih', 'Sandal Anak', 'Balance', 'BRG000361', 46000, 56000, 0, 0, 0, 0, 1, '30-31', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(295, '000295', 'D-55-7M', 'Sandal  Ank Boneka 32-33 Putih', 'Sandal Anak', 'Balance', 'BRG000362', 46000, 56000, 0, 1, 1, 0, 1, '32-33', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(296, '000296', 'D-55-7M', 'Sandal  Ank Boneka 34-35 Putih', 'Sandal Anak', 'Balance', 'BRG000363', 46000, 56000, 0, 0, 0, 0, 1, '34-35', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(297, '000297', 'D-55-9S', 'Sandal  Ank Lmpu 24-25 Fanta', 'Sandal Anak', 'Balance', 'BRG000364', 43000, 53000, 5, 8, 3, 0, 1, '24-25', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(298, '000298', 'D-55-9S', 'Sandal  Ank Lmpu 26-27 Fanta', 'Sandal Anak', 'Balance', 'BRG000365', 43000, 53000, 5, 7, 2, 0, 1, '26-27', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(299, '000299', 'D-55-9S', 'Sandal  Ank Lmpu 28-29 Fanta', 'Sandal Anak', 'Balance', 'BRG000366', 43000, 53000, 0, 6, 6, 0, 1, '28-29', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(300, '000300', 'D-55-9S', 'Sandal  Ank Lmpu 24-25 Putih', 'Sandal Anak', 'Balance', 'BRG000367', 43000, 53000, 0, 7, 7, 0, 1, '24-25', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(301, '000301', 'D-55-9S', 'Sandal  Ank Lmpu 26-27 Putih', 'Sandal Anak', 'Balance', 'BRG000368', 43000, 53000, 0, 8, 8, 0, 1, '26-27', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(302, '000302', 'D-55-9S', 'Sandal  Ank Lmpu 28-29 Putih', 'Sandal Anak', 'Balance', 'BRG000369', 43000, 53000, 0, 7, 7, 0, 1, '28-29', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(303, '000303', 'D-55-9S', 'Sandal  Ank Lmpu 24-25 Pink', 'Sandal Anak', 'Balance', 'BRG000370', 43000, 53000, 0, 8, 8, 0, 1, '24-25', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(304, '000304', 'D-55-9S', 'Sandal  Ank Lmpu 26-27 Pink', 'Sandal Anak', 'Balance', 'BRG000371', 43000, 53000, 1, 7, 6, 0, 1, '26-27', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(305, '000305', 'D-55-9S', 'Sandal  Ank Lmpu 28-29 Pink', 'Sandal Anak', 'Balance', 'BRG000372', 43000, 53000, 0, 7, 7, 0, 1, '28-29', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(306, '000306', 'D-55-9M', 'Sandal  Ank Lmpu 30-31 Fanta', 'Sandal Anak', 'Balance', 'BRG000373', 46000, 56000, 0, 0, 0, 0, 1, '30-31', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(307, '000307', 'D-55-9M', 'Sandal  Ank Lmpu 32-33 Fanta', 'Sandal Anak', 'Balance', 'BRG000374', 46000, 56000, 0, 1, 1, 0, 1, '32-33', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(308, '000308', 'D-55-9M', 'Sandal  Ank Lmpu 34-35 Fanta', 'Sandal Anak', 'Balance', 'BRG000375', 46000, 56000, 0, 1, 1, 0, 1, '34-35', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(309, '000309', 'D-55-9M', 'Sandal  Ank Lmpu 30-31 Putih', 'Sandal Anak', 'Balance', 'BRG000376', 46000, 56000, 0, 0, 0, 0, 1, '30-31', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(310, '000310', 'D-55-9M', 'Sandal  Ank Lmpu 32-33 Putih', 'Sandal Anak', 'Balance', 'BRG000377', 46000, 56000, 0, 1, 1, 0, 1, '32-33', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(311, '000311', 'D-55-9M', 'Sandal  Ank Lmpu 34-35 Putih', 'Sandal Anak', 'Balance', 'BRG000378', 46000, 56000, 0, 0, 0, 0, 1, '34-35', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(312, '000312', 'D-55-9M', 'Sandal  Ank Lmpu 30-31 Pink', 'Sandal Anak', 'Balance', 'BRG000379', 46000, 56000, 0, 1, 1, 0, 1, '30-31', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(313, '000313', 'D-55-9M', 'Sandal  Ank Lmpu 32-33 Pink', 'Sandal Anak', 'Balance', 'BRG000380', 46000, 56000, 0, 0, 0, 0, 1, '32-33', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(314, '000314', 'D-55-9M', 'Sandal  Ank Lmpu 34-35 Pink', 'Sandal Anak', 'Balance', 'BRG000381', 46000, 56000, 0, 1, 1, 0, 1, '34-35', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(315, '000315', '2223-8', 'Sandal Slop Polos 37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000382', 36000, 46000, 0, 0, 0, 0, 1, '37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(316, '000316', '2223-8', 'Sandal Slop Polos 38 Hitam', 'Sandal Wanita', 'Balance', 'BRG000383', 36000, 46000, 0, 0, 0, 0, 1, '38', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(317, '000317', '2223-8', 'Sandal Slop Polos 39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000384', 36000, 46000, 0, 0, 0, 0, 1, '39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(318, '000318', '2223-8', 'Sandal Slop Polos 40 Hitam', 'Sandal Wanita', 'Balance', 'BRG000385', 36000, 46000, 0, 0, 0, 0, 1, '40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(319, '000319', '2223-8', 'Sandal Slop Polos 37 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000386', 36000, 46000, 0, 0, 0, 0, 1, '37', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(320, '000320', '2223-8', 'Sandal Slop Polos 38 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000387', 36000, 46000, 0, 0, 0, 0, 1, '38', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(321, '000321', '2223-8', 'Sandal Slop Polos 39 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000388', 36000, 46000, 0, 0, 0, 0, 1, '39', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(322, '000322', '2223-8', 'Sandal Slop Polos 40 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000389', 36000, 46000, 0, 0, 0, 0, 1, '40', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(323, '000323', '2223-8', 'Sandal Slop Polos 37 Merah', 'Sandal Wanita', 'Balance', 'BRG000390', 36000, 46000, 0, 0, 0, 0, 1, '37', 'Merah', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(324, '000324', '2223-8', 'Sandal Slop Polos 38 Merah', 'Sandal Wanita', 'Balance', 'BRG000391', 36000, 46000, 0, 0, 0, 0, 1, '38', 'Merah', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(325, '000325', '2223-8', 'Sandal Slop Polos 39 Merah', 'Sandal Wanita', 'Balance', 'BRG000392', 36000, 46000, 0, 0, 0, 0, 1, '39', 'Merah', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(326, '000326', '2223-8', 'Sandal Slop Polos 40 Merah', 'Sandal Wanita', 'Balance', 'BRG000393', 36000, 46000, 0, 0, 0, 0, 1, '40', 'Merah', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(327, '000327', '2223-8', 'Sandal Slop Polos 37 Ungu', 'Sandal Wanita', 'Balance', 'BRG000394', 36000, 46000, 0, 0, 0, 0, 1, '37', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(328, '000328', '2223-8', 'Sandal Slop Polos 38 Ungu', 'Sandal Wanita', 'Balance', 'BRG000395', 36000, 46000, 0, 0, 0, 0, 1, '38', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(329, '000329', '2223-8', 'Sandal Slop Polos 39 Ungu', 'Sandal Wanita', 'Balance', 'BRG000396', 36000, 46000, 0, 0, 0, 0, 1, '39', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(330, '000330', '2223-8', 'Sandal Slop Polos 40 Ungu', 'Sandal Wanita', 'Balance', 'BRG000397', 36000, 46000, 0, 0, 0, 0, 1, '40', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(331, '000331', '2223-9', 'Sandal Slop Catur 37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000398', 36000, 46000, 0, 1, 1, 0, 1, '37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(332, '000332', '2223-9', 'Sandal Slop Catur 38 Hitam', 'Sandal Wanita', 'Balance', 'BRG000399', 36000, 46000, 0, 0, 0, 0, 1, '38', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(333, '000333', '2223-9', 'Sandal Slop Catur 39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000400', 36000, 46000, 0, 0, 0, 0, 1, '39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(334, '000334', '2223-9', 'Sandal Slop Catur 40 Hitam', 'Sandal Wanita', 'Balance', 'BRG000401', 36000, 46000, 1, 1, 0, 0, 1, '40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(335, '000335', '2223-9', 'Sandal Slop Catur 37 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000402', 36000, 46000, 0, 0, 0, 0, 1, '37', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(336, '000336', '2223-9', 'Sandal Slop Catur 38 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000403', 36000, 46000, 0, 0, 0, 0, 1, '38', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(337, '000337', '2223-9', 'Sandal Slop Catur 39 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000404', 36000, 46000, 0, 0, 0, 0, 1, '39', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(338, '000338', '2223-9', 'Sandal Slop Catur 40 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000405', 36000, 46000, 0, 1, 1, 0, 1, '40', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(339, '000339', '2223-9', 'Sandal Slop Catur 37 Merah', 'Sandal Wanita', 'Balance', 'BRG000406', 36000, 46000, 0, 0, 0, 0, 1, '37', 'Merah', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(340, '000340', '2223-9', 'Sandal Slop Catur 38 Merah', 'Sandal Wanita', 'Balance', 'BRG000407', 36000, 46000, 0, 1, 1, 0, 1, '38', 'Merah', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(341, '000341', '2223-9', 'Sandal Slop Catur 39 Merah', 'Sandal Wanita', 'Balance', 'BRG000408', 36000, 46000, 0, 0, 0, 0, 1, '39', 'Merah', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(342, '000342', '2223-9', 'Sandal Slop Catur 40 Merah', 'Sandal Wanita', 'Balance', 'BRG000409', 36000, 46000, 0, 0, 0, 0, 1, '40', 'Merah', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(343, '000343', '2223-9', 'Sandal Slop Catur 37 Ungu', 'Sandal Wanita', 'Balance', 'BRG000410', 36000, 46000, 0, 0, 0, 0, 1, '37', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(344, '000344', '2223-9', 'Sandal Slop Catur 38 Ungu', 'Sandal Wanita', 'Balance', 'BRG000411', 36000, 46000, 0, 0, 0, 0, 1, '38', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(345, '000345', '2223-9', 'Sandal Slop Catur 39 Ungu', 'Sandal Wanita', 'Balance', 'BRG000412', 36000, 46000, 0, 1, 1, 0, 1, '39', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(346, '000346', '2223-9', 'Sandal Slop Catur 40 Ungu', 'Sandal Wanita', 'Balance', 'BRG000413', 36000, 46000, 0, 0, 0, 0, 1, '40', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(347, '000347', '2226-D9', 'Sandal Wedges 37 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000414', 37000, 47000, 0, 0, 0, 0, 1, '37', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(348, '000348', '2226-D9', 'Sandal Wedges 38 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000415', 37000, 47000, 0, 0, 0, 0, 1, '38', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(349, '000349', '2226-D9', 'Sandal Wedges 39 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000416', 37000, 47000, 0, 0, 0, 0, 1, '39', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(350, '000350', '2226-D9', 'Sandal Wedges 40 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000417', 37000, 47000, 0, 0, 0, 0, 1, '40', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(351, '000351', '2226-D9', 'Sandal Wedges 37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000418', 37000, 47000, 0, 0, 0, 0, 1, '37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(352, '000352', '2226-D9', 'Sandal Wedges 38 Hitam', 'Sandal Wanita', 'Balance', 'BRG000419', 37000, 47000, 0, 0, 0, 0, 1, '38', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(353, '000353', '2226-D9', 'Sandal Wedges 39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000420', 37000, 47000, 0, 0, 0, 0, 1, '39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(354, '000354', '2226-D9', 'Sandal Wedges 40 Hitam', 'Sandal Wanita', 'Balance', 'BRG000421', 37000, 47000, 0, 0, 0, 0, 1, '40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(355, '000355', '2226-D9', 'Sandal Wedges 37 Ungu', 'Sandal Wanita', 'Balance', 'BRG000422', 37000, 47000, 0, 0, 0, 0, 1, '37', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(356, '000356', '2226-D9', 'Sandal Wedges 38 Ungu', 'Sandal Wanita', 'Balance', 'BRG000423', 37000, 47000, 0, 0, 0, 0, 1, '38', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(357, '000357', '2226-D9', 'Sandal Wedges 39 Ungu', 'Sandal Wanita', 'Balance', 'BRG000424', 37000, 47000, 0, 0, 0, 0, 1, '39', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(358, '000358', '2226-D9', 'Sandal Wedges 40 Ungu', 'Sandal Wanita', 'Balance', 'BRG000425', 37000, 47000, 0, 0, 0, 0, 1, '40', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(359, '000359', '2310-XL', 'Sandal Pria 40-41 Hitam', 'Sandal Pria', 'Tanpa Merek', 'BRG000426', 28000, 38888, 1, 9, 8, 0, 1, '40-41', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(360, '000360', '2310-XL', 'Sandal Pria 42-43 Hitam', 'Sandal Pria', 'Tanpa Merek', 'BRG000427', 28000, 38888, 1, 9, 8, 0, 1, '42-43', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(361, '000361', '2310-XL', 'Sandal Pria 44-45 Hitam', 'Sandal Pria', 'Tanpa Merek', 'BRG000428', 28000, 38888, 1, 8, 7, 0, 1, '44-45', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(362, '000362', '2310-XL', 'Sandal Pria 40-41 Putih', 'Sandal Pria', 'Tanpa Merek', 'BRG000429', 28000, 38888, 0, 9, 9, 0, 1, '40-41', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(363, '000363', '2310-XL', 'Sandal Pria 42-43 Putih', 'Sandal Pria', 'Tanpa Merek', 'BRG000430', 28000, 38888, 3, 8, 5, 0, 1, '42-43', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(364, '000364', '2310-XL', 'Sandal Pria 44-45 Putih', 'Sandal Pria', 'Tanpa Merek', 'BRG000431', 28000, 38888, 0, 7, 7, 0, 1, '44-45', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(365, '000365', '2310-XL', 'Sandal Pria 40-41 Hijau', 'Sandal Pria', 'Tanpa Merek', 'BRG000432', 28000, 38888, 2, 9, 7, 0, 1, '40-41', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(366, '000366', '2310-XL', 'Sandal Pria 42-43 Hijau', 'Sandal Pria', 'Tanpa Merek', 'BRG000433', 28000, 38888, 1, 7, 6, 0, 1, '42-43', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(367, '000367', '2310-XL', 'Sandal Pria 44-45 Hijau', 'Sandal Pria', 'Tanpa Merek', 'BRG000434', 28000, 38888, 4, 11, 7, 0, 1, '44-45', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(368, '000368', '2212-25', 'Sandal Kerja 37 Ungu', 'Sandal Wanita', 'Balance', 'BRG000435', 27000, 36900, 0, 4, 4, 0, 1, '37', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(369, '000369', '2212-25', 'Sandal Kerja 38 Ungu', 'Sandal Wanita', 'Balance', 'BRG000436', 27000, 36900, 0, 3, 3, 0, 1, '38', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(370, '000370', '2212-25', 'Sandal Kerja 39 Ungu', 'Sandal Wanita', 'Balance', 'BRG000437', 27000, 36900, 0, 4, 4, 0, 1, '39', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(371, '000371', '2212-25', 'Sandal Kerja 40 Ungu', 'Sandal Wanita', 'Balance', 'BRG000438', 27000, 36900, 0, 4, 4, 0, 1, '40', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(372, '000372', '2212-25', 'Sandal Kerja 37 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000439', 27000, 36900, 0, 3, 3, 0, 1, '37', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(373, '000373', '2212-25', 'Sandal Kerja 38 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000440', 27000, 36900, 0, 4, 4, 0, 1, '38', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(374, '000374', '2212-25', 'Sandal Kerja 39 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000441', 27000, 36900, 0, 4, 4, 0, 1, '39', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(375, '000375', '2212-25', 'Sandal Kerja 40 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000442', 27000, 36900, 0, 4, 4, 0, 1, '40', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(376, '000376', '2212-25', 'Sandal Kerja 37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000443', 27000, 36900, 0, 4, 4, 0, 1, '37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(377, '000377', '2212-25', 'Sandal Kerja 38 Hitam', 'Sandal Wanita', 'Balance', 'BRG000444', 27000, 36900, 1, 3, 2, 0, 1, '38', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(378, '000378', '2212-25', 'Sandal Kerja 39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000445', 27000, 36900, 0, 4, 4, 0, 1, '39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(379, '000379', '2212-25', 'Sandal Kerja 40 Hitam', 'Sandal Wanita', 'Balance', 'BRG000446', 27000, 36900, 0, 4, 4, 0, 1, '40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(380, '000380', '666-D5', 'Sandal Selop 37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000447', 29000, 39000, 1, 3, 2, 0, 1, '37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(381, '000381', '666-D5', 'Sandal Selop 38 Hitam', 'Sandal Wanita', 'Balance', 'BRG000448', 29000, 39000, 0, 1, 1, 0, 1, '38', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(382, '000382', '666-D5', 'Sandal Selop 39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000449', 29000, 39000, 1, 2, 1, 0, 1, '39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(383, '000383', '666-D5', 'Sandal Selop 40 Hitam', 'Sandal Wanita', 'Balance', 'BRG000450', 29000, 39000, 0, 1, 1, 0, 1, '40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(384, '000384', '666-D5', 'Sandal Selop 37 Putih', 'Sandal Wanita', 'Balance', 'BRG000451', 29000, 39000, 0, 2, 2, 0, 1, '37', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(385, '000385', '666-D5', 'Sandal Selop 38 Putih', 'Sandal Wanita', 'Balance', 'BRG000452', 29000, 39000, 0, 3, 3, 0, 1, '38', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(386, '000386', '666-D5', 'Sandal Selop 39 Putih', 'Sandal Wanita', 'Balance', 'BRG000453', 29000, 39000, 0, 1, 1, 0, 1, '39', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(387, '000387', '666-D5', 'Sandal Selop 40 Putih', 'Sandal Wanita', 'Balance', 'BRG000454', 29000, 39000, 0, 2, 2, 0, 1, '40', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(388, '000388', '1330-1B', 'Sandal Teplek 37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000455', 21000, 30899, 0, 1, 1, 0, 1, '37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(389, '000389', '1330-1B', 'Sandal Teplek 38 Hitam', 'Sandal Wanita', 'Balance', 'BRG000456', 21000, 30899, 1, 1, 0, 0, 1, '38', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(390, '000390', '1330-1B', 'Sandal Teplek 39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000457', 21000, 30899, 0, 1, 1, 0, 1, '39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(391, '000391', '1330-1B', 'Sandal Teplek 40 Hitam', 'Sandal Wanita', 'Balance', 'BRG000458', 21000, 30899, 1, 3, 2, 0, 1, '40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(392, '000392', '8559-A2', 'Sandal Kerja 36-37 Pink', 'Sandal Wanita', 'Balance', 'BRG000459', 54000, 64500, 0, 1, 1, 0, 1, '36-37', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(393, '000393', '8559-A2', 'Sandal Kerja 38-39 Pink', 'Sandal Wanita', 'Balance', 'BRG000460', 54000, 64500, 0, 0, 0, 0, 1, '38-39', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(394, '000394', '8559-A2', 'Sandal Kerja 40-41 Pink', 'Sandal Wanita', 'Balance', 'BRG000461', 54000, 64500, 0, 1, 1, 0, 1, '40-41', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(395, '000395', '8559-A2', 'Sandal Kerja 36-37 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000462', 54000, 64500, 0, 1, 1, 0, 1, '36-37', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(396, '000396', '8559-A2', 'Sandal Kerja 38-39 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000463', 54000, 64500, 0, 0, 0, 0, 1, '38-39', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(397, '000397', '8559-A2', 'Sandal Kerja 40-41 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000464', 54000, 64500, 0, 0, 0, 0, 1, '40-41', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(398, '000398', '8559-A2', 'Sandal Kerja 36-37 Putih', 'Sandal Wanita', 'Balance', 'BRG000465', 54000, 64500, 0, 0, 0, 0, 1, '36-37', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(399, '000399', '8559-A2', 'Sandal Kerja 38-39 Putih', 'Sandal Wanita', 'Balance', 'BRG000466', 54000, 64500, 0, 1, 1, 0, 1, '38-39', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(400, '000400', '8559-A2', 'Sandal Kerja 40-41 Putih', 'Sandal Wanita', 'Balance', 'BRG000467', 54000, 64500, 0, 0, 0, 0, 1, '40-41', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(401, '000401', '8559-A2', 'Sandal Kerja 36-37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000468', 54000, 64500, 0, 0, 0, 0, 1, '36-37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(402, '000402', '8559-A2', 'Sandal Kerja 38-39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000469', 54000, 64500, 0, 1, 1, 0, 1, '38-39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(403, '000403', '8559-A2', 'Sandal Kerja 40-41 Hitam', 'Sandal Wanita', 'Balance', 'BRG000470', 54000, 64500, 0, 0, 0, 0, 1, '40-41', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(404, '000404', '6074', 'Sandal Bapau 36 Putih', 'Sandal Wanita', 'Balance', 'BRG000471', 58000, 69900, 0, 0, 0, 0, 1, '36', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(405, '000405', '6074', 'Sandal Bapau 37 Putih', 'Sandal Wanita', 'Balance', 'BRG000472', 58000, 69900, 0, 0, 0, 0, 1, '37', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(406, '000406', '6074', 'Sandal Bapau 38 Putih', 'Sandal Wanita', 'Balance', 'BRG000473', 58000, 69900, 0, 1, 1, 0, 1, '38', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(407, '000407', '6074', 'Sandal Bapau 39 Putih', 'Sandal Wanita', 'Balance', 'BRG000632', 58000, 69900, 0, 0, 0, 0, 1, '39', 'Putih', '0000-00-00', 'PCS', '', '', 'dist/upload/index.jpg'),
(408, '000408', '6074', 'Sandal Bapau 40 Putih', 'Sandal Wanita', 'Balance', 'BRG000633', 58000, 69900, 0, 1, 1, 0, 1, '40', 'Putih', '0000-00-00', 'PCS', '', '', 'dist/upload/index.jpg'),
(409, '000409', '6074', 'Sandal Bapau 41 Putih', 'Sandal Wanita', 'Balance', 'BRG000634', 58000, 69900, 0, 0, 0, 0, 1, '41', 'Putih', '0000-00-00', 'PCS', '', '', 'dist/upload/index.jpg'),
(410, '000410', '6074', 'Sandal Bapau 36 Pink', 'Sandal Wanita', 'Balance', 'BRG000474', 58000, 69900, 0, 0, 0, 0, 1, '36', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(411, '000411', '6074', 'Sandal Bapau 37 Pink', 'Sandal Wanita', 'Balance', 'BRG000475', 58000, 69900, 0, 0, 0, 0, 1, '37', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(412, '000412', '6074', 'Sandal Bapau 38 Pink', 'Sandal Wanita', 'Balance', 'BRG000476', 58000, 69900, 0, 0, 0, 0, 1, '38', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(413, '000413', '6074', 'Sandal Bapau 39 Pink', 'Sandal Wanita', 'Balance', 'BRG000635', 58000, 69900, 1, 1, 0, 0, 1, '39', 'Pink', '0000-00-00', 'PCS', '', '', 'dist/upload/index.jpg'),
(414, '000414', '6074', 'Sandal Bapau 40 Pink', 'Sandal Wanita', 'Balance', 'BRG000636', 58000, 69900, 0, 0, 0, 0, 1, '40', 'Pink', '0000-00-00', 'PCS', '', '', 'dist/upload/index.jpg'),
(415, '000415', '6074', 'Sandal Bapau 41 Pink', 'Sandal Wanita', 'Balance', 'BRG000637', 58000, 69900, 0, 0, 0, 0, 1, '41', 'Pink', '0000-00-00', 'PCS', '', '', 'dist/upload/index.jpg'),
(416, '000416', '6074', 'Sandal Bapau 36 Hitam', 'Sandal Wanita', 'Balance', 'BRG000477', 58000, 69900, 0, 0, 0, 0, 1, '36', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(417, '000417', '6074', 'Sandal Bapau 37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000478', 58000, 69900, 0, 1, 1, 0, 1, '37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(418, '000418', '6074', 'Sandal Bapau 38 Hitam', 'Sandal Wanita', 'Balance', 'BRG000479', 58000, 69900, 0, 0, 0, 0, 1, '38', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(419, '000419', '6074', 'Sandal Bapau 39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000638', 58000, 69900, 0, 0, 0, 0, 1, '39', 'Hitam', '0000-00-00', 'PCS', '', '', 'dist/upload/index.jpg'),
(420, '000420', '6074', 'Sandal Bapau 40 Hitam', 'Sandal Wanita', 'Balance', 'BRG000639', 58000, 69900, 0, 0, 0, 0, 1, '40', 'Hitam', '0000-00-00', 'PCS', '', '', 'dist/upload/index.jpg'),
(421, '000421', '6074', 'Sandal Bapau 41 Hitam', 'Sandal Wanita', 'Balance', 'BRG000640', 58000, 69900, 0, 1, 1, 0, 1, '41', 'Hitam', '0000-00-00', 'PCS', '', '', 'dist/upload/index.jpg'),
(422, '000422', '2226-D1', 'Sandal Jpt Wedgs 36 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000480', 27000, 36900, 0, 0, 0, 0, 1, '36', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(423, '000423', '2226-D1', 'Sandal Jpt Wedgs 37 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000481', 27000, 36900, 0, 0, 0, 0, 1, '37', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(424, '000424', '2226-D1', 'Sandal Jpt Wedgs 38 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000482', 27000, 36900, 1, 1, 0, 0, 1, '38', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(425, '000425', '2226-D1', 'Sandal Jpt Wedgs 39 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000483', 27000, 36900, 0, 0, 0, 0, 1, '39', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(426, '000426', '2226-D1', 'Sandal Jpt Wedgs 40 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000484', 27000, 36900, 0, 1, 1, 0, 1, '40', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(427, '000427', '2226-D1', 'Sandal Jpt Wedgs 36 Hitam', 'Sandal Wanita', 'Balance', 'BRG000485', 27000, 36900, 0, 0, 0, 0, 1, '36', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(428, '000428', '2226-D1', 'Sandal Jpt Wedgs 37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000486', 27000, 36900, 1, 1, 0, 0, 1, '37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(429, '000429', '2226-D1', 'Sandal Jpt Wedgs 38 Hitam', 'Sandal Wanita', 'Balance', 'BRG000487', 27000, 36900, 0, 0, 0, 0, 1, '38', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(430, '000430', '2226-D1', 'Sandal Jpt Wedgs 39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000488', 27000, 36900, 0, 0, 0, 0, 1, '39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(431, '000431', '2226-D1', 'Sandal Jpt Wedgs 40 Hitam', 'Sandal Wanita', 'Balance', 'BRG000489', 27000, 36900, 0, 1, 1, 0, 1, '40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(432, '000432', '2226-D1', 'Sandal Jpt Wedgs 36 Ungu', 'Sandal Wanita', 'Balance', 'BRG000490', 27000, 36900, 0, 0, 0, 0, 1, '36', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(433, '000433', '2226-D1', 'Sandal Jpt Wedgs 37 Ungu', 'Sandal Wanita', 'Balance', 'BRG000491', 27000, 36900, 0, 0, 0, 0, 1, '37', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(434, '000434', '2226-D1', 'Sandal Jpt Wedgs 38 Ungu', 'Sandal Wanita', 'Balance', 'BRG000492', 27000, 36900, 0, 0, 0, 0, 1, '38', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(435, '000435', '2226-D1', 'Sandal Jpt Wedgs 39 Ungu', 'Sandal Wanita', 'Balance', 'BRG000493', 27000, 36900, 0, 1, 1, 0, 1, '39', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(436, '000436', '2226-D1', 'Sandal Jpt Wedgs 40 Ungu', 'Sandal Wanita', 'Balance', 'BRG000494', 27000, 36900, 0, 0, 0, 0, 1, '40', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(437, '000437', '2226-D2', 'Sandal Jpt Wedgs 37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000495', 29000, 39900, 0, 0, 0, 0, 1, '37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(438, '000438', '2226-D2', 'Sandal Jpt Wedgs 38 Hitam', 'Sandal Wanita', 'Balance', 'BRG000496', 29000, 39900, 0, 0, 0, 0, 1, '38', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(439, '000439', '2226-D2', 'Sandal Jpt Wedgs 39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000497', 29000, 39900, 1, 1, 0, 0, 1, '39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(440, '000440', '2226-D2', 'Sandal Jpt Wedgs 40 Hitam', 'Sandal Wanita', 'Balance', 'BRG000498', 29000, 39900, 0, 0, 0, 0, 1, '40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(441, '000441', '2226-D2', 'Sandal Jpt Wedgs 37 Ungu', 'Sandal Wanita', 'Balance', 'BRG000499', 29000, 39900, 0, 0, 0, 0, 1, '37', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(442, '000442', '2226-D2', 'Sandal Jpt Wedgs 38 Ungu', 'Sandal Wanita', 'Balance', 'BRG000500', 29000, 39900, 1, 1, 0, 0, 1, '38', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(443, '000443', '2226-D2', 'Sandal Jpt Wedgs 39 Ungu', 'Sandal Wanita', 'Balance', 'BRG000501', 29000, 39900, 0, 0, 0, 0, 1, '39', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(444, '000444', '2226-D2', 'Sandal Jpt Wedgs 40 Ungu', 'Sandal Wanita', 'Balance', 'BRG000502', 29000, 39900, 0, 1, 1, 0, 1, '40', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(445, '000445', '2226-D2', 'Sandal Jpt Wedgs 37 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000503', 29000, 39900, 0, 1, 1, 0, 1, '37', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(446, '000446', '2226-D2', 'Sandal Jpt Wedgs 38 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000504', 29000, 39900, 0, 0, 0, 0, 1, '38', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(447, '000447', '2226-D2', 'Sandal Jpt Wedgs 39 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000505', 29000, 39900, 0, 1, 1, 0, 1, '39', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(448, '000448', '2226-D2', 'Sandal Jpt Wedgs 40 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000506', 29000, 39900, 0, 0, 0, 0, 1, '40', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(449, '000449', '8211-1', 'Sandal Jpt Wdges 36-37 Putih', 'Sandal Wanita', 'Balance', 'BRG000507', 44000, 54999, 1, 1, 0, 0, 1, '36-37', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(450, '000450', '8211-1', 'Sandal Jpt Wdges 38-39 Putih', 'Sandal Wanita', 'Balance', 'BRG000508', 44000, 54999, 0, 0, 0, 0, 1, '38-39', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(451, '000451', '8211-1', 'Sandal Jpt Wdges 40-41 Putih', 'Sandal Wanita', 'Balance', 'BRG000509', 44000, 54999, 0, 0, 0, 0, 1, '40-41', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(452, '000452', '8211-1', 'Sandal Jpt Wdges 36-37 Hijau', 'Sandal Wanita', 'Balance', 'BRG000510', 44000, 54999, 0, 0, 0, 0, 1, '36-37', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(453, '000453', '8211-1', 'Sandal Jpt Wdges 38-39 Hijau', 'Sandal Wanita', 'Balance', 'BRG000511', 44000, 54999, 0, 0, 0, 0, 1, '38-39', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(454, '000454', '8211-1', 'Sandal Jpt Wdges 40-41 Hijau', 'Sandal Wanita', 'Balance', 'BRG000512', 44000, 54999, 0, 1, 1, 0, 1, '40-41', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(455, '000455', '8211-1', 'Sandal Jpt Wdges 36-37 Pink', 'Sandal Wanita', 'Balance', 'BRG000513', 44000, 54999, 0, 0, 0, 0, 1, '36-37', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(456, '000456', '8211-1', 'Sandal Jpt Wdges 38-39 Pink', 'Sandal Wanita', 'Balance', 'BRG000514', 44000, 54999, 0, 1, 1, 0, 1, '38-39', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(457, '000457', '8211-1', 'Sandal Jpt Wdges 40-41 Pink', 'Sandal Wanita', 'Balance', 'BRG000515', 44000, 54999, 0, 0, 0, 0, 1, '40-41', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(458, '000458', '8211-1', 'Sandal Jpt Wdges 36-37 Fanta', 'Sandal Wanita', 'Balance', 'BRG000516', 44000, 54999, 0, 1, 1, 0, 1, '36-37', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(459, '000459', '8211-1', 'Sandal Jpt Wdges 38-39 Putih', 'Sandal Wanita', 'Balance', 'BRG000517', 44000, 54999, 0, 0, 0, 0, 1, '38-39', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(460, '000460', '8211-1', 'Sandal Jpt Wdges 40-41 Putih', 'Sandal Wanita', 'Balance', 'BRG000518', 44000, 54999, 0, 0, 0, 0, 1, '40-41', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(461, '000461', '8211-1', 'Sandal Jpt Wdges 36-37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000519', 44000, 54999, 0, 0, 0, 0, 1, '36-37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(462, '000462', '8211-1', 'Sandal Jpt Wdges 38-39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000520', 44000, 54999, 0, 0, 0, 0, 1, '38-39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(463, '000463', '8211-1', 'Sandal Jpt Wdges 40-41 Hitam', 'Sandal Wanita', 'Balance', 'BRG000521', 44000, 54999, 0, 1, 1, 0, 1, '40-41', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(464, '000464', '239-3', 'Sandal Slop Pita 36 Putih', 'Sandal Wanita', 'Balance', 'BRG000522', 30000, 39900, 0, 1, 1, 0, 1, '36', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(465, '000465', '239-3', 'Sandal Slop Pita 37 Putih', 'Sandal Wanita', 'Balance', 'BRG000523', 30000, 39900, 0, 0, 0, 0, 1, '37', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(466, '000466', '239-3', 'Sandal Slop Pita 38 Putih', 'Sandal Wanita', 'Balance', 'BRG000524', 30000, 39900, 0, 1, 1, 0, 1, '38', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(467, '000467', '239-3', 'Sandal Slop Pita 39 Putih', 'Sandal Wanita', 'Balance', 'BRG000525', 30000, 39900, 0, 0, 0, 0, 1, '39', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(468, '000468', '239-3', 'Sandal Slop Pita 40 Putih', 'Sandal Wanita', 'Balance', 'BRG000526', 30000, 39900, 0, 1, 1, 0, 1, '40', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(469, '000469', '239-3', 'Sandal Slop Pita 36 Hitam', 'Sandal Wanita', 'Balance', 'BRG000527', 30000, 39900, 0, 0, 0, 0, 1, '36', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(470, '000470', '239-3', 'Sandal Slop Pita 37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000528', 30000, 39900, 1, 1, 0, 0, 1, '37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(471, '000471', '239-3', 'Sandal Slop Pita 38 Hitam', 'Sandal Wanita', 'Balance', 'BRG000529', 30000, 39900, 0, 0, 0, 0, 1, '38', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(472, '000472', '239-3', 'Sandal Slop Pita 39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000530', 30000, 39900, 1, 1, 0, 0, 1, '39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(473, '000473', '239-3', 'Sandal Slop Pita 40 Hitam', 'Sandal Wanita', 'Balance', 'BRG000531', 30000, 39900, 0, 0, 0, 0, 1, '40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(474, '000474', '9008-K8-L', 'Sandal Baim Oreo 35-36 Putih', 'Sandal Wanita', 'Balance', 'BRG000532', 56000, 66499, 0, 7, 7, 0, 1, '35-36', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(475, '000475', '9008-K8-L', 'Sandal Baim Oreo 37-38 Putih', 'Sandal Wanita', 'Balance', 'BRG000533', 56000, 66499, 0, 5, 5, 0, 1, '37-38', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(476, '000476', '9008-K8-L', 'Sandal Baim Oreo 39-40 Putih', 'Sandal Wanita', 'Balance', 'BRG000534', 56000, 66499, 0, 11, 11, 0, 1, '39-40', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(477, '000477', '9008-K8-L', 'Sandal Baim Oreo 35-36 Hitam', 'Sandal Wanita', 'Balance', 'BRG000535', 56000, 66499, 0, 7, 7, 0, 1, '35-36', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(478, '000478', '9008-K8-L', 'Sandal Baim Oreo 37-38 Hitam', 'Sandal Wanita', 'Balance', 'BRG000536', 56000, 66499, 1, 8, 7, 0, 1, '37-38', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(479, '000479', '9008-K8-L', 'Sandal Baim Oreo 39-40 Hitam', 'Sandal Wanita', 'Balance', 'BRG000537', 56000, 66499, 0, 8, 8, 0, 1, '39-40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(480, '000480', '9008-K4-L', 'Sandal Baim Mutiara 35-36 Putih', 'Sandal Wanita', 'Balance', 'BRG000538', 58000, 68900, 0, 1, 1, 0, 1, '35-36', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(481, '000481', '9008-K4-L', 'Sandal Baim Mutiara 37-38 Putih', 'Sandal Wanita', 'Balance', 'BRG000539', 58000, 68900, 1, 1, 0, 0, 1, '37-38', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(482, '000482', '9008-K4-L', 'Sandal Baim Mutiara 39-40 Putih', 'Sandal Wanita', 'Balance', 'BRG000540', 58000, 68900, 0, 1, 1, 0, 1, '39-40', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(483, '000483', '9008-K4-L', 'Sandal Baim Mutiara 35-36 Hitam', 'Sandal Wanita', 'Balance', 'BRG000541', 58000, 68900, 0, 0, 0, 0, 1, '35-36', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(484, '000484', '9008-K4-L', 'Sandal Baim Mutiara 37-38 Hitam', 'Sandal Wanita', 'Balance', 'BRG000542', 58000, 68900, 1, 1, 0, 0, 1, '37-38', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(485, '000485', '9008-K4-L', 'Sandal Baim Mutiara 39-40 Hitam', 'Sandal Wanita', 'Balance', 'BRG000543', 58000, 68900, 0, 1, 1, 0, 1, '39-40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(486, '000486', 'LH-108-4', 'Sandal Linetx Pita 36-37 Putih', 'Sandal Wanita', 'Balance', 'BRG000544', 33000, 43500, 0, 1, 1, 0, 1, '36-37', 'Putih(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(487, '000487', 'LH-108-4', 'Sandal Linetx Pita 38-39 Putih', 'Sandal Wanita', 'Balance', 'BRG000545', 33000, 43500, 0, 0, 0, 0, 1, '38-39', 'Putih(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(488, '000488', 'LH-108-4', 'Sandal Linetx Pita 40-41 Putih', 'Sandal Wanita', 'Balance', 'BRG000546', 33000, 43500, 0, 0, 0, 0, 1, '40-41', 'Putih(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(489, '000489', 'LH-108-4', 'Sandal Linetx Pita 36-37 Pink', 'Sandal Wanita', 'Balance', 'BRG000547', 33000, 43500, 0, 0, 0, 0, 1, '36-37', 'Pink(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(490, '000490', 'LH-108-4', 'Sandal Linetx Pita 38-39 Pink', 'Sandal Wanita', 'Balance', 'BRG000548', 33000, 43500, 0, 1, 1, 0, 1, '38-39', 'Pink(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(491, '000491', 'LH-108-4', 'Sandal Linetx Pita 40-41 Pink', 'Sandal Wanita', 'Balance', 'BRG000549', 33000, 43500, 0, 0, 0, 0, 1, '40-41', 'Pink(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(492, '000492', 'LH-108-4', 'Sandal Linetx Pita 36-37 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000550', 33000, 43500, 0, 0, 0, 0, 1, '36-37', 'Cokelat(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(493, '000493', 'LH-108-4', 'Sandal Linetx Pita 38-39 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000551', 33000, 43500, 0, 0, 0, 0, 1, '38-39', 'Cokelat(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(494, '000494', 'LH-108-4', 'Sandal Linetx Pita 40-41 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000552', 33000, 43500, 0, 1, 1, 0, 1, '40-41', 'Cokelat(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(495, '000495', 'LH-108-4', 'Sandal Linetx Pita 36-37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000553', 33000, 43500, 0, 1, 1, 0, 1, '36-37', 'Hitam(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(496, '000496', 'LH-108-4', 'Sandal Linetx Pita 38-39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000554', 33000, 43500, 0, 0, 0, 0, 1, '38-39', 'Hitam(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(497, '000497', 'LH-108-4', 'Sandal Linetx Pita 40-41 Hitam', 'Sandal Wanita', 'Balance', 'BRG000555', 33000, 43500, 0, 1, 1, 0, 1, '40-41', 'Hitam(sol)', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(498, '000498', '1246-12', 'Sandal Teplek 2 Grs 37 Hijau', 'Sandal Wanita', 'Balance', 'BRG000556', 20000, 29999, 0, 0, 0, 0, 1, '37', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(499, '000499', '1246-12', 'Sandal Teplek 2 Grs 38 Hijau', 'Sandal Wanita', 'Balance', 'BRG000557', 20000, 29999, 0, 0, 0, 0, 1, '38', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(500, '000500', '1246-12', 'Sandal Teplek 2 Grs 39 Hijau', 'Sandal Wanita', 'Balance', 'BRG000558', 20000, 29999, 0, 1, 1, 0, 1, '39', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(501, '000501', '1246-12', 'Sandal Teplek 2 Grs 40 Hijau', 'Sandal Wanita', 'Balance', 'BRG000559', 20000, 29999, 0, 0, 0, 0, 1, '40', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(502, '000502', '1246-12', 'Sandal Teplek 2 Grs 37 Ungu', 'Sandal Wanita', 'Balance', 'BRG000560', 20000, 29999, 0, 0, 0, 0, 1, '37', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(503, '000503', '1246-12', 'Sandal Teplek 2 Grs 38 Ungu', 'Sandal Wanita', 'Balance', 'BRG000561', 20000, 29999, 1, 1, 0, 0, 1, '38', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(504, '000504', '1246-12', 'Sandal Teplek 2 Grs 39 Ungu', 'Sandal Wanita', 'Balance', 'BRG000562', 20000, 29999, 0, 0, 0, 0, 1, '39', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(505, '000505', '1246-12', 'Sandal Teplek 2 Grs 40 Ungu', 'Sandal Wanita', 'Balance', 'BRG000563', 20000, 29999, 0, 0, 0, 0, 1, '40', 'Ungu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(506, '000506', '1246-12', 'Sandal Teplek 2 Grs 37 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000564', 20000, 29999, 0, 1, 1, 0, 1, '37', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(507, '000507', '1246-12', 'Sandal Teplek 2 Grs 38 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000565', 20000, 29999, 0, 0, 0, 0, 1, '38', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(508, '000508', '1246-12', 'Sandal Teplek 2 Grs 39 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000566', 20000, 29999, 0, 0, 0, 0, 1, '39', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg');
INSERT INTO `barang` (`no`, `kode`, `sku`, `nama`, `kategori`, `brand`, `barcode`, `hargabeli`, `hargajual`, `terjual`, `terbeli`, `sisa`, `retur`, `stokmin`, `ukuran`, `warna`, `expired`, `satuan`, `lokasi`, `keterangan`, `avatar`) VALUES
(509, '000509', '1246-12', 'Sandal Teplek 2 Grs 40 Cokelat', 'Sandal Wanita', 'Balance', 'BRG000567', 20000, 29999, 0, 1, 1, 0, 1, '40', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(510, '000510', '1246-12', 'Sandal Teplek 2 Grs 37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000568', 20000, 29999, 0, 1, 1, 0, 1, '37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(511, '000511', '1246-12', 'Sandal Teplek 2 Grs 38 Hitam', 'Sandal Wanita', 'Balance', 'BRG000569', 20000, 29999, 1, 1, 0, 0, 1, '38', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(512, '000512', '1246-12', 'Sandal Teplek 2 Grs 39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000570', 20000, 29999, 0, 0, 0, 0, 1, '39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(513, '000513', '1246-12', 'Sandal Teplek 2 Grs 40 Hitam', 'Sandal Wanita', 'Balance', 'BRG000571', 20000, 29999, 0, 0, 0, 0, 1, '40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(514, '000514', 'E8067-1', 'Sandal  Baim 36-37 Putih', 'Sandal Wanita', 'Balance', 'BRG000572', 57000, 67000, 0, 1, 1, 0, 1, '36-37', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(515, '000515', 'E8067-1', 'Sandal  Baim 38-39 Putih', 'Sandal Wanita', 'Balance', 'BRG000573', 57000, 67000, 0, 1, 1, 0, 1, '38-39', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(516, '000516', 'E8067-1', 'Sandal  Baim 40-41 Putih', 'Sandal Wanita', 'Balance', 'BRG000574', 57000, 67000, 0, 1, 1, 0, 1, '40-41', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(517, '000517', 'E8067-1', 'Sandal  Baim 36-37 Hitam', 'Sandal Wanita', 'Balance', 'BRG000575', 57000, 67000, 0, 1, 1, 0, 1, '36-37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(518, '000518', 'E8067-1', 'Sandal  Baim 38-39 Hitam', 'Sandal Wanita', 'Balance', 'BRG000576', 57000, 67000, 0, 0, 0, 0, 1, '38-39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(519, '000519', 'E8067-1', 'Sandal  Baim 40-41 Hitam', 'Sandal Wanita', 'Balance', 'BRG000577', 57000, 67000, 0, 1, 1, 0, 1, '40-41', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(520, '000520', 'D-55-3S', 'Sandal  Ank Baim 24-25 Pink', 'Sandal Anak', 'Balance', 'BRG000578', 41000, 51000, 0, 15, 15, 0, 1, '24-25', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(521, '000521', 'D-55-3S', 'Sandal  Ank Baim 26-27 Pink', 'Sandal Anak', 'Balance', 'BRG000579', 41000, 51000, 0, 12, 12, 0, 1, '26-27', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(522, '000522', 'D-55-3S', 'Sandal  Ank Baim 28-29 Pink', 'Sandal Anak', 'Balance', 'BRG000580', 41000, 51000, 0, 17, 17, 0, 1, '28-29', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(523, '000523', 'D-55-3S', 'Sandal  Ank Baim 24-25 Fanta', 'Sandal Anak', 'Balance', 'BRG000581', 41000, 51000, 11, 13, 2, 0, 1, '24-25', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(524, '000524', 'D-55-3S', 'Sandal  Ank Baim 26-27 Fanta', 'Sandal Anak', 'Balance', 'BRG000582', 41000, 51000, 10, 13, 3, 0, 1, '26-27', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(525, '000525', 'D-55-3S', 'Sandal  Ank Baim 28-29 Fanta', 'Sandal Anak', 'Balance', 'BRG000583', 41000, 51000, 0, 16, 16, 0, 1, '28-29', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(526, '000526', 'D-55-3S', 'Sandal  Ank Baim 24-25 Putih', 'Sandal Anak', 'Balance', 'BRG000584', 41000, 51000, 1, 12, 11, 0, 1, '24-25', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(527, '000527', 'D-55-3S', 'Sandal  Ank Baim 26-27 Putih', 'Sandal Anak', 'Balance', 'BRG000585', 41000, 51000, 0, 13, 13, 0, 1, '26-27', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(528, '000528', 'D-55-3S', 'Sandal  Ank Baim 28-29 Putih', 'Sandal Anak', 'Balance', 'BRG000586', 41000, 51000, 1, 16, 15, 0, 1, '28-29', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(529, '000529', 'D-55-3M', 'Sandal  Ank Baim 30-31 Pink', 'Sandal Anak', 'Balance', 'BRG000587', 44000, 54000, 1, 7, 6, 0, 1, '30-31', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(530, '000530', 'D-55-3M', 'Sandal  Ank Baim 32-33 Pink', 'Sandal Anak', 'Balance', 'BRG000588', 44000, 54000, 0, 6, 6, 0, 1, '32-33', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(531, '000531', 'D-55-3M', 'Sandal  Ank Baim 34-35 Pink', 'Sandal Anak', 'Balance', 'BRG000589', 44000, 54000, 0, 9, 9, 0, 1, '34-35', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(532, '000532', 'D-55-3M', 'Sandal  Ank Baim 30-31 Fanta', 'Sandal Anak', 'Balance', 'BRG000590', 44000, 54000, 0, 7, 7, 0, 1, '30-31', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(533, '000533', 'D-55-3M', 'Sandal  Ank Baim 32-33 Fanta', 'Sandal Anak', 'Balance', 'BRG000591', 44000, 54000, 0, 6, 6, 0, 1, '32-33', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(534, '000534', 'D-55-3M', 'Sandal  Ank Baim 34-35 Fanta', 'Sandal Anak', 'Balance', 'BRG000592', 44000, 54000, 0, 8, 8, 0, 1, '34-35', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(535, '000535', 'D-55-3M', 'Sandal  Ank Baim 30-31 Putih', 'Sandal Anak', 'Balance', 'BRG000593', 44000, 54000, 0, 7, 7, 0, 1, '30-31', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(536, '000536', 'D-55-3M', 'Sandal  Ank Baim 32-33 Putih', 'Sandal Anak', 'Balance', 'BRG000594', 44000, 54000, 0, 7, 7, 0, 1, '32-33', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(537, '000537', 'D-55-3M', 'Sandal  Ank Baim 34-35 Putih', 'Sandal Anak', 'Balance', 'BRG000595', 44000, 54000, 1, 8, 7, 0, 1, '34-35', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(538, '000538', 'D-55-2S', 'Sandal  Ank Baim 24-25 Pink', 'Sandal Anak', 'Balance', 'BRG000596', 40000, 49999, 0, 6, 6, 0, 1, '24-25', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(539, '000539', 'D-55-2S', 'Sandal  Ank Baim 26-27 Pink', 'Sandal Anak', 'Balance', 'BRG000597', 40000, 49999, 0, 8, 8, 0, 1, '26-27', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(540, '000540', 'D-55-2S', 'Sandal  Ank Baim 28-29 Pink', 'Sandal Anak', 'Balance', 'BRG000598', 40000, 49999, 0, 8, 8, 0, 1, '28-29', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(541, '000541', 'D-55-2S', 'Sandal  Ank Baim 24-25 Fanta', 'Sandal Anak', 'Balance', 'BRG000599', 40000, 49999, 0, 7, 7, 0, 1, '24-25', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(542, '000542', 'D-55-2S', 'Sandal  Ank Baim 26-27 Fanta', 'Sandal Anak', 'Balance', 'BRG000600', 40000, 49999, 0, 7, 7, 0, 1, '26-27', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(543, '000543', 'D-55-2S', 'Sandal  Ank Baim 28-29 Fanta', 'Sandal Anak', 'Balance', 'BRG000601', 40000, 49999, 0, 8, 8, 0, 1, '28-29', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(544, '000544', 'D-55-2S', 'Sandal  Ank Baim 24-25 Putih', 'Sandal Anak', 'Balance', 'BRG000602', 40000, 49999, 0, 6, 6, 0, 1, '24-25', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(545, '000545', 'D-55-2S', 'Sandal  Ank Baim 26-27 Putih', 'Sandal Anak', 'Balance', 'BRG000603', 40000, 49999, 0, 9, 9, 0, 1, '26-27', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(546, '000546', 'D-55-2S', 'Sandal  Ank Baim 28-29 Putih', 'Sandal Anak', 'Balance', 'BRG000604', 40000, 49999, 0, 6, 6, 0, 1, '28-29', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(547, '000547', 'D-55-2M', 'Sandal  Ank Baim 30-31 Pink', 'Sandal Anak', 'Balance', 'BRG000605', 43000, 53000, 0, 0, 0, 0, 1, '30-31', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(548, '000548', 'D-55-2M', 'Sandal  Ank Baim 32-33 Pink', 'Sandal Anak', 'Balance', 'BRG000606', 43000, 53000, 0, 1, 1, 0, 1, '32-33', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(549, '000549', 'D-55-2M', 'Sandal  Ank Baim 34-35 Pink', 'Sandal Anak', 'Balance', 'BRG000607', 43000, 53000, 0, 0, 0, 0, 1, '34-35', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(550, '000550', 'D-55-2M', 'Sandal  Ank Baim 30-31 Fanta', 'Sandal Anak', 'Balance', 'BRG000608', 43000, 53000, 0, 1, 1, 0, 1, '30-31', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(551, '000551', 'D-55-2M', 'Sandal  Ank Baim 32-33 Fanta', 'Sandal Anak', 'Balance', 'BRG000609', 43000, 53000, 0, 0, 0, 0, 1, '32-33', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(552, '000552', 'D-55-2M', 'Sandal  Ank Baim 34-35 Fanta', 'Sandal Anak', 'Balance', 'BRG000610', 43000, 53000, 0, 1, 1, 0, 1, '34-35', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(553, '000553', 'D-55-2M', 'Sandal  Ank Baim 30-31 Putih', 'Sandal Anak', 'Balance', 'BRG000611', 43000, 53000, 0, 1, 1, 0, 1, '30-31', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(554, '000554', 'D-55-2M', 'Sandal  Ank Baim 32-33 Putih', 'Sandal Anak', 'Balance', 'BRG000612', 43000, 53000, 0, 1, 1, 0, 1, '32-33', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(555, '000555', 'D-55-2M', 'Sandal  Ank Baim 34-35 Putih', 'Sandal Anak', 'Balance', 'BRG000613', 43000, 53000, 0, 0, 0, 0, 1, '34-35', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(556, '000556', 'D-55-1S', 'Sandal  Ank Baim 24-25 Pink', 'Sandal Anak', 'Balance', 'BRG000614', 40000, 49900, 0, 7, 7, 0, 1, '24-25', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(557, '000557', 'D-55-1S', 'Sandal  Ank Baim 26-27 Pink', 'Sandal Anak', 'Balance', 'BRG000615', 40000, 49900, 0, 8, 8, 0, 1, '26-27', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(558, '000558', 'D-55-1S', 'Sandal  Ank Baim 28-29 Pink', 'Sandal Wanita', 'Balance', 'BRG000616', 40000, 49900, 3, 9, 6, 0, 1, '28-29', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(559, '000559', 'D-55-1S', 'Sandal  Ank Baim 24-25 Fanta', 'Sandal Anak', 'Balance', 'BRG000617', 40000, 49900, 6, 7, 1, 0, 1, '24-25', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(560, '000560', 'D-55-1S', 'Sandal  Ank Baim 26-27 Fanta', 'Sandal Anak', 'Balance', 'BRG000618', 40000, 49900, 5, 9, 4, 0, 1, '26-27', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(561, '000561', 'D-55-1S', 'Sandal  Ank Baim 28-29 Fanta', 'Sandal Anak', 'Balance', 'BRG000619', 40000, 49900, 0, 6, 6, 0, 1, '28-29', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(562, '000562', 'D-55-1S', 'Sandal  Ank Baim 24-25 Putih', 'Sandal Anak', 'Balance', 'BRG000620', 40000, 49900, 1, 8, 7, 0, 1, '24-25', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(563, '000563', 'D-55-1S', 'Sandal  Ank Baim 26-27 Putih', 'Sandal Anak', 'Balance', 'BRG000621', 40000, 49900, 1, 7, 6, 0, 1, '26-27', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(564, '000564', 'D-55-1S', 'Sandal  Ank Baim 28-29 Putih', 'Sandal Anak', 'Balance', 'BRG000622', 40000, 49900, 0, 9, 9, 0, 1, '28-29', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(565, '000565', 'D-55-1M', 'Sandal  Ank Baim 30-31 Pink', 'Sandal Anak', 'Balance', 'BRG000623', 43000, 53000, 0, 0, 0, 0, 1, '30-31', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(566, '000566', 'D-55-1M', 'Sandal  Ank Baim 32-33 Pink', 'Sandal Anak', 'Balance', 'BRG000624', 43000, 53000, 0, 0, 0, 0, 1, '32-33', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(567, '000567', 'D-55-1M', 'Sandal  Ank Baim 34-35 Pink', 'Sandal Anak', 'Balance', 'BRG000625', 43000, 53000, 0, 1, 1, 0, 1, '34-35', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(568, '000568', 'D-55-1M', 'Sandal  Ank Baim 30-31 Fanta', 'Sandal Anak', 'Balance', 'BRG000626', 43000, 53000, 0, 1, 1, 0, 1, '30-31', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(569, '000569', 'D-55-1M', 'Sandal  Ank Baim 32-33 Fanta', 'Sandal Anak', 'Balance', 'BRG000627', 43000, 53000, 0, 1, 1, 0, 1, '32-33', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(570, '000570', 'D-55-1M', 'Sandal  Ank Baim 34-35 Fanta', 'Sandal Anak', 'Balance', 'BRG000628', 43000, 53000, 0, 0, 0, 0, 1, '34-35', 'Fanta', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(571, '000571', 'D-55-1M', 'Sandal  Ank Baim 30-31 Putih', 'Sandal Anak', 'Balance', 'BRG000629', 43000, 53000, 0, 0, 0, 0, 1, '30-31', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(572, '000572', 'D-55-1M', 'Sandal  Ank Baim 32-33 Putih', 'Sandal Anak', 'Balance', 'BRG000630', 43000, 53000, 0, 1, 1, 0, 1, '32-33', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(573, '000573', 'D-55-1M', 'Sandal  Ank Baim 34-35 Putih', 'Sandal Anak', 'Balance', 'BRG000631', 43000, 53000, 0, 1, 1, 0, 1, '34-35', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(574, '000574', '602-4', 'Sandal Baim 36 Putih', 'Sandal Wanita', 'Balance', 'BRG000574', 60000, 69900, 0, 1, 1, 0, 1, '36', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(575, '000575', '602-4', 'Sandal Baim 36 Pink', 'Sandal Wanita', 'Balance', 'BRG000575', 60000, 69900, 0, 0, 0, 0, 1, '36', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(576, '000576', '602-4', 'Sandal Baim 36 Hitam', 'Sandal Wanita', 'Balance', 'BRG000576', 60000, 69900, 0, 0, 0, 0, 1, '36', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(577, '000577', '602-5', 'Sandal Baim 36 Putih', 'Sandal Wanita', 'Balance', 'BRG000577', 62000, 72000, 0, 0, 0, 0, 1, '36', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(578, '000578', '602-5', 'Sandal Baim 36 Pink', 'Sandal Wanita', 'Balance', 'BRG000578', 62000, 72000, 0, 1, 1, 0, 1, '36', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(579, '000579', '602-5', 'Sandal Baim 36 Hitam', 'Sandal Wanita', 'Balance', 'BRG000579', 62000, 72000, 0, 0, 0, 0, 1, '36', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(580, '000580', '979-S', 'Sandal Buaya 24-25 Biru', 'Sandal Wanita', 'Balance', 'BRG000580', 32000, 42000, 0, 1, 1, 0, 1, '24-25', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(581, '000581', '979-S', 'Sandal Buaya 26-27 Biru', 'Sandal Wanita', 'Balance', 'BRG000581', 32000, 42000, 0, 0, 0, 0, 1, '26-27', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(582, '000582', '979-S', 'Sandal Buaya 28-29 Biru', 'Sandal Wanita', 'Balance', 'BRG000582', 32000, 42000, 0, 0, 0, 0, 1, '28-29', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(583, '000583', '979-S', 'Sandal Buaya 24-25 Hitam', 'Sandal Wanita', 'Balance', 'BRG000583', 32000, 42000, 0, 0, 0, 0, 1, '24-25', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(584, '000584', '979-S', 'Sandal Buaya 26-27 Hitam', 'Sandal Wanita', 'Balance', 'BRG000584', 32000, 42000, 0, 1, 1, 0, 1, '26-27', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(585, '000585', '979-S', 'Sandal Buaya 28-29 Hitam', 'Sandal Wanita', 'Balance', 'BRG000585', 32000, 42000, 0, 0, 0, 0, 1, '28-29', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(586, '000586', '979-S', 'Sandal Buaya 24-25 Hijau', 'Sandal Wanita', 'Balance', 'BRG000586', 32000, 42000, 0, 1, 1, 0, 1, '24-25', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(587, '000587', '979-S', 'Sandal Buaya 26-27 Hijau', 'Sandal Wanita', 'Balance', 'BRG000587', 32000, 42000, 0, 0, 0, 0, 1, '26-27', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(588, '000588', '979-S', 'Sandal Buaya 28-29 Hijau', 'Sandal Wanita', 'Balance', 'BRG000588', 32000, 42000, 0, 0, 0, 0, 1, '28-29', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(589, '000589', '979-S', 'Sandal Buaya 24-25 Orange', 'Sandal Wanita', 'Balance', 'BRG000589', 32000, 42000, 0, 0, 0, 0, 1, '24-25', 'Orange', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(590, '000590', '979-S', 'Sandal Buaya 26-27 Orange', 'Sandal Wanita', 'Balance', 'BRG000590', 32000, 42000, 0, 0, 0, 0, 1, '26-27', 'Orange', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(591, '000591', '979-S', 'Sandal Buaya 28-29 Orange', 'Sandal Wanita', 'Balance', 'BRG000591', 32000, 42000, 0, 1, 1, 0, 1, '28-29', 'Orange', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(592, '000592', '979-S', 'Sandal Buaya 24-25 Pink', 'Sandal Wanita', 'Balance', 'BRG000592', 32000, 42000, 0, 0, 0, 0, 1, '24-25', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(593, '000593', '979-S', 'Sandal Buaya 26-27 Pink', 'Sandal Wanita', 'Balance', 'BRG000593', 32000, 42000, 0, 1, 1, 0, 1, '26-27', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(594, '000594', '979-S', 'Sandal Buaya 28-29 Pink', 'Sandal Wanita', 'Balance', 'BRG000594', 32000, 42000, 0, 0, 0, 0, 1, '28-29', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(595, '000595', '979-M', 'Sandal Buaya 30-31 Biru', 'Sandal Wanita', 'Balance', 'BRG000595', 35000, 45000, 0, 1, 1, 0, 1, '30-31', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(596, '000596', '979-M', 'Sandal Buaya 32-33 Biru', 'Sandal Wanita', 'Balance', 'BRG000596', 35000, 45000, 0, 0, 0, 0, 1, '32-33', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(597, '000597', '979-M', 'Sandal Buaya 34-35 Biru', 'Sandal Wanita', 'Balance', 'BRG000597', 35000, 45000, 0, 1, 1, 0, 1, '34-35', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(598, '000598', '979-M', 'Sandal Buaya 30-31 Hitam', 'Sandal Wanita', 'Balance', 'BRG000598', 35000, 45000, 0, 0, 0, 0, 1, '30-31', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(599, '000599', '979-M', 'Sandal Buaya 32-33 Hitam', 'Sandal Wanita', 'Balance', 'BRG000599', 35000, 45000, 0, 0, 0, 0, 1, '32-33', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(600, '000600', '979-M', 'Sandal Buaya 34-35 Hitam', 'Sandal Wanita', 'Balance', 'BRG000600', 35000, 45000, 0, 1, 1, 0, 1, '34-35', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(601, '000601', '979-M', 'Sandal Buaya 30-31 Hijau', 'Sandal Wanita', 'Balance', 'BRG000601', 35000, 45000, 0, 0, 0, 0, 1, '30-31', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(602, '000602', '979-M', 'Sandal Buaya 32-33 Hijau', 'Sandal Wanita', 'Balance', 'BRG000602', 35000, 45000, 0, 1, 1, 0, 1, '32-33', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(603, '000603', '979-M', 'Sandal Buaya 34-35 Hijau', 'Sandal Wanita', 'Balance', 'BRG000603', 35000, 45000, 0, 0, 0, 0, 1, '34-35', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(604, '000604', '979-M', 'Sandal Buaya 30-31 Orange', 'Sandal Wanita', 'Balance', 'BRG000604', 35000, 45000, 0, 0, 0, 0, 1, '30-31', 'Orange', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(605, '000605', '979-M', 'Sandal Buaya 32-33 Orange', 'Sandal Wanita', 'Balance', 'BRG000605', 35000, 45000, 0, 0, 0, 0, 1, '32-33', 'Orange', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(606, '000606', '979-M', 'Sandal Buaya 34-35 Orange', 'Sandal Wanita', 'Balance', 'BRG000606', 35000, 45000, 0, 0, 0, 0, 1, '34-35', 'Orange', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(607, '000607', '979-M', 'Sandal Buaya 30-31 Pink', 'Sandal Wanita', 'Balance', 'BRG000607', 35000, 45000, 0, 0, 0, 0, 1, '30-31', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(608, '000608', '979-M', 'Sandal Buaya 32-33 Pink', 'Sandal Wanita', 'Balance', 'BRG000608', 35000, 45000, 0, 1, 1, 0, 1, '32-33', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(609, '000609', '979-M', 'Sandal Buaya 34-35 Pink', 'Sandal Wanita', 'Balance', 'BRG000609', 35000, 45000, 0, 0, 0, 0, 1, '34-35', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(610, '000610', '979-L', 'Sandal Buaya 35-36 Biru', 'Sandal Wanita', 'Balance', 'BRG000610', 40000, 51999, 0, 1, 1, 0, 1, '35-36', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(611, '000611', '979-L', 'Sandal Buaya 37-38 Biru', 'Sandal Wanita', 'Balance', 'BRG000611', 40000, 51999, 0, 0, 0, 0, 1, '37-38', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(612, '000612', '979-L', 'Sandal Buaya 39-40 Biru', 'Sandal Wanita', 'Balance', 'BRG000612', 40000, 51999, 1, 1, 0, 0, 1, '39-40', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(613, '000613', '979-L', 'Sandal Buaya 35-36 Hitam', 'Sandal Wanita', 'Balance', 'BRG000613', 40000, 51999, 0, 0, 0, 0, 1, '35-36', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(614, '000614', '979-L', 'Sandal Buaya 37-38 Hitam', 'Sandal Wanita', 'Balance', 'BRG000614', 40000, 51999, 0, 1, 1, 0, 1, '37-38', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(615, '000615', '979-L', 'Sandal Buaya 39-40 Hitam', 'Sandal Wanita', 'Balance', 'BRG000615', 40000, 51999, 0, 0, 0, 0, 1, '39-40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(616, '000616', '979-L', 'Sandal Buaya 35-36 Hijau', 'Sandal Wanita', 'Balance', 'BRG000616', 40000, 51999, 0, 0, 0, 0, 1, '35-36', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(617, '000617', '979-L', 'Sandal Buaya 37-38 Hijau', 'Sandal Wanita', 'Balance', 'BRG000617', 40000, 51999, 0, 0, 0, 0, 1, '37-38', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(618, '000618', '979-L', 'Sandal Buaya 39-40 Hijau', 'Sandal Wanita', 'Balance', 'BRG000618', 40000, 51999, 0, 0, 0, 0, 1, '39-40', 'Hijau', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(619, '000619', '979-L', 'Sandal Buaya 35-36 Orange', 'Sandal Wanita', 'Balance', 'BRG000619', 40000, 51999, 0, 0, 0, 0, 1, '35-36', 'Orange', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(620, '000620', '979-L', 'Sandal Buaya 37-38 Orange', 'Sandal Wanita', 'Balance', 'BRG000620', 40000, 51999, 0, 0, 0, 0, 1, '37-38', 'Orange', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(621, '000621', '979-L', 'Sandal Buaya 39-40 Orange', 'Sandal Wanita', 'Balance', 'BRG000621', 40000, 51999, 0, 0, 0, 0, 1, '39-40', 'Orange', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(622, '000622', '979-L', 'Sandal Buaya 35-36 Pink', 'Sandal Wanita', 'Balance', 'BRG000622', 40000, 51999, 0, 1, 1, 0, 1, '35-36', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(623, '000623', '979-L', 'Sandal Buaya 37-38 Pink', 'Sandal Wanita', 'Balance', 'BRG000623', 40000, 51999, 0, 0, 0, 0, 1, '37-38', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(624, '000624', '979-L', 'Sandal Buaya 39-40 Pink', 'Sandal Wanita', 'Balance', 'BRG000624', 40000, 51999, 0, 1, 1, 0, 1, '39-40', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(625, '000625', '633', 'Sandal Pria 41 Biru', 'Sandal Pria', 'Balance', 'BRG000625', 23000, 32999, 1, 6, 5, 0, 1, '41', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(626, '000626', '633', 'Sandal Pria 42 Biru', 'Sandal Pria', 'Balance', 'BRG000626', 23000, 32999, 0, 4, 4, 0, 1, '42', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(627, '000627', '633', 'Sandal Pria 43 Biru', 'Sandal Pria', 'Balance', 'BRG000627', 23000, 32999, 0, 6, 6, 0, 1, '43', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(628, '000628', '633', 'Sandal Pria 44 Biru', 'Sandal Pria', 'Balance', 'BRG000628', 23000, 32999, 1, 6, 5, 0, 1, '44', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(629, '000629', '633', 'Sandal Pria 45 Biru', 'Sandal Pria', 'Balance', 'BRG000629', 23000, 32999, 0, 3, 3, 0, 1, '45', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(630, '000630', '633', 'Sandal Pria 41 Hitam', 'Sandal Pria', 'Balance', 'BRG000630', 23000, 32999, 1, 5, 4, 0, 1, '41', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(631, '000631', '633', 'Sandal Pria 42 Hitam', 'Sandal Pria', 'Balance', 'BRG000631', 23000, 32999, 2, 5, 3, 0, 1, '42', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(632, '000632', '633', 'Sandal Pria 43 Hitam', 'Sandal Wanita', 'Balance', 'BRG000632', 23000, 32999, 1, 5, 4, 0, 1, '43', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(633, '000633', '633', 'Sandal Pria 44 Hitam', 'Sandal Pria', 'Balance', 'BRG000633', 23000, 32999, 0, 4, 4, 0, 1, '44', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(634, '000634', '633', 'Sandal Pria 45 Hitam', 'Sandal Pria', 'Balance', 'BRG000634', 23000, 32999, 2, 6, 4, 0, 1, '45', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(635, '000635', '633', 'Sandal Pria 41 Putih', 'Sandal Pria', 'Balance', 'BRG000635', 23000, 32999, 0, 5, 5, 0, 1, '41', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(636, '000636', '633', 'Sandal Pria 42 Putih', 'Sandal Pria', 'Balance', 'BRG000636', 23000, 32999, 2, 5, 3, 0, 1, '42', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(637, '000637', '633', 'Sandal Pria 43 Putih', 'Sandal Pria', 'Balance', 'BRG000637', 23000, 32999, 0, 4, 4, 0, 1, '43', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(638, '000638', '633', 'Sandal Pria 44 Putih', 'Sandal Pria', 'Balance', 'BRG000638', 23000, 32999, 0, 5, 5, 0, 1, '44', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(639, '000639', '633', 'Sandal Pria 45 Putih', 'Sandal Pria', 'Balance', 'BRG000639', 23000, 32999, 1, 7, 6, 0, 1, '45', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(640, '000640', 'Obral', 'Sepatu Obral Sniper', 'Sandal Anak', 'T.T SNIPER', 'BRG000640', 25000, 35000, 16, 360, 344, 0, 1, '', '', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(641, '000641', '520', 'Sandal Pria Slop Biru Muda 39', 'Sandal Pria', 'Balance', 'BRG000641', 17500, 27900, 0, 1, 1, 0, 1, '39', 'Biru Muda', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(642, '000642', '520', 'Sandal Pria Slop Biru Muda 40', 'Sandal Pria', 'Balance', 'BRG000642', 17500, 27900, 0, 0, 0, 0, 1, '40', 'Biru Muda', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(643, '000643', '520', 'Sandal Pria Slop Biru Muda 41', 'Sandal Pria', 'Balance', 'BRG000643', 17500, 27900, 0, 0, 0, 0, 1, '41', 'Biru Muda', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(644, '000644', '520', 'Sandal Pria Slop Biru Muda 42', 'Sandal Pria', 'Tanpa Merek', 'BRG000644', 17500, 27900, 0, 0, 0, 0, 1, '42', 'Biru Muda', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(645, '000645', '520', 'Sandal Slop Pria Biru Muda 43', 'Sandal Pria', 'Tanpa Merek', 'BRG000645', 17500, 27900, 0, 1, 1, 0, 1, '43', 'Biru Muda', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(646, '000646', '520', 'Sandal Slop Pria Biru Muda 44', 'Sandal Pria', 'Tanpa Merek', 'BRG000646', 17500, 27900, 0, 0, 0, 0, 1, '44', 'Biru Muda', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(647, '000647', '520', 'Sandal Pria Slop Navy 39', 'Sandal Pria', 'Tanpa Merek', 'BRG000647', 17500, 27900, 0, 0, 0, 0, 1, '39', 'Navy', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(648, '000648', '520', 'Sandal Pria Slop Navy 40', 'Sandal Pria', 'Tanpa Merek', 'BRG000648', 17500, 27900, 0, 0, 0, 0, 1, '40', 'Navy', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(649, '000649', '520', 'Sandal Pria Slop Navy 41', 'Sandal Pria', 'Tanpa Merek', 'BRG000649', 17500, 27900, 0, 0, 0, 0, 1, '41', 'Navy', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(650, '000650', '520', 'Sandal Pria Slop Navy 42', 'Sandal Pria', 'Tanpa Merek', 'BRG000650', 17500, 27900, 0, 0, 0, 0, 1, '42', 'Navy', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(651, '000651', '520', 'Sandal Pria Slop Navy 43', 'Sandal Pria', 'Tanpa Merek', 'BRG000651', 17500, 27900, 0, 0, 0, 0, 1, '43', 'Navy', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(652, '000652', '520', 'Sandal Pria Slop Navy 44', 'Sandal Pria', 'Tanpa Merek', 'BRG000652', 17500, 27900, 0, 0, 0, 0, 1, '44', 'Navy', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(653, '000653', '520', 'Sandal Pria Slop Hitam 39', 'Sandal Pria', 'Tanpa Merek', 'BRG000653', 17500, 27900, 0, 0, 0, 0, 1, '39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(654, '000654', '520', 'Sandal Pria Slop Hitam 40', 'Sandal Pria', 'Tanpa Merek', 'BRG000654', 17500, 27900, 0, 1, 1, 0, 1, '40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(655, '000655', '520', 'Sandal Pria Slop Hitam 41', 'Sandal Pria', 'Tanpa Merek', 'BRG000655', 17500, 27900, 0, 0, 0, 0, 1, '41', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(656, '000656', '520', 'Sandal Pria Slop Hitam 42', 'Sandal Pria', 'Tanpa Merek', 'BRG000656', 17500, 27900, 0, 0, 0, 0, 1, '42', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(657, '000657', '520', 'Sandal Pria Slop Hitam 43', 'Sandal Pria', 'Tanpa Merek', 'BRG000657', 17500, 27900, 0, 0, 0, 0, 1, '43', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(658, '000658', '520', 'Sandal Pria Slop Hitam 44', 'Sandal Pria', 'Tanpa Merek', 'BRG000658', 17500, 27900, 0, 1, 1, 0, 1, '44', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(659, '000659', '520', 'Sandal Pria Slop Merah 39', 'Sandal Pria', 'Tanpa Merek', 'BRG000659', 17500, 27900, 0, 0, 0, 0, 1, '39', 'Merah', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(660, '000660', '520', 'Sandal Pria Slop Merah 40', 'Sandal Pria', 'Tanpa Merek', 'BRG000660', 17500, 27900, 0, 0, 0, 0, 1, '40', 'Merah', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(661, '000661', '520', 'Sandal Pria Slop Merah 41', 'Sandal Pria', 'Tanpa Merek', 'BRG000661', 17500, 27900, 1, 1, 0, 0, 1, '41', 'Merah', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(662, '000662', '520', 'Sandal Pria Slop Merah 42', 'Sandal Pria', 'Tanpa Merek', 'BRG000662', 17500, 27900, 0, 1, 1, 0, 1, '42', 'Merah', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(663, '000663', '520', 'Sandal Pria Slop Merah 43', 'Sandal Pria', 'Tanpa Merek', 'BRG000663', 17500, 27900, 0, 0, 0, 0, 1, '43', 'Merah', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(664, '000664', '520', 'Sandal Pria Slop Merah 44', 'Sandal Pria', 'Tanpa Merek', 'BRG000664', 17500, 27900, 0, 0, 0, 0, 1, '44', 'Merah', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(665, '000665', '901', 'Sandal Selop Polos Pria Hitam 39', 'Sandal Pria', 'Balance', 'BRG000665', 19500, 29900, 0, 1, 1, 0, 1, '39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(666, '000666', '901', 'Sandal Selop Polos Pria Hitam 40', 'Sandal Pria', 'Balance', 'BRG000666', 19500, 29900, 0, 0, 0, 0, 1, '40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(667, '000667', '901', 'Sandal Selop Polos Pria Hitam 41', 'Sandal Pria', 'Balance', 'BRG000667', 19500, 29900, 0, 1, 1, 0, 1, '41', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(668, '000668', '901', 'Sandal Selop Polos Pria Hitam 42', 'Sandal Pria', 'Balance', 'BRG000668', 19500, 29900, 0, 0, 0, 0, 1, '42', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(669, '000669', '901', 'Sandal Selop Polos Pria Hitam 43', 'Sandal Pria', 'Balance', 'BRG000669', 19500, 29900, 0, 0, 0, 0, 1, '43', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(670, '000670', '901', 'Sandal Selop Polos Pria Hitam 44', 'Sandal Pria', 'Balance', 'BRG000670', 19500, 29900, 0, 0, 0, 0, 1, '44', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(671, '000671', '901', 'Sandal Selop Polos Pria Putih 39', 'Sandal Pria', 'Balance', 'BRG000671', 19500, 29900, 0, 0, 0, 0, 1, '39', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(672, '000672', '901', 'Sandal Selop Polos Pria Putih 40', 'Sandal Pria', 'Balance', 'BRG000672', 19500, 29900, 0, 0, 0, 0, 1, '40', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(673, '000673', '901', 'Sandal Selop Polos Pria Putih 41', 'Sandal Pria', 'Balance', 'BRG000673', 19500, 29900, 0, 0, 0, 0, 1, '41', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(674, '000674', '901', 'Sandal Selop Polos Pria Putih 42', 'Sandal Pria', 'Balance', 'BRG000674', 19500, 29900, 0, 1, 1, 0, 1, '42', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(675, '000675', '901', 'Sandal Selop Polos Pria Putih 43', 'Sandal Pria', 'Balance', 'BRG000675', 19500, 29900, 0, 0, 0, 0, 1, '43', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(676, '000676', '901', 'Sandal Selop Polos Pria Putih 44', 'Sandal Pria', 'Balance', 'BRG000676', 19500, 29900, 0, 0, 0, 0, 1, '44', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(677, '000677', '901', 'Sandal Selop Polos Pria Navy 39', 'Sandal Pria', 'Balance', 'BRG000677', 19500, 29900, 0, 0, 0, 0, 1, '39', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(678, '000678', '901', 'Sandal Selop Polos Pria Navy 40', 'Sandal Pria', 'Balance', 'BRG000678', 19500, 29900, 0, 0, 0, 0, 1, '40', 'Navy', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(679, '000679', '901', 'Sandal Selop Polos Pria Navy 41', 'Sandal Pria', 'Balance', 'BRG000679', 19500, 29900, 0, 0, 0, 0, 1, '41', 'Navy', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(680, '000680', '901', 'Sandal Selop Polos Pria Navy 42', 'Sandal Pria', 'Balance', 'BRG000680', 19500, 29900, 0, 0, 0, 0, 1, '42', 'Navy', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(681, '000681', '901', 'Sandal Selop Polos Pria Navy 43', 'Sandal Pria', 'Balance', 'BRG000681', 19500, 29900, 0, 2, 2, 0, 1, '43', 'Navy', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(682, '000682', '901', 'Sandal Selop Polos Pria Navy 44', 'Sandal Pria', 'Balance', 'BRG000682', 19500, 29900, 0, 1, 1, 0, 1, '44', 'Navy', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(683, '000683', '055m', 'Sandal Jpt Pria Polos Cokelat 39', 'Sandal Pria', 'Balance', 'BRG000683', 19500, 29900, 1, 2, 1, 0, 1, '39', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(684, '000684', '055m', 'Sandal Jpt Pria Polos Cokelat 40', 'Sandal Pria', 'Balance', 'BRG000684', 19500, 29900, 0, 0, 0, 0, 1, '40', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(685, '000685', '055m', 'Sandal Jpt Pria Polos Cokelat 42', 'Sandal Pria', 'Balance', 'BRG000686', 19500, 29900, 0, 0, 0, 0, 1, '42', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(686, '000686', '055m', 'Sandal Jpt Pria Polos Cokelat 43', 'Sandal Pria', 'Balance', 'BRG000687', 19500, 29900, 0, 0, 0, 0, 1, '43', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(687, '000687', '055m', 'Sandal Jpt Pria Polos Cokelat 44', 'Sandal Pria', 'Balance', 'BRG000688', 19500, 29900, 0, 0, 0, 0, 1, '44', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(688, '000688', '055m', 'Sandal Jpt Pria Polos Abu 39', 'Sandal Pria', 'Balance', 'BRG000689', 19500, 29900, 0, 0, 0, 0, 1, '39', 'Abu-Abu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(689, '000689', '055m', 'Sandal Jpt Pria Polos Abu 40', 'Sandal Pria', 'Balance', 'BRG000690', 19500, 29900, 0, 0, 0, 0, 1, '40', 'Abu-Abu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(690, '000690', '055m', 'Sandal Jpt Pria Polos Abu 41', 'Sandal Pria', 'Balance', 'BRG000691', 19500, 29900, 0, 0, 0, 0, 1, '41', 'Abu-Abu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(691, '000691', '055m', 'Sandal Jpt Pria Polos Abu 42', 'Sandal Pria', 'Balance', 'BRG000692', 19500, 29900, 1, 1, 0, 0, 1, '42', 'Abu-Abu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(692, '000692', '055m', 'Sandal Jpt Pria Polos Abu 43', 'Sandal Pria', 'Balance', 'BRG000693', 19500, 29900, 0, 0, 0, 0, 1, '43', 'Abu-Abu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(693, '000693', '055m', 'Sandal Jpt Pria Polos Abu 44', 'Sandal Pria', 'Balance', 'BRG000694', 19500, 29900, 0, 0, 0, 0, 1, '44', 'Abu-Abu', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(694, '000694', '055m', 'Sandal Jpt Pria Polos Biru 39', 'Sandal Pria', 'Balance', 'BRG000695', 19500, 29900, 0, 0, 0, 0, 1, '39', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(695, '000695', '055m', 'Sandal Jpt Pria Polos Biru 40', 'Sandal Pria', 'Balance', 'BRG000696', 19500, 29900, 0, 1, 1, 0, 1, '40', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(696, '000696', '055m', 'Sandal Jpt Pria Polos Biru 41', 'Sandal Pria', 'Balance', 'BRG000697', 19500, 29900, 0, 0, 0, 0, 1, '41', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(697, '000697', '055m', 'Sandal Jpt Pria Polos Biru 42', 'Sandal Pria', 'Balance', 'BRG000698', 19500, 29900, 0, 0, 0, 0, 1, '42', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(698, '000698', '055m', 'Sandal Jpt Pria Polos Biru 43', 'Sandal Pria', 'Balance', 'BRG000699', 19500, 29900, 0, 1, 1, 0, 1, '43', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(699, '000699', '055m', 'Sandal Jpt Pria Polos Biru 44', 'Sandal Pria', 'Balance', 'BRG000700', 19500, 29900, 0, 0, 0, 0, 1, '44', 'Biru', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(700, '000700', '055m', 'Sandal Jpt Pria Polos Hitam 39', 'Sandal Pria', 'Balance', 'BRG000701', 19500, 29900, 0, 0, 0, 0, 1, '39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(701, '000701', '055m', 'Sandal Jpt Pria Polos Hitam 40', 'Sandal Pria', 'Balance', 'BRG000702', 19500, 29900, 0, 0, 0, 0, 1, '40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(702, '000702', '055m', 'Sandal Jpt Pria Polos Hitam 41', 'Sandal Pria', 'Balance', 'BRG000703', 19500, 29900, 0, 0, 0, 0, 1, '41', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(703, '000703', '055m', 'Sandal Jpt Pria Polos Hitam 42', 'Sandal Pria', 'Balance', 'BRG000704', 19500, 29900, 0, 0, 0, 0, 1, '42', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(704, '000704', '055m', 'Sandal Jpt Pria Polos Hitam 43', 'Sandal Pria', 'Balance', 'BRG000705', 19500, 29900, 0, 0, 0, 0, 1, '43', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(705, '000705', '055m', 'Sandal Jpt Pria Polos Hitam 44', 'Sandal Pria', 'Balance', 'BRG000706', 19500, 29900, 1, 1, 0, 0, 1, '44', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(706, '000706', '2201', 'Sandal jepit kulit 40 Cokelat', 'Sandal Pria', 'Balance', 'BRG000707', 28000, 38900, 0, 0, 0, 0, 1, '40', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(707, '000707', '2201', 'Sandal jepit kulit 41 Cokelat', 'Sandal Pria', 'Balance', 'BRG000708', 28000, 38900, 0, 1, 1, 0, 1, '41', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(708, '000708', '2201', 'Sandal jepit kulit 40 Cokelat', 'Sandal Pria', 'Balance', 'BRG000709', 28000, 38900, 0, 0, 0, 0, 1, '42', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(709, '000709', '2201', 'Sandal jepit kulit 43 Cokelat', 'Sandal Pria', 'Balance', 'BRG000710', 28000, 38900, 0, 0, 0, 0, 1, '43', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(710, '000710', '2201', 'Sandal jepit kulit 44 Cokelat', 'Sandal Pria', 'Balance', 'BRG000711', 28000, 38900, 0, 1, 1, 0, 1, '44', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(711, '000711', '2201', 'Sandal jepit kulit 45 Cokelat', 'Sandal Pria', 'Balance', 'BRG000712', 28000, 38900, 0, 0, 0, 0, 1, '45', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(712, '000712', '2201', 'Sandal jepit kulit 40 Hitam', 'Sandal Pria', 'Balance', 'BRG000713', 28000, 38900, 1, 1, 0, 0, 1, '40', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(713, '000713', '2201', 'Sandal jepit kulit 41 Hitam', 'Sandal Pria', 'Balance', 'BRG000714', 28000, 38900, 0, 0, 0, 0, 1, '41', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(714, '000714', '2201', 'Sandal jepit kulit 42 Hitam', 'Sandal Pria', 'Balance', 'BRG000715', 28000, 38900, 0, 0, 0, 0, 1, '42', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(715, '000715', '2201', 'Sandal jepit kulit 43 Hitam', 'Sandal Pria', 'Balance', 'BRG000716', 28000, 38900, 0, 1, 1, 0, 1, '43', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(716, '000716', '2201', 'Sandal jepit kulit 44 Hitam', 'Sandal Pria', 'Balance', 'BRG000717', 28000, 38900, 1, 1, 0, 0, 1, '44', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(717, '000717', '2201', 'Sandal jepit kulit 45 Hitam', 'Sandal Pria', 'Balance', 'BRG000718', 28000, 38900, 0, 0, 0, 0, 1, '45', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(718, '000718', '2301-1A', 'Sandal Slop 3 Tali Hitam 36-37', 'Sandal Wanita', 'Balance', 'BRG000719', 30000, 45000, 0, 5, 5, 0, 1, '36-37', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(719, '000719', '2301-1A', 'Sandal Slop 3 Tali Hitam 38-39', 'Sandal Wanita', 'Balance', 'BRG000720', 30000, 45000, 0, 5, 5, 0, 1, '38-39', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(720, '000720', '2301-1A', 'Sandal Slop 3 Tali Hitam 40-41', 'Sandal Wanita', 'Balance', 'BRG000721', 30000, 45000, 0, 5, 5, 0, 1, '40-41', 'Hitam', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(721, '000721', '2301-1A', 'Sandal Slop 3 Tali Putih 36-37', 'Sandal Wanita', 'Balance', 'BRG000722', 30000, 45000, 0, 5, 5, 0, 1, '36-37', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(722, '000722', '2301-1A', 'Sandal Slop 3 Tali Putih 38-39', 'Sandal Wanita', 'Balance', 'BRG000723', 30000, 45000, 0, 5, 5, 0, 1, '38-39', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(723, '000723', '2301-1A', 'Sandal Slop 3 Tali Putih 40-41', 'Sandal Wanita', 'Balance', 'BRG000724', 30000, 45000, 0, 5, 5, 0, 1, '40-41', 'Putih', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(724, '000724', '2301-1A', 'Sandal Slop 3 Tali Cokelat 36-37', 'Sandal Wanita', 'Balance', 'BRG000725', 30000, 45000, 0, 5, 5, 0, 1, '36-37', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(725, '000725', '2301-1A', 'Sandal Slop 3 Tali Cokelat 38-39', 'Sandal Wanita', 'Balance', 'BRG000726', 30000, 45000, 0, 5, 5, 0, 1, '38-39', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(726, '000726', '2301-1A', 'Sandal Slop 3 Tali Cokelat 40-41', 'Sandal Wanita', 'Balance', 'BRG000727', 30000, 45000, 0, 5, 5, 0, 1, '40-41', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(727, '000727', '2301-1A', 'Sandal Slop 3 Tali Pink 36-37', 'Sandal Wanita', 'Balance', 'BRG000728', 30000, 45000, 0, 5, 5, 0, 1, '36-37', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(728, '000728', '2301-1A', 'Sandal Slop 3 Tali Pink 38-39', 'Sandal Wanita', 'Balance', 'BRG000729', 30000, 45000, 0, 5, 5, 0, 1, '38-39', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(729, '000729', '2301-1A', 'Sandal Slop 3 Tali Pink 40-41', 'Sandal Wanita', 'Balance', 'BRG000730', 30000, 45000, 0, 5, 5, 0, 1, '40-41', 'Pink', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg'),
(730, '000730', '055m', 'Sandal Jpt Pria Polos Cokelat 41', 'Sandal Pria', 'Balance', 'BRG000731', 19500, 29900, 0, 1, 1, 0, 1, '41', 'Cokelat', '0000-00-00', 'Pcs', '', '', 'dist/upload/index.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `barang_setting`
--

CREATE TABLE `barang_setting` (
  `view_sku` int(1) NOT NULL,
  `view_nama` int(1) NOT NULL,
  `view_hbeli` int(1) NOT NULL,
  `view_hjual` int(1) NOT NULL,
  `view_stok` int(1) NOT NULL,
  `view_terjual` int(1) NOT NULL,
  `view_kategori` int(1) NOT NULL,
  `view_lokasi` int(1) NOT NULL,
  `view_warna` int(1) NOT NULL,
  `view_ukuran` int(1) NOT NULL,
  `view_merek` int(1) NOT NULL,
  `view_expired` int(1) NOT NULL,
  `view_satuan` int(1) NOT NULL,
  `kode` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_setting`
--

INSERT INTO `barang_setting` (`view_sku`, `view_nama`, `view_hbeli`, `view_hjual`, `view_stok`, `view_terjual`, `view_kategori`, `view_lokasi`, `view_warna`, `view_ukuran`, `view_merek`, `view_expired`, `view_satuan`, `kode`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 99);

-- --------------------------------------------------------

--
-- Table structure for table `barang_setting_barcode`
--

CREATE TABLE `barang_setting_barcode` (
  `label_atas` int(1) NOT NULL,
  `label_bawah` int(1) NOT NULL,
  `jml_kolom` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_setting_barcode`
--

INSERT INTO `barang_setting_barcode` (`label_atas`, `label_bawah`, `jml_kolom`) VALUES
(1, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `bayar`
--

CREATE TABLE `bayar` (
  `nota` varchar(20) NOT NULL,
  `tglbayar` date DEFAULT NULL,
  `jam` varchar(10) NOT NULL,
  `bayar` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `kembali` int(11) DEFAULT NULL,
  `keluar` int(11) DEFAULT NULL,
  `kasir` varchar(100) DEFAULT NULL,
  `diskon` int(10) NOT NULL,
  `no` int(11) NOT NULL,
  `tipebayar` varchar(30) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `beli`
--

CREATE TABLE `beli` (
  `nota` varchar(20) NOT NULL,
  `tglbeli` date DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `supplier` varchar(20) DEFAULT NULL,
  `kasir` varchar(100) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `nota` varchar(20) NOT NULL,
  `nopo` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `tglsale` date DEFAULT NULL,
  `biaya` int(10) NOT NULL,
  `total` int(11) DEFAULT NULL,
  `sudahbayar` int(11) NOT NULL,
  `supplier` varchar(200) DEFAULT NULL,
  `kasir` varchar(100) DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `diterima` varchar(50) NOT NULL,
  `keterangan` varchar(250) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`nota`, `nopo`, `tanggal`, `tglsale`, `biaya`, `total`, `sudahbayar`, `supplier`, `kasir`, `status`, `diterima`, `keterangan`, `no`) VALUES
('000001', 'PO000001', '2023-03-09', '2023-03-09', 0, 7600000, 0, '0001', 'admin', 'hutang', '', ' aaaaaaaaa', 1),
('000002', 'PO000002', '2023-03-09', '2023-03-09', 0, 2100000, 0, '0001', 'admin', 'hutang', '', ' aaa', 2),
('000003', 'PO000003', '2023-03-09', '2023-03-09', 0, 6000000, 0, '0001', 'admin', 'belum', '', ' ', 3),
('000004', 'PO000004', '2023-03-09', '2023-03-09', 0, 6882000, 0, '0001', 'admin', 'belum', '', ' ', 4),
('000005', 'PO000005', '2023-03-09', '2023-03-09', 0, 8769000, 0, '0002', 'admin', 'hutang', '', ' aaaa', 5),
('000006', 'PO000006', '2023-03-09', '2023-03-09', 0, 922000, 0, '0002', 'admin', 'hutang', '', ' ', 6);

-- --------------------------------------------------------

--
-- Table structure for table `buy_hutang`
--

CREATE TABLE `buy_hutang` (
  `nota` varchar(10) NOT NULL,
  `faktur` varchar(20) NOT NULL,
  `kreditur` varchar(10) NOT NULL,
  `tgl` date NOT NULL,
  `due` date NOT NULL,
  `hutang` int(10) NOT NULL,
  `sudahbayar` int(10) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buy_hutang`
--

INSERT INTO `buy_hutang` (`nota`, `faktur`, `kreditur`, `tgl`, `due`, `hutang`, `sudahbayar`, `keterangan`, `status`, `no`) VALUES
('000001', '', '0001', '2023-03-09', '2023-03-09', 7600000, 0, '', 'hutang', 1),
('000005', '', '0002', '2023-03-09', '2023-03-09', 8769000, 0, '', 'hutang', 2),
('000006', '', '0002', '2023-03-09', '2023-03-09', 922000, 0, 'aa', 'hutang', 3),
('000002', 'PO000002', '0001', '2023-03-09', '2023-03-09', 2100000, 0, 'aaaa', 'hutang', 4);

-- --------------------------------------------------------

--
-- Table structure for table `buy_payment`
--

CREATE TABLE `buy_payment` (
  `kode` varchar(10) NOT NULL,
  `nota` varchar(10) NOT NULL,
  `kreditur` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `metode` varchar(20) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chmenu`
--

CREATE TABLE `chmenu` (
  `userjabatan` varchar(20) NOT NULL,
  `menu1` varchar(1) DEFAULT '0',
  `menu2` varchar(1) DEFAULT '0',
  `menu3` varchar(1) DEFAULT '0',
  `menu4` varchar(1) DEFAULT '0',
  `menu5` varchar(1) DEFAULT '0',
  `menu6` varchar(1) DEFAULT '0',
  `menu7` varchar(1) DEFAULT '0',
  `menu8` varchar(1) DEFAULT '0',
  `menu9` varchar(1) DEFAULT '0',
  `menu10` varchar(1) DEFAULT '0',
  `menu11` varchar(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chmenu`
--

INSERT INTO `chmenu` (`userjabatan`, `menu1`, `menu2`, `menu3`, `menu4`, `menu5`, `menu6`, `menu7`, `menu8`, `menu9`, `menu10`, `menu11`) VALUES
('admin', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5'),
('Kasir', '0', '5', '2', '2', '0', '0', '2', '1', '0', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `nama` varchar(100) DEFAULT NULL,
  `tagline` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `notelp` varchar(20) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `avatar` varchar(150) DEFAULT NULL,
  `no` int(11) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `emailNotifReceiver` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`nama`, `tagline`, `alamat`, `notelp`, `signature`, `avatar`, `no`) VALUES
('Toko Andalan', 'Computer Sparepart Expert', 'Jl. Yos Sudarso 45A, banyuwangi, Jawa timur, Indonesia, 68421', '081235218776', 'Thank You', 'dist/upload/logo.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dataretur`
--

CREATE TABLE `dataretur` (
  `nota` varchar(10) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `harga` int(10) NOT NULL,
  `hargaakhir` int(10) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `nama` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`nama`, `avatar`, `tanggal`, `isi`, `id`) VALUES
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1),
('iam Admin gantent', 'dist/upload/avatar.png', '2020-09-06', '<h1>TES</h1>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoicebeli`
--

CREATE TABLE `invoicebeli` (
  `nota` varchar(20) NOT NULL,
  `kode` varchar(200) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `terima` int(10) NOT NULL,
  `hargaakhir` int(11) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoicebeli`
--

INSERT INTO `invoicebeli` (`nota`, `kode`, `nama`, `harga`, `jumlah`, `terima`, `hargaakhir`, `no`) VALUES
('000001', '000002', 'Sandal  Teplek 38 Hitam', 21000, 100, 0, 2100000, 1),
('000001', '000011', 'Sandal Wedges Jelly 37 Putih', 31000, 100, 0, 3100000, 2),
('000001', '000020', 'Sandal Jpt Fushin 39-40 Kuning', 24000, 100, 0, 2400000, 3),
('000002', '000015', 'Sandal Jpt Fushin 35-36 Hitam', 24000, 10, 0, 240000, 4),
('000002', '000029', 'Sandal Baim 39 Hitam', 62000, 10, 0, 620000, 5),
('000002', '000033', 'Sandal Baim 39 Pink', 62000, 10, 0, 620000, 6),
('000002', '000036', 'Sandal Baim 38 Putih', 62000, 10, 0, 620000, 7),
('000003', '000046', 'Sandal Baim 40 Pink', 60000, 100, 0, 6000000, 8),
('000004', '000034', 'Sandal Baim 40 Pink', 62000, 111, 0, 6882000, 9),
('000005', '000049', 'Sandal Baim 39 Putih', 60000, 111, 0, 6660000, 11),
('000005', '000065', 'Sandal Kelinci 40-41 Orange', 19000, 111, 0, 2109000, 10),
('000006', '000020', 'Sandal Jpt Fushin 39-40 Kuning', 24000, 10, 0, 240000, 12),
('000006', '000034', 'Sandal Baim 40 Pink', 62000, 11, 0, 682000, 13);

-- --------------------------------------------------------

--
-- Table structure for table `invoicejual`
--

CREATE TABLE `invoicejual` (
  `nota` varchar(20) NOT NULL,
  `kode` varchar(200) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `hargaakhir` int(11) DEFAULT NULL,
  `modal` int(10) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoicejual`
--

INSERT INTO `invoicejual` (`nota`, `kode`, `nama`, `harga`, `jumlah`, `hargaakhir`, `modal`, `no`) VALUES
('100001', '000001', 'Sandal  Teplek 37 Hitam', 31899, 1, 31899, 21000, 1),
('100001', '000004', 'Sandal  Teplek 40 Hitam', 31899, 1, 31899, 21000, 2),
('100001', '000005', 'Sandal Wedges Jelly 36 Hitam', 41000, 1, 41000, 31000, 3),
('100002', '000004', 'Sandal  Teplek 40 Hitam', 31899, 1, 31899, 21000, 4),
('100002', '000038', 'Sandal Baim 40 Putih', 72000, 1, 72000, 62000, 5),
('100002', '000039', 'Sandal Baim 37 Hitam', 69900, 1, 69900, 60000, 6),
('100003', '000001', 'Sandal  Teplek 37 Hitam', 31899, 1, 31899, 21000, 7),
('100003', '000002', 'Sandal  Teplek 38 Hitam', 31899, 1, 31899, 21000, 8),
('100003', '000003', 'Sandal  Teplek 39 Hitam', 31899, 1, 31899, 21000, 9),
('100004', '000009', 'Sandal Wedges Jelly 40 Hitam', 41000, 1, 41000, 31000, 10),
('100004', '000022', 'Sandal Jpt Fushin 37-38 Orange', 34500, 1, 34500, 24000, 11),
('100004', '000032', 'Sandal Baim 38 Pink', 72000, 1, 72000, 62000, 12);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`kode`, `nama`, `no`) VALUES
('0001', 'admin', 28),
('0002', 'Kasir', 37);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi`
--

CREATE TABLE `mutasi` (
  `namauser` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `jam` varchar(10) NOT NULL,
  `kodebarang` varchar(10) NOT NULL,
  `sisa` int(10) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `kegiatan` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `no` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mutasi`
--

INSERT INTO `mutasi` (`namauser`, `tgl`, `jam`, `kodebarang`, `sisa`, `jumlah`, `kegiatan`, `keterangan`, `no`, `status`) VALUES
('admin', '2023-03-09', '09:47', '000001', 1, -1, 'menjual barang memakai invoice', '100001', 1, 'berhasil'),
('admin', '2023-03-09', '09:47', '000004', 1, -1, 'menjual barang memakai invoice', '100001', 2, 'berhasil'),
('admin', '2023-03-09', '09:48', '000005', 1, -1, 'menjual barang memakai invoice', '100001', 3, 'berhasil'),
('admin', '2023-03-09', '09:48', '000004', 0, -1, 'menjual barang memakai invoice', '100002', 4, 'berhasil'),
('admin', '2023-03-09', '09:48', '000038', 0, -1, 'menjual barang memakai invoice', '100002', 5, 'berhasil'),
('admin', '2023-03-09', '09:48', '000039', 0, -1, 'menjual barang memakai invoice', '100002', 6, 'berhasil'),
('admin', '2023-03-09', '09:49', '000001', 0, -1, 'menjual barang memakai invoice', '100003', 7, 'berhasil'),
('admin', '2023-03-09', '09:49', '000002', 4, -1, 'menjual barang memakai invoice', '100003', 8, 'berhasil'),
('admin', '2023-03-09', '09:49', '000003', 1, -1, 'menjual barang memakai invoice', '100003', 9, 'berhasil'),
('admin', '2023-03-09', '09:49', '000009', 2, -1, 'menjual barang memakai invoice', '100004', 10, 'berhasil'),
('admin', '2023-03-09', '09:49', '000022', 0, -1, 'menjual barang memakai invoice', '100004', 11, 'berhasil'),
('admin', '2023-03-09', '09:49', '000032', 0, -1, 'menjual barang memakai invoice', '100004', 12, 'berhasil');

-- --------------------------------------------------------

--
-- Table structure for table `operasional`
--

CREATE TABLE `operasional` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `kasir` varchar(20) DEFAULT NULL,
  `tipe` varchar(30) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `operasional_tipe`
--

CREATE TABLE `operasional_tipe` (
  `Kode` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operasional_tipe`
--

INSERT INTO `operasional_tipe` (`Kode`, `nama`, `no`) VALUES
('0001', 'Gaji Karyawan', 3),
('0002', 'Listrik', 4),
('0003', 'Sewa Bangunan', 5),
('0004', 'Pajak', 6);

-- --------------------------------------------------------

--
-- Table structure for table `operasional_view`
--

CREATE TABLE `operasional_view` (
  `kode_view` int(1) NOT NULL,
  `nama_view` int(1) NOT NULL,
  `tipe_view` int(1) NOT NULL,
  `tgl_view` int(1) NOT NULL,
  `biaya_view` int(1) NOT NULL,
  `ket_view` int(1) NOT NULL,
  `opsi_view` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operasional_view`
--

INSERT INTO `operasional_view` (`kode_view`, `nama_view`, `tipe_view`, `tgl_view`, `biaya_view`, `ket_view`, `opsi_view`) VALUES
(0, 0, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `nama` varchar(20) NOT NULL,
  `tipe` varchar(20) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`nama`, `tipe`, `no`) VALUES
('BCA', 'bank', 2),
('BRI', 'bank', 3),
('MANDIRI', 'bank', 4),
('Transfer', 'pay', 6);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `tipe` int(1) NOT NULL,
  `nota` varchar(10) NOT NULL,
  `cara` varchar(20) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `ref` varchar(50) NOT NULL,
  `payday` date NOT NULL,
  `no` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `kode` varchar(20) NOT NULL,
  `tgldaftar` date DEFAULT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `alamat` varchar(70) DEFAULT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `idpelanggan` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`kode`, `tgldaftar`, `nama`, `alamat`, `nohp`, `email`, `idpelanggan`, `status`, `no`) VALUES
('0001', '2023-03-09', 'baidu', 'aaaa', '0139191', 'andoi@gmail.comaaa', '0001', 'pelanggan', 1),
('0002', '2023-03-09', 'ali', 'aaaaa', '08128261711', 'andoi@gmail.comaaaaa', '0002', 'pelanggan', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pin`
--

CREATE TABLE `pin` (
  `pin` varchar(255) NOT NULL,
  `ubah` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pin`
--

INSERT INTO `pin` (`pin`, `ubah`) VALUES
('10470c3b4b1fed12c3baac014be15fac67c6e815', 2);

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `nota` varchar(10) NOT NULL,
  `nomor` varchar(20) NOT NULL,
  `tgl` date NOT NULL,
  `due` date NOT NULL,
  `pelanggan` varchar(10) NOT NULL,
  `modal` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `diskon` int(10) NOT NULL,
  `potongan` int(10) NOT NULL,
  `biayatambahan` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `oleh` varchar(50) NOT NULL,
  `notainvoice` varchar(10) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_list`
--

CREATE TABLE `quotation_list` (
  `nota` varchar(20) NOT NULL,
  `kode` varchar(200) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `hargaakhir` int(11) DEFAULT NULL,
  `modal` int(10) NOT NULL,
  `conv` int(1) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `kode` varchar(10) NOT NULL,
  `bank` varchar(20) NOT NULL,
  `norek` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`kode`, `bank`, `norek`, `nama`, `no`) VALUES
('0001', 'BCA', '111', 'baju oblos', 1),
('0002', 'MANDIRI', '232132131w21w21ww', 'Komputer', 2);

-- --------------------------------------------------------

--
-- Table structure for table `retur`
--

CREATE TABLE `retur` (
  `nota` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `dana` int(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `petugas` varchar(100) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `nota` varchar(20) NOT NULL,
  `nomor` varchar(20) NOT NULL,
  `tglsale` date DEFAULT NULL,
  `duedate` date NOT NULL,
  `total` int(11) DEFAULT NULL,
  `diskon` int(10) NOT NULL,
  `potongan` int(10) NOT NULL,
  `biaya` int(10) NOT NULL,
  `modalbeli` int(10) NOT NULL,
  `pelanggan` varchar(200) DEFAULT NULL,
  `kasir` varchar(100) DEFAULT NULL,
  `sudahbayar` int(10) NOT NULL,
  `keterangan` varchar(250) DEFAULT NULL,
  `status` varchar(11) NOT NULL,
  `diterima` varchar(10) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`nota`, `nomor`, `tglsale`, `duedate`, `total`, `diskon`, `potongan`, `biaya`, `modalbeli`, `pelanggan`, `kasir`, `sudahbayar`, `keterangan`, `status`, `diterima`, `no`) VALUES
('100001', 'INV100001', '2023-03-09', '2023-03-09', 104798, 0, 0, 0, 73000, '0001', 'admin', 0, 'aa', 'belum', '', 1),
('100002', 'INV100002', '2023-03-09', '2023-03-09', 173799, 0, 0, 0, 143000, '0002', 'admin', 0, '', 'belum', '', 2),
('100003', 'INV100003', '2023-03-09', '2023-03-09', 95697, 0, 0, 0, 63000, '0001', 'admin', 30000, '', 'belum', '', 3),
('100004', 'INV100004', '2023-03-09', '2023-03-09', 147500, 0, 0, 0, 117000, '0002', 'admin', 147500, '', 'dibayar', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sale_payment`
--

CREATE TABLE `sale_payment` (
  `kode` varchar(10) NOT NULL,
  `nota` varchar(10) NOT NULL,
  `pelanggan` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `metode` varchar(20) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale_payment`
--

INSERT INTO `sale_payment` (`kode`, `nota`, `pelanggan`, `tanggal`, `jumlah`, `metode`, `keterangan`, `user`, `no`) VALUES
('00000001', '100004', '0002', '2023-03-09', 147500, 'transfer', 'cicilan 1', 'Kasirman', 1),
('00000002', '100003', '0001', '2023-03-09', 30000, 'cash', 'aaaaa', 'Kasirman', 2);

-- --------------------------------------------------------

--
-- Table structure for table `stokretur`
--

CREATE TABLE `stokretur` (
  `kode` varchar(100) NOT NULL,
  `stok` int(7) NOT NULL,
  `no` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stok_keluar`
--

CREATE TABLE `stok_keluar` (
  `nota` varchar(10) NOT NULL,
  `cabang` varchar(2) NOT NULL,
  `tgl` date NOT NULL,
  `pelanggan` varchar(10) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stok_keluar_daftar`
--

CREATE TABLE `stok_keluar_daftar` (
  `nota` varchar(10) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stok_masuk`
--

CREATE TABLE `stok_masuk` (
  `nota` varchar(10) NOT NULL,
  `cabang` varchar(2) NOT NULL,
  `tgl` date NOT NULL,
  `supplier` varchar(10) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stok_masuk_daftar`
--

CREATE TABLE `stok_masuk_daftar` (
  `nota` varchar(10) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stok_sesuai`
--

CREATE TABLE `stok_sesuai` (
  `nota` varchar(10) NOT NULL,
  `tgl` date NOT NULL,
  `oleh` varchar(100) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stok_sesuai_daftar`
--

CREATE TABLE `stok_sesuai_daftar` (
  `nota` varchar(10) NOT NULL,
  `kode_brg` varchar(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `sebelum` int(10) NOT NULL,
  `sesudah` int(10) NOT NULL,
  `selisih` int(10) NOT NULL,
  `catatan` varchar(100) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `kode` varchar(20) NOT NULL,
  `tgldaftar` date DEFAULT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `alamat` varchar(70) DEFAULT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`kode`, `tgldaftar`, `nama`, `alamat`, `nohp`, `no`) VALUES
('0001', '2023-03-09', 'PT ANDIKA', 'aaaaaaaaaaaaaaaaaaa', '0139191', 1),
('0002', '2023-03-09', 'PT MAESU', 'aaaabbbb', '09139191', 2);

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `nota` varchar(10) NOT NULL,
  `nosurat` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_pelanggan` varchar(10) NOT NULL,
  `tujuan` varchar(30) NOT NULL,
  `notelp` varchar(20) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `driver` varchar(20) NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `oleh` varchar(50) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksibeli`
--

CREATE TABLE `transaksibeli` (
  `nota` varchar(20) NOT NULL,
  `kode` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `hargaakhir` int(11) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksimasuk`
--

CREATE TABLE `transaksimasuk` (
  `nota` varchar(20) NOT NULL,
  `kode` varchar(200) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `hargabeli` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `hargaakhir` int(11) DEFAULT NULL,
  `hargabeliakhir` int(11) DEFAULT NULL,
  `retur` varchar(3) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userna_me` varchar(20) NOT NULL,
  `pa_ssword` varchar(70) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `tgllahir` date DEFAULT NULL,
  `tglaktif` date DEFAULT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userna_me`, `pa_ssword`, `nama`, `alamat`, `nohp`, `tgllahir`, `tglaktif`, `jabatan`, `avatar`, `no`) VALUES
('admin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'Admin', '  alamat', '111', '2021-09-22', '2020-02-02', 'admin', 'dist/upload/avatar.png', 1),
('admin2', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'Admin', '  alamat', '111', '2021-09-22', '2020-02-02', 'admin', 'dist/upload/index.jpg', 2),
('kasir', '22a44e2ff721590111588f73cbb865dd8079d9ab', 'kasirman', ' jalan ancol 28', '', '2021-09-22', '2021-09-22', 'Kasir', 'dist/upload/avatar.png', 36);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backset`
--
ALTER TABLE `backset`
  ADD PRIMARY KEY (`url`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no` (`no`),
  ADD KEY `jenis` (`kategori`);

--
-- Indexes for table `barang_setting`
--
ALTER TABLE `barang_setting`
  ADD PRIMARY KEY (`view_sku`);

--
-- Indexes for table `barang_setting_barcode`
--
ALTER TABLE `barang_setting_barcode`
  ADD PRIMARY KEY (`label_atas`);

--
-- Indexes for table `bayar`
--
ALTER TABLE `bayar`
  ADD PRIMARY KEY (`nota`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `beli`
--
ALTER TABLE `beli`
  ADD PRIMARY KEY (`nota`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no4` (`no`);

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`nota`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `buy_hutang`
--
ALTER TABLE `buy_hutang`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `buy_payment`
--
ALTER TABLE `buy_payment`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `chmenu`
--
ALTER TABLE `chmenu`
  ADD PRIMARY KEY (`userjabatan`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `dataretur`
--
ALTER TABLE `dataretur`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD KEY `id` (`id`);

--
-- Indexes for table `invoicebeli`
--
ALTER TABLE `invoicebeli`
  ADD PRIMARY KEY (`nota`,`kode`),
  ADD KEY `barang` (`nama`),
  ADD KEY `no5_2` (`no`);

--
-- Indexes for table `invoicejual`
--
ALTER TABLE `invoicejual`
  ADD PRIMARY KEY (`nota`,`kode`),
  ADD KEY `barang` (`nama`),
  ADD KEY `no5_2` (`no`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no4` (`no`);

--
-- Indexes for table `mutasi`
--
ALTER TABLE `mutasi`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `operasional`
--
ALTER TABLE `operasional`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `operasional_tipe`
--
ALTER TABLE `operasional_tipe`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `operasional_view`
--
ALTER TABLE `operasional_view`
  ADD PRIMARY KEY (`kode_view`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no3` (`no`);

--
-- Indexes for table `pin`
--
ALTER TABLE `pin`
  ADD PRIMARY KEY (`ubah`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `quotation_list`
--
ALTER TABLE `quotation_list`
  ADD PRIMARY KEY (`nota`,`kode`),
  ADD KEY `barang` (`nama`),
  ADD KEY `no5_2` (`no`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `retur`
--
ALTER TABLE `retur`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`nota`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `sale_payment`
--
ALTER TABLE `sale_payment`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `stokretur`
--
ALTER TABLE `stokretur`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `stok_keluar`
--
ALTER TABLE `stok_keluar`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `stok_keluar_daftar`
--
ALTER TABLE `stok_keluar_daftar`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `stok_masuk`
--
ALTER TABLE `stok_masuk`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `stok_masuk_daftar`
--
ALTER TABLE `stok_masuk_daftar`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `stok_sesuai`
--
ALTER TABLE `stok_sesuai`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `stok_sesuai_daftar`
--
ALTER TABLE `stok_sesuai_daftar`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no3` (`no`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `transaksibeli`
--
ALTER TABLE `transaksibeli`
  ADD PRIMARY KEY (`nota`,`kode`),
  ADD KEY `no` (`no`),
  ADD KEY `username` (`kode`),
  ADD KEY `kdbarang` (`harga`);

--
-- Indexes for table `transaksimasuk`
--
ALTER TABLE `transaksimasuk`
  ADD PRIMARY KEY (`nota`,`kode`),
  ADD KEY `barang` (`nama`),
  ADD KEY `no5_2` (`no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userna_me`),
  ADD KEY `no` (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=731;

--
-- AUTO_INCREMENT for table `bayar`
--
ALTER TABLE `bayar`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beli`
--
ALTER TABLE `beli`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buy`
--
ALTER TABLE `buy`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `buy_hutang`
--
ALTER TABLE `buy_hutang`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `buy_payment`
--
ALTER TABLE `buy_payment`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dataretur`
--
ALTER TABLE `dataretur`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoicebeli`
--
ALTER TABLE `invoicebeli`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `invoicejual`
--
ALTER TABLE `invoicejual`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutasi`
--
ALTER TABLE `mutasi`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `operasional`
--
ALTER TABLE `operasional`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `operasional_tipe`
--
ALTER TABLE `operasional_tipe`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `no` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_list`
--
ALTER TABLE `quotation_list`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `retur`
--
ALTER TABLE `retur`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sale_payment`
--
ALTER TABLE `sale_payment`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stokretur`
--
ALTER TABLE `stokretur`
  MODIFY `no` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stok_keluar`
--
ALTER TABLE `stok_keluar`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stok_keluar_daftar`
--
ALTER TABLE `stok_keluar_daftar`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stok_masuk`
--
ALTER TABLE `stok_masuk`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stok_masuk_daftar`
--
ALTER TABLE `stok_masuk_daftar`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stok_sesuai`
--
ALTER TABLE `stok_sesuai`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stok_sesuai_daftar`
--
ALTER TABLE `stok_sesuai_daftar`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksibeli`
--
ALTER TABLE `transaksibeli`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksimasuk`
--
ALTER TABLE `transaksimasuk`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
