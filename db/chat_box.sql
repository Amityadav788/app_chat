-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 05, 2024 at 07:13 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat_box`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int NOT NULL,
  `sender_id` int DEFAULT NULL,
  `receiver_id` int DEFAULT NULL,
  `msg` text,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `sender_id`, `receiver_id`, `msg`, `created_date`, `updated_date`) VALUES
(1, 2, NULL, 'hnji', '2024-03-01 12:49:04', '2024-03-01 12:49:04'),
(2, 2, NULL, 'bjhgyg', '2024-03-01 12:50:01', '2024-03-01 12:50:01'),
(3, 2, NULL, 'hiii', '2024-03-01 12:56:34', '2024-03-01 12:56:34'),
(4, 2, NULL, 'ytyty', '2024-03-01 12:58:39', '2024-03-01 12:58:39'),
(5, 2, NULL, 'ytyty', '2024-03-01 12:59:29', '2024-03-01 12:59:29'),
(6, 2, NULL, 'nitin', '2024-03-01 13:03:59', '2024-03-01 13:03:59'),
(7, 2, NULL, 'gtfghjn', '2024-03-01 13:19:33', '2024-03-01 13:19:33'),
(8, 2, NULL, 'hello world', '2024-03-01 13:42:05', '2024-03-01 13:42:05'),
(9, 7, NULL, 'hlo', '2024-03-05 15:46:08', '2024-03-05 15:46:08'),
(10, 7, NULL, 'kapur saab', '2024-03-05 16:02:21', '2024-03-05 16:02:21'),
(11, 7, NULL, 'jindabad', '2024-03-05 16:02:47', '2024-03-05 16:02:47'),
(12, 3, NULL, 'swagat nhi kroge hmara', '2024-03-05 21:40:03', '2024-03-05 21:40:03'),
(13, 6, NULL, 'tu kon ?', '2024-03-05 21:41:44', '2024-03-05 21:41:44'),
(14, 8, NULL, 'aye simran', '2024-03-05 21:47:16', '2024-03-05 21:47:16'),
(15, 2, NULL, 'jj', '2024-03-06 14:40:11', '2024-03-06 14:40:11'),
(16, 2, NULL, 'hloo', '2024-03-06 14:47:52', '2024-03-06 14:47:52'),
(17, 2, NULL, 'hiiii', '2024-03-06 14:54:33', '2024-03-06 14:54:33'),
(18, 2, NULL, 'hnji', '2024-03-06 14:55:04', '2024-03-06 14:55:04'),
(19, 8, NULL, 'hlo gopi', '2024-03-06 15:25:27', '2024-03-06 15:25:27'),
(20, 3, NULL, 'ggg', '2024-03-07 13:28:44', '2024-03-07 13:28:44'),
(21, 3, NULL, 'ok', '2024-03-07 13:29:01', '2024-03-07 13:29:01'),
(22, 3, NULL, 'hlo', '2024-03-07 13:42:16', '2024-03-07 13:42:16'),
(23, 3, NULL, 'hle', '2024-03-07 13:49:16', '2024-03-07 13:49:16'),
(24, 3, NULL, 'hlo', '2024-03-07 13:50:40', '2024-03-07 13:50:40'),
(25, 3, NULL, 'hlo', '2024-03-07 13:51:24', '2024-03-07 13:51:24'),
(26, 3, NULL, 'hiiii', '2024-03-07 13:51:34', '2024-03-07 13:51:34'),
(27, 3, NULL, 'uk', '2024-03-07 13:51:50', '2024-03-07 13:51:50'),
(28, 3, NULL, 'ukfff', '2024-03-07 13:52:07', '2024-03-07 13:52:07'),
(29, 3, NULL, 'jai shree ram', '2024-03-07 13:55:22', '2024-03-07 13:55:22'),
(30, 3, NULL, 'jjjj', '2024-03-07 13:59:28', '2024-03-07 13:59:28'),
(31, 3, NULL, 'uu', '2024-03-07 14:00:13', '2024-03-07 14:00:13'),
(32, 3, NULL, 'hii', '2024-03-07 14:13:55', '2024-03-07 14:13:55'),
(33, 3, NULL, 'echo', '2024-03-07 14:14:02', '2024-03-07 14:14:02'),
(34, 3, NULL, 'legend sir', '2024-03-07 14:23:55', '2024-03-07 14:23:55'),
(35, 3, NULL, 'hlo', '2024-03-07 14:24:11', '2024-03-07 14:24:11'),
(36, 3, NULL, 'shdfuh', '2024-03-07 14:27:06', '2024-03-07 14:27:06'),
(37, 3, NULL, 'god', '2024-03-07 14:42:58', '2024-03-07 14:42:58'),
(38, 3, NULL, 'dkfj', '2024-03-07 14:46:14', '2024-03-07 14:46:14'),
(39, 3, NULL, 'hh', '2024-03-07 14:49:18', '2024-03-07 14:49:18'),
(40, 2, NULL, 'hlo', '2024-03-07 15:24:25', '2024-03-07 15:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` text,
  `phone` varchar(255) NOT NULL,
  `image` text,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `image`, `created_date`, `updated_date`, `is_active`) VALUES
(1, 'Ankit Yadav', 'officialankit1998@gmail.com', 'iuiuiuiu', '090909', '1709203036.jpg', '2024-02-29 16:08:35', '2024-02-29 16:08:35', 1),
(2, 'gopi', 'GS@gmail.com', '1234', '9809980909', '1709203205.jpg', '2024-02-29 16:10:05', '2024-02-29 16:10:05', 1),
(3, 'nikhil', 'niik@gmail.com', '4444', '8787878787', '1709203251.jpg', '2024-02-29 16:10:51', '2024-02-29 16:10:51', 1),
(4, 'muskan', 'my@gmail.com', '5555', '898989988998', '1709203279.jpg', '2024-02-29 16:11:19', '2024-02-29 16:11:19', 0),
(5, 'pandit', 'pj@gmail.com', '7777', '0909090909', '1709204892.jpg', '2024-02-29 16:38:12', '2024-02-29 16:38:12', 1),
(6, 'gaurav', 'gs@gmail.com', '9999', '45545655667', '1709205035.jpg', '2024-02-29 16:40:35', '2024-02-29 16:40:35', 1),
(7, 'jeeto', 'jeet@gmail.com', '7878', '090909090909', '1709633739.jpg', '2024-03-05 15:45:39', '2024-03-05 15:45:39', 1),
(8, 'kapur saab', 'kp@gmail.com', '0001', '8989898989', '1709655378.png', '2024-03-05 21:46:18', '2024-03-05 21:46:18', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
