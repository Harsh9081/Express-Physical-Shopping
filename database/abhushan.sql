-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2022 at 02:04 AM
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
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` bigint(20) NOT NULL,
  `areaname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `areaname`) VALUES
(1, 'CG Road'),
(2, 'Isanpur'),
(3, 'Ghodasar'),
(4, 'Nikol');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add contactus1', 7, 'add_contactus1'),
(26, 'Can change contactus1', 7, 'change_contactus1'),
(27, 'Can delete contactus1', 7, 'delete_contactus1'),
(28, 'Can view contactus1', 7, 'view_contactus1'),
(29, 'Can add feedback2', 8, 'add_feedback2'),
(30, 'Can change feedback2', 8, 'change_feedback2'),
(31, 'Can delete feedback2', 8, 'delete_feedback2'),
(32, 'Can view feedback2', 8, 'view_feedback2'),
(33, 'Can add inquiry1', 9, 'add_inquiry1'),
(34, 'Can change inquiry1', 9, 'change_inquiry1'),
(35, 'Can delete inquiry1', 9, 'delete_inquiry1'),
(36, 'Can view inquiry1', 9, 'view_inquiry1'),
(37, 'Can add wishlist', 10, 'add_wishlist'),
(38, 'Can change wishlist', 10, 'change_wishlist'),
(39, 'Can delete wishlist', 10, 'delete_wishlist'),
(40, 'Can view wishlist', 10, 'view_wishlist'),
(41, 'Can add cart', 11, 'add_cart'),
(42, 'Can change cart', 11, 'change_cart'),
(43, 'Can delete cart', 11, 'delete_cart'),
(44, 'Can view cart', 11, 'view_cart'),
(45, 'Can add booking', 12, 'add_booking'),
(46, 'Can change booking', 12, 'change_booking'),
(47, 'Can delete booking', 12, 'delete_booking'),
(48, 'Can view booking', 12, 'view_booking'),
(49, 'Can add addcat', 13, 'add_addcat'),
(50, 'Can change addcat', 13, 'change_addcat'),
(51, 'Can delete addcat', 13, 'delete_addcat'),
(52, 'Can view addcat', 13, 'view_addcat'),
(53, 'Can add area', 14, 'add_area'),
(54, 'Can change area', 14, 'change_area'),
(55, 'Can delete area', 14, 'delete_area'),
(56, 'Can view area', 14, 'view_area'),
(57, 'Can add role', 15, 'add_role'),
(58, 'Can change role', 15, 'change_role'),
(59, 'Can delete role', 15, 'delete_role'),
(60, 'Can view role', 15, 'view_role'),
(61, 'Can add profile', 16, 'add_profile'),
(62, 'Can change profile', 16, 'change_profile'),
(63, 'Can delete profile', 16, 'delete_profile'),
(64, 'Can view profile', 16, 'view_profile'),
(65, 'Can add addsubcat', 17, 'add_addsubcat'),
(66, 'Can change addsubcat', 17, 'change_addsubcat'),
(67, 'Can delete addsubcat', 17, 'delete_addsubcat'),
(68, 'Can view addsubcat', 17, 'view_addsubcat'),
(69, 'Can add addshowrom', 18, 'add_addshowrom'),
(70, 'Can change addshowrom', 18, 'change_addshowrom'),
(71, 'Can delete addshowrom', 18, 'delete_addshowrom'),
(72, 'Can view addshowrom', 18, 'view_addshowrom'),
(73, 'Can add addpro', 19, 'add_addpro'),
(74, 'Can change addpro', 19, 'change_addpro'),
(75, 'Can delete addpro', 19, 'delete_addpro'),
(76, 'Can view addpro', 19, 'view_addpro'),
(77, 'Can add profile1', 20, 'add_profile1'),
(78, 'Can change profile1', 20, 'change_profile1'),
(79, 'Can delete profile1', 20, 'delete_profile1'),
(80, 'Can view profile1', 20, 'view_profile1'),
(81, 'Can add profile2', 21, 'add_profile2'),
(82, 'Can change profile2', 21, 'change_profile2'),
(83, 'Can delete profile2', 21, 'delete_profile2'),
(84, 'Can view profile2', 21, 'view_profile2'),
(85, 'Can add feedback3', 22, 'add_feedback3'),
(86, 'Can change feedback3', 22, 'change_feedback3'),
(87, 'Can delete feedback3', 22, 'delete_feedback3'),
(88, 'Can view feedback3', 22, 'view_feedback3'),
(89, 'Can add feedback', 22, 'add_feedback'),
(90, 'Can change feedback', 22, 'change_feedback'),
(91, 'Can delete feedback', 22, 'delete_feedback'),
(92, 'Can view feedback', 22, 'view_feedback'),
(93, 'Can add inquiry2', 23, 'add_inquiry2'),
(94, 'Can change inquiry2', 23, 'change_inquiry2'),
(95, 'Can delete inquiry2', 23, 'delete_inquiry2'),
(96, 'Can view inquiry2', 23, 'view_inquiry2'),
(97, 'Can add inquiry', 23, 'add_inquiry'),
(98, 'Can change inquiry', 23, 'change_inquiry'),
(99, 'Can delete inquiry', 23, 'delete_inquiry'),
(100, 'Can view inquiry', 23, 'view_inquiry');

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
(6, 'pbkdf2_sha256$320000$ZGTixVg8BgzuMxH6sTO8M7$E+rz6GrgBiFjBNxtSDUUHXY1ZhUXWNxuzSF5BTlycN8=', '2022-05-05 21:23:19.629634', 1, 'admin123', '', '', 'admin123@gmail.com', 1, 1, '2022-04-09 07:47:09.793332'),
(13, 'pbkdf2_sha256$320000$kIzAOCc3fegmjxRxzCNtsx$dfCiEdsINfEtGrfLzE8MQmpTCguleOEh0vk3/tUA/28=', '2022-04-13 07:59:29.585037', 0, 'abhushan_cgroad', 'Abhushan Jewelers', 'CG Road', 'abhsushan_cgroad@gmail.com', 0, 1, '2022-04-13 07:25:26.311423'),
(14, 'pbkdf2_sha256$320000$2n1zWVD46FaS17dlfV6Tox$UnendaqVPOJdsUkPx5nopAqurPPeE3MbGdeDC5sIFc0=', '2022-05-05 23:25:31.295926', 0, 'abhushan_isanpur', 'Abhshan_jewelers', 'Isanpur', 'abhushan_isanpur@gmail.com', 0, 1, '2022-04-13 07:26:39.514286'),
(15, 'pbkdf2_sha256$320000$VQkWFATRy22PeyvAb3xLG3$/Yzi2VTgk3zdNl7VwP+OOp/iEywRkdPtjmzIfxhPeB4=', NULL, 0, 'abhushan_ghodasar', 'Abhushan_jewelers', 'Ghodasar', 'abhushan_ghodasar@gmail.com', 0, 1, '2022-04-13 07:27:56.724353'),
(16, 'pbkdf2_sha256$320000$wkp8O3xzQelEFX5HtNPI20$Qhg0XQxCRUjPqJirQ1j0PuMiXafFw7qZhsVw1sKfH7k=', NULL, 0, 'abhushan_nikol', 'Abhushan_jewelers', 'Nikol', 'abhushan_nikol@gmail.com', 0, 1, '2022-04-13 07:28:46.634271'),
(29, 'pbkdf2_sha256$320000$b2LRWaDOfA82ugoLUr8MLf$dHanAlciiJ0aqEu7Sx6CAAFoVF9cPdIpfTt13yeMgl4=', '2022-05-05 23:19:55.508506', 0, 'harsh123', 'Harsh', 'Vaghela', 'harshvaghela890@gmail.com', 0, 1, '2022-05-05 23:19:40.812989'),
(30, 'pbkdf2_sha256$320000$8BMaVQ8RKqDBZmTjD1Z6Fq$04PFUp/18oDPXREcZGokmiJ+XIxaNewp2LL/gBe29lE=', '2022-05-05 23:28:16.964437', 0, 'mohan123', 'Mohan', 'Prajapati', 'mansi123@gmail.com', 0, 1, '2022-05-05 23:28:03.883932'),
(31, 'pbkdf2_sha256$320000$MmGK7VT5GiVp61QU3xf0Dg$HRtBesl3nz/FAWQa5WG7cpIzxeMhmkz93bgPQRmck4c=', '2022-05-05 23:32:25.282734', 0, 'harshp123', 'Harsh', 'Prajpati', 'harshp12@gmail.com', 0, 1, '2022-05-05 23:31:44.012336'),
(32, 'pbkdf2_sha256$320000$MpcbMGlfn0mhO0Pt0jQUj8$6XpWO7fkv2BKqy+8PV9yuxXUwzWaV6hJQmOrXKNgbYc=', '2022-05-05 23:36:59.745618', 0, 'manali123', 'Manali', 'Desai', 'manali123@gmail.com', 0, 1, '2022-05-05 23:36:44.989100'),
(33, 'pbkdf2_sha256$320000$mfq3MTvEB5QY2CkF4QFSzy$qQTmm08aCvcRl3d2lBt81UAl/VSiM5AxOBkaZXfQPPk=', '2022-05-05 23:39:02.486954', 0, 'mansi123', 'Mansi', 'Dungariya', 'mansi123@gmail.com', 0, 1, '2022-05-05 23:38:51.092934'),
(34, 'pbkdf2_sha256$320000$c94uDju9MwQAlc4A1WbLn3$AbCr70S/DCvi6R0Bza2eWvfJYeL+guuD87rq6E10wKk=', '2022-05-05 23:41:50.989798', 0, 'dirgh123', 'Dirgh', 'Rami', 'dirgh123@gmail.com', 0, 1, '2022-05-05 23:41:42.715649'),
(35, 'pbkdf2_sha256$320000$CSPJL3hiGuou84EIv4iYJN$h8/trgY3WcBf3Xhl5YM9xMO6khg5KuHYCq2UBybt+jM=', '2022-05-05 23:44:37.774608', 0, 'tirth123', 'Tirth', 'Gajjar', 'tirth123@gmail.com', 0, 1, '2022-05-05 23:44:24.190002'),
(36, 'pbkdf2_sha256$320000$pU3M5cbNrH3V22t9sbw8Dn$uQ6CwqvbYdsi6MOll05ifmMxCAyMC5Fpf8QxAV9bstE=', '2022-05-05 23:49:59.597765', 0, 'prachi123', 'Prachi', 'Dabhi', 'prachi123@gmail.com', 0, 1, '2022-05-05 23:49:40.729213'),
(37, 'pbkdf2_sha256$320000$b2St9pjv2ne4BMKNzEWRW1$NAvf3eFw9grHfU3uXltryi0DDDRC7DBPniv0ROUYLbU=', '2022-05-05 23:54:22.650972', 0, 'richard123', 'Richard', 'Pijkar', 'richard123@gmail.com', 0, 1, '2022-05-05 23:54:04.869016');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` bigint(20) NOT NULL,
  `bookdate` date NOT NULL,
  `booktime` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `remarks` longtext NOT NULL,
  `addshowrom_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `bookdate`, `booktime`, `status`, `remarks`, `addshowrom_id`, `user_id`) VALUES
