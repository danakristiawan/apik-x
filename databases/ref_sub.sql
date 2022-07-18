-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jul 2022 pada 08.26
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
-- Struktur dari tabel `ref_sub`
--

CREATE TABLE `ref_sub` (
  `id` int(11) NOT NULL,
  `nama` varchar(64) DEFAULT NULL,
  `url` varchar(64) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ref_sub`
--

INSERT INTO `ref_sub` (`id`, `nama`, `url`, `menu_id`) VALUES
(1, 'Nota Penerimaan', 'lelang/nota-penerimaan-lelang', 2),
(2, 'Nota Pengeluaran', 'lelang/nota-pengeluaran-lelang', 2),
(3, 'Nota Koreksi', 'lelang/nota-koreksi-lelang', 2),
(4, 'Pengesahan', 'lelang/pengesahan-lelang', 2),
(5, 'Pembukuan', 'lelang/pembukuan-lelang', 2),
(6, 'Nota Penerimaan', 'piutang/nota-penerimaan-piutang', 3),
(7, 'Nota Pengeluaran', 'piutang/nota-pengeluaran-piutang', 3),
(8, 'Nota Koreksi', 'piutang/nota-koreksi-piutang', 3),
(9, 'Pengesahan', 'piutang/pengesahan-piutang', 3),
(10, 'Pembukuan', 'piutang/pembukuan-piutang', 3),
(11, 'Penampungan Lelang', 'rekening/penampungan-lelang', 4),
(12, 'Penampungan Piutang', 'rekening/penampungan-piutang', 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ref_sub`
--
ALTER TABLE `ref_sub`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ref_sub`
--
ALTER TABLE `ref_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ref_sub`
--
ALTER TABLE `ref_sub`
  ADD CONSTRAINT `menu_id` FOREIGN KEY (`menu_id`) REFERENCES `ref_menu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
