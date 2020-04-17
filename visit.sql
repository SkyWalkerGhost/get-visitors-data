-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2020 at 07:14 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbname_eagblogge`
--

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `visit_id` int(11) NOT NULL,
  `visitors_ip_address` varchar(200) NOT NULL,
  `visitors_country` varchar(300) NOT NULL,
  `visitors_city` varchar(300) NOT NULL,
  `visitors_region` varchar(300) NOT NULL,
  `visitors_continent` varchar(300) NOT NULL,
  `visitors_latitude` varchar(300) NOT NULL,
  `visitors_longitude` varchar(300) NOT NULL,
  `visitors_timezone` varchar(300) NOT NULL,
  `visitors_time` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`visit_id`, `visitors_ip_address`, `visitors_country`, `visitors_city`, `visitors_region`, `visitors_continent`, `visitors_latitude`, `visitors_longitude`, `visitors_timezone`, `visitors_time`) VALUES
(1, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:21:10 17/04/2020'),
(2, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:21:21 17/04/2020'),
(3, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:21:46 17/04/2020'),
(4, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:24:19 17/04/2020'),
(5, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:24:37 17/04/2020'),
(6, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:24:54 17/04/2020'),
(7, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:24:58 17/04/2020'),
(8, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:25:14 17/04/2020'),
(9, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:25:40 17/04/2020'),
(10, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:25:56 17/04/2020'),
(11, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:26:20 17/04/2020'),
(12, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:26:39 17/04/2020'),
(13, '::1', '', '', '', '', '', '', '', '20:29:32 17/04/2020'),
(14, '::1', '', '', '', '', '', '', '', '20:29:35 17/04/2020'),
(15, '::1', '', '', '', '', '', '', '', '20:29:37 17/04/2020'),
(16, '::1', '', '', '', '', '', '', '', '20:29:41 17/04/2020'),
(17, '::1', '', '', '', '', '', '', '', '20:29:43 17/04/2020'),
(18, '::1', '', '', '', '', '', '', '', '20:29:46 17/04/2020'),
(19, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:48 17/04/2020'),
(20, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:48 17/04/2020'),
(21, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:49 17/04/2020'),
(22, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:49 17/04/2020'),
(23, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:50 17/04/2020'),
(24, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:50 17/04/2020'),
(25, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:51 17/04/2020'),
(26, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:52 17/04/2020'),
(27, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:52 17/04/2020'),
(28, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:52 17/04/2020'),
(29, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:53 17/04/2020'),
(30, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:53 17/04/2020'),
(31, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:53 17/04/2020'),
(32, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:54 17/04/2020'),
(33, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:55 17/04/2020'),
(34, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:56 17/04/2020'),
(35, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:56 17/04/2020'),
(36, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:57 17/04/2020'),
(37, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:57 17/04/2020'),
(38, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:57 17/04/2020'),
(39, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:58 17/04/2020'),
(40, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:58 17/04/2020'),
(41, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:58 17/04/2020'),
(42, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:59 17/04/2020'),
(43, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:59 17/04/2020'),
(44, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:29:59 17/04/2020'),
(45, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:30:00 17/04/2020'),
(46, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:30:00 17/04/2020'),
(47, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:30:01 17/04/2020'),
(48, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:30:01 17/04/2020'),
(49, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:30:02 17/04/2020'),
(50, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:30:03 17/04/2020'),
(51, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:30:04 17/04/2020'),
(52, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:30:04 17/04/2020'),
(53, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:30:11 17/04/2020'),
(54, '::1', 'Georgia', 'Tbilisi', 'K\'alak\'i T\'bilisi', 'Asia', '41.6959', '44.832', 'Asia/Tbilisi', '20:30:12 17/04/2020');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`visit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `visit`
--
ALTER TABLE `visit`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
