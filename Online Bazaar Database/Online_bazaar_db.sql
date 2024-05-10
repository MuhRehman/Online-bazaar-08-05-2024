-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 12:50 PM
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
-- Database: `bazaar_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `feedback` varchar(1000) NOT NULL,
  `rating` int(11) NOT NULL,
  `datetimetext` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `userId`, `feedback`, `rating`, `datetimetext`) VALUES
(1, 33, 'ddddddddddddd', 45, '4Mon May 06 2024 20:48:34 GMT+0500 (Pakistan Standard Time)'),
(36, 0, 'sdsdas', 0, ''),
(37, 0, '', 0, ''),
(38, 0, 'asdsdasdsa', 0, ''),
(41, 0, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 0, ''),
(44, 0, 'ssssssssssssss', 0, ''),
(45, 111, '', 0, ''),
(46, 111, '', 0, ''),
(47, 111, 'ssssssssssssssssssssssqqwqw', 0, ''),
(48, 0, '', 0, ''),
(49, 0, '', 0, ''),
(50, 0, '', 0, ''),
(51, 0, '', 0, ''),
(52, 1, '', 1, ''),
(53, 1, 'bbbbbbbbbbbbbb', 1, ''),
(54, 1, '', 1, ''),
(55, 1, 'dasdasdasdrrrrrrrrrrr', 1, ''),
(56, 1, '', 1, ''),
(57, 1, 'xwsadadwrfddqqqqqqqqqqqqqqqqqqq', 1, ''),
(58, 1, '', 1, '4Mon May 06 2024 19:32:54 '),
(59, 1, 'xxxxxxxxxxxxxxxxxxxxx', 1, '4Mon May 06 2024 19:32:54 '),
(62, 33, '', 12, ''),
(63, 33, '', 12, ''),
(65, 33, '', 12, ''),
(66, 33, '', 0, ''),
(68, 33, 'ddddddddd', 1, ''),
(69, 33, '', 0, ''),
(70, 33, '', 45, ''),
(71, 33, '', 45, ''),
(72, 33, '', 45, ''),
(73, 33, '', 45, '');

-- --------------------------------------------------------

--
-- Table structure for table `productinfo`
--

CREATE TABLE `productinfo` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productsinfo`
--

