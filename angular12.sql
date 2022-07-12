-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2022 at 03:51 AM
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
-- Database: `angular12`
--

-- --------------------------------------------------------

--
-- Table structure for table `angularuser_tbl`
--

CREATE TABLE `angularuser_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `angularuser_tbl`
--

INSERT INTO `angularuser_tbl` (`id`, `name`, `email`, `password`, `photo`) VALUES
(2, 'Vidyut Mandal', 'vidyut.star006@gmail.com', '123456', '78643_8886.png'),
(3, 'Vidyut Mandal', 'vidyut.star004@gmail.com', '132321', '16990_4038.png'),
(4, 'Vidyut Mandal', 'vidyut.star0064@gmail.com', '344354353', '72195_75832.jpg'),
(5, 'Vidyut Mandal', 'vidyut@123.com', '344354353', '35418_75832.jpg'),
(6, 'Vidyut Mandal', 'vidyu23t.star006@gmail.com', '23233232', '11634_764461.jpg'),
(9, 'Vidyut Mandal', 'vidyut.star00ew6@gmail.com', '453534534', '99867_10570.jpg'),
(13, 'Vidyut Mandal', 'vidyut.star00446@gmail.com', '12345678', '98171_977271.jpg');

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
(1, '2022_06_23_021424_demo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `multiples`
--

CREATE TABLE `multiples` (
  `id` int(11) NOT NULL,
  `cid` varchar(200) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `price` varchar(250) DEFAULT NULL,
  `qty` varchar(250) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `currentdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `multiples`
--

