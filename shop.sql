-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 08, 2022 at 11:54 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `parent_id` bigint DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_share` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `summary`, `parent_id`, `image`, `alias`, `keyword`, `description`, `image_share`, `title`, `created_at`, `status`) VALUES
(1, 'Thu Đông 2021', NULL, 0, NULL, 'abxc143072', NULL, NULL, NULL, NULL, '2022-01-11 14:04:45', 2),
(2, 'Đầm', NULL, 1, NULL, 'abxc3657131', NULL, NULL, NULL, NULL, '2022-01-11 14:14:35', 2),
(3, 'Áo', NULL, 1, NULL, 'abxc17856439', NULL, NULL, NULL, NULL, '2022-01-11 14:14:35', 2),
(4, 'Chân Váy', NULL, 1, NULL, 'abxc8608110', NULL, NULL, NULL, NULL, '2022-01-11 14:14:35', 2),
(5, 'Quần', NULL, 1, NULL, 'abxc12705463', NULL, NULL, NULL, NULL, '2022-01-11 14:14:35', 2),
(6, 'Thời Trang Trẻ Em', NULL, 0, NULL, 'abxc14468754', NULL, NULL, NULL, NULL, '2022-01-11 14:16:15', 2),
(7, 'Phụ Kiện', NULL, 0, NULL, 'abxc10993149', NULL, NULL, NULL, NULL, '2022-01-11 14:18:15', 2),
(8, 'Giày', NULL, 7, NULL, 'abxc11559486', NULL, NULL, NULL, NULL, '2022-01-11 14:18:55', 2),
(9, 'Túi', NULL, 7, NULL, 'abxc1583750', NULL, NULL, NULL, NULL, '2022-01-11 14:18:55', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

DROP TABLE IF EXISTS `configs`;
CREATE TABLE IF NOT EXISTS `configs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  PRIMARY KEY (`id`),
  UNIQUE KEY `configs_key_unique` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`id`, `key`, `value`, `summary`, `created_at`, `updated_at`, `type`) VALUES
