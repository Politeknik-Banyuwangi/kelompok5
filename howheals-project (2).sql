-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2023 at 04:09 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `howheals-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_customer` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `nama`, `telepon`, `alamat`, `email`, `kode_customer`, `created_at`, `updated_at`) VALUES
(3, 'zahir', '0842578671', 'genteng', 'zahir123@gmail.com', '1345', '2023-01-03 05:02:46', '2023-01-03 05:02:46'),
(4, 'Rena Amalia Afifah', '08253867289', 'genteng', 'admin@gmail.com', '1657', '2023-01-03 05:03:06', '2023-01-03 05:36:51'),
(5, 'ahmad sauki', '08143287653', 'genteng', 'sauki123@gmail.com', '1346', '2023-01-03 05:06:34', '2023-01-03 05:37:11'),
(11, 'ahmad nico', '08243537789', 'genteng', 'nico123@gmail.com', '1347', '2023-01-03 20:21:11', '2023-01-03 20:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2020_05_21_100000_create_teams_table', 1),
(9, '2020_05_21_200000_create_team_user_table', 1),
(10, '2020_05_21_300000_create_team_invitations_table', 1),
(11, '2022_12_05_022107_create_sessions_table', 1),
(12, '2022_12_05_043335_create_customers_table', 1),
(13, '2022_12_20_085309_create_users_table', 1),
(14, '2022_12_25_124011_create_pelayanans_table', 1),
(15, '2022_12_27_074325_create_transaksis_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `pelayanans`
--

CREATE TABLE `pelayanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_sepatu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pelayanan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `estimasi_selesai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_customers` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelayanans`
--

INSERT INTO `pelayanans` (`id`, `type_sepatu`, `pelayanan`, `status`, `harga`, `tanggal_masuk`, `estimasi_selesai`, `id_customers`, `created_at`, `updated_at`) VALUES
(3, 'high heals', 'deep clean', 'selesai', 10000, '2022-12-12', '1 hari', 4, '2023-01-03 05:04:24', '2023-01-03 05:04:24'),
(4, 'sepatu futsal', 'deep clean', 'selesai', 20000, '2022-12-13', '1 hari', 3, '2023-01-03 05:04:50', '2023-01-03 05:04:50'),
(7, 'sepatu futsal', 'deep clean', 'selesai', 10000, '2022-12-18', '1 hari', 5, '2023-01-03 20:37:01', '2023-01-03 20:37:01');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'auth_token', '6b42414f0687d6a253f8fc4f063a8ceffc3aad7aff621b82aff921d25e47c6f1', '[\"*\"]', NULL, NULL, '2023-01-03 01:40:18', '2023-01-03 01:40:18'),
(2, 'App\\Models\\User', 2, 'auth_token', '7af3fd2046388bafd79c8aa918c7874b564fd5203dfc3967e99c4568089c7fcc', '[\"*\"]', NULL, NULL, '2023-01-03 01:49:18', '2023-01-03 01:49:18'),
(3, 'App\\Models\\User', 2, 'auth_token', '2157a89b708cd4e8e91f3155204a221f54489fbfd7c4d39e84c5a2e89bd8c1e2', '[\"*\"]', NULL, NULL, '2023-01-03 05:30:19', '2023-01-03 05:30:19'),
(4, 'App\\Models\\User', 14, 'auth_token', '6e343984bb6b59def7468beacc3140e74777ac3e4896a5214c899483412e4cb6', '[\"*\"]', NULL, NULL, '2023-01-03 05:33:02', '2023-01-03 05:33:02'),
(5, 'App\\Models\\User', 14, 'auth_token', '58600b186237b264e10c68bfd638e9d38758f5b103b966d7db875a419469bfc4', '[\"*\"]', NULL, NULL, '2023-01-03 05:33:31', '2023-01-03 05:33:31'),
(6, 'App\\Models\\User', 12, 'auth_token', '0e16632ec9933ed9fae7fc89dfb43cf6dade502b8cccd18fbd8975e7f284823e', '[\"*\"]', NULL, NULL, '2023-01-03 19:58:52', '2023-01-03 19:58:52'),
(7, 'App\\Models\\User', 1, 'auth_token', '2d526499dcdbdbf479a5c4578ffbbb556c0181eb1695993f0a3ec4da2bc8dff7', '[\"*\"]', NULL, NULL, '2023-01-03 20:09:42', '2023-01-03 20:09:42'),
(8, 'App\\Models\\User', 12, 'auth_token', 'f8eb1ec67b09080197193cd85a256df5adc4de05eef72d2a179eee711ab3b25f', '[\"*\"]', NULL, NULL, '2023-01-03 20:12:47', '2023-01-03 20:12:47'),
(9, 'App\\Models\\User', 18, 'auth_token', '7629bcb35f03f9aa5a66c5a4e53c9d35727f8ae5d6993a6272b6aecf857dfc90', '[\"*\"]', NULL, NULL, '2023-01-03 20:20:01', '2023-01-03 20:20:01'),
(10, 'App\\Models\\User', 18, 'auth_token', '86c89e2d83117b8dbf07c8bac5bd84d4027e70888a7d67681aa04c6555a45529', '[\"*\"]', NULL, NULL, '2023-01-03 20:24:03', '2023-01-03 20:24:03'),
(11, 'App\\Models\\User', 12, 'auth_token', '8505f73fcc6c85ead396975895914fe60f57451f567292cf2039658806e29c7e', '[\"*\"]', NULL, NULL, '2023-01-03 20:31:02', '2023-01-03 20:31:02'),
(12, 'App\\Models\\User', 12, 'auth_token', '5b93da2a1eae425194f2bf81a2cf3c93bde0b18f1af48f5ddcee45df6ecf7e16', '[\"*\"]', NULL, NULL, '2023-01-03 20:33:14', '2023-01-03 20:33:14'),
(13, 'App\\Models\\User', 12, 'auth_token', '823638a09737d6856a39ce8968d3fb4a6515fe7d4177f561bb0b2c1b4573fca7', '[\"*\"]', NULL, NULL, '2023-01-03 20:45:17', '2023-01-03 20:45:17'),
(14, 'App\\Models\\User', 12, 'auth_token', 'dc93376a5ca46a61ca4c9e89d305c8b576836b55da3742b9b3faafb8bcfdafa9', '[\"*\"]', NULL, NULL, '2023-01-03 20:46:46', '2023-01-03 20:46:46'),
(15, 'App\\Models\\User', 12, 'auth_token', '381509d8ff8913523c9e85c25192128d4bb0e875b6f9b77df2cbd2f5efc0a415', '[\"*\"]', NULL, NULL, '2023-01-03 20:48:09', '2023-01-03 20:48:09'),
(16, 'App\\Models\\User', 12, 'auth_token', '0077f8eef2d432c67010f2eead286939912daf024bf770ce0effb57bcd6e13b0', '[\"*\"]', NULL, NULL, '2023-01-03 20:50:55', '2023-01-03 20:50:55'),
(17, 'App\\Models\\User', 12, 'auth_token', 'e2c20cc5c8e22c33dfd815c910d3bca0fdb6f8e9d39a89f9acdc093e30c38337', '[\"*\"]', NULL, NULL, '2023-01-03 21:03:41', '2023-01-03 21:03:41'),
(18, 'App\\Models\\User', 12, 'auth_token', 'aca5c4d386420aa4569406909f920f45f3bf33e59361c30f87c8c729be4db8d2', '[\"*\"]', NULL, NULL, '2023-01-03 21:03:42', '2023-01-03 21:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('SPtL2B2IFTLTKdDE7RmEk2rEkpyDqik0vSFV10xt', 18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', 'YTo2OntzOjM6InVybCI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wZWxheWFuYW5zL2VkaXQvMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiI2amVlUE1jN05FTFhXSEJwYTNGNVJ1OGtuS0pGVUFRcHplQWJSZDdZIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxODtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRkL1NCQjNDMlpxV0wuR3M2RFprQUt1dVdkbUhLZHZoejJKTVRTU3VrZVExMUQyS0FmdnhzZSI7fQ==', 1672804627),
('Uaaq9k0FNZ1Ec6Hwsnf2tWfkIrPGgp0ta9pjTaXW', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZXhmSWlXUXlYeUlhbTV3VWRZaFZsUElqMFNJT3lGVEx3Z2tpY1d6TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wZWxheWFuYW5zL2VkaXQvMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkWUZvNlNqcGlyMi5Tc1hORGh1dTBXLmxtOE5IalRXZkoxT21qaC9FOUQyNXN0QjNVUnRNOW0iO30=', 1672807304);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 1, 'zahir\'s Team', 1, '2023-01-03 01:17:20', '2023-01-03 01:17:20'),
(2, 18, 'nico\'s Team', 1, '2023-01-03 20:17:51', '2023-01-03 20:17:51');

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `id_pelayanans` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`id`, `tanggal_masuk`, `total_bayar`, `tanggal_bayar`, `id_pelayanans`, `created_at`, `updated_at`) VALUES
(3, '2022-12-12', 20000, '2022-12-13', 4, '2023-01-03 05:05:30', '2023-01-03 05:05:30'),
(4, '2022-12-13', 15000, '2022-12-14', 3, '2023-01-03 05:05:48', '2023-01-03 05:05:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'zahir zakaria', 'zakaria15651@gmail.com', NULL, '$2y$10$YFo6Sjpir2.SsXNDhuu0W.lm8NHjTWfJ1Omjh/E9D25stB3URtM9m', NULL, '2023-01-03 01:17:20', '2023-01-03 01:17:20'),
(2, 'Rena Amalia Afifah', '1234', NULL, '$2y$10$VEtRN67CfKHJbsmr0VtJp.FOcyMQSNF0YJP3I3P.gOZkmKf0CosOO', NULL, '2023-01-03 01:17:53', '2023-01-03 01:17:53'),
(12, 'zahir', '1345', NULL, '$2y$10$K.8tLKtEuYMLlEJmuzyg9.gJ8gfRV8OHSlNjxrlfsa.4C3McdaBZm', NULL, '2023-01-03 05:02:46', '2023-01-03 05:02:46'),
(13, 'Rena Amalia Afifah', '1657', NULL, '$2y$10$ibjoxdb7rd1nRrhvawzjX.J9ZmGG0HVKwMJqz4Wt4nxehEyf8Q5ge', NULL, '2023-01-03 05:03:06', '2023-01-03 05:03:06'),
(14, 'ahmad sauki', '1346', NULL, '$2y$10$q5Xp2FP5PCZ2VvqGtK9osunfDUCpFSAJE.0vkszdSlbJlA0a1Rv.e', NULL, '2023-01-03 05:06:34', '2023-01-03 05:06:34'),
(16, 'saukiahmad', 'saukiahmad211@gmail.com', NULL, '$2y$10$IWwX.1ydgpdEv7iG232T5uwYYqdUW35dqtzBVgmgcAmGGs.87v.b.', NULL, '2023-01-03 07:18:38', '2023-01-03 07:18:38'),
(17, 'adi', '1658', NULL, '$2y$10$Tv1lEjKXRvJqErFMi4VcV.T.ySZko2mM5eG/G8Q2szop8jW1yBDGi', NULL, '2023-01-03 07:25:21', '2023-01-03 07:25:21'),
(18, 'nico', 'nico123@gmail.com', NULL, '$2y$10$d/SBB3C2ZqWL.Gs6DZkAKuuWdmHKdvhz2JMTSSukeQ11D2KAfvxse', NULL, '2023-01-03 20:17:51', '2023-01-03 20:17:51'),
(19, 'ahmad nico', '1347', NULL, '$2y$10$7sZ3eBef8YOZ8cWocqY/teizrKXTTW0Hu.wwXvawlVk.ar37rlQwu', NULL, '2023-01-03 20:21:11', '2023-01-03 20:21:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pelayanans`
--
ALTER TABLE `pelayanans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pelayanans_id_customers_foreign` (`id_customers`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksis_id_pelayanans_foreign` (`id_pelayanans`);

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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelayanans`
--
ALTER TABLE `pelayanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pelayanans`
--
ALTER TABLE `pelayanans`
  ADD CONSTRAINT `pelayanans_id_customers_foreign` FOREIGN KEY (`id_customers`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_id_pelayanans_foreign` FOREIGN KEY (`id_pelayanans`) REFERENCES `pelayanans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