INSERT INTO `multiples` (`id`, `cid`, `name`, `price`, `qty`, `photo`, `currentdate`) VALUES
(1, '1', '1', '1', '1', 'multiple_58452_2779758.jpg', '2022-06-15 13:16:28'),
(2, '1', '2', '2', '2', 'multiple_32814_6468458.jpg', '2022-06-15 13:16:28'),
(3, '1', '3', '3', '3', 'multiple_72412_6105330.jpg', '2022-06-15 13:16:28'),
(4, '2', '1', '1', '1', 'multiple_41311_2779758.jpg', '2022-06-15 13:16:35'),
(5, '2', '2', '2', '2', 'multiple_76736_6468458.jpg', '2022-06-15 13:16:35'),
(6, '2', '3', '3', '3', 'multiple_88612_6105330.jpg', '2022-06-15 13:16:35'),
(7, '3', '1', '3', '2', 'multiple_28299_31126.jpg', '2022-06-18 01:44:31'),
(8, '3', '1', '3', '2', 'multiple_76940_6105330.jpg', '2022-06-18 01:44:31'),
(9, '3', '1', '3', '2', 'multiple_84100_1230664.jpg', '2022-06-18 01:44:31'),
(14, '3', '1', '3', '2', 'multiple_93420_1133693.jpg', '2022-06-19 06:42:19'),
(16, '3', '4', '4', '4', NULL, '2022-06-24 14:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `multiples_user_data`
--

CREATE TABLE `multiples_user_data` (
  `id` int(11) NOT NULL,
  `cname` varchar(300) DEFAULT NULL,
  `cemail` varchar(300) DEFAULT NULL,
  `cphone` varchar(300) DEFAULT NULL,
  `currentdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `multiples_user_data`
--

INSERT INTO `multiples_user_data` (`id`, `cname`, `cemail`, `cphone`, `currentdate`, `update_date`) VALUES
(1, 'Vidyut Mandal', 'vidyut.star006@gmail.com', '9876584321', '2022-06-15 13:16:26', '2022-06-18 01:45:46'),
(2, 'bidyut Mandal', 'vidyut.star0061@gmail.com', '9876548321', '2022-06-15 13:16:33', '2022-06-18 01:45:44'),
(3, 'vk kumar', 'vidyut.star006@gmail.com', '1234567890', '2022-06-18 01:44:30', '2022-06-19 13:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `myblog_logindetails_tbl`
--

CREATE TABLE `myblog_logindetails_tbl` (
  `id` int(11) NOT NULL,
  `tokenable_id` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  `tokenable_type` longtext DEFAULT NULL,
  `user_agent` varchar(300) NOT NULL,
  `last_used_at` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myblog_logindetails_tbl`
--

INSERT INTO `myblog_logindetails_tbl` (`id`, `tokenable_id`, `email`, `token`, `tokenable_type`, `user_agent`, `last_used_at`, `created_at`, `updated_at`, `status`) VALUES
(1, '1', 'mondalbidyut38@gmail.com', 'a110a06658c42a075b15ca005e67608b6029c7b1ad00818680982e1e85ca407e', 'http://127.0.0.1:8000/myblog/access/viewallmultidata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', '2022-06-23 08:29:51 PM', '2022-06-23 14:58:00', '2022-06-23 14:59:51', 'Expired'),
(2, '1', 'mondalbidyut38@gmail.com', '4f4d19c5c8bf883824a54cdd8e8ca775a5e7faca55dfb34baa78c731ac67f420', 'http://127.0.0.1:8000/myblog/access/alldata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', '2022-06-23 08:30:43 PM', '2022-06-23 15:00:09', '2022-06-23 15:00:43', 'Expired'),
(3, '1', 'mondalbidyut38@gmail.com', '3b9e951deabd2c3c3a46422e445eac226819a8a7bfd6859ddea8bc72be445052', 'http://127.0.0.1:8000/myblog/access/multiusersearch/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', '2022-06-24 08:40:49 PM', '2022-06-24 14:47:19', '2022-06-24 15:10:49', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `myblog_register_tbl`
--

CREATE TABLE `myblog_register_tbl` (
  `id` int(11) NOT NULL,
  `login_check` varchar(100) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `admin_check` varchar(100) NOT NULL,
  `currentdate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myblog_register_tbl`
--

INSERT INTO `myblog_register_tbl` (`id`, `login_check`, `name`, `email`, `phone`, `password`, `photo`, `admin_check`, `currentdate`) VALUES
(1, '1', 'Bidyut Mandal', 'mondalbidyut38@gmail.com', '7735501335', '$2y$10$BIAbqb6Dm9V2B1gwP/8lqODHruDbCl89XuTpzZymitVIfDf68vGW6', '39637_151695.jpg', 'approved', '2022-02-25'),
(2, '0', 'Vidyut Mandal', 'vidyut.star006@gmail.com', '7735501336', '$2y$10$CABBOXz/JK/ENz9MWATLwe2DEOb/yAcRGK0Q.f.n0P39HEypHk.dm', '28151_816285.jpg', 'pending', '2022-02-25'),
(5, '0', 'Sidhant Patra', 'sidhant1@gmail.com', '9777624356', '$2y$10$INafuel6hluzx.c2F7d3p.Bh6TNMilFocp1YlUg0jrsn6ePsygzNC', '41683_8886.png', 'pending', '2022-02-26'),
(7, '0', 'Vidyut Mandal', 'vidyut.star0065@gmail.com', '9777624355', '$2y$10$PQk1iuTo4Fe2Hko/xJVxGuDfcF7YPEK/C/fktwSPiAZxfbv4PAUsW', '30220_2764854.bmp', 'pending', '2022-03-10'),
(8, 'FALSE', 'Vidyut Mandal', 'vidyut.star005@gmail.com', '9777624351', '$2y$10$B09yQnlKVoSqmBa6OwZY0OcVxaa8S7AqjnGlbyF.rHwHCqjrNedk2', '55310_20649.jpg', 'pending', '2022-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `newdemo_tbl`
--

CREATE TABLE `newdemo_tbl` (
  `id` int(11) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `photo` varchar(300) DEFAULT NULL,
  `user_agent` longtext DEFAULT NULL,
  `currentdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newdemo_tbl`
--

INSERT INTO `newdemo_tbl` (`id`, `email`, `password`, `photo`, `user_agent`, `currentdate`) VALUES
(3, 'anita@gmail.com', '$2y$10$BJxWkQ1kb.PAWfc2EqxK8uuousI.N80.AeRNPTl8wfR3Z0eGDTYva', '48509_2764854.bmp', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '2022-05-15 14:56:33'),
(5, 'email1@gmail.com', '$2y$10$cGxLfD77wv7/iEAGvTH65uIkvoiYTatgEacCNyVHa..piZDO9qncK', '73186_2764854.bmp', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '2022-05-15 15:00:44'),
(6, 'minati@gmail.com', '$2y$10$OD/R0rH3frvWFC3Nqb2vvujtFnukh.Z0RRPddKH3ZHnRQ0/2FjyLG', '98064_977271.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '2022-05-15 15:01:14'),
(7, 'jyoti@gmail.com', '$2y$10$VRb5LBtLYLDKIPYkaSyLnOOp9ElxAl2rcoGE3GUl7KzwQJ8Y0yNki', '59569_1133693.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '2022-05-15 15:53:01'),
(8, 'bidyut@gmail.com', '$2y$10$/8ytJNNsBX5Tx6t2ZmWbSelKCu/BaTh.1LvTAORamvzrWxhoSjJye', '14639_2764854.bmp', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.115 Safari/537.36', '2022-05-17 01:21:09'),
(9, 'vidyut@gmail.com', '$2y$10$SeCwvYvFUktnte4FpWNJ.u6gYbWfIYD8GyhCr6ZdmkccihyzTWihW', '68425_8886.png', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.115 Safari/537.36', '2022-05-17 01:21:33'),
(16, 'n@gmail.com', '$2y$10$rrYDRfdLbP/KEko.UXKJTOChv0ouiCRqfRc3MDUVAu6/wYDpoM2U.', '52755_8271536.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', '2022-06-24 14:48:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `angularuser_tbl`
--
ALTER TABLE `angularuser_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multiples`
--
ALTER TABLE `multiples`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multiples_user_data`
--
ALTER TABLE `multiples_user_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myblog_logindetails_tbl`
--
ALTER TABLE `myblog_logindetails_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myblog_register_tbl`
--
ALTER TABLE `myblog_register_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newdemo_tbl`
--
ALTER TABLE `newdemo_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `angularuser_tbl`
--
ALTER TABLE `angularuser_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `multiples`
--
ALTER TABLE `multiples`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `multiples_user_data`
--
ALTER TABLE `multiples_user_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `myblog_logindetails_tbl`
--
ALTER TABLE `myblog_logindetails_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `myblog_register_tbl`
--
ALTER TABLE `myblog_register_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `newdemo_tbl`
--
ALTER TABLE `newdemo_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
