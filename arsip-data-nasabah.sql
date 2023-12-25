-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2023 at 07:32 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arsip-data-nasabah`
--

-- --------------------------------------------------------

--
-- Table structure for table `atm_gold`
--

CREATE TABLE `atm_gold` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `no_cif` varchar(20) NOT NULL,
  `no_rek` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jenis_rek` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atm_silver`
--

CREATE TABLE `atm_silver` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `no_cif` varchar(20) NOT NULL,
  `no_rek` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jenis_rek` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m_banking`
--

CREATE TABLE `m_banking` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `no_rek` varchar(20) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tabungan_firdaus`
--

CREATE TABLE `tabungan_firdaus` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `no_cif` varchar(20) NOT NULL,
  `no_rek` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `setoran_awal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tabungan_wadiah`
--

CREATE TABLE `tabungan_wadiah` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `no_cif` varchar(20) NOT NULL,
  `no_rek` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `setoran_awal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'admin', '123', 'alfiani');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atm_gold`
--
ALTER TABLE `atm_gold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `atm_silver`
--
ALTER TABLE `atm_silver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_banking`
--
ALTER TABLE `m_banking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabungan_firdaus`
--
ALTER TABLE `tabungan_firdaus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabungan_wadiah`
--
ALTER TABLE `tabungan_wadiah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atm_gold`
--
ALTER TABLE `atm_gold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `atm_silver`
--
ALTER TABLE `atm_silver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m_banking`
--
ALTER TABLE `m_banking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabungan_firdaus`
--
ALTER TABLE `tabungan_firdaus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabungan_wadiah`
--
ALTER TABLE `tabungan_wadiah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
