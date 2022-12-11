-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2022 at 05:23 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciwebgis2`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_master_data` int(11) UNSIGNED NOT NULL,
  `kode_wilayah` varchar(7) NOT NULL,
  `nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `id_master_data`, `kode_wilayah`, `nilai`) VALUES
(1, 1, '1', 50710),
(2, 1, '2', 48333),
(3, 1, '3', 47347),
(4, 1, '4', 60101),
(5, 1, '5', 51795),
(6, 1, '6', 69303),
(7, 1, '7', 35839),
(8, 1, '8', 57765),
(9, 1, '9', 53982),
(10, 1, '10', 53423),
(11, 1, '11', 31461),
(12, 1, '12', 43791),
(13, 1, '13', 59912),
(14, 1, '14', 29655),
(15, 1, '15', 39183),
(16, 1, '16', 64390),
(17, 1, '17', 55533),
(18, 1, '18', 41550),
(19, 1, '19', 78456),
(20, 1, '20', 60554),
(21, 2, '1', 106),
(22, 2, '2', 98),
(23, 2, '3', 94),
(24, 2, '4', 112),
(25, 2, '5', 80),
(26, 2, '6', 125),
(27, 2, '7', 50),
(28, 2, '8', 87),
(29, 2, '9', 90),
(30, 2, '10', 79),
(31, 2, '11', 55),
(32, 2, '12', 60),
(33, 2, '13', 94),
(34, 2, '14', 45),
(35, 2, '15', 70),
(36, 2, '16', 90),
(37, 2, '17', 120),
(38, 2, '18', 56),
(39, 2, '19', 112),
(40, 2, '20', 98);

-- --------------------------------------------------------

--
-- Table structure for table `kode_wilayah`
--

CREATE TABLE `kode_wilayah` (
  `id` int(11) UNSIGNED NOT NULL,
  `kode_wilayah` varchar(7) NOT NULL,
  `nama_wilayah` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kode_wilayah`
--

INSERT INTO `kode_wilayah` (`id`, `kode_wilayah`, `nama_wilayah`) VALUES
(77, '1', 'RAJABASA'),
(78, '2', 'TANJUNG SENANG'),
(79, '3', 'LABUHAN RATU'),
(80, '4', 'SUKARAME'),
(81, '5', 'KEDATON'),
(82, '6', 'KEMILLING'),
(83, '7', 'LANGKAPURA'),
(84, '8', 'TANJUNG KARANG BARAT'),
(85, '9', 'TANJUNG KARANG PUSAT'),
(86, '10', 'TELUK BETUNG UTARA'),
(87, '11', 'TELUK BETUNG BARAT'),
(88, '12', 'TELUK BETUNG TIMUR'),
(89, '13', 'BUMI WARAS'),
(90, '14', 'ENGGAL'),
(91, '15', 'TANJUNG KARANG TIMUR'),
(92, '16', 'WAY HALIM'),
(93, '17', 'KEDAMAIAN'),
(94, '18', 'TELUK BETUNG SELATAN'),
(95, '19', 'PANJANG'),
(96, '20', 'SUKABUMI');

-- --------------------------------------------------------

--
-- Table structure for table `master_data`
--

CREATE TABLE `master_data` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_data`
--

INSERT INTO `master_data` (`id`, `nama`) VALUES
(1, 'Jumlah Penduduk Kecamatan Bandar Lampung'),
(2, 'Penduduk Miskin Kecamatan Bandar Lampung');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2022-11-11-143138', 'App\\Database\\Migrations\\MasterData', 'default', 'App', 1670772917, 1),
(2, '2022-11-11-143144', 'App\\Database\\Migrations\\KodeWilayah', 'default', 'App', 1670772917, 1),
(3, '2022-11-11-143148', 'App\\Database\\Migrations\\Data', 'default', 'App', 1670772917, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_id_master_data_foreign` (`id_master_data`);

--
-- Indexes for table `kode_wilayah`
--
ALTER TABLE `kode_wilayah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_data`
--
ALTER TABLE `master_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `kode_wilayah`
--
ALTER TABLE `kode_wilayah`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `master_data`
--
ALTER TABLE `master_data`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data`
--
ALTER TABLE `data`
  ADD CONSTRAINT `data_id_master_data_foreign` FOREIGN KEY (`id_master_data`) REFERENCES `master_data` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
