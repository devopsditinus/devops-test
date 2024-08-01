-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2024 at 03:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jenkins_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Magnam sed cum sit molestiae voluptatibus.', 'Doloribus officia qui voluptates est corrupti porro. Quis magni nostrum sapiente. Voluptas quod quo aut consequuntur. Vel ut aut perspiciatis cumque et. Recusandae voluptatem quo ut in tenetur corporis nulla.\n\nDicta voluptates quis aliquid nesciunt debitis dicta. Maiores minima aut dignissimos minima. Blanditiis quos eos ut eius aspernatur et. Quam itaque corporis cupiditate doloribus. Explicabo optio officia explicabo et corrupti praesentium totam.\n\nAperiam ex quis nobis et cupiditate sit officiis. Nisi nesciunt optio autem aut suscipit fuga fuga dolorem. Optio sunt harum magnam in dignissimos. Aut et qui iure.', '2024-07-24 07:55:58', '2024-07-24 07:55:58'),
(2, 'Itaque minima quia dignissimos error consequuntur laboriosam.', 'Autem tempore ipsa hic veniam dicta nobis sed. Illum nam eaque voluptates inventore delectus. Eos aut quas magni quis esse incidunt rerum.\n\nIusto nisi adipisci vel fugit qui ipsa. Qui placeat nihil recusandae corrupti est. Error harum et ea debitis magni officiis. Eum voluptatum ut corrupti enim est aspernatur distinctio. Esse ab velit accusamus ex sequi et.\n\nNobis optio esse ea. Soluta dolorem aut architecto in. Impedit nisi libero qui aut possimus voluptates magni quia. Beatae repudiandae saepe ut nobis at.', '2024-07-24 07:55:58', '2024-07-24 07:55:58'),
(3, 'Quis aspernatur praesentium asperiores libero possimus.', 'Eum at est voluptates. Sapiente consequuntur quia nihil repudiandae. Praesentium iure amet dolorum molestiae. Mollitia deleniti perferendis occaecati dolor dolores.\n\nEos aliquam minus est consequatur. Inventore itaque dolorem vero ut et. Et omnis amet dolor assumenda voluptatem earum dolores.\n\nPossimus voluptates ut accusamus. Asperiores facilis necessitatibus non id nostrum fugit dignissimos. Aut voluptatem possimus est repellendus ea omnis id.', '2024-07-24 07:55:58', '2024-07-24 07:55:58'),
(4, 'Aliquam officia nesciunt voluptatem eligendi quasi assumenda delectus.', 'Nam ab est commodi consectetur explicabo quae. Adipisci debitis fugit illum. Iste numquam mollitia tenetur ipsa debitis sed. Voluptates at modi blanditiis corrupti labore.\n\nSit et totam sed laudantium aspernatur sit. Aut id itaque repellat quisquam temporibus. Dolorum unde sapiente explicabo maiores. Magni eius dolorem consectetur dolores ullam beatae perspiciatis.\n\nRem et sunt pariatur et. Nostrum architecto blanditiis harum iusto tempore cupiditate. Exercitationem molestias ipsam consequuntur suscipit labore modi. Voluptatum dignissimos consequatur exercitationem fugiat nihil.', '2024-07-24 07:55:58', '2024-07-24 07:55:58'),
(5, 'Non consectetur deserunt dicta ducimus.', 'Quis porro ut ut sapiente nihil corporis sit. Occaecati dolores repellendus eum at quos. Et modi quo ullam veritatis aut quia aliquam.\n\nNostrum quia cum ullam sed quia voluptatibus nesciunt accusantium. Cum reiciendis non rerum maiores rerum. Natus tempora doloremque earum voluptas qui autem. Sed ut et voluptatem harum.\n\nNon ut eaque quia rem ut. Temporibus et voluptatibus consequatur voluptas. Sint totam esse velit eveniet totam. Hic officia dolores sed consectetur qui.', '2024-07-24 07:55:58', '2024-07-24 07:55:58');

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
(5, '2024_07_24_132319_create_blogs_table', 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
