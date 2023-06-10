-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jun 2023 pada 05.55
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dauruang`
--
CREATE DATABASE IF NOT EXISTS `dauruang` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dauruang`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `jenis_sampah` varchar(255) NOT NULL,
  `hargaPerKg` int(11) NOT NULL,
  `berat_sampah` float NOT NULL,
  `points` int(11) NOT NULL,
  `lokasi_pengepul` varchar(255) NOT NULL,
  `lokasi_user` varchar(255) NOT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `isPickedUp` tinyint(1) NOT NULL DEFAULT 0,
  `waktu_order` time NOT NULL,
  `createdAt` datetime NOT NULL,
  `updateAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `jenis_sampah` varchar(255) NOT NULL,
  `hargaPerKg` int(11) NOT NULL,
  `berat_sampah` float NOT NULL,
  `points` int(11) NOT NULL,
  `lokasi_pengepul` varchar(255) NOT NULL,
  `lokasi_user` varchar(255) NOT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `isPickedUp` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20230608113631-create-order-table.js'),
('20230609070331-create-orders-table.js');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `db_51420040_pert4`
--
CREATE DATABASE IF NOT EXISTS `db_51420040_pert4` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_51420040_pert4`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` varchar(10) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `matkul`
--

CREATE TABLE `matkul` (
  `kd_mk` varchar(10) NOT NULL,
  `matakuliah` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `kd_mk` varchar(10) DEFAULT NULL,
  `npm` varchar(10) DEFAULT NULL,
  `uts` double NOT NULL,
  `uas` double NOT NULL,
  `total` double NOT NULL,
  `grade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `kd_mk`, `npm`, `uts`, `uas`, `total`, `grade`) VALUES
