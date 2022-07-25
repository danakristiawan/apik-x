-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jul 2022 pada 15.35
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
-- Struktur dari tabel `data_detail`
--

CREATE TABLE `data_detail` (
  `id` int(11) NOT NULL,
  `kdsatker` varchar(6) DEFAULT NULL,
  `bulan` varchar(2) DEFAULT NULL,
  `tahun` varchar(4) DEFAULT NULL,
  `kdk` varchar(1) DEFAULT NULL,
  `kdj` varchar(2) DEFAULT NULL,
  `urut` varchar(6) DEFAULT NULL,
  `nominal` double(15,0) DEFAULT NULL,
  `nota_id` int(11) DEFAULT NULL,
  `transaksi_id` int(11) DEFAULT NULL,
  `sts` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_detail`
--

INSERT INTO `data_detail` (`id`, `kdsatker`, `bulan`, `tahun`, `kdk`, `kdj`, `urut`, `nominal`, `nota_id`, `transaksi_id`, `sts`) VALUES
(2, '411792', '02', '2022', '1', '02', '000002', 35352000, 1, 0, NULL),
(3, '411792', '01', '2022', '1', '01', '000001', 234000000, 1, 0, NULL),
(4, '411792', '02', '2022', '1', '02', '000002', 35352000, 1, 0, NULL),
(5, '411792', '01', '2022', '1', '01', '000001', 234000000, 1, 0, NULL),
(6, '411792', '02', '2022', '1', '02', '000002', 35352000, 1, 0, NULL),
(7, '411792', '01', '2022', '1', '01', '000001', 234000000, 1, 0, NULL),
(8, '411792', '02', '2022', '1', '02', '000002', 35352000, 1, 0, NULL),
(9, '411792', '01', '2022', '1', '01', '000001', 234000000, 1, 0, NULL),
(10, '411792', '02', '2022', '1', '02', '000002', 35352000, 1, 0, NULL),
(11, '411792', '01', '2022', '1', '01', '000001', 234000000, 1, 0, NULL),
(12, '411792', '02', '2022', '1', '02', '000002', 35352000, 1, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_detail`
--
ALTER TABLE `data_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_detail`
--
ALTER TABLE `data_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
