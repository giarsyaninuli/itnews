-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 31, 2014 at 11:48 PM
-- Server version: 5.5.34-0ubuntu0.13.04.1
-- PHP Version: 5.4.9-4ubuntu2.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `itnews`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE IF NOT EXISTS `access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`,`role_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`id`, `group_id`, `role_id`) VALUES
(1, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `slug`, `deskripsi`, `created_by`, `created_at`) VALUES
(1, 'Uncategory', 'uncategory', 'Uncategory', 'Admin System', '2014-10-13 13:19:29'),
(22, 'Partai', 'partai', 'Partai', 'Admin System', '2014-11-04 14:46:44'),
(23, 'Visi & Misi', 'visi-misi', 'Visi dan Misi Partai', 'Admin System', '2014-11-04 14:47:22'),
(24, 'Pidato Bung Karno 1 Juni', 'pidato-bung-karno-1-juni', 'Pidato Bung Karno 1 Juni', 'Admin System', '2014-11-04 14:48:12'),
(25, 'Piagam PDI Perjuangan', 'piagam-pdi-perjuangan', 'Piagam PDI Perjuagan', 'Admin System', '2014-11-04 14:48:51'),
(26, 'Pengurus Partai', 'pengurus-partai', 'Pengurus Partai', 'Admin System', '2014-11-04 14:49:19'),
(27, 'Mars & Bendera', 'mars-bendera', 'Mars dan Bendera', 'Admin System', '2014-11-04 14:49:55'),
(28, 'Pidato Ketua Umum', 'pidato-ketua-umum', 'Pidato Ketua Umum', 'Admin System', '2014-11-04 14:51:11'),
(29, 'Media Center', 'media-center', 'Media Center', 'Admin System', '2014-11-04 14:54:46'),
(30, 'Sikap Politik', 'sikap-politik', 'Sikap Politik', 'Admin System', '2014-11-04 14:55:23'),
(31, 'Siaran Pers', 'siaran-pers', 'Siaran Pers', 'Admin System', '2014-11-04 14:56:15'),
(32, 'Agenda', 'agenda', 'Agenda', 'Admin System', '2014-11-04 14:56:39'),
(33, 'Dasa Prasetya Partai', 'dasa-prasetya-partai', 'Dasa Prasetya Partai', 'Admin System', '2014-11-04 15:35:08'),
(34, 'Info Politik', 'info-politik', 'Politik', 'Admin System', '2014-11-05 02:18:43'),
(36, 'Info Nasional', 'info-nasional', 'Nasional', 'Admin System', '2014-11-05 02:23:21'),
(37, 'Info Daerah', 'info-daerah', 'Info Daerah', 'Admin System', '2014-11-05 03:06:57'),
(38, 'Sayap Partai', 'sayap-partai', 'Sayap Partai', 'Administrator', '2014-11-06 12:32:27'),
(39, 'Taruna Merah Putih (TMP)', 'taruna-merah-putih-tmp-', 'Taruna Merah Putih (TMP)', 'Administrator', '2014-11-06 12:32:55'),
(40, 'Relawan Perjuangan Demokrasi (REPDEM)', 'relawan-perjuangan-demokrasi-repdem-', 'Relawan Perjuangan Demokrasi (REPDEM)', 'Administrator', '2014-11-06 12:33:28'),
(41, 'BAMUSI', 'bamusi', 'BAMUSI', 'Administrator', '2014-11-06 12:33:50'),
(42, 'Banteng Muda Indonesia (BMI)', 'banteng-muda-indonesia-bmi-', 'Banteng Muda Indonesia (BMI)', 'Administrator', '2014-11-06 12:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `controls`
--

CREATE TABLE IF NOT EXISTS `controls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `control_name` varchar(50) NOT NULL,
  `function_name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `controls`
--

INSERT INTO `controls` (`id`, `control_name`, `function_name`, `description`) VALUES
(11, 'controls', 'index', 'Index'),
(12, 'controls', 'add', 'Add'),
(13, 'controls', 'edit', 'Edit'),
(14, 'controls', 'delete', 'Delete'),
(15, 'controls', 'deleteall', 'Delete All'),
(16, 'groups', 'index', 'Index'),
(17, 'groups', 'add', 'Add'),
(18, 'groups', 'edit', 'Edit'),
(19, 'groups', 'delete', 'Delete'),
(20, 'groups', 'deleteall', 'Delete All'),
(21, 'roles_controll', 'index', 'Index'),
(22, 'roles_controll', 'add', 'Add'),
(23, 'roles_controll', 'edit', 'Edit'),
(24, 'roles_controll', 'delete', 'Delete'),
(25, 'roles_controll', 'deleteall', 'Delete All'),
(26, 'roles_controll', 'detail', 'Detail'),
(27, 'users', 'index', 'Index'),
(28, 'album', 'index', 'Index'),
(29, 'images', 'index', 'Index'),
(30, 'audio', 'index', 'Index'),
(31, 'video', 'index', 'Index'),
(32, 'access', 'index', 'Index'),
(33, 'site_setting', 'index', 'Index'),
(34, 'cms_setting', 'index', 'Index'),
(35, 'images', 'add', 'Add'),
(36, 'images', 'edit', 'Edit'),
(39, 'album', 'add', 'Add'),
(40, 'album', 'edit', 'Edit'),
(41, 'album', 'delete', 'Delete'),
(42, 'album', 'deleteall', 'Delete All'),
(43, 'images', 'delete', 'Delete'),
(44, 'images', 'deleteall', 'Delete All'),
(45, 'category', 'index', 'Index'),
(46, 'category', 'add', 'Add'),
(47, 'category', 'edit', 'Edit'),
(48, 'category', 'delete', 'Delete'),
(49, 'category', 'deleteall', 'Delete All');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `description`, `created_at`, `created_by`) VALUES
(1, 'superadmin', 'Group List Admin System', '2014-09-09 00:25:59', 'Admin System'),
(2, 'member', 'Group List Member', '2014-10-11 09:18:53', 'Admin System');

-- --------------------------------------------------------

--
-- Table structure for table `relation_taxonomy`
--

CREATE TABLE IF NOT EXISTS `relation_taxonomy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxonomy_id` int(11) NOT NULL,
  `content` varchar(100) DEFAULT NULL,
  `content_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `taxonomy_id` (`taxonomy_id`,`content_id`),
  KEY `post_id` (`content_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=153 ;

--
-- Dumping data for table `relation_taxonomy`
--

INSERT INTO `relation_taxonomy` (`id`, `taxonomy_id`, `content`, `content_id`) VALUES
(24, 1, 'news', 16),
(25, 1, 'news', 17),
(26, 1, 'news', 18),
(27, 1, 'news', 19),
(28, 1, 'news', 20),
(29, 1, 'news', 21),
(30, 1, 'news', 22),
(31, 1, 'news', 23),
(32, 17, 'news', 13),
(33, 19, 'news', 14),
(35, 28, 'news', 24),
(36, 28, 'news', 25),
(37, 28, 'news', 26),
(38, 28, 'news', 27),
(39, 28, 'news', 28),
(40, 28, 'news', 29),
(41, 28, 'news', 30),
(42, 31, 'news', 31),
(43, 31, 'news', 32),
(44, 31, 'news', 33),
(45, 31, 'news', 34),
(46, 31, 'news', 35),
(47, 31, 'news', 36),
(48, 31, 'news', 37),
(49, 31, 'news', 38),
(50, 31, 'news', 39),
(51, 31, 'news', 40),
(52, 31, 'news', 41),
(53, 31, 'news', 42),
(57, 30, 'news', 46),
(58, 30, 'news', 47),
(59, 30, 'news', 48),
(60, 30, 'news', 49),
(61, 30, 'news', 50),
(62, 30, 'news', 51),
(63, 30, 'news', 52),
(64, 30, 'news', 53),
(65, 30, 'news', 54),
(66, 30, 'news', 55),
(67, 30, 'news', 56),
(68, 30, 'news', 57),
(69, 1, 'news', 58),
(70, 30, 'news', 59),
(72, 30, 'news', 61),
(73, 28, 'news', 62),
(74, 28, 'news', 63),
(75, 28, 'news', 64),
(76, 28, 'news', 65),
(77, 28, 'news', 66),
(78, 28, 'news', 67),
(79, 28, 'news', 68),
(80, 28, 'news', 69),
(81, 1, 'news', 70),
(82, 28, 'news', 71),
(83, 28, 'news', 72),
(85, 28, 'news', 74),
(86, 28, 'news', 75),
(87, 28, 'news', 76),
(88, 28, 'news', 77),
(89, 28, 'news', 78),
(90, 28, 'news', 79),
(91, 28, 'news', 80),
(95, 31, 'news', 45),
(98, 31, 'news', 44),
(99, 31, 'news', 43),
(100, 28, 'news', 83),
(105, 28, 'news', 73),
(106, 28, 'news', 82),
(110, 24, 'news', 84),
(112, 24, 'news', 86),
(114, 25, 'news', 88),
(115, 25, 'news', 89),
(116, 25, 'news', 90),
(117, 25, 'news', 91),
(118, 25, 'news', 92),
(119, 25, 'news', 93),
(120, 25, 'news', 94),
(121, 25, 'news', 95),
(122, 25, 'news', 96),
(123, 25, 'news', 97),
(124, 26, 'news', 98),
(125, 18, 'news', 99),
(126, 20, 'news', 100),
(127, 21, 'news', 101),
(128, 27, 'news', 15),
(129, 22, 'news', 102),
(130, 22, 'news', 103),
(131, 22, 'news', 104),
(133, 1, 'news', 106),
(134, 24, 'news', 85),
(135, 24, 'news', 87),
(136, 1, 'news', 107),
(137, 1, 'news', 108),
(138, 1, 'news', 109),
(139, 1, 'news', 110),
(140, 28, 'video', 6),
(141, 28, 'video', 7),
(142, 1, 'audio', 8),
(143, 1, 'audio', 9),
(145, 1, 'news', 106),
(146, 28, 'news', 81),
(150, 1, 'news', 105),
(151, 17, 'news', 107),
(152, 30, 'news', 60);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  `role_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `role_description`) VALUES
(6, 'Admin', 'Admin Role Controls'),
(7, 'Member', 'Role of Member');