(1, 'logo', '/upload/users/file_1640178921.png', 'Logo admin', '2022-03-27 02:09:00', '2022-03-27 03:16:35', 'image'),
(2, 'title', 'My website', 'title admin', '2022-03-27 02:09:00', '2022-03-27 03:16:35', 'text'),
(3, 'description', 'Web', 'Description', '2022-03-27 02:56:57', '2022-03-27 03:16:35', 'textarea'),
(4, 'tcontent', 'ghjgjghjgh', 'content', '2022-03-27 02:56:57', '2022-03-27 03:16:35', 'editor'),
(5, 'logofrontend', '/upload/users/file_1640175774.png', 'Logo admin', '2022-03-27 02:09:00', '2022-03-27 03:16:35', 'image');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_firstname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_lastname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint DEFAULT '1',
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `address`, `email`, `phone`, `ship_firstname`, `ship_lastname`, `ship_address`, `ship_email`, `ship_phone`, `lastname`, `image`, `created_at`, `status`, `note`, `password`, `remember_token`) VALUES
(1, 'nguyen', 'aa', 'nguyenhieu@gmail.com', '9876543111', 'nguyen', 'hieu', 'aa', 'nguyenhieu@gmail.com', '9876543111', 'hieu', NULL, '2022-04-06 20:16:33', 1, '', NULL, NULL),
(2, 'a', 'a', 'a@a.com', 'a', 'b', 'b', 'b', 'b@a.com', 'b', 'a', NULL, '2022-04-06 20:20:52', 1, '', NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-01 13:18:44', 1, '', NULL, NULL),
(4, 'php', 'ha noi', 'windy@gmail.com', '01235689780', 'php', 'php', 'ha noi', 'windy@gmail.com', '01235689780', 'php', NULL, '2022-10-04 14:02:32', 1, '', NULL, NULL),
(5, 'hi', 'HN', 'vuannhien21@gmail.com', '1(609)972-22-2', 'hi', 'hi', 'HN', 'vuannhien21@gmail.com', '1(609)972-22-2', 'hi', NULL, '2022-10-04 15:14:58', 1, '', NULL, NULL),
(6, 'banhangproject', 'SG', 'admin@gmail.com', '04898798991', 'banhangproject', 'banhangproject', 'SG', 'admin@gmail.com', '04898798991', 'banhangproject', NULL, '2022-10-04 15:15:59', 1, '', NULL, NULL),
(7, '111111111', 'HN1', '1@gmail.com', '1111111111', '222222222', '222222222', 'HN2', '2@gmail.com', '2222222222', '111111111', NULL, '2022-10-04 15:18:01', 1, '', NULL, NULL),
(8, 'banhangproject11', 'SG', 'banhang@gmail.com', '0359897989', 'banhang222', 'banhang222', 'binh thuan', 'hai@gmail.com', '0324688871', 'banhangproject11', NULL, '2022-10-07 06:15:40', 1, '', NULL, NULL),
(9, 'hihi', 'SG', 'hihi@gmail.com', '0258958688', NULL, NULL, NULL, NULL, NULL, 'hihi', NULL, '2022-10-08 17:20:02', 1, '', NULL, NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-08 17:20:02', 1, '', NULL, NULL),
(11, 'hi', 'hihi', 'hihi@gmail.com', '0222222222', NULL, NULL, NULL, NULL, NULL, 'hi', NULL, '2022-10-08 17:22:03', 1, '', NULL, NULL),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-08 17:22:03', 1, '', NULL, NULL),
(13, NULL, NULL, NULL, NULL, '1', '1', '1', '1@gmail.com', '1', NULL, NULL, '2022-10-08 17:24:45', 1, '', NULL, NULL),
(14, 'ha', 'ha', 'ha@gmail.com', 'ha', 'ha', 'ha', 'ha', 'ha@gmail.com', 'ha', 'ha', NULL, '2022-10-08 17:26:46', 1, '', NULL, NULL),
(15, 'hi', '111', 'hi@yahoo.com', '111111111', 'ha', 'ha', 'ha', 'ha@yahoo.com', 'ha', 'hi', NULL, '2022-10-08 17:27:33', 1, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
CREATE TABLE IF NOT EXISTS `districts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` bigint DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `functions`
--

DROP TABLE IF EXISTS `functions`;
CREATE TABLE IF NOT EXISTS `functions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `parent_id` bigint DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint DEFAULT '1',
  `show_menu` tinyint(1) DEFAULT '1',
  `allow` tinyint(1) NOT NULL DEFAULT '0',
  `pos` int NOT NULL DEFAULT '1',
  `route` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `functions`
--

INSERT INTO `functions` (`id`, `name`, `icon`, `parent_id`, `created_at`, `status`, `show_menu`, `allow`, `pos`, `route`) VALUES
(1, 'Quan ly user', NULL, 0, '2022-08-11 20:38:13', 1, 1, 0, 1, '#'),
(2, 'Danh sach', NULL, 1, '2022-08-11 20:39:32', 1, 1, 0, 1, 'user.index'),
(3, 'Them moi', NULL, 1, '2022-08-11 20:39:32', 1, 1, 0, 2, 'user.create'),
(4, 'Sua', NULL, 1, '2022-08-11 20:39:32', 1, 0, 0, 3, 'user.edit'),
(5, 'Xoa', NULL, 1, '2022-08-11 20:39:32', 1, 0, 0, 4, 'user.delete'),
(6, 'Ghi', NULL, 4, '2022-08-11 20:39:32', 1, 0, 0, 1, 'user.update'),
(7, 'Ghi', NULL, 3, '2022-08-11 20:39:32', 1, 0, 0, 1, 'user.store'),
(8, 'Quan ly san pham', NULL, 0, '2022-08-11 20:38:13', 1, 1, 0, 1, '#'),
(9, 'Danh sách', NULL, 8, '2022-10-05 12:12:04', 1, 1, 0, 1, 'product.index'),
(10, 'Thêm mới', NULL, 8, '2022-10-05 12:13:13', 1, 1, 0, 1, 'product.create'),
(11, 'Sửa', NULL, 8, '2022-10-05 12:14:01', 1, 1, 0, 1, 'product.edit'),
(12, 'Xóa', NULL, 8, '2022-10-05 12:14:22', 1, 1, 0, 1, 'product.delete'),
(13, 'Ghi', NULL, 11, '2022-10-05 12:15:01', 1, 1, 0, 1, 'product.update'),
(14, 'Ghi', NULL, 10, '2022-10-05 12:15:06', 1, 1, 0, 1, 'product.store');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_03_27_084151_create_configs_table', 1),
(4, '2022_03_27_095300_add_type_configs_table', 2),
(6, '2022_03_27_101951_create_tests_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image_group` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_share` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_groups`
--

DROP TABLE IF EXISTS `news_groups`;
CREATE TABLE IF NOT EXISTS `news_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `parent_id` bigint DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_share` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `customer_id` bigint DEFAULT NULL,
  `total_amount` bigint DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int DEFAULT '1',
  `order_status` int DEFAULT NULL COMMENT '1. Mới đặt\r\n2. Đã xác nhận\r\n3. Đang đóng gói\r\n4. Chuyển cho shipper\r\n5. Đang giao\r\n6. Đã Giao\r\n7. Giao thất bại\r\n8. Hủy Đơn',
  `notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `payment_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `code`, `order_date`, `customer_id`, `total_amount`, `created_at`, `status`, `order_status`, `notes`, `payment_method`, `coupon`) VALUES
(1, 'u58tA1', '2022-04-06 20:16:33', 1, 5530866, '2022-04-06 20:16:33', 1, 1, 'abc', 'banktransfer', NULL),
(2, 'D2aJv2', '2022-04-06 20:16:36', 1, 5530866, '2022-04-06 20:16:36', 1, 1, 'abc', 'banktransfer', NULL),
(3, 'LKBa43', '2022-04-06 20:16:37', 1, 5530866, '2022-04-06 20:16:37', 1, 1, 'abc', 'banktransfer', NULL),
(4, 'MSk3Y4', '2022-04-06 20:20:01', 1, 5530866, '2022-04-06 20:20:01', 1, 1, 'ádasdfsdf', 'banktransfer', NULL),
(5, 'X1UN55', '2022-04-06 20:20:52', 2, 5530866, '2022-04-06 20:20:52', 1, 1, 'b', 'banktransfer', NULL),
(6, 'SOJck6', '2022-04-06 20:21:34', 1, 5530866, '2022-04-06 20:21:34', 1, 1, '4', 'banktransfer', NULL),
(7, 'CM5jJ7', '2022-04-06 20:31:56', 1, 5530866, '2022-04-06 20:31:56', 1, 1, 'ádasdasd', 'banktransfer', NULL),
(8, '0oETf8', '2022-04-06 20:32:48', 1, 642472, '2022-04-06 20:32:48', 1, 1, 'âfasdf', 'banktransfer', NULL),
(9, 'fjS1C9', '2022-04-06 20:34:41', 1, 6983541, '2022-04-06 20:34:41', 1, 1, 'aa', 'banktransfer', NULL),
(10, 'UOCuR10', '2022-04-06 20:41:20', 1, 8469764, '2022-04-06 20:41:20', 1, 1, NULL, 'banktransfer', NULL),
(11, '7IWmw11', '2022-04-06 20:41:46', 1, 8469764, '2022-04-06 20:41:46', 1, 1, NULL, 'banktransfer', NULL),
(12, 'Epea712', '2022-04-06 20:41:57', 1, 8469764, '2022-04-06 20:41:57', 1, 1, NULL, 'banktransfer', NULL),
(13, 'E2Mxc13', '2022-04-06 20:42:43', 1, 8469764, '2022-04-06 20:42:43', 1, 1, NULL, 'banktransfer', NULL),
(14, 'MFajB14', '2022-04-06 20:42:59', 1, 8469764, '2022-04-06 20:42:59', 1, 1, NULL, 'banktransfer', NULL),
(15, '2lvZe15', '2022-04-06 20:44:49', 1, 8469764, '2022-04-06 20:44:49', 1, 1, NULL, 'banktransfer', NULL),
(16, '8aq6Y16', '2022-04-06 20:45:00', 1, 8469764, '2022-04-06 20:45:00', 1, 1, NULL, 'banktransfer', NULL),
(17, 'qqSMe17', '2022-04-06 20:45:08', 1, 8469764, '2022-04-06 20:45:08', 1, 1, NULL, 'banktransfer', NULL),
(18, 'C3yXU18', '2022-04-06 20:46:06', 1, 8469764, '2022-04-06 20:46:06', 1, 1, NULL, 'banktransfer', NULL),
(19, '4jcou19', '2022-04-06 20:53:12', 1, 9794521, '2022-04-06 20:53:12', 1, 1, NULL, 'banktransfer', NULL),
(20, 'nxJum30aNK', '2022-10-01 13:19:05', 3, 12559572, '2022-10-01 13:19:05', 1, 1, NULL, NULL, NULL),
(21, '1GdLgDiHOP', '2022-10-04 11:54:12', 3, 11834142, '2022-10-04 11:54:12', 1, 1, NULL, NULL, NULL),
(22, 'gukas4G8iu', '2022-10-04 14:02:32', 4, 21516778, '2022-10-04 14:02:32', 1, 1, NULL, 'COD', NULL),
(23, 'ss6wYk3RPT', '2022-10-04 15:14:58', 5, 9797434, '2022-10-04 15:14:58', 1, 1, 'jkii', 'COD', NULL),
(24, 'Q8zjBZJYXr', '2022-10-04 15:15:59', 6, 0, '2022-10-04 15:15:59', 1, 1, NULL, 'COD', NULL),
(25, '2R8qG2t93s', '2022-10-04 15:18:01', 7, 6075081, '2022-10-04 15:18:01', 1, 1, 'mot gui cho hai', 'COD', NULL),
(26, 'gs1qp41JWh', '2022-10-07 06:15:40', 8, 5940293, '2022-10-07 06:15:40', 1, 1, 'mot gui cho hai', 'COD', NULL),
(27, 'AR6TUC1qwS', '2022-10-07 06:21:51', 7, 7192840, '2022-10-07 06:21:51', 1, 1, '1 gui cho 2', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE IF NOT EXISTS `order_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `qty` bigint DEFAULT NULL,
  `price` bigint DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id` (`order_id`,`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `status`) VALUES
(1, 1, 82, 1, 5530866, '2022-04-06 20:16:33', 1),
(2, 2, 82, 1, 5530866, '2022-04-06 20:16:36', 1),
(3, 3, 82, 1, 5530866, '2022-04-06 20:16:37', 1),
(4, 4, 82, 1, 5530866, '2022-04-06 20:20:01', 1),
(5, 5, 82, 1, 5530866, '2022-04-06 20:20:52', 1),
(6, 6, 82, 1, 5530866, '2022-04-06 20:21:34', 1),
(7, 7, 82, 1, 5530866, '2022-04-06 20:31:56', 1),
(8, 8, 54, 1, 642472, '2022-04-06 20:32:48', 1),
(9, 9, 17, 1, 6983541, '2022-04-06 20:34:41', 1),
(10, 10, 93, 1, 8469764, '2022-04-06 20:41:20', 1),
(11, 11, 93, 1, 8469764, '2022-04-06 20:41:46', 1),
(12, 12, 93, 1, 8469764, '2022-04-06 20:41:57', 1),
(13, 13, 93, 1, 8469764, '2022-04-06 20:42:43', 1),
(14, 14, 93, 1, 8469764, '2022-04-06 20:42:59', 1),
(15, 15, 93, 1, 8469764, '2022-04-06 20:44:49', 1),
(16, 16, 93, 1, 8469764, '2022-04-06 20:45:00', 1),
(17, 17, 93, 1, 8469764, '2022-04-06 20:45:08', 1),
(18, 18, 93, 1, 8469764, '2022-04-06 20:46:06', 1),
(19, 19, 92, 1, 9794521, '2022-04-06 20:53:12', 1),
(20, 20, 57, 1, 2629896, '2022-10-01 20:19:05', 1),
(21, 20, 55, 1, 4648499, '2022-10-01 20:19:05', 1),
(22, 20, 41, 1, 5281177, '2022-10-01 20:19:05', 1),
(23, 21, 58, 1, 9204246, '2022-10-04 18:54:12', 1),
(24, 21, 57, 1, 2629896, '2022-10-04 18:54:12', 1),
(25, 22, 47, 1, 9470453, '2022-10-04 21:02:32', 1),
(26, 22, 45, 1, 3857141, '2022-10-04 21:02:32', 1),
(27, 22, 96, 1, 8189184, '2022-10-04 21:02:32', 1),
(28, 23, 50, 1, 5940293, '2022-10-04 22:14:58', 1),
(29, 23, 45, 1, 3857141, '2022-10-04 22:14:58', 1),
(30, 25, 24, 1, 1246504, '2022-10-04 22:18:01', 1),
(31, 25, 40, 1, 4828577, '2022-10-04 22:18:01', 1),
(32, 26, 50, 1, 5940293, '2022-10-07 13:15:40', 1),
(33, 27, 94, 1, 2965256, '2022-10-07 13:21:51', 1),
(34, 27, 89, 1, 4227584, '2022-10-07 13:21:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_id` bigint DEFAULT NULL,
  `supplier_id` bigint DEFAULT NULL,
  `sku` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` bigint DEFAULT '0',
  `promo` int NOT NULL,
  `qty` bigint DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `summary` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_share` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint DEFAULT '1',
  `bestseller` tinyint NOT NULL COMMENT '1: Bestseller; \r\n0: Not bestseller',
  `newarrival` tinyint NOT NULL COMMENT '1: New arrival\r\n0: Old',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `supplier_id`, `sku`, `name`, `price`, `promo`, `qty`, `content`, `summary`, `image`, `images`, `alias`, `keyword`, `description`, `image_share`, `title`, `created_at`, `status`, `bestseller`, `newarrival`) VALUES
(12, 9, NULL, 'FS2104007BHPUWH', 'TÚI XÁCH TRẮNG NẮP BÁN NGUYỆT', 1872138, 0, 999, NULL, NULL, NULL, NULL, 'tui-xach-trang', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 0, 1),
(9, 9, 4, 'FS2104001BHPUGE', 'TÚI XÁCH XANH DA TRƠN', 700000, 599000, 999, NULL, NULL, NULL, NULL, 'a-b-c-3955305', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 0, 1),
(10, 9, 4, 'FS2104005BHPUBK', 'TÚI XÁCH ĐEN DÂY XÍCH', 1766309, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-809842', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 0, 0),
(13, 9, 1, 'FS2104003BHPUYL', 'TÚI XÁCH VÀNG NẮP VUÔNG', 4401910, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-2183296', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 0, 0),
(14, 9, 2, 'FS2104003BHPBBB', 'Túi xách Dior', 2990000, 1990000, 9, 'Túi xách Dior đen', NULL, NULL, NULL, 'a-b-c-8486956', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 0, 0),
(15, 9, 1, 'FS2104003BHPUPU', 'TÚI XÁCH PURPLE NẮP VUÔNG', 347407, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-5884890', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 1, 0),
(16, 9, 6, 'FS2002017BHPUPK', 'TÚI XÁCH HỒNG XÍCH VÀNG', 1605152, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-3963584', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 0, 0, 1),
(17, 9, 1, 'FS2002006BHPUGR', 'TÚI XÁCH GHI NGỌC TRAI', 6983541, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-2163251', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 0, 0),
(18, 9, 4, 'FS2002016BHPUGE', 'TÚI XÁCH XANH NẮP HỒNG', 102251, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-8925503', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 1, 0),
(19, 8, 1, 'FS2105007FSLEBR', 'GIÀY DA MÀU COFFEE MŨI VUÔNG', 9560629, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-8137763', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 0, 1),
(20, 8, 2, 'FS2105001FSLEBK', 'GIÀY ĐEN MŨI NHỌN', 7496395, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-3912307', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 2, 0, 0),
(21, 8, 3, 'FS2105009FSLEAP', 'GIÀY CAO GÓT MÀU MƠ VÀNG', 8800090, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-5148246', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 0, 1),
(22, 8, 1, 'FS2105008FSLERE', 'GIÀY ĐỎ ĐẾ VUÔNG', 1511266, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-4004308', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 0, 1),
(23, 8, 1, 'FS2105004FSLEWH', 'GIÀY TRẮNG PHỤ KIỆN', 1156061, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-4576801', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 1, 0),
(24, 8, 1, 'FS2104002FSLEPU', 'GIÀY PURPLE MŨI BO', 1246504, 0, 998, NULL, NULL, NULL, NULL, 'a-b-c-871082', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 0, 0),
(25, 8, 1, 'FS2105005FSLEBK', 'GIÀY ĐEN VIỀN XÍCH', 2764340, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-625009', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 2, 0, 0),
(26, 8, 1, 'FS2105002FSLEAP', 'GIÀY DA MŨI VUÔNG', 82190, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-511797', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 0, 0, 0),
(27, 8, 1, 'FS2105006FSLEWH', 'GIÀY TRẮNG MŨI VUÔNG', 2117928, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-683961', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 2, 0, 0),
(28, 8, 1, 'FS2105007FSLEBR', 'GIÀY DA MÀU COFFEE MŨI VUÔNG', 343069, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-1884412', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 2, 1, 0),
(29, 6, 1, 'GW2107048BKLAPL', 'CV REN HOA XANH XẾP TẦNG', 5361564, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-7370177', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 0, 1),
(30, 6, 1, 'GS2104235BKWOBE', 'CHÂN VÁY ĐŨI BE XẾP LY', 5778614, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-1197650', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 0, 0),
(31, 6, 1, 'GS2107025BKORBK', 'CHÂN VÁY XÒE TƠ ĐEN', 2808377, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-3877720', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 0, 0, 0),
(32, 6, 1, 'GW2105069BKWOPW', 'TCV SẠN TRẮNG HOA BÈO GẤU', 6706044, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-5795650', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 0, 0, 0),
(33, 6, 1, 'GW2009014TUWOPK', 'VEST HỒNG NHẠT', 5105093, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-7345090', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 1, 0),
(34, 6, 1, 'GW2009015BSWOPK', 'QUẦN SOOC HỒNG NHẠT', 5407331, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-9338500', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 2, 0, 1),
(35, 6, 1, 'GS2105065DILAPK', 'VÁY LƯỚI HỒNG 2 DÂY NHÚN NGỰC', 1721377, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-4657231', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 0, 0),
(36, 6, 1, 'GS2104173DXWOGE', 'VÁY VOAN XANH HOA BÈO CỔ', 2384892, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-5270654', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 0, 0),
(37, 6, 1, 'BW2002038TSKCNV', 'ÁO THUN TÍM THAN IN CHỮ', 6760331, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-2381577', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 2, 0, 0),
(38, 6, 1, 'GS2105052DIWOBK', 'TVÁY 2 DÂY HOA ĐEN TRẮNG', 6646979, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-6095926', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 0, 0, 0),
(39, 6, 1, 'BW2009019OCKCGD', 'ÁO KHOÁC THUN GHI ĐẬM', 2953903, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-3334898', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 0, 0),
(40, 6, 1, 'GS2104164DIORGE', 'VÁY TƠ XANH TRỄ VAI', 4828577, 0, 998, NULL, NULL, NULL, NULL, 'a-b-c-8386712', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 0, 0),
(41, 6, 1, 'BW2009024BPKCNV', 'QUẦN THUN XANH ĐẬM THÊU LOGO', 5281177, 0, 998, NULL, NULL, NULL, NULL, 'a-b-c-1928866', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 0, 0),
(42, 6, 1, 'GS2105158DILABK', 'VÁY 2 DÂY LƯỚI ĐEN CHẤM BI', 1920156, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-4484194', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 0, 0),
(43, 6, 1, 'GW2009116BSKCNV', 'QUẦN SOOC TÍM THAN', 3757249, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-6634374', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 0, 0, 0),
(44, 6, 1, 'GW2002049DMKCPB', 'VÁY ĐEN HT PHỐI LƯỚI', 3025778, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-9719288', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 1, 0),
(45, 6, 1, 'GW1911021JLKCBK', 'JUMPSUIT ĐEN PHỐI REN', 3857141, 0, 997, NULL, NULL, NULL, NULL, 'a-b-c-8693317', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 0, 1),
(46, 6, 1, 'GW2006108BKWOPK', 'CHÂN VÁY HỒNG PHỐI 2 DÂY', 208376, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-4308722', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 0, 1),
(47, 6, 1, 'BW2009019OCKCGD', 'ÁO KHOÁC THUN GHI ĐẬM', 9470453, 0, 998, NULL, NULL, NULL, NULL, 'a-b-c-5463659', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 1, 0),
(48, 6, 1, 'GW2105062TSWOPW', 'ÁO SẠN TRẮNG HOA DÂY RÚT NHÚN', 6727140, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-4392131', NULL, NULL, NULL, NULL, '2022-01-11 14:38:14', 1, 0, 0),
(49, 2, 1, 'FW2110016SDVEBK', 'SET ĐẦM NHUNG ĐEN KHOÁC LỬNG', 5224343, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-5569677', NULL, NULL, NULL, NULL, '2022-01-12 06:40:54', 0, 0, 0),
(50, 2, 1, 'FW2109055DMWOBK', 'ĐẦM ĐEN CỔ TƠ TRẮNG ĐÍNH TRAI', 5940293, 0, 997, NULL, NULL, NULL, NULL, 'a-b-c-4671992', NULL, NULL, NULL, NULL, '2022-01-12 06:40:54', 1, 1, 0),
(51, 2, 1, 'FW2109048DIWOBK', 'ĐẦM ĐEN TAY VOAN ĐÍNH DÂY PK', 4028440, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-6650930', NULL, NULL, NULL, NULL, '2022-01-12 06:40:54', 2, 1, 0),
(52, 2, 1, 'FW2112004DMVENV', 'ĐẦM NHUNG TÍM THAN GẤU PHỒNG', 2321322, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-9238674', NULL, NULL, NULL, NULL, '2022-01-12 06:40:54', 0, 0, 0),
(53, 2, 1, 'FW2108008DIWOPK', 'ĐẦM HỒNG NƠ TRỄ VAI', 9521287, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-6240582', NULL, NULL, NULL, NULL, '2022-01-12 06:40:54', 0, 0, 0),
(54, 2, 1, 'FW2110004SEKFPK', 'SET LEN HỒNG CỔ LỌ', 642472, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-3486889', NULL, NULL, NULL, NULL, '2022-01-12 06:40:54', 1, 1, 0),
(55, 2, 1, 'FW2108005DILAWH', 'ĐẦM REN TRẮNG NƠ CỔ', 4648499, 0, 998, NULL, NULL, NULL, NULL, 'a-b-c-8712699', NULL, NULL, NULL, NULL, '2022-01-12 06:40:54', 1, 0, 0),
(56, 2, 1, 'FW2109056DMLEBE', 'ĐẦM DA BE VAI CHỜM', 1315079, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-3102826', NULL, NULL, NULL, NULL, '2022-01-12 06:40:54', 1, 0, 0),
(57, 2, 1, 'FW2110007SEKFBE', 'BỘ LEN BE CÚC GẤU', 2629896, 0, 997, NULL, NULL, NULL, NULL, 'a-b-c-9376035', NULL, NULL, NULL, NULL, '2022-01-12 06:40:54', 1, 0, 0),
(58, 2, 1, 'FW2108045DIWOPK', 'ĐẦM HỒNG XOÈ TAY CÚC', 9204246, 0, 998, NULL, NULL, NULL, NULL, 'a-b-c-7571697', NULL, NULL, NULL, NULL, '2022-01-12 06:40:54', 1, 1, 0),
(59, 2, 1, 'FW2105089SDLAWH', 'SET ĐẦM REN TRẮNG CỔ ĐỨC (2D)', 8131544, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-9730382', NULL, NULL, NULL, NULL, '2022-01-12 06:40:54', 0, 0, 1),
(60, 2, 1, 'FW2106096DIWOWH', 'ĐẦM LƯỚI TRẮNG ĐAI EO', 3044985, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-5936817', NULL, NULL, NULL, NULL, '2022-01-12 06:40:54', 0, 0, 0),
(61, 2, 1, 'FS2012212DMLABK', 'ĐẦM ĐEN PHỐI LƯỚI ĐÈ REN', 830292, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-492940', NULL, NULL, NULL, NULL, '2022-01-12 06:40:54', 2, 0, 0),
(62, 2, 1, 'FW2109024DISIPB', 'ĐẦM LỤA ĐEN HT XẺ VẠT', 5016504, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-4654248', NULL, NULL, NULL, NULL, '2022-01-12 06:40:54', 1, 0, 0),
(63, 2, 1, 'FW2106173DILAWH', 'ĐẦM ÔM REN TRẮNG TAY XÒE', 2591646, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-1792423', NULL, NULL, NULL, NULL, '2022-01-12 06:40:54', 1, 1, 0),
(64, 2, 1, 'FS2105037SDLAWH', 'SET ĐẦM REN TRẮNG (KÈM 2D)', 7908716, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-4999371', NULL, NULL, NULL, NULL, '2022-01-12 06:40:54', 1, 0, 0),
(65, 3, 1, 'FW2107016STLAPW', 'SET ÁO LƯỚI HỌA TIẾT TRẮNG ĐEN', 1768647, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-9619586', NULL, NULL, NULL, NULL, '2022-01-12 06:50:12', 1, 0, 1),
(66, 3, 1, 'FW2112002TLVEGE', 'ÁO NHUNG XANH VAI GẬP', 5117083, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-3099815', NULL, NULL, NULL, NULL, '2022-01-12 06:50:12', 2, 0, 0),
(67, 3, 1, 'FW2106194TSWOPK', 'ÁO HỒNG CHỒNG VẠT CÀI SAU', 279479, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-6640319', NULL, NULL, NULL, NULL, '2022-01-12 06:50:12', 2, 0, 0),
(68, 3, 1, 'FW2106035TNWOWH', 'SƠ MI THÔ TRẮNG PHỦ BÈO NGỰC', 6046142, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-3902151', NULL, NULL, NULL, NULL, '2022-01-12 06:50:12', 1, 0, 0),
(69, 3, 1, 'FW2109034TLKFBE', 'ÁO LEN BE VẠT CHÉO', 9392277, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-9589799', NULL, NULL, NULL, NULL, '2022-01-12 06:50:12', 1, 0, 0),
(70, 3, 1, 'FW2109033TLKFBR', 'ÁO LEN NÂU HỞ VAI', 8822960, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-6242542', NULL, NULL, NULL, NULL, '2022-01-12 06:50:12', 0, 0, 0),
(71, 3, 1, 'FW2106048TSKCBK', 'ÁO THUN ĐEN THÊU LOGO TAY', 5937969, 4900000, 99, 'Áo đen thêu logo', NULL, NULL, NULL, 'a-b-c-2443314', NULL, NULL, NULL, NULL, '2022-01-12 06:50:12', 1, 1, 0),
(72, 3, 1, 'FS2103139TSKCWH', 'ÁO THUN TRẮNG ĐÍNH KIM SA', 3220968, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-3488943', NULL, NULL, NULL, NULL, '2022-01-12 06:50:12', 0, 0, 0),
(73, 3, 1, 'FS2105056TSKCWH', 'ÁO THUN TRẮNG IN LOGO ELISE', 8290933, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-114775', NULL, NULL, NULL, NULL, '2022-01-12 06:50:12', 0, 0, 0),
(74, 3, 1, 'FS2104056TSKCYL', 'ÁO THUN VÀNG ĐÍNH TRAI', 1791761, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-107045', NULL, NULL, NULL, NULL, '2022-01-12 06:50:12', 2, 0, 0),
(75, 3, 1, 'FW2110075TUWOBK', 'VEST GẤM ĐEN HOA LỬNG', 4086007, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-190902', NULL, NULL, NULL, NULL, '2022-01-12 06:50:12', 1, 0, 0),
(76, 3, 1, 'FS2104044TSKCWH', 'ÁO THUN TRẮNG TAY BÈO CỔ XÍCH', 5054753, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-633373', NULL, NULL, NULL, NULL, '2022-01-12 06:50:12', 1, 0, 1),
(77, 3, 1, 'FW2107116TUWOPP', 'VEST LỬNG HỒNG KẺ', 3015746, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-2594162', NULL, NULL, NULL, NULL, '2022-01-12 06:50:12', 0, 0, 0),
(78, 3, 1, 'FW2108034TNVEBK', 'ÁO NHUNG ĐEN 2D THÊU LOGO', 9914470, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-1070688', NULL, NULL, NULL, NULL, '2022-01-12 06:50:12', 2, 0, 0),
(79, 3, 1, 'FW2111006TUWOCK', 'VEST KẺ CARO ĐEN TRẮNG', 525115, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-7570956', NULL, NULL, NULL, NULL, '2022-01-12 06:50:12', 1, 0, 0),
(80, 3, 1, 'FS2104155TSKCBK', 'ÁO THUN ĐEN VIỀN XÍCH', 2882163, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-4642717', NULL, NULL, NULL, NULL, '2022-01-12 06:50:12', 1, 0, 0),
(81, 4, 1, 'FW2111186BKVEBK', 'JUPE NHUNG ĐEN CÚC TÚI', 2835471, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-500718', NULL, NULL, NULL, NULL, '2022-01-12 07:00:36', 0, 0, 0),
(82, 4, 1, 'FS2104085BKWOBK', 'JUPE ĐEN PHỐI CÚC', 5530866, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-8575440', NULL, NULL, NULL, NULL, '2022-01-12 07:00:36', 1, 0, 0),
(83, 4, 1, 'FW2104045BKDEGR', 'CHÂN VÁY JEAN GHI DẬP LY', 9147920, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-1375045', NULL, NULL, NULL, NULL, '2022-01-12 07:00:36', 0, 1, 0),
(84, 4, 1, 'FS2105087BKWORE', 'JUPE HỌA TIẾT ĐỎ XẾP TẦNG', 9147003, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-1148906', NULL, NULL, NULL, NULL, '2022-01-12 07:00:36', 1, 0, 0),
(85, 4, 1, 'FW2105111BKWOPW', 'CHÂN VÁY CHIFFON HT NHÚN LY', 8291255, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-1619394', NULL, NULL, NULL, NULL, '2022-01-12 07:00:36', 1, 0, 0),
(86, 4, 1, 'FS2104222BKLABK', 'JUPE LƯỚI ĐEN CHẤM BI ĐÈ REN', 4015267, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-4650253', NULL, NULL, NULL, NULL, '2022-01-12 07:00:36', 1, 0, 0),
(87, 4, 1, 'FW2109012BKTWPW', 'JUPE BÚT CHÌ DẠ TWEED KẺ VÀNG', 5202572, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-8393083', NULL, NULL, NULL, NULL, '2022-01-12 07:00:36', 1, 0, 0),
(88, 4, 1, 'FW2107074BKWLBK', 'JUPE DẠ ĐEN LÔNG CỪU', 3967060, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-8014656', NULL, NULL, NULL, NULL, '2022-01-12 07:00:36', 0, 0, 1),
(89, 4, 1, 'FS2105126BKORBR', 'JUPE TƠ NÂU CẠP ĐÍNH LOGO', 4227584, 0, 998, NULL, NULL, NULL, NULL, 'a-b-c-4894030', NULL, NULL, NULL, NULL, '2022-01-12 07:00:36', 1, 0, 0),
(90, 4, 1, 'FW2107144BKWOWH', 'JUPE BÚT CHÌ TRẮNG XẺ SAU', 9236739, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-426182', NULL, NULL, NULL, NULL, '2022-01-12 07:00:37', 2, 0, 0),
(91, 4, 1, 'FW2106061BKWOBK', 'JUPE TAFTA PHỐI DẬP LY TƠ', 3500948, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-7448821', NULL, NULL, NULL, NULL, '2022-01-12 07:00:37', 0, 0, 0),
(92, 4, 1, 'FW2108060BKTWRD', 'JUPE BÚT CHÌ DẠ TWEED ĐỎ', 9794521, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-5965559', NULL, NULL, NULL, NULL, '2022-01-12 07:00:37', 1, 0, 0),
(93, 4, 1, 'FW2108040BKTWPT', 'JUPE DẠ TWEED DÂY PK GẤU', 8469764, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-7481332', NULL, NULL, NULL, NULL, '2022-01-12 07:00:37', 1, 0, 0),
(94, 4, 1, 'FW2108036BKTWPP', 'JUPE DẠ TWEED HỒNG ĐEN ĐUÔI CÁ', 2965256, 0, 998, NULL, NULL, NULL, NULL, 'a-b-c-9509982', NULL, NULL, NULL, NULL, '2022-01-12 07:00:37', 1, 0, 0),
(95, 4, 1, 'FW2107146BKORBK', 'JUPE TƠ ĐEN 2 TẦNG', 9416990, 0, 999, NULL, NULL, NULL, NULL, 'a-b-c-5105915', NULL, NULL, NULL, NULL, '2022-01-12 07:00:37', 2, 0, 0),
(96, 4, 1, 'FW2108062BKTWPP', 'JUPE DẠ TWEED HỒNG CAM', 8189184, 0, 998, NULL, NULL, NULL, NULL, 'a-b-c-6999628', NULL, NULL, NULL, NULL, '2022-01-12 07:00:37', 1, 1, 0),
(97, 5, 1, 'FW2108088BPWOBK', 'QUẦN DÀI ĐEN LOE ỐNG', 2694951, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-9680396', NULL, NULL, NULL, NULL, '2022-01-12 07:11:36', 2, 0, 0),
(98, 5, 1, 'FW2112003BPVEGE', 'QUẦN SUÔNG NHUNG XANH', 8907202, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-7403097', NULL, NULL, NULL, NULL, '2022-01-12 07:11:36', 1, 0, 0),
(99, 5, 1, 'FW2107095BPWOPK', 'QUẦN DÀI HỒNG CẠP CHUN SAU', 6451161, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-7974299', NULL, NULL, NULL, NULL, '2022-01-12 07:11:36', 1, 0, 0),
(100, 5, 1, 'FW2105122BPWOBK', 'QUẦN BAGGY ĐEN LY GIỮA', 5534200, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-7662202', NULL, NULL, NULL, NULL, '2022-01-12 07:11:36', 2, 0, 0),
(101, 5, 1, 'FW2105101BPDEGR', 'QUẦN JEANS LỬNG SUÔNG GHI', 8317515, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-4388112', NULL, NULL, NULL, NULL, '2022-01-12 07:11:36', 0, 0, 0),
(102, 5, 1, 'FW2108096BPWOBK', 'QUẦN ĐEN ỐNG VẨY TÚI CHÉO', 4984978, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-8953955', NULL, NULL, NULL, NULL, '2022-01-12 07:11:36', 1, 0, 1),
(103, 5, 1, 'FW2105084BPWOPG', 'QUẦN SỌC TRẮNG XANH DẬP LY', 9972343, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-1605442', NULL, NULL, NULL, NULL, '2022-01-12 07:11:36', 2, 1, 0),
(104, 5, 1, 'FW2108050BPWOPU', 'QUẦN SUÔNG TÍM XẾP LY', 4906784, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-1165343', NULL, NULL, NULL, NULL, '2022-01-12 07:11:36', 1, 0, 0),
(105, 5, 1, 'FW2106195BPWOPK', 'QUẦN SUÔNG HỒNG LY TRƯỚC', 4616893, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-1010391', NULL, NULL, NULL, NULL, '2022-01-12 07:11:36', 0, 0, 0),
(106, 5, 1, 'FS2105091BPWOPW', 'QUẦN LỬNG SUÔNG HT ĐAI EO', 8364111, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-1555926', NULL, NULL, NULL, NULL, '2022-01-12 07:11:36', 1, 0, 0),
(107, 5, 1, 'FW2108007BPWOBK', 'QUẦN SUÔNG ĐEN LY TRƯỚC', 7969879, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-4748456', NULL, NULL, NULL, NULL, '2022-01-12 07:11:36', 1, 0, 0),
(108, 5, 1, 'FW2107129BPWOBK', 'QUẦN SUÔNG ĐEN LY TRƯỚC', 4757063, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-9074502', NULL, NULL, NULL, NULL, '2022-01-12 07:11:36', 1, 0, 1),
(109, 5, 1, 'FS2105135BPWOBK', 'QUẦN SUÔNG ĐEN TÚI CHÉO', 9875676, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-1127143', NULL, NULL, NULL, NULL, '2022-01-12 07:11:36', 1, 0, 0),
(110, 5, 1, 'FW2108064BPWOBK', 'QUẦN SUÔNG ĐEN KHÓA SAU', 5107193, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-8412208', NULL, NULL, NULL, NULL, '2022-01-12 07:11:36', 2, 0, 0),
(111, 5, 1, 'FW2111005BSTWPL', 'QUẦN SOOC DẠ TWEED XANH', 5908940, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-8679612', NULL, NULL, NULL, NULL, '2022-01-12 07:11:36', 1, 0, 0),
(112, 5, 1, 'FW2104122BPDEGR', 'QUẦN JEANS GHI XẺ TRƯỚC', 4223121, 0, NULL, NULL, NULL, NULL, NULL, 'a-b-c-8161435', NULL, NULL, NULL, NULL, '2022-01-12 07:11:36', 1, 0, 0),
(116, NULL, NULL, NULL, 'banhangproject', 150000, 0, 99, NULL, NULL, NULL, NULL, 'a-b-c-3456334', NULL, NULL, NULL, NULL, '2022-10-05 12:45:09', 1, 0, 0),
(117, NULL, NULL, NULL, 'banhangproject', 150000, 0, 99, NULL, NULL, NULL, NULL, 'a-b-c-3456934', NULL, NULL, NULL, NULL, '2022-10-05 12:48:26', 1, 0, 0),
(118, 3, NULL, 'FRE256897898485', 'Áo semi nam', 155000, 0, 9, NULL, NULL, NULL, NULL, 'a-b-c-3458633', NULL, NULL, NULL, NULL, '2022-10-05 12:56:06', 1, 0, 0),
(119, 5, 5, 'FRE25656898485', 'Jeans bụi', 199000, 0, 8, NULL, NULL, NULL, NULL, 'a-b-c-5988334', NULL, NULL, NULL, NULL, '2022-10-05 13:27:05', 1, 0, 0),
(120, 2, 8, 'FRE256159865485', 'Đầm tiệc trắng', 599000, 0, 9, NULL, NULL, NULL, NULL, 'a-b-c-3415883', NULL, NULL, NULL, NULL, '2022-10-05 13:29:02', 1, 0, 0),
(121, 3, 4, 'FRE256897251232', 'áo thun trắng', 199000, 129000, 99, 'Áo thun nữ', NULL, NULL, NULL, 'a-b-c-3455922', NULL, NULL, NULL, NULL, '2022-10-05 13:43:05', 1, 0, 0),
(122, 3, NULL, 'FRE256568698485', 'Áo khoác da bò nâu', 599000, 499000, 22, NULL, NULL, NULL, NULL, 'a-b-c-11256334', NULL, NULL, NULL, NULL, '2022-10-06 21:29:47', 1, 1, 1),
(123, 3, 5, 'FRE25683398485', 'áo khoác gió', 350000, 299000, 99, NULL, NULL, NULL, NULL, 'ao-khoac-gio-2022', NULL, NULL, NULL, NULL, '2022-10-06 21:31:30', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `user_id` bigint NOT NULL,
  `func_id` bigint NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint DEFAULT '1',
  PRIMARY KEY (`user_id`,`func_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`user_id`, `func_id`, `created_at`, `status`) VALUES
(1, 13, '2022-04-03 08:21:23', 1),
(1, 19, '2022-04-03 08:21:23', 1),
(1, 12, '2022-04-03 08:21:23', 1),
(1, 14, '2022-04-03 08:21:23', 1),
(1, 15, '2022-04-03 08:21:23', 1),
(1, 16, '2022-04-03 08:21:23', 1),
(1, 20, '2022-04-03 08:21:23', 1),
(1, 17, '2022-04-03 08:21:23', 1),
(1, 18, '2022-04-03 08:21:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
CREATE TABLE IF NOT EXISTS `shipping` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_share` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `summary`, `phone`, `email`, `address`, `image`, `alias`, `keyword`, `description`, `image_share`, `title`, `created_at`, `status`) VALUES
(1, 'Tommy Hilfiger', 'host', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-12 18:05:12', 1),
(2, 'Dior', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30 15:22:48', 1),
(3, 'Addidas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30 15:24:26', 1),
(4, 'Nike', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30 15:24:44', 1),
(5, 'Mango', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30 15:26:13', 1),
(6, 'Levi\'s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30 15:26:22', 1),
(7, 'GAP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30 15:26:55', 1),
(8, 'CK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30 15:27:29', 1),
(9, 'No brand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-01 20:32:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
CREATE TABLE IF NOT EXISTS `tests` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Palma Wisoky MD', 'Dr. Ova Walker DDS', 'considine.johnathon@beahan.org', '(669) 910-8358', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(2, 'Mrs. Caleigh Pouros Jr.', 'Amely Hackett', 'purdy.ezequiel@west.biz', '575-901-2568', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(3, 'Lelia Schmeler', 'Alia Herzog PhD', 'gsawayn@gmail.com', '979-913-0838', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(4, 'Mr. Adrian Hauck', 'Stephany Kuphal', 'ratke.irving@hotmail.com', '+1 (432) 454-6903', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(5, 'Jermey Wolff', 'Eulalia Monahan', 'leta54@yahoo.com', '(385) 282-8574', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(6, 'Xzavier Harber', 'Prof. Verona Bogan', 'dax.boyle@yahoo.com', '+1 (262) 361-0141', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(7, 'Zita Aufderhar II', 'Dr. Elinor Bayer PhD', 'teresa32@yahoo.com', '270-475-5741', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(8, 'Gabrielle O\'Kon PhD', 'Kara Bednar', 'rau.henderson@gmail.com', '+1 (279) 829-1497', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(9, 'Leland Rutherford', 'Amya Cartwright', 'bins.kaia@koepp.com', '+15405429138', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(10, 'Dr. Stanley Maggio V', 'Vernon Klein', 'alberto.collins@yahoo.com', '551-898-3838', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(11, 'Letitia Wolff', 'Elenor Stark', 'fisher.alexandre@lueilwitz.com', '312-809-1256', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(12, 'Janae Breitenberg', 'Ms. Marina Hickle V', 'courtney58@koch.com', '+1 (660) 982-1663', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(13, 'Keegan Leffler', 'Sibyl Mante', 'blick.asia@gmail.com', '(832) 706-5081', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(14, 'Noah Russel II', 'Raoul Emard Jr.', 'hnolan@gleichner.net', '+1.910.780.0656', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(15, 'Noe Green', 'Jude Konopelski', 'angelica35@hotmail.com', '660-908-4429', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(16, 'Kaitlyn Keeling', 'Prof. Norbert Reichel', 'spencer.trisha@boehm.net', '+1-520-921-8149', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(17, 'Micheal Beatty', 'Esmeralda Block', 'sarina60@gmail.com', '1-323-472-6409', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(18, 'Brent Block', 'Jamie Streich', 'daphne14@ritchie.com', '(718) 464-7251', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(19, 'Dr. Lelah Kunze DDS', 'Melany Klocko', 'vkassulke@hotmail.com', '330.371.9360', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(20, 'Carol Williamson', 'Mallory Kirlin', 'qoreilly@yahoo.com', '607-510-6981', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(21, 'Mireya Kihn', 'Mr. Antwan Glover II', 'jshanahan@gmail.com', '+1 (564) 978-8047', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(22, 'Ari Bednar', 'Mervin Keebler', 'kayley.sanford@gmail.com', '(512) 968-3591', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(23, 'Dr. Lillie Murazik', 'Mr. Tevin Ernser Jr.', 'ckihn@yahoo.com', '(938) 796-4120', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(24, 'Sadye Bechtelar', 'Celine Abbott', 'maverick34@balistreri.com', '718.705.4297', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(25, 'Prof. Madison Weissnat III', 'Dr. Toby Larkin', 'kunde.maurice@hotmail.com', '731-201-9458', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(26, 'Randall Gorczany', 'Wilfredo Powlowski', 'qrogahn@bashirian.net', '817-785-6105', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(27, 'Prof. Anya Schultz', 'Amari Eichmann', 'abdul.torphy@hammes.biz', '1-870-643-5959', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(28, 'Sylvia Grady', 'Mrs. Mariam Murazik', 'hayes.urban@metz.net', '914-316-1269', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(29, 'Dr. Wilton McClure III', 'Dr. Terrill Kerluke III', 'pollich.darion@yahoo.com', '1-509-614-7457', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(30, 'Jules Wyman', 'Josephine Rath', 'schimmel.kyle@dare.com', '256.800.2527', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(31, 'Mr. Hillard Runolfsson', 'Rahsaan Predovic II', 'harvey.marques@walker.com', '+19548884315', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(32, 'Liam Bosco', 'Ms. Casandra Effertz II', 'dovie.schmitt@upton.com', '1-848-658-1836', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(33, 'Dr. Hortense Wilderman PhD', 'Delbert Sporer', 'hoyt.murazik@gmail.com', '971.201.9192', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(34, 'Dr. Roberto Fay III', 'Emmet D\'Amore', 'schroeder.kaycee@gmail.com', '308-504-6143', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(35, 'Granville Schaefer', 'Andreanne Waters', 'sporer.sofia@hotmail.com', '(989) 750-4079', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(36, 'Mr. Domenico Trantow', 'Dillan Gutkowski Jr.', 'margaretta.kirlin@yahoo.com', '220-789-0362', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(37, 'Onie Bartell', 'Golda Hammes', 'aric55@haag.org', '580-233-9613', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(38, 'Prof. Murl Cartwright', 'Foster Volkman', 'gene36@moore.com', '(754) 591-4553', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(39, 'Wayne Bednar', 'Cayla Klocko', 'block.estrella@boehm.com', '1-517-414-1181', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(40, 'Lindsay Ullrich III', 'Bria Kling IV', 'vrosenbaum@casper.com', '+1-424-914-1765', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(41, 'Cleo Schmidt', 'Ms. Ana Jacobi V', 'stone78@frami.com', '732-996-6856', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(42, 'Davon Erdman II', 'Fabian Hyatt', 'delia.greenfelder@hotmail.com', '+1.267.210.9460', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(43, 'Prof. Kiel Hill PhD', 'Jedediah McKenzie', 'adolfo00@yahoo.com', '(458) 661-5817', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(44, 'Prof. Brook Maggio', 'Amos Boyle', 'wendell.hand@schimmel.info', '1-267-733-1128', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(45, 'Destiney Kunde', 'Brant Jenkins', 'hveum@toy.net', '352.427.7131', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(46, 'Freeda Jast V', 'Werner Purdy PhD', 'qpadberg@von.com', '830-997-0786', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(47, 'Braeden Gerhold', 'Prof. Christine Russel', 'carol61@botsford.net', '503.343.2359', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(48, 'Mr. Keshaun Lebsack', 'Yoshiko Hintz', 'xcronin@hotmail.com', '952.262.2147', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(49, 'Lyla Bayer', 'Uriah Hirthe', 'dusty91@hotmail.com', '470.344.5945', '2022-03-27 03:31:45', '2022-03-27 03:31:45'),
(50, 'Brent Armstrong', 'Minerva Waelchi Sr.', 'yolanda.harber@jakubowski.info', '(423) 508-7121', '2022-03-27 03:31:45', '2022-03-27 03:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Firstname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Lastname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DoB` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Gender` tinyint NOT NULL COMMENT '1: Nam;\r\n0: Nữ',
  `Position` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Division` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timelife` datetime DEFAULT NULL,
  `reset_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `Address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `City` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint DEFAULT '1' COMMENT '1: HIEN, 2 :AN FRONT, 0: AN HET',
  `email_verified_at` datetime NOT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `Firstname`, `Lastname`, `DoB`, `Gender`, `Position`, `Division`, `timelife`, `reset_token`, `email`, `phone`, `image`, `group_id`, `Address`, `City`, `created_at`, `status`, `email_verified_at`, `remember_token`) VALUES
(1, 'admin', '$2y$10$hfGGuS9AZG4P/rp12EG04euv45OXYCcMzQAWEekclXwdqObsLWqlq', 'admin', 'dasd', '2022-09-07 20:33:03', 0, 'Director', 'Human Resources', NULL, '', 'phpt4cn@gmail.com', '0192345678', '', NULL, '', 'Ha Noi', '2022-03-20 08:59:17', 1, '2022-09-20 14:17:19', ''),
(2, 'admin2', '$2y$10$hfGGuS9AZG4P/rp12EG04euv45OXYCcMzQAWEekclXwdqObsLWqlq', 'admin2', 'fgsdf', '2022-09-07 20:33:03', 0, 'Founder', '', NULL, 'c4aa3f093ecb475a678373c489f6a467', 'nvthieu@alphatek.edu.vn', '0979898798', NULL, NULL, '', 'Quang Ninh', '2022-03-20 08:59:17', 0, '2022-09-05 14:17:28', ''),
(3, 'a', '$2y$10$hfGGuS9AZG4P/rp12EG04euv45OXYCcMzQAWEekclXwdqObsLWqlq', 'a', 'gsertw', '2022-09-07 20:33:03', 0, 'Executive Director', 'Marketing', '2022-08-11 19:28:14', 'a', 'a@gmail.com', '0352568485', 'a', NULL, '', 'Sai Gon', '2022-08-11 19:28:30', 1, '2022-09-03 14:17:30', ''),
(4, 'sfdf', '$2y$10$hfGGuS9AZG4P/rp12EG04euv45OXYCcMzQAWEekclXwdqObsLWqlq', 'hieu', 'aswra', '2022-09-07 20:33:03', 0, 'Design', 'IT depatement', NULL, '', 'sdf@gmail.com', '0868981989', '', NULL, '', 'Hue', '2022-08-11 19:35:11', 1, '2014-09-23 14:17:33', ''),
(5, 'dfgd', 'dfgdfgdfgdfgdfg', 'dfg', 'dasdfgy', '2022-09-07 20:33:03', 0, 'Accoutant', 'Finance', NULL, '', 'dfgdf@gmail.com', '0235589898', 'backend/assets/img/160x160/img3.jpg', NULL, '', 'Da Nang', '2022-08-11 19:41:44', 1, '2022-08-09 14:17:41', ''),
(6, 'windy', '123456', 'Long', 'Nguyen', '2022-09-30 11:15:07', 0, '', '', NULL, '', 'nguyenlongcva@gmail.com', '+0(865)877-93-5', NULL, NULL, '', '', '2022-09-30 11:15:07', NULL, '2022-08-09 14:17:51', ''),
(7, 'windy.van', '123456', 'Long', 'Nguyen', '2022-09-30 11:17:03', 0, '', '', NULL, '', 'angelfirevn@gmail.com', '0125487477', NULL, NULL, '', '', '2022-09-30 11:17:03', NULL, '2022-08-06 14:17:41', ''),
(8, 'windy.fr', '123456', 'An Nhiên', 'Vũ', '1991-08-21 00:00:00', 0, 'Manager', '', NULL, '', NULL, '0798288000', NULL, NULL, '', 'Binh Thuan', '2022-09-30 11:51:25', 2, '2022-07-09 14:17:41', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
