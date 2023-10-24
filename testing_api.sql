-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2023 at 05:38 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensis`
--

CREATE TABLE `absensis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `information` text NOT NULL,
  `desc_information` text DEFAULT NULL,
  `minggu` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `absensis`
--

INSERT INTO `absensis` (`id`, `student_id`, `date`, `information`, `desc_information`, `minggu`, `created_at`, `updated_at`) VALUES
(14, 6, '2023-07-13', 'hadir', NULL, '1', '2023-07-25 06:01:48', '2023-07-25 06:01:48'),
(15, 6, '2023-07-14', 'hadir', NULL, '1', '2023-07-25 07:04:59', '2023-07-25 07:04:59'),
(16, 6, '2023-07-15', 'hadir', NULL, '2', '2023-07-25 07:04:59', '2023-07-25 07:04:59'),
(17, 6, '2023-07-16', 'hadir', NULL, '2', '2023-07-25 07:04:59', '2023-07-25 07:04:59'),
(18, 6, '2023-07-17', 'hadir', NULL, '3', '2023-07-25 07:04:59', '2023-07-25 07:04:59'),
(19, 6, '2023-07-18', 'sakit', NULL, '3', '2023-07-25 07:04:59', '2023-07-25 07:04:59'),
(20, 6, '2023-07-19', 'sakit', NULL, '2', '2023-07-25 07:04:59', '2023-07-25 07:04:59'),
(21, 6, '2023-07-20', 'hadir', NULL, '4', '2023-07-25 07:04:59', '2023-07-25 07:04:59'),
(22, 6, '2023-07-21', 'alpa', NULL, '4', '2023-07-25 07:04:59', '2023-07-25 07:04:59'),
(23, 6, '2023-06-08', 'hadir', NULL, '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_17_090000_create_products_table', 2),
(6, '2023_07_27_091948_add_username_to_users_table', 3),
(7, '2023_07_30_083940_create_poli_table', 4),
(8, '2023_07_30_084023_create_pegawai_table', 4),
(9, '2023_07_30_084028_create_pasien_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pasien` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pegawai` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', 'e12c148778d5139abb7b87cad6286ef2855c3f62256e196e303763c78f59d4bb', '[\"*\"]', NULL, NULL, '2023-07-16 21:46:23', '2023-07-16 21:46:23'),
(2, 'App\\Models\\User', 2, 'auth_token', '95957fcfbb17a7f6460f0bf94acc2a08bb461d62309308e6ceaf148c453eeb5c', '[\"*\"]', NULL, NULL, '2023-07-16 21:50:13', '2023-07-16 21:50:13'),
(3, 'App\\Models\\User', 3, 'auth_token', '1f2d3a822782a45868e8664d90d477566013d5298abbead3026adaa3f7434179', '[\"*\"]', NULL, NULL, '2023-07-16 21:50:49', '2023-07-16 21:50:49'),
(4, 'App\\Models\\User', 4, 'auth_token', '73b474e410366d6ce344f1e334a9198681531da195a5704c4147dca30b89bb1b', '[\"*\"]', '2023-07-16 21:52:04', NULL, '2023-07-16 21:51:42', '2023-07-16 21:52:04'),
(5, 'App\\Models\\User', 4, 'auth_token', 'c3d82d5aaaf726d3566cc66f25aeb384dc41a5427b1f85aa1c3e6f056139fd80', '[\"*\"]', '2023-08-20 22:44:25', NULL, '2023-07-16 21:58:23', '2023-08-20 22:44:25'),
(6, 'App\\Models\\User', 4, 'auth_token', 'd15b9989ed34dd1f37b4dc1962ac5250c775abf35aef5f8d1ba13cc571cbc02b', '[\"*\"]', NULL, NULL, '2023-07-20 11:22:20', '2023-07-20 11:22:20'),
(7, 'App\\Models\\User', 4, 'auth_token', '6c3c4f1213658eff6a9beb8f79f92b460b4857f7f4dcccfc80c0a5ab07325233', '[\"*\"]', NULL, NULL, '2023-07-20 11:27:42', '2023-07-20 11:27:42'),
(8, 'App\\Models\\User', 4, 'auth_token', '2cbffc4760831ba6bbefb5e7a29876807d766925ad252d2e0f392de8c136d194', '[\"*\"]', NULL, NULL, '2023-07-20 11:29:06', '2023-07-20 11:29:06'),
(9, 'App\\Models\\User', 4, 'auth_token', '5450c5e51dcb2f86a1d8f02db5bfdf387b1231ab8bcf3b4724a0999472918f43', '[\"*\"]', NULL, NULL, '2023-07-20 11:29:23', '2023-07-20 11:29:23'),
(10, 'App\\Models\\User', 4, 'auth_token', 'ec6e72d94dbf2bdb836c28d156335f897abb190779d05dc196ce6aabea68d89d', '[\"*\"]', '2023-07-20 11:33:20', NULL, '2023-07-20 11:33:19', '2023-07-20 11:33:20'),
(11, 'App\\Models\\User', 4, 'auth_token', '93f0a201389de2d9a8067376ea53b7473a5b8f55432bcdbacb496e925bb1ecdd', '[\"*\"]', '2023-07-20 11:35:37', NULL, '2023-07-20 11:35:36', '2023-07-20 11:35:37'),
(12, 'App\\Models\\User', 4, 'auth_token', 'c79f7935afa7eeb98c37b580bd38bb68cd2f82e661674e9d09779663de4e3026', '[\"*\"]', NULL, NULL, '2023-07-20 11:39:41', '2023-07-20 11:39:41'),
(13, 'App\\Models\\User', 4, 'auth_token', '72253a5031e4eb2a44977a5879e4861a7d12614b1fb6560cd5065b0616e3e32c', '[\"*\"]', '2023-07-20 11:41:56', NULL, '2023-07-20 11:41:54', '2023-07-20 11:41:56'),
(14, 'App\\Models\\User', 4, 'auth_token', '0769bc5b372b6918d42c1bf6c3d71e7819b0e0a1c611574d782a7cb7fe382709', '[\"*\"]', NULL, NULL, '2023-07-21 21:22:20', '2023-07-21 21:22:20'),
(15, 'App\\Models\\User', 4, 'auth_token', '8b8165281c05e8a4d46599be3b8ec1e36e01d43a588db276859c419dafe8d785', '[\"*\"]', NULL, NULL, '2023-07-21 21:30:26', '2023-07-21 21:30:26'),
(16, 'App\\Models\\User', 4, 'auth_token', '7fac466a1f9605119f67d54e011a004b2fb4a06cfdf1354ed0cfeb57810bbe58', '[\"*\"]', NULL, NULL, '2023-07-21 21:31:31', '2023-07-21 21:31:31'),
(17, 'App\\Models\\User', 4, 'auth_token', 'a46f774e3b22ffc4ea0fe4f3bb300bb81b04fe6fd10c0f4e7d15ac42c66fdbac', '[\"*\"]', NULL, NULL, '2023-07-21 21:32:05', '2023-07-21 21:32:05'),
(18, 'App\\Models\\User', 4, 'auth_token', 'e9f56d6920b8088b7a3953d9e1a970478144c541d51a8ade2439d7586072c585', '[\"*\"]', NULL, NULL, '2023-07-21 21:33:38', '2023-07-21 21:33:38'),
(19, 'App\\Models\\User', 4, 'auth_token', 'd6843fab89fb03ee074885174a603587aebbb288c745a6f904d0849e10054c9f', '[\"*\"]', NULL, NULL, '2023-07-21 21:34:04', '2023-07-21 21:34:04'),
(20, 'App\\Models\\User', 4, 'auth_token', '640f4bea0961ea7c901b29fa88cb8efda0fbfd0736fd583293999bd73dd4c232', '[\"*\"]', NULL, NULL, '2023-07-21 21:34:29', '2023-07-21 21:34:29'),
(21, 'App\\Models\\User', 4, 'auth_token', '20c4f0f71617739f9a433fc5968ec66213ea11d00b07a0a17b4dc6f1f5ccc0c3', '[\"*\"]', '2023-07-21 21:35:00', NULL, '2023-07-21 21:34:58', '2023-07-21 21:35:00'),
(22, 'App\\Models\\User', 4, 'auth_token', 'c62d09b52cf19d0d034bad32702b2b067248a25ee85e106eaa59433a63cb74fd', '[\"*\"]', '2023-07-21 21:39:23', NULL, '2023-07-21 21:39:21', '2023-07-21 21:39:23'),
(23, 'App\\Models\\User', 4, 'auth_token', 'deb282a086d40ee765da21899316634ccc8caa8d114a4c438fe3dffd3d0b781e', '[\"*\"]', '2023-07-21 21:42:44', NULL, '2023-07-21 21:42:43', '2023-07-21 21:42:44'),
(24, 'App\\Models\\User', 4, 'auth_token', 'cce88b4638833c53a661b921f438841aa8c7143282a4dea8b1fd33c5d1db670d', '[\"*\"]', '2023-07-22 05:59:15', NULL, '2023-07-22 05:59:14', '2023-07-22 05:59:15'),
(25, 'App\\Models\\User', 4, 'auth_token', '73829778255ea1d4500e1573c6f7a1e9c802ceeabfa64b323b0fda6c86e3c24b', '[\"*\"]', '2023-07-22 06:48:24', NULL, '2023-07-22 06:48:21', '2023-07-22 06:48:24'),
(26, 'App\\Models\\User', 4, 'auth_token', '61a3f2059709f26a63686876d6ba40201c0a4249fab32911638cf92202ced57d', '[\"*\"]', '2023-07-24 02:17:55', NULL, '2023-07-24 02:17:53', '2023-07-24 02:17:55'),
(27, 'App\\Models\\User', 4, 'auth_token', 'dbfb4ab17d04c0534455d3ff9aca10e9161ee157f7341f5e2d68d791fa228f90', '[\"*\"]', '2023-07-24 02:23:35', NULL, '2023-07-24 02:23:34', '2023-07-24 02:23:35'),
(28, 'App\\Models\\User', 4, 'auth_token', '65c8f458b27e7f5b278e60eda4947af07f5db34a4327d043e8e386f374751680', '[\"*\"]', '2023-07-24 03:02:19', NULL, '2023-07-24 03:02:17', '2023-07-24 03:02:19'),
(29, 'App\\Models\\User', 4, 'auth_token', '1298ddb1e157cc1852962a203a576371b643d98a8d3b00a78f515263362b2b0e', '[\"*\"]', NULL, NULL, '2023-07-27 02:23:30', '2023-07-27 02:23:30'),
(30, 'App\\Models\\User', 4, 'auth_token', '5ad77216d30efa7a48ea7bac70ab5bbbdcdb3bae9c344bd01a2df7875108c0a1', '[\"*\"]', NULL, NULL, '2023-07-27 02:38:13', '2023-07-27 02:38:13'),
(31, 'App\\Models\\User', 4, 'auth_token', '19296e5194e178adba863e3e98be9e0a451b584bd3cdd5c89f9dcd581731cbed', '[\"*\"]', NULL, NULL, '2023-07-27 08:34:43', '2023-07-27 08:34:43'),
(32, 'App\\Models\\User', 4, 'auth_token', '086c75946bcd6448903cd63f8643943c0054aa23f2c0168551b7ad7498e340bf', '[\"*\"]', NULL, NULL, '2023-07-27 08:35:15', '2023-07-27 08:35:15'),
(33, 'App\\Models\\User', 4, 'auth_token', '729c20e918322cf0720bfce4f12e7bfdd45466a2b7ac454cceab81ba083e490b', '[\"*\"]', NULL, NULL, '2023-07-27 08:35:40', '2023-07-27 08:35:40'),
(34, 'App\\Models\\User', 4, 'auth_token', 'f32a0e67f740f212c2745069d3c1b941f19441f8ddfa17dac0b8c866d294be09', '[\"*\"]', NULL, NULL, '2023-07-27 08:53:26', '2023-07-27 08:53:26'),
(35, 'App\\Models\\User', 4, 'auth_token', '88b53d748cae02e9fca17499253c12b4b84d306678350fd6ab7799d905d3c37f', '[\"*\"]', NULL, NULL, '2023-07-27 08:54:41', '2023-07-27 08:54:41'),
(36, 'App\\Models\\User', 4, 'auth_token', 'ead65b5e08e493ffbcd1e91a623cc5d24c0b95ccf8a9866e7341ca1a899a3087', '[\"*\"]', NULL, NULL, '2023-07-27 08:54:51', '2023-07-27 08:54:51'),
(37, 'App\\Models\\User', 4, 'auth_token', 'a1835983385a904fc669ec2f94005bde1628d8cdaeb5463708ff3462d69fa0b2', '[\"*\"]', NULL, NULL, '2023-07-27 08:55:04', '2023-07-27 08:55:04'),
(38, 'App\\Models\\User', 4, 'auth_token', 'e9d45111914d1355def47fe30db2f776c5abe91f21945aa533dc05c37d47dbd8', '[\"*\"]', NULL, NULL, '2023-07-27 08:57:10', '2023-07-27 08:57:10'),
(39, 'App\\Models\\User', 4, 'auth_token', '4bcb02ac4b602f503a42018d652856187b78e2f2ce588daa93da73f19e842cbb', '[\"*\"]', NULL, NULL, '2023-07-27 09:05:29', '2023-07-27 09:05:29'),
(40, 'App\\Models\\User', 4, 'auth_token', 'd9b26e3e1f6aeaca2aa1adf3cbde22430386731ab432ab6d9b4127a51f4d3af6', '[\"*\"]', NULL, NULL, '2023-07-27 09:15:29', '2023-07-27 09:15:29'),
(41, 'App\\Models\\User', 4, 'auth_token', '601f22c3ad74e2a03b6f2748bcadc496656d96c7b7d71b3c48ea6deb4b4a9659', '[\"*\"]', NULL, NULL, '2023-07-27 09:16:06', '2023-07-27 09:16:06'),
(42, 'App\\Models\\User', 4, 'auth_token', '1f53c09c282ae12f0c7e1f6dbeb27de1ec3ffd665a248398724c0bcf991ea75e', '[\"*\"]', NULL, NULL, '2023-07-27 09:16:36', '2023-07-27 09:16:36'),
(43, 'App\\Models\\User', 4, 'auth_token', '988e0cdafde24ad44467beb826ae0e787abf0c65def9e1de123a7b4ad853f3bf', '[\"*\"]', NULL, NULL, '2023-07-27 09:16:59', '2023-07-27 09:16:59'),
(44, 'App\\Models\\User', 4, 'auth_token', '6a55b0ceefa72e8f12a0288ba2ff3cb3ba3daf7f0b685d5649e372d194da9e39', '[\"*\"]', NULL, NULL, '2023-07-27 20:39:17', '2023-07-27 20:39:17'),
(45, 'App\\Models\\User', 4, 'auth_token', 'edab4bdc262d79ae0f609d3b71d12550175ccfc685f7820b47153a7112ef53e4', '[\"*\"]', NULL, NULL, '2023-07-27 20:39:20', '2023-07-27 20:39:20'),
(46, 'App\\Models\\User', 4, 'auth_token', '19065b744a1cf0daa4d4250063d778f61eecca9c59105b8f0b41bda0931d8ad1', '[\"*\"]', NULL, NULL, '2023-07-27 22:51:02', '2023-07-27 22:51:02'),
(47, 'App\\Models\\User', 4, 'auth_token', 'a7a0e7a7edae72139acc2ab262ba29594e2ea98cf6f57717bb9539503d937c5e', '[\"*\"]', NULL, NULL, '2023-07-27 23:07:32', '2023-07-27 23:07:32'),
(48, 'App\\Models\\User', 4, 'auth_token', 'aa3d6a6e41aa9b03c1e04e787802201edfc8a6ae69dea41a08364b547c47ad6c', '[\"*\"]', NULL, NULL, '2023-07-27 23:07:44', '2023-07-27 23:07:44'),
(49, 'App\\Models\\User', 4, 'auth_token', '6396f3ffc9467669519a427587f98e705ef35b3765cd2df6952b7b23dc9c7056', '[\"*\"]', NULL, NULL, '2023-07-27 23:07:50', '2023-07-27 23:07:50'),
(50, 'App\\Models\\User', 4, 'auth_token', 'a6b70c78bc860d77202dc5a086651050034f90260cc1954ae7e12f99c4d84c34', '[\"*\"]', NULL, NULL, '2023-07-27 23:10:10', '2023-07-27 23:10:10'),
(51, 'App\\Models\\User', 4, 'auth_token', '15bd2c9e96115beef4f90ce6ca3ed31e86865b5a2adbbaa96c419b27cc9da777', '[\"*\"]', NULL, NULL, '2023-07-27 23:10:40', '2023-07-27 23:10:40'),
(52, 'App\\Models\\User', 4, 'auth_token', 'a72d7f82a63fddd4a72569d733ea9e74f1087b622b6f709a789b6fcabb12417e', '[\"*\"]', NULL, NULL, '2023-07-27 23:11:22', '2023-07-27 23:11:22'),
(53, 'App\\Models\\User', 4, 'auth_token', '82bfb4c0b94d461894a67f9bc8d44adab2bde70986c26a37c1bbf7f14d52698c', '[\"*\"]', NULL, NULL, '2023-07-30 01:25:37', '2023-07-30 01:25:37'),
(54, 'App\\Models\\User', 4, 'auth_token', 'bd24e68f3de3d01c2985975f6d37407bbd355dca6a305a631aee1c619d95e4c3', '[\"*\"]', NULL, NULL, '2023-08-20 19:44:00', '2023-08-20 19:44:00'),
(55, 'App\\Models\\User', 4, 'auth_token', '24169f1bb3f6df5cb397a6e2c9357c5da69bb3acc1752f70a9b86b6e54b60771', '[\"*\"]', NULL, NULL, '2023-08-20 19:44:50', '2023-08-20 19:44:50'),
(56, 'App\\Models\\User', 4, 'auth_token', '4f480715503e6a58782002a5f6217df58bd6856efec8fba2a2a4642868d41ec2', '[\"*\"]', NULL, NULL, '2023-08-20 19:45:00', '2023-08-20 19:45:00'),
(57, 'App\\Models\\User', 4, 'auth_token', '0f0d17a8141a45dd77287dceb1868f7b515eda69f594e36d82628aa91fec3154', '[\"*\"]', '2023-08-20 22:44:32', NULL, '2023-08-20 20:29:34', '2023-08-20 22:44:32'),
(58, 'App\\Models\\User', 4, 'auth_token', 'd48837c09550ed5bf51be64ecf15505c6a088537c668b505017fde8c4cad4709', '[\"*\"]', NULL, NULL, '2023-09-18 07:39:48', '2023-09-18 07:39:48'),
(59, 'App\\Models\\User', 4, 'auth_token', '1252f728acc755ce88a0192206ad1e75225d6505331334b8a5e34cf9a697ecab', '[\"*\"]', NULL, NULL, '2023-09-18 07:40:25', '2023-09-18 07:40:25'),
(60, 'App\\Models\\User', 4, 'auth_token', '053909becd490d8ba13af00b9e5bfef896c2b33edbdacc8b3465b482c30ce2a4', '[\"*\"]', NULL, NULL, '2023-09-18 07:40:52', '2023-09-18 07:40:52'),
(61, 'App\\Models\\User', 4, 'auth_token', '842eb2ebc21ad0df879d79156af8a3ad570545547438c6257c54b612898a1570', '[\"*\"]', '2023-09-19 01:12:52', NULL, '2023-09-18 19:46:20', '2023-09-19 01:12:52'),
(62, 'App\\Models\\User', 4, 'auth_token', 'b7cf1ea107a41cda925a8c80ad6bd5c085f7f4d2fa5e9ddf2b10eeaf3968a3fe', '[\"*\"]', NULL, NULL, '2023-09-19 00:57:44', '2023-09-19 00:57:44'),
(63, 'App\\Models\\User', 4, 'auth_token', '7eab44dbeacc4500573a7e15e6215f7c9e602fa957851688b886b0bd40a53b5e', '[\"*\"]', NULL, NULL, '2023-09-19 00:58:18', '2023-09-19 00:58:18'),
(64, 'App\\Models\\User', 4, 'auth_token', '7c071ef5e09fd1c0845186831e2053d3d8b3be2e131236bb9d5ed4ddce5d846a', '[\"*\"]', NULL, NULL, '2023-09-19 00:59:04', '2023-09-19 00:59:04'),
(65, 'App\\Models\\User', 4, 'auth_token', '04ec57f4864972088b30df03dd6c32b8e686c7687ee4e765e66697152ca8fe68', '[\"*\"]', NULL, NULL, '2023-09-19 00:59:55', '2023-09-19 00:59:55'),
(66, 'App\\Models\\User', 4, 'auth_token', '29a89877b10108d0e431e620b1b25c014e1e3620d25cd60b1f622732ea1665b2', '[\"*\"]', NULL, NULL, '2023-09-19 01:00:41', '2023-09-19 01:00:41'),
(67, 'App\\Models\\User', 4, 'auth_token', 'c7949081b661f746c65cf34c35f7fdbdaabd917b0d1f46221b2f5f8f2cb3b445', '[\"*\"]', NULL, NULL, '2023-09-19 01:01:13', '2023-09-19 01:01:13'),
(68, 'App\\Models\\User', 4, 'auth_token', '9966d1b3ba1d8c2602cf5a0118f1174267fc1734a2a18052eb4ecaf1be40c673', '[\"*\"]', NULL, NULL, '2023-09-19 01:03:03', '2023-09-19 01:03:03'),
(69, 'App\\Models\\User', 4, 'auth_token', '22b8a8fcf73020110022289f5e70a59fcd22ad24baee35f75bf908ab30f8e89d', '[\"*\"]', '2023-09-19 01:22:23', NULL, '2023-09-19 01:04:28', '2023-09-19 01:22:23'),
(70, 'App\\Models\\User', 4, 'auth_token', '586f737b40150ee56828dd18e8eec2db9740424b95c964f8884d89801a20b94e', '[\"*\"]', NULL, NULL, '2023-09-19 01:12:47', '2023-09-19 01:12:47'),
(71, 'App\\Models\\User', 4, 'auth_token', 'f3ac62726ee4193ba4eeb259748a7425c07007da46c8aadd2ef9ca60bcef9e76', '[\"*\"]', '2023-09-19 01:38:02', NULL, '2023-09-19 01:26:23', '2023-09-19 01:38:02'),
(72, 'App\\Models\\User', 4, 'auth_token', 'ba711cb5194b746856bcd3a879fbad29949f4cc9e24272350f6e42690c4f45a6', '[\"*\"]', '2023-09-19 01:44:26', NULL, '2023-09-19 01:44:24', '2023-09-19 01:44:26'),
(73, 'App\\Models\\User', 4, 'auth_token', 'e41ffeb6183b00b7744ac04c46ea2d3c90f210cc6757a0d40dfb5d64c75e13a4', '[\"*\"]', '2023-09-19 01:49:06', NULL, '2023-09-19 01:48:55', '2023-09-19 01:49:06'),
(74, 'App\\Models\\User', 4, 'auth_token', '2b8b6a191b5f0d21504b9c5e7b6ab9797285cd7715a2ce4e09d22f3a2c58bef3', '[\"*\"]', '2023-09-25 10:05:05', NULL, '2023-09-25 10:04:48', '2023-09-25 10:05:05'),
(75, 'App\\Models\\User', 4, 'auth_token', '3c7c4d6d98f2b6b981d1f6cd94558c551e354cab870edc82d3d1c47645771c7f', '[\"*\"]', '2023-10-23 19:56:02', NULL, '2023-10-23 19:54:36', '2023-10-23 19:56:02');

