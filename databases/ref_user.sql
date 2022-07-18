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
-- Struktur dari tabel `ref_user`
--

CREATE TABLE `ref_user` (
  `id` int(11) NOT NULL,
  `nip` varchar(18) DEFAULT NULL,
  `nama` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `level` int(1) DEFAULT 0,
  `is_active` int(1) DEFAULT NULL,
  `date_created` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ref_user`
--

INSERT INTO `ref_user` (`id`, `nip`, `nama`, `email`, `password`, `level`, `is_active`, `date_created`) VALUES
(4, '198407022003121004', 'Dana Kristiawan', 'danakristiawan@gmail.com', '$2y$10$D6JtrR5uGYFr.fC6b.BHyu/Pg7W9GRVd83/ZxYgo.hAwbqQtnn/ZG', 0, 1, 1577811600),
(6, '123456789012345678', 'Admin', 'admin@gmail.com', '$2y$10$nZp/KQM9KRAabKuW8iTqeersCYgUNIpPA5GIDEq.kXyvdh/aEBjv6', 0, 1, 1609434000),
(7, '196504221992031003', 'Dedy Syarif Usman', 'dedy@gmail.com', '$2y$10$iF/704PzHBNsdXiRy/zRhO5DMXKDNJGIswG4rW46YSez6tHEnI1PO', 0, 1, 1609434000),
(8, '199605052018012004', 'arini', 'arini@gmail.com', '$2y$10$O40W7z3HFEh0XwcoyMqLcucJmzFn7dscBVSkRAdYB9gQHNwkkxyr.', 0, 1, 1639242000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ref_user`
--
ALTER TABLE `ref_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ref_user`
--
ALTER TABLE `ref_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
