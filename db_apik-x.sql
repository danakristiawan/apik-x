-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jul 2022 pada 05.55
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
  `nota_id` int(11) DEFAULT 0,
  `transaksi_id` int(11) DEFAULT 0,
  `sts` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_detail`
--

INSERT INTO `data_detail` (`id`, `kdsatker`, `bulan`, `tahun`, `kdk`, `kdj`, `urut`, `nominal`, `nota_id`, `transaksi_id`, `sts`) VALUES
(16, '411792', '01', '2022', '1', '01', '000001', 234000000, 26, 6, 0),
(17, '411792', '03', '2022', '1', '01', '123242', 3510000, 26, 8, 0),
(18, '411792', '01', '2022', '1', '01', '000001', 234000000, 26, 9, 0),
(19, '411792', '02', '2022', '1', '02', '000002', 35352000, 34, 2, 0),
(20, '411792', '02', '2022', '1', '03', '000002', 35352000, 37, 17, 0),
(23, '411792', '01', '2022', '1', '03', '000001', 234000000, 37, 18, 0);

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
  `jumlah` double(8,0) DEFAULT 0,
  `nominal` double(15,0) DEFAULT 0,
  `tanggal` int(11) DEFAULT NULL,
  `keg` varchar(1) DEFAULT NULL,
  `sts` int(1) DEFAULT 0,
  `ket` varchar(255) DEFAULT NULL,
  `tgl_kirim` int(11) DEFAULT 0,
  `tgl_sah` int(11) DEFAULT 0,
  `tgl_buku` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_nota`
--

