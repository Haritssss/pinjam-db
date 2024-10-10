-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2024 at 07:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pinjam_barang`
--

-- --------------------------------------------------------

--
-- Table structure for table `td_peminjaman_barang`
--

CREATE TABLE `td_peminjaman_barang` (
  `pbd_id` varchar(20) NOT NULL,
  `pb_id` varchar(20) DEFAULT NULL,
  `br_kode` varchar(12) DEFAULT NULL,
  `pdb_tgl` datetime DEFAULT NULL,
  `pdb_sts` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tm_barang_inventaris`
--

CREATE TABLE `tm_barang_inventaris` (
  `br_kode` varchar(12) NOT NULL,
  `jns_brg_kode` varchar(5) DEFAULT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `br_nama` varchar(50) DEFAULT NULL,
  `br_tgl_terima` date DEFAULT NULL,
  `br_tgl_entry` datetime DEFAULT NULL,
  `br_status` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tm_peminjaman`
--

CREATE TABLE `tm_peminjaman` (
  `pb_id` varchar(20) NOT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `pb_tgl` datetime DEFAULT NULL,
  `pb_no_siswa` varchar(20) DEFAULT NULL,
  `pb_nama_siswa` varchar(100) DEFAULT NULL,
  `pb_harus_kembali_tgl` datetime DEFAULT NULL,
  `pb_stat` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tm_pengembalian`
--

CREATE TABLE `tm_pengembalian` (
  `kembali_id` varchar(20) NOT NULL,
  `pb_id` varchar(20) DEFAULT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `kembali_tgl` datetime DEFAULT NULL,
  `kembali_sts` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tm_user`
--

CREATE TABLE `tm_user` (
  `user_id` varchar(10) NOT NULL,
  `user_nama` varchar(50) DEFAULT NULL,
  `user_pass` varchar(32) DEFAULT NULL,
  `user_hak` varchar(2) DEFAULT NULL,
  `user_sts` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tr_jenis_barang`
--

CREATE TABLE `tr_jenis_barang` (
  `jns_brg_kode` varchar(5) NOT NULL,
  `jns_brg_nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `td_peminjaman_barang`
--
ALTER TABLE `td_peminjaman_barang`
  ADD PRIMARY KEY (`pbd_id`);

--
-- Indexes for table `tm_barang_inventaris`
--
ALTER TABLE `tm_barang_inventaris`
  ADD PRIMARY KEY (`br_kode`);

--
-- Indexes for table `tm_peminjaman`
--
ALTER TABLE `tm_peminjaman`
  ADD PRIMARY KEY (`pb_id`);

--
-- Indexes for table `tm_pengembalian`
--
ALTER TABLE `tm_pengembalian`
  ADD PRIMARY KEY (`kembali_id`);

--
-- Indexes for table `tm_user`
--
ALTER TABLE `tm_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tr_jenis_barang`
--
ALTER TABLE `tr_jenis_barang`
  ADD PRIMARY KEY (`jns_brg_kode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
