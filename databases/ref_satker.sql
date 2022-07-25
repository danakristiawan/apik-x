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
-- Struktur dari tabel `ref_satker`
--

CREATE TABLE `ref_satker` (
  `id` int(11) NOT NULL,
  `kode` varchar(6) DEFAULT NULL,
  `nama` varchar(128) DEFAULT NULL,
  `urut_transaksi` varchar(6) DEFAULT NULL,
  `urut_nota` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ref_satker`
--

INSERT INTO `ref_satker` (`id`, `kode`, `nama`, `urut_transaksi`, `urut_nota`) VALUES
(1, '411792', 'Kantor Pusat DJKN', '000234', '0043'),
(2, '506050', 'Kanwil DJKN Aceh', NULL, NULL),
(3, '537827', 'KPKNL Banda Aceh', NULL, NULL),
(4, '506069', 'KPKNL Lhokseumawe', NULL, NULL),
(5, '411806', 'Kanwil DJKN Sumatera Utara', NULL, NULL),
(6, '537831', 'KPKNL Medan', '000121', '0011'),
(7, '119703', 'KPKNL Pematang Siantar', NULL, NULL),
(8, '506081', 'KPKNL Kisaran', NULL, NULL),
(9, '506090', 'KPKNL Padang Sidimpuan', NULL, NULL),
(10, '506101', 'Kanwil DJKN Riau, Sumatera Barat, dan Kepulauan Riau', NULL, NULL),
(11, '537848', 'KPKNL Padang', NULL, NULL),
(12, '119745', 'KPKNL Bukittinggi', NULL, NULL),
(13, '537852', 'KPKNL Pekanbaru', NULL, NULL),
(14, '119656', 'KPKNL Batam', NULL, NULL),
(15, '506461', 'KPKNL Dumai', NULL, NULL),
(16, '537880', 'Kanwil DJKN Sumatera Selatan, Jambi, dan Bangka Belitung', NULL, NULL),
(17, '537873', 'KPKNL Jambi', NULL, NULL),
(18, '537894', 'KPKNL Palembang', NULL, NULL),
(19, '506126', 'KPKNL Lahat', NULL, NULL),
(20, '119809', 'KPKNL Pangkal Pinang', NULL, NULL),
(21, '506142', 'Kanwil DJKN Lampung dan Bengkulu', NULL, NULL),
(22, '538154', 'KPKNL Bengkulu', NULL, NULL),
(23, '537902', 'KPKNL Bandar Lampung', NULL, NULL),
(24, '506157', 'KPKNL Metro', NULL, NULL),
(25, '506172', 'Kanwil DJKN Banten', NULL, NULL),
(26, '119724', 'KPKNL Serang', NULL, NULL),
(27, '506188', 'KPKNL Tangerang I', NULL, NULL),
(28, '506194', 'KPKNL Tangerang II', NULL, NULL),
(29, '411852', 'Kanwil DJKN DKI Jakarta', NULL, NULL),
(30, '537721', 'KPKNL Jakarta I', NULL, NULL),
(31, '604442', 'KPKNL Jakarta II', NULL, NULL),
(32, '537916', 'KPKNL Jakarta III', NULL, NULL),
(33, '537937', 'KPKNL Jakarta IV', NULL, NULL),
(34, '119312', 'KPKNL Jakarta V', NULL, NULL),
(35, '411812', 'Kanwil DJKN Jawa Barat', NULL, NULL),
(36, '537738', 'KPKNL Bandung', NULL, NULL),
(37, '604460', 'KPKNL Bekasi', NULL, NULL),
(38, '537759', 'KPKNL Bogor', NULL, NULL),
(39, '506208', 'KPKNL Purwakarta', NULL, NULL),
(40, '525343', 'KPKNL Tasikmalaya', NULL, NULL),
(41, '119393', 'KPKNL Cirebon', NULL, NULL),
(42, '411821', 'Kanwil DJKN Jawa Tengah dan D.I. Yogyakarta', NULL, NULL),
(43, '537763', 'KPKNL Semarang', NULL, NULL),
(44, '119511', 'KPKNL Surakarta', NULL, NULL),
(45, '506239', 'KPKNL Pekalongan', NULL, NULL),
(46, '411786', 'KPKNL Tegal', NULL, NULL),
(47, '537784', 'KPKNL Yogyakarta', NULL, NULL),
(48, '537770', 'KPKNL Purwokerto', NULL, NULL),
(49, '411837', 'Kanwil DJKN Jawa Timur', NULL, NULL),
(50, '537791', 'KPKNL Surabaya', NULL, NULL),
(51, '506276', 'KPKNL Sidoarjo', NULL, NULL),
(52, '537810', 'KPKNL Malang', NULL, NULL),
(53, '538140', 'KPKNL Jember', NULL, NULL),
(54, '506282', 'KPKNL Pamekasan', NULL, NULL),
(55, '537920', 'KPKNL Madiun', NULL, NULL),
(56, '506291', 'Kanwil DJKN Kalimantan Barat', NULL, NULL),
(57, '604456', 'KPKNL Pontianak', NULL, NULL),
(58, '506302', 'KPKNL Singkawang', NULL, NULL),
(59, '506327', 'Kanwil DJKN Kalimantan Selatan dan Tengah', NULL, NULL),
(60, '119834', 'KPKNL Palangka Raya', NULL, NULL),
(61, '506333', 'KPKNL Pangkalan Bun', NULL, NULL),
(62, '537958', 'KPKNL Banjarmasin', NULL, NULL),
(63, '506358', 'Kanwil DJKN Kalimantan Timur dan Utara', NULL, NULL),
(64, '537962', 'KPKNL Balikpapan', NULL, NULL),
(65, '537941', 'KPKNL Samarinda', NULL, NULL),
(66, '506364', 'KPKNL Tarakan', NULL, NULL),
(67, '506370', 'KPKNL Bontang', NULL, NULL),
(68, '538051', 'Kanwil DJKN Bali dan Nusa Tenggara', NULL, NULL),
(69, '538065', 'KPKNL Denpasar', NULL, NULL),
(70, '525591', 'KPKNL Singaraja', NULL, NULL),
(71, '538086', 'KPKNL Mataram', NULL, NULL),
(72, '538072', 'KPKNL Bima', NULL, NULL),
(73, '538108', 'KPKNL Kupang', NULL, NULL),
(74, '411843', 'Kanwil DJKN Sulawesi Selatan, Tenggara, dan Barat', NULL, NULL),
(75, '538019', 'KPKNL Makassar', NULL, NULL),
(76, '538190', 'KPKNL Pare-Pare', NULL, NULL),
(77, '119944', 'KPKNL Palopo', NULL, NULL),
(78, '538030', 'KPKNL Kendari', NULL, NULL),
(79, '418495', 'KPKNL Mamuju', NULL, NULL),
(80, '537979', 'Kanwil DJKN Sulawesi Utara, Tengah, Gorontalo, dan Maluku Utara', NULL, NULL),
(81, '538023', 'KPKNL Gorontalo', NULL, NULL),
(82, '538002', 'KPKNL Palu', NULL, NULL),
(83, '538133', 'KPKNL Ternate', NULL, NULL),
(84, '537983', 'KPKNL Manado', NULL, NULL),
(85, '506409', 'Kanwil DJKN Papua, Papua Barat, dan Maluku', NULL, NULL),
(86, '538129', 'KPKNL Jayapura', NULL, NULL),
(87, '537990', 'KPKNL Sorong', NULL, NULL),
(88, '525474', 'KPKNL Biak', NULL, NULL),
(89, '538044', 'KPKNL Ambon', NULL, NULL),
(90, '604445', 'Lembaga Manajemen Aset Negara', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ref_satker`
--
ALTER TABLE `ref_satker`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ref_satker`
--
ALTER TABLE `ref_satker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