(2, 'KA03', '44444444', 50, 50, 50, 'D');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm`);

--
-- Indeks untuk tabel `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`kd_mk`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `handphones`
--
CREATE DATABASE IF NOT EXISTS `handphones` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `handphones`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `brand`, `description`, `createdAt`, `updatedAt`) VALUES
(2, 'samsung', 'samsung', 'good phone', '2023-06-02 07:33:00', '2023-06-02 07:33:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20230519120000-create-users.js'),
('20230602044656-create-products-table.js');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `kuliah`
--
CREATE DATABASE IF NOT EXISTS `kuliah` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kuliah`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `jurusan` varchar(128) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `name`, `jurusan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Lala', 'Administrasi', '2023-05-29 17:56:06', '2023-05-29 22:57:05', '0000-00-00 00:00:00'),
(4, 'Andi', 'Kedokteran Gigi', '0000-00-00 00:00:00', '2023-05-29 23:43:00', '0000-00-00 00:00:00'),
(5, 'Anita', 'Kedokteran', '0000-00-00 00:00:00', '2023-05-29 23:44:33', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `latihan`
--
CREATE DATABASE IF NOT EXISTS `latihan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `latihan`;
--
-- Database: `mern_db`
--
CREATE DATABASE IF NOT EXISTS `mern_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mern_db`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--
-- Kesalahan membaca struktur untuk tabel mern_db.users: #1932 - Table &#039;mern_db.users&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel mern_db.users: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `mern_db`.`users`&#039; at line 1
--
-- Database: `photo_sharing`
--
CREATE DATABASE IF NOT EXISTS `photo_sharing` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `photo_sharing`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20230530040958-create-photo.js');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--
-- Kesalahan membaca struktur untuk tabel phpmyadmin.pma__bookmark: #1932 - Table &#039;phpmyadmin.pma__bookmark&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel phpmyadmin.pma__bookmark: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__bookmark`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--
-- Kesalahan membaca struktur untuk tabel phpmyadmin.pma__central_columns: #1932 - Table &#039;phpmyadmin.pma__central_columns&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel phpmyadmin.pma__central_columns: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__central_columns`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--
-- Kesalahan membaca struktur untuk tabel phpmyadmin.pma__column_info: #1932 - Table &#039;phpmyadmin.pma__column_info&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel phpmyadmin.pma__column_info: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__column_info`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--
-- Kesalahan membaca struktur untuk tabel phpmyadmin.pma__designer_settings: #1932 - Table &#039;phpmyadmin.pma__designer_settings&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel phpmyadmin.pma__designer_settings: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__designer_settings`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--
-- Kesalahan membaca struktur untuk tabel phpmyadmin.pma__export_templates: #1932 - Table &#039;phpmyadmin.pma__export_templates&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel phpmyadmin.pma__export_templates: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__export_templates`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--
-- Kesalahan membaca struktur untuk tabel phpmyadmin.pma__favorite: #1932 - Table &#039;phpmyadmin.pma__favorite&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel phpmyadmin.pma__favorite: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__favorite`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--
-- Kesalahan membaca struktur untuk tabel phpmyadmin.pma__history: #1932 - Table &#039;phpmyadmin.pma__history&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel phpmyadmin.pma__history: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__history`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--
-- Kesalahan membaca struktur untuk tabel phpmyadmin.pma__navigationhiding: #1932 - Table &#039;phpmyadmin.pma__navigationhiding&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel phpmyadmin.pma__navigationhiding: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__navigationhiding`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--
-- Kesalahan membaca struktur untuk tabel phpmyadmin.pma__pdf_pages: #1932 - Table &#039;phpmyadmin.pma__pdf_pages&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel phpmyadmin.pma__pdf_pages: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__pdf_pages`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--
-- Kesalahan membaca struktur untuk tabel phpmyadmin.pma__recent: #1932 - Table &#039;phpmyadmin.pma__recent&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel phpmyadmin.pma__recent: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__recent`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--
-- Kesalahan membaca struktur untuk tabel phpmyadmin.pma__relation: #1932 - Table &#039;phpmyadmin.pma__relation&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel phpmyadmin.pma__relation: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__relation`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--
-- Kesalahan membaca struktur untuk tabel phpmyadmin.pma__savedsearches: #1932 - Table &#039;phpmyadmin.pma__savedsearches&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel phpmyadmin.pma__savedsearches: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__savedsearches`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--
-- Kesalahan membaca struktur untuk tabel phpmyadmin.pma__table_coords: #1932 - Table &#039;phpmyadmin.pma__table_coords&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel phpmyadmin.pma__table_coords: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__table_coords`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--
-- Kesalahan membaca struktur untuk tabel phpmyadmin.pma__table_info: #1932 - Table &#039;phpmyadmin.pma__table_info&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel phpmyadmin.pma__table_info: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__table_info`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--
-- Kesalahan membaca struktur untuk tabel phpmyadmin.pma__table_uiprefs: #1932 - Table &#039;phpmyadmin.pma__table_uiprefs&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel phpmyadmin.pma__table_uiprefs: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__table_uiprefs`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--
-- Kesalahan membaca struktur untuk tabel phpmyadmin.pma__tracking: #1932 - Table &#039;phpmyadmin.pma__tracking&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel phpmyadmin.pma__tracking: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__tracking`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--
-- Kesalahan membaca struktur untuk tabel phpmyadmin.pma__userconfig: #1932 - Table &#039;phpmyadmin.pma__userconfig&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel phpmyadmin.pma__userconfig: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__userconfig`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--
-- Kesalahan membaca struktur untuk tabel phpmyadmin.pma__usergroups: #1932 - Table &#039;phpmyadmin.pma__usergroups&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel phpmyadmin.pma__usergroups: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__usergroups`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--
-- Kesalahan membaca struktur untuk tabel phpmyadmin.pma__users: #1932 - Table &#039;phpmyadmin.pma__users&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel phpmyadmin.pma__users: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__users`&#039; at line 1
--
-- Database: `rahma_51420040`
--
CREATE DATABASE IF NOT EXISTS `rahma_51420040` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rahma_51420040`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee`
--

CREATE TABLE `employee` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `employee`
--

INSERT INTO `employee` (`id`, `name`, `city`) VALUES
(1, 'Rahmawati Setyorini', 'Bekasi'),
(2, 'Pert 5', '30 Mei'),
(3, 'Rahmasty', 'Jakarta');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `sampah_erd`
--
CREATE DATABASE IF NOT EXISTS `sampah_erd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sampah_erd`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `name`, `harga`) VALUES
(1, 'plastik', '4000.00'),
(2, 'kabel', '2000.00'),
(3, 'kaca', '2000.00'),
(4, 'kaleng', '8000.00'),
(5, 'kertas', '3000.00'),
(6, 'minyak', '5500.00'),
(7, 'organik', '1500.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `collect`
--

CREATE TABLE `collect` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `collect`
--

INSERT INTO `collect` (`id`, `tanggal`, `total`, `user_id`) VALUES
(1, '2023-05-10', '5000.00', 1),
(2, '2023-05-15', '1500.00', 2),
(3, '2023-05-31', '2000.00', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pickup`
--

CREATE TABLE `pickup` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pickup`
--

INSERT INTO `pickup` (`id`, `tanggal`, `user_id`) VALUES
(1, '2023-05-11', 1),
(2, '2023-05-16', 2),
(3, '2023-06-01', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `address`, `email`, `password`) VALUES
(1, 'Rahma', 'Jl. ABC No. 123', 'Rahma@yahoo.com', '123aaa'),
(2, 'Rere', 'Jl. Juanda No. 123', 'regina@yahoo.com', 'halo12'),
(3, 'Damay', 'Jl. Jalan No. 111', 'damay@gmail.com', 'hahaha');

-- --------------------------------------------------------

--
-- Struktur dari tabel `waste`
--

CREATE TABLE `waste` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `waste`
--

INSERT INTO `waste` (`id`, `name`, `category`) VALUES
(1, 'minyak goreng', 'minyak'),
(2, 'kabel lampu', 'kabel'),
(3, 'sampah sisa makanan', 'organik');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `collect`
--
ALTER TABLE `collect`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `pickup`
--
ALTER TABLE `pickup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `waste`
--
ALTER TABLE `waste`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `collect`
--
ALTER TABLE `collect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pickup`
--
ALTER TABLE `pickup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `waste`
--
ALTER TABLE `waste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `collect`
--
ALTER TABLE `collect`
  ADD CONSTRAINT `collect_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `pickup`
--
ALTER TABLE `pickup`
  ADD CONSTRAINT `pickup_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
--
-- Database: `sampah_erd2`
--
CREATE DATABASE IF NOT EXISTS `sampah_erd2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sampah_erd2`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `alamat`, `email`) VALUES
(1, 'Rahma', 'Jl. ABCD No.317', 'setyo@gmail.com'),
(2, 'Rere', 'Jl. Jalan No.317', 'regina@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjemputan`
--

CREATE TABLE `penjemputan` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `pengguna_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjemputan`
--

INSERT INTO `penjemputan` (`id`, `tanggal`, `pengguna_id`) VALUES
(3, '2023-05-10', 1),
(4, '2023-05-11', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjemputan_sampah`
--

CREATE TABLE `penjemputan_sampah` (
  `penjemputan_id` int(11) NOT NULL,
  `sampah_id` int(11) NOT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjemputan_sampah`
--

INSERT INTO `penjemputan_sampah` (`penjemputan_id`, `sampah_id`, `jumlah`) VALUES
(3, 1, 1),
(4, 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `pengguna_id` int(11) DEFAULT NULL,
  `penjemputan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `tanggal`, `total`, `pengguna_id`, `penjemputan_id`) VALUES
(1, '2023-05-09', '1.00', 1, 3),
(2, '2023-05-10', '1.00', 1, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `nama`, `harga`) VALUES
(1, 'botol plastik', '2500.00'),
(2, 'botol kaleng', '5000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sampah`
--

CREATE TABLE `sampah` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sampah`
--

INSERT INTO `sampah` (`id`, `nama`, `kategori`) VALUES
(1, 'botol', 'plastik'),
(2, 'gelas', 'plastik');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penjemputan`
--
ALTER TABLE `penjemputan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengguna_id` (`pengguna_id`);

--
-- Indeks untuk tabel `penjemputan_sampah`
--
ALTER TABLE `penjemputan_sampah`
  ADD PRIMARY KEY (`penjemputan_id`,`sampah_id`),
  ADD KEY `sampah_id` (`sampah_id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengguna_id` (`pengguna_id`),
  ADD KEY `penjemputan_id` (`penjemputan_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sampah`
--
ALTER TABLE `sampah`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `penjemputan`
--
ALTER TABLE `penjemputan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sampah`
--
ALTER TABLE `sampah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `penjemputan`
--
ALTER TABLE `penjemputan`
  ADD CONSTRAINT `penjemputan_ibfk_1` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`id`);

--
-- Ketidakleluasaan untuk tabel `penjemputan_sampah`
--
ALTER TABLE `penjemputan_sampah`
  ADD CONSTRAINT `penjemputan_sampah_ibfk_1` FOREIGN KEY (`penjemputan_id`) REFERENCES `penjemputan` (`id`),
  ADD CONSTRAINT `penjemputan_sampah_ibfk_2` FOREIGN KEY (`sampah_id`) REFERENCES `sampah` (`id`);

--
-- Ketidakleluasaan untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`id`),
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`penjemputan_id`) REFERENCES `penjemputan` (`id`);
--
-- Database: `sampah_erd3`
--
CREATE DATABASE IF NOT EXISTS `sampah_erd3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sampah_erd3`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `namalimbah` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `berat` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `tempatdaurulang` varchar(255) DEFAULT NULL,
  `alamatpenjemput` varchar(255) DEFAULT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `namalimbah`, `kategori`, `berat`, `total`, `tempatdaurulang`, `alamatpenjemput`, `catatan`, `status`) VALUES
(1, 'galon aqua', 'plastik', '4.00', '23000.00', 'Jakarta Timur', 'Bekasi', NULL, 'selesai'),
(3, 'botol alkohol', 'kaca', '5.00', '25000.00', 'Jakarta Timur', 'jakarta Barat', NULL, NULL),
(4, 'kaleng soda', 'kaleng', '1.00', '5000.00', 'Jakarta Timur', 'jakarta Barat', NULL, NULL),
(5, 'kerdus sepatu', 'kertas', '2.00', '10000.00', 'Jakarta Timur', 'Bekasi', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pickups`
--

CREATE TABLE `pickups` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `pickup_date` date DEFAULT NULL,
  `pickup_status` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rewards`
--

CREATE TABLE `rewards` (
  `id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `amount`, `transaction_date`) VALUES
(1, 1, NULL, NULL),
(2, 3, '25000.00', '2023-06-06'),
(3, 4, '5000.00', '2023-06-06'),
(4, 5, '10000.00', '2023-06-06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pickups`
--
ALTER TABLE `pickups`
  ADD CONSTRAINT `pickups_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
--
-- Database: `sig_map4`
--
CREATE DATABASE IF NOT EXISTS `sig_map4` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sig_map4`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`) VALUES
(1, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int(8) NOT NULL,
  `nama_wisata` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `deskripsi` text NOT NULL,
  `harga_tiket` varchar(255) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `nama_wisata`, `alamat`, `deskripsi`, `harga_tiket`, `latitude`, `longitude`) VALUES
(1, 'Hutan Pinus Limpakuwus  Banyumas', 'Hutan Pinus Limpakuwus Jalan Raya Baturraden Timur Km 3,6, Sawah & Hutan, Limpakuwus, Kec. Sumbang, Kabupaten Banyumas, Jawa Tengah 53183', 'Hutan Pinus Limpakuwus ini berada di Desa Limpakuwus Kecamatan Sumbang Kabupaten Banyumas. Jalan menuju Hutan Pinus Limpakuwus sudah beraspal halus, hanya saja penuh dengan tanjakan dan tikungan tajam khas pegunungan. Dari kawasan lokawisata Baturraden.', '15000', '-7.3075901', '109.2416324'),
(2, 'Curug Gomblang', 'Dusun III, Kalisalak, Kec. Kedungbanteng, Kabupaten Banyumas, Jawa Tengah 53152', 'Curug Gomblang, adalah air terjun eksotis yang terletak di kaki Gunung Slamet, Kabupaten Banyumas, Provinsi Jawa Tengah.Curug Gomblang merupakan wisata Banyumas yang sangat digandrungi masyarakat, khususnya anak muda yang haus akan konten keren berlatarka', '5000', '-7.3237089', '109.1791946'),
(38, 'Curug Telu', 'M6JR+2QP, Sawah & Hutan, Karangsalam, Kec. Baturaden, Kabupaten Banyumas, Jawa Tengah 53151', 'Curug Telu ini berlokasi di Desa Karangsalam Kecamatan Baturraden. Sebelum masuk gerbang pertama Baturraden, kalian bisa belok kanan lalu mengikuti petunjuk jalan. Lokasi Curug Telu bisa diakses menggunakan kendaraan pribadi, motor atau mobil. Walau jalan', '5000', '-7.3199069', '109.2397478'),
(39, 'Telaga Sunyi', 'Sawah & Hutan, Limpakuwus, Kec. Sumbang, Kabupaten Banyumas, Jawa Tengah 53183', 'Telaga Sunyi bersumber dari mata air Gunung Slamet. Airnya begitu jernih dan sejuk, sampai warnanya terlihat kebiruan. Bagian dasar kolam sedalam lima meter pun bisa terlihat jelas dengan mata telanjang.', '15000', '-7.3060328', '109.240179'),
(40, 'Curug Jenggala', 'Jl. Pangeran Limboro, Dusun III Kalipagu, Ketenger, Baturraden, Kabupaten Banyumas, Jawa Tengah', 'Curug Jenggala adalah air terjun yang berlokasi di Ketenger, Baturaden, Banyumas. Air terjun ini memiliki ketinggian 30 meter dari permukaan tanah. Curug ini mempunyai tiga air terjun yang tingginya sejajar, dengan air terjun yang di tengah memiliki arus yang paling deras.', '5000', '-7.3090214', '109.206589'),
(41, 'Curug Lima', 'Dusun II, Baseh, Kedungbanteng, Banyumas, Jawa Tengah', 'Curug Lima yang terletak di Desa Baseh, Kedung Banteng, Banyumas ini menawarkan aliran air menyegarkan. Menariknya lagi, air yang berasal dari Curug Gomblang tersebut terbagi menjadi 5 bagian karena terkena bebatuan. Ternyata aliran tersebut pula yang meb', '3000', '-7.3139534', '109.1837141'),
(42, 'Curug Cipendok', 'Desa Karangtengah, Kecamatan Cilongok Kabupaten Banyumas, Jawa Tengah', 'Curug Cipendok adalah air terjun dengan ketinggian 92 meter yang terletak di lereng Gunung Slamet. Curug Cipendok mempunyai daya tarik tersendiri, karena lingkungan masih betul-betul alami. Kesunyian juga masih sangat terasa, sebab belum banyak pelancong yang datang menikmati keindahan alamnya', '3.000', '-7.3370898', '109.1365451'),
(43, 'Bukit Bintang Baturraden', 'Desa Karangmangu KM. 12, Baturraden, Kemutug Lor', 'Selain wisata air terjun atau curug dan telaga di Banyumas juga ada beberapa bukit yang menjadi destinasi wisata alam. Salah satunya Bukit Bintang Baturraden yang lokasinya berada di Desa Karangmangu KM. 12, Baturraden, Kemutug Lor, Banyumas.  Bukit Bintang Baturraden banyak diminati oleh para wisatawan maupun warga setempat karena pemandangannya dari atas bukit yang amazing. Terutama jika dilihat di malam hari, landscape Baturraden di bawahnya akan terlihat sangat indah.', '2000', '-7.3123911', '109.2278064'),
(44, 'Bukit Watu Meja', 'Jl. Raya Patikraja – Kebasen, Tumiyang Kidul, Tumiyang, Kebasen, Kabupaten Banyumas, Jawa Tengah', 'Bukit watu meja Lokasinya berada di Jalan Raya Patikraja Kebasen, Tumiyang Kidul, Tumiyang, Kebasen, Kabupaten Banyumas, Jawa Tengah.  Bayangkan, dari destinasi wisata di Banyumas ini, kamu akan mendapati lukisan alam dalam bentuk 3D yang sangat indah! Perpaduan perbukitan yang hijau di kejauhan, aliran sungai dan langit biru sebagai latar, sungguh view pemandangan yang istimewa!', '7000', '-7.5190126', '109.2145032'),
(45, 'Bukit Agaran', 'Dusun Depok, Desa, Dusun III, Melung, Kedung Banteng, Kabupaten Banyumas, Jawa Tengah', 'Bukit agaran lokasinya berada di Dusun Depok, Desa, Dusun III, Melung, Kedung Banteng, Kabupaten Banyumas, Jawa Tengah  Tangan raksasa sebagai spot foto, dengan background alam yang keren, pun terdapat juga di sini, dan pastinya ini bisa kamu jadikan salah satu alasan untuk datang ke sini.', '5000', '-7.3397431', '109.2078265'),
(46, 'Bukit Tranggulasih', 'Windujaya, Kedungbanteng, Dusun III, Windujaya, Kabupaten Banyumas, Jawa Tengah', ' Bukit Tranggulasih merupakan salah satu destinasi wisata di Banyumas yang tidak boleh dilewatkan adalah Bukit Tranggulasih.  Lokasi Bukit Tranggulasih ini tepatnya berada di Windujaya, Kedungbanteng, Dusun III, Windujaya, Kabupaten Banyumas, Jawa Tengah.  Sempat ditutup untuk sementara waktu, spot wisata ini menawarkan tempat yang mengesankan untuk menikmati pesona alam Purwokerto.', '5000', '-7.335357', '109.2005426'),
(47, 'Kebun Raya Baturaden', 'Jl. Pancuran Tujuh Wanawisata, Baturraden, Kemutug Lor', '. Lokasi kebun raya ini berada di Jl. Pancuran Tujuh Wanawisata, Baturraden, Kemutug Lor, Banyumas.  Koleksi tanaman yang ada di Kebun Raya Baturraden ini beraneka macam untuk dinikmati, ada tanaman perdu, tanaman perambat, tanaman anggrek, tanaman liliana, koleksi pepohonan, dan masih banyak lagi yang lain sebagainya.', '10000', '-7.3063544', '109.2324285'),
(48, 'Kolam RenangPagubugan Melung', 'Dusun I, Melung, Kedungbanteng, Banyumas, Central Java 53152', 'Pagubugan Melung adalah salah satu area wisata yang menawarkan pengalaman berenang di alam terbuka. Kolam renang yang dibangun di area seluas 120 hektare di tengah area persawahan. Selain kolam renang, di sini juga terdapat taman tanaman hias, gubug, serta area berfoto yang menarik. Dari sini pengunjung dapat menikmati panorama sawah yang berbentuk terasering. Tak hanya itu, di sini juga dapat terlihat bukit-bukit hijau yang asri. Buka pukul 08.00-16.00', '7000', '-7.3184612', '109.1213968'),
(49, 'The Vilage Purwokerto', 'Dusun I, Rempoah, Baturaden, Banyumas, Central Java 53151', 'Purwokerto merupakan salah satu kota di Jawa Tengah yang memiliki beragam tempat wisata favorit. Baik itu wisata terbaru yang hits dan terpopuler lainnya yang patut untuk dikunjungi. Purwokerto bukanlah kota besar, yang memiliki tempat wisata besar bagi wisatawannya. Sebelumnya Purwokerto sempat viral di sosial media berkat wisata yang menyuguhkan bangunan landmark dunia bernama Small World Purwokerto. Baru-baru ini Purwokerto kembali menjadi perbincangan menarik di sosial media berkat wisata barunya yang sedang hits bernama The Village. Buka Pukul jam 08.00 Pagi Hingga Pukul 17.00', '15000', '-7.3744601', '109.238343'),
(50, 'Lokawisata Baturraden', 'Karangmangu, Baturraden, Banyumas, Jawa Tengah', 'Lokawisata baturraden lokasinya berada di Karangmangu, Baturraden, Banyumas.  Beberapa fasilitas wisata di Lokawisata Baturraden seperti kolam renang, seluncuran, wahana wisata air, air terjun, pemandian air panas dan lain sebagainya. Untuk fasilitas mainan anak-anak sendiri terdapat teater alam yang menyajikan simulasi pesawat terbang jenis Foxer 28 milik Garuda Indonesia. Sedangkan untuk outboundnya memiliki dua flying fox, bioskop 4 dimensi, komedi putar, hingga tempat makan yang menyediakan makanan tradisional khas Jawa Tengah.', '14000', '-7.3132769', '109.2290185'),
(51, 'Baturraden Adventure Forest', 'Karangsalam, Baturraden, Kabupaten Banyumas, Jawa Tengah', 'Baturraden Adventure Forest merupakan tempat wisata alam yang mempunyai bentang pegunungan yang menjadi tempat rekreasi keluarga. Untuk daerah pegunungan yang melandasi Baturraden Adventure Forest ini mempunyai vegetasi pohon pinus seperti hutan di negeri dongeng.  Tempat wisata keluarga yang satu ini mengajak wisatawan untuk mencintai lingkungan alam, memberikan pengetahuan, serta melakukan konservasi bersama. Untuk paket wisata yang ada di Baturraden Adventure Forest ini terdapat paket petualangan hutan, sungai, kabut, dan gunung yang masing-masing dibanderol harga yang berbeda-beda.', '15000', '-7.3070145', '109.2418245,');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `upload_db`
--
CREATE DATABASE IF NOT EXISTS `upload_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `upload_db`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--
-- Kesalahan membaca struktur untuk tabel upload_db.product: #1932 - Table &#039;upload_db.product&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel upload_db.product: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `upload_db`.`product`&#039; at line 1
--
-- Database: `webcrud`
--
CREATE DATABASE IF NOT EXISTS `webcrud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `webcrud`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(255) NOT NULL,
  `nim` varchar(30) NOT NULL,
  `nama_anggota` varchar(100) NOT NULL,
  `prodi` varchar(20) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nim`, `nama_anggota`, `prodi`, `hp`, `created_at`, `updated_at`) VALUES
(1, '51420040', 'Rahmawati Setyorini', 'Informatika', '082125368343', '2023-03-22 10:23:50', '2023-03-22 17:23:50'),
(2, '50420729', 'Yassir Alghifari', 'Informatika', '082145368790', '2023-03-22 10:25:24', '2023-03-22 17:25:24'),
(3, '51425578', 'Yudistianto Fauzi', 'Informatika', '081267859784', '2023-03-22 10:26:06', '2023-03-22 17:26:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(255) NOT NULL,
  `kode_buku` varchar(10) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `kode_buku`, `judul`, `pengarang`, `kategori`, `created_at`, `updated_at`) VALUES
(1, 'A001', 'Mudah Belajar Python', 'Joko', 'Komputer', '2023-03-22 10:20:10', '2023-03-22 17:20:10'),
(2, 'A002', 'Apa itu Internet of Things', 'Supardi', 'Komputer', '2023-03-22 10:20:56', '2023-03-22 17:20:56'),
(3, 'N001', 'Hello Salma', 'Eriska', 'Novel', '2023-03-22 10:21:53', '2023-03-22 17:21:53'),
(5, 'K001', 'Doraemon', 'Fujiku', 'Komik', '2023-03-22 10:22:43', '2023-03-22 17:22:43'),
(6, 'K003', 'Teknologi Game', 'Setyo', 'Komputer', '2023-03-22 10:23:11', '2023-03-22 17:23:11'),
(7, 'N002', 'The Maze Runner', 'James', 'Novel', '2023-03-22 16:26:12', '2023-03-22 23:26:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_pinjam` int(255) NOT NULL,
  `id_petugas` int(30) NOT NULL,
  `id_anggota` int(255) NOT NULL,
  `id_buku` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_pinjam`, `id_petugas`, `id_anggota`, `id_buku`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, '2023-03-22 10:27:37', '2023-03-22 17:27:37'),
(2, 2, 2, 2, '2023-03-22 10:28:10', '2023-03-22 17:28:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(20) NOT NULL,
  `nama_petugas` varchar(100) NOT NULL,
  `hp` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `hp`, `created_at`, `updated_at`) VALUES
(1, 'Ike Putri', '087898768798', '2023-03-22 10:26:39', '2023-03-22 17:26:39'),
(2, 'Noviana', '081356784545', '2023-03-22 10:27:11', '2023-03-22 17:27:11');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_pinjam` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
