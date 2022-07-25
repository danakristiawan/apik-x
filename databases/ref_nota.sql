-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jul 2022 pada 15.37
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
-- Struktur dari tabel `ref_nota`
--

CREATE TABLE `ref_nota` (
  `id` int(11) NOT NULL,
  `kode` varchar(2) DEFAULT NULL,
  `nama` varchar(64) DEFAULT NULL,
  `kdk` varchar(1) DEFAULT NULL,
  `kdj` varchar(2) DEFAULT NULL,
  `sts` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `ref_nota`
--

INSERT INTO `ref_nota` (`id`, `kode`, `nama`, `kdk`, `kdj`, `sts`) VALUES
(1, '01', 'Uang Jaminan Lelang', '1', '01', 'Debet'),
(2, '02', 'Pelunasan Lelang', '1', '02', 'Debet'),
(3, '03', 'Setoran Debitur', '1', '06', 'Debet'),
(4, '04', 'Transaksi Lain-lain', '1', '08', 'Debet'),
(5, '05', 'Pengembalian Uang Jaminan Lelang', '1', '03', 'Kredit'),
(6, '06', 'Pemindahbukuan HBL', '1', '04', 'Kredit'),
(9, '02', 'Pelunasan Lelang', '2', '01', 'Debet'),
(10, '07', 'Bea Lelang', '2', '02', 'Kredit'),
(11, '02', 'Pelunasan Lelang', '2', '03', 'Debet'),
(12, '07', 'Bea Lelang', '2', '04', 'Kredit'),
(14, '02', 'Pelunasan Lelang', '3', '01', 'Debet'),
(15, '08', 'PPh Final', '3', '02', 'Kredit'),
(16, '09', 'Nota Koreksi', '1', '05', 'Kredit'),
(17, '10', 'Hak Penyerah Piutang', '1', '07', 'Kredit'),
(18, '11', 'Biaya Administrasi', '2', '08', 'Kredit'),
(19, '12', 'Bea Lelang Batal', '2', '09', 'Debet'),
(20, '13', 'Bea Lelang Batal', '2', '10', 'Kredit');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ref_nota`
--
ALTER TABLE `ref_nota`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ref_nota`
--
ALTER TABLE `ref_nota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
