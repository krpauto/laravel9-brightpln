-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2023 at 08:17 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `update bright pln`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill_competence` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `class_id`, `class_name`, `skill_competence`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, '33', '33', '333', NULL, '2023-02-27 19:57:55', '2023-02-27 19:57:55'),
(3, '4566', '6666', '66', NULL, '2023-02-27 20:02:23', '2023-02-27 20:02:23');

-- --------------------------------------------------------
-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_16_175500_add_roles_field_to_users_table', 1),
(5, '2021_02_16_175730_create_classes_table', 1),
(6, '2021_02_17_092744_create_spp_table', 1),
(7, '2021_02_17_093117_create_payments_table', 1),
(8, '2023_02_28_030045_create_pelanggans_table', 2),
(9, '2023_03_13_025452_create_pelangganss_table', 3),
(10, '2023_03_13_031555_create_pelanggansses_table', 4),
(11, '2023_03_15_033147_approvals', 6),
(12, '2023_03_15_033609_create_approvals_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggans`
--

CREATE TABLE `pelanggans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_ktp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `odp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sinyal_optik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paket_internet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_ont` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `koordinat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isp_ftth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelanggans`
--

INSERT INTO `pelanggans` (`id`, `nama`, `alamat`, `no_tlp`, `no_ktp`, `odp`, `sinyal_optik`, `paket_internet`, `no_ont`, `koordinat`, `isp_ftth`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'Frendy', 'Piayu', '08953232325', '2343243443', '2', '2', '20 Mbps', '2', 'Piayu', '2', NULL, '2023-02-28 19:20:13', '2023-02-28 19:20:13'),
(5, 'Wira', 'Tiban Mas', '08952143456', '23432443234', '2', '2', '10', '10 Mbps', 'Tiban Mas', '2', NULL, '2023-03-05 23:47:55', '2023-03-05 23:47:55');

-- --------------------------------------------------------

--
-- Table structure for table `pelangganss`
--

CREATE TABLE `pelangganss` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_ktp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `odp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sinyal_optik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paket_internet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_ont` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `koordinat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isp_ftth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggansses`
--

CREATE TABLE `pelanggansses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_ktp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `odp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sinyal_optik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paket_internet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_ont` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `koordinat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isp_ftth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelanggansses`
--

INSERT INTO `pelanggansses` (`id`, `nama`, `alamat`, `no_tlp`, `no_ktp`, `odp`, `sinyal_optik`, `paket_internet`, `no_ont`, `koordinat`, `isp_ftth`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Dian Nur', 'Masyeba Gading Mas', '089523231321321', '-', '-', '-', '-', '-', 'Masyeba Gading Mas', '-', NULL, '2023-03-12 20:53:35', '2023-03-15 00:16:48'),
(2, 'Agus Subekti', 'block c91, Jl. Palm Spring, Baloi', '08', '-', '-', '-', '10 Mbps', 'ZTEGC8A1A6E5', '-', 'ISAT-NET', NULL, '2023-03-14 19:34:38', '2023-03-14 19:37:46'),
(3, 'Agus Trisusanto', 'Perum Palm Spring Blok C No 59', '08', '-', '-', '-', '-', '900000026538', '-', 'ICON-NET', NULL, '2023-03-14 19:35:26', '2023-03-14 19:37:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nisn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ADMIN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nisn`, `name`, `username`, `email`, `email_verified_at`, `password`, `address`, `phone_number`, `class`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES
(1, NULL, 'Admin', 'Admin', 'admin@admin.com', NULL, '$2y$10$BY4VIdvSGM2WS0RsGgAmIu0kikD8PoYsGuTXUsB/9tquwi1DXd.uy', NULL, NULL, NULL, NULL, '2023-02-27 19:36:24', '2023-02-27 19:36:24', 'ADMIN'),
(2, '3334434', 'Frendy', 'frendy', 'frendy@gmail.com', NULL, '$2y$10$1NWNx3ZUyxX3/3tA2U51SuXDtV27V1bHCMTaKQfTe6gTi1c6HBTIe', 'Piayu', '0812984949', '2B', NULL, '2023-02-27 19:44:34', '2023-02-27 19:45:00', 'STUDENT'),
(13, NULL, 'abcde', 'abcde', 'wadwad@gmail.com', NULL, '$2y$10$CyyD09DlaooyE9ugH1BRQOEJOE1UR6rMWQmwzedI2dR.udsuopv5S', '-', '089332323', NULL, NULL, '2023-03-12 19:19:54', '2023-03-12 19:19:54', 'STAFF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_approvals`
--
ALTER TABLE `customer_approvals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pelanggans`
--
ALTER TABLE `pelanggans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelangganss`
--
ALTER TABLE `pelangganss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelanggansses`
--
ALTER TABLE `pelanggansses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_nisn_unique` (`nisn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_approvals`
--
ALTER TABLE `customer_approvals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pelanggans`
--
ALTER TABLE `pelanggans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pelangganss`
--
ALTER TABLE `pelangganss`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelanggansses`
--
ALTER TABLE `pelanggansses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