-- --------------------------------------------------------

--
-- Table structure for table `role_control`
--

CREATE TABLE IF NOT EXISTS `role_control` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `control_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `control_id` (`control_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

--
-- Dumping data for table `role_control`
--

INSERT INTO `role_control` (`id`, `role_id`, `control_id`) VALUES
(96, 6, 28),
(97, 6, 45),
(98, 6, 46),
(99, 6, 47),
(100, 6, 48),
(101, 6, 49),
(102, 6, 11),
(103, 6, 29),
(104, 6, 35),
(105, 6, 36),
(106, 6, 44);

-- --------------------------------------------------------

--
-- Table structure for table `taxonomy`
--

CREATE TABLE IF NOT EXISTS `taxonomy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `parrent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `taxonomy`
--

INSERT INTO `taxonomy` (`id`, `category_id`, `type`, `parrent`) VALUES
(1, 1, 'category', 0),
(16, 22, 'category', 0),
(17, 23, 'category', 22),
(18, 24, 'category', 22),
(19, 25, 'category', 22),
(20, 26, 'category', 22),
(21, 27, 'category', 22),
(22, 28, 'category', 0),
(23, 29, 'category', 0),
(24, 30, 'category', 29),
(25, 31, 'category', 29),
(26, 32, 'category', 29),
(27, 33, 'category', 22),
(28, 34, 'category', 0),
(30, 36, 'category', 0),
(31, 37, 'category', 0),
(32, 38, 'category', 0),
(33, 39, 'category', 38),
(34, 40, 'category', 38),
(35, 41, 'category', 38),
(36, 42, 'category', 38);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_expired` datetime DEFAULT NULL,
  `end_expired` datetime DEFAULT NULL,
  `status` enum('non active','active') NOT NULL DEFAULT 'non active',
  `username` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `group_id`, `fullname`, `email`, `password`, `image`, `token`, `created_expired`, `end_expired`, `status`, `username`, `created_at`, `created_by`) VALUES
(1, 1, 'Administrator', 'mukminers@gmail.com', '$2y$10$1L9Kwj0UFPSBTWFV7aoPFuGokH8fYu3RTsEJxnXW5RYZyz46PwBGK', NULL, NULL, '2014-09-11 11:11:36', '2014-09-12 11:11:36', 'active', NULL, '2014-09-10 05:20:16', 'Administrator'),
(2, 1, 'Admin System', 'superadmin@mail.com', '$2y$10$e4Hr0HNHS8xWk6rbiQKusuatKacehDVTcAIT9kLWOjxoxCjsheCVy', NULL, NULL, '2014-10-11 09:37:09', NULL, 'active', NULL, '2014-10-11 09:37:30', 'Administrator');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `access`
--
ALTER TABLE `access`
  ADD CONSTRAINT `access_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `access_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `relation_taxonomy`
--
ALTER TABLE `relation_taxonomy`
  ADD CONSTRAINT `relation_taxonomy_ibfk_1` FOREIGN KEY (`taxonomy_id`) REFERENCES `taxonomy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_control`
--
ALTER TABLE `role_control`
  ADD CONSTRAINT `role_control_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_control_ibfk_2` FOREIGN KEY (`control_id`) REFERENCES `controls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `taxonomy`
--
ALTER TABLE `taxonomy`
  ADD CONSTRAINT `taxonomy_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
