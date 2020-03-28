-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 28, 2020 at 01:56 PM
-- Server version: 5.7.29-0ubuntu0.16.04.1
-- PHP Version: 7.2.28-3+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(9, '2014_10_12_000000_create_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('07a9a41969e51b88484526aa8465c6dc51fd8e418692537b9be002174251a167fcf6abd53802474e', 14, 1, 'MyApp', '[]', 0, '2020-03-28 00:52:01', '2020-03-28 00:52:01', '2021-03-28 06:22:01'),
('1379039eb737d668af46b9571d3156a2a0dc17e8dc1b3845a8cca3938125f34d92720a0b80eff863', 14, 1, 'MyApp', '[]', 0, '2020-03-28 00:54:18', '2020-03-28 00:54:18', '2021-03-28 06:24:18'),
('164e6b273856d87d3f08a52bf6be4c1732e363b42c59510a505c5592c2bc2c88573364533709cdae', 14, 1, 'MyApp', '[]', 0, '2020-03-28 01:29:24', '2020-03-28 01:29:24', '2021-03-28 06:59:24'),
('1edb80d5512a9aefe0d39bc5635ff9551aa1b196473877c194db0e1f0a5fa8a017c1d36ecb68154b', 14, 1, 'MyApp', '[]', 0, '2020-03-28 01:25:01', '2020-03-28 01:25:01', '2021-03-28 06:55:01'),
('23cf2c45a9b36bb82430223b2a9c239b4c9c4bb7681054ac93368e0e731b138e12a670184fad2df5', 14, 1, 'MyApp', '[]', 0, '2020-03-28 02:28:46', '2020-03-28 02:28:46', '2021-03-28 07:58:46'),
('29685df96b86700d66dc8e5b38d067236f8512653b8289d5cac187da1db23cc35d3228b9e25a9101', 14, 1, 'MyApp', '[]', 0, '2020-03-28 02:04:17', '2020-03-28 02:04:17', '2021-03-28 07:34:17'),
('3dfa9c2c76f86b05611a1b1142975d48b9bde2a7c6ee21b98436f82ef8d13c6ef323e552c0dc83ab', 14, 1, 'MyApp', '[]', 0, '2020-03-28 00:55:27', '2020-03-28 00:55:27', '2021-03-28 06:25:27'),
('484be9cf85f9883dbc72a3661c1b9685b31cac2c64741902ea8d651924311a0866de13f270182db9', 14, 1, 'MyApp', '[]', 0, '2020-03-28 01:26:48', '2020-03-28 01:26:48', '2021-03-28 06:56:48'),
('48a01aec957198b7810936ed3b3c5728c97c6882b6ea739acac98e2b92328f012644ed8ac0db7483', 14, 1, 'MyApp', '[]', 0, '2020-03-28 02:00:50', '2020-03-28 02:00:50', '2021-03-28 07:30:50'),
('4bb4de09a4c70a2b8ef0da8c605636af2b8e1b8d7ede9eee8a45252ed66597df60dabb587adce7c2', 14, 1, 'MyApp', '[]', 0, '2020-03-28 01:20:24', '2020-03-28 01:20:24', '2021-03-28 06:50:24'),
('4eec4a7ef4b80041646719a6cd14ef8c533b5b7664a10a7e58518751beab52c40d31b68a432fec49', 14, 1, 'MyApp', '[]', 0, '2020-03-28 01:27:31', '2020-03-28 01:27:31', '2021-03-28 06:57:31'),
('5bb2cd8ac9a6734d5f506788fe66198bde80a9c8308a1de5bcb60131071f8c9ebc5f8e735d54dd49', 14, 1, 'MyApp', '[]', 0, '2020-03-28 01:29:41', '2020-03-28 01:29:41', '2021-03-28 06:59:41'),
('5dd1e4fc16973520cd5fae92d26516359a08a72a5a058ac0b65d9e7f66e34bb0c5dba49bd1c69e08', 14, 1, 'MyApp', '[]', 0, '2020-03-28 01:31:29', '2020-03-28 01:31:29', '2021-03-28 07:01:29'),
('604ea679fac806027a62b420310ad755f3f970dedd8fa7073d05501bae0d59b5db3844238dd32b73', 14, 1, 'MyApp', '[]', 0, '2020-03-28 02:23:57', '2020-03-28 02:23:57', '2021-03-28 07:53:57'),
('6bb06adc557cdcf79019331ea7ae79e99a35394c9fd76c35fc0943b5309586caba80874ff157c41b', 14, 1, 'MyApp', '[]', 0, '2020-03-28 02:12:45', '2020-03-28 02:12:45', '2021-03-28 07:42:45'),
('7faf10b25f26ccf4703e6fea6f30f376d14fab3f24a47ecc59bfa749f69c38dd699a80dba2472d59', 14, 1, 'MyApp', '[]', 0, '2020-03-28 02:06:53', '2020-03-28 02:06:53', '2021-03-28 07:36:53'),
('84388e744e3766029fede1458dc0044b06530c6631ab26321fd301e320e7d52b3de59e41e761c712', 14, 1, 'MyApp', '[]', 0, '2020-03-28 01:29:48', '2020-03-28 01:29:48', '2021-03-28 06:59:48'),
('882d07270d071b03d9606f23107bdc3e913a6aaa40ee5f7f398a795cec1d2f0bfe7520cc6cb4119c', 14, 1, 'MyApp', '[]', 0, '2020-03-28 01:20:38', '2020-03-28 01:20:38', '2021-03-28 06:50:38'),
('984a38c449e2b93d5b21adee7a94a827d12c2d4335a58903b3f8bf908e5dcb5ad9336701c1bc8691', 14, 1, 'MyApp', '[]', 0, '2020-03-28 02:04:41', '2020-03-28 02:04:41', '2021-03-28 07:34:41'),
('a4abab8bc7094c2db67786fa7632f3b11f54f1b832b0041e06ff61dbca416c2581881f1ff3c4a88a', 14, 1, 'MyApp', '[]', 0, '2020-03-28 02:14:09', '2020-03-28 02:14:09', '2021-03-28 07:44:09'),
('a9cc6e25678a4cb3225550efd1a87aa361c8fd3df1de0e1a9f35cfe6b30364d22e3086aa48e006e0', 15, 1, 'MyApp', '[]', 0, '2020-03-28 01:13:07', '2020-03-28 01:13:07', '2021-03-28 06:43:07'),
('ae073c2777d09bd76544215ca292f919e59b18d9591e7061424111c920f78191f960cf348a33043b', 14, 1, 'MyApp', '[]', 0, '2020-03-28 01:25:09', '2020-03-28 01:25:09', '2021-03-28 06:55:09'),
('b13068bbd8cbc5cb79dfdca5fed0a670aab687b470505b58bfabc51c089c3957f8ae8a9b391f486f', 14, 1, 'MyApp', '[]', 0, '2020-03-28 02:09:45', '2020-03-28 02:09:45', '2021-03-28 07:39:45'),
('bd1a3490568b0a5ff76428cc6ac8096e11ab965d118ba7474207929ec0593c859ed6f8b3c9fec249', 14, 1, 'MyApp', '[]', 0, '2020-03-28 01:59:50', '2020-03-28 01:59:50', '2021-03-28 07:29:50'),
('bd314a75f814a3ff5d779e6d760ad2e4ddcd1e408146c07ed189f50d398b6e16b71958404f80639f', 14, 1, 'MyApp', '[]', 0, '2020-03-28 00:58:45', '2020-03-28 00:58:45', '2021-03-28 06:28:45'),
('d5460639ebdc50ec9f395249cf5940dc1948f8bcc850b583aaa1769a1a8560dbea2e6aed1d63eccf', 14, 1, 'MyApp', '[]', 0, '2020-03-28 00:50:03', '2020-03-28 00:50:03', '2021-03-28 06:20:03'),
('dbd98558b14d195207545f503b35efbedeec0fd1889768d15b75164dbe40c80fd11e9a7ce76b4913', 14, 1, 'MyApp', '[]', 0, '2020-03-28 01:28:58', '2020-03-28 01:28:58', '2021-03-28 06:58:58'),
('e6ce3aeb36f6607053bbfccd404a8c7e55dd02f7a90225cf5cad260521f50d5b146099775457b385', 14, 1, 'MyApp', '[]', 0, '2020-03-28 02:11:40', '2020-03-28 02:11:40', '2021-03-28 07:41:40'),
('fd25c6990678c9305cd6c8726d218d1bdbde177041daf75901fe3015fb93bf2ed7efc540216da89e', 14, 1, 'MyApp', '[]', 0, '2020-03-28 01:29:05', '2020-03-28 01:29:05', '2021-03-28 06:59:05'),
('ffea88ea03a61b212a2ca76d0742a30e9b7c950e7b1de1f68a23440822d662d022c89b609f31ca3b', 14, 1, 'MyApp', '[]', 0, '2020-03-28 02:07:12', '2020-03-28 02:07:12', '2021-03-28 07:37:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'UhuecJN2NhQo7BPR53gnpEtNxq3BHbq2iz7w2vnB', 'http://localhost', 1, 0, 0, '2020-03-27 23:02:29', '2020-03-27 23:02:29'),
(2, NULL, 'Laravel Password Grant Client', 'x1VMXvcuTOBP82FzDQ8FlDjNyrtJZTkqLhY85d4x', 'http://localhost', 0, 1, 0, '2020-03-27 23:02:29', '2020-03-27 23:02:29');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-03-27 23:02:29', '2020-03-27 23:02:29');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-Not Verified, 1- Verified',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-Active, 2-Block',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `email`, `mobile`, `password`, `email_verified`, `status`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(14, 'shubham123', '', '', 'shubham@yopmail.com', '6666666666', '$2y$10$y6oLY78JUn4UxWb1/HnfVeKQ4hUvYzslY46FO9IliPd1V8YUXUOlK', 0, 1, 'nGxBcFcorek2DfOlgiRupdQEEkwqakH0Vb9OjB5VBNmL1BlNvrGZo4v4aR6T', NULL, '2020-03-27 07:31:49', '2020-03-27 07:31:49'),
(15, 'shubhamgupta', NULL, 'gupta', 'shubham1@yopmail.com', '8787878787', '$2y$10$xoJed5quoPdnEtgfS5aB6e9YFZD2oKQ/sGDjE6LkD4iuAa7zfMefO', 0, 1, 'QhugiMhH4yMtVz1s4qfB0fb693AoiSBNL5TaNIjrpqLDg3AGg3WoaxppdDnU', NULL, '2020-03-27 07:33:26', '2020-03-27 07:33:26'),
(16, 'sss', 'Shubham gupta', 'shubham', 'shubham2@yopmail.com', '7878787877', '$2y$10$WPKl10637Iv1s6hB3kxQfuO4SP6Zmg/GfUjT4P6lfMpvQWgP2jxIy', 0, 1, NULL, NULL, '2020-03-27 07:35:21', '2020-03-27 07:35:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
