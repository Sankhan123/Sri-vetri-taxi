-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2022 at 04:47 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taxi_db`
--

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
-- Table structure for table `hillstrip_details`
--

CREATE TABLE `hillstrip_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `car_id` int(11) DEFAULT NULL,
  `cus_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trip_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trip_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trip_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` int(11) DEFAULT NULL,
  `members` int(11) DEFAULT NULL,
  `trip_days` int(11) DEFAULT NULL,
  `driver_batta` int(11) DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hillstrip_details`
--

INSERT INTO `hillstrip_details` (`id`, `car_id`, `cus_name`, `mobile`, `trip_type`, `trip_from`, `trip_to`, `payment`, `members`, `trip_days`, `driver_batta`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 'dina', '6543432', 'Hills trip', 'Tiruchengode', 'Yercaud', 3000, 4, 2, 600, '3600', '2021-12-23 15:16:49', '2021-12-23 15:16:49'),
(2, 1, 'dina', '2436532', 'Hills trip', 'Tiruchengode', 'Ooty', 6000, 4, 3, 900, '6900', '2021-12-28 04:54:41', '2021-12-28 04:54:41'),
(3, 8, 'asa', '2121212211', 'Hills trip', 'Tiruchengode', 'Kolli Hills', 3500, 4, 2, 600, '4100', '2022-01-03 12:12:30', '2022-01-03 12:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `localtrip_details`
--

CREATE TABLE `localtrip_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `car_id` int(11) DEFAULT NULL,
  `cus_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trip_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `triphr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` int(11) NOT NULL DEFAULT 0,
  `xtrakm` int(11) NOT NULL DEFAULT 0,
  `xtracharge` int(11) NOT NULL DEFAULT 0,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `localtrip_details`
--

INSERT INTO `localtrip_details` (`id`, `car_id`, `cus_name`, `mobile`, `trip_type`, `triphr`, `distance`, `payment`, `xtrakm`, `xtracharge`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 'pavi', '23454', 'Local trip', '2', '20', 500, 5, 60, '560', '2021-12-23 15:16:10', '2021-12-23 15:16:10'),
(2, 1, 'dina', '2839940393', 'Local trip', '2', '20', 500, 20, 240, '740', '2021-12-30 11:18:16', '2021-12-30 11:18:16'),
(3, 1, 'e34', '3242323223', 'Local trip', '1', '10', 250, 0, 0, '250', '2021-12-30 11:45:44', '2021-12-30 11:45:44'),
(4, 1, 'san', '1234567890', 'Local trip', '1', '10', 250, 0, 0, '250', '2021-12-30 11:52:45', '2021-12-30 11:52:45'),
(5, 1, 'surya', '1421541521', 'Local trip', '1', '10', 250, 0, 0, '250', '2021-12-30 12:03:43', '2021-12-30 12:03:43'),
(6, 2, 'sna', '2727227227', 'Local trip', '2', '20', 500, 10, 120, '620', '2022-01-03 12:10:44', '2022-01-03 12:10:44');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `car_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `car_no`, `password`, `driver`, `created_at`, `updated_at`) VALUES
(1, 'TN34AB7864', 'svt7864', NULL, NULL, NULL),
(2, 'TN34AC6366', 'svt6366', NULL, NULL, NULL),
(3, 'TN34AC8596', 'svt8596', NULL, NULL, NULL),
(4, 'TN50AW1600', 'svt1600', NULL, NULL, NULL),
(5, 'TN34AE0184', 'svt0184', NULL, NULL, NULL),
(6, 'TN43K0649', 'svt0649', NULL, NULL, NULL),
(7, 'TN36AF5438', 'svt5438', NULL, NULL, NULL),
(8, 'TN88D9990', 'svt9990', NULL, NULL, NULL);

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_15_054756_create_onedaytrip_details_table', 1),
(6, '2021_12_15_063450_create_normaltaxi_details_table', 1),
(7, '2021_12_17_100316_create_localtrip_details_table', 2),
(8, '2021_12_18_084721_create_hillstrip_details_table', 3),
(9, '2021_12_18_095446_create_login_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `normaltaxi_details`
--

CREATE TABLE `normaltaxi_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `car_id` int(11) DEFAULT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cus_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trip_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `w_hour` int(11) NOT NULL DEFAULT 0,
  `w_charge` int(11) NOT NULL DEFAULT 0,
  `driver_batta` int(11) NOT NULL DEFAULT 0,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `normaltaxi_details`
--

INSERT INTO `normaltaxi_details` (`id`, `car_id`, `from`, `to`, `cus_name`, `mobile`, `trip_type`, `distance`, `w_hour`, `w_charge`, `driver_batta`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 'tgode', 'erode', 'santhosh', '32323', 'Normal trip', 310, 1, 60, 300, '4080', '2021-12-23 15:15:07', '2021-12-23 15:15:07'),
(2, 1, 'kabilarmalai', 'tgode', 'sharan', '8765892', 'Normal trip', 22, 3, 240, 0, '504', '2021-12-28 04:48:43', '2021-12-28 04:48:43'),
(3, 1, 'Erode', 'bavani', 'surya', '6554929839', 'Normal trip', 60, 1, 60, 0, '780', '2021-12-30 10:42:37', '2021-12-30 10:42:37'),
(4, 1, 'k.malai', 'tgode', 'ravi', '6534365567', 'Normal trip', 33, 1, 60, 0, '456', '2022-01-03 06:50:23', '2022-01-03 06:50:23'),
(5, 7, 'k.malai', 'tgode', 'san', '2828282828', 'Normal trip', 20, 1, 60, 0, '300', '2022-01-03 11:16:02', '2022-01-03 11:16:02');

-- --------------------------------------------------------

--
-- Table structure for table `onedaytrip_details`
--

CREATE TABLE `onedaytrip_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `car_id` int(11) DEFAULT NULL,
  `cus_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trip_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_payment` bigint(20) NOT NULL DEFAULT 1800,
  `distance` int(11) DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `onedaytrip_details`
--

INSERT INTO `onedaytrip_details` (`id`, `car_id`, `cus_name`, `mobile`, `trip_type`, `fixed_payment`, `distance`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 'santhosh', '345678554', 'Day trip', 1800, 60, '2220', '2021-12-23 15:06:57', '2021-12-23 15:06:57'),
(2, 1, 'ravi', '23456', 'Day trip', 1800, 20, '1940', '2021-12-28 04:42:31', '2021-12-28 04:42:31'),
(3, 1, 'Ravi', '21457654', 'Day trip', 1800, 50, '2150', '2021-12-28 04:44:49', '2021-12-28 04:44:49'),
(4, 1, 'mani', '3456789987', 'Day trip', 1800, 20, '1940', '2021-12-30 10:38:19', '2021-12-30 10:38:19'),
(5, 1, 'dina', '6232672637', 'Day trip', 1800, 22, '1954', '2021-12-30 10:52:10', '2021-12-30 10:52:10'),
(6, 6, 'san', '1234567890', 'Day trip', 1800, 30, '2010', '2022-01-03 12:03:06', '2022-01-03 12:03:06');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'TN34AB7864', 'TN34AB7864', '$2y$10$YN458OfJHzDidDD9rW/DZ.FzZ0coDo93jK2eX0tu7yKFF3wv3Oo0u', 'user', NULL, '2021-12-25 05:00:05', '2021-12-25 05:00:05'),
(2, 'TN34AC6366', 'TN34AC6366', '$2y$10$aX4iTID9nEAmRV4DzZj7ZeyfH/mfRa71lvJiAKO2nTzir54e56yWi', 'user', NULL, '2021-12-25 05:00:51', '2021-12-25 05:00:51'),
(3, 'TN34AC8596', 'TN34AC8596', '$2y$10$vmcoDxr/xQ..xbUbvxf5Sub3UGhJuihl2WI2dBouAwx.0MVl0PXNe', 'user', NULL, '2021-12-25 05:01:24', '2021-12-25 05:01:24'),
(4, 'TN50AW1600', 'TN50AW1600', '$2y$10$xShE4HTKbuMDzbSSmzFEee0b9YFoB4KZdaT1cz0AeIWjcbG106rhW', 'user', NULL, '2021-12-25 05:02:21', '2021-12-25 05:02:21'),
(5, 'TN34AE0184', 'TN34AE0184', '$2y$10$ttFWTIm.f3H8RbXZ01XscuKuMm2F2ms8rVJN9zHQHXQChk.G5nTHO', 'user', NULL, '2021-12-25 05:02:59', '2021-12-25 05:02:59'),
(6, 'TN43K0649', 'TN43K0649', '$2y$10$C4tLd8/VauuF9Jy7Mq3FU.Bnpu2pxhPM228oS09mZIq4FMN5RA0Aq', 'user', NULL, '2021-12-25 05:03:48', '2021-12-25 05:03:48'),
(7, 'TN36AF5438', 'TN36AF5438', '$2y$10$hsXfywOL5s4E45k1b.eMSuV0YQOPxaZBIrhozNbvWk4ElqP4HYvjq', 'user', NULL, '2021-12-25 05:04:44', '2021-12-25 05:04:44'),
(8, 'TN88D9990', 'TN88D9990', '$2y$10$wiX3h3bb24e2Ip.ye6T.feld7L./LgrdVrmSv5631N313Q6WHU/9W', 'user', NULL, '2021-12-25 05:05:20', '2021-12-25 05:05:20'),
(9, 'admin', 'admin', '$2y$10$ckQk9eOdkF4ybd1muR8TVuxreS6ARRhBRkILIPerj3psjnMRrShP2', 'admin', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hillstrip_details`
--
ALTER TABLE `hillstrip_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `localtrip_details`
--
ALTER TABLE `localtrip_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `normaltaxi_details`
--
ALTER TABLE `normaltaxi_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onedaytrip_details`
--
ALTER TABLE `onedaytrip_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hillstrip_details`
--
ALTER TABLE `hillstrip_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `localtrip_details`
--
ALTER TABLE `localtrip_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `normaltaxi_details`
--
ALTER TABLE `normaltaxi_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `onedaytrip_details`
--
ALTER TABLE `onedaytrip_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
