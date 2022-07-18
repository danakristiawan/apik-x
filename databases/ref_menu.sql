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
-- Struktur dari tabel `ref_menu`
--

CREATE TABLE `ref_menu` (
  `id` int(11) NOT NULL,
  `nama` varchar(64) DEFAULT NULL,
  `url` varchar(64) DEFAULT NULL,
  `icon` varchar(64) DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL,
  `kategori_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ref_menu`
--

INSERT INTO `ref_menu` (`id`, `nama`, `url`, `icon`, `status`, `kategori_id`) VALUES
(1, 'Beranda', 'beranda', 'bi bi-grid-fill', '', 1),
(2, 'Lelang', 'lelang', 'bi bi-stack', 'has-sub', 1),
(3, 'Piutang', 'piutang', 'bi bi-collection-fill', 'has-sub', 1),
(4, 'Rekening', 'rekening', 'bi bi-images', 'has-sub', 2),
(5, 'Tahun Anggaran', 'tahun-anggaran', 'bi bi-bookmark-fill', NULL, 3),
(6, 'Keluar', 'sign-out', 'bi bi-power', NULL, 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ref_menu`
--
ALTER TABLE `ref_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ref_menu`
--
ALTER TABLE `ref_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ref_menu`
--
ALTER TABLE `ref_menu`
  ADD CONSTRAINT `kategori_id` FOREIGN KEY (`kategori_id`) REFERENCES `ref_kategori` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
