-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2021 at 06:44 PM
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
  `car_id` int(11) NOT NULL DEFAULT 1,
  `cus_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `hillstrip_details` (`id`, `car_id`, `cus_name`, `mobile`, `trip_from`, `trip_to`, `payment`, `members`, `trip_days`, `driver_batta`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 'san', '1213', NULL, 'Yercaud', 3000, 4, 1, 300, '3300', '2021-12-18 03:21:41', '2021-12-18 03:21:41'),
(2, 1, 'aaa', '2434', 'Tiruchengode', 'Kolli Hills', 3500, 4, 2, 600, '4100', '2021-12-18 03:24:49', '2021-12-18 03:24:49'),
(3, 1, 'sann', '1234', 'Tiruchengode', NULL, NULL, 4, 0, 0, NULL, '2021-12-18 03:28:24', '2021-12-18 03:28:24'),
(4, 1, '23', '23', 'Tiruchengode', 'Yercaud', 3000, 4, 0, 0, '3000', '2021-12-18 03:29:57', '2021-12-18 03:29:57'),
(5, 1, 'asa', '433', 'Tiruchengode', 'Ooty', 6000, 4, NULL, 0, '6000', '2021-12-18 03:33:46', '2021-12-18 03:33:46');

-- --------------------------------------------------------

--
-- Table structure for table `localtrip_details`
--

CREATE TABLE `localtrip_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `car_id` int(11) NOT NULL DEFAULT 1,
  `cus_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `triphr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tripkms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `localtrip_details` (`id`, `car_id`, `cus_name`, `mobile`, `triphr`, `tripkms`, `payment`, `xtrakm`, `xtracharge`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 'san', '23678', '2', '20', 500, 1, 12, '512', '2021-12-17 05:14:21', '2021-12-17 05:14:21'),
(2, 1, 'san', '456876', '2', '20', 500, 6, 72, '572', '2021-12-17 05:44:23', '2021-12-17 05:44:23'),
(3, 1, 'ds', '232', '1', '10', 250, 0, 0, '250', '2021-12-17 11:42:42', '2021-12-17 11:42:42'),
(4, 1, 'sss1', '23456', '1', '10', 250, 0, 0, '250', '2021-12-17 22:21:41', '2021-12-17 22:21:41'),
(5, 1, 'qqq', '2222', '2', '20', 500, 0, 0, '500', '2021-12-17 22:38:54', '2021-12-17 22:38:54'),
(6, 1, '1', '1', '1', '10', 250, 0, 0, '250', '2021-12-17 22:40:26', '2021-12-17 22:40:26'),
(7, 1, '2', '2', '2', '20', 500, 0, 0, '500', '2021-12-17 22:40:34', '2021-12-17 22:40:34'),
(8, 1, '11', '11', '1', '10', 250, 1, 12, '262', '2021-12-17 22:40:57', '2021-12-17 22:40:57'),
(9, 1, '22', '22', '2', '20', 500, 2, 24, '524', '2021-12-17 22:41:11', '2021-12-17 22:41:11');

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
  `car_id` int(11) NOT NULL DEFAULT 1,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cus_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `normaltaxi_details` (`id`, `car_id`, `from`, `to`, `cus_name`, `mobile`, `distance`, `w_hour`, `w_charge`, `driver_batta`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 'weweww', 'eew', 'wewew', '324566543', 243, 3, 240, 0, '3156', '2021-12-16 04:41:25', '2021-12-16 04:41:25');

-- --------------------------------------------------------

--
-- Table structure for table `onedaytrip_details`
--

CREATE TABLE `onedaytrip_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `car_id` int(11) NOT NULL DEFAULT 1,
  `cus_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_payment` bigint(20) NOT NULL DEFAULT 1800,
  `distance` int(11) DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `onedaytrip_details`
--

INSERT INTO `onedaytrip_details` (`id`, `car_id`, `cus_name`, `mobile`, `fixed_payment`, `distance`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 'santhosh', '3455677987', 1800, 44, '2108', '2021-12-15 07:08:49', '2021-12-14 18:30:00'),
(2, 1, 'ravi', '3456786543', 1800, 120, '2640', '2021-12-15 07:10:36', '2021-12-14 18:30:00'),
(3, 1, 'pavi', '39249283324', 1800, 33, '2031', '2021-12-15 23:19:20', '2021-12-15 18:30:00'),
(4, 1, 'sabari', '3456788765', 1800, 20, '1940', '2021-12-15 23:25:54', '2021-12-15 18:30:00'),
(5, 1, 'shameem', '4567632345', 1800, 70, '2290', '2021-12-15 23:28:06', '2021-12-15 18:30:00'),
(6, 1, 'karthika', '345645644', 1800, 55, '2185', '2021-12-15 23:32:22', '2021-12-15 18:30:00');

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
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `localtrip_details`
--
ALTER TABLE `localtrip_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `normaltaxi_details`
--
ALTER TABLE `normaltaxi_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