-- --------------------------------------------------------

--
-- Table structure for table `poli`
--

CREATE TABLE `poli` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_poli` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `poli`
--

INSERT INTO `poli` (`id`, `nama_poli`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'ABCD', 'lorem ipsum', '2023-08-11 03:34:15', '2023-08-19 03:34:18'),
(2, 'New', NULL, '2023-08-17 03:34:42', '2023-08-23 03:34:50'),
(3, 'Poli', NULL, '2023-09-08 03:34:56', '2023-09-17 03:35:01'),
(4, 'Testing', NULL, '2023-09-19 03:35:16', '2023-09-19 03:35:18'),
(5, 'Demo', NULL, '2023-09-19 03:35:30', '2023-09-19 03:35:31'),
(6, 'Demo Poli', 'lorem ipsum in', '2023-09-19 03:35:40', '2023-09-19 03:35:47');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `stok` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_id`, `product_name`, `price`, `stok`, `image`, `created_at`, `updated_at`) VALUES
(1, '138ec000-f981-4f3e-9fd7-6ebd0dc4f04d', 's1fJ9jcJg7tXQiYuJMdE', 50000, 10, 'default-product.png', '2023-07-17 02:27:03', '2023-07-17 02:27:03'),
(2, '49b77fb0-e1ea-4110-be6f-a52ca115e9e7', 'ygXpAAEfuuXCft6f1Wgf', 50000, 10, 'default-product.png', '2023-07-17 02:27:03', '2023-07-17 02:27:03'),
(3, '1ac1ba94-84c0-4378-9ddb-325c2332f84d', 'qPNk3PUPDJWw7zAzyEOf', 50000, 10, 'default-product.png', '2023-07-17 02:27:03', '2023-07-17 02:27:03'),
(4, 'f576b6d0-a525-4456-9b21-d7a5f48d7090', 'I7dbkmtYbMNrVOlyxzvz', 50000, 10, 'default-product.png', '2023-07-17 02:27:03', '2023-07-17 02:27:03'),
(5, 'c28f300a-02ce-4bb5-a818-aeba7cc1fb47', 'SQPB8UF10gC1BFodzCJg', 50000, 10, 'default-product.png', '2023-07-17 02:27:03', '2023-07-17 02:27:03'),
(6, 'cbcc0fe3-779b-4dda-8092-d823c78a433c', 'm7pdzoX5hHZCAuUz4YiG', 50000, 10, 'default-product.png', '2023-07-17 02:27:04', '2023-07-17 02:27:04'),
(7, 'fe1d1628-8c30-4e02-a2e5-5a9a444bb518', 'iBYjrsAwgQpItRzRLZnV', 50000, 10, 'default-product.png', '2023-07-17 02:27:04', '2023-07-17 02:27:04'),
(8, 'ea41f007-22b3-495f-b76e-1ff8a5a87c49', 'TGQfMtwsgf4H11AFSRPZ', 50000, 10, 'default-product.png', '2023-07-17 02:27:04', '2023-07-17 02:27:04'),
(9, '39b21970-3c96-4280-a3d9-3ccd238c7193', 'iy6mSO6pMnsMPI3DlrRF', 50000, 10, 'default-product.png', '2023-07-17 02:27:04', '2023-07-17 02:27:04'),
(10, '8e524f84-2baa-43df-9b40-74c61c07e745', 'gNUNsP8SlPZpPKun2yD2', 50000, 10, 'default-product.png', '2023-07-17 02:27:04', '2023-07-17 02:27:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Administrator', 'admin', 'admin@gmail.com', NULL, '$2y$10$hA4fA8K7etlYaKHgogn1MOHGFe/N7CFq5ssW5pKydnim7pLcuHkhO', NULL, '2023-07-16 21:51:41', '2023-07-16 21:51:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensis`
--
ALTER TABLE `absensis`
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
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `poli`
--
ALTER TABLE `poli`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_id_unique` (`product_id`);

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
-- AUTO_INCREMENT for table `absensis`
--
ALTER TABLE `absensis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `poli`
--
ALTER TABLE `poli`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