(1, '2022-05-14', '10:00 to 10:30', 'pending', '', 9, 29),
(2, '2022-05-26', '11:30 to 11:30', 'pending', '', 9, 30),
(3, '2022-05-07', '1:00 to 1:30', 'pending', '', 9, 31),
(4, '2022-05-08', '10:30 to 11:00', 'pending', '', 9, 32),
(5, '2022-05-20', '10:30 to 11:00', 'pending', '', 9, 33),
(6, '2022-05-20', '1:00 to 1:30', 'pending', '', 9, 34),
(7, '2022-05-26', '1:30 to 2:00', 'pending', '', 9, 35),
(8, '2022-05-07', '9:30 to 10:30', 'pending', '', 9, 36),
(9, '2022-05-13', '10:30 to 11:00', 'pending', '', 9, 37);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `categoryname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryname`) VALUES
(1, 'Diamond'),
(2, 'Gold'),
(3, 'Silver'),
(4, 'Platinum');

-- --------------------------------------------------------

--
-- Table structure for table `contactus1`
--

CREATE TABLE `contactus1` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `message` varchar(800) NOT NULL,
  `subject` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_cart`
--

CREATE TABLE `customer_cart` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_cart`
--

INSERT INTO `customer_cart` (`id`, `quantity`, `product_id`, `user_id`) VALUES
(1, 1, 83, 29),
(2, 1, 60, 29),
(3, 1, 28, 29),
(4, 1, 24, 30),
(5, 1, 96, 30),
(6, 1, 20, 30),
(7, 1, 5, 30),
(8, 1, 69, 31),
(9, 1, 82, 31),
(10, 1, 48, 31),
(11, 1, 90, 32),
(12, 1, 45, 32),
(13, 1, 36, 32),
(14, 1, 66, 32),
(15, 1, 7, 33),
(16, 1, 103, 33),
(18, 1, 50, 33),
(19, 1, 91, 33),
(20, 1, 33, 34),
(21, 1, 64, 34),
(22, 1, 82, 34),
(23, 1, 18, 35),
(24, 1, 47, 35),
(25, 1, 77, 35),
(26, 1, 53, 36),
(27, 1, 16, 36),
(28, 2, 10, 37);

-- --------------------------------------------------------

--
-- Table structure for table `customer_wishlist`
--

