-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2022 at 11:21 AM
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
-- Database: `api-shamo`
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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_01_06_035346_create_sessions_table', 1),
(7, '2021_01_17_161413_create_products_table', 1),
(8, '2021_01_17_161417_create_product_categories_table', 1),
(9, '2021_01_17_161427_create_product_galleries_table', 1),
(10, '2021_01_17_161441_create_transactions_table', 1),
(11, '2021_01_18_014436_add_roles_and_username_to_users_table', 1),
(12, '2021_03_10_095130_create_transaction_items_table', 1),
(13, '2021_11_30_080356_add_onesignal_player_id_to_users_table', 2);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'authToken', 'e6a3f97f9ed4bd697c66a34569e30a5d887b18718edd09b96fb0fa08411904be', '[\"*\"]', NULL, '2022-10-07 05:01:31', '2022-10-07 05:01:31'),
(2, 'App\\Models\\User', 1, 'authToken', '925f40fe91ee9700771e50505443b2da6feb8d112bc41bbc4a6fd5cb2a7fc8b1', '[\"*\"]', NULL, '2022-10-07 05:04:25', '2022-10-07 05:04:25'),
(3, 'App\\Models\\User', 2, 'authToken', '496af5340c467fb8f0018cb441a5db3f6af3d0211ad9798ab3ef7909fa2af627', '[\"*\"]', NULL, '2022-10-07 05:21:35', '2022-10-07 05:21:35'),
(4, 'App\\Models\\User', 2, 'authToken', '99dbb60e2d97c09047feb54a61c4fe38e487b7796e82a00c0c9f1022b9107971', '[\"*\"]', NULL, '2022-10-07 06:16:17', '2022-10-07 06:16:17'),
(5, 'App\\Models\\User', 2, 'authToken', '66e998299355eb0419746b046b1e1bf9f7c7c00ba31e54e5f1c13ae5c39cfc63', '[\"*\"]', NULL, '2022-10-07 06:20:38', '2022-10-07 06:20:38'),
(6, 'App\\Models\\User', 2, 'authToken', '74b9ccb8c1091b2462d2e1ca4503698d9b6d85d72e09038e49b86fcfade7b5cb', '[\"*\"]', NULL, '2022-10-07 06:27:29', '2022-10-07 06:27:29'),
(7, 'App\\Models\\User', 2, 'authToken', 'f2e96d83dadbe6e3a4ca2d1e30037f2d85eca95a9061f6db06a90da4f98be0c3', '[\"*\"]', NULL, '2022-10-07 06:31:44', '2022-10-07 06:31:44'),
(8, 'App\\Models\\User', 2, 'authToken', 'caec67e507009246b9d809362ebb13a116bb06488a8daea3512a596b1d32bef6', '[\"*\"]', NULL, '2022-10-07 06:33:37', '2022-10-07 06:33:37'),
(9, 'App\\Models\\User', 2, 'authToken', 'aa674b530f601c3cc98a240aaddabe4528419c8e21a6df4026f723119927dbba', '[\"*\"]', NULL, '2022-10-07 06:39:46', '2022-10-07 06:39:46'),
(10, 'App\\Models\\User', 2, 'authToken', 'fbeb5a0eb5c3b8a80c97f9362a84ad0f201ec9cf53c791c8f7045cd24139d2ec', '[\"*\"]', NULL, '2022-10-07 06:55:41', '2022-10-07 06:55:41'),
(11, 'App\\Models\\User', 2, 'authToken', 'f2d0dc2d933a3e1a99ba6b1ec2eac8f736c594e7b977c1bfb8758bf69e91658a', '[\"*\"]', NULL, '2022-10-07 06:58:14', '2022-10-07 06:58:14'),
(12, 'App\\Models\\User', 2, 'authToken', '39f6023332bf4ccb7168e95d77f9403bfa46763a37d1f8e793cccbf69e347f36', '[\"*\"]', NULL, '2022-10-07 07:09:31', '2022-10-07 07:09:31'),
(13, 'App\\Models\\User', 2, 'authToken', '72e01bcf6c07ca6d74bc0b950fc244e71e5afd50bcb9e7f3c7bf0d762eda44da', '[\"*\"]', NULL, '2022-10-07 07:11:10', '2022-10-07 07:11:10'),
(14, 'App\\Models\\User', 2, 'authToken', '4b788fc5171dbb7c54905d884cb94979337ac14f8a04cc8f09fb2a81b286b1d8', '[\"*\"]', NULL, '2022-10-07 07:36:59', '2022-10-07 07:36:59'),
(15, 'App\\Models\\User', 2, 'authToken', '49abca794e2de8ba34e9c4ace4bb001fa403fe78eef75beb56c7d6d8ab2b99ab', '[\"*\"]', NULL, '2022-10-07 01:41:51', '2022-10-07 01:41:51'),
(16, 'App\\Models\\User', 2, 'authToken', 'd8d99ce71d46ed61c294795c2fd459b4678444b8a94bb54b836ba27bc8cb0f9f', '[\"*\"]', NULL, '2022-10-07 01:43:14', '2022-10-07 01:43:14'),
(17, 'App\\Models\\User', 2, 'authToken', '5fd2bdaa277257565a471ed83e509e4238925d4b375b5a4d5fc591c5a7b20ff7', '[\"*\"]', NULL, '2022-10-07 01:48:32', '2022-10-07 01:48:32'),
(18, 'App\\Models\\User', 2, 'authToken', '81f91d1444393b91fbc5a13d9acbecef2306ed34198ef7f4289db8fa8af278c4', '[\"*\"]', NULL, '2022-10-07 02:00:13', '2022-10-07 02:00:13'),
(19, 'App\\Models\\User', 2, 'authToken', 'e821717af02ceddfe6541f6d50eeb728c025b89c1bb07c0e0c8b2e605eea5af7', '[\"*\"]', NULL, '2022-10-07 02:11:30', '2022-10-07 02:11:30');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `tags`, `categories_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(19, 'Burger Big', 40000.00, 'Ini Burger', 'Burger', 8, '2022-10-07 01:23:17', '2022-10-07 06:54:04', '2022-10-07 01:23:17'),
(20, 'Pizza', 35000.00, 'Pizza', 'Pizza', 8, '2022-10-07 01:23:19', '2022-10-07 07:08:00', '2022-10-07 01:23:19'),
(21, 'SEPATU DURAMO SL 2.0', 59.00, 'Dari sesi pagi di studio yoga ke tugas seharian hingga sore hari bersama teman, kakimu akan tetap nyaman dan stylish dengan sepatu adidas ini. Padukan dengan celana ketat favoritmu untuk menghasilkan kesan atletik-kasual terbaik. Upper berbahan mesh membantumu tetap sejuk, sedangkan bantalan super-ringan memanjakan setiap langkahmu.Dibuat dengan rangkaian material hasil daur ulang, upper sepatu ini mengandung sedikitnya 50% konten hasil daur ulang. Produk ini mewakili hanya salah satu solusi kami untuk membantu mengakhiri pencemaran limbah plastik.', NULL, 9, NULL, '2022-10-07 01:25:48', '2022-10-07 01:25:48'),
(22, 'SEPATU EQ21 RUN', 86.00, 'Berlari dengan percaya diri menggunakan sepatu running adidas ini. Upper yang breathable membuat kakimu tetap fresh dalam sesi lari jarak jauh. Bantalan yang ringan membuat kakimu tetap nyaman ketika melangkah dari awal hingga pendaratan tumit terakhir.', NULL, 9, NULL, '2022-10-07 01:31:57', '2022-10-07 01:31:57'),
(23, 'SLIDES ADIDAS BY STELLA MCCARTNEY', 49.00, 'Tidak ada waktu yang salah untuk slide adidas by Stella McCartney ini, dan dengan desain minimalis dan mutakhir, tidak ada tempat yang salah pula. Bernuansa kemudahan, slides ini menghadirkan kenyamanan pada semua momen dalam keseharianmu. Ini semua berkat alas kaki Cloudfoam. Upper sepatu ini dibuat dengan benang tenun beperforma tinggi yang mengandung sedikitnya 50% Parley Ocean Plastic — limbah plastik reka ulang yang dikumpulkan dari pulau terpencil, pantai, komunitas pesisir, dan garis pantai, agar tidak mencemari laut kita. 50% kadar benang tenun lainnya dibuat dari poliester hasil daur ulang.', NULL, 9, NULL, '2022-10-07 01:38:33', '2022-10-07 01:38:33'),
(24, 'SEPATU TRAINER V', 80.00, 'Sepatu adidas ini mengombinasikan fit dan sensasi sepatu running dengan style dalam berbagai aktivitas. Upper dan kerah Geofit berlapis busa fleksibel menghasilkan fit yang pas dengan elastisitas yang sesuai, sedangkan bantalan ringan di bagian bawah kaki memberikan kenyamanan dari langkah pertama hingga terakhir dalam harimu.Dibuat dengan rangkaian material hasil daur ulang, upper sepatu ini mengandung sedikitnya 50% konten hasil daur ulang. Produk ini mewakili hanya salah satu solusi kami untuk membantu mengakhiri pencemaran limbah plastik.', NULL, 10, NULL, '2022-10-07 01:53:15', '2022-10-07 01:53:34'),
(25, 'SEPATU TRAIL RUNNING TERREX SOULSTRIDE', 92.00, 'Maksimalkan jarak larimu dengan sepatu trail running adidas Terrex ini. Midsole yang empuk dan bantalan pillow-like di bagian tumit membuat sepatu ini nyaman digunakan seharian dalam setiap langkah. Lug sol hybrid memungkinkan transisi yang mudah antara jalanan dan jalur trail. Sidewall tinggi yang dilengkapi dengan upper berbahan mesh khusus guna menambahkan stabilitas untuk menghasilkan pijakan mantap ke mana pun kamu berlari.', NULL, 11, NULL, '2022-10-07 02:03:22', '2022-10-07 02:03:22'),
(26, 'JERSEY REAL MADRID AWAY 22/23', 72.00, 'Selalu menjadi bagian dari fashion sepak bola. Jersey Real Madrid away dari adidas ini hadir dengan corak warna yang fresh dan dihiasi grafis menarik yang terinspirasi setrip yang diaplikasikan pada emblem klub. Didesain agar nyaman dipakai para fans, jersey ini dilengkapi AEROREADY yang menghilangkan kelembapan dan panel berbahan mesh. Versi bahan tenun dengan warna monokromatik dari emblem ternama yang menunjukkan kebanggaanmu.Dibuat dari 100% material hasil daur ulang, produk ini merepresentasikan hanya salah satu dari solusi kami untuk membantu mengakhiri pencemaran limbah plastik.', NULL, 12, NULL, '2022-10-07 02:08:56', '2022-10-07 02:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(8, 'Makanan', '2022-10-07 01:23:23', '2022-10-07 06:13:51', '2022-10-07 01:23:23'),
(9, 'Running', NULL, '2022-10-07 01:23:37', '2022-10-07 01:23:37'),
(10, 'Training', NULL, '2022-10-07 01:51:46', '2022-10-07 01:51:46'),
(11, 'Outdoor', NULL, '2022-10-07 02:02:28', '2022-10-07 02:02:28'),
(12, 'Jerseys', NULL, '2022-10-07 02:08:04', '2022-10-07 02:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `products_id`, `url`, `deleted_at`, `created_at`, `updated_at`) VALUES
(112, 18, 'public/gallery/hCaskcP2p52Pp7S918twuqFWLUtdlEoXjWixcNqW.png', NULL, '2022-10-07 06:14:47', '2022-10-07 06:14:47'),
(113, 18, 'public/gallery/PX3vJvwEdCETu07KlIC8U8X8tdSEG5P859A349aC.png', NULL, '2022-10-07 06:14:57', '2022-10-07 06:14:57'),
(114, 19, 'public/gallery/PsWjEaDIYIqoeIPiawSqxjPx844un8BEIGqjcCEm.jpg', '2022-10-07 06:57:14', '2022-10-07 06:54:29', '2022-10-07 06:57:14'),
(115, 19, 'public/gallery/On9whpz5ORv3SPtnDqFhPSwBFfPL38tS4RZc63aC.jpg', NULL, '2022-10-07 06:57:23', '2022-10-07 06:57:23'),
(116, 20, 'public/gallery/hWotaKmAslAy5Pq0pXeuOCHn8T7IBZkkqFEO42I4.jpg', NULL, '2022-10-07 07:10:21', '2022-10-07 07:10:21'),
(117, 21, 'public/gallery/lDIbcUxqXxmllsfWwsuCPlP9untvK6xMsdMgdT5S.webp', NULL, '2022-10-07 01:27:10', '2022-10-07 01:27:10'),
(118, 21, 'public/gallery/uMjkBnhhz8rGKRxmvgjGWs02KRvzxAxp3Y40GUm6.webp', NULL, '2022-10-07 01:29:21', '2022-10-07 01:29:21'),
(119, 21, 'public/gallery/mRcRvp64amSxuROvs15qCuqJRQCYWLF50I7E88kW.webp', NULL, '2022-10-07 01:29:35', '2022-10-07 01:29:35'),
(120, 22, 'public/gallery/aNfRCPsj0j2Jid5O7RhEfVkALdBFuDEDlxBZQey7.webp', NULL, '2022-10-07 01:40:25', '2022-10-07 01:40:25'),
(121, 22, 'public/gallery/aUfYTUCsbojrLbyiMJ6qduPj3jsXNy2aDLBx4R6P.webp', NULL, '2022-10-07 01:40:38', '2022-10-07 01:40:38'),
(122, 22, 'public/gallery/cr1AwwGCwgzvWmLjBlT5pAHCmA5CqLti9xt62Tme.webp', NULL, '2022-10-07 01:40:46', '2022-10-07 01:40:46'),
(123, 23, 'public/gallery/oJtcCbzyjkPDOfr1gyd0DzKHdLtqtexk2R1TKnCI.webp', NULL, '2022-10-07 01:46:55', '2022-10-07 01:46:55'),
(124, 23, 'public/gallery/jMDz98airiMNzDnNSVz5Verfbtxxl5ND49RlioSq.webp', NULL, '2022-10-07 01:47:12', '2022-10-07 01:47:12'),
(125, 23, 'public/gallery/lBoLHvWzVU64xHqYwim2d8cFZbXitaG5nZxvvE87.webp', NULL, '2022-10-07 01:47:28', '2022-10-07 01:47:28'),
(126, 24, 'public/gallery/NlfFuEG9mBfHaO13kxdRZrXQ9EJRF39hscBEc1Ss.webp', NULL, '2022-10-07 01:54:30', '2022-10-07 01:54:30'),
(127, 24, 'public/gallery/voVFkFY4Al55xpHiuUyIsXudRgouTvhfcXMaahk4.jpg', NULL, '2022-10-07 01:59:40', '2022-10-07 01:59:40'),
(128, 24, 'public/gallery/qxzQV1RLRNB6yD6Z1RAbYS3pYj58UiPxTfbp9tlo.jpg', NULL, '2022-10-07 01:59:49', '2022-10-07 01:59:49'),
(129, 25, 'public/gallery/QE3x9wHHkKfrtSamDIVWrjhR4FoJRYq8HUMp5UAd.webp', NULL, '2022-10-07 02:05:07', '2022-10-07 02:05:07'),
(130, 25, 'public/gallery/XcXrXRCTF19Ar4G9wqJJnBnqUKDYPl1zkGxz2hct.webp', NULL, '2022-10-07 02:05:19', '2022-10-07 02:05:19'),
(131, 25, 'public/gallery/rBQQwqdJZ5dmlLpcnmqdlzZbOHDGYjGpFdwk6RFa.webp', NULL, '2022-10-07 02:05:34', '2022-10-07 02:05:34'),
(132, 26, 'public/gallery/SMg0sB9J3wjkIvHyh9xqGMypK1rydC7N9kRuyALk.webp', NULL, '2022-10-07 02:10:31', '2022-10-07 02:10:31'),
(133, 26, 'public/gallery/Al7KmgRaRa0HnfdLeOvOEMIKiICIYXAlD0o9r7YZ.jpg', NULL, '2022-10-07 02:10:40', '2022-10-07 02:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3I5qv4IfGJ3ej0SmDxURWMWEuHokUWK8VLhy0DVz', 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo3OntzOjM6InVybCI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly9sb2NhbGhvc3QvZGFzaGJvYXJkL3Byb2R1Y3QvMjYvZ2FsbGVyeSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiJZT0xJRE90c3NONmY2clpWQmVSMGZkZGNES2JHeE1jZ3g0Y1lxWkpxIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkRzE1YVFEbHYxR3VmcDJMUU52WGVYdUFIdzhneWd5Y01aRXh1b2dRUDZRc3pzL3pKV0R1YTIiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEcxNWFRRGx2MUd1ZnAyTFFOdlhlWHVBSHc4Z3lneWNNWkV4dW9nUVA2UXN6cy96SldEdWEyIjt9', 1665133842),
('QP3mPFv57RGIveGO7Dtg46tsBqkbsX9OlkvaEmXj', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.34', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiblBpa25NUmozZnFnUklVdlpMbUVZSzRZbVU0M2xBUmNqcHBSck1ZayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9sb2NhbGhvc3QvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1665149137);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` double(8,2) NOT NULL DEFAULT 0.00,
  `shipping_price` double(8,2) NOT NULL DEFAULT 0.00,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MANUAL',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_items`
