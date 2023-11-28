-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2023 at 08:58 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catalogsore_rico`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES
(2, 2, 'Baju', '2023-01-12 18:50:51', '2023-01-13 09:27:37'),
(3, 2, 'Celana', '2023-01-12 18:52:05', '2023-01-12 18:52:05'),
(4, 2, 'Baju', '2023-01-12 19:02:18', '2023-01-12 19:02:18'),
(5, 3, 'Tas', '2023-01-13 20:21:23', '2023-01-13 20:21:23'),
(6, 8, 'T-Shirt', '2023-01-13 20:55:52', '2023-01-13 20:55:52'),
(7, 8, 'Crewneck', '2023-01-13 20:56:10', '2023-01-13 20:56:10'),
(8, 8, 'Hoodie', '2023-01-13 20:56:20', '2023-01-13 20:56:20'),
(9, 8, 'Short Pant', '2023-01-13 20:56:34', '2023-01-13 20:56:34'),
(10, 6, 'Parfume', '2023-01-13 22:37:06', '2023-01-13 22:37:06'),
(11, 7, 'Sepatu', '2023-01-13 22:40:43', '2023-01-13 22:40:43'),
(12, 4, 'Sepatu', '2023-01-13 22:43:52', '2023-01-13 22:43:52'),
(13, 4, 'T-Shirt Oversize', '2023-01-13 23:15:03', '2023-01-13 23:15:03'),
(14, 4, 'Sandal', '2023-01-13 23:30:46', '2023-01-13 23:30:46'),
(15, 5, 'Sepatu', '2023-01-13 23:33:59', '2023-01-13 23:33:59'),
(16, 9, 'T-Shirt', '2023-01-13 23:45:03', '2023-01-13 23:45:03'),
(17, 9, 'Short Pant', '2023-01-13 23:45:13', '2023-01-13 23:45:13'),
(18, 9, 'Denim Pant', '2023-01-13 23:45:25', '2023-01-13 23:45:25'),
(19, 9, 'Batik', '2023-01-13 23:50:24', '2023-01-13 23:50:24'),
(20, 9, 'Crewneck', '2023-01-13 23:51:17', '2023-01-13 23:51:17');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_28_102135_create_categories_table', 1),
(6, '2023_01_04_101339_create_products_table', 1),
(7, '2023_01_11_090703_update_table_category--table=categories', 1),
(8, '2023_01_11_090816_update_table_product--table=products', 1),
(9, '2023_01_28_044229_create_shoppingricos_table', 2);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `category_id`, `name`, `price`, `photo`, `created_at`, `updated_at`) VALUES
(16, 3, 5, 'Eiger Starter Daypack 16L', '349000', '63c22133d0a41.jpg', '2023-01-13 20:27:47', '2023-01-13 20:52:58'),
(17, 3, 5, 'Eiger Cruiser 2.0 Backpack', '569000', '63c22221520da.jpg', '2023-01-13 20:31:45', '2023-01-13 20:31:45'),
(18, 3, 5, 'Eiger Grapnel Waistbag', '167200', '63c2223c0676e.jpg', '2023-01-13 20:32:12', '2023-01-13 20:53:56'),
(19, 8, 6, 'T-Shirt Black', '62000', '63c229fa3c0a5.jpg', '2023-01-13 21:05:14', '2023-01-13 21:05:14'),
(20, 8, 6, 'T-Shirt Grey', '62000', '63c22a13f418d.jpg', '2023-01-13 21:05:40', '2023-01-13 21:05:40'),
(21, 8, 6, 'T-Shirt Rotten Yellow', '62000', '63c22a3d09cb2.jpg', '2023-01-13 21:06:21', '2023-01-13 21:06:21'),
(22, 8, 7, 'Crewneck D Jon', '162000', '63c22aaced766.jpg', '2023-01-13 21:08:13', '2023-01-13 21:08:13'),
(23, 8, 7, 'Crewneck Black', '162000', '63c22ad9b07c0.jpg', '2023-01-13 21:08:57', '2023-01-13 21:08:57'),
(25, 8, 7, 'Crewneck Dark Grey', '162000', '63c22b373b459.jpg', '2023-01-13 21:10:31', '2023-01-13 21:10:31'),
(26, 8, 7, 'Crewneck Black', '162000', '63c22b62c1be7.jpg', '2023-01-13 21:11:14', '2023-01-13 21:11:14'),
(27, 8, 8, 'Hoodie Coca Mocha', '229000', '63c22bc6157ce.jpg', '2023-01-13 21:12:54', '2023-01-13 21:12:54'),
(28, 8, 8, 'Hoodie Black', '229000', '63c22bddef8dd.jpg', '2023-01-13 21:13:18', '2023-01-13 21:13:18'),
(29, 8, 8, 'Hoodie Dark Grey', '229000', '63c22bf580825.jpg', '2023-01-13 21:13:41', '2023-01-13 21:13:41'),
(30, 8, 8, 'Hoodie Caramel', '229000', '63c22c1e02343.jpg', '2023-01-13 21:14:22', '2023-01-13 21:19:37'),
(31, 8, 9, 'Short Pant Misty', '158000', '63c22c7e6bbe6.jpg', '2023-01-13 21:15:58', '2023-01-13 21:15:58'),
(32, 8, 9, 'Short Pant Black', '158000', '63c22c9c107a6.jpg', '2023-01-13 21:16:28', '2023-01-13 21:16:28'),
(33, 6, 10, 'Kahf Humbling Forest Eau de', '71250', '63c23fc90119a.jpg', '2023-01-13 22:38:17', '2023-01-13 22:38:17'),
(34, 6, 10, 'Kahf Revered Oud Eau De', '71250', '63c23ffb07263.jpg', '2023-01-13 22:39:07', '2023-01-13 22:39:07'),
(35, 7, 11, 'Nike Air Force Low White', '1500000', '63c240909def1.jpg', '2023-01-13 22:41:36', '2023-01-13 22:41:36'),
(36, 7, 11, 'Nike Air Jordan 1 Retro', '2500000', '63c240b5972a7.jpg', '2023-01-13 22:42:13', '2023-01-13 22:42:13'),
(37, 7, 11, 'Nike Air Force 1 Full White', '800000', '63c240dc88424.jpg', '2023-01-13 22:42:52', '2023-01-13 22:42:52'),
(38, 4, 12, 'Aerostreet Classic Putih', '149900', '63c2478252771.jpg', '2023-01-13 23:11:14', '2023-01-13 23:14:01'),
(39, 4, 12, 'Aerostreet Osaka Krem Biru', '149900', '63c247ae13bfb.jpg', '2023-01-13 23:11:58', '2023-01-13 23:14:14'),
(40, 4, 12, 'Aerostreet Massive Low', '139900', '63c247d258de2.jpg', '2023-01-13 23:12:34', '2023-01-13 23:14:35'),
(41, 4, 12, 'Aerostreet Brave Low Putih', '139900', '63c247fdad269.jpg', '2023-01-13 23:13:17', '2023-01-13 23:13:17'),
(42, 4, 13, 'T-Shirt Oversize Reality', '79900', '63c248b1e98ee.jpg', '2023-01-13 23:16:17', '2023-01-13 23:16:17'),
(43, 4, 13, 'T-Shirt Oversize Cash', '79900', '63c248db069a5.jpg', '2023-01-13 23:16:59', '2023-01-13 23:16:59'),
(44, 4, 13, 'T-Shirt Oversize Wings', '79900', '63c249077b5f3.jpg', '2023-01-13 23:17:43', '2023-01-13 23:17:43'),
(45, 4, 13, 'T-Shirt Oversize Dollar', '79900', '63c24c00628cb.jpg', '2023-01-13 23:30:25', '2023-01-13 23:30:25'),
(46, 4, 13, 'T-Shirt Oversize Dollar', '79900', '63c24c01bd33b.jpg', '2023-01-13 23:30:25', '2023-01-13 23:30:25'),
(47, 4, 14, 'Aero Hitam Army', '79900', '63c24c6905b98.jpg', '2023-01-13 23:32:09', '2023-01-13 23:32:09'),
(48, 4, 14, 'Aero Sandal Hitam', '79900', '63c24c8d35a41.jpg', '2023-01-13 23:32:45', '2023-01-13 23:32:45'),
(49, 5, 15, 'Geoffmax Dublin Black', '345000', '63c24d07e1a24.jpg', '2023-01-13 23:34:47', '2023-01-13 23:34:47'),
(50, 5, 15, 'Geoffmax Vinz White', '199000', '63c24d2b4e59a.jpg', '2023-01-13 23:35:23', '2023-01-13 23:35:23'),
(51, 5, 15, 'Geoffmax Timeless Black', '215000', '63c24d4ede785.jpg', '2023-01-13 23:35:58', '2023-01-13 23:35:58'),
(52, 9, 16, 'Marvel T-Shirt', '129000', '63c25034960b5.jpg', '2023-01-13 23:48:20', '2023-01-13 23:48:20'),
(53, 9, 17, 'Celana Pendek Abu', '79000', '63c250511b524.jpg', '2023-01-13 23:48:49', '2023-01-13 23:48:49'),
(54, 9, 17, 'Celana Pendek Army', '79000', '63c25075478b2.jpg', '2023-01-13 23:49:25', '2023-01-13 23:49:25'),
(55, 9, 18, 'Celana Jeans Denim', '209000', '63c2509e26b13.jpg', '2023-01-13 23:50:06', '2023-01-13 23:50:06'),
(56, 9, 19, 'Kemeja Batik Coklat', '179000', '63c250ceaf167.jpg', '2023-01-13 23:50:54', '2023-01-13 23:50:54'),
(57, 9, 20, 'Crewneck Marvel Deadpool', '249000', '63c25111de241.jpg', '2023-01-13 23:52:01', '2023-01-13 23:52:01'),
(58, 9, 20, 'Sweater Knit Coklat', '199000', '63c2513328b1e.jpg', '2023-01-13 23:52:35', '2023-01-13 23:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingricos`
--

