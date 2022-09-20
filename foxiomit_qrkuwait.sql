-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 14, 2022 at 01:00 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foxiomit_qrkuwait`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `apartment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intercom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '0 - Vendor, 1 - Blog',
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `page_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active_from` date NOT NULL,
  `active_to` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_storage`
--

CREATE TABLE `cart_storage` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vendor_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` int(11) NOT NULL,
  `receipt_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kds_finished` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restorant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_index` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `restorant_id`, `created_at`, `updated_at`, `order_index`, `active`, `deleted_at`) VALUES
(1, '{\"en\":\"Salads\"}', 1, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 0, 1, NULL),
(2, '{\"en\":\"Pizza\"}', 1, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 0, 1, NULL),
(3, '{\"en\":\"Fresh Pasta and Risotto\"}', 1, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 0, 1, NULL),
(4, '{\"en\":\"Lasagna\"}', 1, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 0, 1, NULL),
(5, '{\"en\":\"Burgers\"}', 2, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 0, 1, NULL),
(6, '{\"en\":\"Garnish\"}', 2, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 0, 1, NULL),
(7, '{\"en\":\"Salads\"}', 2, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 0, 1, NULL),
(8, '{\"en\":\"Starters\"}', 2, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 0, 1, NULL),
(9, '{\"en\":\"Drinks\"}', 2, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 0, 1, NULL),
(10, '{\"en\":\"Burrito\"}', 3, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 0, 1, NULL),
(11, '{\"en\":\"Quesadilla\"}', 3, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 0, 1, NULL),
(12, '{\"en\":\"Taco\"}', 3, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 0, 1, NULL),
(13, '{\"en\":\"Burrito In A Bowl\"}', 3, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 0, 1, NULL),
(14, '{\"en\":\"Salads\"}', 4, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 0, 1, NULL),
(15, '{\"en\":\"Pizza\"}', 4, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 0, 1, NULL),
(16, '{\"en\":\"Burrito\"}', 4, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 0, 1, NULL),
(17, '{\"en\":\"Drinks\"}', 4, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 0, 1, NULL),
(18, '{\"en\":\"Lasagna\"}', 5, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 0, 1, NULL),
(19, '{\"en\":\"Fresh Pasta and Risotto\"}', 5, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 0, 1, NULL),
(20, '{\"en\":\"Salads\"}', 5, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 0, 1, NULL),
(21, '{\"en\":\"Pizza\"}', 5, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 0, 1, NULL),
(22, '{\"en\":\"Quesadilla\"}', 6, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 0, 1, NULL),
(23, '{\"en\":\"Burrito In A Bowl\"}', 6, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 0, 1, NULL),
(24, '{\"en\":\"Burrito\"}', 6, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 0, 1, NULL),
(25, '{\"en\":\"Taco\"}', 6, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 0, 1, NULL),
(26, '{\"en\":\"Drinks\"}', 7, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 0, 1, NULL),
(27, '{\"en\":\"Starters\"}', 7, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 0, 1, NULL),
(28, '{\"en\":\"Salads\"}', 7, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 0, 1, NULL),
(29, '{\"en\":\"Garnish\"}', 7, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 0, 1, NULL),
(30, '{\"en\":\"Burgers\"}', 7, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 0, 1, NULL),
(31, '{\"en\":\"Salads\"}', 8, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 0, 1, NULL),
(32, '{\"en\":\"Pizza\"}', 8, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 0, 1, NULL),
(33, '{\"en\":\"Drinks\"}', 8, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 0, 1, NULL),
(34, '{\"en\":\"Burrito\"}', 8, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 0, 1, NULL),
(35, '{\"en\":\"Lasagna\"}', 9, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 0, 1, NULL),
(36, '{\"en\":\"Salads\"}', 9, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 0, 1, NULL),
(37, '{\"en\":\"Fresh Pasta and Risotto\"}', 9, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 0, 1, NULL),
(38, '{\"en\":\"Pizza\"}', 9, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 0, 1, NULL),
(39, '{\"en\":\"Burrito In A Bowl\"}', 10, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 0, 1, NULL),
(40, '{\"en\":\"Burrito\"}', 10, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 0, 1, NULL),
(41, '{\"en\":\"Quesadilla\"}', 10, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 0, 1, NULL),
(42, '{\"en\":\"Taco\"}', 10, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 0, 1, NULL),
(43, '{\"en\":\"Garnish\"}', 11, '2022-08-18 19:44:48', '2022-08-19 00:40:32', 0, 1, NULL),
(44, '{\"en\":\"Starters\"}', 11, '2022-08-18 19:44:48', '2022-08-19 00:40:32', 0, 1, NULL),
(45, '{\"en\":\"Salads\"}', 11, '2022-08-18 19:44:48', '2022-08-19 00:40:32', 0, 1, NULL),
(46, '{\"en\":\"Drinks\"}', 11, '2022-08-18 19:44:48', '2022-08-19 00:40:32', 0, 1, NULL),
(47, '{\"en\":\"Burgers\"}', 11, '2022-08-18 19:44:48', '2022-08-19 00:40:32', 0, 1, NULL),
(48, '{\"en\":\"Salads\"}', 12, '2022-08-18 19:44:48', '2022-08-19 00:40:32', 0, 1, NULL),
(49, '{\"en\":\"Pizza\"}', 12, '2022-08-18 19:44:48', '2022-08-19 00:40:32', 0, 1, NULL),
(50, '{\"en\":\"Drinks\"}', 12, '2022-08-18 19:44:48', '2022-08-19 00:40:32', 0, 1, NULL),
(51, '{\"en\":\"Burrito\"}', 12, '2022-08-18 19:44:48', '2022-08-19 00:40:32', 0, 1, NULL),
(52, '{\"en\":\"Salads\"}', 13, '2022-08-18 19:44:48', '2022-08-19 00:40:32', 0, 1, NULL),
(53, '{\"en\":\"Lasagna\"}', 13, '2022-08-18 19:44:48', '2022-08-19 00:40:32', 0, 1, NULL),
(54, '{\"en\":\"Pizza\"}', 13, '2022-08-18 19:44:48', '2022-08-19 00:40:32', 0, 1, NULL),
(55, '{\"en\":\"Fresh Pasta and Risotto\"}', 13, '2022-08-18 19:44:49', '2022-08-19 00:40:32', 0, 1, NULL),
(56, '{\"en\":\"Burrito\"}', 14, '2022-08-18 19:44:49', '2022-08-19 00:40:32', 0, 1, NULL),
(57, '{\"en\":\"Quesadilla\"}', 14, '2022-08-18 19:44:49', '2022-08-19 00:40:32', 0, 1, NULL),
(58, '{\"en\":\"Burrito In A Bowl\"}', 14, '2022-08-18 19:44:49', '2022-08-19 00:40:32', 0, 1, NULL),
(59, '{\"en\":\"Taco\"}', 14, '2022-08-18 19:44:49', '2022-08-19 00:40:32', 0, 1, NULL),
(60, '{\"en\":\"Burgers\"}', 15, '2022-08-18 19:44:49', '2022-08-19 00:40:32', 0, 1, NULL),
(61, '{\"en\":\"Salads\"}', 15, '2022-08-18 19:44:49', '2022-08-19 00:40:32', 0, 1, NULL),
(62, '{\"en\":\"Garnish\"}', 15, '2022-08-18 19:44:49', '2022-08-19 00:40:32', 0, 1, NULL),
(63, '{\"en\":\"Starters\"}', 15, '2022-08-18 19:44:49', '2022-08-19 00:40:32', 0, 1, NULL),
(64, '{\"en\":\"Drinks\"}', 15, '2022-08-18 19:44:49', '2022-08-19 00:40:32', 0, 1, NULL),
(65, '{\"en\":\"Pizza\"}', 16, '2022-08-18 19:44:49', '2022-08-19 00:40:32', 0, 1, NULL),
(66, '{\"en\":\"Burrito\"}', 16, '2022-08-18 19:44:49', '2022-08-19 00:40:32', 0, 1, NULL),
(67, '{\"en\":\"Salads\"}', 16, '2022-08-18 19:44:49', '2022-08-19 00:40:32', 0, 1, NULL),
(68, '{\"en\":\"Drinks\"}', 16, '2022-08-18 19:44:49', '2022-08-19 00:40:32', 0, 1, NULL),
(69, '{\"en\":\"{\\\"ar\\\":\\\"\\\"}\"}', 17, '2022-08-19 00:25:58', '2022-08-19 00:40:32', 1, 1, NULL),
(70, '{\"en\":\"Hot Beverages\",\"ar\":\"Hot Beverages\"}', 19, '2022-08-19 23:57:30', '2022-08-20 00:03:56', 1, 1, NULL),
(71, '{\"en\":\"Cold Coffee\",\"ar\":\"Cold Coffee\"}', 19, '2022-08-19 23:58:22', '2022-08-20 00:03:56', 2, 1, NULL),
(72, '{\"en\":\"Biriyani\",\"ar\":\"\\u0628\\u0631\\u064a\\u0627\\u0646\\u064a\"}', 20, '2022-08-22 03:49:50', '2022-08-26 19:42:19', 6, 1, NULL),
(73, '{\"en\":\"Arabic\",\"ar\":\"Arabic\"}', 20, '2022-08-22 03:57:33', '2022-08-22 04:28:34', 2, 1, '2022-08-22 04:28:34'),
(74, '{\"en\":\"Chinese Cuisine\",\"ar\":\"\\u0627\\u0644\\u0645\\u0637\\u0628\\u062e \\u0627\\u0644\\u0635\\u064a\\u0646\\u064a\"}', 20, '2022-08-22 04:12:12', '2022-08-26 19:42:19', 5, 1, NULL),
(75, '{\"en\":\"Arabic Cuisine\",\"ar\":\"\\u0645\\u0637\\u0628\\u062e \\u0639\\u0631\\u0628\\u064a\"}', 20, '2022-08-22 04:25:33', '2022-08-26 19:44:34', 7, 1, NULL),
(76, '{\"en\":\"Beverages\",\"ar\":\"\\u0627\\u0644\\u0645\\u0634\\u0631\\u0648\\u0628\\u0627\\u062a\"}', 20, '2022-08-22 04:34:39', '2022-08-26 19:41:36', 8, 1, NULL),
(77, '{\"en\":\"APPETIZER\",\"ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0628\\u0644\\u0627\\u062a\"}', 21, '2022-08-25 00:45:07', '2022-09-02 22:14:02', 3, 1, NULL),
(78, '{\"en\":\"SALAD\",\"ar\":\"\\u0627\\u0644\\u062d\\u0633\\u0627\\u0621\"}', 21, '2022-08-25 00:45:24', '2022-09-02 22:13:13', 1, 1, NULL),
(79, '{\"en\":\"BIRYANI\",\"ar\":\"\\u0628\\u0631\\u064a\\u0627\\u0646\\u064a\"}', 21, '2022-08-25 00:45:34', '2022-09-02 22:18:05', 8, 1, NULL),
(80, '{\"en\":\"CHINESE CUISINE\",\"ar\":\"\\u0627\\u0644\\u0645\\u0637\\u0628\\u062e \\u0627\\u0644\\u0635\\u064a\\u0646\\u064a\"}', 21, '2022-08-25 00:45:43', '2022-09-02 22:21:06', 14, 1, NULL),
(81, '{\"en\":\"CONTINENTAL CUISINE\",\"ar\":\"\\u0645\\u0637\\u0628\\u062e \\u0643\\u0648\\u0646\\u062a\\u064a\\u0646\\u064a\\u0646\\u062a\\u0627\\u0644\"}', 21, '2022-08-25 00:45:49', '2022-09-02 22:15:24', 5, 1, NULL),
(82, '{\"en\":\"INDIAN CURRY\",\"ar\":\"\\u0643\\u0627\\u0631\\u064a \\u0647\\u0646\\u062f\\u064a\"}', 21, '2022-08-25 00:45:54', '2022-09-02 22:18:15', 9, 1, NULL),
(83, '{\"en\":\"ITALIAN CUISINE\",\"ar\":\"\\u0627\\u0644\\u0645\\u0637\\u0628\\u062e \\u0627\\u0644\\u0627\\u064a\\u0637\\u0627\\u0644\\u064a\"}', 21, '2022-08-25 00:45:59', '2022-09-02 22:19:17', 11, 1, NULL),
(84, '{\"en\":\"ARABIC GRILLED\",\"ar\":\"\\u0645\\u0634\\u0648\\u064a\\u0627\\u062a \\u0639\\u0631\\u0628\\u064a\"}', 21, '2022-08-25 00:46:07', '2022-09-03 06:41:08', 7, 1, NULL),
(85, '{\"en\":\"SOUP\",\"ar\":\"\\u0627\\u0644\\u062d\\u0633\\u0627\\u0621\"}', 21, '2022-08-25 00:46:12', '2022-09-02 22:14:02', 2, 1, NULL),
(86, '{\"en\":\"RAJDHANI VEGETABLES CORNER\",\"ar\":\"\\u0631\\u0643\\u0646 \\u062e\\u0636\\u0631\\u0648\\u0627\\u062a \\u0631\\u0627\\u062c\\u062f\\u0627\\u0646\\u064a\"}', 21, '2022-08-25 00:46:17', '2022-09-02 22:19:03', 10, 1, NULL),
(87, '{\"en\":\"KIDS MEAL\",\"ar\":\"\\u0648\\u062c\\u0628\\u0627\\u062a \\u0627\\u0644\\u0627\\u0637\\u0641\\u0627\\u0644\"}', 21, '2022-08-25 00:46:22', '2022-09-02 22:15:10', 4, 1, NULL),
(88, '{\"en\":\"RAJDHANI TANDOOR\",\"ar\":\"\\u062a\\u0646\\u062f\\u0648\\u0631 \\u0631\\u0627\\u062c\\u062f\\u0627\\u0646\\u064a\"}', 21, '2022-08-25 00:46:29', '2022-09-02 22:16:28', 6, 1, NULL),
(89, '{\"en\":\"BEVERAGES & DESSERT\",\"ar\":\"\\u0627\\u0644\\u062d\\u0644\\u0648\\u064a \\u0648 \\u0627\\u0644\\u0645\\u0634\\u0631\\u0648\\u0628\\u0627\\u062a\"}', 21, '2022-08-25 00:46:33', '2022-09-02 22:21:02', 15, 1, NULL),
(90, '{\"en\":\"TANDOORI ROTI & NAAN\",\"ar\":\"\\u062a\\u0646\\u062f\\u0648\\u0631\\u064a \\u0631\\u0648\\u062a\\u064a \\u0648 \\u0646\\u0627\\u0646\"}', 21, '2022-08-25 00:46:36', '2022-09-02 22:21:06', 13, 1, NULL),
(91, '{\"en\":\"Appetizers\",\"ar\":\"\\u0645\\u0642\\u0628\\u0644\\u0627\\u062a\"}', 20, '2022-08-26 01:07:28', '2022-08-26 19:42:10', 4, 1, NULL),
(92, '{\"en\":\"Salads\"}', 20, '2022-08-26 19:26:41', '2022-08-26 19:42:10', 3, 1, NULL),
(93, '{\"en\":\"Soups\"}', 20, '2022-08-26 19:35:18', '2022-08-26 19:42:05', 1, 1, NULL),
(94, '{\"en\":\"NOODLES & FRIED RICE\",\"ar\":\"\\u0627\\u0631\\u0632 \\u0645\\u0642\\u0644\\u064a \\u0648 \\u0645\\u0639\\u0643\\u0631\\u0648\\u0646\\u0629\"}', 21, '2022-09-02 22:20:19', '2022-09-03 01:03:43', 12, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `created_at`, `updated_at`, `name`, `alias`, `image`, `header_title`, `header_subtitle`, `deleted_at`) VALUES
(1, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 'Bronx', 'bx', 'https://foodtiger.mobidonia.com/uploads/settings/177686e2-8597-46e0-bf70-daa8d5ff0085_large.jpg', 'Food Delivery from<br /><strong>Bronx</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(2, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 'Brooklyn', 'br', 'https://foodtiger.mobidonia.com/uploads/settings/6d001b6c-2ba1-499e-9f57-09b7dc46ace3_large.jpg', 'Food Delivery from<br /><strong>Brooklyn</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(3, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 'Queens', 'qe', 'https://foodtiger.mobidonia.com/uploads/settings/492b78df-1756-4c30-910a-d3923b66aa97_large.jpg', 'Food Delivery from<br /><strong>Queens</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(4, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 'Manhattn', 'mh', 'https://foodtiger.mobidonia.com/uploads/settings/01f41f56-1acf-44f0-8e8d-fedceb5267cf_large.jpg', 'Food Delivery from<br /><strong>Manhattn</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(5, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 'Richmond', 'ri', 'https://foodtiger.mobidonia.com/uploads/settings/fe6c500b-3410-41ff-9734-94c58351ba60_large.jpg', 'Food Delivery from<br /><strong>Richmond</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(6, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 'Buffalo', 'bf', 'https://foodtiger.mobidonia.com/uploads/settings/0c3c8fb0-c252-4758-9699-6851b15796ef_large.jpg', 'Food Delivery from<br /><strong>Buffalo</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(7, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 'Rochester', 'rh', 'https://foodtiger.mobidonia.com/uploads/settings/c7f21267-7149-4311-9fd9-4a08904f67a3_large.jpg', 'Food Delivery from<br /><strong>Rochester</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(8, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 'Yonkers', 'yo', 'https://foodtiger.mobidonia.com/uploads/settings/8c65269a-3bbc-4899-be13-75d1bc35e9cd_large.jpg', 'Food Delivery from<br /><strong>Yonkers</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(9, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 'Syracuse', 'sy', 'https://foodtiger.mobidonia.com/uploads/settings/1e5fcde5-5dc0-4c29-8f49-314658836fb8_large.jpg', 'Food Delivery from<br /><strong>Syracuse</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(10, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 'Albany', 'al', 'https://foodtiger.mobidonia.com/uploads/settings/b521e77f-1d3e-4695-b871-bac8262c85dc_large.jpg', 'Food Delivery from<br /><strong>Albany</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(11, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 'New Rochelle', 'nr', 'https://foodtiger.mobidonia.com/uploads/settings/8b3ebb83-2e2e-43dd-8747-4f9c6f451199_large.jpg', 'Food Delivery from<br /><strong>New Rochelle</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(12, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 'Mount Vernon', 'mv', 'https://foodtiger.mobidonia.com/uploads/settings/daecfb93-677f-43a9-9e7e-4cf109194399_large.jpg', 'Food Delivery from<br /><strong>Mount Vernon</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(13, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 'Schenectady', 'sc', 'https://foodtiger.mobidonia.com/uploads/settings/177686e2-8597-46e0-bf70-daa8d5ff0085_large.jpg', 'Food Delivery from<br /><strong>Schenectady</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(14, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 'Utica', 'ut', 'https://foodtiger.mobidonia.com/uploads/settings/507847c5-1896-4ecf-bfe8-9c5f198ce41e_large.jpg', 'Food Delivery from<br /><strong>Utica</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(15, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 'White Plains', 'wp', 'https://foodtiger.mobidonia.com/uploads/settings/a8e96a74-dc3a-403c-8fd0-b4528838e98c_large.jpg', 'Food Delivery from<br /><strong>White Plains</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(16, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 'Niagara Falls', 'nf', 'https://foodtiger.mobidonia.com/uploads/settings/99d5b4c3-0bb4-428a-96cf-0e510bc3ab57_large.jpg', 'Food Delivery from<br /><strong>Niagara Falls</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdomain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fee` double(8,2) NOT NULL DEFAULT '0.00',
  `static_fee` double(8,2) NOT NULL DEFAULT '0.00',
  `radius` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `city_id` int(11) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `can_pickup` int(11) NOT NULL DEFAULT '1',
  `can_deliver` int(11) NOT NULL DEFAULT '1',
  `self_deliver` int(11) NOT NULL DEFAULT '0',
  `free_deliver` int(11) NOT NULL DEFAULT '0',
  `whatsapp_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_covertion` int(11) NOT NULL DEFAULT '1',
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mollie_payment_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `can_dinein` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `created_at`, `updated_at`, `name`, `subdomain`, `logo`, `cover`, `active`, `user_id`, `lat`, `lng`, `address`, `phone`, `minimum`, `description`, `fee`, `static_fee`, `radius`, `is_featured`, `city_id`, `views`, `can_pickup`, `can_deliver`, `self_deliver`, `free_deliver`, `whatsapp_phone`, `fb_username`, `do_covertion`, `currency`, `payment_info`, `mollie_payment_key`, `deleted_at`, `can_dinein`) VALUES
(1, '2022-08-18 19:44:45', '2022-08-19 00:19:48', 'Leuka Pizza', 'leukapizza', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', '', 1, 2, '40.654509', '-73.948990', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'italian, pasta, pizza', 0.00, 0.00, '[{\"lat\": 40.61811135844185, \"lng\": -74.04154967363282}, {\"lat\": 40.593088644275994, \"lng\": -74.00447081621094}, {\"lat\": 40.57483700944677, \"lng\": -74.01271056230469}, {\"lat\": 40.57222922648421, \"lng\": -73.94816588457032}, {\"lat\": 40.58318123192112, \"lng\": -73.87812804277344}, {\"lat\": 40.620196161732025, \"lng\": -73.89117430742188}, {\"lat\": 40.64520872605633, \"lng\": -73.85340880449219}, {\"lat\": 40.71862893820799, \"lng\": -73.96327208574219}, {\"lat\": 40.680627151592745, \"lng\": -74.01957701738282}, {\"lat\": 40.66552453494284, \"lng\": -74.00447081621094}]', 0, 2, 1, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL, 1),
(2, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 'Oasis Burgers', 'oasisburgers', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', '', 1, 2, '40.588894', '-73.939175', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'burgers, drinks, best chicken', 0.00, 0.00, '[{\"lat\": 40.61811135844185, \"lng\": -74.04154967363282}, {\"lat\": 40.593088644275994, \"lng\": -74.00447081621094}, {\"lat\": 40.57483700944677, \"lng\": -74.01271056230469}, {\"lat\": 40.57222922648421, \"lng\": -73.94816588457032}, {\"lat\": 40.58318123192112, \"lng\": -73.87812804277344}, {\"lat\": 40.620196161732025, \"lng\": -73.89117430742188}, {\"lat\": 40.64520872605633, \"lng\": -73.85340880449219}, {\"lat\": 40.71862893820799, \"lng\": -73.96327208574219}, {\"lat\": 40.680627151592745, \"lng\": -74.01957701738282}, {\"lat\": 40.66552453494284, \"lng\": -74.00447081621094}]', 0, 2, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL, 1),
(3, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 'Brooklyn Taco', 'brooklyntaco', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', '', 1, 2, '40.607402', '-73.987272', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'yummy taco, wraps, fast food', 0.00, 0.00, '[{\"lat\": 40.61811135844185, \"lng\": -74.04154967363282}, {\"lat\": 40.593088644275994, \"lng\": -74.00447081621094}, {\"lat\": 40.57483700944677, \"lng\": -74.01271056230469}, {\"lat\": 40.57222922648421, \"lng\": -73.94816588457032}, {\"lat\": 40.58318123192112, \"lng\": -73.87812804277344}, {\"lat\": 40.620196161732025, \"lng\": -73.89117430742188}, {\"lat\": 40.64520872605633, \"lng\": -73.85340880449219}, {\"lat\": 40.71862893820799, \"lng\": -73.96327208574219}, {\"lat\": 40.680627151592745, \"lng\": -74.01957701738282}, {\"lat\": 40.66552453494284, \"lng\": -74.00447081621094}]', 0, 2, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL, 1),
(4, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 'The Brooklyn tree', 'thebrooklyntree', 'https://foodtiger.mobidonia.com/uploads/restorants/6fa5233f-00f3-4f52-950c-5a1705583dfc', '', 1, 2, '40.621997', '-73.938831', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, lunch, bbq', 0.00, 0.00, '[{\"lat\": 40.61811135844185, \"lng\": -74.04154967363282}, {\"lat\": 40.593088644275994, \"lng\": -74.00447081621094}, {\"lat\": 40.57483700944677, \"lng\": -74.01271056230469}, {\"lat\": 40.57222922648421, \"lng\": -73.94816588457032}, {\"lat\": 40.58318123192112, \"lng\": -73.87812804277344}, {\"lat\": 40.620196161732025, \"lng\": -73.89117430742188}, {\"lat\": 40.64520872605633, \"lng\": -73.85340880449219}, {\"lat\": 40.71862893820799, \"lng\": -73.96327208574219}, {\"lat\": 40.680627151592745, \"lng\": -74.01957701738282}, {\"lat\": 40.66552453494284, \"lng\": -74.00447081621094}]', 0, 2, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL, 1),
(5, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 'Awang Italian Restorant', 'awangitalianrestorant', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', '', 1, 2, '40.716729', '-73.793035', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'italian, pasta, pizza', 0.00, 0.00, '[{\"lat\": 40.72538611607021, \"lng\": -73.96387365315225}, {\"lat\": 40.65093145404635, \"lng\": -73.85195043537881}, {\"lat\": 40.62175171970407, \"lng\": -73.76680639241006}, {\"lat\": 40.64051158441822, \"lng\": -73.71462133381631}, {\"lat\": 40.670724724281335, \"lng\": -73.67891576741006}, {\"lat\": 40.76388243617103, \"lng\": -73.74758031819131}, {\"lat\": 40.79351981360113, \"lng\": -73.84851720783975}, {\"lat\": 40.78728146460242, \"lng\": -73.91100194905069}]', 0, 3, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL, 1),
(6, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 'Wendy Taco', 'wendytaco', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', '', 1, 2, '40.751418', '-73.809531', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'yummy taco, wraps, fast food', 0.00, 0.00, '[{\"lat\": 40.72538611607021, \"lng\": -73.96387365315225}, {\"lat\": 40.65093145404635, \"lng\": -73.85195043537881}, {\"lat\": 40.62175171970407, \"lng\": -73.76680639241006}, {\"lat\": 40.64051158441822, \"lng\": -73.71462133381631}, {\"lat\": 40.670724724281335, \"lng\": -73.67891576741006}, {\"lat\": 40.76388243617103, \"lng\": -73.74758031819131}, {\"lat\": 40.79351981360113, \"lng\": -73.84851720783975}, {\"lat\": 40.78728146460242, \"lng\": -73.91100194905069}]', 0, 3, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL, 1),
(7, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 'Burger 2Go', 'burger2go', 'https://foodtiger.mobidonia.com/uploads/restorants/80a49037-07e9-4e28-b23e-66fd641c1c77', '', 1, 2, '40.753759', '-73.799224', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'burgers, drinks, best chicken', 0.00, 0.00, '[{\"lat\": 40.72538611607021, \"lng\": -73.96387365315225}, {\"lat\": 40.65093145404635, \"lng\": -73.85195043537881}, {\"lat\": 40.62175171970407, \"lng\": -73.76680639241006}, {\"lat\": 40.64051158441822, \"lng\": -73.71462133381631}, {\"lat\": 40.670724724281335, \"lng\": -73.67891576741006}, {\"lat\": 40.76388243617103, \"lng\": -73.74758031819131}, {\"lat\": 40.79351981360113, \"lng\": -73.84851720783975}, {\"lat\": 40.78728146460242, \"lng\": -73.91100194905069}]', 0, 3, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL, 1),
(8, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 'Titan Foods', 'titanfoods', 'https://foodtiger.mobidonia.com/uploads/restorants/56e90ea7-5321-4cfd-8b2c-918ccd3c3f77', '', 1, 2, '40.749078', '-73.812623', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, lunch, bbq', 0.00, 0.00, '[{\"lat\": 40.72538611607021, \"lng\": -73.96387365315225}, {\"lat\": 40.65093145404635, \"lng\": -73.85195043537881}, {\"lat\": 40.62175171970407, \"lng\": -73.76680639241006}, {\"lat\": 40.64051158441822, \"lng\": -73.71462133381631}, {\"lat\": 40.670724724281335, \"lng\": -73.67891576741006}, {\"lat\": 40.76388243617103, \"lng\": -73.74758031819131}, {\"lat\": 40.79351981360113, \"lng\": -73.84851720783975}, {\"lat\": 40.78728146460242, \"lng\": -73.91100194905069}]', 0, 3, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL, 1),
(9, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 'Pizza Manhattn', 'pizzamanhattn', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', '', 1, 2, '40.726358', '-73.996879', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'italian, international, pasta', 0.00, 0.00, '[{\"lat\": 40.70279189834177, \"lng\": -74.01818193403926}, {\"lat\": 40.711640621663136, \"lng\": -73.97972978560176}, {\"lat\": 40.798503799354734, \"lng\": -73.91381181685176}, {\"lat\": 40.83487975446948, \"lng\": -73.94745744673457}, {\"lat\": 40.750665070026194, \"lng\": -74.01200212446895}]', 0, 4, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL, 1),
(10, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 'il Buco', 'ilbuco', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', '', 1, 2, '40.724883', '-74.001985', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'tacos, wraps, Quesadilla', 0.00, 0.00, '[{\"lat\": 40.70279189834177, \"lng\": -74.01818193403926}, {\"lat\": 40.711640621663136, \"lng\": -73.97972978560176}, {\"lat\": 40.798503799354734, \"lng\": -73.91381181685176}, {\"lat\": 40.83487975446948, \"lng\": -73.94745744673457}, {\"lat\": 40.750665070026194, \"lng\": -74.01200212446895}]', 0, 4, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL, 1),
(11, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 'Vandal Burgers', 'vandalburgers', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', '', 1, 2, '40.724102', '-73.999064', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, beef burgers', 0.00, 0.00, '[{\"lat\": 40.70279189834177, \"lng\": -74.01818193403926}, {\"lat\": 40.711640621663136, \"lng\": -73.97972978560176}, {\"lat\": 40.798503799354734, \"lng\": -73.91381181685176}, {\"lat\": 40.83487975446948, \"lng\": -73.94745744673457}, {\"lat\": 40.750665070026194, \"lng\": -74.01200212446895}]', 0, 4, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL, 1),
(12, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 'Malibu Diner', 'malibudiner', 'https://foodtiger.mobidonia.com/uploads/restorants/a2b5b612-9fec-4e28-bb7d-88a06d97bda6', '', 1, 2, '40.717857', '-74.004561', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, lunch, bbq', 0.00, 0.00, '[{\"lat\": 40.70279189834177, \"lng\": -74.01818193403926}, {\"lat\": 40.711640621663136, \"lng\": -73.97972978560176}, {\"lat\": 40.798503799354734, \"lng\": -73.91381181685176}, {\"lat\": 40.83487975446948, \"lng\": -73.94745744673457}, {\"lat\": 40.750665070026194, \"lng\": -74.01200212446895}]', 0, 4, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL, 1),
(13, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 'Pizza Relham', 'pizzarelham', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', '', 1, 2, '40.842930', '-73.866629', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'italian, international, pasta', 0.00, 0.00, '[{\"lat\": 40.79717207195068, \"lng\": -73.91185629950473}, {\"lat\": 40.83822431229653, \"lng\": -73.94893515692661}, {\"lat\": 40.90572332325597, \"lng\": -73.9097963629813}, {\"lat\": 40.89793848793209, \"lng\": -73.83426535712192}, {\"lat\": 40.886519072020896, \"lng\": -73.78139365302036}, {\"lat\": 40.81900047658591, \"lng\": -73.79169333563755}]', 0, 1, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL, 1),
(14, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 'NorWood Burito', 'norwoodburito', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', '', 1, 2, '40.850218', '-73.887522', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'tacos, wraps, Quesadilla', 0.00, 0.00, '[{\"lat\": 40.79717207195068, \"lng\": -73.91185629950473}, {\"lat\": 40.83822431229653, \"lng\": -73.94893515692661}, {\"lat\": 40.90572332325597, \"lng\": -73.9097963629813}, {\"lat\": 40.89793848793209, \"lng\": -73.83426535712192}, {\"lat\": 40.886519072020896, \"lng\": -73.78139365302036}, {\"lat\": 40.81900047658591, \"lng\": -73.79169333563755}]', 0, 1, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL, 1),
(15, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 'Morris Park Burger', 'morrisparkburger', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', '', 1, 2, '40.842427', '-73.866908', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, beef burgers', 0.00, 0.00, '[{\"lat\": 40.79717207195068, \"lng\": -73.91185629950473}, {\"lat\": 40.83822431229653, \"lng\": -73.94893515692661}, {\"lat\": 40.90572332325597, \"lng\": -73.9097963629813}, {\"lat\": 40.89793848793209, \"lng\": -73.83426535712192}, {\"lat\": 40.886519072020896, \"lng\": -73.78139365302036}, {\"lat\": 40.81900047658591, \"lng\": -73.79169333563755}]', 0, 1, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL, 1),
(16, '2022-08-18 19:44:49', '2022-08-22 05:22:02', 'Rajadhani', 'rajadhani', 'https://foodtiger.mobidonia.com/uploads/restorants/a2b5b612-9fec-4e28-bb7d-88a06d97bda6', '', 1, 2, '29.279319337091408', '47.965322418167325', 'Farwaniya, Kuwait', '+96512345678', '10', 'drinks, lunch, bbq', 0.00, 0.00, '[{\"lat\": 40.79717207195068, \"lng\": -73.91185629950473}, {\"lat\": 40.83822431229653, \"lng\": -73.94893515692661}, {\"lat\": 40.90572332325597, \"lng\": -73.9097963629813}, {\"lat\": 40.89793848793209, \"lng\": -73.83426535712192}, {\"lat\": 40.886519072020896, \"lng\": -73.78139365302036}, {\"lat\": 40.81900047658591, \"lng\": -73.79169333563755}]', 0, 1, 3, 0, 0, 0, 0, '+38971605048', NULL, 1, 'KWD', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL, 0),
(17, '2022-08-19 00:23:27', '2022-08-19 00:28:38', 'Own Restaurent', 'ownrestaurent', '', '', 1, 35, '29.2746424', '47.99978', 'Kuwait', '+96512345678', '0', 'Freshly prepared!', 0.00, 0.00, '{}', 0, NULL, 3, 0, 0, 0, 0, NULL, NULL, 1, 'KWD', '', '', NULL, 0),
(18, '2022-08-19 00:33:32', '2022-08-24 23:55:23', 'Jibu\'s Cafe', 'jibuscafe', '', '', 1, 36, '29.3199043', '48.0255416', '', '+96599754133', '0', '', 0.00, 0.00, '{}', 0, NULL, 2, 1, 1, 0, 0, NULL, NULL, 1, '', '', '', NULL, 1),
(19, '2022-08-19 22:41:04', '2022-08-22 03:50:21', 'Amy\'s Cafe', 'amyscafe', '0a46588b-0b9a-4051-85fa-8604f0978b39', '', 1, 37, '29.2746424', '47.99978', 'Kuwait City', '+96599754133', '0', 'Coffee that motivates.', 0.00, 0.00, '{}', 0, NULL, 20, 1, 1, 0, 0, '+96599754133', NULL, 1, 'KWD', '', '', NULL, 1),
(20, '2022-08-22 03:40:46', '2022-09-13 06:26:14', 'MyRestaurant', 'myrestaurant', '7aa3dc4b-8af2-4175-a756-b36abb18eb20', '', 1, 38, '29.133432498906693', '48.115908660038315', 'Fahaheel', '+96566011953', '0', 'Arabic, Indian, American', 0.00, 0.00, '{}', 0, NULL, 99, 0, 0, 0, 0, '+96566011953', NULL, 1, 'KWD', '', '', NULL, 0),
(21, '2022-08-25 00:05:38', '2022-09-14 13:37:16', 'Rajdhani Restaurant', 'rajdhanirestaurant', '1cc37a81-cd46-4782-a21e-6b52bda6ef2d', '9891b87f-07d4-4866-ac4d-81206de8839d', 1, 39, '29.173447273611604', '48.09518337249756', '2nd Floor, 89 Mall, Egalia', '+96566182569', '0', 'Indian, Biryani, Chinese', 0.00, 0.00, '{}', 0, NULL, 237, 0, 0, 0, 0, '+96566182569', NULL, 1, 'KWD', '', '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`id`, `value`, `key`, `model_type`, `model_id`, `created_at`, `updated_at`) VALUES
(1, '0', 'disable_callwaiter', 'App\\Restorant', 16, '2022-08-19 00:19:10', '2022-08-19 00:19:10'),
(2, '0', 'disable_ordering', 'App\\Restorant', 16, '2022-08-19 00:19:10', '2022-08-19 00:19:10'),
(3, '0', 'disable_continues_ordering', 'App\\Restorant', 16, '2022-08-19 00:19:10', '2022-08-19 00:19:10'),
(4, '05e09972-edf1-4e69-abd5-494330f77dc8', 'resto_wide_logo', 'App\\Restorant', 16, '2022-08-19 00:19:10', '2022-08-19 00:19:10'),
(5, 'c681871b-c4c1-4246-bc25-ecac3a1161e3', 'resto_wide_logo_dark', 'App\\Restorant', 16, '2022-08-19 00:19:10', '2022-08-19 00:19:10'),
(6, '0', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 16, '2022-08-19 00:19:10', '2022-08-19 00:19:10'),
(7, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 16, '2022-08-19 00:19:10', '2022-08-19 00:19:10'),
(8, '0', 'disable_callwaiter', 'App\\Restorant', 17, '2022-08-19 00:23:27', '2022-08-19 00:23:27'),
(9, '0', 'disable_ordering', 'App\\Restorant', 17, '2022-08-19 00:23:27', '2022-08-19 00:23:27'),
(10, '0', 'disable_continues_ordering', 'App\\Restorant', 17, '2022-08-19 00:23:27', '2022-08-19 00:23:27'),
(11, 'c51bbe5f-6916-46fb-9199-f7040a4f0d52', 'resto_wide_logo', 'App\\Restorant', 17, '2022-08-19 00:24:32', '2022-08-19 00:24:32'),
(12, '383fcdae-b0cc-4573-8ce1-7447d8a5589a', 'resto_wide_logo_dark', 'App\\Restorant', 17, '2022-08-19 00:24:32', '2022-08-19 00:24:32'),
(13, '0', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 17, '2022-08-19 00:24:32', '2022-08-19 00:24:32'),
(14, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 17, '2022-08-19 00:24:32', '2022-08-19 00:24:32'),
(15, '0', 'disable_callwaiter', 'App\\Restorant', 18, '2022-08-19 00:33:32', '2022-08-19 00:33:32'),
(16, '0', 'disable_ordering', 'App\\Restorant', 18, '2022-08-19 00:33:32', '2022-08-19 00:33:32'),
(17, '0', 'disable_callwaiter', 'App\\Restorant', 19, '2022-08-19 22:41:04', '2022-08-19 22:41:04'),
(18, '0', 'disable_ordering', 'App\\Restorant', 19, '2022-08-19 22:41:04', '2022-08-19 22:41:04'),
(19, '0', 'disable_continues_ordering', 'App\\Restorant', 19, '2022-08-19 23:57:12', '2022-08-19 23:57:12'),
(20, 'ed27bc97-02e5-483a-ba26-2b04ba4073d9', 'resto_wide_logo', 'App\\Restorant', 19, '2022-08-19 23:57:13', '2022-08-19 23:57:13'),
(21, '5a5da6f3-d019-4c4d-9fb7-63bca2ed23c4', 'resto_wide_logo_dark', 'App\\Restorant', 19, '2022-08-19 23:57:13', '2022-08-19 23:57:13'),
(22, '0', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 19, '2022-08-19 23:57:13', '2022-08-19 23:57:13'),
(23, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 19, '2022-08-19 23:57:13', '2022-08-19 23:57:13'),
(24, '1', 'disable_callwaiter', 'App\\Restorant', 20, '2022-08-22 03:40:46', '2022-08-22 04:30:44'),
(25, '1', 'disable_ordering', 'App\\Restorant', 20, '2022-08-22 03:40:46', '2022-08-22 04:30:44'),
(26, '1', 'disable_continues_ordering', 'App\\Restorant', 20, '2022-08-22 03:45:31', '2022-08-22 04:30:44'),
(27, '0', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 20, '2022-08-22 03:45:31', '2022-08-22 03:45:31'),
(28, '5', 'delivery_interval_in_minutes', 'App\\Restorant', 20, '2022-08-22 03:45:31', '2022-08-22 03:45:31'),
(29, '8bad8d0b-b39c-42ab-b79a-cba874bcdc54', 'resto_wide_logo', 'App\\Restorant', 20, '2022-08-22 03:47:53', '2022-08-22 03:47:53'),
(30, '3905c9f2-9085-4e1b-9ca8-cd6adc3da3e9', 'resto_wide_logo_dark', 'App\\Restorant', 20, '2022-08-22 03:47:53', '2022-08-22 04:38:27'),
(31, '1', 'disable_callwaiter', 'App\\Restorant', 21, '2022-08-25 00:05:38', '2022-08-25 00:27:07'),
(32, '1', 'disable_ordering', 'App\\Restorant', 21, '2022-08-25 00:05:38', '2022-08-25 00:27:07'),
(33, '1', 'disable_continues_ordering', 'App\\Restorant', 21, '2022-08-25 00:05:38', '2022-08-25 00:27:07'),
(34, '51930756-b6aa-4f18-8ac2-9132e8052e85', 'resto_wide_logo', 'App\\Restorant', 21, '2022-08-25 00:27:08', '2022-08-25 00:27:08'),
(35, 'df011575-a5b9-4403-aeca-905d5a8969eb', 'resto_wide_logo_dark', 'App\\Restorant', 21, '2022-08-25 00:27:08', '2022-08-25 00:27:08'),
(36, '0', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 21, '2022-08-25 00:27:08', '2022-08-25 00:27:08'),
(37, '5', 'delivery_interval_in_minutes', 'App\\Restorant', 21, '2022-08-25 00:27:08', '2022-08-25 00:27:08'),
(38, NULL, 'plugins', 'App\\Plans', 1, '2022-08-25 14:46:10', '2022-08-25 14:46:10'),
(39, NULL, 'plugins', 'App\\Plans', 2, '2022-08-27 08:36:55', '2022-08-27 08:36:55'),
(40, NULL, 'plugins', 'App\\Plans', 3, '2022-08-27 08:38:35', '2022-08-27 08:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '0 - Fixed, 1 - Percentage',
  `price` double(8,2) NOT NULL,
  `active_from` date NOT NULL,
  `active_to` date NOT NULL,
  `limit_to_num_uses` int(11) NOT NULL,
  `used_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expenses_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expenses_vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `date`, `reference`, `description`, `amount`, `restaurant_id`, `expenses_category_id`, `expenses_vendor_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2022-07-04', 'EXP0', '', 22.00, 1, 1, 2, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL),
(2, '2022-08-16', 'EXP1', '', 11.00, 1, 2, 2, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL),
(3, '2022-08-12', 'EXP2', '', 14.00, 1, 1, 2, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL),
(4, '2022-06-24', 'EXP3', '', 34.00, 1, 1, 3, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL),
(5, '2022-08-01', 'EXP4', '', 19.00, 1, 2, 1, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL),
(6, '2022-07-11', 'EXP5', '', 23.00, 1, 2, 1, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL),
(7, '2022-07-16', 'EXP6', '', 49.00, 1, 1, 3, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL),
(8, '2022-08-04', 'EXP7', '', 33.00, 1, 1, 3, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL),
(9, '2022-08-16', 'EXP8', '', 40.00, 1, 2, 1, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL),
(10, '2022-08-02', 'EXP9', '', 39.00, 1, 2, 2, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL),
(11, '2022-07-26', 'EXP10', '', 35.00, 1, 2, 2, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL),
(12, '2022-07-30', 'EXP11', '', 42.00, 1, 1, 1, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL),
(13, '2022-07-30', 'EXP12', '', 13.00, 1, 2, 2, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL),
(14, '2022-06-22', 'EXP13', '', 35.00, 1, 2, 2, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL),
(15, '2022-06-19', 'EXP14', '', 45.00, 1, 1, 1, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL),
(16, '2022-07-04', 'EXP15', '', 43.00, 1, 1, 2, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL),
(17, '2022-06-27', 'EXP16', '', 12.00, 1, 1, 1, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL),
(18, '2022-08-17', 'EXP17', '', 18.00, 1, 1, 2, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL),
(19, '2022-08-10', 'EXP18', '', 49.00, 1, 1, 2, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL),
(20, '2022-08-17', 'EXP19', '', 30.00, 1, 1, 1, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses_category`
--

CREATE TABLE `expenses_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses_category`
--

INSERT INTO `expenses_category` (`id`, `name`, `code`, `restaurant_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Suppliers', 'C1', 1, NULL, NULL, NULL),
(2, 'Utilities', 'C2', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses_vendor`
--

CREATE TABLE `expenses_vendor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses_vendor`
--

INSERT INTO `expenses_vendor` (`id`, `name`, `code`, `restaurant_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Supplier 1', 'S1', 1, NULL, NULL, NULL),
(2, 'Supplier 2', 'S2', 1, NULL, NULL, NULL),
(3, 'Supplier 3', 'S3', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `extras`
--

CREATE TABLE `extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `extra_for_all_variants` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extras`
--

INSERT INTO `extras` (`id`, `item_id`, `price`, `name`, `created_at`, `updated_at`, `deleted_at`, `extra_for_all_variants`) VALUES
(1, 1, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(2, 1, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(3, 1, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(4, 2, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(5, 2, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(6, 2, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(7, 3, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(8, 3, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(9, 3, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(10, 4, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(11, 4, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(12, 4, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(13, 5, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(14, 5, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(15, 5, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(16, 6, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(17, 6, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(18, 6, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(19, 7, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(20, 7, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(21, 7, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 0),
(22, 7, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 0),
(23, 8, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(24, 8, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(25, 8, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 0),
(26, 8, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 0),
(27, 9, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(28, 9, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(29, 9, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 0),
(30, 9, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 0),
(31, 10, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(32, 10, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(33, 10, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 0),
(34, 10, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 0),
(35, 11, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(36, 11, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(37, 11, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 0),
(38, 11, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 0),
(39, 12, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(40, 12, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(41, 12, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 0),
(42, 12, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 0),
(43, 13, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(44, 13, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(45, 13, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 0),
(46, 13, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 0),
(47, 14, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(48, 14, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(49, 14, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 0),
(50, 14, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 0),
(51, 15, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(52, 15, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(53, 15, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 0),
(54, 15, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 0),
(55, 16, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(56, 16, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(57, 16, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 0),
(58, 16, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 0),
(59, 17, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(60, 17, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 1),
(61, 17, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 0),
(62, 17, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:45', '2022-08-19 00:40:33', NULL, 0),
(63, 61, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(64, 61, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(65, 61, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(66, 62, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(67, 62, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(68, 62, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(69, 63, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(70, 63, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(71, 63, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(72, 64, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(73, 64, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(74, 64, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(75, 65, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(76, 65, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(77, 65, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(78, 66, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(79, 66, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(80, 66, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(81, 67, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(82, 67, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(83, 67, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 0),
(84, 67, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 0),
(85, 68, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(86, 68, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(87, 68, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 0),
(88, 68, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 0),
(89, 69, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(90, 69, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(91, 69, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 0),
(92, 69, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 0),
(93, 70, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(94, 70, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(95, 70, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 0),
(96, 70, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 0),
(97, 71, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(98, 71, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(99, 71, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 0),
(100, 71, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 0),
(101, 72, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(102, 72, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(103, 72, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 0),
(104, 72, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 0),
(105, 73, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(106, 73, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(107, 73, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 0),
(108, 73, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 0),
(109, 74, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(110, 74, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(111, 74, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 0),
(112, 74, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 0),
(113, 75, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(114, 75, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(115, 75, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 0),
(116, 75, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 0),
(117, 76, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(118, 76, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(119, 76, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 0),
(120, 76, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 0),
(121, 77, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(122, 77, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(123, 77, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 0),
(124, 77, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 0),
(125, 95, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(126, 95, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(127, 95, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(128, 96, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(129, 96, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(130, 96, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(131, 97, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(132, 97, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(133, 97, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(134, 98, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(135, 98, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(136, 98, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:33', NULL, 1),
(137, 99, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(138, 99, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(139, 99, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(140, 100, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(141, 100, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(142, 100, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(143, 101, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(144, 101, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(145, 101, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 0),
(146, 101, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 0),
(147, 102, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(148, 102, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(149, 102, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 0),
(150, 102, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 0),
(151, 103, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(152, 103, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(153, 103, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 0),
(154, 103, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 0),
(155, 104, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(156, 104, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(157, 104, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 0),
(158, 104, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 0),
(159, 105, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(160, 105, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(161, 105, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 0),
(162, 105, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 0),
(163, 106, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(164, 106, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(165, 106, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 0),
(166, 106, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 0),
(167, 107, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(168, 107, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(169, 107, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 0),
(170, 107, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 0),
(171, 108, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(172, 108, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(173, 108, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 0),
(174, 108, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 0),
(175, 109, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(176, 109, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(177, 109, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 0),
(178, 109, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 0),
(179, 110, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(180, 110, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(181, 110, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 0),
(182, 110, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 0),
(183, 111, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(184, 111, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 1),
(185, 111, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 0),
(186, 111, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL, 0),
(187, 146, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(188, 146, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(189, 146, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(190, 147, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(191, 147, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(192, 147, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(193, 148, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(194, 148, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(195, 148, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(196, 149, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(197, 149, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(198, 149, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(199, 150, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(200, 150, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(201, 150, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(202, 151, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(203, 151, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(204, 151, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(205, 152, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(206, 152, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(207, 152, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(208, 152, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(209, 153, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(210, 153, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(211, 153, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(212, 153, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(213, 154, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(214, 154, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(215, 154, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(216, 154, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(217, 155, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(218, 155, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(219, 155, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(220, 155, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(221, 156, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(222, 156, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(223, 156, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(224, 156, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(225, 157, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(226, 157, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(227, 157, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(228, 157, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(229, 158, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(230, 158, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(231, 158, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(232, 158, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(233, 159, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(234, 159, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(235, 159, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(236, 159, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(237, 160, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(238, 160, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(239, 160, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(240, 160, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(241, 161, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(242, 161, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(243, 161, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(244, 161, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(245, 162, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(246, 162, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(247, 162, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(248, 162, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(249, 174, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(250, 174, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(251, 174, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(252, 175, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(253, 175, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(254, 175, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(255, 176, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(256, 176, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(257, 176, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(258, 177, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(259, 177, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(260, 177, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(261, 178, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(262, 178, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(263, 178, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(264, 179, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(265, 179, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(266, 179, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(267, 186, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(268, 186, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(269, 186, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(270, 186, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(271, 187, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(272, 187, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(273, 187, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(274, 187, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(275, 188, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(276, 188, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(277, 188, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(278, 188, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(279, 189, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(280, 189, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(281, 189, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(282, 189, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(283, 190, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(284, 190, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(285, 190, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(286, 190, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(287, 191, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(288, 191, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(289, 191, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(290, 191, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(291, 192, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(292, 192, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(293, 192, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(294, 192, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(295, 193, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(296, 193, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(297, 193, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(298, 193, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(299, 194, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(300, 194, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(301, 194, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(302, 194, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(303, 195, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(304, 195, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(305, 195, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(306, 195, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(307, 196, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(308, 196, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 1),
(309, 196, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(310, 196, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL, 0),
(311, 231, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(312, 231, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(313, 231, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(314, 232, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(315, 232, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(316, 232, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(317, 233, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(318, 233, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(319, 233, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(320, 234, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(321, 234, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(322, 234, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(323, 235, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(324, 235, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(325, 235, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(326, 236, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(327, 236, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(328, 236, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(329, 237, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(330, 237, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(331, 237, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(332, 237, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(333, 238, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(334, 238, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(335, 238, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(336, 238, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(337, 239, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(338, 239, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(339, 239, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(340, 239, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(341, 240, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(342, 240, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(343, 240, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(344, 240, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(345, 241, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(346, 241, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(347, 241, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(348, 241, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(349, 242, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(350, 242, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(351, 242, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(352, 242, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(353, 243, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(354, 243, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(355, 243, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(356, 243, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(357, 244, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(358, 244, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(359, 244, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(360, 244, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(361, 245, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(362, 245, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(363, 245, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(364, 245, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(365, 246, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(366, 246, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(367, 246, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(368, 246, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(369, 247, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(370, 247, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(371, 247, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(372, 247, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(373, 256, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(374, 256, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(375, 256, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(376, 257, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(377, 257, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(378, 257, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(379, 258, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(380, 258, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(381, 258, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(382, 259, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(383, 259, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(384, 259, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(385, 260, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(386, 260, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(387, 260, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(388, 261, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(389, 261, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(390, 261, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(391, 265, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(392, 265, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(393, 265, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(394, 265, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(395, 266, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(396, 266, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(397, 266, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(398, 266, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(399, 267, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(400, 267, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(401, 267, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(402, 267, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(403, 268, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(404, 268, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(405, 268, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(406, 268, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(407, 269, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(408, 269, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(409, 269, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(410, 269, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(411, 270, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(412, 270, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(413, 270, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(414, 270, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(415, 271, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(416, 271, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(417, 271, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(418, 271, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(419, 272, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(420, 272, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(421, 272, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(422, 272, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(423, 273, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(424, 273, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 1),
(425, 273, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(426, 273, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL, 0),
(427, 274, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(428, 274, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(429, 274, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(430, 274, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(431, 275, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(432, 275, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(433, 275, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(434, 275, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(435, 316, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(436, 316, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(437, 316, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(438, 316, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(439, 317, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(440, 317, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(441, 317, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(442, 317, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(443, 318, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(444, 318, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(445, 318, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(446, 318, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(447, 319, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(448, 319, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(449, 319, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(450, 319, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(451, 320, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(452, 320, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(453, 320, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(454, 320, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(455, 321, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(456, 321, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(457, 321, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(458, 321, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(459, 322, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(460, 322, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(461, 322, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(462, 322, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(463, 323, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(464, 323, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(465, 323, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(466, 323, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(467, 324, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(468, 324, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(469, 324, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(470, 324, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(471, 325, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(472, 325, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(473, 325, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(474, 325, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(475, 326, 1.00, '{\"en\":\"Olive\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(476, 326, 0.50, '{\"en\":\"Mushroom\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(477, 326, 2.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(478, 326, 1.00, '{\"en\":\"Peperoni\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 0),
(479, 331, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(480, 331, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(481, 331, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(482, 332, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(483, 332, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(484, 332, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(485, 333, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(486, 333, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(487, 333, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(488, 334, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(489, 334, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(490, 334, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(491, 335, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(492, 335, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(493, 335, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(494, 336, 1.20, '{\"en\":\"Extra cheese\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(495, 336, 0.30, '{\"en\":\"Extra olives\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(496, 336, 1.50, '{\"en\":\"Tuna\"}', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL, 1),
(497, 342, 0.25, '{\"en\":\"Sugar Free\"}', '2022-08-20 00:07:37', '2022-08-20 00:07:37', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hours`
--

CREATE TABLE `hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `0_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `0_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `1_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `1_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `2_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `2_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `3_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `3_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `4_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `4_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `5_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `5_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `6_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `6_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restorant_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hours`
--

INSERT INTO `hours` (`id`, `created_at`, `updated_at`, `0_from`, `0_to`, `1_from`, `1_to`, `2_from`, `2_to`, `3_from`, `3_to`, `4_from`, `4_to`, `5_from`, `5_to`, `6_from`, `6_to`, `restorant_id`) VALUES
(1, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 1),
(2, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 2),
(3, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 3),
(4, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 4),
(5, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 5),
(6, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 6),
(7, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 7),
(8, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 8),
(9, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 9),
(10, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 10),
(11, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 11),
(12, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 12),
(13, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 13),
(14, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 14),
(15, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 15),
(16, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 16),
(17, '2022-08-19 00:23:27', '2022-08-19 00:23:27', '9:00 AM', '5:00 PM', '9:00 AM', '5:00 PM', '9:00 AM', '5:00 PM', '9:00 AM', '5:00 PM', '9:00 AM', '5:00 PM', '9:00 AM', '5:00 PM', '9:00 AM', '5:00 PM', 17),
(18, '2022-08-19 00:33:32', '2022-08-19 00:33:32', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', 18),
(19, '2022-08-19 22:41:04', '2022-08-19 22:41:04', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', 19),
(20, '2022-08-22 03:40:46', '2022-08-22 03:44:25', '9:00 AM', '11:00 PM', '9:00 AM', '11:00 PM', '9:00 AM', '11:00 PM', '9:00 AM', '11:00 PM', '9:00 AM', '11:00 PM', '9:00 AM', '11:00 PM', '9:00 AM', '11:00 PM', 20),
(21, '2022-08-25 00:05:38', '2022-08-25 00:30:30', '11:00 AM', '11:00 PM', '11:00 AM', '11:00 PM', '11:00 AM', '11:00 PM', '11:00 AM', '11:00 PM', '11:00 AM', '11:00 PM', '11:00 AM', '11:00 PM', '11:00 AM', '11:00 PM', 21);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `available` int(11) NOT NULL DEFAULT '1',
  `has_variants` int(11) NOT NULL DEFAULT '0',
  `vat` double(8,2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `enable_system_variants` int(11) NOT NULL DEFAULT '0',
  `discounted_price` double(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `image`, `price`, `category_id`, `created_at`, `updated_at`, `available`, `has_variants`, `vat`, `deleted_at`, `enable_system_variants`, `discounted_price`) VALUES
(1, '{\"en\":\"Caprese Salad (350gr)\"}', '{\"en\":\"peeled tomatoes, mozzarella salad, Genovese pesto\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 1, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(2, '{\"en\":\"Caesar Salad (400g)\"}', '{\"en\":\"iceberg, bacon, chicken breast, parmesan, Caesar sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 1, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(3, '{\"en\":\"Salad Napoli (350g)\"}', '{\"en\":\"iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 1, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(4, '{\"en\":\"Green tuna salad (400g)\"}', '{\"en\":\"lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 1, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(5, '{\"en\":\"Green salad (350g)\"}', '{\"en\":\"lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 1, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(6, '{\"en\":\"Greek Salad (500g)\"}', '{\"en\":\"tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 1, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(7, '{\"en\":\"Mozzarella Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 2, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(8, '{\"en\":\"Prosciutto crust pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 2, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(9, '{\"en\":\"Pepperoni Pizza\"}', '{\"en\":\"tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 2, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(10, '{\"en\":\"Carriola Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 2, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(11, '{\"en\":\"Perugia Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 2, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(12, '{\"en\":\"Pizza Napoli\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 2, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(13, '{\"en\":\"Margarita Pizza\"}', '{\"en\":\"tomato sauce, mozzarella Sabelli, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 2, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(14, '{\"en\":\"Combo Pizza 50\\/50 (70cm)\"}', '{\"en\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 2, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(15, '{\"en\":\"Capricciosa Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 2, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(16, '{\"en\":\"Quattro Formaggi Pizza\"}', '{\"en\":\"cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 2, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(17, '{\"en\":\"Marco Polo Pizza\"}', '{\"en\":\"tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 2, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(18, '{\"en\":\"Spaghetti Carbonara (450g)\"}', '{\"en\":\"fresh pasta, cream (animal), onion, pancakes (smoked bacon), egg, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b65d5389-4742-4a78-9d94-f31110984db6', 11.99, 3, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(19, '{\"en\":\"Spaghetti Formaggi (450g)\"}', '{\"en\":\"fresh pasta, cream (animal), blue cheese, emmental, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', 11.99, 3, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(20, '{\"en\":\"Tagliatelle with mushrooms (400g)\"}', '{\"en\":\"fresh pasta, cream (animal), mushrooms, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0bae6238-dda6-4630-b300-5125fde865d4', 11.99, 3, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(21, '{\"en\":\"Chicken risotto (450g)\"}', '{\"en\":\"Arborio rice, chicken breast, onion, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/033c32c1-cdae-495e-910f-66b5fa239297', 11.99, 3, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(22, '{\"en\":\"Risotto with mushrooms (450g)\"}', '{\"en\":\"Arborio rice, mushrooms, garlic, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/08d82944-f947-48f4-a197-a3199bb3b6e7', 11.99, 3, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(23, '{\"en\":\"Tagliatelle with Bolognese Sauce (400g)\"}', '{\"en\":\"fresh pasta, bolognese sauce, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc695ba9-8af3-47a4-8e41-dc1706cbf2c3', 11.99, 3, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(24, '{\"en\":\"Lasagna Classic (450g)\"}', '{\"en\":\"Bolognese sauce, mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/94d44523-ec90-4069-bd11-eb9588207c31', 11.99, 4, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(25, '{\"en\":\"Napoli Lasagna (450g)\"}', '{\"en\":\"chicken fillet, cream (animal), corn, blue cheese, mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4c367950-992c-4711-ab56-42bed10de86c', 11.99, 4, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(26, '{\"en\":\"Lasagna Formagio (450g)\"}', '{\"en\":\"smoked cheese, blue cheese, emmental, cream (animal), mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/8bafc3ec-82e7-46f8-964a-77a13e4ddf96', 11.99, 4, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(27, '{\"en\":\"Wild Wild West\"}', '{\"en\":\"freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 5, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(28, '{\"en\":\"Skapto Bulleit Bourbon\"}', '{\"en\":\"juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 5, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(29, '{\"en\":\"Back to Basics\"}', '{\"en\":\"juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 5, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(30, '{\"en\":\"Cheesus\"}', '{\"en\":\"juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 5, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(31, '{\"en\":\"Skaptoburger\"}', '{\"en\":\"juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 5, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(32, '{\"en\":\"El Pollo Loco\"}', '{\"en\":\"Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 5, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(33, '{\"en\":\"SA7OSH1\"}', '{\"en\":\"juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 5, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(34, '{\"en\":\"Homemade french fries with ranch sauce (150g)\"}', '{\"en\":\"French fries, homemade ranch dressing, cheddar cheese, fully \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 6, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(35, '{\"en\":\"Homemade french fries with cheddar and jalapenos (190g)\"}', '{\"en\":\"Olive oil, cheddar, green mix\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 6, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(36, '{\"en\":\"Homemade french fries (100g)\"}', '{\"en\":\"100g\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 6, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(37, '{\"en\":\"Mexellente (350g)\"}', '{\"en\":\"iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 7, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(38, '{\"en\":\"Homemade Potatoes with Cheddar and Jalapenos (300g)\"}', '{\"en\":\"Cheddar cheese, butter, russet potatoes, rings, all purpose flour\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 8, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(39, '{\"en\":\"Homemade Potatoes with Ranch Sauce (300g)\"}', '{\"en\":\"Sour cream, ranch dressing, bacon, potatoes, cheddar cheese\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 8, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(40, '{\"en\":\"Cheddar Sticks (250g)\"}', '{\"en\":\"String cheese, bread crumbs, smoked paprika, egg\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 8, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(41, '{\"en\":\"Schweppes Tonic (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 9, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(42, '{\"en\":\"Sprite (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 9, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(43, '{\"en\":\"Orange Fanta (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 9, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(44, '{\"en\":\"Coca Cola (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 9, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(45, '{\"en\":\"Burrito with chicken\"}', '{\"en\":\"chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 10, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(46, '{\"en\":\"Burrito Veggie\"}', '{\"en\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 10, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(47, '{\"en\":\"Burrito with beef roast\"}', '{\"en\":\"veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 10, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(48, '{\"en\":\"Burrito with pork\"}', '{\"en\":\"pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 10, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(49, '{\"en\":\"Quesadilla with chicken\"}', '{\"en\":\"Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 11, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(50, '{\"en\":\"Quesadilla with veal\"}', '{\"en\":\"beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 11, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(51, '{\"en\":\"Vegetarian Quesadilla\"}', '{\"en\":\"2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 11, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(52, '{\"en\":\"Quesadilla with Pork\"}', '{\"en\":\"pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 11, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(53, '{\"en\":\"Chicken Taco (250g)\"}', '{\"en\":\"tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 12, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(54, '{\"en\":\"Taco with beef roasted meat (250g)\"}', '{\"en\":\"tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 12, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(55, '{\"en\":\"Pork Taco (250g)\"}', '{\"en\":\"16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 12, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(56, '{\"en\":\"Tacos Veggie (250g)\"}', '{\"en\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 12, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(57, '{\"en\":\"Burrito Vegetarian in a Bowl (450g)\"}', '{\"en\":\"rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 13, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(58, '{\"en\":\"Burrito with chicken in a bowl(450g)\"}', '{\"en\":\"chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 13, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(59, '{\"en\":\"Burrito with beef in a bowl (450g)\"}', '{\"en\":\"veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 13, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(60, '{\"en\":\"Burrito with pork in a bowl (450g)\"}', '{\"en\":\"pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 13, '2022-08-18 19:44:45', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(61, '{\"en\":\"Caprese Salad (350gr)\"}', '{\"en\":\"peeled tomatoes, mozzarella salad, Genovese pesto\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 14, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(62, '{\"en\":\"Caesar Salad (400g)\"}', '{\"en\":\"iceberg, bacon, chicken breast, parmesan, Caesar sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 14, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(63, '{\"en\":\"Salad Napoli (350g)\"}', '{\"en\":\"iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 14, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(64, '{\"en\":\"Green tuna salad (400g)\"}', '{\"en\":\"lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 14, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(65, '{\"en\":\"Green salad (350g)\"}', '{\"en\":\"lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 14, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(66, '{\"en\":\"Greek Salad (500g)\"}', '{\"en\":\"tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 14, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(67, '{\"en\":\"Mozzarella Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 15, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(68, '{\"en\":\"Prosciutto crust pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 15, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(69, '{\"en\":\"Pepperoni Pizza\"}', '{\"en\":\"tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 15, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(70, '{\"en\":\"Carriola Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 15, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(71, '{\"en\":\"Perugia Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 15, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(72, '{\"en\":\"Pizza Napoli\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 15, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(73, '{\"en\":\"Margarita Pizza\"}', '{\"en\":\"tomato sauce, mozzarella Sabelli, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 15, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(74, '{\"en\":\"Combo Pizza 50\\/50 (70cm)\"}', '{\"en\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 15, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(75, '{\"en\":\"Capricciosa Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 15, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(76, '{\"en\":\"Quattro Formaggi Pizza\"}', '{\"en\":\"cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 15, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(77, '{\"en\":\"Marco Polo Pizza\"}', '{\"en\":\"tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 15, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(78, '{\"en\":\"Burrito with chicken\"}', '{\"en\":\"chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 16, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(79, '{\"en\":\"Burrito Veggie\"}', '{\"en\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 16, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(80, '{\"en\":\"Burrito with beef roast\"}', '{\"en\":\"veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 16, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(81, '{\"en\":\"Burrito with pork\"}', '{\"en\":\"pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 16, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(82, '{\"en\":\"Schweppes Tonic (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 17, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(83, '{\"en\":\"Sprite (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 17, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(84, '{\"en\":\"Orange Fanta (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 17, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(85, '{\"en\":\"Coca Cola (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 17, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(86, '{\"en\":\"Lasagna Classic (450g)\"}', '{\"en\":\"Bolognese sauce, mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/94d44523-ec90-4069-bd11-eb9588207c31', 11.99, 18, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(87, '{\"en\":\"Napoli Lasagna (450g)\"}', '{\"en\":\"chicken fillet, cream (animal), corn, blue cheese, mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4c367950-992c-4711-ab56-42bed10de86c', 11.99, 18, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(88, '{\"en\":\"Lasagna Formagio (450g)\"}', '{\"en\":\"smoked cheese, blue cheese, emmental, cream (animal), mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/8bafc3ec-82e7-46f8-964a-77a13e4ddf96', 11.99, 18, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(89, '{\"en\":\"Spaghetti Carbonara (450g)\"}', '{\"en\":\"fresh pasta, cream (animal), onion, pancakes (smoked bacon), egg, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b65d5389-4742-4a78-9d94-f31110984db6', 11.99, 19, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(90, '{\"en\":\"Spaghetti Formaggi (450g)\"}', '{\"en\":\"fresh pasta, cream (animal), blue cheese, emmental, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', 11.99, 19, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(91, '{\"en\":\"Tagliatelle with mushrooms (400g)\"}', '{\"en\":\"fresh pasta, cream (animal), mushrooms, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0bae6238-dda6-4630-b300-5125fde865d4', 11.99, 19, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(92, '{\"en\":\"Chicken risotto (450g)\"}', '{\"en\":\"Arborio rice, chicken breast, onion, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/033c32c1-cdae-495e-910f-66b5fa239297', 11.99, 19, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(93, '{\"en\":\"Risotto with mushrooms (450g)\"}', '{\"en\":\"Arborio rice, mushrooms, garlic, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/08d82944-f947-48f4-a197-a3199bb3b6e7', 11.99, 19, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(94, '{\"en\":\"Tagliatelle with Bolognese Sauce (400g)\"}', '{\"en\":\"fresh pasta, bolognese sauce, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc695ba9-8af3-47a4-8e41-dc1706cbf2c3', 11.99, 19, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(95, '{\"en\":\"Caprese Salad (350gr)\"}', '{\"en\":\"peeled tomatoes, mozzarella salad, Genovese pesto\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 20, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(96, '{\"en\":\"Caesar Salad (400g)\"}', '{\"en\":\"iceberg, bacon, chicken breast, parmesan, Caesar sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 20, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(97, '{\"en\":\"Salad Napoli (350g)\"}', '{\"en\":\"iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 20, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(98, '{\"en\":\"Green tuna salad (400g)\"}', '{\"en\":\"lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 20, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(99, '{\"en\":\"Green salad (350g)\"}', '{\"en\":\"lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 20, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(100, '{\"en\":\"Greek Salad (500g)\"}', '{\"en\":\"tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 20, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(101, '{\"en\":\"Mozzarella Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 21, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(102, '{\"en\":\"Prosciutto crust pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 21, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(103, '{\"en\":\"Pepperoni Pizza\"}', '{\"en\":\"tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 21, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(104, '{\"en\":\"Carriola Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 21, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(105, '{\"en\":\"Perugia Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 21, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(106, '{\"en\":\"Pizza Napoli\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 21, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(107, '{\"en\":\"Margarita Pizza\"}', '{\"en\":\"tomato sauce, mozzarella Sabelli, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 21, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(108, '{\"en\":\"Combo Pizza 50\\/50 (70cm)\"}', '{\"en\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 21, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(109, '{\"en\":\"Capricciosa Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 21, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(110, '{\"en\":\"Quattro Formaggi Pizza\"}', '{\"en\":\"cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 21, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(111, '{\"en\":\"Marco Polo Pizza\"}', '{\"en\":\"tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 21, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 1, 21.00, NULL, 0, 0.00),
(112, '{\"en\":\"Quesadilla with chicken\"}', '{\"en\":\"Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 22, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(113, '{\"en\":\"Quesadilla with veal\"}', '{\"en\":\"beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 22, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(114, '{\"en\":\"Vegetarian Quesadilla\"}', '{\"en\":\"2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 22, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(115, '{\"en\":\"Quesadilla with Pork\"}', '{\"en\":\"pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 22, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(116, '{\"en\":\"Burrito Vegetarian in a Bowl (450g)\"}', '{\"en\":\"rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 23, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(117, '{\"en\":\"Burrito with chicken in a bowl(450g)\"}', '{\"en\":\"chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 23, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(118, '{\"en\":\"Burrito with beef in a bowl (450g)\"}', '{\"en\":\"veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 23, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(119, '{\"en\":\"Burrito with pork in a bowl (450g)\"}', '{\"en\":\"pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 23, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(120, '{\"en\":\"Burrito with chicken\"}', '{\"en\":\"chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 24, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(121, '{\"en\":\"Burrito Veggie\"}', '{\"en\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 24, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(122, '{\"en\":\"Burrito with beef roast\"}', '{\"en\":\"veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 24, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(123, '{\"en\":\"Burrito with pork\"}', '{\"en\":\"pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 24, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(124, '{\"en\":\"Chicken Taco (250g)\"}', '{\"en\":\"tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 25, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(125, '{\"en\":\"Taco with beef roasted meat (250g)\"}', '{\"en\":\"tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 25, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(126, '{\"en\":\"Pork Taco (250g)\"}', '{\"en\":\"16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 25, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(127, '{\"en\":\"Tacos Veggie (250g)\"}', '{\"en\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 25, '2022-08-18 19:44:46', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(128, '{\"en\":\"Schweppes Tonic (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 26, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(129, '{\"en\":\"Sprite (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 26, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(130, '{\"en\":\"Orange Fanta (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 26, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(131, '{\"en\":\"Coca Cola (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 26, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(132, '{\"en\":\"Homemade Potatoes with Cheddar and Jalapenos (300g)\"}', '{\"en\":\"Cheddar cheese, butter, russet potatoes, rings, all purpose flour\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 27, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(133, '{\"en\":\"Homemade Potatoes with Ranch Sauce (300g)\"}', '{\"en\":\"Sour cream, ranch dressing, bacon, potatoes, cheddar cheese\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 27, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(134, '{\"en\":\"Cheddar Sticks (250g)\"}', '{\"en\":\"String cheese, bread crumbs, smoked paprika, egg\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 27, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(135, '{\"en\":\"Mexellente (350g)\"}', '{\"en\":\"iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 28, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(136, '{\"en\":\"Homemade french fries with ranch sauce (150g)\"}', '{\"en\":\"French fries, homemade ranch dressing, cheddar cheese, fully \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 29, '2022-08-18 19:44:47', '2022-08-19 00:40:32', 1, 0, 21.00, NULL, 0, 0.00),
(137, '{\"en\":\"Homemade french fries with cheddar and jalapenos (190g)\"}', '{\"en\":\"Olive oil, cheddar, green mix\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 29, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(138, '{\"en\":\"Homemade french fries (100g)\"}', '{\"en\":\"100g\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 29, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(139, '{\"en\":\"Wild Wild West\"}', '{\"en\":\"freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 30, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(140, '{\"en\":\"Skapto Bulleit Bourbon\"}', '{\"en\":\"juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 30, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(141, '{\"en\":\"Back to Basics\"}', '{\"en\":\"juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 30, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(142, '{\"en\":\"Cheesus\"}', '{\"en\":\"juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 30, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(143, '{\"en\":\"Skaptoburger\"}', '{\"en\":\"juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 30, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(144, '{\"en\":\"El Pollo Loco\"}', '{\"en\":\"Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 30, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(145, '{\"en\":\"SA7OSH1\"}', '{\"en\":\"juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 30, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(146, '{\"en\":\"Caprese Salad (350gr)\"}', '{\"en\":\"peeled tomatoes, mozzarella salad, Genovese pesto\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 31, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(147, '{\"en\":\"Caesar Salad (400g)\"}', '{\"en\":\"iceberg, bacon, chicken breast, parmesan, Caesar sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 31, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(148, '{\"en\":\"Salad Napoli (350g)\"}', '{\"en\":\"iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 31, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(149, '{\"en\":\"Green tuna salad (400g)\"}', '{\"en\":\"lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 31, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(150, '{\"en\":\"Green salad (350g)\"}', '{\"en\":\"lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 31, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(151, '{\"en\":\"Greek Salad (500g)\"}', '{\"en\":\"tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 31, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(152, '{\"en\":\"Mozzarella Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 32, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(153, '{\"en\":\"Prosciutto crust pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 32, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00);
INSERT INTO `items` (`id`, `name`, `description`, `image`, `price`, `category_id`, `created_at`, `updated_at`, `available`, `has_variants`, `vat`, `deleted_at`, `enable_system_variants`, `discounted_price`) VALUES
(154, '{\"en\":\"Pepperoni Pizza\"}', '{\"en\":\"tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 32, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(155, '{\"en\":\"Carriola Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 32, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(156, '{\"en\":\"Perugia Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 32, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(157, '{\"en\":\"Pizza Napoli\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 32, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(158, '{\"en\":\"Margarita Pizza\"}', '{\"en\":\"tomato sauce, mozzarella Sabelli, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 32, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(159, '{\"en\":\"Combo Pizza 50\\/50 (70cm)\"}', '{\"en\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 32, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(160, '{\"en\":\"Capricciosa Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 32, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(161, '{\"en\":\"Quattro Formaggi Pizza\"}', '{\"en\":\"cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 32, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(162, '{\"en\":\"Marco Polo Pizza\"}', '{\"en\":\"tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 32, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(163, '{\"en\":\"Schweppes Tonic (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 33, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(164, '{\"en\":\"Sprite (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 33, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(165, '{\"en\":\"Orange Fanta (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 33, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(166, '{\"en\":\"Coca Cola (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 33, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(167, '{\"en\":\"Burrito with chicken\"}', '{\"en\":\"chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 34, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(168, '{\"en\":\"Burrito Veggie\"}', '{\"en\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 34, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(169, '{\"en\":\"Burrito with beef roast\"}', '{\"en\":\"veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 34, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(170, '{\"en\":\"Burrito with pork\"}', '{\"en\":\"pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 34, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(171, '{\"en\":\"Lasagna Classic (450g)\"}', '{\"en\":\"Bolognese sauce, mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/94d44523-ec90-4069-bd11-eb9588207c31', 11.99, 35, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(172, '{\"en\":\"Napoli Lasagna (450g)\"}', '{\"en\":\"chicken fillet, cream (animal), corn, blue cheese, mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4c367950-992c-4711-ab56-42bed10de86c', 11.99, 35, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(173, '{\"en\":\"Lasagna Formagio (450g)\"}', '{\"en\":\"smoked cheese, blue cheese, emmental, cream (animal), mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/8bafc3ec-82e7-46f8-964a-77a13e4ddf96', 11.99, 35, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(174, '{\"en\":\"Caprese Salad (350gr)\"}', '{\"en\":\"peeled tomatoes, mozzarella salad, Genovese pesto\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 36, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(175, '{\"en\":\"Caesar Salad (400g)\"}', '{\"en\":\"iceberg, bacon, chicken breast, parmesan, Caesar sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 36, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(176, '{\"en\":\"Salad Napoli (350g)\"}', '{\"en\":\"iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 36, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(177, '{\"en\":\"Green tuna salad (400g)\"}', '{\"en\":\"lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 36, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(178, '{\"en\":\"Green salad (350g)\"}', '{\"en\":\"lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 36, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(179, '{\"en\":\"Greek Salad (500g)\"}', '{\"en\":\"tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 36, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(180, '{\"en\":\"Spaghetti Carbonara (450g)\"}', '{\"en\":\"fresh pasta, cream (animal), onion, pancakes (smoked bacon), egg, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b65d5389-4742-4a78-9d94-f31110984db6', 11.99, 37, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(181, '{\"en\":\"Spaghetti Formaggi (450g)\"}', '{\"en\":\"fresh pasta, cream (animal), blue cheese, emmental, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', 11.99, 37, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(182, '{\"en\":\"Tagliatelle with mushrooms (400g)\"}', '{\"en\":\"fresh pasta, cream (animal), mushrooms, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0bae6238-dda6-4630-b300-5125fde865d4', 11.99, 37, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(183, '{\"en\":\"Chicken risotto (450g)\"}', '{\"en\":\"Arborio rice, chicken breast, onion, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/033c32c1-cdae-495e-910f-66b5fa239297', 11.99, 37, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(184, '{\"en\":\"Risotto with mushrooms (450g)\"}', '{\"en\":\"Arborio rice, mushrooms, garlic, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/08d82944-f947-48f4-a197-a3199bb3b6e7', 11.99, 37, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(185, '{\"en\":\"Tagliatelle with Bolognese Sauce (400g)\"}', '{\"en\":\"fresh pasta, bolognese sauce, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc695ba9-8af3-47a4-8e41-dc1706cbf2c3', 11.99, 37, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(186, '{\"en\":\"Mozzarella Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 38, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(187, '{\"en\":\"Prosciutto crust pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 38, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(188, '{\"en\":\"Pepperoni Pizza\"}', '{\"en\":\"tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 38, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(189, '{\"en\":\"Carriola Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 38, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(190, '{\"en\":\"Perugia Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 38, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(191, '{\"en\":\"Pizza Napoli\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 38, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(192, '{\"en\":\"Margarita Pizza\"}', '{\"en\":\"tomato sauce, mozzarella Sabelli, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 38, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(193, '{\"en\":\"Combo Pizza 50\\/50 (70cm)\"}', '{\"en\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 38, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(194, '{\"en\":\"Capricciosa Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 38, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(195, '{\"en\":\"Quattro Formaggi Pizza\"}', '{\"en\":\"cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 38, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(196, '{\"en\":\"Marco Polo Pizza\"}', '{\"en\":\"tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 38, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(197, '{\"en\":\"Burrito Vegetarian in a Bowl (450g)\"}', '{\"en\":\"rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 39, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(198, '{\"en\":\"Burrito with chicken in a bowl(450g)\"}', '{\"en\":\"chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 39, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(199, '{\"en\":\"Burrito with beef in a bowl (450g)\"}', '{\"en\":\"veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 39, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(200, '{\"en\":\"Burrito with pork in a bowl (450g)\"}', '{\"en\":\"pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 39, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(201, '{\"en\":\"Burrito with chicken\"}', '{\"en\":\"chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 40, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(202, '{\"en\":\"Burrito Veggie\"}', '{\"en\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 40, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(203, '{\"en\":\"Burrito with beef roast\"}', '{\"en\":\"veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 40, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(204, '{\"en\":\"Burrito with pork\"}', '{\"en\":\"pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 40, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(205, '{\"en\":\"Quesadilla with chicken\"}', '{\"en\":\"Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 41, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(206, '{\"en\":\"Quesadilla with veal\"}', '{\"en\":\"beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 41, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(207, '{\"en\":\"Vegetarian Quesadilla\"}', '{\"en\":\"2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 41, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(208, '{\"en\":\"Quesadilla with Pork\"}', '{\"en\":\"pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 41, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(209, '{\"en\":\"Chicken Taco (250g)\"}', '{\"en\":\"tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 42, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(210, '{\"en\":\"Taco with beef roasted meat (250g)\"}', '{\"en\":\"tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 42, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(211, '{\"en\":\"Pork Taco (250g)\"}', '{\"en\":\"16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 42, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(212, '{\"en\":\"Tacos Veggie (250g)\"}', '{\"en\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 42, '2022-08-18 19:44:47', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(213, '{\"en\":\"Homemade french fries with ranch sauce (150g)\"}', '{\"en\":\"French fries, homemade ranch dressing, cheddar cheese, fully \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 43, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(214, '{\"en\":\"Homemade french fries with cheddar and jalapenos (190g)\"}', '{\"en\":\"Olive oil, cheddar, green mix\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 43, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(215, '{\"en\":\"Homemade french fries (100g)\"}', '{\"en\":\"100g\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 43, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(216, '{\"en\":\"Homemade Potatoes with Cheddar and Jalapenos (300g)\"}', '{\"en\":\"Cheddar cheese, butter, russet potatoes, rings, all purpose flour\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 44, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(217, '{\"en\":\"Homemade Potatoes with Ranch Sauce (300g)\"}', '{\"en\":\"Sour cream, ranch dressing, bacon, potatoes, cheddar cheese\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 44, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(218, '{\"en\":\"Cheddar Sticks (250g)\"}', '{\"en\":\"String cheese, bread crumbs, smoked paprika, egg\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 44, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(219, '{\"en\":\"Mexellente (350g)\"}', '{\"en\":\"iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 45, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(220, '{\"en\":\"Schweppes Tonic (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 46, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(221, '{\"en\":\"Sprite (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 46, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(222, '{\"en\":\"Orange Fanta (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 46, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(223, '{\"en\":\"Coca Cola (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 46, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(224, '{\"en\":\"Wild Wild West\"}', '{\"en\":\"freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 47, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(225, '{\"en\":\"Skapto Bulleit Bourbon\"}', '{\"en\":\"juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 47, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(226, '{\"en\":\"Back to Basics\"}', '{\"en\":\"juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 47, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(227, '{\"en\":\"Cheesus\"}', '{\"en\":\"juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 47, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(228, '{\"en\":\"Skaptoburger\"}', '{\"en\":\"juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 47, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(229, '{\"en\":\"El Pollo Loco\"}', '{\"en\":\"Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 47, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(230, '{\"en\":\"SA7OSH1\"}', '{\"en\":\"juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 47, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(231, '{\"en\":\"Caprese Salad (350gr)\"}', '{\"en\":\"peeled tomatoes, mozzarella salad, Genovese pesto\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 48, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(232, '{\"en\":\"Caesar Salad (400g)\"}', '{\"en\":\"iceberg, bacon, chicken breast, parmesan, Caesar sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 48, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(233, '{\"en\":\"Salad Napoli (350g)\"}', '{\"en\":\"iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 48, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(234, '{\"en\":\"Green tuna salad (400g)\"}', '{\"en\":\"lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 48, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(235, '{\"en\":\"Green salad (350g)\"}', '{\"en\":\"lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 48, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(236, '{\"en\":\"Greek Salad (500g)\"}', '{\"en\":\"tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 48, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(237, '{\"en\":\"Mozzarella Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 49, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(238, '{\"en\":\"Prosciutto crust pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 49, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(239, '{\"en\":\"Pepperoni Pizza\"}', '{\"en\":\"tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 49, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(240, '{\"en\":\"Carriola Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 49, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(241, '{\"en\":\"Perugia Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 49, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(242, '{\"en\":\"Pizza Napoli\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 49, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(243, '{\"en\":\"Margarita Pizza\"}', '{\"en\":\"tomato sauce, mozzarella Sabelli, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 49, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(244, '{\"en\":\"Combo Pizza 50\\/50 (70cm)\"}', '{\"en\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 49, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(245, '{\"en\":\"Capricciosa Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 49, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(246, '{\"en\":\"Quattro Formaggi Pizza\"}', '{\"en\":\"cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 49, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(247, '{\"en\":\"Marco Polo Pizza\"}', '{\"en\":\"tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 49, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(248, '{\"en\":\"Schweppes Tonic (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 50, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(249, '{\"en\":\"Sprite (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 50, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(250, '{\"en\":\"Orange Fanta (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 50, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(251, '{\"en\":\"Coca Cola (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 50, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(252, '{\"en\":\"Burrito with chicken\"}', '{\"en\":\"chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 51, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(253, '{\"en\":\"Burrito Veggie\"}', '{\"en\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 51, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(254, '{\"en\":\"Burrito with beef roast\"}', '{\"en\":\"veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 51, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(255, '{\"en\":\"Burrito with pork\"}', '{\"en\":\"pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 51, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(256, '{\"en\":\"Caprese Salad (350gr)\"}', '{\"en\":\"peeled tomatoes, mozzarella salad, Genovese pesto\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 52, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(257, '{\"en\":\"Caesar Salad (400g)\"}', '{\"en\":\"iceberg, bacon, chicken breast, parmesan, Caesar sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 52, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(258, '{\"en\":\"Salad Napoli (350g)\"}', '{\"en\":\"iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 52, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(259, '{\"en\":\"Green tuna salad (400g)\"}', '{\"en\":\"lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 52, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(260, '{\"en\":\"Green salad (350g)\"}', '{\"en\":\"lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 52, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(261, '{\"en\":\"Greek Salad (500g)\"}', '{\"en\":\"tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 52, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(262, '{\"en\":\"Lasagna Classic (450g)\"}', '{\"en\":\"Bolognese sauce, mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/94d44523-ec90-4069-bd11-eb9588207c31', 11.99, 53, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(263, '{\"en\":\"Napoli Lasagna (450g)\"}', '{\"en\":\"chicken fillet, cream (animal), corn, blue cheese, mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4c367950-992c-4711-ab56-42bed10de86c', 11.99, 53, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(264, '{\"en\":\"Lasagna Formagio (450g)\"}', '{\"en\":\"smoked cheese, blue cheese, emmental, cream (animal), mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/8bafc3ec-82e7-46f8-964a-77a13e4ddf96', 11.99, 53, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(265, '{\"en\":\"Mozzarella Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 54, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(266, '{\"en\":\"Prosciutto crust pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 54, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(267, '{\"en\":\"Pepperoni Pizza\"}', '{\"en\":\"tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 54, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(268, '{\"en\":\"Carriola Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 54, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(269, '{\"en\":\"Perugia Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 54, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(270, '{\"en\":\"Pizza Napoli\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 54, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(271, '{\"en\":\"Margarita Pizza\"}', '{\"en\":\"tomato sauce, mozzarella Sabelli, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 54, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(272, '{\"en\":\"Combo Pizza 50\\/50 (70cm)\"}', '{\"en\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 54, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(273, '{\"en\":\"Capricciosa Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 54, '2022-08-18 19:44:48', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(274, '{\"en\":\"Quattro Formaggi Pizza\"}', '{\"en\":\"cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 54, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(275, '{\"en\":\"Marco Polo Pizza\"}', '{\"en\":\"tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 54, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(276, '{\"en\":\"Spaghetti Carbonara (450g)\"}', '{\"en\":\"fresh pasta, cream (animal), onion, pancakes (smoked bacon), egg, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b65d5389-4742-4a78-9d94-f31110984db6', 11.99, 55, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(277, '{\"en\":\"Spaghetti Formaggi (450g)\"}', '{\"en\":\"fresh pasta, cream (animal), blue cheese, emmental, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', 11.99, 55, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(278, '{\"en\":\"Tagliatelle with mushrooms (400g)\"}', '{\"en\":\"fresh pasta, cream (animal), mushrooms, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0bae6238-dda6-4630-b300-5125fde865d4', 11.99, 55, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(279, '{\"en\":\"Chicken risotto (450g)\"}', '{\"en\":\"Arborio rice, chicken breast, onion, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/033c32c1-cdae-495e-910f-66b5fa239297', 11.99, 55, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(280, '{\"en\":\"Risotto with mushrooms (450g)\"}', '{\"en\":\"Arborio rice, mushrooms, garlic, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/08d82944-f947-48f4-a197-a3199bb3b6e7', 11.99, 55, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(281, '{\"en\":\"Tagliatelle with Bolognese Sauce (400g)\"}', '{\"en\":\"fresh pasta, bolognese sauce, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc695ba9-8af3-47a4-8e41-dc1706cbf2c3', 11.99, 55, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(282, '{\"en\":\"Burrito with chicken\"}', '{\"en\":\"chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 56, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(283, '{\"en\":\"Burrito Veggie\"}', '{\"en\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 56, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(284, '{\"en\":\"Burrito with beef roast\"}', '{\"en\":\"veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 56, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(285, '{\"en\":\"Burrito with pork\"}', '{\"en\":\"pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 56, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(286, '{\"en\":\"Quesadilla with chicken\"}', '{\"en\":\"Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 57, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(287, '{\"en\":\"Quesadilla with veal\"}', '{\"en\":\"beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 57, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(288, '{\"en\":\"Vegetarian Quesadilla\"}', '{\"en\":\"2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 57, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(289, '{\"en\":\"Quesadilla with Pork\"}', '{\"en\":\"pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 57, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(290, '{\"en\":\"Burrito Vegetarian in a Bowl (450g)\"}', '{\"en\":\"rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 58, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(291, '{\"en\":\"Burrito with chicken in a bowl(450g)\"}', '{\"en\":\"chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 58, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(292, '{\"en\":\"Burrito with beef in a bowl (450g)\"}', '{\"en\":\"veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 58, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(293, '{\"en\":\"Burrito with pork in a bowl (450g)\"}', '{\"en\":\"pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 58, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(294, '{\"en\":\"Chicken Taco (250g)\"}', '{\"en\":\"tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 59, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(295, '{\"en\":\"Taco with beef roasted meat (250g)\"}', '{\"en\":\"tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 59, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(296, '{\"en\":\"Pork Taco (250g)\"}', '{\"en\":\"16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 59, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(297, '{\"en\":\"Tacos Veggie (250g)\"}', '{\"en\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 59, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(298, '{\"en\":\"Wild Wild West\"}', '{\"en\":\"freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 60, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(299, '{\"en\":\"Skapto Bulleit Bourbon\"}', '{\"en\":\"juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 60, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(300, '{\"en\":\"Back to Basics\"}', '{\"en\":\"juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 60, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(301, '{\"en\":\"Cheesus\"}', '{\"en\":\"juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 60, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(302, '{\"en\":\"Skaptoburger\"}', '{\"en\":\"juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 60, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(303, '{\"en\":\"El Pollo Loco\"}', '{\"en\":\"Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 60, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(304, '{\"en\":\"SA7OSH1\"}', '{\"en\":\"juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 60, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(305, '{\"en\":\"Mexellente (350g)\"}', '{\"en\":\"iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 61, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00);
INSERT INTO `items` (`id`, `name`, `description`, `image`, `price`, `category_id`, `created_at`, `updated_at`, `available`, `has_variants`, `vat`, `deleted_at`, `enable_system_variants`, `discounted_price`) VALUES
(306, '{\"en\":\"Homemade french fries with ranch sauce (150g)\"}', '{\"en\":\"French fries, homemade ranch dressing, cheddar cheese, fully \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 62, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(307, '{\"en\":\"Homemade french fries with cheddar and jalapenos (190g)\"}', '{\"en\":\"Olive oil, cheddar, green mix\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 62, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(308, '{\"en\":\"Homemade french fries (100g)\"}', '{\"en\":\"100g\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 62, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(309, '{\"en\":\"Homemade Potatoes with Cheddar and Jalapenos (300g)\"}', '{\"en\":\"Cheddar cheese, butter, russet potatoes, rings, all purpose flour\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 63, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(310, '{\"en\":\"Homemade Potatoes with Ranch Sauce (300g)\"}', '{\"en\":\"Sour cream, ranch dressing, bacon, potatoes, cheddar cheese\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 63, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(311, '{\"en\":\"Cheddar Sticks (250g)\"}', '{\"en\":\"String cheese, bread crumbs, smoked paprika, egg\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 63, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(312, '{\"en\":\"Schweppes Tonic (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 64, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(313, '{\"en\":\"Sprite (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 64, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(314, '{\"en\":\"Orange Fanta (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 64, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(315, '{\"en\":\"Coca Cola (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 64, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(316, '{\"en\":\"Mozzarella Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 65, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(317, '{\"en\":\"Prosciutto crust pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 65, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(318, '{\"en\":\"Pepperoni Pizza\"}', '{\"en\":\"tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 65, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(319, '{\"en\":\"Carriola Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 65, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(320, '{\"en\":\"Perugia Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 65, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(321, '{\"en\":\"Pizza Napoli\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 65, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(322, '{\"en\":\"Margarita Pizza\"}', '{\"en\":\"tomato sauce, mozzarella Sabelli, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 65, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(323, '{\"en\":\"Combo Pizza 50\\/50 (70cm)\"}', '{\"en\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 65, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(324, '{\"en\":\"Capricciosa Pizza\"}', '{\"en\":\"tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 65, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(325, '{\"en\":\"Quattro Formaggi Pizza\"}', '{\"en\":\"cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 65, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(326, '{\"en\":\"Marco Polo Pizza\"}', '{\"en\":\"tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 65, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 1, 21.00, NULL, 0, 0.00),
(327, '{\"en\":\"Burrito with chicken\"}', '{\"en\":\"chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 66, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(328, '{\"en\":\"Burrito Veggie\"}', '{\"en\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 66, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(329, '{\"en\":\"Burrito with beef roast\"}', '{\"en\":\"veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 66, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(330, '{\"en\":\"Burrito with pork\"}', '{\"en\":\"pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 66, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(331, '{\"en\":\"Caprese Salad (350gr)\"}', '{\"en\":\"peeled tomatoes, mozzarella salad, Genovese pesto\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 67, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(332, '{\"en\":\"Caesar Salad (400g)\"}', '{\"en\":\"iceberg, bacon, chicken breast, parmesan, Caesar sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 67, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(333, '{\"en\":\"Salad Napoli (350g)\"}', '{\"en\":\"iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 67, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(334, '{\"en\":\"Green tuna salad (400g)\"}', '{\"en\":\"lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 67, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(335, '{\"en\":\"Green salad (350g)\"}', '{\"en\":\"lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 67, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(336, '{\"en\":\"Greek Salad (500g)\"}', '{\"en\":\"tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 67, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(337, '{\"en\":\"Schweppes Tonic (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 68, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(338, '{\"en\":\"Sprite (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 68, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(339, '{\"en\":\"Orange Fanta (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 68, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(340, '{\"en\":\"Coca Cola (330ml)\"}', '{\"en\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 68, '2022-08-18 19:44:49', '2022-08-19 00:40:33', 1, 0, 21.00, NULL, 0, 0.00),
(341, '{\"en\":\"{\\\"ar\\\":\\\"\\\"}\"}', '{\"en\":\"{\\\"ar\\\":\\\"\\\"}\"}', '52d7c1db-6587-4d6b-9425-efdb20409f3c', 0.10, 69, '2022-08-19 00:26:21', '2022-08-19 00:40:33', 1, 0, 0.00, NULL, 0, 0.00),
(342, '{\"en\":\"Black Tea \\u0634\\u0627\\u064a \\u0623\\u0633\\u0648\\u062f\",\"ar\":\"Black Tea\"}', '{\"en\":\"Black tea, also translated to red tea in various East Asian languages, is a type of tea that is more oxidized than oolong, yellow, white and green teas.\\r\\n\\u0627\\u0644\\u0634\\u0627\\u064a \\u0627\\u0644\\u0623\\u0633\\u0648\\u062f \\u060c \\u0627\\u0644\\u0630\\u064a \\u064a\\u064f\\u062a\\u0631\\u062c\\u0645 \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0634\\u0627\\u064a \\u0627\\u0644\\u0623\\u062d\\u0645\\u0631 \\u0641\\u064a \\u0627\\u0644\\u0639\\u062f\\u064a\\u062f \\u0645\\u0646 \\u0644\\u063a\\u0627\\u062a \\u0634\\u0631\\u0642 \\u0622\\u0633\\u064a\\u0627 \\u060c \\u0647\\u0648 \\u0646\\u0648\\u0639 \\u0645\\u0646 \\u0627\\u0644\\u0634\\u0627\\u064a \\u064a\\u062a\\u0623\\u0643\\u0633\\u062f \\u0623\\u0643\\u062b\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0634\\u0627\\u064a \\u0627\\u0644\\u0635\\u064a\\u0646\\u064a \\u0627\\u0644\\u0627\\u0633\\u0648\\u062f \\u0648\\u0627\\u0644\\u0623\\u0635\\u0641\\u0631 \\u0648\\u0627\\u0644\\u0623\\u0628\\u064a\\u0636 \\u0648\\u0627\\u0644\\u0623\\u062e\\u0636\\u0631.\",\"ar\":\"Black tea, also translated to red tea in various East Asian languages, is a type of tea that is more oxidized than oolong, yellow, white and green teas.\"}', 'ca6910c8-a7a3-4f4c-bf7e-702c50e701c2', 1.00, 70, '2022-08-19 23:58:13', '2022-08-20 00:07:20', 1, 0, 0.00, NULL, 0, 0.75),
(343, '{\"en\":\"Coffee\",\"ar\":\"Coffee\"}', '{\"en\":\"Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain flowering plants in the Coffea genus.\",\"ar\":\"Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain flowering plants in the Coffea genus.\"}', 'e133df5d-4d8d-41c1-ad01-eeed9eed0d86', 2.00, 70, '2022-08-19 23:58:57', '2022-08-20 00:00:41', 1, 0, 0.00, NULL, 0, 0.00),
(344, '{\"en\":\"Coffee\",\"ar\":\"Coffee\"}', '{\"en\":\"Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain flowering plants in the Coffea genus.\",\"ar\":\"Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain flowering plants in the Coffea genus.\"}', '31674c0b-a6bd-4d71-bef1-cc86f634145a', 2.00, 71, '2022-08-19 23:59:30', '2022-08-20 00:00:41', 1, 0, 0.00, NULL, 0, 0.00),
(345, '{\"ar\":\"\\u0642\\u0647\\u0648\\u0629\",\"en\":\"\\u0642\\u0647\\u0648\\u0629\"}', '{\"ar\":\"\\u0627\\u0644\\u0642\\u0647\\u0648\\u0629 \\u0647\\u064a \\u0645\\u0634\\u0631\\u0648\\u0628 \\u0645\\u064f\\u0639\\u062f \\u0645\\u0646 \\u062d\\u0628\\u0648\\u0628 \\u0627\\u0644\\u0628\\u0646 \\u0627\\u0644\\u0645\\u062d\\u0645\\u0635\\u0629 \\u060c \\u0628\\u0630\\u0648\\u0631 \\u0627\\u0644\\u062a\\u0648\\u062a \\u0645\\u0646 \\u0646\\u0628\\u0627\\u062a\\u0627\\u062a \\u0645\\u0632\\u0647\\u0631\\u0629 \\u0645\\u0639\\u064a\\u0646\\u0629 \\u0641\\u064a \\u062c\\u0646\\u0633 \\u0627\\u0644\\u0642\\u0647\\u0648\\u0629.\",\"en\":\"\\u0627\\u0644\\u0642\\u0647\\u0648\\u0629 \\u0647\\u064a \\u0645\\u0634\\u0631\\u0648\\u0628 \\u0645\\u064f\\u0639\\u062f \\u0645\\u0646 \\u062d\\u0628\\u0648\\u0628 \\u0627\\u0644\\u0628\\u0646 \\u0627\\u0644\\u0645\\u062d\\u0645\\u0635\\u0629 \\u060c \\u0628\\u0630\\u0648\\u0631 \\u0627\\u0644\\u062a\\u0648\\u062a \\u0645\\u0646 \\u0646\\u0628\\u0627\\u062a\\u0627\\u062a \\u0645\\u0632\\u0647\\u0631\\u0629 \\u0645\\u0639\\u064a\\u0646\\u0629 \\u0641\\u064a \\u062c\\u0646\\u0633 \\u0627\\u0644\\u0642\\u0647\\u0648\\u0629.\"}', '1fcd8b5d-1d91-4ff0-a248-2b564390fa2d', 2.00, 70, '2022-08-20 00:01:38', '2022-08-20 00:06:34', 1, 0, 0.00, '2022-08-20 00:06:34', 0, 0.00),
(346, '{\"en\":\"Chicken Biriyani\",\"ar\":\"\\u0628\\u0631\\u064a\\u0627\\u0646\\u064a \\u062f\\u062c\\u0627\\u062c\"}', '{\"en\":\"Indian basmati rice, cooked with chicken, special sauce, Indian spices, served with gravy, Indian pickles, mint chutney and papad.\",\"ar\":\"\\u0623\\u0631\\u0632 \\u0628\\u0633\\u0645\\u062a\\u064a \\u0647\\u0646\\u062f\\u064a \\u0645\\u0637\\u0628\\u0648\\u062e \\u0645\\u0639 \\u062f\\u062c\\u0627\\u062c\\u060c \\u0635\\u0648\\u0635 \\u0633\\u0628\\u064a\\u0634\\u064a\\u0627\\u0644\\u060c \\u0628\\u0647\\u0627\\u0631\\u0627\\u062a \\u0647\\u0646\\u062f\\u064a\\u0629\\u060c \\u064a\\u0642\\u062f\\u0645 \\u0645\\u0639 \\u062c\\u0631\\u0627\\u0641\\u064a\\u060c \\u0645\\u062e\\u0644\\u0644 \\u0647\\u0646\\u062f\\u064a\\u060c \\u0635\\u0648\\u0635 \\u0628\\u0646\\u0639\\u0646\\u0627\\u0639 \\u0648\\u0628\\u0627\\u0628\\u0627\\u062f.\"}', '514ba3e1-0ce6-4f61-b158-785efcf7caf4', 3.50, 72, '2022-08-22 03:50:55', '2022-08-22 04:02:41', 1, 1, 0.00, NULL, 1, 0.00),
(347, '{\"en\":\"MUTTON BIRIYANI\",\"ar\":\"\\u0628\\u0631\\u064a\\u0627\\u0646\\u064a \\u0644\\u062d\\u0645 \\u0636\\u0627\\u0646\"}', '{\"en\":\"Basmati rice, fresh boneless mutton cook with tomato gravy, onion masala, yogurt, cream, served with makhani gravy, Indian pickles, mint chutney and papad.\",\"ar\":\"\\u0623\\u0631\\u0632 \\u0628\\u0633\\u0645\\u062a\\u064a\\u060c \\u0644\\u062d\\u0645 \\u0636\\u0623\\u0646 \\u0637\\u0627\\u0632\\u062c \\u0645\\u0637\\u0628\\u0648\\u062e \\u0645\\u0639 \\u0645\\u0631\\u0642 \\u0637\\u0645\\u0627\\u0637\\u0645\\u060c \\u0645\\u0627\\u0633\\u0627\\u0644\\u0627 \\u0628\\u0635\\u0644\\u060c \\u0632\\u0628\\u0627\\u062f\\u064a\\u060c \\u0643\\u0631\\u064a\\u0645\\u0629\\u060c \\u064a\\u0642\\u062f\\u0645 \\u0645\\u0639 \\u0645\\u0631\\u0642 \\u0645\\u0627\\u062e\\u0627\\u0646\\u064a\\u060c \\u0645\\u062e\\u0644\\u0644 \\u0647\\u0646\\u062f\\u064a\\u060c \\u0635\\u0648\\u0635 \\u0646\\u0639\\u0646\\u0627\\u0639 \\u0648\\u0628\\u0627\\u0628\\u0627\\u062f.\"}', '63239b9a-55c5-4efb-ba94-99ce051956f4', 3.75, 72, '2022-08-22 03:54:48', '2022-08-22 04:06:52', 1, 1, 0.00, NULL, 1, 0.00),
(348, '{\"en\":\"CHICKEN 65\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c 65\"}', '{\"en\":\"Chicken\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c\"}', '08ce9caa-0935-4257-b2f4-82b3e4c6479d', 2.85, 74, '2022-08-22 04:16:31', '2022-08-22 04:18:04', 1, 0, 0.00, NULL, 0, 0.00),
(349, '{\"en\":\"BEEF BLACKPEPPER\",\"ar\":\"\\u0628\\u0642\\u0631\\u064a \\u0628\\u0627\\u0644\\u0641\\u0644\\u0641\\u0644 \\u0627\\u0644\\u0623\\u0633\\u0648\\u062f\"}', '{\"en\":\"Beef\",\"ar\":\"\\u0628\\u0642\\u0631\\u064a \\u0628\\u0627\\u0644\\u0641\\u0644\\u0641\\u0644 \\u0627\\u0644\\u0623\\u0633\\u0648\\u062f\"}', '2fcf0042-f264-4caf-9f27-327bc9cf9330', 2.95, 74, '2022-08-22 04:21:14', '2022-08-22 04:30:24', 1, 0, 0.00, NULL, 0, 0.00),
(350, '{\"en\":\"CHICKEN MACHBOOS\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0645\\u0642\\u0628\\u0648\\u0633\"}', '{\"en\":\"Chicken Machboos\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0645\\u0642\\u0628\\u0648\\u0633\"}', '255f2131-3fe5-4ad0-82b3-d1e3baced197', 2.00, 75, '2022-08-22 04:27:06', '2022-08-22 04:30:05', 1, 0, 0.00, NULL, 0, 0.00),
(351, '{\"en\":\"CHICKEN MACHBOOS\"}', '{\"en\":\"Chicken Machboos\"}', '62cea270-7d43-4641-bcb5-ce3de8d8bff0', 2.00, 75, '2022-08-22 04:27:07', '2022-08-22 04:28:02', 1, 0, 0.00, '2022-08-22 04:28:02', 0, 0.00),
(352, '{\"en\":\"Mineral Water\",\"ar\":\"\\u0645\\u064a\\u0627\\u0647 \\u0645\\u0639\\u062f\\u0646\\u064a\\u0629\"}', '{\"en\":\"Mineral Water\",\"ar\":\"\\u0645\\u064a\\u0627\\u0647 \\u0645\\u0639\\u062f\\u0646\\u064a\\u0629\"}', '3246b1e8-7c75-4ce1-89b6-4e44ffefe6a9', 0.10, 76, '2022-08-22 04:35:34', '2022-08-22 04:45:06', 1, 1, 0.00, NULL, 0, 0.00),
(353, '{\"en\":\"Mineral Water\"}', '{\"en\":\"Mineral Water\"}', '6da534e1-9d6f-4cd7-afdc-8c8efde0d858', 0.15, 76, '2022-08-22 04:35:35', '2022-08-22 04:35:50', 1, 0, 0.00, '2022-08-22 04:35:50', 0, 0.00),
(354, '{\"en\":\"Soft Drinks\",\"ar\":\"\\u0645\\u0634\\u0631\\u0648\\u0628\\u0627\\u062a \\u063a\\u0627\\u0632\\u064a\\u0629\"}', '{\"en\":\"Soft Drinks\",\"ar\":\"\\u0645\\u0634\\u0631\\u0648\\u0628\\u0627\\u062a \\u063a\\u0627\\u0632\\u064a\\u0629\"}', 'db78504f-0b3d-430b-99c5-6f2d0a87d5ba', 0.25, 76, '2022-08-22 04:36:33', '2022-08-22 04:45:47', 1, 1, 0.00, NULL, 1, 0.00),
(355, '{\"en\":\"CHICKEN LOLLYPOP\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0644\\u0648\\u0644\\u064a\\u0628\\u0648\\u0628\"}', '{\"en\":\"CHICKEN LOLLYPOP\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0644\\u0648\\u0644\\u064a\\u0628\\u0648\\u0628\"}', 'cf7ea7e7-4dec-41c6-8c09-40c497386974', 2.45, 77, '2022-08-25 00:47:37', '2022-09-02 22:55:02', 1, 1, 0.00, NULL, 1, 0.00),
(356, '{\"en\":\"CHICKEN WINGS\",\"ar\":\"\\u0623\\u062c\\u0646\\u062d\\u0629 \\u062f\\u062c\\u0627\\u062c\"}', '{\"en\":\"CHICKEN WINGS\",\"ar\":\"\\u0623\\u062c\\u0646\\u062d\\u0629 \\u062f\\u062c\\u0627\\u062c\"}', '00709e52-31a7-4c66-b12c-890abb4afe49', 2.25, 77, '2022-08-25 00:48:23', '2022-09-02 22:55:15', 1, 1, 0.00, NULL, 1, 0.00),
(357, '{\"en\":\"CRISPY CHICKEN\",\"ar\":\"\\u0643\\u0631\\u0633\\u0628\\u064a \\u062f\\u062c\\u0627\\u062c\"}', '{\"en\":\"CRISPY CHICKEN\",\"ar\":\"\\u0643\\u0631\\u0633\\u0628\\u064a \\u062f\\u062c\\u0627\\u062c\"}', 'c76abdb1-7261-43f6-ae26-8fee3d48ba54', 2.25, 77, '2022-08-25 00:48:42', '2022-09-02 22:55:26', 1, 1, 0.00, NULL, 1, 0.00),
(358, '{\"en\":\"CRUMB FRIED CHICKEN\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0643\\u0633\\u0631\\u0629 \\u062e\\u0628\\u0632 \\u0645\\u0642\\u0644\\u064a\"}', '{\"en\":\"CRUMB FRIED CHICKEN\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0643\\u0633\\u0631\\u0629 \\u062e\\u0628\\u0632 \\u0645\\u0642\\u0644\\u064a\"}', 'ce8041c3-fdbe-42af-bb36-2bc53b80924a', 3.25, 77, '2022-08-25 00:49:01', '2022-09-02 22:55:41', 1, 0, 0.00, NULL, 0, 0.00),
(359, '{\"en\":\"CRYSTAL FRIED PRAWNS\",\"ar\":\"\\u0643\\u0631\\u064a\\u0633\\u062a\\u0627\\u0644 \\u0645\\u0642\\u0644\\u064a \\u0631\\u0628\\u064a\\u0627\\u0646\"}', '{\"en\":\"CRYSTAL FRIED PRAWNS\",\"ar\":\"\\u0643\\u0631\\u064a\\u0633\\u062a\\u0627\\u0644 \\u0645\\u0642\\u0644\\u064a \\u0631\\u0628\\u064a\\u0627\\u0646\"}', '376fd4b8-997a-4fe1-b07e-b43657e017e0', 4.25, 77, '2022-08-25 00:49:27', '2022-09-02 22:55:53', 1, 0, 0.00, NULL, 0, 0.00),
(360, '{\"en\":\"FRIED CALAMARY\",\"ar\":\"\\u0643\\u0627\\u0644\\u0627\\u0645\\u0627\\u0631\\u064a \\u0645\\u0642\\u0644\\u064a\"}', '{\"en\":\"FRIED CALAMARY\",\"ar\":\"\\u0643\\u0627\\u0644\\u0627\\u0645\\u0627\\u0631\\u064a \\u0645\\u0642\\u0644\\u064a\"}', '6aca7ff8-82ac-441c-8630-7c3df033f740', 3.45, 77, '2022-08-25 00:49:48', '2022-09-02 22:56:07', 1, 0, 0.00, NULL, 0, 0.00),
(361, '{\"en\":\"GOLDEN FRIED SHRIMPS\",\"ar\":\"\\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u0645\\u0642\\u0644\\u064a \\u0630\\u0647\\u0628\\u064a\"}', '{\"en\":\"GOLDEN FRIED SHRIMPS\",\"ar\":\"\\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u0645\\u0642\\u0644\\u064a \\u0630\\u0647\\u0628\\u064a\"}', '9b035fc8-08e6-465e-8387-ec6b02f4f89b', 3.95, 77, '2022-08-25 00:50:13', '2022-09-02 22:56:20', 1, 0, 0.00, NULL, 0, 0.00),
(362, '{\"en\":\"PRAWN PEPPER SALT\",\"ar\":\"\\u0631\\u0628\\u064a\\u0627\\u0646 \\u0628\\u0627\\u0644\\u0645\\u0644\\u062d \\u0648\\u0627\\u0644\\u0641\\u0644\\u0641\\u0644\"}', '{\"en\":\"PRAWN PEPPER SALT\",\"ar\":\"\\u0631\\u0628\\u064a\\u0627\\u0646 \\u0628\\u0627\\u0644\\u0645\\u0644\\u062d \\u0648\\u0627\\u0644\\u0641\\u0644\\u0641\\u0644\"}', '0d597e11-9fcc-40ef-bdd8-421c7e4a9264', 4.25, 77, '2022-08-25 00:50:35', '2022-09-02 22:56:33', 1, 1, 0.00, NULL, 1, 0.00),
(363, '{\"en\":\"PRAWN PEPPER SALT\"}', '{\"en\":\"PRAWN PEPPER SALT\"}', '5c4d111b-afb5-4b8e-a27d-d0879d360118', 4.25, 77, '2022-08-25 00:50:36', '2022-08-25 00:50:54', 1, 0, 0.00, '2022-08-25 00:50:54', 0, 0.00),
(364, '{\"en\":\"SINKKI CHICKEN\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0633\\u064a\\u0643\\u064a\"}', '{\"en\":\"SINKKI CHICKEN\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0633\\u064a\\u0643\\u064a\"}', 'da7d840e-e668-4fb1-a8d2-c50855aaf308', 2.45, 77, '2022-08-25 00:51:23', '2022-09-02 22:56:46', 1, 0, 0.00, NULL, 0, 0.00),
(365, '{\"en\":\"SPRING ROLL\",\"ar\":\"\\u0633\\u0628\\u0631\\u064a\\u0646\\u062c \\u0631\\u0648\\u0644\"}', '{\"en\":\"SPRING ROLL\",\"ar\":\"\\u0633\\u0628\\u0631\\u064a\\u0646\\u062c \\u0631\\u0648\\u0644\"}', '5af67819-0511-4dd7-9314-e6176684d254', 1.45, 77, '2022-08-25 00:52:09', '2022-09-02 22:57:03', 1, 1, 0.00, NULL, 1, 0.00),
(366, '{\"en\":\"SWEET CORN SOUP\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u0630\\u0631\\u0629 \\u062d\\u0644\\u0648\\u0629\"}', '{\"en\":\"SWEET CORN SOUP\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u0630\\u0631\\u0629 \\u062d\\u0644\\u0648\\u0629\"}', '34591188-52d3-4960-b32d-48975c537ab5', 1.25, 85, '2022-08-25 01:11:04', '2022-09-02 22:45:56', 1, 1, 0.00, NULL, 1, 0.00),
(367, '{\"en\":\"HOT & SOUR SOUP\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u062d\\u0627\\u0645\\u0636 \\u0648 \\u0633\\u0627\\u062e\\u0646\"}', '{\"en\":\"HOT & SOUR SOUP\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u062d\\u0627\\u0645\\u0636 \\u0648 \\u0633\\u0627\\u062e\\u0646\"}', 'fdafb349-0119-40bc-b5aa-79c54c6218a1', 1.65, 85, '2022-08-25 01:11:34', '2022-09-02 22:46:08', 1, 1, 0.00, NULL, 1, 0.00),
(368, '{\"en\":\"LEMON CORIANDER SOUP\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u0643\\u0632\\u0628\\u0631\\u0629 \\u0628\\u0627\\u0644\\u0644\\u064a\\u0645\\u0648\"}', '{\"en\":\"LEMON CORIANDER SOUP\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u0643\\u0632\\u0628\\u0631\\u0629 \\u0628\\u0627\\u0644\\u0644\\u064a\\u0645\\u0648\"}', '71cadfdb-5446-4b6e-a312-94b675dce109', 1.65, 85, '2022-08-25 01:11:54', '2022-09-03 23:44:14', 1, 1, 0.00, NULL, 1, 0.00),
(369, '{\"en\":\"MONCHOW SOUP\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u0645\\u0627\\u0646\\u0634\\u0648\"}', '{\"en\":\"MONCHOW SOUP\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u0645\\u0627\\u0646\\u0634\\u0648\"}', 'f944cd39-6238-401c-a751-2ab38bf22454', 1.65, 85, '2022-08-25 01:12:16', '2022-09-02 22:46:28', 1, 1, 0.00, NULL, 1, 0.00),
(370, '{\"en\":\"SEA FOOD SOUP\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u0628\\u062d\\u0631\\u064a\\u0629\"}', '{\"en\":\"SEA FOOD SOUP\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u0628\\u062d\\u0631\\u064a\\u0629\"}', 'e8012c1a-dc44-43fd-b649-faf2bbd3ae2e', 2.25, 85, '2022-08-25 01:12:40', '2022-09-02 22:46:49', 1, 1, 0.00, NULL, 1, 0.00),
(371, '{\"en\":\"CHICKEN MACHBOOS\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c  \\u0645\\u0642\\u0628\\u0648\\u0633\"}', '{\"en\":\"CHICKEN MACHBOOS\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c  \\u0645\\u0642\\u0628\\u0648\\u0633\"}', 'de8aabfa-e1bc-4b87-80dd-eed31e255be8', 3.25, 84, '2022-08-25 04:24:24', '2022-09-03 06:31:29', 1, 1, 0.00, '2022-09-03 06:31:29', 1, 0.00),
(372, '{\"en\":\"LACHADAR PARATHA\",\"ar\":\"\\u0644\\u0627\\u0634\\u0627\\u062f\\u0627\\u0631 \\u0628\\u0631\\u0627\\u062b\\u0627\"}', '{\"en\":\"LACHADAR PARATHA (Plain\\/Mint)\",\"ar\":\"\\u0644\\u0627\\u0634\\u0627\\u062f\\u0627\\u0631 \\u0628\\u0631\\u0627\\u062b\\u0627 ( \\u0633\\u0627\\u062f\\u0629 \\/ \\u0646\\u0639\\u0646\\u0627\\u0639 )\"}', '7ba12ad7-7d27-47a3-a2fb-392508645b5c', 0.45, 90, '2022-08-25 04:32:10', '2022-09-03 00:51:37', 1, 0, 0.00, NULL, 0, 0.00),
(373, '{\"en\":\"MIX BREAD BASKET\",\"ar\":\"\\u0633\\u0644\\u0629 \\u062e\\u0628\\u0632 \\u0645\\u0634\\u0643\\u0644\"}', '{\"en\":\"MIX BREAD BASKET\",\"ar\":\"\\u0633\\u0644\\u0629 \\u062e\\u0628\\u0632 \\u0645\\u0634\\u0643\\u0644\"}', '51a9f8c5-9b0a-4ab4-a506-c7f57e1bb62c', 1.95, 90, '2022-08-25 04:32:29', '2022-09-03 00:51:58', 1, 1, 0.00, NULL, 0, 0.00),
(374, '{\"en\":\"BUTTER NAAN\",\"ar\":\"\\u0646\\u0640\\u0627\\u0646 \\u0632\\u0628\\u062f\\u0629\"}', '{\"en\":\"BUTTER NAAN\",\"ar\":\"\\u0646\\u0640\\u0627\\u0646 \\u0632\\u0628\\u062f\\u0629\"}', '5598495b-81a4-4099-abf5-9534062c156b', 0.45, 90, '2022-08-25 04:32:47', '2022-09-03 00:52:13', 1, 0, 0.00, NULL, 0, 0.00),
(375, '{\"en\":\"GARLIC NAAN\",\"ar\":\"\\u0646\\u0640\\u0627\\u0646 \\u0628\\u0640\\u0627\\u0644\\u0640\\u062b\\u0640\\u0648\\u0645\"}', '{\"en\":\"GARLIC NAAN\",\"ar\":\"\\u0646\\u0640\\u0627\\u0646 \\u0628\\u0640\\u0627\\u0644\\u0640\\u062b\\u0640\\u0648\\u0645\"}', '3c59c3b5-2e43-48c7-ba51-9df8beb72b62', 0.45, 90, '2022-08-25 04:33:06', '2022-09-03 00:52:29', 1, 0, 0.00, NULL, 0, 0.00),
(376, '{\"en\":\"NAAN ZATAR\",\"ar\":\"\\u0646\\u0627\\u0646 \\u0628\\u0627\\u0644\\u0632\\u0639\\u062a\\u0631\"}', '{\"en\":\"NAAN ZATAR\",\"ar\":\"\\u0646\\u0627\\u0646 \\u0628\\u0627\\u0644\\u0632\\u0639\\u062a\\u0631\"}', '6fcd2ba4-6303-4f07-b918-36cfc8faf1f5', 0.35, 90, '2022-08-25 04:33:26', '2022-09-03 00:52:46', 1, 0, 0.00, NULL, 0, 0.00),
(377, '{\"en\":\"KULCHA\",\"ar\":\"\\u0643\\u0648\\u0644\\u0634\\u0627\"}', '{\"en\":\"KULCHA (Onion, Veg.Potato)\",\"ar\":\"\\u0643\\u0648\\u0644\\u0634\\u0627 (\\u0628\\u0635\\u0644 \\u060c \\u062e\\u0636\\u0627\\u0631 \\u0648 \\u0628\\u0637\\u0627\\u0637)\"}', 'fe05f750-9d0d-4a56-b6ca-64f6620dbabb', 0.75, 90, '2022-08-25 04:33:47', '2022-09-03 00:53:10', 1, 0, 0.00, NULL, 0, 0.00),
(378, '{\"en\":\"PUDINA PARATHA\",\"ar\":\"\\u0628\\u0648\\u062f\\u064a\\u0646\\u0627 \\u0628\\u0627\\u0631\\u0627\\u062b\\u0627\"}', '{\"en\":\"PUDINA PARATHA\",\"ar\":\"\\u0628\\u0648\\u062f\\u064a\\u0646\\u0627 \\u0628\\u0627\\u0631\\u0627\\u062b\\u0627\"}', '8bc36ead-ae89-4fb8-b1ee-75c79eda4006', 0.65, 90, '2022-08-25 04:34:05', '2022-09-03 00:53:33', 1, 0, 0.00, NULL, 0, 0.00),
(379, '{\"en\":\"Cheese Naan\",\"ar\":\"\\u0646\\u0640\\u0627\\u0646 \\u0628\\u0640\\u0627\\u0644\\u0640\\u062c\\u0640\\u0628\\u0640\\u0646\"}', '{\"en\":\"Indian bread stuffed with cheddar cheese.\",\"ar\":\"\\u062e\\u0628\\u0632 \\u0647\\u0646\\u062f\\u064a \\u0645\\u062d\\u0634\\u0648 \\u0628\\u0627\\u0644\\u062c\\u0628\\u0646 \\u0627\\u0644\\u0634\\u064a\\u062f\\u0631.\"}', '1a16ee37-58e2-4a67-953a-d3bb90d6380c', 0.75, 90, '2022-08-25 04:34:41', '2022-09-03 00:54:08', 1, 0, 0.00, NULL, 0, 0.00),
(380, '{\"en\":\"CHICKEN BURGER\",\"ar\":\"\\u062f\\u062c\\u0640\\u0627\\u062c \\u0628\\u0640\\u0631\\u063a\\u0640\\u0631\"}', '{\"en\":\"Breasted Chicken with Cheese, Lettuces and Chips + Pepsi\",\"ar\":\"\\u0635\\u062f\\u0631 \\u062f\\u062c\\u0627\\u062c \\u0645\\u0639 \\u062c\\u0628\\u0646 \\u060c \\u062e\\u0633 \\u0648 \\u0628\\u0637\\u0627\\u0637 + \\u0628\\u064a\\u0628\\u0633\\u064a\"}', '6ef754b2-08e5-4cab-bead-cbdc6649d1a5', 2.25, 87, '2022-08-25 04:36:55', '2022-09-02 23:01:20', 1, 0, 0.00, NULL, 0, 0.00),
(381, '{\"en\":\"CHICKEN NUGGETS\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0646\\u0648\\u062c\\u064a\\u062a\\u0633\"}', '{\"en\":\"Deep fried cripsy chicken pieces served with Chips + Pepsi\",\"ar\":\"\\u0642\\u0637\\u0639 \\u062f\\u062c\\u0627\\u062c \\u0645\\u0642\\u0644\\u064a\\u0629 \\u064a\\u0642\\u062f\\u0645 \\u0645\\u0639 \\u0628\\u0637\\u0627\\u0637 + \\u0628\\u064a\\u0628\\u0633\\u064a\"}', '919a03b1-f5d1-40ce-acbc-47031d302c5b', 2.25, 87, '2022-08-25 04:37:13', '2022-09-02 23:01:37', 1, 0, 0.00, NULL, 0, 0.00),
(382, '{\"en\":\"HAMBERGER\",\"ar\":\"\\u0647\\u0645\\u0628\\u0631\\u063a\\u0631\"}', '{\"en\":\"Fried Sliced Beef with Cheese, Lettuces and Chips + Pepsi\",\"ar\":\"\\u0644\\u062d\\u0645 \\u0628\\u0642\\u0631 \\u0645\\u0642\\u0644\\u064a \\u0645\\u0639 \\u0634\\u0631\\u0627\\u0626\\u0639 \\u062e\\u0633 \\u0648 \\u062c\\u0628\\u0646 \\u060c \\u0628\\u0637\\u0627\\u0637 + \\u0628\\u064a\\u0628\\u0633\\u064a\"}', 'd7edb2a7-2d5a-4b23-80dc-20c6c8aa1e3c', 2.50, 87, '2022-08-25 04:37:30', '2022-09-02 23:01:49', 1, 0, 0.00, NULL, 0, 0.00),
(383, '{\"en\":\"PENNE ITALIANA\",\"ar\":\"\\u0628\\u064a\\u0646\\u064a \\u0625\\u064a\\u062a\\u0627\\u0644\\u064a\\u0627\\u0646\\u0627\"}', '{\"en\":\"Penne with pink sauce topped with cherry tomatoes, mushrooms and parmesan cheese.\",\"ar\":\"\\u0628\\u064a\\u0646\\u064a \\u0645\\u0639 \\u0635\\u0648\\u0635 \\u0628\\u064a\\u0646\\u0643\\u060c \\u0637\\u0645\\u0627\\u0637\\u0645 \\u0643\\u0631\\u0632\\u064a\\u0629 \\u0648 \\u0645\\u0634\\u0631\\u0648\\u0645 \\u0645\\u063a\\u0637\\u0627\\u0629 \\u0628\\u062c\\u0628\\u0646\\u0629 \\u0628\\u0627\\u0631\\u0645\\u064a\\u0632\\u0627\\u0646\"}', '509ff030-6a8d-4f65-bf86-d422e4f9724a', 2.95, 83, '2022-08-25 04:41:14', '2022-09-03 01:06:54', 1, 1, 0.00, NULL, 1, 0.00),
(384, '{\"en\":\"WHITE PASTA\",\"ar\":\"\\u0645\\u0639\\u0643\\u0631\\u0648\\u0646\\u0629 \\u0628\\u064a\\u0636\\u0627\\u0621\"}', '{\"en\":\"Penne with creamy alfredo sauce topped with mushrooms and parmesan cheese.\",\"ar\":\"\\u0628\\u064a\\u0646\\u064a \\u0628\\u0627\\u0633\\u062a\\u0627 \\u0645\\u0639 \\u0635\\u0648\\u0635 \\u0627\\u0644\\u0641\\u0631\\u064a\\u062f\\u0648 \\u0648 \\u0645\\u0634\\u0631\\u0648\\u0645 \\u0645\\u063a\\u0637\\u0627\\u0629 \\u0628\\u062c\\u0628\\u0646\\u0629 \\u0628\\u0627\\u0631\\u0645\\u064a\\u0632\\u0627\\u0646\"}', '5b312825-1a48-430f-84f8-b571688c25a1', 3.25, 83, '2022-08-25 04:41:38', '2022-09-03 01:07:13', 1, 1, 0.00, NULL, 1, 0.00),
(385, '{\"en\":\"WHITE PASTA\"}', '{\"en\":\"Penne with creamy alfredo sauce topped with mushrooms and parmesan cheese.\"}', '4c16de72-4e11-4dcb-835d-a1a237ba1653', 3.25, 83, '2022-08-25 04:41:40', '2022-08-25 05:01:10', 1, 0, 0.00, '2022-08-25 05:01:10', 0, 0.00),
(386, '{\"en\":\"FRUIT SALAD\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0641\\u0648\\u0627\\u0643\\u0629\"}', '{\"en\":\"FRUIT SALAD\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0641\\u0648\\u0627\\u0643\\u0629\"}', '3d576de8-8704-431e-868a-e0b5b5560376', 1.25, 89, '2022-08-25 05:09:21', '2022-09-02 23:28:58', 1, 0, 0.00, NULL, 0, 0.00),
(387, '{\"en\":\"GAJAR HALWA\",\"ar\":\"\\u062d\\u0644\\u0648\\u0627\\u0621 \\u0627\\u0644\\u062c\\u0632\\u0631\"}', '{\"en\":\"GAJAR HALWA\",\"ar\":\"\\u062d\\u0644\\u0648\\u0627\\u0621 \\u0627\\u0644\\u062c\\u0632\\u0631\"}', '73061d02-3ad4-49d0-b875-b9099f85a482', 1.25, 89, '2022-08-25 05:09:43', '2022-09-02 23:29:12', 1, 0, 0.00, NULL, 0, 0.00),
(388, '{\"en\":\"GULAB JAMUN\",\"ar\":\"\\u062c\\u0648\\u0644\\u0627\\u0628 \\u062c\\u0627\\u0645\\u0648\\u0646\"}', '{\"en\":\"GULAB JAMUN\",\"ar\":\"\\u062c\\u0648\\u0644\\u0627\\u0628 \\u062c\\u0627\\u0645\\u0648\\u0646\"}', '95ddd930-e136-49fe-a3fd-95ab08539a56', 0.95, 89, '2022-08-25 05:09:59', '2022-09-02 23:29:24', 1, 0, 0.00, NULL, 0, 0.00),
(389, '{\"en\":\"LABAN\",\"ar\":\"\\u0644\\u0627\\u0628\\u0627\\u0646\"}', '{\"en\":\"LABAN\",\"ar\":\"\\u0644\\u0627\\u0628\\u0627\\u0646\"}', 'c1d67080-fe68-4538-a453-a417d31f46b7', 0.95, 89, '2022-08-25 05:10:15', '2022-09-02 23:20:42', 1, 0, 0.00, '2022-09-02 23:20:42', 0, 0.00),
(390, '{\"en\":\"LEMON MINT\",\"ar\":\"\\u0644\\u064a\\u0645\\u0648\\u0646 \\u0628\\u0627\\u0644\\u0646\\u0639\\u0646\\u0627\\u0639\"}', '{\"en\":\"LEMON MINT\",\"ar\":\"\\u0644\\u064a\\u0645\\u0648\\u0646 \\u0628\\u0627\\u0644\\u0646\\u0639\\u0646\\u0627\\u0639\"}', 'ae3738ec-902d-4ce8-9be2-21b06ff14264', 1.45, 89, '2022-08-25 05:10:32', '2022-09-02 23:20:51', 1, 0, 0.00, '2022-09-02 23:20:51', 0, 0.00),
(391, '{\"en\":\"ORANGE JUICE\",\"ar\":\"\\u0639\\u0635\\u064a\\u0631 \\u0628\\u0631\\u062a\\u0642\\u0627\\u0644\"}', '{\"en\":\"ORANGE JUICE\",\"ar\":\"\\u0639\\u0635\\u064a\\u0631 \\u0628\\u0631\\u062a\\u0642\\u0627\\u0644\"}', '5004a3b3-2a05-4a73-9574-9ebfcaf58cc5', 1.45, 89, '2022-08-25 05:10:47', '2022-09-02 23:20:57', 1, 0, 0.00, '2022-09-02 23:20:57', 0, 0.00),
(392, '{\"en\":\"OREO MILK SHAKE\",\"ar\":\"\\u0623\\u0648\\u0631\\u064a\\u0648 \\u062d\\u0644\\u064a\\u0628 \\u0634\\u064a\\u0643\"}', '{\"en\":\"OREO MILK SHAKE\",\"ar\":\"\\u0623\\u0648\\u0631\\u064a\\u0648 \\u062d\\u0644\\u064a\\u0628 \\u0634\\u064a\\u0643\"}', '36ed1308-1e17-4c63-a33a-6818a9cdcaf1', 1.45, 89, '2022-08-25 05:11:07', '2022-09-02 23:21:05', 1, 0, 0.00, '2022-09-02 23:21:05', 0, 0.00),
(393, '{\"en\":\"RAJDHANI MOCKTAILS\",\"ar\":\"\\u0645\\u0648\\u0643\\u062a\\u064a\\u0644 \\u0631\\u0627\\u062c\\u062f\\u0647\\u0627\\u0646\\u064a\"}', '{\"en\":\"RAJDHANI MOCKTAILS\",\"ar\":\"\\u0645\\u0648\\u0643\\u062a\\u064a\\u0644 \\u0631\\u0627\\u062c\\u062f\\u0647\\u0627\\u0646\\u064a\"}', 'f20dd424-24ea-424f-8380-7eb97aa67f45', 1.65, 89, '2022-08-25 05:11:22', '2022-09-02 23:21:12', 1, 0, 0.00, '2022-09-02 23:21:12', 0, 0.00),
(394, '{\"en\":\"APPLE WALDROF SALAD\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0623\\u0628\\u0644 \\u0648\\u0627\\u0644\\u062f\\u0631\\u0648\\u0641\"}', '{\"en\":\"APPLE WALDROF SALAD\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0623\\u0628\\u0644 \\u0648\\u0627\\u0644\\u062f\\u0631\\u0648\\u0641\"}', '79f913fe-ec13-4485-9fec-d8961af9911a', 2.50, 78, '2022-08-25 05:17:58', '2022-09-02 22:32:08', 1, 0, 0.00, NULL, 0, 0.00),
(395, '{\"en\":\"BEET ROOT SALAD\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0634\\u0645\\u0646\\u062f\\u0631\"}', '{\"en\":\"BEET ROOT SALAD\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0634\\u0645\\u0646\\u062f\\u0631\"}', 'b996e2c1-1b2b-4b7d-a12b-8c7b782ce3e3', 2.25, 78, '2022-08-25 05:18:14', '2022-09-02 22:32:20', 1, 0, 0.00, NULL, 0, 0.00),
(396, '{\"en\":\"CAESOR CHICKEN SALAD\",\"ar\":\"\\u0635\\u0644\\u0637\\u0629 \\u062f\\u062c\\u0627\\u062c \\u0642\\u064a\\u0635\\u0631\"}', '{\"en\":\"CAESOR CHICKEN SALAD\",\"ar\":\"\\u0635\\u0644\\u0637\\u0629 \\u062f\\u062c\\u0627\\u062c \\u0642\\u064a\\u0635\\u0631\"}', 'd0a6670e-960b-4f12-9130-2ba57d8c5fa0', 2.25, 78, '2022-08-25 05:18:33', '2022-08-25 05:23:05', 1, 0, 0.00, NULL, 0, 0.00),
(397, '{\"en\":\"CAESAR SALAD\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0642\\u064a\\u0635\\u0631\"}', '{\"en\":\"CAESAR SALAD\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0642\\u064a\\u0635\\u0631\"}', 'cac609e4-8a5c-4a95-957d-c2008e71293a', 1.95, 78, '2022-08-25 05:19:20', '2022-08-25 05:23:21', 1, 0, 0.00, NULL, 0, 0.00),
(398, '{\"en\":\"FATTOUSH SALAD\",\"ar\":\"\\u0641\\u062a\\u0648\\u0634\"}', '{\"en\":\"FATTOUSH SALAD\",\"ar\":\"\\u0641\\u062a\\u0648\\u0634\"}', '29924702-175b-40a7-bfd1-3f1dbd9e47cf', 1.45, 78, '2022-08-25 05:19:38', '2022-09-02 22:32:56', 1, 0, 0.00, NULL, 0, 0.00),
(399, '{\"en\":\"GARDEN SALAD\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0627\\u0644\\u062d\\u062f\\u064a\\u0642\\u0629\"}', '{\"en\":\"GARDEN SALAD\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0627\\u0644\\u062d\\u062f\\u064a\\u0642\\u0629\"}', 'feaf2351-e450-4a23-944d-fb2073377c20', 1.45, 78, '2022-08-25 05:19:57', '2022-09-02 22:33:12', 1, 0, 0.00, NULL, 0, 0.00),
(400, '{\"en\":\"GREEN SALAD\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u062e\\u0636\\u0627\\u0631\"}', '{\"en\":\"GREEN SALAD\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u062e\\u0636\\u0627\\u0631\"}', '0c5bd097-a6c6-4510-ba59-5ebbac74e414', 1.45, 78, '2022-08-25 05:20:14', '2022-09-02 22:33:26', 1, 0, 0.00, NULL, 0, 0.00),
(401, '{\"en\":\"HAMMOUS\",\"ar\":\"\\u062d\\u0645\\u0635\"}', '{\"en\":\"HAMMOUS\",\"ar\":\"\\u062d\\u0645\\u0635\"}', '6b7d0e12-7dc5-4f70-a107-1005db1cc384', 1.45, 78, '2022-08-25 05:20:33', '2022-08-25 05:24:12', 1, 0, 0.00, NULL, 0, 0.00),
(402, '{\"en\":\"RAJDHANI DELIGHT\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u062f\\u064a\\u0644\\u0627\\u064a\\u062a \\u0631\\u0627\\u062c\\u062f\\u0627\\u0646\\u064a\"}', '{\"en\":\"RAJDHANI DELIGHT\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u062f\\u064a\\u0644\\u0627\\u064a\\u062a \\u0631\\u0627\\u062c\\u062f\\u0627\\u0646\\u064a\"}', '5230f8e2-6291-4b07-915d-a3ee78651f9e', 2.65, 78, '2022-08-25 05:20:55', '2022-09-02 22:33:43', 1, 0, 0.00, NULL, 0, 0.00),
(403, '{\"en\":\"SHRIMP COCKTAIL\",\"ar\":\"\\u0643\\u0648\\u0643\\u062a\\u064a\\u0644 \\u0631\\u0648\\u0628\\u064a\\u0627\\u0646\"}', '{\"en\":\"SHRIMP COCKTAIL\",\"ar\":\"\\u0643\\u0648\\u0643\\u062a\\u064a\\u0644 \\u0631\\u0648\\u0628\\u064a\\u0627\\u0646\"}', '36a62926-bcb1-45e8-b275-98e006d60067', 2.95, 78, '2022-08-25 05:21:12', '2022-09-02 22:33:54', 1, 0, 0.00, NULL, 0, 0.00),
(404, '{\"en\":\"TABBOULAH\",\"ar\":\"\\u062a\\u0628\\u0648\\u0644\\u0629\"}', '{\"en\":\"TABBOULAH\",\"ar\":\"\\u062a\\u0628\\u0648\\u0644\\u0629\"}', '8b54a61a-8b01-4a0e-9640-c428fbd5f16c', 1.45, 78, '2022-08-25 05:21:30', '2022-09-02 22:25:57', 1, 0, 0.00, NULL, 0, 0.00),
(405, '{\"en\":\"WINE LEAVES\",\"ar\":\"\\u0648\\u0631\\u0642 \\u0639\\u0646\\u0628\"}', '{\"en\":\"WINE LEAVES\",\"ar\":\"\\u0648\\u0631\\u0642 \\u0639\\u0646\\u0628\"}', 'd087785c-67cc-4157-a9e8-d51837b44555', 1.85, 78, '2022-08-25 05:21:43', '2022-09-02 22:34:09', 1, 0, 0.00, NULL, 0, 0.00),
(406, '{\"en\":\"YOUGHURT SALAD\",\"ar\":\"\\u0631\\u0648\\u0628 \\u0628\\u0627\\u0644\\u062e\\u064a\\u0627\\u0631\"}', '{\"en\":\"YOUGHURT SALAD\",\"ar\":\"\\u0631\\u0648\\u0628 \\u0628\\u0627\\u0644\\u062e\\u064a\\u0627\\u0631\"}', '50a77f49-f5fd-465a-b81e-7f2fa5800a9b', 1.25, 78, '2022-08-25 05:22:01', '2022-09-02 22:34:21', 1, 0, 0.00, NULL, 0, 0.00),
(407, '{\"en\":\"CHICKEN ACHARI TIKKA\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0623\\u0634\\u0640\\u0627\\u0631\\u064a \\u062a\\u0643\\u0627\"}', '{\"en\":\"Boneless pcs of chicken marinated mango pickle selected spice, grilled on charcoal fire, served on sizzling (8 pcs)\",\"ar\":\"\\u0642\\u0637\\u0639 \\u0628\\u062f\\u0648\\u0646 \\u0639\\u0638\\u0645 \\u0645\\u0646 \\u062f\\u062c\\u0627\\u062c \\u0645\\u0646\\u0642\\u0648\\u0639 \\u0641\\u064a \\u0645\\u062e\\u0644\\u0644 \\u0645\\u0627\\u0646\\u062c\\u0648 \\u0648\\u062a\\u0648\\u0627\\u0628\\u0644 \\u0645\\u062e\\u062a\\u0627\\u0631\\u0629 \\u060c \\u0645\\u0634\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0641\\u062d\\u0645 \\u060c \\u064a\\u0642\\u062f\\u0645 \\u0645\\u0646 \\u0633\\u064a\\u0632\\u0644\\u0631\"}', '5d59e9e0-cf1d-49cf-9351-ad725c6efd02', 2.95, 88, '2022-08-25 05:28:01', '2022-09-03 06:48:28', 1, 0, 0.00, NULL, 0, 0.00),
(408, '{\"en\":\"CHICKEN GARLIC TIKKA\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u062a\\u0643\\u0627 \\u0628\\u0627\\u0644\\u062b\\u0648\\u0645\"}', '{\"en\":\"Boneless pcs of chicken marinated overnight, fresh garlic, lemon juice, spices grilled on charcoal, served on sizzling\",\"ar\":\"\\u0642\\u0637\\u0639 \\u0628\\u062f\\u0648\\u0646 \\u0639\\u0638\\u0645 \\u0645\\u0646 \\u062f\\u062c\\u0627\\u062c \\u0645\\u063a\\u0637\\u064a\\u060c \\u062b\\u0648\\u0645 \\u0637\\u0627\\u0632\\u062c \\u060c \\u0639\\u0635\\u064a\\u0631 \\u0644\\u064a\\u0645\\u0648\\u0646\\u060c \\u0642\\u0637\\u0639 \\u0645\\u0646 \\u062f\\u062c\\u0627\\u062c \\u0645\\u0634\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0641\\u062d\\u0645\\u060c \\u062a\\u0642\\u0645 \\u0639\\u0644\\u0649 \\u0633\\u064a\\u0632\\u0644\\u0631\"}', 'c7e50276-07ff-4281-a097-764c7d2c3f3c', 2.95, 88, '2022-08-25 05:28:22', '2022-09-03 06:48:53', 1, 0, 0.00, NULL, 0, 0.00),
(409, '{\"en\":\"CHICKEN SEEKH KABAB\",\"ar\":\"\\u0643\\u0628\\u0627\\u0628 \\u0633\\u064a\\u062e \\u062f\\u062c\\u0627\\u062c\"}', '{\"en\":\"CHICKEN SEEKH KABAB\",\"ar\":\"\\u0643\\u0628\\u0627\\u0628 \\u0633\\u064a\\u062e \\u062f\\u062c\\u0627\\u062c\"}', '9f9a628e-23d0-48fb-85ab-f1e1491a1242', 2.95, 88, '2022-08-25 05:28:59', '2022-09-03 06:49:10', 1, 0, 0.00, NULL, 0, 0.00),
(410, '{\"en\":\"CHICKEN TANDOORI\",\"ar\":\"\\u062a\\u0646\\u062f\\u0648\\u0631\\u064a \\u062f\\u062c\\u0627\\u062c\"}', '{\"en\":\"Joint chicken marinated yoghurt selected spice. Grilled on charcoal\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0628\\u0627\\u0644\\u0631\\u0648\\u0628 \\u0645\\u0639 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u062a\\u0648\\u0627\\u0628\\u0644 . \\u0645\\u0634\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0646\\u0627\\u0631 \\u0627\\u0644\\u0641\\u062d\\u0645\"}', '028de2eb-3834-4c98-9567-9dc2cf247b38', 2.25, 88, '2022-08-25 05:29:20', '2022-09-03 06:49:28', 1, 1, 0.00, NULL, 0, 0.00),
(411, '{\"en\":\"CHICKEN TIKKA\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u062a\\u0643\\u0627\"}', '{\"en\":\"Boneless pcs of chicken marinated indian spices and youghurt, grilled on charcoal fire\",\"ar\":\"\\u0642\\u0637\\u0639 \\u0628\\u062f\\u0648\\u0646 \\u0639\\u0638\\u0645 \\u0645\\u0646 \\u0623\\u0646\\u0648\\u0627\\u0639 \\u0647\\u0646\\u062f\\u064a\\u0629 \\u0645\\u0646 \\u062f\\u062c\\u0627\\u062c \\u0645\\u063a\\u0645\\u0633 \\u0628\\u0627\\u0644\\u0648\\u0628 \\u060c \\u0645\\u0634\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0641\\u062d\\u0645\"}', 'e09b0c71-1a50-4147-a738-42d8265dd6e0', 2.95, 88, '2022-08-25 05:29:40', '2022-09-03 06:49:47', 1, 0, 0.00, NULL, 0, 0.00),
(412, '{\"en\":\"MALAI TIKKA\",\"ar\":\"\\u0645\\u0640\\u0644\\u0627\\u064a \\u062a\\u0643\\u0640\\u0627\"}', '{\"en\":\"MALAI TIKKA\",\"ar\":\"\\u0645\\u0640\\u0644\\u0627\\u064a \\u062a\\u0643\\u0640\\u0627\"}', '69ab88d1-2b27-476a-9508-fee0113969b0', 2.95, 88, '2022-08-25 05:30:02', '2022-09-03 06:50:08', 1, 0, 0.00, NULL, 0, 0.00),
(413, '{\"en\":\"RAJDHANI MIX GRILLS\",\"ar\":\"\\u0631\\u0627\\u062c\\u062f\\u0627\\u0646\\u064a \\u0645\\u0634\\u0648\\u064a \\u0645\\u0634\\u0643\\u0644\"}', '{\"en\":\"Combination of chicken tikka, kabab, shrimps, one piece of TD chicken grilled on charcoal, served with french fries.\",\"ar\":\"\\u062e\\u0644\\u064a\\u0637 \\u0645\\u0646 \\u062f\\u062c\\u0627\\u062c \\u062a\\u0643\\u0627 \\u060c \\u0643\\u0628\\u0627\\u0628 \\u060c \\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u060c \\u062f\\u062c\\u0627\\u062c \\u0642\\u0637\\u0639 \\u0648\\u0627\\u062d\\u062f\\u0629\\u060c \\u0645\\u0634\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0641\\u062d\\u0645 \\u0648 \\u062a\\u0642\\u062f\\u0645 \\u0645\\u0639 \\u0628\\u0637\\u0627\\u0637 \\u0645\\u0642\\u0644\\u064a\"}', '5cfd415c-0013-4fbb-9004-71bb7a80a974', 4.95, 88, '2022-08-25 05:30:18', '2022-09-03 06:50:27', 1, 0, 0.00, NULL, 0, 0.00),
(414, '{\"en\":\"MUTTON SEEKH KABAB\",\"ar\":\"\\u0643\\u0628\\u0627\\u0628 \\u0633\\u064a\\u062e \\u0644\\u062d\\u0645 \\u0636\\u0627\\u0646\"}', '{\"en\":\"MUTTON SEEKH KABAB\",\"ar\":\"\\u0643\\u0628\\u0627\\u0628 \\u0633\\u064a\\u062e \\u0644\\u062d\\u0645 \\u0636\\u0627\\u0646\"}', '6070a7fa-3b60-4524-bd6a-6adb52f80461', 3.25, 88, '2022-08-25 05:30:40', '2022-09-03 06:50:45', 1, 0, 0.00, NULL, 0, 0.00),
(415, '{\"en\":\"TANDOORI FISH TIKKA\",\"ar\":\"\\u062a\\u0643\\u0627\\u0633\\u0645\\u0643 \\u062a\\u0646\\u062f\\u0648\\u0631\\u064a\"}', '{\"en\":\"Boneless pcs of fish marinated Indian masala, yoghurt, grilled on charcoal, served with mint sauce\",\"ar\":\"\\u0642\\u0637\\u0639 \\u0628\\u062f\\u0648\\u0646 \\u0639\\u0638\\u0645 \\u0645\\u0646 \\u0633\\u0645\\u0643 \\u0645\\u0646\\u0642\\u0639 \\u0641\\u064a \\u062a\\u0648\\u0627\\u0628\\u0644 \\u0647\\u0646\\u062f\\u064a\\u0629 \\u060c \\u0631\\u0648\\u0628 \\u0645\\u0634\\u0648\\u064a \\u0639\\u0644\\u064a \\u0627\\u0644\\u0641\\u062d\\u0645 \\u0648 \\u064a\\u0642\\u062f\\u0645 \\u0635\\u0644\\u0635\\u0629 \\u0646\\u0639\\u0646\\u0627\\u0639\"}', 'ab81a42d-657b-4803-9e82-8849d9ad1716', 3.75, 88, '2022-08-25 05:31:00', '2022-09-03 06:51:39', 1, 0, 0.00, NULL, 0, 0.00),
(416, '{\"en\":\"TANDOORI PRAWN\",\"ar\":\"\\u062a\\u0646\\u062f\\u0648\\u0631\\u064a \\u0631\\u0648\\u064a\\u0628\\u0627\\u0646\"}', '{\"en\":\"Jumbo shrimps marinated Indian spiced and selected masala, cooked on charcoal fire, served on sizzling\",\"ar\":\"\\u0631\\u0648\\u0628\\u06cc\\u0627\\u0646 \\u062c\\u0627\\u0645\\u0628\\u0648 \\u0645\\u0646\\u0642\\u0648\\u0639 \\u0641\\u064a \\u062a\\u0648\\u0627\\u0628\\u0644 \\u0647\\u0646\\u062f\\u064a\\u0629 \\u0648\\u062a\\u0648\\u0627\\u0628\\u0644 \\u0645\\u062e\\u062a\\u0627\\u0631\\u0629 \\u0645\\u0637\\u0628\\u0648\\u0639 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0641\\u062d\\u0645 \\u0648 \\u062a\\u0642\\u062f\\u0645 \\u0633\\u064a\\u0632\\u0644\\u0631\"}', 'a2b207db-812c-4c3d-bec2-0c68b6beec91', 4.75, 88, '2022-08-25 05:31:19', '2022-09-03 06:51:24', 1, 0, 0.00, NULL, 0, 0.00),
(417, '{\"en\":\"TANDOORI ZUBAIDI\",\"ar\":\"\\u062a\\u0646\\u062f\\u0648\\u0631\\u064a \\u0632\\u0628\\u064a\\u062f\\u064a\"}', '{\"en\":\"A whole zubaidi marinated in Indian spices and yoghurt, cooked in charcoal fire served with sizzling\",\"ar\":\"\\u0632\\u0628\\u064a\\u062f\\u064a \\u0643\\u0627\\u0645\\u0644 \\u0645\\u0646\\u0642\\u0648\\u0639 \\u0641\\u064a \\u0627\\u0644\\u062a\\u0648\\u0627\\u0628\\u0644 \\u0647\\u0646\\u062f\\u064a\\u0629 \\u060c \\u0631\\u0648\\u0628 . \\u0645\\u0637\\u0628\\u0648\\u0639 \\u0639\\u0644\\u064a \\u0627\\u0644\\u0641\\u062d\\u0645 \\u064a\\u0642\\u062f\\u0645 \\u0633\\u064a\\u0632\\u0644\\u0631\"}', '0f637cd9-df40-4793-9b3d-cfac8da06c2f', 4.45, 88, '2022-08-25 05:31:37', '2022-09-03 06:51:53', 1, 0, 0.00, NULL, 0, 0.00),
(418, '{\"en\":\"TANDOORI ZUBAIDI\"}', '{\"en\":\"TANDOORI ZUBAIDI\"}', '3561b68b-203f-4a96-a90f-b3b26f2707a6', 4.45, 88, '2022-08-25 05:31:37', '2022-08-25 05:34:39', 1, 0, 0.00, '2022-08-25 05:34:39', 0, 0.00),
(419, '{\"en\":\"BAIGAN BHARTA\",\"ar\":\"\\u0628\\u0627\\u0630\\u0646\\u062c\\u0627\\u0646 \\u0645\\u0633\\u0627\\u0644\\u0627\"}', '{\"en\":\"Smoked eggplant smashed and cooked with fresh tomato, ginger and coriander mild spice\",\"ar\":\"\\u0628\\u0627\\u0630\\u0646\\u062c\\u0627\\u0646 \\u0645\\u062f\\u062e\\u0646 \\u0645\\u0647\\u0631\\u0648\\u0633 \\u0648 \\u0645\\u0637\\u0628\\u0648\\u0639 \\u0645\\u0639 \\u0645\\u0637\\u0645\\u0627\\u0637\\u0645\\u060c \\u0632\\u0646\\u062c\\u0628\\u064a\\u0644 \\u0637\\u0627\\u0632\\u062c\\u060c \\u062b\\u0648\\u0645\\u060c \\u0643\\u0632\\u0628\\u0631\\u0629 \\u0648 \\u062a\\u0648\\u0627\\u0628\\u0644 \\u062e\\u0641\\u064a\\u0641\\u0629\"}', '8fce9314-68ea-483b-a809-bd2957ba701f', 2.45, 86, '2022-08-25 05:36:46', '2022-09-03 06:22:41', 1, 1, 0.00, NULL, 1, 0.00),
(420, '{\"en\":\"JEERA ALOO\",\"ar\":\"\\u0628\\u0637\\u0627\\u0637 \\u0628\\u0627\\u0644\\u0643\\u0645\\u0648\\u0646\"}', '{\"en\":\"JEERA ALOO\",\"ar\":\"\\u0628\\u0637\\u0627\\u0637 \\u0628\\u0627\\u0644\\u0643\\u0645\\u0648\\u0646\"}', 'ea6d003c-4181-4525-ac14-dcbae0da7e6d', 2.25, 86, '2022-08-25 05:37:03', '2022-09-03 06:22:56', 1, 1, 0.00, NULL, 1, 0.00),
(421, '{\"en\":\"KADAI SABJI\",\"ar\":\"\\u0643\\u062f\\u0627\\u064a \\u062e\\u0636\\u0631\\u0648\\u0627\\u062a\"}', '{\"en\":\"Assorted vegetables cooked with combination of Indian herbs and spices\",\"ar\":\"\\u062e\\u0636\\u0627\\u0631 \\u0645\\u0634\\u0643\\u0644 \\u0645\\u0637\\u0628\\u0648\\u062e \\u0645\\u0639 \\u0645\\u062c\\u0645\\u0648\\u0639\\u0629 \\u0645\\u0646 \\u0639\\u0634\\u0627\\u0628 \\u0648 \\u062a\\u0648\\u0627\\u0628\\u0644 \\u0647\\u0646\\u062f\\u064a\\u0629.\"}', '98559be9-6970-470d-8516-e35612da3d08', 2.45, 86, '2022-08-25 05:41:04', '2022-09-03 06:23:14', 1, 1, 0.00, NULL, 1, 0.00),
(422, '{\"en\":\"SHAHI GOBHI\",\"ar\":\"\\u0634\\u0627\\u0647\\u064a \\u0628\\u0637\\u0627\\u0637\\u0633 \\u062c\\u0648\\u0628\\u064a\"}', '{\"en\":\"SHAHI GOBHI\",\"ar\":\"\\u0634\\u0627\\u0647\\u064a \\u0628\\u0637\\u0627\\u0637\\u0633 \\u062c\\u0648\\u0628\\u064a\"}', '52c95e72-e301-46cf-a44e-033e1f435dca', 2.25, 86, '2022-08-25 05:41:51', '2022-09-03 06:23:34', 1, 1, 0.00, NULL, 1, 0.00);
INSERT INTO `items` (`id`, `name`, `description`, `image`, `price`, `category_id`, `created_at`, `updated_at`, `available`, `has_variants`, `vat`, `deleted_at`, `enable_system_variants`, `discounted_price`) VALUES
(423, '{\"en\":\"PANEER SAAGWALA\",\"ar\":\"\\u0628\\u0627\\u0646\\u064a\\u0631 \\u0633\\u0627\\u063a\\u0648\\u0627\\u0644\\u0627\"}', '{\"en\":\"Cubes of cottage cheese cooked with fresh spinach and Indian Spices\",\"ar\":\"\\u0645\\u0643\\u0639\\u0628\\u0627\\u062a \\u062c\\u0628\\u0646 \\u0645\\u0637\\u0628\\u0648\\u063a \\u0645\\u0639 \\u0633\\u0628\\u0627\\u0646\\u063a \\u0637\\u0627\\u0632\\u062c \\u0648 \\u062a\\u0648\\u0627\\u0628\\u0644 \\u0647\\u0646\\u062f\\u064a\\u0629.\"}', 'd4c60a79-d183-4d04-acab-95afbf35fc18', 2.75, 86, '2022-08-25 05:42:22', '2022-09-03 06:23:58', 1, 1, 0.00, NULL, 1, 0.00),
(424, '{\"en\":\"French Fries\",\"ar\":\"\\u0628\\u0637\\u0627\\u0637\\u0627 \\u0645\\u0642\\u0644\\u064a\\u0629\"}', '{\"en\":\"French Fries\",\"ar\":\"\\u0628\\u0637\\u0627\\u0637\\u0627 \\u0645\\u0642\\u0644\\u064a\\u0629\"}', '3298b1df-75f9-429e-8edc-35a12925a306', 1.00, 91, '2022-08-26 01:08:27', '2022-08-26 01:09:15', 1, 0, 0.00, NULL, 0, 0.00),
(425, '{\"en\":\"Sizzling Mushroom\",\"ar\":\"\\u0633\\u064a\\u0632\\u0644\\u0646\\u062c \\u0645\\u0634\\u0631\\u0648\\u0645\"}', '{\"en\":\"Sizzling Mushroom\",\"ar\":\"\\u0633\\u064a\\u0632\\u0644\\u0646\\u062c \\u0645\\u0634\\u0631\\u0648\\u0645\"}', '1ced1d99-0361-472a-a6cc-79aa30937d09', 2.35, 91, '2022-08-26 01:10:45', '2022-08-26 01:28:15', 1, 0, 0.00, NULL, 0, 0.00),
(426, '{\"en\":\"Chicken Honey Wings\",\"ar\":\"\\u0627\\u062c\\u0646\\u062d\\u0629 \\u0627\\u0644\\u062f\\u062c\\u0627\\u062c \\u0628\\u0627\\u0644\\u0639\\u0633\\u0644\"}', '{\"en\":\"Chicken Honey Wings\",\"ar\":\"\\u0627\\u062c\\u0646\\u062d\\u0629 \\u0627\\u0644\\u062f\\u062c\\u0627\\u062c \\u0628\\u0627\\u0644\\u0639\\u0633\\u0644\"}', 'fd95d761-dfd3-41b8-a444-9f01df3e0a0f', 2.85, 91, '2022-08-26 01:12:02', '2022-08-26 01:12:44', 1, 0, 0.00, NULL, 0, 0.00),
(427, '{\"en\":\"Chicken Nuggets\",\"ar\":\"\\u0646\\u0627\\u062c\\u062a\\u0633 \\u062f\\u062c\\u0627\\u062c\"}', '{\"en\":\"Chicken Nuggets\",\"ar\":\"\\u0646\\u0627\\u062c\\u062a\\u0633 \\u062f\\u062c\\u0627\\u062c\"}', '65ef4f6b-2c68-44dc-ac07-cb3b20f08d66', 1.50, 91, '2022-08-26 01:13:54', '2022-08-26 01:14:23', 1, 0, 0.00, NULL, 0, 0.00),
(428, '{\"en\":\"Honey Sesame Prawn\",\"ar\":\"\\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u0628\\u0627\\u0644\\u0639\\u0633\\u0644 \\u0648 \\u0627\\u0644\\u0633\\u0645\\u0633\\u0645\"}', '{\"en\":\"Honey Sesame Prawn\",\"ar\":\"\\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u0628\\u0627\\u0644\\u0639\\u0633\\u0644 \\u0648 \\u0627\\u0644\\u0633\\u0645\\u0633\\u0645\"}', '6ccc43e7-e95d-4542-a7c6-f57918bece5d', 3.00, 91, '2022-08-26 01:15:47', '2022-08-26 01:16:18', 1, 0, 0.00, NULL, 0, 0.00),
(429, '{\"en\":\"French Fries With Cheese\",\"ar\":\"\\u0628\\u0637\\u0627\\u0637\\u0627 \\u0645\\u0642\\u0644\\u064a\\u0629 \\u0628\\u0627\\u0644\\u062c\\u0628\\u0646\"}', '{\"en\":\"French Fries With Cheese\",\"ar\":\"\\u0628\\u0637\\u0627\\u0637\\u0627 \\u0645\\u0642\\u0644\\u064a\\u0629 \\u0628\\u0627\\u0644\\u062c\\u0628\\u0646\"}', '7626c240-9be9-4074-95f7-20a2a1f16c17', 1.40, 91, '2022-08-26 01:17:17', '2022-08-26 01:17:49', 1, 0, 0.00, NULL, 0, 0.00),
(430, '{\"en\":\"Crispy Mushroom\",\"ar\":\"\\u0645\\u0634\\u0631\\u0648\\u0645 \\u0645\\u0642\\u0631\\u0645\\u0634\"}', '{\"en\":\"12 pieces.\",\"ar\":\"\\u0642\\u0637\\u0639 - 12\"}', 'a54f2a11-2cb9-4fe0-a1f8-f0183e11baa8', 1.15, 91, '2022-08-26 01:19:12', '2022-08-26 01:20:24', 1, 0, 0.00, NULL, 0, 0.00),
(431, '{\"en\":\"Fish Biryani\",\"ar\":\"\\u0628\\u0631\\u064a\\u0627\\u0646\\u064a \\u0633\\u0645\\u0643\"}', '{\"en\":\"Boneless pcs of fish cooked with indian basmati rice and spices, garnished on green coriander and fried onion served with biryani gravy.\",\"ar\":\"\\u0642\\u0637\\u0639 \\u0645\\u0646 \\u0627\\u0644\\u0639\\u0638\\u0645 \\u0645\\u0646 \\u0627\\u0644\\u0633\\u0645\\u0643 \\u0627\\u0644\\u0645\\u0637\\u0628\\u0648\\u062e \\u0645\\u0639 \\u0623\\u0631\\u0632 \\u0627\\u0644\\u0628\\u0633\\u0645\\u062a\\u064a \\u0627\\u0644\\u0647\\u0646\\u062f\\u064a \\u0648\\u0627\\u0644\\u062a\\u0648\\u0627\\u0628\\u0644\\u060c \\u0645\\u0632\\u064a\\u0646\\u0629 \\u0628\\u0627\\u0644\\u0643\\u0632\\u0628\\u0631\\u0629 \\u0627\\u0644\\u062e\\u0636\\u0631\\u0627\\u0621 \\u0648\\u0627\\u0644\\u0628\\u0635\\u0644 \\u0627\\u0644\\u0645\\u0642\\u0644\\u064a \\u062a\\u0642\\u062f\\u0645 \\u0645\\u0639 \\u0645\\u0631\\u0642 \\u0627\\u0644\\u0628\\u0631\\u064a\\u0627\\u0646\\u064a\"}', 'a06921d1-3849-4933-8972-bef07d75d1e3', 2.50, 72, '2022-08-26 01:23:14', '2022-08-26 01:24:55', 1, 0, 0.00, NULL, 0, 0.00),
(432, '{\"en\":\"Vegetable Biryani\"}', '{\"en\":\"Assorted seasonal vegetables cooked in saffron flavored basmati rice (comes with gravy,and raita vegetable)\"}', '289d0a20-f45c-47bb-ac31-28dd6f335980', 2.00, 72, '2022-08-26 01:27:06', '2022-08-26 01:27:06', 1, 0, 0.00, NULL, 0, 0.00),
(433, '{\"en\":\"Vegetable Biryani\",\"ar\":\"\\u0628\\u0640\\u0631\\u064a\\u0640\\u0627\\u0646\\u0640\\u0640\\u064a \\u062e\\u0636\\u0631\\u0627\\u0648\\u0627\\u062a\"}', '{\"en\":\"Assorted seasonal vegetables cooked in saffron flavored basmati rice (comes with gravy,and raita vegetable)\",\"ar\":\"\\u0628\\u0640\\u0631\\u064a\\u0640\\u0627\\u0646\\u0640\\u0640\\u064a \\u062e\\u0636\\u0631\\u0627\\u0648\\u0627\\u062a\"}', '05be3e84-ad07-4e66-905e-93ea1dc9cd5a', 2.00, 72, '2022-08-26 01:27:06', '2022-08-26 01:27:55', 1, 0, 0.00, NULL, 0, 0.00),
(434, '{\"en\":\"Chicken Cashew\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0628\\u0627\\u0644\\u0643\\u0627\\u062c\\u0648\"}', '{\"en\":\"Chicken Cashew\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0628\\u0627\\u0644\\u0643\\u0627\\u062c\\u0648\"}', 'a4ab1fed-4f3d-4524-8459-35a78804c6a6', 2.75, 74, '2022-08-26 01:31:00', '2022-08-26 01:32:09', 1, 0, 0.00, NULL, 0, 0.00),
(435, '{\"en\":\"Mix Fried Rice\",\"ar\":\"\\u0627\\u0631\\u0632 \\u0645\\u0642\\u0644\\u064a \\u0645\\u0643\\u0633\"}', '{\"en\":\"Mix Fried Rice\",\"ar\":\"\\u0627\\u0631\\u0632 \\u0645\\u0642\\u0644\\u064a \\u0645\\u0643\\u0633\"}', 'c763fee2-2a2f-4ad9-867c-131fa6da5f84', 1.95, 74, '2022-08-26 01:34:09', '2022-08-26 01:34:57', 1, 0, 0.00, NULL, 0, 0.00),
(436, '{\"en\":\"Chili Chicken\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0628\\u0627\\u0644\\u0641\\u0644\\u0641\\u0644 \\u0627\\u0644\\u062d\\u0627\\u0631\"}', '{\"en\":\"Chili Chicken\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0628\\u0627\\u0644\\u0641\\u0644\\u0641\\u0644 \\u0627\\u0644\\u062d\\u0627\\u0631\"}', '00e68ce0-5186-4ad6-85c4-eb0e204fcc47', 2.00, 74, '2022-08-26 01:36:31', '2022-08-26 01:37:13', 1, 0, 0.00, NULL, 0, 0.00),
(437, '{\"en\":\"Chicken Fried Rice\",\"ar\":\"\\u0627\\u0631\\u0632 \\u0645\\u0642\\u0644\\u064a \\u0628\\u0627\\u0644\\u062f\\u062c\\u0627\\u062c\"}', '{\"en\":\"Chicken Fried Rice\",\"ar\":\"\\u0627\\u0631\\u0632 \\u0645\\u0642\\u0644\\u064a \\u0628\\u0627\\u0644\\u062f\\u062c\\u0627\\u062c\"}', '0478673b-3e9f-46fe-936c-d39f2c185ee7', 2.00, 74, '2022-08-26 01:38:17', '2022-08-26 01:39:02', 1, 0, 0.00, NULL, 0, 0.00),
(438, '{\"en\":\"Chicken Hakka Noodles\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0647\\u0627\\u0643\\u0627 \\u0646\\u0648\\u062f\\u0644\\u064a\\u0632\"}', '{\"en\":\"Chicken Hakka Noodles\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0647\\u0627\\u0643\\u0627 \\u0646\\u0648\\u062f\\u0644\\u064a\\u0632\"}', '44fe864b-4646-4b3c-9fc6-74ce7a414059', 1.95, 74, '2022-08-26 01:41:08', '2022-08-26 01:44:00', 1, 0, 0.00, NULL, 0, 0.00),
(439, '{\"en\":\"Green Salad\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u062e\\u0636\\u0631\\u0627\\u0621\"}', '{\"en\":\"Green Salad\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u062e\\u0636\\u0631\\u0627\\u0621\"}', 'd721c1f2-e997-4caa-b06d-566b15a5f891', 1.00, 92, '2022-08-26 19:27:29', '2022-08-26 19:32:00', 1, 0, 0.00, NULL, 0, 0.00),
(440, '{\"en\":\"Garden Salad\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u062c\\u0627\\u0631\\u062f\\u0646\"}', '{\"en\":\"Garden Salad\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u062c\\u0627\\u0631\\u062f\\u0646\"}', '2e91f0fe-6af3-4a42-b362-66733d87b3de', 1.25, 92, '2022-08-26 19:28:19', '2022-08-26 19:32:27', 1, 0, 0.00, NULL, 0, 0.00),
(441, '{\"en\":\"Yogurt Salad\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0632\\u0628\\u0627\\u062f\\u0649\"}', '{\"en\":\"Yogurt Salad\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0632\\u0628\\u0627\\u062f\\u0649\"}', 'a3d5ab20-dbdc-4640-a098-3ee0ce7b6c81', 1.10, 92, '2022-08-26 19:29:02', '2022-08-26 19:32:56', 1, 0, 0.00, NULL, 0, 0.00),
(442, '{\"en\":\"Mayonnaise Salad\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0645\\u0627\\u064a\\u0648\\u0646\\u064a\\u0632\"}', '{\"en\":\"Mayonnaise Salad\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0645\\u0627\\u064a\\u0648\\u0646\\u064a\\u0632\"}', '4e989f07-4ef1-4271-8f44-eb56cb0e658e', 1.25, 92, '2022-08-26 19:29:57', '2022-08-26 19:33:30', 1, 0, 0.00, NULL, 0, 0.00),
(443, '{\"en\":\"Muttabal Salad\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0645\\u062a\\u0628\\u0644\"}', '{\"en\":\"Muttabal Salad\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0645\\u062a\\u0628\\u0644\"}', 'f7ff8fcf-c758-4c64-abe3-8e1795cb6301', 1.20, 92, '2022-08-26 19:30:54', '2022-08-26 19:34:05', 1, 0, 0.00, NULL, 0, 0.00),
(444, '{\"en\":\"Chicken Corn Soup\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u0630\\u0631\\u0629 \\u0628\\u0627\\u0644\\u062f\\u062c\\u0627\\u062c\"}', '{\"en\":\"Chicken Corn Soup\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u0630\\u0631\\u0629 \\u0628\\u0627\\u0644\\u062f\\u062c\\u0627\\u062c\"}', '639a293b-c49b-4b73-a413-58c31795d504', 1.00, 93, '2022-08-26 19:35:47', '2022-08-26 21:10:03', 1, 0, 0.00, NULL, 0, 0.00),
(445, '{\"en\":\"Lentil Soup\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u0639\\u062f\\u0633\"}', '{\"en\":\"Lentil Soup\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u0639\\u062f\\u0633\"}', 'edab67bb-a4a1-4700-8306-ed2be111e5f9', 1.00, 93, '2022-08-26 19:36:19', '2022-08-26 21:10:35', 1, 0, 0.00, NULL, 0, 0.00),
(446, '{\"en\":\"Cream Of Mushroom Soup\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u0643\\u0631\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0641\\u0637\\u0631\"}', '{\"en\":\"Cream Of Mushroom Soup\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u0643\\u0631\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0641\\u0637\\u0631\"}', '471e2488-2cdb-4957-ab58-bae9dbc84412', 1.25, 93, '2022-08-26 19:36:59', '2022-08-26 21:11:01', 1, 0, 0.00, NULL, 0, 0.00),
(447, '{\"en\":\"Prawn Soup\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u0631\\u0648\\u0628\\u064a\\u0627\\u0646\"}', '{\"en\":\"Prawn Soup\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u0631\\u0648\\u0628\\u064a\\u0627\\u0646\"}', 'a46fcdaf-a857-407c-aeb8-0520217c459a', 1.45, 93, '2022-08-26 19:37:48', '2022-08-26 21:11:26', 1, 0, 0.00, NULL, 0, 0.00),
(448, '{\"en\":\"Cream Of Chicken Soup\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u0643\\u0631\\u064a\\u0645\\u0629 \\u0627\\u0644\\u062f\\u062c\\u0627\\u062c\"}', '{\"en\":\"Cream Of Chicken Soup\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u0643\\u0631\\u064a\\u0645\\u0629 \\u0627\\u0644\\u062f\\u062c\\u0627\\u062c\"}', 'fc783be3-d308-4b9f-919b-abf91c22f3a0', 1450.00, 93, '2022-08-26 19:38:33', '2022-08-26 21:11:49', 1, 0, 0.00, NULL, 0, 0.00),
(449, '{\"en\":\"BUTTER CHICKEN\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0628\\u0627\\u0644\\u0632\\u0628\\u062f\\u0629\"}', '{\"en\":\"Boneless pcs of chicken cooked in butter, cream and tomato gravy\",\"ar\":\"\\u0642\\u0637\\u0645 \\u0628\\u062f\\u0648\\u0646 \\u0639\\u0638\\u0645 \\u0645\\u0646 \\u062f\\u062c\\u0627\\u062c \\u0645\\u0637\\u0628\\u0648 \\u0641\\u064a \\u0627\\u0644\\u0632\\u0628\\u062f\\u0629\\u060c \\u0627\\u0644\\u0643\\u0631\\u064a\\u0645\\u0629 \\u0648\\u0627\\u0644\\u0637\\u0645\\u0627\\u0637\\u0645\"}', '294ddf72-85a0-4450-b5db-b6335735021d', 3.50, 82, '2022-08-26 22:33:09', '2022-09-03 07:10:19', 1, 1, 0.00, NULL, 1, 0.00),
(450, '{\"en\":\"KADAI\",\"ar\":\"\\u0643\\u0640\\u062f\\u0627\\u064a\"}', '{\"en\":\"KADAI\",\"ar\":\"\\u0643\\u0640\\u062f\\u0627\\u064a\"}', '52566299-6fa8-4aea-b857-9103b50768dd', 3.25, 82, '2022-08-26 22:33:25', '2022-09-03 07:10:37', 1, 1, 0.00, NULL, 1, 0.00),
(451, '{\"en\":\"CHICKEN KADAI\"}', '{\"en\":\"CHICKEN KADAI\"}', '5091c4d2-3f46-4d7f-99aa-98ac3cadd611', 3.50, 82, '2022-08-26 22:33:25', '2022-08-26 22:33:58', 1, 0, 0.00, '2022-08-26 22:33:58', 0, 0.00),
(452, '{\"en\":\"CHICKEN SAAGWALA\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0633\\u0627\\u062c\\u0648\\u0627\\u0644\\u0627\"}', '{\"en\":\"CHICKEN SAAGWALA\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0633\\u0627\\u062c\\u0648\\u0627\\u0644\\u0627\"}', '0d508885-c9bd-4979-bbce-8cd68a7d59d1', 3.50, 82, '2022-08-26 22:33:49', '2022-08-26 22:39:35', 1, 1, 0.00, NULL, 1, 0.00),
(453, '{\"en\":\"CHICKEN TIKKA LABABDAR\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u062a\\u0643\\u0627 \\u0644\\u0627\\u0628\\u0627\\u0628\\u062f\\u0627\\u0631\"}', '{\"en\":\"CHICKEN TIKKA LABABDAR\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u062a\\u0643\\u0627 \\u0644\\u0627\\u0628\\u0627\\u0628\\u062f\\u0627\\u0631\"}', 'bfe6ea5e-48dd-4d68-ad7f-ddca2e185fc1', 3.25, 82, '2022-08-26 22:34:39', '2022-09-03 07:11:26', 1, 1, 0.00, NULL, 1, 0.00),
(454, '{\"en\":\"KEEMA MUTTER\",\"ar\":\"\\u0645\\u0641\\u0631\\u0648\\u0645 \\u0645\\u0639 \\u0628\\u0627\\u0632\\u064a\\u0644\\u0627\"}', '{\"en\":\"KEEMA MUTTER\",\"ar\":\"\\u0645\\u0641\\u0631\\u0648\\u0645 \\u0645\\u0639 \\u0628\\u0627\\u0632\\u064a\\u0644\\u0627\"}', 'fd908fc1-93df-4f88-afdf-9844a7bbdf5b', 3.50, 82, '2022-08-26 22:34:57', '2022-09-03 07:11:44', 1, 1, 0.00, NULL, 1, 0.00),
(455, '{\"en\":\"MUTTON ROGAN JOSH\",\"ar\":\"\\u0631\\u0648\\u062c\\u0627\\u0646 \\u062c\\u0648\\u0634 \\u0644\\u062d\\u0645 \\u0627\\u0644\\u0636\\u0627\\u0646\"}', '{\"en\":\"Mutton rogan josh is from Kashmiri cuisine distinguished.\",\"ar\":\"\\u0644\\u062d\\u0645 \\u0636\\u0623\\u0646 \\u0631\\u0648\\u062c\\u0627\\u0646 \\u062c\\u0648\\u0634 \\u0645\\u0646 \\u0645\\u0637\\u0628\\u062e \\u0643\\u0634\\u0645\\u064a\\u0631\\u064a \\u0645\\u0645\\u064a\\u0632.\"}', 'e9d1e3c7-a607-414c-afad-184eb428f782', 3.50, 82, '2022-08-26 22:35:12', '2022-09-03 07:11:59', 1, 1, 0.00, NULL, 1, 0.00),
(456, '{\"en\":\"PRAWN KADAI\",\"ar\":\"\\u0631\\u0628\\u064a\\u0627\\u0646 \\u0643\\u0627\\u062f\\u0627\\u064a\"}', '{\"en\":\"PRAWN KADAI\",\"ar\":\"\\u0631\\u0628\\u064a\\u0627\\u0646 \\u0643\\u0627\\u062f\\u0627\\u064a\"}', '345ede9b-f166-4bcf-8e9a-a787feedad2d', 3.95, 82, '2022-08-26 22:35:28', '2022-08-26 22:40:24', 1, 1, 0.00, NULL, 1, 0.00),
(457, '{\"en\":\"PRAWN MAKAHNI\",\"ar\":\"\\u0631\\u0628\\u064a\\u0627\\u0646 \\u0645\\u0627\\u0643\\u0627\\u0647\\u0646\\u064a\"}', '{\"en\":\"PRAWN MAKAHNI\",\"ar\":\"\\u0631\\u0628\\u064a\\u0627\\u0646 \\u0645\\u0627\\u0643\\u0627\\u0647\\u0646\\u064a\"}', 'd7b48864-91fe-4d0c-89c6-70ee73186681', 3.75, 82, '2022-08-26 22:35:43', '2022-08-26 22:40:36', 1, 1, 0.00, NULL, 1, 0.00),
(458, '{\"en\":\"BEEF SIZZLER\",\"ar\":\"\\u0628\\u064a\\u0641 \\u0633\\u064a\\u0632\\u0644\\u0631\"}', '{\"en\":\"BEEF SIZZLER\",\"ar\":\"\\u0628\\u064a\\u0641 \\u0633\\u064a\\u0632\\u0644\\u0631\"}', '765337df-b934-4e33-a530-bb5d6a9f7c2f', 5.45, 81, '2022-08-26 22:42:11', '2022-09-02 23:13:48', 1, 0, 0.00, NULL, 0, 0.00),
(459, '{\"en\":\"BEEF STEAK WITH MUSHROOM\",\"ar\":\"\\u0633\\u062a\\u064a\\u0643 \\u0644\\u062d\\u0645 \\u0645\\u0639 \\u0627\\u0644\\u0641\\u0637\\u0631\"}', '{\"en\":\"Tenderloin beef grilled to covered with mushroom sauce & cheese served W\\/ chips\",\"ar\":\"\\u0642\\u0637\\u0639 \\u0644\\u062d\\u0645 \\u0645\\u0639 \\u0635\\u0644\\u0635\\u0629 \\u0641\\u0637\\u0631 \\u0645\\u063a\\u0637\\u0627\\u0629 \\u0628\\u0627\\u0644\\u062c\\u0628\\u0646 \\u0648 \\u064a\\u0642\\u062f\\u0645 \\u0645\\u0639 \\u0628\\u0637\\u0627\\u0637\"}', '3ca4c8f0-dffd-40a5-ab00-df38a39695ac', 5.45, 81, '2022-08-26 22:42:24', '2022-09-02 23:14:06', 1, 1, 0.00, NULL, 1, 0.00),
(460, '{\"en\":\"CHICKEN SHASHLIK\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0634\\u0627\\u0634\\u0644\\u064a\\u0643\"}', '{\"en\":\"CHICKEN SHASHLIK\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0634\\u0627\\u0634\\u0644\\u064a\\u0643\"}', '6f98c158-c61d-4f3b-aff5-b06da97fa994', 3.95, 81, '2022-08-26 22:42:41', '2022-09-02 23:14:24', 1, 1, 0.00, NULL, 1, 0.00),
(461, '{\"en\":\"CHICKEN STEAK\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0633\\u062a\\u064a\\u0643\"}', '{\"en\":\"CHICKEN STEAK\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0633\\u062a\\u064a\\u0643\"}', 'a5b84f87-141d-4fde-9ff7-15c8339de151', 5.25, 81, '2022-08-26 22:43:09', '2022-09-02 23:14:43', 1, 1, 0.00, NULL, 1, 0.00),
(462, '{\"en\":\"CRAB CONTINENTAL\",\"ar\":\"\\u0642\\u0628\\u0628\\u0642 \\u0643\\u0648\\u0646\\u062a\\u064a\\u0646\\u0646\\u062a\\u0627\\u0644\"}', '{\"en\":\"Crab balls cooked with cream sauce & cheese\",\"ar\":\"\\u0643\\u0631\\u0627\\u062a \\u0642\\u0628\\u0642\\u0628 \\u0645\\u0637\\u0647\\u0648\\u0629 \\u0645\\u0639 \\u0635\\u0644\\u0635\\u0629 \\u0643\\u0631\\u064a\\u0645\\u0629 \\u0648 \\u062c\\u0628\\u0646\"}', 'a06ba628-a117-4845-9169-aee19947dfa2', 4.65, 81, '2022-08-26 22:43:25', '2022-09-02 23:15:09', 1, 1, 0.00, NULL, 1, 0.00),
(463, '{\"en\":\"DIANA STEAK\",\"ar\":\"\\u0633\\u062a\\u064a\\u0643 \\u062f\\u0627\\u064a\\u0646\\u0627\"}', '{\"en\":\"Chicken\\/ Beef \\/ Deep fried with bread crumb filled chicken or beef dressed with mushroom and tomato sauce & cheese\",\"ar\":\"\\\"\\u062f\\u062c\\u0627\\u062c \\/ \\u0627\\u0644\\u062d\\u0645 \\/ \\u0645\\u062d\\u0645\\u0631 \\u0645\\u0639 \\u0627\\u0644\\u062e\\u0628\\u0632 \\u062f\\u062c\\u0627\\u062c\\r\\n \\u0645\\u062d\\u0634\\u064a \\u0627\\u0648 \\u0644\\u062d\\u0645 \\u0645\\u062d\\u0634\\u064a \\u0645\\u063a\\u0637\\u064a \\u0628\\u0627\\u0644\\u0645\\u0634\\u0631\\u0648\\u0645 \\u0648\\u0635\\u0644\\u0635\\u0629 \\u0637\\u0645\\u0627\\u0637\\u0645 \\u064a\\u0642\\u062f\\u0645 \\u0645\\u0639 \\u062c\\u0628\\u0646\\\"\"}', '1095f6bf-2708-4267-b5a2-73445b98c0c8', 4.95, 81, '2022-08-26 22:43:54', '2022-09-02 23:15:30', 1, 1, 0.00, NULL, 1, 0.00),
(464, '{\"en\":\"LOBSTER\",\"ar\":\"\\u0623\\u0645 \\u0627\\u0644\\u0631\\u0648\\u0628\\u064a\\u0627\\u0646\"}', '{\"en\":\"Jumbo lobster cooked with richness of creamy & cheese served w\\/Potato wedges\",\"ar\":\"\\u062c\\u0627\\u0645\\u0628\\u0648 \\u0623\\u0645 \\u0627\\u0644\\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u0645\\u0637\\u0647\\u0648 \\u0645\\u0639 \\u0635\\u0644\\u0635\\u0629 \\u0643\\u0631\\u064a\\u0645\\u0629 \\u0648\\u0627\\u0644\\u062c\\u0628\\u0646 \\u064a\\u0642\\u062f\\u0645\\u0639 \\u0627\\u0644\\u0628\\u0637\\u0627\\u0637 \\u0627\\u0644\\u0645\\u0642\\u0644\\u064a\\u0629\"}', 'b04aad4c-aaac-4476-92f4-57feede01a45', 9.95, 81, '2022-08-26 22:44:11', '2022-09-02 23:15:53', 1, 1, 0.00, NULL, 1, 0.00),
(465, '{\"en\":\"SHRIMP SIZZLER\",\"ar\":\"\\u0631\\u0628\\u064a\\u0627\\u0646 \\u0633\\u064a\\u0632\\u0644\\u0631\"}', '{\"en\":\"SHRIMP SIZZLER\",\"ar\":\"\\u0631\\u0628\\u064a\\u0627\\u0646 \\u0633\\u064a\\u0632\\u0644\\u0631\"}', 'a27e7c80-2077-4a94-b0e1-0556de4e25fb', 5.75, 81, '2022-08-26 22:44:33', '2022-09-02 23:16:13', 1, 0, 0.00, NULL, 0, 0.00),
(466, '{\"en\":\"VEGETABLE SIZZLER\",\"ar\":\"\\u062e\\u0636\\u0627\\u0631 \\u0633\\u064a\\u0632\\u0644\\u0631\"}', '{\"en\":\"VEGETABLE SIZZLER\",\"ar\":\"\\u062e\\u0636\\u0627\\u0631 \\u0633\\u064a\\u0632\\u0644\\u0631\"}', 'ff0e9eb1-38fa-4916-8ea7-bacee72f27b2', 2.95, 81, '2022-08-26 22:44:50', '2022-09-02 23:16:25', 1, 1, 0.00, NULL, 1, 0.00),
(467, '{\"en\":\"BEEF WITH BLACK PEEPER\",\"ar\":\"\\u0644\\u062d\\u0645 \\u0628\\u0642\\u0631 \\u0645\\u0639 \\u0641\\u0644\\u0641\\u0644 \\u0627\\u0633\\u0648\\u062f\"}', '{\"en\":\"BEEF WITH BLACK PEEPER\",\"ar\":\"\\u0644\\u062d\\u0645 \\u0628\\u0642\\u0631 \\u0645\\u0639 \\u0641\\u0644\\u0641\\u0644 \\u0627\\u0633\\u0648\\u062f\"}', '7e36fee8-6125-4214-be2b-6d2b884ef93d', 2.95, 80, '2022-08-26 22:50:26', '2022-09-03 00:38:17', 1, 1, 0.00, NULL, 1, 0.00),
(468, '{\"en\":\"CHICKEN 65\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c 65\"}', '{\"en\":\"CHICKEN 65\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c 65\"}', 'be86881a-0046-4f56-b89e-a75433f4e7f7', 2.85, 80, '2022-08-26 22:50:44', '2022-09-03 00:38:33', 1, 1, 0.00, NULL, 1, 0.00),
(469, '{\"en\":\"SWEET & SOUR\",\"ar\":\"\\u062d\\u0627\\u0645\\u0636 \\u0648 \\u062d\\u0644\\u0648\"}', '{\"en\":\"SWEET & SOUR\",\"ar\":\"\\u062d\\u0627\\u0645\\u0636 \\u0648 \\u062d\\u0644\\u0648\"}', '81e3caad-5814-4d22-842d-7f3fe4cfe94a', 1.95, 80, '2022-08-26 22:51:04', '2022-09-03 00:38:51', 1, 1, 0.00, NULL, 1, 0.00),
(470, '{\"en\":\"CHILLY CHICKEN\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0634\\u064a\\u0644\\u064a\"}', '{\"en\":\"CHILLY CHICKEN\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0634\\u064a\\u0644\\u064a\"}', '7279fa76-a3f9-41db-9e4e-144c68efc2ec', 3.25, 80, '2022-08-26 22:51:28', '2022-09-03 00:39:12', 1, 1, 0.00, NULL, 1, 0.00),
(471, '{\"en\":\"PRAWN SALT & PEPPER\",\"ar\":\"\\u0631\\u0648\\u0628\\u064a\\u064a\\u0627\\u0646 \\u0645\\u0644\\u062d \\u0648 \\u0641\\u0644\\u0641\\u0644\"}', '{\"en\":\"PRAWN SALT & PEPPER\",\"ar\":\"\\u0631\\u0648\\u0628\\u064a\\u064a\\u0627\\u0646 \\u0645\\u0644\\u062d \\u0648 \\u0641\\u0644\\u0641\\u0644\"}', '98d8d9cc-cef2-4707-9664-056f79d99623', 4.25, 80, '2022-08-26 22:51:48', '2022-09-03 00:39:27', 1, 1, 0.00, NULL, 1, 0.00),
(472, '{\"en\":\"VEGETABLE MANCHURIAN\",\"ar\":\"\\u062e\\u0636\\u0627\\u0631 \\u0645\\u0627\\u0646\\u0634\\u0648\\u0631\\u06cc\\u0627\\u0646\"}', '{\"en\":\"VEGETABLE MANCHURIAN\",\"ar\":\"\\u062e\\u0636\\u0627\\u0631 \\u0645\\u0627\\u0646\\u0634\\u0648\\u0631\\u06cc\\u0627\\u0646\"}', '12da7954-88c2-401c-b22c-041b89e6ba0c', 1.95, 80, '2022-08-26 22:52:47', '2022-09-03 00:39:43', 1, 1, 0.00, NULL, 1, 0.00),
(473, '{\"en\":\"VEGETABLE SIZZLER\",\"ar\":\"\\u062e\\u0636\\u0627\\u0631 \\u0633\\u064a\\u0632\\u0644\\u0631\"}', '{\"en\":\"VEGETABLE SIZZLER\",\"ar\":\"\\u062e\\u0636\\u0627\\u0631 \\u0633\\u064a\\u0632\\u0644\\u0631\"}', 'c4ff8c0e-c35b-47f4-9bf0-60816cdfdf78', 2.45, 80, '2022-08-26 22:53:38', '2022-09-03 00:39:57', 1, 0, 0.00, NULL, 0, 0.00),
(474, '{\"en\":\"CHICKEN BIRYANI\",\"ar\":\"\\u0628\\u0631\\u064a\\u0627\\u0646\\u064a \\u062f\\u062c\\u0627\\u062c\"}', '{\"en\":\"Indian basmati rice, cooked with chicken, special sauce, Indian spices, served with gravy, Indian pickles, mint chutney and papad.\",\"ar\":\"\\u0623\\u0631\\u0632 \\u0628\\u0633\\u0645\\u062a\\u064a \\u0647\\u0646\\u062f\\u064a \\u0645\\u0637\\u0628\\u0648\\u062e \\u0645\\u0639 \\u062f\\u062c\\u0627\\u062c\\u060c \\u0635\\u0648\\u0635 \\u0633\\u0628\\u064a\\u0634\\u064a\\u0627\\u0644\\u060c \\u0628\\u0647\\u0627\\u0631\\u0627\\u062a \\u0647\\u0646\\u062f\\u064a\\u0629\\u060c \\u064a\\u0642\\u062f\\u0645 \\u0645\\u0639 \\u062c\\u0631\\u0627\\u0641\\u064a\\u060c \\u0645\\u062e\\u0644\\u0644 \\u0647\\u0646\\u062f\\u064a\\u060c \\u0635\\u0648\\u0635 \\u0628\\u0646\\u0639\\u0646\\u0627\\u0639 \\u0648\\u0628\\u0627\\u0628\\u0627\\u062f.\"}', '71eb3b2d-694e-4a55-814d-9b6d5da62564', 3.50, 79, '2022-08-26 23:01:31', '2022-09-03 06:56:59', 1, 1, 0.00, NULL, 1, 0.00),
(475, '{\"en\":\"MUTTON BIRYANI\",\"ar\":\"\\u0628\\u0631\\u064a\\u0627\\u0646\\u064a \\u0644\\u062d\\u0645\"}', '{\"en\":\"Basmati rice, fresh boneless mutton cook with tomato gravy, onion masala, yogurt, cream, served with makhani gravy, Indian pickles, mint chutney and papad.\",\"ar\":\"\\u0623\\u0631\\u0632 \\u0628\\u0633\\u0645\\u062a\\u064a\\u060c \\u0644\\u062d\\u0645 \\u0636\\u0623\\u0646 \\u0637\\u0627\\u0632\\u062c \\u0645\\u0637\\u0628\\u0648\\u062e \\u0645\\u0639 \\u0645\\u0631\\u0642 \\u0637\\u0645\\u0627\\u0637\\u0645\\u060c \\u0645\\u0627\\u0633\\u0627\\u0644\\u0627 \\u0628\\u0635\\u0644\\u060c \\u0632\\u0628\\u0627\\u062f\\u064a\\u060c \\u0643\\u0631\\u064a\\u0645\\u0629\\u060c \\u064a\\u0642\\u062f\\u0645 \\u0645\\u0639 \\u0645\\u0631\\u0642 \\u0645\\u0627\\u062e\\u0627\\u0646\\u064a\\u060c \\u0645\\u062e\\u0644\\u0644 \\u0647\\u0646\\u062f\\u064a\\u060c \\u0635\\u0648\\u0635 \\u0646\\u0639\\u0646\\u0627\\u0639 \\u0648\\u0628\\u0627\\u0628\\u0627\\u062f.\"}', '44895592-2527-4850-8837-11053464c24a', 3.50, 79, '2022-08-26 23:01:55', '2022-09-03 06:57:20', 1, 1, 0.00, NULL, 1, 0.00),
(476, '{\"en\":\"SHRIMP BIRYANI\",\"ar\":\"\\u0628\\u0631\\u064a\\u0627\\u0646\\u064a \\u0631\\u0648\\u0628\\u064a\\u0627\\u0646\"}', '{\"en\":\"Jumbo prawn cooked with basmati rice with aroma of Indian spices, flavor of prawns, served with makhani gravy, Indian pickles, mint chutney and papad.\",\"ar\":\"\\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u062c\\u0627\\u0645\\u0628\\u0648 \\u0645\\u0637\\u0628\\u0648\\u062e \\u0645\\u0639 \\u0623\\u0631\\u0632 \\u0628\\u0633\\u0645\\u062a\\u064a \\u0628\\u0646\\u0643\\u0647\\u0629 \\u0628\\u0647\\u0627\\u0631\\u0627\\u062a \\u0647\\u0646\\u062f\\u064a\\u0629\\u060c \\u0646\\u0643\\u0647\\u0629 \\u0631\\u0648\\u0628\\u064a\\u0627\\u0646\\u060c \\u064a\\u0642\\u062f\\u0645 \\u0645\\u0639 \\u0645\\u0631\\u0642 \\u0645\\u0627\\u062e\\u0627\\u0646\\u064a\\u060c \\u0645\\u062e\\u0644\\u0644 \\u0647\\u0646\\u062f\\u064a\\u060c \\u0635\\u0648\\u0635 \\u0646\\u0639\\u0646\\u0627\\u0639 \\u0648\\u0628\\u0627\\u0628\\u0627\\u062f.\"}', '0837dbe2-3109-42af-bc6f-06d1ff74b119', 4.25, 79, '2022-08-26 23:02:15', '2022-09-03 06:57:37', 1, 1, 0.00, NULL, 1, 0.00),
(477, '{\"en\":\"VEGETABLE BIRYANI\",\"ar\":\"\\u0628\\u0631\\u064a\\u0627\\u0646\\u064a \\u062e\\u0636\\u0627\\u0631\"}', '{\"en\":\"Biryani for the vegetarian with mixed vegetables, Indian cottage cheese paneer, butter, dum with brown gravy, served with makhani gravy, Indian pickles, mint chutney and papad.\",\"ar\":\"\\u0628\\u0631\\u064a\\u0627\\u0646\\u064a \\u0646\\u0628\\u0627\\u062a\\u064a \\u0645\\u0639 \\u062e\\u0636\\u0631\\u0648\\u0627\\u062a \\u0645\\u0634\\u0643\\u0644\\u0629\\u060c \\u062c\\u0628\\u0646\\u0629 \\u0642\\u0631\\u064a\\u0634 \\u0647\\u0646\\u062f\\u064a\\u0629\\u060c \\u0632\\u0628\\u062f\\u0629\\u060c \\u062f\\u0648\\u0645 \\u0645\\u0639 \\u0635\\u0648\\u0635 \\u0628\\u0646\\u064a\\u060c \\u062a\\u0642\\u062f\\u0645 \\u0645\\u0639 \\u0645\\u0631\\u0642 \\u0645\\u0627\\u062e\\u0627\\u0646\\u064a\\u060c \\u0645\\u062e\\u0644\\u0644 \\u0647\\u0646\\u062f\\u064a\\u060c \\u0635\\u0648\\u0635 \\u0646\\u0639\\u0646\\u0627\\u0639 \\u0648\\u0628\\u0627\\u0628\\u0627\\u062f.\"}', 'f2287ca7-639e-48d1-8b42-fb258d2af894', 2.45, 79, '2022-08-26 23:02:52', '2022-09-03 06:57:49', 1, 1, 0.00, NULL, 1, 0.00),
(478, '{\"en\":\"CHICKEN 65 WITH RICE\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c 65 \\u0645\\u0639 \\u0627\\u0631\\u0632\"}', '{\"en\":\"Boneless chicken cooked with sweet, tangy sauce, served with Indian basmati biryani rice, makhani gravy, Indian pickles, mint chutney and papad.\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0645\\u0633\\u062d\\u0628 \\u0645\\u0637\\u0628\\u0648\\u062e \\u0628\\u0635\\u0648\\u0635 \\u0645\\u0646\\u0639\\u0634 \\u062d\\u0644\\u0648\\u060c \\u064a\\u0642\\u062f\\u0645 \\u0645\\u0639 \\u0623\\u0631\\u0632 \\u0628\\u0633\\u0645\\u062a\\u064a \\u0628\\u0631\\u064a\\u0627\\u0646\\u064a \\u0647\\u0646\\u062f\\u064a\\u060c \\u0645\\u0631\\u0642 \\u0645\\u0627\\u062e\\u0627\\u0646\\u064a\\u060c \\u0645\\u062e\\u0644\\u0644 \\u0647\\u0646\\u062f\\u064a\\u060c \\u0635\\u0648\\u0635 \\u0646\\u0639\\u0646\\u0627\\u0639 \\u0648\\u0628\\u0627\\u0628\\u0627\\u062f.\"}', 'e833fb62-7662-4625-9812-0a37868d47af', 3.50, 79, '2022-08-26 23:18:21', '2022-09-03 06:58:04', 1, 1, 0.00, NULL, 1, 0.00),
(479, '{\"en\":\"BIRYANI RICE\",\"ar\":\"\\u0628\\u0631\\u064a\\u0627\\u0646\\u064a \\u0623\\u0631\\u0632\"}', '{\"en\":\"Basmati rice, dum with gravy, masala and butter. Serve with makhani gravy,indian pickle,mint chutney and papad.\",\"ar\":\"\\u0623\\u0631\\u0632 \\u0628\\u0633\\u0645\\u062a\\u064a\\u060c \\u062f\\u0648\\u0645 \\u0628\\u0627\\u0644\\u0645\\u0631\\u0642\\u060c \\u0645\\u0627\\u0633\\u0627\\u0644\\u0627 \\u0648\\u0632\\u0628\\u062f\\u0629. \\u062a\\u0642\\u062f\\u0645 \\u0645\\u0639 \\u0645\\u0631\\u0642 \\u0645\\u062e\\u0627\\u0646\\u064a \\u060c \\u0645\\u062e\\u0644\\u0644 \\u0647\\u0646\\u062f\\u064a \\u060c \\u0635\\u0644\\u0635\\u0629 \\u0646\\u0639\\u0646\\u0627\\u0639 \\u0648\\u0628\\u0627\\u0628\\u0627\\u062f\"}', '2a4e4ba9-9406-401e-93b5-a49d83f95bdd', 1.65, 79, '2022-08-26 23:19:47', '2022-09-03 06:58:26', 1, 0, 0.00, NULL, 0, 0.00),
(480, '{\"en\":\"WHITE RICE\",\"ar\":\"\\u0623\\u0631\\u0632 \\u0623\\u0628\\u064a\\u0636\"}', '{\"en\":\"WHITE RICE\",\"ar\":\"\\u0623\\u0631\\u0632 \\u0623\\u0628\\u064a\\u0636\"}', '2305c4d4-0cf3-4bc2-80f4-c579f39130ec', 1.45, 79, '2022-08-26 23:20:23', '2022-08-26 23:24:26', 1, 0, 0.00, NULL, 0, 0.00),
(481, '{\"en\":\"JEERA RICE\",\"ar\":\"\\u0623\\u0631\\u0632 \\u062c\\u064a\\u0631\\u0627\"}', '{\"en\":\"JEERA RICE\",\"ar\":\"\\u0623\\u0631\\u0632 \\u062c\\u064a\\u0631\\u0627\"}', '576e4095-e61f-4d7a-a148-7a6b8e3880a7', 2.45, 79, '2022-08-26 23:20:43', '2022-08-26 23:24:38', 1, 0, 0.00, NULL, 0, 0.00),
(482, '{\"en\":\"VEGETABLE PULAV\",\"ar\":\"\\u0628\\u0648\\u0644\\u0627\\u0641 \\u062e\\u0636\\u0631\\u0648\\u0627\\u062a\"}', '{\"en\":\"Vegetables cooked in dum style biryani, served with makhani gravy, Indian pickles, mint chutney and papad.\",\"ar\":\"\\u062e\\u0636\\u0631\\u0648\\u0627\\u062a \\u0645\\u0637\\u0628\\u0648\\u062e\\u0629 \\u0641\\u064a \\u0628\\u0631\\u064a\\u0627\\u0646\\u064a \\u0639\\u0644\\u0649 \\u0637\\u0631\\u064a\\u0642\\u0629 \\u062f\\u0648\\u0645\\u060c \\u062a\\u0642\\u062f\\u0645 \\u0645\\u0639 \\u0645\\u0631\\u0642 \\u0645\\u0627\\u062e\\u0627\\u0646\\u064a\\u060c \\u0645\\u062e\\u0644\\u0644 \\u0647\\u0646\\u062f\\u064a\\u060c \\u0635\\u0648\\u0635 \\u0646\\u0639\\u0646\\u0627\\u0639 \\u0648\\u0628\\u0627\\u0628\\u0627\\u062f.\"}', 'a6d766d4-1417-4df6-b7bc-4588f0826313', 2.95, 79, '2022-08-26 23:21:16', '2022-08-26 23:26:07', 1, 1, 0.00, NULL, 1, 0.00),
(483, '{\"en\":\"CHEIF\'S SPECIAL SALAD\",\"ar\":\"\\u0633\\u0644\\u0637\\u0640\\u0629 \\u062e\\u0627\\u0635 \\u0634\\u064a\\u0641\\u0632\"}', '{\"en\":\"CHEIF\'S SPECIAL SALAD\",\"ar\":\"\\u0633\\u0644\\u0637\\u0640\\u0629 \\u062e\\u0627\\u0635 \\u0634\\u064a\\u0641\\u0632\"}', 'dbe7709c-bae5-4cfb-aa53-b041d265b9bb', 1.95, 78, '2022-09-02 22:26:25', '2022-09-04 00:22:49', 1, 0, 0.00, NULL, 0, 0.00),
(484, '{\"en\":\"MAYONNAISE SALAD\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0645\\u0627\\u064a\\u0648\\u0646\\u064a\\u0632\"}', '{\"en\":\"MAYONNAISE SALAD\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0645\\u0627\\u064a\\u0648\\u0646\\u064a\\u0632\"}', '33aaefdb-e2fb-4ff1-8abd-56d055b86589', 2.25, 78, '2022-09-02 22:26:42', '2022-09-02 22:28:56', 1, 0, 0.00, NULL, 0, 0.00),
(485, '{\"en\":\"RAITA\",\"ar\":\"\\u0631\\u0627\\u064a\\u062a\\u0640\\u0627\"}', '{\"en\":\"(Any choice Boondi \\/ Pineapple \\/ Mix Vegetable\",\"ar\":\"\\u0641\\u064a \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0628\\u0648\\u0646\\u062f\\u064a \\/ \\u0627\\u0646\\u0627\\u0646\\u0627\\u0633 \\/ \\u062e\\u0636\\u0627\\u0631 \\u0645\\u0634\\u0643\\u0644\\u0629\"}', '50583f2b-0038-4f28-8114-d3ee006c074d', 1.45, 78, '2022-09-02 22:27:13', '2022-09-02 22:29:12', 1, 0, 0.00, NULL, 0, 0.00),
(486, '{\"en\":\"MEXICAN SALAD\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0645\\u0643\\u0633\\u064a\\u0643\\u0627\\u0646\"}', '{\"en\":\"MEXICAN SALAD\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0645\\u0643\\u0633\\u064a\\u0643\\u0627\\u0646\"}', '52b52640-f24e-4c95-b4e8-a656bd33b1d6', 2.15, 78, '2022-09-02 22:27:29', '2022-09-04 00:29:01', 1, 0, 0.00, NULL, 0, 0.00),
(487, '{\"en\":\"MUTTBAL\",\"ar\":\"\\u0645\\u062a\\u0628\\u0644\"}', '{\"en\":\"MUTTBAL\",\"ar\":\"\\u0645\\u062a\\u0628\\u0644\"}', '1d3ed717-7235-4492-b062-9b489e5a8726', 1.45, 78, '2022-09-02 22:27:49', '2022-09-04 00:30:47', 1, 0, 0.00, NULL, 0, 0.00),
(488, '{\"en\":\"SHRIMP SALAD\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0631\\u0648\\u0628\\u064a\\u0627\\u0646\"}', '{\"en\":\"SHRIMP SALAD\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0631\\u0648\\u0628\\u064a\\u0627\\u0646\"}', 'ac9908a7-2748-4a02-9d27-0c514b7a62df', 2.95, 78, '2022-09-02 22:28:04', '2022-09-02 22:29:51', 1, 0, 0.00, NULL, 0, 0.00),
(489, '{\"en\":\"GREEK SALAD\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u064a\\u0648\\u0646\\u0627\\u0646\\u064a\"}', '{\"en\":\"GREEK SALAD\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u064a\\u0648\\u0646\\u0627\\u0646\\u064a\"}', 'c4ec6daa-ed12-47a1-9c43-c42800e85352', 2.25, 78, '2022-09-02 22:28:21', '2022-09-02 22:30:03', 1, 0, 0.00, NULL, 0, 0.00),
(490, '{\"en\":\"CREAM SOUP\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u0643\\u0631\\u064a\\u0645\\u0629\"}', '{\"en\":\"CREAM SOUP\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u0643\\u0631\\u064a\\u0645\\u0629\"}', 'f1211d67-c343-4d8f-b470-10185449fe2a', 1.25, 85, '2022-09-02 22:42:10', '2022-09-04 00:32:43', 1, 1, 0.00, NULL, 0, 0.00),
(491, '{\"en\":\"DAL SOUP\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u0639\\u062f\\u0633\"}', '{\"en\":\"DAL SOUP\",\"ar\":\"\\u0634\\u0648\\u0631\\u0628\\u0629 \\u0639\\u062f\\u0633\"}', '10dd0f96-da65-4264-86e9-4134fd421d95', 1.45, 85, '2022-09-02 22:43:57', '2022-09-04 00:34:46', 1, 0, 0.00, NULL, 0, 0.00),
(492, '{\"en\":\"SHRIMPS TOAST\",\"ar\":\"\\u062e\\u0628\\u0632 \\u0631\\u0648\\u0628\\u064a\\u0627\\u0646\"}', '{\"en\":\"SHRIMPS TOAST\",\"ar\":\"\\u062e\\u0628\\u0632 \\u0631\\u0648\\u0628\\u064a\\u0627\\u0646\"}', '45b8a619-5843-410e-8633-a1ba9473953b', 3.25, 77, '2022-09-02 22:50:28', '2022-09-04 00:36:22', 1, 0, 0.00, NULL, 0, 0.00),
(493, '{\"en\":\"CHEESE CROCKETS\",\"ar\":\"\\u0643\\u0631\\u0648\\u0643\\u064a\\u062a \\u062c\\u0628\\u0646\"}', '{\"en\":\"CHEESE CROCKETS\",\"ar\":\"\\u0643\\u0631\\u0648\\u0643\\u064a\\u062a \\u062c\\u0628\\u0646\"}', 'da43d671-cc95-43c3-b469-4820f35afa82', 1.95, 77, '2022-09-02 22:50:45', '2022-09-04 00:37:19', 1, 0, 0.00, NULL, 0, 0.00),
(494, '{\"en\":\"CRUMB FRIED PRAWNS\",\"ar\":\"\\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u0645\\u0642\\u0627\\u0644\\u064a \\u0645\\u0639 \\u0643\\u0633\\u0631 \\u062e\\u0628\\u0632\"}', '{\"en\":\"CRUMB FRIED PRAWNS\",\"ar\":\"\\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u0645\\u0642\\u0627\\u0644\\u064a \\u0645\\u0639 \\u0643\\u0633\\u0631 \\u062e\\u0628\\u0632\"}', '391e8b59-3e66-4210-a638-8584dd2676ab', 4.25, 77, '2022-09-02 22:51:05', '2022-09-04 00:39:10', 1, 0, 0.00, NULL, 0, 0.00),
(495, '{\"en\":\"ALOO TIKKI\",\"ar\":\"\\u0628\\u0637\\u0627\\u0637 \\u0645\\u0647\\u0631\\u0648\\u0633\\u0629 \\u0645\\u0642\\u0644\\u064a\"}', '{\"en\":\"ALOO TIKKI\",\"ar\":\"\\u0628\\u0637\\u0627\\u0637 \\u0645\\u0647\\u0631\\u0648\\u0633\\u0629 \\u0645\\u0642\\u0644\\u064a\"}', '83399f7c-1b86-478f-bd2d-6a80575b95a9', 1.45, 77, '2022-09-02 22:51:21', '2022-09-04 00:41:05', 1, 0, 0.00, NULL, 0, 0.00),
(496, '{\"en\":\"FRIED FISH\",\"ar\":\"\\u0633\\u0645\\u0643 \\u0645\\u0642\\u0644\\u064a\"}', '{\"en\":\"FRIED FISH\",\"ar\":\"\\u0633\\u0645\\u0643 \\u0645\\u0642\\u0644\\u064a\"}', 'af36e4a7-4762-490e-a20b-0963bf6c0fc8', 3.95, 77, '2022-09-02 22:51:40', '2022-09-02 22:58:33', 1, 0, 0.00, NULL, 0, 0.00),
(497, '{\"en\":\"FRIED MUSHROOM\",\"ar\":\"\\u0645\\u0634\\u0631\\u0648\\u0645 \\u0645\\u0642\\u0644\\u064a\"}', '{\"en\":\"FRIED MUSHROOM\",\"ar\":\"\\u0645\\u0634\\u0631\\u0648\\u0645 \\u0645\\u0642\\u0644\\u064a\"}', '1e57ab3d-c669-4e5c-b2f0-72dd0290e4d0', 2.95, 77, '2022-09-02 22:52:02', '2022-09-04 00:43:51', 1, 0, 0.00, NULL, 0, 0.00),
(498, '{\"en\":\"FISH FINGER\",\"ar\":\"\\u0627\\u0635\\u0628\\u0639 \\u0633\\u0645\\u0643\"}', '{\"en\":\"FISH FINGER\",\"ar\":\"\\u0627\\u0635\\u0628\\u0639 \\u0633\\u0645\\u0643\"}', '720f2aac-4d2a-493b-80e4-eee0f89b8034', 3.95, 77, '2022-09-02 22:52:21', '2022-09-04 00:45:00', 1, 0, 0.00, NULL, 0, 0.00),
(499, '{\"en\":\"CHICKEN BUFFALO WING\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u062c\\u0627\\u0645\\u0648\\u0633 \\u0623\\u062c\\u0646\\u062d\\u0629\"}', '{\"en\":\"CHICKEN BUFFALO WING\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u062c\\u0627\\u0645\\u0648\\u0633 \\u0623\\u062c\\u0646\\u062d\\u0629\"}', 'a6a69dbd-a1d0-4ae1-8862-c0bc09843a04', 2.95, 77, '2022-09-02 22:52:37', '2022-09-04 00:45:55', 1, 0, 0.00, NULL, 0, 0.00),
(500, '{\"en\":\"CRISPY SEASME SHRIMPS\",\"ar\":\"\\u0631\\u0648\\u06cc\\u0628\\u0627\\u0646 \\u0645\\u0642\\u0631\\u0645\\u0634 \\u0645\\u0639 \\u0627\\u0644\\u0633\\u0645\\u0633\\u0645\"}', '{\"en\":\"CRISPY SEASME SHRIMPS\",\"ar\":\"\\u0631\\u0648\\u06cc\\u0628\\u0627\\u0646 \\u0645\\u0642\\u0631\\u0645\\u0634 \\u0645\\u0639 \\u0627\\u0644\\u0633\\u0645\\u0633\\u0645\"}', '058b5d29-83d1-456f-b186-26dbba01fe5f', 4.25, 77, '2022-09-02 22:52:54', '2022-09-04 00:47:19', 1, 0, 0.00, NULL, 0, 0.00),
(501, '{\"en\":\"DYNAMITE PRAWNS\",\"ar\":\"\\u062f\\u064a\\u0646\\u0627\\u0645\\u064a\\u062a \\u0631\\u0648\\u0628\\u064a\\u0627\\u0646\"}', '{\"en\":\"DYNAMITE PRAWNS\",\"ar\":\"\\u062f\\u064a\\u0646\\u0627\\u0645\\u064a\\u062a \\u0631\\u0648\\u0628\\u064a\\u0627\\u0646\"}', '4abe3276-c04c-423c-a590-aca0134d96a0', 3.95, 77, '2022-09-02 22:53:10', '2022-09-04 00:48:37', 1, 0, 0.00, NULL, 0, 0.00),
(502, '{\"en\":\"SAMOSA\",\"ar\":\"\\u0633\\u0645\\u0628\\u0648\\u0633\\u0629\"}', '{\"en\":\"SAMOSA\",\"ar\":\"\\u0633\\u0645\\u0628\\u0648\\u0633\\u0629\"}', '81897cad-5112-4f5c-aec2-042bfe0ef1b1', 1.35, 77, '2022-09-02 22:53:47', '2022-09-04 00:49:44', 1, 1, 0.00, NULL, 0, 0.00),
(503, '{\"en\":\"RAJDHANI KIDS (CHOICES)\",\"ar\":\"\\u0631\\u0627\\u062c\\u062f\\u0627\\u0646\\u064a \\u0627\\u0644\\u0623\\u0637\\u0641\\u0627\\u0644\"}', '{\"en\":\"Boneless chicken 4 pieces or Seekh Kabab serve with yellow rice\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0639\\u0638\\u0645 \\u0627\\u0648 \\u0634\\u064a\\u0634 \\u0637\\u0627\\u0648\\u0648\\u0642\\u060c \\u064a\\u0642\\u062f\\u0645 \\u0645\\u0639 \\u0627\\u0631\\u0632 \\u0627\\u0635\\u0641\\u0631 (4 \\u062d\\u0628\\u0629)\"}', 'eb6c06f4-34a9-4840-acdc-2be344d5a3b2', 2.25, 87, '2022-09-02 23:02:17', '2022-09-02 23:04:25', 1, 0, 0.00, NULL, 0, 0.00),
(504, '{\"en\":\"FRENCH FRIES\\/CHEESE\",\"ar\":\"\\u0644\\u0628\\u0637\\u0627\\u0637\\u0633 \\u0627\\u0644\\u0645\\u0642\\u0644\\u064a\\u0629 \\/ \\u062c\\u0628\\u0646\\u0647\"}', '{\"en\":\"FRENCH FRIES\\/CHEESE\",\"ar\":\"\\u0644\\u0628\\u0637\\u0627\\u0637\\u0633 \\u0627\\u0644\\u0645\\u0642\\u0644\\u064a\\u0629 \\/ \\u062c\\u0628\\u0646\\u0647\"}', '1d2b7808-478f-4729-b5b3-21801ebbd28c', 1.45, 87, '2022-09-02 23:03:21', '2022-09-02 23:04:38', 1, 0, 0.00, NULL, 0, 0.00),
(505, '{\"en\":\"GRILLED TENDERLOIN SANDWICH\",\"ar\":\"\\u0633\\u0627\\u0646\\u062f\\u0648\\u0634 \\u062a\\u0646\\u062f\\u0631\\u0644\\u0648\\u064a\\u0646 \\u0645\\u0634\\u0648\\u064a\"}', '{\"en\":\"Grill beef tenderloin, sliced tomato and cucumber and cheese slice\",\"ar\":\"\\u0644\\u062d\\u0645 \\u0628\\u0642\\u0631 \\u0645\\u0634\\u0648\\u064a \\u062a\\u0646\\u062f\\u0631\\u0644\\u0648\\u064a\\u0646\\u060c \\u0634\\u0631\\u0627\\u0626\\u062d \\u0637\\u0645\\u0627\\u0637\\u0645 \\u0648\\u062e\\u064a\\u0627\\u0631 \\u0648 \\u0634\\u0631\\u0627\\u0626\\u062d \\u062c\\u0628\\u0646\"}', '54f7a7e7-d7aa-46ee-8907-4fe885dbdd2f', 2.25, 87, '2022-09-02 23:03:41', '2022-09-02 23:04:56', 1, 0, 0.00, NULL, 0, 0.00),
(506, '{\"en\":\"CHEESE GRILLED SANDWICH\",\"ar\":\"\\u0633\\u0627\\u0646\\u062f\\u0648\\u0634 \\u062c\\u0628\\u0646 \\u0645\\u0634\\u0648\\u064a\"}', '{\"en\":\"CHEESE GRILLED SANDWICH\",\"ar\":\"\\u0633\\u0627\\u0646\\u062f\\u0648\\u0634 \\u062c\\u0628\\u0646 \\u0645\\u0634\\u0648\\u064a\"}', 'd5638972-3e35-48f8-9401-b3582ef2c94d', 1.75, 87, '2022-09-02 23:04:03', '2022-09-02 23:05:12', 1, 0, 0.00, NULL, 0, 0.00),
(507, '{\"en\":\"AMERICAN GRILLED CHICKEN\",\"ar\":\"\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a \\u062f\\u062c\\u0627\\u062c \\u0645\\u0634\\u0648\\u064a\"}', '{\"en\":\"Chicken marinated with mustard, maple syrup, served with sauteed vegetables and chips\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0645\\u0646\\u0642\\u0639 \\u0645\\u0639 \\u062e\\u0631\\u062f\\u0644\\u060c \\u0634\\u0631\\u0627\\u0628 \\u0642\\u064a\\u0642\\u0628\\u060c \\u064a\\u0642\\u062f\\u0645 \\u0645\\u0639 \\u0635\\u0648\\u062a\\u064a \\u062e\\u0636\\u0631\\u0648\\u0627\\u062a \\u0648\\u0634\\u0628\\u0633\"}', 'bc073fe6-85fe-4bdd-88eb-704d00897925', 3.95, 81, '2022-09-02 23:10:43', '2022-09-04 00:52:12', 1, 0, 0.00, NULL, 0, 0.00),
(508, '{\"en\":\"CHICKEN SIZZLER\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0633\\u064a\\u0632\\u0644\\u0631\"}', '{\"en\":\"Cube of chicken stir-fried with capsicum, onion & served with fries\",\"ar\":\"\\u0645\\u0643\\u0639\\u0628 \\u0645\\u0642\\u0644\\u064a\\u0629 \\u0634\\u0631\\u0627\\u0626\\u062d \\u0645\\u0646 \\u062f\\u062c\\u0627\\u062c \\u0645\\u0639 \\u0641\\u0644\\u0641\\u0644 \\u060c \\u0628\\u0635\\u0644 \\u0648\\u062a\\u0642\\u062f\\u0645 \\u0645\\u0639 \\u0628\\u0637\\u0627\\u0637 \\u0645\\u0642\\u0644\\u064a\"}', '88197b0a-491c-499e-ab12-031dfac41607', 3.95, 81, '2022-09-02 23:11:11', '2022-09-04 00:53:25', 1, 0, 0.00, NULL, 0, 0.00),
(509, '{\"en\":\"FISH FILLET WITH BUTTER LEMON SAUCE\",\"ar\":\"\\u0633\\u0645\\u0643 \\u0641\\u064a\\u0644\\u064a\\u0629 \\u0645\\u0639 \\u0635\\u0644\\u0635\\u0629 \\u0644\\u064a\\u0645\\u0648\\u0646 \\u0632\\u0628\\u062f\\u0629\"}', '{\"en\":\"FISH FILLET WITH BUTTER LEMON SAUCE\",\"ar\":\"\\u0633\\u0645\\u0643 \\u0641\\u064a\\u0644\\u064a\\u0629 \\u0645\\u0639 \\u0635\\u0644\\u0635\\u0629 \\u0644\\u064a\\u0645\\u0648\\u0646 \\u0632\\u0628\\u062f\\u0629\"}', 'a81d46e8-c476-4a08-b4cf-9ef155cd6e4e', 4.95, 81, '2022-09-02 23:11:32', '2022-09-04 00:56:06', 1, 0, 0.00, NULL, 0, 0.00),
(510, '{\"en\":\"RAJDHANI STEAK WITH BARBEQUE SAUCE\",\"ar\":\"\\u0631\\u0627\\u062c\\u062f\\u0627\\u0646\\u064a \\u0633\\u062a\\u064a\\u0643 \\u0645\\u0639 \\u0635\\u0644\\u0635\\u0629 \\u0628\\u0627\\u0631\\u064a\\u0628\\u0643\\u064a\\u0648\"}', '{\"en\":\"Stir-fried cubes of chicken, beef & shrimp with cheese chips\",\"ar\":\"\\u0645\\u0643\\u0639\\u0628\\u0627\\u062a \\u0645\\u0642\\u0644\\u064a \\u0634\\u0631\\u0627\\u0626\\u062d \\u062c\\u0628\\u0646 \\u0645\\u0646 \\u062f\\u062c\\u0627\\u062c\\u060c \\u0644\\u062d\\u0645 \\u0627\\u0644\\u0628\\u0642\\u0631 \\u060c \\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u0645\\u0639 \\u062c\\u0628\\u0646 \\u0634\\u0628\\u0633\"}', 'c3572c4e-c081-4743-bc31-5615ec631b75', 6.25, 81, '2022-09-02 23:11:59', '2022-09-04 00:56:30', 1, 0, 0.00, NULL, 0, 0.00),
(511, '{\"en\":\"BARBEQUE STYLE GRILLED MUSHROOM SIZZLER\",\"ar\":\"\\u0628\\u0627\\u0631\\u0628\\u064a\\u0643\\u064a\\u0648 \\u0633\\u062a\\u064a\\u0644 \\u0645\\u0634\\u0648\\u064a \\u0645\\u0634\\u0631\\u0648\\u0645 \\u0633\\u064a\\u0632\\u0644\\u0631\"}', '{\"en\":\"BARBEQUE-STYLE GRILLED MUSHROOM SIZZLER\",\"ar\":\"\\u0628\\u0627\\u0631\\u0628\\u064a\\u0643\\u064a\\u0648 \\u0633\\u062a\\u064a\\u0644 \\u0645\\u0634\\u0648\\u064a \\u0645\\u0634\\u0631\\u0648\\u0645 \\u0633\\u064a\\u0632\\u0644\\u0631\"}', 'b7e07429-dfa4-4de1-9c29-0ebee3e313aa', 2.95, 81, '2022-09-02 23:12:21', '2022-09-04 00:59:37', 1, 0, 0.00, NULL, 0, 0.00),
(512, '{\"en\":\"PANKO CRUMB FRIED FISH\",\"ar\":\"\\u0628\\u0642\\u0633\\u0645\\u0627\\u0637 \\u0643\\u0633\\u0631\\u0629 \\u062e\\u0628\\u0632 \\u0633\\u0645\\u0643 \\u0645\\u0642\\u0644\\u064a\"}', '{\"en\":\"Served with tarter sauce and chips\",\"ar\":\"\\u062a\\u0642\\u062f\\u0645 \\u0645\\u0639 \\u0635\\u0644\\u0635\\u0629 \\u062a\\u0627\\u0631\\u062a\\u0627\\u0631 \\u0648 \\u0634\\u0628\\u0633\"}', 'a605e71d-12aa-4b68-8c84-a2794c89beff', 4.25, 81, '2022-09-02 23:12:41', '2022-09-04 01:00:38', 1, 0, 0.00, NULL, 0, 0.00),
(513, '{\"en\":\"FISH SIZZLER\",\"ar\":\"\\u0633\\u0645\\u0643 \\u0633\\u064a\\u0632\\u0644\\u0631\"}', '{\"en\":\"Mustard, lemon, marinated grilled slice fish\",\"ar\":\"\\u0634\\u0631\\u064a\\u062d\\u0629 \\u0633\\u0645\\u0643 \\u0645\\u0634\\u0648\\u064a \\u0645\\u0646\\u0642\\u0639 \\u062e\\u0631\\u062f\\u0644 \\u0648 \\u0644\\u064a\\u0645\\u0648\\u0646\"}', '321e2900-1522-4ba3-acba-454e0d7740cd', 4.45, 81, '2022-09-02 23:13:08', '2022-09-04 01:01:36', 1, 0, 0.00, NULL, 0, 0.00),
(514, '{\"en\":\"GRILLED PRAWNS SIZZLER\",\"ar\":\"\\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u0645\\u0634\\u0648\\u064a \\u0633\\u064a\\u0632\\u0644\\u0631\"}', '{\"en\":\"Honey, Mustard marinated prawn\",\"ar\":\"\\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u0645\\u0646\\u0642\\u0639 \\u0645\\u0639 \\u062e\\u0631\\u062f\\u0644 \\u0648 \\u0639\\u0633\\u0644\"}', '757f2422-7404-4b3e-ade5-ccd12afed71f', 5.75, 81, '2022-09-02 23:13:27', '2022-09-04 01:02:48', 1, 0, 0.00, NULL, 0, 0.00),
(515, '{\"en\":\"VANILLA ICE CREAM\",\"ar\":\"\\u0645\\u062b\\u0644\\u062c\\u0627\\u062a \\u0627\\u0644\\u0641\\u0627\\u0646\\u064a\\u0644\\u064a\\u0627\"}', '{\"en\":\"VANILLA ICE CREAM\",\"ar\":\"\\u0645\\u062b\\u0644\\u062c\\u0627\\u062a \\u0627\\u0644\\u0641\\u0627\\u0646\\u064a\\u0644\\u064a\\u0627\"}', 'dc630bab-e3f5-4925-8f11-cce11ede3967', 1.10, 89, '2022-09-02 23:21:37', '2022-09-04 03:35:53', 1, 0, 0.00, NULL, 0, 0.00),
(516, '{\"en\":\"FRUIT SALAD WITH ICE CREAM\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0641\\u0648\\u0627\\u0643\\u0629 \\u0645\\u0639 \\u0627\\u064a\\u0633 \\u0643\\u0631\\u064a\\u0645\"}', '{\"en\":\"FRUIT SALAD WITH ICE CREAM\",\"ar\":\"\\u0633\\u0644\\u0637\\u0629 \\u0641\\u0648\\u0627\\u0643\\u0629 \\u0645\\u0639 \\u0627\\u064a\\u0633 \\u0643\\u0631\\u064a\\u0645\"}', '6cc1e4e0-c830-4bc5-913e-a91935e74b85', 1.95, 89, '2022-09-02 23:22:01', '2022-09-02 23:29:50', 1, 0, 0.00, NULL, 0, 0.00),
(517, '{\"en\":\"ICE CREAM\",\"ar\":\"\\u0627\\u064a\\u0633 \\u0643\\u0631\\u064a\\u0645\"}', '{\"en\":\"ICE CREAM\",\"ar\":\"\\u0627\\u064a\\u0633 \\u0643\\u0631\\u064a\\u0645\"}', '5e8322e9-e230-4873-bdef-b6a6e2f0387f', 1.10, 89, '2022-09-02 23:22:22', '2022-09-02 23:30:04', 1, 0, 0.00, NULL, 0, 0.00),
(518, '{\"en\":\"ICE CREAM MIX\",\"ar\":\"\\u0627\\u064a\\u0633 \\u0643\\u0631\\u064a\\u0645 \\u0645\\u0634\\u0643\\u0644\"}', '{\"en\":\"ICE CREAM MIX\",\"ar\":\"\\u0627\\u064a\\u0633 \\u0643\\u0631\\u064a\\u0645 \\u0645\\u0634\\u0643\\u0644\"}', 'e4b8e482-97bc-46d9-8df5-9629f1dd1ff5', 1.45, 89, '2022-09-02 23:22:36', '2022-09-02 23:30:19', 1, 0, 0.00, NULL, 0, 0.00),
(519, '{\"en\":\"MINERAL WATER LARGE\",\"ar\":\"\\u0645\\u0627\\u0621 \\u0645\\u0639\\u062f\\u0646\\u064a \\u0643\\u0628\\u064a\\u0631\"}', '{\"en\":\"MINERAL WATER LARGE\",\"ar\":\"\\u0645\\u0627\\u0621 \\u0645\\u0639\\u062f\\u0646\\u064a \\u0643\\u0628\\u064a\\u0631\"}', '9ccb4397-9fd6-4025-b87b-29b6a8cebb5f', 0.95, 89, '2022-09-02 23:23:02', '2022-09-02 23:30:30', 1, 0, 0.00, NULL, 0, 0.00),
(520, '{\"en\":\"MINERAL WATER SMALL\",\"ar\":\"\\u0645\\u0627\\u0621 \\u0645\\u0639\\u062f\\u0646\\u064a \\u0635\\u063a\\u064a\\u0631\"}', '{\"en\":\"MINERAL WATER SMALL\",\"ar\":\"\\u0645\\u0627\\u0621 \\u0645\\u0639\\u062f\\u0646\\u064a \\u0635\\u063a\\u064a\\u0631\"}', '12abea77-e019-478f-a9b9-35f291fa8936', 0.45, 89, '2022-09-02 23:23:31', '2022-09-02 23:30:47', 1, 0, 0.00, NULL, 0, 0.00),
(521, '{\"en\":\"SOFT DRINKS\",\"ar\":\"\\u0645\\u0634\\u0631\\u0648\\u0628\\u0627\\u062a \\u063a\\u0627\\u0632\\u064a\\u0629\"}', '{\"en\":\"SOFT DRINKS\",\"ar\":\"\\u0645\\u0634\\u0631\\u0648\\u0628\\u0627\\u062a \\u063a\\u0627\\u0632\\u064a\\u0629\"}', 'fae1d836-7547-426d-ae08-de790bf05f8d', 0.40, 89, '2022-09-02 23:23:48', '2022-09-02 23:31:00', 1, 0, 0.00, NULL, 0, 0.00),
(522, '{\"en\":\"RAJDHANI DELIGHT\",\"ar\":\"\\u0631\\u0627\\u062c\\u062f\\u0627\\u0646\\u064a \\u062f\\u064a\\u0644\\u0627\\u064a\\u062a\"}', '{\"en\":\"RAJDHANI DELIGHT\",\"ar\":\"\\u0631\\u0627\\u062c\\u062f\\u0627\\u0646\\u064a \\u062f\\u064a\\u0644\\u0627\\u064a\\u062a\"}', 'e96f81e1-6148-40e6-bf3e-d02146c197de', 2.25, 89, '2022-09-02 23:24:06', '2022-09-02 23:31:13', 1, 0, 0.00, NULL, 0, 0.00),
(523, '{\"en\":\"BLUE - SKY\",\"ar\":\"\\u0628\\u0644\\u064a\\u0648 \\u0633\\u0643\\u0627\\u064a\"}', '{\"en\":\"BLUE - SKY\",\"ar\":\"\\u0628\\u0644\\u064a\\u0648 \\u0633\\u0643\\u0627\\u064a\"}', 'a193146a-f23d-4716-9c31-3a4e58ebcb4f', 1.25, 89, '2022-09-02 23:24:25', '2022-09-02 23:31:26', 1, 0, 0.00, NULL, 0, 0.00),
(524, '{\"en\":\"RED SEA\",\"ar\":\"\\u0631\\u064a\\u062f \\u0633\\u064a\"}', '{\"en\":\"RED SEA\",\"ar\":\"\\u0631\\u064a\\u062f \\u0633\\u064a\"}', '9f86c682-5891-4325-8cf5-382855b3c37a', 1.25, 89, '2022-09-02 23:24:42', '2022-09-02 23:31:40', 1, 0, 0.00, NULL, 0, 0.00),
(525, '{\"en\":\"PENA COLADA\",\"ar\":\"\\u064a\\u0628\\u0646\\u0627 \\u0643\\u0648\\u0644\\u0627\\u062f\\u0627\"}', '{\"en\":\"PENA COLADA\",\"ar\":\"\\u064a\\u0628\\u0646\\u0627 \\u0643\\u0648\\u0644\\u0627\\u062f\\u0627\"}', '51230c12-0b4c-4d04-bcad-c8d10d1c0073', 1.25, 89, '2022-09-02 23:24:55', '2022-09-02 23:31:54', 1, 0, 0.00, NULL, 0, 0.00),
(526, '{\"en\":\"FRESH JUICES\",\"ar\":\"\\u0639\\u0635\\u064a\\u0631 \\u0637\\u0627\\u0632\\u062c\"}', '{\"en\":\"FRESH JUICES\",\"ar\":\"\\u0639\\u0635\\u064a\\u0631 \\u0637\\u0627\\u0632\\u062c\"}', 'f2dea41a-1930-4f8e-aa28-0e84b960f38c', 1.45, 89, '2022-09-02 23:25:09', '2022-09-02 23:32:07', 1, 0, 0.00, NULL, 0, 0.00),
(527, '{\"en\":\"COCKTAIL\",\"ar\":\"\\u0643\\u0648\\u0643\\u062a\\u064a\\u0644\"}', '{\"en\":\"COCKTAIL\",\"ar\":\"\\u0643\\u0648\\u0643\\u062a\\u064a\\u0644\"}', 'd27548a6-f4cf-441c-baeb-bc1522c7e6dd', 1.65, 89, '2022-09-02 23:25:22', '2022-09-02 23:32:18', 1, 0, 0.00, NULL, 0, 0.00),
(528, '{\"en\":\"LASSSI\",\"ar\":\"\\u0644\\u0627\\u0633\\u064a\"}', '{\"en\":\"LASSSI\",\"ar\":\"\\u0644\\u0627\\u0633\\u064a\"}', 'bb691e4d-d484-4a35-ac06-4ee99d1229fd', 0.95, 89, '2022-09-02 23:25:39', '2022-09-02 23:32:30', 1, 0, 0.00, NULL, 0, 0.00),
(529, '{\"en\":\"PERRIER I BEER\",\"ar\":\"\\u0628\\u064a\\u0631\\u0629 \\/ \\u0628\\u064a\\u0631\"}', '{\"en\":\"PERRIER I BEER\",\"ar\":\"\\u0628\\u064a\\u0631\\u0629 \\/ \\u0628\\u064a\\u0631\"}', 'dcac3e79-a23f-451d-a6af-b1fde238e7e9', 0.75, 89, '2022-09-02 23:25:57', '2022-09-02 23:32:45', 1, 0, 0.00, NULL, 0, 0.00),
(530, '{\"en\":\"PERRIER I BEER\"}', '{\"en\":\"PERRIER I BEER\"}', '471f8adc-a19b-4a06-9fd6-d8e9208c3f36', 0.75, 89, '2022-09-02 23:25:57', '2022-09-02 23:32:58', 1, 0, 0.00, '2022-09-02 23:32:58', 0, 0.00);
INSERT INTO `items` (`id`, `name`, `description`, `image`, `price`, `category_id`, `created_at`, `updated_at`, `available`, `has_variants`, `vat`, `deleted_at`, `enable_system_variants`, `discounted_price`) VALUES
(531, '{\"en\":\"PINK DUNE\",\"ar\":\"\\u0628\\u064a\\u0646\\u0643 \\u062f\\u064a\\u0648\\u0646\"}', '{\"en\":\"PINK DUNE\",\"ar\":\"\\u0628\\u064a\\u0646\\u0643 \\u062f\\u064a\\u0648\\u0646\"}', '81317edb-f6ee-4876-9a19-5e5dc117d07d', 1.25, 89, '2022-09-02 23:26:12', '2022-09-02 23:33:11', 1, 0, 0.00, NULL, 0, 0.00),
(532, '{\"en\":\"COFFEE TURKISH\",\"ar\":\"\\u0642\\u0647\\u0648\\u0629 \\u062a\\u0631\\u0643\\u064a\"}', '{\"en\":\"COFFEE TURKISH\",\"ar\":\"\\u0642\\u0647\\u0648\\u0629 \\u062a\\u0631\\u0643\\u064a\"}', '783991df-8fe0-4318-b29c-7c692c28193b', 0.85, 89, '2022-09-02 23:26:27', '2022-09-02 23:33:23', 1, 0, 0.00, NULL, 0, 0.00),
(533, '{\"en\":\"COFFEE FRENCH\",\"ar\":\"\\u0642\\u0647\\u0648\\u0629 \\u0641\\u0631\\u0646\\u0633\\u064a\\u0629\"}', '{\"en\":\"COFFEE FRENCH\",\"ar\":\"\\u0642\\u0647\\u0648\\u0629 \\u0641\\u0631\\u0646\\u0633\\u064a\\u0629\"}', '1c0cbdf8-36a8-4de0-974a-93a923c75eda', 0.85, 89, '2022-09-02 23:26:48', '2022-09-02 23:33:35', 1, 0, 0.00, NULL, 0, 0.00),
(534, '{\"en\":\"TEA\",\"ar\":\"\\u0634\\u0627\\u064a\"}', '{\"en\":\"TEA\",\"ar\":\"\\u0634\\u0627\\u064a\"}', '35302d57-34db-4ca7-8fe1-e0b4c4be14eb', 0.50, 89, '2022-09-02 23:27:07', '2022-09-02 23:33:46', 1, 0, 0.00, NULL, 0, 0.00),
(535, '{\"en\":\"TEA GREEN\",\"ar\":\"\\u0634\\u0627\\u064a \\u0623\\u062e\\u0636\\u0631\"}', '{\"en\":\"TEA GREEN\",\"ar\":\"\\u0634\\u0627\\u064a \\u0623\\u062e\\u0636\\u0631\"}', 'df79e230-181b-4f14-b7ad-45b068a0d624', 0.75, 89, '2022-09-02 23:27:23', '2022-09-02 23:33:57', 1, 0, 0.00, NULL, 0, 0.00),
(536, '{\"en\":\"KING PRAWNS\",\"ar\":\"\\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0644\\u0643\"}', '{\"en\":\"KING PRAWNS\",\"ar\":\"\\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0644\\u0643\"}', '582e4035-9ba1-4b0d-934e-1f5b9005ed80', 4.75, 80, '2022-09-03 00:27:51', '2022-09-04 03:29:24', 1, 0, 0.00, NULL, 0, 0.00),
(537, '{\"en\":\"CHICKEN SIZZLER\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0633\\u064a\\u0632\\u0644\\u0631\"}', '{\"en\":\"CHICKEN SIZZLER\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0633\\u064a\\u0632\\u0644\\u0631\"}', 'caed49e6-80b6-444c-b86f-f6dde8281cfd', 3.45, 80, '2022-09-03 00:28:15', '2022-09-04 03:30:30', 1, 0, 0.00, NULL, 0, 0.00),
(538, '{\"en\":\"HOT GARLIC SAUCE\",\"ar\":\"\\u0635\\u0644\\u0635\\u0629 \\u062b\\u0648\\u0645 \\u062d\\u0627\\u0631\"}', '{\"en\":\"HOT GARLIC SAUCE\",\"ar\":\"\\u0635\\u0644\\u0635\\u0629 \\u062b\\u0648\\u0645 \\u062d\\u0627\\u0631\"}', '086e4a0c-7fc0-4dbf-bd29-57b48a420a06', 1.95, 80, '2022-09-03 00:28:36', '2022-09-03 00:40:53', 1, 1, 0.00, NULL, 0, 0.00),
(539, '{\"en\":\"SHRIMPS SZECHWAN\",\"ar\":\"\\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u0633\\u064a\\u0632\\u0648\\u0627\\u0646\"}', '{\"en\":\"SHRIMPS SZECHWAN\",\"ar\":\"\\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u0633\\u064a\\u0632\\u0648\\u0627\\u0646\"}', '2f6be8aa-e5a0-4f41-8b70-b923d4929533', 3.85, 80, '2022-09-03 00:30:46', '2022-09-03 00:41:08', 1, 0, 0.00, NULL, 0, 0.00),
(540, '{\"en\":\"SHRIMPS WITH BLACK PEPPER\",\"ar\":\"\\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u0645\\u0639 \\u0641\\u0644\\u0641\\u0644 \\u0627\\u0633\\u0648\\u062f\"}', '{\"en\":\"SHRIMPS WITH BLACK PEPPER\",\"ar\":\"\\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u0645\\u0639 \\u0641\\u0644\\u0641\\u0644 \\u0627\\u0633\\u0648\\u062f\"}', '5d6a95c3-b28c-445d-b180-ad29d4215605', 3.85, 80, '2022-09-03 00:31:03', '2022-09-03 00:41:22', 1, 0, 0.00, NULL, 0, 0.00),
(541, '{\"en\":\"SHRIMPS WITH BLACK BEAN\",\"ar\":\"\\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u0645\\u0639 \\u0641\\u0627\\u0635\\u0648\\u0644\\u064a\\u0627 \\u0627\\u0633\\u0648\\u062f\"}', '{\"en\":\"SHRIMPS WITH BLACK BEAN\",\"ar\":\"\\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u0645\\u0639 \\u0641\\u0627\\u0635\\u0648\\u0644\\u064a\\u0627 \\u0627\\u0633\\u0648\\u062f\"}', '67698f87-9d8d-4635-817a-cbaf64f1bbc0', 3.85, 80, '2022-09-03 00:31:22', '2022-09-03 00:41:39', 1, 0, 0.00, NULL, 0, 0.00),
(542, '{\"en\":\"HAMMOUR WITH BLACK PEEPER\",\"ar\":\"\\u0647\\u0627\\u0645\\u0648\\u0631 \\u0645\\u0639 \\u0641\\u0644\\u0641\\u0644 \\u0627\\u0633\\u0648\\u062f\"}', '{\"en\":\"HAMMOUR WITH BLACK PEEPER\",\"ar\":\"\\u0647\\u0627\\u0645\\u0648\\u0631 \\u0645\\u0639 \\u0641\\u0644\\u0641\\u0644 \\u0627\\u0633\\u0648\\u062f\"}', '9c1e1ddc-c525-47f9-8c07-497c924bfcd0', 3.65, 80, '2022-09-03 00:31:40', '2022-09-03 00:41:54', 1, 0, 0.00, NULL, 0, 0.00),
(543, '{\"en\":\"HAMMOUR SZECHWAN\",\"ar\":\"\\u0647\\u0627\\u0645\\u0648 \\u0633\\u064a\\u0632\\u0648\\u0627\\u0646\"}', '{\"en\":\"HAMMOUR SZECHWAN\",\"ar\":\"\\u0647\\u0627\\u0645\\u0648 \\u0633\\u064a\\u0632\\u0648\\u0627\\u0646\"}', '30bf27f4-be64-4c70-b835-d210a772e72c', 3.65, 80, '2022-09-03 00:31:56', '2022-09-03 00:42:06', 1, 0, 0.00, NULL, 0, 0.00),
(544, '{\"en\":\"CHICKEN SZECHWAN\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0633\\u064a\\u0632\\u0648\\u0627\\u0646\"}', '{\"en\":\"CHICKEN SZECHWAN\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0633\\u064a\\u0632\\u0648\\u0627\\u0646\"}', 'b7412a81-a30b-47bc-a34f-862d65f3c231', 2.85, 80, '2022-09-03 00:32:13', '2022-09-03 00:42:35', 1, 0, 0.00, NULL, 0, 0.00),
(545, '{\"en\":\"CHICKEN MANCHURIAN\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0645\\u0627\\u0646\\u0634\\u0648\\u0631\\u06cc\\u0627\\u0646\"}', '{\"en\":\"CHICKEN MANCHURIAN\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0645\\u0627\\u0646\\u0634\\u0648\\u0631\\u06cc\\u0627\\u0646\"}', '7af9cc69-893f-4349-a823-8afe16e61c36', 2.85, 80, '2022-09-03 00:32:34', '2022-09-03 00:42:50', 1, 0, 0.00, NULL, 0, 0.00),
(546, '{\"en\":\"CHICKEN WITH BLACK PEPPER\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0645\\u0639 \\u0641\\u0644\\u0641\\u0644 \\u0627\\u0633\\u0648\\u062f\"}', '{\"en\":\"CHICKEN WITH BLACK PEPPER\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0645\\u0639 \\u0641\\u0644\\u0641\\u0644 \\u0627\\u0633\\u0648\\u062f\"}', 'ff5c09e8-4c28-40f3-b0f8-b2f733cd3675', 2.85, 80, '2022-09-03 00:32:55', '2022-09-03 00:43:02', 1, 0, 0.00, NULL, 0, 0.00),
(547, '{\"en\":\"CHICKEN WITH BLACK BEAN\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0645\\u0639 \\u0641\\u0627\\u0635\\u0648\\u0644\\u064a\\u0627 \\u0627\\u0633\\u0648\\u062f\"}', '{\"en\":\"CHICKEN WITH BLACK BEAN\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0645\\u0639 \\u0641\\u0627\\u0635\\u0648\\u0644\\u064a\\u0627 \\u0627\\u0633\\u0648\\u062f\"}', '45fb8b98-5641-4a6c-8102-8ca844dbddf9', 2.85, 80, '2022-09-03 00:33:11', '2022-09-03 00:43:16', 1, 0, 0.00, NULL, 0, 0.00),
(548, '{\"en\":\"LOBSTER HOT GARLIC\",\"ar\":\"\\u0627\\u0645 \\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u0645\\u0639 \\u0635\\u0644\\u0635 \\u0628\\u0627\\u0644\\u062b\\u0648\\u0645\"}', '{\"en\":\"LOBSTER HOT GARLIC\",\"ar\":\"\\u0627\\u0645 \\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u0645\\u0639 \\u0635\\u0644\\u0635 \\u0628\\u0627\\u0644\\u062b\\u0648\\u0645\"}', 'f69215a6-f2d8-4492-9b2a-f50f3743e258', 9.95, 80, '2022-09-03 00:33:57', '2022-09-04 03:33:25', 1, 0, 0.00, NULL, 0, 0.00),
(549, '{\"en\":\"BEEF SZECHWAN\",\"ar\":\"\\u0644\\u062d\\u0645 \\u0628\\u0642\\u0631 \\u0633\\u064a\\u0632\\u0648\\u0627\\u0646\"}', '{\"en\":\"BEEF SZECHWAN\",\"ar\":\"\\u0644\\u062d\\u0645 \\u0628\\u0642\\u0631 \\u0633\\u064a\\u0632\\u0648\\u0627\\u0646\"}', '09b500bb-1dec-4fd3-bc3a-36b0bc98f12f', 2.95, 80, '2022-09-03 00:34:21', '2022-09-03 00:43:50', 1, 0, 0.00, NULL, 0, 0.00),
(550, '{\"en\":\"BEEF WITH BLACK BEAN\",\"ar\":\"\\u0644\\u062d\\u0645 \\u0628\\u0642\\u0631 \\u0645\\u0639 \\u0641\\u0627\\u0635\\u0648\\u0644\\u064a\\u0627 \\u0627\\u0633\\u0648\\u062f\"}', '{\"en\":\"BEEF WITH BLACK BEAN\",\"ar\":\"\\u0644\\u062d\\u0645 \\u0628\\u0642\\u0631 \\u0645\\u0639 \\u0641\\u0627\\u0635\\u0648\\u0644\\u064a\\u0627 \\u0627\\u0633\\u0648\\u062f\"}', '740b61d5-02d7-49e3-9309-1946369aa6d3', 2.95, 80, '2022-09-03 00:34:35', '2022-09-03 00:44:03', 1, 0, 0.00, NULL, 0, 0.00),
(551, '{\"en\":\"VEGETABLE OYSTER SAUCE\",\"ar\":\"\\u062e\\u0636\\u0627\\u0631 \\u0645\\u0639 \\u0635\\u0644\\u0635\\u0629 \\u0645\\u062d\\u0627\\u0631\"}', '{\"en\":\"VEGETABLE OYSTER SAUCE\",\"ar\":\"\\u062e\\u0636\\u0627\\u0631 \\u0645\\u0639 \\u0635\\u0644\\u0635\\u0629 \\u0645\\u062d\\u0627\\u0631\"}', '0b4a1549-4ec2-4541-ac9b-49abc674456f', 1.95, 80, '2022-09-03 00:37:32', '2022-09-03 00:44:18', 1, 0, 0.00, NULL, 0, 0.00),
(552, '{\"en\":\"BROCCOLI WITH MUSHROOMS\",\"ar\":\"\\u0628\\u0631\\u0648\\u0643\\u0644\\u064a \\u0645\\u0639 \\u0641\\u0637\\u0631\"}', '{\"en\":\"BROCCOLI WITH MUSHROOMS\",\"ar\":\"\\u0628\\u0631\\u0648\\u0643\\u0644\\u064a \\u0645\\u0639 \\u0641\\u0637\\u0631\"}', '699f4657-b3c6-4b66-9e05-5416d5800db7', 1.95, 80, '2022-09-03 00:37:59', '2022-09-03 00:45:41', 1, 0, 0.00, NULL, 0, 0.00),
(553, '{\"en\":\"ROTI\",\"ar\":\"\\u0631\\u0648\\u062a\\u0640\\u064a\"}', '{\"en\":\"ROTI\",\"ar\":\"\\u0631\\u0648\\u062a\\u0640\\u064a\"}', '2e8de33d-145c-4fd1-8404-3e8136096805', 0.25, 90, '2022-09-03 00:50:31', '2022-09-04 03:27:19', 1, 0, 0.00, NULL, 0, 0.00),
(554, '{\"en\":\"NAAN\",\"ar\":\"\\u0646\\u0627\\u0646\"}', '{\"en\":\"NAAN\",\"ar\":\"\\u0646\\u0627\\u0646\"}', 'a44f7551-c49b-4eb6-83a0-7e6b98591809', 0.30, 90, '2022-09-03 00:50:49', '2022-09-03 00:54:44', 1, 0, 0.00, NULL, 0, 0.00),
(555, '{\"en\":\"JATLAR NAAN\",\"ar\":\"\\u0646\\u0627\\u0646 \\u062c\\u0627\\u062a\\u0644\\u0627\\u064a\\u0631\"}', '{\"en\":\"JATLAR NAAN\",\"ar\":\"\\u0646\\u0627\\u0646 \\u062c\\u0627\\u062a\\u0644\\u0627\\u064a\\u0631\"}', '8b3a09b0-407a-4e8c-af11-1d897021a2ae', 0.35, 90, '2022-09-03 00:51:08', '2022-09-03 00:55:01', 1, 0, 0.00, NULL, 0, 0.00),
(556, '{\"en\":\"FRIED RICE\",\"ar\":\"\\u0627\\u0631\\u0632 \\u0645\\u0642\\u0644\\u064a\"}', '{\"en\":\"FRIED RICE\",\"ar\":\"\\u0627\\u0631\\u0632 \\u0645\\u0642\\u0644\\u064a\"}', '08d741f2-fa4f-427e-ae56-f5d05380848d', 1.95, 94, '2022-09-03 00:55:48', '2022-09-04 03:23:28', 1, 1, 0.00, NULL, 0, 0.00),
(557, '{\"en\":\"FRIED RICE\"}', '{\"en\":\"FRIED RICE\"}', '3c407057-3d55-4236-bdbe-5525c856cb07', 1.95, 94, '2022-09-03 00:55:48', '2022-09-03 00:56:00', 1, 0, 0.00, '2022-09-03 00:56:00', 0, 0.00),
(558, '{\"en\":\"NOODLES\",\"ar\":\"\\u0645\\u0639\\u0643\\u0631\\u0648\\u0646\\u0629\"}', '{\"en\":\"NOODLES\",\"ar\":\"\\u0645\\u0639\\u0643\\u0631\\u0648\\u0646\\u0629\"}', '6125306e-8989-4242-9129-90bec02870cb', 2.25, 94, '2022-09-03 00:58:25', '2022-09-04 03:24:31', 1, 1, 0.00, NULL, 0, 0.00),
(559, '{\"en\":\"PLAIN RICE \\/ JEERA RICE\",\"ar\":\"\\u0623\\u0631\\u0632 \\u0633\\u0627\\u062f\\u0629 \\/ \\u0627\\u0631\\u0632 \\u062b\\u0648\\u0645 \\u0628\\u0627\\u0644\\u0643\\u0645\\u0648\\u0646\"}', '{\"en\":\"PLAIN RICE \\/ JEERA RICE\",\"ar\":\"\\u0623\\u0631\\u0632 \\u0633\\u0627\\u062f\\u0629 \\/ \\u0627\\u0631\\u0632 \\u062b\\u0648\\u0645 \\u0628\\u0627\\u0644\\u0643\\u0645\\u0648\\u0646\"}', '474ea98a-99a6-41bf-9b4d-4f0ff2dd8919', 1.45, 94, '2022-09-03 01:00:09', '2022-09-04 03:25:06', 1, 0, 0.00, NULL, 0, 0.00),
(560, '{\"en\":\"MIX FRIED RICE\",\"ar\":\"\\u0645\\u0634\\u0643\\u0644 \\u0623\\u0631\\u0632 \\u0645\\u0642\\u0644\\u064a\"}', '{\"en\":\"MIX FRIED RICE\",\"ar\":\"\\u0645\\u0634\\u0643\\u0644 \\u0623\\u0631\\u0632 \\u0645\\u0642\\u0644\\u064a\"}', 'ea400c36-4db9-4244-a94f-6a5884462076', 3.25, 94, '2022-09-03 01:00:28', '2022-09-04 03:25:42', 1, 0, 0.00, NULL, 0, 0.00),
(561, '{\"en\":\"PENNE ALFREDO\",\"ar\":\"\\u0628\\u064a\\u0646\\u064a \\u0623\\u0644\\u0641\\u0631\\u064a\\u062f\\u0648\"}', '{\"en\":\"PENNE ALFREDO\",\"ar\":\"\\u0628\\u064a\\u0646\\u064a \\u0623\\u0644\\u0641\\u0631\\u064a\\u062f\\u0648\"}', '7b11cbb5-9fcc-4560-bf6a-631bfc3581d2', 2.95, 83, '2022-09-03 01:04:52', '2022-09-04 03:20:21', 1, 1, 0.00, NULL, 0, 0.00),
(562, '{\"en\":\"SPAGHETTI ALFREDO\",\"ar\":\"\\u0633\\u0628\\u0627\\u063a\\u064a\\u062a\\u064a \\u0627\\u0644\\u0641\\u0631\\u064a\\u062f\\u0648\"}', '{\"en\":\"SPAGHETTI ALFREDO\",\"ar\":\"\\u0633\\u0628\\u0627\\u063a\\u064a\\u062a\\u064a \\u0627\\u0644\\u0641\\u0631\\u064a\\u062f\\u0648\"}', '64ead927-4882-4f4b-9320-020caf575d93', 2.75, 83, '2022-09-03 01:05:10', '2022-09-04 03:21:07', 1, 0, 0.00, NULL, 0, 0.00),
(563, '{\"en\":\"METHI MALAI MUTTER\",\"ar\":\"\\u0628\\u064a\\u062b\\u064a \\u0645\\u0644\\u0627\\u064a \\u0645\\u062a\\u0631\"}', '{\"en\":\"METHI MALAI MUTTER\",\"ar\":\"\\u0628\\u064a\\u062b\\u064a \\u0645\\u0644\\u0627\\u064a \\u0645\\u062a\\u0631\"}', '2d7a2e90-b014-4874-915d-0bf05db3c441', 2.45, 86, '2022-09-03 01:18:03', '2022-09-04 03:15:46', 1, 0, 0.00, NULL, 0, 0.00),
(564, '{\"en\":\"DAL TADKA\",\"ar\":\"\\u062f\\u0627\\u0644 \\u062a\\u0640\\u062f\\u0643\\u0640\\u0627\"}', '{\"en\":\"DAL TADKA\",\"ar\":\"\\u062f\\u0627\\u0644 \\u062a\\u0640\\u062f\\u0643\\u0640\\u0627\"}', '11cadbf4-0980-4b0a-a6d4-f54f48a3f3d7', 2.25, 86, '2022-09-03 01:18:24', '2022-09-04 03:16:54', 1, 0, 0.00, NULL, 0, 0.00),
(565, '{\"en\":\"NAVRATAN KORMA\",\"ar\":\"\\u0646\\u0627\\u0641\\u0631\\u062a\\u0627\\u0646 \\u0643\\u0648\\u0631\\u0645\\u0627\"}', '{\"en\":\"NAVRATAN KORMA\",\"ar\":\"\\u0646\\u0627\\u0641\\u0631\\u062a\\u0627\\u0646 \\u0643\\u0648\\u0631\\u0645\\u0627\"}', '87c529e3-010e-4b5f-9bf8-443f89c7d479', 3.25, 86, '2022-09-03 01:18:40', '2022-09-04 03:17:50', 1, 0, 0.00, NULL, 0, 0.00),
(566, '{\"en\":\"SHAHI ALOO GOBHI\",\"ar\":\"\\u0634\\u0627\\u0647\\u064a \\u0628\\u0637\\u0627\\u0637\\u0633 \\u062c\\u0648\\u0628\\u064a\"}', '{\"en\":\"SHAHI ALOO GOBHI\",\"ar\":\"\\u0634\\u0627\\u0647\\u064a \\u0628\\u0637\\u0627\\u0637\\u0633 \\u062c\\u0648\\u0628\\u064a\"}', '59ebf4fc-8b32-430f-a27e-39f666a148e8', 2.25, 86, '2022-09-03 01:19:09', '2022-09-04 03:19:00', 1, 0, 0.00, NULL, 0, 0.00),
(567, '{\"en\":\"KADAI PANEER\",\"ar\":\"\\u0643\\u0640\\u062f\\u0627\\u064a \\u0628\\u0640\\u0646\\u0640\\u064a\\u0640\\u0631\"}', '{\"en\":\"KADAI PANEER\",\"ar\":\"\\u0643\\u0640\\u062f\\u0627\\u064a \\u0628\\u0640\\u0646\\u0640\\u064a\\u0640\\u0631\"}', '43b28c27-9ca6-4d1f-b303-13e3b9b81dda', 2.75, 86, '2022-09-03 01:19:31', '2022-09-03 06:29:31', 1, 0, 0.00, NULL, 0, 0.00),
(568, '{\"en\":\"PANEER MAKHNI\",\"ar\":\"\\u0628\\u0627\\u0646\\u064a\\u0631 \\u0645\\u0627\\u062e\\u0646\\u064a\"}', '{\"en\":\"Cubes of cottage cheese cooked with tomato puree, cream \\/ garnished - cream and butter\",\"ar\":\"\\u0645\\u0643\\u0639\\u0628\\u0627\\u062a \\u062c\\u0628\\u0646 \\u0645\\u0637\\u0628\\u0648\\u0639 \\u0645\\u0639 \\u0637\\u0645\\u0627\\u0637\\u0645\\u060c \\u0643\\u0631\\u064a\\u0645\\u0629 \\u0645\\u0632\\u062e\\u0631\\u0641\\u0629 + \\u0632\\u0628\\u062f\\u0629.\"}', '68188800-33e6-491c-a0ab-8a776f8fc586', 2.75, 86, '2022-09-03 01:20:42', '2022-09-03 06:29:51', 1, 0, 0.00, NULL, 0, 0.00),
(569, '{\"en\":\"TAWA MUSHROOM \\/ PALAK MUSHROOM\",\"ar\":\"\\u0633\\u0628\\u0627\\u0646\\u062e \\u0645\\u0646 \\u0641\\u0637\\u0631 \\/ \\u062a\\u0627\\u0648\\u0627 \\u0641\\u0637\\u0631\"}', '{\"en\":\"Mushroom cooked with spinach, garnish paneer, coriander\",\"ar\":\"\\u0645\\u0634\\u0631\\u0648\\u0645 \\u0645\\u0637\\u0628\\u0648\\u063a \\u0645\\u0639 \\u0633\\u0628\\u0627\\u0646\\u063a\\u060c \\u0645\\u062a\\u0628\\u0644 \\u0648 \\u0643\\u0632\\u0628\\u0631\\u0629.\"}', 'e824550a-ea86-4b13-a2c0-14d0aa5c21de', 2.45, 86, '2022-09-03 01:21:06', '2022-09-03 06:30:10', 1, 0, 0.00, NULL, 0, 0.00),
(570, '{\"en\":\"GRILLED CHICKEN\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0645\\u0634\\u0648\\u064a\"}', '{\"en\":\"GRILLED CHICKEN\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0645\\u0634\\u0648\\u064a\"}', 'ae05038d-9916-40ea-a861-2e53893136a1', 2.25, 84, '2022-09-03 06:31:52', '2022-09-04 01:10:50', 1, 1, 0.00, NULL, 0, 0.00),
(571, '{\"en\":\"SHEESH TAWOOK\",\"ar\":\"\\u0634\\u064a\\u0634 \\u0637\\u0627\\u0648\\u0648\\u0642\"}', '{\"en\":\"SHEESH TAWOOK (6 PCS)\",\"ar\":\"\\u0634\\u064a\\u0634 \\u0637\\u0627\\u0648\\u0648\\u0642 (6\\u062d\\u0628\\u0629)\"}', '4b9daa83-4788-45d1-ad9f-162a460a9dd1', 2.95, 84, '2022-09-03 06:33:45', '2022-09-04 02:30:13', 1, 0, 0.00, NULL, 0, 0.00),
(572, '{\"en\":\"ARAIS\",\"ar\":\"\\u0639\\u0640\\u0631\\u0627\\u064a\\u0640\\u0633\"}', '{\"en\":\"ARAIS\",\"ar\":\"\\u0639\\u0640\\u0631\\u0627\\u064a\\u0640\\u0633\"}', 'd2e10735-44bf-46c8-9650-f32bedbdd665', 1.65, 84, '2022-09-03 06:34:05', '2022-09-04 02:32:51', 1, 0, 0.00, NULL, 0, 0.00),
(573, '{\"en\":\"MUTTON RAISH\",\"ar\":\"\\u0644\\u062d\\u0645 \\u0631\\u064a\\u0634\"}', '{\"en\":\"MUTTON RAISH (4 PCS)\",\"ar\":\"\\u0644\\u062d\\u0645 \\u0631\\u064a\\u0634 (4 \\u062d\\u0628\\u0629)\"}', '33748c06-ed8c-4b20-9a94-3dcb464d8e28', 3.95, 84, '2022-09-03 06:34:38', '2022-09-04 02:35:43', 1, 0, 0.00, NULL, 0, 0.00),
(574, '{\"en\":\"MUTTON KHASHKASH KABAB\",\"ar\":\"\\u062e\\u0634\\u062e\\u0634 \\u0644\\u062d\\u0645 \\u0643\\u0628\\u0627\\u0628\"}', '{\"en\":\"MUTTON KHASHKASH KABAB (4 PCS)\",\"ar\":\"\\u062e\\u0634\\u062e\\u0634 \\u0644\\u062d\\u0645 \\u0643\\u0628\\u0627\\u0628 (4 \\u062d\\u0628\\u0629)\"}', '441e54d1-dab2-4876-89bb-e282a2a40585', 3.25, 84, '2022-09-03 06:35:06', '2022-09-04 02:37:02', 1, 0, 0.00, NULL, 0, 0.00),
(575, '{\"en\":\"CHICKEN \\/ MUTTON SEEKH KABAB\",\"ar\":\"\\u0633\\u064a\\u062e \\u0643\\u0628\\u0627\\u0628 \\u062f\\u062c\\u0627\\u062c \\/ \\u0644\\u062d\\u0645\"}', '{\"en\":\"Chicken minced with ginger, garlic, coriander and onion, grilled on charcoal fire. (4pcs)\",\"ar\":\"\\u0644\\u062d\\u0645 \\u0631\\u0642\\u064a\\u0642\\u060c \\u0645\\u0641\\u0631\\u0648\\u0645 \\u0645\\u0639 \\u0632\\u0646\\u062c\\u0628\\u064a\\u0644\\u060c \\u0641\\u0644\\u0641\\u0644 \\u0627\\u062e\\u0636\\u0631 \\u062b\\u0648\\u0645\\u060c \\u062a\\u0648\\u0627\\u0628\\u0644\\u060c \\u0628\\u0635\\u0644 \\u0648 \\u0645\\u0634\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0641\\u062d\\u0645\"}', 'cb8723bb-b89f-4ef2-a488-6ef736d87815', 2.95, 84, '2022-09-03 06:35:31', '2022-09-04 02:41:16', 1, 1, 0.00, NULL, 0, 0.00),
(576, '{\"en\":\"CHICKEN KEBAB\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0643\\u0628\\u0627\\u0628\"}', '{\"en\":\"CHICKEN KEBAB\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0643\\u0628\\u0627\\u0628\"}', '3703b43f-5823-4fca-95da-a31459cb7353', 2.95, 84, '2022-09-03 06:36:45', '2022-09-04 02:39:45', 1, 0, 0.00, NULL, 0, 0.00),
(577, '{\"en\":\"TANDOORI CRAB\",\"ar\":\"\\u062a\\u0646\\u062f\\u0648\\u0631\\u064a \\u0642\\u0628\\u0642\\u0628\"}', '{\"en\":\"TANDOORI CRAB\",\"ar\":\"\\u062a\\u0646\\u062f\\u0648\\u0631\\u064a \\u0642\\u0628\\u0642\\u0628\"}', '399a2434-e5bb-4b15-b883-49cdc0c4d22d', 4.90, 88, '2022-09-03 06:47:43', '2022-09-04 01:05:14', 1, 0, 0.00, NULL, 0, 0.00),
(578, '{\"en\":\"RAJDHANI SEAFOOD SIZZLER\",\"ar\":\"\\u0631\\u0627\\u062c\\u062f\\u0627\\u0646\\u064a \\u0633\\u064a\\u0632\\u0644\\u0631 \\u0628\\u062d\\u0631\\u064a\\u0629\"}', '{\"en\":\"Tandoor (10pcs) combination of medium size shrimps, fish, tikka, squid, crabs marinated of selected spices, yoghurt, grilled in charcoal\",\"ar\":\"\\u062a\\u0646\\u0648\\u062f\\u0631 (10 \\u062d\\u0628\\u0629) \\u062e\\u0644\\u064a\\u0637 \\u0645\\u0646 \\u062d\\u062c\\u0645 \\u0648\\u0633\\u0637 \\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u060c \\u062a\\u0643\\u0627\\u060c \\u0633\\u0645\\u0643\\u060c \\u0642\\u0628\\u0642\\u0628 \\u0645\\u0646\\u0642\\u0639 \\u0641\\u064a \\u062a\\u0648\\u0627\\u0628\\u0644 \\u0645\\u062e\\u062a\\u0627\\u0631\\u0647\\u060c \\u0631\\u0648\\u0628\\u060c \\u0645\\u0634\\u0648\\u064a \\u0639\\u0644\\u064a \\u0627\\u0644\\u0641\\u062d\\u0645\"}', 'c90809e5-03c8-4370-9ff6-3a97705d7f33', 7.95, 88, '2022-09-03 06:48:06', '2022-09-04 01:07:45', 1, 0, 0.00, NULL, 0, 0.00),
(579, '{\"en\":\"ZUBEIDI BIRYANI\",\"ar\":\"\\u0628\\u0631\\u064a\\u0627\\u0646\\u064a \\u0632\\u0628\\u064a\\u062f\\u064a\"}', '{\"en\":\"ZUBEIDI BIRYANI\",\"ar\":\"\\u0628\\u0631\\u064a\\u0627\\u0646\\u064a \\u0632\\u0628\\u064a\\u062f\\u064a\"}', '8e84e80f-2096-4db4-8b20-83c6334f1114', 4.25, 79, '2022-09-03 06:55:30', '2022-09-04 02:44:32', 1, 0, 0.00, NULL, 0, 0.00),
(580, '{\"en\":\"FISH BIRIYANI\",\"ar\":\"\\u0628\\u0631\\u064a\\u0627\\u0646\\u064a \\u0633\\u0645\\u0643\"}', '{\"en\":\"FISH BIRIYANI\",\"ar\":\"\\u0628\\u0631\\u064a\\u0627\\u0646\\u064a \\u0633\\u0645\\u0643\"}', '7402a897-bd3a-4a29-8b94-fc219daf1b3c', 3.95, 79, '2022-09-03 06:55:47', '2022-09-04 02:47:36', 1, 0, 0.00, NULL, 0, 0.00),
(581, '{\"en\":\"SAFFRON RICE\",\"ar\":\"\\u0623\\u0631\\u0632 \\u0628\\u0627\\u0644\\u0632\\u0639\\u0641\\u0631\\u0627\\u0646\"}', '{\"en\":\"SAFFRON RICE\",\"ar\":\"\\u0623\\u0631\\u0632 \\u0628\\u0627\\u0644\\u0632\\u0639\\u0641\\u0631\\u0627\\u0646\"}', '97624646-ac03-4246-8e50-8d744aad3b79', 1.65, 79, '2022-09-03 06:56:05', '2022-09-04 02:58:51', 1, 0, 0.00, NULL, 0, 0.00),
(582, '{\"en\":\"CHICKEN MACHBOOS\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0645\\u062c\\u0628\\u0648\\u0633\"}', '{\"en\":\"CHICKEN MACHBOOS\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0645\\u062c\\u0628\\u0648\\u0633\"}', '9e46f16e-15b1-428b-930c-6b814fb3b4eb', 3.25, 79, '2022-09-03 06:56:31', '2022-09-03 06:59:42', 1, 0, 0.00, NULL, 0, 0.00),
(583, '{\"en\":\"ROGAN JOSH\",\"ar\":\"\\u0631\\u0648\\u063a\\u0646 \\u062c\\u0648\\u0634\"}', '{\"en\":\"ROGAN JOSH\",\"ar\":\"\\u0631\\u0648\\u063a\\u0646 \\u062c\\u0648\\u0634\"}', '46e3bb60-e768-4500-8597-cb0d41be09fa', 3.45, 82, '2022-09-03 07:04:23', '2022-09-04 03:09:32', 1, 0, 0.00, NULL, 0, 0.00),
(584, '{\"en\":\"CHICKEN ANARKALI\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0627\\u0646\\u0627\\u0631\\u0643\\u0627\\u0644\\u064a\"}', '{\"en\":\"CHICKEN ANARKALI\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0627\\u0646\\u0627\\u0631\\u0643\\u0627\\u0644\\u064a\"}', 'aeaf8489-c49a-49cb-a7ee-522360b923a5', 3.50, 82, '2022-09-03 07:04:39', '2022-09-03 07:12:46', 1, 0, 0.00, NULL, 0, 0.00),
(585, '{\"en\":\"ACHAR GHOST\",\"ar\":\"\\u0627\\u0634\\u0627\\u0631 \\u063a\\u0648\\u0634\\u062a\"}', '{\"en\":\"ACHAR GHOST\",\"ar\":\"\\u0627\\u0634\\u0627\\u0631 \\u063a\\u0648\\u0634\\u062a\"}', 'a92b758d-127f-4407-b570-5027c99a6771', 3.50, 82, '2022-09-03 07:05:00', '2022-09-03 07:13:00', 1, 0, 0.00, NULL, 0, 0.00),
(586, '{\"en\":\"VINDALLO CHICKEN\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0641\\u06cc\\u0646\\u062f\\u0627\\u0644\\u0648\"}', '{\"en\":\"VINDALLO CHICKEN\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0641\\u06cc\\u0646\\u062f\\u0627\\u0644\\u0648\"}', 'befa93a1-287a-4475-afa3-6a1fd7b33905', 3.25, 82, '2022-09-03 07:05:20', '2022-09-03 07:13:12', 1, 0, 0.00, NULL, 0, 0.00),
(587, '{\"en\":\"VINDALLO MUTTON\",\"ar\":\"\\u0644\\u062d\\u0645 \\u0641\\u064a\\u0646\\u062f\\u0627\\u0644\\u0648\"}', '{\"en\":\"VINDALLO MUTTON\",\"ar\":\"\\u0644\\u062d\\u0645 \\u0641\\u064a\\u0646\\u062f\\u0627\\u0644\\u0648\"}', '671c4445-6922-45be-b064-5551ea04c2bb', 3.50, 82, '2022-09-03 07:05:37', '2022-09-03 07:13:26', 1, 0, 0.00, NULL, 0, 0.00),
(588, '{\"en\":\"CHICKEN PATIYALA\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u0628\\u062a\\u064a\\u0644\\u0627\"}', '{\"en\":\"Boneless pcs of chicken cooked with the richness of tomato sauce fresh spinach\",\"ar\":\"\\u0642\\u0637\\u0639 \\u0645\\u0646 \\u062f\\u062c\\u0627\\u062c \\u0645\\u0637\\u0628\\u0648\\u063a \\u0628\\u0639\\u0646\\u0627\\u064a\\u0629 \\u0645\\u0639 \\u0635\\u0648\\u0635 \\u0637\\u0645\\u0627\\u0637\\u0645 \\u0648 \\u0633\\u0628\\u0627\\u0646\\u062e \\u0637\\u0627\\u0632\\u062c\"}', '1103cb8e-e93b-43bc-a989-8432a423b081', 3.25, 82, '2022-09-03 07:06:01', '2022-09-03 07:13:41', 1, 0, 0.00, NULL, 0, 0.00),
(589, '{\"en\":\"FISH \\/ SHRIMP CURRY\",\"ar\":\"\\u0633\\u0645\\u0643 \\/ \\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u0643\\u0640\\u0627\\u0631\\u064a\"}', '{\"en\":\"Prawns cooked with coconut gravy\",\"ar\":\"\\u0631\\u0648\\u0628\\u064a\\u0627\\u0646 \\u0645\\u0637\\u0628\\u0648\\u062e \\u0645\\u0639 \\u062c\\u0648\\u0632 \\u0647\\u0646\\u062f\"}', '6b651057-6a74-4998-bc8b-2b6475bb53d1', 3.65, 82, '2022-09-03 07:06:19', '2022-09-04 03:11:05', 1, 0, 0.00, NULL, 0, 0.00),
(590, '{\"en\":\"DAL MAKAHNI\",\"ar\":\"\\u062f\\u0627\\u0644 \\u0645\\u0627\\u062e\\u0640\\u0646\\u0640\\u064a\"}', '{\"en\":\"DAL MAKAHNI\",\"ar\":\"\\u062f\\u0627\\u0644 \\u0645\\u0627\\u062e\\u0640\\u0646\\u0640\\u064a\"}', 'cbac631d-c0f2-4f44-8d62-773d082613b0', 1.95, 82, '2022-09-03 07:06:56', '2022-09-04 03:12:07', 1, 0, 0.00, NULL, 0, 0.00),
(591, '{\"en\":\"CHICKEN TIKKA MASALA\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u062a\\u0643\\u0627 \\u0645\\u0633\\u0627\\u0644\\u0627\"}', '{\"en\":\"CHICKEN TIKKA MASALA\",\"ar\":\"\\u062f\\u062c\\u0627\\u062c \\u062a\\u0643\\u0627 \\u0645\\u0633\\u0627\\u0644\\u0627\"}', 'dfdcabf7-3b0b-474e-922f-887244c8c105', 3.25, 82, '2022-09-03 07:07:19', '2022-09-03 07:14:30', 1, 0, 0.00, NULL, 0, 0.00),
(592, '{\"en\":\"MUTTON KADAI\"}', '{\"en\":\"MUTTON KADAI\"}', 'd2ab7d9e-cc3c-48ac-90c6-d98b5b7e1512', 3.50, 82, '2022-09-03 07:07:37', '2022-09-03 07:15:44', 1, 0, 0.00, '2022-09-03 07:15:44', 0, 0.00),
(593, '{\"en\":\"SHAHI KORMA\",\"ar\":\"\\u0634\\u0627\\u0647\\u064a \\u0643\\u0648\\u0631\\u0645\\u0627\"}', '{\"en\":\"SHAHI KORMA\",\"ar\":\"\\u0634\\u0627\\u0647\\u064a \\u0643\\u0648\\u0631\\u0645\\u0627\"}', 'c5a89490-5579-4664-8ffe-3a6528bcb7fb', 3.25, 82, '2022-09-03 07:07:55', '2022-09-04 03:13:41', 1, 1, 0.00, NULL, 0, 0.00),
(594, '{\"en\":\"BAMIYA WITH\",\"ar\":\"\\u0628\\u0627\\u0645\\u064a\\u0629 \\u0645\\u0639\"}', '{\"en\":\"BAMIYA WITH\",\"ar\":\"\\u0628\\u0627\\u0645\\u064a\\u0629 \\u0645\\u0639\"}', 'f72ed8cb-c6d0-441c-8893-5ab6a086368c', 3.25, 82, '2022-09-03 07:08:56', '2022-09-04 03:14:32', 1, 1, 0.00, NULL, 0, 0.00),
(595, '{\"en\":\"LABAN\",\"ar\":\"\\u0644\\u0627\\u0628\\u0627\\u0646\"}', '{\"en\":\"LABAN\",\"ar\":\"\\u0644\\u0627\\u0628\\u0627\\u0646\"}', '452c6f50-c3a8-453b-bd66-5b8b58cc89c0', 0.95, 89, '2022-09-03 07:17:03', '2022-09-03 07:19:55', 1, 0, 0.00, NULL, 0, 0.00),
(596, '{\"en\":\"LEMON MINT\",\"ar\":\"\\u0644\\u064a\\u0645\\u0648\\u0646 \\u0628\\u0627\\u0644\\u0646\\u0639\\u0646\\u0627\\u0639\"}', '{\"en\":\"LEMON MINT\",\"ar\":\"\\u0644\\u064a\\u0645\\u0648\\u0646 \\u0628\\u0627\\u0644\\u0646\\u0639\\u0646\\u0627\\u0639\"}', '1eed1418-965d-48ae-ace0-44923b8ecd0e', 0.95, 89, '2022-09-03 07:17:19', '2022-09-03 07:20:08', 1, 0, 0.00, NULL, 0, 0.00),
(597, '{\"en\":\"ORANGE JUICE\",\"ar\":\"\\u0639\\u0635\\u064a\\u0631 \\u0628\\u0631\\u062a\\u0642\\u0627\\u0644\"}', '{\"en\":\"ORANGE JUICE\",\"ar\":\"\\u0639\\u0635\\u064a\\u0631 \\u0628\\u0631\\u062a\\u0642\\u0627\\u0644\"}', '50d5f6d3-66cc-434f-8660-e8d58579ba82', 1.45, 89, '2022-09-03 07:17:34', '2022-09-03 07:20:21', 1, 0, 0.00, NULL, 0, 0.00),
(598, '{\"en\":\"OREO MILK SHAKE\",\"ar\":\"\\u0623\\u0648\\u0631\\u064a\\u0648 \\u062d\\u0644\\u064a\\u0628 \\u0634\\u064a\\u0643\"}', '{\"en\":\"OREO MILK SHAKE\",\"ar\":\"\\u0623\\u0648\\u0631\\u064a\\u0648 \\u062d\\u0644\\u064a\\u0628 \\u0634\\u064a\\u0643\"}', '6eab16d6-2712-4dea-8e72-4ac85543307a', 1.45, 89, '2022-09-03 07:18:03', '2022-09-03 07:20:35', 1, 0, 0.00, NULL, 0, 0.00),
(599, '{\"en\":\"RAJDHANI MOCKTAILS\",\"ar\":\"\\u0645\\u0648\\u0643\\u062a\\u064a\\u0644 \\u0631\\u0627\\u062c\\u062f\\u0647\\u0627\\u0646\\u064a\"}', '{\"en\":\"RAJDHANI MOCKTAILS\",\"ar\":\"\\u0645\\u0648\\u0643\\u062a\\u064a\\u0644 \\u0631\\u0627\\u062c\\u062f\\u0647\\u0627\\u0646\\u064a\"}', '6ee6304c-c8fa-4907-8ecc-b34563dd9aa2', 1.65, 89, '2022-09-03 07:18:19', '2022-09-03 07:20:48', 1, 0, 0.00, NULL, 0, 0.00),
(600, '{\"en\":\"MUTTON MACHBOOS\",\"ar\":\"\\u0644\\u062d\\u0645 \\u0636\\u0627\\u0646 \\u0645\\u0642\\u0628\\u0648\\u0633\"}', '{\"en\":\"MUTTON MACHBOOS\",\"ar\":\"\\u0644\\u062d\\u0645 \\u0636\\u0627\\u0646 \\u0645\\u0642\\u0628\\u0648\\u0633\"}', '5cb6df94-043e-4f88-8f42-a86ce798b4c9', 3.75, 79, '2022-09-03 07:23:30', '2022-09-03 07:23:45', 1, 0, 0.00, NULL, 0, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `item_has_allergens`
--

CREATE TABLE `item_has_allergens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `allergen_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `localmenus`
--

CREATE TABLE `localmenus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languageName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` int(11) NOT NULL DEFAULT '0' COMMENT '0 - No, 1 - Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `localmenus`
--

INSERT INTO `localmenus` (`id`, `created_at`, `updated_at`, `restaurant_id`, `language`, `languageName`, `default`) VALUES
(1, '2022-08-19 00:30:20', '2022-08-19 00:30:20', 17, 'ar', 'Arabic', 0),
(2, '2022-08-19 00:40:34', '2022-08-19 00:40:34', 1, 'en', 'English', 1),
(3, '2022-08-19 00:40:34', '2022-08-19 00:40:34', 2, 'en', 'English', 1),
(4, '2022-08-19 00:40:34', '2022-08-19 00:40:34', 3, 'en', 'English', 1),
(5, '2022-08-19 00:40:34', '2022-08-19 00:40:34', 4, 'en', 'English', 1),
(6, '2022-08-19 00:40:34', '2022-08-19 00:40:34', 5, 'en', 'English', 1),
(7, '2022-08-19 00:40:34', '2022-08-19 00:40:34', 6, 'en', 'English', 1),
(8, '2022-08-19 00:40:34', '2022-08-19 00:40:34', 7, 'en', 'English', 1),
(9, '2022-08-19 00:40:34', '2022-08-19 00:40:34', 8, 'en', 'English', 1),
(10, '2022-08-19 00:40:34', '2022-08-19 00:40:34', 9, 'en', 'English', 1),
(11, '2022-08-19 00:40:34', '2022-08-19 00:40:34', 10, 'en', 'English', 1),
(12, '2022-08-19 00:40:34', '2022-08-19 00:40:34', 11, 'en', 'English', 1),
(13, '2022-08-19 00:40:34', '2022-08-19 00:40:34', 12, 'en', 'English', 1),
(14, '2022-08-19 00:40:34', '2022-08-19 00:40:34', 13, 'en', 'English', 1),
(15, '2022-08-19 00:40:34', '2022-08-19 00:40:34', 14, 'en', 'English', 1),
(16, '2022-08-19 00:40:34', '2022-08-19 00:40:34', 15, 'en', 'English', 1),
(17, '2022-08-19 00:40:34', '2022-08-19 00:40:34', 16, 'en', 'English', 1),
(18, '2022-08-19 00:40:34', '2022-08-19 00:40:34', 17, 'en', 'English', 1),
(19, '2022-08-19 00:40:34', '2022-08-19 00:40:34', 18, 'en', 'English', 1),
(20, '2022-08-20 00:00:41', '2022-08-20 00:00:41', 19, 'ar', 'Arabic', 0),
(21, '2022-08-20 00:01:52', '2022-08-20 00:01:52', 19, 'en', 'English', 0),
(22, '2022-08-22 03:57:45', '2022-08-22 03:57:45', 20, 'ar', 'Arabic', 0),
(23, '2022-08-22 03:59:54', '2022-08-22 05:04:00', 20, 'en', 'English', 1),
(24, '2022-08-25 00:32:26', '2022-08-25 00:32:26', 21, 'ar', 'Arabic', 0),
(25, '2022-08-25 00:32:39', '2022-08-25 00:32:43', 21, 'en', 'English', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_29_200844_create_languages_table', 1),
(4, '2018_08_29_205156_create_translations_table', 1),
(5, '2019_05_03_000001_create_customer_columns', 1),
(6, '2019_05_03_000002_create_subscriptions_table', 1),
(7, '2019_05_03_000003_create_subscription_items_table', 1),
(8, '2020_02_06_010033_create_permission_tables', 1),
(9, '2020_02_06_022212_create_restorants_table', 1),
(10, '2020_02_09_015116_create_status_table', 1),
(11, '2020_02_09_152551_create_categories_table', 1),
(12, '2020_02_09_152656_create_items_table', 1),
(13, '2020_02_11_052117_create_address_table', 1),
(14, '2020_02_11_054259_create_orders_table', 1),
(15, '2020_02_20_094727_create_settings_table', 1),
(16, '2020_03_25_134914_create_pages_table', 1),
(17, '2020_04_03_143518_update_settings_table', 1),
(18, '2020_04_10_202027_create_payments_table', 1),
(19, '2020_04_11_165819_update_table_orders', 1),
(20, '2020_04_22_105556_update_items_table', 1),
(21, '2020_04_23_212320_update_restorants_table', 1),
(22, '2020_04_23_212502_update_orders_table', 1),
(23, '2020_04_28_112519_update_address_table', 1),
(24, '2020_05_07_122727_create_hours_table', 1),
(25, '2020_05_09_012646_update_orders_add_delivery_table', 1),
(26, '2020_05_09_024507_add_options_to_settings_table', 1),
(27, '2020_05_20_232204_create_notifications_table', 1),
(28, '2020_06_03_134258_change_radius_to_delivery_area_restorants_table', 1),
(29, '2020_06_26_131803_create_sms_verifications_table', 1),
(30, '2020_07_12_182829_create_extras_table', 1),
(31, '2020_07_14_155509_create_plan_table', 1),
(32, '2020_07_23_183000_update_restorants_with_featured', 1),
(33, '2020_07_28_131511_update_users_sms_verification', 1),
(34, '2020_07_30_102916_change_json_to_string', 1),
(35, '2020_08_01_014851_create_variants', 1),
(36, '2020_08_14_003718_create_ratings_table', 1),
(37, '2020_08_18_035731_update_table_plans', 1),
(38, '2020_08_18_053012_update_user_add_plan', 1),
(39, '2020_09_02_131604_update_orders_time_to_prepare', 1),
(40, '2020_09_09_080747_create_cities_table', 1),
(41, '2020_09_28_131250_update_item_softdelete', 1),
(42, '2020_10_24_150254_create_tables_table', 1),
(43, '2020_10_25_021321_create_visits_table', 1),
(44, '2020_10_26_004421_update_orders_client_nullable', 1),
(45, '2020_10_26_104351_update_restorant_table', 1),
(46, '2020_10_26_190049_update_plan', 1),
(47, '2020_10_27_180123_create_stripe_payment', 1),
(48, '2020_11_01_190615_update_user_table', 1),
(49, '2020_11_05_081140_create_paths_table', 1),
(50, '2020_11_14_111220_create_phone_in_orders', 1),
(51, '2020_11_17_211252_update_logo_in_settings', 1),
(52, '2020_11_25_182453_create_paypal_payment', 1),
(53, '2020_11_25_225536_update_user_for_paypal_subsc', 1),
(54, '2020_11_27_102829_update_restaurants_for_delivery_pickup', 1),
(55, '2020_11_27_165901_create_coupons_table', 1),
(56, '2020_12_02_192213_update_for_whatsapp_order', 1),
(57, '2020_12_02_195333_update_for_mollie_payment', 1),
(58, '2020_12_07_142304_create_banners_table', 1),
(59, '2020_12_10_155335_wp_address', 1),
(60, '2020_12_14_195627_update_for_paystack_sub', 1),
(61, '2020_12_15_130511_update_paystack_verification', 1),
(62, '2020_12_27_155822_create_restaurant_multilanguage', 1),
(63, '2020_12_27_162902_update_restaurant_with_currency', 1),
(64, '2021_01_16_093708_update_restorant_with_pay_link', 1),
(65, '2021_01_22_142723_create_crud_for_whatsapp_landing', 1),
(66, '2021_02_16_065037_create_configs_table', 2),
(67, '2021_02_18_140330_allow_null_on_config_value', 2),
(68, '2021_02_22_135519_update_settinga_table', 2),
(69, '2021_02_26_113854_order_fee_update', 2),
(70, '2021_03_23_135952_update_config_table', 2),
(71, '2021_04_17_002457_update_restables', 2),
(72, '2021_04_17_231310_update_restablesagain', 2),
(73, '2021_04_22_184249_update_user_with_staff', 2),
(74, '2021_04_26_190410_create_cart_storage_table', 2),
(75, '2021_05_19_032734_update_order_with_employee_id', 2),
(76, '2021_05_19_124342_create_simple_delivery_areas', 2),
(77, '2021_05_28_070715_create_expenses', 2),
(78, '2021_07_01_084847_make_restaurant_soft_delete', 2),
(79, '2021_07_16_170627_make_user_soft_delete', 2),
(80, '2021_07_16_172430_make_user_email_not_unique', 2),
(81, '2021_07_21_153807_rename_to_company', 2),
(82, '2021_07_21_162114_make_pure_saas', 2),
(83, '2021_08_04_073843_add_md_to_orders', 2),
(84, '2021_09_03_131601_update_with_default_variants', 2),
(85, '2021_09_04_091444_cat_sd', 2),
(86, '2021_10_09_162446_update_order_with_coupons', 2),
(87, '2021_11_06_104921_create_item_has_allergens', 2),
(88, '2022_01_26_085729_update_item_desc_to_text', 2),
(89, '2022_02_26_234212_update_users_with_expotoken', 2),
(90, '2022_04_06_224707_update_items_with_discount_price', 2),
(91, '2022_04_14_082828_update_companies_with_can_dinein', 2),
(92, '2022_04_14_091003_update_delivery_areas_with_phone', 2),
(93, '2022_05_19_071840_compatible_with_stripe', 2),
(94, '2022_07_23_081211_kds', 3),
(95, '2022_08_03_170522_user_has_categories', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(5, 'App\\User', 3),
(5, 'App\\User', 4),
(5, 'App\\User', 5),
(5, 'App\\User', 6),
(5, 'App\\User', 7),
(5, 'App\\User', 8),
(5, 'App\\User', 9),
(5, 'App\\User', 10),
(5, 'App\\User', 11),
(5, 'App\\User', 12),
(5, 'App\\User', 13),
(5, 'App\\User', 14),
(5, 'App\\User', 15),
(5, 'App\\User', 16),
(5, 'App\\User', 17),
(5, 'App\\User', 18),
(5, 'App\\User', 19),
(5, 'App\\User', 20),
(5, 'App\\User', 21),
(5, 'App\\User', 22),
(5, 'App\\User', 23),
(5, 'App\\User', 24),
(5, 'App\\User', 25),
(5, 'App\\User', 26),
(5, 'App\\User', 27),
(5, 'App\\User', 28),
(5, 'App\\User', 29),
(5, 'App\\User', 30),
(5, 'App\\User', 31),
(5, 'App\\User', 32),
(5, 'App\\User', 33),
(5, 'App\\User', 34),
(2, 'App\\User', 35),
(2, 'App\\User', 36),
(2, 'App\\User', 37),
(2, 'App\\User', 38),
(2, 'App\\User', 39);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `item_id`, `name`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:45', '2022-08-19 00:40:34', NULL),
(2, 7, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:45', '2022-08-19 00:40:34', NULL),
(3, 8, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:45', '2022-08-19 00:40:34', NULL),
(4, 8, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:45', '2022-08-19 00:40:34', NULL),
(5, 9, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:45', '2022-08-19 00:40:34', NULL),
(6, 9, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:45', '2022-08-19 00:40:34', NULL),
(7, 10, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:45', '2022-08-19 00:40:34', NULL),
(8, 10, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:45', '2022-08-19 00:40:34', NULL),
(9, 11, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:45', '2022-08-19 00:40:34', NULL),
(10, 11, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:45', '2022-08-19 00:40:34', NULL),
(11, 12, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:45', '2022-08-19 00:40:34', NULL),
(12, 12, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:45', '2022-08-19 00:40:34', NULL),
(13, 13, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:45', '2022-08-19 00:40:34', NULL),
(14, 13, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:45', '2022-08-19 00:40:34', NULL),
(15, 14, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:45', '2022-08-19 00:40:34', NULL),
(16, 14, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:45', '2022-08-19 00:40:34', NULL),
(17, 15, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:45', '2022-08-19 00:40:34', NULL),
(18, 15, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:45', '2022-08-19 00:40:34', NULL),
(19, 16, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:45', '2022-08-19 00:40:34', NULL),
(20, 16, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:45', '2022-08-19 00:40:34', NULL),
(21, 17, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:45', '2022-08-19 00:40:34', NULL),
(22, 17, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:45', '2022-08-19 00:40:34', NULL),
(23, 67, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(24, 67, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(25, 68, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(26, 68, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(27, 69, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(28, 69, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(29, 70, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(30, 70, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(31, 71, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(32, 71, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(33, 72, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(34, 72, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(35, 73, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(36, 73, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(37, 74, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(38, 74, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(39, 75, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(40, 75, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(41, 76, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(42, 76, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(43, 77, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(44, 77, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(45, 101, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(46, 101, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(47, 102, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(48, 102, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(49, 103, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(50, 103, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(51, 104, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(52, 104, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(53, 105, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(54, 105, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(55, 106, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(56, 106, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(57, 107, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(58, 107, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(59, 108, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(60, 108, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(61, 109, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(62, 109, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(63, 110, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(64, 110, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(65, 111, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(66, 111, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:46', '2022-08-19 00:40:34', NULL),
(67, 152, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(68, 152, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(69, 153, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(70, 153, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(71, 154, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(72, 154, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(73, 155, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(74, 155, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(75, 156, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(76, 156, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(77, 157, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(78, 157, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(79, 158, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(80, 158, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(81, 159, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(82, 159, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(83, 160, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(84, 160, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(85, 161, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(86, 161, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(87, 162, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(88, 162, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(89, 186, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(90, 186, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(91, 187, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(92, 187, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(93, 188, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(94, 188, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(95, 189, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(96, 189, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(97, 190, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(98, 190, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(99, 191, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(100, 191, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(101, 192, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(102, 192, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(103, 193, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(104, 193, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(105, 194, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(106, 194, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(107, 195, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(108, 195, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(109, 196, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(110, 196, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:47', '2022-08-19 00:40:34', NULL),
(111, 237, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(112, 237, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(113, 238, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(114, 238, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(115, 239, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(116, 239, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(117, 240, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(118, 240, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(119, 241, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(120, 241, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(121, 242, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(122, 242, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(123, 243, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(124, 243, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(125, 244, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(126, 244, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(127, 245, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(128, 245, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(129, 246, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(130, 246, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(131, 247, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(132, 247, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(133, 265, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(134, 265, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(135, 266, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(136, 266, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(137, 267, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(138, 267, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(139, 268, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(140, 268, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(141, 269, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(142, 269, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(143, 270, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(144, 270, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(145, 271, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(146, 271, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(147, 272, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(148, 272, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(149, 273, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(150, 273, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:48', '2022-08-19 00:40:34', NULL),
(151, 274, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(152, 274, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(153, 275, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(154, 275, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(155, 316, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(156, 316, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(157, 317, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(158, 317, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(159, 318, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(160, 318, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(161, 319, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(162, 319, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(163, 320, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(164, 320, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(165, 321, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(166, 321, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(167, 322, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(168, 322, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(169, 323, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(170, 323, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(171, 324, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(172, 324, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(173, 325, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(174, 325, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(175, 326, '{\"en\":\"Size\"}', 'Small,Medium,Large,Family', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(176, 326, '{\"en\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2022-08-18 19:44:49', '2022-08-19 00:40:34', NULL),
(177, 346, '{\"en\":\"Spicy\",\"ar\":\"Spicy\"}', 'No-Spicy,Medium,Spicy', '2022-08-22 03:51:40', '2022-08-22 03:57:45', NULL),
(178, 347, '{\"en\":\"Spicy\",\"ar\":\"Spicy\"}', 'No-Spicy,Medium,Spicy', '2022-08-22 03:55:26', '2022-08-22 03:57:45', NULL),
(179, 354, '{\"en\":\"Soft Drinks\"}', 'Pepsi,Coco-Cola,7-up,Mountain Dew', '2022-08-22 04:39:52', '2022-08-22 04:39:52', NULL),
(180, 352, '{\"en\":\"Size\"}', '500 ml,1 Liter', '2022-08-22 04:42:12', '2022-08-22 04:42:12', NULL),
(181, 365, '{\"en\":\"Choice\",\"ar\":\"\\u062e\\u064a\\u0627\\u0631\"}', 'VEGETABLES,CHICKEN,SHRIMP,MIXED', '2022-08-25 00:54:41', '2022-09-02 22:49:03', NULL),
(182, 355, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-25 00:56:01', '2022-08-25 00:57:12', '2022-08-25 00:57:12'),
(183, 356, '{\"en\":\"SPICY\",\"ar\":\"\\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629\"}', 'No-Spicy,Medium,Spicy', '2022-08-25 00:56:24', '2022-08-25 05:15:14', NULL),
(184, 357, '{\"en\":\"SPICY\",\"ar\":\"\\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629\"}', 'No-Spicy,Medium,Spicy', '2022-08-25 00:56:46', '2022-08-25 05:15:33', NULL),
(185, 362, '{\"en\":\"SPICY\",\"ar\":\"\\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629\"}', 'No-Spicy,Medium,Spicy', '2022-08-25 00:57:41', '2022-08-25 05:15:55', NULL),
(186, 366, '{\"ar\":\"\\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629\",\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-25 01:15:13', '2022-09-02 22:34:56', '2022-09-02 22:34:56'),
(187, 367, '{\"ar\":\"\\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629\",\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-25 01:16:33', '2022-09-02 22:37:00', '2022-09-02 22:37:00'),
(188, 368, '{\"ar\":\"\\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629\",\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-25 01:17:02', '2022-09-02 22:38:25', '2022-09-02 22:38:25'),
(189, 369, '{\"ar\":\"\\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629\",\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-25 01:17:40', '2022-09-02 22:39:21', '2022-09-02 22:39:21'),
(190, 370, '{\"ar\":\"\\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629\",\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-25 01:18:45', '2022-08-25 01:23:32', NULL),
(191, 371, '{\"en\":\"SPICY\",\"ar\":\"\\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629\"}', 'No-Spicy,Medium,Spicy', '2022-08-25 04:25:14', '2022-08-25 04:26:32', NULL),
(192, 383, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-25 05:03:47', '2022-08-25 05:03:47', NULL),
(193, 384, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-25 05:04:08', '2022-08-25 05:04:08', NULL),
(194, 419, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-25 05:42:36', '2022-08-25 05:42:36', NULL),
(195, 420, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-25 05:42:58', '2022-08-25 05:42:58', NULL),
(196, 421, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-25 05:43:21', '2022-08-25 05:43:21', NULL),
(197, 422, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-25 05:43:44', '2022-08-25 05:43:44', NULL),
(198, 423, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-25 05:44:03', '2022-08-25 05:44:03', NULL),
(199, 449, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 22:35:59', '2022-08-26 22:35:59', NULL),
(200, 450, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 22:36:19', '2022-09-03 07:00:59', '2022-09-03 07:00:59'),
(201, 452, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 22:36:40', '2022-08-26 22:36:40', NULL),
(202, 453, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 22:37:01', '2022-08-26 22:37:01', NULL),
(203, 454, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 22:37:25', '2022-09-03 07:03:01', '2022-09-03 07:03:01'),
(204, 455, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 22:37:47', '2022-08-26 22:37:47', NULL),
(205, 456, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 22:38:08', '2022-08-26 22:38:08', NULL),
(206, 457, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 22:38:28', '2022-08-26 22:38:28', NULL),
(207, 459, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 22:45:14', '2022-08-26 22:45:14', NULL),
(208, 460, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 22:45:36', '2022-08-26 22:45:36', NULL),
(209, 461, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 22:45:59', '2022-08-26 22:45:59', NULL),
(210, 462, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 22:46:18', '2022-08-26 22:46:18', NULL),
(211, 463, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 22:46:37', '2022-09-02 23:08:19', '2022-09-02 23:08:19'),
(212, 464, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 22:46:57', '2022-08-26 22:46:57', NULL),
(213, 466, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 22:47:22', '2022-08-26 22:47:22', NULL),
(214, 467, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 22:58:51', '2022-08-26 22:58:51', NULL),
(215, 468, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 22:59:11', '2022-08-26 22:59:11', NULL),
(216, 469, '{\"en\":\"TYPE\"}', 'VEGETABLE,CHICKEN,BEEF,SHRIMPS,HAMMOUR', '2022-08-26 22:59:31', '2022-09-03 00:25:27', NULL),
(217, 470, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 22:59:52', '2022-08-26 22:59:52', NULL),
(218, 471, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 23:00:12', '2022-08-26 23:00:12', NULL),
(219, 472, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 23:00:34', '2022-08-26 23:00:34', NULL),
(220, 474, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 23:09:52', '2022-08-26 23:09:52', NULL),
(221, 475, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 23:10:37', '2022-08-26 23:10:37', NULL),
(222, 476, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 23:11:07', '2022-08-26 23:11:07', NULL),
(223, 477, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 23:11:46', '2022-08-26 23:11:46', NULL),
(224, 478, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 23:25:38', '2022-08-26 23:25:38', NULL),
(225, 482, '{\"en\":\"SPICY\"}', 'No-Spicy,Medium,Spicy', '2022-08-26 23:26:02', '2022-08-26 23:26:02', NULL),
(226, 366, '{\"en\":\"TYPE\"}', 'VEGETABLES,CHICKEN,SHRIMPS,CRAB', '2022-09-02 22:35:27', '2022-09-02 22:35:27', NULL),
(227, 367, '{\"en\":\"TYPE\"}', 'VEGETABLES,CHICKEN,SHRIMPS,CRAB', '2022-09-02 22:37:17', '2022-09-02 22:37:17', NULL),
(228, 368, '{\"en\":\"TYPE\"}', 'CHICKEN,SHRIMPS', '2022-09-02 22:38:44', '2022-09-02 22:38:44', NULL),
(229, 369, '{\"en\":\"TYPE\"}', 'VEGETABLES,CHICKEN,SHRIMPS,CRAB', '2022-09-02 22:39:33', '2022-09-02 22:39:33', NULL),
(230, 490, '{\"en\":\"TYPE\"}', 'VEGETABLES,MUSHROOM,TOMATO,CHICKEN', '2022-09-02 22:42:50', '2022-09-02 22:42:50', NULL),
(231, 502, '{\"en\":\"TYPE\"}', 'VEGETABLES,CHEESE', '2022-09-02 22:54:12', '2022-09-02 22:54:12', NULL),
(232, 463, '{\"en\":\"TYPE\"}', 'CHICKEN,BEEF', '2022-09-02 23:08:34', '2022-09-02 23:08:34', NULL),
(233, 538, '{\"en\":\"TYPE\"}', 'VEGETABLE,CHICKEN,BEEF,SHRIMPS,HAMMOUR', '2022-09-03 00:29:00', '2022-09-03 00:29:00', NULL),
(234, 373, '{\"en\":\"Pieces\"}', '5 pcs of your choice,8 pcs of your choice', '2022-09-03 00:47:27', '2022-09-03 00:47:27', NULL),
(235, 556, '{\"en\":\"TYPE\"}', 'VEGETABLES,CHICKEN,BEEF,SHRIMPS', '2022-09-03 00:56:41', '2022-09-03 00:56:41', NULL),
(236, 558, '{\"en\":\"TYPE\"}', 'VEGETABLE,CHICKEN,MIXED,SHRIMPS', '2022-09-03 00:58:59', '2022-09-03 00:58:59', NULL),
(237, 561, '{\"en\":\"TYPE\"}', 'CHICKEN,SHRIMPS,VEGETABLES,MIXED', '2022-09-03 01:05:41', '2022-09-03 01:05:41', NULL),
(238, 570, '{\"en\":\"SIZE\"}', 'HALF,FULL', '2022-09-03 06:32:30', '2022-09-03 06:32:30', NULL),
(239, 575, '{\"en\":\"TYPE\"}', 'CHICKEN,MUTTON', '2022-09-03 06:35:57', '2022-09-03 06:35:57', NULL),
(240, 410, '{\"en\":\"SIZE\"}', 'HALF,FULL', '2022-09-03 06:43:01', '2022-09-03 06:43:01', NULL),
(241, 450, '{\"en\":\"TYPE\"}', 'CHICKEN,MUTTON,PRAWN,FISH', '2022-09-03 07:01:18', '2022-09-03 07:01:18', NULL),
(242, 454, '{\"en\":\"TYPE\"}', 'CHICKEN,MUTTON', '2022-09-03 07:02:54', '2022-09-03 07:02:54', NULL),
(243, 593, '{\"en\":\"TYPE\"}', 'CHICKEN,MUTTON', '2022-09-03 07:08:13', '2022-09-03 07:08:13', NULL),
(244, 594, '{\"en\":\"TYPE\"}', 'CHICKEN,MUTTON', '2022-09-03 07:09:17', '2022-09-03 07:09:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `restorant_id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_price` double(8,2) NOT NULL,
  `order_price` double(8,2) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `srtipe_payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` double(8,2) NOT NULL DEFAULT '0.00',
  `fee_value` double NOT NULL DEFAULT '0',
  `static_fee` double(8,2) NOT NULL DEFAULT '0.00',
  `delivery_method` int(11) NOT NULL DEFAULT '1' COMMENT '1- Delivery, 2- Pickup',
  `delivery_pickup_interval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vatvalue` double(8,2) DEFAULT '0.00',
  `payment_processor_fee` double(8,2) NOT NULL DEFAULT '0.00',
  `time_to_prepare` int(11) DEFAULT NULL,
  `table_id` bigint(20) UNSIGNED DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `md` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `kds_finished` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`, `employee_id`, `deleted_at`, `md`, `coupon`, `discount`, `kds_finished`) VALUES
(1, '2022-03-11 12:18:23', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 56.00, NULL, 'paid', 'Quasi rerum vitae natus voluptatum praesentium. Aut explicabo excepturi qui veniam fuga eaque. Velit et veritatis possimus placeat ea blanditiis id. Voluptatem unde deserunt consequatur voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(2, '2021-12-30 18:44:19', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 80.00, NULL, 'paid', 'Sed quas officia eum vel omnis dolor et. Et qui est cumque velit. A nemo et quis excepturi optio id vel accusamus. Saepe culpa voluptas et et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(3, '2022-07-13 08:09:50', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 73.00, NULL, 'paid', 'Eum eos accusamus qui quos qui. Aut sunt dolor sit fugiat pariatur. Est molestiae temporibus totam nam. Cupiditate omnis architecto officia explicabo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(4, '2022-03-31 12:51:02', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 84.00, NULL, 'paid', 'Quia quia aut in voluptas unde sed minus. Quae corporis qui quibusdam nam. Necessitatibus autem quas dolor. Et esse est ducimus non blanditiis numquam voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(5, '2021-10-12 15:25:23', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 70.00, NULL, 'paid', 'Et eaque ea aut illo natus et. Temporibus temporibus debitis quo sunt in dolores sit rerum. Sit dolorem maxime iure odio suscipit nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(6, '2021-12-25 10:39:16', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 85.00, NULL, 'paid', 'Voluptatem qui sapiente repudiandae. Iste molestiae eum fugit. Distinctio corrupti harum deserunt quo inventore quam laudantium. Et qui earum est necessitatibus aut qui natus velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(7, '2022-06-09 02:06:24', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 82.00, NULL, 'paid', 'Consequatur sed alias cumque repellat at alias. Saepe et commodi atque blanditiis voluptas incidunt. Distinctio saepe sint aliquam reiciendis. Dolores molestias est necessitatibus aut nemo est est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(8, '2022-05-31 22:59:52', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 77.00, NULL, 'paid', 'Temporibus illum quia iste dolorem. Debitis et cumque nesciunt. Nam atque labore dolores molestiae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(9, '2021-11-09 08:08:01', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 65.00, NULL, 'paid', 'Ullam earum nemo voluptatum aliquam et. Voluptates consectetur blanditiis consequatur et quos est et. Et quidem debitis porro fugit iure modi vero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(10, '2022-01-09 23:56:03', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 82.00, NULL, 'paid', 'Ut possimus rem perspiciatis. Nobis est commodi asperiores eaque eveniet hic vel. Et laboriosam facilis et mollitia aperiam beatae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(11, '2022-01-14 10:36:38', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 99.00, NULL, 'paid', 'Quia voluptatem ut sed natus ut accusamus dolores assumenda. Quae ratione et dolores quis. Qui velit minus officiis culpa quia. Nisi dolorum quia repellat tempora veniam quae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(12, '2021-09-30 00:29:06', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 61.00, NULL, 'paid', 'Omnis officia ullam deserunt et. Velit in ut nostrum voluptatem et incidunt doloremque. Sint distinctio possimus labore quod ullam est ipsum. Et minima exercitationem vero quod.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(13, '2021-11-18 02:11:51', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 88.00, NULL, 'paid', 'Labore corporis perferendis amet nisi. Voluptate eaque possimus reprehenderit quis nihil rem enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(14, '2022-01-14 19:34:15', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 77.00, NULL, 'paid', 'Et ut recusandae maxime porro id. Blanditiis aut veniam ut accusamus omnis aliquam. Asperiores sit dolor maxime laboriosam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(15, '2021-10-26 02:01:19', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 30.00, NULL, 'paid', 'Accusantium est quis architecto qui dolorem. Quam qui ut et consequatur. Rerum eaque recusandae id molestiae fugit repudiandae fuga.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(16, '2021-08-31 02:21:46', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 100.00, NULL, 'paid', 'Quo praesentium nihil quia enim officiis aut. Repellendus modi labore sed aut voluptatem sunt. Et officiis sint aut dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(17, '2021-11-17 02:28:30', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 36.00, NULL, 'paid', 'Velit ipsam non dolorem non ea qui sunt ipsam. Ipsum omnis aut eum ut tenetur animi. Quae eos fugiat veniam minus quos est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(18, '2021-11-13 12:17:43', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 74.00, NULL, 'paid', 'Velit consequatur eveniet assumenda ut eligendi est sed et. At est rerum sit qui enim asperiores. Esse eum ut sit odio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(19, '2022-04-10 04:43:25', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 85.00, NULL, 'paid', 'Id sed quaerat quos reiciendis quas facilis ipsa. Id incidunt quia magni qui odit molestias sapiente. Culpa corrupti voluptas voluptas deserunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(20, '2022-01-13 01:30:41', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 30.00, NULL, 'paid', 'Ut a veritatis reiciendis natus enim optio itaque. Nam sunt natus molestiae debitis. Consequatur alias enim dolore aperiam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(21, '2022-04-08 08:23:07', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 92.00, NULL, 'paid', 'Nemo ut adipisci a ab voluptatum. Quisquam illo tenetur nostrum in. Nobis tenetur alias quas optio consequuntur. Et incidunt culpa minus sed qui facilis rerum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(22, '2022-06-21 22:38:07', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 50.00, NULL, 'paid', 'Maxime quis eos voluptas iusto qui cumque est. Adipisci qui velit et sed velit quasi iste. Commodi nesciunt sapiente qui deleniti.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(23, '2022-04-20 10:00:37', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 87.00, NULL, 'paid', 'Ut impedit omnis libero atque. Ea necessitatibus sint accusamus tempore a. Sed minima iusto aliquam eum temporibus. Suscipit non esse nihil ea voluptatem minima et ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(24, '2022-02-10 09:04:56', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 44.00, NULL, 'paid', 'Aliquid deserunt numquam fugit hic omnis. Eaque ratione est inventore deserunt. Eaque non ipsa amet accusamus. Non nam laborum enim delectus et omnis id eos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(25, '2022-03-18 13:06:21', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 66.00, NULL, 'paid', 'Illo molestiae temporibus libero qui tenetur veniam. Aut minima ea magnam laboriosam magnam. Et consequatur dicta vero ut. Distinctio accusamus libero labore architecto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(26, '2022-02-04 13:36:15', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 80.00, NULL, 'paid', 'Quis quod ipsam iusto omnis debitis. Libero laboriosam quibusdam est sed atque accusamus. Autem vero nobis aliquid et nisi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(27, '2021-08-30 00:32:02', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 76.00, NULL, 'paid', 'Perspiciatis est maxime unde quo voluptas perferendis architecto. Et beatae reprehenderit sit soluta. Animi aliquam blanditiis eius est ex.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(28, '2022-03-22 04:58:12', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 77.00, NULL, 'paid', 'Rerum dolorem nobis reprehenderit sed itaque temporibus. Impedit in dolor aliquam voluptatem molestiae. Doloremque sint assumenda excepturi beatae occaecati.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(29, '2022-05-28 17:56:19', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 72.00, NULL, 'paid', 'Similique numquam sed ratione repellat eos est vitae. Omnis nisi a et odio nihil exercitationem inventore. Mollitia quia ut quod numquam voluptatem maiores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(30, '2021-10-01 04:04:41', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 80.00, NULL, 'paid', 'Vel ut quaerat ratione debitis occaecati voluptatem corporis. Officiis ratione sunt delectus ipsa illum vero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(31, '2021-09-03 21:41:39', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 79.00, NULL, 'paid', 'Et quis quia repellendus quidem sit et perspiciatis. Adipisci minima fugiat qui et vero. Quae et cupiditate nisi expedita eveniet est voluptatum non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(32, '2022-08-11 16:13:11', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 30.00, NULL, 'paid', 'Vel veritatis enim voluptas quam illo ea sapiente. Sequi beatae impedit omnis error ex provident beatae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(33, '2022-07-14 04:24:11', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 32.00, NULL, 'paid', 'Debitis voluptas adipisci sed voluptate voluptatem ex labore. Et totam neque et omnis. Quis tenetur harum iusto. Repellat maiores neque deleniti velit enim eligendi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(34, '2022-06-10 04:44:02', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 85.00, NULL, 'paid', 'Ducimus sed eveniet harum consequuntur et eos illum quaerat. Repellat quidem ad voluptas labore. In deserunt quia officia non perferendis fugit ipsa. Sequi dicta sint fuga ex non tempore saepe.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(35, '2021-12-17 15:38:36', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 55.00, NULL, 'paid', 'Perferendis nihil culpa quos. Veniam est rerum porro quia. Nihil quis temporibus nihil. Ea deserunt ut quia. Dicta ducimus dicta voluptate aut ducimus sunt. Aut velit ad enim consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(36, '2022-04-16 03:10:45', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 49.00, NULL, 'paid', 'Repellat enim cumque impedit blanditiis molestias quibusdam. Quibusdam fuga porro perferendis provident laboriosam. Iusto debitis repellendus animi maiores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(37, '2022-01-12 21:09:05', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 50.00, NULL, 'paid', 'Suscipit recusandae dolorum ut sit et dolore. At fugiat sequi eum laboriosam error aut. Blanditiis quia amet nulla ut totam est. Odio accusamus est dolor libero qui doloremque eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(38, '2022-08-10 00:32:52', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 80.00, NULL, 'paid', 'Ut voluptas sit nemo rem cum. Eos necessitatibus ratione asperiores fuga sunt et quibusdam. Fugit et est quia explicabo non aut. Reprehenderit voluptas et et in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(39, '2022-06-03 04:53:47', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 79.00, NULL, 'paid', 'Facilis et beatae dolor rerum amet labore. Distinctio fugit rerum aperiam nihil ut voluptatum labore. Quod nostrum in nostrum cumque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(40, '2022-03-27 15:57:07', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 65.00, NULL, 'paid', 'Ratione aspernatur est mollitia pariatur. Id voluptatem aut velit sint eos ab laudantium ut. Omnis id quos vero repellat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(41, '2021-12-24 12:15:20', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 99.00, NULL, 'paid', 'Et ducimus quo deleniti aut ipsam. Voluptatem pariatur tempora asperiores alias. Ex qui placeat qui ut occaecati fugit et. Dolores consequuntur illum officiis maxime.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(42, '2022-08-03 13:45:25', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 73.00, NULL, 'paid', 'Dolor et ut in sint aperiam. Asperiores explicabo eligendi occaecati molestiae. Quasi molestiae qui nostrum ut. Saepe labore eligendi dignissimos et quidem sed numquam fugiat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(43, '2022-06-22 15:47:28', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 51.00, NULL, 'paid', 'Cumque et maxime dicta dolor voluptas eligendi molestiae accusantium. Modi vitae magni nihil aut tempore doloremque et hic. A tempore aut est ducimus qui. Exercitationem pariatur at et sed iusto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(44, '2022-07-28 21:38:21', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 84.00, NULL, 'paid', 'Iste debitis error laborum ullam numquam culpa. Eos et voluptatum et. Et consequatur dignissimos et vel dolore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(45, '2021-11-25 01:13:24', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 56.00, NULL, 'paid', 'Beatae iure aliquid est blanditiis veniam odit cumque. Nisi consequatur reiciendis perspiciatis ratione nesciunt omnis quae. Est vel numquam ut fuga omnis tempora.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(46, '2022-01-02 12:15:24', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 60.00, NULL, 'paid', 'Dolor blanditiis numquam sed eius repellat quas. Suscipit laudantium ex ullam ut temporibus dolorem similique. Consectetur repudiandae fugit odit qui. Sit beatae sed repellendus recusandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(47, '2022-08-02 22:59:12', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 52.00, NULL, 'paid', 'Consequatur amet nam cumque. Illum officiis amet quaerat quas quis. Tempora ut est ea pariatur iure. Eligendi deserunt voluptas dolore quia nisi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(48, '2022-06-17 04:07:39', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 45.00, NULL, 'paid', 'Assumenda consequuntur vero ipsam debitis iure eos. Dolore sed hic tenetur natus voluptas quis ullam. Sunt provident et molestiae minus tempore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(49, '2022-02-16 05:46:02', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 37.00, NULL, 'paid', 'Impedit assumenda dolorem ad quaerat animi. Eligendi quis quam earum ut. Voluptates ipsam qui suscipit non et quasi sapiente. Non nobis adipisci vitae in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(50, '2022-01-04 14:02:49', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 40.00, NULL, 'paid', 'Voluptas cum exercitationem et exercitationem deleniti itaque minima. Aut alias consequatur sint iusto sed qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(51, '2022-07-07 19:56:17', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 74.00, NULL, 'paid', 'Provident amet saepe eligendi ex reiciendis quis. Fugiat voluptatem accusantium sunt amet. Earum suscipit illum occaecati animi occaecati animi exercitationem. Id provident qui et velit in provident.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(52, '2021-11-06 00:41:23', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 82.00, NULL, 'paid', 'Tempore placeat maxime cupiditate est ad natus aut. Qui vel nostrum nesciunt voluptatem dolor. Dolorum atque consequatur expedita quos magni tempore. Est repellendus quod est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(53, '2021-10-19 03:41:12', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 55.00, NULL, 'paid', 'Cupiditate officia quas sint debitis est omnis eveniet sint. Quae quas ipsa explicabo vitae odit nulla. Dolorem tenetur voluptate molestiae nemo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(54, '2022-01-11 05:43:37', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 53.00, NULL, 'paid', 'Hic iusto non aut id nostrum aliquam. Eos fugit minima tempore soluta. Amet inventore omnis ea dignissimos provident. Quia accusantium rerum minima facere.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(55, '2021-11-20 12:06:00', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 38.00, NULL, 'paid', 'Consequatur recusandae quia et aspernatur. Rem rerum impedit dolores harum sunt. Id ipsa eos quis voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(56, '2021-09-30 03:59:28', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 80.00, NULL, 'paid', 'Velit aut repudiandae laborum iste aliquam. Distinctio modi voluptates cum doloremque. Aut hic maxime suscipit mollitia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(57, '2021-12-27 15:24:22', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 40.00, NULL, 'paid', 'Esse dolor ipsa tempora error distinctio in commodi laudantium. Sint quasi molestias qui dolore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(58, '2021-10-18 04:07:28', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 59.00, NULL, 'paid', 'Facere rerum minima et esse. Quasi in dolores quia et sequi quam. Repudiandae eum magni sint consequatur minus itaque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(59, '2022-07-10 03:01:41', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 91.00, NULL, 'paid', 'Quos dolores et illum est. Quod laudantium fuga molestias magni aut qui quos. Incidunt temporibus fugiat sequi voluptatem et doloremque non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(60, '2022-04-27 06:16:17', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 66.00, NULL, 'paid', 'Dolorum molestiae voluptatem aspernatur accusantium explicabo. Quia et perspiciatis sunt optio reprehenderit. Architecto ullam iure maxime consequatur. Est impedit ad qui qui quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(61, '2021-11-17 18:45:30', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 46.00, NULL, 'paid', 'Rerum eos ut sint nihil eum qui aut quia. Ipsum sit ut sit totam sit. Culpa dicta exercitationem sit. Dolorum et fuga dolorum cupiditate nemo est dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(62, '2021-11-16 08:12:01', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 37.00, NULL, 'paid', 'Vel blanditiis fugit sint ducimus nesciunt numquam at. Labore minus aspernatur praesentium ducimus. Ea est et explicabo harum tenetur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(63, '2022-01-22 19:56:51', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 98.00, NULL, 'paid', 'Sunt iste repellat voluptas laborum et consequatur aut. Quam neque quae recusandae eos quod. Et eius qui magni necessitatibus veritatis sed. Ullam ut enim id tempora hic tempora aut incidunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(64, '2021-10-14 09:47:05', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 90.00, NULL, 'paid', 'Atque voluptatem et fugit odit ab nesciunt veritatis aut. Sint cum minima sint fuga vel. Perspiciatis et et delectus aut sed voluptas ratione. Est explicabo facilis quas aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(65, '2022-02-20 04:00:55', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 97.00, NULL, 'paid', 'Soluta sed impedit quia. Corrupti dolore sit officiis eos dicta sapiente. Ipsam quia non esse esse. Consequuntur at nihil quidem natus dolores omnis ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(66, '2021-10-02 02:52:33', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 53.00, NULL, 'paid', 'Provident cumque dicta impedit. Soluta temporibus sint ab cumque rerum eveniet.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(67, '2021-11-18 05:34:12', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 100.00, NULL, 'paid', 'Illum veritatis explicabo deleniti blanditiis. Culpa excepturi ut est recusandae voluptatem et tempore. Eos neque autem esse quibusdam quae nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(68, '2022-05-09 05:20:39', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 80.00, NULL, 'paid', 'Est labore aut voluptatem vitae quisquam dignissimos velit. Molestiae et et est labore velit. Provident et soluta vero corporis deserunt exercitationem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(69, '2021-11-03 14:55:20', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 91.00, NULL, 'paid', 'Error ad dolor eligendi quo. Et laboriosam molestias magnam ut aut quisquam quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(70, '2022-01-19 00:32:13', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 78.00, NULL, 'paid', 'Ab non eveniet alias rerum fugiat aut. Dicta et accusamus repudiandae amet aut quaerat. Nostrum blanditiis doloribus accusamus commodi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(71, '2022-04-14 00:08:31', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 65.00, NULL, 'paid', 'Deleniti enim rerum cumque a voluptas. Rem distinctio qui optio nesciunt eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(72, '2022-01-05 14:36:33', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 43.00, NULL, 'paid', 'Quas necessitatibus perspiciatis repellat quo facilis blanditiis quia. Voluptas rerum et provident eveniet ullam cum et corporis. Rerum consequatur aut blanditiis repellat qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(73, '2021-10-06 04:17:49', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 77.00, NULL, 'paid', 'Tempora hic aspernatur quo possimus repellendus dolores. Dolorum maiores fuga non. Et nisi maiores unde repellat quos accusantium alias. Magnam sit corrupti repudiandae consequatur eos sunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(74, '2022-02-06 02:36:31', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 61.00, NULL, 'paid', 'Iusto tempore dicta neque error labore et facere. Consequuntur beatae et asperiores odio. Voluptas laboriosam culpa maxime placeat et voluptas qui. Amet quis nostrum est maxime.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(75, '2022-04-23 17:31:50', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 79.00, NULL, 'paid', 'Inventore minus quia eos. Est tenetur eos maiores sunt eos voluptate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(76, '2022-07-01 13:37:50', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 54.00, NULL, 'paid', 'Error qui perferendis vel vitae vitae ullam. Suscipit repudiandae libero voluptatem perspiciatis assumenda aliquam neque temporibus. Sed nihil accusantium sint quibusdam quia nihil sint.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(77, '2022-01-12 21:10:33', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 84.00, NULL, 'paid', 'Sit dolore dolorum et et. Quis et eligendi iusto quibusdam. Enim velit eos repellat rerum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(78, '2022-02-10 19:00:57', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 66.00, NULL, 'paid', 'Placeat magnam nihil et. Quo vel dolorem facere eum omnis eos. Assumenda voluptatem tenetur ratione quis reprehenderit autem nostrum. Et amet itaque est ut dolore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(79, '2021-12-03 05:26:06', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 88.00, NULL, 'paid', 'Ducimus qui facere neque explicabo minus voluptatem ea. Minus facilis quam voluptatem in inventore. Voluptas ab quam velit unde error quam architecto. Quis qui fuga tempore sunt distinctio sapiente.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(80, '2022-03-20 17:49:55', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 77.00, NULL, 'paid', 'Quo velit soluta in minus voluptates. Aspernatur eius consequatur eos id et quis. Laborum ipsa dolor ratione earum sint et consequatur. Excepturi soluta laborum ut perferendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(81, '2021-10-31 13:54:31', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 51.00, NULL, 'paid', 'Molestiae similique ut exercitationem consequatur commodi veniam. Quia deserunt sint quidem doloremque. Delectus in fuga magni dicta voluptatibus optio. Iste similique voluptatem aut rem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(82, '2022-02-09 04:07:13', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 64.00, NULL, 'paid', 'Et velit dicta occaecati molestiae rerum. Totam quam sed rerum pariatur a aut. Debitis ex sunt inventore distinctio repudiandae. Aliquam nobis voluptatem doloremque adipisci nam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(83, '2022-01-25 23:11:05', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 77.00, NULL, 'paid', 'Mollitia quasi reprehenderit dolorem minima sequi ut consequatur. Dolor accusantium totam omnis adipisci omnis distinctio. Fugiat ab eum corrupti maiores aliquam asperiores illo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(84, '2022-03-18 11:14:50', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 44.00, NULL, 'paid', 'Aspernatur esse dolor delectus magni. Eos at voluptates nisi incidunt. Molestiae iure animi nobis culpa reprehenderit ut rerum possimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(85, '2022-04-29 07:42:45', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 84.00, NULL, 'paid', 'Nesciunt et numquam nemo sit. Pariatur fugiat quasi beatae laboriosam ex nemo deserunt debitis. Aut ducimus et dolorum et minima ea at.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(86, '2022-01-03 04:44:15', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 95.00, NULL, 'paid', 'Modi odio omnis molestiae fugit voluptatem quasi. Ut voluptatem aliquid totam iusto. Et ullam corporis sit fugit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(87, '2022-03-31 02:14:25', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 67.00, NULL, 'paid', 'Iste culpa adipisci vel sit iure quos cumque. Omnis porro eum eius qui voluptatem dicta libero. Rem odio modi nesciunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(88, '2022-02-04 09:29:38', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 79.00, NULL, 'paid', 'Non architecto omnis magnam deleniti qui corrupti aliquam. Dolorem voluptatem et nihil facilis et officia consequuntur eius. Repellendus numquam sit impedit quas quo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(89, '2022-03-16 05:42:11', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 86.00, NULL, 'paid', 'Quia assumenda dolores aliquid illum. Totam quasi mollitia dolores aut et quo. Et necessitatibus minima rerum error voluptas aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(90, '2021-09-09 21:18:02', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 96.00, NULL, 'paid', 'Rerum cum nesciunt quia rem maiores dolor ut. Voluptatem sit cum fugiat voluptatem officia sunt corporis. Magni at nesciunt voluptatem excepturi consequuntur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(91, '2022-03-28 06:21:44', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 79.00, NULL, 'paid', 'Rem dolor vel ea ratione cum amet. Error et repellat ut impedit ut laboriosam aperiam. Corporis libero totam veritatis laboriosam ut ut. Pariatur repellendus fugit ex qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(92, '2021-11-30 07:37:12', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 69.00, NULL, 'paid', 'Sunt iusto odit earum sit et quis dolorum unde. Aliquid qui ipsa aut inventore. Totam fuga culpa commodi. Quis totam dolorem qui fuga voluptas sunt tenetur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(93, '2022-02-07 14:09:21', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 89.00, NULL, 'paid', 'Omnis similique ut neque minus ducimus. Aliquid et aspernatur distinctio. Animi velit voluptates qui sed autem rerum autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(94, '2022-04-25 17:22:13', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 96.00, NULL, 'paid', 'Ad non aspernatur nihil et repellat. Explicabo earum ut omnis doloribus iure. Quia eligendi sit maiores voluptas quia id id. Nobis et magni velit hic.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(95, '2021-09-27 15:40:50', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 86.00, NULL, 'paid', 'Sed perferendis a natus est porro. Hic harum autem voluptate alias. Et hic labore possimus dicta ex. Rem deserunt ipsam ratione consequuntur magnam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(96, '2022-06-25 00:13:22', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 86.00, NULL, 'paid', 'Est aut laborum sit doloribus non. Esse est eos quis sint voluptas accusamus. Totam tenetur culpa vel molestiae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(97, '2021-12-12 07:10:40', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 77.00, NULL, 'paid', 'Officia asperiores nostrum ratione voluptatem voluptatum nesciunt error. Et voluptatem dicta quos enim tempore vero. Est ea incidunt reiciendis iusto sed ea aliquid.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(98, '2021-09-03 10:42:54', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 91.00, NULL, 'paid', 'Quibusdam a molestiae id id aspernatur hic. Eum sed est rerum harum et libero repudiandae. Velit repellat quod ut officiis provident magni temporibus. Doloremque est et beatae velit accusantium ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(99, '2021-09-23 11:46:40', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 30.00, NULL, 'paid', 'Quia reiciendis blanditiis odit eum assumenda excepturi. Distinctio ut iusto corrupti nostrum. Libero veniam nihil ut delectus sit et est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(100, '2021-12-12 11:45:55', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 100.00, NULL, 'paid', 'Temporibus consectetur iusto laudantium. Voluptas quibusdam quibusdam magnam autem voluptatem voluptatem nesciunt. Atque in veniam soluta expedita voluptas laudantium minus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(101, '2022-07-15 11:51:59', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 49.00, NULL, 'paid', 'Porro culpa accusantium quidem id voluptatibus dignissimos. Hic officia eum dolores doloribus. Ut tempora ab possimus repellat ut quas ratione sit. Animi consequatur eveniet eos vel non possimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(102, '2022-05-29 22:50:56', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 79.00, NULL, 'paid', 'Voluptatem id iste eaque voluptate deleniti et facere accusantium. Eos dolores veniam praesentium corporis aut harum. Vel porro doloremque tempora.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(103, '2022-02-13 21:18:37', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 53.00, NULL, 'paid', 'Mollitia in sit in. Et suscipit praesentium veniam nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(104, '2022-02-02 20:15:19', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 50.00, NULL, 'paid', 'Repudiandae dicta eius excepturi enim. Quia voluptatem est facere eaque aut. Asperiores laudantium recusandae in pariatur quia inventore qui. Inventore ad accusantium non consequatur ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(105, '2022-05-19 00:27:01', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 85.00, NULL, 'paid', 'Quis nesciunt voluptate consectetur dolorum sit officiis modi. Rem numquam magnam molestias quia placeat vel. Nesciunt qui et et laborum explicabo. Sit sed quam eum officia necessitatibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(106, '2021-10-30 12:19:38', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 46.00, NULL, 'paid', 'Iusto dolor dolores rerum explicabo explicabo deleniti ut. Et culpa neque hic quia. Accusantium reprehenderit fuga expedita distinctio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(107, '2021-10-02 13:55:35', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 33.00, NULL, 'paid', 'Saepe occaecati voluptate repudiandae eum dolores dignissimos. Qui praesentium et veniam illo ut molestiae ipsam sit. Sit harum omnis id quo ratione.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(108, '2021-12-31 13:23:43', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 100.00, NULL, 'paid', 'Nam optio deleniti iste illum. Quo est molestiae modi non exercitationem velit. Voluptatem quidem iure magni unde.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(109, '2022-02-23 18:39:26', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 57.00, NULL, 'paid', 'Vitae sapiente sit quis. Id quis qui et libero at.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(110, '2021-11-06 18:47:35', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 85.00, NULL, 'paid', 'Cupiditate debitis doloribus cum ipsam at quis tempore ducimus. Nulla aut sit voluptatibus suscipit consequatur est quidem. Quidem est architecto ratione qui. Voluptas error impedit mollitia et quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(111, '2022-03-26 14:09:19', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 42.00, NULL, 'paid', 'Aut distinctio nam tempore fugiat aut. Tempora voluptatem est dolores tempora et cum. Nostrum id consequatur maxime cupiditate distinctio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(112, '2022-06-26 12:13:29', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 89.00, NULL, 'paid', 'Exercitationem et laborum qui consequatur. Asperiores qui voluptas voluptatem fugiat id est cum. Tempora quis exercitationem qui accusantium dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(113, '2021-10-13 11:26:58', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 92.00, NULL, 'paid', 'Quia debitis id culpa ut architecto recusandae non labore. Qui est similique ab cumque exercitationem iure. Voluptatem accusantium doloribus dolore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(114, '2021-12-30 05:21:32', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 79.00, NULL, 'paid', 'Ipsa consequatur et adipisci reprehenderit. Quasi impedit impedit nemo sunt explicabo. Laboriosam adipisci possimus quod sit cupiditate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(115, '2021-10-04 02:51:26', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 94.00, NULL, 'paid', 'Repellendus dolor deserunt neque iure. Voluptatem non eius dolore dolores et. Totam dolore in ipsum consequatur officia similique. Cupiditate fugit reiciendis iusto ipsam exercitationem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(116, '2022-07-28 18:04:31', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 72.00, NULL, 'paid', 'Voluptatibus repellat veritatis suscipit aut odio. Dolore qui facilis nihil vero cumque. Quibusdam ut nam aut est ipsum. Assumenda nihil repellat hic ratione tenetur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(117, '2022-05-16 13:37:48', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 48.00, NULL, 'paid', 'Pariatur qui inventore et. Sunt corporis aut consequuntur doloremque et amet. Dolor dolor omnis quia repudiandae quidem tempora velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(118, '2021-12-28 20:28:56', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 93.00, NULL, 'paid', 'Et nihil eum in. Voluptatem sed temporibus soluta. Nam qui quasi porro beatae soluta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(119, '2021-09-25 06:16:12', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 36.00, NULL, 'paid', 'Totam ea ut unde mollitia. Officia odio laboriosam laborum totam voluptatem dolor sint. Eveniet praesentium harum saepe repudiandae veniam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(120, '2022-03-26 00:42:28', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 57.00, NULL, 'paid', 'Quo autem dolorem fugiat labore odit. Mollitia maxime consequatur ex sapiente. Aliquid eos soluta iste laborum veniam illum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(121, '2022-04-13 19:33:38', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 89.00, NULL, 'paid', 'Tenetur dicta ut ipsa reprehenderit quos. Qui quos velit animi. Sit at soluta et ducimus recusandae atque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(122, '2022-02-22 21:24:31', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 100.00, NULL, 'paid', 'Nesciunt cupiditate eum quia pariatur est. Facilis dolor id veniam consequatur voluptas perferendis. Tempore quia sunt aspernatur. Non incidunt quam quo eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(123, '2022-06-23 15:16:48', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 34.00, NULL, 'paid', 'Quo quis est cum dolores. Totam magnam suscipit quia eaque odio. Velit quae ipsam similique libero nemo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(124, '2021-11-29 22:27:33', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 31.00, NULL, 'paid', 'Numquam mollitia ut laboriosam qui distinctio quibusdam ipsam. Libero veritatis minus unde. Dolor quia recusandae libero incidunt qui. Dolor tempora et quam repellat provident cum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(125, '2022-04-28 02:08:51', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 67.00, NULL, 'paid', 'Nam nesciunt minus incidunt quae. Tempore voluptatibus optio recusandae sapiente. Tenetur est cum et eum maiores voluptatem aspernatur quod. Repellendus porro incidunt ut ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(126, '2022-05-03 17:23:29', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 100.00, NULL, 'paid', 'Aliquid numquam officia quod vel vel. Quod molestiae adipisci eligendi laudantium et odio dicta. Repudiandae facere quos molestiae omnis. Dolores architecto neque et itaque odio et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(127, '2021-11-25 08:01:55', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 43.00, NULL, 'paid', 'Molestiae aut ea adipisci asperiores aut. Reprehenderit deleniti voluptas quas. Aperiam aut ut qui quod odit molestias est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(128, '2021-12-25 01:20:23', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 56.00, NULL, 'paid', 'Doloribus neque dicta quia distinctio. Delectus sint ut delectus ut. Possimus quos et qui quibusdam voluptatum consequatur placeat est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(129, '2021-12-27 13:52:10', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 63.00, NULL, 'paid', 'A cumque deserunt deleniti a ex sunt molestias. Placeat beatae inventore deleniti vero et labore distinctio alias. Magnam voluptas cupiditate atque dolore ipsam nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(130, '2021-09-24 07:31:30', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 57.00, NULL, 'paid', 'Aut est id in dolorum. Quis qui officiis totam. Ut nisi eum repudiandae ipsum. Doloremque repellat nihil consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(131, '2022-05-18 19:04:28', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 75.00, NULL, 'paid', 'Sed amet odio perspiciatis perferendis. Provident et ipsam corrupti blanditiis. Ratione facere ex omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(132, '2022-03-07 08:59:41', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 32.00, NULL, 'paid', 'Sunt corrupti quis totam quia. Id esse qui enim non aliquam eum aut. Sapiente ex non accusantium id tempora. Enim ea vero accusantium sunt. Adipisci quasi et fugiat voluptatem ullam quaerat quisquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(133, '2022-08-12 06:53:36', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 66.00, NULL, 'paid', 'Facilis qui accusamus natus qui ea tempore. Quaerat quia et fugiat. Suscipit ut sed vel vero accusantium. Quisquam est et illo animi sequi ullam in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(134, '2021-11-09 04:29:07', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 90.00, NULL, 'paid', 'Illum vitae et ipsa suscipit aut. Neque illum deleniti officia consequuntur voluptas. Modi quidem ratione quo ea et amet eos. Velit maiores dolorum distinctio inventore voluptate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(135, '2022-07-13 05:13:23', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 33.00, NULL, 'paid', 'Exercitationem cum reiciendis maiores. Nulla velit dicta commodi. Quos dolor aut aliquam sit corporis non. Facilis iusto reiciendis distinctio impedit et aperiam error.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(136, '2022-05-01 22:39:28', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 32.00, NULL, 'paid', 'Quod voluptatum voluptatem eius ea nostrum. Quae expedita ea et cupiditate veritatis iure repellat magni. Eligendi aliquid rerum repudiandae optio odio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(137, '2022-03-10 15:00:19', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 60.00, NULL, 'paid', 'Iste aut enim corporis assumenda officiis dolorum soluta quaerat. Sit dolorum non cum blanditiis nihil illo cumque. Eos enim quia rem consequuntur ipsum natus atque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(138, '2021-09-30 01:05:33', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 70.00, NULL, 'paid', 'Ea culpa perspiciatis voluptates repellat sint. Non dolor vel cumque nobis maxime eum molestiae. Accusamus totam nisi mollitia rerum eos nihil ratione.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0);
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`, `employee_id`, `deleted_at`, `md`, `coupon`, `discount`, `kds_finished`) VALUES
(139, '2022-05-09 14:04:24', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 46.00, NULL, 'paid', 'Voluptatem illum harum dicta architecto minus dolorem. Sunt tempore iusto et maiores fuga in. Aperiam ut quia eaque quod autem tempore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(140, '2022-04-23 23:08:13', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 74.00, NULL, 'paid', 'Aut voluptas aliquam consequatur iste. Et sit rerum enim. Magni dicta esse adipisci quod vero ut at.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(141, '2021-10-22 06:58:02', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 93.00, NULL, 'paid', 'Cum dignissimos sit necessitatibus repellat laudantium velit officiis unde. Non libero soluta veritatis et perferendis. Sit quam velit cupiditate reiciendis laborum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(142, '2022-05-05 19:46:25', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 67.00, NULL, 'paid', 'Consectetur aut fuga consequatur a sunt. Modi eum minus nam rerum saepe. Qui consequatur est voluptatem doloribus qui sunt optio. Rerum id repudiandae nihil ut aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(143, '2022-03-22 10:58:39', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 58.00, NULL, 'paid', 'Ab reiciendis sed dolor omnis. Et delectus modi vitae aut atque itaque sequi explicabo. Enim labore ea cumque voluptatum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(144, '2022-06-16 15:55:04', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 50.00, NULL, 'paid', 'Ad laudantium nobis aliquam et magni. Labore eaque ad est. Labore autem id a minima nemo possimus ipsum dolor. Aut quod quod officia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(145, '2021-09-12 15:22:49', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 59.00, NULL, 'paid', 'Dicta magnam cum et voluptas. Iure sit rerum incidunt commodi ipsum eos a. Earum nesciunt eos architecto blanditiis perferendis. Fugit est perferendis quam optio minima.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(146, '2022-03-05 01:18:55', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 92.00, NULL, 'paid', 'Fuga labore quaerat delectus. Animi facilis dolores beatae totam nesciunt libero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(147, '2021-11-15 06:15:30', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 54.00, NULL, 'paid', 'Ad voluptatem a enim maiores aperiam incidunt assumenda ab. Quidem molestiae perferendis possimus est at vel expedita. Et eum laboriosam saepe fugit quasi voluptatem in molestias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(148, '2021-08-20 14:25:19', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 68.00, NULL, 'paid', 'Totam hic recusandae consequatur vel. Id fugit quisquam quasi rerum ut in aut. Nihil quia in et hic unde.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(149, '2022-04-14 16:35:59', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 64.00, NULL, 'paid', 'Explicabo quisquam ipsum similique itaque qui. Mollitia error vel est. Est et aliquid sapiente porro atque ipsa. Consectetur ea consequatur rem exercitationem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(150, '2021-10-27 19:58:55', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 47.00, NULL, 'paid', 'Nemo rem enim eaque voluptas. Quod praesentium ut similique. Odit ea unde provident ducimus ipsam vel. Sequi cumque quas eos. Facere voluptas vel qui quod repellendus a.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(151, '2021-11-16 22:16:51', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 96.00, NULL, 'paid', 'Possimus possimus et deserunt magnam corrupti numquam optio numquam. Illo earum tenetur est aliquam excepturi sit sit. Quos eveniet tenetur possimus veniam dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(152, '2022-08-15 15:54:51', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 64.00, NULL, 'paid', 'Earum ullam molestiae tenetur accusantium fugiat dolorem vel. Laborum ratione tempora doloremque inventore quo quaerat. Id voluptatem fugit ab fuga. Ex tenetur ab aut at labore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(153, '2022-01-22 10:51:07', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 57.00, NULL, 'paid', 'Amet quia aperiam expedita illum rem veritatis. Possimus id assumenda perspiciatis dolores optio aliquid. Dolores debitis quasi quaerat sit. Omnis dignissimos vero quo expedita quis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(154, '2022-04-26 08:33:13', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 74.00, NULL, 'paid', 'Velit dolorem repellendus nobis vero. Unde modi et ut. Suscipit in similique molestias et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(155, '2022-02-26 15:25:51', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 32.00, NULL, 'paid', 'Esse quia iusto nostrum ea iste sit blanditiis. Atque doloribus consectetur fugiat commodi voluptates. Voluptas cupiditate consequatur deleniti velit quis voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(156, '2022-03-12 07:05:40', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 46.00, NULL, 'paid', 'Nemo adipisci quod corporis quia. Nobis repudiandae assumenda qui qui quibusdam delectus a. Veniam perferendis delectus iusto magni tempora qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(157, '2022-01-21 19:48:06', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 100.00, NULL, 'paid', 'Esse consequatur et aut minima odio modi hic. Eveniet quia magnam dignissimos sed. Voluptas nulla molestiae numquam eius.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(158, '2022-06-01 03:43:56', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 82.00, NULL, 'paid', 'Ipsum et at qui. Odit magnam non et autem dolorem omnis. Aut beatae blanditiis laudantium sunt natus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(159, '2022-07-08 22:12:08', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 92.00, NULL, 'paid', 'Sunt voluptatem ipsam magnam quae quia qui est quo. Deleniti qui nihil sed dignissimos molestiae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(160, '2022-07-26 04:09:55', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 94.00, NULL, 'paid', 'Quae error nisi distinctio totam vel aut et. Unde rerum mollitia voluptas itaque ex et. Et praesentium fugiat atque perferendis. Nisi facilis dolor temporibus iure est laborum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(161, '2022-08-01 19:42:02', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 48.00, NULL, 'paid', 'Fuga suscipit quam praesentium soluta eligendi id. Occaecati dolor soluta rem. Quidem occaecati rerum unde nam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(162, '2021-09-18 23:24:18', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 57.00, NULL, 'paid', 'Et aperiam tenetur esse libero. Facere maxime quidem cumque eum quos modi sunt. Id voluptates delectus quo harum omnis quod. Laboriosam consequuntur et aut omnis aut sit consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(163, '2022-01-07 22:46:44', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 75.00, NULL, 'paid', 'Accusamus molestias facere error vel et. Nihil nesciunt et autem consequatur ex. Architecto aut vel sed iure et aliquid. Ut error eligendi expedita nemo dolor illum voluptate eaque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(164, '2021-11-19 06:38:13', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 86.00, NULL, 'paid', 'Est facilis molestias ea sit quia. Saepe et est rerum. Perspiciatis libero nemo repellendus sunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(165, '2021-11-25 17:43:08', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 94.00, NULL, 'paid', 'Et ullam voluptatem illo. Tempore iure nihil non. Totam in voluptatibus accusamus est nihil nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(166, '2021-08-29 14:54:14', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 62.00, NULL, 'paid', 'Deleniti non dignissimos explicabo blanditiis porro. Praesentium molestias temporibus molestiae reiciendis asperiores omnis et sed. Voluptatem iure laboriosam quis aut ea aliquid.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(167, '2022-03-07 08:54:38', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 81.00, NULL, 'paid', 'Et id molestiae qui nemo aspernatur quia nemo. Deleniti temporibus minima iusto vitae et iure quidem dolorem. Dolores facere consectetur voluptatum ducimus et iure.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(168, '2022-08-14 08:31:31', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 98.00, NULL, 'paid', 'Minus natus dolores soluta sit quod velit. Aut reiciendis excepturi excepturi quibusdam. Accusantium enim illum hic eos maiores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(169, '2022-06-20 19:03:58', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 77.00, NULL, 'paid', 'Omnis odit incidunt sit ut nostrum tempora voluptas. Voluptas quod nisi quis et molestiae. Voluptatem vitae libero nemo illo et sapiente aliquid. Magni aut aut excepturi quasi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(170, '2021-09-29 19:16:22', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 76.00, NULL, 'paid', 'Qui qui facere amet explicabo. Numquam quo neque omnis voluptatum qui quia molestiae voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(171, '2022-06-14 16:24:29', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 47.00, NULL, 'paid', 'Nobis aut ut voluptatem unde. Laboriosam eum sequi aspernatur quibusdam. Et sint aut libero in nostrum qui. Esse vero expedita sunt non maxime.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(172, '2022-07-22 20:41:22', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 98.00, NULL, 'paid', 'Aut quis et est. Similique perspiciatis autem nisi. Autem maiores aut aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(173, '2021-11-01 14:12:47', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 78.00, NULL, 'paid', 'Corporis vel maiores consequatur. Dolorum ipsam et officiis temporibus. Beatae aut nostrum maiores quisquam et nostrum. Nisi vel sunt tempore quasi exercitationem officiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(174, '2021-10-04 02:09:13', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 87.00, NULL, 'paid', 'Temporibus nesciunt et tempore sunt. Quia quo tempora repellat consequatur. Voluptatem magnam nihil autem aut sit. Odit neque nostrum quidem veritatis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(175, '2022-01-06 07:37:45', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 39.00, NULL, 'paid', 'Provident quas et omnis id ut aliquam et. Ut accusamus et cupiditate quas odit qui aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(176, '2021-11-25 15:31:22', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 30.00, NULL, 'paid', 'Nam omnis blanditiis numquam illum. Quidem qui doloremque et omnis quia quibusdam. Nihil totam vel voluptatem facere praesentium. Amet porro distinctio explicabo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(177, '2022-07-02 00:52:23', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 85.00, NULL, 'paid', 'Et eos mollitia est assumenda sit a accusamus. Ea a occaecati sapiente maxime occaecati. Consequatur quo at delectus aliquam vero fugit et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(178, '2022-06-02 19:34:07', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 100.00, NULL, 'paid', 'Vel soluta est rerum iste. Doloremque repellendus cum aut officia quia. Itaque quam quo tempore. Culpa perspiciatis quis architecto rerum velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(179, '2022-03-02 20:22:01', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 78.00, NULL, 'paid', 'Cum sint provident totam itaque ea. Quasi qui sunt expedita deleniti qui. Et accusamus deserunt id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(180, '2022-01-19 21:55:41', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 57.00, NULL, 'paid', 'Similique possimus adipisci rerum. Earum fuga temporibus qui reprehenderit non mollitia aliquid. Aliquid maxime molestias et laudantium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(181, '2022-06-13 09:56:01', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 71.00, NULL, 'paid', 'Hic dolorem aperiam accusamus impedit quisquam. Accusamus perferendis doloribus occaecati velit. Quis libero fuga velit porro.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(182, '2022-02-15 23:24:53', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 72.00, NULL, 'paid', 'Praesentium rerum temporibus incidunt esse asperiores. Fuga laudantium et nemo. Ea aut sit numquam possimus voluptatem deserunt. Ut neque tempore ipsum corrupti quos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(183, '2022-06-26 04:57:38', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 40.00, NULL, 'paid', 'Eos ab ut et veritatis nihil nisi perferendis. Atque ratione modi qui dolores. Velit nemo nisi soluta sit nihil placeat velit. Dolorum repudiandae quod ut magni.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(184, '2022-06-22 06:07:43', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 97.00, NULL, 'paid', 'Saepe officiis est soluta esse. Nemo et doloremque et fuga veniam fugit aspernatur dolorem. Commodi laudantium maiores voluptas dicta quia culpa.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(185, '2022-07-08 19:21:40', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 61.00, NULL, 'paid', 'Amet labore dolores ad alias voluptatem est. Dolorum aut ut quibusdam qui. Voluptatem voluptas dolores et quaerat nostrum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(186, '2021-10-19 12:41:59', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 95.00, NULL, 'paid', 'Voluptas sed cupiditate est reiciendis. Aspernatur voluptatum vitae laboriosam. Dicta velit adipisci velit ut tenetur. Quibusdam quae sequi eum cum eos ratione.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(187, '2021-10-03 21:04:21', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 70.00, NULL, 'paid', 'Aspernatur tempore cupiditate non et. Quas molestias nihil ea omnis. Exercitationem quidem culpa autem non voluptatem distinctio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(188, '2022-04-23 09:40:52', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 63.00, NULL, 'paid', 'Suscipit neque iusto expedita officiis rem molestiae dolores. Sint placeat modi ex qui quis magnam. Ut facere neque doloribus est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(189, '2022-04-03 21:38:33', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 50.00, NULL, 'paid', 'Recusandae est omnis necessitatibus numquam sed voluptatum et aut. Magni magni quam enim. Voluptas omnis impedit corporis unde expedita magni. Sunt et nobis perspiciatis exercitationem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(190, '2022-06-22 15:28:21', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 33.00, NULL, 'paid', 'Unde repellendus accusamus vel et quisquam. Quaerat numquam incidunt voluptatum. Quas expedita est et illum dolores ullam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(191, '2022-01-19 07:51:45', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 63.00, NULL, 'paid', 'Quia qui ipsum est autem rerum et culpa. Aut nemo dolore qui qui voluptatem distinctio. Facilis ut officia maiores architecto enim perspiciatis dolorum in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(192, '2022-07-23 14:32:44', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 63.00, NULL, 'paid', 'Corrupti porro cum nostrum exercitationem. Molestiae suscipit dolor illo sint eum quia. Deserunt saepe ratione dolore cumque rerum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(193, '2022-05-08 02:37:36', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 100.00, NULL, 'paid', 'Quo odit sed temporibus qui. Fugiat natus nesciunt eveniet delectus. Molestias rerum tenetur dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(194, '2022-01-08 05:32:12', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 63.00, NULL, 'paid', 'Molestiae praesentium corporis iure porro ea. Est sed consequatur aspernatur est sit. Commodi aut voluptas tenetur sint.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(195, '2022-02-21 10:13:37', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 69.00, NULL, 'paid', 'A dolorum reiciendis corporis. Hic sit blanditiis quia omnis consequatur id perspiciatis totam. Omnis modi eaque ducimus voluptatem quas aliquam a dolore. Ut iure animi hic ipsam aspernatur eveniet.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(196, '2022-02-09 00:14:58', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 43.00, NULL, 'paid', 'Ut iusto soluta impedit non exercitationem. Quas ullam culpa aut aut. Impedit voluptas quaerat facere expedita sit sit rerum. Autem voluptatibus dolorem doloribus sequi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(197, '2022-06-05 01:05:17', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 86.00, NULL, 'paid', 'Consequatur harum est sunt hic eos. Amet asperiores rerum exercitationem qui quia. Debitis quia ullam reprehenderit natus ab veniam voluptas. Itaque maxime reprehenderit et consectetur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(198, '2022-03-21 12:41:46', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 68.00, NULL, 'paid', 'Eum commodi et commodi ex. Sed harum deserunt repellat voluptatum hic. Possimus et facilis doloremque adipisci porro et qui. Ad omnis eum et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(199, '2022-04-26 00:50:01', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 72.00, NULL, 'paid', 'Quia commodi quo dolor nostrum qui sed. Temporibus voluptates non vel et ex qui earum. Ea consequuntur facilis culpa quae facere.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(200, '2022-01-31 03:09:59', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 64.00, NULL, 'paid', 'Qui qui quia praesentium et ut vero. Dolorem natus dolorum illum blanditiis officia sint non. Illum aut nostrum eaque omnis et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(201, '2022-04-23 02:05:31', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 50.00, NULL, 'paid', 'Ipsum optio dignissimos dolore occaecati nemo voluptas. Non soluta rem minima ut dolorem. Et provident numquam ipsa aspernatur eum maiores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(202, '2021-11-28 23:21:16', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 85.00, NULL, 'paid', 'Sit eos temporibus culpa laborum. Sint sint dolorum maiores. Molestiae ut explicabo officiis sed quibusdam officia omnis sit. Officiis quasi culpa reprehenderit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(203, '2022-01-31 14:53:24', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 88.00, NULL, 'paid', 'Ut dolorem consectetur et sunt nemo laborum. Et sunt quia sunt ut porro. Laborum et corrupti voluptatum repudiandae. In libero perferendis quam dolorum ut facere non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(204, '2022-05-23 03:49:38', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 96.00, NULL, 'paid', 'Temporibus ut expedita saepe et dolorem tenetur. Impedit ut aut ex dolorem aut nulla quia. Cupiditate libero aut odit reiciendis. Ex iusto ipsa est rerum perspiciatis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(205, '2021-09-08 09:04:36', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 31.00, NULL, 'paid', 'Itaque deserunt cum voluptatem ut mollitia at inventore. Quod omnis rem velit temporibus aspernatur debitis rerum molestiae. Officia eum nobis vitae sapiente autem commodi rerum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(206, '2022-01-01 23:50:29', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 70.00, NULL, 'paid', 'Placeat natus amet est occaecati aut ut. Deserunt harum enim adipisci omnis nisi at delectus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(207, '2021-12-12 07:39:01', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 87.00, NULL, 'paid', 'Quia quisquam soluta quia voluptas id omnis voluptatem. Harum sed blanditiis quia sunt non. Possimus corporis ea suscipit odio vel aut. Omnis sit beatae ipsum ipsum quam autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(208, '2022-05-01 13:30:03', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 99.00, NULL, 'paid', 'Voluptatem mollitia laboriosam doloribus repellat quia voluptatibus quidem dolore. Amet modi ipsa tempora itaque ut quo ducimus. Deleniti aspernatur omnis aut earum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(209, '2022-04-18 00:48:59', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 46.00, NULL, 'paid', 'Est nobis cum consequatur rerum. Dolorum aspernatur minima autem quis eligendi. Sed culpa doloribus ut et deleniti expedita. Dolorem numquam porro dolor error et repudiandae dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(210, '2022-01-18 05:44:47', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 42.00, NULL, 'paid', 'Necessitatibus vel corrupti ad a non nihil. At et sed officia illum esse. Aspernatur dolores unde inventore labore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(211, '2021-11-29 05:23:40', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 58.00, NULL, 'paid', 'Non quod at voluptas voluptatum amet quo hic. Est tempore omnis voluptatem aspernatur facilis assumenda earum aut. Ipsam modi iste sed quo autem quia aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(212, '2021-11-27 13:45:12', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 39.00, NULL, 'paid', 'Veritatis et quibusdam id autem natus. Architecto tempora voluptatem sunt reprehenderit quasi quia. Quam aliquam architecto eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(213, '2022-04-12 19:09:23', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 35.00, NULL, 'paid', 'Nihil ut cum eum aut non. Quod atque doloremque voluptatem consequuntur adipisci. Vitae molestias doloribus saepe non et quia quod aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(214, '2021-09-05 04:24:44', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 47.00, NULL, 'paid', 'Est debitis natus voluptatem est sequi. Hic voluptatum accusantium et molestiae. Et quia incidunt eos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(215, '2022-04-20 01:32:49', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 39.00, NULL, 'paid', 'Omnis delectus illo alias blanditiis unde laborum architecto. Aut sed ad amet magnam ut alias. Iste est delectus eligendi quas neque fugit ipsam. Ut dolorum maxime ipsum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(216, '2022-06-10 20:29:06', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 78.00, NULL, 'paid', 'Velit dolore expedita aperiam ea quasi. Doloribus accusamus et sunt. Possimus qui animi sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(217, '2022-03-30 14:29:04', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 31.00, NULL, 'paid', 'Rerum magni corporis pariatur facere expedita ipsum placeat. Velit voluptas suscipit neque consequatur. Eveniet repudiandae sunt quo nihil voluptate dolorum omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(218, '2022-04-16 13:58:56', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 36.00, NULL, 'paid', 'Incidunt minima labore inventore adipisci blanditiis explicabo rerum. Fugit esse est et cum tenetur qui. Magni similique ea corrupti qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(219, '2022-08-03 05:19:18', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 75.00, NULL, 'paid', 'Velit omnis nulla temporibus tempore enim deserunt accusantium non. Molestiae quaerat nobis voluptas aut veritatis impedit est. Doloremque minima maiores corporis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(220, '2021-11-18 00:01:53', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 43.00, NULL, 'paid', 'Et excepturi numquam temporibus dolore ut. Quibusdam pariatur unde veritatis quia. Porro dolore aut iure voluptas. Perspiciatis vel et expedita vitae id itaque et cumque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(221, '2022-06-01 22:19:32', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 82.00, NULL, 'paid', 'Laborum ipsa aut officiis et repudiandae. Qui vitae similique exercitationem officiis. Dicta ex non unde nihil vel tempora.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(222, '2022-08-15 02:11:06', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 58.00, NULL, 'paid', 'Quisquam voluptas quae est repellat atque. Sint dignissimos dolor expedita eum voluptas perferendis. Est maiores praesentium sint est soluta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(223, '2022-07-09 04:56:25', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 80.00, NULL, 'paid', 'Cupiditate id laborum voluptas blanditiis sequi. Animi mollitia id nisi in nisi necessitatibus incidunt. Doloremque reprehenderit qui ut adipisci.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(224, '2022-03-30 11:23:11', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 84.00, NULL, 'paid', 'Architecto aspernatur eligendi accusantium vitae. Consequuntur adipisci qui ipsa sed enim ut rerum. Tenetur aut beatae nesciunt. Laudantium velit dolorem voluptatibus tenetur ipsa.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(225, '2022-08-18 10:39:35', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 77.00, NULL, 'paid', 'Similique occaecati voluptatibus qui. Quo nihil voluptatem dolores sed. Illo veniam in explicabo. Qui totam molestias in iste rem labore quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(226, '2022-02-14 00:29:14', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 30.00, NULL, 'paid', 'Vero excepturi et magni inventore unde cum. Mollitia sint sit rerum dolores. Ipsam magni itaque explicabo culpa.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(227, '2021-11-04 04:17:06', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 79.00, NULL, 'paid', 'Nostrum sed saepe incidunt ratione quae repellendus laboriosam ipsum. A tempore assumenda esse adipisci sit aliquid. Ut nihil soluta dicta eos dolorum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(228, '2022-01-26 23:31:02', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 42.00, NULL, 'paid', 'Cumque molestiae molestiae voluptatum modi illum. Voluptatem sed et debitis quidem sit asperiores. Aut non magnam repudiandae esse nostrum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(229, '2022-03-12 13:06:32', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 69.00, NULL, 'paid', 'Quia voluptatem eum impedit. Similique enim et rerum dolore ut. Soluta nisi dolorem ipsum minima similique.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(230, '2021-09-23 02:53:02', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 72.00, NULL, 'paid', 'Sunt harum ipsam odio corporis sit. Iure repudiandae eaque adipisci eos doloribus facere doloremque. Maiores dicta facere aut dolorem totam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(231, '2021-12-01 21:11:46', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 70.00, NULL, 'paid', 'Occaecati sit eius explicabo et sequi sunt adipisci. Ipsam consequatur fuga quod dolores aut delectus ea. Reprehenderit incidunt aut facere ex.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(232, '2022-08-09 19:05:47', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 60.00, NULL, 'paid', 'Ullam dolores reprehenderit facilis nihil tempore autem. Nesciunt est rerum aperiam in beatae. Commodi vel sit illo incidunt voluptates tenetur quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(233, '2022-03-19 20:45:54', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 38.00, NULL, 'paid', 'Quia ut voluptatem vel voluptatem omnis ut. Corporis voluptatem quo itaque fugit aspernatur. Expedita reiciendis vel doloribus mollitia perspiciatis ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(234, '2022-05-17 05:52:59', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 73.00, NULL, 'paid', 'Quo architecto rem voluptates tenetur. Reprehenderit sint quia nisi dolorum tenetur ipsa minima. At quia in esse sint illo nesciunt qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(235, '2022-06-21 15:42:50', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 80.00, NULL, 'paid', 'Et qui cumque dignissimos. Nemo est labore qui maxime laborum. Vero non qui quo vel impedit dicta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(236, '2022-05-17 05:09:13', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 83.00, NULL, 'paid', 'Natus quas illo voluptatem aperiam possimus animi. Libero molestias dolor tempora et sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(237, '2021-09-15 08:55:49', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 78.00, NULL, 'paid', 'Quisquam amet aliquid aliquid nesciunt optio corrupti. Deserunt cupiditate in corrupti non id recusandae. Quis quisquam sit rem dolor. Cum unde modi id quasi atque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(238, '2022-04-26 03:41:31', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 36.00, NULL, 'paid', 'Cumque molestias quis est omnis error corporis. Fugit aliquid eum voluptatem qui voluptatum. Neque voluptatem est aperiam nihil et. Et nobis animi provident sint nam perferendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(239, '2022-06-05 03:50:39', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 41.00, NULL, 'paid', 'Tenetur perferendis at illo ea sapiente fuga qui. Quia adipisci sed ut provident et perspiciatis. Ullam iure voluptate expedita. Perspiciatis soluta qui et dolorem accusantium placeat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(240, '2022-05-14 00:53:10', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 51.00, NULL, 'paid', 'Dicta delectus et ut debitis qui. Corporis dicta sed at animi et porro ipsa. Harum reiciendis maxime veniam quas est quos minus. Autem earum voluptas placeat hic exercitationem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(241, '2021-12-31 12:01:51', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 40.00, NULL, 'paid', 'Et iure voluptatum quae et et. Alias nemo nesciunt autem dolor. Aliquam iusto expedita odit maxime repellendus est quas. Temporibus quo animi ea eum est ut dolorem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(242, '2022-08-14 20:05:06', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 83.00, NULL, 'paid', 'Eum culpa minima et illo. Nulla reprehenderit saepe recusandae accusantium. Quidem sunt consequatur magni distinctio suscipit. Pariatur amet qui id ut sint et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(243, '2022-04-23 07:52:59', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 74.00, NULL, 'paid', 'Neque molestiae saepe nihil sed qui distinctio recusandae. Incidunt odit aut consequatur molestiae ea enim vitae magnam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(244, '2022-07-06 06:39:42', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 58.00, NULL, 'paid', 'Itaque vel corrupti ullam voluptatem et et sed. Dolorem voluptate tenetur inventore ea asperiores. Sed autem voluptatem vero autem. Rerum quis earum neque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(245, '2022-01-20 00:56:53', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 79.00, NULL, 'paid', 'Ipsum vero quam ipsa consequuntur. Consequuntur dolorem quas in quos. Quia delectus est temporibus accusamus et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(246, '2022-07-30 14:42:56', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 85.00, NULL, 'paid', 'Sint ipsam deleniti ut impedit delectus. Non earum rerum est architecto expedita molestias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(247, '2022-06-13 07:04:44', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 95.00, NULL, 'paid', 'Fuga quam et deleniti. Asperiores doloribus corrupti saepe molestiae aperiam illum voluptas itaque. Sed placeat temporibus reprehenderit a id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(248, '2022-06-13 13:50:11', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 41.00, NULL, 'paid', 'Est officia earum distinctio doloremque. Enim commodi in officia libero assumenda.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(249, '2022-08-09 08:32:26', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 97.00, NULL, 'paid', 'Libero velit sit laudantium odio omnis voluptatem animi. Aliquid molestias beatae est ipsam expedita qui unde.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(250, '2022-01-11 18:03:41', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 39.00, NULL, 'paid', 'Hic quia fugit maxime voluptas. Est adipisci aut nemo nam. Adipisci ab occaecati pariatur et harum nostrum dicta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(251, '2021-11-24 18:28:11', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 86.00, NULL, 'paid', 'Eum labore quia in laborum et. Ut quasi qui eos explicabo voluptatibus minus omnis. Mollitia est id reiciendis odio. Quia rerum velit quia perspiciatis voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(252, '2022-03-01 14:57:53', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 54.00, NULL, 'paid', 'Consequatur labore omnis et enim reprehenderit. Laborum pariatur ut commodi itaque aut itaque. Cupiditate similique eius voluptas aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(253, '2022-02-07 06:30:35', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 84.00, NULL, 'paid', 'Facere voluptatibus rerum laborum expedita modi consequatur numquam. Est velit accusamus dolor eveniet ut aut. Quis veritatis totam voluptatem voluptatem tempore. Possimus hic expedita impedit est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(254, '2022-07-06 12:40:01', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 35.00, NULL, 'paid', 'Maiores esse corporis commodi consequatur. Eos ut consectetur ut quod quisquam labore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(255, '2022-07-01 01:00:20', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 96.00, NULL, 'paid', 'Suscipit eos consectetur eligendi autem sequi consectetur. Aperiam ipsa labore fugit pariatur officia nobis. Quos esse est nisi labore. Ipsum omnis quasi porro vero facere vero hic dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(256, '2021-12-16 03:10:08', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 68.00, NULL, 'paid', 'Eum qui at dolores nihil qui. Omnis libero ad quibusdam ipsam dolorem mollitia non qui. Aut at et quidem rerum deleniti omnis necessitatibus. Est quibusdam officiis nesciunt et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(257, '2022-02-28 05:36:52', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 84.00, NULL, 'paid', 'Cupiditate est impedit incidunt nihil et at eaque. Deserunt nihil dolorem at dolor ullam accusantium. Quo cumque iure vero ratione suscipit qui non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(258, '2021-10-20 15:59:26', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 50.00, NULL, 'paid', 'Est iure qui quam est quia eveniet commodi. Natus molestias cum ut molestiae quod repellendus. Ut ut itaque saepe et numquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(259, '2022-02-21 23:22:59', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 46.00, NULL, 'paid', 'Eligendi quia quae et illum et. Necessitatibus quis in autem hic voluptas. Deserunt nesciunt similique est et quibusdam dolorem commodi labore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(260, '2022-06-27 11:55:09', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 86.00, NULL, 'paid', 'Velit odio enim molestiae a quia officiis eos. Consectetur tenetur non occaecati et repudiandae et id doloremque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(261, '2021-09-01 23:26:53', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 76.00, NULL, 'paid', 'Nobis quasi velit laboriosam consequatur quis eos. Excepturi eaque sunt sint. Est omnis omnis sit fuga.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(262, '2021-12-03 01:29:48', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 33.00, NULL, 'paid', 'Perspiciatis unde molestiae fugiat ex. Similique distinctio error est occaecati. Qui et eum voluptas ullam ullam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(263, '2022-04-28 05:02:52', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 100.00, NULL, 'paid', 'Omnis velit provident ut et. Qui repellendus officia eligendi hic vel aut. Doloribus porro necessitatibus perferendis sequi eius asperiores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(264, '2022-07-12 20:43:44', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 89.00, NULL, 'paid', 'In earum dolores accusamus animi iusto. Quis aut consequatur quaerat possimus dolorem ut. Tempora nemo quo sed explicabo eius itaque accusantium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(265, '2022-02-18 18:25:08', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 94.00, NULL, 'paid', 'Maxime eaque cumque aspernatur nemo. Aut quo unde voluptatem. Eum facilis dolorum deserunt similique. Non quo et occaecati pariatur beatae temporibus odit aut. Excepturi reiciendis delectus ut minus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(266, '2022-04-18 20:13:01', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 41.00, NULL, 'paid', 'Quia repellat cumque repudiandae reprehenderit. Sit ad rerum qui ut repellat et. Qui ut quod quis alias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(267, '2022-01-06 06:21:11', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 70.00, NULL, 'paid', 'Voluptatibus architecto eum autem id ut. Autem omnis non voluptatem. Porro magnam quia rerum ut aspernatur. In est possimus porro minima ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(268, '2022-06-14 07:14:14', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 45.00, NULL, 'paid', 'Incidunt natus nihil reprehenderit omnis velit eum. Magni ut veritatis molestiae dolorem inventore soluta dolor. Consequatur sint exercitationem quia voluptatem qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(269, '2021-11-25 05:04:34', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 77.00, NULL, 'paid', 'Doloremque ex neque quibusdam saepe numquam. Culpa et aliquam repellat quia facilis et natus. Eius aut at dolores voluptatem non iste. Dolor et mollitia similique pariatur nihil saepe sequi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(270, '2021-08-25 14:00:02', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 100.00, NULL, 'paid', 'Alias et molestiae et veniam non. Accusamus autem dolorum error aliquid non omnis. Ducimus voluptas ab ab magni vitae temporibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(271, '2022-08-07 22:55:21', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 81.00, NULL, 'paid', 'Doloribus sequi omnis est doloremque consequatur. Odit sed omnis excepturi sed sit. Sunt laborum tempora eius.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(272, '2022-02-17 22:59:33', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 92.00, NULL, 'paid', 'Similique assumenda qui dolorum dignissimos autem. Molestiae molestiae id quidem et. Ut quam rerum dolor est. Eos ut atque ea distinctio. Suscipit aspernatur in rerum corporis enim enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(273, '2022-06-03 14:33:06', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 61.00, NULL, 'paid', 'Consectetur nesciunt necessitatibus incidunt quo. Et et voluptatem mollitia et ut magnam at. Minus perspiciatis ullam id. Voluptas architecto repellendus nisi sequi doloremque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(274, '2022-06-27 07:03:59', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 87.00, NULL, 'paid', 'Incidunt eveniet qui est a ea quia cumque. Et vero et molestias. Et ut ducimus dignissimos laborum dolorem in rerum perferendis. Rerum vero vero qui nesciunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(275, '2021-11-27 02:05:24', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 63.00, NULL, 'paid', 'Sit dolorum quisquam ut. Non provident blanditiis nihil mollitia. Illo officia et aliquid ut labore. Quae doloremque quam dolore est a quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(276, '2022-05-13 08:30:38', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 74.00, NULL, 'paid', 'Commodi sed inventore aut id facilis animi dicta. Eos sed magnam qui quae repudiandae. Fugiat dicta labore aut eos doloribus voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(277, '2022-05-26 04:18:05', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 95.00, NULL, 'paid', 'Sunt consequatur officia optio nisi. Ab impedit necessitatibus velit hic sed iure voluptatem incidunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(278, '2021-09-12 16:47:44', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 62.00, NULL, 'paid', 'Sunt omnis consequatur nesciunt fugit eveniet dolorem. Et mollitia excepturi nemo officiis officia quia iure ipsa.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0);
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`, `employee_id`, `deleted_at`, `md`, `coupon`, `discount`, `kds_finished`) VALUES
(279, '2021-09-25 12:18:42', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 59.00, NULL, 'paid', 'Qui facilis quo nihil eaque vitae repudiandae dolorum aliquam. Mollitia modi qui placeat excepturi ullam aut. Maiores quis qui omnis aut. Fugit ex doloremque labore saepe sed iste enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(280, '2022-05-02 10:29:04', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 57.00, NULL, 'paid', 'Ex et sunt repellendus aut voluptatem voluptatem. Recusandae quasi saepe quia a expedita tempore deleniti.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(281, '2022-07-12 23:00:34', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 41.00, NULL, 'paid', 'Aut quia et dolor exercitationem. Odit consequuntur quia quae quo magnam error aut. Fugiat dignissimos dolorum minus sit. Maiores temporibus aut dicta in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(282, '2021-09-10 16:11:03', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 88.00, NULL, 'paid', 'Libero tempore temporibus quasi corporis eaque sed. Quam omnis voluptates iure. Fuga expedita quis quos optio eius provident sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(283, '2022-01-03 07:47:27', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 85.00, NULL, 'paid', 'Molestiae est vero dolorum corrupti sapiente unde ratione facilis. Quae omnis at illo in debitis. Laboriosam aliquid dolores tenetur voluptate quo ea ut. Qui dolore quia repudiandae fuga.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(284, '2022-01-03 06:14:40', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 41.00, NULL, 'paid', 'Modi voluptas facilis facilis quidem ut tenetur. Eius qui aut qui dicta omnis facere. Voluptates soluta incidunt repellendus aut minima ad.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(285, '2021-12-31 12:14:37', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 37.00, NULL, 'paid', 'Deleniti doloribus sint quidem quasi labore tempora. Quam commodi quisquam natus vel delectus libero. Similique ut quo alias impedit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(286, '2022-06-21 01:13:58', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 95.00, NULL, 'paid', 'Accusantium quisquam porro magni eos consequatur. Pariatur omnis voluptas sint molestias dolores nemo. Ullam omnis eum nobis nemo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(287, '2022-05-13 10:00:19', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 75.00, NULL, 'paid', 'Qui veritatis iusto et nulla. Laborum consequatur aut est. Dolores voluptatem magnam at aperiam nobis. Qui nesciunt ut quas vel dicta exercitationem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(288, '2021-12-15 17:53:31', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 53.00, NULL, 'paid', 'Dolore qui est et debitis adipisci. Aperiam tempore non doloribus molestias quia et voluptatum. Vel vel voluptatem et quae consectetur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(289, '2021-10-12 07:50:41', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 36.00, NULL, 'paid', 'Rerum reprehenderit ut fugit omnis architecto optio. Pariatur iusto quia a qui. Et veniam sit in laudantium quo commodi illum sunt. Soluta sapiente dolorem nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(290, '2022-06-09 03:26:42', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 94.00, NULL, 'paid', 'Vel placeat veritatis ea. Earum laborum modi alias sapiente. Id mollitia tempora et vero accusamus ut incidunt. Fugit et ea modi voluptatem provident.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(291, '2022-06-09 05:39:34', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 91.00, NULL, 'paid', 'Et est suscipit sint. Ut harum laborum quis repudiandae est non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(292, '2022-01-22 19:00:12', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 36.00, NULL, 'paid', 'Nemo nulla delectus et earum nesciunt aut. Atque totam at consequatur est atque fuga praesentium. Esse consequatur nostrum nihil. Ut quibusdam magni non eum voluptatum consequuntur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(293, '2022-03-18 21:10:58', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 53.00, NULL, 'paid', 'Earum totam expedita molestias voluptatibus. Facere mollitia sed provident quo culpa sunt et suscipit. Minus adipisci eius laudantium velit. Odio nobis autem voluptates beatae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(294, '2022-02-02 02:26:57', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 49.00, NULL, 'paid', 'Facere voluptate vero ab delectus quo. Id voluptatem et aut minus sunt nesciunt. Dicta harum ea neque ducimus quia assumenda.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(295, '2021-12-01 14:02:01', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 52.00, NULL, 'paid', 'Corporis ex rerum rerum voluptas laborum. Et fuga sint quam corporis aut exercitationem. Atque qui cumque inventore quam inventore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(296, '2022-02-06 11:33:13', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 99.00, NULL, 'paid', 'Eos voluptas quod asperiores dicta aut aut. Perspiciatis qui quisquam et consequatur. Nulla qui voluptates sit sed eos minima.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(297, '2021-08-23 10:37:11', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 98.00, NULL, 'paid', 'Omnis debitis inventore est magnam molestiae. Nam qui ex qui cumque. Consequatur voluptatibus doloremque sunt odit. Omnis consequatur et doloremque dicta eos eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(298, '2021-09-15 07:19:52', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 77.00, NULL, 'paid', 'Culpa soluta voluptas aperiam autem. Fugiat repellendus porro rerum necessitatibus porro. Quia itaque magnam asperiores laborum quasi. Nam eos consequatur est aliquam adipisci dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(299, '2022-02-19 23:42:09', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 34.00, NULL, 'paid', 'Quia natus doloribus eveniet ea. Architecto et harum corrupti et. Maiores libero delectus vel perferendis accusamus eveniet qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(300, '2021-10-31 02:58:10', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 54.00, NULL, 'paid', 'Velit ut aut magnam quis est et. Incidunt est eos aperiam sint. Similique vel consequuntur dolor nemo facere molestiae. Ex soluta et omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(301, '2021-10-21 08:52:43', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 82.00, NULL, 'paid', 'Aut sed dolorum commodi voluptas nostrum qui officia. Qui laborum aut at. Suscipit quidem eligendi et rerum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(302, '2021-09-26 02:37:12', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 87.00, NULL, 'paid', 'Et in odit dignissimos unde magni. Nemo omnis ea eos error. Sit libero consequuntur voluptatem quia facere. Optio quae suscipit dolorem ea alias officiis dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(303, '2022-01-03 10:34:12', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 73.00, NULL, 'paid', 'Ab numquam deleniti aut unde. Neque minus voluptatem est ad. Consectetur est fugiat rerum aut est impedit. Fugiat exercitationem sunt eaque minus iure earum commodi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(304, '2022-01-30 10:19:04', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 50.00, NULL, 'paid', 'Minima illum necessitatibus aperiam quibusdam recusandae architecto. Officiis et facere et vero. Dolores ea ut voluptatibus aliquam expedita consequatur praesentium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(305, '2021-11-11 11:51:41', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 82.00, NULL, 'paid', 'Eius consequatur sed repellat sit. Animi et placeat pariatur autem quibusdam. Nobis deleniti tenetur occaecati sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(306, '2021-10-12 13:51:22', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 32.00, NULL, 'paid', 'Rerum voluptates sed et neque. Dolorem est illum et. Quo laborum beatae ut veritatis esse similique.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(307, '2022-06-19 15:41:54', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 93.00, NULL, 'paid', 'Deserunt officia recusandae sint doloribus officiis. Pariatur dolorem eius nulla sit voluptate molestiae. Eius mollitia neque nobis officia. Dolore totam voluptas eum consequatur aut quidem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(308, '2022-07-14 01:28:24', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 86.00, NULL, 'paid', 'Et occaecati quibusdam eveniet quibusdam iusto. Iste quam consequatur tenetur pariatur. Asperiores culpa nulla officia aperiam maiores fuga rerum eos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(309, '2021-12-10 14:50:09', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 33.00, NULL, 'paid', 'Ex voluptatem aspernatur nam qui iusto. Est soluta quod officiis inventore. Sed dolor fugiat quisquam explicabo laboriosam nisi. Ut et quos veritatis ducimus omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(310, '2022-04-19 12:20:28', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 80.00, NULL, 'paid', 'Consequuntur tempora et et quasi autem maxime delectus. Nesciunt veniam esse ipsa aut. Nulla minus inventore quos velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(311, '2021-12-10 17:25:18', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 50.00, NULL, 'paid', 'Ad sapiente voluptatem sapiente velit aut sit. Voluptatum ea exercitationem minus adipisci incidunt. Minus assumenda voluptas voluptatem fugit qui qui ipsum. Dolore provident a iure rem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(312, '2021-12-09 08:13:27', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 44.00, NULL, 'paid', 'Consequatur qui quos ut hic voluptas maxime. Qui quis voluptas tenetur omnis laborum. Alias voluptatem neque et cupiditate id fuga. Ut iste optio cupiditate quas itaque recusandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(313, '2022-05-13 16:05:59', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 85.00, NULL, 'paid', 'Sit quae enim quisquam consequatur et. Aperiam inventore voluptatibus nihil tempora et dolorum dolores. Ut esse enim voluptatem libero. Illo laudantium et laborum nesciunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(314, '2022-08-11 21:11:12', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 93.00, NULL, 'paid', 'Rerum sapiente minus doloremque quis perspiciatis sapiente. Ex enim iure rem ex dolorum fuga iure. Expedita dolor a tempora velit sed. Ut labore est voluptas quis cum qui et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(315, '2021-08-23 13:19:16', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 50.00, NULL, 'paid', 'Aut adipisci delectus possimus id dolor accusantium. Odio voluptas consequatur nesciunt laboriosam. Quae qui ut voluptas hic vel. Dolorem nihil repudiandae adipisci ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(316, '2022-03-15 01:40:56', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 61.00, NULL, 'paid', 'Nihil sit nisi fuga quia et numquam. Facilis repellendus reiciendis id. Officia quibusdam eveniet numquam totam natus rerum. Quod quisquam illum illum impedit est id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(317, '2022-06-12 21:48:33', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 45.00, NULL, 'paid', 'Cum quaerat sint corporis sunt. At expedita ipsam dolor expedita. Ut tempora laboriosam maxime praesentium facere non atque blanditiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(318, '2021-10-19 05:17:25', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 41.00, NULL, 'paid', 'Voluptatem doloremque maiores nemo impedit eos nobis. Cum sit necessitatibus soluta quas vitae vel sequi. Maxime magni voluptatem omnis aut ipsum quo quis. Dolorum fugit est quisquam sit sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(319, '2022-01-22 12:22:45', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 43.00, NULL, 'paid', 'Id quod dolore dolores iure. Quibusdam ut sint facere exercitationem culpa molestias. Quam dolorum est aut animi dolorem ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(320, '2022-08-18 01:45:19', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 57.00, NULL, 'paid', 'Qui ad in non quibusdam ut sint qui. Ab accusamus non veritatis molestiae dolorem et. Velit sapiente quidem minus incidunt laudantium hic ut ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(321, '2022-06-06 12:37:14', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 98.00, NULL, 'paid', 'Harum et voluptatibus deserunt omnis non. Ut accusamus maiores quos officiis quasi. Et vero ea omnis labore. Rerum magni labore voluptatum est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(322, '2022-04-06 23:11:16', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 39.00, NULL, 'paid', 'Perspiciatis repellendus voluptate sunt unde. Doloremque nihil est cupiditate dolorem autem. Natus nostrum nesciunt illum cupiditate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(323, '2022-03-25 10:43:50', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 92.00, NULL, 'paid', 'Aut aut cumque ea autem. Veniam deserunt facilis cumque qui quas ea. Officiis magni non maiores distinctio excepturi quisquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(324, '2022-03-15 02:46:47', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 86.00, NULL, 'paid', 'Dolorum non est in totam aspernatur fugiat fuga omnis. Eligendi itaque atque ea. Delectus excepturi natus inventore iste. Odit est ea ipsam dolorem sit modi magnam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(325, '2022-02-16 19:49:09', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 42.00, NULL, 'paid', 'Qui veritatis omnis tempora ab voluptatem ea velit. Harum itaque adipisci perferendis. Odio harum nostrum iste est facilis magnam repudiandae. Sit dolorem aut cupiditate aspernatur qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(326, '2021-10-26 06:06:37', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 52.00, NULL, 'paid', 'Velit et qui laboriosam inventore. Error et quod est. Alias eligendi quo ut molestiae explicabo aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(327, '2022-04-27 06:06:20', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 57.00, NULL, 'paid', 'Ad est pariatur enim doloribus. Iure ullam libero tempora. Non qui nesciunt quas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(328, '2021-10-25 12:26:00', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 51.00, NULL, 'paid', 'Enim et enim nam dolorem itaque mollitia similique. Officiis quibusdam error magnam. Facere sed dolor corrupti ut et exercitationem quia iusto. Voluptatum itaque est quia est excepturi officiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(329, '2021-10-18 01:34:53', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 80.00, NULL, 'paid', 'Accusantium recusandae ut pariatur molestiae. Sapiente qui molestiae voluptas expedita quasi explicabo nihil. Deserunt possimus aspernatur eligendi labore et soluta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(330, '2021-12-11 11:09:51', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 94.00, NULL, 'paid', 'Quos inventore eaque ut perspiciatis rerum vel. Ut ut velit est culpa nostrum aliquid. Saepe impedit aliquam quo est et enim dolorum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(331, '2022-02-06 08:41:53', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 30.00, NULL, 'paid', 'Et ea ipsam sint. Molestiae saepe iste qui id perspiciatis est. Corrupti laboriosam tenetur at illum cum eligendi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(332, '2021-10-05 07:23:42', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 96.00, NULL, 'paid', 'Vero iusto natus praesentium totam ad. Qui ut omnis nihil ut explicabo incidunt perspiciatis. Voluptate aut aliquid qui suscipit a. Officiis corrupti et tenetur modi porro. Quos rerum et facilis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(333, '2021-09-18 07:10:51', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 100.00, NULL, 'paid', 'Aut ullam ipsa et odio dolores. Vitae ex aliquid quia beatae voluptatibus. Minus ad sed veniam veritatis voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(334, '2022-07-22 19:00:46', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 93.00, NULL, 'paid', 'Cum expedita et ducimus et voluptate animi non. Dicta tenetur debitis sed ut. Distinctio soluta velit perspiciatis tenetur cumque ut. Sed amet libero aut deleniti reiciendis est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(335, '2022-02-28 13:47:35', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 90.00, NULL, 'paid', 'Laudantium inventore possimus minima non est iste non. Quia et et molestias quia quibusdam. Vero ut nisi unde sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(336, '2022-03-30 01:09:44', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 85.00, NULL, 'paid', 'Aspernatur repudiandae quod voluptas. Debitis quisquam quia dignissimos eos magni. Aspernatur doloribus quo dignissimos necessitatibus rem aut cupiditate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(337, '2022-06-10 04:35:55', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 93.00, NULL, 'paid', 'Voluptas molestiae ut ducimus porro. Maxime totam odio tempora maxime. Repellat ut ad illum quis aliquam adipisci cupiditate. Error qui quia et assumenda nemo saepe est quo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(338, '2022-06-25 14:44:46', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 92.00, NULL, 'paid', 'Iure vel rerum qui cumque. Velit at ad repudiandae voluptas magni corporis quia. Quia accusantium dolorem temporibus ea omnis est rerum. Ab tenetur consequatur error.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(339, '2022-08-09 10:57:14', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 31.00, NULL, 'paid', 'Ex qui est enim molestiae. Laudantium sint consequatur vel aspernatur pariatur sed. Eum ad voluptatem sequi tempora incidunt architecto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(340, '2022-05-23 04:20:44', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 31.00, NULL, 'paid', 'Aut dignissimos omnis sunt id sapiente eaque magnam. Dignissimos cupiditate consequatur sit. Veritatis cumque laudantium rerum error consequatur amet ea sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(341, '2021-12-01 20:27:46', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 46.00, NULL, 'paid', 'Earum eos soluta temporibus voluptatem quidem ea. Neque consequatur ut consequatur. Qui enim sed earum autem quis et ipsum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(342, '2022-06-16 14:07:02', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 55.00, NULL, 'paid', 'Voluptas autem consectetur alias. Vel possimus ut nobis tempore beatae. Minima provident officia error atque omnis. Eius voluptatem aperiam perspiciatis dolorem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(343, '2022-02-02 08:06:39', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 52.00, NULL, 'paid', 'Eaque voluptas dolorem voluptas quasi. Sit eius placeat vitae quas nulla eos quis. Praesentium omnis vel est laudantium deserunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(344, '2022-04-20 15:23:29', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 56.00, NULL, 'paid', 'Numquam dolorem quis aut. Et qui consequatur voluptates consequuntur ullam inventore natus. Atque qui quae hic quia voluptate cum rem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(345, '2022-03-28 19:04:59', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 59.00, NULL, 'paid', 'Est eligendi eum numquam accusantium nulla. Est eveniet accusamus temporibus neque ut. Non ab nam sunt doloremque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(346, '2021-11-12 10:41:34', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 72.00, NULL, 'paid', 'Repellat cum labore tenetur. Sint ullam ut libero fugit blanditiis culpa voluptate. Aliquam ut enim numquam animi est culpa. Repellendus quisquam expedita ut perspiciatis tempore aut necessitatibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(347, '2022-02-03 16:41:07', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 31.00, NULL, 'paid', 'Voluptatem labore dolores asperiores. Iure doloribus quas atque sit omnis rerum illo. Aspernatur minima harum et qui cumque et ut. Quod voluptatem ab sit odit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(348, '2022-07-10 02:36:15', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 64.00, NULL, 'paid', 'Animi iure et dolorum vitae natus architecto facere. Amet esse et dicta unde eum dolores. Ut id soluta molestiae ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(349, '2022-06-25 18:20:01', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 66.00, NULL, 'paid', 'Iste iusto magni voluptates doloribus et. Sunt repudiandae et consequatur expedita eius rerum. Sit quis ab voluptas fugiat. Pariatur minima fugiat sunt quasi numquam dolores similique.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(350, '2022-02-20 15:12:59', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 91.00, NULL, 'paid', 'Quibusdam voluptas ea amet sequi velit iure ut. Rerum exercitationem sit aut ut nulla commodi incidunt. Occaecati nihil blanditiis architecto veniam cumque et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(351, '2021-11-04 15:21:06', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 63.00, NULL, 'paid', 'Eligendi architecto quam ipsam. Omnis in nobis odio qui aut illo error. Deleniti nihil at corrupti explicabo inventore sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(352, '2021-10-23 18:43:29', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 92.00, NULL, 'paid', 'Voluptate quod qui nemo omnis molestiae fugit. Quia exercitationem ad blanditiis id. Reiciendis minima eos ea ad eos voluptatem sit earum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(353, '2022-07-11 17:33:30', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 66.00, NULL, 'paid', 'Placeat dolorum odit dolor quo optio ullam. Autem saepe dolorem rem alias non minus enim. Temporibus debitis nesciunt ratione aut quia. Reprehenderit alias corrupti similique iure et ducimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(354, '2021-10-16 19:01:49', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 68.00, NULL, 'paid', 'Aliquam consequatur totam ullam iure voluptas ut neque. Repudiandae et nihil expedita voluptatem reprehenderit voluptatem. Beatae nostrum quo voluptas rerum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(355, '2021-08-20 18:29:03', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 45.00, NULL, 'paid', 'Facilis odio in sit vero et. Quidem nemo vero ratione ut. Non et culpa quaerat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(356, '2022-05-31 18:30:57', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 55.00, NULL, 'paid', 'Est cupiditate dignissimos harum asperiores. Alias sint quia est omnis minima enim. Inventore rerum et aut id assumenda est nisi. Est commodi tempora ut dolor deleniti.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(357, '2022-02-14 07:18:40', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 34.00, NULL, 'paid', 'Unde atque accusantium inventore saepe eos accusamus ut. Ea quisquam voluptatem suscipit facere maxime iste. Est sed nemo quasi voluptatem. Nesciunt voluptas adipisci aut sit sed qui neque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(358, '2022-04-14 17:06:00', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 55.00, NULL, 'paid', 'At ut nam laudantium et odio illo et. Minus quia eligendi minima non. Quibusdam quos quis omnis repudiandae. Ullam itaque provident architecto eos earum. Eos iusto modi nesciunt nemo dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(359, '2022-07-03 15:21:46', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 60.00, NULL, 'paid', 'Animi molestiae ad optio hic quis et. Possimus facere optio voluptatum et debitis. Occaecati ut dolor nobis debitis harum similique libero magnam. Alias libero id commodi praesentium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(360, '2022-03-28 23:31:26', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 40.00, NULL, 'paid', 'Aut impedit illo et itaque in suscipit voluptas. Illum qui omnis veniam tenetur id aliquid atque. Totam explicabo corrupti iure et in adipisci et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(361, '2022-02-10 14:57:52', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 82.00, NULL, 'paid', 'Nam quisquam rerum non. Aliquid officiis cum nostrum debitis alias est sed enim. Non cum blanditiis est. Possimus in maxime sunt est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(362, '2022-06-13 04:53:23', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 47.00, NULL, 'paid', 'Occaecati ut vero officia ipsum unde neque quia. Consequatur qui voluptate eaque placeat enim. Molestias nobis ut id occaecati optio voluptatem. Debitis voluptates ipsa et eum excepturi omnis a.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(363, '2022-04-28 20:44:12', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 56.00, NULL, 'paid', 'Placeat quod quisquam nobis sed ut. Debitis ullam quia quae unde cumque id minima quia. Rerum ut cum odit labore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(364, '2021-11-17 05:21:48', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 100.00, NULL, 'paid', 'Non modi qui natus consequuntur nihil. Est nostrum dolor nulla voluptas accusantium illo libero. Nihil tempore cumque nesciunt quo et sed voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(365, '2022-08-03 02:08:31', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 32.00, NULL, 'paid', 'Nisi nostrum quo officiis ut similique occaecati nesciunt. Expedita asperiores esse illo quaerat dolores voluptates optio distinctio. Velit eum recusandae velit atque ab id sunt dicta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(366, '2022-05-08 04:31:54', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 57.00, NULL, 'paid', 'Qui sapiente deserunt consequatur magnam quia officia. Est itaque aut doloribus eum id accusantium cupiditate aliquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(367, '2022-05-20 05:00:04', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 40.00, NULL, 'paid', 'Voluptatem quos aut amet veritatis voluptates nemo. Et nulla quo provident alias necessitatibus aspernatur iusto. Dolor voluptas id est aut et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(368, '2022-06-29 13:31:02', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 45.00, NULL, 'paid', 'Eum ut necessitatibus sunt. Ipsum esse doloribus est qui laboriosam fugit. Porro nobis voluptatum minima aut. Consequatur repudiandae accusantium qui tempora et eum labore ratione.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(369, '2021-09-10 08:18:55', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 89.00, NULL, 'paid', 'Quos facilis id ipsum nobis quia sint. Et molestiae beatae est similique perspiciatis. Fugit beatae fugit officiis. Aut ipsum magnam odit distinctio. Deserunt molestiae sed molestias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(370, '2022-01-22 14:50:57', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 52.00, NULL, 'paid', 'Cupiditate quasi qui qui harum vitae. Omnis non sapiente sit consequatur. Eveniet quaerat sit maiores id fugiat. Sapiente sed minima natus eos sed aliquam aliquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(371, '2021-09-16 07:25:15', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 90.00, NULL, 'paid', 'Facere blanditiis fugit dolorum officiis voluptas necessitatibus sint. Neque suscipit officiis eum quia explicabo. Consequuntur ut velit in labore. Eum ut laboriosam quos sit sunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(372, '2021-09-10 04:58:25', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 50.00, NULL, 'paid', 'Odio sed dignissimos alias rem dolorem ea minus ducimus. Ex magnam assumenda voluptatibus ex nihil odit inventore aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(373, '2022-03-13 09:00:00', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 98.00, NULL, 'paid', 'Veniam qui sit consequuntur quidem dolor. Et et corrupti corrupti nulla nesciunt odit temporibus odio. Ratione quae quaerat expedita. Facilis quasi et ea et est sint magnam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(374, '2022-01-01 02:20:58', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 46.00, NULL, 'paid', 'Consectetur possimus accusantium qui. Repellendus quas ab nulla id veritatis qui adipisci. Voluptas eligendi eos et nihil. Quos et at commodi et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(375, '2022-05-10 12:00:52', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 68.00, NULL, 'paid', 'Aspernatur numquam doloribus reprehenderit blanditiis quis asperiores. Ea rerum sit iste est vel impedit atque perspiciatis. Nesciunt et natus recusandae facere soluta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(376, '2022-07-03 23:51:38', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 84.00, NULL, 'paid', 'Aspernatur autem itaque est. Aut totam corporis consectetur inventore ipsum. Aut libero ut fugit eos fugit. Est et maxime quo et velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(377, '2021-12-22 17:32:28', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 84.00, NULL, 'paid', 'Molestiae quibusdam necessitatibus nam rem culpa et quia. Vel a harum dolores placeat sed totam. Labore quo error aut. Quo perferendis voluptatem labore nemo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(378, '2022-01-27 15:49:09', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 74.00, NULL, 'paid', 'Esse ut sed amet aliquid quae corporis. Hic similique sed ut et sequi. Sit libero dolore et qui placeat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(379, '2021-11-06 10:36:30', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 51.00, NULL, 'paid', 'Quia porro animi aperiam in laboriosam deserunt id. Occaecati itaque dolor ducimus corrupti omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(380, '2022-08-17 20:39:11', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 44.00, NULL, 'paid', 'Velit natus non laboriosam quia perspiciatis. Facere est illo eos nostrum perferendis dolores. Quae id aspernatur sed possimus saepe aperiam odio. Quia et architecto esse possimus id alias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(381, '2021-09-07 12:05:11', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 62.00, NULL, 'paid', 'Temporibus eius doloribus aut ducimus eos. Velit est sit nam omnis aut eius quae. Deleniti perferendis eum ut ipsa ut autem. Quia numquam et quia nihil sequi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(382, '2021-08-27 03:25:12', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 45.00, NULL, 'paid', 'Eos accusantium laboriosam sint consequatur est. Aut voluptas aperiam aliquam et et ut. Deleniti quas quae et totam illum enim totam. Labore dolore in illum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(383, '2022-04-30 17:05:55', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 30.00, NULL, 'paid', 'Numquam non facere est excepturi nostrum. Et deleniti hic tenetur unde. Voluptate nulla eius commodi quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(384, '2021-09-22 00:04:39', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 43.00, NULL, 'paid', 'Iusto nulla sunt et aut sunt quae impedit. Aliquid consectetur similique nesciunt quis ad. Nobis libero ut sunt. Cupiditate quia quo omnis debitis temporibus ipsam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(385, '2022-02-07 08:11:36', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 37.00, NULL, 'paid', 'Magnam est sequi saepe rerum. Labore sequi nihil beatae aut a autem. Debitis et sit ipsum. Aspernatur voluptatum ullam laudantium vitae neque omnis sequi rerum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(386, '2022-02-24 01:24:23', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 80.00, NULL, 'paid', 'Architecto et quis in et. Aut quisquam eius voluptatem voluptates magni. Ea vitae enim est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(387, '2021-11-26 16:42:02', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 96.00, NULL, 'paid', 'Asperiores omnis qui consequatur fugiat fugiat assumenda. Non nihil adipisci quo quas repellendus autem neque deserunt. Dolorum nihil molestiae autem molestiae ipsam quas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(388, '2021-10-31 23:56:31', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 32.00, NULL, 'paid', 'Repellendus tempora et aut quibusdam et officia recusandae. Incidunt vel cumque vel aspernatur quidem minima porro. Explicabo vel vero cum dolorum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(389, '2022-07-09 13:52:08', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 63.00, NULL, 'paid', 'Neque et sapiente iste et. Qui dolorem necessitatibus ab voluptates necessitatibus sed. Velit aut alias culpa voluptatem aut sed. Eum nulla aut repellat at. Sint assumenda consequatur qui dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(390, '2022-08-09 21:38:25', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 51.00, NULL, 'paid', 'Est corporis ad dolor unde quaerat quam eos. Aut eum sapiente debitis qui placeat. Dolor omnis veniam quasi laborum non aliquam modi qui. Recusandae nostrum qui maiores enim ut cupiditate ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(391, '2022-05-24 01:05:50', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 68.00, NULL, 'paid', 'Maxime corrupti consequatur et quo. Sapiente blanditiis odit adipisci doloremque temporibus a et. Recusandae ducimus rerum aut ut quas placeat atque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(392, '2021-12-16 00:00:41', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 84.00, NULL, 'paid', 'Omnis beatae voluptatem amet voluptas hic corporis eveniet. Non beatae nihil earum repellat nihil voluptatem occaecati dolores. Similique ut fugiat ea at alias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(393, '2021-09-16 00:54:53', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 59.00, NULL, 'paid', 'Et officiis voluptates est. Porro enim voluptatem modi rerum. Non quam eaque fugiat ea. Magni sint aut odio id totam ipsam. Consequatur animi repellendus quibusdam quis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(394, '2022-03-11 09:00:32', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 84.00, NULL, 'paid', 'Delectus et aut in rem. Voluptatem dicta eum quia tempore et eos beatae. Adipisci ratione enim qui ea aliquid. Amet quia sit aut iste. Voluptas unde quo rerum et voluptates mollitia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(395, '2022-06-20 09:02:28', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 66.00, NULL, 'paid', 'Consequatur vero maxime corporis sit et provident iste. Totam molestiae illum velit repudiandae quo aliquid. Molestiae consequatur esse omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(396, '2021-12-13 04:25:20', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 94.00, NULL, 'paid', 'Repudiandae consequatur beatae quaerat sint autem minima. Quaerat ea perferendis quam dolorem. Delectus et itaque neque aut. Reprehenderit ut voluptatem beatae voluptatem debitis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(397, '2022-02-23 23:58:32', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 54.00, NULL, 'paid', 'Sit esse saepe deleniti occaecati voluptatem commodi. Necessitatibus et consectetur beatae non provident aliquid tenetur et. Vel dolorem dolorem enim magnam aperiam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(398, '2021-10-09 03:40:19', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 87.00, NULL, 'paid', 'Nisi quas rerum rerum. Molestiae possimus in dolores consequatur illum quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(399, '2022-05-02 12:46:11', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 70.00, NULL, 'paid', 'Reprehenderit est aliquid distinctio enim dolores. Hic sunt minima voluptatum nostrum rerum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(400, '2021-12-13 19:37:02', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 31.00, NULL, 'paid', 'Veniam perspiciatis quis maiores alias maxime molestiae vero. Sed et ut occaecati quisquam minus id et. Eaque et et pariatur autem earum velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(401, '2021-09-24 23:27:06', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 51.00, NULL, 'paid', 'Quis illo nam nihil dolorem placeat voluptatem eos. Ullam enim quasi excepturi vero iste occaecati. Quas accusantium dolorum omnis voluptas ipsa consequuntur est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(402, '2022-07-04 11:29:03', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 74.00, NULL, 'paid', 'Eveniet voluptates eveniet eos voluptas magni quia. Ut doloremque assumenda labore voluptatem illum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(403, '2022-08-04 17:23:44', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 76.00, NULL, 'paid', 'Distinctio accusamus magni ut iste distinctio vel aliquid. Accusantium tempora pariatur praesentium debitis similique. Iure et consequatur suscipit quisquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(404, '2022-05-10 08:16:36', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 76.00, NULL, 'paid', 'Voluptatem id inventore repellendus delectus. Eligendi architecto inventore velit excepturi. Consequatur nesciunt pariatur quasi quam natus dicta facere ut. Magnam dolores et voluptate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(405, '2022-01-13 11:19:04', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 42.00, NULL, 'paid', 'Ex tempora dolore vel hic tenetur. Accusamus assumenda quis architecto delectus et consequuntur. Est enim sunt atque fuga ipsam pariatur dolore ex. Harum aperiam qui delectus possimus ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(406, '2021-11-27 17:45:17', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 80.00, NULL, 'paid', 'Vitae autem culpa mollitia quidem. Et doloremque sit quas dolor. Reiciendis et nam ut reiciendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(407, '2022-01-10 08:29:55', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 92.00, NULL, 'paid', 'Est provident dolorum temporibus repellendus eius. Consequatur labore sint aut atque quaerat beatae. Dolore sed nihil voluptas harum dolores possimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(408, '2021-10-22 05:28:12', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 46.00, NULL, 'paid', 'Rem dolor error praesentium rerum dolore labore delectus. Aut maiores porro voluptates cumque suscipit eos. Reiciendis est qui cum maiores. Dolore ratione aliquid sapiente voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(409, '2022-02-05 02:52:57', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 71.00, NULL, 'paid', 'Voluptate quasi id laboriosam odio nihil. Tempore voluptatem iure quia est saepe harum. Sed id eos rerum provident sit quos facere aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(410, '2021-09-25 13:50:08', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 61.00, NULL, 'paid', 'Ipsum voluptatem aperiam unde ad unde dicta a. Laborum dolore quidem voluptatem aut excepturi. Reprehenderit eligendi suscipit perferendis dolore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(411, '2021-10-08 09:25:19', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 79.00, NULL, 'paid', 'Dignissimos asperiores libero ab est qui enim dolore. Temporibus rerum suscipit incidunt repellat. Molestias asperiores reprehenderit ut eveniet quis aliquid amet.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(412, '2021-10-21 11:00:45', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 49.00, NULL, 'paid', 'Est accusantium repudiandae voluptatem sed dignissimos. Assumenda tempora aliquid aut quo ad quaerat molestiae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(413, '2022-06-10 10:05:30', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 70.00, NULL, 'paid', 'Et laudantium voluptas omnis et. Natus odio veritatis consequuntur vel repudiandae voluptatem et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(414, '2021-12-25 03:38:27', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 40.00, NULL, 'paid', 'Qui consequatur rerum ratione possimus consequatur in quisquam. Voluptas et occaecati ipsum quia nemo quidem. Hic dignissimos exercitationem voluptatem sint.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(415, '2022-08-09 01:24:58', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 36.00, NULL, 'paid', 'Perferendis quo quasi rerum dignissimos non laboriosam. Quae excepturi numquam eos sunt quos nemo. Qui facere aperiam maiores earum ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0);
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`, `employee_id`, `deleted_at`, `md`, `coupon`, `discount`, `kds_finished`) VALUES
(416, '2021-09-29 00:45:03', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 36.00, NULL, 'paid', 'Et sint veniam quis unde sed eum. Vero ut esse eveniet unde itaque incidunt aut. Quasi asperiores et dolorem tenetur quaerat ratione quod iusto. Soluta porro eius odit aut eos rerum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(417, '2022-01-29 01:40:40', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 81.00, NULL, 'paid', 'Aperiam blanditiis id ea cumque tempora. Qui aliquam voluptatibus sed quibusdam. Odit non dolor ratione ex.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(418, '2021-09-17 05:07:57', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 45.00, NULL, 'paid', 'Modi modi eaque sed eum quod occaecati. In et reiciendis aliquid blanditiis cum corrupti rem. Vel facilis et et ut quisquam. Cum dolores illo dicta molestias voluptas ducimus ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(419, '2022-03-13 17:15:12', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 71.00, NULL, 'paid', 'Non et eaque ducimus praesentium saepe aliquam ducimus qui. Sed nulla voluptatum perspiciatis rerum. Eos labore qui nostrum est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(420, '2021-09-01 11:40:58', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 54.00, NULL, 'paid', 'Totam qui quas nihil eos tenetur et. Aliquid provident minima aspernatur ipsa. Officiis dolore tempora quasi deserunt. Ex rerum suscipit beatae autem delectus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(421, '2022-03-24 05:33:37', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 33.00, NULL, 'paid', 'Amet numquam a veniam. Quidem qui ut voluptatum optio maiores. Excepturi autem aut possimus. Exercitationem adipisci nulla velit odit et repellat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(422, '2022-06-19 05:20:46', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 69.00, NULL, 'paid', 'Atque esse unde neque enim. Ut at rerum quia velit aliquam qui. Ut debitis sed excepturi est earum et cum eos. Velit et consequatur repellat non. Dolores et architecto eius molestiae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(423, '2022-01-03 15:13:10', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 55.00, NULL, 'paid', 'Ullam voluptas deserunt expedita vel culpa. Ipsa fuga sed ea dolor debitis ipsam aliquid.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(424, '2021-09-28 09:38:22', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 47.00, NULL, 'paid', 'Occaecati consectetur quo rerum nesciunt nulla omnis ratione qui. Adipisci modi perspiciatis libero est dignissimos. Non deserunt ex rem aut quibusdam quasi illum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(425, '2021-09-15 21:01:11', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 49.00, NULL, 'paid', 'Possimus corporis odit ratione qui molestiae officia et. Et non autem omnis aut atque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(426, '2022-07-02 18:01:09', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 50.00, NULL, 'paid', 'Molestias error ut quo rerum nostrum et animi. Deleniti ullam deleniti eum numquam ipsa. Magni neque aut expedita temporibus. Error facilis voluptatum aut enim omnis enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(427, '2021-11-05 23:32:13', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 40.00, NULL, 'paid', 'Praesentium quas voluptate accusantium quos. Ut alias culpa debitis beatae qui. Qui quis enim repellat neque sit eos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(428, '2021-09-10 17:18:23', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 51.00, NULL, 'paid', 'Facere similique placeat ex aut deleniti. Ratione quasi et sunt. Enim voluptates et blanditiis harum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(429, '2022-01-18 07:43:58', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 78.00, NULL, 'paid', 'Eum quis molestias ipsa eum. Eum sunt blanditiis perspiciatis est ut voluptatem. Nesciunt dolorem laborum autem labore velit eos nihil. Soluta ratione magni architecto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(430, '2022-06-09 01:53:30', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 67.00, NULL, 'paid', 'Delectus explicabo nihil dolorem quisquam placeat atque id. Possimus autem iusto et. Architecto velit quasi natus sunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(431, '2022-05-02 11:17:03', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 39.00, NULL, 'paid', 'Sunt tenetur et fugit totam perspiciatis quam aliquid. Voluptatem dolorem quibusdam accusantium temporibus accusantium. Commodi expedita aliquam ipsa ipsam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(432, '2021-09-26 23:02:43', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 57.00, NULL, 'paid', 'Quod saepe dolores vel non. Officiis eos aliquid eos distinctio consequatur in. Veritatis odio explicabo quisquam ratione commodi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(433, '2021-09-19 04:55:45', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 87.00, NULL, 'paid', 'Laborum asperiores tempore sequi repellat et laborum. Alias voluptatem voluptate provident. Rerum maiores voluptas veniam ab qui hic. Repellendus delectus molestiae vel.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(434, '2022-03-14 20:48:45', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 33.00, NULL, 'paid', 'Iste cumque ducimus laudantium quia est neque. Aut asperiores ea voluptatibus at odio quis. A et nam perferendis commodi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(435, '2022-04-12 06:42:09', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 70.00, NULL, 'paid', 'Voluptatibus deleniti aut fugiat adipisci. Aliquid sit ut sit rerum. Minus placeat eaque voluptas. Accusantium facilis ex nulla molestiae aliquid doloremque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(436, '2022-05-20 13:39:19', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 52.00, NULL, 'paid', 'Dolore consequatur facilis laboriosam ex. Sint voluptatibus hic doloribus sunt. Dolor fugit est expedita fugiat at totam eos. Vero voluptas distinctio et assumenda.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(437, '2021-09-26 13:44:52', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 57.00, NULL, 'paid', 'Omnis non sit soluta cum aut delectus. Accusamus nisi non nam fugit quo quas. Ipsum eos ut cumque. Porro qui repudiandae saepe aliquam autem sunt qui quae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(438, '2021-09-22 18:46:10', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 74.00, NULL, 'paid', 'Non reprehenderit illo quo enim. Alias eum magni ut omnis non quia voluptatem et. Aut ducimus eos blanditiis et amet ut aperiam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(439, '2022-07-16 09:41:01', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 78.00, NULL, 'paid', 'Voluptatibus fuga in sed minus dignissimos odio. Sequi molestiae nihil dignissimos. Blanditiis inventore placeat consectetur sapiente aut minima. Cum non est molestias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(440, '2021-08-19 22:33:31', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 65.00, NULL, 'paid', 'Optio aliquam vel voluptatem et quia dolorum. Molestiae voluptatem impedit possimus dolorum odit. Perferendis non rerum autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(441, '2021-09-17 23:28:23', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 54.00, NULL, 'paid', 'Accusantium et nemo dolorem ipsa et rerum voluptas. In ut voluptate ad eligendi magni eaque expedita. Sit et quae cupiditate quae. Ratione ut nostrum consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(442, '2022-08-14 04:24:07', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 57.00, NULL, 'paid', 'Autem recusandae maiores veniam quia et. Sit laborum vel qui velit aspernatur fugit dignissimos. Vitae dolor tenetur ut impedit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(443, '2021-09-30 03:44:04', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 97.00, NULL, 'paid', 'Et commodi ea sed exercitationem similique. Voluptates consequuntur voluptate doloribus. Voluptatem corrupti id qui quas fugiat exercitationem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(444, '2021-08-25 08:57:37', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 81.00, NULL, 'paid', 'Qui repellat id vero minus. Quia doloribus laboriosam enim consequuntur. Porro culpa veritatis quis vero eum possimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(445, '2022-08-11 10:55:34', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 95.00, NULL, 'paid', 'Est dignissimos distinctio et possimus iusto. Ipsa quasi qui qui repellat tenetur est consequatur. Et soluta amet expedita facere autem nulla officia velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(446, '2021-09-06 01:48:06', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 40.00, NULL, 'paid', 'Ab inventore est illo facere sunt et aut. Nesciunt ea quasi aut aspernatur autem sunt. Quidem quae pariatur rem eligendi eveniet.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(447, '2022-01-17 03:10:32', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 83.00, NULL, 'paid', 'Saepe suscipit esse voluptatibus natus quisquam at non. Occaecati sequi ullam corporis ab laudantium natus. Inventore nihil sit corrupti et et unde.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(448, '2021-10-04 14:03:54', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 92.00, NULL, 'paid', 'Magnam nisi vero et sint. Consequuntur odit ut quam aut et eius. Aut est minima consequatur omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(449, '2022-03-23 12:55:27', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 56.00, NULL, 'paid', 'Aliquid dolores architecto illo quia sapiente ullam in. Nihil aut id corrupti omnis harum. Quam nihil impedit esse quo et facere beatae. Est dolorem fugit id enim et est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(450, '2021-11-22 20:12:34', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 36.00, NULL, 'paid', 'Perferendis ut harum eius fugit. Nulla eum cum beatae eum tenetur veniam. Nam nobis rem consequatur accusamus tempora labore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(451, '2022-05-01 10:54:20', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 68.00, NULL, 'paid', 'Rerum qui iure eveniet cupiditate molestias eos aut. Officiis cumque et nihil omnis eius. Vel ex molestiae qui itaque non porro asperiores. Cum necessitatibus doloremque est repellat nobis id nisi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(452, '2022-07-28 18:53:21', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 51.00, NULL, 'paid', 'Ducimus at dolor animi qui. Dolores aliquid in aut repellendus tenetur id. Enim et optio omnis velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(453, '2021-11-08 09:38:55', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 66.00, NULL, 'paid', 'Voluptatibus beatae perspiciatis et et quod est facilis. Distinctio quia fuga totam delectus hic facilis libero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(454, '2022-01-18 16:54:16', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 44.00, NULL, 'paid', 'Reiciendis ad accusamus laborum. Voluptatem assumenda quam dicta explicabo. Voluptatem placeat soluta qui temporibus. Voluptas quae consequatur quo architecto nemo ipsum et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(455, '2022-03-18 06:53:01', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 58.00, NULL, 'paid', 'Rem aut non ea et. Repellat voluptatem officia voluptatem consectetur molestiae numquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(456, '2022-03-31 03:46:47', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 53.00, NULL, 'paid', 'Dignissimos porro sit dolor quos error. Earum qui ipsum accusantium cumque. Quo dolorem est impedit illum accusamus. Corporis ullam inventore corrupti.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(457, '2021-11-08 07:54:09', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 87.00, NULL, 'paid', 'Atque maxime dolor voluptates aliquid qui culpa velit. Libero expedita veritatis facere sint. Voluptatem ut et enim sit eos. Laudantium eum recusandae nam a corporis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(458, '2022-04-12 01:47:25', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 98.00, NULL, 'paid', 'Voluptatibus aliquam inventore magni molestias sit sint aut. Inventore sequi sit cupiditate ea molestiae beatae. Assumenda repellat qui ut error ex. Rem ea eum voluptatem quasi doloribus sit ab.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(459, '2021-09-24 19:02:14', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 51.00, NULL, 'paid', 'Possimus voluptatum magnam inventore laudantium qui. Occaecati eos quia rerum amet corrupti. Eos laudantium doloribus consectetur animi saepe.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(460, '2022-04-01 09:02:28', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 76.00, NULL, 'paid', 'Expedita itaque neque corporis a quo sint aliquid molestias. Error sunt quas et sed rerum minima itaque. Sequi occaecati in aperiam et. Omnis debitis et minima corporis voluptatum ut est quis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(461, '2021-08-24 08:02:20', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 36.00, NULL, 'paid', 'Rerum mollitia ullam ea. Ipsam reprehenderit quisquam impedit laudantium qui. Ullam quia repudiandae odit omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(462, '2022-05-05 13:28:49', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 92.00, NULL, 'paid', 'Amet ut illo quis quaerat similique voluptatem voluptatum. Tenetur tenetur et enim rerum eum sed et. Consectetur sunt quis quaerat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(463, '2022-01-31 20:43:36', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 53.00, NULL, 'paid', 'Est minus ipsum unde magnam vel. Cumque est dicta in vel voluptas vel adipisci dolorem. Dicta dolores iste delectus culpa aliquam aspernatur ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(464, '2021-10-11 18:20:17', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 56.00, NULL, 'paid', 'Reiciendis animi voluptatum aliquid error ab sit. Sit id est similique est repellendus quo nisi suscipit. Consectetur tempora magni aut fuga possimus cum possimus natus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(465, '2022-01-06 05:56:01', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 46.00, NULL, 'paid', 'Nemo in non qui voluptate et. Quasi nobis ipsa non eum. Beatae quisquam ut eos incidunt quia. Tempore perferendis qui quam fuga. Saepe aut voluptatem facilis pariatur. Cum praesentium magnam aut qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(466, '2022-03-05 18:00:29', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 64.00, NULL, 'paid', 'Eligendi eos et soluta. Harum voluptate dignissimos voluptas fuga repudiandae ut. Aut expedita dicta modi deserunt vel est illo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(467, '2021-09-08 07:09:31', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 30.00, NULL, 'paid', 'Rem hic magni aut ea perferendis. Itaque distinctio ipsam qui et asperiores molestiae. Aut porro voluptatem voluptatibus eligendi ut doloribus nihil laudantium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(468, '2021-12-22 09:14:57', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 36.00, NULL, 'paid', 'Est non quos quaerat aut et aut et. Porro atque quis omnis ipsum id aut repellat qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(469, '2022-08-16 08:08:58', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 63.00, NULL, 'paid', 'Qui fugiat consequuntur modi qui rerum. Laboriosam et ut voluptas molestiae. Quisquam aut ex aliquid minima distinctio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(470, '2021-09-12 16:43:05', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 67.00, NULL, 'paid', 'Quas excepturi eos rerum blanditiis odio. Veritatis cumque vel dolorem quisquam quia numquam dolores sed. Dolorem neque aperiam molestiae. Quaerat illo iste ut eos explicabo praesentium ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(471, '2022-07-04 23:20:46', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 80.00, NULL, 'paid', 'Quos eum nihil nisi iure quia reprehenderit. Dolore et consectetur consectetur minima veritatis dolor. Autem odio nisi sed alias et sunt autem in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(472, '2021-11-29 18:52:38', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 77.00, NULL, 'paid', 'Eum totam maiores omnis dolore quae exercitationem. Et eius fuga officia facilis. Autem id aut est velit rerum repellendus quia omnis. Aut voluptas nisi minima hic aut sit ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(473, '2021-12-15 12:12:44', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 84.00, NULL, 'paid', 'Aut autem quaerat doloribus adipisci fuga. Qui laudantium dicta ea velit. Exercitationem quia suscipit cum autem eveniet ipsam enim. Est veniam iste quia laboriosam omnis similique saepe.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(474, '2021-09-21 16:10:43', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 87.00, NULL, 'paid', 'Velit at corrupti est voluptas voluptas possimus excepturi. In necessitatibus temporibus quo odit officia. Velit sed aperiam dolorem omnis. Dolorum eius vitae consequatur sed delectus ipsum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(475, '2021-10-04 08:11:19', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 81.00, NULL, 'paid', 'Reiciendis aliquid rerum ut. Voluptate deleniti voluptatibus similique et ratione.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(476, '2021-08-19 08:31:34', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 65.00, NULL, 'paid', 'Fugiat perspiciatis vero laboriosam voluptates. Quas ut exercitationem cupiditate soluta sit. Minus sed tenetur ut temporibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(477, '2021-10-08 03:11:37', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 92.00, NULL, 'paid', 'Hic sunt sit distinctio libero molestias. Ipsum sit dolores et reprehenderit. Repudiandae quis maiores quia omnis. Eius nemo incidunt voluptatem sint nam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(478, '2021-10-17 14:21:04', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 91.00, NULL, 'paid', 'Sit perferendis amet possimus quia quidem. Consequatur saepe rerum excepturi id est nihil. Sequi at cupiditate omnis deleniti omnis reprehenderit optio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(479, '2022-03-23 21:08:16', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 77.00, NULL, 'paid', 'Repellendus impedit et molestiae consequuntur. Beatae veritatis dignissimos facilis modi itaque. Ut omnis voluptates ut quidem fuga.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(480, '2021-10-31 13:33:22', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 40.00, NULL, 'paid', 'Optio minus eligendi quisquam asperiores numquam eum. Eos corporis esse voluptate velit. Impedit rerum consequatur optio illo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(481, '2022-04-19 05:44:58', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 63.00, NULL, 'paid', 'Modi eos omnis vel veritatis aut. Ipsa magnam praesentium aut. Alias odit et at.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(482, '2022-02-17 10:08:53', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 43.00, NULL, 'paid', 'Enim perferendis sed eveniet. Nihil quis nisi ipsum veniam. Incidunt ut mollitia id cumque quia veniam quidem esse. Adipisci voluptatem ut exercitationem ut quidem veritatis illo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(483, '2022-06-11 04:53:07', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 49.00, NULL, 'paid', 'Aut tempore facilis rerum occaecati et aut molestiae optio. Aut laudantium dolores aut. Cupiditate occaecati et doloremque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(484, '2021-09-01 08:49:21', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 57.00, NULL, 'paid', 'Est aperiam animi commodi repellendus officiis qui. Rerum et quia recusandae porro dolores saepe. Dolores numquam hic aperiam dolore aut ipsam. Iure est voluptatibus voluptate reprehenderit ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(485, '2021-11-29 05:10:47', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 77.00, NULL, 'paid', 'Est qui repellat aut est placeat aut deserunt. Quis deserunt consequatur occaecati repellendus eveniet officiis. Omnis consectetur et odio nisi est. Rem dolore vitae dignissimos ea dolores et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(486, '2022-01-25 11:29:37', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 34.00, NULL, 'paid', 'Ipsum ad natus cumque aut error ut nihil. Officia maxime eos eaque illo est occaecati. Hic et et sunt ab repudiandae repudiandae. Debitis nisi ut asperiores illo sed id eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(487, '2021-09-21 06:09:51', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 75.00, NULL, 'paid', 'Dolorum repellat autem consequatur. Ipsum consectetur placeat sunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(488, '2021-11-13 22:14:13', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 90.00, NULL, 'paid', 'Fuga rerum ut et aut. Assumenda excepturi explicabo consectetur aut odio earum. Perferendis necessitatibus exercitationem illum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(489, '2022-01-20 11:22:43', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 36.00, NULL, 'paid', 'Modi exercitationem sint et nemo velit quis adipisci. Quisquam omnis accusantium earum. Sit quae eum nam consequatur. Perspiciatis in optio accusantium commodi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(490, '2022-03-05 21:58:41', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 91.00, NULL, 'paid', 'Tempora veniam rerum sed dicta eos. Minima et totam in. Aut sint voluptatem autem sed qui deserunt. Corrupti temporibus dignissimos dignissimos molestiae saepe labore facere.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(491, '2022-04-05 12:52:28', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 90.00, NULL, 'paid', 'Eveniet ipsum voluptatem perspiciatis ad aut ut eum. Adipisci maxime consectetur at atque fuga voluptas quam. In exercitationem perferendis praesentium pariatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(492, '2021-12-29 02:43:40', '2022-08-18 19:44:49', NULL, NULL, 2, NULL, 0.00, 91.00, NULL, 'paid', 'Et ipsum sed veniam tempore voluptas. Temporibus ea adipisci qui. Modi aliquam officiis est ex est qui officia. Eum velit ut facere omnis ad. Qui dolor sit ut nostrum ipsa fuga. Ipsa natus qui vel.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(493, '2022-04-20 03:11:10', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 91.00, NULL, 'paid', 'Totam fugiat deserunt dicta. Labore aut cum repellendus consequuntur. Non autem fugiat animi voluptas nobis veniam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(494, '2022-01-24 21:31:37', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 48.00, NULL, 'paid', 'Porro repellendus dignissimos doloremque vero et. Veritatis pariatur est dolor consequatur aut sed. Perspiciatis ea autem sequi vel et necessitatibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(495, '2021-12-23 04:15:42', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 68.00, NULL, 'paid', 'Aliquam ipsa sint rerum velit atque. Quis officia ducimus voluptatem numquam. Eos non nulla nesciunt consequuntur similique facere recusandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(496, '2021-12-28 07:23:46', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 63.00, NULL, 'paid', 'Porro quo veritatis ratione optio quia. Voluptatum omnis deleniti totam laborum quas iusto natus. Officiis assumenda aliquid voluptatem odio repellat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(497, '2021-12-05 11:39:52', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 82.00, NULL, 'paid', 'Facilis asperiores ipsa quos sunt adipisci. Recusandae occaecati vitae eos ut laboriosam quia nesciunt unde.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(498, '2022-04-22 22:10:38', '2022-08-18 19:44:49', NULL, NULL, 1, NULL, 0.00, 46.00, NULL, 'paid', 'Id porro ab rerum est atque corrupti autem. Consectetur reiciendis ut qui et expedita. Nihil voluptatem consequatur totam aut vero veritatis ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(499, '2022-08-12 23:49:55', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 83.00, NULL, 'paid', 'Omnis cumque nesciunt suscipit aut atque. Perferendis quas odio eos quod recusandae. Velit et consectetur amet maiores et cumque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(500, '2021-11-21 18:15:12', '2022-08-18 19:44:49', NULL, NULL, 3, NULL, 0.00, 32.00, NULL, 'paid', 'Dolores dolor fugit omnis omnis itaque fugiat. Expedita vel minima asperiores rerum. Voluptates corporis ab architecto qui quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(501, '2022-08-18 11:30:02', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 86.00, NULL, 'paid', 'Et qui doloremque qui. Sit esse id blanditiis cum fuga. Qui at numquam facilis consectetur esse at reiciendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(502, '2022-08-18 01:35:39', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 86.00, NULL, 'paid', 'Quia ut est voluptatem ipsam odio. Voluptatem officiis doloremque eligendi enim qui qui voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(503, '2022-08-18 17:44:08', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 78.00, NULL, 'paid', 'Laudantium dicta earum sit temporibus distinctio. Qui at et ipsa ipsam natus. Libero ipsa totam quo aut modi autem repellendus. Sed iste perspiciatis et error rerum aut eveniet.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(504, '2022-08-18 02:36:52', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 57.00, NULL, 'paid', 'Ipsum quas dolor consectetur et ducimus et. Ex dolorem iure maiores esse delectus. Ab enim velit est corporis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(505, '2022-08-18 00:19:35', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 58.00, NULL, 'paid', 'Sapiente itaque corporis laborum consectetur velit esse. Nobis autem possimus ratione. Mollitia quia facilis ut illum ad illo minus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(506, '2022-08-18 18:49:31', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 63.00, NULL, 'paid', 'Ea iure necessitatibus facilis sed. Totam voluptate ut possimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(507, '2022-08-18 06:28:39', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 73.00, NULL, 'paid', 'Est provident deserunt totam eaque natus ut placeat. Quisquam maxime labore unde qui et deserunt. Ad et molestias et non omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(508, '2022-08-18 15:28:14', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 57.00, NULL, 'paid', 'Tempore ex ea et possimus atque fugit esse. Quaerat enim aut sed qui cupiditate. Beatae est libero saepe architecto et sed aut nulla.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(509, '2022-08-18 01:35:33', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 84.00, NULL, 'paid', 'Ipsum voluptas aut amet ut et et ea rem. Aut laboriosam suscipit autem nihil necessitatibus ducimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(510, '2022-08-18 09:33:59', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 95.00, NULL, 'paid', 'Officia sunt non et nostrum nemo sint. Provident inventore rem qui beatae maiores incidunt. Consequatur ipsam accusantium id ratione et molestiae rerum. Eum fugiat suscipit ut qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(511, '2022-08-18 17:29:20', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 42.00, NULL, 'paid', 'Veritatis iure quis voluptas voluptate fugit quod. Qui quae architecto et. Qui minima hic et doloribus. Ipsa est fuga quo voluptatem est laboriosam. Fugiat asperiores eum eos dolorum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(512, '2022-08-17 22:08:54', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 40.00, NULL, 'paid', 'Repellat qui tempore et odio voluptas corrupti quia. Aperiam minima nostrum aut libero rerum optio. Quam voluptatibus quo possimus et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(513, '2022-08-18 11:28:23', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 74.00, NULL, 'paid', 'Aut ab sit asperiores ut in repellendus. Mollitia maiores esse non magnam consequatur. Sunt nobis magni libero dicta dolor quidem consectetur ab.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(514, '2022-08-17 20:23:29', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 51.00, NULL, 'paid', 'Explicabo earum inventore eum voluptatem fugiat unde est. Saepe ad qui eligendi iste voluptate quia distinctio. Animi accusamus quia assumenda.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(515, '2022-08-18 16:02:15', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 30.00, NULL, 'paid', 'Autem possimus expedita magni consequuntur sit voluptate dolore. Nihil laborum mollitia doloremque impedit. Voluptas ab eum eos. Aut quas voluptatem maiores excepturi quis amet.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(516, '2022-08-18 12:37:14', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 86.00, NULL, 'paid', 'Consequatur recusandae reiciendis eligendi voluptatem omnis. Voluptas enim non provident quia. Illo illum cum dicta quos fugit. Omnis tenetur expedita consequuntur quibusdam est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(517, '2022-08-18 02:04:33', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 41.00, NULL, 'paid', 'Et suscipit adipisci quo. Ratione voluptates et et earum sapiente eum. Animi ipsum recusandae molestiae alias ullam vel in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(518, '2022-08-17 23:19:19', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 98.00, NULL, 'paid', 'Impedit enim sed dolores qui sunt dignissimos quas. Et aut aliquid nesciunt voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(519, '2022-08-17 22:31:10', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 78.00, NULL, 'paid', 'Possimus et praesentium fugiat voluptas odio consequatur assumenda aliquid. Maxime ut porro deserunt. Eum praesentium et sint molestiae. Et id qui architecto facere voluptatum dignissimos voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(520, '2022-08-17 21:22:46', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 92.00, NULL, 'paid', 'Odit quo sapiente temporibus et consequatur. Similique eum molestias maxime et laudantium. Est quis minus dolorum rerum. Tempore sed aut excepturi dicta soluta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(521, '2022-08-18 04:32:55', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 75.00, NULL, 'paid', 'Consectetur magnam aut vitae omnis maxime vitae laborum. Enim qui corrupti nam tempora. Quidem at id nobis qui voluptatem. Quos sequi aliquid corporis excepturi vero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(522, '2022-08-18 09:38:11', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 40.00, NULL, 'paid', 'Illo et odit aut et. Placeat esse animi non quas non animi rem. Id accusamus explicabo eveniet eius in. Omnis cumque odio est temporibus id quia quos. Voluptatum facere earum consequuntur quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(523, '2022-08-18 06:54:33', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 61.00, NULL, 'paid', 'Sint ipsa voluptate non iure et nam. Enim voluptate ut officiis et. Quis soluta vero aut in placeat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(524, '2022-08-18 11:55:37', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 38.00, NULL, 'paid', 'Libero atque et culpa veritatis et. In adipisci et ipsa placeat sunt. Sit molestias dolores labore ut quis. Praesentium et pariatur fugiat ut non enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(525, '2022-08-18 05:46:57', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 87.00, NULL, 'paid', 'Sint veritatis quia delectus deleniti neque. Ullam vero ratione ipsa. Aut sed facere porro possimus reprehenderit pariatur ut accusantium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(526, '2022-08-18 07:57:05', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 64.00, NULL, 'paid', 'Accusamus omnis commodi et veniam nulla. Sed ducimus et nihil rerum odio optio quia. Facilis vitae impedit provident quo voluptates rerum. Incidunt quisquam aliquid ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(527, '2022-08-18 02:35:01', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 32.00, NULL, 'paid', 'Aut facere sapiente ad corrupti consectetur natus. Reprehenderit non eum ut nam enim. Aut quia et ab. Et ea consequuntur repellendus libero magnam praesentium consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(528, '2022-08-18 15:42:06', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 84.00, NULL, 'paid', 'Et inventore cupiditate illum earum. Quasi consequatur est nostrum dolore. Nulla aut eaque at placeat. Delectus explicabo reprehenderit expedita eligendi repellat molestias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(529, '2022-08-18 10:24:06', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 75.00, NULL, 'paid', 'Sit laboriosam quisquam aliquid numquam magni. Quod distinctio doloribus deleniti qui sed. Repellat illo quia est quo quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(530, '2022-08-18 07:25:01', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 30.00, NULL, 'paid', 'Necessitatibus ratione incidunt nihil fugit impedit nemo. Vel ut earum at voluptatem veniam. Fuga aut quia nihil perspiciatis qui aspernatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(531, '2022-08-18 00:32:18', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 77.00, NULL, 'paid', 'Nisi numquam sequi corrupti. Incidunt consequatur eius alias quidem nihil. Ea aut similique vero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(532, '2022-08-18 10:52:15', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 85.00, NULL, 'paid', 'Enim voluptas aut autem qui voluptates. Inventore mollitia dolorem dolorem at. Qui suscipit omnis dolorem neque. Dolores odit accusamus neque nulla.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(533, '2022-08-18 00:10:32', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 56.00, NULL, 'paid', 'Dicta velit dolor nihil nesciunt. Exercitationem nam rerum fugiat architecto dolorem. Doloremque quam natus tempore voluptas. Molestias harum repellat excepturi autem dolorem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(534, '2022-08-18 06:03:34', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 80.00, NULL, 'paid', 'Magnam amet quidem earum ea. Qui vel natus et aliquam aliquid eligendi cum modi. Perspiciatis quibusdam qui velit aperiam in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(535, '2022-08-18 03:26:22', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 39.00, NULL, 'paid', 'Ipsam omnis praesentium itaque consequuntur quis. Adipisci rerum non voluptas soluta dolorum repudiandae architecto. Veniam velit laudantium a asperiores culpa sed illum enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(536, '2022-08-18 14:32:45', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 42.00, NULL, 'paid', 'Odio dolor ab ut velit perferendis repellendus. Eos molestiae dolorum porro quia ex velit distinctio quo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(537, '2022-08-17 20:17:13', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 58.00, NULL, 'paid', 'Id odit velit ea et deleniti dignissimos. Exercitationem et ut delectus enim facere repudiandae. Reprehenderit tempora est natus sed repellat quo numquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(538, '2022-08-18 18:45:35', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 82.00, NULL, 'paid', 'Est nisi voluptatem aut sit debitis. Expedita sapiente molestiae totam libero aut est non. Nemo pariatur dignissimos quaerat ratione iste ex. Labore aut dolor corporis tenetur fugiat et saepe.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(539, '2022-08-18 10:42:50', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 94.00, NULL, 'paid', 'Porro et doloremque dolorem qui nemo qui provident. Veniam tempore veniam dolores natus vel maxime. Sunt et illum aut ad rerum cumque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(540, '2022-08-18 11:21:16', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 84.00, NULL, 'paid', 'Nam aut quia ab minima mollitia ad similique et. Accusamus harum repellat aut doloribus assumenda qui autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(541, '2022-08-18 09:38:02', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 94.00, NULL, 'paid', 'Libero deserunt quisquam praesentium voluptate aut blanditiis. Molestiae optio cupiditate quis. Molestias ut quia unde excepturi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(542, '2022-08-18 13:28:56', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 76.00, NULL, 'paid', 'Et ea in error culpa aut ratione. Minima id aliquid odio voluptates non. Laborum repellat architecto accusamus voluptatibus. Et officia fugit aut aut et aliquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(543, '2022-08-18 11:26:41', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 32.00, NULL, 'paid', 'Aut quam et minus enim sed vel. Mollitia molestiae est magni. Aut quas mollitia numquam quasi qui odit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(544, '2022-08-18 02:26:06', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 72.00, NULL, 'paid', 'Possimus qui voluptatibus in perspiciatis praesentium et et odit. Quia et rerum harum sequi accusamus reiciendis suscipit. Vel sint sequi quia eius est consequatur cum optio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(545, '2022-08-17 23:33:47', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 47.00, NULL, 'paid', 'Sunt cum et earum quam. Harum quaerat deleniti aut quia dolorem. Quam repellendus commodi nulla et vel.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(546, '2022-08-18 14:40:40', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 44.00, NULL, 'paid', 'Quia ut quibusdam eum sit est dolorem. Maiores aut aspernatur et eius voluptas illum quia. Facere veritatis rem qui at animi odio. Omnis voluptatem id quia iste est. Quasi ut possimus sint.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(547, '2022-08-18 10:55:20', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 89.00, NULL, 'paid', 'Quaerat ut ea alias minima beatae. Alias praesentium ratione qui quas voluptatem. Et commodi reiciendis labore labore sit. Veritatis esse ullam aliquid minima voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(548, '2022-08-18 04:32:06', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 93.00, NULL, 'paid', 'Distinctio et et a iusto sunt. Ut quis sit incidunt harum consequatur. Doloremque numquam neque ut vitae. Earum molestiae architecto sunt vero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(549, '2022-08-18 15:58:14', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 32.00, NULL, 'paid', 'Enim culpa provident sed quia ut et. Est tempora deserunt repellendus. Officiis quo pariatur delectus culpa dolor eius.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(550, '2022-08-18 17:56:55', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 66.00, NULL, 'paid', 'Nobis aut facilis asperiores et. Dignissimos aut explicabo ex quia molestiae. Quis nemo sed voluptatem molestiae sed aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(551, '2022-08-17 21:32:27', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 99.00, NULL, 'paid', 'Aut sint dolor ut maxime quod corporis quidem in. Nobis reprehenderit eligendi aperiam beatae. Qui cupiditate sed modi tempora quam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(552, '2022-08-18 14:44:44', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 96.00, NULL, 'paid', 'Officia dolores esse perferendis et et. Ut quia autem quisquam aspernatur dolorem repudiandae. Adipisci dolor culpa repellat dolores sed optio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(553, '2022-08-18 01:56:42', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 63.00, NULL, 'paid', 'Error repellat explicabo dolores quos voluptas labore. Aspernatur sunt et aliquid hic blanditiis. Voluptas sint qui aliquid quia. Necessitatibus tempora corporis doloribus quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(554, '2022-08-18 17:58:14', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 61.00, NULL, 'paid', 'Vitae qui soluta quisquam nesciunt voluptas. Cupiditate quia voluptatem sit est ea. Qui quos dicta minus. Ex nihil nihil error est quia qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0);
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`, `employee_id`, `deleted_at`, `md`, `coupon`, `discount`, `kds_finished`) VALUES
(555, '2022-08-17 20:37:19', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 98.00, NULL, 'paid', 'Harum porro voluptatem porro officia. Sit libero molestiae provident doloribus ea soluta. Accusamus quibusdam atque consequatur alias explicabo commodi temporibus. Voluptatem distinctio iure a et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(556, '2022-08-18 05:25:24', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 31.00, NULL, 'paid', 'Quibusdam delectus est ut accusantium dignissimos excepturi. Commodi officia soluta quis corporis nihil dolorum. Voluptatem quo minima occaecati.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(557, '2022-08-18 01:07:42', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 78.00, NULL, 'paid', 'Est ad dignissimos deserunt. Commodi veritatis non et id quo eveniet voluptas. Dignissimos et eveniet voluptas voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(558, '2022-08-18 18:29:37', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 34.00, NULL, 'paid', 'Sunt perspiciatis soluta consectetur dolorem voluptas. Molestiae autem quaerat dolor facilis aut vero. Ex ipsum officia ut ad ipsum. Deserunt natus nesciunt quam eveniet.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(559, '2022-08-18 07:04:23', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 44.00, NULL, 'paid', 'Eveniet doloremque qui quas. Vel voluptas quam quia quo necessitatibus animi alias. Eum libero voluptate beatae provident ea amet.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(560, '2022-08-18 17:42:03', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 50.00, NULL, 'paid', 'Sunt ut nobis voluptas quisquam quia. Et tempora nobis necessitatibus totam. Ut pariatur error quibusdam sed voluptatibus quia quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(561, '2022-08-18 09:49:32', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 53.00, NULL, 'paid', 'Ipsam non natus inventore commodi in quo sed quia. Quia autem consequatur minus porro. Voluptatem eius at dolores fugiat aut quos inventore quisquam. Quasi quod soluta veniam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(562, '2022-08-18 08:57:48', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 97.00, NULL, 'paid', 'Dolore dolore et ipsum ut et. Reprehenderit dolores aliquam voluptas debitis. Libero temporibus non exercitationem illo. Ut aut dignissimos eaque aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(563, '2022-08-18 01:22:58', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 37.00, NULL, 'paid', 'Magnam rerum voluptatem distinctio nihil maxime. Pariatur consequatur necessitatibus a in. Minima laboriosam est quod aspernatur velit delectus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(564, '2022-08-17 19:59:01', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 49.00, NULL, 'paid', 'Voluptas perferendis amet repudiandae quasi natus. Illo enim fugit quod voluptatem dolorum ea aliquid. Est quia nisi id aut illum. Esse et magni nesciunt dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(565, '2022-08-18 08:41:03', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 49.00, NULL, 'paid', 'Dignissimos et omnis sapiente dolorem fugiat. Dolorem minus et rem. Eum unde eos ipsum vitae saepe quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(566, '2022-08-18 09:23:38', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 58.00, NULL, 'paid', 'Sunt ducimus ut et ipsa error. Vel eveniet amet fugit est tenetur totam sit. Impedit hic et ut iusto et modi sint dicta. Nulla explicabo sed omnis animi et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(567, '2022-08-18 10:45:58', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 80.00, NULL, 'paid', 'Tempora sit ipsa cumque laborum. Doloremque quibusdam fuga dicta qui in eum. Eaque vel porro molestiae itaque eligendi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(568, '2022-08-17 20:09:00', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 57.00, NULL, 'paid', 'Iste non magni velit ut in magni et. Est exercitationem est qui eum fugit temporibus distinctio. Amet temporibus sed sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(569, '2022-08-17 19:55:12', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 61.00, NULL, 'paid', 'Esse totam aut dolore voluptatem eaque. Aut nulla atque voluptates id sed et est omnis. Aut blanditiis ut quod. Aut enim labore voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(570, '2022-08-18 13:06:49', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 82.00, NULL, 'paid', 'Dolor quos quidem quia omnis dolore harum. Quo aut recusandae consequatur omnis praesentium. Minus eius et veniam ab. Rerum ipsa enim consequatur dignissimos ad enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(571, '2022-08-17 21:47:08', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 40.00, NULL, 'paid', 'Qui quia quam qui. Asperiores sapiente molestias quas. Sit et illum non necessitatibus non. Assumenda rem sed sint voluptatem qui commodi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(572, '2022-08-18 14:59:41', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 90.00, NULL, 'paid', 'Enim minus ducimus beatae. Atque ut modi dolorem et deleniti commodi. Possimus quod eligendi aut minus exercitationem ex. Nihil soluta voluptatem et veniam in fugit sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(573, '2022-08-18 16:13:58', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 56.00, NULL, 'paid', 'Aliquam aut qui molestiae eligendi at unde. Praesentium aut aliquam voluptas cupiditate omnis dolor. Officia eum dignissimos non animi eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(574, '2022-08-18 18:40:01', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 75.00, NULL, 'paid', 'Recusandae iste aut labore culpa et. Velit est reprehenderit consequatur possimus et. At officiis ullam unde maiores sed molestiae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(575, '2022-08-17 22:49:32', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 75.00, NULL, 'paid', 'Tempora atque rerum et iusto. Laudantium minima illo beatae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(576, '2022-08-18 07:20:21', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 49.00, NULL, 'paid', 'Et quos dolor hic expedita. Quas voluptas eligendi autem aut voluptatem sapiente mollitia omnis. Corporis ut vitae fugiat dolor vel in. Vero et nesciunt exercitationem nobis voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(577, '2022-08-18 02:48:46', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 77.00, NULL, 'paid', 'Et ducimus tenetur odit qui eligendi quo voluptate. Aliquid dolorum rerum repellendus distinctio. Ipsum ipsam qui natus consequatur. Quo iure impedit velit in sit saepe mollitia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(578, '2022-08-18 18:04:35', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 71.00, NULL, 'paid', 'Eligendi accusamus omnis dolorem neque iure autem dolores. Aliquam rerum aut quis cumque dolorem animi culpa. Aut culpa deleniti ea unde omnis iste.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(579, '2022-08-18 08:58:09', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 33.00, NULL, 'paid', 'Eaque nisi ea in ipsam et. Laudantium adipisci quia sed est porro et similique. Quo ducimus placeat possimus aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(580, '2022-08-17 23:48:45', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 69.00, NULL, 'paid', 'Non accusantium modi doloribus cupiditate. Molestias quaerat commodi ut consequatur. Quis sunt repellat ipsa pariatur repellat placeat ad. Soluta eum laborum quos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(581, '2022-08-17 20:27:12', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 35.00, NULL, 'paid', 'Quo illo saepe reprehenderit quibusdam explicabo deleniti. Autem in ut numquam esse. Exercitationem laudantium est et cupiditate itaque quae accusantium. Et sunt nulla et et nisi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(582, '2022-08-18 08:55:38', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 33.00, NULL, 'paid', 'Facere voluptatibus ut voluptate laudantium corrupti. Optio odio repellat animi at aut quisquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(583, '2022-08-18 10:36:22', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 36.00, NULL, 'paid', 'Explicabo dolor blanditiis doloremque necessitatibus rerum. Sint error est ratione sunt esse. In illo hic eum unde temporibus. Cum nostrum sed facere adipisci nesciunt ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(584, '2022-08-18 02:24:32', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 45.00, NULL, 'paid', 'Dolore rerum rerum ratione nemo dolores sit. Impedit suscipit modi commodi excepturi rerum iste. Ea earum a deserunt ea error accusantium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(585, '2022-08-17 20:32:33', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 86.00, NULL, 'paid', 'Ea saepe expedita illo fugiat tempore consequatur. Eum dicta officiis alias omnis voluptatem. Atque unde est animi molestiae laboriosam dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(586, '2022-08-18 09:02:47', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 55.00, NULL, 'paid', 'Dolorum laudantium ea vel perferendis. Tenetur qui quo aperiam. Eum expedita velit et quod est dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(587, '2022-08-18 11:16:58', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 77.00, NULL, 'paid', 'Officia distinctio officia eaque eligendi. Sed sit omnis reprehenderit tempore voluptatibus qui. Est pariatur ipsum optio et. A itaque est non animi recusandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(588, '2022-08-17 20:36:47', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 44.00, NULL, 'paid', 'Quam et qui aut omnis. Incidunt iure aliquid unde dolorem quasi natus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(589, '2022-08-18 18:33:56', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 95.00, NULL, 'paid', 'Asperiores similique in sunt ad quia amet. Et quis minus ipsam. Et voluptatem perferendis repellendus dolor. Vel cumque laborum praesentium necessitatibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(590, '2022-08-18 05:46:47', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 36.00, NULL, 'paid', 'Cupiditate cupiditate aut quasi dolores eum. Laboriosam ut iste necessitatibus. At voluptatum quos distinctio dolorem sit eum expedita.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(591, '2022-08-18 03:01:56', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 78.00, NULL, 'paid', 'Corporis odit rerum sit sunt. Ut unde voluptas nihil illum dolore impedit laboriosam. Voluptas consequuntur voluptatem nesciunt omnis perferendis reprehenderit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(592, '2022-08-17 21:00:09', '2022-08-18 19:44:50', NULL, NULL, 1, NULL, 0.00, 41.00, NULL, 'paid', 'Et qui quis hic fuga exercitationem. Non harum distinctio dignissimos rem et architecto omnis. Ab beatae tenetur enim laborum. Nam nostrum voluptates illum aperiam est pariatur ipsum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(593, '2022-08-17 21:53:49', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 98.00, NULL, 'paid', 'Facere provident quia eos fugit aperiam soluta facere. Deserunt qui dolorem qui sapiente ex aut aperiam amet. Dolor similique veritatis aspernatur quisquam aut temporibus adipisci officia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(594, '2022-08-17 23:49:07', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 100.00, NULL, 'paid', 'Sed pariatur saepe consequuntur est sint. Ut delectus reprehenderit blanditiis officiis. Sed quia unde beatae delectus assumenda. Non velit tempora aut voluptates.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(595, '2022-08-17 22:00:04', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 38.00, NULL, 'paid', 'Est eum omnis harum quisquam praesentium eos laudantium. Aspernatur ea architecto repellendus enim. Ex voluptate aperiam rem aut. Id et qui qui dicta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(596, '2022-08-17 23:51:00', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 88.00, NULL, 'paid', 'Iusto eaque voluptas odit quia. Dolorem quidem doloremque rerum veniam praesentium. Et vitae magni consectetur enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(597, '2022-08-18 10:33:49', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 68.00, NULL, 'paid', 'Sint sapiente quam natus illo quasi qui. Velit qui sed voluptatem ut dicta. Libero at eos qui nam impedit dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(598, '2022-08-18 10:08:53', '2022-08-18 19:44:50', NULL, NULL, 3, NULL, 0.00, 83.00, NULL, 'paid', 'Harum laborum velit repellendus molestiae laudantium. Veniam placeat ducimus perspiciatis. Expedita facere aut autem et at vero voluptatem. Et harum ut iusto natus sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(599, '2022-08-18 02:47:37', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 44.00, NULL, 'paid', 'Et aut corporis repellat sunt. Consequuntur atque maxime hic impedit. Omnis iste facilis omnis omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0),
(600, '2022-08-18 05:38:09', '2022-08-18 19:44:50', NULL, NULL, 2, NULL, 0.00, 85.00, NULL, 'paid', 'Consequatur provident quia quasi repudiandae neque at. Blanditiis officiis et quis libero sunt. Sit quia fugiat voluptatem magni iusto quae sit. Numquam occaecati et ipsa corrupti qui suscipit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, NULL, '', NULL, 0.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_has_items`
--

CREATE TABLE `order_has_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  `extras` varchar(800) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `vat` double(8,2) DEFAULT '0.00',
  `vatvalue` double(8,2) DEFAULT '0.00',
  `variant_price` double(8,2) DEFAULT NULL,
  `variant_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `kds_finished` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_has_status`
--

CREATE TABLE `order_has_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `showAsLink` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `created_at`, `updated_at`, `title`, `content`, `showAsLink`) VALUES
(1, '2022-08-18 19:44:45', '2022-08-22 05:15:54', 'Terms and conditions', '<p><strong>QR Kuwait&nbsp;website Terms of Use</strong><br />\r\n<br />\r\nThese Terms of Use govern your use of the QR Kuwait website and, unless otherwise stated, to your use of any other website or mobile application owned or operated by Foxiom Leads&nbsp;Please read these Terms of Use carefully before using the Websites.<br />\r\n<br />\r\n<strong>Agreement to Terms</strong><br />\r\n<br />\r\nBy using the Websites, you agree to these Terms of Use and the QR Kuwait General Online Privacy Policy (for visitors who are eighteen years of age or over) or the QR Kuwait Children&rsquo;s Online Privacy Policy (for visitors who are under eighteen (18) years of age) which are incorporated herein by reference. Each time you use the Websites, you reaffirm your acceptance of the then-current Terms of Use. If you do not wish to be bound by these Terms of Use, your only remedy is to discontinue using the Websites.<br />\r\n<br />\r\nQR Kuwait may change these Terms of Use at any time and at its sole discretion. The modified Terms of Use will be effective immediately upon posting and you agree to the new posted Terms of Use by continuing your use of the Websites. You are responsible for staying informed of any changes. If you do not agree with the modified Terms of Use, your only remedy is to discontinue using the Websites.<br />\r\n<br />\r\n<strong>Accounts</strong><br />\r\n<br />\r\nYou may be required to create an account and specify a password to use certain features on the Websites. You agree to provide, maintain and update true, accurate, current and complete information about yourself as prompted by the registration processes. You may not impersonate any person or entity or misrepresent your identity or affiliation with any person or entity, including using another person&rsquo;s username, password, or other account information.<br />\r\n<br />\r\nYou are entirely responsible for maintaining the confidentiality of your password and your account. And you are entirely responsible for all activity made by you or anyone that uses your account. You agree to safeguard your password from access by others. If you believe that your account has been compromised, you must immediately contact us by mail at:&nbsp;gulf@foxiom.com or send a message to our live-chat service. You agree to indemnify and hold harmless QR Kuwait for losses incurred by QR Kuwait or another party due to someone else using your account as a result of your failure to use reasonable care to safeguard your password.<br />\r\n<br />\r\n<strong>Content Posted by Other Users</strong><br />\r\n<br />\r\nQR Kuwait is not responsible for, and does not endorse, Content in any posting made by other users on the Websites. Under no circumstances shall QR Kuwait be held liable, directly or indirectly, for any loss or damage caused or alleged to have been caused to you in connection with any Content posted by a third party on the Websites. If you become aware of misuse of the Websites by any person, please contact QR Kuwait by mail at:&nbsp;<a href=\"mailto:gulf@foxiom.com\">gulf@foxiom.com</a>.</p>\r\n\r\n<p><br />\r\nIf you feel threatened or believe someone else is in danger, you should contact the local law enforcement agency immediately.<br />\r\n<br />\r\n<br />\r\n<strong>Activities Prohibited on the Websites</strong><br />\r\n<br />\r\nThe following is a partial list of the kinds of conduct that are illegal or prohibited on the Websites. QR Kuwait reserves the right to investigate and take appropriate legal action against anyone who, in QR Kuwait sole discretion, engages in any of the prohibited activities. Prohibited activities include &mdash; but are not limited to &mdash; the following:<br />\r\n<br />\r\n- Using the Websites for any purpose in violation of local, state, or federal laws or regulations;<br />\r\n- Posting Content that infringes the intellectual property rights, privacy rights, publicity rights, trade secret rights, or any other rights of any party;<br />\r\n- Posting Content that is unlawful, obscene, defamatory, threatening, harassing, abusive, slanderous, hateful, or embarrassing to any other person or entity as determined by QR Kuwait in its sole discretion or pursuant to local community standards;<br />\r\n- Posting Content that constitutes cyber-bullying, as determined by QR Kuwait in its sole discretion;<br />\r\n- Posting Content that depicts any dangerous, life-threatening, or otherwise risky behavior;<br />\r\n- Posting telephone numbers, street addresses, or last names of any person;<br />\r\n- Posting URLs to external websites or any form of HTML or programming code;<br />\r\n- Posting anything that may be &ldquo;spam,&rdquo; as determined by QR Kuwait in its sole discretion;<br />\r\n- Impersonating another person when posting Content;<br />\r\n- Harvesting or otherwise collecting information about others, including e-mail addresses, without their consent;<br />\r\n- Allowing any other person or entity to use your identification for posting or viewing comments;<br />\r\n- Harassing, threatening, stalking, or abusing any person;<br />\r\n- Engaging in any other conduct that restricts or inhibits any other person from using or enjoying the Websites, or which, in the sole discretion of QR Kuwait, exposes QR Kuwait or any of its customers, suppliers, or any other parties to any liability or detriment of any type; or<br />\r\n- Encouraging other people to engage in any prohibited activities as described herein.<br />\r\nQR Kuwait reserves the right -- but is not obligated -- to do any or all of the following:<br />\r\n<br />\r\n- Investigate an allegation that any Content posted on the Websites does not conform to these Terms of Use and determine in its sole discretion to remove or request the removal of the Content;<br />\r\n- Remove Content which is abusive, illegal, or disruptive, or that otherwise fails to conform with these Terms of Use;<br />\r\n- Terminate a user&rsquo;s access to the Websites upon any breach of these Terms of Use;<br />\r\n- Monitor, edit, or disclose any Content on the Websites; and<br />\r\n- Edit or delete any Content posted on the Websites, regardless of whether such Content violates these standards.<br />\r\n- QR Kuwait Trademarks and Copyrights<br />\r\n<br />\r\nAll trademarks, logos, and service marks displayed on the Website are registered and unregistered Trademarks of QR Kuwait and/or third parties who have authorized their use (collectively the &ldquo;Trademarks&rdquo;)<br />\r\n<br />\r\nYou may not use, copy, reproduce, republish, upload, post, transmit, distribute, or modify these Trademarks in any way. The use of QR Kuwait&#39;s trademarks on any other website is strictly prohibited. All of the materials contained on the Websites are copyrighted except where explicitly noted otherwise. QR Kuwait will aggressively enforce its intellectual property rights to the fullest extent of the law, including the seeking of criminal prosecution. QR Kuwait neither warrants nor represents that your use of materials displayed on the Websites will not infringe rights of third parties not owned by or affiliated with QR Kuwait. Use of any materials on the Websites is at your own risk.<br />\r\n<br />\r\n<strong>Hyperlinks</strong><br />\r\n<br />\r\nThis Websites may contain hyperlinks to third-party websites. QR Kuwait does not control or endorse these third-party websites or any goods or services sold on those websites. Some of these websites may contain materials that are objectionable, unlawful, or inaccurate. You acknowledge and agree that QR Kuwait is not responsible or liable for any Content or other materials on these third-party websites.<br />\r\n<br />\r\n<strong>Governing Law and Severability</strong><br />\r\n<br />\r\nThese Terms of Use shall be governed by and construed in accordance with the laws of Bulgaria, without regard to its conflict of laws rules. You expressly agree that the exclusive jurisdiction for any claim or dispute under the Terms of Use and or your use of the Websites resides in the courts of Bulgaria, and you further expressly agree to submit to the personal jurisdiction of such courts for the purpose of litigating any such claim or action.<br />\r\n<br />\r\nIf any provision of these Terms of Use is found to be invalid by any court having competent jurisdiction, the invalidity of such provision shall not affect the validity of the remaining provisions of these Terms of Use, which shall remain in full force and effect. No waiver of any provision in these Terms of Use shall be deemed a further or continuing waiver of such provision or any other provision.<br />\r\n<br />\r\n<strong>Warranties</strong><br />\r\n<br />\r\nThe Websites and the Content are provided on an &ldquo;as is&rdquo; basis. To the fullest extent permitted by law, QR Kuwait, its parent, subsidiaries, and affiliates (the QR Kuwait entities), and each of their agents, representatives and service providers, disclaim all warranties, either expressed or implied, statutory or otherwise, including but not limited to the implied warranties of merchantability, non-infringement of third parties rights, and fitness for particular purpose. Applicable law may not allow the exclusion of implied warranties, so the above exclusion may not apply to you. The QR Kuwait Entities, their agents, representatives and service providers cannot and do not guarantee or warrant that: (a) the Websites will be reliable, accurate, complete, or updated on a timely basis; (b) the Websites will be free of human and machine errors, omissions, delays, interruptions or losses, including loss of data; (c) any files available for downloading from the Websites will be free of infection by viruses, worms, Trojan horses, or other codes that manifest contaminating or destructive properties; (d) any Content you post on the Websites will remain on the Websites; or (e) the functions or services performed on the Websites will be uninterrupted or error-free or that defects in the Websites will be corrected.<br />\r\n<br />\r\n<strong>Limitation of Liability</strong><br />\r\n<br />\r\nThe QR Kuwait entities, their agents, representatives, and service providers, entire liability and your exclusive remedy with respect to your use of the websites is to discontinue your use of the websites. The QR Kuwait entities, their agents, representatives, and service providers shall not be liable for any indirect, special, incidental, consequential, or exemplary damages arising from your use of the websites or for any other claim related in any way to your use of the websites. These exclusions for indirect, special, consequential, and exemplary damages include, without limitation, damages for lost profits, lost data, loss of goodwill, work stoppage, work stoppage, computer failure, or malfunction, or any other commercial damages or losses, even if the QR Kuwait entities, their agents, representatives, and service providers have been advised of the possibility thereof and regardless of the legal or equitable theory upon which the claim is based. Because some states or jurisdictions do not allow the exclusion or the limitation of liability for consequential or incidental damages, in such states or jurisdictions, the QR Kuwait entities, their agents, representatives and service providers&#39; liability shall be limited to the extent permitted by law.<br />\r\n<br />\r\n<strong>Termination</strong><br />\r\n<br />\r\nQR Kuwait has the right to terminate your account and access to the Websites for any reason, including, without limitation, if QR Kuwait, in its sole discretion, considers your use to be unacceptable, or in the event of any breach by you of the Terms of Use. QR Kuwait may, but shall be under no obligation to, provide you a warning prior to termination of your use of the Websites.<br />\r\n<br />\r\n<strong>Contact Us</strong><br />\r\n<br />\r\nQuestions? Comments? Please send an email to us at&nbsp;gulf@foxiom.com<br />\r\n<br />\r\n&copy; 2022 QR Kuwait. All rights reserved.</p>', 1),
(2, '2022-08-18 19:44:45', '2022-08-22 05:19:50', 'How it works', '<p>QR Kuwait is a simple and easy way to display a menu online.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Here is how QR Kuwait works:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Scan the QR Code:</strong></p>\r\n\r\n<p>Display the QR code provided by QR Kuwait on the tables, counters, etc..</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Choose a dish:</strong></p>\r\n\r\n<p>Choose from the displayed dishes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>That&#39;s all!</p>\r\n\r\n<p>&nbsp;</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paths`
--

CREATE TABLE `paths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage restorants', 'web', '2022-08-18 19:44:44', '2022-08-18 19:44:44'),
(2, 'manage drivers', 'web', '2022-08-18 19:44:45', '2022-08-18 19:44:45'),
(3, 'manage orders', 'web', '2022-08-18 19:44:45', '2022-08-18 19:44:45'),
(4, 'edit settings', 'web', '2022-08-18 19:44:45', '2022-08-18 19:44:45'),
(5, 'view orders', 'web', '2022-08-18 19:44:45', '2022-08-18 19:44:45'),
(6, 'edit restorant', 'web', '2022-08-18 19:44:45', '2022-08-18 19:44:45'),
(7, 'edit orders', 'web', '2022-08-18 19:44:45', '2022-08-18 19:44:45'),
(8, 'access backedn', 'web', '2022-08-18 19:44:45', '2022-08-18 19:44:45');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit_items` int(11) NOT NULL DEFAULT '0' COMMENT '0 is unlimited',
  `limit_orders` int(11) NOT NULL DEFAULT '0' COMMENT '0 is unlimited',
  `price` double(8,2) NOT NULL,
  `period` int(11) NOT NULL DEFAULT '1' COMMENT '1 - monthly, 2-anually',
  `paddle_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `description` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `features` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `limit_views` int(11) NOT NULL DEFAULT '0' COMMENT '0 is unlimited',
  `enable_ordering` int(11) NOT NULL DEFAULT '1',
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `name`, `limit_items`, `limit_orders`, `price`, `period`, `paddle_id`, `created_at`, `updated_at`, `deleted_at`, `description`, `features`, `limit_views`, `enable_ordering`, `stripe_id`, `paypal_id`, `mollie_id`, `paystack_id`) VALUES
(1, 'Basic', 120, 0, 36000.00, 2, '', '2022-08-18 19:44:49', '2022-08-27 08:43:04', NULL, 'If you run a small restaurant or bar, or just need the basics, this plan is great.', 'Full access to QR tool, Access to the menu creation tool, Unlimited views, 150 items in the menu', 0, 2, '', NULL, NULL, NULL),
(2, 'Standard', 300, 0, 42000.00, 2, '', '2022-08-18 19:44:49', '2022-08-27 08:44:07', NULL, 'For bigger restaurants and bars.', 'Full access to QR tool, Access to the menu creation tool, Unlimited views, 300 items in the menu', 0, 2, '', NULL, NULL, NULL),
(3, 'Pro', 0, 0, 60000.00, 2, '', '2022-08-18 19:44:49', '2022-08-27 08:44:16', NULL, 'Accept orders directly from your customer mobile phone', 'Full access to QR tool, Access to the menu creation tool, Unlimited views, Unlimited items in the menu', 0, 2, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `rateable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rateable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restoareas`
--

CREATE TABLE `restoareas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restoareas`
--

INSERT INTO `restoareas` (`id`, `name`, `restaurant_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Inside', 1, NULL, NULL, NULL),
(2, 'Terrasse', 1, NULL, NULL, NULL),
(3, 'Inside', 2, NULL, NULL, NULL),
(4, 'Terrasse', 2, NULL, NULL, NULL),
(5, 'Inside', 3, NULL, NULL, NULL),
(6, 'Terrasse', 3, NULL, NULL, NULL),
(7, 'Inside', 4, NULL, NULL, NULL),
(8, 'Terrasse', 4, NULL, NULL, NULL),
(9, 'Inside', 5, NULL, NULL, NULL),
(10, 'Terrasse', 5, NULL, NULL, NULL),
(11, 'Inside', 6, NULL, NULL, NULL),
(12, 'Terrasse', 6, NULL, NULL, NULL),
(13, 'Inside', 7, NULL, NULL, NULL),
(14, 'Terrasse', 7, NULL, NULL, NULL),
(15, 'Inside', 8, NULL, NULL, NULL),
(16, 'Terrasse', 8, NULL, NULL, NULL),
(17, 'Inside', 9, NULL, NULL, NULL),
(18, 'Terrasse', 9, NULL, NULL, NULL),
(19, 'Inside', 10, NULL, NULL, NULL),
(20, 'Terrasse', 10, NULL, NULL, NULL),
(21, 'Inside', 11, NULL, NULL, NULL),
(22, 'Terrasse', 11, NULL, NULL, NULL),
(23, 'Inside', 12, NULL, NULL, NULL),
(24, 'Terrasse', 12, NULL, NULL, NULL),
(25, 'Inside', 13, NULL, NULL, NULL),
(26, 'Terrasse', 13, NULL, NULL, NULL),
(27, 'Inside', 14, NULL, NULL, NULL),
(28, 'Terrasse', 14, NULL, NULL, NULL),
(29, 'Inside', 15, NULL, NULL, NULL),
(30, 'Terrasse', 15, NULL, NULL, NULL),
(31, 'Inside', 16, NULL, NULL, NULL),
(32, 'Terrasse', 16, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2022-08-18 19:44:44', '2022-08-18 19:44:44'),
(2, 'owner', 'web', '2022-08-18 19:44:44', '2022-08-18 19:44:44'),
(3, 'driver', 'web', '2022-08-18 19:44:44', '2022-08-18 19:44:44'),
(4, 'client', 'web', '2022-08-18 19:44:44', '2022-08-18 19:44:44'),
(5, 'staff', 'web', '2022-08-18 19:44:44', '2022-08-18 19:44:44');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 2),
(6, 2),
(8, 2),
(7, 3),
(8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `search` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restorant_details_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `restorant_details_cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `playstore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `appstore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `maps_api_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `delivery` double(8,2) NOT NULL DEFAULT '0.00',
  `typeform` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile_info_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile_info_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_options` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '{}',
  `site_logo_dark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_fields` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `created_at`, `updated_at`, `site_name`, `site_logo`, `search`, `restorant_details_image`, `restorant_details_cover_image`, `description`, `header_title`, `header_subtitle`, `currency`, `facebook`, `instagram`, `playstore`, `appstore`, `maps_api_key`, `delivery`, `typeform`, `mobile_info_title`, `mobile_info_subtitle`, `order_options`, `site_logo_dark`, `order_fields`) VALUES
(1, '2022-08-18 19:44:44', '2022-08-25 14:39:59', 'QR Kuwait', '846d0891-c574-4493-a101-35fb0f66b1e2', '/default/cover.jpg', '/default/restaurant_large.jpg', '/default/cover.jpg', 'Your Digital Menu!', '', '', 'USD', 'https://www.facebook.com/qrkuwait', 'https://www.instagram.com/qrkuwait/', '', '', 'AIzaSyCZhq0g1x1ttXPa1QB3ylcDQPTAzp_KUgA', 0.00, '', '', '', '{}', '677bacde-908f-4401-88e2-158013d83e83', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `simple_delivery_areas`
--

CREATE TABLE `simple_delivery_areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` double(8,2) NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_delivery_areas`
--

INSERT INTO `simple_delivery_areas` (`id`, `name`, `cost`, `restaurant_id`, `created_at`, `updated_at`, `phone`) VALUES
(1, 'Nearby', 10.00, 1, NULL, NULL, ''),
(2, 'Faraway', 15.00, 1, NULL, NULL, ''),
(3, 'Nearby', 10.00, 2, NULL, NULL, ''),
(4, 'Faraway', 15.00, 2, NULL, NULL, ''),
(5, 'Nearby', 10.00, 3, NULL, NULL, ''),
(6, 'Faraway', 15.00, 3, NULL, NULL, ''),
(7, 'Nearby', 10.00, 4, NULL, NULL, ''),
(8, 'Faraway', 15.00, 4, NULL, NULL, ''),
(9, 'Nearby', 10.00, 5, NULL, NULL, ''),
(10, 'Faraway', 15.00, 5, NULL, NULL, ''),
(11, 'Nearby', 10.00, 6, NULL, NULL, ''),
(12, 'Faraway', 15.00, 6, NULL, NULL, ''),
(13, 'Nearby', 10.00, 7, NULL, NULL, ''),
(14, 'Faraway', 15.00, 7, NULL, NULL, ''),
(15, 'Nearby', 10.00, 8, NULL, NULL, ''),
(16, 'Faraway', 15.00, 8, NULL, NULL, ''),
(17, 'Nearby', 10.00, 9, NULL, NULL, ''),
(18, 'Faraway', 15.00, 9, NULL, NULL, ''),
(19, 'Nearby', 10.00, 10, NULL, NULL, ''),
(20, 'Faraway', 15.00, 10, NULL, NULL, ''),
(21, 'Nearby', 10.00, 11, NULL, NULL, ''),
(22, 'Faraway', 15.00, 11, NULL, NULL, ''),
(23, 'Nearby', 10.00, 12, NULL, NULL, ''),
(24, 'Faraway', 15.00, 12, NULL, NULL, ''),
(25, 'Nearby', 10.00, 13, NULL, NULL, ''),
(26, 'Faraway', 15.00, 13, NULL, NULL, ''),
(27, 'Nearby', 10.00, 14, NULL, NULL, ''),
(28, 'Faraway', 15.00, 14, NULL, NULL, ''),
(29, 'Nearby', 10.00, 15, NULL, NULL, ''),
(30, 'Faraway', 15.00, 15, NULL, NULL, ''),
(31, 'Nearby', 10.00, 16, NULL, NULL, ''),
(32, 'Faraway', 15.00, 16, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `sms_verifications`
--

CREATE TABLE `sms_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `alias`) VALUES
(1, 'Just created', 'just_created'),
(2, 'Accepted by admin', 'accepted_by_admin'),
(3, 'Accepted by restaurant', 'accepted_by_restaurant'),
(4, 'Assigned to driver', 'assigned_to_driver'),
(5, 'Prepared', 'prepared'),
(6, 'Picked up', 'picked_up'),
(7, 'Delivered', 'delivered'),
(8, 'Rejected by admin', 'rejected_by_admin'),
(9, 'Rejected by restaurant', 'rejected_by_restaurant'),
(10, 'Updated', 'updated'),
(11, 'Closed', 'closed'),
(12, 'Rejected by driver', 'rejected_by_driver'),
(13, 'Accepted by driver', 'accepted_by_driver');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL DEFAULT '4',
  `restoarea_id` bigint(20) UNSIGNED DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `x` double(8,2) DEFAULT NULL,
  `y` double(8,2) DEFAULT NULL,
  `w` double(8,2) DEFAULT NULL,
  `h` double(8,2) DEFAULT NULL,
  `rounded` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `name`, `size`, `restoarea_id`, `restaurant_id`, `created_at`, `updated_at`, `deleted_at`, `x`, `y`, `w`, `h`, `rounded`) VALUES
(1, 'Table 1', 4, 1, 1, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(2, 'Table 2', 4, 1, 1, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(3, 'Table 3', 4, 1, 1, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(4, 'Table 4', 4, 1, 1, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(5, 'Table 5', 4, 1, 1, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(6, 'Table 6', 4, 1, 1, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(7, 'Table 7', 4, 1, 1, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(8, 'Table 8', 4, 1, 1, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(9, 'Table 9', 4, 1, 1, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(10, 'Table 10', 4, 1, 1, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(11, 'Table 1', 4, 2, 1, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(12, 'Table 2', 4, 2, 1, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(13, 'Table 3', 4, 2, 1, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(14, 'Table 4', 4, 2, 1, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(15, 'Table 5', 4, 2, 1, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(16, 'Table 1', 4, 3, 2, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(17, 'Table 2', 4, 3, 2, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(18, 'Table 3', 4, 3, 2, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(19, 'Table 4', 4, 3, 2, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(20, 'Table 5', 4, 3, 2, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(21, 'Table 6', 4, 3, 2, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(22, 'Table 7', 4, 3, 2, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(23, 'Table 8', 4, 3, 2, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(24, 'Table 9', 4, 3, 2, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(25, 'Table 10', 4, 3, 2, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(26, 'Table 1', 4, 4, 2, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(27, 'Table 2', 4, 4, 2, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(28, 'Table 3', 4, 4, 2, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(29, 'Table 4', 4, 4, 2, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(30, 'Table 5', 4, 4, 2, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(31, 'Table 1', 4, 5, 3, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(32, 'Table 2', 4, 5, 3, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(33, 'Table 3', 4, 5, 3, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(34, 'Table 4', 4, 5, 3, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(35, 'Table 5', 4, 5, 3, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(36, 'Table 6', 4, 5, 3, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(37, 'Table 7', 4, 5, 3, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(38, 'Table 8', 4, 5, 3, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(39, 'Table 9', 4, 5, 3, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(40, 'Table 10', 4, 5, 3, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(41, 'Table 1', 4, 6, 3, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(42, 'Table 2', 4, 6, 3, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(43, 'Table 3', 4, 6, 3, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(44, 'Table 4', 4, 6, 3, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(45, 'Table 5', 4, 6, 3, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(46, 'Table 1', 4, 7, 4, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(47, 'Table 2', 4, 7, 4, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(48, 'Table 3', 4, 7, 4, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(49, 'Table 4', 4, 7, 4, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(50, 'Table 5', 4, 7, 4, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(51, 'Table 6', 4, 7, 4, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(52, 'Table 7', 4, 7, 4, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(53, 'Table 8', 4, 7, 4, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(54, 'Table 9', 4, 7, 4, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(55, 'Table 10', 4, 7, 4, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(56, 'Table 1', 4, 8, 4, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(57, 'Table 2', 4, 8, 4, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(58, 'Table 3', 4, 8, 4, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(59, 'Table 4', 4, 8, 4, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(60, 'Table 5', 4, 8, 4, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(61, 'Table 1', 4, 9, 5, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(62, 'Table 2', 4, 9, 5, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(63, 'Table 3', 4, 9, 5, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(64, 'Table 4', 4, 9, 5, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(65, 'Table 5', 4, 9, 5, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(66, 'Table 6', 4, 9, 5, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(67, 'Table 7', 4, 9, 5, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(68, 'Table 8', 4, 9, 5, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(69, 'Table 9', 4, 9, 5, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(70, 'Table 10', 4, 9, 5, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(71, 'Table 1', 4, 10, 5, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(72, 'Table 2', 4, 10, 5, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(73, 'Table 3', 4, 10, 5, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(74, 'Table 4', 4, 10, 5, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(75, 'Table 5', 4, 10, 5, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(76, 'Table 1', 4, 11, 6, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(77, 'Table 2', 4, 11, 6, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(78, 'Table 3', 4, 11, 6, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(79, 'Table 4', 4, 11, 6, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(80, 'Table 5', 4, 11, 6, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(81, 'Table 6', 4, 11, 6, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(82, 'Table 7', 4, 11, 6, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(83, 'Table 8', 4, 11, 6, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(84, 'Table 9', 4, 11, 6, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(85, 'Table 10', 4, 11, 6, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(86, 'Table 1', 4, 12, 6, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(87, 'Table 2', 4, 12, 6, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(88, 'Table 3', 4, 12, 6, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(89, 'Table 4', 4, 12, 6, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(90, 'Table 5', 4, 12, 6, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(91, 'Table 1', 4, 13, 7, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(92, 'Table 2', 4, 13, 7, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(93, 'Table 3', 4, 13, 7, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(94, 'Table 4', 4, 13, 7, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(95, 'Table 5', 4, 13, 7, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(96, 'Table 6', 4, 13, 7, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(97, 'Table 7', 4, 13, 7, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(98, 'Table 8', 4, 13, 7, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(99, 'Table 9', 4, 13, 7, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(100, 'Table 10', 4, 13, 7, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(101, 'Table 1', 4, 14, 7, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(102, 'Table 2', 4, 14, 7, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(103, 'Table 3', 4, 14, 7, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(104, 'Table 4', 4, 14, 7, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(105, 'Table 5', 4, 14, 7, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(106, 'Table 1', 4, 15, 8, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(107, 'Table 2', 4, 15, 8, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(108, 'Table 3', 4, 15, 8, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(109, 'Table 4', 4, 15, 8, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(110, 'Table 5', 4, 15, 8, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(111, 'Table 6', 4, 15, 8, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(112, 'Table 7', 4, 15, 8, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(113, 'Table 8', 4, 15, 8, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(114, 'Table 9', 4, 15, 8, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(115, 'Table 10', 4, 15, 8, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(116, 'Table 1', 4, 16, 8, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(117, 'Table 2', 4, 16, 8, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(118, 'Table 3', 4, 16, 8, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(119, 'Table 4', 4, 16, 8, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(120, 'Table 5', 4, 16, 8, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(121, 'Table 1', 4, 17, 9, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(122, 'Table 2', 4, 17, 9, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(123, 'Table 3', 4, 17, 9, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(124, 'Table 4', 4, 17, 9, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(125, 'Table 5', 4, 17, 9, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(126, 'Table 6', 4, 17, 9, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(127, 'Table 7', 4, 17, 9, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(128, 'Table 8', 4, 17, 9, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(129, 'Table 9', 4, 17, 9, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(130, 'Table 10', 4, 17, 9, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(131, 'Table 1', 4, 18, 9, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(132, 'Table 2', 4, 18, 9, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(133, 'Table 3', 4, 18, 9, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(134, 'Table 4', 4, 18, 9, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(135, 'Table 5', 4, 18, 9, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(136, 'Table 1', 4, 19, 10, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(137, 'Table 2', 4, 19, 10, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(138, 'Table 3', 4, 19, 10, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(139, 'Table 4', 4, 19, 10, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(140, 'Table 5', 4, 19, 10, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(141, 'Table 6', 4, 19, 10, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(142, 'Table 7', 4, 19, 10, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(143, 'Table 8', 4, 19, 10, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(144, 'Table 9', 4, 19, 10, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(145, 'Table 10', 4, 19, 10, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(146, 'Table 1', 4, 20, 10, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(147, 'Table 2', 4, 20, 10, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(148, 'Table 3', 4, 20, 10, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(149, 'Table 4', 4, 20, 10, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(150, 'Table 5', 4, 20, 10, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(151, 'Table 1', 4, 21, 11, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(152, 'Table 2', 4, 21, 11, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(153, 'Table 3', 4, 21, 11, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(154, 'Table 4', 4, 21, 11, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(155, 'Table 5', 4, 21, 11, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(156, 'Table 6', 4, 21, 11, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(157, 'Table 7', 4, 21, 11, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(158, 'Table 8', 4, 21, 11, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(159, 'Table 9', 4, 21, 11, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(160, 'Table 10', 4, 21, 11, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(161, 'Table 1', 4, 22, 11, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(162, 'Table 2', 4, 22, 11, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(163, 'Table 3', 4, 22, 11, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(164, 'Table 4', 4, 22, 11, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(165, 'Table 5', 4, 22, 11, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(166, 'Table 1', 4, 23, 12, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(167, 'Table 2', 4, 23, 12, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(168, 'Table 3', 4, 23, 12, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(169, 'Table 4', 4, 23, 12, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(170, 'Table 5', 4, 23, 12, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(171, 'Table 6', 4, 23, 12, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(172, 'Table 7', 4, 23, 12, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(173, 'Table 8', 4, 23, 12, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(174, 'Table 9', 4, 23, 12, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(175, 'Table 10', 4, 23, 12, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(176, 'Table 1', 4, 24, 12, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(177, 'Table 2', 4, 24, 12, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(178, 'Table 3', 4, 24, 12, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(179, 'Table 4', 4, 24, 12, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(180, 'Table 5', 4, 24, 12, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(181, 'Table 1', 4, 25, 13, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(182, 'Table 2', 4, 25, 13, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(183, 'Table 3', 4, 25, 13, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(184, 'Table 4', 4, 25, 13, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(185, 'Table 5', 4, 25, 13, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(186, 'Table 6', 4, 25, 13, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(187, 'Table 7', 4, 25, 13, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(188, 'Table 8', 4, 25, 13, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(189, 'Table 9', 4, 25, 13, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(190, 'Table 10', 4, 25, 13, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(191, 'Table 1', 4, 26, 13, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(192, 'Table 2', 4, 26, 13, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(193, 'Table 3', 4, 26, 13, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(194, 'Table 4', 4, 26, 13, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(195, 'Table 5', 4, 26, 13, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(196, 'Table 1', 4, 27, 14, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(197, 'Table 2', 4, 27, 14, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(198, 'Table 3', 4, 27, 14, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(199, 'Table 4', 4, 27, 14, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(200, 'Table 5', 4, 27, 14, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(201, 'Table 6', 4, 27, 14, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(202, 'Table 7', 4, 27, 14, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(203, 'Table 8', 4, 27, 14, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(204, 'Table 9', 4, 27, 14, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(205, 'Table 10', 4, 27, 14, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(206, 'Table 1', 4, 28, 14, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(207, 'Table 2', 4, 28, 14, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(208, 'Table 3', 4, 28, 14, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(209, 'Table 4', 4, 28, 14, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(210, 'Table 5', 4, 28, 14, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(211, 'Table 1', 4, 29, 15, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(212, 'Table 2', 4, 29, 15, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(213, 'Table 3', 4, 29, 15, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(214, 'Table 4', 4, 29, 15, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(215, 'Table 5', 4, 29, 15, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(216, 'Table 6', 4, 29, 15, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(217, 'Table 7', 4, 29, 15, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(218, 'Table 8', 4, 29, 15, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(219, 'Table 9', 4, 29, 15, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(220, 'Table 10', 4, 29, 15, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(221, 'Table 1', 4, 30, 15, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(222, 'Table 2', 4, 30, 15, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(223, 'Table 3', 4, 30, 15, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(224, 'Table 4', 4, 30, 15, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(225, 'Table 5', 4, 30, 15, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(226, 'Table 1', 4, 31, 16, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(227, 'Table 2', 4, 31, 16, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(228, 'Table 3', 4, 31, 16, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(229, 'Table 4', 4, 31, 16, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(230, 'Table 5', 4, 31, 16, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(231, 'Table 6', 4, 31, 16, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(232, 'Table 7', 4, 31, 16, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(233, 'Table 8', 4, 31, 16, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(234, 'Table 9', 4, 31, 16, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(235, 'Table 10', 4, 31, 16, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(236, 'Table 1', 4, 32, 16, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(237, 'Table 2', 4, 32, 16, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(238, 'Table 3', 4, 32, 16, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(239, 'Table 4', 4, 32, 16, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(240, 'Table 5', 4, 32, 16, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `google_id` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_id` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `verification_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `plan_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cancel_url` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `update_url` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checkout_id` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subscription_plan_id` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stripe_account` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `birth_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working` int(11) NOT NULL DEFAULT '1',
  `onorder` int(11) DEFAULT NULL,
  `numorders` int(11) NOT NULL DEFAULT '0',
  `rejectedorders` int(11) NOT NULL,
  `paypal_subscribtion_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_customer_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_mandate_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_percentage` decimal(6,4) NOT NULL DEFAULT '0.0000',
  `extra_billing_information` text COLLATE utf8mb4_unicode_ci,
  `mollie_subscribtion_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_subscribtion_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_trans_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `expotoken` text COLLATE utf8mb4_unicode_ci,
  `pm_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `google_id`, `fb_id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `phone`, `remember_token`, `created_at`, `updated_at`, `active`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `verification_code`, `phone_verified_at`, `plan_id`, `plan_status`, `cancel_url`, `update_url`, `checkout_id`, `subscription_plan_id`, `stripe_account`, `birth_date`, `lat`, `lng`, `working`, `onorder`, `numorders`, `rejectedorders`, `paypal_subscribtion_id`, `mollie_customer_id`, `mollie_mandate_id`, `tax_percentage`, `extra_billing_information`, `mollie_subscribtion_id`, `paystack_subscribtion_id`, `paystack_trans_id`, `restaurant_id`, `deleted_at`, `expotoken`, `pm_type`, `pm_last_four`) VALUES
(1, NULL, NULL, 'Admin Admin', 'foxiomleads@gmail.com', '2022-08-18 19:44:44', '$2y$10$wwhgjYPnk6yyHASEH96cTOaB..Rp3nOjutXjWFYjn9yXvrkAJpVlu', 'cTsTl4uZdLbF1hxqiTpa03eFUQ8bYA7TOVsNQMTvwX7M1PziSVW5KvzTqK8BSGi4S21EKO4SbjmcU7oZ', '', 'lLdo8IXMRdWUhmZviMknnNzNp26aMXo65B5oZ0bPuEP6d8LPn8AgYOxEKT7K', '2022-08-18 19:44:44', '2022-08-18 19:44:44', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, 'Demo Owner', 'owner@example.com', '2022-08-18 19:44:45', '$2y$10$lvP7PaARGqmvV/CWfRwvVeBBGyrnm/Q14Oa8Yh4hV80G2Dx7.kU32', 'xcXKk8E5V8dNWDBonmXJnpAIRpr2M6GMKpKLRf8PpDf1CVW05dfpD19UPxrpraKs9Jebz2MLK0tq27uH', '', NULL, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 1, NULL, NULL, NULL, NULL, NULL, NULL, 3, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, 'Demo Staff 1', 'staff@example.com', '2022-08-18 19:44:45', '$2y$10$tviYTw4yMFmH.wTBptdqp.gbTuAj4G.48.lYrXvvBVFTnsyYQ6GxW', 'imwqabCs9CxP15RLCiLLtSCzfQcgDkUWf5UwKBPWM8owkYsUdTO0N87AeZR568reJ3UrWpJpOpEOh1ak', '', NULL, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(4, NULL, NULL, 'Demo Staff 2', 'staff2_1@example.com', '2022-08-18 19:44:45', '$2y$10$XzdTrjdOMMEWFCCMXUpQ3uBvEoFbj1mkimF0VR563IJnMuH933ohK', '5vABVn0hOBhPy1eEJMrcMijRdbn7x1oLtYZoHMbxRDqVVOxg7ZFe6NLLTM78xwfH2dY8u2uShfujXFuT', '', NULL, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(5, NULL, NULL, 'Demo Staff 1', 'staff1_2@example.com', '2022-08-18 19:44:45', '$2y$10$JsKwdyt/QnjxDiSAz6tQ.OHL.DUtKe/eRuvQlWW3XUnW3.7ou3Dwe', '9BYFqOqcDVGavrBDin1QeEpMLNwP1TeGLudAmORHpAM2JfIlxpUX9iqL4pzixCFScNbaJunTAgCf494a', '', NULL, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL),
(6, NULL, NULL, 'Demo Staff 2', 'staff2_2@example.com', '2022-08-18 19:44:45', '$2y$10$oWdcaRWh.oIBKhQBMnGpguWu2iE5vxKsm9Q/XKcqC/.HQ37Jfh.NK', 'sMFMwunHMPpIcuPHyVf2fGODBlepnzCLetsO56i7DFmkbapr4DRb1yr34umYEUzWZgcGkROTXnT5s8Io', '', NULL, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL),
(7, NULL, NULL, 'Demo Staff 1', 'staff1_3@example.com', '2022-08-18 19:44:45', '$2y$10$.V29mxBScabSPPEDaCNFAeJuN06MVFGde0SikZ0NxGuFzfAIY5Ora', '893Cu6kGMCrsPOChBP1x2U1EGolvNAlA2D1xz7KD0Md4TRxI14CQquAzO9vHFs2J4QXTDw7Z2FqyAwrH', '', NULL, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(8, NULL, NULL, 'Demo Staff 2', 'staff2_3@example.com', '2022-08-18 19:44:45', '$2y$10$iUuCTywYge1bsxtfS1Q8j.eAkgh5AzIvmTTM8xXHcLVez4ZfsgM9y', 'ZSt3XTkTfUtUsSQbOs2dO82ZNhG0B1MTFQQAHtO9tS2QXK3CeS9235uGDvh51JzPWPtB86DpvHHwHkCm', '', NULL, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(9, NULL, NULL, 'Demo Staff 1', 'staff1_4@example.com', '2022-08-18 19:44:45', '$2y$10$48engzZjFfx2jFMOSjcnUuoeWzlZHd0xrC3SpkxuOMT1ByfTmMGCG', 'xt46Ymfdcnw33IygL8LxQD0h4NixeHng202qUdN6AjkdL5e3W2etRiAioY7LjRlDCaYXtW2C9C0BHSD9', '', NULL, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(10, NULL, NULL, 'Demo Staff 2', 'staff2_4@example.com', '2022-08-18 19:44:46', '$2y$10$4oyCaPeJ1wnPfVLv4.TtEuzLTgi9pc5iWcNZ92hOvAMOfYAxxe1RK', 'jsM8tI1Ogmlz4iiBn9osDyHew5AuDrARZP67Tc9GTFCoTTQsxpyZjrgLdIhpdqNxwEliXw48IWEhLG1Z', '', NULL, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(11, NULL, NULL, 'Demo Staff 1', 'staff1_5@example.com', '2022-08-18 19:44:46', '$2y$10$MymSsEm6rgJ0fkIW..U5euKmIwBChkr4JARSFu4Toqsuc9eEIxHke', '84LFRoFycY9pqmXPaNURGpzh4YM67XuVQXAKWPfhL0PoLY16q9fGkXkxyOE84Li5fYSoAENWeRxEVgwy', '', NULL, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(12, NULL, NULL, 'Demo Staff 2', 'staff2_5@example.com', '2022-08-18 19:44:46', '$2y$10$FOULDQqo4WnvskcNxd3rme8XzCvgyHtUkfusiv4vKO.iB00rAZaxe', 'WsVtHjSwUqLSXFoCtkO2DttJdNcnsZpKiszZL1pNGQfZZLMXtElccmfBMMLmP1pMLXQx0x0rYGBnYrMn', '', NULL, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(13, NULL, NULL, 'Demo Staff 1', 'staff1_6@example.com', '2022-08-18 19:44:46', '$2y$10$bVn9PIJZtBHQR48GnvTnwOfCcjfWI8Np8xvqlba9xukgrLr1Vmyo2', 'uThd3IVJ9QtHsHLBveEES1qVLfeov89jThICunrRlrpGwrldIfp0Vmp34c5Pa15b4rSfbh7yDHieRWsJ', '', NULL, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL),
(14, NULL, NULL, 'Demo Staff 2', 'staff2_6@example.com', '2022-08-18 19:44:46', '$2y$10$4H.Od78s4Fvy1WsdGHwHye36ZnBw5WHKIh9sGFgbOPRgMlmvAnO1.', 'gsoQNfhrzltC9Xuh3HAJog8ENWz5GrDdbjVLtOioZa2HNh3I4KFqMjCBpaW4WdxyUnQOtbPFCtWl11Ep', '', NULL, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL),
(15, NULL, NULL, 'Demo Staff 1', 'staff1_7@example.com', '2022-08-18 19:44:46', '$2y$10$ORIyTFpemXPgB1aA1aA0JOrpb23QakfKXcPYmKCw2r0ADXTUJ42XO', '5Aykly9nFpoYEcnMxbIjwBx61iC1isWZoedEEhWHbbkc3sB3j1SeVFzleHg7dPiA6RH1PSjH2Qcm1MdY', '', NULL, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL),
(16, NULL, NULL, 'Demo Staff 2', 'staff2_7@example.com', '2022-08-18 19:44:47', '$2y$10$j.kw/8kCIqVaKn5apYoFs.WOzB70i29cBOoJObSG/Cy9ZijuZMJKO', 'J8sU5MzsYkh0rP8kcIiMgKkgTPUX9WC3VaYltUCRedsrBC443cq7RBMUlqkRRWzuxZLYBsl0hwinTs9B', '', NULL, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL),
(17, NULL, NULL, 'Demo Staff 1', 'staff1_8@example.com', '2022-08-18 19:44:47', '$2y$10$YON66poZm4Pj/aYxsNQKGOrG.dL88olhS/AtKdf9kHFj34NDwdR0W', 'weQg2yQFFvSukw3vbvkf0F4lS0X50ThBzDV67xpJBr0rMO0loDSuLpWVL9iERO3zE4HGhPTJBtQlIQzO', '', NULL, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL),
(18, NULL, NULL, 'Demo Staff 2', 'staff2_8@example.com', '2022-08-18 19:44:47', '$2y$10$zcniNOePRzQLo3cWN5n6p.3iRBRQjE0ng3bwl380q.BuxaRqCiC42', 'EIOQmgzes18BLQXpfoaLObI0nyqZq9VovXf4OxLlJZNaH6BK1wmiTqMxVY5M2dsJuolHejYuDWS3Z6hs', '', NULL, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL),
(19, NULL, NULL, 'Demo Staff 1', 'staff1_9@example.com', '2022-08-18 19:44:47', '$2y$10$z0FVwOZfVW0dDDy00nnzV.5iSjepcYXRsU2Z2ghFGAQXQTThfpjse', '9chGrB3n51s0c9gKtPrrLhG7NiIF6DryrOmLTgseMRUlWRSbpRH7ECIfcpc5akZYeu1LpaW7Xux74XVd', '', NULL, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL),
(20, NULL, NULL, 'Demo Staff 2', 'staff2_9@example.com', '2022-08-18 19:44:47', '$2y$10$fQBlwdC2JY5TXCKlbqKRz.asN0eU/.c5IS.foquFDr.7P2c/xn9GG', 'uImP59z84fc61nyRYEQKZG5tp5o6bJMMPBofF75hH8MXdrmZpRygVSlKvbZw9gSCtypprf3NyZ41KFLu', '', NULL, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL),
(21, NULL, NULL, 'Demo Staff 1', 'staff1_10@example.com', '2022-08-18 19:44:47', '$2y$10$OZ9x4oaYqQwoFCGd/d5ClOsXYPLchylThzLHbOTMAn1WFufnhIHX2', 'xkErSgdP9kGvxmb65cLLM7SUX2h9Ay2P9ukZDh4HAN3OBUSya3RvTqGiPRwDYPpnE2mqKs0gmweCNuGO', '', NULL, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL),
(22, NULL, NULL, 'Demo Staff 2', 'staff2_10@example.com', '2022-08-18 19:44:47', '$2y$10$pqKqPdCyg4cVnyrmykJkdu17kh0ERF2V41QhlYYSmigf67VzA0f5.', 'tEAFN5QSonJFd7DzxdSojifT5cskiARaqIKkUNyrrN9O2h2ocILrevCwUb9bcnrirk7ne49WdJVGbwpy', '', NULL, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL),
(23, NULL, NULL, 'Demo Staff 1', 'staff1_11@example.com', '2022-08-18 19:44:47', '$2y$10$x3X1fSq.6ISgUvKRz02upuht2yozyd/XpwivcU8wZp1/nozyObI7a', 'p7TbBKmZScLVOXTshYECAVmoGgmKU5l0yH176qFHe7teLniY5O9jJ9k1id3mHIEsYNPr2eHsI3OLZq14', '', NULL, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL),
(24, NULL, NULL, 'Demo Staff 2', 'staff2_11@example.com', '2022-08-18 19:44:48', '$2y$10$10APBxsuFOKViF5iauJfx.1yY93inXvC/ajEfvfaJrpaRDomx42xO', 'cAyQXpJF9KbDiVL3K6a1ZAbapN9SzT3cdLY9GyDmM3x2M28BnTdHKepGTrpHVNoNwzyrHVRrsiL8Ro2D', '', NULL, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL),
(25, NULL, NULL, 'Demo Staff 1', 'staff1_12@example.com', '2022-08-18 19:44:48', '$2y$10$QevsTGagPteQrgxW9jel8uRq9jxMtDRqXVIllKdCHZNvuWbaaaIeW', 'mFpYTyG5Bg9ai00ttCo1rF5squGk1JRSB0eWeR0PLUidCNLS3xOsinUKM5FzTg5kNW0tBObA89wgW5j1', '', NULL, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL),
(26, NULL, NULL, 'Demo Staff 2', 'staff2_12@example.com', '2022-08-18 19:44:48', '$2y$10$RQgQnRltLOqkZVcum7MFaunXHrgzTfkE80G4nePvAiOWVYpVgcXtO', 'M99hVSMFEq1wi61NFVU24zcdvvz6nUPxvG4Bw2yNXCQOMeRsegQRFYvjyegQGbsfpaawb4YTCuobkus4', '', NULL, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL),
(27, NULL, NULL, 'Demo Staff 1', 'staff1_13@example.com', '2022-08-18 19:44:48', '$2y$10$mLr5NuslEFeVCAxDnaiqn.E8h4Kwram1tEi0h4uKumuCd05EZEo6.', 'loyCztmoUfYYnn3OU4JOqUPnw4vOsFWjpSDUZFvfta8YtQ00wBOb0CwF8P8Bn6FR2yfObxoyijnHmd2o', '', NULL, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL),
(28, NULL, NULL, 'Demo Staff 2', 'staff2_13@example.com', '2022-08-18 19:44:48', '$2y$10$pPHbuM3JzQPio2R5KD2N/eSAPLFF0Q46pTAhc8houL.hOK246GT8G', '9Z82RZv6PYO3vOJ8oumb1Ivypc0yiYhP41si2FrbLOZ41bZWbi8gwLwfrVqoc8mCNc71je1jqXKvmmFn', '', NULL, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL),
(29, NULL, NULL, 'Demo Staff 1', 'staff1_14@example.com', '2022-08-18 19:44:49', '$2y$10$AtpBLj9v3l.6h8CuMjDCL.GiW0BxKZ7/UetCcO9cx55OEgdogv2IG', 'vPl8hGau9DE4EXxhBr6gZ5vQK96ZVNXllfIx9Q26wHDo2bOJpYYmAiVJIJnlkZlLQdReaEqsholUH7xw', '', NULL, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL),
(30, NULL, NULL, 'Demo Staff 2', 'staff2_14@example.com', '2022-08-18 19:44:49', '$2y$10$e4EUY60l1ozey6tftHQYreEcEm0END9WUYNmYaEhsjfn1nvbs417y', 'a9YsIbwW5B6dUWymGjQgOjIvNhUtU5dALhs9cAQxIz15W87gsqixHnT6qwhEX8pFsFiy9EfUV2aJii3E', '', NULL, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL),
(31, NULL, NULL, 'Demo Staff 1', 'staff1_15@example.com', '2022-08-18 19:44:49', '$2y$10$rePHidviWJE62eoHnw8BrembzWMdIlknKrFiIaJS4o0.gwA34FL/q', 'hsyQSqzW24TAKfsVvCBxVcoUK2soeScTTvHa5vjq53fmqaEmUQGtPAHXt4zjciADfMTXeSO1i7ongoF6', '', NULL, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL),
(32, NULL, NULL, 'Demo Staff 2', 'staff2_15@example.com', '2022-08-18 19:44:49', '$2y$10$F./xU8Vl2Lhi02o6nka2FeEl0Dy2BgbgSrXJ1Z6m6hr1cJ0yxIXVy', 'e6ugEeh8EThDsZX5RpNN8Mk8ckzRz2gD1b4x9LJqqCEUUAXpxUWUZzJRiH7HoSqp69TYK3oJUs4r9lw5', '', NULL, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL),
(33, NULL, NULL, 'Demo Staff 1', 'staff1_16@example.com', '2022-08-18 19:44:49', '$2y$10$wyzKChwjW29FfVXM8VArhOfakZoQ3mYbnMW3gcIIpI5eUyfSPxjQO', 'MTcU2E201u2AHtE3e9Ew3QMMAriSb86tjWd6AevmjylQRYssTNd4XBDCrDI3EAC5ScHAB7eHoWcxrhxL', '', NULL, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL),
(34, NULL, NULL, 'Demo Staff 2', 'staff2_16@example.com', '2022-08-18 19:44:49', '$2y$10$ZkK5TYpygcnG8gZk7KUhfuESYOv99Mm2dqB.0lcAHKvpzX8GdUqai', 'Wm7iKIjipH00Mr5Gyt8U1qQk25zlTMIQtSXe5JDC8bCQr3lMj2DZHc8hJEGu4pR8jX0XjxJiEM2Si7KX', '', NULL, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL),
(35, NULL, NULL, 'Jamsheer', 'jamsheer@qrkuwait.com', NULL, '$2y$10$Uh84c5Qzzp/w31.pmViNeeqB6ocM9Lsdhn.69eM3kgKjiSWFdXAcS', 'J8ZPgYfXHmPhnqwSKnz84D91e4CS1s9FW2RW7M5613MxecMNy0490ORmm9I8MWTZhvDvu7EJn8M327uk', '+96512345678', NULL, '2022-08-19 00:23:27', '2022-08-19 00:26:21', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL),
(36, NULL, NULL, 'Jibu', 'foxiomgulf@gmail.com', NULL, '$2y$10$gjsm7jarEN2DgUXF90gaV./Xe8I9jpXh2QTRunDvEUjxxifmETeqe', 'wJBuptxURsyNjfBK5kA38JcVo0aQZE8Ls7aMf1PQzn03B2YWAeDnrrNSqUjVpkA9fwxj9WXc5BOJLY3I', '+96599754133', NULL, '2022-08-19 00:33:32', '2022-08-19 00:33:32', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, NULL, NULL, 'Amy', 'jamsheerpanat@gmail.com', NULL, '$2y$10$D6R.2lbDyZFhppFT9EoQ2Olcxns8yiVhf4bkTmXvhN9ov1Xold4ce', 'gR5k8k0sjHTa3BKIRhLxscXbInFGumkNw93mp7RlAv7DIB9gsTn0YxzHV1SFdUJAwhzKQTmD0BaJlhEa', '+96599754133', NULL, '2022-08-19 22:41:04', '2022-08-19 23:58:13', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL),
(38, NULL, NULL, 'Foxiom Gulf', 'jamal9495@gmail.com', NULL, '$2y$10$1rM.Y86yGfKa03RMAmm.w.T4cJNpTH2Qb0/wfqiCx9FupYPNjDsdW', 'hSoPBEjrt9snNfmA5RK1tr2VxUYqm4MCBhnqGRECgEuf7ndMUxof9aQNu6Q794uHdShcuvga92hIP1Hf', '+96566011953', 's1XxQlBReXJanmZly5za3t2YrKHNjbLOarBNs515iban4kMH2gHf35x4MD2F', '2022-08-22 03:40:46', '2022-08-22 03:43:43', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL),
(39, NULL, NULL, 'Mohan Singh', 'rajdhaniegaila50@gmail.com', NULL, '$2y$10$SAjTzYHX.W6GiQ88NopaiurAeIbQPgT3C6FLXcxthxNqsC1uyToMC', 'PPAwag3zkI6aBbplC64U3FW49pTIsPas6mkKcWsF0aTvqdo16kISAkFMIUNDpvVr92FZX7GlswjxqQQf', '+96566182569', 'DCGDTE1C6WuCuVc5Gicn2zLpxGN0B0thQqiBrsbghwQxY3kIkUnzCZ20JiBQ', '2022-08-25 00:05:38', '2022-09-02 23:02:43', 1, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'set_by_admin', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_has_categories`
--

CREATE TABLE `user_has_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `options` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  `enable_qty` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_system` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `price`, `options`, `image`, `qty`, `enable_qty`, `order`, `item_id`, `created_at`, `updated_at`, `deleted_at`, `is_system`) VALUES
(1, 10.99, '{\"1\":\"small\",\"2\":\"hand-tosset\"}', '', 0, 0, 0, 7, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(2, 11.99, '{\"1\":\"small\",\"2\":\"thin-crust\"}', '', 0, 0, 0, 7, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(3, 12.99, '{\"1\":\"small\",\"2\":\"double-decker\"}', '', 0, 0, 0, 7, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(4, 13.99, '{\"1\":\"medium\",\"2\":\"hand-tosset\"}', '', 0, 0, 0, 7, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(5, 14.99, '{\"1\":\"medium\",\"2\":\"thin-crust\"}', '', 0, 0, 0, 7, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(6, 15.99, '{\"1\":\"medium\",\"2\":\"double-decker\"}', '', 0, 0, 0, 7, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(7, 16.99, '{\"1\":\"large\",\"2\":\"hand-tosset\"}', '', 0, 0, 0, 7, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(8, 17.99, '{\"1\":\"large\",\"2\":\"thin-crust\"}', '', 0, 0, 0, 7, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(9, 18.99, '{\"1\":\"large\",\"2\":\"double-decker\"}', '', 0, 0, 0, 7, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(10, 19.99, '{\"1\":\"family\",\"2\":\"hand-tosset\"}', '', 0, 0, 0, 7, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(11, 20.99, '{\"1\":\"family\",\"2\":\"thin-crust\"}', '', 0, 0, 0, 7, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(12, 21.99, '{\"1\":\"family\",\"2\":\"double-decker\"}', '', 0, 0, 0, 7, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(13, 14.99, '{\"3\":\"small\",\"4\":\"hand-tosset\"}', '', 0, 0, 0, 8, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(14, 15.99, '{\"3\":\"small\",\"4\":\"thin-crust\"}', '', 0, 0, 0, 8, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(15, 16.99, '{\"3\":\"small\",\"4\":\"double-decker\"}', '', 0, 0, 0, 8, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(16, 17.99, '{\"3\":\"medium\",\"4\":\"hand-tosset\"}', '', 0, 0, 0, 8, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(17, 18.99, '{\"3\":\"medium\",\"4\":\"thin-crust\"}', '', 0, 0, 0, 8, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(18, 19.99, '{\"3\":\"medium\",\"4\":\"double-decker\"}', '', 0, 0, 0, 8, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(19, 20.99, '{\"3\":\"large\",\"4\":\"hand-tosset\"}', '', 0, 0, 0, 8, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(20, 21.99, '{\"3\":\"large\",\"4\":\"thin-crust\"}', '', 0, 0, 0, 8, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(21, 22.99, '{\"3\":\"large\",\"4\":\"double-decker\"}', '', 0, 0, 0, 8, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(22, 23.99, '{\"3\":\"family\",\"4\":\"hand-tosset\"}', '', 0, 0, 0, 8, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(23, 24.99, '{\"3\":\"family\",\"4\":\"thin-crust\"}', '', 0, 0, 0, 8, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(24, 25.99, '{\"3\":\"family\",\"4\":\"double-decker\"}', '', 0, 0, 0, 8, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(25, 14.99, '{\"5\":\"small\",\"6\":\"hand-tosset\"}', '', 0, 0, 0, 9, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(26, 15.99, '{\"5\":\"small\",\"6\":\"thin-crust\"}', '', 0, 0, 0, 9, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(27, 16.99, '{\"5\":\"small\",\"6\":\"double-decker\"}', '', 0, 0, 0, 9, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(28, 17.99, '{\"5\":\"medium\",\"6\":\"hand-tosset\"}', '', 0, 0, 0, 9, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(29, 18.99, '{\"5\":\"medium\",\"6\":\"thin-crust\"}', '', 0, 0, 0, 9, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(30, 19.99, '{\"5\":\"medium\",\"6\":\"double-decker\"}', '', 0, 0, 0, 9, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(31, 20.99, '{\"5\":\"large\",\"6\":\"hand-tosset\"}', '', 0, 0, 0, 9, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(32, 21.99, '{\"5\":\"large\",\"6\":\"thin-crust\"}', '', 0, 0, 0, 9, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(33, 22.99, '{\"5\":\"large\",\"6\":\"double-decker\"}', '', 0, 0, 0, 9, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(34, 23.99, '{\"5\":\"family\",\"6\":\"hand-tosset\"}', '', 0, 0, 0, 9, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(35, 24.99, '{\"5\":\"family\",\"6\":\"thin-crust\"}', '', 0, 0, 0, 9, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(36, 25.99, '{\"5\":\"family\",\"6\":\"double-decker\"}', '', 0, 0, 0, 9, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(37, 14.99, '{\"7\":\"small\",\"8\":\"hand-tosset\"}', '', 0, 0, 0, 10, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(38, 15.99, '{\"7\":\"small\",\"8\":\"thin-crust\"}', '', 0, 0, 0, 10, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(39, 16.99, '{\"7\":\"small\",\"8\":\"double-decker\"}', '', 0, 0, 0, 10, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(40, 17.99, '{\"7\":\"medium\",\"8\":\"hand-tosset\"}', '', 0, 0, 0, 10, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(41, 18.99, '{\"7\":\"medium\",\"8\":\"thin-crust\"}', '', 0, 0, 0, 10, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(42, 19.99, '{\"7\":\"medium\",\"8\":\"double-decker\"}', '', 0, 0, 0, 10, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(43, 20.99, '{\"7\":\"large\",\"8\":\"hand-tosset\"}', '', 0, 0, 0, 10, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(44, 21.99, '{\"7\":\"large\",\"8\":\"thin-crust\"}', '', 0, 0, 0, 10, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(45, 22.99, '{\"7\":\"large\",\"8\":\"double-decker\"}', '', 0, 0, 0, 10, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(46, 23.99, '{\"7\":\"family\",\"8\":\"hand-tosset\"}', '', 0, 0, 0, 10, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(47, 24.99, '{\"7\":\"family\",\"8\":\"thin-crust\"}', '', 0, 0, 0, 10, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(48, 25.99, '{\"7\":\"family\",\"8\":\"double-decker\"}', '', 0, 0, 0, 10, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(49, 14.99, '{\"9\":\"small\",\"10\":\"hand-tosset\"}', '', 0, 0, 0, 11, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(50, 15.99, '{\"9\":\"small\",\"10\":\"thin-crust\"}', '', 0, 0, 0, 11, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(51, 16.99, '{\"9\":\"small\",\"10\":\"double-decker\"}', '', 0, 0, 0, 11, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(52, 17.99, '{\"9\":\"medium\",\"10\":\"hand-tosset\"}', '', 0, 0, 0, 11, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(53, 18.99, '{\"9\":\"medium\",\"10\":\"thin-crust\"}', '', 0, 0, 0, 11, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(54, 19.99, '{\"9\":\"medium\",\"10\":\"double-decker\"}', '', 0, 0, 0, 11, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(55, 20.99, '{\"9\":\"large\",\"10\":\"hand-tosset\"}', '', 0, 0, 0, 11, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(56, 21.99, '{\"9\":\"large\",\"10\":\"thin-crust\"}', '', 0, 0, 0, 11, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(57, 22.99, '{\"9\":\"large\",\"10\":\"double-decker\"}', '', 0, 0, 0, 11, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(58, 23.99, '{\"9\":\"family\",\"10\":\"hand-tosset\"}', '', 0, 0, 0, 11, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(59, 24.99, '{\"9\":\"family\",\"10\":\"thin-crust\"}', '', 0, 0, 0, 11, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(60, 25.99, '{\"9\":\"family\",\"10\":\"double-decker\"}', '', 0, 0, 0, 11, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(61, 14.99, '{\"11\":\"small\",\"12\":\"hand-tosset\"}', '', 0, 0, 0, 12, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(62, 15.99, '{\"11\":\"small\",\"12\":\"thin-crust\"}', '', 0, 0, 0, 12, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(63, 16.99, '{\"11\":\"small\",\"12\":\"double-decker\"}', '', 0, 0, 0, 12, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(64, 17.99, '{\"11\":\"medium\",\"12\":\"hand-tosset\"}', '', 0, 0, 0, 12, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(65, 18.99, '{\"11\":\"medium\",\"12\":\"thin-crust\"}', '', 0, 0, 0, 12, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(66, 19.99, '{\"11\":\"medium\",\"12\":\"double-decker\"}', '', 0, 0, 0, 12, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(67, 20.99, '{\"11\":\"large\",\"12\":\"hand-tosset\"}', '', 0, 0, 0, 12, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(68, 21.99, '{\"11\":\"large\",\"12\":\"thin-crust\"}', '', 0, 0, 0, 12, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(69, 22.99, '{\"11\":\"large\",\"12\":\"double-decker\"}', '', 0, 0, 0, 12, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(70, 23.99, '{\"11\":\"family\",\"12\":\"hand-tosset\"}', '', 0, 0, 0, 12, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(71, 24.99, '{\"11\":\"family\",\"12\":\"thin-crust\"}', '', 0, 0, 0, 12, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(72, 25.99, '{\"11\":\"family\",\"12\":\"double-decker\"}', '', 0, 0, 0, 12, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(73, 10.49, '{\"13\":\"small\",\"14\":\"hand-tosset\"}', '', 0, 0, 0, 13, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(74, 11.49, '{\"13\":\"small\",\"14\":\"thin-crust\"}', '', 0, 0, 0, 13, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(75, 12.49, '{\"13\":\"small\",\"14\":\"double-decker\"}', '', 0, 0, 0, 13, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(76, 13.49, '{\"13\":\"medium\",\"14\":\"hand-tosset\"}', '', 0, 0, 0, 13, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(77, 14.49, '{\"13\":\"medium\",\"14\":\"thin-crust\"}', '', 0, 0, 0, 13, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(78, 15.49, '{\"13\":\"medium\",\"14\":\"double-decker\"}', '', 0, 0, 0, 13, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(79, 16.49, '{\"13\":\"large\",\"14\":\"hand-tosset\"}', '', 0, 0, 0, 13, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(80, 17.49, '{\"13\":\"large\",\"14\":\"thin-crust\"}', '', 0, 0, 0, 13, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(81, 18.49, '{\"13\":\"large\",\"14\":\"double-decker\"}', '', 0, 0, 0, 13, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(82, 19.49, '{\"13\":\"family\",\"14\":\"hand-tosset\"}', '', 0, 0, 0, 13, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(83, 20.49, '{\"13\":\"family\",\"14\":\"thin-crust\"}', '', 0, 0, 0, 13, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(84, 21.49, '{\"13\":\"family\",\"14\":\"double-decker\"}', '', 0, 0, 0, 13, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(85, 39.99, '{\"15\":\"small\",\"16\":\"hand-tosset\"}', '', 0, 0, 0, 14, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(86, 40.99, '{\"15\":\"small\",\"16\":\"thin-crust\"}', '', 0, 0, 0, 14, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(87, 41.99, '{\"15\":\"small\",\"16\":\"double-decker\"}', '', 0, 0, 0, 14, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(88, 42.99, '{\"15\":\"medium\",\"16\":\"hand-tosset\"}', '', 0, 0, 0, 14, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(89, 43.99, '{\"15\":\"medium\",\"16\":\"thin-crust\"}', '', 0, 0, 0, 14, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(90, 44.99, '{\"15\":\"medium\",\"16\":\"double-decker\"}', '', 0, 0, 0, 14, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(91, 45.99, '{\"15\":\"large\",\"16\":\"hand-tosset\"}', '', 0, 0, 0, 14, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(92, 46.99, '{\"15\":\"large\",\"16\":\"thin-crust\"}', '', 0, 0, 0, 14, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(93, 47.99, '{\"15\":\"large\",\"16\":\"double-decker\"}', '', 0, 0, 0, 14, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(94, 48.99, '{\"15\":\"family\",\"16\":\"hand-tosset\"}', '', 0, 0, 0, 14, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(95, 49.99, '{\"15\":\"family\",\"16\":\"thin-crust\"}', '', 0, 0, 0, 14, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(96, 50.99, '{\"15\":\"family\",\"16\":\"double-decker\"}', '', 0, 0, 0, 14, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(97, 14.99, '{\"17\":\"small\",\"18\":\"hand-tosset\"}', '', 0, 0, 0, 15, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(98, 15.99, '{\"17\":\"small\",\"18\":\"thin-crust\"}', '', 0, 0, 0, 15, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(99, 16.99, '{\"17\":\"small\",\"18\":\"double-decker\"}', '', 0, 0, 0, 15, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(100, 17.99, '{\"17\":\"medium\",\"18\":\"hand-tosset\"}', '', 0, 0, 0, 15, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(101, 18.99, '{\"17\":\"medium\",\"18\":\"thin-crust\"}', '', 0, 0, 0, 15, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(102, 19.99, '{\"17\":\"medium\",\"18\":\"double-decker\"}', '', 0, 0, 0, 15, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(103, 20.99, '{\"17\":\"large\",\"18\":\"hand-tosset\"}', '', 0, 0, 0, 15, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(104, 21.99, '{\"17\":\"large\",\"18\":\"thin-crust\"}', '', 0, 0, 0, 15, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(105, 22.99, '{\"17\":\"large\",\"18\":\"double-decker\"}', '', 0, 0, 0, 15, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(106, 23.99, '{\"17\":\"family\",\"18\":\"hand-tosset\"}', '', 0, 0, 0, 15, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(107, 24.99, '{\"17\":\"family\",\"18\":\"thin-crust\"}', '', 0, 0, 0, 15, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(108, 25.99, '{\"17\":\"family\",\"18\":\"double-decker\"}', '', 0, 0, 0, 15, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(109, 14.99, '{\"19\":\"small\",\"20\":\"hand-tosset\"}', '', 0, 0, 0, 16, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(110, 15.99, '{\"19\":\"small\",\"20\":\"thin-crust\"}', '', 0, 0, 0, 16, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(111, 16.99, '{\"19\":\"small\",\"20\":\"double-decker\"}', '', 0, 0, 0, 16, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(112, 17.99, '{\"19\":\"medium\",\"20\":\"hand-tosset\"}', '', 0, 0, 0, 16, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(113, 18.99, '{\"19\":\"medium\",\"20\":\"thin-crust\"}', '', 0, 0, 0, 16, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(114, 19.99, '{\"19\":\"medium\",\"20\":\"double-decker\"}', '', 0, 0, 0, 16, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(115, 20.99, '{\"19\":\"large\",\"20\":\"hand-tosset\"}', '', 0, 0, 0, 16, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(116, 21.99, '{\"19\":\"large\",\"20\":\"thin-crust\"}', '', 0, 0, 0, 16, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(117, 22.99, '{\"19\":\"large\",\"20\":\"double-decker\"}', '', 0, 0, 0, 16, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(118, 23.99, '{\"19\":\"family\",\"20\":\"hand-tosset\"}', '', 0, 0, 0, 16, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(119, 24.99, '{\"19\":\"family\",\"20\":\"thin-crust\"}', '', 0, 0, 0, 16, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(120, 25.99, '{\"19\":\"family\",\"20\":\"double-decker\"}', '', 0, 0, 0, 16, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(121, 14.99, '{\"21\":\"small\",\"22\":\"hand-tosset\"}', '', 0, 0, 0, 17, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(122, 15.99, '{\"21\":\"small\",\"22\":\"thin-crust\"}', '', 0, 0, 0, 17, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(123, 16.99, '{\"21\":\"small\",\"22\":\"double-decker\"}', '', 0, 0, 0, 17, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(124, 17.99, '{\"21\":\"medium\",\"22\":\"hand-tosset\"}', '', 0, 0, 0, 17, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(125, 18.99, '{\"21\":\"medium\",\"22\":\"thin-crust\"}', '', 0, 0, 0, 17, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(126, 19.99, '{\"21\":\"medium\",\"22\":\"double-decker\"}', '', 0, 0, 0, 17, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(127, 20.99, '{\"21\":\"large\",\"22\":\"hand-tosset\"}', '', 0, 0, 0, 17, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(128, 21.99, '{\"21\":\"large\",\"22\":\"thin-crust\"}', '', 0, 0, 0, 17, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(129, 22.99, '{\"21\":\"large\",\"22\":\"double-decker\"}', '', 0, 0, 0, 17, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(130, 23.99, '{\"21\":\"family\",\"22\":\"hand-tosset\"}', '', 0, 0, 0, 17, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(131, 24.99, '{\"21\":\"family\",\"22\":\"thin-crust\"}', '', 0, 0, 0, 17, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(132, 25.99, '{\"21\":\"family\",\"22\":\"double-decker\"}', '', 0, 0, 0, 17, '2022-08-18 19:44:45', '2022-08-18 19:44:45', NULL, 0),
(133, 10.99, '{\"23\":\"small\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(134, 11.99, '{\"23\":\"small\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(135, 12.99, '{\"23\":\"small\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(136, 13.99, '{\"23\":\"medium\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(137, 14.99, '{\"23\":\"medium\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(138, 15.99, '{\"23\":\"medium\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(139, 16.99, '{\"23\":\"large\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(140, 17.99, '{\"23\":\"large\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(141, 18.99, '{\"23\":\"large\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(142, 19.99, '{\"23\":\"family\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(143, 20.99, '{\"23\":\"family\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(144, 21.99, '{\"23\":\"family\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(145, 14.99, '{\"25\":\"small\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(146, 15.99, '{\"25\":\"small\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(147, 16.99, '{\"25\":\"small\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(148, 17.99, '{\"25\":\"medium\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(149, 18.99, '{\"25\":\"medium\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(150, 19.99, '{\"25\":\"medium\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(151, 20.99, '{\"25\":\"large\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(152, 21.99, '{\"25\":\"large\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(153, 22.99, '{\"25\":\"large\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(154, 23.99, '{\"25\":\"family\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(155, 24.99, '{\"25\":\"family\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(156, 25.99, '{\"25\":\"family\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(157, 14.99, '{\"27\":\"small\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(158, 15.99, '{\"27\":\"small\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(159, 16.99, '{\"27\":\"small\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(160, 17.99, '{\"27\":\"medium\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(161, 18.99, '{\"27\":\"medium\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(162, 19.99, '{\"27\":\"medium\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(163, 20.99, '{\"27\":\"large\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(164, 21.99, '{\"27\":\"large\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(165, 22.99, '{\"27\":\"large\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(166, 23.99, '{\"27\":\"family\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(167, 24.99, '{\"27\":\"family\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(168, 25.99, '{\"27\":\"family\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(169, 14.99, '{\"29\":\"small\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(170, 15.99, '{\"29\":\"small\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(171, 16.99, '{\"29\":\"small\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(172, 17.99, '{\"29\":\"medium\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(173, 18.99, '{\"29\":\"medium\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(174, 19.99, '{\"29\":\"medium\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(175, 20.99, '{\"29\":\"large\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(176, 21.99, '{\"29\":\"large\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(177, 22.99, '{\"29\":\"large\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(178, 23.99, '{\"29\":\"family\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(179, 24.99, '{\"29\":\"family\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(180, 25.99, '{\"29\":\"family\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(181, 14.99, '{\"31\":\"small\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(182, 15.99, '{\"31\":\"small\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(183, 16.99, '{\"31\":\"small\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(184, 17.99, '{\"31\":\"medium\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(185, 18.99, '{\"31\":\"medium\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(186, 19.99, '{\"31\":\"medium\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(187, 20.99, '{\"31\":\"large\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(188, 21.99, '{\"31\":\"large\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(189, 22.99, '{\"31\":\"large\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(190, 23.99, '{\"31\":\"family\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(191, 24.99, '{\"31\":\"family\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(192, 25.99, '{\"31\":\"family\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(193, 14.99, '{\"33\":\"small\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(194, 15.99, '{\"33\":\"small\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(195, 16.99, '{\"33\":\"small\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(196, 17.99, '{\"33\":\"medium\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(197, 18.99, '{\"33\":\"medium\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(198, 19.99, '{\"33\":\"medium\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(199, 20.99, '{\"33\":\"large\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(200, 21.99, '{\"33\":\"large\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(201, 22.99, '{\"33\":\"large\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(202, 23.99, '{\"33\":\"family\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(203, 24.99, '{\"33\":\"family\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(204, 25.99, '{\"33\":\"family\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(205, 10.49, '{\"35\":\"small\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(206, 11.49, '{\"35\":\"small\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(207, 12.49, '{\"35\":\"small\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(208, 13.49, '{\"35\":\"medium\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(209, 14.49, '{\"35\":\"medium\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(210, 15.49, '{\"35\":\"medium\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(211, 16.49, '{\"35\":\"large\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(212, 17.49, '{\"35\":\"large\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(213, 18.49, '{\"35\":\"large\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(214, 19.49, '{\"35\":\"family\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(215, 20.49, '{\"35\":\"family\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(216, 21.49, '{\"35\":\"family\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(217, 39.99, '{\"37\":\"small\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(218, 40.99, '{\"37\":\"small\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(219, 41.99, '{\"37\":\"small\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(220, 42.99, '{\"37\":\"medium\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(221, 43.99, '{\"37\":\"medium\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(222, 44.99, '{\"37\":\"medium\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(223, 45.99, '{\"37\":\"large\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(224, 46.99, '{\"37\":\"large\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(225, 47.99, '{\"37\":\"large\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(226, 48.99, '{\"37\":\"family\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(227, 49.99, '{\"37\":\"family\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(228, 50.99, '{\"37\":\"family\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(229, 14.99, '{\"39\":\"small\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(230, 15.99, '{\"39\":\"small\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(231, 16.99, '{\"39\":\"small\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(232, 17.99, '{\"39\":\"medium\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(233, 18.99, '{\"39\":\"medium\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(234, 19.99, '{\"39\":\"medium\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(235, 20.99, '{\"39\":\"large\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(236, 21.99, '{\"39\":\"large\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(237, 22.99, '{\"39\":\"large\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(238, 23.99, '{\"39\":\"family\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(239, 24.99, '{\"39\":\"family\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(240, 25.99, '{\"39\":\"family\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(241, 14.99, '{\"41\":\"small\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(242, 15.99, '{\"41\":\"small\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(243, 16.99, '{\"41\":\"small\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(244, 17.99, '{\"41\":\"medium\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(245, 18.99, '{\"41\":\"medium\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(246, 19.99, '{\"41\":\"medium\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(247, 20.99, '{\"41\":\"large\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(248, 21.99, '{\"41\":\"large\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(249, 22.99, '{\"41\":\"large\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(250, 23.99, '{\"41\":\"family\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(251, 24.99, '{\"41\":\"family\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(252, 25.99, '{\"41\":\"family\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(253, 14.99, '{\"43\":\"small\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(254, 15.99, '{\"43\":\"small\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(255, 16.99, '{\"43\":\"small\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(256, 17.99, '{\"43\":\"medium\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(257, 18.99, '{\"43\":\"medium\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(258, 19.99, '{\"43\":\"medium\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(259, 20.99, '{\"43\":\"large\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(260, 21.99, '{\"43\":\"large\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(261, 22.99, '{\"43\":\"large\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(262, 23.99, '{\"43\":\"family\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(263, 24.99, '{\"43\":\"family\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(264, 25.99, '{\"43\":\"family\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(265, 10.99, '{\"45\":\"small\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 101, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(266, 11.99, '{\"45\":\"small\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 101, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(267, 12.99, '{\"45\":\"small\",\"46\":\"double-decker\"}', '', 0, 0, 0, 101, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(268, 13.99, '{\"45\":\"medium\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 101, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(269, 14.99, '{\"45\":\"medium\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 101, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(270, 15.99, '{\"45\":\"medium\",\"46\":\"double-decker\"}', '', 0, 0, 0, 101, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(271, 16.99, '{\"45\":\"large\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 101, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(272, 17.99, '{\"45\":\"large\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 101, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(273, 18.99, '{\"45\":\"large\",\"46\":\"double-decker\"}', '', 0, 0, 0, 101, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(274, 19.99, '{\"45\":\"family\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 101, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(275, 20.99, '{\"45\":\"family\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 101, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(276, 21.99, '{\"45\":\"family\",\"46\":\"double-decker\"}', '', 0, 0, 0, 101, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(277, 14.99, '{\"47\":\"small\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 102, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(278, 15.99, '{\"47\":\"small\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 102, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(279, 16.99, '{\"47\":\"small\",\"48\":\"double-decker\"}', '', 0, 0, 0, 102, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(280, 17.99, '{\"47\":\"medium\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 102, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(281, 18.99, '{\"47\":\"medium\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 102, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(282, 19.99, '{\"47\":\"medium\",\"48\":\"double-decker\"}', '', 0, 0, 0, 102, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(283, 20.99, '{\"47\":\"large\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 102, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(284, 21.99, '{\"47\":\"large\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 102, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(285, 22.99, '{\"47\":\"large\",\"48\":\"double-decker\"}', '', 0, 0, 0, 102, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(286, 23.99, '{\"47\":\"family\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 102, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(287, 24.99, '{\"47\":\"family\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 102, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(288, 25.99, '{\"47\":\"family\",\"48\":\"double-decker\"}', '', 0, 0, 0, 102, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(289, 14.99, '{\"49\":\"small\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 103, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(290, 15.99, '{\"49\":\"small\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 103, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(291, 16.99, '{\"49\":\"small\",\"50\":\"double-decker\"}', '', 0, 0, 0, 103, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(292, 17.99, '{\"49\":\"medium\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 103, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(293, 18.99, '{\"49\":\"medium\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 103, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(294, 19.99, '{\"49\":\"medium\",\"50\":\"double-decker\"}', '', 0, 0, 0, 103, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(295, 20.99, '{\"49\":\"large\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 103, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(296, 21.99, '{\"49\":\"large\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 103, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(297, 22.99, '{\"49\":\"large\",\"50\":\"double-decker\"}', '', 0, 0, 0, 103, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(298, 23.99, '{\"49\":\"family\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 103, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(299, 24.99, '{\"49\":\"family\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 103, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(300, 25.99, '{\"49\":\"family\",\"50\":\"double-decker\"}', '', 0, 0, 0, 103, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(301, 14.99, '{\"51\":\"small\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 104, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(302, 15.99, '{\"51\":\"small\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 104, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(303, 16.99, '{\"51\":\"small\",\"52\":\"double-decker\"}', '', 0, 0, 0, 104, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(304, 17.99, '{\"51\":\"medium\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 104, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(305, 18.99, '{\"51\":\"medium\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 104, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(306, 19.99, '{\"51\":\"medium\",\"52\":\"double-decker\"}', '', 0, 0, 0, 104, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(307, 20.99, '{\"51\":\"large\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 104, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(308, 21.99, '{\"51\":\"large\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 104, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(309, 22.99, '{\"51\":\"large\",\"52\":\"double-decker\"}', '', 0, 0, 0, 104, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(310, 23.99, '{\"51\":\"family\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 104, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(311, 24.99, '{\"51\":\"family\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 104, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(312, 25.99, '{\"51\":\"family\",\"52\":\"double-decker\"}', '', 0, 0, 0, 104, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(313, 14.99, '{\"53\":\"small\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 105, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(314, 15.99, '{\"53\":\"small\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 105, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(315, 16.99, '{\"53\":\"small\",\"54\":\"double-decker\"}', '', 0, 0, 0, 105, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(316, 17.99, '{\"53\":\"medium\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 105, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(317, 18.99, '{\"53\":\"medium\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 105, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(318, 19.99, '{\"53\":\"medium\",\"54\":\"double-decker\"}', '', 0, 0, 0, 105, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(319, 20.99, '{\"53\":\"large\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 105, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(320, 21.99, '{\"53\":\"large\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 105, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(321, 22.99, '{\"53\":\"large\",\"54\":\"double-decker\"}', '', 0, 0, 0, 105, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(322, 23.99, '{\"53\":\"family\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 105, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(323, 24.99, '{\"53\":\"family\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 105, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(324, 25.99, '{\"53\":\"family\",\"54\":\"double-decker\"}', '', 0, 0, 0, 105, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(325, 14.99, '{\"55\":\"small\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 106, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(326, 15.99, '{\"55\":\"small\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 106, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(327, 16.99, '{\"55\":\"small\",\"56\":\"double-decker\"}', '', 0, 0, 0, 106, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(328, 17.99, '{\"55\":\"medium\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 106, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(329, 18.99, '{\"55\":\"medium\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 106, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(330, 19.99, '{\"55\":\"medium\",\"56\":\"double-decker\"}', '', 0, 0, 0, 106, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(331, 20.99, '{\"55\":\"large\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 106, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(332, 21.99, '{\"55\":\"large\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 106, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(333, 22.99, '{\"55\":\"large\",\"56\":\"double-decker\"}', '', 0, 0, 0, 106, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(334, 23.99, '{\"55\":\"family\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 106, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(335, 24.99, '{\"55\":\"family\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 106, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(336, 25.99, '{\"55\":\"family\",\"56\":\"double-decker\"}', '', 0, 0, 0, 106, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(337, 10.49, '{\"57\":\"small\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 107, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(338, 11.49, '{\"57\":\"small\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 107, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(339, 12.49, '{\"57\":\"small\",\"58\":\"double-decker\"}', '', 0, 0, 0, 107, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(340, 13.49, '{\"57\":\"medium\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 107, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(341, 14.49, '{\"57\":\"medium\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 107, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(342, 15.49, '{\"57\":\"medium\",\"58\":\"double-decker\"}', '', 0, 0, 0, 107, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(343, 16.49, '{\"57\":\"large\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 107, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(344, 17.49, '{\"57\":\"large\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 107, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(345, 18.49, '{\"57\":\"large\",\"58\":\"double-decker\"}', '', 0, 0, 0, 107, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(346, 19.49, '{\"57\":\"family\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 107, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(347, 20.49, '{\"57\":\"family\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 107, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(348, 21.49, '{\"57\":\"family\",\"58\":\"double-decker\"}', '', 0, 0, 0, 107, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(349, 39.99, '{\"59\":\"small\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 108, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(350, 40.99, '{\"59\":\"small\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 108, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(351, 41.99, '{\"59\":\"small\",\"60\":\"double-decker\"}', '', 0, 0, 0, 108, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(352, 42.99, '{\"59\":\"medium\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 108, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(353, 43.99, '{\"59\":\"medium\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 108, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(354, 44.99, '{\"59\":\"medium\",\"60\":\"double-decker\"}', '', 0, 0, 0, 108, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(355, 45.99, '{\"59\":\"large\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 108, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(356, 46.99, '{\"59\":\"large\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 108, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(357, 47.99, '{\"59\":\"large\",\"60\":\"double-decker\"}', '', 0, 0, 0, 108, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(358, 48.99, '{\"59\":\"family\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 108, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(359, 49.99, '{\"59\":\"family\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 108, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(360, 50.99, '{\"59\":\"family\",\"60\":\"double-decker\"}', '', 0, 0, 0, 108, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(361, 14.99, '{\"61\":\"small\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 109, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(362, 15.99, '{\"61\":\"small\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 109, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(363, 16.99, '{\"61\":\"small\",\"62\":\"double-decker\"}', '', 0, 0, 0, 109, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(364, 17.99, '{\"61\":\"medium\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 109, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(365, 18.99, '{\"61\":\"medium\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 109, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(366, 19.99, '{\"61\":\"medium\",\"62\":\"double-decker\"}', '', 0, 0, 0, 109, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(367, 20.99, '{\"61\":\"large\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 109, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(368, 21.99, '{\"61\":\"large\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 109, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(369, 22.99, '{\"61\":\"large\",\"62\":\"double-decker\"}', '', 0, 0, 0, 109, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(370, 23.99, '{\"61\":\"family\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 109, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(371, 24.99, '{\"61\":\"family\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 109, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(372, 25.99, '{\"61\":\"family\",\"62\":\"double-decker\"}', '', 0, 0, 0, 109, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(373, 14.99, '{\"63\":\"small\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 110, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(374, 15.99, '{\"63\":\"small\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 110, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(375, 16.99, '{\"63\":\"small\",\"64\":\"double-decker\"}', '', 0, 0, 0, 110, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(376, 17.99, '{\"63\":\"medium\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 110, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(377, 18.99, '{\"63\":\"medium\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 110, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(378, 19.99, '{\"63\":\"medium\",\"64\":\"double-decker\"}', '', 0, 0, 0, 110, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(379, 20.99, '{\"63\":\"large\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 110, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(380, 21.99, '{\"63\":\"large\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 110, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(381, 22.99, '{\"63\":\"large\",\"64\":\"double-decker\"}', '', 0, 0, 0, 110, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(382, 23.99, '{\"63\":\"family\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 110, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(383, 24.99, '{\"63\":\"family\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 110, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(384, 25.99, '{\"63\":\"family\",\"64\":\"double-decker\"}', '', 0, 0, 0, 110, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0);
INSERT INTO `variants` (`id`, `price`, `options`, `image`, `qty`, `enable_qty`, `order`, `item_id`, `created_at`, `updated_at`, `deleted_at`, `is_system`) VALUES
(385, 14.99, '{\"65\":\"small\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 111, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(386, 15.99, '{\"65\":\"small\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 111, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(387, 16.99, '{\"65\":\"small\",\"66\":\"double-decker\"}', '', 0, 0, 0, 111, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(388, 17.99, '{\"65\":\"medium\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 111, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(389, 18.99, '{\"65\":\"medium\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 111, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(390, 19.99, '{\"65\":\"medium\",\"66\":\"double-decker\"}', '', 0, 0, 0, 111, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(391, 20.99, '{\"65\":\"large\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 111, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(392, 21.99, '{\"65\":\"large\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 111, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(393, 22.99, '{\"65\":\"large\",\"66\":\"double-decker\"}', '', 0, 0, 0, 111, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(394, 23.99, '{\"65\":\"family\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 111, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(395, 24.99, '{\"65\":\"family\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 111, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(396, 25.99, '{\"65\":\"family\",\"66\":\"double-decker\"}', '', 0, 0, 0, 111, '2022-08-18 19:44:46', '2022-08-18 19:44:46', NULL, 0),
(397, 10.99, '{\"67\":\"small\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 152, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(398, 11.99, '{\"67\":\"small\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 152, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(399, 12.99, '{\"67\":\"small\",\"68\":\"double-decker\"}', '', 0, 0, 0, 152, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(400, 13.99, '{\"67\":\"medium\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 152, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(401, 14.99, '{\"67\":\"medium\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 152, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(402, 15.99, '{\"67\":\"medium\",\"68\":\"double-decker\"}', '', 0, 0, 0, 152, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(403, 16.99, '{\"67\":\"large\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 152, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(404, 17.99, '{\"67\":\"large\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 152, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(405, 18.99, '{\"67\":\"large\",\"68\":\"double-decker\"}', '', 0, 0, 0, 152, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(406, 19.99, '{\"67\":\"family\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 152, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(407, 20.99, '{\"67\":\"family\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 152, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(408, 21.99, '{\"67\":\"family\",\"68\":\"double-decker\"}', '', 0, 0, 0, 152, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(409, 14.99, '{\"69\":\"small\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 153, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(410, 15.99, '{\"69\":\"small\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 153, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(411, 16.99, '{\"69\":\"small\",\"70\":\"double-decker\"}', '', 0, 0, 0, 153, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(412, 17.99, '{\"69\":\"medium\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 153, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(413, 18.99, '{\"69\":\"medium\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 153, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(414, 19.99, '{\"69\":\"medium\",\"70\":\"double-decker\"}', '', 0, 0, 0, 153, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(415, 20.99, '{\"69\":\"large\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 153, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(416, 21.99, '{\"69\":\"large\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 153, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(417, 22.99, '{\"69\":\"large\",\"70\":\"double-decker\"}', '', 0, 0, 0, 153, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(418, 23.99, '{\"69\":\"family\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 153, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(419, 24.99, '{\"69\":\"family\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 153, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(420, 25.99, '{\"69\":\"family\",\"70\":\"double-decker\"}', '', 0, 0, 0, 153, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(421, 14.99, '{\"71\":\"small\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 154, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(422, 15.99, '{\"71\":\"small\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 154, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(423, 16.99, '{\"71\":\"small\",\"72\":\"double-decker\"}', '', 0, 0, 0, 154, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(424, 17.99, '{\"71\":\"medium\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 154, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(425, 18.99, '{\"71\":\"medium\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 154, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(426, 19.99, '{\"71\":\"medium\",\"72\":\"double-decker\"}', '', 0, 0, 0, 154, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(427, 20.99, '{\"71\":\"large\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 154, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(428, 21.99, '{\"71\":\"large\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 154, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(429, 22.99, '{\"71\":\"large\",\"72\":\"double-decker\"}', '', 0, 0, 0, 154, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(430, 23.99, '{\"71\":\"family\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 154, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(431, 24.99, '{\"71\":\"family\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 154, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(432, 25.99, '{\"71\":\"family\",\"72\":\"double-decker\"}', '', 0, 0, 0, 154, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(433, 14.99, '{\"73\":\"small\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 155, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(434, 15.99, '{\"73\":\"small\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 155, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(435, 16.99, '{\"73\":\"small\",\"74\":\"double-decker\"}', '', 0, 0, 0, 155, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(436, 17.99, '{\"73\":\"medium\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 155, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(437, 18.99, '{\"73\":\"medium\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 155, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(438, 19.99, '{\"73\":\"medium\",\"74\":\"double-decker\"}', '', 0, 0, 0, 155, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(439, 20.99, '{\"73\":\"large\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 155, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(440, 21.99, '{\"73\":\"large\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 155, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(441, 22.99, '{\"73\":\"large\",\"74\":\"double-decker\"}', '', 0, 0, 0, 155, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(442, 23.99, '{\"73\":\"family\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 155, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(443, 24.99, '{\"73\":\"family\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 155, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(444, 25.99, '{\"73\":\"family\",\"74\":\"double-decker\"}', '', 0, 0, 0, 155, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(445, 14.99, '{\"75\":\"small\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 156, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(446, 15.99, '{\"75\":\"small\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 156, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(447, 16.99, '{\"75\":\"small\",\"76\":\"double-decker\"}', '', 0, 0, 0, 156, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(448, 17.99, '{\"75\":\"medium\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 156, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(449, 18.99, '{\"75\":\"medium\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 156, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(450, 19.99, '{\"75\":\"medium\",\"76\":\"double-decker\"}', '', 0, 0, 0, 156, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(451, 20.99, '{\"75\":\"large\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 156, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(452, 21.99, '{\"75\":\"large\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 156, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(453, 22.99, '{\"75\":\"large\",\"76\":\"double-decker\"}', '', 0, 0, 0, 156, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(454, 23.99, '{\"75\":\"family\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 156, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(455, 24.99, '{\"75\":\"family\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 156, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(456, 25.99, '{\"75\":\"family\",\"76\":\"double-decker\"}', '', 0, 0, 0, 156, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(457, 14.99, '{\"77\":\"small\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 157, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(458, 15.99, '{\"77\":\"small\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 157, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(459, 16.99, '{\"77\":\"small\",\"78\":\"double-decker\"}', '', 0, 0, 0, 157, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(460, 17.99, '{\"77\":\"medium\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 157, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(461, 18.99, '{\"77\":\"medium\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 157, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(462, 19.99, '{\"77\":\"medium\",\"78\":\"double-decker\"}', '', 0, 0, 0, 157, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(463, 20.99, '{\"77\":\"large\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 157, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(464, 21.99, '{\"77\":\"large\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 157, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(465, 22.99, '{\"77\":\"large\",\"78\":\"double-decker\"}', '', 0, 0, 0, 157, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(466, 23.99, '{\"77\":\"family\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 157, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(467, 24.99, '{\"77\":\"family\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 157, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(468, 25.99, '{\"77\":\"family\",\"78\":\"double-decker\"}', '', 0, 0, 0, 157, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(469, 10.49, '{\"79\":\"small\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 158, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(470, 11.49, '{\"79\":\"small\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 158, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(471, 12.49, '{\"79\":\"small\",\"80\":\"double-decker\"}', '', 0, 0, 0, 158, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(472, 13.49, '{\"79\":\"medium\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 158, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(473, 14.49, '{\"79\":\"medium\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 158, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(474, 15.49, '{\"79\":\"medium\",\"80\":\"double-decker\"}', '', 0, 0, 0, 158, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(475, 16.49, '{\"79\":\"large\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 158, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(476, 17.49, '{\"79\":\"large\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 158, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(477, 18.49, '{\"79\":\"large\",\"80\":\"double-decker\"}', '', 0, 0, 0, 158, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(478, 19.49, '{\"79\":\"family\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 158, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(479, 20.49, '{\"79\":\"family\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 158, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(480, 21.49, '{\"79\":\"family\",\"80\":\"double-decker\"}', '', 0, 0, 0, 158, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(481, 39.99, '{\"81\":\"small\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 159, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(482, 40.99, '{\"81\":\"small\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 159, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(483, 41.99, '{\"81\":\"small\",\"82\":\"double-decker\"}', '', 0, 0, 0, 159, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(484, 42.99, '{\"81\":\"medium\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 159, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(485, 43.99, '{\"81\":\"medium\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 159, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(486, 44.99, '{\"81\":\"medium\",\"82\":\"double-decker\"}', '', 0, 0, 0, 159, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(487, 45.99, '{\"81\":\"large\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 159, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(488, 46.99, '{\"81\":\"large\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 159, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(489, 47.99, '{\"81\":\"large\",\"82\":\"double-decker\"}', '', 0, 0, 0, 159, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(490, 48.99, '{\"81\":\"family\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 159, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(491, 49.99, '{\"81\":\"family\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 159, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(492, 50.99, '{\"81\":\"family\",\"82\":\"double-decker\"}', '', 0, 0, 0, 159, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(493, 14.99, '{\"83\":\"small\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 160, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(494, 15.99, '{\"83\":\"small\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 160, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(495, 16.99, '{\"83\":\"small\",\"84\":\"double-decker\"}', '', 0, 0, 0, 160, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(496, 17.99, '{\"83\":\"medium\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 160, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(497, 18.99, '{\"83\":\"medium\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 160, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(498, 19.99, '{\"83\":\"medium\",\"84\":\"double-decker\"}', '', 0, 0, 0, 160, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(499, 20.99, '{\"83\":\"large\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 160, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(500, 21.99, '{\"83\":\"large\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 160, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(501, 22.99, '{\"83\":\"large\",\"84\":\"double-decker\"}', '', 0, 0, 0, 160, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(502, 23.99, '{\"83\":\"family\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 160, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(503, 24.99, '{\"83\":\"family\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 160, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(504, 25.99, '{\"83\":\"family\",\"84\":\"double-decker\"}', '', 0, 0, 0, 160, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(505, 14.99, '{\"85\":\"small\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 161, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(506, 15.99, '{\"85\":\"small\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 161, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(507, 16.99, '{\"85\":\"small\",\"86\":\"double-decker\"}', '', 0, 0, 0, 161, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(508, 17.99, '{\"85\":\"medium\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 161, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(509, 18.99, '{\"85\":\"medium\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 161, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(510, 19.99, '{\"85\":\"medium\",\"86\":\"double-decker\"}', '', 0, 0, 0, 161, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(511, 20.99, '{\"85\":\"large\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 161, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(512, 21.99, '{\"85\":\"large\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 161, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(513, 22.99, '{\"85\":\"large\",\"86\":\"double-decker\"}', '', 0, 0, 0, 161, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(514, 23.99, '{\"85\":\"family\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 161, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(515, 24.99, '{\"85\":\"family\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 161, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(516, 25.99, '{\"85\":\"family\",\"86\":\"double-decker\"}', '', 0, 0, 0, 161, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(517, 14.99, '{\"87\":\"small\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 162, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(518, 15.99, '{\"87\":\"small\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 162, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(519, 16.99, '{\"87\":\"small\",\"88\":\"double-decker\"}', '', 0, 0, 0, 162, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(520, 17.99, '{\"87\":\"medium\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 162, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(521, 18.99, '{\"87\":\"medium\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 162, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(522, 19.99, '{\"87\":\"medium\",\"88\":\"double-decker\"}', '', 0, 0, 0, 162, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(523, 20.99, '{\"87\":\"large\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 162, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(524, 21.99, '{\"87\":\"large\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 162, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(525, 22.99, '{\"87\":\"large\",\"88\":\"double-decker\"}', '', 0, 0, 0, 162, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(526, 23.99, '{\"87\":\"family\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 162, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(527, 24.99, '{\"87\":\"family\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 162, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(528, 25.99, '{\"87\":\"family\",\"88\":\"double-decker\"}', '', 0, 0, 0, 162, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(529, 10.99, '{\"89\":\"small\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 186, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(530, 11.99, '{\"89\":\"small\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 186, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(531, 12.99, '{\"89\":\"small\",\"90\":\"double-decker\"}', '', 0, 0, 0, 186, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(532, 13.99, '{\"89\":\"medium\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 186, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(533, 14.99, '{\"89\":\"medium\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 186, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(534, 15.99, '{\"89\":\"medium\",\"90\":\"double-decker\"}', '', 0, 0, 0, 186, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(535, 16.99, '{\"89\":\"large\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 186, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(536, 17.99, '{\"89\":\"large\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 186, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(537, 18.99, '{\"89\":\"large\",\"90\":\"double-decker\"}', '', 0, 0, 0, 186, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(538, 19.99, '{\"89\":\"family\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 186, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(539, 20.99, '{\"89\":\"family\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 186, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(540, 21.99, '{\"89\":\"family\",\"90\":\"double-decker\"}', '', 0, 0, 0, 186, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(541, 14.99, '{\"91\":\"small\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 187, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(542, 15.99, '{\"91\":\"small\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 187, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(543, 16.99, '{\"91\":\"small\",\"92\":\"double-decker\"}', '', 0, 0, 0, 187, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(544, 17.99, '{\"91\":\"medium\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 187, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(545, 18.99, '{\"91\":\"medium\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 187, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(546, 19.99, '{\"91\":\"medium\",\"92\":\"double-decker\"}', '', 0, 0, 0, 187, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(547, 20.99, '{\"91\":\"large\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 187, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(548, 21.99, '{\"91\":\"large\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 187, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(549, 22.99, '{\"91\":\"large\",\"92\":\"double-decker\"}', '', 0, 0, 0, 187, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(550, 23.99, '{\"91\":\"family\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 187, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(551, 24.99, '{\"91\":\"family\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 187, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(552, 25.99, '{\"91\":\"family\",\"92\":\"double-decker\"}', '', 0, 0, 0, 187, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(553, 14.99, '{\"93\":\"small\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 188, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(554, 15.99, '{\"93\":\"small\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 188, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(555, 16.99, '{\"93\":\"small\",\"94\":\"double-decker\"}', '', 0, 0, 0, 188, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(556, 17.99, '{\"93\":\"medium\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 188, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(557, 18.99, '{\"93\":\"medium\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 188, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(558, 19.99, '{\"93\":\"medium\",\"94\":\"double-decker\"}', '', 0, 0, 0, 188, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(559, 20.99, '{\"93\":\"large\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 188, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(560, 21.99, '{\"93\":\"large\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 188, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(561, 22.99, '{\"93\":\"large\",\"94\":\"double-decker\"}', '', 0, 0, 0, 188, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(562, 23.99, '{\"93\":\"family\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 188, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(563, 24.99, '{\"93\":\"family\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 188, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(564, 25.99, '{\"93\":\"family\",\"94\":\"double-decker\"}', '', 0, 0, 0, 188, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(565, 14.99, '{\"95\":\"small\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 189, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(566, 15.99, '{\"95\":\"small\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 189, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(567, 16.99, '{\"95\":\"small\",\"96\":\"double-decker\"}', '', 0, 0, 0, 189, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(568, 17.99, '{\"95\":\"medium\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 189, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(569, 18.99, '{\"95\":\"medium\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 189, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(570, 19.99, '{\"95\":\"medium\",\"96\":\"double-decker\"}', '', 0, 0, 0, 189, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(571, 20.99, '{\"95\":\"large\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 189, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(572, 21.99, '{\"95\":\"large\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 189, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(573, 22.99, '{\"95\":\"large\",\"96\":\"double-decker\"}', '', 0, 0, 0, 189, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(574, 23.99, '{\"95\":\"family\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 189, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(575, 24.99, '{\"95\":\"family\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 189, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(576, 25.99, '{\"95\":\"family\",\"96\":\"double-decker\"}', '', 0, 0, 0, 189, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(577, 14.99, '{\"97\":\"small\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 190, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(578, 15.99, '{\"97\":\"small\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 190, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(579, 16.99, '{\"97\":\"small\",\"98\":\"double-decker\"}', '', 0, 0, 0, 190, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(580, 17.99, '{\"97\":\"medium\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 190, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(581, 18.99, '{\"97\":\"medium\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 190, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(582, 19.99, '{\"97\":\"medium\",\"98\":\"double-decker\"}', '', 0, 0, 0, 190, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(583, 20.99, '{\"97\":\"large\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 190, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(584, 21.99, '{\"97\":\"large\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 190, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(585, 22.99, '{\"97\":\"large\",\"98\":\"double-decker\"}', '', 0, 0, 0, 190, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(586, 23.99, '{\"97\":\"family\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 190, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(587, 24.99, '{\"97\":\"family\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 190, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(588, 25.99, '{\"97\":\"family\",\"98\":\"double-decker\"}', '', 0, 0, 0, 190, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(589, 14.99, '{\"99\":\"small\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 191, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(590, 15.99, '{\"99\":\"small\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 191, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(591, 16.99, '{\"99\":\"small\",\"100\":\"double-decker\"}', '', 0, 0, 0, 191, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(592, 17.99, '{\"99\":\"medium\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 191, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(593, 18.99, '{\"99\":\"medium\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 191, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(594, 19.99, '{\"99\":\"medium\",\"100\":\"double-decker\"}', '', 0, 0, 0, 191, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(595, 20.99, '{\"99\":\"large\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 191, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(596, 21.99, '{\"99\":\"large\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 191, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(597, 22.99, '{\"99\":\"large\",\"100\":\"double-decker\"}', '', 0, 0, 0, 191, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(598, 23.99, '{\"99\":\"family\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 191, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(599, 24.99, '{\"99\":\"family\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 191, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(600, 25.99, '{\"99\":\"family\",\"100\":\"double-decker\"}', '', 0, 0, 0, 191, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(601, 10.49, '{\"101\":\"small\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 192, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(602, 11.49, '{\"101\":\"small\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 192, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(603, 12.49, '{\"101\":\"small\",\"102\":\"double-decker\"}', '', 0, 0, 0, 192, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(604, 13.49, '{\"101\":\"medium\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 192, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(605, 14.49, '{\"101\":\"medium\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 192, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(606, 15.49, '{\"101\":\"medium\",\"102\":\"double-decker\"}', '', 0, 0, 0, 192, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(607, 16.49, '{\"101\":\"large\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 192, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(608, 17.49, '{\"101\":\"large\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 192, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(609, 18.49, '{\"101\":\"large\",\"102\":\"double-decker\"}', '', 0, 0, 0, 192, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(610, 19.49, '{\"101\":\"family\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 192, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(611, 20.49, '{\"101\":\"family\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 192, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(612, 21.49, '{\"101\":\"family\",\"102\":\"double-decker\"}', '', 0, 0, 0, 192, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(613, 39.99, '{\"103\":\"small\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 193, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(614, 40.99, '{\"103\":\"small\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 193, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(615, 41.99, '{\"103\":\"small\",\"104\":\"double-decker\"}', '', 0, 0, 0, 193, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(616, 42.99, '{\"103\":\"medium\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 193, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(617, 43.99, '{\"103\":\"medium\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 193, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(618, 44.99, '{\"103\":\"medium\",\"104\":\"double-decker\"}', '', 0, 0, 0, 193, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(619, 45.99, '{\"103\":\"large\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 193, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(620, 46.99, '{\"103\":\"large\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 193, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(621, 47.99, '{\"103\":\"large\",\"104\":\"double-decker\"}', '', 0, 0, 0, 193, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(622, 48.99, '{\"103\":\"family\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 193, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(623, 49.99, '{\"103\":\"family\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 193, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(624, 50.99, '{\"103\":\"family\",\"104\":\"double-decker\"}', '', 0, 0, 0, 193, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(625, 14.99, '{\"105\":\"small\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 194, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(626, 15.99, '{\"105\":\"small\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 194, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(627, 16.99, '{\"105\":\"small\",\"106\":\"double-decker\"}', '', 0, 0, 0, 194, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(628, 17.99, '{\"105\":\"medium\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 194, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(629, 18.99, '{\"105\":\"medium\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 194, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(630, 19.99, '{\"105\":\"medium\",\"106\":\"double-decker\"}', '', 0, 0, 0, 194, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(631, 20.99, '{\"105\":\"large\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 194, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(632, 21.99, '{\"105\":\"large\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 194, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(633, 22.99, '{\"105\":\"large\",\"106\":\"double-decker\"}', '', 0, 0, 0, 194, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(634, 23.99, '{\"105\":\"family\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 194, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(635, 24.99, '{\"105\":\"family\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 194, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(636, 25.99, '{\"105\":\"family\",\"106\":\"double-decker\"}', '', 0, 0, 0, 194, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(637, 14.99, '{\"107\":\"small\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 195, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(638, 15.99, '{\"107\":\"small\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 195, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(639, 16.99, '{\"107\":\"small\",\"108\":\"double-decker\"}', '', 0, 0, 0, 195, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(640, 17.99, '{\"107\":\"medium\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 195, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(641, 18.99, '{\"107\":\"medium\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 195, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(642, 19.99, '{\"107\":\"medium\",\"108\":\"double-decker\"}', '', 0, 0, 0, 195, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(643, 20.99, '{\"107\":\"large\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 195, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(644, 21.99, '{\"107\":\"large\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 195, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(645, 22.99, '{\"107\":\"large\",\"108\":\"double-decker\"}', '', 0, 0, 0, 195, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(646, 23.99, '{\"107\":\"family\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 195, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(647, 24.99, '{\"107\":\"family\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 195, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(648, 25.99, '{\"107\":\"family\",\"108\":\"double-decker\"}', '', 0, 0, 0, 195, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(649, 14.99, '{\"109\":\"small\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 196, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(650, 15.99, '{\"109\":\"small\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 196, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(651, 16.99, '{\"109\":\"small\",\"110\":\"double-decker\"}', '', 0, 0, 0, 196, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(652, 17.99, '{\"109\":\"medium\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 196, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(653, 18.99, '{\"109\":\"medium\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 196, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(654, 19.99, '{\"109\":\"medium\",\"110\":\"double-decker\"}', '', 0, 0, 0, 196, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(655, 20.99, '{\"109\":\"large\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 196, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(656, 21.99, '{\"109\":\"large\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 196, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(657, 22.99, '{\"109\":\"large\",\"110\":\"double-decker\"}', '', 0, 0, 0, 196, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(658, 23.99, '{\"109\":\"family\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 196, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(659, 24.99, '{\"109\":\"family\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 196, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(660, 25.99, '{\"109\":\"family\",\"110\":\"double-decker\"}', '', 0, 0, 0, 196, '2022-08-18 19:44:47', '2022-08-18 19:44:47', NULL, 0),
(661, 10.99, '{\"111\":\"small\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 237, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(662, 11.99, '{\"111\":\"small\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 237, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(663, 12.99, '{\"111\":\"small\",\"112\":\"double-decker\"}', '', 0, 0, 0, 237, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(664, 13.99, '{\"111\":\"medium\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 237, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(665, 14.99, '{\"111\":\"medium\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 237, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(666, 15.99, '{\"111\":\"medium\",\"112\":\"double-decker\"}', '', 0, 0, 0, 237, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(667, 16.99, '{\"111\":\"large\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 237, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(668, 17.99, '{\"111\":\"large\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 237, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(669, 18.99, '{\"111\":\"large\",\"112\":\"double-decker\"}', '', 0, 0, 0, 237, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(670, 19.99, '{\"111\":\"family\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 237, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(671, 20.99, '{\"111\":\"family\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 237, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(672, 21.99, '{\"111\":\"family\",\"112\":\"double-decker\"}', '', 0, 0, 0, 237, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(673, 14.99, '{\"113\":\"small\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 238, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(674, 15.99, '{\"113\":\"small\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 238, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(675, 16.99, '{\"113\":\"small\",\"114\":\"double-decker\"}', '', 0, 0, 0, 238, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(676, 17.99, '{\"113\":\"medium\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 238, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(677, 18.99, '{\"113\":\"medium\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 238, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(678, 19.99, '{\"113\":\"medium\",\"114\":\"double-decker\"}', '', 0, 0, 0, 238, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(679, 20.99, '{\"113\":\"large\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 238, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(680, 21.99, '{\"113\":\"large\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 238, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(681, 22.99, '{\"113\":\"large\",\"114\":\"double-decker\"}', '', 0, 0, 0, 238, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(682, 23.99, '{\"113\":\"family\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 238, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(683, 24.99, '{\"113\":\"family\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 238, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(684, 25.99, '{\"113\":\"family\",\"114\":\"double-decker\"}', '', 0, 0, 0, 238, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(685, 14.99, '{\"115\":\"small\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 239, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(686, 15.99, '{\"115\":\"small\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 239, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(687, 16.99, '{\"115\":\"small\",\"116\":\"double-decker\"}', '', 0, 0, 0, 239, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(688, 17.99, '{\"115\":\"medium\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 239, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(689, 18.99, '{\"115\":\"medium\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 239, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(690, 19.99, '{\"115\":\"medium\",\"116\":\"double-decker\"}', '', 0, 0, 0, 239, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(691, 20.99, '{\"115\":\"large\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 239, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(692, 21.99, '{\"115\":\"large\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 239, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(693, 22.99, '{\"115\":\"large\",\"116\":\"double-decker\"}', '', 0, 0, 0, 239, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(694, 23.99, '{\"115\":\"family\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 239, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(695, 24.99, '{\"115\":\"family\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 239, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(696, 25.99, '{\"115\":\"family\",\"116\":\"double-decker\"}', '', 0, 0, 0, 239, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(697, 14.99, '{\"117\":\"small\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 240, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(698, 15.99, '{\"117\":\"small\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 240, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(699, 16.99, '{\"117\":\"small\",\"118\":\"double-decker\"}', '', 0, 0, 0, 240, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(700, 17.99, '{\"117\":\"medium\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 240, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(701, 18.99, '{\"117\":\"medium\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 240, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(702, 19.99, '{\"117\":\"medium\",\"118\":\"double-decker\"}', '', 0, 0, 0, 240, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(703, 20.99, '{\"117\":\"large\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 240, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(704, 21.99, '{\"117\":\"large\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 240, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(705, 22.99, '{\"117\":\"large\",\"118\":\"double-decker\"}', '', 0, 0, 0, 240, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(706, 23.99, '{\"117\":\"family\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 240, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(707, 24.99, '{\"117\":\"family\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 240, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(708, 25.99, '{\"117\":\"family\",\"118\":\"double-decker\"}', '', 0, 0, 0, 240, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(709, 14.99, '{\"119\":\"small\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 241, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(710, 15.99, '{\"119\":\"small\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 241, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(711, 16.99, '{\"119\":\"small\",\"120\":\"double-decker\"}', '', 0, 0, 0, 241, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(712, 17.99, '{\"119\":\"medium\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 241, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(713, 18.99, '{\"119\":\"medium\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 241, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(714, 19.99, '{\"119\":\"medium\",\"120\":\"double-decker\"}', '', 0, 0, 0, 241, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(715, 20.99, '{\"119\":\"large\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 241, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(716, 21.99, '{\"119\":\"large\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 241, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(717, 22.99, '{\"119\":\"large\",\"120\":\"double-decker\"}', '', 0, 0, 0, 241, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(718, 23.99, '{\"119\":\"family\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 241, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(719, 24.99, '{\"119\":\"family\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 241, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(720, 25.99, '{\"119\":\"family\",\"120\":\"double-decker\"}', '', 0, 0, 0, 241, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(721, 14.99, '{\"121\":\"small\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 242, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(722, 15.99, '{\"121\":\"small\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 242, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(723, 16.99, '{\"121\":\"small\",\"122\":\"double-decker\"}', '', 0, 0, 0, 242, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(724, 17.99, '{\"121\":\"medium\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 242, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(725, 18.99, '{\"121\":\"medium\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 242, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(726, 19.99, '{\"121\":\"medium\",\"122\":\"double-decker\"}', '', 0, 0, 0, 242, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(727, 20.99, '{\"121\":\"large\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 242, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(728, 21.99, '{\"121\":\"large\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 242, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(729, 22.99, '{\"121\":\"large\",\"122\":\"double-decker\"}', '', 0, 0, 0, 242, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(730, 23.99, '{\"121\":\"family\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 242, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(731, 24.99, '{\"121\":\"family\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 242, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(732, 25.99, '{\"121\":\"family\",\"122\":\"double-decker\"}', '', 0, 0, 0, 242, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(733, 10.49, '{\"123\":\"small\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 243, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(734, 11.49, '{\"123\":\"small\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 243, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(735, 12.49, '{\"123\":\"small\",\"124\":\"double-decker\"}', '', 0, 0, 0, 243, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(736, 13.49, '{\"123\":\"medium\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 243, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(737, 14.49, '{\"123\":\"medium\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 243, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(738, 15.49, '{\"123\":\"medium\",\"124\":\"double-decker\"}', '', 0, 0, 0, 243, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(739, 16.49, '{\"123\":\"large\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 243, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(740, 17.49, '{\"123\":\"large\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 243, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(741, 18.49, '{\"123\":\"large\",\"124\":\"double-decker\"}', '', 0, 0, 0, 243, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(742, 19.49, '{\"123\":\"family\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 243, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(743, 20.49, '{\"123\":\"family\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 243, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(744, 21.49, '{\"123\":\"family\",\"124\":\"double-decker\"}', '', 0, 0, 0, 243, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(745, 39.99, '{\"125\":\"small\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 244, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(746, 40.99, '{\"125\":\"small\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 244, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(747, 41.99, '{\"125\":\"small\",\"126\":\"double-decker\"}', '', 0, 0, 0, 244, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(748, 42.99, '{\"125\":\"medium\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 244, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(749, 43.99, '{\"125\":\"medium\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 244, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(750, 44.99, '{\"125\":\"medium\",\"126\":\"double-decker\"}', '', 0, 0, 0, 244, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(751, 45.99, '{\"125\":\"large\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 244, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(752, 46.99, '{\"125\":\"large\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 244, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(753, 47.99, '{\"125\":\"large\",\"126\":\"double-decker\"}', '', 0, 0, 0, 244, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(754, 48.99, '{\"125\":\"family\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 244, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(755, 49.99, '{\"125\":\"family\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 244, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(756, 50.99, '{\"125\":\"family\",\"126\":\"double-decker\"}', '', 0, 0, 0, 244, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(757, 14.99, '{\"127\":\"small\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 245, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(758, 15.99, '{\"127\":\"small\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 245, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(759, 16.99, '{\"127\":\"small\",\"128\":\"double-decker\"}', '', 0, 0, 0, 245, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(760, 17.99, '{\"127\":\"medium\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 245, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(761, 18.99, '{\"127\":\"medium\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 245, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(762, 19.99, '{\"127\":\"medium\",\"128\":\"double-decker\"}', '', 0, 0, 0, 245, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0);
INSERT INTO `variants` (`id`, `price`, `options`, `image`, `qty`, `enable_qty`, `order`, `item_id`, `created_at`, `updated_at`, `deleted_at`, `is_system`) VALUES
(763, 20.99, '{\"127\":\"large\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 245, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(764, 21.99, '{\"127\":\"large\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 245, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(765, 22.99, '{\"127\":\"large\",\"128\":\"double-decker\"}', '', 0, 0, 0, 245, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(766, 23.99, '{\"127\":\"family\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 245, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(767, 24.99, '{\"127\":\"family\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 245, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(768, 25.99, '{\"127\":\"family\",\"128\":\"double-decker\"}', '', 0, 0, 0, 245, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(769, 14.99, '{\"129\":\"small\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 246, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(770, 15.99, '{\"129\":\"small\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 246, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(771, 16.99, '{\"129\":\"small\",\"130\":\"double-decker\"}', '', 0, 0, 0, 246, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(772, 17.99, '{\"129\":\"medium\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 246, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(773, 18.99, '{\"129\":\"medium\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 246, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(774, 19.99, '{\"129\":\"medium\",\"130\":\"double-decker\"}', '', 0, 0, 0, 246, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(775, 20.99, '{\"129\":\"large\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 246, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(776, 21.99, '{\"129\":\"large\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 246, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(777, 22.99, '{\"129\":\"large\",\"130\":\"double-decker\"}', '', 0, 0, 0, 246, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(778, 23.99, '{\"129\":\"family\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 246, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(779, 24.99, '{\"129\":\"family\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 246, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(780, 25.99, '{\"129\":\"family\",\"130\":\"double-decker\"}', '', 0, 0, 0, 246, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(781, 14.99, '{\"131\":\"small\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 247, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(782, 15.99, '{\"131\":\"small\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 247, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(783, 16.99, '{\"131\":\"small\",\"132\":\"double-decker\"}', '', 0, 0, 0, 247, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(784, 17.99, '{\"131\":\"medium\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 247, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(785, 18.99, '{\"131\":\"medium\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 247, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(786, 19.99, '{\"131\":\"medium\",\"132\":\"double-decker\"}', '', 0, 0, 0, 247, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(787, 20.99, '{\"131\":\"large\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 247, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(788, 21.99, '{\"131\":\"large\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 247, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(789, 22.99, '{\"131\":\"large\",\"132\":\"double-decker\"}', '', 0, 0, 0, 247, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(790, 23.99, '{\"131\":\"family\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 247, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(791, 24.99, '{\"131\":\"family\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 247, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(792, 25.99, '{\"131\":\"family\",\"132\":\"double-decker\"}', '', 0, 0, 0, 247, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(793, 10.99, '{\"133\":\"small\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 265, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(794, 11.99, '{\"133\":\"small\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 265, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(795, 12.99, '{\"133\":\"small\",\"134\":\"double-decker\"}', '', 0, 0, 0, 265, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(796, 13.99, '{\"133\":\"medium\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 265, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(797, 14.99, '{\"133\":\"medium\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 265, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(798, 15.99, '{\"133\":\"medium\",\"134\":\"double-decker\"}', '', 0, 0, 0, 265, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(799, 16.99, '{\"133\":\"large\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 265, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(800, 17.99, '{\"133\":\"large\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 265, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(801, 18.99, '{\"133\":\"large\",\"134\":\"double-decker\"}', '', 0, 0, 0, 265, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(802, 19.99, '{\"133\":\"family\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 265, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(803, 20.99, '{\"133\":\"family\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 265, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(804, 21.99, '{\"133\":\"family\",\"134\":\"double-decker\"}', '', 0, 0, 0, 265, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(805, 14.99, '{\"135\":\"small\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 266, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(806, 15.99, '{\"135\":\"small\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 266, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(807, 16.99, '{\"135\":\"small\",\"136\":\"double-decker\"}', '', 0, 0, 0, 266, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(808, 17.99, '{\"135\":\"medium\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 266, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(809, 18.99, '{\"135\":\"medium\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 266, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(810, 19.99, '{\"135\":\"medium\",\"136\":\"double-decker\"}', '', 0, 0, 0, 266, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(811, 20.99, '{\"135\":\"large\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 266, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(812, 21.99, '{\"135\":\"large\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 266, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(813, 22.99, '{\"135\":\"large\",\"136\":\"double-decker\"}', '', 0, 0, 0, 266, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(814, 23.99, '{\"135\":\"family\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 266, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(815, 24.99, '{\"135\":\"family\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 266, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(816, 25.99, '{\"135\":\"family\",\"136\":\"double-decker\"}', '', 0, 0, 0, 266, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(817, 14.99, '{\"137\":\"small\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 267, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(818, 15.99, '{\"137\":\"small\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 267, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(819, 16.99, '{\"137\":\"small\",\"138\":\"double-decker\"}', '', 0, 0, 0, 267, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(820, 17.99, '{\"137\":\"medium\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 267, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(821, 18.99, '{\"137\":\"medium\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 267, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(822, 19.99, '{\"137\":\"medium\",\"138\":\"double-decker\"}', '', 0, 0, 0, 267, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(823, 20.99, '{\"137\":\"large\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 267, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(824, 21.99, '{\"137\":\"large\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 267, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(825, 22.99, '{\"137\":\"large\",\"138\":\"double-decker\"}', '', 0, 0, 0, 267, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(826, 23.99, '{\"137\":\"family\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 267, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(827, 24.99, '{\"137\":\"family\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 267, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(828, 25.99, '{\"137\":\"family\",\"138\":\"double-decker\"}', '', 0, 0, 0, 267, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(829, 14.99, '{\"139\":\"small\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 268, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(830, 15.99, '{\"139\":\"small\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 268, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(831, 16.99, '{\"139\":\"small\",\"140\":\"double-decker\"}', '', 0, 0, 0, 268, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(832, 17.99, '{\"139\":\"medium\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 268, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(833, 18.99, '{\"139\":\"medium\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 268, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(834, 19.99, '{\"139\":\"medium\",\"140\":\"double-decker\"}', '', 0, 0, 0, 268, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(835, 20.99, '{\"139\":\"large\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 268, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(836, 21.99, '{\"139\":\"large\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 268, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(837, 22.99, '{\"139\":\"large\",\"140\":\"double-decker\"}', '', 0, 0, 0, 268, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(838, 23.99, '{\"139\":\"family\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 268, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(839, 24.99, '{\"139\":\"family\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 268, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(840, 25.99, '{\"139\":\"family\",\"140\":\"double-decker\"}', '', 0, 0, 0, 268, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(841, 14.99, '{\"141\":\"small\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 269, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(842, 15.99, '{\"141\":\"small\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 269, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(843, 16.99, '{\"141\":\"small\",\"142\":\"double-decker\"}', '', 0, 0, 0, 269, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(844, 17.99, '{\"141\":\"medium\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 269, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(845, 18.99, '{\"141\":\"medium\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 269, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(846, 19.99, '{\"141\":\"medium\",\"142\":\"double-decker\"}', '', 0, 0, 0, 269, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(847, 20.99, '{\"141\":\"large\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 269, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(848, 21.99, '{\"141\":\"large\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 269, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(849, 22.99, '{\"141\":\"large\",\"142\":\"double-decker\"}', '', 0, 0, 0, 269, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(850, 23.99, '{\"141\":\"family\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 269, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(851, 24.99, '{\"141\":\"family\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 269, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(852, 25.99, '{\"141\":\"family\",\"142\":\"double-decker\"}', '', 0, 0, 0, 269, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(853, 14.99, '{\"143\":\"small\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 270, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(854, 15.99, '{\"143\":\"small\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 270, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(855, 16.99, '{\"143\":\"small\",\"144\":\"double-decker\"}', '', 0, 0, 0, 270, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(856, 17.99, '{\"143\":\"medium\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 270, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(857, 18.99, '{\"143\":\"medium\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 270, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(858, 19.99, '{\"143\":\"medium\",\"144\":\"double-decker\"}', '', 0, 0, 0, 270, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(859, 20.99, '{\"143\":\"large\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 270, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(860, 21.99, '{\"143\":\"large\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 270, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(861, 22.99, '{\"143\":\"large\",\"144\":\"double-decker\"}', '', 0, 0, 0, 270, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(862, 23.99, '{\"143\":\"family\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 270, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(863, 24.99, '{\"143\":\"family\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 270, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(864, 25.99, '{\"143\":\"family\",\"144\":\"double-decker\"}', '', 0, 0, 0, 270, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(865, 10.49, '{\"145\":\"small\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(866, 11.49, '{\"145\":\"small\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 271, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(867, 12.49, '{\"145\":\"small\",\"146\":\"double-decker\"}', '', 0, 0, 0, 271, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(868, 13.49, '{\"145\":\"medium\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(869, 14.49, '{\"145\":\"medium\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 271, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(870, 15.49, '{\"145\":\"medium\",\"146\":\"double-decker\"}', '', 0, 0, 0, 271, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(871, 16.49, '{\"145\":\"large\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(872, 17.49, '{\"145\":\"large\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 271, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(873, 18.49, '{\"145\":\"large\",\"146\":\"double-decker\"}', '', 0, 0, 0, 271, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(874, 19.49, '{\"145\":\"family\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(875, 20.49, '{\"145\":\"family\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 271, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(876, 21.49, '{\"145\":\"family\",\"146\":\"double-decker\"}', '', 0, 0, 0, 271, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(877, 39.99, '{\"147\":\"small\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(878, 40.99, '{\"147\":\"small\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 272, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(879, 41.99, '{\"147\":\"small\",\"148\":\"double-decker\"}', '', 0, 0, 0, 272, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(880, 42.99, '{\"147\":\"medium\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(881, 43.99, '{\"147\":\"medium\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 272, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(882, 44.99, '{\"147\":\"medium\",\"148\":\"double-decker\"}', '', 0, 0, 0, 272, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(883, 45.99, '{\"147\":\"large\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(884, 46.99, '{\"147\":\"large\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 272, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(885, 47.99, '{\"147\":\"large\",\"148\":\"double-decker\"}', '', 0, 0, 0, 272, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(886, 48.99, '{\"147\":\"family\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(887, 49.99, '{\"147\":\"family\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 272, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(888, 50.99, '{\"147\":\"family\",\"148\":\"double-decker\"}', '', 0, 0, 0, 272, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(889, 14.99, '{\"149\":\"small\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 273, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(890, 15.99, '{\"149\":\"small\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 273, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(891, 16.99, '{\"149\":\"small\",\"150\":\"double-decker\"}', '', 0, 0, 0, 273, '2022-08-18 19:44:48', '2022-08-18 19:44:48', NULL, 0),
(892, 17.99, '{\"149\":\"medium\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 273, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(893, 18.99, '{\"149\":\"medium\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 273, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(894, 19.99, '{\"149\":\"medium\",\"150\":\"double-decker\"}', '', 0, 0, 0, 273, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(895, 20.99, '{\"149\":\"large\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 273, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(896, 21.99, '{\"149\":\"large\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 273, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(897, 22.99, '{\"149\":\"large\",\"150\":\"double-decker\"}', '', 0, 0, 0, 273, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(898, 23.99, '{\"149\":\"family\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 273, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(899, 24.99, '{\"149\":\"family\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 273, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(900, 25.99, '{\"149\":\"family\",\"150\":\"double-decker\"}', '', 0, 0, 0, 273, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(901, 14.99, '{\"151\":\"small\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 274, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(902, 15.99, '{\"151\":\"small\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 274, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(903, 16.99, '{\"151\":\"small\",\"152\":\"double-decker\"}', '', 0, 0, 0, 274, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(904, 17.99, '{\"151\":\"medium\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 274, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(905, 18.99, '{\"151\":\"medium\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 274, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(906, 19.99, '{\"151\":\"medium\",\"152\":\"double-decker\"}', '', 0, 0, 0, 274, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(907, 20.99, '{\"151\":\"large\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 274, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(908, 21.99, '{\"151\":\"large\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 274, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(909, 22.99, '{\"151\":\"large\",\"152\":\"double-decker\"}', '', 0, 0, 0, 274, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(910, 23.99, '{\"151\":\"family\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 274, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(911, 24.99, '{\"151\":\"family\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 274, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(912, 25.99, '{\"151\":\"family\",\"152\":\"double-decker\"}', '', 0, 0, 0, 274, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(913, 14.99, '{\"153\":\"small\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 275, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(914, 15.99, '{\"153\":\"small\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 275, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(915, 16.99, '{\"153\":\"small\",\"154\":\"double-decker\"}', '', 0, 0, 0, 275, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(916, 17.99, '{\"153\":\"medium\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 275, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(917, 18.99, '{\"153\":\"medium\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 275, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(918, 19.99, '{\"153\":\"medium\",\"154\":\"double-decker\"}', '', 0, 0, 0, 275, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(919, 20.99, '{\"153\":\"large\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 275, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(920, 21.99, '{\"153\":\"large\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 275, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(921, 22.99, '{\"153\":\"large\",\"154\":\"double-decker\"}', '', 0, 0, 0, 275, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(922, 23.99, '{\"153\":\"family\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 275, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(923, 24.99, '{\"153\":\"family\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 275, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(924, 25.99, '{\"153\":\"family\",\"154\":\"double-decker\"}', '', 0, 0, 0, 275, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(925, 10.99, '{\"155\":\"small\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 316, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(926, 11.99, '{\"155\":\"small\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 316, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(927, 12.99, '{\"155\":\"small\",\"156\":\"double-decker\"}', '', 0, 0, 0, 316, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(928, 13.99, '{\"155\":\"medium\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 316, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(929, 14.99, '{\"155\":\"medium\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 316, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(930, 15.99, '{\"155\":\"medium\",\"156\":\"double-decker\"}', '', 0, 0, 0, 316, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(931, 16.99, '{\"155\":\"large\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 316, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(932, 17.99, '{\"155\":\"large\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 316, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(933, 18.99, '{\"155\":\"large\",\"156\":\"double-decker\"}', '', 0, 0, 0, 316, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(934, 19.99, '{\"155\":\"family\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 316, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(935, 20.99, '{\"155\":\"family\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 316, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(936, 21.99, '{\"155\":\"family\",\"156\":\"double-decker\"}', '', 0, 0, 0, 316, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(937, 14.99, '{\"157\":\"small\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 317, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(938, 15.99, '{\"157\":\"small\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 317, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(939, 16.99, '{\"157\":\"small\",\"158\":\"double-decker\"}', '', 0, 0, 0, 317, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(940, 17.99, '{\"157\":\"medium\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 317, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(941, 18.99, '{\"157\":\"medium\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 317, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(942, 19.99, '{\"157\":\"medium\",\"158\":\"double-decker\"}', '', 0, 0, 0, 317, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(943, 20.99, '{\"157\":\"large\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 317, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(944, 21.99, '{\"157\":\"large\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 317, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(945, 22.99, '{\"157\":\"large\",\"158\":\"double-decker\"}', '', 0, 0, 0, 317, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(946, 23.99, '{\"157\":\"family\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 317, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(947, 24.99, '{\"157\":\"family\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 317, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(948, 25.99, '{\"157\":\"family\",\"158\":\"double-decker\"}', '', 0, 0, 0, 317, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(949, 14.99, '{\"159\":\"small\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 318, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(950, 15.99, '{\"159\":\"small\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 318, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(951, 16.99, '{\"159\":\"small\",\"160\":\"double-decker\"}', '', 0, 0, 0, 318, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(952, 17.99, '{\"159\":\"medium\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 318, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(953, 18.99, '{\"159\":\"medium\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 318, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(954, 19.99, '{\"159\":\"medium\",\"160\":\"double-decker\"}', '', 0, 0, 0, 318, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(955, 20.99, '{\"159\":\"large\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 318, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(956, 21.99, '{\"159\":\"large\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 318, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(957, 22.99, '{\"159\":\"large\",\"160\":\"double-decker\"}', '', 0, 0, 0, 318, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(958, 23.99, '{\"159\":\"family\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 318, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(959, 24.99, '{\"159\":\"family\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 318, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(960, 25.99, '{\"159\":\"family\",\"160\":\"double-decker\"}', '', 0, 0, 0, 318, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(961, 14.99, '{\"161\":\"small\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 319, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(962, 15.99, '{\"161\":\"small\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 319, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(963, 16.99, '{\"161\":\"small\",\"162\":\"double-decker\"}', '', 0, 0, 0, 319, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(964, 17.99, '{\"161\":\"medium\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 319, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(965, 18.99, '{\"161\":\"medium\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 319, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(966, 19.99, '{\"161\":\"medium\",\"162\":\"double-decker\"}', '', 0, 0, 0, 319, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(967, 20.99, '{\"161\":\"large\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 319, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(968, 21.99, '{\"161\":\"large\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 319, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(969, 22.99, '{\"161\":\"large\",\"162\":\"double-decker\"}', '', 0, 0, 0, 319, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(970, 23.99, '{\"161\":\"family\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 319, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(971, 24.99, '{\"161\":\"family\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 319, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(972, 25.99, '{\"161\":\"family\",\"162\":\"double-decker\"}', '', 0, 0, 0, 319, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(973, 14.99, '{\"163\":\"small\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 320, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(974, 15.99, '{\"163\":\"small\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 320, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(975, 16.99, '{\"163\":\"small\",\"164\":\"double-decker\"}', '', 0, 0, 0, 320, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(976, 17.99, '{\"163\":\"medium\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 320, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(977, 18.99, '{\"163\":\"medium\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 320, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(978, 19.99, '{\"163\":\"medium\",\"164\":\"double-decker\"}', '', 0, 0, 0, 320, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(979, 20.99, '{\"163\":\"large\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 320, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(980, 21.99, '{\"163\":\"large\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 320, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(981, 22.99, '{\"163\":\"large\",\"164\":\"double-decker\"}', '', 0, 0, 0, 320, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(982, 23.99, '{\"163\":\"family\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 320, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(983, 24.99, '{\"163\":\"family\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 320, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(984, 25.99, '{\"163\":\"family\",\"164\":\"double-decker\"}', '', 0, 0, 0, 320, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(985, 14.99, '{\"165\":\"small\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 321, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(986, 15.99, '{\"165\":\"small\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 321, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(987, 16.99, '{\"165\":\"small\",\"166\":\"double-decker\"}', '', 0, 0, 0, 321, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(988, 17.99, '{\"165\":\"medium\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 321, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(989, 18.99, '{\"165\":\"medium\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 321, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(990, 19.99, '{\"165\":\"medium\",\"166\":\"double-decker\"}', '', 0, 0, 0, 321, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(991, 20.99, '{\"165\":\"large\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 321, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(992, 21.99, '{\"165\":\"large\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 321, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(993, 22.99, '{\"165\":\"large\",\"166\":\"double-decker\"}', '', 0, 0, 0, 321, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(994, 23.99, '{\"165\":\"family\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 321, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(995, 24.99, '{\"165\":\"family\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 321, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(996, 25.99, '{\"165\":\"family\",\"166\":\"double-decker\"}', '', 0, 0, 0, 321, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(997, 10.49, '{\"167\":\"small\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 322, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(998, 11.49, '{\"167\":\"small\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 322, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(999, 12.49, '{\"167\":\"small\",\"168\":\"double-decker\"}', '', 0, 0, 0, 322, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1000, 13.49, '{\"167\":\"medium\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 322, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1001, 14.49, '{\"167\":\"medium\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 322, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1002, 15.49, '{\"167\":\"medium\",\"168\":\"double-decker\"}', '', 0, 0, 0, 322, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1003, 16.49, '{\"167\":\"large\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 322, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1004, 17.49, '{\"167\":\"large\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 322, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1005, 18.49, '{\"167\":\"large\",\"168\":\"double-decker\"}', '', 0, 0, 0, 322, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1006, 19.49, '{\"167\":\"family\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 322, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1007, 20.49, '{\"167\":\"family\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 322, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1008, 21.49, '{\"167\":\"family\",\"168\":\"double-decker\"}', '', 0, 0, 0, 322, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1009, 39.99, '{\"169\":\"small\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 323, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1010, 40.99, '{\"169\":\"small\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 323, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1011, 41.99, '{\"169\":\"small\",\"170\":\"double-decker\"}', '', 0, 0, 0, 323, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1012, 42.99, '{\"169\":\"medium\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 323, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1013, 43.99, '{\"169\":\"medium\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 323, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1014, 44.99, '{\"169\":\"medium\",\"170\":\"double-decker\"}', '', 0, 0, 0, 323, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1015, 45.99, '{\"169\":\"large\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 323, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1016, 46.99, '{\"169\":\"large\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 323, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1017, 47.99, '{\"169\":\"large\",\"170\":\"double-decker\"}', '', 0, 0, 0, 323, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1018, 48.99, '{\"169\":\"family\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 323, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1019, 49.99, '{\"169\":\"family\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 323, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1020, 50.99, '{\"169\":\"family\",\"170\":\"double-decker\"}', '', 0, 0, 0, 323, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1021, 14.99, '{\"171\":\"small\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 324, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1022, 15.99, '{\"171\":\"small\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 324, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1023, 16.99, '{\"171\":\"small\",\"172\":\"double-decker\"}', '', 0, 0, 0, 324, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1024, 17.99, '{\"171\":\"medium\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 324, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1025, 18.99, '{\"171\":\"medium\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 324, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1026, 19.99, '{\"171\":\"medium\",\"172\":\"double-decker\"}', '', 0, 0, 0, 324, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1027, 20.99, '{\"171\":\"large\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 324, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1028, 21.99, '{\"171\":\"large\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 324, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1029, 22.99, '{\"171\":\"large\",\"172\":\"double-decker\"}', '', 0, 0, 0, 324, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1030, 23.99, '{\"171\":\"family\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 324, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1031, 24.99, '{\"171\":\"family\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 324, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1032, 25.99, '{\"171\":\"family\",\"172\":\"double-decker\"}', '', 0, 0, 0, 324, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1033, 14.99, '{\"173\":\"small\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 325, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1034, 15.99, '{\"173\":\"small\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 325, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1035, 16.99, '{\"173\":\"small\",\"174\":\"double-decker\"}', '', 0, 0, 0, 325, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1036, 17.99, '{\"173\":\"medium\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 325, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1037, 18.99, '{\"173\":\"medium\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 325, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1038, 19.99, '{\"173\":\"medium\",\"174\":\"double-decker\"}', '', 0, 0, 0, 325, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1039, 20.99, '{\"173\":\"large\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 325, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1040, 21.99, '{\"173\":\"large\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 325, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1041, 22.99, '{\"173\":\"large\",\"174\":\"double-decker\"}', '', 0, 0, 0, 325, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1042, 23.99, '{\"173\":\"family\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 325, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1043, 24.99, '{\"173\":\"family\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 325, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1044, 25.99, '{\"173\":\"family\",\"174\":\"double-decker\"}', '', 0, 0, 0, 325, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1045, 14.99, '{\"175\":\"small\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 326, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1046, 15.99, '{\"175\":\"small\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 326, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1047, 16.99, '{\"175\":\"small\",\"176\":\"double-decker\"}', '', 0, 0, 0, 326, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1048, 17.99, '{\"175\":\"medium\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 326, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1049, 18.99, '{\"175\":\"medium\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 326, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1050, 19.99, '{\"175\":\"medium\",\"176\":\"double-decker\"}', '', 0, 0, 0, 326, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1051, 20.99, '{\"175\":\"large\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 326, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1052, 21.99, '{\"175\":\"large\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 326, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1053, 22.99, '{\"175\":\"large\",\"176\":\"double-decker\"}', '', 0, 0, 0, 326, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1054, 23.99, '{\"175\":\"family\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 326, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1055, 24.99, '{\"175\":\"family\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 326, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1056, 25.99, '{\"175\":\"family\",\"176\":\"double-decker\"}', '', 0, 0, 0, 326, '2022-08-18 19:44:49', '2022-08-18 19:44:49', NULL, 0),
(1057, 3.50, '{\"177\":\"no-spicy\"}', '', 0, 0, 0, 346, '2022-08-22 03:52:06', '2022-08-22 03:52:06', NULL, 1),
(1058, 3.50, '{\"177\":\"medium\"}', '', 0, 0, 0, 346, '2022-08-22 03:52:06', '2022-08-22 03:52:06', NULL, 1),
(1059, 3.50, '{\"177\":\"spicy\"}', '', 0, 0, 0, 346, '2022-08-22 03:52:06', '2022-08-22 03:52:06', NULL, 1),
(1060, 3.75, '{\"178\":\"no-spicy\"}', '', 0, 0, 0, 347, '2022-08-22 03:56:38', '2022-08-22 03:56:38', NULL, 1),
(1061, 3.75, '{\"178\":\"medium\"}', '', 0, 0, 0, 347, '2022-08-22 03:56:38', '2022-08-22 03:56:38', NULL, 1),
(1062, 3.75, '{\"178\":\"spicy\"}', '', 0, 0, 0, 347, '2022-08-22 03:56:38', '2022-08-22 03:56:38', NULL, 1),
(1063, 0.25, '{\"179\":\"pepsi\"}', '', 0, 0, 0, 354, '2022-08-22 04:39:59', '2022-08-22 04:39:59', NULL, 1),
(1064, 0.25, '{\"179\":\"coco-cola\"}', '', 0, 0, 0, 354, '2022-08-22 04:39:59', '2022-08-22 04:39:59', NULL, 1),
(1065, 0.25, '{\"179\":\"7-up\"}', '', 0, 0, 0, 354, '2022-08-22 04:39:59', '2022-08-22 04:39:59', NULL, 1),
(1066, 0.25, '{\"179\":\"mountain-dew\"}', '', 0, 0, 0, 354, '2022-08-22 04:39:59', '2022-08-22 04:39:59', NULL, 1),
(1067, 0.10, '{\"180\":\"500-ml\"}', '', 0, 0, 0, 352, '2022-08-22 04:43:13', '2022-08-22 04:43:13', NULL, 0),
(1068, 0.20, '{\"180\":\"1-liter\"}', '', 0, 0, 0, 352, '2022-08-22 04:43:29', '2022-08-22 04:43:29', NULL, 0),
(1069, 0.20, '{\"180\":\"1-liter\"}', '', 0, 0, 0, 352, '2022-08-22 04:43:30', '2022-08-22 04:44:08', '2022-08-22 04:44:08', 0),
(1070, 0.20, '{\"180\":\"1-liter\"}', '', 0, 0, 0, 352, '2022-08-22 04:43:30', '2022-08-22 04:44:06', '2022-08-22 04:44:06', 0),
(1071, 1.95, '{\"181\":\"vegetables\"}', '', 0, 0, 0, 365, '2022-08-25 00:54:52', '2022-08-26 22:13:17', NULL, 0),
(1072, 2.25, '{\"181\":\"chicken\"}', '', 0, 0, 0, 365, '2022-08-25 00:55:00', '2022-08-26 22:13:22', NULL, 0),
(1073, 2.45, '{\"181\":\"shrimp\"}', '', 0, 0, 0, 365, '2022-08-25 00:55:10', '2022-08-26 22:13:29', NULL, 0),
(1074, 2.45, '{\"182\":\"no-spicy\"}', '', 0, 0, 0, 355, '2022-08-25 00:56:07', '2022-08-25 00:56:07', NULL, 1),
(1075, 2.45, '{\"182\":\"medium\"}', '', 0, 0, 0, 355, '2022-08-25 00:56:07', '2022-08-25 00:56:07', NULL, 1),
(1076, 2.45, '{\"182\":\"spicy\"}', '', 0, 0, 0, 355, '2022-08-25 00:56:07', '2022-08-25 00:56:07', NULL, 1),
(1119, 3.25, '{\"191\":\"no-spicy\"}', '', 0, 0, 0, 371, '2022-08-25 04:26:47', '2022-08-25 04:26:47', NULL, 1),
(1120, 3.25, '{\"191\":\"medium\"}', '', 0, 0, 0, 371, '2022-08-25 04:26:47', '2022-08-25 04:26:47', NULL, 1),
(1121, 3.25, '{\"191\":\"spicy\"}', '', 0, 0, 0, 371, '2022-08-25 04:26:47', '2022-08-25 04:26:47', NULL, 1),
(1122, 3.25, '{\"193\":\"no-spicy\"}', '', 0, 0, 0, 384, '2022-08-25 05:04:13', '2022-08-25 05:04:13', NULL, 1),
(1123, 3.25, '{\"193\":\"medium\"}', '', 0, 0, 0, 384, '2022-08-25 05:04:13', '2022-08-25 05:04:13', NULL, 1),
(1124, 3.25, '{\"193\":\"spicy\"}', '', 0, 0, 0, 384, '2022-08-25 05:04:13', '2022-08-25 05:04:13', NULL, 1),
(1125, 2.95, '{\"192\":\"no-spicy\"}', '', 0, 0, 0, 383, '2022-08-25 05:04:23', '2022-08-25 05:04:23', NULL, 1),
(1126, 2.95, '{\"192\":\"medium\"}', '', 0, 0, 0, 383, '2022-08-25 05:04:23', '2022-08-25 05:04:23', NULL, 1),
(1127, 2.95, '{\"192\":\"spicy\"}', '', 0, 0, 0, 383, '2022-08-25 05:04:23', '2022-08-25 05:04:23', NULL, 1),
(1131, 2.25, '{\"184\":\"no-spicy\"}', '', 0, 0, 0, 357, '2022-08-25 05:15:40', '2022-08-25 05:15:40', NULL, 1),
(1132, 2.25, '{\"184\":\"medium\"}', '', 0, 0, 0, 357, '2022-08-25 05:15:40', '2022-08-25 05:15:40', NULL, 1),
(1133, 2.25, '{\"184\":\"spicy\"}', '', 0, 0, 0, 357, '2022-08-25 05:15:40', '2022-08-25 05:15:40', NULL, 1),
(1134, 4.25, '{\"185\":\"no-spicy\"}', '', 0, 0, 0, 362, '2022-08-25 05:16:03', '2022-08-25 05:16:03', NULL, 1),
(1135, 4.25, '{\"185\":\"medium\"}', '', 0, 0, 0, 362, '2022-08-25 05:16:03', '2022-08-25 05:16:03', NULL, 1),
(1136, 4.25, '{\"185\":\"spicy\"}', '', 0, 0, 0, 362, '2022-08-25 05:16:03', '2022-08-25 05:16:03', NULL, 1),
(1137, 2.45, '{\"194\":\"no-spicy\"}', '', 0, 0, 0, 419, '2022-08-25 05:42:41', '2022-08-25 05:42:41', NULL, 1),
(1138, 2.45, '{\"194\":\"medium\"}', '', 0, 0, 0, 419, '2022-08-25 05:42:41', '2022-08-25 05:42:41', NULL, 1),
(1139, 2.45, '{\"194\":\"spicy\"}', '', 0, 0, 0, 419, '2022-08-25 05:42:41', '2022-08-25 05:42:41', NULL, 1),
(1143, 2.45, '{\"196\":\"no-spicy\"}', '', 0, 0, 0, 421, '2022-08-25 05:43:26', '2022-08-25 05:43:26', NULL, 1),
(1144, 2.45, '{\"196\":\"medium\"}', '', 0, 0, 0, 421, '2022-08-25 05:43:26', '2022-08-25 05:43:26', NULL, 1),
(1145, 2.45, '{\"196\":\"spicy\"}', '', 0, 0, 0, 421, '2022-08-25 05:43:26', '2022-08-25 05:43:26', NULL, 1),
(1158, 2.25, '{\"195\":\"no-spicy\"}', '', 0, 0, 0, 420, '2022-08-26 22:16:23', '2022-08-26 22:16:23', NULL, 1),
(1159, 2.25, '{\"195\":\"medium\"}', '', 0, 0, 0, 420, '2022-08-26 22:16:23', '2022-08-26 22:16:23', NULL, 1),
(1160, 2.25, '{\"195\":\"spicy\"}', '', 0, 0, 0, 420, '2022-08-26 22:16:23', '2022-08-26 22:16:23', NULL, 1),
(1161, 2.75, '{\"198\":\"no-spicy\"}', '', 0, 0, 0, 423, '2022-08-26 22:16:39', '2022-08-26 22:16:39', NULL, 1),
(1162, 2.75, '{\"198\":\"medium\"}', '', 0, 0, 0, 423, '2022-08-26 22:16:39', '2022-08-26 22:16:39', NULL, 1),
(1163, 2.75, '{\"198\":\"spicy\"}', '', 0, 0, 0, 423, '2022-08-26 22:16:39', '2022-08-26 22:16:39', NULL, 1),
(1164, 2.25, '{\"197\":\"no-spicy\"}', '', 0, 0, 0, 422, '2022-08-26 22:16:53', '2022-08-26 22:16:53', NULL, 1),
(1165, 2.25, '{\"197\":\"medium\"}', '', 0, 0, 0, 422, '2022-08-26 22:16:53', '2022-08-26 22:16:53', NULL, 1),
(1166, 2.25, '{\"197\":\"spicy\"}', '', 0, 0, 0, 422, '2022-08-26 22:16:53', '2022-08-26 22:16:53', NULL, 1),
(1173, 3.50, '{\"201\":\"no-spicy\"}', '', 0, 0, 0, 452, '2022-08-26 22:36:44', '2022-08-26 22:36:44', NULL, 1),
(1174, 3.50, '{\"201\":\"medium\"}', '', 0, 0, 0, 452, '2022-08-26 22:36:44', '2022-08-26 22:36:44', NULL, 1),
(1175, 3.50, '{\"201\":\"spicy\"}', '', 0, 0, 0, 452, '2022-08-26 22:36:44', '2022-08-26 22:36:44', NULL, 1),
(1182, 3.50, '{\"204\":\"no-spicy\"}', '', 0, 0, 0, 455, '2022-08-26 22:37:51', '2022-08-26 22:37:51', NULL, 1),
(1183, 3.50, '{\"204\":\"medium\"}', '', 0, 0, 0, 455, '2022-08-26 22:37:51', '2022-08-26 22:37:51', NULL, 1),
(1184, 3.50, '{\"204\":\"spicy\"}', '', 0, 0, 0, 455, '2022-08-26 22:37:51', '2022-08-26 22:37:51', NULL, 1),
(1185, 3.95, '{\"205\":\"no-spicy\"}', '', 0, 0, 0, 456, '2022-08-26 22:38:12', '2022-08-26 22:38:12', NULL, 1),
(1186, 3.95, '{\"205\":\"medium\"}', '', 0, 0, 0, 456, '2022-08-26 22:38:12', '2022-08-26 22:38:12', NULL, 1),
(1187, 3.95, '{\"205\":\"spicy\"}', '', 0, 0, 0, 456, '2022-08-26 22:38:12', '2022-08-26 22:38:12', NULL, 1),
(1188, 3.75, '{\"206\":\"no-spicy\"}', '', 0, 0, 0, 457, '2022-08-26 22:38:33', '2022-08-26 22:38:33', NULL, 1),
(1189, 3.75, '{\"206\":\"medium\"}', '', 0, 0, 0, 457, '2022-08-26 22:38:33', '2022-08-26 22:38:33', NULL, 1),
(1190, 3.75, '{\"206\":\"spicy\"}', '', 0, 0, 0, 457, '2022-08-26 22:38:33', '2022-08-26 22:38:33', NULL, 1),
(1191, 5.45, '{\"207\":\"no-spicy\"}', '', 0, 0, 0, 459, '2022-08-26 22:45:21', '2022-08-26 22:45:21', NULL, 1),
(1192, 5.45, '{\"207\":\"medium\"}', '', 0, 0, 0, 459, '2022-08-26 22:45:21', '2022-08-26 22:45:21', NULL, 1),
(1193, 5.45, '{\"207\":\"spicy\"}', '', 0, 0, 0, 459, '2022-08-26 22:45:21', '2022-08-26 22:45:21', NULL, 1),
(1194, 3.95, '{\"208\":\"no-spicy\"}', '', 0, 0, 0, 460, '2022-08-26 22:45:41', '2022-08-26 22:45:41', NULL, 1),
(1195, 3.95, '{\"208\":\"medium\"}', '', 0, 0, 0, 460, '2022-08-26 22:45:41', '2022-08-26 22:45:41', NULL, 1),
(1196, 3.95, '{\"208\":\"spicy\"}', '', 0, 0, 0, 460, '2022-08-26 22:45:41', '2022-08-26 22:45:41', NULL, 1),
(1197, 5.25, '{\"209\":\"no-spicy\"}', '', 0, 0, 0, 461, '2022-08-26 22:46:03', '2022-08-26 22:46:03', NULL, 1),
(1198, 5.25, '{\"209\":\"medium\"}', '', 0, 0, 0, 461, '2022-08-26 22:46:03', '2022-08-26 22:46:03', NULL, 1),
(1199, 5.25, '{\"209\":\"spicy\"}', '', 0, 0, 0, 461, '2022-08-26 22:46:03', '2022-08-26 22:46:03', NULL, 1),
(1200, 4.65, '{\"210\":\"no-spicy\"}', '', 0, 0, 0, 462, '2022-08-26 22:46:22', '2022-08-26 22:46:22', NULL, 1),
(1201, 4.65, '{\"210\":\"medium\"}', '', 0, 0, 0, 462, '2022-08-26 22:46:22', '2022-08-26 22:46:22', NULL, 1),
(1202, 4.65, '{\"210\":\"spicy\"}', '', 0, 0, 0, 462, '2022-08-26 22:46:22', '2022-08-26 22:46:22', NULL, 1),
(1206, 9.95, '{\"212\":\"no-spicy\"}', '', 0, 0, 0, 464, '2022-08-26 22:47:03', '2022-08-26 22:47:03', NULL, 1),
(1207, 9.95, '{\"212\":\"medium\"}', '', 0, 0, 0, 464, '2022-08-26 22:47:03', '2022-08-26 22:47:03', NULL, 1),
(1208, 9.95, '{\"212\":\"spicy\"}', '', 0, 0, 0, 464, '2022-08-26 22:47:03', '2022-08-26 22:47:03', NULL, 1),
(1212, 2.95, '{\"214\":\"no-spicy\"}', '', 0, 0, 0, 467, '2022-08-26 22:58:54', '2022-08-26 22:58:54', NULL, 1),
(1213, 2.95, '{\"214\":\"medium\"}', '', 0, 0, 0, 467, '2022-08-26 22:58:54', '2022-08-26 22:58:54', NULL, 1),
(1214, 2.95, '{\"214\":\"spicy\"}', '', 0, 0, 0, 467, '2022-08-26 22:58:54', '2022-08-26 22:58:54', NULL, 1),
(1215, 2.85, '{\"215\":\"no-spicy\"}', '', 0, 0, 0, 468, '2022-08-26 22:59:15', '2022-08-26 22:59:15', NULL, 1),
(1216, 2.85, '{\"215\":\"medium\"}', '', 0, 0, 0, 468, '2022-08-26 22:59:15', '2022-08-26 22:59:15', NULL, 1),
(1217, 2.85, '{\"215\":\"spicy\"}', '', 0, 0, 0, 468, '2022-08-26 22:59:15', '2022-08-26 22:59:15', NULL, 1),
(1221, 3.25, '{\"217\":\"no-spicy\"}', '', 0, 0, 0, 470, '2022-08-26 22:59:56', '2022-08-26 22:59:56', NULL, 1),
(1222, 3.25, '{\"217\":\"medium\"}', '', 0, 0, 0, 470, '2022-08-26 22:59:56', '2022-08-26 22:59:56', NULL, 1),
(1223, 3.25, '{\"217\":\"spicy\"}', '', 0, 0, 0, 470, '2022-08-26 22:59:56', '2022-08-26 22:59:56', NULL, 1),
(1224, 4.25, '{\"218\":\"no-spicy\"}', '', 0, 0, 0, 471, '2022-08-26 23:00:16', '2022-08-26 23:00:16', NULL, 1),
(1225, 4.25, '{\"218\":\"medium\"}', '', 0, 0, 0, 471, '2022-08-26 23:00:16', '2022-08-26 23:00:16', NULL, 1),
(1226, 4.25, '{\"218\":\"spicy\"}', '', 0, 0, 0, 471, '2022-08-26 23:00:16', '2022-08-26 23:00:16', NULL, 1),
(1227, 1.95, '{\"219\":\"no-spicy\"}', '', 0, 0, 0, 472, '2022-08-26 23:00:40', '2022-08-26 23:00:40', NULL, 1),
(1228, 1.95, '{\"219\":\"medium\"}', '', 0, 0, 0, 472, '2022-08-26 23:00:40', '2022-08-26 23:00:40', NULL, 1),
(1229, 1.95, '{\"219\":\"spicy\"}', '', 0, 0, 0, 472, '2022-08-26 23:00:40', '2022-08-26 23:00:40', NULL, 1),
(1230, 3.50, '{\"220\":\"no-spicy\"}', '', 0, 0, 0, 474, '2022-08-26 23:09:58', '2022-08-26 23:09:58', NULL, 1),
(1231, 3.50, '{\"220\":\"medium\"}', '', 0, 0, 0, 474, '2022-08-26 23:09:58', '2022-08-26 23:09:58', NULL, 1),
(1232, 3.50, '{\"220\":\"spicy\"}', '', 0, 0, 0, 474, '2022-08-26 23:09:58', '2022-08-26 23:09:58', NULL, 1),
(1233, 3.50, '{\"221\":\"no-spicy\"}', '', 0, 0, 0, 475, '2022-08-26 23:10:42', '2022-08-26 23:10:42', NULL, 1),
(1234, 3.50, '{\"221\":\"medium\"}', '', 0, 0, 0, 475, '2022-08-26 23:10:42', '2022-08-26 23:10:42', NULL, 1);
INSERT INTO `variants` (`id`, `price`, `options`, `image`, `qty`, `enable_qty`, `order`, `item_id`, `created_at`, `updated_at`, `deleted_at`, `is_system`) VALUES
(1235, 3.50, '{\"221\":\"spicy\"}', '', 0, 0, 0, 475, '2022-08-26 23:10:42', '2022-08-26 23:10:42', NULL, 1),
(1236, 4.25, '{\"222\":\"no-spicy\"}', '', 0, 0, 0, 476, '2022-08-26 23:11:13', '2022-08-26 23:11:13', NULL, 1),
(1237, 4.25, '{\"222\":\"medium\"}', '', 0, 0, 0, 476, '2022-08-26 23:11:13', '2022-08-26 23:11:13', NULL, 1),
(1238, 4.25, '{\"222\":\"spicy\"}', '', 0, 0, 0, 476, '2022-08-26 23:11:13', '2022-08-26 23:11:13', NULL, 1),
(1239, 2.45, '{\"223\":\"no-spicy\"}', '', 0, 0, 0, 477, '2022-08-26 23:11:50', '2022-08-26 23:11:50', NULL, 1),
(1240, 2.45, '{\"223\":\"medium\"}', '', 0, 0, 0, 477, '2022-08-26 23:11:50', '2022-08-26 23:11:50', NULL, 1),
(1241, 2.45, '{\"223\":\"spicy\"}', '', 0, 0, 0, 477, '2022-08-26 23:11:50', '2022-08-26 23:11:50', NULL, 1),
(1242, 3.50, '{\"224\":\"no-spicy\"}', '', 0, 0, 0, 478, '2022-08-26 23:25:43', '2022-08-26 23:25:43', NULL, 1),
(1243, 3.50, '{\"224\":\"medium\"}', '', 0, 0, 0, 478, '2022-08-26 23:25:43', '2022-08-26 23:25:43', NULL, 1),
(1244, 3.50, '{\"224\":\"spicy\"}', '', 0, 0, 0, 478, '2022-08-26 23:25:43', '2022-08-26 23:25:43', NULL, 1),
(1245, 2.95, '{\"225\":\"no-spicy\"}', '', 0, 0, 0, 482, '2022-08-26 23:26:07', '2022-08-26 23:26:07', NULL, 1),
(1246, 2.95, '{\"225\":\"medium\"}', '', 0, 0, 0, 482, '2022-08-26 23:26:07', '2022-08-26 23:26:07', NULL, 1),
(1247, 2.95, '{\"225\":\"spicy\"}', '', 0, 0, 0, 482, '2022-08-26 23:26:07', '2022-08-26 23:26:07', NULL, 1),
(1248, 1.25, '{\"226\":\"vegetables\"}', '', 0, 0, 0, 366, '2022-09-02 22:35:42', '2022-09-02 22:35:42', NULL, 0),
(1252, 1.65, '{\"226\":\"chicken\"}', '', 0, 0, 0, 366, '2022-09-02 22:35:50', '2022-09-02 22:35:50', NULL, 0),
(1255, 1.95, '{\"226\":\"shrimps\"}', '', 0, 0, 0, 366, '2022-09-02 22:35:57', '2022-09-02 22:35:57', NULL, 0),
(1257, 1.95, '{\"226\":\"crab\"}', '', 0, 0, 0, 366, '2022-09-02 22:36:02', '2022-09-02 22:36:02', NULL, 0),
(1258, 1.25, '{\"227\":\"vegetables\"}', '', 0, 0, 0, 367, '2022-09-02 22:37:29', '2022-09-02 22:37:29', NULL, 0),
(1262, 1.65, '{\"227\":\"chicken\"}', '', 0, 0, 0, 367, '2022-09-02 22:37:38', '2022-09-02 22:37:38', NULL, 0),
(1265, 1.95, '{\"227\":\"shrimps\"}', '', 0, 0, 0, 367, '2022-09-02 22:37:46', '2022-09-02 22:37:46', NULL, 0),
(1267, 1.95, '{\"227\":\"crab\"}', '', 0, 0, 0, 367, '2022-09-02 22:37:56', '2022-09-02 22:37:56', NULL, 0),
(1271, 1.65, '{\"228\":\"chicken\"}', '', 0, 0, 0, 368, '2022-09-02 22:38:56', '2022-09-02 22:38:56', NULL, 0),
(1273, 1.95, '{\"228\":\"shrimps\"}', '', 0, 0, 0, 368, '2022-09-02 22:39:06', '2022-09-02 22:39:06', NULL, 0),
(1274, 1.25, '{\"229\":\"vegetables\"}', '', 0, 0, 0, 369, '2022-09-02 22:39:55', '2022-09-02 22:39:55', NULL, 0),
(1278, 1.65, '{\"229\":\"chicken\"}', '', 0, 0, 0, 369, '2022-09-02 22:40:02', '2022-09-02 22:40:02', NULL, 0),
(1281, 1.95, '{\"229\":\"shrimps\"}', '', 0, 0, 0, 369, '2022-09-02 22:40:09', '2022-09-02 22:40:09', NULL, 0),
(1283, 1.95, '{\"229\":\"crab\"}', '', 0, 0, 0, 369, '2022-09-02 22:40:16', '2022-09-02 22:40:16', NULL, 0),
(1284, 2.25, '{\"190\":\"no-spicy\"}', '', 0, 0, 0, 370, '2022-09-02 22:40:40', '2022-09-02 22:40:40', NULL, 1),
(1285, 2.25, '{\"190\":\"medium\"}', '', 0, 0, 0, 370, '2022-09-02 22:40:40', '2022-09-02 22:40:40', NULL, 1),
(1286, 2.25, '{\"190\":\"spicy\"}', '', 0, 0, 0, 370, '2022-09-02 22:40:40', '2022-09-02 22:40:40', NULL, 1),
(1287, 1.25, '{\"230\":\"vegetables\"}', '', 0, 0, 0, 490, '2022-09-02 22:43:06', '2022-09-02 22:43:06', NULL, 0),
(1288, 1.45, '{\"230\":\"mushroom\"}', '', 0, 0, 0, 490, '2022-09-02 22:43:15', '2022-09-02 22:43:15', NULL, 0),
(1289, 1.25, '{\"230\":\"tomato\"}', '', 0, 0, 0, 490, '2022-09-02 22:43:23', '2022-09-02 22:43:23', NULL, 0),
(1290, 1.65, '{\"230\":\"chicken\"}', '', 0, 0, 0, 490, '2022-09-02 22:43:35', '2022-09-02 22:43:35', NULL, 0),
(1291, 2.25, '{\"183\":\"no-spicy\"}', '', 0, 0, 0, 356, '2022-09-02 22:48:11', '2022-09-02 22:48:11', NULL, 1),
(1292, 2.25, '{\"183\":\"medium\"}', '', 0, 0, 0, 356, '2022-09-02 22:48:11', '2022-09-02 22:48:11', NULL, 1),
(1293, 2.25, '{\"183\":\"spicy\"}', '', 0, 0, 0, 356, '2022-09-02 22:48:11', '2022-09-02 22:48:11', NULL, 1),
(1294, 2.45, '{\"181\":\"mixed\"}', '', 0, 0, 0, 365, '2022-09-02 22:49:16', '2022-09-02 22:49:16', NULL, 0),
(1295, 1.35, '{\"231\":\"vegetables\"}', '', 0, 0, 0, 502, '2022-09-02 22:54:25', '2022-09-02 22:54:25', NULL, 0),
(1296, 1.55, '{\"231\":\"cheese\"}', '', 0, 0, 0, 502, '2022-09-02 22:54:33', '2022-09-02 22:54:33', NULL, 0),
(1297, 4.95, '{\"232\":\"chicken\"}', '', 0, 0, 0, 463, '2022-09-02 23:08:44', '2022-09-02 23:08:44', NULL, 0),
(1299, 5.45, '{\"232\":\"beef\"}', '', 0, 0, 0, 463, '2022-09-02 23:08:51', '2022-09-02 23:08:51', NULL, 0),
(1300, 2.95, '{\"213\":\"no-spicy\"}', '', 0, 0, 0, 466, '2022-09-02 23:10:07', '2022-09-02 23:10:07', NULL, 1),
(1301, 2.95, '{\"213\":\"medium\"}', '', 0, 0, 0, 466, '2022-09-02 23:10:07', '2022-09-02 23:10:07', NULL, 1),
(1302, 2.95, '{\"213\":\"spicy\"}', '', 0, 0, 0, 466, '2022-09-02 23:10:07', '2022-09-02 23:10:07', NULL, 1),
(1306, 1.95, '{\"216\":\"vegetable\"}', '', 0, 0, 0, 469, '2022-09-03 00:25:45', '2022-09-03 00:25:45', NULL, 0),
(1311, 2.85, '{\"216\":\"chicken\"}', '', 0, 0, 0, 469, '2022-09-03 00:25:54', '2022-09-03 00:25:54', NULL, 0),
(1315, 2.95, '{\"216\":\"beef\"}', '', 0, 0, 0, 469, '2022-09-03 00:26:02', '2022-09-03 00:26:09', NULL, 0),
(1320, 3.85, '{\"216\":\"shrimps\"}', '', 0, 0, 0, 469, '2022-09-03 00:26:20', '2022-09-03 00:26:20', NULL, 0),
(1322, 3.65, '{\"216\":\"hammour\"}', '', 0, 0, 0, 469, '2022-09-03 00:26:28', '2022-09-03 00:26:28', NULL, 0),
(1323, 1.95, '{\"233\":\"vegetable\"}', '', 0, 0, 0, 538, '2022-09-03 00:29:10', '2022-09-03 00:29:10', NULL, 0),
(1324, 2.85, '{\"233\":\"chicken\"}', '', 0, 0, 0, 538, '2022-09-03 00:29:22', '2022-09-03 00:29:22', NULL, 0),
(1325, 2.95, '{\"233\":\"beef\"}', '', 0, 0, 0, 538, '2022-09-03 00:29:32', '2022-09-03 00:29:32', NULL, 0),
(1326, 3.85, '{\"233\":\"shrimps\"}', '', 0, 0, 0, 538, '2022-09-03 00:29:40', '2022-09-03 00:29:40', NULL, 0),
(1327, 3.85, '{\"233\":\"hammour\"}', '', 0, 0, 0, 538, '2022-09-03 00:30:11', '2022-09-03 00:30:11', NULL, 0),
(1328, 1.95, '{\"234\":\"5-pcs-of-your-choice\"}', '', 0, 0, 0, 373, '2022-09-03 00:47:41', '2022-09-03 00:47:41', NULL, 0),
(1329, 2.45, '{\"234\":\"8-pcs-of-your-choice\"}', '', 0, 0, 0, 373, '2022-09-03 00:47:47', '2022-09-03 00:47:47', NULL, 0),
(1330, 1.95, '{\"235\":\"vegetables\"}', '', 0, 0, 0, 556, '2022-09-03 00:56:51', '2022-09-03 00:56:51', NULL, 0),
(1331, 2.95, '{\"235\":\"chicken\"}', '', 0, 0, 0, 556, '2022-09-03 00:57:02', '2022-09-03 00:57:02', NULL, 0),
(1332, 3.50, '{\"235\":\"beef\"}', '', 0, 0, 0, 556, '2022-09-03 00:57:45', '2022-09-03 00:57:45', NULL, 0),
(1333, 3.25, '{\"235\":\"shrimps\"}', '', 0, 0, 0, 556, '2022-09-03 00:57:56', '2022-09-03 00:57:56', NULL, 0),
(1334, 2.25, '{\"236\":\"vegetable\"}', '', 0, 0, 0, 558, '2022-09-03 00:59:21', '2022-09-03 00:59:21', NULL, 0),
(1335, 2.95, '{\"236\":\"chicken\"}', '', 0, 0, 0, 558, '2022-09-03 00:59:31', '2022-09-03 00:59:31', NULL, 0),
(1336, 3.25, '{\"236\":\"mixed\"}', '', 0, 0, 0, 558, '2022-09-03 00:59:39', '2022-09-03 00:59:39', NULL, 0),
(1337, 3.25, '{\"236\":\"shrimps\"}', '', 0, 0, 0, 558, '2022-09-03 00:59:48', '2022-09-03 00:59:48', NULL, 0),
(1338, 2.95, '{\"237\":\"chicken\"}', '', 0, 0, 0, 561, '2022-09-03 01:05:52', '2022-09-03 01:05:52', NULL, 0),
(1339, 3.65, '{\"237\":\"shrimps\"}', '', 0, 0, 0, 561, '2022-09-03 01:05:58', '2022-09-03 01:05:58', NULL, 0),
(1340, 2.45, '{\"237\":\"vegetables\"}', '', 0, 0, 0, 561, '2022-09-03 01:06:06', '2022-09-03 01:06:06', NULL, 0),
(1341, 3.95, '{\"237\":\"mixed\"}', '', 0, 0, 0, 561, '2022-09-03 01:06:21', '2022-09-03 01:06:21', NULL, 0),
(1342, 2.25, '{\"238\":\"half\"}', '', 0, 0, 0, 570, '2022-09-03 06:32:41', '2022-09-03 06:32:41', NULL, 0),
(1343, 3.95, '{\"238\":\"full\"}', '', 0, 0, 0, 570, '2022-09-03 06:32:49', '2022-09-03 06:33:15', NULL, 0),
(1344, 2.95, '{\"239\":\"chicken\"}', '', 0, 0, 0, 575, '2022-09-03 06:36:06', '2022-09-03 06:36:06', NULL, 0),
(1345, 3.25, '{\"239\":\"mutton\"}', '', 0, 0, 0, 575, '2022-09-03 06:36:13', '2022-09-03 06:36:13', NULL, 0),
(1346, 2.25, '{\"240\":\"half\"}', '', 0, 0, 0, 410, '2022-09-03 06:43:11', '2022-09-03 06:43:11', NULL, 0),
(1347, 3.95, '{\"240\":\"full\"}', '', 0, 0, 0, 410, '2022-09-03 06:43:21', '2022-09-03 06:43:21', NULL, 0),
(1348, 3.50, '{\"199\":\"no-spicy\"}', '', 0, 0, 0, 449, '2022-09-03 07:00:23', '2022-09-03 07:00:23', NULL, 1),
(1349, 3.50, '{\"199\":\"medium\"}', '', 0, 0, 0, 449, '2022-09-03 07:00:23', '2022-09-03 07:00:23', NULL, 1),
(1350, 3.50, '{\"199\":\"spicy\"}', '', 0, 0, 0, 449, '2022-09-03 07:00:23', '2022-09-03 07:00:23', NULL, 1),
(1354, 3.25, '{\"241\":\"chicken\"}', '', 0, 0, 0, 450, '2022-09-03 07:01:30', '2022-09-03 07:01:30', NULL, 0),
(1358, 3.50, '{\"241\":\"mutton\"}', '', 0, 0, 0, 450, '2022-09-03 07:01:38', '2022-09-03 07:01:38', NULL, 0),
(1361, 3.95, '{\"241\":\"prawn\"}', '', 0, 0, 0, 450, '2022-09-03 07:01:47', '2022-09-03 07:01:47', NULL, 0),
(1363, 3.95, '{\"241\":\"fish\"}', '', 0, 0, 0, 450, '2022-09-03 07:01:52', '2022-09-03 07:01:52', NULL, 0),
(1364, 3.25, '{\"202\":\"no-spicy\"}', '', 0, 0, 0, 453, '2022-09-03 07:02:18', '2022-09-03 07:02:18', NULL, 1),
(1365, 3.25, '{\"202\":\"medium\"}', '', 0, 0, 0, 453, '2022-09-03 07:02:18', '2022-09-03 07:02:18', NULL, 1),
(1366, 3.25, '{\"202\":\"spicy\"}', '', 0, 0, 0, 453, '2022-09-03 07:02:18', '2022-09-03 07:02:18', NULL, 1),
(1367, 2.85, '{\"242\":\"chicken\"}', '', 0, 0, 0, 454, '2022-09-03 07:03:09', '2022-09-03 07:03:09', NULL, 0),
(1369, 2.95, '{\"242\":\"mutton\"}', '', 0, 0, 0, 454, '2022-09-03 07:03:16', '2022-09-03 07:03:16', NULL, 0),
(1370, 3.25, '{\"243\":\"chicken\"}', '', 0, 0, 0, 593, '2022-09-03 07:08:25', '2022-09-03 07:08:25', NULL, 0),
(1371, 3.50, '{\"243\":\"mutton\"}', '', 0, 0, 0, 593, '2022-09-03 07:08:32', '2022-09-03 07:08:32', NULL, 0),
(1372, 3.25, '{\"244\":\"chicken\"}', '', 0, 0, 0, 594, '2022-09-03 07:09:29', '2022-09-03 07:09:29', NULL, 0),
(1373, 3.50, '{\"244\":\"mutton\"}', '', 0, 0, 0, 594, '2022-09-03 07:09:36', '2022-09-03 07:09:36', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `variants_has_extras`
--

CREATE TABLE `variants_has_extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `extra_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants_has_extras`
--

INSERT INTO `variants_has_extras` (`id`, `created_at`, `updated_at`, `variant_id`, `extra_id`) VALUES
(1, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 1, 21),
(2, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 2, 21),
(3, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 3, 21),
(4, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 4, 21),
(5, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 5, 21),
(6, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 6, 21),
(7, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 7, 22),
(8, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 8, 22),
(9, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 9, 22),
(10, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 10, 22),
(11, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 11, 22),
(12, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 12, 22),
(13, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 13, 25),
(14, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 14, 25),
(15, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 15, 25),
(16, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 16, 25),
(17, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 17, 25),
(18, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 18, 25),
(19, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 19, 26),
(20, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 20, 26),
(21, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 21, 26),
(22, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 22, 26),
(23, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 23, 26),
(24, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 24, 26),
(25, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 25, 29),
(26, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 26, 29),
(27, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 27, 29),
(28, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 28, 29),
(29, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 29, 29),
(30, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 30, 29),
(31, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 31, 30),
(32, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 32, 30),
(33, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 33, 30),
(34, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 34, 30),
(35, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 35, 30),
(36, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 36, 30),
(37, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 37, 33),
(38, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 38, 33),
(39, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 39, 33),
(40, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 40, 33),
(41, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 41, 33),
(42, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 42, 33),
(43, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 43, 34),
(44, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 44, 34),
(45, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 45, 34),
(46, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 46, 34),
(47, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 47, 34),
(48, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 48, 34),
(49, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 49, 37),
(50, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 50, 37),
(51, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 51, 37),
(52, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 52, 37),
(53, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 53, 37),
(54, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 54, 37),
(55, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 55, 38),
(56, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 56, 38),
(57, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 57, 38),
(58, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 58, 38),
(59, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 59, 38),
(60, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 60, 38),
(61, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 61, 41),
(62, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 62, 41),
(63, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 63, 41),
(64, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 64, 41),
(65, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 65, 41),
(66, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 66, 41),
(67, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 67, 42),
(68, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 68, 42),
(69, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 69, 42),
(70, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 70, 42),
(71, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 71, 42),
(72, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 72, 42),
(73, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 73, 45),
(74, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 74, 45),
(75, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 75, 45),
(76, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 76, 45),
(77, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 77, 45),
(78, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 78, 45),
(79, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 79, 46),
(80, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 80, 46),
(81, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 81, 46),
(82, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 82, 46),
(83, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 83, 46),
(84, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 84, 46),
(85, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 85, 49),
(86, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 86, 49),
(87, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 87, 49),
(88, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 88, 49),
(89, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 89, 49),
(90, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 90, 49),
(91, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 91, 50),
(92, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 92, 50),
(93, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 93, 50),
(94, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 94, 50),
(95, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 95, 50),
(96, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 96, 50),
(97, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 97, 53),
(98, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 98, 53),
(99, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 99, 53),
(100, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 100, 53),
(101, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 101, 53),
(102, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 102, 53),
(103, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 103, 54),
(104, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 104, 54),
(105, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 105, 54),
(106, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 106, 54),
(107, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 107, 54),
(108, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 108, 54),
(109, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 109, 57),
(110, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 110, 57),
(111, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 111, 57),
(112, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 112, 57),
(113, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 113, 57),
(114, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 114, 57),
(115, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 115, 58),
(116, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 116, 58),
(117, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 117, 58),
(118, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 118, 58),
(119, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 119, 58),
(120, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 120, 58),
(121, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 121, 61),
(122, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 122, 61),
(123, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 123, 61),
(124, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 124, 61),
(125, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 125, 61),
(126, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 126, 61),
(127, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 127, 62),
(128, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 128, 62),
(129, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 129, 62),
(130, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 130, 62),
(131, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 131, 62),
(132, '2022-08-18 19:44:45', '2022-08-18 19:44:45', 132, 62),
(133, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 133, 83),
(134, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 134, 83),
(135, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 135, 83),
(136, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 136, 83),
(137, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 137, 83),
(138, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 138, 83),
(139, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 139, 84),
(140, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 140, 84),
(141, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 141, 84),
(142, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 142, 84),
(143, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 143, 84),
(144, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 144, 84),
(145, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 145, 87),
(146, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 146, 87),
(147, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 147, 87),
(148, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 148, 87),
(149, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 149, 87),
(150, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 150, 87),
(151, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 151, 88),
(152, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 152, 88),
(153, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 153, 88),
(154, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 154, 88),
(155, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 155, 88),
(156, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 156, 88),
(157, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 157, 91),
(158, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 158, 91),
(159, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 159, 91),
(160, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 160, 91),
(161, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 161, 91),
(162, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 162, 91),
(163, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 163, 92),
(164, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 164, 92),
(165, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 165, 92),
(166, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 166, 92),
(167, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 167, 92),
(168, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 168, 92),
(169, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 169, 95),
(170, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 170, 95),
(171, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 171, 95),
(172, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 172, 95),
(173, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 173, 95),
(174, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 174, 95),
(175, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 175, 96),
(176, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 176, 96),
(177, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 177, 96),
(178, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 178, 96),
(179, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 179, 96),
(180, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 180, 96),
(181, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 181, 99),
(182, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 182, 99),
(183, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 183, 99),
(184, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 184, 99),
(185, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 185, 99),
(186, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 186, 99),
(187, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 187, 100),
(188, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 188, 100),
(189, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 189, 100),
(190, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 190, 100),
(191, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 191, 100),
(192, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 192, 100),
(193, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 193, 103),
(194, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 194, 103),
(195, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 195, 103),
(196, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 196, 103),
(197, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 197, 103),
(198, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 198, 103),
(199, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 199, 104),
(200, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 200, 104),
(201, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 201, 104),
(202, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 202, 104),
(203, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 203, 104),
(204, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 204, 104),
(205, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 205, 107),
(206, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 206, 107),
(207, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 207, 107),
(208, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 208, 107),
(209, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 209, 107),
(210, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 210, 107),
(211, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 211, 108),
(212, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 212, 108),
(213, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 213, 108),
(214, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 214, 108),
(215, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 215, 108),
(216, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 216, 108),
(217, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 217, 111),
(218, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 218, 111),
(219, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 219, 111),
(220, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 220, 111),
(221, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 221, 111),
(222, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 222, 111),
(223, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 223, 112),
(224, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 224, 112),
(225, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 225, 112),
(226, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 226, 112),
(227, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 227, 112),
(228, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 228, 112),
(229, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 229, 115),
(230, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 230, 115),
(231, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 231, 115),
(232, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 232, 115),
(233, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 233, 115),
(234, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 234, 115),
(235, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 235, 116),
(236, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 236, 116),
(237, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 237, 116),
(238, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 238, 116),
(239, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 239, 116),
(240, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 240, 116),
(241, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 241, 119),
(242, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 242, 119),
(243, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 243, 119),
(244, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 244, 119),
(245, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 245, 119),
(246, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 246, 119),
(247, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 247, 120),
(248, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 248, 120),
(249, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 249, 120),
(250, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 250, 120),
(251, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 251, 120),
(252, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 252, 120),
(253, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 253, 123),
(254, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 254, 123),
(255, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 255, 123),
(256, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 256, 123),
(257, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 257, 123),
(258, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 258, 123),
(259, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 259, 124),
(260, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 260, 124),
(261, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 261, 124),
(262, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 262, 124),
(263, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 263, 124),
(264, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 264, 124),
(265, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 265, 145),
(266, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 266, 145),
(267, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 267, 145),
(268, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 268, 145),
(269, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 269, 145),
(270, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 270, 145),
(271, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 271, 146),
(272, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 272, 146),
(273, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 273, 146),
(274, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 274, 146),
(275, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 275, 146),
(276, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 276, 146),
(277, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 277, 149),
(278, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 278, 149),
(279, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 279, 149),
(280, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 280, 149),
(281, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 281, 149),
(282, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 282, 149),
(283, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 283, 150),
(284, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 284, 150),
(285, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 285, 150),
(286, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 286, 150),
(287, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 287, 150),
(288, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 288, 150),
(289, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 289, 153),
(290, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 290, 153),
(291, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 291, 153),
(292, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 292, 153),
(293, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 293, 153),
(294, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 294, 153),
(295, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 295, 154),
(296, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 296, 154),
(297, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 297, 154),
(298, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 298, 154),
(299, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 299, 154),
(300, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 300, 154),
(301, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 301, 157),
(302, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 302, 157),
(303, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 303, 157),
(304, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 304, 157),
(305, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 305, 157),
(306, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 306, 157),
(307, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 307, 158),
(308, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 308, 158),
(309, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 309, 158),
(310, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 310, 158),
(311, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 311, 158),
(312, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 312, 158),
(313, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 313, 161),
(314, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 314, 161),
(315, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 315, 161),
(316, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 316, 161),
(317, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 317, 161),
(318, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 318, 161),
(319, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 319, 162),
(320, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 320, 162),
(321, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 321, 162),
(322, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 322, 162),
(323, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 323, 162),
(324, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 324, 162),
(325, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 325, 165),
(326, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 326, 165),
(327, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 327, 165),
(328, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 328, 165),
(329, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 329, 165),
(330, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 330, 165),
(331, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 331, 166),
(332, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 332, 166),
(333, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 333, 166),
(334, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 334, 166),
(335, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 335, 166),
(336, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 336, 166),
(337, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 337, 169),
(338, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 338, 169),
(339, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 339, 169),
(340, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 340, 169),
(341, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 341, 169),
(342, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 342, 169),
(343, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 343, 170),
(344, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 344, 170),
(345, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 345, 170),
(346, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 346, 170),
(347, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 347, 170),
(348, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 348, 170),
(349, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 349, 173),
(350, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 350, 173),
(351, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 351, 173),
(352, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 352, 173),
(353, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 353, 173),
(354, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 354, 173),
(355, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 355, 174),
(356, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 356, 174),
(357, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 357, 174),
(358, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 358, 174),
(359, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 359, 174),
(360, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 360, 174),
(361, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 361, 177),
(362, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 362, 177),
(363, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 363, 177),
(364, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 364, 177),
(365, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 365, 177),
(366, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 366, 177),
(367, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 367, 178),
(368, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 368, 178),
(369, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 369, 178),
(370, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 370, 178),
(371, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 371, 178),
(372, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 372, 178),
(373, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 373, 181),
(374, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 374, 181),
(375, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 375, 181),
(376, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 376, 181),
(377, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 377, 181),
(378, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 378, 181),
(379, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 379, 182),
(380, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 380, 182),
(381, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 381, 182),
(382, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 382, 182),
(383, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 383, 182),
(384, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 384, 182),
(385, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 385, 185),
(386, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 386, 185),
(387, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 387, 185),
(388, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 388, 185),
(389, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 389, 185),
(390, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 390, 185),
(391, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 391, 186),
(392, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 392, 186),
(393, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 393, 186),
(394, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 394, 186),
(395, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 395, 186),
(396, '2022-08-18 19:44:46', '2022-08-18 19:44:46', 396, 186),
(397, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 397, 207),
(398, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 398, 207),
(399, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 399, 207),
(400, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 400, 207),
(401, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 401, 207),
(402, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 402, 207),
(403, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 403, 208),
(404, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 404, 208),
(405, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 405, 208),
(406, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 406, 208),
(407, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 407, 208),
(408, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 408, 208),
(409, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 409, 211),
(410, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 410, 211),
(411, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 411, 211),
(412, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 412, 211),
(413, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 413, 211),
(414, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 414, 211),
(415, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 415, 212),
(416, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 416, 212),
(417, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 417, 212),
(418, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 418, 212),
(419, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 419, 212),
(420, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 420, 212),
(421, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 421, 215),
(422, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 422, 215),
(423, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 423, 215),
(424, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 424, 215),
(425, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 425, 215),
(426, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 426, 215),
(427, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 427, 216),
(428, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 428, 216),
(429, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 429, 216),
(430, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 430, 216),
(431, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 431, 216),
(432, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 432, 216),
(433, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 433, 219),
(434, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 434, 219),
(435, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 435, 219),
(436, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 436, 219),
(437, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 437, 219),
(438, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 438, 219),
(439, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 439, 220),
(440, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 440, 220),
(441, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 441, 220),
(442, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 442, 220),
(443, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 443, 220),
(444, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 444, 220),
(445, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 445, 223),
(446, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 446, 223),
(447, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 447, 223),
(448, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 448, 223),
(449, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 449, 223),
(450, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 450, 223),
(451, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 451, 224),
(452, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 452, 224),
(453, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 453, 224),
(454, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 454, 224),
(455, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 455, 224),
(456, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 456, 224),
(457, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 457, 227),
(458, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 458, 227),
(459, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 459, 227),
(460, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 460, 227),
(461, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 461, 227),
(462, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 462, 227),
(463, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 463, 228),
(464, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 464, 228),
(465, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 465, 228),
(466, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 466, 228),
(467, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 467, 228),
(468, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 468, 228),
(469, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 469, 231),
(470, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 470, 231),
(471, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 471, 231),
(472, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 472, 231),
(473, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 473, 231),
(474, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 474, 231),
(475, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 475, 232),
(476, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 476, 232),
(477, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 477, 232),
(478, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 478, 232),
(479, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 479, 232),
(480, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 480, 232),
(481, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 481, 235),
(482, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 482, 235),
(483, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 483, 235),
(484, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 484, 235),
(485, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 485, 235),
(486, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 486, 235),
(487, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 487, 236),
(488, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 488, 236),
(489, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 489, 236),
(490, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 490, 236),
(491, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 491, 236),
(492, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 492, 236),
(493, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 493, 239),
(494, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 494, 239),
(495, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 495, 239),
(496, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 496, 239),
(497, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 497, 239),
(498, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 498, 239),
(499, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 499, 240),
(500, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 500, 240),
(501, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 501, 240),
(502, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 502, 240),
(503, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 503, 240),
(504, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 504, 240),
(505, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 505, 243),
(506, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 506, 243),
(507, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 507, 243),
(508, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 508, 243),
(509, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 509, 243),
(510, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 510, 243),
(511, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 511, 244),
(512, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 512, 244),
(513, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 513, 244),
(514, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 514, 244),
(515, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 515, 244),
(516, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 516, 244),
(517, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 517, 247),
(518, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 518, 247),
(519, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 519, 247),
(520, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 520, 247),
(521, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 521, 247),
(522, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 522, 247),
(523, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 523, 248),
(524, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 524, 248),
(525, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 525, 248),
(526, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 526, 248),
(527, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 527, 248),
(528, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 528, 248),
(529, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 529, 269),
(530, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 530, 269),
(531, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 531, 269),
(532, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 532, 269),
(533, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 533, 269),
(534, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 534, 269),
(535, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 535, 270),
(536, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 536, 270),
(537, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 537, 270),
(538, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 538, 270),
(539, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 539, 270),
(540, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 540, 270),
(541, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 541, 273),
(542, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 542, 273),
(543, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 543, 273),
(544, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 544, 273),
(545, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 545, 273),
(546, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 546, 273),
(547, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 547, 274),
(548, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 548, 274),
(549, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 549, 274),
(550, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 550, 274),
(551, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 551, 274),
(552, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 552, 274),
(553, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 553, 277),
(554, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 554, 277),
(555, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 555, 277),
(556, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 556, 277),
(557, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 557, 277),
(558, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 558, 277),
(559, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 559, 278),
(560, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 560, 278),
(561, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 561, 278),
(562, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 562, 278),
(563, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 563, 278),
(564, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 564, 278),
(565, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 565, 281),
(566, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 566, 281),
(567, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 567, 281),
(568, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 568, 281),
(569, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 569, 281),
(570, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 570, 281),
(571, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 571, 282),
(572, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 572, 282),
(573, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 573, 282),
(574, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 574, 282),
(575, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 575, 282),
(576, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 576, 282),
(577, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 577, 285),
(578, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 578, 285),
(579, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 579, 285),
(580, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 580, 285),
(581, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 581, 285),
(582, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 582, 285),
(583, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 583, 286),
(584, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 584, 286),
(585, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 585, 286),
(586, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 586, 286),
(587, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 587, 286),
(588, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 588, 286),
(589, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 589, 289),
(590, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 590, 289),
(591, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 591, 289),
(592, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 592, 289),
(593, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 593, 289),
(594, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 594, 289),
(595, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 595, 290),
(596, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 596, 290),
(597, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 597, 290),
(598, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 598, 290),
(599, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 599, 290),
(600, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 600, 290),
(601, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 601, 293),
(602, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 602, 293),
(603, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 603, 293),
(604, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 604, 293),
(605, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 605, 293),
(606, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 606, 293),
(607, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 607, 294),
(608, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 608, 294),
(609, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 609, 294),
(610, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 610, 294),
(611, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 611, 294),
(612, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 612, 294),
(613, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 613, 297),
(614, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 614, 297),
(615, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 615, 297),
(616, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 616, 297),
(617, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 617, 297),
(618, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 618, 297),
(619, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 619, 298),
(620, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 620, 298),
(621, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 621, 298),
(622, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 622, 298),
(623, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 623, 298),
(624, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 624, 298),
(625, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 625, 301),
(626, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 626, 301),
(627, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 627, 301),
(628, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 628, 301),
(629, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 629, 301),
(630, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 630, 301),
(631, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 631, 302),
(632, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 632, 302),
(633, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 633, 302),
(634, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 634, 302),
(635, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 635, 302),
(636, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 636, 302),
(637, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 637, 305),
(638, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 638, 305),
(639, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 639, 305),
(640, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 640, 305),
(641, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 641, 305),
(642, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 642, 305),
(643, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 643, 306),
(644, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 644, 306),
(645, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 645, 306),
(646, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 646, 306),
(647, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 647, 306),
(648, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 648, 306),
(649, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 649, 309),
(650, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 650, 309),
(651, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 651, 309),
(652, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 652, 309),
(653, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 653, 309),
(654, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 654, 309),
(655, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 655, 310),
(656, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 656, 310),
(657, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 657, 310),
(658, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 658, 310),
(659, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 659, 310),
(660, '2022-08-18 19:44:47', '2022-08-18 19:44:47', 660, 310),
(661, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 661, 331),
(662, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 662, 331),
(663, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 663, 331),
(664, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 664, 331),
(665, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 665, 331),
(666, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 666, 331),
(667, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 667, 332),
(668, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 668, 332),
(669, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 669, 332),
(670, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 670, 332),
(671, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 671, 332),
(672, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 672, 332),
(673, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 673, 335),
(674, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 674, 335),
(675, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 675, 335),
(676, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 676, 335),
(677, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 677, 335),
(678, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 678, 335),
(679, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 679, 336),
(680, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 680, 336),
(681, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 681, 336),
(682, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 682, 336),
(683, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 683, 336),
(684, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 684, 336),
(685, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 685, 339),
(686, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 686, 339),
(687, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 687, 339),
(688, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 688, 339),
(689, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 689, 339),
(690, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 690, 339),
(691, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 691, 340),
(692, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 692, 340),
(693, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 693, 340),
(694, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 694, 340),
(695, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 695, 340),
(696, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 696, 340),
(697, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 697, 343),
(698, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 698, 343),
(699, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 699, 343),
(700, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 700, 343),
(701, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 701, 343),
(702, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 702, 343),
(703, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 703, 344),
(704, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 704, 344),
(705, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 705, 344),
(706, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 706, 344),
(707, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 707, 344),
(708, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 708, 344),
(709, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 709, 347),
(710, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 710, 347),
(711, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 711, 347),
(712, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 712, 347),
(713, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 713, 347),
(714, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 714, 347),
(715, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 715, 348),
(716, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 716, 348),
(717, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 717, 348),
(718, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 718, 348),
(719, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 719, 348),
(720, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 720, 348),
(721, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 721, 351),
(722, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 722, 351),
(723, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 723, 351),
(724, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 724, 351),
(725, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 725, 351),
(726, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 726, 351),
(727, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 727, 352),
(728, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 728, 352),
(729, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 729, 352),
(730, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 730, 352),
(731, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 731, 352),
(732, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 732, 352),
(733, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 733, 355),
(734, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 734, 355),
(735, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 735, 355),
(736, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 736, 355),
(737, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 737, 355),
(738, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 738, 355),
(739, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 739, 356),
(740, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 740, 356),
(741, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 741, 356),
(742, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 742, 356),
(743, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 743, 356),
(744, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 744, 356),
(745, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 745, 359),
(746, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 746, 359),
(747, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 747, 359),
(748, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 748, 359),
(749, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 749, 359),
(750, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 750, 359),
(751, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 751, 360),
(752, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 752, 360),
(753, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 753, 360),
(754, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 754, 360),
(755, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 755, 360),
(756, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 756, 360),
(757, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 757, 363),
(758, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 758, 363),
(759, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 759, 363),
(760, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 760, 363),
(761, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 761, 363),
(762, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 762, 363),
(763, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 763, 364),
(764, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 764, 364),
(765, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 765, 364),
(766, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 766, 364),
(767, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 767, 364),
(768, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 768, 364),
(769, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 769, 367),
(770, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 770, 367),
(771, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 771, 367),
(772, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 772, 367),
(773, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 773, 367),
(774, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 774, 367),
(775, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 775, 368),
(776, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 776, 368),
(777, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 777, 368),
(778, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 778, 368),
(779, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 779, 368),
(780, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 780, 368),
(781, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 781, 371),
(782, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 782, 371),
(783, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 783, 371),
(784, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 784, 371),
(785, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 785, 371),
(786, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 786, 371),
(787, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 787, 372),
(788, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 788, 372),
(789, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 789, 372),
(790, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 790, 372),
(791, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 791, 372),
(792, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 792, 372),
(793, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 793, 393),
(794, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 794, 393),
(795, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 795, 393),
(796, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 796, 393),
(797, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 797, 393),
(798, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 798, 393),
(799, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 799, 394),
(800, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 800, 394),
(801, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 801, 394),
(802, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 802, 394),
(803, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 803, 394),
(804, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 804, 394),
(805, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 805, 397),
(806, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 806, 397),
(807, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 807, 397),
(808, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 808, 397),
(809, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 809, 397),
(810, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 810, 397),
(811, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 811, 398),
(812, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 812, 398),
(813, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 813, 398),
(814, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 814, 398),
(815, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 815, 398),
(816, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 816, 398),
(817, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 817, 401),
(818, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 818, 401),
(819, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 819, 401),
(820, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 820, 401),
(821, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 821, 401),
(822, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 822, 401),
(823, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 823, 402),
(824, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 824, 402);
INSERT INTO `variants_has_extras` (`id`, `created_at`, `updated_at`, `variant_id`, `extra_id`) VALUES
(825, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 825, 402),
(826, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 826, 402),
(827, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 827, 402),
(828, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 828, 402),
(829, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 829, 405),
(830, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 830, 405),
(831, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 831, 405),
(832, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 832, 405),
(833, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 833, 405),
(834, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 834, 405),
(835, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 835, 406),
(836, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 836, 406),
(837, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 837, 406),
(838, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 838, 406),
(839, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 839, 406),
(840, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 840, 406),
(841, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 841, 409),
(842, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 842, 409),
(843, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 843, 409),
(844, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 844, 409),
(845, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 845, 409),
(846, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 846, 409),
(847, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 847, 410),
(848, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 848, 410),
(849, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 849, 410),
(850, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 850, 410),
(851, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 851, 410),
(852, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 852, 410),
(853, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 853, 413),
(854, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 854, 413),
(855, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 855, 413),
(856, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 856, 413),
(857, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 857, 413),
(858, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 858, 413),
(859, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 859, 414),
(860, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 860, 414),
(861, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 861, 414),
(862, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 862, 414),
(863, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 863, 414),
(864, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 864, 414),
(865, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 865, 417),
(866, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 866, 417),
(867, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 867, 417),
(868, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 868, 417),
(869, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 869, 417),
(870, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 870, 417),
(871, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 871, 418),
(872, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 872, 418),
(873, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 873, 418),
(874, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 874, 418),
(875, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 875, 418),
(876, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 876, 418),
(877, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 877, 421),
(878, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 878, 421),
(879, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 879, 421),
(880, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 880, 421),
(881, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 881, 421),
(882, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 882, 421),
(883, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 883, 422),
(884, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 884, 422),
(885, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 885, 422),
(886, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 886, 422),
(887, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 887, 422),
(888, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 888, 422),
(889, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 889, 425),
(890, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 890, 425),
(891, '2022-08-18 19:44:48', '2022-08-18 19:44:48', 891, 425),
(892, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 892, 425),
(893, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 893, 425),
(894, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 894, 425),
(895, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 895, 426),
(896, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 896, 426),
(897, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 897, 426),
(898, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 898, 426),
(899, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 899, 426),
(900, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 900, 426),
(901, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 901, 429),
(902, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 902, 429),
(903, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 903, 429),
(904, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 904, 429),
(905, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 905, 429),
(906, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 906, 429),
(907, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 907, 430),
(908, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 908, 430),
(909, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 909, 430),
(910, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 910, 430),
(911, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 911, 430),
(912, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 912, 430),
(913, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 913, 433),
(914, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 914, 433),
(915, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 915, 433),
(916, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 916, 433),
(917, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 917, 433),
(918, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 918, 433),
(919, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 919, 434),
(920, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 920, 434),
(921, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 921, 434),
(922, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 922, 434),
(923, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 923, 434),
(924, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 924, 434),
(925, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 925, 437),
(926, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 926, 437),
(927, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 927, 437),
(928, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 928, 437),
(929, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 929, 437),
(930, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 930, 437),
(931, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 931, 438),
(932, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 932, 438),
(933, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 933, 438),
(934, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 934, 438),
(935, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 935, 438),
(936, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 936, 438),
(937, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 937, 441),
(938, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 938, 441),
(939, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 939, 441),
(940, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 940, 441),
(941, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 941, 441),
(942, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 942, 441),
(943, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 943, 442),
(944, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 944, 442),
(945, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 945, 442),
(946, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 946, 442),
(947, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 947, 442),
(948, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 948, 442),
(949, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 949, 445),
(950, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 950, 445),
(951, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 951, 445),
(952, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 952, 445),
(953, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 953, 445),
(954, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 954, 445),
(955, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 955, 446),
(956, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 956, 446),
(957, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 957, 446),
(958, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 958, 446),
(959, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 959, 446),
(960, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 960, 446),
(961, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 961, 449),
(962, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 962, 449),
(963, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 963, 449),
(964, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 964, 449),
(965, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 965, 449),
(966, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 966, 449),
(967, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 967, 450),
(968, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 968, 450),
(969, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 969, 450),
(970, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 970, 450),
(971, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 971, 450),
(972, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 972, 450),
(973, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 973, 453),
(974, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 974, 453),
(975, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 975, 453),
(976, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 976, 453),
(977, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 977, 453),
(978, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 978, 453),
(979, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 979, 454),
(980, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 980, 454),
(981, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 981, 454),
(982, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 982, 454),
(983, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 983, 454),
(984, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 984, 454),
(985, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 985, 457),
(986, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 986, 457),
(987, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 987, 457),
(988, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 988, 457),
(989, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 989, 457),
(990, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 990, 457),
(991, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 991, 458),
(992, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 992, 458),
(993, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 993, 458),
(994, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 994, 458),
(995, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 995, 458),
(996, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 996, 458),
(997, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 997, 461),
(998, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 998, 461),
(999, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 999, 461),
(1000, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1000, 461),
(1001, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1001, 461),
(1002, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1002, 461),
(1003, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1003, 462),
(1004, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1004, 462),
(1005, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1005, 462),
(1006, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1006, 462),
(1007, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1007, 462),
(1008, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1008, 462),
(1009, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1009, 465),
(1010, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1010, 465),
(1011, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1011, 465),
(1012, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1012, 465),
(1013, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1013, 465),
(1014, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1014, 465),
(1015, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1015, 466),
(1016, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1016, 466),
(1017, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1017, 466),
(1018, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1018, 466),
(1019, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1019, 466),
(1020, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1020, 466),
(1021, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1021, 469),
(1022, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1022, 469),
(1023, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1023, 469),
(1024, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1024, 469),
(1025, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1025, 469),
(1026, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1026, 469),
(1027, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1027, 470),
(1028, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1028, 470),
(1029, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1029, 470),
(1030, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1030, 470),
(1031, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1031, 470),
(1032, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1032, 470),
(1033, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1033, 473),
(1034, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1034, 473),
(1035, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1035, 473),
(1036, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1036, 473),
(1037, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1037, 473),
(1038, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1038, 473),
(1039, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1039, 474),
(1040, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1040, 474),
(1041, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1041, 474),
(1042, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1042, 474),
(1043, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1043, 474),
(1044, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1044, 474),
(1045, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1045, 477),
(1046, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1046, 477),
(1047, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1047, 477),
(1048, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1048, 477),
(1049, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1049, 477),
(1050, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1050, 477),
(1051, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1051, 478),
(1052, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1052, 478),
(1053, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1053, 478),
(1054, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1054, 478),
(1055, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1055, 478),
(1056, '2022-08-18 19:44:49', '2022-08-18 19:44:49', 1056, 478);

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `table_id` bigint(20) UNSIGNED DEFAULT NULL,
  `by` int(11) NOT NULL DEFAULT '1' COMMENT '1 - Owner, 0 - Client Himself',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_user_id_foreign` (`user_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banners_vendor_id_foreign` (`vendor_id`),
  ADD KEY `banners_page_id_foreign` (`page_id`);

--
-- Indexes for table `cart_storage`
--
ALTER TABLE `cart_storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_storage_id_index` (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_restorant_id_foreign` (`restorant_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_alias_unique` (`alias`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restorants_name_unique` (`name`),
  ADD UNIQUE KEY `restorants_subdomain_unique` (`subdomain`),
  ADD KEY `restorants_user_id_foreign` (`user_id`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`),
  ADD KEY `coupons_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_restaurant_id_foreign` (`restaurant_id`),
  ADD KEY `expenses_expenses_category_id_foreign` (`expenses_category_id`),
  ADD KEY `expenses_expenses_vendor_id_foreign` (`expenses_vendor_id`);

--
-- Indexes for table `expenses_category`
--
ALTER TABLE `expenses_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_category_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `expenses_vendor`
--
ALTER TABLE `expenses_vendor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_vendor_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extras_item_id_foreign` (`item_id`);

--
-- Indexes for table `hours`
--
ALTER TABLE `hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hours_restorant_id_foreign` (`restorant_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_category_id_foreign` (`category_id`);

--
-- Indexes for table `item_has_allergens`
--
ALTER TABLE `item_has_allergens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `localmenus`
--
ALTER TABLE `localmenus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `localmenus_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_item_id_foreign` (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_address_id_foreign` (`address_id`),
  ADD KEY `orders_client_id_foreign` (`client_id`),
  ADD KEY `orders_restorant_id_foreign` (`restorant_id`),
  ADD KEY `orders_driver_id_foreign` (`driver_id`),
  ADD KEY `orders_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `order_has_items`
--
ALTER TABLE `order_has_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_has_items_order_id_foreign` (`order_id`),
  ADD KEY `order_has_items_item_id_foreign` (`item_id`);

--
-- Indexes for table `order_has_status`
--
ALTER TABLE `order_has_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_has_status_order_id_foreign` (`order_id`),
  ADD KEY `order_has_status_status_id_foreign` (`status_id`),
  ADD KEY `order_has_status_user_id_foreign` (`user_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `paths`
--
ALTER TABLE `paths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_rateable_type_rateable_id_index` (`rateable_type`,`rateable_id`),
  ADD KEY `ratings_rateable_id_index` (`rateable_id`),
  ADD KEY `ratings_rateable_type_index` (`rateable_type`),
  ADD KEY `ratings_user_id_foreign` (`user_id`),
  ADD KEY `ratings_order_id_foreign` (`order_id`);

--
-- Indexes for table `restoareas`
--
ALTER TABLE `restoareas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restoareas_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_delivery_areas`
--
ALTER TABLE `simple_delivery_areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `simple_delivery_areas_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `sms_verifications`
--
ALTER TABLE `sms_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sms_verifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `status_name_unique` (`name`),
  ADD UNIQUE KEY `status_alias_unique` (`alias`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_plan_unique` (`subscription_id`,`stripe_plan`),
  ADD KEY `subscription_items_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tables_restoarea_id_foreign` (`restoarea_id`),
  ADD KEY `tables_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_language_id_foreign` (`language_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`),
  ADD UNIQUE KEY `users_verification_code_unique` (`verification_code`),
  ADD KEY `users_stripe_id_index` (`stripe_id`),
  ADD KEY `users_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `user_has_categories`
--
ALTER TABLE `user_has_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variants_item_id_foreign` (`item_id`);

--
-- Indexes for table `variants_has_extras`
--
ALTER TABLE `variants_has_extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variants_has_extras_variant_id_foreign` (`variant_id`),
  ADD KEY `variants_has_extras_extra_id_foreign` (`extra_id`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visits_restaurant_id_foreign` (`restaurant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `expenses_category`
--
ALTER TABLE `expenses_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses_vendor`
--
ALTER TABLE `expenses_vendor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `extras`
--
ALTER TABLE `extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=498;

--
-- AUTO_INCREMENT for table `hours`
--
ALTER TABLE `hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=601;

--
-- AUTO_INCREMENT for table `item_has_allergens`
--
ALTER TABLE `item_has_allergens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `localmenus`
--
ALTER TABLE `localmenus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=601;

--
-- AUTO_INCREMENT for table `order_has_items`
--
ALTER TABLE `order_has_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_has_status`
--
ALTER TABLE `order_has_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `paths`
--
ALTER TABLE `paths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restoareas`
--
ALTER TABLE `restoareas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `simple_delivery_areas`
--
ALTER TABLE `simple_delivery_areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sms_verifications`
--
ALTER TABLE `sms_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user_has_categories`
--
ALTER TABLE `user_has_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1374;

--
-- AUTO_INCREMENT for table `variants_has_extras`
--
ALTER TABLE `variants_has_extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1057;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`),
  ADD CONSTRAINT `banners_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_restorant_id_foreign` FOREIGN KEY (`restorant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `restorants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_expenses_category_id_foreign` FOREIGN KEY (`expenses_category_id`) REFERENCES `expenses_category` (`id`),
  ADD CONSTRAINT `expenses_expenses_vendor_id_foreign` FOREIGN KEY (`expenses_vendor_id`) REFERENCES `expenses_vendor` (`id`),
  ADD CONSTRAINT `expenses_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `expenses_category`
--
ALTER TABLE `expenses_category`
  ADD CONSTRAINT `expenses_category_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `expenses_vendor`
--
ALTER TABLE `expenses_vendor`
  ADD CONSTRAINT `expenses_vendor_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `extras`
--
ALTER TABLE `extras`
  ADD CONSTRAINT `extras_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `hours`
--
ALTER TABLE `hours`
  ADD CONSTRAINT `hours_restorant_id_foreign` FOREIGN KEY (`restorant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `localmenus`
--
ALTER TABLE `localmenus`
  ADD CONSTRAINT `localmenus_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_restorant_id_foreign` FOREIGN KEY (`restorant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `order_has_items`
--
ALTER TABLE `order_has_items`
  ADD CONSTRAINT `order_has_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `order_has_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `order_has_status`
--
ALTER TABLE `order_has_status`
  ADD CONSTRAINT `order_has_status_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_has_status_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `order_has_status_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `restoareas`
--
ALTER TABLE `restoareas`
  ADD CONSTRAINT `restoareas_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `simple_delivery_areas`
--
ALTER TABLE `simple_delivery_areas`
  ADD CONSTRAINT `simple_delivery_areas_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `sms_verifications`
--
ALTER TABLE `sms_verifications`
  ADD CONSTRAINT `sms_verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tables`
--
ALTER TABLE `tables`
  ADD CONSTRAINT `tables_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `tables_restoarea_id_foreign` FOREIGN KEY (`restoarea_id`) REFERENCES `restoareas` (`id`);

--
-- Constraints for table `translations`
--
ALTER TABLE `translations`
  ADD CONSTRAINT `translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `variants`
--
ALTER TABLE `variants`
  ADD CONSTRAINT `variants_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `variants_has_extras`
--
ALTER TABLE `variants_has_extras`
  ADD CONSTRAINT `variants_has_extras_extra_id_foreign` FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`),
  ADD CONSTRAINT `variants_has_extras_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`);

--
-- Constraints for table `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