CREATE TABLE `customer_wishlist` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(12, 'customer', 'booking'),
(11, 'customer', 'cart'),
(7, 'customer', 'contactus1'),
(22, 'customer', 'feedback'),
(8, 'customer', 'feedback2'),
(23, 'customer', 'inquiry'),
(9, 'customer', 'inquiry1'),
(20, 'customer', 'profile1'),
(10, 'customer', 'wishlist'),
(13, 'myadmin2', 'addcat'),
(19, 'myadmin2', 'addpro'),
(18, 'myadmin2', 'addshowrom'),
(17, 'myadmin2', 'addsubcat'),
(14, 'myadmin2', 'area'),
(16, 'myadmin2', 'profile'),
(21, 'myadmin2', 'profile2'),
(15, 'myadmin2', 'role'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-04-14 09:52:35.903343'),
(2, 'auth', '0001_initial', '2022-04-14 09:52:36.965895'),
(3, 'admin', '0001_initial', '2022-04-14 09:52:37.155031'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-04-14 09:52:37.155031'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-14 09:52:37.170760'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-04-14 09:52:37.248872'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-04-14 09:52:37.342485'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-04-14 09:52:37.358077'),
(9, 'auth', '0004_alter_user_username_opts', '2022-04-14 09:52:37.358077'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-04-14 09:52:37.436181'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-04-14 09:52:37.451890'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-14 09:52:37.451890'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-04-14 09:52:37.483047'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-04-14 09:52:37.498670'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-04-14 09:52:37.561183'),
(16, 'auth', '0011_update_proxy_permissions', '2022-04-14 09:52:37.576800'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-04-14 09:52:37.592428'),
(18, 'myadmin2', '0001_initial', '2022-04-14 09:52:38.514059'),
(19, 'customer', '0001_initial', '2022-04-14 09:52:39.453317'),
(20, 'sessions', '0001_initial', '2022-04-14 09:52:39.510995'),
(21, 'customer', '0002_profile1', '2022-04-18 17:25:30.361677'),
(22, 'myadmin2', '0002_profile2', '2022-04-18 17:44:08.726129'),
(23, 'myadmin2', '0003_delete_profile', '2022-04-18 17:45:10.531510'),
(24, 'customer', '0003_delete_profile1', '2022-04-18 17:47:04.320972'),
(25, 'myadmin2', '0004_rename_profile2_profile_alter_profile_table', '2022-04-18 17:48:04.862493'),
(26, 'myadmin2', '0005_alter_profile_forget_password_token', '2022-04-18 18:07:48.686988'),
(27, 'customer', '0004_feedback3', '2022-04-19 06:49:04.045958'),
(28, 'customer', '0005_delete_feedback2', '2022-04-19 06:49:39.641042'),
(29, 'customer', '0006_rename_feedback3_feedback_alter_feedback_table', '2022-04-19 06:50:04.864971'),
(30, 'customer', '0007_inquiry2', '2022-04-19 07:05:42.408013'),
(31, 'customer', '0008_delete_inquiry1', '2022-04-19 07:06:10.921165'),
(32, 'customer', '0009_rename_inquiry2_inquiry_alter_inquiry_table', '2022-04-19 07:06:37.893666');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('009x2ypjx5zwthre4ndljqj4fthcpm2s', '.eJxVjMsOwiAQRf-FtSHlIVNcuvcbyAwMUjWQlHZl_HfbpAvdnnPufYuA61LC2nkOUxIXoaw4_ULC-OS6m_TAem8ytrrME8k9kYft8tYSv65H-3dQsJdtzRSTNsqRYwMAyDSMyjpUbP2ZYGMZksqUgMH5DC57YyMa1qN2lAfx-QIUyzhN:1nexa2:uxI0mdAe5tswwr4skmiXpnaB4-4htiAgTNrM1UP6cR8', '2022-04-28 11:24:06.584270'),
('1wtoakbkmp0r3aujg2vl019ij80m6bno', '.eJxVjDsOwjAQBe_iGlleb_yjpOcM1nqzwQHkSPlUiLtDpBTQvpl5L5VpW2veFpnz2KuzwqBOv2MhfkjbSX-ndps0T22dx6J3RR900depl-flcP8OKi31WztPUDp2EM0QYodWTCFEYmexWDAMkYIF6yAJk8chDR4FIoqXSJDU-wPtqTdl:1nmlIc:_xLV-XpcGFLDM4cmcbRWq1AN9oZ15lWKiOM7qSFwNjk', '2022-05-19 23:54:22.655159'),
('3bz4qm845i8l2bciu8v23chcscjd3q7x', '.eJxVjMsOwiAQRf-FtSHlIVNcuvcbyAwMUjWQlHZl_HfbpAvdnnPufYuA61LC2nkOUxIXoaw4_ULC-OS6m_TAem8ytrrME8k9kYft8tYSv65H-3dQsJdtzRSTNsqRYwMAyDSMyjpUbP2ZYGMZksqUgMH5DC57YyMa1qN2lAfx-QIUyzhN:1nmj0c:-5DejyBMnPh0nEHXr-BuAhsFg04Vy_eLmPsKbF43Mfw', '2022-05-19 21:27:38.304974'),
('8fjcnvchkfwt74di5zw9cyqa3ifcf0w5', '.eJxVjMsOwiAQRf-FtSGUNy7d-w2EYRipGkhKuzL-uzbpQrf3nHNfLKZtrXEbZYkzsjObAjv9jpDyo7Sd4D21W-e5t3WZge8KP-jg147leTncv4OaRv3WIoAnaSetvHFCAmUB3gFJ4SgVHYIsMisgYQ0WQGNJo6KgKGt0KDN7fwAGwzik:1ngonk:7E1QbMQP8sGRJztPXtO8OVNrwTORWxq2ZXmi_bVhGaE', '2022-05-03 14:25:56.761614'),
('dwku2ozed59k5dde989qx552ho4g7q6y', '.eJxVjMsOwiAQRf-FtSHlIVNcuvcbyAwMUjWQlHZl_HfbpAvdnnPufYuA61LC2nkOUxIXoaw4_ULC-OS6m_TAem8ytrrME8k9kYft8tYSv65H-3dQsJdtzRSTNsqRYwMAyDSMyjpUbP2ZYGMZksqUgMH5DC57YyMa1qN2lAfx-QIUyzhN:1nmeSz:1mg9vfQrNOeYuoNPKUR0qntROGSbD77metkBqPATfpw', '2022-05-19 16:36:37.083282'),
('iw6fizr0ff94xhk9vu5ramzfgdzscint', '.eJxVjMsOwiAQRf-FtSHlIVNcuvcbyAwMUjWQlHZl_HfbpAvdnnPufYuA61LC2nkOUxIXoaw4_ULC-OS6m_TAem8ytrrME8k9kYft8tYSv65H-3dQsJdtzRSTNsqRYwMAyDSMyjpUbP2ZYGMZksqUgMH5DC57YyMa1qN2lAfx-QIUyzhN:1nmkqh:5wH2QzEQGsoADpNRQmBHYiXhD-JD0f6OaCeOBdbDHBs', '2022-05-19 23:25:31.303348'),
('m656vtfrtm291kaesotitkx4wv0mb4uk', '.eJxVjMsOwiAQRf-FtSHlIVNcuvcbyAwMUjWQlHZl_HfbpAvdnnPufYuA61LC2nkOUxIXoaw4_ULC-OS6m_TAem8ytrrME8k9kYft8tYSv65H-3dQsJdtzRSTNsqRYwMAyDSMyjpUbP2ZYGMZksqUgMH5DC57YyMa1qN2lAfx-QIUyzhN:1newTX:srXIY6z8aYFDcO5p9H4PjkVtli9teopL4OlegHOZWL8', '2022-04-28 10:13:19.679295'),
('w0vski5fvoondxmn9fux90jpvmhc7haw', '.eJxVjMEOwiAQRP-FsyFs6S7Fo_d-A4EFpGpoUtqT8d9tkx70Npn3Zt7C-W0tbmtpcVMUV0Hi8tsFz89UDxAfvt5nyXNdlynIQ5EnbXKcY3rdTvfvoPhW9rXmjIEQjY6WOjCMCKzAKtLa7pG4y6aPmDKgJeg96xzBazUElWBI4vMFvOU3Eg:1nfGTp:gD28w-egvh0PRO--a5JnXAZMhGMrECw8X42KAE9-GLY', '2022-04-29 07:34:57.681776'),
('wvumjxtwgn9myyz4c4h6aa918pnuz6ss', '.eJxVjMsOwiAQRf-FtSHlIVNcuvcbyAwMUjWQlHZl_HfbpAvdnnPufYuA61LC2nkOUxIXoaw4_ULC-OS6m_TAem8ytrrME8k9kYft8tYSv65H-3dQsJdtzRSTNsqRYwMAyDSMyjpUbP2ZYGMZksqUgMH5DC57YyMa1qN2lAfx-QIUyzhN:1ngSgx:miKjUO8LX2gUUObKp6XWyEjbt7zY5DA5YEebF2tMmU4', '2022-05-02 14:49:27.372715'),
('zh8t7c5v6j6inb1d7zs3ybp7xvt4u8dw', '.eJxVjMsOwiAQRf-FtSHlIVNcuvcbyAwMUjWQlHZl_HfbpAvdnnPufYuA61LC2nkOUxIXoaw4_ULC-OS6m_TAem8ytrrME8k9kYft8tYSv65H-3dQsJdtzRSTNsqRYwMAyDSMyjpUbP2ZYGMZksqUgMH5DC57YyMa1qN2lAfx-QIUyzhN:1ngitA:HO2nxDTwqsvjDPX1BokTHKx2Oe6WN7_POvT-TfxAwSo', '2022-05-03 08:07:08.068357');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(254) NOT NULL,
  `review` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `message` varchar(800) NOT NULL,
  `inimage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `productprice` varchar(20) NOT NULL,
  `productweight` varchar(50) NOT NULL,
  `productsmalldesc` varchar(100) NOT NULL,
  `productlargedesc` varchar(400) NOT NULL,
  `productimage` varchar(100) NOT NULL,
  `productimage2` varchar(100) NOT NULL,
  `addcategory_id` bigint(20) NOT NULL,
  `addsubcategory_id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `productname`, `productprice`, `productweight`, `productsmalldesc`, `productlargedesc`, `productimage`, `productimage2`, `addcategory_id`, `addsubcategory_id`, `user_id`) VALUES
(1, 'Delightful 18 Karat Yellow Gold And Diamond Studded Leaf Earrings', '12495', '1.327 gm', 'These dazzling 18 Karat yellow gold studs feature a golden stem accented with 3 round prong-set diam', 'Casual Wear', 'upload/500006SCAAAA02_1_Or6Cmvn.webp', 'upload/500006SCAAAA02_2_vFUl3eL.webp', 2, 6, 3),
(2, 'Elegant Sparkle Gold And Diamond Stud Earrings', '22520', '1.321 gm', 'Carry the bright shine of this pair of stud earrings crafted in 18 Karat Yellow Gold, wherever you g', 'Make your everyday outfits stand out from the rest with the brilliance of these gold stud earrings shaped like twinkling stars and studded with diamonds.', 'upload/500006SMAAAB02_1_m9jhnWa.webp', 'upload/500006SMAAAB02_2_ZybUrgT.webp', 1, 5, 3),
(3, 'Blooming Bud Single Stone Gold Stud Earrings', '17974', '0.659 gm', 'Illuminate your office ensemble with the subtle grace of this pair of single stone stud earrings cra', 'Make sure you stand out from the crowd when you adorn these diamond studs with your favourite power suit!', 'upload/500063SLXAAA02_1_eCgWsTD.webp', 'upload/500063SLXAAA02_2_FksLGbV.webp', 1, 5, 3),
(4, 'Button Shape Diamond Stud Earrings', '12880', '0.670 gm', 'Minute Diamond Stud Earrings crafted in 18 Karat Yellow Gold. Designed for that understated casual l', 'Small but noticeable Single Stone Diamond Stud Earrings for your casual attires', 'upload/500064SWAAAA02_1_WTUZz3K.webp', 'upload/500064SWAAAA02_2_bIOweER.webp', 1, 5, 3),
(5, 'Sublime Nakshatra Diamond Stud Earrings In White Gold', '24431', '1.061 gm', 'Make waves when you adorn these simplistic nakshatra diamond stud earrings crafted in 18 karat white', 'Pave your own path with a sense of style so unique, you carve a niche for yourself above the rest. All you need is this sublime pair', 'upload/500179STBAGB09_1_OmlxLaO.webp', 'upload/500179STBAGB09_2_nQ8K6MH.webp', 2, 6, 3),
(6, 'Contemporary Dainty Heart Shaped Diamond And Gold Stud Earrings', '20775', '1.896 gm', 'Celebrate the union of gold and diamond with this pair of stud earrings crafted in 18 Karat Yellow G', 'Want a glorious piece of earrings that will say \'I love you\'? Look no further!\r\n', 'upload/500357SCAADA02_1_TGR41WN.webp', 'upload/500357SCAADA02_2_z7ROtwd.webp', 2, 6, 3),
(7, 'Fancy Artistic Single Stone Diamond Stud Earrings', '16169', '1.575 gm', 'Channel the artist within you and put her on display with this pair of stud earrings crafted in 18 K', 'Artistic and elegant, this pair of stud earrings will take onlookers\' breaths away. These earrings are perfect to pair with party wear in order to radiate class from your ensemble.', 'upload/500484SKAAGB09_1_UVvnS6E.webp', 'upload/500484SKAAGB09_2_wb5TVX9.webp', 1, 5, 3),
(8, 'Flawless Floral Diamond Stud Earrings', '26332', '1.439 gm', 'Elevate the shine of your Modern Wear look with these Floral Diamond Stud Earrings Crafted in 18 Kar', 'Make your Modern Wear look shine bright by adorning yourself with these Floral Diamond Stud Earrings.', 'upload/500760SMAAGA09_1_QE8MXih.webp', 'upload/500760SMAAGA09_2_q3OVyeA.webp', 2, 6, 3),
(9, 'Geometric Contemporary Diamond Stud Earrings', '21911', '1.633 gm', 'Keep it classy with this pair of stud earrings crafted in 18 Karat Yellow Gold with a high polished ', 'Add the grandeur of gold and the dazzle of diamonds to your ensemble with these stud earrings.', 'upload/501047SDFAAB02_1_begcxK9.webp', 'upload/501047SDFAAB02_2_UGU1a4V.webp', 1, 5, 3),
(10, 'Blissful Floral Gold And Diamond Stud Earrings', '16739', '1.295 gm', 'Leave everyone awe-struck at work when you walk in wearing this floral pair of stud earrings crafted', 'Whether it is a traditional occasion or a modern day party, this pair of floral stud earrings will not fail to bedazzle onlookers.', 'upload/501055SECADA01_1_OQhmzRv.webp', 'upload/501055SECADA01_2_uJa84JN.webp', 2, 6, 3),
(11, 'Chic Floral Diamond Stud Earrings', '14476', '0.929 gm', 'For days when you want to keep it subtle, this pair of stud earrings is crafted in 18 Karat Yellow G', 'Celebrate your beauty everyday with the charm of this pair of floral stud earrings.', 'upload/501066SMRAAA02_1_CM2MpLi.webp', 'upload/501066SMRAAA02_2_32uS2iu.webp', 2, 6, 3),
(12, 'Gorgeous Floral Diamond Stud Earrings', '13099', '0.973 gm', 'Flaunt your style by adorning yourself with these Floral Diamond Stud Earrings Crafted in 18 Karat Y', 'Turn your Casual Wear look into a stunner with these Spectacular Floral Diamond Stud Earrings.', 'upload/501066SMRAAA09_1_tWkZmn8.webp', 'upload/501066SMRAAA09_2_AHUiwbj.webp', 2, 6, 3),
(13, 'Triangular Diamond Stud Earrings', '15100', '1.020 gm', 'Fancy Triangular Diamond Stud Earrings sets your Casual style statement at the start. Crafted in 18 ', 'Simple yet stately triangular diamond Stud Earrings for your casual attires to shine out', 'upload/501066SMXAAA02_1_cBCrLu0.webp', 'upload/501066SMXAAA02_2_xkqutRJ.webp', 1, 5, 3),
(14, 'Dainty Single Stone Diamond Stud Earrings', '14999', '1.021 gm', 'Bud Shaped Single Stone Diamond Stud Earrings crafted in 18 Karat High Polish Yellow Gold, perfect f', 'Turn up the glam with these bud shaped single stone diamond stud earrings crafted in 18 Karat Gold and comes in a fine glossy finish. Makes for the ideal everyday wear accessory.', 'upload/501066SMYABA09_1_ap7dhtl.webp', 'upload/501066SMYABA09_2_bgWiBoM.webp', 1, 5, 3),
(15, 'Pristine Diamond And Pearl Drop Earrings', '21675', '2.512 gm', 'The magical combination of diamonds and pearls comes to life in these drop earrings set in 18 Karat ', 'Paint a charming picture adorned in these charming diamond and pearl drop earrings. These earrings have an almost palpable aura of grace and poise.', 'upload/501096DKMADA29_1_CMFyt8X.webp', 'upload/501096DKMADA29_2_1f1S2wA.webp', 2, 6, 3),
(16, 'Lilium Contemporary Diamond Stud Earrings', '22894', '1.269 gm', 'Floral Stud Earrings crafted in 18 Karat High Polish Yellow Gold and studded with multiple Diamonds,', 'The timeless beauty of these stud earrings are crafted to match your own. The graceful floral design will work wonders for your style!', 'upload/501145SHBAGA02_1_p1RUBnP.webp', 'upload/501145SHBAGA02_2_v8ijncg.webp', 1, 5, 3),
(17, 'Illuminating Gold And Diamond Drop Earrings', '21983', '1.615 gm', 'Make your occasion even more special with the glow of these drop earrings crafted in 18 Karat Yellow', 'These dainty drop earrings are crafted to illuminate your occasion wear. The lush design is only enhanced by our most dazzling diamonds.', 'upload/501146DBWAGB09_1_iwzktJf.webp', 'upload/501146DBWAGB09_2_2tYFFx9.webp', 2, 6, 3),
(18, 'Mia All-Rounders By Tanishq 14kt Yellow Gold Diamond Hoop Earrings With Oval Design', '25629', '2.303 gm', 'Mia All-Rounders by Tanishq 14KT Yellow Gold Diamond Hoop Earrings with Oval Design', 'This pair of 14KT yellow gold hoop earrings features twenty-six round brilliant cut diamonds that fall within the SI2 clarity and I-J colour range. Each earring showcases a rhodium-plated hoop element, accentuated with pave-set diamonds. Three oval elements in a combination of rose gold plating, white rhodium plating and yellow gold are suspended form the lower part of the hoop design. The yellow ', 'upload/552812HQUAAE22_1_1_3mmJQuT.webp', 'upload/552812HQUAAE22_2_Oppqhkf.webp', 1, 5, 3),
(19, '14kt Rose Gold Diamond Hoop Earrings', '22479', '3.202 gm', '14KT Rose Gold Diamond Hoop Earrings', 'Flaunt this amazing pair of hoop earrings at the much-awaited office party. These shimmering rose gold hoops are adorned with resplendent diamonds. Set yourself a class apart as you get ready to enjoy the evening.', 'upload/552819HDEAAE22_1_n8ih9zB.webp', 'upload/552819HDEAAE22_3_KRnKGGF.webp', 2, 6, 3),
(20, 'Red Rapture Yellow Gold Drop Earrings', '19689', '2.307 gm', 'Arrestingly elegant with a muted shimmer - the kind that lingers on people\'s minds!', 'A gold wrought thread earring featuring a ruby bar ending in a single sparkly diamond. Match these with your designer lehenga for a family festival!', 'upload/552819HDEAAE22_1_ZVlAtNt.webp', 'upload/552819HDEAAE22_3_TUyIfAM.webp', 1, 5, 3),
(21, 'Red Rapture Yellow Gold Drop Earrings', '19689', '2.354 gm', 'Arrestingly elegant with a muted shimmer - the kind that lingers on people\'s minds!', 'A gold wrought thread earring featuring a ruby bar ending in a single sparkly diamond. Match these with your designer lehenga for a family festival!', 'upload/552820DPKAAE52_1_yZjgZZB.webp', 'upload/552820DPKAAE52_2_DYI1QSd.webp', 1, 5, 3),
(22, 'Emerald Ecstasy Yellow Gold Stud Earrings', '21009', '1.256 gm', 'For the breezy woman with a laid-back charm!', 'Yellow Gold sheperd\'s hook earring featuring a bar of diamonds and gold further shaped like a branch studded with emeralds. These stunners will go great with any green outfit!', 'upload/552820HOCAAE52_1_YtAHMqj.webp', 'upload/552820HOCAAE52_2_aE2Cklp.webp', 2, 6, 3),
(23, 'Romantic Heart Shaped Gold And Diamond Pendant', '12756', '0.951 gm', 'Make a sleek and classy statement everyday when you step out adorning this heart shaped pendant craf', 'If you are looking for something small, simple and elegant, this diamond and gold pendant is the perfect match. It\'s designed to be an ideal fit for daily use. The chain in the image is for representative purpose only and the actual product comes without a chain.', 'upload/500357PCAAAB02_1_RkbKz2S.webp', 'upload/500357PCAAAB02_2_QCeoJAn.webp', 2, 8, 3),
(24, 'Heart And Flower Motif Diamond Pendant', '14580', '0.507 gm', 'With a flower centred in a heart, this Winsome Diamond Pendant crafted in 18 Karat Yellow Gold to fl', 'Inspire within all an awe for your nature rooted style when you put on this Flower and Heart Diamond Pendant. The chain in the image is for representative purpose only and the actual product comes without a chain.', 'upload/501002PCEAAC09_1_73WAdGE.webp', 'upload/501002PCEAAC09_2_ceP6NHu.webp', 1, 7, 3),
(25, 'Wondrous 18 Karat Yellow Gold And Diamond Flower Pendant', '13469', '0.761 gm', ' This attractive 18 Karat yellow gold ring features a floral pattern, enchanted with round prong-set', 'The chain in the image is for representative purpose only and the product comes without a chain.', 'upload/501002PFOAAA09_1_1_ftsqOKj.webp', 'upload/501002PFOAAA09_1_WgNaVky.webp', 1, 7, 3),
(27, 'Peacock Inspired Traditional Gold And Diamond Pendant', '23510', '1.232 gm', 'An epitome of elegance and class, this peacock inspired pendant is crafted in 18 Karat Yellow Gold w', 'Embody the sprightly charm of springtime with a little help from this pendant. Make a stunning impression at your special occasion when you adorn this piece with its high polish finish. The chain in the image is for representative purpose only and the actual product comes without a chain.', 'upload/501152PHBAAC22_1_1FZP4cm.webp', 'upload/501152PHBAAC22_2_JcMDAcg.webp', 2, 8, 3),
(28, 'Splendid Geometric Pattern Gold And Diamond Pendant', '24514', '1.728 gm', 'Keep it classy and sophisticated with this splendid circlet pendant crafted in 18 Karat Yellow Gold.', 'This simplistic dainty pendant is the perfect accessory for your stylish ensemble. Wear it to the office or a dinner party and flaunt your style with panache. This makes it the perfect pendant for the modern day woman. The chain in the image is for representative purpose only and the product comes without a chain.', 'upload/501163PIPAAA09_1_6cRjEZe.webp', 'upload/501163PIPAAA09_2_cQLBA3X.webp', 1, 7, 3),
(29, 'Auspicious Rudraksha Diamond Pendant', '18267', '2.641 gm', 'Bring peace prosperity and harmony in your life with this rudraksha pendant crafted in 18 karat yell', 'Rudraksha is powerful beads that channel cosmic energy and protect the wearer. The chain in the image is for representative purpose only and the actual product comes without a chain.', 'upload/501181PJMAAC29_1_WQmr7JO.webp', 'upload/501181PJMAAC29_2_HUMWWJw.webp', 2, 8, 3),
(30, 'Divine Om Gold And Diamond Pendant', '19978', '2.340 gm', 'Embrace divine blessing with this Om pendant crafted in 18 Karat Yellow Gold studded with diamonds. ', 'Wear your devotion to the divine closest to your heart and stay blessed! The chain in the image is for representative purpose only and the product comes without a chain.', 'upload/501181PJNAAC22_1_ju2f7mN.webp', 'upload/501181PJNAAC22_2_2vseFHV.webp', 2, 8, 3),
(31, 'Striking Flower Diamond Pendant', '17123', '0.655 gm', 'Aestheticize your Office Wear with this nature inspired Flower Diamond Pendant crafted in 18 Karat Y', 'Add the freshness of nature to your attire and look like a breath of fresh air yourself when donning this Diamond Pendant. The chain in the image is for representative purpose only and the actual product comes without a chain.', 'upload/501718PERAAB09_1_Ob7HSmB.webp', 'upload/501718PERAAB09_2_4dchPA5.webp', 2, 8, 3),
(32, 'Ethnic Ruby And Diamond Cocktail Look Pendant', '23122', '2.405 gm', 'Celebrate the rich combination of rubies and diamonds with this ethnic pendant crafted in 18 Karat R', 'Rose gold, diamond and ruby come together in this pendant as an homage to the various colours of the human spirit. The chain in the image is for representative purpose only and the product comes without a chain.', 'upload/501718PEVAAA29_1_nMirVxr.webp', 'upload/501718PEVAAA29_2_dMVooXb.webp', 2, 8, 3),
(33, 'Spangled 18 Karat Yellow Gold And Diamond Rhombus Pendant', '27560', '1.150 gm', 'This dazzling 18 Karat yellow gold pendant features a glittering rhomboid grid of clustered diamonds', 'Minimal yet embellished with just the right amount of shimmer, this pendant is just the thing to add sparkle to your everyday office wear. The chain in the image is for representative purpose only and the product comes without a chain.', 'upload/502114PAAAAA02_1_nDDzKHQ.webp', 'upload/502114PAAAAA02_2_qf8YMQu.webp', 1, 7, 3),
(34, 'Simplistic 18 Karat Yellow Gold And Diamond Ring Pendant', '24356', '1.235 gm', 'This elegant 18 Karat yellow gold pendant features a silver-toned ring of 17 diamonds suspended from', 'Crafted to be a timeless classic, this pendant is perfect for the minimalists! Its modern design and understated elegance makes it a great choice for everyday wear. The chain in this image is for representative purpose only and the actual product comes without a chain.', 'upload/502415PQOAAA02_1_parZa7G.webp', 'upload/502415PQOAAA02_2_hq12O7U.webp', 1, 8, 3),
(35, 'Leaf Inspired Gold Pendant', '19305', '1.040 gm', 'Add subtle grace to your ensemble with this leaf inspired diamond pendant crafted in 18 Karat Yellow', 'Be the showstopper at the party with this stunning pendant featuring a leaf motif studded with diamonds. The chain in the image is for representative purpose only, and the actual product comes without a chain.', 'upload/502415PQPAAB02_1_BAhTRJD.webp', 'upload/502415PQPAAB02_2_tUtYTr2.webp', 2, 8, 3),
(36, 'Gift An 18kt Gold Pendant To Your Special One', '11369', '2.040 gm', 'Not just a fine piece of jewellery, this beautiful pendant is a work of art!', 'Its intricate patterns and symmetric form blend to make it an aesthetic masterpiece. A contrasting blend of high quality diamond crystals and smooth gold finish adds to its visual appeal. The perfect accessory to a chic black dress for an intimate get together at home.', 'upload/502811PWOAAE09_1_iPDSbc9.webp', 'upload/502811PWOAAE09_2_JVf2heK.webp', 1, 7, 3),
(37, 'Drooping Tulips Gold Pendant', '22604', '1.341 gm', 'Feel like a floral goddess with this stately pendant crafted in 18 Karat Rose Gold. Stone Clarity - ', 'Exude divine beauty and charm with this stately pendant featuring drooping tulip motifs and dazzling diamonds. The chain in the image is for representative purpose only and the product comes without a chain.', 'upload/502993PJAAAA09_1_Wgzn5LA.webp', 'upload/502993PJAAAA09_2_5qxOcqY.webp', 2, 8, 3),
(38, 'Leaf Pattern Gold And Diamond Contemporary Pendant', '25551', '1.056 gm', 'Catch everyone\'s eye with this stunning and unique leaf shaped pendant crafted in 18 Karat Yellow Go', 'Add a bit of sparkle and glamour to your brunch-wear with this diamond studded gold locket. The chain in the image is for representative purpose only and the product comes without a chain.', 'upload/503117PHVAAA22_1_yqwm4xg.webp', 'upload/503117PHVAAA22_2_NA7k7Ur.webp', 1, 8, 3),
(39, 'Aesthetic 18 Karat Yellow Gold And Diamond Finger Ring', '16980', '2.262 gm', 'This elegant 18 Karat yellow gold ring features the junction of 2 tapering polished arms of gold, ea', 'This ring is a staple for the busy stylista who prefers her jewellery just like she is - versatile and fuss-free. The easy design of this piece makes it the perfect style staple to match all outfits.', 'upload/500005FGAAA09_1_H4JCV0y.webp', 'upload/500005FGAAA09_2_GFAXmC6.webp', 1, 1, 3),
(40, 'Contemporary Diamond Finger Ring', '22679', '1.693 gm', 'Keep it classy and chic with this Contemporary Diamond Finger Ring Crafted in 18 Karat High Polish Y', 'Impress everyone around with your style and sheen of this Contemporary Diamond Finger Ring.', 'upload/500005FIAAB09_1_mMVN1wq.webp', 'upload/500005FIAAB09_2_SoPDgLS.webp', 2, 2, 3),
(41, 'Elegant 18 Karat Gold And Diamond Finger Ring', '25966', '1.279 gm ', 'This beautifully artistic 18 Karat gold ring features prong-set diamonds inlaid in one curve of a lo', 'Express everlasting love with this gorgeous finger ring. The timeless design is an ideal reminder of the union of two people. It is the perfect accessory that is both modern and romantic.', 'upload/500013FEAAA09_1_cqQAiih.webp', 'upload/500013FEAAA09_2_eUQNGSI.webp', 1, 1, 3),
(42, 'Dainty 18 Karat Yellow Gold And Diamond Finger Ring', '25712', '2.157 gm', 'This 18 Karat gold ring features a four-diamond flower at the center, heightened by another curved g', 'Casual Wear', 'upload/500496FDAAA09_1_LgqEhyw.webp', 'upload/500496FDAAA09_2_DiDGGuD.webp', 2, 2, 3),
(43, 'Floral Navaratna Diamond Finger Ring', '25923', '1..578 gm', 'This Floral Navaratna Diamond Finger Ring Crafted in 18 Karat Glossy Yellow Gold will sparkle up you', 'Ensure a perfect look everyday by pairing your Casual Wear with this Beautiful Floral Navaratna Diamond Finger Ring.\r\n', 'upload/500595FFAAB22_1_SoCoy1c.webp', 'upload/500595FFAAB22_2_avMNw2i.webp', 1, 1, 3),
(44, 'Contemporary Diamond Ring', '18048', '1.719 gm', 'Line Inspired Diamond (I1/I2, G-H) Ring with Solitaire Look set in 18 Karat Yellow Gold', 'This contemporary finger ring is the perfect accessory for the woman in vogue. Stylish yet versatile, this ring can be worn everyday at work.', 'upload/500816FOAAB09_1_UcS7ijy.webp', 'upload/500816FOAAB09_2_CmSJKrO.webp', 2, 2, 3),
(45, 'Kiana Diamond Ring', '24999', '1.948 gm', 'Wave Inspired Ring set in 18 Karat Yellow Gold and studded with Diamonds', 'From Monday blues to Saturday night fever, glide through the week with this unmistakably charming finger ring. Impossible to go unnoticed, it is the perfect accessory for the modern day woman.\r\n', 'upload/500934FBAAB09_1_rvWFxOU.webp', 'upload/500934FBAAB09_2_J1KzeLB.webp', 1, 1, 3),
(46, 'Charming 18 Karat Yellow Gold And Diamond Finger Ring', '24206', '2.584 gm', 'This dainty 18 Karat yellow gold ring features 3 diamonds prong-set at the convergence of 2 graceful', 'This versatile ring will add the right amount of charming allure. Its simple yet sleek design makes it the ideal choice for everyday wear.', 'upload/501002FREAA04_1_1OYZCSN.webp', 'upload/501002FREAA04_2_KSGSbbG.webp', 2, 2, 3),
(47, 'Enchanting Diamond Ring', '19999', '1.775 gm', 'Floral Ring Crafted in 18 Karat Yellow Gold and studded with Diamonds', 'Casual Wear', 'upload/501002FRVAA22_1_tE4jnt5.webp', 'upload/501002FRVAA22_2_mKawWRZ.webp', 1, 1, 3),
(48, 'Contemporary Oval Diamond Ring', '20347', '2.638 gm', 'Oval pattern diamond ring set in 18 karat yellow gold. Stone quality - I1/I2. Modern artistry shines', 'Made for the modern woman, this ring is unique, eclectic and oh, so charming! The oval patterns and dazzling diamonds will never fail to make you stand out from the crowd!', 'upload/501135FKDAA09_1_Z1ceopH.webp', 'upload/501135FKDAA09_2_NC9Gxiv.webp', 1, 1, 3),
(49, '950 Platinum Ring', '22953', '3.482 gm', 'Tanishq 950 Platinum Ring with Circular Design', 'This 950 platinum Ring features a shank that is wider in the middle with a stylised wave pattern. A high-polished finish ensures that the ring looks lustrous.', 'upload/742013FFZAA00_1_0xumdZS.webp', 'upload/742013FFZAA00_2_xatKI0Z.webp', 4, 4, 3),
(50, 'Brilliant Slender Platinum Ring', '35004', '5.310 gm', 'Make a style statement when you adorn this mesmerising ring crafted in 950 platinum', 'The slender design of this ring holds infinite grace and brilliance. Feel like royalty every time you adorn this beauty.\r\n', 'upload/74D1D2FCFAA00_1_HpwhTaI.webp', 'upload/74D1D2FCFAA00_2_5cmZul7.webp', 4, 4, 3),
(51, 'Dazzling Platinum Ring For Men', '37864', '5.744 gm', 'Grooved Ring Crafted in 950 Platinum', 'Engagement', 'upload/741188FDTAA00_1_15p5c9K.webp', 'upload/741188FDTAA00_2_P7T7SLO.webp', 4, 4, 3),
(52, 'Mia By Tanishq Silver Finger Ring', '3999', '16.40 mm', 'Mia by Tanishq Silver Finger Ring', 'Add a pop of colour to your ensemble with this elegant finger ring. Crafted with scintillant silver, this ring is forged with a contemporary design. Embellished with a vibrant purple stone, this ring features a bright blue enamel work. Don on this classy ring and steal the spotlight.', 'upload/A14019FAQAA37_1_56ZQvCm.webp', 'upload/A14019FAQAA37_2_w7h97IZ.webp', 3, 3, 3),
(53, 'Mia By Tanishq Silver Ring With Enamel Coating', '12000', '3.04 gm', 'Mia by Tanishq Silver Ring with Enamel Coating', 'Love is like a butterfly, it comes and sits on your shoulder when you least expect it! This lovely silver ring from Mia by Tanishq has a pretty butterfly gracing the crown. Wear this dainty silver ring and be sure that love might just be a step behind you!', 'upload/A14018FCWAA00_1_NHnnzJr.webp', 'upload/A14018FCWAA00_2_FJ2nbO9.webp', 3, 3, 3),
(54, 'Beautiful Diamond Mangalsutra', '198151', '12.879 gm', 'Nature Inspired Mangalsutra Crafted in 18 Karat Yellow Gold and Studded with Diamonds', 'Traditional and Ethnic Wear', 'upload/502117YLBAA32_1.webp', 'upload/502117YLBAA32_2.webp', 1, 9, 3),
(55, 'Everlasting Accord Gold Mangalsutra', '24039', '4 gm', 'For marriage isn\'t just about love, its faith and harmony.', 'A short textured gold bar featuring a diamond-studded flower suspended from it with black beads on either side and an infinity knot on one. A plain yet beautiful mangalsutra for a light chiffon or crepe saree!\r\n\r\n', 'upload/552820YMFAE52_1.webp', 'upload/552820YMFAE52_2.webp', 2, 10, 3),
(56, 'Dainty Diamond Mangalsutra', '141847', '6.580 gm', 'Round Pendant Mangalsutra Crafted in 18 Karat Yellow Gold and Studded with Diamonds', 'Traditional and Ethnic Wear', 'upload/502118YEPAA32_1.webp', 'upload/502118YEPAA32_2.webp', 1, 9, 3),
(57, 'Timeless Leaves Diamond Mangalsutra', '232894', '9.015 gm', 'Set your immortal love in this timeless mangalsutra crafted in 18 karat yellow gold studded with dia', 'Tender leaves hold a diamond flowerbud to give you a radiant mangalsutra whose beauty will never fade. Make this timeless piece an inseparable part of your ensemble.', 'upload/502118YETAB32_1.webp', 'upload/502118YETAB32_2.webp', 1, 9, 3),
(58, 'Ethereal Floral Diamond Mangalsutra', '52021', '3.816 gm', 'Floral diamond mangalsutra set in 18 karat yellow gold. Stone Quality - SI2. A floral vine is set in', 'Infinity and floral motifs give this mangalsutra an ageless allure. Immortalise your marriage with elegant perfection, in the form of this beauty.', 'upload/502999YCNAA32_1.webp', 'upload/502999YCNAA32_2.webp', 2, 10, 3),
(59, 'In Perpetuity Gold Mangalsutra', '30869', '4.521 gm', 'Two lives - one journey. Forever and ever.', 'A simple and elegant layered necklace mangalsutra with an oval mugappu (side pendant) embedded with black beads set on one side. The piece has two plain slim gold chains, one of which feature an infinity knot at the other end. The height of minimalism - this mangalsutra can be worn with any outfit!\r\n\r\n', 'upload/552820YMLAE52_1.webp', 'upload/552820YMLAE52_2.webp', 2, 8, 3),
(60, 'Happiness Threefold Gold Mangalsutra', '38429', '3.654 gm', 'Here\'s to you and your spouse, and the wonderful family you will create together!', 'A triple layered necklace featuring a string of black beads on one, a diamond-studded teardrop on another and a large round diamond with two smaller diamonds on either side on the third - all carried by a slender gold chain. The perfect mangalsutra for a designer salwar or saree!', 'upload/552820YMIAE52_1.webp', 'upload/552820YMIAE52_2.webp', 2, 10, 3),
(61, 'Sublime Magnificent Diamond Mangalsutra', '79758', '6.324 gm', 'Symbolising this union of two souls, this sublime mangalsutra is crafted in 18 karat yellow gold stu', 'The splendour of love comes alive in this magnificent mangalsutra. Celebrate your royal relationship with this palatial accessory as your symbol of promise.', 'upload/502014YNXAA32_1.webp', 'upload/502014YNXAA32_2.webp', 1, 9, 3),
(62, 'Simple Charming Diamond Mangalsutra', '202510', '10 gm', 'Start off your married life with simplicity of this mangalsutra crafted in 18 karat dual colour gold', 'Rows of diamonds are strung together to give you this tiered mangalsutra. The brilliance of this sublime mangalsutra will brighten every occasion just like your love brightens even the darkest days.\r\n', 'upload/502614YFMAB32_1.webp', 'upload/502614YFMAB32_2.webp', 1, 9, 3),
(63, 'Minimalist Diamond Encrusted Gold Chain', '550181', '49.392 gm', 'Enchant your party ensemble with minimalist glam as you adorn this diamond adorned chain crafted in ', 'Find sophistication in minimalism as you adorn this sleek gold chain embellished with our finest lustrous diamonds paired with an array of ensembles.', 'upload/511139COAAA00_1_1.webp', 'upload/511139COAAA00_1.webp', 1, 11, 3),
(64, 'Mesmerising Layered Gold Chain', '152855', '23.388 gm', 'Celebrate the grandeur of gold with this layered chain crafted in 22 Karat Yellow Gold with a glossy', 'Take the grandeur of festive celebrations to stunning new heights with this ornate gold chain. Inspired by traditional South Indian artistry, this piece will set you apart from the crowd every time you adorn it.', 'upload/513218CEYAA00_1.webp', 'upload/513218CEYAA00_2.webp', 2, 12, 3),
(65, 'Lovely Gold Chain', '53222', '5 gm', 'Radiate style and panache with this Twisted Pattern Chain set in 22 Karat Yellow Gold in glossy fini', 'Wear this minimalistic chain with your everyday ensembles and be a classy presence wherever you go.', 'upload/512220CITAA00_2.webp', 'upload/512220CITAA00_2_tsp6MtT.webp', 2, 12, 3),
(66, 'Traditional Patterned Gold Chain', '67005', '10.334 gm', 'Multi Pattern Chain set in 22 Karat Yellow Gold', 'Modern Wear', 'upload/501195CPXAA00_1.webp', 'upload/501195CPXAA00_2.webp', 2, 12, 3),
(67, 'Enchanting Diamond And Ruby Chain', '428665', '15.553 gm', 'Floral Chain Crafted in 18 Karat Yellow Gold and studded with Rubies and Diamonds (VVS, Violet)', 'Traditional and Ethnic Wear', 'upload/502219CCIAAP4_1.webp', 'upload/502219CCIAAP4_3.webp', 1, 11, 3),
(68, 'Splendid Gold Chain', '80550', '12.443 gm', 'Gorgeous Beaded Chain with Enamelling set in 22 Karat Yellow Gold', 'Traditional and Ethnic Wear', 'upload/511155CDJAA00_1.webp', 'upload/511155CDJAA00_1_pnk1Toy.webp', 2, 12, 3),
(69, 'Majestic Gold Chain', '173860', '26.602 gm', 'Beaded Three Tiered Chain set in 22 Karat Yellow Gold', 'Traditional and Ethnic Wear', 'upload/502219CNIAAP4_1.webp', 'upload/502219CNIAAP4_1_0NBnPw9.webp', 2, 12, 3),
(70, 'Ethnic Carved Gold Chain For Men', '104950', '16.382 gm', 'Perfectly grooved Gold Chain with Links for Men with a Casual Style Quotient. Crafted in 22 Karat Ye', 'Make way for your casual style to become a talking point', 'upload/511038CTEAA00_2.webp', 'upload/511038CTZAA00_2.webp', 2, 12, 3),
(71, 'Resham Diamond Necklace', '110327', '8.961 gm', 'Abstract Necklace set in 18 Karat Yellow Gold and studded with Diamonds. Stone Quality - SI2', 'Modern design meets timeless elegance in this luminous Necklace. This piece is your perfect companion for every occasion.', 'upload/500017NDAAA02_1.webp', 'upload/500017NDAAA02_2.webp', 1, 13, 3),
(72, 'Emilia Diamond Necklace In Floral Design', '154035', '11.211 gm', 'Floral Necklace set in 18 Karat Yellow Gold and studded with Diamonds. Stone Quality - SI2', 'Delicate and elegant, this necklace is a truly exquisite piece of craftsmanship. The delicately curving vines and floral designs are sure to add oodles of charm to your outfit.\r\n', 'upload/500473NQAAB02_1.webp', 'upload/500473NQAAB02_2.webp', 2, 14, 3),
(73, 'Esmelda Diamond Necklace', '210533', '11.282 gm', 'Elegant Floral Necklace set in 18 Karat Yellow Gold and studded with Diamonds. Stone Quality - SI2', 'A special occasion calls for a special bit of sparkle. This stunning Necklace is elegant, opulent and has been crafted to make you to centre of attention at any party.', 'upload/503414NAJAA02_1.webp', 'upload/503414NAJAA02_2.webp', 1, 13, 3),
(74, 'Naomi Stylised Necklace', '350385', '10.345 gm', 'Stylised Necklace set in 18 Karat Yellow Gold and Studded with Diamonds and Tourmaline', 'A gentle diamond spiral holds an elegant tourmaline to create this mesmerising Necklace. Hold attention of onlookers with this piece of jewellery as your accessory for every occasion.\r\n', 'upload/500859NWAAB32_1.webp', 'upload/500859NWAAB32_2.webp', 1, 13, 3),
(75, 'Exquisite Floral Gold Necklace', '205736', '15.069 gm', 'Exude charm and grace with this diamond Necklace crafted in 18 Karat Yellow and White Gold. Stone Cl', 'Gold and diamond are always the showstoppers and you can enjoy being in the spotlight too when you adorn this enchanting Necklace.\r\n', 'upload/503920NARAA02_1.webp', 'upload/503414NAJAA02_2_WRQ10kR.webp', 2, 14, 3),
(76, 'Regal Filigree Stamp Gold Haram', '181272', '26.866 gm', 'Bring a touch of regality to your wedding ensemble with this ornate stamp filigree haram crafted in ', 'Give your style a regal touch without going over the top, with this lovely opulent haram. A perfect companion on your big day!\r\n', 'upload/511182NVKAA40_1.webp', 'upload/511182NVKAA40_2.webp', 2, 14, 3),
(77, 'Dhanashree Ruby Necklace', '97707', '13.655 gm', '22 Karat Yellow Gold and Ruby Necklace in Goddess Lakshmi design', 'Kasu-inspired Goddess Lakshmi coins surround a radiant ruby flower on the pendant. Bordered by ruby petals, the pendant and a dainty chain make for a sublime Necklace. Make your wedding ensemble truly magical with this piece.\r\n', 'upload/512814NPFAA18_1.webp', 'upload/512814NPFAA18_2.webp', 2, 14, 3),
(78, 'Opulent Chandra Gold Haram', '238928', '37.295 gm', 'Elevate your style quotient on your big day with this graceful opulent chandra haram crafted in 22 k', 'This haram is a stunning specimen of masterful craftsmanship. Its floral motifs and modern design will instantly elevate your party ensembles to dazzling heights.\r\n', 'upload/501027NBCAA12_1.webp', 'upload/501027NBCAA12_2.webp', 2, 14, 3),
(79, 'Enchanting Floral Vine Gold And Diamond Necklace', '242453', '15.789', 'Adorn your neck with this stunning diamond necklace crafted in 18 Karat White and Rose Gold. Stone C', 'Be a showstopper at your next party or event when you sport this stunning necklace with your favourite ensemble.\r\n', 'upload/511183NQIAA40_1.webp', 'upload/511183NQIAA40_2.webp', 2, 14, 3),
(80, 'Eclectic Dainty Diamond Necklace', '86487', '7.149 gm', 'Make waves with this wavy eclectic Necklace crafted in 18 karat yellow gold studded with diamonds. S', 'The star sprangled galaxy of diamonds in gold vines will attract the limelight at any occasion. Choose this piece to make special gatherings even more magical.\r\n', 'upload/500767NRAAA01_1.webp', 'upload/500767NRAAA01_2.webp', 1, 13, 3),
(81, 'Floral Diamond And Gold Necklace', '130165', '7.150 gm', 'Dazzling Flowers one sided sleek Necklace. Crafted in 18 Karat Glossy Yellow Gold, to elevate your p', 'Inspired by the blooming beauty of flowers, this Necklace is studded with diamonds to match that dazzling smile of yours!\r\n', 'upload/500473NQAAB02_1_AO1GbYQ.webp', 'upload/500473NQAAB02_2_udRaNpG.webp', 1, 13, 3),
(82, 'Floral Beauty Gold And Diamond Necklace', '201929', '13.151 gm', 'Embrace floral beauty with this beautiful Necklace crafted in 18 Karat Yellow and White Gold. Stone ', 'Enjoy the timeless blend of diamonds and gold in this stunning Necklace designed to make you the center of attention.\r\n', 'upload/503920NAFAA02_1.webp', 'upload/503920NAFAA02_1_gSmXT6N.webp', 1, 13, 3),
(83, 'Dainty Flowerbud Diamond And Gold Nose Pin', '3968', '0.206 gm', 'Inspired by the dainty flowerbud, this nosepin is crafted in 18 Karat Yellow Gold and studded with a', 'Add a touch of grace and subtle charm to your daily ensemble with the help of this diamond nose pin designed for the modern woman. Nose pins are not eligible for returns or exchange owing to hygiene issues.\r\n', 'upload/500063OFAAPB02_1.webp', 'upload/500063OFAAPB02_1_yZLqB6D.webp', 1, 15, 3),
(84, 'Traditional Floral Gold Nose Pin', '43290', '6.650 gm', 'Typical Bengali Nose Pin with floral pattern design. Crafted in 22 Karat Yellow Gold, the traditiona', 'Finely crafted floral and leaf motifs lend this nose ring an enchanting aura. It\'s graceful allure is designed to match the Indian bride\'s beauty. Nose pins are not eligible for returns or exchange owing to hygiene issues.\r\n', 'upload/500063OXAAAC04_1.webp', 'upload/500063OXAAAC04_2.webp', 2, 16, 3),
(85, 'Elegant Gold And Diamond Nose Pin', '7637', '0.295 gm', 'Stylishly twisted Gold and Diamond Nose Pin for an elevated casual style. Crafted in 18 Karat Yellow', 'With this stylish diamond nose pin, your casual ensembles will look elegant and charming. Nose pins are not eligible for returns or exchange owing to hygiene issues.\r\n', 'upload/500064OZAAAB02_1.webp', 'upload/500064OZAAAB02_1_2zwvxEy.webp', 2, 16, 3),
(86, 'Minimalistic Diamond Nose Pin', '14277', '0360 gm', 'Alluring Diamond (SI2, GH) Nose Pin set in 18 Karat Yellow Gold', 'Nose pins are not eligible for returns or exchange owing to hygiene issues.\r\n', 'upload/501145OAIABA02_1.webp', 'upload/501145OAIABA02_1_RW88aGv.webp', 1, 15, 3),
(87, 'Traditional Opulent Gold Nose Pin', '104563', '15.480 gm', 'Complete your bridal look with the grace and elegance of this opulent nose pin crafted in 22 Karat Y', 'Stun onlookers with your sublime beauty with a little help from this nose pin crafted in beautiful gold and studded with stones. Nose pins are not eligible for returns or exchange owing to hygiene issues.\r\n', 'upload/502614OCAAAB02_2.webp', 'upload/502614OCAAAB02_2_9BCjgOu.webp', 2, 16, 3),
(88, '18 Karat Yellow Gold Diamond Nose Pin', '38518', '0.329 gm', 'Abhushan 18 Karat Yellow Gold Diamond Nose Pin', 'This 18 Karat yellow gold nose pin showcases a single round brilliant cut diamond of SI2 clarity and G-H colour grade. The diamond is set in a partially rhodium-plated four-prong setting. The nose pin is secured by a screw post and Madras screw closure. A high-polished finish imparts a classic appeal to the nose pin. Nose pins are not eligible for returns or exchange owing to hygiene issues.\r\n', 'upload/500064OFAABA02_1.webp', 'upload/500064OFAABA02_1_vDL3U9t.webp', 1, 15, 3),
(89, 'Stunning Gold And Diamond Nose Pin', '12926', '0.244 gm', 'Add a little pizzazz to your casual wear by donning this stylish nose pin crafted in 18 Karat Yellow', 'Let this stunning nose pin do the talking of your stylish persona. Nose pins are not eligible for returns or exchange owing to hygiene issues.\r\n', 'upload/500067OXAAAA02_1_fbHBuMc.webp', 'upload/500067OXAAAA02_1_raUlPos.webp', 2, 16, 3),
(90, 'Dazzling Floral Diamond Nose Pin', '22183', '0.706 gm', 'Bedazzle your onlookers with the grandeur of this floral nose pin crafted in 18 karat yellow gold st', 'The brilliance of this nose pin rests in its magnificent floral design. Diamonds add a charming sparkle to this piece. Nose pins are not eligible for returns or exchange owing to hygiene issues.\r\n', 'upload/501770OAYABA09_1.webp', 'upload/501770OAYABA09_1_4XoNOgO.webp', 1, 15, 3),
(91, 'Brilliant Dainty Gold And Diamond Nose Pin', '23736', '0.304 gm', 'Celebrate the beauty of minimalism with this contemporary nose pin studded with diamond and crafted ', 'With brilliance borrowed from the beauty of flowers, this dainty nose pin will elevate the elegance of any outfit you pair it with. Nose pins are not eligible for returns or exchange owing to hygiene issues.\r\n', 'upload/500063OKAABA02_1.webp', 'upload/500063OKAABA02_1_PFi5VC3.webp', 1, 15, 3),
(92, 'Stunning Gold And Diamond Nose Pin', '12926', '0.244 gm', 'Add a little pizzazz to your casual wear by donning this stylish nose pin crafted in 18 Karat Yellow', 'Let this stunning nose pin do the talking of your stylish persona. Nose pins are not eligible for returns or exchange owing to hygiene issues.\r\n', 'upload/500461OBAAAC02_1.webp', 'upload/500461OBAAAC02_1_IYLoTe1.webp', 2, 16, 3),
(93, 'Royal Crown Gold And Diamond Nose Pin', '12117', '0.520 gm', 'A perfect companion to all your stylish looks, this crown shaped diamond nose pin is crafted in 18 K', 'No matter the occasion, this piece is crafted to make you look like a stunner! Nose pins are not eligible for returns or exchange owing to hygiene issues.\r\n', 'upload/513515OQMAAA00_1.webp', 'upload/513515OQMAAA00_1_WzBQKZQ.webp', 2, 16, 3),
(94, 'Elegant Gold And Diamond Nose Pin', '8725', '0.175 gm', 'Take the classy and elegant route by pairing your special wear ensemble with this diamond nose pin c', 'Let this stone studded nose pin lend your charming ensemble the grace it needs. Nose pins are not eligible for returns or exchange owing to hygiene issues.\r\n', 'upload/502117OFHAAB02_1.webp', 'upload/502117OFHAAB22_1.webp', 2, 16, 3),
(95, 'Gamini Diamond Bangle', '91314', '9.793 gm', 'The price for this item will vary based on grammage and gold rate on that particular day', 'A tender flowerbud gently rests atop a vine of diamonds to give you this enchanting bangle. It exudes gracefulness and sublime beauty that\'ll you want to adorn every single day!', 'upload/500820VGABA02_1.webp', 'upload/500820VGABA02_2.webp', 1, 22, 3),
(96, 'Minimalistic Stylish Diamond Bangle', '89771', '8.106 gm', 'Stay minimal and stylish with this sleek bangle crafted in 18 karat yellow gold studded with diamond', 'The classic, uncomplicated design of this bangle is a match made in style heaven for the modern stylista. Give your work wear a fitting finishing touch with this piece.', 'upload/501002VBA1B02_1.webp', 'upload/501002VBA1B02_2.webp', 1, 22, 3),
(97, 'Chic Gold And Diamond Floral Bangle', '98966', '11.181 gm', 'Dainty Bangle crafted in 18 Karat Yellow Gold and studded with Diamonds at centre in a Flower Bud pa', 'Grace epitomises itself in this stunning bangle. This bangle will be the best accompaniment your casual wear could wish for.', 'upload/501002VCLBA02_1.webp', 'upload/501002VCLBA02_3.webp', 2, 23, 3),
(98, 'Stunning Two Toned Gold And Diamond Bangle', '124453', '12.676 gm', 'Mesh Patterned Bangle with Diamonds set in 18 Karat Yellow and White Gold', 'Traditional and Ethnic Wear\r\n', 'upload/501718VIS1A02_1.webp', 'upload/501718VIS1A02_2.webp', 1, 22, 3),
(99, 'Enamouring Diamond Bangle', '194278', '15.029 gm', 'Mesh Pattern Bangle Crafted in 18 Karat Yellow Gold and Studded with Diamonds', 'Traditional and Ethnic Wear', 'upload/502011VHM1A02_1.webp', 'upload/502011VHM1A02_2.webp', 2, 23, 3),
(100, 'Advaiya Diamond Bangle', '78100', '7.800 gm', 'Tanishq 18 Karat Gold and Diamond Bangle', 'This exquisite bangle is adorned with the charm of diamonds. This precious piece of jewellery is perfect for any occasion.', 'upload/501182VEF1B02_1.webp', 'upload/501182VEF1B02_2.webp', 2, 23, 3),
(101, 'Aishna Diamond Bangle', '139075', '10.271 gm', 'Tanishq 18 Karat Gold and Diamond Bangle', 'New age design meets the allure of diamonds in this bangle. Make this your accessory for any occasion and exude a dainty richness.', 'upload/501182VES1B02_1.webp', 'upload/501182VES1B02_3.webp', 1, 22, 3),
(102, 'Tallie Diamond Bangle', '122089', '12.506 gm', 'Tanishq 18 Karat Gold and Diamond Bangle', 'The wavy design of this bangle will lend your ensemble a stunning balance of understated elegance and contemporary glamour. It\'s an ideal choice for daily use as well as special occasions.', 'upload/502011VHP1A02_1.webp', 'upload/502011VHP1A02_2.webp', 1, 22, 3),
(103, 'Ethereal Diamond Bangle', '142196', '11.532 gm', 'Leaf Patterned Bangle with Diamonds set in 18 Karat Yellow Gold', 'Traditional and Ethnic Wear', 'upload/502415VBF1A02_1.webp', 'upload/502415VBF1A02_2.webp', 2, 23, 3),
(104, 'Enticing Ruby Bangle', '63720', '10.540 gm', 'Floral Bangle Crafted in 18 Karat Yellow Gold and Studded with Rubies', 'Modern Wear', 'upload/512311VDP1A40_1.webp', 'upload/512311VDP1A40_2.webp', 2, 23, 3),
(105, 'Sparkling Lattice Diamond Bangle', '76706', '8.332 gm', 'Be a sparkling presence with this lattice pattern bangle crafted in 18 karat yellow gold studded wit', 'Add a sparkle to your work ensembles with this stunning bangle. Be a confident and poised presence at the office everyday with this accessory on you.', 'upload/502614VBZ1B02_1.webp', 'upload/502614VBZ1B02_3.webp', 2, 23, 3),
(106, 'Hypnotic Diamond Mangalsutra', '245732', '6.148 gm', 'Concentric Mangalsutra Crafted in 18 Karat Yellow Gold and Studded with Diamonds', 'Traditional and Ethnic Wear', 'upload/502118YEJAA32_1.webp', 'upload/502118YEJAA32_2.webp', 1, 9, 3),
(107, 'Gorgeous Leaf Motif Diamond Mangalsutra', '58996', '5.783 gm', 'Be decked in natural charm and love when donning this Gorgeous Leaf Motif Diamond Mangalsutra crafte', 'When traditional style expresses eternal love it produces wonderful pieces of artistry like this one.', 'upload/503117YGPAB32_1.webp', 'upload/503117YGPAB32_2.webp', 2, 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` bigint(20) NOT NULL,
  `contact` bigint(20) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `forget_password_token` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `contact`, `address`, `forget_password_token`, `created_at`, `role_id`, `user_id`) VALUES
(1, 9510418744, 'Ahemdabad', NULL, '2022-05-05 23:19:40.990218', 3, 29),
(2, 8996548520, 'Ghodasar', NULL, '2022-05-05 23:28:04.054506', 3, 30),
(3, 5231478965, 'Rabari Colony', NULL, '2022-05-05 23:31:44.183649', 3, 31),
(4, 8541763098, 'Manekbag', NULL, '2022-05-05 23:36:45.160585', 3, 32),
(5, 9541872301, 'Nikol', NULL, '2022-05-05 23:38:51.263954', 3, 33),
(6, 8796541236, 'Sola', NULL, '2022-05-05 23:41:42.887330', 3, 34),
(7, 6987451236, 'Vijay Char Rasta', NULL, '2022-05-05 23:44:24.360518', 3, 35),
(8, 95120487, 'Kalupur', NULL, '2022-05-05 23:49:40.900991', 3, 36),
(9, 9520147896, 'CTM', NULL, '2022-05-05 23:54:05.042806', 3, 37);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'showroom'),
(3, 'customer');

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
(6, 'Pandents', 2),
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
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_addshowrom_id_42a34d5b_fk_showroom_id` (`addshowrom_id`),
  ADD KEY `booking_user_id_1bd7cb6e_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus1`
--
ALTER TABLE `contactus1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_cart`
--
ALTER TABLE `customer_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_cart_product_id_974aea92_fk_product_id` (`product_id`),
  ADD KEY `customer_cart_user_id_90818a33_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `customer_wishlist`
--
ALTER TABLE `customer_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_wishlist_product_id_fd71d12a_fk_product_id` (`product_id`),
  ADD KEY `customer_wishlist_user_id_f93ac5a1_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_addcategory_id_2e0d7c03_fk_category_id` (`addcategory_id`),
  ADD KEY `product_addsubcategory_id_75001546_fk_subcategory_id` (`addsubcategory_id`),
  ADD KEY `product_user_id_091f6d86_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `profile2_role_id_370be4c4_fk_role_id` (`role_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `showroom`
--
ALTER TABLE `showroom`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `showroom_areaid_id_ff51521d_fk_area_id` (`areaid_id`);

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
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contactus1`
--
ALTER TABLE `contactus1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_cart`
--
ALTER TABLE `customer_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `customer_wishlist`
--
ALTER TABLE `customer_wishlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `showroom`
--
ALTER TABLE `showroom`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_addshowrom_id_42a34d5b_fk_showroom_id` FOREIGN KEY (`addshowrom_id`) REFERENCES `showroom` (`id`),
  ADD CONSTRAINT `booking_user_id_1bd7cb6e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `customer_cart`
--
ALTER TABLE `customer_cart`
  ADD CONSTRAINT `customer_cart_product_id_974aea92_fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `customer_cart_user_id_90818a33_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `customer_wishlist`
--
ALTER TABLE `customer_wishlist`
  ADD CONSTRAINT `customer_wishlist_product_id_fd71d12a_fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `customer_wishlist_user_id_f93ac5a1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_addcategory_id_2e0d7c03_fk_category_id` FOREIGN KEY (`addcategory_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `product_addsubcategory_id_75001546_fk_subcategory_id` FOREIGN KEY (`addsubcategory_id`) REFERENCES `subcategory` (`id`),
  ADD CONSTRAINT `product_user_id_091f6d86_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile2_role_id_370be4c4_fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `profile2_user_id_b653a8d9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `showroom`
--
ALTER TABLE `showroom`
  ADD CONSTRAINT `showroom_areaid_id_ff51521d_fk_area_id` FOREIGN KEY (`areaid_id`) REFERENCES `area` (`id`),
  ADD CONSTRAINT `showroom_user_id_4460de82_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_addcategory_id_293963a9_fk_category_id` FOREIGN KEY (`addcategory_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