INSERT INTO `data_nota` (`id`, `kdsatker`, `bulan`, `tahun`, `kdn`, `jns`, `urut`, `jumlah`, `nominal`, `tanggal`, `keg`, `sts`, `ket`, `tgl_kirim`, `tgl_sah`, `tgl_buku`) VALUES
(1, '411792', '01', '2022', '01', 'D', '0001', 2325, 1304320000000, 1577811600, 'L', 3, 'Pelunasan Lelang', 1658843288, 1658843299, 1658843985),
(3, '411792', '01', '2022', '01', 'D', '0001', 52, 23432000000, 1577811600, 'L', 3, 'Uang Jaminan Lelang', 1658843340, 1658844013, 1658844021),
(6, '411792', '01', '2022', '01', 'D', '0002', 14, 636300000, 1577811600, 'P', 0, 'Uang Jaminan Lelang', NULL, NULL, NULL),
(7, '411792', '01', '2022', '01', 'D', '0001', 41, 23432000000, 1577811600, 'P', 0, 'Uang Jaminan Lelang', NULL, NULL, NULL),
(8, '411792', '01', '2022', '01', 'D', '0002', 4252, 636300000, 1577811600, 'P', 2, 'Uang Jaminan Lelang', 1658856201, 1658856212, NULL),
(11, '411792', '01', '2022', '01', 'K', '0001', 44, 23432000000, 1577811600, 'L', 1, 'Pelunasan Lelang', 1658856247, NULL, NULL),
(13, '411792', '07', '2022', '01', 'D', '0004', 7, 560000, 1658507963, 'P', 0, 'Uang Jaminan Lelang', NULL, NULL, NULL),
(14, '411792', '07', '2022', '01', 'K', '0004', 34, 654570000, 1658507997, 'L', 0, 'Uang Jaminan Lelang', NULL, NULL, NULL),
(16, '411792', '07', '2022', '01', 'D', '0004', 86, 88970000, 1658557242, 'P', 0, 'Uang Jaminan Lelang', NULL, NULL, NULL),
(17, '411792', '01', '2022', '01', 'D', '0001', 11, 23432000000, 1577811600, 'L', 0, 'Uang Jaminan Lelang', NULL, NULL, NULL),
(18, '411792', '01', '2022', '01', 'D', '0002', 35, 636300000, 1577811600, 'L', 0, 'Uang Jaminan Lelang', NULL, NULL, NULL),
(19, '411792', '01', '2022', '01', 'D', '0001', 44, 23432000000, 1577811600, 'L', 0, 'Pelunasan Lelang', 0, NULL, NULL),
(20, '411792', '07', '2022', '01', 'D', '0004', 7, 560000, 1658507963, 'P', 1, 'Uang Jaminan Lelang', 1658856175, NULL, NULL),
(21, '411792', '07', '2022', '01', 'D', '0004', 34, 654570000, 1658507997, 'L', 0, 'Uang Jaminan Lelang', NULL, NULL, NULL),
(26, '411792', '07', '2022', '01', 'D', '0004', 3, 471510000, 1658847475, 'L', 2, 'Uang Jaminan Lelang', 1658853302, 1658854543, 0),
(27, '411792', '07', '2022', '01', 'D', '0004', 0, 0, 1658847482, 'L', 0, 'Uang Jaminan Lelang', 0, 0, 0),
(28, '411792', '07', '2022', '12', 'D', '0004', 0, 0, 1658847500, 'L', 0, 'Bea Lelang Batal', 0, 0, 0),
(29, '411792', '07', '2022', '01', 'D', '0004', 0, 0, 1658847511, 'L', 0, 'Uang Jaminan Lelang', 0, 0, 0),
(30, '411792', '07', '2022', '01', 'D', '0043', 0, 0, 1658848634, 'L', 0, 'Uang Jaminan Lelang', 0, 0, 0),
(31, '411792', '07', '2022', '02', 'D', '0044', 0, 0, 1658848648, 'L', 0, 'Pelunasan Lelang', 0, 0, 0),
(32, '411792', '07', '2022', '01', 'D', '0045', 0, 0, 1658848679, 'L', 0, 'Uang Jaminan Lelang', 0, 0, 0),
(33, '411792', '07', '2022', '12', 'D', '0046', 0, 0, 1658848684, 'L', 0, 'Bea Lelang Batal', 0, 0, 0),
(34, '411792', '07', '2022', '02', 'D', '0047', 1, 35352000, 1658848764, 'L', 1, 'Pelunasan Lelang', 1658854240, 0, 0),
(35, '411792', '07', '2022', '06', 'K', '0048', 0, 0, 1658855069, 'L', 0, 'Pemindahbukuan HBL', 0, 0, 0),
(36, '411792', '07', '2022', '08', 'K', '0049', 0, 0, 1658855078, 'L', 0, 'PPh Final', 0, 0, 0),
(37, '411792', '07', '2022', '05', 'K', '0050', 2, 269352000, 1658884924, 'L', 2, 'Pengembalian Uang Jaminan Lelang', 1658886938, 1658886977, 0),
(38, '411792', '07', '2022', '03', 'D', '0051', 0, 0, 1658884981, 'P', 0, 'Setoran Debitur', 0, 0, 0),
(39, '411792', '07', '2022', '11', 'K', '0052', 0, 0, 1658884996, 'P', 0, 'Biaya Administrasi', 0, 0, 0),
(40, '411792', '07', '2022', '09', 'K', '0053', 0, 0, 1658885218, 'P', 0, 'Nota Koreksi', 0, 0, 0);

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
  `ket` varchar(128) DEFAULT NULL,
  `surat_izin` varchar(255) DEFAULT NULL,
  `sts` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_rekening`
--

INSERT INTO `data_rekening` (`id`, `kdsatker`, `nomor`, `nama_bank`, `atas_nama`, `ket`, `surat_izin`, `sts`) VALUES
(1, '411792', '1234567890', 'Bank BNI Cabang Pecenongan', 'KPKNL Jakarta 3', 'Lelang', 'No:2352/KN/KWL/KNL.12/2022', 1),
(2, '411792', '23456789034563', 'Bank BRI Cabang Kramat Raya Jakarta Pusat', 'KPKNL Jakarta 5', 'Piutang', 'No.33/KN/2022', 1),
(3, '411792', '23456789034563', 'Bank BRI Cabang Kramat Raya Jakarta Pusat', 'KPKNL Jakarta 5', 'Piutang Valas ', 'No.33/KN/2022', 0);

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
  `keg` varchar(1) DEFAULT 'L',
  `nota_d_id` int(11) DEFAULT 0,
  `nota_k_id` int(11) DEFAULT 0,
  `rekening_id` int(11) DEFAULT 0,
  `sts` int(11) DEFAULT 0,
  `ket` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_transaksi`
--

