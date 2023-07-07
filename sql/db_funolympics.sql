-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2023 at 10:20 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_funolympics`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `FirstName`, `LastName`, `Email`, `Password`) VALUES
(1, 'Roshan', 'Poudel', 'roshan@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `admins_otp`
--

CREATE TABLE `admins_otp` (
  `id` int(11) NOT NULL,
  `otp_code` varchar(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins_otp`
--

INSERT INTO `admins_otp` (`id`, `otp_code`, `created_at`) VALUES
(1, '16', '2023-07-06 04:09:25'),
(2, '37', '2023-07-06 04:10:12'),
(3, '26', '2023-07-06 04:10:56'),
(4, '56', '2023-07-06 04:49:53'),
(5, '27', '2023-07-06 05:40:30'),
(6, '82', '2023-07-06 13:34:16'),
(7, '45', '2023-07-06 13:34:58'),
(8, '57', '2023-07-06 13:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `game` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `firstname`, `lastname`, `gender`, `address`, `phone`, `email`, `game`, `country`) VALUES
(1, 'Aakash', 'Poudel', 'Male', 'Bharatpur', '9779865509187', 'aakash@gmail.com', 'Marathon', 'Nepal');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `comment` text NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `username`, `date`, `comment`, `rate`) VALUES
(1, 'roshan@gmail.com', '2023-07-06', 'Nice', 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `image`) VALUES
(1, 'Canada Open 2023 badminton: India’s Parupalli Kashyap knocked out in second qualifying round', 'Indian badminton player Parupalli Kashyap, a 2014 Commonwealth Games gold medallist, crashed out in the men’s singles qualifying round of the Canada Open 2023 BWF Super 500 event in Calgary on Tuesday.\r\n\r\nParupalli Kashyap is a former world No. 6 men’s singles player. However, he hasn’t won a BWF tournament since 2018 and is 189th in the current badminton rankings. \r\n\r\nPlaying on the badminton courts of the Markin-MacPhail Centre, Parupalli Kashyap began his Canada Open 2023 campaign with a win over world No. 67 Kai Schaefer of Germany in the first qualifying round. Parupalli Kashyap dominated the first game but had to save two game points for a 21-14, 22-20 victory.\r\n\r\nIn the second qualifying match, Parupalli Kashyap put up a strong fight against world No. 65 Lae Lan Xi but lost the match 21-17, 22-20.\r\n\r\nKrishna Prasad Garaga and Vishnuvardhan Goud Panjala, India’s only challenge in men’s doubles, meanwhile, progressed to the second round of the main draw. \r\n\r\nThe Indian badminton players, ranked 38th in doubles, beat the world No. 63 pair of Lu Chen and Chen Zhi Ray of Chinese Taipei 21-14, 21-16 in the first round. \r\n\r\nHowever, Krishna Prasad Garaga and Vishnuvardhan Goud Panjala could potentially run into three-time world champions Mohammad Ahsan and Hendra Setiawan of Indonesia in the second round. \r\n\r\nIn women’s doubles, Rutaparna Panda and Swetaparna Panda, world No. 95, went down against the unranked Canadian pair of Jacqueline Cheung and Jeslyn Chow in three games - 21-15, 15-21, 9-21.\r\n\r\nIndia’s top badminton players, including two-time Olympic medallist PV Sindhu and Commonwealth Games 2022 champion Lakshya Sen, will take the court on Wednesday.', 'Screenshot 2023-07-05 174205.png'),
(2, 'SAFF Championship: Indian football teams rule the roost - history and roll of honour', 'The SAFF Championship is an international football tournament primarily contested by teams from the South Asian sub-continent. It is organised by the South Asian Football Federation (SAFF), one of the five sub-confederations under the Asian Football Confederation (AFC).\r\n\r\nIndia, Pakistan, Sri Lanka, Bangladesh, Nepal and Maldives were the six founding members of SAFF in 1997. Bhutan joined SAFF in 2000, thereby increasing the number of member nations to seven. Afghanistan became a SAFF member in 2005 but moved to the Central Asian Football Association (CAFA) in 2015.\r\n\r\nThe first edition of the football championship for South Asian countries was held in 1993, four years before the formation of SAFF.\r\n\r\nIn 1993, the tournament was known as the South Asian Association for Regional Cooperation (SAARC) Gold Cup. It was changed to the South Asian Gold Cup in 1995 and was renamed to SAFF Gold Cup in 1997 until 2005. The tournament has been called SAFF Championship since 2008.\r\n\r\nIndia won the inaugural edition played in Lahore, Pakistan. Sri Lanka finished runners-up. The tournament was played in a single round-robin league format with no knockout games.', 'Screenshot 2023-07-05 181410.png'),
(3, 'SAFF Championship: Indian football teams rule the roost - history and roll of honour', 'The SAFF Championship is an international football tournament primarily contested by teams from the South Asian sub-continent. It is organised by the South Asian Football Federation (SAFF), one of the five sub-confederations under the Asian Football Confederation (AFC).\r\n\r\nIndia, Pakistan, Sri Lanka, Bangladesh, Nepal and Maldives were the six founding members of SAFF in 1997. Bhutan joined SAFF in 2000, thereby increasing the number of member nations to seven. Afghanistan became a SAFF member in 2005 but moved to the Central Asian Football Association (CAFA) in 2015.\r\n\r\nThe first edition of the football championship for South Asian countries was held in 1993, four years before the formation of SAFF.\r\n\r\nIn 1993, the tournament was known as the South Asian Association for Regional Cooperation (SAARC) Gold Cup. It was changed to the South Asian Gold Cup in 1995 and was renamed to SAFF Gold Cup in 1997 until 2005. The tournament has been called SAFF Championship since 2008.\r\n\r\nIndia won the inaugural edition played in Lahore, Pakistan. Sri Lanka finished runners-up. The tournament was played in a single round-robin league format with no knockout games.', 'Screenshot 2023-07-05 181410.png'),
(4, 'Hallucination ', ' Nothing            ', 'Arcade.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `password`) VALUES
(1, 'Roshan', 'Poudel', 'roshan@gmail.com', '934b535800b1cba8f96a5d72f72f1611');

-- --------------------------------------------------------

--
-- Table structure for table `users_otp`
--

CREATE TABLE `users_otp` (
  `id` int(11) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_otp`
--

INSERT INTO `users_otp` (`id`, `otp`, `created_at`) VALUES
(1, '75', '2023-07-04 20:57:52'),
(2, '73', '2023-07-05 03:20:23'),
(3, '13', '2023-07-05 03:53:02'),
(4, '78', '2023-07-05 13:35:00'),
(5, '45', '2023-07-06 04:12:21'),
(6, '55', '2023-07-06 05:27:02'),
(7, '54', '2023-07-06 05:32:14'),
(8, '12', '2023-07-06 18:02:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `admins_otp`
--
ALTER TABLE `admins_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users_otp`
--
ALTER TABLE `users_otp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins_otp`
--
ALTER TABLE `admins_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_otp`
--
ALTER TABLE `users_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
