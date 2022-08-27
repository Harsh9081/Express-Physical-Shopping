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
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` bigint(20) NOT NULL,
  `subcategoryname` varchar(30) NOT NULL,
  `addcategory_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `subcategoryname`, `addcategory_id`) VALUES
(1, 'Ring', 1),
(2, 'Ring', 2),
(3, 'Ring', 3),
(4, 'Ring', 4),
(5, 'Earings', 1),
(6, 'Earings', 2),
(7, 'Pandents', 1),
(8, 'Pandents', 2),
(9, 'Mangalsutra', 1),
(10, 'Mangalsutra', 2),
(11, 'Chain', 1),
(12, 'Chain', 2),
(13, 'Necklace', 1),
(14, 'Necklace', 2),
(15, 'Nosepin', 1),
(16, 'Nosepin', 2),
(17, 'Couple Rings', 1),
(18, 'Couple Rings', 2),
(19, 'Couple Rings', 4),
(20, 'Necklaces Set', 1),
(21, 'Necklaces Set', 2),
(22, 'Bangles', 1),
(23, 'Bangles', 2),
(24, 'Bracelet', 1),
(25, 'Bracelet', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategory_addcategory_id_293963a9_fk_category_id` (`addcategory_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_addcategory_id_293963a9_fk_category_id` FOREIGN KEY (`addcategory_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
