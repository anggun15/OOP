-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Agu 2021 pada 17.29
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oop_php`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_warga1`
--

CREATE TABLE `data_warga1` (
  `id` int(11) NOT NULL,
  `no_ktp` int(11) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_hp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_warga1`
--

INSERT INTO `data_warga1` (`id`, `no_ktp`, `nama_lengkap`, `alamat`, `no_hp`) VALUES
(1, 3267700, 'Mark', 'Depok', 10000),
(2, 2, 'adi suradi', 'bogor', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_warga1`
--
ALTER TABLE `data_warga1`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
