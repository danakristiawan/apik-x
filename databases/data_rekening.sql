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
-- Struktur dari tabel `data_rekening`
--

CREATE TABLE `data_rekening` (
  `id` int(11) NOT NULL,
  `kdsatker` varchar(6) DEFAULT NULL,
  `nomor` varchar(32) DEFAULT NULL,
  `nama_bank` varchar(128) DEFAULT NULL,
  `atas_nama` varchar(128) DEFAULT NULL,
  `jenis` varchar(32) DEFAULT NULL,
  `surat_izin` varchar(255) DEFAULT NULL,
  `sts` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_rekening`
--

INSERT INTO `data_rekening` (`id`, `kdsatker`, `nomor`, `nama_bank`, `atas_nama`, `jenis`, `surat_izin`, `sts`) VALUES
(1, '411792', '1234567890', 'Bank BNI Cabang Pecenongan', 'KPKNL Jakarta 3', 'Lelang', 'No:2352/KN/KWL/KNL.12/2022', 1),
(2, '411792', '23456789034563', 'Bank BRI Cabang Kramat Raya Jakarta Pusat', 'KPKNL Jakarta 5', 'Piutang', 'No.33/KN/2022', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_rekening`
--
ALTER TABLE `data_rekening`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_rekening`
--
ALTER TABLE `data_rekening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