CREATE TABLE `shoppingricos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buyer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyer_whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyer_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `qty` bigint(20) NOT NULL,
  `total` bigint(20) NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoppingricos`
--

INSERT INTO `shoppingricos` (`id`, `buyer_name`, `buyer_whatsapp`, `buyer_address`, `product_id`, `qty`, `total`, `note`, `created_at`, `updated_at`) VALUES
(62, 'Rico Pratama', '0895620543225', 'Jl. Padat Karya, Lorong Kemang', 34, 3, 213750, NULL, '2023-01-29 00:53:14', '2023-01-29 00:53:14'),
(63, 'Rafi Ahmad', '089681330354', 'Jl.Kali Padang Rambutan Banyuasin', 22, 2, 324000, NULL, '2023-01-29 00:54:11', '2023-01-29 00:54:11'),
(64, 'Seman', '082278945612', 'Sp padang Tanjung Pinang', 19, 4, 248000, NULL, '2023-01-29 00:55:06', '2023-01-29 00:55:06'),
(65, 'Radial Maruk', '0819789451236', 'Station Gambir Jakarta Selatan', 32, 2, 316000, 'Ukuran Celana 29', '2023-01-29 00:56:25', '2023-01-29 00:56:25'),
(66, 'Wahyu', '081254789632', 'Perumahan Bukit Hijau 2, Rambutan deket Bengkel Melati', 29, 2, 458000, 'Ukuran M 1 dan Ukuran L 1', '2023-01-29 00:58:14', '2023-01-29 00:58:14');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rico Pratama', 'ricolaa02@gmail.com', NULL, '$2y$10$oppeB8xCQC6lTRVQGEuKfOWjUY7s8jQX5Y1gz6WuM2z7SuBUSwwzK', NULL, '2023-01-12 18:38:32', '2023-01-25 01:37:14'),
(2, 'Rico Pratama', 'rico@test.com', NULL, '$2y$10$V9BIrNgYKSxslZeFq4gUg.pkJM5X79dZai8T5.ubJvJivdm4Cz0sC', NULL, '2023-01-12 18:38:48', '2023-01-12 18:38:48'),
(3, 'Eiger Adventure', 'eiger@gmail.com', NULL, '$2y$10$4ABPnq0WA8z0tsiwjxB8eeV0ZV/YNn574V8mMW4g6tRuFGqxEsJsi', NULL, '2023-01-13 20:12:35', '2023-01-13 20:12:35'),
(4, 'Aero Street', 'aerostreet@gmail.com', NULL, '$2y$10$1DKewbi7GpWensaOs396GeJ8flGp0Eay1N6iqSBHp.iT844XbdOAS', NULL, '2023-01-13 20:13:01', '2023-01-13 20:13:01'),
(5, 'GeofMax', 'geofmax@gmail.com', NULL, '$2y$10$zzTOAflLWnXgOUafjAp/BOk/jx8lUANac.qTCH2yOQka9x2gtd3z6', NULL, '2023-01-13 20:13:45', '2023-01-13 20:13:45'),
(6, 'Kahf', 'kahf@gmail.com', NULL, '$2y$10$bCYI8O/of80IhPujZ1RZWuKon4bpQooV8Rruin7X/J8/L6XVfqGhi', NULL, '2023-01-13 20:14:31', '2023-01-13 20:14:31'),
(7, 'Nike', 'nike@gmail.com', NULL, '$2y$10$U9f7nmq0YZPPTWAoiStvpeMORgPc7wCJg1ISZ29.zbQKGB4UsVndi', NULL, '2023-01-13 20:17:19', '2023-01-13 20:17:19'),
(8, 'Human Greatness', 'humangreatness@gmail.como', NULL, '$2y$10$IROTf69NkiIbahnIhYFZw.X/odH7zISBvSJH/WdoY8Q9YGo20ox.u', NULL, '2023-01-13 20:18:16', '2023-01-13 20:18:16'),
(9, 'M231 Official', 'm231@gmail.com', NULL, '$2y$10$5COPLVO8wPIvyJhNpep.Q.iLhobSUrkXuKXNjL3E2CIy7gzzywJky', NULL, '2023-01-13 23:39:37', '2023-01-13 23:39:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoppingricos`
--
ALTER TABLE `shoppingricos`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `shoppingricos`
--
ALTER TABLE `shoppingricos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
