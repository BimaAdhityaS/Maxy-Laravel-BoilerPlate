-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Sep 2023 pada 10.27
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_purchase_order`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_04_10_000000_create_users_table', 1),
(2, '2017_04_10_000001_create_password_resets_table', 1),
(3, '2017_04_10_000002_create_social_accounts_table', 1),
(4, '2017_04_10_000003_create_roles_table', 1),
(5, '2017_04_10_000004_create_users_roles_table', 1),
(6, '2017_06_16_000005_create_protection_validations_table', 1),
(7, '2017_06_16_000006_create_protection_shop_tokens_table', 1),
(8, '2019_10_31_152451_add_last_login_to_users', 1),
(9, '2023_09_19_042525_create_products_table', 2),
(10, '2023_09_19_054017_create_purchase_order_lines_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_code`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Non sit ad eos in.', 'ipsum', 100000, '1982-06-11 15:21:44', NULL),
(2, 'Fugit est omnis fugit maiores est consequatur nihil in.', 'sapiente', 100000, '1988-08-06 00:04:09', NULL),
(3, 'Aliquid earum et nihil aliquam aut.', 'odio', 209226, '2007-04-25 14:10:04', NULL),
(4, 'Aperiam vel sit ullam voluptatem.', 'sequi', 100000, '2017-01-13 05:36:56', NULL),
(5, 'Corrupti debitis laboriosam rerum sed in vitae deserunt.', 'dolorum', 780784, '1995-12-01 18:21:16', NULL),
(6, 'Illo commodi aut et unde molestiae eligendi similique ex.', 'aut', 100000, '2008-12-10 05:46:41', NULL),
(7, 'Maiores velit aliquid ducimus et.', 'quibusdam', 100000, '2003-03-09 06:47:11', NULL),
(8, 'Eos eius ullam occaecati minima minima magnam.', 'hic', 80236700, '1979-07-22 14:15:47', NULL),
(9, 'Reprehenderit dolor aspernatur voluptas qui ipsum laborum impedit.', 'dolorem', 100000, '2012-06-04 22:12:46', NULL),
(10, 'Quo accusamus aut ut voluptates odio corporis sed.', 'et', 201147000, '2023-01-11 04:37:08', NULL),
(11, 'Illum consectetur in autem quia.', 'non', 100000, '2001-11-30 12:28:27', NULL),
(12, 'Eum quod velit dolorum et.', 'magnam', 20604200, '1990-12-14 23:30:04', NULL),
(13, 'Cupiditate nobis voluptatem quo eum.', 'unde', 100000, '1977-12-21 18:34:42', NULL),
(14, 'Libero impedit debitis numquam qui.', 'praesentium', 55626100, '2005-12-07 12:36:29', NULL),
(15, 'Sunt sit autem blanditiis modi at non quae.', 'pariatur', 100000, '2011-12-24 17:42:07', NULL),
(16, 'Cum dolor molestias et at aperiam dolor.', 'ea', 62046400, '1975-09-08 23:43:32', NULL),
(17, 'Velit soluta deleniti modi magni corporis.', 'dolor', 100000, '1985-04-30 23:03:55', NULL),
(18, 'Temporibus omnis praesentium quibusdam rerum culpa blanditiis.', 'omnis', 100000, '1990-10-02 23:15:03', NULL),
(19, 'Adipisci eum quis magni culpa officiis id maiores.', 'autem', 100000, '1984-08-06 03:23:58', NULL),
(20, 'Officia qui nemo laboriosam nulla eos delectus.', 'nobis', 3672970, '1975-02-13 11:57:52', NULL),
(21, 'Magni perspiciatis fugit corporis.', 'omnis', 100000, '1983-03-31 01:13:58', NULL),
(22, 'Occaecati minus saepe hic tempore.', 'fugiat', 1782190, '1990-05-29 18:40:45', NULL),
(23, 'Non nobis asperiores et dolore aliquam natus.', 'ut', 3151680, '1977-12-24 17:16:14', NULL),
(24, 'Necessitatibus omnis quae eos nulla laborum.', 'eos', 100000, '1971-11-29 01:21:26', NULL),
(25, 'Aut explicabo omnis ipsa enim eos expedita quae labore.', 'animi', 100000, '2002-09-21 14:58:47', NULL),
(26, 'Consequatur possimus et fuga excepturi qui.', 'voluptatem', 19266300, '1976-06-07 19:21:32', NULL),
(27, 'Facilis molestiae quod quo molestiae et est dolorum.', 'sint', 100000, '1988-12-18 09:06:02', NULL),
(28, 'Voluptas qui velit quos officiis odit sunt labore.', 'qui', 246036000, '1998-12-09 18:13:10', NULL),
(29, 'Facere maxime nesciunt eum cum iusto.', 'dolorem', 26152600, '1988-05-24 20:11:05', NULL),
(30, 'Officiis voluptatem totam commodi quo.', 'omnis', 423743, '1994-11-08 02:15:32', NULL),
(31, 'Voluptatem tempora molestiae totam.', 'et', 100000, '1990-04-21 04:37:41', NULL),
(32, 'Deleniti tempore fugit ducimus exercitationem praesentium voluptatem.', 'quo', 100000, '1998-05-09 09:58:08', NULL),
(33, 'Dignissimos est natus labore voluptas quia qui vitae.', 'ut', 100000, '1987-04-09 14:02:26', NULL),
(34, 'Corporis aperiam ratione ad cupiditate rem et.', 'error', 892760, '2003-02-24 10:33:44', NULL),
(35, 'Corporis inventore qui quia.', 'at', 100000, '1981-09-03 14:20:56', NULL),
(36, 'Quaerat aspernatur rerum sit sint.', 'consequatur', 100000, '1974-04-16 17:09:16', NULL),
(37, 'Et ea dignissimos dignissimos est.', 'et', 212572000, '2023-05-10 21:36:28', NULL),
(38, 'Qui officiis accusamus neque facere qui qui sint.', 'cupiditate', 157704, '2015-11-06 00:20:41', NULL),
(39, 'Dicta consectetur rerum ut eaque porro quasi.', 'quidem', 33783100, '2009-05-15 10:28:48', NULL),
(40, 'Ut commodi omnis blanditiis perferendis ut.', 'facere', 100000, '2010-10-02 09:45:21', NULL),
(41, 'Et commodi distinctio rerum et.', 'esse', 100000, '2020-09-02 01:14:40', NULL),
(42, 'Eveniet doloremque officia qui vel nihil nihil.', 'ad', 664524, '1980-03-26 20:23:17', NULL),
(43, 'Sed voluptatem dolorem soluta aliquid labore voluptate.', 'laudantium', 100000, '1988-10-01 17:58:29', NULL),
(44, 'Quibusdam voluptatem eligendi sequi sint.', 'non', 100000, '1994-10-05 04:38:19', NULL),
(45, 'Ullam eligendi officia ratione aliquid eveniet.', 'expedita', 53860900, '2009-08-13 12:35:08', NULL),
(46, 'Sed dolore eum voluptas vero sint.', 'fugiat', 100000, '1988-05-21 09:16:29', NULL),
(47, 'Tempora consequatur cumque dolorem omnis inventore explicabo quia.', 'numquam', 100000, '1992-02-03 16:19:36', NULL),
(48, 'Impedit placeat vero et provident.', 'recusandae', 224053, '1977-08-11 20:41:23', NULL),
(49, 'Magni in eos nam aut voluptate iure itaque.', 'quos', 1367310, '1995-12-23 03:46:46', NULL),
(50, 'Omnis molestiae earum nesciunt et ea rerum.', 'quo', 100000, '1971-07-07 08:45:13', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `protection_shop_tokens`
--

CREATE TABLE `protection_shop_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `success_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `success_url_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_url_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `protection_validations`
--

CREATE TABLE `protection_validations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ttl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `validation_result` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_order_lines`
--

CREATE TABLE `purchase_order_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL,
  `total` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `purchase_order_lines`
--

INSERT INTO `purchase_order_lines` (`id`, `product_id`, `qty`, `price`, `discount`, `total`, `created_at`, `updated_at`) VALUES
(6, 1, 2, 2000, 50, 3000, '2023-09-19 08:36:52', '2023-09-19 08:36:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `weight`) VALUES
(1, 'administrator', 0),
(2, 'authenticated', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `confirmation_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `active`, `confirmation_code`, `confirmed`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`, `deleted_at`, `last_login`) VALUES
(1, 'Admin', 'admin.laravel@labs64.com', '$2y$10$EQ1kQrC1u.8Bb6tb3WhGdel34y0o4nr5NM9QWRbTOikYh6di8xkh6', 1, 'e0513d8e-4a87-463d-b17b-727863430e54', 1, 'GJyAA505ILdMLkIfgTJdRvbK6lE3Bniz2A6ZWj4HVNjkOETLZ82Qof25Z6gU', NULL, '2023-09-18 22:12:35', '2023-09-18 22:17:35', NULL, '2023-09-19 05:17:35'),
(2, 'Demo', 'demo.laravel@labs64.com', '$2y$10$glpUBeH6NYcrFjOl5rQsT.rgQ636OzpGUEYBTtuRzfijEVUrSVidS', 1, '2ec1933e-26d7-45c0-a63f-0cc7259afb1e', 1, NULL, NULL, '2023-09-18 22:12:35', '2023-09-18 22:12:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pst_unique_user` (`user_id`),
  ADD KEY `protection_shop_tokens_number_index` (`number`),
  ADD KEY `protection_shop_tokens_expires_index` (`expires`);

--
-- Indeks untuk tabel `protection_validations`
--
ALTER TABLE `protection_validations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user` (`user_id`),
  ADD KEY `protection_validations_ttl_index` (`ttl`);

--
-- Indeks untuk tabel `purchase_order_lines`
--
ALTER TABLE `purchase_order_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_name` (`name`);

--
-- Indeks untuk tabel `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_accounts_user_id_provider_provider_id_index` (`user_id`,`provider`,`provider_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `users_roles`
--
ALTER TABLE `users_roles`
  ADD UNIQUE KEY `users_roles_user_id_role_id_unique` (`user_id`,`role_id`),
  ADD KEY `foreign_role` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `protection_validations`
--
ALTER TABLE `protection_validations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `purchase_order_lines`
--
ALTER TABLE `purchase_order_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  ADD CONSTRAINT `pst_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `protection_validations`
--
ALTER TABLE `protection_validations`
  ADD CONSTRAINT `pv_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `purchase_order_lines`
--
ALTER TABLE `purchase_order_lines`
  ADD CONSTRAINT `purchase_order_lines_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `foreign_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
