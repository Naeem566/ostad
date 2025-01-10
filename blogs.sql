-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2025 at 11:46 PM
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
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `author_name`, `created_at`, `updated_at`) VALUES
(1, 'HR', '2025-01-09 22:38:53', '2025-01-09 22:42:30'),
(2, 'Finance', '2025-01-09 22:38:53', '2025-01-09 22:42:30'),
(3, 'Alice', '2025-01-09 22:38:53', '2025-01-09 22:42:30'),
(4, 'Bob', '2025-01-09 22:38:53', '2025-01-09 22:42:30'),
(5, 'Chalier', '2025-01-09 22:38:53', '2025-01-09 22:42:30'),
(6, 'Diana', '2025-01-09 22:38:53', '2025-01-09 22:42:30'),
(7, 'Eve', '2025-01-09 22:38:53', '2025-01-09 22:42:30'),
(8, 'John', '2025-01-09 22:38:53', '2025-01-09 22:42:30'),
(9, 'Sophia', '2025-01-09 22:38:53', '2025-01-09 22:42:30'),
(10, 'Michael', '2025-01-09 22:38:53', '2025-01-09 22:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `body`, `category_id`, `author_id`, `created_at`, `updated_at`) VALUES
(1, 'My updated blog title', 'My Blogs Content', 2, 2, '2025-01-09 22:42:49', '2025-01-09 22:44:16'),
(2, 'The Future of AI', 'Content about AI advancements', 3, 3, '2025-01-09 22:42:49', '2025-01-09 22:43:32'),
(3, 'Travel Diaries', 'Exploring new places around the world', 1, 2, '2025-01-09 22:42:49', '2025-01-09 22:43:32'),
(4, 'Healthy Living', 'Tips on maintaining a balanced lifestyle', 4, 1, '2025-01-09 22:42:49', '2025-01-09 22:43:32'),
(5, 'Tech Trends 2025', 'Predictions for the next decade in technology', 3, 4, '2025-01-09 22:42:49', '2025-01-09 22:43:33'),
(6, 'Life Lessons', 'What I\'ve learned through experiences', 5, 2, '2025-01-09 22:42:49', '2025-01-09 22:43:33'),
(7, 'Cooking 101', 'Simple recipes for beginners', 6, 3, '2025-01-09 22:42:49', '2025-01-09 22:43:33'),
(8, 'Fitness Goals', 'How to stay fit and healthy in 2025', 4, 5, '2025-01-09 22:42:49', '2025-01-09 22:43:33'),
(9, 'Gadget Reviews', 'An in-depth review of the latest tech gadgets', 3, 1, '2025-01-09 22:42:49', '2025-01-09 22:43:33'),
(10, 'Art and Creativity', 'Exploring the world of modern art', 7, 4, '2025-01-09 22:42:49', '2025-01-09 22:43:33');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Technology', '2025-01-09 22:39:21', '2025-01-09 22:41:54'),
(2, 'Health & Wellness', '2025-01-09 22:39:21', '2025-01-09 22:41:55'),
(3, 'Lifestyle', '2025-01-09 22:39:21', '2025-01-09 22:41:55'),
(4, 'Travel', '2025-01-09 22:39:21', '2025-01-09 22:41:55'),
(5, 'Education', '2025-01-09 22:39:21', '2025-01-09 22:41:55'),
(6, 'Food & Drink', '2025-01-09 22:39:21', '2025-01-09 22:41:55'),
(7, 'Finance', '2025-01-09 22:39:21', '2025-01-09 22:41:55'),
(8, 'Entertainment', '2025-01-09 22:39:21', '2025-01-09 22:41:55'),
(9, 'Sports', '2025-01-09 22:39:21', '2025-01-09 22:41:55'),
(10, 'Fashion', '2025-01-09 22:39:21', '2025-01-09 22:41:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blogs_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