CREATE TABLE `productsinfo` (
  `id` int(5) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pmname` varchar(255) NOT NULL,
  `pmodel` varchar(255) NOT NULL,
  `ptype` varchar(255) NOT NULL,
  `pprice` varchar(255) NOT NULL,
  `pimg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productsinfo`
--

INSERT INTO `productsinfo` (`id`, `pname`, `pmname`, `pmodel`, `ptype`, `pprice`, `pimg`) VALUES
(4, 'Watch', 'Apple', '2009', 'gadgets', '300$', 'apple-sport-gold-apple-watch.png'),
(5, 'camera', 'canon', '2002', 'gadgets', '1000$', 'camera.png'),
(6, 'GO pro', 'deniem', '2010', 'gadgets', '500$', 'd9bbb5b06b5e4555adf4ee89ce047b77.png'),
(7, 'Iphone', 'apple', '2015', 'gadgets', '40$', 'FotoJet-209-635x430.jpg'),
(8, 'pents', 'levies', '2020', 'cloth', '12$', 'pents.jpg'),
(9, 't-shirt', 'aljannat', '2018', 'cloth', '30$', 't-shirt.jpg'),
(10, 'headphone', 'divcs', '2024', 'gadgets', '55$', 'Sennhei.png'),
(11, 'tiger', 'bollywood', '2022', 'movies', '5$', 'tiger.png'),
(12, 'prime', 'gollo', '2024', 'games', '4$', 'prime.png'),
(13, 'Pop-G', 'G-Start', '2019', 'cloth', '2$', 'popg.png'),
(14, 'Canon', 'dudes', '2003', 'games', '12$', 'cannon.png'),
(15, 'Suff', 'G-class', '2021', 'games', '$224', 'suff.png'),
(16, 'Hulu', 'hollywood', '2002', 'movies', '3$', 'hulu.png'),
(17, 'Avatar', 'hollywood', '2012', 'movies', '13$', 'avatar.png'),
(18, 'Bear', 'hollywood', '2021', 'movies', '122$', 'bear.png'),
(19, 'Inception', 'hollywood', '2014', 'movies', '200$', 'inception.png'),
(20, 'Talee', 'tamil', '2002', 'shows', '1$', 'taleee.png'),
(21, 'TV Daram', ' tulo', '2023', 'shows', '4$', 'rock.png'),
(22, 'Vearityl', 'Valaimtam', '2002', 'shows', '2$', 'varity.png'),
(23, 'LCD monitor', 'LG', '2021', 'gadgets', '40$', 'lcd-monitor.png'),
(24, 'keyboard', 'Dell', '2022', 'gadgets', '20$', 'keyboard.png'),
(25, 'rehman', 'test', '122', 'movies', '12', 'yuriy-kovalev-nN1HSDtKdlw-unsplash.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roleid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `roleid`) VALUES
(132, 'rehman', 'paki_jan@yahoo.com', '123', 1),
(133, 'rehman', 'askrehman1@gmail.com', 'a', 0),
(135, 'don', 'don@gmail.com', '123', 5),
(136, 'rehman', 'askrehman1@gmail.com', '123', 0),
(137, 'rehman', 'paki_jan@yahoo.com', '123', 0),
(138, 'rehman', 'paki_jan111@yahoo.com', '123', 0),
(139, 'aa', 'aa', 'aa', 0),
(140, 'jdkfkdjbk', 'kjkk', '123', 0),
(141, '11111111111', '1111111111', '11', 0),
(142, 'rehman', 'paki_jan@yahoo.com', '123', 0),
(143, 'paki_jan@yahoo.com', 'paki_jan@yahoo.com', '123', 0),
(144, 'paki_jan@yahoo.com', 'paki_jan@yahoo.com', '123', 0),
(145, 'askrehman1@gmail.com', 'askrehman1@gmail.com', '123', 0),
(146, 'moon', 'm.rehman5353@gmail.com', '123', 0),
(147, 'claver.coder', 'claver.coder@gmail.com', '123', 0),
(148, 'paki_jan@yahoo.com', 'paki_jan@yahoo.com', '123', 0),
(149, 'm.rehman5353@gmail.com', 'm.rehman5353@gmail.com', '123', 0),
(150, 'abdulrehman1@aol.com', 'abdulrehman1@aol.com', '123', 0),
(151, 'moonrehman44@gmail.com', 'moonrehman44@gmail.com', '123', 0),
(152, 'claver.coder@gmail.com', 'claver.coder@gmail.com', '123', 0),
(153, 'choriod.solution@gmail.com', 'choriod.solution@gmail.com', '123', 0),
(154, 'choroid.solution@gmail.com', 'choroid.solution@gmail.com', '123', 0),
(155, 'choroid.solution@gmail.com', 'choroid.solution@gmail.com', '123', 0),
(157, 'rehman', 'paki_jan@yahoo.com', '123', 0),
(158, 'paki_jan@yahoo.com', 'paki_jan@yahoo.com', '123', 0),
(159, 'dd', 'askrehman1@gmail.com', '123', 0),
(160, 'askrehman1@gmail.com', 'askrehman1@gmail.com', 'SS', 0),
(161, 'rehman', 'paki_jan@yahoo.com', '123', 0),
(162, 'Rehman', 'paki_jan@yahoo.com', '123', 0),
(163, 'choroid solution', 'choroid.solution@gmail.com', '123', 0),
(164, 'Abdul Rehman', 'abdulrehman1@aol.com', '123', 0),
(178, 'Seller', 'paki_jan@yahoo.com', '123', 2),
(179, 'customer', 'm.rehman5353@gmail.com', '123', 3),
(180, 'admin', 'mrehman@broadpeak.pk', '123', 3),
(181, 'abc', 'abc', '123', 1),
(182, 'abc', 'abc', '123', 1),
(183, 'abc', 'abc', '123', 1),
(184, 'abc', 'abc', '123', 1),
(185, 'abc', 'abc', '123', 1),
(186, 'abc', 'mrehman@broadpeak.pk', '123', 1),
(187, 'abc', 'mrehman@broadpeak.pk', '123', 1),
(188, 'abc', 'mrehman@broadpeak.pk', '123', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productinfo`
--
ALTER TABLE `productinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productsinfo`
--
ALTER TABLE `productsinfo`
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
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `productinfo`
--
ALTER TABLE `productinfo`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productsinfo`
--
ALTER TABLE `productsinfo`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
