-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:8889
-- Thời gian đã tạo: Th2 15, 2024 lúc 10:43 AM
-- Phiên bản máy phục vụ: 5.7.34
-- Phiên bản PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `booking2023`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bookings`
--

INSERT INTO `bookings` (`id`, `customer_id`, `room_id`, `created_at`, `updated_at`) VALUES
(2, 23, 29, NULL, NULL),
(3, 43, 5, NULL, NULL),
(4, 6, 2, NULL, NULL),
(5, 25, 25, NULL, NULL),
(6, 10, 31, NULL, NULL),
(7, 2, 15, NULL, NULL),
(8, 46, 4, NULL, NULL),
(9, 16, 43, NULL, NULL),
(10, 48, 6, NULL, NULL),
(11, 43, 45, NULL, NULL),
(12, 13, 6, NULL, NULL),
(13, 27, 12, NULL, NULL),
(14, 28, 19, NULL, NULL),
(15, 7, 6, NULL, NULL),
(16, 20, 45, NULL, NULL),
(17, 3, 7, NULL, NULL),
(18, 31, 31, NULL, NULL),
(19, 18, 38, NULL, NULL),
(20, 34, 46, NULL, NULL),
(21, 42, 11, NULL, NULL),
(22, 16, 46, NULL, NULL),
(23, 28, 5, NULL, NULL),
(24, 18, 27, NULL, NULL),
(25, 34, 43, NULL, NULL),
(26, 24, 21, NULL, NULL),
(27, 49, 44, NULL, NULL),
(28, 6, 25, NULL, NULL),
(29, 31, 1, NULL, NULL),
(30, 41, 13, NULL, NULL),
(31, 11, 25, NULL, NULL),
(32, 26, 38, NULL, NULL),
(33, 21, 14, NULL, NULL),
(34, 46, 4, NULL, NULL),
(35, 28, 27, NULL, NULL),
(36, 17, 8, NULL, NULL),
(37, 8, 19, NULL, NULL),
(38, 29, 32, NULL, NULL),
(39, 30, 12, NULL, NULL),
(40, 36, 40, NULL, NULL),
(41, 25, 14, NULL, NULL),
(42, 24, 7, NULL, NULL),
(43, 14, 50, NULL, NULL),
(44, 22, 2, NULL, NULL),
(45, 37, 46, NULL, NULL),
(46, 28, 43, NULL, NULL),
(47, 33, 25, NULL, NULL),
(48, 31, 3, NULL, NULL),
(49, 25, 12, NULL, NULL),
(50, 34, 25, NULL, NULL),
(51, 23, 32, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`) VALUES
(1, 'Della Herman', 'lamar82@kub.net', '+1-614-909-3392'),
(2, 'Tamia Dare', 'schaden.walton@gmail.com', '346-918-6083'),
(3, 'Birdie Stamm DDS', 'dlind@schultz.biz', '(989) 804-9986'),
(4, 'Prof. Jameson Reichel', 'general.cremin@gmail.com', '(854) 328-9358'),
(5, 'Ms. Carole Schaefer DDS', 'jocelyn15@hotmail.com', '(917) 959-3012'),
(6, 'Ms. Kylie Schmitt', 'cleffler@hotmail.com', '978.856.1238'),
(7, 'Daphney Frami', 'cyrus.collins@gmail.com', '820.405.5411'),
(8, 'Brayan Carroll', 'crystal31@zboncak.biz', '1-405-727-1830'),
(9, 'Prof. Darrel Johns Sr.', 'aimee.gutkowski@hotmail.com', '+1 (520) 570-8171'),
(10, 'John Satterfield', 'rickey.mohr@yahoo.com', '215-868-7460'),
(11, 'Mavis Ryan', 'nshields@yahoo.com', '1-320-769-1783'),
(12, 'Mr. Bell Hegmann', 'kelvin83@mayer.com', '(928) 862-3319'),
(13, 'Kristian Hessel', 'aschowalter@gmail.com', '+1-341-989-3738'),
(14, 'Miss Laila Douglas IV', 'finn.weissnat@huels.info', '+18389233588'),
(15, 'Prof. Rosemary Crist DVM', 'britney.lueilwitz@kerluke.com', '+1-520-901-3819'),
(16, 'Mr. Hillard Ernser DDS', 'shills@yahoo.com', '715.207.4052'),
(17, 'Sadie Gislason', 'queen.mcglynn@yahoo.com', '+1-657-542-9913'),
(18, 'Prof. Jamey McGlynn DVM', 'jerde.kellie@altenwerth.info', '(806) 647-6927'),
(19, 'Gail Kunze PhD', 'keira44@yahoo.com', '+1 (754) 269-3113'),
(20, 'Ellis Kub', 'jonathon23@yahoo.com', '678.936.5129'),
(21, 'Korbin Toy', 'kfritsch@yahoo.com', '(765) 742-9469'),
(22, 'Prof. Santa Schimmel', 'gislason.ryan@wuckert.info', '(651) 960-1694'),
(23, 'Mr. Dean Gibson', 'maude.schmidt@pouros.com', '+1-351-998-5996'),
(24, 'Luigi Walsh', 'pouros.camron@yahoo.com', '+1.540.370.5688'),
(25, 'Maryjane Sauer', 'fshields@hotmail.com', '+1.234.681.0910'),
(26, 'Prof. Domingo Schimmel', 'sharon.johnston@cole.com', '1-404-893-5736'),
(27, 'Dr. Santino Adams DVM', 'edwin.von@gmail.com', '+16235817194'),
(28, 'Philip Russel', 'laron.dare@yahoo.com', '(281) 563-7334'),
(29, 'Lorenz Stiedemann', 'ebrown@yahoo.com', '815.304.0852'),
(30, 'Mr. Trever Connelly DDS', 'npredovic@yahoo.com', '+14146018827'),
(31, 'Trever Bogisich Sr.', 'sterling.corkery@hirthe.biz', '+1 (541) 510-0651'),
(32, 'Vena McClure', 'dean.smith@wisozk.com', '859.959.0384'),
(33, 'Miss Tamara Kuvalis V', 'ofahey@gmail.com', '1-425-223-3999'),
(34, 'Stewart Rosenbaum', 'delaney.swaniawski@king.net', '+1-740-424-9515'),
(35, 'Kacie Rath', 'dwight.spencer@swaniawski.com', '+1 (351) 378-7939'),
(36, 'Mr. Adonis Kohler II', 'lowe.lela@hotmail.com', '551-609-9094'),
(37, 'Mariano Reilly', 'imogene.bogisich@yahoo.com', '+1 (747) 546-8288'),
(38, 'Dr. Brandi Bernhard DVM', 'lmaggio@gmail.com', '+1-740-372-8106'),
(39, 'Kimberly Hahn', 'ghuel@gmail.com', '(234) 436-8515'),
(40, 'Eliane Kertzmann', 'eduardo.ruecker@pfeffer.biz', '1-380-323-1568'),
(41, 'Dr. Kelvin Heidenreich', 'champlin.ocie@ortiz.com', '+1 (669) 596-7067'),
(42, 'Margaret Green', 'crystel.mcglynn@yahoo.com', '(229) 401-7113'),
(43, 'Sally Bosco', 'uvonrueden@yahoo.com', '+1.973.366.7753'),
(44, 'Icie Balistreri', 'mohr.abigayle@rosenbaum.org', '+1.805.470.0410'),
(45, 'Miss Eliza Gutmann', 'mcdermott.janis@breitenberg.net', '+1-702-659-0503'),
(46, 'Carli Sipes', 'isabell04@gmail.com', '516.614.5682'),
(47, 'Fred Daniel', 'birdie.hoppe@gmail.com', '651-498-2373'),
(48, 'Carissa Koss', 'jaqueline39@fritsch.com', '(714) 872-9269'),
(49, 'Tracy Rowe', 'rubye13@hotmail.com', '424-240-2172'),
(50, 'Alice Schamberger V', 'rodriguez.jodie@rempel.com', '1-830-695-2868');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_27_133007_create_rooms_table', 1),
(6, '2023_08_27_133053_create_customers_table', 2),
(7, '2023_08_27_134802_create_bookings_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_type` enum('standard','deluxe','suite') COLLATE utf8mb4_unicode_ci NOT NULL,
  `availability` enum('available','occupied','under maintenance') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rooms`
--

INSERT INTO `rooms` (`id`, `room_number`, `room_type`, `availability`, `created_at`, `updated_at`) VALUES
(1, '93957', 'suite', 'under maintenance', NULL, NULL),
(2, '6786', 'deluxe', 'occupied', NULL, NULL),
(3, '885', 'suite', 'occupied', NULL, NULL),
(4, '5460', 'deluxe', 'available', NULL, NULL),
(5, '2917', 'deluxe', 'under maintenance', NULL, NULL),
(6, '104', 'suite', 'occupied', NULL, NULL),
(7, '3635', 'deluxe', 'available', NULL, NULL),
(8, '6920', 'standard', 'under maintenance', NULL, NULL),
(10, '41221', 'suite', 'available', NULL, NULL),
(11, '74519', 'suite', 'occupied', NULL, NULL),
(12, '503', 'deluxe', 'available', NULL, NULL),
(13, '63959', 'suite', 'available', NULL, NULL),
(14, '60001', 'suite', 'occupied', NULL, NULL),
(15, '3807', 'suite', 'under maintenance', NULL, NULL),
(16, '986', 'deluxe', 'available', NULL, NULL),
(17, '942', 'deluxe', 'occupied', NULL, NULL),
(18, '51867', 'suite', 'occupied', NULL, NULL),
(19, '4506', 'deluxe', 'available', NULL, NULL),
(20, '61192', 'suite', 'under maintenance', NULL, NULL),
(21, '31791', 'suite', 'occupied', NULL, NULL),
(22, '577', 'deluxe', 'available', NULL, NULL),
(23, '52285', 'standard', 'under maintenance', NULL, NULL),
(24, '821', 'standard', 'under maintenance', NULL, NULL),
(25, '889', 'standard', 'under maintenance', NULL, NULL),
(26, '70515', 'deluxe', 'available', NULL, NULL),
(27, '19261', 'deluxe', 'under maintenance', NULL, NULL),
(28, '368', 'standard', 'available', NULL, NULL),
(29, '7636', 'suite', 'available', NULL, NULL),
(30, '711', 'suite', 'under maintenance', NULL, NULL),
(31, '8236', 'suite', 'available', NULL, NULL),
(32, '794', 'standard', 'under maintenance', NULL, NULL),
(33, '80633', 'deluxe', 'under maintenance', NULL, NULL),
(34, '705', 'deluxe', 'under maintenance', NULL, NULL),
(35, '35935', 'suite', 'available', NULL, NULL),
(36, '6510', 'standard', 'available', NULL, NULL),
(37, '126', 'deluxe', 'under maintenance', NULL, NULL),
(38, '85043', 'suite', 'under maintenance', NULL, NULL),
(39, '657', 'standard', 'available', NULL, NULL),
(40, '859', 'suite', 'available', NULL, NULL),
(41, '75703', 'suite', 'under maintenance', NULL, NULL),
(42, '108', 'standard', 'under maintenance', NULL, NULL),
(43, '1280', 'suite', 'available', NULL, NULL),
(44, '831', 'suite', 'under maintenance', NULL, NULL),
(45, '51206', 'standard', 'available', NULL, NULL),
(46, '370', 'deluxe', 'available', NULL, NULL),
(47, '315', 'deluxe', 'under maintenance', NULL, NULL),
(48, '7098', 'suite', 'under maintenance', NULL, NULL),
(49, '3791', 'standard', 'under maintenance', NULL, NULL),
(50, '164', 'suite', 'under maintenance', NULL, NULL),
(52, '123', 'deluxe', 'occupied', '2023-09-07 02:16:15', '2023-09-07 02:16:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_customer_id_foreign` (`customer_id`),
  ADD KEY `bookings_room_id_foreign` (`room_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `bookings_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