--

CREATE TABLE `transaction_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) NOT NULL,
  `products_id` bigint(20) NOT NULL,
  `transactions_id` bigint(20) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_items`
--

INSERT INTO `transaction_items` (`id`, `users_id`, `products_id`, `transactions_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 2, '2021-04-15 02:11:14', '2021-04-15 02:11:14'),
(2, 2, 2, 1, 2, '2021-04-15 02:11:14', '2021-04-15 02:11:14'),
(3, 2, 3, 1, 2, '2021-04-15 02:11:14', '2021-04-15 02:11:14'),
(4, 2, 1, 2, 2, '2021-04-15 02:30:45', '2021-04-15 02:30:45'),
(5, 2, 2, 2, 2, '2021-04-15 02:30:45', '2021-04-15 02:30:45'),
(6, 2, 3, 2, 2, '2021-04-15 02:30:45', '2021-04-15 02:30:45'),
(7, 2, 1, 3, 2, '2021-04-15 02:32:37', '2021-04-15 02:32:37'),
(8, 3, 5, 4, 1, '2021-05-05 04:53:30', '2021-05-05 04:53:30'),
(9, 3, 1, 5, 1, '2021-05-05 04:54:07', '2021-05-05 04:54:07'),
(10, 3, 2, 6, 1, '2021-05-05 05:19:05', '2021-05-05 05:19:05'),
(11, 3, 6, 7, 1, '2021-05-05 05:44:39', '2021-05-05 05:44:39'),
(12, 3, 3, 7, 1, '2021-05-05 05:44:39', '2021-05-05 05:44:39'),
(13, 3, 2, 8, 1, '2021-05-05 05:48:44', '2021-05-05 05:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `onesignal_player_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `roles`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `onesignal_player_id`) VALUES
(2, 'rachman', 'rachman@rachman.dev', 'rachmandev', 'ADMIN', NULL, '$2y$10$G15aQDlv1Gufp2LQNvXeXuAHw8gygycMZExuogQP6Qszs/zJWDua2', NULL, NULL, NULL, NULL, NULL, '2022-10-07 05:21:10', '2022-10-07 05:21:10', NULL);

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
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_items`
--
ALTER TABLE `transaction_items`
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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaction_items`
--
ALTER TABLE `transaction_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