INSERT INTO `data_transaksi` (`id`, `kdsatker`, `bulan`, `tahun`, `kdk`, `kdj`, `jns`, `urut`, `nominal`, `uraian`, `tanggal`, `va`, `keg`, `nota_d_id`, `nota_k_id`, `rekening_id`, `sts`, `ket`) VALUES
(1, '411792', '01', '2022', '1', '01', 'D', '000001', 41159000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(2, '411792', '01', '2022', '2', '01', 'D', '000002', 77915000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(3, '411792', '01', '2022', '3', '01', 'D', '000003', 58445000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(4, '411792', '01', '2022', '1', '01', 'K', '000004', 36978000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(5, '411792', '01', '2022', '2', '01', 'K', '000005', 96758000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(6, '411792', '02', '2022', '3', '01', 'K', '000006', 68913000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(7, '411792', '02', '2022', '1', '01', 'D', '000007', 1669000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(8, '411792', '02', '2022', '2', '01', 'D', '000008', 36972000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(9, '411792', '02', '2022', '3', '01', 'D', '000009', 77468000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(10, '411792', '02', '2022', '1', '01', 'D', '000010', 18200000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(11, '411792', '02', '2022', '1', '01', 'D', '000011', 4424000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(12, '411792', '02', '2022', '1', '01', 'D', '000012', 63681000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(13, '411792', '02', '2022', '1', '01', 'D', '000013', 94106000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(14, '411792', '02', '2022', '1', '01', 'D', '000014', 71054000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(15, '411792', '02', '2022', '1', '01', 'D', '000015', 58375000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(16, '411792', '03', '2022', '1', '01', 'D', '000016', 40425000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(17, '411792', '03', '2022', '1', '01', 'D', '000017', 79482000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(18, '411792', '03', '2022', '1', '01', 'D', '000018', 97441000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(19, '411792', '03', '2022', '1', '01', 'D', '000019', 42968000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(20, '411792', '03', '2022', '1', '01', 'D', '000020', 81660000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(21, '411792', '03', '2022', '1', '01', 'D', '000021', 31400000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(22, '411792', '03', '2022', '1', '01', 'D', '000022', 38939000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(23, '411792', '03', '2022', '1', '01', 'D', '000023', 93608000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(24, '411792', '03', '2022', '1', '01', 'D', '000024', 70729000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(25, '411792', '03', '2022', '1', '01', 'D', '000025', 48471000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(26, '411792', '03', '2022', '1', '01', 'D', '000026', 22163000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(27, '411792', '03', '2022', '1', '01', 'D', '000027', 44066000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(28, '411792', '03', '2022', '1', '01', 'D', '000028', 8542000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(29, '411792', '03', '2022', '1', '01', 'D', '000029', 69334000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(30, '411792', '03', '2022', '1', '01', 'D', '000030', 42347000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(31, '411792', '04', '2022', '1', '01', 'D', '000031', 40766000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(32, '411792', '04', '2022', '1', '01', 'D', '000032', 69627000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(33, '411792', '04', '2022', '1', '01', 'D', '000033', 32354000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(34, '411792', '04', '2022', '1', '01', 'D', '000034', 35170000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(35, '411792', '04', '2022', '1', '01', 'D', '000035', 26880000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(36, '411792', '04', '2022', '1', '01', 'D', '000036', 60965000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(37, '411792', '04', '2022', '1', '01', 'D', '000037', 14368000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(38, '411792', '04', '2022', '1', '01', 'D', '000038', 70016000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(39, '411792', '04', '2022', '1', '01', 'D', '000039', 79772000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(40, '411792', '04', '2022', '1', '01', 'D', '000040', 49882000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(41, '411792', '05', '2022', '1', '01', 'D', '000041', 53595000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(42, '411792', '05', '2022', '1', '01', 'D', '000042', 13368000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(43, '411792', '05', '2022', '1', '01', 'D', '000043', 57153000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(44, '411792', '05', '2022', '1', '01', 'D', '000044', 35627000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(45, '411792', '05', '2022', '1', '01', 'D', '000045', 95234000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(46, '411792', '06', '2022', '1', '01', 'D', '000046', 18797000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(47, '411792', '06', '2022', '1', '01', 'D', '000047', 27734000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(48, '411792', '06', '2022', '1', '01', 'D', '000048', 75921000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(49, '411792', '06', '2022', '1', '01', 'D', '000049', 66249000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(50, '411792', '06', '2022', '1', '01', 'D', '000050', 22473000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(51, '411792', '06', '2022', '1', '01', 'D', '000051', 1997000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(52, '411792', '06', '2022', '1', '01', 'D', '000052', 93902000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(53, '411792', '06', '2022', '1', '01', 'D', '000053', 54790000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(54, '411792', '06', '2022', '1', '01', 'D', '000054', 49149000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(55, '411792', '06', '2022', '1', '01', 'D', '000055', 74008000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(56, '411792', '07', '2022', '1', '01', 'D', '000056', 85037000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(57, '411792', '07', '2022', '1', '01', 'D', '000057', 22115000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(58, '411792', '07', '2022', '1', '01', 'D', '000058', 90134000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(59, '411792', '07', '2022', '1', '01', 'D', '000059', 24236000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(60, '411792', '07', '2022', '1', '01', 'D', '000060', 65441000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(61, '411792', '07', '2022', '1', '01', 'D', '000061', 84100000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(62, '411792', '07', '2022', '1', '01', 'D', '000062', 39337000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(63, '411792', '07', '2022', '1', '01', 'D', '000063', 78553000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(64, '411792', '07', '2022', '1', '01', 'D', '000064', 56045000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(65, '411792', '07', '2022', '1', '01', 'D', '000065', 28665000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(66, '411792', '07', '2022', '1', '01', 'D', '000066', 7956000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(67, '411792', '07', '2022', '1', '01', 'D', '000067', 8769000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(68, '411792', '07', '2022', '1', '01', 'D', '000068', 87881000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(69, '411792', '07', '2022', '1', '01', 'D', '000069', 84522000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(70, '411792', '07', '2022', '1', '01', 'D', '000070', 64498000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(71, '411792', '08', '2022', '1', '01', 'D', '000071', 38930000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(72, '411792', '08', '2022', '1', '01', 'D', '000072', 52818000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(73, '411792', '08', '2022', '1', '01', 'D', '000073', 26866000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(74, '411792', '08', '2022', '1', '01', 'D', '000074', 89184000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(75, '411792', '08', '2022', '1', '01', 'D', '000075', 89261000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(76, '411792', '08', '2022', '1', '01', 'D', '000076', 57715000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(77, '411792', '08', '2022', '1', '01', 'D', '000077', 64290000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(78, '411792', '08', '2022', '1', '01', 'D', '000078', 359000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(79, '411792', '08', '2022', '1', '01', 'D', '000079', 57479000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(80, '411792', '08', '2022', '1', '01', 'D', '000080', 55442000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(81, '411792', '09', '2022', '1', '01', 'D', '000081', 27679000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(82, '411792', '09', '2022', '1', '01', 'D', '000082', 85488000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(83, '411792', '09', '2022', '1', '01', 'D', '000083', 35322000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(84, '411792', '09', '2022', '1', '01', 'D', '000084', 82177000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(85, '411792', '09', '2022', '1', '01', 'D', '000085', 47789000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(86, '411792', '10', '2022', '1', '01', 'D', '000086', 85474000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(87, '411792', '10', '2022', '1', '01', 'D', '000087', 29700000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(88, '411792', '10', '2022', '1', '01', 'D', '000088', 9107000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(89, '411792', '10', '2022', '1', '01', 'D', '000089', 86371000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(90, '411792', '10', '2022', '1', '01', 'D', '000090', 6123000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(91, '411792', '10', '2022', '1', '01', 'D', '000091', 41078000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(92, '411792', '10', '2022', '1', '01', 'D', '000092', 22103000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(93, '411792', '10', '2022', '1', '01', 'D', '000093', 66991000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(94, '411792', '10', '2022', '1', '01', 'D', '000094', 23590000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(95, '411792', '10', '2022', '1', '01', 'D', '000095', 54423000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(96, '411792', '11', '2022', '1', '01', 'D', '000096', 39444000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(97, '411792', '11', '2022', '1', '01', 'D', '000097', 36057000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(98, '411792', '11', '2022', '1', '01', 'D', '000098', 42243000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(99, '411792', '11', '2022', '1', '01', 'D', '000099', 5772000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(100, '411792', '11', '2022', '1', '01', 'D', '000100', 24421000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(101, '411792', '11', '2022', '1', '01', 'D', '000101', 93084000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(102, '411792', '11', '2022', '1', '01', 'D', '000102', 56639000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(103, '411792', '11', '2022', '1', '01', 'D', '000103', 67886000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(104, '411792', '11', '2022', '1', '01', 'D', '000104', 22585000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(105, '411792', '11', '2022', '1', '01', 'D', '000105', 77679000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(106, '411792', '11', '2022', '1', '01', 'D', '000106', 4062000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(107, '411792', '11', '2022', '1', '01', 'D', '000107', 31860000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(108, '411792', '11', '2022', '1', '01', 'D', '000108', 38989000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'L', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(109, '411792', '11', '2022', '1', '01', 'D', '000109', 89148000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'P', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(110, '411792', '11', '2022', '2', '01', 'D', '000110', 32873000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'P', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(111, '411792', '12', '2022', '1', '01', 'K', '000111', 5804000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'P', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(112, '411792', '12', '2022', '2', '01', 'K', '000112', 30282000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'P', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(113, '411792', '12', '2022', '1', '01', 'D', '000113', 89648000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'P', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(114, '411792', '12', '2022', '1', '01', 'D', '000114', 68968000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'P', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(115, '411792', '12', '2022', '1', '01', 'D', '000115', 23653000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'P', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(116, '411792', '12', '2022', '1', '01', 'D', '000116', 63494000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'P', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(117, '411792', '12', '2022', '1', '01', 'D', '000117', 57495000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'P', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(118, '411792', '12', '2022', '1', '01', 'D', '000118', 96609000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'P', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(119, '411792', '12', '2022', '1', '01', 'D', '000119', 5355000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'P', 0, 0, 1, 0, 'Uang Jaminan Lelang'),
(120, '411792', '12', '2022', '1', '01', 'D', '000120', 56451000, 'TRF/PAY/TOP-UP ECHANNEL | 5260511001237627 | S1ACIB9501', 1577811600, '9880052121100102', 'P', 0, 0, 1, 0, 'Uang Jaminan Lelang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_bulan`
--

CREATE TABLE `ref_bulan` (
  `id` int(2) NOT NULL,
  `kode` varchar(2) DEFAULT NULL,
  `bulan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ref_bulan`
--

INSERT INTO `ref_bulan` (`id`, `kode`, `bulan`) VALUES
(1, '01', 'Januari'),
(2, '02', 'Februari'),
(3, '03', 'Maret'),
(4, '04', 'April'),
(5, '05', 'Mei'),
(6, '06', 'Juni'),
(7, '07', 'Juli'),
(8, '08', 'Agustus'),
(9, '09', 'September'),
(10, '10', 'Oktober'),
(11, '11', 'November'),
(12, '12', 'Desember'),
(13, '13', 'Ketigabelas'),
(14, '14', 'THR');

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_kategori`
--

CREATE TABLE `ref_kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ref_kategori`
--

INSERT INTO `ref_kategori` (`id`, `nama`) VALUES
(1, 'Data'),
(2, 'Laporan'),
(3, 'Sistem');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_kelompok`
--

CREATE TABLE `ref_kelompok` (
  `id` int(11) NOT NULL,
  `kode` varchar(1) DEFAULT NULL,
  `nama` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `ref_kelompok`
--

INSERT INTO `ref_kelompok` (`id`, `kode`, `nama`) VALUES
(1, '1', 'Dana Pihak Ketiga'),
(2, '2', 'PNBP'),
(3, '3', 'PPh');

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
(5, 'Keluar', 'sign-out', 'bi bi-power', NULL, 3);

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
  `jns` varchar(1) DEFAULT NULL,
  `keg` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `ref_nota`
--

INSERT INTO `ref_nota` (`id`, `kode`, `nama`, `kdk`, `kdj`, `jns`, `keg`) VALUES
(1, '01', 'Uang Jaminan Lelang', '1', '01', 'D', 'L'),
(2, '02', 'Pelunasan Lelang', '1', '02', 'D', 'L'),
(3, '03', 'Setoran Debitur', '1', '06', 'D', 'P'),
(4, '04', 'Transaksi Lain-lain', '1', '08', 'D', 'P'),
(5, '05', 'Pengembalian Uang Jaminan Lelang', '1', '03', 'K', 'L'),
(6, '06', 'Pemindahbukuan HBL', '1', '04', 'K', 'L'),
(9, '02', 'Pelunasan Lelang', '2', '01', 'D', 'L'),
(10, '07', 'Bea Lelang', '2', '02', 'K', 'L'),
(11, '02', 'Pelunasan Lelang', '2', '03', 'D', 'L'),
(12, '07', 'Bea Lelang', '2', '04', 'K', 'L'),
(14, '02', 'Pelunasan Lelang', '3', '01', 'D', 'L'),
(15, '08', 'PPh Final', '3', '02', 'K', 'L'),
(16, '09', 'Nota Koreksi', '1', '05', 'K', 'P'),
(17, '10', 'Hak Penyerah Piutang', '1', '07', 'K', 'P'),
(18, '11', 'Biaya Administrasi', '2', '08', 'K', 'P'),
(19, '12', 'Bea Lelang Batal', '2', '09', 'D', 'L'),
(20, '13', 'Bea Lelang Batal', '2', '10', 'K', 'L');

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
(1, '411792', 'Kantor Pusat DJKN', '000234', '0054'),
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
(1, 'Transaksi', 'lelang/transaksi-lelang', 2),
(2, 'Nota Penerimaan', 'lelang/nota-penerimaan-lelang', 2),
(3, 'Nota Pengeluaran', 'lelang/nota-pengeluaran-lelang', 2),
(4, 'Pengesahan', 'lelang/pengesahan-lelang', 2),
(5, 'Pembukuan', 'lelang/pembukuan-lelang', 2),
(6, 'Arsip', 'lelang/arsip-lelang', 2),
(7, 'Transaksi', 'piutang/transaksi-piutang', 3),
(8, 'Nota Penerimaan', 'piutang/nota-penerimaan-piutang', 3),
(9, 'Nota Pengeluaran', 'piutang/nota-pengeluaran-piutang', 3),
(10, 'Pengesahan', 'piutang/pengesahan-piutang', 3),
(11, 'Pembukuan', 'piutang/pembukuan-piutang', 3),
(12, 'Arsip', 'piutang/arsip-piutang', 3);

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
-- Indeks untuk tabel `data_detail`
--
ALTER TABLE `data_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_nota`
--
ALTER TABLE `data_nota`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_rekening`
--
ALTER TABLE `data_rekening`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_transaksi`
--
ALTER TABLE `data_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ref_bulan`
--
ALTER TABLE `ref_bulan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `ref_jenis`
--
ALTER TABLE `ref_jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ref_kategori`
--
ALTER TABLE `ref_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ref_kelompok`
--
ALTER TABLE `ref_kelompok`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ref_menu`
--
ALTER TABLE `ref_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indeks untuk tabel `ref_nota`
--
ALTER TABLE `ref_nota`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ref_satker`
--
ALTER TABLE `ref_satker`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `ref_sub`
--
ALTER TABLE `ref_sub`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indeks untuk tabel `ref_user`
--
ALTER TABLE `ref_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_detail`
--
ALTER TABLE `data_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `data_nota`
--
ALTER TABLE `data_nota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `data_rekening`
--
ALTER TABLE `data_rekening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `data_transaksi`
--
ALTER TABLE `data_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT untuk tabel `ref_bulan`
--
ALTER TABLE `ref_bulan`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `ref_jenis`
--
ALTER TABLE `ref_jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `ref_kategori`
--
ALTER TABLE `ref_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `ref_kelompok`
--
ALTER TABLE `ref_kelompok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `ref_menu`
--
ALTER TABLE `ref_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `ref_nota`
--
ALTER TABLE `ref_nota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `ref_satker`
--
ALTER TABLE `ref_satker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT untuk tabel `ref_sub`
--
ALTER TABLE `ref_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `ref_user`
--
ALTER TABLE `ref_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ref_menu`
--
ALTER TABLE `ref_menu`
  ADD CONSTRAINT `kategori_id` FOREIGN KEY (`kategori_id`) REFERENCES `ref_kategori` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `ref_sub`
--
ALTER TABLE `ref_sub`
  ADD CONSTRAINT `menu_id` FOREIGN KEY (`menu_id`) REFERENCES `ref_menu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
