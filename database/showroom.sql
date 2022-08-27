-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2022 at 11:53 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abhushan`
--

-- --------------------------------------------------------

--
-- Table structure for table `showroom`
--

CREATE TABLE `showroom` (
  `id` bigint(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `address` longtext NOT NULL,
  `show_name` longtext NOT NULL,
  `uname` varchar(40) NOT NULL,
  `password` longtext NOT NULL,
  `areaid_id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `showroom`
--

INSERT INTO `showroom` (`id`, `email`, `contact`, `address`, `show_name`, `uname`, `password`, `areaid_id`, `user_id`) VALUES
(8, 'abhsushan_cgroad@gmail.com', 887784577, 'Cg Road', 'Cg Road', 'abhushan_cgroad', '123', 1, 13),
(9, 'abhushan_isanpur@gmail.com', 784575457, 'Isanpur', 'Isanpur', 'abhushan_isanpur', '123', 2, 14),
(10, 'abhushan_ghodasar@gmail.com', 8784575441, 'Ghodasar', 'Ghodasar', 'abhushan_ghodasar', '123', 3, 15),
(11, 'abhushan_nikol@gmail.com', 8754577455, 'Nikol', 'Nikol', 'abhushan_nikol', '123', 4, 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `showroom`
--
ALTER TABLE `showroom`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `showroom_areaid_id_ff51521d_fk_area_id` (`areaid_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `showroom`
--
ALTER TABLE `showroom`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `showroom`
--
ALTER TABLE `showroom`
  ADD CONSTRAINT `showroom_areaid_id_ff51521d_fk_area_id` FOREIGN KEY (`areaid_id`) REFERENCES `area` (`id`),
  ADD CONSTRAINT `showroom_user_id_4460de82_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
