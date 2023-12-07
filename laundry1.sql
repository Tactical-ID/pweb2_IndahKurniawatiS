-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2023 at 03:34 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry1`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga_barang` int NOT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_barang`, `harga_barang`, `foto`) VALUES
(2, 'Baju aku', 600000, 'baju.png'),
(3, 'celana', 7000, '519535.jpg'),
(4, 'sepatu', 12000, 'sepatuu.jpeg'),
(12, 'Sweeter', 10000, '279162.jpg'),
(22, 'Topi', 8000, '591882.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int NOT NULL,
  `id_user` int NOT NULL DEFAULT '0',
  `id_kategori` int NOT NULL DEFAULT '0',
  `tanggal_pesanan` date NOT NULL,
  `jumlah_barang` int DEFAULT NULL,
  `total_harga` int DEFAULT NULL,
  `status_pesanan` varchar(100) DEFAULT NULL,
  `status_pembayaran` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id_user`, `id_kategori`, `tanggal_pesanan`, `jumlah_barang`, `total_harga`, `status_pesanan`, `status_pembayaran`) VALUES
(26, 13, 12, '2023-11-29', 12, 96000, 'belum dicuci', 'belum lunas'),
(28, 18, 2, '2023-11-29', 1, 6000, 'belum dicuci', 'belum lunas'),
(29, 18, 3, '2023-11-30', 4, 28000, 'belum dicuci', 'belum lunas'),
(30, 18, 22, '2023-11-30', 2, 16000, 'belum dicuci', 'belum lunas'),
(32, 19, 2, '2023-11-30', 2, 12000, 'belum dicuci', 'belum lunas'),
(33, 19, 2, '2023-12-07', 111, 66600000, 'belum dicuci', 'belum lunas');

-- --------------------------------------------------------

--
-- Table structure for table `regristasi`
--

CREATE TABLE `regristasi` (
  `id` int NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `regristasi`
--

INSERT INTO `regristasi` (`id`, `nama`, `alamat`, `username`, `password`, `level`) VALUES
(3, 'Kim taehyung', 'soddd', 'admin', 'admin', 'admin'),
(11, 'mark lee', 'busan', 'mark', 'mark', 'pemilik'),
(18, 'ridwan ks', 'sidanegara', 'ridwan', 'ridwan', 'pelanggan'),
(19, 'indah ks', 'sidanegara', 'indah', 'indah', 'pelanggan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indexes for table `regristasi`
--
ALTER TABLE `regristasi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `regristasi`
--
ALTER TABLE `regristasi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
