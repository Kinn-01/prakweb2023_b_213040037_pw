-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 06, 2023 at 05:19 PM
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
-- Database: `prakweb_2023_b_213040037`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `tahun_terbit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `penerbit`, `penulis`, `tahun_terbit`) VALUES
(1, 'Laskar Pelangi', ' Bentang Pustaka', 'Andrea Hirata', '2005'),
(2, 'Tentang Kamu', 'Gramedia Pustaka Utama', 'Tere Liye', '2001'),
(3, 'Negeri 5 Menara', 'Gramedia Pustaka Utama', 'Ahmad Fuadi', '2009'),
(4, 'Perahu Kertas\"', 'Bentang Pustaka', 'Dee Lestari', '2008'),
(5, 'Bumi Manusia', 'Hasta Mitra', 'Pramoedya Ananta Toer', '1980'),
(6, 'Laut Bercerita', 'Kepustakaan Populer Gramedia (KPG)', ' Leila S. Chudori', '2004'),
(7, 'Ayat-Ayat Cinta', 'Republika', 'Habiburrahman El Shirazy', '2004'),
(8, 'Manusia Setengah Salmon', 'Gagas Media', 'Raditya Dika', '2011'),
(9, 'Cantik itu Luka', 'Gramedia Pustaka Utama', 'Eka Kurniawan', '2002'),
(10, 'Sang Pemimpi', 'Bentang Pustaka', 'Andrea Hirata', '2006');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
