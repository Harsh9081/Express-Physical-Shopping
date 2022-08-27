-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2022 at 11:51 AM
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
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(3, 'pbkdf2_sha256$320000$FNW4kR9NhTUWSSa7TA1Z31$4h8E8RaUAsZMlkGVBYnsLhcKV1gq+Ks48IkVJTE8PC4=', '2022-04-09 06:05:33.572363', 0, 'mohan12', 'Ajay', 'Soni', 'abhushan@gmail.com', 0, 1, '2022-04-07 17:33:44.235327'),
(4, 'pbkdf2_sha256$320000$0bbXIVsZUBVi9etSaLAK9z$uq56a7zZUXV8FtoJoitwA550Ekce1qJ04b0bfcN3T5c=', NULL, 0, 'harshp12', 'Harsh', 'Prajapati', 'harsh@123.gmail.com', 0, 1, '2022-04-07 17:37:13.151190'),
(5, 'pbkdf2_sha256$320000$8Prip8XpYHkaIRLvK9zZ6d$3OqibfTyipsO2LpVAMt4SDtdkdge38drSfaFLXOnueU=', '2022-04-13 06:27:40.824636', 0, 'abhushan', 'Abhushan', 'jewellery', 'abhushan@gmail.com', 0, 1, '2022-04-07 17:41:31.942851'),
(6, 'pbkdf2_sha256$320000$ZGTixVg8BgzuMxH6sTO8M7$E+rz6GrgBiFjBNxtSDUUHXY1ZhUXWNxuzSF5BTlycN8=', '2022-04-13 07:23:38.247383', 1, 'admin123', '', '', 'admin123@gmail.com', 1, 1, '2022-04-09 07:47:09.793332'),
(13, 'pbkdf2_sha256$320000$kIzAOCc3fegmjxRxzCNtsx$dfCiEdsINfEtGrfLzE8MQmpTCguleOEh0vk3/tUA/28=', '2022-04-13 07:59:29.585037', 0, 'abhushan_cgroad', 'Abhushan Jewelers', 'CG Road', 'abhsushan_cgroad@gmail.com', 0, 1, '2022-04-13 07:25:26.311423'),
(14, 'pbkdf2_sha256$320000$2n1zWVD46FaS17dlfV6Tox$UnendaqVPOJdsUkPx5nopAqurPPeE3MbGdeDC5sIFc0=', '2022-04-13 08:00:17.819408', 0, 'abhushan_isanpur', 'Abhshan_jewelers', 'Isanpur', 'abhushan_isanpur@gmail.com', 0, 1, '2022-04-13 07:26:39.514286'),
(15, 'pbkdf2_sha256$320000$VQkWFATRy22PeyvAb3xLG3$/Yzi2VTgk3zdNl7VwP+OOp/iEywRkdPtjmzIfxhPeB4=', NULL, 0, 'abhushan_ghodasar', 'Abhushan_jewelers', 'Ghodasar', 'abhushan_ghodasar@gmail.com', 0, 1, '2022-04-13 07:27:56.724353'),
(16, 'pbkdf2_sha256$320000$wkp8O3xzQelEFX5HtNPI20$Qhg0XQxCRUjPqJirQ1j0PuMiXafFw7qZhsVw1sKfH7k=', NULL, 0, 'abhushan_nikol', 'Abhushan_jewelers', 'Nikol', 'abhushan_nikol@gmail.com', 0, 1, '2022-04-13 07:28:46.634271'),
(17, 'pbkdf2_sha256$320000$C3vwdKxjIbqziYmGbJPsPn$oQ3eO/iMBzxVa7vHIs2u150EsjPL1ZDaALHwF821RTY=', '2022-04-13 07:37:42.292897', 0, 'alkesh123', 'Alkesh', 'Kaba', 'alkesh@gmail.com', 0, 1, '2022-04-13 07:33:27.548633');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
