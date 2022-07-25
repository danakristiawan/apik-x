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
-- Struktur dari tabel `ref_jenis`
--

CREATE TABLE `ref_jenis` (
  `id` int(11) NOT NULL,
  `kode` varchar(2) DEFAULT NULL,
  `nama` varchar(64) DEFAULT NULL,
  `kelompok_id` int(11) DEFAULT NULL,
  `jenis` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `ref_jenis`
--

INSERT INTO `ref_jenis` (`id`, `kode`, `nama`, `kelompok_id`, `jenis`) VALUES
(1, '01', 'Uang Jaminan Lelang', 1, 'D'),
(2, '02', 'Pelunasan Lelang', 1, 'D'),
(3, '03', 'Pengembalian UJL', 1, 'K'),
(4, '04', 'Pemindahbukuan HBL', 1, 'K'),
(5, '05', 'UJL Wanprestasi', 1, 'K'),
(6, '06', 'Setoran Debitur', 1, 'D'),
(7, '07', 'Hak Penyerah Piutang', 1, 'K'),
(8, '08', 'Transaksi Lain-lain', 1, 'D'),
(9, '01', 'Bea Lelang Penjual', 2, 'D'),
(10, '02', 'Bea Lelang Penjual', 2, 'K'),
(11, '03', 'Bea Lelang Pembeli', 2, 'D'),
(12, '04', 'Bea Lelang Pembeli', 2, 'K'),
(13, '05', 'Bea Lelang Wanprestasi', 2, 'D'),
(14, '06', 'Bea Lelang Wanprestasi', 2, 'K'),
(15, '07', 'Biaya Administrasi', 2, 'D'),
(16, '08', 'Biaya Administrasi', 2, 'K'),
(17, '01', 'PPh Pasal 21 Final', 3, 'D'),
(18, '02', 'PPh Pasal 21 Final', 3, 'K'),
(19, '09', 'Bea Lelang Batal', 2, 'D'),
(20, '10', 'Bea Lelang Batal', 2, 'K');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ref_jenis`
--
ALTER TABLE `ref_jenis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ref_jenis`
--
ALTER TABLE `ref_jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
