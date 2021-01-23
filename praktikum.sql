-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2021 at 02:46 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praktikum`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `Kode` varchar(10) NOT NULL,
  `Barang` varchar(50) DEFAULT NULL,
  `Harga_Beli` double DEFAULT NULL,
  `Harga_Jual` double DEFAULT NULL,
  `Stock` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`Kode`, `Barang`, `Harga_Beli`, `Harga_Jual`, `Stock`) VALUES
('ATK-011', 'PULPEN', 1000, 2000, 40),
('ATK-012', 'PENGHAPUS', 2000, 3000, 33),
('ATK-016', 'PENGGARIS', 3000, 5000, 132),
('ATK-023', 'SPIDOL', 2000, 600, 42);

-- --------------------------------------------------------

--
-- Table structure for table `detailbeli`
--

CREATE TABLE `detailbeli` (
  `NoFaktur` varchar(15) DEFAULT NULL,
  `Kode` varchar(15) DEFAULT NULL,
  `Jumlah` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detailbeli`
--

INSERT INTO `detailbeli` (`NoFaktur`, `Kode`, `Jumlah`) VALUES
('NF01', 'ATK-012', 2),
('NF02', 'ATK-011', 12),
('NF03', 'ATK-016', 5),
('NF01', 'ATK-023', 5);

-- --------------------------------------------------------

--
-- Table structure for table `detailjual`
--

CREATE TABLE `detailjual` (
  `NoFaktur` varchar(15) DEFAULT NULL,
  `Kode` varchar(15) DEFAULT NULL,
  `Jumlah` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detailjual`
--

INSERT INTO `detailjual` (`NoFaktur`, `Kode`, `Jumlah`) VALUES
('NF01', 'ATK-012', 5),
('NF01', 'ATK-012', 2),
('NF01', 'ATK-012', 5),
('NF01', 'ATK-012', 5),
('NF02', 'ATK-011', 10),
('NF03', 'ATK-023', 8);

-- --------------------------------------------------------

--
-- Table structure for table `fakturbeli`
--

CREATE TABLE `fakturbeli` (
  `NoFaktur` varchar(15) NOT NULL,
  `KodeSuplayer` varchar(10) DEFAULT NULL,
  `Tgl` date DEFAULT NULL,
  `Total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fakturbeli`
--

INSERT INTO `fakturbeli` (`NoFaktur`, `KodeSuplayer`, `Tgl`, `Total`) VALUES
('NF01', 'KS01', '2000-02-01', 2000),
('NF02', 'KS02', '2000-01-02', 2000),
('NF03', 'KS03', '2000-02-05', 500);

-- --------------------------------------------------------

--
-- Table structure for table `fakturjual`
--

CREATE TABLE `fakturjual` (
  `NoFaktur` varchar(15) NOT NULL,
  `Pembeli` varchar(50) DEFAULT NULL,
  `Tgl` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fakturjual`
--

INSERT INTO `fakturjual` (`NoFaktur`, `Pembeli`, `Tgl`) VALUES
('NF01', 'HARIS', '2000-01-01'),
('NF02', 'ANWAR', '2000-02-01'),
('NF03', 'UCHIHA', '2000-02-01');

-- --------------------------------------------------------

--
-- Table structure for table `suplayer`
--

CREATE TABLE `suplayer` (
  `Kode_Suplayer` varchar(8) NOT NULL,
  `Nama_Suplayer` varchar(50) DEFAULT NULL,
  `Alamat` varchar(50) DEFAULT NULL,
  `Kota` varchar(50) DEFAULT NULL,
  `Kontak` varchar(50) DEFAULT NULL,
  `Non_Kontak` varchar(20) DEFAULT NULL,
  `email` varbinary(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suplayer`
--

INSERT INTO `suplayer` (`Kode_Suplayer`, `Nama_Suplayer`, `Alamat`, `Kota`, `Kontak`, `Non_Kontak`, `email`) VALUES
('SPL-01', 'CV.MAJU', 'Cipanas', 'Cianjur', '04451213242', 'Jln.Raya Cipanas', 0x63762c2e6d616a75406d61696c2e636f6d),
('SPL-02', 'CV.MUNDUR', 'Cianjur', 'Cianjur', '35535352', 'Jln. Raya Cianjur', 0x63762c6e6879406e61756b2e636f6d);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Username` varchar(15) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `Level` char(2) NOT NULL,
  `email` varchar(20) NOT NULL,
  `foto` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Username`, `Password`, `Level`, `email`, `foto`) VALUES
('anwar', 'rewerwer', '2', 'rwerwerwerwrweeeeeee', NULL),
('haris', '123456', '1', 'harismai@maail.com', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`Kode`);

--
-- Indexes for table `fakturbeli`
--
ALTER TABLE `fakturbeli`
  ADD PRIMARY KEY (`NoFaktur`);

--
-- Indexes for table `fakturjual`
--
ALTER TABLE `fakturjual`
  ADD PRIMARY KEY (`NoFaktur`);

--
-- Indexes for table `suplayer`
--
ALTER TABLE `suplayer`
  ADD PRIMARY KEY (`Kode_Suplayer`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
