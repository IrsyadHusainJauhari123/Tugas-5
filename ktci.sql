-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 29, 2022 at 04:08 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ktci`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `berat` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `stok` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `id_user`, `nama`, `harga`, `berat`, `deskripsi`, `stok`, `created_at`, `updated_at`) VALUES
(5, NULL, 'APEL FUJI SUPER PREMIUM', 100000, '25', 'wewqqqqqqqqqqqqqqqqqqqq', 10, '2022-08-18 09:12:52', '2022-08-19 23:31:25'),
(8, NULL, 'APEL FUJI SUPER PREMIUM', 500000, '250', 'sssssss', 2, '2022-08-20 07:04:51', '2022-08-22 07:15:01'),
(9, NULL, 'sagu', 20000, '5000', 'askakskas', 2000, '2022-08-21 05:04:15', '2022-08-21 05:04:15'),
(10, NULL, 'mangga indramayu', 28000, '100', 'mangga Indramayu matang manis dan banyak daging cocok di buat jus/di konsumsi langsung stok ready silahkan di order.', 5, '2022-08-21 06:58:53', '2022-08-21 06:58:53'),
(11, NULL, 'Pisang Kepok', 25000, '250', 'Pisang kepok adalah jenis pisang yang kandungan patinya cukup tinggi. Bentuknya cukup besar namun cenderung pendek. Kalau sudah matang, berwarna kuning dan rasanya manis. Teksturnya cukup lembut waktu dimakan, biasa juga disebut pisang gepeng. Kalau denger pisang kepok, pasti familiar sama Pisang Epe/ Pisang Gepe khas makassar.', 50, '2022-08-21 07:58:04', '2022-08-21 07:58:04'),
(12, NULL, 'Pisang Kepok', 25000, '250', 'Pisang kepok adalah jenis pisang yang kandungan patinya cukup tinggi. Bentuknya cukup besar namun cenderung pendek. Kalau sudah matang, berwarna kuning dan rasanya manis. Teksturnya cukup lembut waktu dimakan, biasa juga disebut pisang gepeng. Kalau denger pisang kepok, pasti familiar sama Pisang Epe/ Pisang Gepe khas makassar.', 50, '2022-08-21 07:58:04', '2022-08-21 07:58:04'),
(13, NULL, 'Anggur Red', 75000, '200', 'Warna kulit merah keunguan dan daging berwarna putih bening. Rasa manis dan sedikit asam. Tekstur dagingnya renyah. Packaging dalam plastik transparan dan mika plastik', 65, '2022-08-21 07:58:54', '2022-08-21 07:58:54'),
(15, NULL, 'Kelengkeng Import', 7500000, '450', 'Kelengkeng memiliki bentuk buah yang bulat dibalut dengan kulit berwarna kecoklatan dan daging buah berwarna putih berair yang rasanya manis. Kelengkeng ini memiliki aroma harum yang khas dan musim buah ini jatuh pada bulan Agustus sampai Oktober.', 56, '2022-08-21 08:00:39', '2022-08-21 08:00:39'),
(16, NULL, 'Avocadron Alpukat Mentega', 85000, '950', 'Alpukat merupakan jenis buah yang memiliki kandungan lemak tinggi, sekitar 20 kali lebih tinggi dibanding buah-buahan lain. Nama latin tanaman alpukat adalah Persea americana, diyakini berasal dari Amerika Tengah.', 80, '2022-08-21 08:01:40', '2022-08-21 08:01:40'),
(17, NULL, 'apel hijau', 78000, '500', 'enak tau', 13, '2022-08-21 20:18:14', '2022-08-21 20:18:14'),
(19, NULL, 'anggur', 500000, '700', 'ldeqslasa', 45, '2022-08-22 17:54:58', '2022-08-22 17:54:58'),
(20, 6, 'apel merah', 86000, '750', 'ajajsasjasja', 23, '2022-08-25 03:54:51', '2022-08-25 03:54:51'),
(21, 38, 'salak', 30000, '700', 'salak termanis', 25, '2022-08-25 04:07:29', '2022-08-25 04:07:29');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(38, 'irsyad', 'ariktpa@gmail.com', 'irsyad husain jauhari', '$2y$10$hUE5eaXrb3wZzwZtd24kPO/k4FpTW70BUYmADbYvbw7191DIYwhvy', NULL, '2022-08-25 04:05:51', '2022-08-25 04:05:51');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(1, 37, '0129012301', '2022-08-25 04:04:34', '2022-08-25 04:04:34'),
(2, 38, '08981229812', '2022-08-25 04:05:51', '2022-08-25 04:05:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
