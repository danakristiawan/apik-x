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
-- Struktur dari tabel `data_transaksi`
--

CREATE TABLE `data_transaksi` (
  `id` int(11) NOT NULL,
  `kdsatker` varchar(6) DEFAULT NULL,
  `bulan` varchar(2) DEFAULT NULL,
  `tahun` varchar(4) DEFAULT NULL,
  `kdk` varchar(1) DEFAULT NULL,
  `kdj` varchar(2) DEFAULT NULL,
  `jns` varchar(1) DEFAULT 'D',
  `urut` varchar(6) DEFAULT NULL,
  `nominal` double(15,0) DEFAULT NULL,
  `uraian` varchar(255) DEFAULT NULL,
  `tanggal` int(11) DEFAULT NULL,
  `va` varchar(32) DEFAULT NULL,
  `rekening` varchar(32) DEFAULT NULL,
  `keg` varchar(1) DEFAULT 'L',
  `nota_id` int(11) DEFAULT NULL,
  `sts` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_transaksi`
--

INSERT INTO `data_transaksi` (`id`, `kdsatker`, `bulan`, `tahun`, `kdk`, `kdj`, `jns`, `urut`, `nominal`, `uraian`, `tanggal`, `va`, `rekening`, `keg`, `nota_id`, `sts`) VALUES
(1, '411792', '01', '2022', '1', '01', 'D', '000001', 234000000, 'Testing dsfsd dga adga adga adga adga agda adga adg aa', 1577811600, '141411111', '14141121', 'L', NULL, 0),
(2, '411792', '02', '2022', '1', '02', 'D', '000002', 35352000, 'Uji coba lagi', 1577811600, '3422423422', '2245222', 'L', NULL, 0),
(3, '411792', '03', '2022', '1', '01', 'D', '123242', 3510000, 'sagas', 1577811600, '12151', '12311511', 'L', NULL, 0),
(4, '411792', '01', '2022', '1', '01', 'D', '000001', 234000000, 'Testing', 1577811600, '141411111', '14141121', 'L', NULL, 0),
(5, '411792', '02', '2022', '1', '02', 'D', '000002', 35352000, 'Uji coba lagi', 1577811600, '3422423422', '2245222', 'L', NULL, 0),
(6, '411792', '01', '2022', '1', '01', 'D', '000001', 234000000, 'Testing', 1577811600, '141411111', '14141121', 'L', NULL, 0),
(7, '411792', '02', '2022', '1', '02', 'D', '000002', 35352000, 'Uji coba lagi', 1577811600, '3422423422', '2245222', 'L', NULL, 0),
(8, '411792', '03', '2022', '1', '01', 'D', '123242', 3510000, 'sagas', 1577811600, '12151', '12311511', 'L', NULL, 0),
(9, '411792', '01', '2022', '1', '01', 'D', '000001', 234000000, 'Testing', 1577811600, '141411111', '14141121', 'L', NULL, 0),
(10, '411792', '02', '2022', '1', '02', 'D', '000002', 35352000, 'Uji coba lagi', 1577811600, '3422423422', '2245222', 'L', NULL, 0),
(11, '411792', '01', '2022', '1', '01', 'D', '000001', 234000000, 'Testing', 1577811600, '141411111', '14141121', 'L', NULL, 0),
(12, '411792', '02', '2022', '1', '02', 'D', '000002', 35352000, 'Uji coba lagi', 1577811600, '3422423422', '2245222', 'L', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_transaksi`
--
ALTER TABLE `data_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_transaksi`
--
ALTER TABLE `data_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
