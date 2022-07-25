-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jul 2022 pada 15.36
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_apik-x`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_nota`
--

CREATE TABLE `data_nota` (
  `id` int(11) NOT NULL,
  `kdsatker` varchar(6) DEFAULT NULL,
  `bulan` varchar(2) DEFAULT NULL,
  `tahun` varchar(4) DEFAULT NULL,
  `kdn` varchar(2) DEFAULT NULL,
  `jns` varchar(1) DEFAULT 'D',
  `urut` varchar(4) DEFAULT NULL,
  `nominal` double(15,0) DEFAULT NULL,
  `tanggal` int(11) DEFAULT NULL,
  `rekening_id` int(11) DEFAULT NULL,
  `sts` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_nota`
--

INSERT INTO `data_nota` (`id`, `kdsatker`, `bulan`, `tahun`, `kdn`, `jns`, `urut`, `nominal`, `tanggal`, `rekening_id`, `sts`) VALUES
(1, '411792', '01', '2022', '01', 'D', '0001', 1304320000000, 1577811600, 1, 0),
(3, '411792', '01', '2022', '01', 'D', '0001', 23432000000, 1577811600, 1, 0),
(5, '411792', '01', '2022', '01', 'D', '0001', 352000, 1577811600, 1, 0),
(6, '411792', '01', '2022', '01', 'D', '0002', 636300000, 1577811600, 1, 0),
(7, '411792', '01', '2022', '01', 'D', '0001', 23432000000, 1577811600, 1, 0),
(8, '411792', '01', '2022', '01', 'D', '0002', 636300000, 1577811600, 1, 0),
(9, '411792', '01', '2022', '01', 'D', '0001', 23432000000, 1577811600, 1, 0),
(10, '411792', '01', '2022', '01', 'D', '0002', 636300000, 1577811600, 1, 0),
(11, '411792', '01', '2022', '01', 'D', '0001', 23432000000, 1577811600, 1, 0),
(13, '411792', '07', '2022', '01', 'D', '0004', 560000, 1658507963, 1, 0),
(14, '411792', '07', '2022', '01', 'D', '0004', 654570000, 1658507997, 1, 0),
(16, '411792', '07', '2022', '01', 'D', '0004', 88970000, 1658557242, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_nota`
--
ALTER TABLE `data_nota`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_nota`
--
ALTER TABLE `data_nota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
