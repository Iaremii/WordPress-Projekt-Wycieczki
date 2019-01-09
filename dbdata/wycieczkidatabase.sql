-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Час створення: Гру 28 2018 р., 18:54
-- Версія сервера: 5.6.41
-- Версія PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `wycieczkidatabase`
--

-- --------------------------------------------------------

--
-- Структура таблиці `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'rating', '5'),
(2, 2, 'verified', '0'),
(3, 3, 'rating', '4'),
(4, 3, 'verified', '0'),
(5, 4, 'rating', '3'),
(6, 4, 'verified', '0'),
(7, 5, 'rating', '4'),
(8, 5, 'verified', '0'),
(9, 5, 'attachmentId', '97'),
(10, 6, 'rating', '4'),
(11, 6, 'verified', '0'),
(12, 6, 'attachmentId', '98'),
(13, 7, 'verified', '0'),
(14, 8, 'verified', '0'),
(15, 9, 'rating', '5'),
(16, 9, 'verified', '0'),
(17, 9, 'attachmentId', '127'),
(18, 10, 'rating', '4'),
(19, 10, 'verified', '0'),
(20, 10, 'attachmentId', '128'),
(21, 11, 'rating', '5'),
(22, 11, 'verified', '0'),
(23, 11, 'attachmentId', '142');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Komentator WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-11-29 13:30:14', '2018-11-29 12:30:14', 'Cześć, to jest komentarz.\nAby zapoznać się z moderowaniem, edycją i usuwaniem komentarzy, należy odwiedzić ekran Komentarze w kokpicie.\nAwatary komentujących pochodzą z <a href=\"https://pl.gravatar.com\">Gravatara</a>.', 0, '1', '', '', 0, 0),
(2, 45, 'Oleksandr', 'oleksandr.iaremii@outlook.com', '', '127.0.0.1', '2018-12-04 15:44:38', '2018-12-04 14:44:38', 'norm', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'review', 0, 1),
(3, 45, 'Oleksandr', 'oleksandr.iaremii@outlook.com', '', '127.0.0.1', '2018-12-04 22:21:09', '2018-12-04 21:21:09', 'dsadasda', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'review', 0, 1),
(4, 45, 'Oleksandr', 'oleksandr.iaremii@outlook.com', '', '127.0.0.1', '2018-12-04 22:21:27', '2018-12-04 21:21:27', 'dsada', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'review', 0, 1),
(5, 38, 'Oleksandr', 'oleksandr.iaremii@outlook.com', '', '127.0.0.1', '2018-12-04 23:49:59', '2018-12-04 22:49:59', 'dsadasd', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'review', 0, 1),
(6, 38, 'Oleksandr', 'oleksandr.iaremii@outlook.com', '', '127.0.0.1', '2018-12-04 23:51:40', '2018-12-04 22:51:40', '456', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'review', 0, 1),
(7, 37, 'Oleksandr', 'oleksandr.iaremii@outlook.com', '', '127.0.0.1', '2018-12-06 13:58:59', '2018-12-06 12:58:59', 'Świetna zabawa z dużą dawką ciekawych informacji!\nBardzo fachowa i profesjonalna obsługa! Super spędzony czas. Opcję zwiedzania na Segwayu polecił mi znajomy, który również był zachwycony. Miałam akurat gości spoza Warszawy w weekend, więc zależało mi, żeby pokazać im jak najwięcej. Wybór wycieczki Segwayem był najlepszym z możliwych! Oprócz niesamowitej frajdy, jaką jest przejazd na tych urządzeniach, byłam zachwycona opowieściami o Warszawie, które przedstawiał nam przewodnik. Jako Warszawianka nie raz byłam zdziwiona ciekawostkami. Moi goście również byli zachwyceni - Warszawa z perspektywy Segwaya bardzo im się podobała i będą polecać innym! Dziękujemy za super spędzony czas!', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '', 0, 1),
(8, 34, 'Oleksandr', 'oleksandr.iaremii@outlook.com', '', '127.0.0.1', '2018-12-06 14:04:31', '2018-12-06 13:04:31', 'Super organizacja całego crawla, dużo fajnych ludzi, super sposob żeby poznać ludzi z całego świata i dobrze się bawic.Jak ktoś nie ma pomysłu na spedzenie weekendu to na pewno nie będzie żałował tego pubcrawla', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '', 0, 1),
(9, 34, 'Oleksandr', 'oleksandr.iaremii@outlook.com', '', '127.0.0.1', '2018-12-06 14:17:59', '2018-12-06 13:17:59', 'super było', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'review', 0, 1),
(10, 36, 'Oleksandr', 'oleksandr.iaremii@outlook.com', '', '127.0.0.1', '2018-12-06 14:19:28', '2018-12-06 13:19:28', 'Super wycieczka, dziekuje', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'review', 0, 1),
(11, 34, 'Oleksandr', 'oleksandr.iaremii@outlook.com', '', '127.0.0.1', '2018-12-06 18:23:01', '2018-12-06 17:23:01', 'hello', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'review', 0, 1),
(12, 152, 'WooCommerce', '', '', '', '2018-12-07 09:59:35', '2018-12-07 08:59:35', 'Czekanie na przelew Status zamówienia zmieniony z Oczekujące na płatność na Wstrzymane (oczekujące na płatność).', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(13, 152, 'Oleksandr', 'oleksandr.iaremii@outlook.com', '', '', '2018-12-07 10:01:27', '2018-12-07 09:01:27', 'Status zamówienia zmieniony z Wstrzymane (oczekujące na płatność) na Zrealizowane.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(14, 153, 'WooCommerce', '', '', '', '2018-12-07 13:11:33', '2018-12-07 12:11:33', 'Czekanie na przelew Status zamówienia zmieniony z Oczekujące na płatność na Wstrzymane (oczekujące na płatność).', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(15, 153, 'Oleksandr', 'oleksandr.iaremii@outlook.com', '', '', '2018-12-07 13:12:29', '2018-12-07 12:12:29', 'Status zamówienia zmieniony z Wstrzymane (oczekujące na płatność) na Zrealizowane.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_gamipress_logs`
--

CREATE TABLE `wp_gamipress_logs` (
  `log_id` bigint(20) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `trigger_type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `access` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_gamipress_logs`
--

INSERT INTO `wp_gamipress_logs` (`log_id`, `title`, `type`, `trigger_type`, `access`, `user_id`, `date`) VALUES
(1, 'Oleksandr triggered gamipress_site_visit (x0)', 'event_trigger', 'gamipress_site_visit', 'private', 1, '2018-12-06 15:01:44'),
(2, 'Oleksandr triggered gamipress_post_visit (x0)', 'event_trigger', 'gamipress_post_visit', 'private', 1, '2018-12-06 15:01:44'),
(3, 'Oleksandr triggered gamipress_specific_post_visit (x0)', 'event_trigger', 'gamipress_specific_post_visit', 'private', 1, '2018-12-06 15:01:44'),
(4, 'Oleksandr triggered gamipress_post_visit (x1)', 'event_trigger', 'gamipress_post_visit', 'private', 1, '2018-12-06 15:01:51'),
(5, 'Oleksandr triggered gamipress_specific_post_visit (x0)', 'event_trigger', 'gamipress_specific_post_visit', 'private', 1, '2018-12-06 15:01:51'),
(6, 'Oleksandr triggered gamipress_post_visit (x2)', 'event_trigger', 'gamipress_post_visit', 'private', 1, '2018-12-06 15:01:54'),
(7, 'Oleksandr triggered gamipress_specific_post_visit (x0)', 'event_trigger', 'gamipress_specific_post_visit', 'private', 1, '2018-12-06 15:01:54'),
(8, 'Oleksandr triggered gamipress_post_visit (x3)', 'event_trigger', 'gamipress_post_visit', 'private', 1, '2018-12-06 15:03:44'),
(9, 'Oleksandr triggered gamipress_specific_post_visit (x0)', 'event_trigger', 'gamipress_specific_post_visit', 'private', 1, '2018-12-06 15:03:44'),
(10, 'Oleksandr triggered gamipress_login (x0)', 'event_trigger', 'gamipress_login', 'private', 1, '2018-12-06 17:32:35'),
(11, 'Oleksandr triggered gamipress_post_visit (x4)', 'event_trigger', 'gamipress_post_visit', 'private', 1, '2018-12-06 17:39:38'),
(12, 'Oleksandr triggered gamipress_specific_post_visit (x0)', 'event_trigger', 'gamipress_specific_post_visit', 'private', 1, '2018-12-06 17:39:38'),
(13, 'Oleksandr triggered gamipress_post_visit (x5)', 'event_trigger', 'gamipress_post_visit', 'private', 1, '2018-12-06 17:40:39'),
(14, 'Oleksandr triggered gamipress_specific_post_visit (x0)', 'event_trigger', 'gamipress_specific_post_visit', 'private', 1, '2018-12-06 17:40:39'),
(15, 'Oleksandr triggered gamipress_post_visit (x6)', 'event_trigger', 'gamipress_post_visit', 'private', 1, '2018-12-06 17:50:57'),
(16, 'Oleksandr triggered gamipress_specific_post_visit (x0)', 'event_trigger', 'gamipress_specific_post_visit', 'private', 1, '2018-12-06 17:50:57'),
(17, 'Oleksandr triggered gamipress_post_visit (x7)', 'event_trigger', 'gamipress_post_visit', 'private', 1, '2018-12-06 17:58:38'),
(18, 'Oleksandr triggered gamipress_specific_post_visit (x0)', 'event_trigger', 'gamipress_specific_post_visit', 'private', 1, '2018-12-06 17:58:38'),
(19, 'Oleksandr triggered gamipress_specific_new_comment (x0)', 'event_trigger', 'gamipress_specific_new_comment', 'private', 1, '2018-12-06 18:23:01'),
(20, 'Oleksandr triggered gamipress_new_comment (x0)', 'event_trigger', 'gamipress_new_comment', 'private', 1, '2018-12-06 18:23:01'),
(21, 'Oleksandr triggered gamipress_user_specific_post_comment (x0)', 'event_trigger', 'gamipress_user_specific_post_comment', 'private', 1, '2018-12-06 18:23:01'),
(22, 'Oleksandr triggered gamipress_user_post_comment (x0)', 'event_trigger', 'gamipress_user_post_comment', 'private', 1, '2018-12-06 18:23:01'),
(23, 'Oleksandr triggered gamipress_post_visit (x8)', 'event_trigger', 'gamipress_post_visit', 'private', 1, '2018-12-06 18:26:27'),
(24, 'Oleksandr triggered gamipress_specific_post_visit (x0)', 'event_trigger', 'gamipress_specific_post_visit', 'private', 1, '2018-12-06 18:26:27'),
(25, 'Oleksandr triggered gamipress_site_visit (x1)', 'event_trigger', 'gamipress_site_visit', 'private', 1, '2018-12-07 01:04:54'),
(26, 'Oleksandr triggered gamipress_post_visit (x9)', 'event_trigger', 'gamipress_post_visit', 'private', 1, '2018-12-07 01:04:54'),
(27, 'Oleksandr triggered gamipress_specific_post_visit (x1)', 'event_trigger', 'gamipress_specific_post_visit', 'private', 1, '2018-12-07 01:04:54'),
(28, 'Oleksandr triggered gamipress_post_visit (x10)', 'event_trigger', 'gamipress_post_visit', 'private', 1, '2018-12-07 09:57:18'),
(29, 'Oleksandr triggered gamipress_specific_post_visit (x1)', 'event_trigger', 'gamipress_specific_post_visit', 'private', 1, '2018-12-07 09:57:18'),
(30, 'Oleksandr triggered gamipress_post_visit (x11)', 'event_trigger', 'gamipress_post_visit', 'private', 1, '2018-12-07 09:58:24'),
(31, 'Oleksandr triggered gamipress_specific_post_visit (x0)', 'event_trigger', 'gamipress_specific_post_visit', 'private', 1, '2018-12-07 09:58:25'),
(32, 'Oleksandr triggered gamipress_post_visit (x12)', 'event_trigger', 'gamipress_post_visit', 'private', 1, '2018-12-07 09:58:55'),
(33, 'Oleksandr triggered gamipress_specific_post_visit (x0)', 'event_trigger', 'gamipress_specific_post_visit', 'private', 1, '2018-12-07 09:58:56'),
(34, 'Oleksandr triggered gamipress_user_specific_post_comment (x0)', 'event_trigger', 'gamipress_user_specific_post_comment', 'private', 1, '2018-12-07 09:59:35'),
(35, 'Oleksandr triggered gamipress_user_post_comment (x1)', 'event_trigger', 'gamipress_user_post_comment', 'private', 1, '2018-12-07 09:59:35'),
(36, 'Oleksandr triggered gamipress_user_specific_post_comment (x1)', 'event_trigger', 'gamipress_user_specific_post_comment', 'private', 1, '2018-12-07 10:01:27'),
(37, 'Oleksandr triggered gamipress_user_post_comment (x2)', 'event_trigger', 'gamipress_user_post_comment', 'private', 1, '2018-12-07 10:01:27'),
(38, 'Oleksandr triggered gamipress_post_visit (x13)', 'event_trigger', 'gamipress_post_visit', 'private', 1, '2018-12-07 10:01:37'),
(39, 'Oleksandr triggered gamipress_specific_post_visit (x1)', 'event_trigger', 'gamipress_specific_post_visit', 'private', 1, '2018-12-07 10:01:37'),
(40, 'Oleksandr triggered gamipress_post_visit (x14)', 'event_trigger', 'gamipress_post_visit', 'private', 1, '2018-12-07 13:10:17'),
(41, 'Oleksandr triggered gamipress_specific_post_visit (x1)', 'event_trigger', 'gamipress_specific_post_visit', 'private', 1, '2018-12-07 13:10:18'),
(42, 'Oleksandr triggered gamipress_user_specific_post_comment (x0)', 'event_trigger', 'gamipress_user_specific_post_comment', 'private', 1, '2018-12-07 13:11:33'),
(43, 'Oleksandr triggered gamipress_user_post_comment (x3)', 'event_trigger', 'gamipress_user_post_comment', 'private', 1, '2018-12-07 13:11:33'),
(44, 'Oleksandr triggered gamipress_user_specific_post_comment (x1)', 'event_trigger', 'gamipress_user_specific_post_comment', 'private', 1, '2018-12-07 13:12:29'),
(45, 'Oleksandr triggered gamipress_user_post_comment (x4)', 'event_trigger', 'gamipress_user_post_comment', 'private', 1, '2018-12-07 13:12:29'),
(46, 'Oleksandr triggered gamipress_delete_post (x0)', 'event_trigger', 'gamipress_delete_post', 'private', 1, '2018-12-19 19:28:53'),
(47, 'Oleksandr triggered gamipress_login (x1)', 'event_trigger', 'gamipress_login', 'private', 1, '2018-12-19 19:36:53'),
(48, 'Oleksandr triggered gamipress_site_visit (x2)', 'event_trigger', 'gamipress_site_visit', 'private', 1, '2018-12-19 19:36:56'),
(49, 'Oleksandr triggered gamipress_post_visit (x15)', 'event_trigger', 'gamipress_post_visit', 'private', 1, '2018-12-19 19:36:56'),
(50, 'Oleksandr triggered gamipress_specific_post_visit (x2)', 'event_trigger', 'gamipress_specific_post_visit', 'private', 1, '2018-12-19 19:36:56'),
(51, 'Oleksandr triggered gamipress_post_visit (x16)', 'event_trigger', 'gamipress_post_visit', 'private', 1, '2018-12-19 19:37:08'),
(52, 'Oleksandr triggered gamipress_specific_post_visit (x2)', 'event_trigger', 'gamipress_specific_post_visit', 'private', 1, '2018-12-19 19:37:08');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_gamipress_logs_meta`
--

CREATE TABLE `wp_gamipress_logs_meta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `log_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_gamipress_logs_meta`
--

INSERT INTO `wp_gamipress_logs_meta` (`meta_id`, `log_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(2, 1, '_gamipress_count', '0'),
(3, 2, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(4, 2, '_gamipress_count', '0'),
(5, 2, '_gamipress_post_id', '129'),
(6, 3, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(7, 3, '_gamipress_count', '0'),
(8, 3, '_gamipress_achievement_post', '129'),
(9, 3, '_gamipress_achievement_post_site_id', '1'),
(10, 3, '_gamipress_post_id', '129'),
(11, 4, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(12, 4, '_gamipress_count', '1'),
(13, 4, '_gamipress_post_id', '9'),
(14, 5, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(15, 5, '_gamipress_count', '0'),
(16, 5, '_gamipress_achievement_post', '9'),
(17, 5, '_gamipress_achievement_post_site_id', '1'),
(18, 5, '_gamipress_post_id', '9'),
(19, 6, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(20, 6, '_gamipress_count', '2'),
(21, 6, '_gamipress_post_id', '18'),
(22, 7, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(23, 7, '_gamipress_count', '0'),
(24, 7, '_gamipress_achievement_post', '18'),
(25, 7, '_gamipress_achievement_post_site_id', '1'),
(26, 7, '_gamipress_post_id', '18'),
(27, 8, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(28, 8, '_gamipress_count', '3'),
(29, 8, '_gamipress_post_id', '134'),
(30, 9, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(31, 9, '_gamipress_count', '0'),
(32, 9, '_gamipress_achievement_post', '134'),
(33, 9, '_gamipress_achievement_post_site_id', '1'),
(34, 9, '_gamipress_post_id', '134'),
(35, 10, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(36, 10, '_gamipress_count', '0'),
(37, 11, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(38, 11, '_gamipress_count', '4'),
(39, 11, '_gamipress_post_id', '36'),
(40, 12, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(41, 12, '_gamipress_count', '0'),
(42, 12, '_gamipress_achievement_post', '36'),
(43, 12, '_gamipress_achievement_post_site_id', '1'),
(44, 12, '_gamipress_post_id', '36'),
(45, 13, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(46, 13, '_gamipress_count', '5'),
(47, 13, '_gamipress_post_id', '21'),
(48, 14, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(49, 14, '_gamipress_count', '0'),
(50, 14, '_gamipress_achievement_post', '21'),
(51, 14, '_gamipress_achievement_post_site_id', '1'),
(52, 14, '_gamipress_post_id', '21'),
(53, 15, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(54, 15, '_gamipress_count', '6'),
(55, 15, '_gamipress_post_id', '34'),
(56, 16, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(57, 16, '_gamipress_count', '0'),
(58, 16, '_gamipress_achievement_post', '34'),
(59, 16, '_gamipress_achievement_post_site_id', '1'),
(60, 16, '_gamipress_post_id', '34'),
(61, 17, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(62, 17, '_gamipress_count', '7'),
(63, 17, '_gamipress_post_id', '37'),
(64, 18, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(65, 18, '_gamipress_count', '0'),
(66, 18, '_gamipress_achievement_post', '37'),
(67, 18, '_gamipress_achievement_post_site_id', '1'),
(68, 18, '_gamipress_post_id', '37'),
(69, 19, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(70, 19, '_gamipress_count', '0'),
(71, 19, '_gamipress_achievement_post', '34'),
(72, 19, '_gamipress_achievement_post_site_id', '1'),
(73, 19, '_gamipress_comment_id', '11'),
(74, 19, '_gamipress_comment_post_id', '34'),
(75, 20, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(76, 20, '_gamipress_count', '0'),
(77, 20, '_gamipress_comment_id', '11'),
(78, 20, '_gamipress_comment_post_id', '34'),
(79, 21, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(80, 21, '_gamipress_count', '0'),
(81, 21, '_gamipress_achievement_post', '34'),
(82, 21, '_gamipress_achievement_post_site_id', '1'),
(83, 21, '_gamipress_comment_id', '11'),
(84, 21, '_gamipress_comment_post_id', '34'),
(85, 22, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(86, 22, '_gamipress_count', '0'),
(87, 22, '_gamipress_comment_id', '11'),
(88, 22, '_gamipress_comment_post_id', '34'),
(89, 23, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(90, 23, '_gamipress_count', '8'),
(91, 23, '_gamipress_post_id', '143'),
(92, 24, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(93, 24, '_gamipress_count', '0'),
(94, 24, '_gamipress_achievement_post', '143'),
(95, 24, '_gamipress_achievement_post_site_id', '1'),
(96, 24, '_gamipress_post_id', '143'),
(97, 25, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(98, 25, '_gamipress_count', '1'),
(99, 26, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(100, 26, '_gamipress_count', '9'),
(101, 26, '_gamipress_post_id', '129'),
(102, 27, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(103, 27, '_gamipress_count', '1'),
(104, 27, '_gamipress_achievement_post', '129'),
(105, 27, '_gamipress_achievement_post_site_id', '1'),
(106, 27, '_gamipress_post_id', '129'),
(107, 28, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(108, 28, '_gamipress_count', '10'),
(109, 28, '_gamipress_post_id', '36'),
(110, 29, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(111, 29, '_gamipress_count', '1'),
(112, 29, '_gamipress_achievement_post', '36'),
(113, 29, '_gamipress_achievement_post_site_id', '1'),
(114, 29, '_gamipress_post_id', '36'),
(115, 30, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(116, 30, '_gamipress_count', '11'),
(117, 30, '_gamipress_post_id', '7'),
(118, 31, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(119, 31, '_gamipress_count', '0'),
(120, 31, '_gamipress_achievement_post', '7'),
(121, 31, '_gamipress_achievement_post_site_id', '1'),
(122, 31, '_gamipress_post_id', '7'),
(123, 32, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(124, 32, '_gamipress_count', '12'),
(125, 32, '_gamipress_post_id', '8'),
(126, 33, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(127, 33, '_gamipress_count', '0'),
(128, 33, '_gamipress_achievement_post', '8'),
(129, 33, '_gamipress_achievement_post_site_id', '1'),
(130, 33, '_gamipress_post_id', '8'),
(131, 34, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(132, 34, '_gamipress_count', '0'),
(133, 34, '_gamipress_achievement_post', '152'),
(134, 34, '_gamipress_achievement_post_site_id', '1'),
(135, 34, '_gamipress_comment_id', '12'),
(136, 34, '_gamipress_comment_post_id', '152'),
(137, 35, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(138, 35, '_gamipress_count', '1'),
(139, 35, '_gamipress_comment_id', '12'),
(140, 35, '_gamipress_comment_post_id', '152'),
(141, 36, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(142, 36, '_gamipress_count', '1'),
(143, 36, '_gamipress_achievement_post', '152'),
(144, 36, '_gamipress_achievement_post_site_id', '1'),
(145, 36, '_gamipress_comment_id', '13'),
(146, 36, '_gamipress_comment_post_id', '152'),
(147, 37, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(148, 37, '_gamipress_count', '2'),
(149, 37, '_gamipress_comment_id', '13'),
(150, 37, '_gamipress_comment_post_id', '152'),
(151, 38, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(152, 38, '_gamipress_count', '13'),
(153, 38, '_gamipress_post_id', '9'),
(154, 39, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(155, 39, '_gamipress_count', '1'),
(156, 39, '_gamipress_achievement_post', '9'),
(157, 39, '_gamipress_achievement_post_site_id', '1'),
(158, 39, '_gamipress_post_id', '9'),
(159, 40, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(160, 40, '_gamipress_count', '14'),
(161, 40, '_gamipress_post_id', '34'),
(162, 41, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(163, 41, '_gamipress_count', '1'),
(164, 41, '_gamipress_achievement_post', '34'),
(165, 41, '_gamipress_achievement_post_site_id', '1'),
(166, 41, '_gamipress_post_id', '34'),
(167, 42, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(168, 42, '_gamipress_count', '0'),
(169, 42, '_gamipress_achievement_post', '153'),
(170, 42, '_gamipress_achievement_post_site_id', '1'),
(171, 42, '_gamipress_comment_id', '14'),
(172, 42, '_gamipress_comment_post_id', '153'),
(173, 43, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(174, 43, '_gamipress_count', '3'),
(175, 43, '_gamipress_comment_id', '14'),
(176, 43, '_gamipress_comment_post_id', '153'),
(177, 44, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(178, 44, '_gamipress_count', '1'),
(179, 44, '_gamipress_achievement_post', '153'),
(180, 44, '_gamipress_achievement_post_site_id', '1'),
(181, 44, '_gamipress_comment_id', '15'),
(182, 44, '_gamipress_comment_post_id', '153'),
(183, 45, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(184, 45, '_gamipress_count', '4'),
(185, 45, '_gamipress_comment_id', '15'),
(186, 45, '_gamipress_comment_post_id', '153'),
(187, 46, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(188, 46, '_gamipress_count', '0'),
(189, 46, '_gamipress_post_id', '141'),
(190, 47, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(191, 47, '_gamipress_count', '1'),
(192, 48, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(193, 48, '_gamipress_count', '2'),
(194, 49, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(195, 49, '_gamipress_count', '15'),
(196, 49, '_gamipress_post_id', '9'),
(197, 50, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(198, 50, '_gamipress_count', '2'),
(199, 50, '_gamipress_achievement_post', '9'),
(200, 50, '_gamipress_achievement_post_site_id', '1'),
(201, 50, '_gamipress_post_id', '9'),
(202, 51, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(203, 51, '_gamipress_count', '16'),
(204, 51, '_gamipress_post_id', '129'),
(205, 52, '_gamipress_pattern', '{user} triggered {trigger_type} (x{count})'),
(206, 52, '_gamipress_count', '2'),
(207, 52, '_gamipress_achievement_post', '129'),
(208, 52, '_gamipress_achievement_post_site_id', '1'),
(209, 52, '_gamipress_post_id', '129');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_gamipress_user_earnings`
--

CREATE TABLE `wp_gamipress_user_earnings` (
  `user_earning_id` bigint(20) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `post_type` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `points` bigint(20) NOT NULL,
  `points_type` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_gamipress_user_earnings_meta`
--

CREATE TABLE `wp_gamipress_user_earnings_meta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `user_earning_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wycieczki', 'yes'),
(2, 'home', 'http://wycieczki', 'yes'),
(3, 'blogname', 'Twoja Wycieczka', 'yes'),
(4, 'blogdescription', 'Zobacz nasze oferty', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'oleksandr.iaremii@outlook.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:160:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:9:\"oferty/?$\";s:27:\"index.php?post_type=product\";s:39:\"oferty/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:34:\"oferty/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:26:\"oferty/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"kategoria-produktu/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:52:\"kategoria-produktu/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:33:\"kategoria-produktu/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:45:\"kategoria-produktu/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:27:\"kategoria-produktu/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:53:\"tag-produktu/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:48:\"tag-produktu/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:29:\"tag-produktu/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:41:\"tag-produktu/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:23:\"tag-produktu/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"produkt/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"produkt/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"produkt/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produkt/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produkt/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"produkt/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"produkt/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"produkt/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"produkt/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"produkt/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"produkt/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"produkt/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"produkt/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"produkt/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"produkt/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"produkt/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"produkt/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"produkt/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"produkt/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produkt/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produkt/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"produkt/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:26:\"wcj-my-products(/(.*))?/?$\";s:38:\"index.php?&wcj-my-products=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:34:\"(.?.+?)/wcj-my-products(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&wcj-my-products=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:61:\"booster-plus-for-woocommerce/booster-plus-for-woocommerce.php\";i:1;s:41:\"comment-attachment/comment-attachment.php\";i:2;s:23:\"elementor/elementor.php\";i:5;s:23:\"loco-translate/loco.php\";i:6;s:33:\"nav-menu-roles/nav-menu-roles.php\";i:7;s:37:\"user-role-editor/user-role-editor.php\";i:8;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'oceanwp', 'yes'),
(41, 'stylesheet', 'oceanwp', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '1', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'customer', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'wavatar', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:1;}s:12:\"_multiwidget\";i:1;i:4;a:4:{s:5:\"title\";s:4:\"gfds\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:3:{s:23:\"elementor/elementor.php\";a:2:{i:0;s:21:\"Elementor\\Maintenance\";i:1;s:9:\"uninstall\";}s:25:\"imagements/imagements.php\";s:20:\"imagements_uninstall\";s:28:\"category-posts/cat-posts.php\";s:22:\"categoryPostsuninstall\";}', 'no'),
(82, 'timezone_string', 'Europe/Warsaw', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:9:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:130:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:14:\"ure_edit_roles\";b:1;s:16:\"ure_create_roles\";b:1;s:16:\"ure_delete_roles\";b:1;s:23:\"ure_create_capabilities\";b:1;s:23:\"ure_delete_capabilities\";b:1;s:18:\"ure_manage_options\";b:1;s:15:\"ure_reset_roles\";b:1;s:10:\"loco_admin\";b:1;s:9:\"edit_item\";b:1;s:9:\"read_item\";b:1;s:11:\"delete_item\";b:1;s:12:\"delete_items\";b:1;s:10:\"edit_items\";b:1;s:17:\"edit_others_items\";b:1;s:13:\"publish_items\";b:1;s:18:\"read_private_items\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:93:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:10:\"translator\";a:2:{s:4:\"name\";s:10:\"Translator\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:10:\"loco_admin\";b:1;}}s:17:\"uzytkownik_zwykly\";a:2:{s:4:\"name\";s:17:\"Uzytkownik Zwykly\";s:12:\"capabilities\";a:93:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'pl_PL', 'yes'),
(97, 'widget_search', 'a:4:{i:2;a:1:{s:5:\"title\";s:3:\"gfd\";}s:12:\"_multiwidget\";i:1;i:4;a:0:{}i:6;a:0:{}}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:4:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;i:4;a:0:{}i:5;a:0:{}}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";}s:7:\"sidebar\";a:3:{i:0;s:32:\"woocommerce_product_categories-4\";i:1;s:11:\"tag_cloud-3\";i:2;s:8:\"search-4\";}s:9:\"sidebar-2\";a:0:{}s:10:\"footer-one\";a:0:{}s:10:\"footer-two\";a:0:{}s:12:\"footer-three\";a:0:{}s:11:\"footer-four\";a:0:{}s:11:\"woo_sidebar\";a:4:{i:0;s:32:\"woocommerce_product_categories-3\";i:1;s:11:\"tag_cloud-5\";i:2;s:8:\"search-6\";i:3;s:13:\"media_audio-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:10:{s:13:\"attachment_id\";i:118;s:3:\"url\";s:68:\"http://wycieczki/wp-content/uploads/2018/12/MAM-TEN-KOD-PIOSENKA.mp3\";s:5:\"title\";s:8:\"Piosenka\";s:7:\"preload\";s:4:\"none\";s:4:\"loop\";b:0;s:3:\"mp3\";s:68:\"http://wycieczki/wp-content/uploads/2018/12/MAM-TEN-KOD-PIOSENKA.mp3\";s:3:\"ogg\";s:0:\"\";s:4:\"flac\";s:0:\"\";s:3:\"m4a\";s:0:\"\";s:3:\"wav\";s:0:\"\";}}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:3:{s:12:\"_multiwidget\";i:1;i:3;a:3:{s:5:\"title\";s:12:\"Chmura tagow\";s:5:\"count\";i:1;s:8:\"taxonomy\";s:11:\"product_tag\";}i:5;a:3:{s:5:\"title\";s:14:\"Chmurka tagów\";s:5:\"count\";i:1;s:8:\"taxonomy\";s:11:\"product_tag\";}}', 'yes'),
(110, 'widget_nav_menu', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(111, 'widget_custom_html', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:0:\"\";}}', 'yes'),
(112, 'cron', 'a:15:{i:1545335774;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1545337816;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1545338172;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1545338182;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1545338203;a:1:{s:49:\"check_plugin_updates-booster-plus-for-woocommerce\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1545338206;a:2:{s:18:\"wcj_check_site_key\";a:1:{s:32:\"b681bdb4ffa2e3ee000b79d7717b3cad\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:1:{i:0;s:5:\"daily\";}s:8:\"interval\";i:86400;}}s:29:\"wcj_download_tcpdf_fonts_hook\";a:1:{s:32:\"26b69dc9b9c77e4c1647111635ada6f2\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:1:{i:0;s:6:\"hourly\";}s:8:\"interval\";i:3600;}}}i:1545338227;a:1:{s:28:\"elementor/tracker/send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1545346800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1545348972;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1545352216;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1545359772;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1545395436;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1545397559;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1546300800;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1543868692;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(135, 'can_compress_scripts', '1', 'no'),
(157, 'current_theme', 'OceanWP', 'yes'),
(158, 'theme_mods_oceanwp', 'a:37:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"topbar_menu\";i:0;s:9:\"main_menu\";i:16;}s:18:\"custom_css_post_id\";i:101;s:16:\"header_textcolor\";s:5:\"blank\";s:27:\"ocean_search_custom_sidebar\";b:0;s:13:\"ocean_top_bar\";b:0;s:24:\"ocean_woo_custom_sidebar\";b:1;s:36:\"ocean_woo_display_cart_product_added\";s:2:\"no\";s:26:\"ocean_woo_cat_widget_style\";s:8:\"dropdown\";s:28:\"ocean_woo_account_page_style\";s:8:\"original\";s:19:\"ocean_primary_color\";s:7:\"#0b890d\";s:25:\"ocean_hover_primary_color\";s:7:\"#01420f\";s:19:\"ocean_sidebar_width\";s:2:\"28\";s:24:\"ocean_page_single_layout\";s:10:\"full-width\";s:29:\"ocean_pagination_border_width\";s:1:\"1\";s:15:\"body_typography\";a:4:{s:11:\"font-family\";s:7:\"ABeeZee\";s:9:\"font-size\";s:4:\"15px\";s:11:\"line-height\";i:2;s:5:\"color\";s:7:\"#0a0000\";}s:15:\"logo_typography\";a:1:{s:11:\"font-weight\";s:3:\"700\";}s:15:\"menu_typography\";a:1:{s:11:\"font-weight\";s:3:\"700\";}s:19:\"ocean_header_height\";s:2:\"67\";s:23:\"ocean_header_background\";s:7:\"#34aa19\";s:23:\"ocean_links_color_hover\";s:7:\"#0b890d\";s:16:\"ocean_logo_color\";s:7:\"#ffffff\";s:22:\"ocean_logo_hover_color\";s:7:\"#ffffff\";s:23:\"ocean_menu_links_effect\";s:3:\"one\";s:34:\"ocean_menu_links_effect_blue_color\";s:7:\"#4af904\";s:21:\"ocean_menu_link_color\";s:7:\"#ffffff\";s:27:\"ocean_menu_link_color_hover\";s:7:\"#4af904\";s:30:\"ocean_dropdown_menu_top_border\";s:7:\"#ffffff\";s:19:\"ocean_woo_menu_icon\";s:12:\"icon-handbag\";s:31:\"ocean_woo_menu_icon_size_tablet\";i:13;s:44:\"ocean_woo_menu_icon_center_vertically_tablet\";i:0;s:29:\"ocean_woo_cart_dropdown_width\";s:3:\"350\";s:24:\"ocean_woo_product_layout\";s:10:\"full-width\";s:29:\"ocean_woo_product_image_width\";s:2:\"45\";s:31:\"ocean_woo_product_summary_width\";s:2:\"50\";s:33:\"ocean_woo_product_addtocart_style\";s:3:\"big\";s:29:\"ocean_woo_product_tabs_layout\";s:7:\"section\";}', 'yes'),
(159, 'theme_switched', '', 'yes'),
(162, 'recently_activated', 'a:2:{s:67:\"gamipress-ultimate-member-integration/gamipress-ultimate-member.php\";i:1545244691;s:23:\"gamipress/gamipress.php\";i:1545244681;}', 'yes'),
(180, 'woocommerce_store_address', 'Koszykowa 86', 'yes'),
(181, 'woocommerce_store_address_2', '', 'yes'),
(182, 'woocommerce_store_city', 'WARSZAWA', 'yes'),
(183, 'woocommerce_default_country', 'PL', 'yes'),
(184, 'woocommerce_store_postcode', '01-461', 'yes'),
(185, 'woocommerce_allowed_countries', 'specific', 'yes'),
(186, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(187, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:\"PL\";}', 'yes'),
(188, 'woocommerce_ship_to_countries', '', 'yes'),
(189, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(190, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(191, 'woocommerce_calc_taxes', 'no', 'yes'),
(192, 'woocommerce_enable_coupons', 'no', 'yes'),
(193, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(194, 'woocommerce_currency', 'PLN', 'yes'),
(195, 'woocommerce_currency_pos', 'right_space', 'yes'),
(196, 'woocommerce_price_thousand_sep', ' ', 'yes'),
(197, 'woocommerce_price_decimal_sep', ',', 'yes'),
(198, 'woocommerce_price_num_decimals', '2', 'yes'),
(199, 'woocommerce_shop_page_id', '6', 'yes'),
(200, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(201, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(202, 'woocommerce_placeholder_image', '', 'yes'),
(203, 'woocommerce_weight_unit', 'kg', 'yes'),
(204, 'woocommerce_dimension_unit', 'cm', 'yes'),
(205, 'woocommerce_enable_reviews', 'yes', 'yes'),
(206, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(207, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(208, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(209, 'woocommerce_review_rating_required', 'yes', 'no'),
(210, 'woocommerce_manage_stock', 'no', 'yes'),
(211, 'woocommerce_hold_stock_minutes', '60', 'no'),
(212, 'woocommerce_notify_low_stock', 'yes', 'no'),
(213, 'woocommerce_notify_no_stock', 'yes', 'no'),
(214, 'woocommerce_stock_email_recipient', 'oleksandr.iaremii@outlook.com', 'no'),
(215, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(216, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(217, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(218, 'woocommerce_stock_format', 'no_amount', 'yes'),
(219, 'woocommerce_file_download_method', 'force', 'no'),
(220, 'woocommerce_downloads_require_login', 'no', 'no'),
(221, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(222, 'woocommerce_prices_include_tax', 'no', 'yes'),
(223, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(224, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(225, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(226, 'woocommerce_tax_classes', 'Obniżona stawka\r\nZerowa stawka', 'yes'),
(227, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(228, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(229, 'woocommerce_price_display_suffix', '', 'yes'),
(230, 'woocommerce_tax_total_display', 'itemized', 'no'),
(231, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(232, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(233, 'woocommerce_ship_to_destination', 'billing', 'no'),
(234, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(235, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(236, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(237, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(238, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(239, 'woocommerce_registration_generate_username', 'yes', 'no'),
(240, 'woocommerce_registration_generate_password', 'no', 'no'),
(241, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(242, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(243, 'woocommerce_registration_privacy_policy_text', 'Twoje dane osobowe zostaną użyte do obsługi twojej wizyty na naszej stronie, zarządzania dostępem do twojego konta i dla innych celów o których mówi nasza [privacy_policy].', 'yes'),
(244, 'woocommerce_checkout_privacy_policy_text', 'Twoje dane osobowe będą użyte do przetworzenia twojego zamówienia, obsługi twojej wizyty na naszej stronie oraz dla innych celów o których mówi nasza [privacy_policy].', 'yes'),
(245, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(246, 'woocommerce_trash_pending_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(247, 'woocommerce_trash_failed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(248, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(249, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(250, 'woocommerce_email_from_name', 'Wycieczka', 'no'),
(251, 'woocommerce_email_from_address', 'oleksandr.iaremii@outlook.com', 'no'),
(252, 'woocommerce_email_header_image', '', 'no'),
(253, 'woocommerce_email_footer_text', '{site_title}<br/>Powered by <a href=\"https://woocommerce.com/\">WooCommerce</a>', 'no'),
(254, 'woocommerce_email_base_color', '#96588a', 'no'),
(255, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(256, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(257, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(258, 'woocommerce_cart_page_id', '7', 'yes'),
(259, 'woocommerce_checkout_page_id', '8', 'yes'),
(260, 'woocommerce_myaccount_page_id', '9', 'yes'),
(261, 'woocommerce_terms_page_id', '3', 'no'),
(262, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(263, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(264, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(265, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(266, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(267, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(268, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(269, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(270, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(271, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(272, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(273, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(274, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(275, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(276, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(277, 'woocommerce_api_enabled', 'no', 'yes'),
(278, 'woocommerce_single_image_width', '600', 'yes'),
(279, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(280, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(281, 'woocommerce_demo_store', 'no', 'no'),
(282, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"produkt\";s:13:\"category_base\";s:18:\"kategoria-produktu\";s:8:\"tag_base\";s:12:\"tag-produktu\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(283, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(284, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(287, 'default_product_cat', '31', 'yes'),
(290, 'woocommerce_version', '3.5.2', 'yes'),
(291, 'woocommerce_db_version', '3.5.2', 'yes'),
(292, 'woocommerce_admin_notices', 'a:1:{i:1;s:20:\"no_secure_connection\";}', 'yes'),
(293, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(294, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(295, 'widget_woocommerce_layered_nav_filters', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(296, 'widget_woocommerce_layered_nav', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(297, 'widget_woocommerce_price_filter', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:17:\"Filtruj wg cenysa\";}}', 'yes'),
(299, 'widget_woocommerce_product_categories', 'a:3:{s:12:\"_multiwidget\";i:1;i:3;a:8:{s:5:\"title\";s:19:\"Kategorie wycieczek\";s:7:\"orderby\";s:5:\"order\";s:8:\"dropdown\";i:0;s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}i:4;a:8:{s:5:\"title\";s:19:\"Kategorie wycieczek\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}}', 'yes'),
(301, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(302, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(303, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(304, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(305, 'widget_woocommerce_top_rated_products', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(306, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(307, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(309, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(322, 'wcj_admin_tools_enabled', 'no', 'yes'),
(323, 'wcj_price_labels_enabled', 'no', 'yes'),
(324, 'wcj_call_for_price_enabled', 'no', 'yes'),
(325, 'wcj_free_price_enabled', 'no', 'yes'),
(326, 'wcj_product_listings_enabled', 'no', 'yes'),
(327, 'wcj_tax_display_enabled', 'no', 'yes'),
(328, 'wcj_admin_products_list_enabled', 'no', 'yes'),
(329, 'wcj_products_per_page_enabled', 'no', 'yes'),
(330, 'wcj_sorting_enabled', 'no', 'yes'),
(331, 'wcj_product_custom_info_enabled', 'no', 'yes'),
(332, 'wcj_product_info_enabled', 'no', 'yes'),
(333, 'wcj_product_add_to_cart_enabled', 'no', 'yes'),
(334, 'wcj_add_to_cart_button_visibility_enabled', 'no', 'yes'),
(335, 'wcj_related_products_enabled', 'no', 'yes'),
(336, 'wcj_cross_sells_enabled', 'no', 'yes'),
(337, 'wcj_upsells_enabled', 'no', 'yes'),
(338, 'wcj_sku_enabled', 'no', 'yes'),
(339, 'wcj_stock_enabled', 'no', 'yes'),
(340, 'wcj_product_tabs_enabled', 'no', 'yes'),
(341, 'wcj_product_input_fields_enabled', 'no', 'yes'),
(342, 'wcj_bulk_price_converter_enabled', 'no', 'yes'),
(343, 'wcj_product_bulk_meta_editor_enabled', 'no', 'yes'),
(344, 'wcj_purchase_data_enabled', 'no', 'yes'),
(345, 'wcj_product_bookings_enabled', 'no', 'yes'),
(346, 'wcj_crowdfunding_enabled', 'no', 'yes'),
(347, 'wcj_product_addons_enabled', 'no', 'yes'),
(348, 'wcj_wholesale_price_enabled', 'no', 'yes'),
(349, 'wcj_product_open_pricing_enabled', 'no', 'yes'),
(350, 'wcj_product_msrp_enabled', 'no', 'yes'),
(351, 'wcj_offer_price_enabled', 'no', 'yes'),
(352, 'wcj_price_by_user_role_enabled', 'no', 'yes'),
(353, 'wcj_global_discount_enabled', 'no', 'yes'),
(354, 'wcj_product_price_by_formula_enabled', 'no', 'yes'),
(355, 'wcj_product_images_enabled', 'no', 'yes'),
(356, 'wcj_sale_flash_enabled', 'no', 'yes'),
(357, 'wcj_product_by_country_enabled', 'no', 'yes'),
(358, 'wcj_product_custom_visibility_enabled', 'no', 'yes'),
(359, 'wcj_product_by_time_enabled', 'no', 'yes'),
(360, 'wcj_product_by_date_enabled', 'no', 'yes'),
(361, 'wcj_product_by_user_role_enabled', 'no', 'yes'),
(362, 'wcj_product_by_user_enabled', 'yes', 'yes'),
(363, 'wcj_add_to_cart_enabled', 'no', 'yes'),
(364, 'wcj_more_button_labels_enabled', 'no', 'yes'),
(365, 'wcj_cart_enabled', 'no', 'yes'),
(366, 'wcj_cart_customization_enabled', 'no', 'yes'),
(367, 'wcj_empty_cart_enabled', 'no', 'yes'),
(368, 'wcj_mini_cart_enabled', 'no', 'yes'),
(369, 'wcj_checkout_core_fields_enabled', 'no', 'yes'),
(370, 'wcj_checkout_custom_fields_enabled', 'no', 'yes'),
(371, 'wcj_checkout_files_upload_enabled', 'no', 'yes'),
(372, 'wcj_checkout_custom_info_enabled', 'no', 'yes'),
(373, 'wcj_checkout_customization_enabled', 'no', 'yes'),
(374, 'wcj_payment_gateways_enabled', 'no', 'yes'),
(375, 'wcj_payment_gateways_icons_enabled', 'no', 'yes'),
(376, 'wcj_payment_gateways_fees_enabled', 'no', 'yes'),
(377, 'wcj_payment_gateways_per_category_enabled', 'no', 'yes'),
(378, 'wcj_payment_gateways_currency_enabled', 'no', 'yes'),
(379, 'wcj_payment_gateways_by_currency_enabled', 'no', 'yes'),
(380, 'wcj_payment_gateways_min_max_enabled', 'no', 'yes'),
(381, 'wcj_payment_gateways_by_country_enabled', 'no', 'yes'),
(382, 'wcj_payment_gateways_by_user_role_enabled', 'no', 'yes'),
(383, 'wcj_payment_gateways_by_shipping_enabled', 'no', 'yes'),
(384, 'wcj_shipping_enabled', 'no', 'yes'),
(385, 'wcj_shipping_options_enabled', 'no', 'yes'),
(386, 'wcj_shipping_icons_enabled', 'no', 'yes'),
(387, 'wcj_shipping_description_enabled', 'no', 'yes'),
(388, 'wcj_shipping_time_enabled', 'no', 'yes'),
(389, 'wcj_left_to_free_shipping_enabled', 'no', 'yes'),
(390, 'wcj_shipping_calculator_enabled', 'no', 'yes'),
(391, 'wcj_shipping_by_user_role_enabled', 'no', 'yes'),
(392, 'wcj_shipping_by_products_enabled', 'no', 'yes'),
(393, 'wcj_shipping_by_cities_enabled', 'no', 'yes'),
(394, 'wcj_shipping_by_order_amount_enabled', 'no', 'yes'),
(395, 'wcj_address_formats_enabled', 'no', 'yes'),
(396, 'wcj_orders_enabled', 'no', 'yes'),
(397, 'wcj_admin_orders_list_enabled', 'no', 'yes'),
(398, 'wcj_order_min_amount_enabled', 'no', 'yes'),
(399, 'wcj_order_numbers_enabled', 'no', 'yes'),
(400, 'wcj_order_custom_statuses_enabled', 'no', 'yes'),
(401, 'wcj_order_quantities_enabled', 'no', 'yes'),
(402, 'wcj_max_products_per_user_enabled', 'no', 'yes'),
(403, 'wcj_pdf_invoicing_enabled', 'no', 'yes'),
(404, 'wcj_emails_enabled', 'no', 'yes'),
(405, 'wcj_email_options_enabled', 'no', 'yes'),
(406, 'wcj_emails_verification_enabled', 'no', 'yes'),
(407, 'wcj_currency_enabled', 'no', 'yes'),
(408, 'wcj_multicurrency_enabled', 'no', 'yes'),
(409, 'wcj_multicurrency_base_price_enabled', 'no', 'yes'),
(410, 'wcj_currency_per_product_enabled', 'no', 'yes'),
(411, 'wcj_currency_external_products_enabled', 'no', 'yes'),
(412, 'wcj_price_by_country_enabled', 'no', 'yes'),
(413, 'wcj_currency_exchange_rates_enabled', 'no', 'yes'),
(414, 'wcj_price_formats_enabled', 'no', 'yes'),
(415, 'wcj_general_enabled', 'no', 'yes'),
(416, 'wcj_track_users_enabled', 'no', 'yes'),
(417, 'wcj_breadcrumbs_enabled', 'no', 'yes'),
(418, 'wcj_url_coupons_enabled', 'no', 'yes'),
(419, 'wcj_coupon_code_generator_enabled', 'no', 'yes'),
(420, 'wcj_coupon_by_user_role_enabled', 'no', 'yes'),
(421, 'wcj_admin_bar_enabled', 'no', 'yes'),
(422, 'wcj_my_account_enabled', 'no', 'yes'),
(423, 'wcj_custom_css_enabled', 'no', 'yes'),
(424, 'wcj_custom_js_enabled', 'no', 'yes'),
(425, 'wcj_products_xml_enabled', 'no', 'yes'),
(426, 'wcj_export_enabled', 'no', 'yes'),
(427, 'wcj_eu_vat_number_enabled', 'no', 'yes'),
(428, 'wcj_old_slugs_enabled', 'no', 'yes'),
(429, 'wcj_reports_enabled', 'no', 'yes'),
(430, 'wcj_wpml_enabled', 'no', 'yes'),
(431, 'wcj_modules_by_user_roles_enabled', 'no', 'yes'),
(432, 'booster_plus_for_woocommerce_version', '3.6.1', 'yes'),
(433, 'widget_wcj_widget_multicurrency', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(434, 'widget_wcj_widget_country_switcher', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(435, 'widget_wcj_widget_left_to_free_shipping', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(436, 'widget_wcj_widget_selector', 'a:3:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}i:5;a:2:{s:5:\"title\";s:0:\"\";s:13:\"selector_type\";s:25:\"product_custom_visibility\";}}', 'yes'),
(437, 'wcj_check_site_key_cron_time_schedule', '1545338206', 'yes'),
(438, 'external_updates-booster-plus-for-woocommerce', 'O:8:\"stdClass\":3:{s:9:\"lastCheck\";i:1545331909;s:14:\"checkedVersion\";s:5:\"3.6.1\";s:6:\"update\";O:8:\"stdClass\":9:{s:2:\"id\";i:0;s:4:\"slug\";s:28:\"booster-plus-for-woocommerce\";s:7:\"version\";s:5:\"4.1.0\";s:8:\"homepage\";s:18:\"https://booster.io\";s:6:\"tested\";s:3:\"5.0\";s:12:\"download_url\";N;s:14:\"upgrade_notice\";N;s:8:\"filename\";s:61:\"booster-plus-for-woocommerce/booster-plus-for-woocommerce.php\";s:12:\"translations\";a:0:{}}}', 'no'),
(441, 'elementor_version', '2.3.4', 'yes'),
(442, '_elementor_installed_time', '1543869441', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(443, 'elementor_remote_info_library', 'a:2:{s:10:\"categories\";a:22:{i:0;s:8:\"404 page\";i:1;s:5:\"about\";i:2;s:7:\"archive\";i:3;s:14:\"call to action\";i:4;s:7:\"clients\";i:5;s:7:\"contact\";i:6;s:3:\"faq\";i:7;s:8:\"features\";i:8;s:6:\"footer\";i:9;s:6:\"header\";i:10;s:4:\"hero\";i:11;s:9:\"portfolio\";i:12;s:7:\"pricing\";i:13;s:15:\"product archive\";i:14;s:8:\"services\";i:15;s:11:\"single page\";i:16;s:11:\"single post\";i:17;s:14:\"single product\";i:18;s:5:\"stats\";i:19;s:9:\"subscribe\";i:20;s:4:\"team\";i:21;s:12:\"testimonials\";}s:9:\"templates\";a:439:{i:0;a:14:{s:2:\"id\";s:4:\"5525\";s:5:\"title\";s:8:\"About 14\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_10.png\";s:12:\"tmpl_created\";s:10:\"1520443532\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-14/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"15\";s:11:\"trend_index\";s:2:\"10\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:1;a:14:{s:2:\"id\";s:4:\"5533\";s:5:\"title\";s:8:\"About 15\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2018/03/about_black_10.png\";s:12:\"tmpl_created\";s:10:\"1520443534\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-15/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"54\";s:11:\"trend_index\";s:2:\"36\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:2;a:14:{s:2:\"id\";s:4:\"5575\";s:5:\"title\";s:5:\"CTA 7\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443543\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/cta-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"30\";s:11:\"trend_index\";s:2:\"15\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:3;a:14:{s:2:\"id\";s:4:\"5615\";s:5:\"title\";s:10:\"Features 6\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_5.png\";s:12:\"tmpl_created\";s:10:\"1520443551\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/features-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:12:\"[\"features\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"47\";s:11:\"trend_index\";s:2:\"31\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:4;a:14:{s:2:\"id\";s:4:\"5624\";s:5:\"title\";s:10:\"Features 5\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/features_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443553\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/features-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:12:\"[\"features\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"103\";s:11:\"trend_index\";s:2:\"86\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:5;a:14:{s:2:\"id\";s:4:\"5684\";s:5:\"title\";s:5:\"FAQ 8\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/faq_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443565\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/faq-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:3:\"faq\";s:4:\"tags\";s:7:\"[\"faq\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"85\";s:11:\"trend_index\";s:2:\"73\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:6;a:14:{s:2:\"id\";s:4:\"5693\";s:5:\"title\";s:5:\"FAQ 9\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/faq_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443567\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/faq-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:3:\"faq\";s:4:\"tags\";s:7:\"[\"faq\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"208\";s:11:\"trend_index\";s:3:\"159\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:7;a:14:{s:2:\"id\";s:4:\"5703\";s:5:\"title\";s:6:\"FAQ 13\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/faq_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443569\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/faq-13/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:3:\"faq\";s:4:\"tags\";s:7:\"[\"faq\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"52\";s:11:\"trend_index\";s:2:\"34\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:8;a:14:{s:2:\"id\";s:4:\"5711\";s:5:\"title\";s:5:\"FAQ 1\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/faq_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443571\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/faq-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:3:\"faq\";s:4:\"tags\";s:7:\"[\"faq\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"212\";s:11:\"trend_index\";s:3:\"254\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:9;a:14:{s:2:\"id\";s:4:\"5719\";s:5:\"title\";s:5:\"FAQ 4\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/faq_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443573\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/faq-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:3:\"faq\";s:4:\"tags\";s:7:\"[\"faq\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"128\";s:11:\"trend_index\";s:3:\"175\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:10;a:14:{s:2:\"id\";s:4:\"5729\";s:5:\"title\";s:5:\"FAQ 5\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/faq_black_3.png\";s:12:\"tmpl_created\";s:10:\"1520443575\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/faq-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:3:\"faq\";s:4:\"tags\";s:7:\"[\"faq\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"315\";s:11:\"trend_index\";s:3:\"255\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:11;a:14:{s:2:\"id\";s:4:\"5737\";s:5:\"title\";s:6:\"FAQ 10\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/faq_white_4.png\";s:12:\"tmpl_created\";s:10:\"1520443576\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/faq-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:3:\"faq\";s:4:\"tags\";s:7:\"[\"faq\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"165\";s:11:\"trend_index\";s:3:\"138\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:12;a:14:{s:2:\"id\";s:4:\"5746\";s:5:\"title\";s:6:\"FAQ 11\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/faq_black_4.png\";s:12:\"tmpl_created\";s:10:\"1520443578\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/faq-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:3:\"faq\";s:4:\"tags\";s:7:\"[\"faq\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"193\";s:11:\"trend_index\";s:3:\"245\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:13;a:14:{s:2:\"id\";s:4:\"5755\";s:5:\"title\";s:5:\"FAQ 6\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/faq_white_5.png\";s:12:\"tmpl_created\";s:10:\"1520443580\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/faq-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:3:\"faq\";s:4:\"tags\";s:7:\"[\"faq\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"101\";s:11:\"trend_index\";s:2:\"89\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:14;a:14:{s:2:\"id\";s:4:\"5764\";s:5:\"title\";s:5:\"FAQ 7\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/faq_black_5.png\";s:12:\"tmpl_created\";s:10:\"1520443582\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/faq-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:3:\"faq\";s:4:\"tags\";s:7:\"[\"faq\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"314\";s:11:\"trend_index\";s:3:\"328\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:15;a:14:{s:2:\"id\";s:4:\"5773\";s:5:\"title\";s:7:\"Hero 11\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/03/header_1.png\";s:12:\"tmpl_created\";s:10:\"1520443584\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/hero-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"45\";s:11:\"trend_index\";s:2:\"28\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:16;a:14:{s:2:\"id\";s:4:\"5783\";s:5:\"title\";s:7:\"Hero 10\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/03/header_2.png\";s:12:\"tmpl_created\";s:10:\"1520443586\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/hero-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"332\";s:11:\"trend_index\";s:3:\"268\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:17;a:14:{s:2:\"id\";s:4:\"5792\";s:5:\"title\";s:6:\"Hero 9\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/03/header_3.png\";s:12:\"tmpl_created\";s:10:\"1520443588\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/hero-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"216\";s:11:\"trend_index\";s:3:\"184\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:18;a:14:{s:2:\"id\";s:4:\"5801\";s:5:\"title\";s:6:\"Hero 7\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/03/header_4.png\";s:12:\"tmpl_created\";s:10:\"1520443589\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/hero-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:10:\"[\"header\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"29\";s:11:\"trend_index\";s:2:\"17\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:19;a:14:{s:2:\"id\";s:4:\"5811\";s:5:\"title\";s:6:\"Hero 8\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/03/header_5.png\";s:12:\"tmpl_created\";s:10:\"1520443591\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/hero-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"108\";s:11:\"trend_index\";s:3:\"106\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:20;a:14:{s:2:\"id\";s:4:\"5820\";s:5:\"title\";s:9:\"Contact 2\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/contact_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443593\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/contact-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"180\";s:11:\"trend_index\";s:3:\"226\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:21;a:14:{s:2:\"id\";s:4:\"5828\";s:5:\"title\";s:9:\"Contact 3\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/contact_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443595\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/contact-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"306\";s:11:\"trend_index\";s:3:\"317\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:22;a:14:{s:2:\"id\";s:4:\"5836\";s:5:\"title\";s:10:\"Contact 10\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/contact_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443597\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/contact-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"114\";s:11:\"trend_index\";s:3:\"102\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:23;a:14:{s:2:\"id\";s:4:\"5844\";s:5:\"title\";s:10:\"Contact 11\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/contact_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443599\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/contact-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"292\";s:11:\"trend_index\";s:3:\"248\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:24;a:14:{s:2:\"id\";s:4:\"5852\";s:5:\"title\";s:6:\"CTA 34\";s:9:\"thumbnail\";s:67:\"https://library.elementor.com/wp-content/uploads/2018/03/form_1.png\";s:12:\"tmpl_created\";s:10:\"1520443600\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-34/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:8:\"[\"form\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"420\";s:11:\"trend_index\";s:3:\"390\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:25;a:14:{s:2:\"id\";s:4:\"5947\";s:5:\"title\";s:7:\"Stats 8\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/numbers_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443621\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/stats-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:9:\"[\"Stats\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"350\";s:11:\"trend_index\";s:3:\"363\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:26;a:14:{s:2:\"id\";s:4:\"5956\";s:5:\"title\";s:7:\"Stats 7\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/numbers_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443623\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/stats-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:9:\"[\"Stats\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"411\";s:11:\"trend_index\";s:3:\"414\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:27;a:14:{s:2:\"id\";s:4:\"5963\";s:5:\"title\";s:10:\"Features 7\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/features_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443626\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/features-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:12:\"[\"features\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"78\";s:11:\"trend_index\";s:2:\"95\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:28;a:14:{s:2:\"id\";s:4:\"5974\";s:5:\"title\";s:10:\"Features 4\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/features_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443629\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/features-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:12:\"[\"features\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"75\";s:11:\"trend_index\";s:2:\"97\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:29;a:14:{s:2:\"id\";s:4:\"5983\";s:5:\"title\";s:10:\"Features 3\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/features_black_3.png\";s:12:\"tmpl_created\";s:10:\"1520443630\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/features-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:11:\"[\"featues\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"243\";s:11:\"trend_index\";s:3:\"205\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:30;a:14:{s:2:\"id\";s:4:\"5991\";s:5:\"title\";s:11:\"Features 10\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/features_white_4.png\";s:12:\"tmpl_created\";s:10:\"1520443632\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/features-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:12:\"[\"features\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"122\";s:11:\"trend_index\";s:3:\"145\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:31;a:14:{s:2:\"id\";s:4:\"5999\";s:5:\"title\";s:7:\"Team 14\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/team_black_10.png\";s:12:\"tmpl_created\";s:10:\"1520443634\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-14/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"91\";s:11:\"trend_index\";s:3:\"103\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:32;a:14:{s:2:\"id\";s:4:\"6008\";s:5:\"title\";s:6:\"Team 6\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/team_white_10.png\";s:12:\"tmpl_created\";s:10:\"1520443636\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/team-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"79\";s:11:\"trend_index\";s:2:\"67\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:33;a:14:{s:2:\"id\";s:4:\"6027\";s:5:\"title\";s:7:\"About 5\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_1-1.png\";s:12:\"tmpl_created\";s:10:\"1520443639\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/about-5-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"56\";s:11:\"trend_index\";s:2:\"42\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:34;a:14:{s:2:\"id\";s:4:\"6036\";s:5:\"title\";s:7:\"About 6\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/about_black_1-1.png\";s:12:\"tmpl_created\";s:10:\"1520443641\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/about-6-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"97\";s:11:\"trend_index\";s:2:\"69\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:35;a:14:{s:2:\"id\";s:4:\"6044\";s:5:\"title\";s:11:\"Features 11\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/features_white_5.png\";s:12:\"tmpl_created\";s:10:\"1520443643\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/features-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:12:\"[\"features\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"82\";s:11:\"trend_index\";s:2:\"58\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:36;a:14:{s:2:\"id\";s:4:\"6053\";s:5:\"title\";s:10:\"Features 1\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/features_black_5.png\";s:12:\"tmpl_created\";s:10:\"1520443645\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/features-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:12:\"[\"features\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"170\";s:11:\"trend_index\";s:3:\"155\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:37;a:14:{s:2:\"id\";s:4:\"6063\";s:5:\"title\";s:7:\"Stats 5\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/numbers_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443647\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/stats-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:11:\"[\"numbers\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"158\";s:11:\"trend_index\";s:3:\"188\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:38;a:14:{s:2:\"id\";s:4:\"6071\";s:5:\"title\";s:8:\"Stats 13\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/numbers_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443649\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/stats-13/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:11:\"[\"numbers\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"162\";s:11:\"trend_index\";s:3:\"259\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:39;a:14:{s:2:\"id\";s:4:\"6079\";s:5:\"title\";s:7:\"Stats 3\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/numbers_white_4.png\";s:12:\"tmpl_created\";s:10:\"1520443651\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/stats-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:11:\"[\"numbers\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"288\";s:11:\"trend_index\";s:3:\"253\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:40;a:14:{s:2:\"id\";s:4:\"6089\";s:5:\"title\";s:7:\"Stats 4\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/numbers_white_5.png\";s:12:\"tmpl_created\";s:10:\"1520443653\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/stats-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:9:\"[\"Stats\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"182\";s:11:\"trend_index\";s:3:\"156\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:41;a:14:{s:2:\"id\";s:4:\"6097\";s:5:\"title\";s:7:\"Stats 6\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/numbers_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443655\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/stats-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:11:\"[\"numbers\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"267\";s:11:\"trend_index\";s:3:\"237\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:42;a:14:{s:2:\"id\";s:4:\"6106\";s:5:\"title\";s:7:\"Stats 2\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/numbers_white_6.png\";s:12:\"tmpl_created\";s:10:\"1520443657\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/stats-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:11:\"[\"numbers\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"333\";s:11:\"trend_index\";s:3:\"272\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:43;a:14:{s:2:\"id\";s:4:\"6114\";s:5:\"title\";s:7:\"Stats 1\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/numbers_black_6.png\";s:12:\"tmpl_created\";s:10:\"1520443659\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/stats-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:11:\"[\"numbers\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"366\";s:11:\"trend_index\";s:3:\"398\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:44;a:14:{s:2:\"id\";s:4:\"6122\";s:5:\"title\";s:7:\"About 8\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_2-1.png\";s:12:\"tmpl_created\";s:10:\"1520443661\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/about-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"53\";s:11:\"trend_index\";s:2:\"43\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:45;a:14:{s:2:\"id\";s:4:\"6135\";s:5:\"title\";s:8:\"About 10\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443663\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"89\";s:11:\"trend_index\";s:2:\"80\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:46;a:14:{s:2:\"id\";s:4:\"6144\";s:5:\"title\";s:7:\"Team 17\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/team_white_11.png\";s:12:\"tmpl_created\";s:10:\"1520443664\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-17/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"155\";s:11:\"trend_index\";s:3:\"124\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:47;a:14:{s:2:\"id\";s:4:\"6152\";s:5:\"title\";s:7:\"Stats 9\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/progress_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443666\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/stats-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:9:\"[\"Stats\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"220\";s:11:\"trend_index\";s:3:\"241\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:48;a:14:{s:2:\"id\";s:4:\"6162\";s:5:\"title\";s:11:\"Services 31\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/progress_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443668\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-31/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:9:\"[\"Stats\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"324\";s:11:\"trend_index\";s:3:\"258\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:49;a:14:{s:2:\"id\";s:4:\"6170\";s:5:\"title\";s:8:\"Stats 11\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/progress_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443670\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/stats-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:9:\"[\"Stats\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"328\";s:11:\"trend_index\";s:3:\"330\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:50;a:14:{s:2:\"id\";s:4:\"6178\";s:5:\"title\";s:8:\"Stats 10\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/progress_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443676\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/stats-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:9:\"[\"Stats\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"362\";s:11:\"trend_index\";s:3:\"308\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:51;a:14:{s:2:\"id\";s:4:\"6186\";s:5:\"title\";s:8:\"Stats 12\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/progress_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443678\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/stats-12/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"stats\";s:4:\"tags\";s:9:\"[\"Stats\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"397\";s:11:\"trend_index\";s:3:\"384\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:52;a:14:{s:2:\"id\";s:4:\"6196\";s:5:\"title\";s:10:\"Features 9\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/features_white_6.png\";s:12:\"tmpl_created\";s:10:\"1520443680\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/features-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:12:\"[\"features\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"106\";s:11:\"trend_index\";s:3:\"127\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:53;a:14:{s:2:\"id\";s:4:\"6204\";s:5:\"title\";s:10:\"Features 8\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/progress_black_6.png\";s:12:\"tmpl_created\";s:10:\"1520443681\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/features-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:12:\"[\"features\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"204\";s:11:\"trend_index\";s:3:\"223\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:54;a:14:{s:2:\"id\";s:4:\"6212\";s:5:\"title\";s:11:\"Features 12\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/features_white_7.png\";s:12:\"tmpl_created\";s:10:\"1520443684\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/features-12/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:12:\"[\"features\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"88\";s:11:\"trend_index\";s:3:\"109\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:55;a:14:{s:2:\"id\";s:4:\"6220\";s:5:\"title\";s:10:\"Features 2\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/features_white_8.png\";s:12:\"tmpl_created\";s:10:\"1520443685\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/features-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"features\";s:4:\"tags\";s:12:\"[\"features\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"92\";s:11:\"trend_index\";s:2:\"79\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:56;a:14:{s:2:\"id\";s:4:\"6230\";s:5:\"title\";s:6:\"Hero 6\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/heroo_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443687\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/hero-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:8:\"[\"hero\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"363\";s:11:\"trend_index\";s:3:\"327\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:57;a:14:{s:2:\"id\";s:4:\"6239\";s:5:\"title\";s:6:\"Hero 3\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/heroo_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443689\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/hero-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:8:\"[\"hero\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"37\";s:11:\"trend_index\";s:2:\"23\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:58;a:14:{s:2:\"id\";s:4:\"6249\";s:5:\"title\";s:6:\"Hero 5\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/heroo_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443691\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/hero-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:8:\"[\"hero\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"70\";s:11:\"trend_index\";s:2:\"60\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:59;a:14:{s:2:\"id\";s:4:\"6258\";s:5:\"title\";s:6:\"Hero 4\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/heroo_black_3.png\";s:12:\"tmpl_created\";s:10:\"1520443693\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/hero-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:8:\"[\"hero\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"374\";s:11:\"trend_index\";s:3:\"368\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:60;a:14:{s:2:\"id\";s:4:\"6266\";s:5:\"title\";s:6:\"Hero 1\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/heroo_black_4.png\";s:12:\"tmpl_created\";s:10:\"1520443695\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/hero-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:8:\"[\"hero\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"59\";s:11:\"trend_index\";s:2:\"51\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:61;a:14:{s:2:\"id\";s:4:\"6274\";s:5:\"title\";s:6:\"Hero 2\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/heroo_black_5.png\";s:12:\"tmpl_created\";s:10:\"1520443698\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/hero-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:8:\"[\"hero\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"99\";s:11:\"trend_index\";s:2:\"99\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:62;a:14:{s:2:\"id\";s:4:\"6017\";s:5:\"title\";s:6:\"CTA 14\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_14.png\";s:12:\"tmpl_created\";s:10:\"1520520331\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-14/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"149\";s:11:\"trend_index\";s:3:\"125\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:63;a:14:{s:2:\"id\";s:4:\"4826\";s:5:\"title\";s:14:\"Testimonial 24\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520520544\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/blocks/testimonial-24-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"274\";s:11:\"trend_index\";s:3:\"266\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:64;a:14:{s:2:\"id\";s:4:\"4835\";s:5:\"title\";s:14:\"Testimonial 16\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520520546\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-16/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"368\";s:11:\"trend_index\";s:3:\"391\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:65;a:14:{s:2:\"id\";s:4:\"4843\";s:5:\"title\";s:14:\"Testimonial 18\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520520548\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-18/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"384\";s:11:\"trend_index\";s:3:\"341\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:66;a:14:{s:2:\"id\";s:4:\"4854\";s:5:\"title\";s:14:\"Testimonial 13\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520520549\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-13/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"429\";s:11:\"trend_index\";s:3:\"394\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:67;a:14:{s:2:\"id\";s:4:\"4863\";s:5:\"title\";s:14:\"Testimonial 19\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520520551\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-19/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"271\";s:11:\"trend_index\";s:3:\"229\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:68;a:14:{s:2:\"id\";s:4:\"4871\";s:5:\"title\";s:14:\"Testimonial 12\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_black_3.png\";s:12:\"tmpl_created\";s:10:\"1520520552\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-12/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"249\";s:11:\"trend_index\";s:3:\"214\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:69;a:14:{s:2:\"id\";s:4:\"4880\";s:5:\"title\";s:14:\"Testimonial 20\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/customers-1.jpg\";s:12:\"tmpl_created\";s:10:\"1520520554\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-20/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"371\";s:11:\"trend_index\";s:3:\"309\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:70;a:14:{s:2:\"id\";s:4:\"4889\";s:5:\"title\";s:14:\"Testimonial 11\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/customers-2.jpg\";s:12:\"tmpl_created\";s:10:\"1520520556\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"404\";s:11:\"trend_index\";s:3:\"431\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:71;a:14:{s:2:\"id\";s:4:\"4897\";s:5:\"title\";s:14:\"Testimonial 21\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_white_5.png\";s:12:\"tmpl_created\";s:10:\"1520520557\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-21/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"93\";s:11:\"trend_index\";s:2:\"74\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:72;a:14:{s:2:\"id\";s:4:\"4905\";s:5:\"title\";s:14:\"Testimonial 22\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_white_6.png\";s:12:\"tmpl_created\";s:10:\"1520520559\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-22/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"120\";s:11:\"trend_index\";s:3:\"120\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:73;a:14:{s:2:\"id\";s:4:\"4913\";s:5:\"title\";s:14:\"Testimonial 23\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_white_7.png\";s:12:\"tmpl_created\";s:10:\"1520520561\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-23/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"247\";s:11:\"trend_index\";s:3:\"233\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:74;a:14:{s:2:\"id\";s:4:\"4921\";s:5:\"title\";s:14:\"Testimonial 10\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_black_5.png\";s:12:\"tmpl_created\";s:10:\"1520520562\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"223\";s:11:\"trend_index\";s:3:\"150\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:75;a:14:{s:2:\"id\";s:4:\"4929\";s:5:\"title\";s:14:\"Testimonial 24\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_white_8.png\";s:12:\"tmpl_created\";s:10:\"1520520564\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-24/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"63\";s:11:\"trend_index\";s:2:\"35\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:76;a:14:{s:2:\"id\";s:4:\"4939\";s:5:\"title\";s:13:\"Testimonial 9\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_black_8.png\";s:12:\"tmpl_created\";s:10:\"1520520565\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/testimonial-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"95\";s:11:\"trend_index\";s:3:\"113\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:77;a:14:{s:2:\"id\";s:4:\"4947\";s:5:\"title\";s:14:\"Testimonial 27\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_white_9.png\";s:12:\"tmpl_created\";s:10:\"1520520567\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-27/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"181\";s:11:\"trend_index\";s:3:\"187\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:78;a:14:{s:2:\"id\";s:4:\"4955\";s:5:\"title\";s:14:\"Testimonial 29\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_black_9.png\";s:12:\"tmpl_created\";s:10:\"1520520569\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-29/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"319\";s:11:\"trend_index\";s:3:\"329\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:79;a:14:{s:2:\"id\";s:4:\"4963\";s:5:\"title\";s:14:\"Testimonial 25\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_white_10.png\";s:12:\"tmpl_created\";s:10:\"1520520570\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/blocks/testimonial-25-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"376\";s:11:\"trend_index\";s:3:\"306\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:80;a:14:{s:2:\"id\";s:4:\"4971\";s:5:\"title\";s:14:\"Testimonial 26\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_white_11.png\";s:12:\"tmpl_created\";s:10:\"1520520572\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-26/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"431\";s:11:\"trend_index\";s:3:\"436\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:81;a:14:{s:2:\"id\";s:4:\"4979\";s:5:\"title\";s:14:\"Testimonial 15\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_black_10.png\";s:12:\"tmpl_created\";s:10:\"1520520573\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-15/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"417\";s:11:\"trend_index\";s:3:\"378\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:82;a:14:{s:2:\"id\";s:4:\"4987\";s:5:\"title\";s:14:\"Testimonial 17\";s:9:\"thumbnail\";s:84:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_white_12-1.png\";s:12:\"tmpl_created\";s:10:\"1520520575\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-17/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"152\";s:11:\"trend_index\";s:3:\"172\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:83;a:14:{s:2:\"id\";s:4:\"4995\";s:5:\"title\";s:14:\"Testimonial 14\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2018/03/testimonials_black_12.png\";s:12:\"tmpl_created\";s:10:\"1520520577\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/blocks/testimonial-14/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:12:\"testimonials\";s:4:\"tags\";s:15:\"[\"Testimonial\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"359\";s:11:\"trend_index\";s:3:\"397\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:84;a:14:{s:2:\"id\";s:4:\"5007\";s:5:\"title\";s:11:\"Portfolio 7\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520520578\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/portfolio-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"62\";s:11:\"trend_index\";s:2:\"41\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:85;a:14:{s:2:\"id\";s:4:\"5019\";s:5:\"title\";s:11:\"Portfolio 1\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520520580\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/portfolio-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"164\";s:11:\"trend_index\";s:3:\"179\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:86;a:14:{s:2:\"id\";s:4:\"5027\";s:5:\"title\";s:12:\"Portfolio 11\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520520581\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/blocks/portfolio-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"311\";s:11:\"trend_index\";s:3:\"282\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:87;a:14:{s:2:\"id\";s:4:\"5037\";s:5:\"title\";s:12:\"Portfolio 12\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520520583\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/blocks/portfolio-12/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"270\";s:11:\"trend_index\";s:3:\"313\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:88;a:14:{s:2:\"id\";s:4:\"5057\";s:5:\"title\";s:12:\"Portfolio 13\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_white_4.png\";s:12:\"tmpl_created\";s:10:\"1520520586\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/blocks/portfolio-13/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"218\";s:11:\"trend_index\";s:3:\"160\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:89;a:14:{s:2:\"id\";s:4:\"5071\";s:5:\"title\";s:12:\"Portfolio 14\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_white_5.png\";s:12:\"tmpl_created\";s:10:\"1520520588\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/blocks/portfolio-14/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"279\";s:11:\"trend_index\";s:3:\"284\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:90;a:14:{s:2:\"id\";s:4:\"5082\";s:5:\"title\";s:11:\"Portfolio 4\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_black_4.png\";s:12:\"tmpl_created\";s:10:\"1520520589\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/portfolio-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"396\";s:11:\"trend_index\";s:3:\"406\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:91;a:14:{s:2:\"id\";s:4:\"5090\";s:5:\"title\";s:12:\"Portfolio 15\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_white_6.png\";s:12:\"tmpl_created\";s:10:\"1520520591\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/blocks/portfolio-15/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"195\";s:11:\"trend_index\";s:3:\"176\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:92;a:14:{s:2:\"id\";s:4:\"5098\";s:5:\"title\";s:12:\"Portfolio 16\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_white_7.png\";s:12:\"tmpl_created\";s:10:\"1520520593\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/blocks/portfolio-16/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"163\";s:11:\"trend_index\";s:3:\"114\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:93;a:14:{s:2:\"id\";s:4:\"5107\";s:5:\"title\";s:11:\"Portfolio 5\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_black_7.png\";s:12:\"tmpl_created\";s:10:\"1520520594\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/portfolio-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"360\";s:11:\"trend_index\";s:3:\"361\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:94;a:14:{s:2:\"id\";s:4:\"5115\";s:5:\"title\";s:12:\"Portfolio 17\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_white_8.png\";s:12:\"tmpl_created\";s:10:\"1520520596\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/blocks/portfolio-17/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"35\";s:11:\"trend_index\";s:2:\"26\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:95;a:14:{s:2:\"id\";s:4:\"5125\";s:5:\"title\";s:11:\"Portfolio 6\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_black_8.png\";s:12:\"tmpl_created\";s:10:\"1520520597\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/portfolio-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"228\";s:11:\"trend_index\";s:3:\"212\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:96;a:14:{s:2:\"id\";s:4:\"5133\";s:5:\"title\";s:12:\"Portfolio 18\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_white_9.png\";s:12:\"tmpl_created\";s:10:\"1520520599\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/blocks/portfolio-18/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"166\";s:11:\"trend_index\";s:3:\"168\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:97;a:14:{s:2:\"id\";s:4:\"5141\";s:5:\"title\";s:12:\"Portfolio 10\";s:9:\"thumbnail\";s:79:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_white_10.png\";s:12:\"tmpl_created\";s:10:\"1520520601\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/blocks/portfolio-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"190\";s:11:\"trend_index\";s:3:\"355\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:98;a:14:{s:2:\"id\";s:4:\"5149\";s:5:\"title\";s:11:\"Portfolio 2\";s:9:\"thumbnail\";s:79:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_black_10.png\";s:12:\"tmpl_created\";s:10:\"1520520602\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/portfolio-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"178\";s:11:\"trend_index\";s:3:\"409\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:99;a:14:{s:2:\"id\";s:4:\"5542\";s:5:\"title\";s:6:\"CTA 19\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520520681\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-19/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"157\";s:11:\"trend_index\";s:3:\"171\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:100;a:14:{s:2:\"id\";s:4:\"5550\";s:5:\"title\";s:6:\"CTA 33\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520520682\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-33/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"295\";s:11:\"trend_index\";s:3:\"264\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:101;a:14:{s:2:\"id\";s:4:\"5558\";s:5:\"title\";s:5:\"CTA 1\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520520684\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/cta-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"115\";s:11:\"trend_index\";s:3:\"116\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:102;a:14:{s:2:\"id\";s:4:\"5567\";s:5:\"title\";s:5:\"CTA 2\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520520685\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/cta-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"171\";s:11:\"trend_index\";s:3:\"197\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:103;a:14:{s:2:\"id\";s:4:\"5583\";s:5:\"title\";s:6:\"CTA 26\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_3.png\";s:12:\"tmpl_created\";s:10:\"1520520689\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-26/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"256\";s:11:\"trend_index\";s:3:\"249\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:104;a:14:{s:2:\"id\";s:4:\"5591\";s:5:\"title\";s:5:\"CTA 5\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_4.png\";s:12:\"tmpl_created\";s:10:\"1520520691\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/cta-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"107\";s:11:\"trend_index\";s:3:\"115\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:105;a:14:{s:2:\"id\";s:4:\"5599\";s:5:\"title\";s:5:\"CTA 6\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_4.png\";s:12:\"tmpl_created\";s:10:\"1520520693\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/cta-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"265\";s:11:\"trend_index\";s:3:\"246\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:106;a:14:{s:2:\"id\";s:4:\"5607\";s:5:\"title\";s:6:\"CTA 13\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_5.png\";s:12:\"tmpl_created\";s:10:\"1520520695\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-13/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"156\";s:11:\"trend_index\";s:3:\"185\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:107;a:14:{s:2:\"id\";s:4:\"5634\";s:5:\"title\";s:6:\"CTA 24\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_6.png\";s:12:\"tmpl_created\";s:10:\"1520520699\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-24/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"169\";s:11:\"trend_index\";s:3:\"133\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:108;a:14:{s:2:\"id\";s:4:\"5642\";s:5:\"title\";s:6:\"CTA 25\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_6.png\";s:12:\"tmpl_created\";s:10:\"1520520701\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-25/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"236\";s:11:\"trend_index\";s:3:\"217\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:109;a:14:{s:2:\"id\";s:4:\"5650\";s:5:\"title\";s:5:\"CTA 9\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_7.png\";s:12:\"tmpl_created\";s:10:\"1520520702\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/cta-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"113\";s:11:\"trend_index\";s:3:\"118\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:110;a:14:{s:2:\"id\";s:4:\"5658\";s:5:\"title\";s:5:\"CTA 8\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_7.png\";s:12:\"tmpl_created\";s:10:\"1520520704\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/cta-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"200\";s:11:\"trend_index\";s:3:\"227\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:111;a:14:{s:2:\"id\";s:4:\"5667\";s:5:\"title\";s:5:\"CTA 3\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_8.png\";s:12:\"tmpl_created\";s:10:\"1520520705\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/cta-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"132\";s:11:\"trend_index\";s:3:\"123\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:112;a:14:{s:2:\"id\";s:4:\"5675\";s:5:\"title\";s:5:\"CTA 4\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_8.png\";s:12:\"tmpl_created\";s:10:\"1520520707\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/blocks/cta-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"370\";s:11:\"trend_index\";s:3:\"342\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:113;a:14:{s:2:\"id\";s:4:\"5860\";s:5:\"title\";s:6:\"CTA 17\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_9.png\";s:12:\"tmpl_created\";s:10:\"1520520746\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-17/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"137\";s:11:\"trend_index\";s:3:\"200\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:114;a:14:{s:2:\"id\";s:4:\"5869\";s:5:\"title\";s:6:\"CTA 18\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_10.png\";s:12:\"tmpl_created\";s:10:\"1520520747\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-18/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"294\";s:11:\"trend_index\";s:3:\"276\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:115;a:14:{s:2:\"id\";s:4:\"5877\";s:5:\"title\";s:6:\"CTA 16\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_10.png\";s:12:\"tmpl_created\";s:10:\"1520520749\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-16/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"402\";s:11:\"trend_index\";s:3:\"357\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:116;a:14:{s:2:\"id\";s:4:\"5885\";s:5:\"title\";s:6:\"CTA 15\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_11.png\";s:12:\"tmpl_created\";s:10:\"1520520751\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-15/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"312\";s:11:\"trend_index\";s:3:\"271\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:117;a:14:{s:2:\"id\";s:4:\"5893\";s:5:\"title\";s:6:\"CTA 21\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_12.png\";s:12:\"tmpl_created\";s:10:\"1520520752\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-21/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"241\";s:11:\"trend_index\";s:3:\"192\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:118;a:14:{s:2:\"id\";s:4:\"5904\";s:5:\"title\";s:6:\"CTA 27\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_13.png\";s:12:\"tmpl_created\";s:10:\"1520520754\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-27/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"387\";s:11:\"trend_index\";s:3:\"383\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:119;a:14:{s:2:\"id\";s:4:\"5912\";s:5:\"title\";s:6:\"CTA 28\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_11.png\";s:12:\"tmpl_created\";s:10:\"1520520755\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-28/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"433\";s:11:\"trend_index\";s:3:\"385\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:120;a:14:{s:2:\"id\";s:4:\"5921\";s:5:\"title\";s:6:\"CTA 12\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_14.png\";s:12:\"tmpl_created\";s:10:\"1520520757\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-12/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"257\";s:11:\"trend_index\";s:3:\"244\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:121;a:14:{s:2:\"id\";s:4:\"5930\";s:5:\"title\";s:6:\"CTA 11\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_white_15.png\";s:12:\"tmpl_created\";s:10:\"1520520758\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"72\";s:11:\"trend_index\";s:2:\"61\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:122;a:14:{s:2:\"id\";s:4:\"5939\";s:5:\"title\";s:6:\"CTA 10\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2018/03/cta_black_13-1.png\";s:12:\"tmpl_created\";s:10:\"1520520760\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:7:\"[\"cta\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"176\";s:11:\"trend_index\";s:3:\"219\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:123;a:14:{s:2:\"id\";s:4:\"7596\";s:5:\"title\";s:8:\"Header 1\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.12.jpg\";s:12:\"tmpl_created\";s:10:\"1521546999\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/header-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:10:\"[\"header\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"36\";s:11:\"trend_index\";s:2:\"37\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:124;a:14:{s:2:\"id\";s:4:\"7615\";s:5:\"title\";s:8:\"Header 2\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.1.jpg\";s:12:\"tmpl_created\";s:10:\"1521547237\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/header-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:10:\"[\"header\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"38\";s:11:\"trend_index\";s:2:\"29\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:125;a:14:{s:2:\"id\";s:4:\"7627\";s:5:\"title\";s:8:\"Footer 8\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/footer_hero_1.png\";s:12:\"tmpl_created\";s:10:\"1521547332\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/footer-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:10:\"[\"footer\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"90\";s:11:\"trend_index\";s:3:\"105\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:126;a:14:{s:2:\"id\";s:4:\"7638\";s:5:\"title\";s:8:\"Footer 9\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/footer_hero_2.png\";s:12:\"tmpl_created\";s:10:\"1521547502\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/footer-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:10:\"[\"footer\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"121\";s:11:\"trend_index\";s:3:\"130\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:127;a:14:{s:2:\"id\";s:4:\"7663\";s:5:\"title\";s:13:\"Single Post 2\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/single_post_2_v2.jpg\";s:12:\"tmpl_created\";s:10:\"1521547761\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-post-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single post\";s:4:\"tags\";s:24:\"[\"Blog\",\"Post\",\"Single\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"58\";s:11:\"trend_index\";s:2:\"25\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:128;a:14:{s:2:\"id\";s:4:\"7650\";s:5:\"title\";s:13:\"Single Post 1\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/03/single_post_1_v2.jpg\";s:12:\"tmpl_created\";s:10:\"1521557736\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-post-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single post\";s:4:\"tags\";s:24:\"[\"Blog\",\"Post\",\"Single\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"83\";s:11:\"trend_index\";s:2:\"83\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:129;a:14:{s:2:\"id\";s:4:\"7686\";s:5:\"title\";s:12:\"Blog Posts 1\";s:9:\"thumbnail\";s:71:\"https://library.elementor.com/wp-content/uploads/2018/03/blog_posts.png\";s:12:\"tmpl_created\";s:10:\"1521558047\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/blocks/blog-posts-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:26:\"[\"archive\",\"Blog\",\"posts\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"84\";s:11:\"trend_index\";s:3:\"128\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:130;a:14:{s:2:\"id\";s:4:\"4676\";s:5:\"title\";s:8:\"Footer 7\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/03/footer_7.png\";s:12:\"tmpl_created\";s:10:\"1522014215\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/footer_7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:10:\"[\"footer\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"192\";s:11:\"trend_index\";s:3:\"302\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:131;a:14:{s:2:\"id\";s:4:\"7997\";s:5:\"title\";s:10:\"footer 014\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.1.jpg\";s:12:\"tmpl_created\";s:10:\"1524582343\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/footer-014/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"118\";s:11:\"trend_index\";s:2:\"82\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:132;a:14:{s:2:\"id\";s:4:\"7982\";s:5:\"title\";s:10:\"footer 013\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.2.jpg\";s:12:\"tmpl_created\";s:10:\"1524582468\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/footer-013/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"298\";s:11:\"trend_index\";s:3:\"230\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:133;a:14:{s:2:\"id\";s:4:\"7959\";s:5:\"title\";s:10:\"footer 012\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.3.jpg\";s:12:\"tmpl_created\";s:10:\"1524582605\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/footer-012/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"202\";s:11:\"trend_index\";s:3:\"181\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:134;a:14:{s:2:\"id\";s:4:\"7950\";s:5:\"title\";s:10:\"footer 011\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.4.jpg\";s:12:\"tmpl_created\";s:10:\"1524582631\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/footer-011/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"275\";s:11:\"trend_index\";s:3:\"235\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:135;a:14:{s:2:\"id\";s:4:\"7937\";s:5:\"title\";s:10:\"footer 010\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.5.jpg\";s:12:\"tmpl_created\";s:10:\"1524582665\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/footer-010/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"227\";s:11:\"trend_index\";s:3:\"186\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:136;a:14:{s:2:\"id\";s:4:\"7927\";s:5:\"title\";s:9:\"footer 09\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.6.jpg\";s:12:\"tmpl_created\";s:10:\"1524582691\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/footer-09/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"185\";s:11:\"trend_index\";s:3:\"210\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:137;a:14:{s:2:\"id\";s:4:\"7917\";s:5:\"title\";s:9:\"footer 08\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.7.jpg\";s:12:\"tmpl_created\";s:10:\"1524582788\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/footer-08/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"117\";s:11:\"trend_index\";s:3:\"117\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:138;a:14:{s:2:\"id\";s:4:\"7904\";s:5:\"title\";s:9:\"footer 07\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.8.jpg\";s:12:\"tmpl_created\";s:10:\"1524582814\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/footer-07/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"230\";s:11:\"trend_index\";s:3:\"208\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:139;a:14:{s:2:\"id\";s:4:\"7837\";s:5:\"title\";s:9:\"footer 01\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.14.jpg\";s:12:\"tmpl_created\";s:10:\"1524582852\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/footer-01/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"406\";s:11:\"trend_index\";s:3:\"415\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:140;a:14:{s:2:\"id\";s:4:\"7852\";s:5:\"title\";s:9:\"footer 02\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.13.jpg\";s:12:\"tmpl_created\";s:10:\"1524582875\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/footer-02/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"255\";s:11:\"trend_index\";s:3:\"174\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:141;a:14:{s:2:\"id\";s:4:\"7862\";s:5:\"title\";s:9:\"footer 03\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.12.jpg\";s:12:\"tmpl_created\";s:10:\"1524582903\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/footer-03/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"153\";s:11:\"trend_index\";s:3:\"182\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:142;a:14:{s:2:\"id\";s:4:\"7871\";s:5:\"title\";s:9:\"footer 04\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.11.jpg\";s:12:\"tmpl_created\";s:10:\"1524582927\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/footer-04/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"119\";s:11:\"trend_index\";s:2:\"85\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:143;a:14:{s:2:\"id\";s:4:\"7884\";s:5:\"title\";s:9:\"footer 05\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.10.jpg\";s:12:\"tmpl_created\";s:10:\"1524582944\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/footer-05/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"31\";s:11:\"trend_index\";s:3:\"146\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:144;a:14:{s:2:\"id\";s:4:\"7892\";s:5:\"title\";s:9:\"footer 06\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/footer350.9.jpg\";s:12:\"tmpl_created\";s:10:\"1524583015\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/footer-06/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"130\";s:11:\"trend_index\";s:2:\"93\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:145;a:14:{s:2:\"id\";s:4:\"4212\";s:5:\"title\";s:11:\"Services 23\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443248\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-23/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"131\";s:11:\"trend_index\";s:3:\"169\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:146;a:14:{s:2:\"id\";s:4:\"7825\";s:5:\"title\";s:9:\"header 12\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.11.jpg\";s:12:\"tmpl_created\";s:10:\"1524583273\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/header-12/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"86\";s:11:\"trend_index\";s:2:\"94\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:147;a:14:{s:2:\"id\";s:4:\"4227\";s:5:\"title\";s:11:\"Services 30\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443250\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-30/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"342\";s:11:\"trend_index\";s:3:\"291\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:148;a:14:{s:2:\"id\";s:4:\"7812\";s:5:\"title\";s:9:\"header 11\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.10.jpg\";s:12:\"tmpl_created\";s:10:\"1524583298\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/header-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"112\";s:11:\"trend_index\";s:2:\"96\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:149;a:14:{s:2:\"id\";s:4:\"4235\";s:5:\"title\";s:11:\"Services 18\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443251\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-18/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"313\";s:11:\"trend_index\";s:3:\"369\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:150;a:14:{s:2:\"id\";s:4:\"7724\";s:5:\"title\";s:8:\"header 4\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.3.jpg\";s:12:\"tmpl_created\";s:10:\"1524583367\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/header-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"51\";s:11:\"trend_index\";s:2:\"27\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:151;a:14:{s:2:\"id\";s:4:\"4244\";s:5:\"title\";s:11:\"Services 26\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443253\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-26/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"400\";s:11:\"trend_index\";s:3:\"405\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:152;a:14:{s:2:\"id\";s:4:\"7734\";s:5:\"title\";s:8:\"header 5\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.4.jpg\";s:12:\"tmpl_created\";s:10:\"1524583436\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/header-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"50\";s:11:\"trend_index\";s:2:\"20\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:153;a:14:{s:2:\"id\";s:4:\"4252\";s:5:\"title\";s:10:\"Services 9\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443255\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/services-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"61\";s:11:\"trend_index\";s:2:\"70\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:154;a:14:{s:2:\"id\";s:4:\"7771\";s:5:\"title\";s:8:\"header 8\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.7.jpg\";s:12:\"tmpl_created\";s:10:\"1524583540\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/header-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"111\";s:11:\"trend_index\";s:2:\"68\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:155;a:14:{s:2:\"id\";s:4:\"4260\";s:5:\"title\";s:11:\"Services 25\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_black_3.png\";s:12:\"tmpl_created\";s:10:\"1520443257\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-25/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"201\";s:11:\"trend_index\";s:3:\"207\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:156;a:14:{s:2:\"id\";s:4:\"7787\";s:5:\"title\";s:8:\"header 9\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.8.jpg\";s:12:\"tmpl_created\";s:10:\"1524583598\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/header-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"127\";s:11:\"trend_index\";s:3:\"100\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:157;a:14:{s:2:\"id\";s:4:\"4268\";s:5:\"title\";s:10:\"Services 8\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_4.png\";s:12:\"tmpl_created\";s:10:\"1520443259\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/services-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"151\";s:11:\"trend_index\";s:3:\"178\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:158;a:14:{s:2:\"id\";s:4:\"7801\";s:5:\"title\";s:9:\"header 10\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.9.jpg\";s:12:\"tmpl_created\";s:10:\"1524583659\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/header-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"76\";s:11:\"trend_index\";s:2:\"66\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:159;a:14:{s:2:\"id\";s:4:\"4276\";s:5:\"title\";s:11:\"Services 24\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_black_4.png\";s:12:\"tmpl_created\";s:10:\"1520443261\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-24/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"339\";s:11:\"trend_index\";s:3:\"318\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:160;a:14:{s:2:\"id\";s:4:\"7754\";s:5:\"title\";s:8:\"header 7\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.6.jpg\";s:12:\"tmpl_created\";s:10:\"1524583712\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/header-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"42\";s:11:\"trend_index\";s:3:\"108\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:161;a:14:{s:2:\"id\";s:4:\"4284\";s:5:\"title\";s:10:\"Services 7\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_5.png\";s:12:\"tmpl_created\";s:10:\"1520443263\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/services-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"74\";s:11:\"trend_index\";s:2:\"52\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:162;a:14:{s:2:\"id\";s:4:\"7713\";s:5:\"title\";s:8:\"header 3\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.2.jpg\";s:12:\"tmpl_created\";s:10:\"1524584780\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/header-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"66\";s:11:\"trend_index\";s:2:\"49\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:163;a:14:{s:2:\"id\";s:4:\"4293\";s:5:\"title\";s:10:\"Services 6\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_6.png\";s:12:\"tmpl_created\";s:10:\"1520443265\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/services-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"290\";s:11:\"trend_index\";s:3:\"228\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:164;a:14:{s:2:\"id\";s:4:\"7744\";s:5:\"title\";s:8:\"header 6\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/03/header350.5.jpg\";s:12:\"tmpl_created\";s:10:\"1524584784\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/header-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"81\";s:11:\"trend_index\";s:2:\"62\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:165;a:14:{s:2:\"id\";s:4:\"4302\";s:5:\"title\";s:10:\"Services 5\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_7.png\";s:12:\"tmpl_created\";s:10:\"1520443266\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/services-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"80\";s:11:\"trend_index\";s:2:\"71\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:166;a:14:{s:2:\"id\";s:4:\"4313\";s:5:\"title\";s:11:\"Services 13\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_8.png\";s:12:\"tmpl_created\";s:10:\"1520443268\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-13/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"133\";s:11:\"trend_index\";s:3:\"132\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:167;a:14:{s:2:\"id\";s:4:\"8523\";s:5:\"title\";s:11:\"404 page 06\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2018/05/006.jpg\";s:12:\"tmpl_created\";s:10:\"1526415291\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/404-page-06/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"404 page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"349\";s:11:\"trend_index\";s:3:\"239\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:168;a:14:{s:2:\"id\";s:4:\"4324\";s:5:\"title\";s:11:\"Services 14\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_9.png\";s:12:\"tmpl_created\";s:10:\"1520443270\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-14/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"308\";s:11:\"trend_index\";s:3:\"278\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:169;a:14:{s:2:\"id\";s:4:\"8524\";s:5:\"title\";s:11:\"404 page 07\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2018/05/007.jpg\";s:12:\"tmpl_created\";s:10:\"1526415337\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/404-page-07/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"404 page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"321\";s:11:\"trend_index\";s:3:\"305\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:170;a:14:{s:2:\"id\";s:4:\"4332\";s:5:\"title\";s:11:\"Services 22\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_10.png\";s:12:\"tmpl_created\";s:10:\"1520443272\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-22/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"144\";s:11:\"trend_index\";s:3:\"134\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:171;a:14:{s:2:\"id\";s:4:\"8525\";s:5:\"title\";s:11:\"404 page 08\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2018/05/008.jpg\";s:12:\"tmpl_created\";s:10:\"1526415374\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/404-page-08/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"404 page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"409\";s:11:\"trend_index\";s:3:\"366\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:172;a:14:{s:2:\"id\";s:4:\"4341\";s:5:\"title\";s:11:\"Services 21\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_11.png\";s:12:\"tmpl_created\";s:10:\"1520443274\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-21/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"140\";s:11:\"trend_index\";s:3:\"165\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:173;a:14:{s:2:\"id\";s:4:\"8513\";s:5:\"title\";s:11:\"404 page 04\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2018/05/004.jpg\";s:12:\"tmpl_created\";s:10:\"1526415417\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/404-page-04/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"404 page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"383\";s:11:\"trend_index\";s:3:\"359\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:174;a:14:{s:2:\"id\";s:4:\"4349\";s:5:\"title\";s:11:\"Services 29\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_black_11.png\";s:12:\"tmpl_created\";s:10:\"1520443275\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-29/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"323\";s:11:\"trend_index\";s:3:\"323\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:175;a:14:{s:2:\"id\";s:4:\"8512\";s:5:\"title\";s:11:\"404 page 03\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2018/05/003.jpg\";s:12:\"tmpl_created\";s:10:\"1526415449\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/404-page-03/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"404 page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"415\";s:11:\"trend_index\";s:3:\"371\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:176;a:14:{s:2:\"id\";s:4:\"4357\";s:5:\"title\";s:11:\"Services 20\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_12.png\";s:12:\"tmpl_created\";s:10:\"1520443277\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-20/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"57\";s:11:\"trend_index\";s:2:\"50\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:177;a:14:{s:2:\"id\";s:4:\"8526\";s:5:\"title\";s:11:\"404 page 09\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2018/05/009.jpg\";s:12:\"tmpl_created\";s:10:\"1526415474\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/404-page-09/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"404 page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"422\";s:11:\"trend_index\";s:3:\"356\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:178;a:14:{s:2:\"id\";s:4:\"4368\";s:5:\"title\";s:11:\"Services 16\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_13.png\";s:12:\"tmpl_created\";s:10:\"1520443279\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-16/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"77\";s:11:\"trend_index\";s:2:\"55\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:179;a:14:{s:2:\"id\";s:4:\"8505\";s:5:\"title\";s:11:\"404 page 01\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2018/05/001.jpg\";s:12:\"tmpl_created\";s:10:\"1526415501\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/404-page-01/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"404 page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"434\";s:11:\"trend_index\";s:3:\"418\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:180;a:14:{s:2:\"id\";s:4:\"4376\";s:5:\"title\";s:11:\"Services 28\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_black_12.png\";s:12:\"tmpl_created\";s:10:\"1520443281\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-28/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"142\";s:11:\"trend_index\";s:3:\"166\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:181;a:14:{s:2:\"id\";s:4:\"8511\";s:5:\"title\";s:11:\"404 page 02\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2018/05/002.jpg\";s:12:\"tmpl_created\";s:10:\"1526415528\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/404-page-02/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"404 page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"364\";s:11:\"trend_index\";s:3:\"262\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:182;a:14:{s:2:\"id\";s:4:\"4391\";s:5:\"title\";s:11:\"Services 17\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_white_14.png\";s:12:\"tmpl_created\";s:10:\"1520443283\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-17/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"145\";s:11:\"trend_index\";s:3:\"139\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:183;a:14:{s:2:\"id\";s:4:\"8514\";s:5:\"title\";s:11:\"404 Page 05\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2018/05/005.jpg\";s:12:\"tmpl_created\";s:10:\"1526415558\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/404-page-05/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"404 page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"395\";s:11:\"trend_index\";s:3:\"303\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:184;a:14:{s:2:\"id\";s:4:\"4400\";s:5:\"title\";s:11:\"Services 27\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/02/Service_black_13.png\";s:12:\"tmpl_created\";s:10:\"1520443285\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/services-27/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:8:\"services\";s:4:\"tags\";s:12:\"[\"services\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"258\";s:11:\"trend_index\";s:3:\"240\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:185;a:14:{s:2:\"id\";s:4:\"8676\";s:5:\"title\";s:13:\"single page 1\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/05/S_P350.6.jpg\";s:12:\"tmpl_created\";s:10:\"1527682423\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-page-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"357\";s:11:\"trend_index\";s:3:\"293\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:186;a:14:{s:2:\"id\";s:4:\"4411\";s:5:\"title\";s:9:\"Contact 3\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/02/map_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443287\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/contact-3-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"94\";s:11:\"trend_index\";s:2:\"72\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:187;a:14:{s:2:\"id\";s:4:\"8678\";s:5:\"title\";s:13:\"single page 2\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/05/S_P350.2.jpg\";s:12:\"tmpl_created\";s:10:\"1527682780\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-page-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"191\";s:11:\"trend_index\";s:3:\"191\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:188;a:14:{s:2:\"id\";s:4:\"4420\";s:5:\"title\";s:9:\"Contact 1\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/02/map_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443289\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/contact-1-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"167\";s:11:\"trend_index\";s:3:\"164\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:189;a:14:{s:2:\"id\";s:4:\"8679\";s:5:\"title\";s:13:\"single page 3\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/05/S_P350.3.jpg\";s:12:\"tmpl_created\";s:10:\"1527682847\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-page-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"272\";s:11:\"trend_index\";s:3:\"161\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:190;a:14:{s:2:\"id\";s:4:\"4428\";s:5:\"title\";s:9:\"Contact 4\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/02/map_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443291\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/contact-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"96\";s:11:\"trend_index\";s:3:\"148\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:191;a:14:{s:2:\"id\";s:4:\"8680\";s:5:\"title\";s:13:\"single page 4\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/05/S_P350.1.jpg\";s:12:\"tmpl_created\";s:10:\"1527682896\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-page-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"403\";s:11:\"trend_index\";s:3:\"335\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:192;a:14:{s:2:\"id\";s:4:\"4436\";s:5:\"title\";s:11:\"Contact  16\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/02/map_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443293\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/contact-16/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"160\";s:11:\"trend_index\";s:2:\"98\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:193;a:14:{s:2:\"id\";s:4:\"8681\";s:5:\"title\";s:13:\"single page 5\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/05/S_P350.5.jpg\";s:12:\"tmpl_created\";s:10:\"1527682969\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-page-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"340\";s:11:\"trend_index\";s:3:\"265\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:194;a:14:{s:2:\"id\";s:4:\"4444\";s:5:\"title\";s:9:\"Contact 5\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/contact_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443295\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/contact-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"105\";s:11:\"trend_index\";s:3:\"107\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:195;a:14:{s:2:\"id\";s:4:\"8682\";s:5:\"title\";s:13:\"single page 6\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/05/S_P350.4.jpg\";s:12:\"tmpl_created\";s:10:\"1527683026\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-page-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"405\";s:11:\"trend_index\";s:3:\"387\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:196;a:14:{s:2:\"id\";s:4:\"4452\";s:5:\"title\";s:9:\"Contact 6\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/contact_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443296\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/contact-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"154\";s:11:\"trend_index\";s:3:\"129\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:197;a:14:{s:2:\"id\";s:4:\"8703\";s:5:\"title\";s:13:\"single page 7\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2018/05/S_P350.7.jpg\";s:12:\"tmpl_created\";s:10:\"1527683072\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-page-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"391\";s:11:\"trend_index\";s:3:\"423\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:198;a:14:{s:2:\"id\";s:4:\"4460\";s:5:\"title\";s:9:\"Contact 9\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/contact_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443298\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/contact-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"123\";s:11:\"trend_index\";s:3:\"137\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:199;a:14:{s:2:\"id\";s:4:\"8961\";s:5:\"title\";s:9:\"archive 1\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/06/Archive_350.1.jpg\";s:12:\"tmpl_created\";s:10:\"1528639909\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/archive-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"100\";s:11:\"trend_index\";s:2:\"39\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:200;a:14:{s:2:\"id\";s:4:\"4468\";s:5:\"title\";s:9:\"Contact 7\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/contact_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443301\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/contact-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:18:\"[\"contact\",\"form\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"146\";s:11:\"trend_index\";s:3:\"121\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:201;a:14:{s:2:\"id\";s:4:\"8969\";s:5:\"title\";s:9:\"archive 2\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/06/Archive_350.2.jpg\";s:12:\"tmpl_created\";s:10:\"1528700014\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/archive-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"233\";s:11:\"trend_index\";s:3:\"158\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:202;a:14:{s:2:\"id\";s:4:\"4476\";s:5:\"title\";s:10:\"Contact 15\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/contact_white_4.png\";s:12:\"tmpl_created\";s:10:\"1520443303\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/contact-15/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:18:\"[\"contact\",\"form\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"254\";s:11:\"trend_index\";s:3:\"224\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:203;a:14:{s:2:\"id\";s:4:\"8973\";s:5:\"title\";s:9:\"archive 3\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/06/Archive_350.3.jpg\";s:12:\"tmpl_created\";s:10:\"1528700205\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/archive-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"183\";s:11:\"trend_index\";s:3:\"151\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:204;a:14:{s:2:\"id\";s:4:\"4484\";s:5:\"title\";s:9:\"Contact 8\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/02/contact_black_3.png\";s:12:\"tmpl_created\";s:10:\"1520443305\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/contact-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:18:\"[\"contact\",\"form\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"335\";s:11:\"trend_index\";s:3:\"304\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:205;a:14:{s:2:\"id\";s:4:\"8977\";s:5:\"title\";s:9:\"archive 4\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/06/Archive_350.4.jpg\";s:12:\"tmpl_created\";s:10:\"1528700326\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/archive-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"367\";s:11:\"trend_index\";s:3:\"321\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:206;a:14:{s:2:\"id\";s:4:\"4492\";s:5:\"title\";s:9:\"Contact 5\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/02/map_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443307\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/contact-5-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:11:\"[\"contact\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"67\";s:11:\"trend_index\";s:2:\"44\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:207;a:14:{s:2:\"id\";s:4:\"8981\";s:5:\"title\";s:9:\"archive 5\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/06/Archive_350.5.jpg\";s:12:\"tmpl_created\";s:10:\"1528700484\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/archive-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"344\";s:11:\"trend_index\";s:3:\"301\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:208;a:14:{s:2:\"id\";s:4:\"4500\";s:5:\"title\";s:9:\"Pricing 7\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443308\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/pricing-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"401\";s:11:\"trend_index\";s:3:\"320\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:209;a:14:{s:2:\"id\";s:4:\"8985\";s:5:\"title\";s:9:\"archive 6\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/06/Archive_350.6.jpg\";s:12:\"tmpl_created\";s:10:\"1528700612\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/archive-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"253\";s:11:\"trend_index\";s:3:\"193\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:210;a:14:{s:2:\"id\";s:4:\"4509\";s:5:\"title\";s:9:\"Pricing 1\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443310\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/pricing-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"438\";s:11:\"trend_index\";s:3:\"427\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:211;a:14:{s:2:\"id\";s:4:\"8989\";s:5:\"title\";s:9:\"archive 7\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/06/Archive_350.7.jpg\";s:12:\"tmpl_created\";s:10:\"1528701063\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/archive-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"232\";s:11:\"trend_index\";s:3:\"195\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:212;a:14:{s:2:\"id\";s:4:\"4521\";s:5:\"title\";s:9:\"Pricing 8\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443312\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/pricing-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"336\";s:11:\"trend_index\";s:3:\"280\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:213;a:14:{s:2:\"id\";s:4:\"8996\";s:5:\"title\";s:9:\"archive 8\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/06/Archive_350.8.jpg\";s:12:\"tmpl_created\";s:10:\"1528701290\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/archive-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"214\";s:11:\"trend_index\";s:3:\"177\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:214;a:14:{s:2:\"id\";s:4:\"4529\";s:5:\"title\";s:9:\"Pricing 2\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443314\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/pricing-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"430\";s:11:\"trend_index\";s:3:\"435\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:215;a:14:{s:2:\"id\";s:4:\"9001\";s:5:\"title\";s:9:\"archive 9\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/06/Archive_350.9.jpg\";s:12:\"tmpl_created\";s:10:\"1528701433\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/archive-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"282\";s:11:\"trend_index\";s:3:\"273\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:216;a:14:{s:2:\"id\";s:4:\"4537\";s:5:\"title\";s:9:\"Pricing 9\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443315\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/pricing-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"426\";s:11:\"trend_index\";s:3:\"420\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:217;a:14:{s:2:\"id\";s:4:\"9119\";s:5:\"title\";s:10:\"footer 015\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2018/07/Footer_GetStarted_350.png\";s:12:\"tmpl_created\";s:10:\"1532428138\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:101:\"https://library.elementor.com/blocks/demo/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"footer\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"317\";s:11:\"trend_index\";s:3:\"218\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:218;a:14:{s:2:\"id\";s:4:\"4545\";s:5:\"title\";s:9:\"Pricing 3\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_black_3.png\";s:12:\"tmpl_created\";s:10:\"1520443317\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/pricing-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"436\";s:11:\"trend_index\";s:3:\"411\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:219;a:14:{s:2:\"id\";s:4:\"9127\";s:5:\"title\";s:9:\"header 13\";s:9:\"thumbnail\";s:86:\"https://library.elementor.com/wp-content/uploads/2018/07/Header_get_started_1200V3.png\";s:12:\"tmpl_created\";s:10:\"1532428699\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/header-13/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:6:\"header\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"48\";s:11:\"trend_index\";s:2:\"64\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:220;a:14:{s:2:\"id\";s:4:\"4553\";s:5:\"title\";s:10:\"Pricing 10\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_white_4.png\";s:12:\"tmpl_created\";s:10:\"1520443319\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/pricing-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"410\";s:11:\"trend_index\";s:3:\"386\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:221;a:14:{s:2:\"id\";s:4:\"4562\";s:5:\"title\";s:9:\"Pricing 4\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_black_4.png\";s:12:\"tmpl_created\";s:10:\"1520443322\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/pricing-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"435\";s:11:\"trend_index\";s:3:\"438\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:222;a:14:{s:2:\"id\";s:4:\"4572\";s:5:\"title\";s:10:\"Pricing 11\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_white_5.png\";s:12:\"tmpl_created\";s:10:\"1520443324\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/pricing-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"325\";s:11:\"trend_index\";s:3:\"225\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:223;a:14:{s:2:\"id\";s:4:\"9174\";s:5:\"title\";s:17:\"single product 01\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/07/single_product01_350.png\";s:12:\"tmpl_created\";s:10:\"1532950125\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/blocks/single-product-01/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"single product\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"125\";s:11:\"trend_index\";s:2:\"57\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:224;a:14:{s:2:\"id\";s:4:\"4580\";s:5:\"title\";s:10:\"Pricing 12\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_white_6.png\";s:12:\"tmpl_created\";s:10:\"1520443326\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/pricing-12/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"421\";s:11:\"trend_index\";s:3:\"351\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:225;a:14:{s:2:\"id\";s:4:\"9178\";s:5:\"title\";s:17:\"single product 02\";s:9:\"thumbnail\";s:84:\"https://library.elementor.com/wp-content/uploads/2018/07/single_product02_350new.png\";s:12:\"tmpl_created\";s:10:\"1532951997\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/blocks/single-product-02/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"single product\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"173\";s:11:\"trend_index\";s:2:\"91\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:226;a:14:{s:2:\"id\";s:4:\"4589\";s:5:\"title\";s:9:\"Pricing 5\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_black_6.png\";s:12:\"tmpl_created\";s:10:\"1520443327\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/pricing-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"437\";s:11:\"trend_index\";s:3:\"433\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:227;a:14:{s:2:\"id\";s:4:\"9180\";s:5:\"title\";s:17:\"single product 03\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2018/07/single_product03_350.png\";s:12:\"tmpl_created\";s:10:\"1532952302\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/blocks/single-product-03/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"single product\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"210\";s:11:\"trend_index\";s:3:\"144\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:228;a:14:{s:2:\"id\";s:4:\"4597\";s:5:\"title\";s:10:\"Pricing 13\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_white_7.png\";s:12:\"tmpl_created\";s:10:\"1520443330\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/pricing-13/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"427\";s:11:\"trend_index\";s:3:\"402\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:229;a:14:{s:2:\"id\";s:4:\"9182\";s:5:\"title\";s:17:\"single product 04\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2018/07/single_product040_350.png\";s:12:\"tmpl_created\";s:10:\"1532952606\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/blocks/single-product-04/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"single product\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"244\";s:11:\"trend_index\";s:3:\"122\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:230;a:14:{s:2:\"id\";s:4:\"4605\";s:5:\"title\";s:9:\"Pricing 6\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_black_7.png\";s:12:\"tmpl_created\";s:10:\"1520443332\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/pricing-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"439\";s:11:\"trend_index\";s:3:\"416\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:231;a:14:{s:2:\"id\";s:4:\"9239\";s:5:\"title\";s:17:\"product archive 1\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2018/07/product-archive-350-1.png\";s:12:\"tmpl_created\";s:10:\"1532953482\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/blocks/product-archive-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:15:\"product archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"179\";s:11:\"trend_index\";s:2:\"76\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:232;a:14:{s:2:\"id\";s:4:\"4613\";s:5:\"title\";s:10:\"Pricing 14\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/02/price_white_8.png\";s:12:\"tmpl_created\";s:10:\"1520443334\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/pricing-14/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"pricing\";s:4:\"tags\";s:11:\"[\"pricing\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"418\";s:11:\"trend_index\";s:3:\"382\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:233;a:14:{s:2:\"id\";s:4:\"9247\";s:5:\"title\";s:17:\"product archive 2\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2018/07/product-archive-350-2.png\";s:12:\"tmpl_created\";s:10:\"1532953793\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/blocks/product-archive-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:15:\"product archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"194\";s:11:\"trend_index\";s:2:\"92\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:234;a:14:{s:2:\"id\";s:4:\"9254\";s:5:\"title\";s:17:\"product archive 3\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2018/07/product-archive-350-3.png\";s:12:\"tmpl_created\";s:10:\"1532954032\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/blocks/product-archive-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:15:\"product archive\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"203\";s:11:\"trend_index\";s:3:\"101\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:235;a:14:{s:2:\"id\";s:4:\"9301\";s:5:\"title\";s:13:\"Single Post 4\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2018/09/3003.jpg\";s:12:\"tmpl_created\";s:10:\"1537440661\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-post-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single post\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"293\";s:11:\"trend_index\";s:3:\"112\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:236;a:14:{s:2:\"id\";s:4:\"9296\";s:5:\"title\";s:13:\"Single Post 3\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2018/09/3002.jpg\";s:12:\"tmpl_created\";s:10:\"1537440673\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-post-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single post\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"318\";s:11:\"trend_index\";s:2:\"90\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:237;a:14:{s:2:\"id\";s:4:\"9313\";s:5:\"title\";s:13:\"Single Post 5\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2018/09/3001.jpg\";s:12:\"tmpl_created\";s:10:\"1537440798\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-post-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single post\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"269\";s:11:\"trend_index\";s:3:\"131\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:238;a:14:{s:2:\"id\";s:4:\"9343\";s:5:\"title\";s:13:\"Single Post 6\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2018/09/3004.jpg\";s:12:\"tmpl_created\";s:10:\"1537443531\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-post-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single post\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"303\";s:11:\"trend_index\";s:3:\"167\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:239;a:14:{s:2:\"id\";s:4:\"9349\";s:5:\"title\";s:13:\"Single Post 7\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2018/09/3005.jpg\";s:12:\"tmpl_created\";s:10:\"1537443903\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/single-post-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:11:\"single post\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"217\";s:11:\"trend_index\";s:3:\"104\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:240;a:14:{s:2:\"id\";s:4:\"4690\";s:5:\"title\";s:6:\"Team 7\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443348\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/team-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"240\";s:11:\"trend_index\";s:3:\"215\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:241;a:14:{s:2:\"id\";s:4:\"4698\";s:5:\"title\";s:7:\"Team 15\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443350\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-15/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"378\";s:11:\"trend_index\";s:3:\"337\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:242;a:14:{s:2:\"id\";s:4:\"4706\";s:5:\"title\";s:6:\"Team 5\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443352\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/team-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"138\";s:11:\"trend_index\";s:3:\"136\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:243;a:14:{s:2:\"id\";s:4:\"4718\";s:5:\"title\";s:6:\"Team 4\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443354\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/team-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"172\";s:11:\"trend_index\";s:3:\"173\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:244;a:14:{s:2:\"id\";s:4:\"4727\";s:5:\"title\";s:7:\"Team 13\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443356\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-13/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"358\";s:11:\"trend_index\";s:3:\"319\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:245;a:14:{s:2:\"id\";s:4:\"4736\";s:5:\"title\";s:7:\"Team 20\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_white_4.png\";s:12:\"tmpl_created\";s:10:\"1520443358\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-20/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"141\";s:11:\"trend_index\";s:3:\"157\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:246;a:14:{s:2:\"id\";s:4:\"4746\";s:5:\"title\";s:7:\"Team 23\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_black_4.png\";s:12:\"tmpl_created\";s:10:\"1520443360\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-23/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"242\";s:11:\"trend_index\";s:3:\"201\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:247;a:14:{s:2:\"id\";s:4:\"4759\";s:5:\"title\";s:7:\"Team 22\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_white_5.png\";s:12:\"tmpl_created\";s:10:\"1520443362\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-22/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"278\";s:11:\"trend_index\";s:3:\"202\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:248;a:14:{s:2:\"id\";s:4:\"4770\";s:5:\"title\";s:7:\"Team 12\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_white_6.png\";s:12:\"tmpl_created\";s:10:\"1520443364\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/team-12-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"354\";s:11:\"trend_index\";s:3:\"403\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:249;a:14:{s:2:\"id\";s:4:\"4781\";s:5:\"title\";s:7:\"Team 16\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_white_7.png\";s:12:\"tmpl_created\";s:10:\"1520443365\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-16/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"209\";s:11:\"trend_index\";s:3:\"189\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:250;a:14:{s:2:\"id\";s:4:\"4793\";s:5:\"title\";s:7:\"Team 18\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_white_8.png\";s:12:\"tmpl_created\";s:10:\"1520443367\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-18/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"186\";s:11:\"trend_index\";s:3:\"194\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:251;a:14:{s:2:\"id\";s:4:\"4801\";s:5:\"title\";s:7:\"Team 11\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_black_8.png\";s:12:\"tmpl_created\";s:10:\"1520443369\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"330\";s:11:\"trend_index\";s:3:\"345\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:252;a:14:{s:2:\"id\";s:4:\"4809\";s:5:\"title\";s:7:\"Team 19\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_white_9.png\";s:12:\"tmpl_created\";s:10:\"1520443371\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-19/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"262\";s:11:\"trend_index\";s:3:\"256\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:253;a:14:{s:2:\"id\";s:4:\"4818\";s:5:\"title\";s:7:\"Team 21\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/team_black_9.png\";s:12:\"tmpl_created\";s:10:\"1520443373\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/team-21/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"team\";s:4:\"tags\";s:8:\"[\"team\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"392\";s:11:\"trend_index\";s:3:\"379\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:254;a:14:{s:2:\"id\";s:4:\"5045\";s:5:\"title\";s:11:\"Portfolio 3\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/portfolio_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443423\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/portfolio-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"portfolio\";s:4:\"tags\";s:13:\"[\"portfolio\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"425\";s:11:\"trend_index\";s:3:\"426\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:255;a:14:{s:2:\"id\";s:4:\"5157\";s:5:\"title\";s:11:\"Subscribe 1\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/subscribe_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443448\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/subscribe-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"subscribe\";s:4:\"tags\";s:20:\"[\"form\",\"subscribe\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"361\";s:11:\"trend_index\";s:3:\"343\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:256;a:14:{s:2:\"id\";s:4:\"5165\";s:5:\"title\";s:11:\"Subscribe 3\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/subscribe_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443450\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/subscribe-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"subscribe\";s:4:\"tags\";s:20:\"[\"form\",\"subscribe\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"419\";s:11:\"trend_index\";s:3:\"370\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:257;a:14:{s:2:\"id\";s:4:\"5173\";s:5:\"title\";s:11:\"Subscribe 5\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/subscribe_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443452\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/subscribe-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"subscribe\";s:4:\"tags\";s:20:\"[\"form\",\"subscribe\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"291\";s:11:\"trend_index\";s:3:\"232\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:258;a:14:{s:2:\"id\";s:4:\"5181\";s:5:\"title\";s:11:\"Subscribe 2\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/subscribe_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443454\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/blocks/subscribe-2-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"subscribe\";s:4:\"tags\";s:20:\"[\"form\",\"subscribe\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"393\";s:11:\"trend_index\";s:3:\"396\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:259;a:14:{s:2:\"id\";s:4:\"5189\";s:5:\"title\";s:6:\"CTA 29\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443456\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-29/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:8:\"[\"form\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"380\";s:11:\"trend_index\";s:3:\"372\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:260;a:14:{s:2:\"id\";s:4:\"5198\";s:5:\"title\";s:6:\"CTA 30\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443458\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-30/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:8:\"[\"form\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"413\";s:11:\"trend_index\";s:3:\"439\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:261;a:14:{s:2:\"id\";s:4:\"5206\";s:5:\"title\";s:6:\"CTA 31\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443459\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-31/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:8:\"[\"form\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"423\";s:11:\"trend_index\";s:3:\"424\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:262;a:14:{s:2:\"id\";s:4:\"5214\";s:5:\"title\";s:10:\"Contact 16\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443462\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/blocks/contact-16-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:18:\"[\"contact\",\"form\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"199\";s:11:\"trend_index\";s:3:\"154\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:263;a:14:{s:2:\"id\";s:4:\"5222\";s:5:\"title\";s:11:\"Subscribe 4\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2018/03/subscribe_black_3.png\";s:12:\"tmpl_created\";s:10:\"1520443464\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/subscribe-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:9:\"subscribe\";s:4:\"tags\";s:20:\"[\"form\",\"subscribe\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"385\";s:11:\"trend_index\";s:3:\"400\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:264;a:14:{s:2:\"id\";s:4:\"5230\";s:5:\"title\";s:10:\"Contact 17\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443466\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/contact-17/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:18:\"[\"contact\",\"form\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"329\";s:11:\"trend_index\";s:3:\"277\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:265;a:14:{s:2:\"id\";s:4:\"5238\";s:5:\"title\";s:7:\"Hero 12\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_white_4.png\";s:12:\"tmpl_created\";s:10:\"1520443468\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/hero-12/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:4:\"hero\";s:4:\"tags\";s:8:\"[\"hero\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"428\";s:11:\"trend_index\";s:3:\"428\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:266;a:14:{s:2:\"id\";s:4:\"5249\";s:5:\"title\";s:6:\"CTA 32\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_black_4.png\";s:12:\"tmpl_created\";s:10:\"1520443470\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/blocks/cta-32/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:14:\"call to action\";s:4:\"tags\";s:8:\"[\"form\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"407\";s:11:\"trend_index\";s:3:\"410\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:267;a:14:{s:2:\"id\";s:4:\"5257\";s:5:\"title\";s:10:\"Contact 18\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_white_5.png\";s:12:\"tmpl_created\";s:10:\"1520443472\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/contact-18/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"contact\";s:4:\"tags\";s:8:\"[\"form\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"379\";s:11:\"trend_index\";s:3:\"333\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:268;a:14:{s:2:\"id\";s:4:\"5266\";s:5:\"title\";s:9:\"Clients 4\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/clients_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443474\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/clients-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"124\";s:11:\"trend_index\";s:3:\"135\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:269;a:14:{s:2:\"id\";s:4:\"5275\";s:5:\"title\";s:9:\"Clients 5\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/clients_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443476\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/clients-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"337\";s:11:\"trend_index\";s:3:\"346\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:270;a:14:{s:2:\"id\";s:4:\"5283\";s:5:\"title\";s:9:\"Clients 1\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/clients_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443478\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/clients-1-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"307\";s:11:\"trend_index\";s:3:\"288\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:271;a:14:{s:2:\"id\";s:4:\"5290\";s:5:\"title\";s:9:\"Clients 3\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/clients_black_2.png\";s:12:\"tmpl_created\";s:10:\"1520443480\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/clients-3-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"416\";s:11:\"trend_index\";s:3:\"388\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:272;a:14:{s:2:\"id\";s:4:\"5298\";s:5:\"title\";s:10:\"Clients 15\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/clients_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443482\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/clients-15/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"386\";s:11:\"trend_index\";s:3:\"373\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:273;a:14:{s:2:\"id\";s:4:\"5306\";s:5:\"title\";s:10:\"Clients 10\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/clients_black_3.png\";s:12:\"tmpl_created\";s:10:\"1520443484\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/clients-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"432\";s:11:\"trend_index\";s:3:\"413\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:274;a:14:{s:2:\"id\";s:4:\"5315\";s:5:\"title\";s:10:\"Clients 12\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2018/03/form_white_4-1.png\";s:12:\"tmpl_created\";s:10:\"1520443486\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/clients-12/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"398\";s:11:\"trend_index\";s:3:\"393\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:275;a:14:{s:2:\"id\";s:4:\"5324\";s:5:\"title\";s:9:\"Clients 8\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2018/03/form_white_5-1.png\";s:12:\"tmpl_created\";s:10:\"1520443488\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/clients-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"408\";s:11:\"trend_index\";s:3:\"376\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:276;a:14:{s:2:\"id\";s:4:\"5333\";s:5:\"title\";s:10:\"Clients 13\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_white_6.png\";s:12:\"tmpl_created\";s:10:\"1520443489\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/clients-13/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"234\";s:11:\"trend_index\";s:3:\"198\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:277;a:14:{s:2:\"id\";s:4:\"5341\";s:5:\"title\";s:10:\"Clients 11\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/clients_black_4.png\";s:12:\"tmpl_created\";s:10:\"1520443491\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/clients-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"424\";s:11:\"trend_index\";s:3:\"429\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:278;a:14:{s:2:\"id\";s:4:\"5349\";s:5:\"title\";s:9:\"Clients 7\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_white_7.png\";s:12:\"tmpl_created\";s:10:\"1520443493\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/clients-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"224\";s:11:\"trend_index\";s:3:\"261\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:279;a:14:{s:2:\"id\";s:4:\"5357\";s:5:\"title\";s:9:\"Clients 2\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/clients_black_7.png\";s:12:\"tmpl_created\";s:10:\"1520443495\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/blocks/clients-2-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"310\";s:11:\"trend_index\";s:3:\"315\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:280;a:14:{s:2:\"id\";s:4:\"5368\";s:5:\"title\";s:9:\"Clients 9\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_white_8.png\";s:12:\"tmpl_created\";s:10:\"1520443497\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/clients-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"221\";s:11:\"trend_index\";s:3:\"216\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:281;a:14:{s:2:\"id\";s:4:\"5381\";s:5:\"title\";s:10:\"Clients 16\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_white_9.png\";s:12:\"tmpl_created\";s:10:\"1520443499\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/clients-16/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"177\";s:11:\"trend_index\";s:3:\"162\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:282;a:14:{s:2:\"id\";s:4:\"5389\";s:5:\"title\";s:10:\"Clients 14\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/03/form_black_9.png\";s:12:\"tmpl_created\";s:10:\"1520443501\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/blocks/clients-14/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:7:\"clients\";s:4:\"tags\";s:11:\"[\"clients\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"372\";s:11:\"trend_index\";s:3:\"362\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:283;a:14:{s:2:\"id\";s:4:\"5397\";s:5:\"title\";s:8:\"About 11\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_1.png\";s:12:\"tmpl_created\";s:10:\"1520443503\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-11/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"139\";s:11:\"trend_index\";s:3:\"213\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:284;a:14:{s:2:\"id\";s:4:\"5405\";s:5:\"title\";s:8:\"About 12\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_black_1.png\";s:12:\"tmpl_created\";s:10:\"1520443505\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-12/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"207\";s:11:\"trend_index\";s:3:\"299\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:285;a:14:{s:2:\"id\";s:4:\"5413\";s:5:\"title\";s:8:\"About 21\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_2.png\";s:12:\"tmpl_created\";s:10:\"1520443507\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-21/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"135\";s:11:\"trend_index\";s:3:\"180\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:286;a:14:{s:2:\"id\";s:4:\"5421\";s:5:\"title\";s:8:\"About 13\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_3.png\";s:12:\"tmpl_created\";s:10:\"1520443509\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-13/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"246\";s:11:\"trend_index\";s:3:\"221\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:287;a:14:{s:2:\"id\";s:4:\"5429\";s:5:\"title\";s:8:\"About 16\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_4.png\";s:12:\"tmpl_created\";s:10:\"1520443510\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-16/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"104\";s:11:\"trend_index\";s:2:\"53\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:288;a:14:{s:2:\"id\";s:4:\"5438\";s:5:\"title\";s:7:\"About 1\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_black_4.png\";s:12:\"tmpl_created\";s:10:\"1520443512\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/about-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"205\";s:11:\"trend_index\";s:3:\"231\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:289;a:14:{s:2:\"id\";s:4:\"5447\";s:5:\"title\";s:7:\"About 3\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_5.png\";s:12:\"tmpl_created\";s:10:\"1520443514\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/about-3-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"73\";s:11:\"trend_index\";s:2:\"65\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:290;a:14:{s:2:\"id\";s:4:\"5455\";s:5:\"title\";s:8:\"About 20\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_6.png\";s:12:\"tmpl_created\";s:10:\"1520443516\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-20/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"126\";s:11:\"trend_index\";s:3:\"196\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:291;a:14:{s:2:\"id\";s:4:\"5464\";s:5:\"title\";s:8:\"About 17\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_black_6.png\";s:12:\"tmpl_created\";s:10:\"1520443518\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-17/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"219\";s:11:\"trend_index\";s:3:\"287\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:292;a:14:{s:2:\"id\";s:4:\"5472\";s:5:\"title\";s:7:\"About 2\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_7.png\";s:12:\"tmpl_created\";s:10:\"1520443520\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/about-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"184\";s:11:\"trend_index\";s:3:\"209\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:293;a:14:{s:2:\"id\";s:4:\"5480\";s:5:\"title\";s:7:\"About 4\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/about_black_7-1.png\";s:12:\"tmpl_created\";s:10:\"1520443522\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blocks/about-4-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"377\";s:11:\"trend_index\";s:3:\"399\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:294;a:14:{s:2:\"id\";s:4:\"5488\";s:5:\"title\";s:7:\"About 7\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_8.png\";s:12:\"tmpl_created\";s:10:\"1520443524\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/about-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"300\";s:11:\"trend_index\";s:3:\"234\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:295;a:14:{s:2:\"id\";s:4:\"5496\";s:5:\"title\";s:7:\"About 9\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/03/about_black_8-1.png\";s:12:\"tmpl_created\";s:10:\"1520443526\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/blocks/about-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"412\";s:11:\"trend_index\";s:3:\"425\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:296;a:14:{s:2:\"id\";s:4:\"5504\";s:5:\"title\";s:8:\"About 18\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_white_9.png\";s:12:\"tmpl_created\";s:10:\"1520443528\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-18/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:2:\"87\";s:11:\"trend_index\";s:2:\"88\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:297;a:14:{s:2:\"id\";s:4:\"5515\";s:5:\"title\";s:8:\"About 19\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2018/03/about_black_9.png\";s:12:\"tmpl_created\";s:10:\"1520443530\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/blocks/about-19/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:9:\"[\"About\"]\";s:10:\"menu_order\";s:1:\"0\";s:16:\"popularity_index\";s:3:\"251\";s:11:\"trend_index\";s:3:\"251\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:298;a:14:{s:2:\"id\";s:4:\"9139\";s:5:\"title\";s:25:\"Homepage &#8211; Business\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/07/Get_Started_250.png\";s:12:\"tmpl_created\";s:10:\"1532949924\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/homepage-business/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:167:\"[\"Agency\",\"bootstrap\",\"business\",\"corporate\",\"Landing Page\",\"marketing campaign\",\"marketing landing page\",\"product launch\",\"software\",\"Startup\",\"startup landing page\"]\";s:10:\"menu_order\";s:2:\"14\";s:16:\"popularity_index\";s:1:\"9\";s:11:\"trend_index\";s:1:\"2\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:299;a:14:{s:2:\"id\";s:3:\"147\";s:5:\"title\";s:20:\"Homepage &#8211; App\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0004.png\";s:12:\"tmpl_created\";s:10:\"1470829868\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/homepage-app/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:18:\"[\"App\",\"Homepage\"]\";s:10:\"menu_order\";s:2:\"15\";s:16:\"popularity_index\";s:1:\"1\";s:11:\"trend_index\";s:1:\"1\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:300;a:14:{s:2:\"id\";s:4:\"2402\";s:5:\"title\";s:32:\"Homepage &#8211; Interior Design\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2017/09/Interior.png\";s:12:\"tmpl_created\";s:10:\"1506441447\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/homepage-interior-design/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:193:\"[\"Architecture\",\"building\",\"business\",\"Creative\",\"exterior design\",\"furniture design\",\"Gallery\",\"garden design\",\"house\",\"interior design\",\"landscape design\",\"multipurpose\",\"portfolio\",\"studio\"]\";s:10:\"menu_order\";s:2:\"16\";s:16:\"popularity_index\";s:2:\"46\";s:11:\"trend_index\";s:2:\"48\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:301;a:14:{s:2:\"id\";s:3:\"777\";s:5:\"title\";s:28:\"Homepage &#8211; Coffee Shop\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/01/rest-home.jpg\";s:12:\"tmpl_created\";s:10:\"1485273092\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/homepage-coffee-shop/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:41:\"[\"Coffee\",\"Homepage\",\"Restaurant\",\"Shop\"]\";s:10:\"menu_order\";s:2:\"17\";s:16:\"popularity_index\";s:2:\"65\";s:11:\"trend_index\";s:2:\"78\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:302;a:14:{s:2:\"id\";s:4:\"2404\";s:5:\"title\";s:24:\"Homepage &#8211; Product\";s:9:\"thumbnail\";s:68:\"https://library.elementor.com/wp-content/uploads/2017/09/product.png\";s:12:\"tmpl_created\";s:10:\"1506441452\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/homepage-product/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:103:\"[\"business\",\"colorful\",\"ecommerce\",\"flat\",\"mobile\",\"modern\",\"responsive\",\"retina\",\"Shop\",\"woocommerce\"]\";s:10:\"menu_order\";s:2:\"18\";s:16:\"popularity_index\";s:2:\"69\";s:11:\"trend_index\";s:2:\"77\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:303;a:14:{s:2:\"id\";s:3:\"492\";s:5:\"title\";s:25:\"Homepage &#8211; Law firm\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/10/0024.png\";s:12:\"tmpl_created\";s:10:\"1477388365\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/homepage-law-firm/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:25:\"[\"Firm\",\"Homepage\",\"Law\"]\";s:10:\"menu_order\";s:2:\"19\";s:16:\"popularity_index\";s:1:\"6\";s:11:\"trend_index\";s:1:\"8\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:304;a:14:{s:2:\"id\";s:3:\"225\";s:5:\"title\";s:27:\"Homepage &#8211; Restaurant\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0016.png\";s:12:\"tmpl_created\";s:10:\"1470829872\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/homepage-restaurant/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:32:\"[\"Food\",\"Homepage\",\"Restaurant\"]\";s:10:\"menu_order\";s:2:\"20\";s:16:\"popularity_index\";s:1:\"2\";s:11:\"trend_index\";s:1:\"3\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:305;a:14:{s:2:\"id\";s:4:\"3451\";s:5:\"title\";s:39:\"Homepage &#8211; Goodness meal services\";s:9:\"thumbnail\";s:84:\"https://library.elementor.com/wp-content/uploads/2017/11/goodness-featured-image.png\";s:12:\"tmpl_created\";s:10:\"1512054116\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:121:\"https://library.elementor.com/homepage-goodness-meal-services/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"21\";s:16:\"popularity_index\";s:3:\"116\";s:11:\"trend_index\";s:3:\"149\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:306;a:14:{s:2:\"id\";s:4:\"2152\";s:5:\"title\";s:26:\"Homepage &#8211; Cake Shop\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/07/cake-home.png\";s:12:\"tmpl_created\";s:10:\"1499774132\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/homepage-cake-shop/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:39:\"[\"Cake\",\"Homepage\",\"Restaurant\",\"Shop\"]\";s:10:\"menu_order\";s:2:\"22\";s:16:\"popularity_index\";s:3:\"187\";s:11:\"trend_index\";s:3:\"236\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:307;a:14:{s:2:\"id\";s:4:\"1068\";s:5:\"title\";s:27:\"Homepage &#8211; Copywriter\";s:9:\"thumbnail\";s:71:\"https://library.elementor.com/wp-content/uploads/2017/03/copywriter.png\";s:12:\"tmpl_created\";s:10:\"1488805928\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/homepage-copywriter/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:25:\"[\"Copywriter\",\"Homepage\"]\";s:10:\"menu_order\";s:2:\"23\";s:16:\"popularity_index\";s:2:\"98\";s:11:\"trend_index\";s:3:\"142\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:308;a:14:{s:2:\"id\";s:3:\"181\";s:5:\"title\";s:23:\"Homepage &#8211; Agency\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0019.png\";s:12:\"tmpl_created\";s:10:\"1470826567\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/homepage-agency/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:32:\"[\"Agency\",\"Creative\",\"Homepage\"]\";s:10:\"menu_order\";s:2:\"24\";s:16:\"popularity_index\";s:1:\"3\";s:11:\"trend_index\";s:1:\"6\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:309;a:14:{s:2:\"id\";s:3:\"463\";s:5:\"title\";s:22:\"Homepage &#8211; Study\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/10/0022.png\";s:12:\"tmpl_created\";s:10:\"1477388340\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/homepage-study/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:32:\"[\"Education\",\"Homepage\",\"Study\"]\";s:10:\"menu_order\";s:2:\"25\";s:16:\"popularity_index\";s:1:\"5\";s:11:\"trend_index\";s:1:\"4\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:310;a:14:{s:2:\"id\";s:4:\"2813\";s:5:\"title\";s:32:\"Homepage &#8211; Creative Agency\";s:9:\"thumbnail\";s:90:\"https://library.elementor.com/wp-content/uploads/2017/11/Creative-Agency-–-Home-Page.png\";s:12:\"tmpl_created\";s:10:\"1509615049\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/homepage-creative-agency/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:32:\"[\"Agency\",\"Creative\",\"Homepage\"]\";s:10:\"menu_order\";s:2:\"26\";s:16:\"popularity_index\";s:2:\"55\";s:11:\"trend_index\";s:2:\"63\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:311;a:14:{s:2:\"id\";s:3:\"728\";s:5:\"title\";s:33:\"Homepage &#8211; Delivery Company\";s:9:\"thumbnail\";s:87:\"https://library.elementor.com/wp-content/uploads/2017/01/delivery-company-home-page.jpg\";s:12:\"tmpl_created\";s:10:\"1485269993\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/homepage-delivery-company/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:23:\"[\"Delivery\",\"Homepage\"]\";s:10:\"menu_order\";s:2:\"27\";s:16:\"popularity_index\";s:3:\"129\";s:11:\"trend_index\";s:3:\"250\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:312;a:14:{s:2:\"id\";s:4:\"2403\";s:5:\"title\";s:29:\"Homepage &#8211; Luxury Hotel\";s:9:\"thumbnail\";s:66:\"https://library.elementor.com/wp-content/uploads/2017/09/Hotel.png\";s:12:\"tmpl_created\";s:10:\"1506441428\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/homepage-luxury-hotel/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"28\";s:16:\"popularity_index\";s:3:\"143\";s:11:\"trend_index\";s:3:\"199\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:313;a:14:{s:2:\"id\";s:3:\"519\";s:5:\"title\";s:24:\"Homepage &#8211; Fitness\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/10/0023.png\";s:12:\"tmpl_created\";s:10:\"1477388808\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/homepage-fitness/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:45:\"[\"Fitness\",\"Gym\",\"Health\",\"Homepage\",\"Sport\"]\";s:10:\"menu_order\";s:2:\"29\";s:16:\"popularity_index\";s:1:\"7\";s:11:\"trend_index\";s:2:\"12\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:314;a:14:{s:2:\"id\";s:4:\"1903\";s:5:\"title\";s:20:\"One Page &#8211; Spa\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2017/06/spa.png\";s:12:\"tmpl_created\";s:10:\"1496822325\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/one-page-spa/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:132:\"[\"beauty\",\"care\",\"girly\",\"hair\",\"Health\",\"hospitality\",\"massage\",\"medical\",\"parlor\",\"physiotherapy\",\"salon\",\"spa\",\"wellness\",\"yoga\"]\";s:10:\"menu_order\";s:2:\"30\";s:16:\"popularity_index\";s:3:\"102\";s:11:\"trend_index\";s:3:\"141\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:315;a:14:{s:2:\"id\";s:4:\"2123\";s:5:\"title\";s:33:\"One Page &#8211; Architect Office\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/06/architect.png\";s:12:\"tmpl_created\";s:10:\"1499772989\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/one-page-architect-office/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"31\";s:16:\"popularity_index\";s:1:\"8\";s:11:\"trend_index\";s:1:\"7\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:316;a:14:{s:2:\"id\";s:4:\"1888\";s:5:\"title\";s:32:\"One Page &#8211; Creative Meetup\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2017/06/creative-meetup.png\";s:12:\"tmpl_created\";s:10:\"1496822319\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/one-page-creative-meetup/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"32\";s:16:\"popularity_index\";s:3:\"134\";s:11:\"trend_index\";s:3:\"183\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:317;a:14:{s:2:\"id\";s:4:\"1880\";s:5:\"title\";s:24:\"One Page &#8211; Wedding\";s:9:\"thumbnail\";s:68:\"https://library.elementor.com/wp-content/uploads/2017/06/wedding.png\";s:12:\"tmpl_created\";s:10:\"1496822317\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/one-page-wedding/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:82:\"[\"bride\",\"ceremony\",\"cute\",\"event\",\"fancy\",\"girly\",\"groom\",\"guestbook\",\"marriage\"]\";s:10:\"menu_order\";s:2:\"33\";s:16:\"popularity_index\";s:3:\"316\";s:11:\"trend_index\";s:3:\"377\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:318;a:14:{s:2:\"id\";s:4:\"1891\";s:5:\"title\";s:35:\"One Page &#8211; Textile Convention\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2017/06/textile-meetup.png\";s:12:\"tmpl_created\";s:10:\"1496822323\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:117:\"https://library.elementor.com/one-page-textile-convention/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"34\";s:16:\"popularity_index\";s:3:\"287\";s:11:\"trend_index\";s:3:\"349\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:319;a:14:{s:2:\"id\";s:4:\"1885\";s:5:\"title\";s:29:\"One Page &#8211; Yacht Rental\";s:9:\"thumbnail\";s:71:\"https://library.elementor.com/wp-content/uploads/2017/06/yacht-home.png\";s:12:\"tmpl_created\";s:10:\"1496822321\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/one-page-yacht-rental/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"35\";s:16:\"popularity_index\";s:3:\"110\";s:11:\"trend_index\";s:3:\"153\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:320;a:14:{s:2:\"id\";s:4:\"2723\";s:5:\"title\";s:34:\"Portfolio &#8211; Graphic Designer\";s:9:\"thumbnail\";s:91:\"https://library.elementor.com/wp-content/uploads/2017/11/Graphic-Designer-–-Portfolio.png\";s:12:\"tmpl_created\";s:10:\"1509633883\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:116:\"https://library.elementor.com/portfolio-graphic-designer/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"36\";s:16:\"popularity_index\";s:3:\"109\";s:11:\"trend_index\";s:3:\"147\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:321;a:14:{s:2:\"id\";s:4:\"2145\";s:5:\"title\";s:30:\"About &#8211; Delivery Company\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2017/07/delivery-about.png\";s:12:\"tmpl_created\";s:10:\"1499774125\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:112:\"https://library.elementor.com/about-delivery-company/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:10:\"[\"moving\"]\";s:10:\"menu_order\";s:2:\"37\";s:16:\"popularity_index\";s:3:\"215\";s:11:\"trend_index\";s:3:\"353\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:322;a:14:{s:2:\"id\";s:4:\"2155\";s:5:\"title\";s:23:\"About &#8211; Cake Shop\";s:9:\"thumbnail\";s:71:\"https://library.elementor.com/wp-content/uploads/2017/07/cake-about.png\";s:12:\"tmpl_created\";s:10:\"1499774130\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/about-cake-shop/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:8:\"[\"Food\"]\";s:10:\"menu_order\";s:2:\"38\";s:16:\"popularity_index\";s:3:\"296\";s:11:\"trend_index\";s:3:\"331\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:323;a:14:{s:2:\"id\";s:4:\"1085\";s:5:\"title\";s:21:\"About &#8211; Startup\";s:9:\"thumbnail\";s:68:\"https://library.elementor.com/wp-content/uploads/2017/03/Startup.png\";s:12:\"tmpl_created\";s:10:\"1488810874\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/about-startup/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:19:\"[\"About\",\"Startup\"]\";s:10:\"menu_order\";s:2:\"39\";s:16:\"popularity_index\";s:1:\"4\";s:11:\"trend_index\";s:1:\"5\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:324;a:14:{s:2:\"id\";s:3:\"143\";s:5:\"title\";s:22:\"About &#8211; Personal\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0010.png\";s:12:\"tmpl_created\";s:10:\"1470820447\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/about-personal/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:20:\"[\"About\",\"Personal\"]\";s:10:\"menu_order\";s:2:\"40\";s:16:\"popularity_index\";s:2:\"16\";s:11:\"trend_index\";s:2:\"18\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:325;a:14:{s:2:\"id\";s:3:\"101\";s:5:\"title\";s:16:\"About &#8211; CV\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0018.png\";s:12:\"tmpl_created\";s:10:\"1470829785\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:98:\"https://library.elementor.com/about-cv/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:77:\"[\"creative portfolio\",\"Personal\",\"portfolio\",\"professional\",\"resume\",\"vcard\"]\";s:10:\"menu_order\";s:2:\"41\";s:16:\"popularity_index\";s:2:\"23\";s:11:\"trend_index\";s:2:\"33\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:326;a:14:{s:2:\"id\";s:3:\"140\";s:5:\"title\";s:25:\"About &#8211; Art Gallery\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0009.png\";s:12:\"tmpl_created\";s:10:\"1470820463\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/about-art-gallery/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:25:\"[\"About\",\"Art\",\"Gallery\"]\";s:10:\"menu_order\";s:2:\"42\";s:16:\"popularity_index\";s:2:\"12\";s:11:\"trend_index\";s:2:\"14\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:327;a:14:{s:2:\"id\";s:3:\"213\";s:5:\"title\";s:26:\"About &#8211; Architecture\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0008.png\";s:12:\"tmpl_created\";s:10:\"1470829766\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/about-architecture/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:24:\"[\"About\",\"Architecture\"]\";s:10:\"menu_order\";s:2:\"43\";s:16:\"popularity_index\";s:2:\"13\";s:11:\"trend_index\";s:2:\"13\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:328;a:14:{s:2:\"id\";s:4:\"2802\";s:5:\"title\";s:38:\"Portfolio &#8211; Fashion Photographer\";s:9:\"thumbnail\";s:95:\"https://library.elementor.com/wp-content/uploads/2017/11/Fashion-photographer-–-Portfolio.png\";s:12:\"tmpl_created\";s:10:\"1509615440\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:120:\"https://library.elementor.com/portfolio-fashion-photographer/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"44\";s:16:\"popularity_index\";s:3:\"136\";s:11:\"trend_index\";s:3:\"283\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:329;a:14:{s:2:\"id\";s:4:\"2828\";s:5:\"title\";s:35:\"Landing Page &#8211; Law Convention\";s:9:\"thumbnail\";s:92:\"https://library.elementor.com/wp-content/uploads/2017/11/Law-Convention-–-Landing-Page.png\";s:12:\"tmpl_created\";s:10:\"1509631636\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:117:\"https://library.elementor.com/landing-page-law-convention/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:35:\"[\"Convention\",\"Landing Page\",\"Law\"]\";s:10:\"menu_order\";s:2:\"45\";s:16:\"popularity_index\";s:3:\"239\";s:11:\"trend_index\";s:3:\"292\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:330;a:14:{s:2:\"id\";s:4:\"1461\";s:5:\"title\";s:28:\"Landing Page &#8211; Ebook 1\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Ebook-1.png\";s:12:\"tmpl_created\";s:10:\"1494352121\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-ebook-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:127:\"[\"App\",\"author\",\"book\",\"brochure\",\"download\",\"e-book\",\"ebook\",\"marketing\",\"product\",\"publisher\",\"sell online\",\"seo\",\"showcase\"]\";s:10:\"menu_order\";s:2:\"46\";s:16:\"popularity_index\";s:3:\"222\";s:11:\"trend_index\";s:3:\"380\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:331;a:14:{s:2:\"id\";s:4:\"1460\";s:5:\"title\";s:28:\"Landing Page &#8211; Ebook 2\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Ebook-2.png\";s:12:\"tmpl_created\";s:10:\"1494352124\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-ebook-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"47\";s:16:\"popularity_index\";s:3:\"225\";s:11:\"trend_index\";s:3:\"338\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:332;a:14:{s:2:\"id\";s:4:\"1459\";s:5:\"title\";s:28:\"Landing Page &#8211; Ebook 3\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Ebook-3.png\";s:12:\"tmpl_created\";s:10:\"1494352125\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-ebook-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"48\";s:16:\"popularity_index\";s:3:\"150\";s:11:\"trend_index\";s:3:\"140\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:333;a:14:{s:2:\"id\";s:4:\"1052\";s:5:\"title\";s:33:\"Landing Page &#8211; Mobile App 1\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2017/03/app.png\";s:12:\"tmpl_created\";s:10:\"1488810873\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/landing-page-mobile-app/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"49\";s:16:\"popularity_index\";s:2:\"21\";s:11:\"trend_index\";s:2:\"40\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:334;a:14:{s:2:\"id\";s:4:\"1503\";s:5:\"title\";s:33:\"Landing Page &#8211; Mobile App 2\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-app1.png\";s:12:\"tmpl_created\";s:10:\"1494352113\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-mobile-app-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"50\";s:16:\"popularity_index\";s:3:\"159\";s:11:\"trend_index\";s:3:\"163\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:335;a:14:{s:2:\"id\";s:4:\"1504\";s:5:\"title\";s:33:\"Landing Page &#8211; Mobile App 3\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-app2.png\";s:12:\"tmpl_created\";s:10:\"1494352112\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-mobile-app-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"51\";s:16:\"popularity_index\";s:3:\"168\";s:11:\"trend_index\";s:3:\"190\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:336;a:14:{s:2:\"id\";s:4:\"1505\";s:5:\"title\";s:33:\"Landing Page &#8211; Mobile App 4\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-app3.png\";s:12:\"tmpl_created\";s:10:\"1494352110\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-mobile-app-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"52\";s:16:\"popularity_index\";s:3:\"277\";s:11:\"trend_index\";s:3:\"354\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:337;a:14:{s:2:\"id\";s:3:\"726\";s:5:\"title\";s:33:\"Landing Page &#8211; Conference 1\";s:9:\"thumbnail\";s:84:\"https://library.elementor.com/wp-content/uploads/2017/01/convention-landing-page.jpg\";s:12:\"tmpl_created\";s:10:\"1485270062\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/landing-page-conference/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"53\";s:16:\"popularity_index\";s:3:\"302\";s:11:\"trend_index\";s:3:\"401\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:338;a:14:{s:2:\"id\";s:4:\"1613\";s:5:\"title\";s:33:\"Landing Page &#8211; Conference 2\";s:9:\"thumbnail\";s:109:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-International-Womens-Day-Conference.png\";s:12:\"tmpl_created\";s:10:\"1494352129\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-conference-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"54\";s:16:\"popularity_index\";s:3:\"320\";s:11:\"trend_index\";s:3:\"340\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:339;a:14:{s:2:\"id\";s:4:\"1612\";s:5:\"title\";s:33:\"Landing Page &#8211; Conference 3\";s:9:\"thumbnail\";s:89:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Tech-Conference.png\";s:12:\"tmpl_created\";s:10:\"1494352127\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-conference-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"55\";s:16:\"popularity_index\";s:3:\"326\";s:11:\"trend_index\";s:3:\"389\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:340;a:14:{s:2:\"id\";s:4:\"1614\";s:5:\"title\";s:33:\"Landing Page &#8211; Conference 4\";s:9:\"thumbnail\";s:99:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Sustainability-Conference.png\";s:12:\"tmpl_created\";s:10:\"1494352131\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-conference-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"56\";s:16:\"popularity_index\";s:3:\"250\";s:11:\"trend_index\";s:3:\"300\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:341;a:14:{s:2:\"id\";s:4:\"9373\";s:5:\"title\";s:33:\"Landing Page &#8211; Conference 5\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2018/11/conference-250.png\";s:12:\"tmpl_created\";s:10:\"1542811219\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-conference-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"57\";s:16:\"popularity_index\";s:3:\"309\";s:11:\"trend_index\";s:3:\"170\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:342;a:14:{s:2:\"id\";s:3:\"906\";s:5:\"title\";s:29:\"Landing Page &#8211;  Coacher\";s:9:\"thumbnail\";s:80:\"https://library.elementor.com/wp-content/uploads/2017/02/Landin-Page-Coacher.png\";s:12:\"tmpl_created\";s:10:\"1494352066\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-coacher/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"58\";s:16:\"popularity_index\";s:3:\"147\";s:11:\"trend_index\";s:3:\"222\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:343;a:14:{s:2:\"id\";s:3:\"955\";s:5:\"title\";s:31:\"Landing Page &#8211; Law Office\";s:9:\"thumbnail\";s:84:\"https://library.elementor.com/wp-content/uploads/2017/02/Landing-Page-Law-Office.png\";s:12:\"tmpl_created\";s:10:\"1494352069\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/landing-page-law-office/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:31:\"[\"Landing Page\",\"Law\",\"Office\"]\";s:10:\"menu_order\";s:2:\"59\";s:16:\"popularity_index\";s:3:\"148\";s:11:\"trend_index\";s:3:\"206\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:344;a:14:{s:2:\"id\";s:3:\"879\";s:5:\"title\";s:41:\"Landing Page &#8211; Financial Consultant\";s:9:\"thumbnail\";s:94:\"https://library.elementor.com/wp-content/uploads/2017/02/Landing-Page-Financial-consultant.png\";s:12:\"tmpl_created\";s:10:\"1494352064\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:123:\"https://library.elementor.com/landing-page-financial-consultant/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"60\";s:16:\"popularity_index\";s:3:\"161\";s:11:\"trend_index\";s:3:\"203\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:345;a:14:{s:2:\"id\";s:3:\"926\";s:5:\"title\";s:33:\"Landing Page &#8211; Private Chef\";s:9:\"thumbnail\";s:86:\"https://library.elementor.com/wp-content/uploads/2017/02/Landing-Page-Private-Chef.png\";s:12:\"tmpl_created\";s:10:\"1494352068\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-private-chef/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"61\";s:16:\"popularity_index\";s:3:\"283\";s:11:\"trend_index\";s:3:\"294\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:346;a:14:{s:2:\"id\";s:3:\"855\";s:5:\"title\";s:37:\"Landing Page &#8211; Personal Trainer\";s:9:\"thumbnail\";s:90:\"https://library.elementor.com/wp-content/uploads/2017/02/Landing-Page-Personal-Trainer.png\";s:12:\"tmpl_created\";s:10:\"1494352061\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:119:\"https://library.elementor.com/landing-page-personal-trainer/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"62\";s:16:\"popularity_index\";s:3:\"237\";s:11:\"trend_index\";s:3:\"257\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:347;a:14:{s:2:\"id\";s:3:\"974\";s:5:\"title\";s:28:\"Landing Page &#8211; Stylist\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2017/03/Landing-Page-Stylist.png\";s:12:\"tmpl_created\";s:10:\"1494352071\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-stylist/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:146:\"[\"cosmetics\",\"fashion\",\"girly\",\"hairdresser\",\"lifestyle\",\"makeup\",\"manicure\",\"pedicure\",\"products\",\"salon\",\"Shop\",\"skincare\",\"stylist\",\"wellness\"]\";s:10:\"menu_order\";s:2:\"63\";s:16:\"popularity_index\";s:3:\"297\";s:11:\"trend_index\";s:3:\"316\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:348;a:14:{s:2:\"id\";s:4:\"1032\";s:5:\"title\";s:27:\"Landing Page &#8211; Agency\";s:9:\"thumbnail\";s:67:\"https://library.elementor.com/wp-content/uploads/2017/03/Agency.png\";s:12:\"tmpl_created\";s:10:\"1488810866\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/landing-page-agency/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"64\";s:16:\"popularity_index\";s:3:\"260\";s:11:\"trend_index\";s:3:\"347\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:349;a:14:{s:2:\"id\";s:4:\"1634\";s:5:\"title\";s:33:\"Landing Page &#8211; Chiropractor\";s:9:\"thumbnail\";s:86:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Chiropractor.png\";s:12:\"tmpl_created\";s:10:\"1494352119\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-chiropractor/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"65\";s:16:\"popularity_index\";s:3:\"252\";s:11:\"trend_index\";s:3:\"267\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:350;a:14:{s:2:\"id\";s:3:\"730\";s:5:\"title\";s:24:\"Landing Page &#8211; App\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2017/01/app.-landing-page.jpg\";s:12:\"tmpl_created\";s:10:\"1485273430\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/landing-page-app/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"66\";s:16:\"popularity_index\";s:3:\"238\";s:11:\"trend_index\";s:3:\"252\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:351;a:14:{s:2:\"id\";s:3:\"643\";s:5:\"title\";s:29:\"Landing Page &#8211; Festival\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2016/12/festival.jpg\";s:12:\"tmpl_created\";s:10:\"1481549290\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/landing-page-festival/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"67\";s:16:\"popularity_index\";s:3:\"286\";s:11:\"trend_index\";s:3:\"408\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:352;a:14:{s:2:\"id\";s:3:\"487\";s:5:\"title\";s:29:\"Landing Page &#8211; Vacation\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/10/0021.png\";s:12:\"tmpl_created\";s:10:\"1477388357\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/landing-page-vacation/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"68\";s:16:\"popularity_index\";s:2:\"24\";s:11:\"trend_index\";s:2:\"30\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:353;a:14:{s:2:\"id\";s:3:\"542\";s:5:\"title\";s:28:\"Landing Page &#8211; Wedding\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/10/0025.png\";s:12:\"tmpl_created\";s:10:\"1477388484\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-wedding/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"69\";s:16:\"popularity_index\";s:2:\"41\";s:11:\"trend_index\";s:2:\"87\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:354;a:14:{s:2:\"id\";s:4:\"1187\";s:5:\"title\";s:32:\"Landing Page &#8211; Photography\";s:9:\"thumbnail\";s:66:\"https://library.elementor.com/wp-content/uploads/2017/03/lp1-l.png\";s:12:\"tmpl_created\";s:10:\"1490707385\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/landing-page-photography/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"70\";s:16:\"popularity_index\";s:2:\"25\";s:11:\"trend_index\";s:2:\"38\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:355;a:14:{s:2:\"id\";s:3:\"641\";s:5:\"title\";s:28:\"Landing Page &#8211; Fashion\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2016/12/fashion-landing-page.jpg\";s:12:\"tmpl_created\";s:10:\"1481549264\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-fashion/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"71\";s:16:\"popularity_index\";s:3:\"175\";s:11:\"trend_index\";s:3:\"348\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:356;a:14:{s:2:\"id\";s:3:\"189\";s:5:\"title\";s:30:\"Landing Page &#8211; Tourism 1\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0005.png\";s:12:\"tmpl_created\";s:10:\"1470820715\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-tourism/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"72\";s:16:\"popularity_index\";s:2:\"10\";s:11:\"trend_index\";s:2:\"11\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:357;a:14:{s:2:\"id\";s:4:\"1547\";s:5:\"title\";s:30:\"Landing Page &#8211; Tourism 2\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Truism-1.png\";s:12:\"tmpl_created\";s:10:\"1494352115\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:112:\"https://library.elementor.com/landing-page-tourism-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"73\";s:16:\"popularity_index\";s:3:\"235\";s:11:\"trend_index\";s:3:\"358\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:358;a:14:{s:2:\"id\";s:4:\"1546\";s:5:\"title\";s:30:\"Landing Page &#8211; Tourism 3\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Truism-2.png\";s:12:\"tmpl_created\";s:10:\"1494352116\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:112:\"https://library.elementor.com/landing-page-tourism-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"74\";s:16:\"popularity_index\";s:3:\"327\";s:11:\"trend_index\";s:3:\"417\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:359;a:14:{s:2:\"id\";s:4:\"1545\";s:5:\"title\";s:30:\"Landing Page &#8211; Tourism 4\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Truism-3.png\";s:12:\"tmpl_created\";s:10:\"1494352118\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:112:\"https://library.elementor.com/landing-page-tourism-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"75\";s:16:\"popularity_index\";s:3:\"284\";s:11:\"trend_index\";s:3:\"322\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:360;a:14:{s:2:\"id\";s:4:\"2714\";s:5:\"title\";s:30:\"Landing Page &#8211; Tourism 5\";s:9:\"thumbnail\";s:86:\"https://library.elementor.com/wp-content/uploads/2017/11/Vacation-–-Landing-Page.png\";s:12:\"tmpl_created\";s:10:\"1509631782\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:112:\"https://library.elementor.com/landing-page-tourism-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"76\";s:16:\"popularity_index\";s:3:\"280\";s:11:\"trend_index\";s:3:\"326\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:361;a:14:{s:2:\"id\";s:4:\"1190\";s:5:\"title\";s:26:\"Landing Page &#8211; Hotel\";s:9:\"thumbnail\";s:66:\"https://library.elementor.com/wp-content/uploads/2017/03/lp2-l.png\";s:12:\"tmpl_created\";s:10:\"1490707391\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/landing-page-hotel/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"77\";s:16:\"popularity_index\";s:2:\"20\";s:11:\"trend_index\";s:2:\"22\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:362;a:14:{s:2:\"id\";s:3:\"195\";s:5:\"title\";s:28:\"Landing Page &#8211; Product\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0006.png\";s:12:\"tmpl_created\";s:10:\"1470820765\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-product/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"78\";s:16:\"popularity_index\";s:2:\"26\";s:11:\"trend_index\";s:2:\"54\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:363;a:14:{s:2:\"id\";s:3:\"197\";s:5:\"title\";s:34:\"Landing Page &#8211; Real Estate 1\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0007.png\";s:12:\"tmpl_created\";s:10:\"1470825711\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/landing-page-real-estate/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"79\";s:16:\"popularity_index\";s:2:\"60\";s:11:\"trend_index\";s:3:\"152\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:364;a:14:{s:2:\"id\";s:4:\"1193\";s:5:\"title\";s:34:\"Landing Page &#8211; Real Estate 2\";s:9:\"thumbnail\";s:66:\"https://library.elementor.com/wp-content/uploads/2017/03/lp3-l.png\";s:12:\"tmpl_created\";s:10:\"1490707422\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:116:\"https://library.elementor.com/landing-page-real-estate-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"80\";s:16:\"popularity_index\";s:2:\"33\";s:11:\"trend_index\";s:2:\"47\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:365;a:14:{s:2:\"id\";s:4:\"1415\";s:5:\"title\";s:34:\"Landing Page &#8211; Real Estate 3\";s:9:\"thumbnail\";s:87:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Real-Estate-1.png\";s:12:\"tmpl_created\";s:10:\"1494352106\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:116:\"https://library.elementor.com/landing-page-real-estate-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"81\";s:16:\"popularity_index\";s:3:\"264\";s:11:\"trend_index\";s:3:\"336\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:366;a:14:{s:2:\"id\";s:4:\"1414\";s:5:\"title\";s:34:\"Landing Page &#8211; Real Estate 4\";s:9:\"thumbnail\";s:87:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Real-Estate-2.png\";s:12:\"tmpl_created\";s:10:\"1494352107\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:116:\"https://library.elementor.com/landing-page-real-estate-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"82\";s:16:\"popularity_index\";s:3:\"369\";s:11:\"trend_index\";s:3:\"419\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:367;a:14:{s:2:\"id\";s:4:\"1413\";s:5:\"title\";s:34:\"Landing Page &#8211; Real Estate 5\";s:9:\"thumbnail\";s:87:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Real-Estate-3.png\";s:12:\"tmpl_created\";s:10:\"1494352109\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:116:\"https://library.elementor.com/landing-page-real-estate-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:134:\"[\"Agent\",\"business\",\"clean\",\"corporate\",\"flat\",\"google maps\",\"homes\",\"listing\",\"modern\",\"real estate\",\"realestate\",\"realtor\",\"realty\"]\";s:10:\"menu_order\";s:2:\"83\";s:16:\"popularity_index\";s:3:\"343\";s:11:\"trend_index\";s:3:\"404\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:368;a:14:{s:2:\"id\";s:4:\"1573\";s:5:\"title\";s:29:\"Landing Page &#8211; Coupon 1\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/05/Coupon-02.png\";s:12:\"tmpl_created\";s:10:\"1494352133\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/landing-page-coupon-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"84\";s:16:\"popularity_index\";s:3:\"365\";s:11:\"trend_index\";s:3:\"325\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:369;a:14:{s:2:\"id\";s:4:\"1572\";s:5:\"title\";s:29:\"Landing Page &#8211; Coupon 2\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/05/Coupon-03.png\";s:12:\"tmpl_created\";s:10:\"1494352134\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/landing-page-coupon-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"85\";s:16:\"popularity_index\";s:3:\"389\";s:11:\"trend_index\";s:3:\"421\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:370;a:14:{s:2:\"id\";s:4:\"1570\";s:5:\"title\";s:29:\"Landing Page &#8211; Coupon 3\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/05/Coupon-01.png\";s:12:\"tmpl_created\";s:10:\"1494352136\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/landing-page-coupon-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"86\";s:16:\"popularity_index\";s:3:\"414\";s:11:\"trend_index\";s:3:\"437\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:371;a:14:{s:2:\"id\";s:4:\"1571\";s:5:\"title\";s:29:\"Landing Page &#8211; Coupon 4\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/05/Coupon-04.png\";s:12:\"tmpl_created\";s:10:\"1494352138\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/landing-page-coupon-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"87\";s:16:\"popularity_index\";s:3:\"390\";s:11:\"trend_index\";s:3:\"395\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:372;a:14:{s:2:\"id\";s:3:\"192\";s:5:\"title\";s:28:\"Landing Page &#8211; Webinar\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0015.png\";s:12:\"tmpl_created\";s:10:\"1470820734\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-webinar/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"88\";s:16:\"popularity_index\";s:2:\"49\";s:11:\"trend_index\";s:3:\"143\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:373;a:14:{s:2:\"id\";s:4:\"2141\";s:5:\"title\";s:32:\"Contact &#8211; Delivery Company\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2017/07/delivery-contact.png\";s:12:\"tmpl_created\";s:10:\"1499774122\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/contact-delivery-company/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"89\";s:16:\"popularity_index\";s:3:\"213\";s:11:\"trend_index\";s:3:\"275\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:374;a:14:{s:2:\"id\";s:3:\"137\";s:5:\"title\";s:22:\"Contact &#8211; Modern\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0013.png\";s:12:\"tmpl_created\";s:10:\"1470829828\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/contact-modern/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"90\";s:16:\"popularity_index\";s:2:\"28\";s:11:\"trend_index\";s:2:\"45\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:375;a:14:{s:2:\"id\";s:3:\"256\";s:5:\"title\";s:26:\"Contact &#8211; Restaurant\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0011.png\";s:12:\"tmpl_created\";s:10:\"1470829796\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/contact-restaurant/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"91\";s:16:\"popularity_index\";s:2:\"68\";s:11:\"trend_index\";s:3:\"126\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:376;a:14:{s:2:\"id\";s:4:\"2150\";s:5:\"title\";s:25:\"Contact &#8211; Cake Shop\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2017/07/cake-contact.png\";s:12:\"tmpl_created\";s:10:\"1499774127\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/contact-cake-shop/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"92\";s:16:\"popularity_index\";s:2:\"40\";s:11:\"trend_index\";s:2:\"59\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:377;a:14:{s:2:\"id\";s:3:\"223\";s:5:\"title\";s:21:\"Contact &#8211; Hotel\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0002.png\";s:12:\"tmpl_created\";s:10:\"1470820471\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/contact-hotel/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"93\";s:16:\"popularity_index\";s:2:\"64\";s:11:\"trend_index\";s:3:\"119\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:378;a:14:{s:2:\"id\";s:2:\"24\";s:5:\"title\";s:25:\"Contact &#8211; Corporate\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0012.png\";s:12:\"tmpl_created\";s:10:\"1470248619\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/contact-corporate/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"94\";s:16:\"popularity_index\";s:2:\"11\";s:11:\"trend_index\";s:1:\"9\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:379;a:14:{s:2:\"id\";s:3:\"184\";s:5:\"title\";s:23:\"Services &#8211; Moving\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0017.png\";s:12:\"tmpl_created\";s:10:\"1470829889\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/services-moving/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"95\";s:16:\"popularity_index\";s:2:\"19\";s:11:\"trend_index\";s:2:\"19\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:380;a:14:{s:2:\"id\";s:3:\"625\";s:5:\"title\";s:31:\"Services &#8211; Cake Shop Menu\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2016/12/cake-shop-menu.jpg\";s:12:\"tmpl_created\";s:10:\"1481549196\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/services-cake-shop-menu/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"96\";s:16:\"popularity_index\";s:3:\"373\";s:11:\"trend_index\";s:3:\"422\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:381;a:14:{s:2:\"id\";s:3:\"187\";s:5:\"title\";s:20:\"Services &#8211; Fun\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0001.png\";s:12:\"tmpl_created\";s:10:\"1470829892\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/services-fun/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"97\";s:16:\"popularity_index\";s:2:\"32\";s:11:\"trend_index\";s:3:\"111\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:382;a:14:{s:2:\"id\";s:3:\"238\";s:5:\"title\";s:27:\"Services &#8211; Consulting\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0014.png\";s:12:\"tmpl_created\";s:10:\"1470829865\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/services-consulting/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"98\";s:16:\"popularity_index\";s:2:\"17\";s:11:\"trend_index\";s:2:\"24\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:383;a:14:{s:2:\"id\";s:3:\"647\";s:5:\"title\";s:33:\"Services &#8211; Coffee Shop Menu\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2016/12/restaurant-menu.jpg\";s:12:\"tmpl_created\";s:10:\"1481549320\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/services-coffee-shop-menu/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"99\";s:16:\"popularity_index\";s:3:\"334\";s:11:\"trend_index\";s:3:\"352\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:384;a:14:{s:2:\"id\";s:4:\"2138\";s:5:\"title\";s:33:\"Services &#8211; Delivery Company\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2017/07/delivery-services.png\";s:12:\"tmpl_created\";s:10:\"1499774119\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/services-delivery-company/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"100\";s:16:\"popularity_index\";s:3:\"301\";s:11:\"trend_index\";s:3:\"312\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:385;a:14:{s:2:\"id\";s:3:\"823\";s:5:\"title\";s:19:\"Pricing &#8211; App\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2017/01/pricing-app.jpg\";s:12:\"tmpl_created\";s:10:\"1485272966\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/pricing-app-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"101\";s:16:\"popularity_index\";s:3:\"248\";s:11:\"trend_index\";s:3:\"350\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:386;a:14:{s:2:\"id\";s:3:\"824\";s:5:\"title\";s:24:\"Pricing &#8211; Software\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2017/01/pricing-software.png\";s:12:\"tmpl_created\";s:10:\"1485272900\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/pricing-software-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"102\";s:16:\"popularity_index\";s:3:\"276\";s:11:\"trend_index\";s:3:\"374\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:387;a:14:{s:2:\"id\";s:3:\"825\";s:5:\"title\";s:24:\"Product &#8211; Speakers\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2017/01/product-page.jpg\";s:12:\"tmpl_created\";s:10:\"1485272513\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/product-speakers/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"103\";s:16:\"popularity_index\";s:3:\"299\";s:11:\"trend_index\";s:3:\"365\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:388;a:14:{s:2:\"id\";s:3:\"245\";s:5:\"title\";s:21:\"Product &#8211; Clean\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0020.png\";s:12:\"tmpl_created\";s:10:\"1470829876\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/product-clean/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:48:\"[\"fast\",\"minimal\",\"minimalistic\",\"seo\",\"simple\"]\";s:10:\"menu_order\";s:3:\"104\";s:16:\"popularity_index\";s:2:\"43\";s:11:\"trend_index\";s:3:\"110\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:389;a:14:{s:2:\"id\";s:3:\"150\";s:5:\"title\";s:19:\"Product &#8211; App\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0003.png\";s:12:\"tmpl_created\";s:10:\"1470829879\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:101:\"https://library.elementor.com/product-app/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"105\";s:16:\"popularity_index\";s:2:\"22\";s:11:\"trend_index\";s:2:\"56\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:390;a:14:{s:2:\"id\";s:3:\"751\";s:5:\"title\";s:25:\"Homepage &#8211; Interior\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/01/interior-home.png\";s:12:\"tmpl_created\";s:10:\"1485269743\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/homepage-interior/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"106\";s:16:\"popularity_index\";s:3:\"211\";s:11:\"trend_index\";s:3:\"307\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:391;a:14:{s:2:\"id\";s:3:\"753\";s:5:\"title\";s:22:\"About &#8211; Interior\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2017/01/Interior-About.png\";s:12:\"tmpl_created\";s:10:\"1485269710\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/about-interior/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"107\";s:16:\"popularity_index\";s:3:\"268\";s:11:\"trend_index\";s:3:\"324\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:392;a:14:{s:2:\"id\";s:3:\"754\";s:5:\"title\";s:25:\"Services &#8211; Interior\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2017/01/Interior-Services.png\";s:12:\"tmpl_created\";s:10:\"1485269691\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/services-interior/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"108\";s:16:\"popularity_index\";s:3:\"289\";s:11:\"trend_index\";s:3:\"286\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:393;a:14:{s:2:\"id\";s:3:\"752\";s:5:\"title\";s:24:\"Contact &#8211; Interior\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2017/01/interior-contact.png\";s:12:\"tmpl_created\";s:10:\"1485269737\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/contact-interior/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"109\";s:16:\"popularity_index\";s:3:\"266\";s:11:\"trend_index\";s:3:\"334\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:394;a:14:{s:2:\"id\";s:4:\"1075\";s:5:\"title\";s:19:\"Shop &#8211; Sweets\";s:9:\"thumbnail\";s:67:\"https://library.elementor.com/wp-content/uploads/2017/03/Sweets.png\";s:12:\"tmpl_created\";s:10:\"1488810871\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:101:\"https://library.elementor.com/shop-sweets/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:154:\"[\"bakery\",\"beverage\",\"business\",\"cafe\",\"candy bar\",\"catering\",\"delivery service\",\"Food\",\"online shop\",\"pastry\",\"Restaurant\",\"store\",\"sweet shop\",\"sweets\"]\";s:10:\"menu_order\";s:3:\"110\";s:16:\"popularity_index\";s:2:\"34\";s:11:\"trend_index\";s:2:\"46\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:395;a:14:{s:2:\"id\";s:4:\"1051\";s:5:\"title\";s:24:\"Blog Post &#8211; Launch\";s:9:\"thumbnail\";s:71:\"https://library.elementor.com/wp-content/uploads/2017/03/post-cloud.png\";s:12:\"tmpl_created\";s:10:\"1488810869\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blog-post-launch/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:210:\"[\"Agency\",\"bootstrap\",\"business\",\"corporate\",\"Landing Page\",\"launch\",\"marketing campaign\",\"marketing landing page\",\"marketing template landing page\",\"product launch\",\"software\",\"Startup\",\"startup landing page\"]\";s:10:\"menu_order\";s:3:\"111\";s:16:\"popularity_index\";s:2:\"18\";s:11:\"trend_index\";s:2:\"16\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:396;a:14:{s:2:\"id\";s:4:\"1245\";s:5:\"title\";s:13:\"Coming Soon 1\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-1.png\";s:12:\"tmpl_created\";s:10:\"1491207184\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"112\";s:16:\"popularity_index\";s:3:\"189\";s:11:\"trend_index\";s:3:\"281\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:397;a:14:{s:2:\"id\";s:4:\"1247\";s:5:\"title\";s:13:\"Coming Soon 2\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-2.png\";s:12:\"tmpl_created\";s:10:\"1491207138\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"113\";s:16:\"popularity_index\";s:2:\"27\";s:11:\"trend_index\";s:2:\"32\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:398;a:14:{s:2:\"id\";s:4:\"1248\";s:5:\"title\";s:13:\"Coming Soon 3\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-3.png\";s:12:\"tmpl_created\";s:10:\"1491207050\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"114\";s:16:\"popularity_index\";s:3:\"305\";s:11:\"trend_index\";s:3:\"360\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:399;a:14:{s:2:\"id\";s:4:\"1249\";s:5:\"title\";s:13:\"Coming Soon 4\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-4.png\";s:12:\"tmpl_created\";s:10:\"1491207380\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"115\";s:16:\"popularity_index\";s:3:\"353\";s:11:\"trend_index\";s:3:\"339\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:400;a:14:{s:2:\"id\";s:4:\"1250\";s:5:\"title\";s:13:\"Coming Soon 5\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-5.png\";s:12:\"tmpl_created\";s:10:\"1491207450\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"116\";s:16:\"popularity_index\";s:2:\"39\";s:11:\"trend_index\";s:2:\"84\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:401;a:14:{s:2:\"id\";s:4:\"1260\";s:5:\"title\";s:13:\"Coming Soon 6\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-6.png\";s:12:\"tmpl_created\";s:10:\"1491207507\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"117\";s:16:\"popularity_index\";s:3:\"352\";s:11:\"trend_index\";s:3:\"375\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:402;a:14:{s:2:\"id\";s:4:\"1261\";s:5:\"title\";s:13:\"Coming Soon 7\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/04/Coming-Soon-7.png\";s:12:\"tmpl_created\";s:10:\"1491207584\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"118\";s:16:\"popularity_index\";s:2:\"44\";s:11:\"trend_index\";s:2:\"81\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:403;a:14:{s:2:\"id\";s:4:\"1272\";s:5:\"title\";s:13:\"Coming Soon 8\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-8.png\";s:12:\"tmpl_created\";s:10:\"1491207674\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"119\";s:16:\"popularity_index\";s:3:\"198\";s:11:\"trend_index\";s:3:\"290\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:404;a:14:{s:2:\"id\";s:4:\"1279\";s:5:\"title\";s:13:\"Coming Soon 9\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-9.png\";s:12:\"tmpl_created\";s:10:\"1491207756\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"120\";s:16:\"popularity_index\";s:2:\"71\";s:11:\"trend_index\";s:3:\"204\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:405;a:14:{s:2:\"id\";s:4:\"1745\";s:5:\"title\";s:14:\"Coming Soon 10\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/05/login-002.png\";s:12:\"tmpl_created\";s:10:\"1494849745\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/coming-soon-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"121\";s:16:\"popularity_index\";s:3:\"196\";s:11:\"trend_index\";s:3:\"260\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:406;a:14:{s:2:\"id\";s:4:\"1742\";s:5:\"title\";s:12:\"Login Page 1\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/05/login-003.png\";s:12:\"tmpl_created\";s:10:\"1494849744\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:100:\"https://library.elementor.com/login-page/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"122\";s:16:\"popularity_index\";s:3:\"331\";s:11:\"trend_index\";s:3:\"381\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:407;a:14:{s:2:\"id\";s:4:\"1748\";s:5:\"title\";s:12:\"Login Page 2\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/05/login-001.png\";s:12:\"tmpl_created\";s:10:\"1494849742\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/login-page-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"123\";s:16:\"popularity_index\";s:3:\"197\";s:11:\"trend_index\";s:3:\"243\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:408;a:14:{s:2:\"id\";s:4:\"3963\";s:5:\"title\";s:32:\"Restaurant Site &#8211; Homepage\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2018/01/R.HomepageThumb.png\";s:12:\"tmpl_created\";s:10:\"1516284821\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/restaurant-site-homepage/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:109:\"[\"bar\",\"cafe\",\"cooking\",\"drink\",\"events\",\"fast food\",\"Food\",\"menu\",\"modern\",\"reservation\",\"Shop\",\"snack bar\"]\";s:10:\"menu_order\";s:3:\"124\";s:16:\"popularity_index\";s:3:\"188\";s:11:\"trend_index\";s:3:\"311\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:409;a:14:{s:2:\"id\";s:4:\"3969\";s:5:\"title\";s:28:\"Restaurant Site &#8211; Menu\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2018/01/R.MenuThumb.png\";s:12:\"tmpl_created\";s:10:\"1516284829\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/restaurant-site-menu/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:109:\"[\"bar\",\"cafe\",\"cooking\",\"drink\",\"events\",\"fast food\",\"Food\",\"menu\",\"modern\",\"reservation\",\"Shop\",\"snack bar\"]\";s:10:\"menu_order\";s:3:\"125\";s:16:\"popularity_index\";s:3:\"348\";s:11:\"trend_index\";s:3:\"289\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:410;a:14:{s:2:\"id\";s:4:\"3966\";s:5:\"title\";s:29:\"Restaurant Site &#8211; About\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2018/01/R.AboutThumb.png.png\";s:12:\"tmpl_created\";s:10:\"1516284839\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/restaurant-site-about/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:109:\"[\"bar\",\"cafe\",\"cooking\",\"drink\",\"events\",\"fast food\",\"Food\",\"menu\",\"modern\",\"reservation\",\"Shop\",\"snack bar\"]\";s:10:\"menu_order\";s:3:\"126\";s:16:\"popularity_index\";s:3:\"206\";s:11:\"trend_index\";s:2:\"75\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:411;a:14:{s:2:\"id\";s:4:\"3972\";s:5:\"title\";s:31:\"Restaurant Site &#8211; Contact\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2018/01/R.ContactThumb.png\";s:12:\"tmpl_created\";s:10:\"1516284847\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/restaurant-site-contact/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:109:\"[\"bar\",\"cafe\",\"cooking\",\"drink\",\"events\",\"fast food\",\"Food\",\"menu\",\"modern\",\"reservation\",\"Shop\",\"snack bar\"]\";s:10:\"menu_order\";s:3:\"127\";s:16:\"popularity_index\";s:3:\"304\";s:11:\"trend_index\";s:3:\"298\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:412;a:14:{s:2:\"id\";s:4:\"2080\";s:5:\"title\";s:27:\"Ski Resort &#8211; Homepage\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2017/10/Ski-Resort-Home-Page.png\";s:12:\"tmpl_created\";s:10:\"1508161124\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/ski-resort-homepage/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"128\";s:16:\"popularity_index\";s:3:\"263\";s:11:\"trend_index\";s:3:\"297\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:413;a:14:{s:2:\"id\";s:4:\"2088\";s:5:\"title\";s:24:\"Ski Resort &#8211; About\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2017/10/Ski-Resort-About.png\";s:12:\"tmpl_created\";s:10:\"1508161129\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/ski-resort-about/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"129\";s:16:\"popularity_index\";s:3:\"351\";s:11:\"trend_index\";s:3:\"367\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:414;a:14:{s:2:\"id\";s:4:\"2085\";s:5:\"title\";s:27:\"Ski Resort &#8211; Services\";s:9:\"thumbnail\";s:80:\"https://library.elementor.com/wp-content/uploads/2017/10/Ski-Resort-Services.png\";s:12:\"tmpl_created\";s:10:\"1508161134\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/ski-resort-services/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"130\";s:16:\"popularity_index\";s:3:\"394\";s:11:\"trend_index\";s:3:\"392\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:415;a:14:{s:2:\"id\";s:4:\"2462\";s:5:\"title\";s:23:\"Architect &#8211; About\";s:9:\"thumbnail\";s:80:\"https://library.elementor.com/wp-content/uploads/2017/10/architect-–-about.png\";s:12:\"tmpl_created\";s:10:\"1508243317\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/architect-about/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"131\";s:16:\"popularity_index\";s:3:\"273\";s:11:\"trend_index\";s:3:\"274\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:416;a:14:{s:2:\"id\";s:4:\"2362\";s:5:\"title\";s:26:\"Architect &#8211; Projects\";s:9:\"thumbnail\";s:79:\"https://library.elementor.com/wp-content/uploads/2017/10/Architect-Projects.png\";s:12:\"tmpl_created\";s:10:\"1508243335\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/architect-projects/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"132\";s:16:\"popularity_index\";s:3:\"341\";s:11:\"trend_index\";s:3:\"314\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:417;a:14:{s:2:\"id\";s:3:\"614\";s:5:\"title\";s:25:\"Architect &#8211; Contact\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2016/12/architect-contact.jpg\";s:12:\"tmpl_created\";s:10:\"1481549169\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/architect-contact/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"133\";s:16:\"popularity_index\";s:3:\"174\";s:11:\"trend_index\";s:3:\"295\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:418;a:14:{s:2:\"id\";s:4:\"2126\";s:5:\"title\";s:37:\"Construction Company &#8211; Homepage\";s:9:\"thumbnail\";s:91:\"https://library.elementor.com/wp-content/uploads/2017/10/Construction-Company-Home-Page.png\";s:12:\"tmpl_created\";s:10:\"1508325849\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:119:\"https://library.elementor.com/construction-company-homepage/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"134\";s:16:\"popularity_index\";s:3:\"231\";s:11:\"trend_index\";s:3:\"263\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:419;a:14:{s:2:\"id\";s:4:\"2129\";s:5:\"title\";s:34:\"Construction Company &#8211; About\";s:9:\"thumbnail\";s:87:\"https://library.elementor.com/wp-content/uploads/2017/10/Construction-Company-About.png\";s:12:\"tmpl_created\";s:10:\"1508325881\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:116:\"https://library.elementor.com/construction-company-about/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"135\";s:16:\"popularity_index\";s:3:\"259\";s:11:\"trend_index\";s:3:\"238\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:420;a:14:{s:2:\"id\";s:4:\"2135\";s:5:\"title\";s:36:\"Construction Company &#8211; Contact\";s:9:\"thumbnail\";s:89:\"https://library.elementor.com/wp-content/uploads/2017/10/Construction-Company-Contact.png\";s:12:\"tmpl_created\";s:10:\"1508325922\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:118:\"https://library.elementor.com/construction-company-contact/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"136\";s:16:\"popularity_index\";s:3:\"285\";s:11:\"trend_index\";s:3:\"310\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:421;a:14:{s:2:\"id\";s:4:\"2094\";s:5:\"title\";s:28:\"Plants Shop &#8211; Homepage\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2017/11/Plants-Shop-Home.png\";s:12:\"tmpl_created\";s:10:\"1509621053\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/plants-shop-homepage/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"137\";s:16:\"popularity_index\";s:3:\"245\";s:11:\"trend_index\";s:3:\"242\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:422;a:14:{s:2:\"id\";s:4:\"2120\";s:5:\"title\";s:25:\"Plants Shop &#8211; About\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2017/11/Plants-Shop-About.png\";s:12:\"tmpl_created\";s:10:\"1509631820\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/plants-shop-about/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"138\";s:16:\"popularity_index\";s:3:\"281\";s:11:\"trend_index\";s:3:\"332\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:423;a:14:{s:2:\"id\";s:4:\"3619\";s:5:\"title\";s:31:\"Snowboard Site &#8211; Homepage\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2017/12/home.png\";s:12:\"tmpl_created\";s:10:\"1513513137\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/snowboard-site-homepage/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"139\";s:16:\"popularity_index\";s:3:\"261\";s:11:\"trend_index\";s:3:\"220\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:424;a:14:{s:2:\"id\";s:4:\"3632\";s:5:\"title\";s:31:\"Snowboard Site &#8211; Services\";s:9:\"thumbnail\";s:62:\"https://library.elementor.com/wp-content/uploads/2017/12/2.png\";s:12:\"tmpl_created\";s:10:\"1513513171\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/snowboard-site-services/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"140\";s:16:\"popularity_index\";s:3:\"226\";s:11:\"trend_index\";s:3:\"270\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:425;a:14:{s:2:\"id\";s:4:\"3626\";s:5:\"title\";s:30:\"Snowboard Site &#8211; Contact\";s:9:\"thumbnail\";s:62:\"https://library.elementor.com/wp-content/uploads/2017/12/3.png\";s:12:\"tmpl_created\";s:10:\"1513513193\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:112:\"https://library.elementor.com/snowboard-site-contact/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"141\";s:16:\"popularity_index\";s:3:\"229\";s:11:\"trend_index\";s:3:\"269\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:426;a:14:{s:2:\"id\";s:4:\"3153\";s:5:\"title\";s:14:\"Halloween Pack\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/10/halloween.png\";s:12:\"tmpl_created\";s:10:\"1508950132\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/halloween-pack/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"142\";s:16:\"popularity_index\";s:3:\"399\";s:11:\"trend_index\";s:3:\"434\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:427;a:14:{s:2:\"id\";s:4:\"3338\";s:5:\"title\";s:31:\"Black Friday &#8211; Nature Set\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2017/11/black-friday-1.png\";s:12:\"tmpl_created\";s:10:\"1511203351\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/black-friday-nature-set/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"143\";s:16:\"popularity_index\";s:3:\"382\";s:11:\"trend_index\";s:3:\"432\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:428;a:14:{s:2:\"id\";s:4:\"3339\";s:5:\"title\";s:35:\"Black Friday &#8211; Pop-Styled Set\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2017/11/black-friday-2.png\";s:12:\"tmpl_created\";s:10:\"1511203636\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:117:\"https://library.elementor.com/black-friday-pop-styled-set/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"144\";s:16:\"popularity_index\";s:3:\"347\";s:11:\"trend_index\";s:3:\"412\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:429;a:14:{s:2:\"id\";s:4:\"3335\";s:5:\"title\";s:31:\"Black Friday &#8211; Retail Set\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2017/11/black-friday-4.png\";s:12:\"tmpl_created\";s:10:\"1511203246\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/black-friday-retail-set/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"145\";s:16:\"popularity_index\";s:3:\"346\";s:11:\"trend_index\";s:3:\"430\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:430;a:14:{s:2:\"id\";s:4:\"3340\";s:5:\"title\";s:41:\"Black Friday &#8211; Software Product Set\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2017/11/black-friday-3.png\";s:12:\"tmpl_created\";s:10:\"1511203713\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:123:\"https://library.elementor.com/black-friday-software-product-set/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"146\";s:16:\"popularity_index\";s:3:\"338\";s:11:\"trend_index\";s:3:\"407\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:431;a:14:{s:2:\"id\";s:4:\"9425\";s:5:\"title\";s:38:\"Black Friday &#8211;  80&#8217;s style\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2018/11/unnamed-file.png\";s:12:\"tmpl_created\";s:10:\"1542901234\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:112:\"https://library.elementor.com/black-friday-80s-style/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"147\";s:16:\"popularity_index\";s:3:\"355\";s:11:\"trend_index\";s:3:\"279\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:432;a:14:{s:2:\"id\";s:4:\"3517\";s:5:\"title\";s:27:\"Christmas &#8211; Gift Shop\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/12/XmasThumb.png\";s:12:\"tmpl_created\";s:10:\"1513877937\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/christmas-gift-shop/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"148\";s:16:\"popularity_index\";s:3:\"381\";s:11:\"trend_index\";s:3:\"211\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:433;a:14:{s:2:\"id\";s:4:\"3734\";s:5:\"title\";s:28:\"Christmas &#8211; Car Agency\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2017/12/cover-lib-v3.png\";s:12:\"tmpl_created\";s:10:\"1514197794\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/christmas-car-agency/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"149\";s:16:\"popularity_index\";s:3:\"388\";s:11:\"trend_index\";s:3:\"247\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:434;a:14:{s:2:\"id\";s:4:\"3764\";s:5:\"title\";s:33:\"Christmas &#8211; Interior Design\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2017/12/cover-lib-v6.png\";s:12:\"tmpl_created\";s:10:\"1514198234\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/christmas-interior-design/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"150\";s:16:\"popularity_index\";s:3:\"375\";s:11:\"trend_index\";s:3:\"344\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:435;a:14:{s:2:\"id\";s:4:\"3565\";s:5:\"title\";s:27:\"Christmas &#8211; Tree Shop\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/12/XmasTreeThumb.png\";s:12:\"tmpl_created\";s:10:\"1514204382\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/christmas-tree-shop/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"151\";s:16:\"popularity_index\";s:3:\"356\";s:11:\"trend_index\";s:3:\"364\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:436;a:14:{s:2:\"id\";s:4:\"3862\";s:5:\"title\";s:35:\"Christmas &#8211; Design Conference\";s:9:\"thumbnail\";s:63:\"https://library.elementor.com/wp-content/uploads/2017/12/q1.png\";s:12:\"tmpl_created\";s:10:\"1514206745\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:117:\"https://library.elementor.com/christmas-design-conference/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"152\";s:16:\"popularity_index\";s:3:\"322\";s:11:\"trend_index\";s:3:\"296\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:437;a:14:{s:2:\"id\";s:4:\"3777\";s:5:\"title\";s:39:\"Christmas &#8211; Snowboard Competition\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2017/12/cover-lib-v7.png\";s:12:\"tmpl_created\";s:10:\"1514205420\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:121:\"https://library.elementor.com/christmas-snowboard-competition/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"153\";s:16:\"popularity_index\";s:3:\"345\";s:11:\"trend_index\";s:3:\"285\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:438;a:14:{s:2:\"id\";s:3:\"420\";s:5:\"title\";s:11:\"Hero UI Kit\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2016/09/library-ui-kit-cover.png\";s:12:\"tmpl_created\";s:10:\"1475067229\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:101:\"https://library.elementor.com/hero-ui-kit/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:4:\"page\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"154\";s:16:\"popularity_index\";s:2:\"14\";s:11:\"trend_index\";s:2:\"21\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(444, 'elementor_remote_info_feed_data', 'a:3:{i:0;a:5:{s:5:\"title\";s:37:\"Jupiter Theme Rebuilt Using Elementor\";s:7:\"excerpt\";s:124:\"Jupiter Theme joins the Elementor family and releases its new Jupiter X theme, rebuilt from the ground up using Elementor.\r\n\";s:7:\"created\";s:10:\"1544630452\";s:5:\"badge\";s:0:\"\";s:3:\"url\";s:109:\"https://elementor.com/blog/jupiter-x/?utm_source=wp-overview-widget&utm_medium=wp-dash&utm_campaign=news-feed\";}i:1;a:5:{s:5:\"title\";s:57:\"Social Media - The Secret Sauce for Web Design in 2019​\";s:7:\"excerpt\";s:189:\"It\'s time we designers admit that social media influences our work. Finally, browsing through my Facebook wall is something I don\'t have to hide from my boss anymore! (insert emoji here)​\";s:7:\"created\";s:10:\"1544520824\";s:5:\"badge\";s:0:\"\";s:3:\"url\";s:123:\"https://elementor.com/blog/social-media-web-design/?utm_source=wp-overview-widget&utm_medium=wp-dash&utm_campaign=news-feed\";}i:2;a:5:{s:5:\"title\";s:62:\"Introducing Action Links: Connect With Your Clients Seamlessly\";s:7:\"excerpt\";s:134:\"This week, we\'re releasing useful features that will help you connect with your site visitors, as well as analyze and track user data.\";s:7:\"created\";s:10:\"1543932850\";s:5:\"badge\";s:3:\"New\";s:3:\"url\";s:124:\"https://elementor.com/blog/introducing-action-links/?utm_source=wp-overview-widget&utm_medium=wp-dash&utm_campaign=news-feed\";}}', 'no'),
(455, 'wcj_check_site_key_cron_time_last_run', '1545254466', 'yes'),
(456, 'wcj_site_key_status', 'a:3:{s:15:\"server_response\";a:0:{}s:11:\"client_data\";s:14:\"EMPTY_SITE_KEY\";s:12:\"time_checked\";i:1545254466;}', 'yes'),
(457, 'wcj_download_tcpdf_fonts_hook_timestamp', '1545338279', 'yes'),
(458, 'wcj_invoicing_fonts_version_timestamp', '1545338279', 'yes'),
(459, 'wcj_invoicing_fonts_version', '2.9.0', 'yes'),
(460, 'nav_menu_roles_db_version', '1.9.2', 'yes'),
(462, 'woocommerce_product_type', 'both', 'yes'),
(463, 'woocommerce_allow_tracking', 'no', 'yes'),
(465, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}', 'yes'),
(466, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(467, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(468, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(489, '_transient_shipping-transient-version', '1543927964', 'yes'),
(498, '_transient_timeout_wc_shipping_method_count_1_1543927964', '1546520360', 'no'),
(499, '_transient_wc_shipping_method_count_1_1543927964', '2', 'no'),
(508, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(528, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(545, 'user_role_editor', 'a:1:{s:11:\"ure_version\";s:4:\"4.47\";}', 'yes'),
(546, 'wp_backup_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:93:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'no'),
(547, 'ure_tasks_queue', 'a:0:{}', 'yes'),
(552, 'new_admin_email', 'oleksandr.iaremii@outlook.com', 'yes'),
(571, '_transient_product_query-transient-version', '1545244953', 'yes'),
(572, '_transient_product-transient-version', '1545244953', 'yes'),
(578, '_transient_wc_attribute_taxonomies', 'a:2:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:5:\"color\";s:15:\"attribute_label\";s:5:\"Color\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:4:\"size\";s:15:\"attribute_label\";s:4:\"Size\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(584, 'pa_size_children', 'a:0:{}', 'yes'),
(596, '_transient_timeout_wc_var_prices_33', '1546693299', 'no'),
(597, '_transient_wc_var_prices_33', '{\"version\":\"1544101293\",\"93f13f149670c929678a13b4e544dcf4\":{\"price\":[],\"regular_price\":[],\"sale_price\":[]}}', 'no'),
(635, 'wcj_product_by_user_role_visibility', 'yes', 'yes'),
(636, 'wcj_product_by_user_role_purchasable', 'no', 'yes'),
(637, 'wcj_product_by_user_role_query', 'no', 'yes'),
(638, 'wcj_product_by_user_role_query_widgets', 'no', 'yes'),
(639, 'wcj_product_by_user_role_visibility_method', 'visible', 'yes'),
(640, 'wcj_product_by_user_role_select_style', 'chosen_select', 'yes'),
(641, 'wcj_product_by_user_role_admin_quick_edit', 'no', 'yes'),
(642, 'wcj_product_by_user_role_admin_bulk_edit', 'no', 'yes'),
(643, 'wcj_product_by_user_role_admin_add_column', 'no', 'yes'),
(645, 'wcj_product_by_user_desc_enabled', 'yes', 'yes'),
(646, 'wcj_product_by_user_short_desc_enabled', 'yes', 'yes'),
(647, 'wcj_product_by_user_image_enabled', 'yes', 'yes'),
(648, 'wcj_product_by_user_regular_price_enabled', 'yes', 'yes'),
(649, 'wcj_product_by_user_sale_price_enabled', 'no', 'yes'),
(650, 'wcj_product_by_user_external_url_enabled', 'no', 'yes'),
(651, 'wcj_product_by_user_cats_enabled', 'yes', 'yes'),
(652, 'wcj_product_by_user_tags_enabled', 'yes', 'yes'),
(653, 'wcj_product_by_user_desc_required', 'no', 'yes'),
(654, 'wcj_product_by_user_short_desc_required', 'yes', 'yes'),
(655, 'wcj_product_by_user_image_required', 'yes', 'yes'),
(656, 'wcj_product_by_user_regular_price_required', 'no', 'yes'),
(657, 'wcj_product_by_user_sale_price_required', 'no', 'yes'),
(658, 'wcj_product_by_user_external_url_required', 'no', 'yes'),
(659, 'wcj_product_by_user_cats_required', 'yes', 'yes'),
(660, 'wcj_product_by_user_tags_required', 'yes', 'yes'),
(661, 'wcj_product_by_user_price_step', '2', 'yes'),
(662, 'wcj_product_by_user_user_visibility', 'a:0:{}', 'yes'),
(663, 'wcj_product_by_user_product_type', 'simple', 'yes'),
(664, 'wcj_product_by_user_status', 'pending', 'yes'),
(665, 'wcj_product_by_user_require_unique_title', 'no', 'yes'),
(666, 'wcj_product_by_user_add_to_my_account', 'yes', 'yes'),
(667, 'wcj_product_by_user_message_product_successfully_added', '\"%product_title%\" successfully added!', 'yes'),
(668, 'wcj_product_by_user_message_product_successfully_edited', '\"%product_title%\" successfully edited!', 'yes'),
(669, 'wcj_product_by_user_custom_taxonomies_total', '1', 'yes'),
(670, 'wcj_product_by_user_custom_taxonomy_1_enabled', 'no', 'yes'),
(671, 'wcj_product_by_user_custom_taxonomy_1_required', 'no', 'yes'),
(672, 'wcj_product_by_user_custom_taxonomy_1_id', '', 'yes'),
(673, 'wcj_product_by_user_custom_taxonomy_1_title', '', 'yes'),
(688, '_transient_orders-transient-version', '1544184749', 'yes'),
(689, '_transient_timeout_wc_cbp_c67237cf28d5d27439005a4dfec78d51', '1546526678', 'no'),
(690, '_transient_wc_cbp_c67237cf28d5d27439005a4dfec78d51', 'a:0:{}', 'no'),
(767, 'commentAttachment', 'a:16:{s:25:\"commentAttachmentPosition\";s:6:\"before\";s:22:\"commentAttachmentTitle\";s:0:\"\";s:24:\"commentAttachmentMaxSize\";s:3:\"100\";s:21:\"commentAttachmentBind\";s:1:\"1\";s:27:\"commentAttachmentThumbTitle\";s:0:\"\";s:26:\"commentAttachmentAPosition\";s:5:\"after\";s:21:\"commentAttachmentLink\";s:1:\"1\";s:22:\"commentAttachmentThumb\";s:1:\"1\";s:26:\"commentAttachmentThumbSize\";s:9:\"thumbnail\";s:23:\"commentAttachmentPlayer\";s:1:\"1\";s:23:\"commentAttachmentDelete\";s:1:\"1\";s:20:\"commentAttachmentJPG\";s:1:\"1\";s:20:\"commentAttachmentGIF\";s:1:\"1\";s:20:\"commentAttachmentPNG\";s:1:\"1\";s:20:\"commentAttachmentMP4\";s:1:\"1\";s:20:\"commentAttachmentMOV\";s:1:\"1\";}', 'yes'),
(1080, '_transient_timeout_wc_shipping_method_count_0_1543927964', '1546596235', 'no'),
(1081, '_transient_wc_shipping_method_count_0_1543927964', '2', 'no'),
(1096, 'category_children', 'a:0:{}', 'yes'),
(1099, 'loco_settings', 'a:3:{s:1:\"c\";s:18:\"Loco_data_Settings\";s:1:\"v\";i:0;s:1:\"d\";a:12:{s:7:\"version\";s:5:\"2.2.0\";s:8:\"gen_hash\";b:0;s:9:\"use_fuzzy\";b:1;s:11:\"num_backups\";i:1;s:9:\"pot_alias\";a:3:{i:0;s:10:\"default.po\";i:1;s:8:\"en_US.po\";i:2;s:5:\"en.po\";}s:9:\"php_alias\";a:2:{i:0;s:3:\"php\";i:1;s:4:\"twig\";}s:9:\"jsx_alias\";a:0:{}s:10:\"fs_persist\";b:0;s:10:\"fs_protect\";i:1;s:12:\"max_php_size\";s:4:\"100K\";s:11:\"po_utf8_bom\";b:0;s:8:\"po_width\";s:2:\"79\";}}', 'yes'),
(1104, '_transient_loco_po_02b0d352a4fd85659ca2bf0a9db4d30c', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:18:\"languages/pl_PL.po\";s:5:\"bytes\";i:445307;s:5:\"mtime\";i:1543487437;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:2665;s:1:\"p\";i:2665;s:1:\"f\";i:0;}}}', 'yes'),
(1105, '_transient_loco_po_732adf1dff7e7fe57d19a14d1173a599', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:24:\"languages/admin-pl_PL.po\";s:5:\"bytes\";i:567009;s:5:\"mtime\";i:1543487437;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:2647;s:1:\"p\";i:2647;s:1:\"f\";i:0;}}}', 'yes'),
(1106, '_transient_loco_po_55667e470c3896a42b6e1cfa8d139f55', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:32:\"languages/admin-network-pl_PL.po\";s:5:\"bytes\";i:63954;s:5:\"mtime\";i:1543487437;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:311;s:1:\"p\";i:311;s:1:\"f\";i:0;}}}', 'yes'),
(1107, '_transient_loco_po_67b657a54f51db963e6057b26715ae0b', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"languages/continents-cities-pl_PL.po\";s:5:\"bytes\";i:44226;s:5:\"mtime\";i:1543487437;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:524;s:1:\"p\";i:524;s:1:\"f\";i:0;}}}', 'yes'),
(1108, '_transient_loco_po_66b39dbb7fbcf03ab3c003361c19c392', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"languages/plugins/elementor-pl_PL.po\";s:5:\"bytes\";i:126746;s:5:\"mtime\";i:1543869033;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:858;s:1:\"p\";i:858;s:1:\"f\";i:0;}}}', 'yes'),
(1109, '_transient_loco_po_1bbef8914ba5397e5931bc422efe9fd1', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:41:\"languages/plugins/nav-menu-roles-pl_PL.po\";s:5:\"bytes\";i:8002;s:5:\"mtime\";i:1543869209;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:47;s:1:\"p\";i:47;s:1:\"f\";i:0;}}}', 'yes'),
(1110, '_transient_loco_po_32d7ed6c08d2e76c37f05a934443fd2d', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:38:\"languages/plugins/woocommerce-pl_PL.po\";s:5:\"bytes\";i:957181;s:5:\"mtime\";i:1544100697;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:5638;s:1:\"p\";i:5638;s:1:\"f\";i:0;}}}', 'yes'),
(1111, '_transient_loco_po_01bc8129e3e07ca583fa6ae71cb7a0ac', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:33:\"themes/oceanwp/languages/pl_PL.po\";s:5:\"bytes\";i:130256;s:5:\"mtime\";i:1544006621;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:1035;s:1:\"p\";i:670;s:1:\"f\";i:71;}}}', 'yes'),
(1112, '_transient_loco_po_fd03c441080e9212420e4a55b0029bf2', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:39:\"languages/themes/twentyfifteen-pl_PL.po\";s:5:\"bytes\";i:9610;s:5:\"mtime\";i:1543487437;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:66;s:1:\"p\";i:66;s:1:\"f\";i:0;}}}', 'yes'),
(1113, '_transient_loco_po_5993414a1af123b0df4b23b5282a130a', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:41:\"languages/themes/twentyseventeen-pl_PL.po\";s:5:\"bytes\";i:9995;s:5:\"mtime\";i:1543487437;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:68;s:1:\"p\";i:68;s:1:\"f\";i:0;}}}', 'yes'),
(1114, '_transient_loco_po_733936a4b11e8a6162a3071d329a5265', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:39:\"languages/themes/twentysixteen-pl_PL.po\";s:5:\"bytes\";i:10001;s:5:\"mtime\";i:1543487437;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:70;s:1:\"p\";i:70;s:1:\"f\";i:0;}}}', 'yes'),
(1122, 'loco_recent', 'a:3:{s:1:\"c\";s:21:\"Loco_data_RecentItems\";s:1:\"v\";i:0;s:1:\"d\";a:1:{s:6:\"bundle\";a:3:{s:13:\"theme.oceanwp\";i:1544006621;s:34:\"plugin.woocommerce/woocommerce.php\";i:1544027960;s:68:\"plugin.booster-plus-for-woocommerce/booster-plus-for-woocommerce.php\";i:1544028103;}}}', 'no'),
(1159, 'product_cat_children', 'a:1:{i:31;a:6:{i:0;i:32;i:1;i:33;i:2;i:34;i:3;i:35;i:4;i:36;i:5;i:38;}}', 'yes'),
(1208, 'widget_wp_categories_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1216, 'widget_category-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1362, '_transient_loco_po_245425385baae1d2aefd0919cb63a515', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"themes/oceanwp/languages/oceanwp.pot\";s:5:\"bytes\";i:123918;s:5:\"mtime\";i:1543868684;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:1093;s:1:\"p\";i:0;s:1:\"f\";i:0;}}}', 'yes'),
(1363, '_transient_loco_po_a02bf6a12f89c5254cbe4de4ca9b70bb', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:33:\"themes/oceanwp/languages/da_DK.po\";s:5:\"bytes\";i:148315;s:5:\"mtime\";i:1543868684;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:1094;s:1:\"p\";i:1093;s:1:\"f\";i:2;}}}', 'yes'),
(1364, '_transient_loco_po_76752ac0df8680c30c46fae6b136501f', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:33:\"themes/oceanwp/languages/de_DE.po\";s:5:\"bytes\";i:149477;s:5:\"mtime\";i:1543868684;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:918;s:1:\"p\";i:815;s:1:\"f\";i:262;}}}', 'yes'),
(1365, '_transient_loco_po_bb8049aa6f01a34b00f67b0183226fe3', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:33:\"themes/oceanwp/languages/es_ES.po\";s:5:\"bytes\";i:121729;s:5:\"mtime\";i:1543868684;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:909;s:1:\"p\";i:904;s:1:\"f\";i:9;}}}', 'yes'),
(1366, '_transient_loco_po_34ce9fbdaf08a1c2a39765095d95d83e', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:33:\"themes/oceanwp/languages/fr_FR.po\";s:5:\"bytes\";i:183798;s:5:\"mtime\";i:1543868684;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:1093;s:1:\"p\";i:1008;s:1:\"f\";i:145;}}}', 'yes'),
(1367, '_transient_loco_po_b7b14ea51d7274f5ed43ca4e5d3b3e97', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:33:\"themes/oceanwp/languages/nb_NO.po\";s:5:\"bytes\";i:151309;s:5:\"mtime\";i:1543868684;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:918;s:1:\"p\";i:772;s:1:\"f\";i:224;}}}', 'yes'),
(1368, '_transient_loco_po_6437853fb80667269613d0a58280c8bc', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:33:\"themes/oceanwp/languages/nl_NL.po\";s:5:\"bytes\";i:149094;s:5:\"mtime\";i:1543868684;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:909;s:1:\"p\";i:747;s:1:\"f\";i:281;}}}', 'yes'),
(1369, '_transient_loco_po_318de112dbf5d1610df580d557209292', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:33:\"themes/oceanwp/languages/pt_BR.po\";s:5:\"bytes\";i:140007;s:5:\"mtime\";i:1543868684;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:1009;s:1:\"p\";i:887;s:1:\"f\";i:239;}}}', 'yes'),
(1370, '_transient_loco_po_437622fe95a88ee9c7bf2fb150d4131d', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:33:\"themes/oceanwp/languages/sv_SE.po\";s:5:\"bytes\";i:149255;s:5:\"mtime\";i:1543868684;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:1093;s:1:\"p\";i:1065;s:1:\"f\";i:0;}}}', 'yes'),
(1371, '_transient_loco_po_be794ae1c7f40dcd92b56cb3b7484696', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:33:\"themes/oceanwp/languages/tr_TR.po\";s:5:\"bytes\";i:140024;s:5:\"mtime\";i:1543868684;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:909;s:1:\"p\";i:771;s:1:\"f\";i:171;}}}', 'yes'),
(1372, '_transient_loco_po_74404174979adeea796333332d541d4c', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:33:\"themes/oceanwp/languages/zh_CN.po\";s:5:\"bytes\";i:126004;s:5:\"mtime\";i:1543868684;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:1009;s:1:\"p\";i:918;s:1:\"f\";i:0;}}}', 'yes'),
(1373, '_transient_loco_po_479e494db9ea143aecb48ed5d418405d', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:33:\"themes/oceanwp/languages/zh_ZH.po\";s:5:\"bytes\";i:126388;s:5:\"mtime\";i:1543868684;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:1009;s:1:\"p\";i:933;s:1:\"f\";i:0;}}}', 'yes'),
(1378, '_transient_loco_po_2e5a702bee3e487469c27fd5d56c402f', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:51:\"plugins/loco-translate/languages/loco-translate.pot\";s:5:\"bytes\";i:42818;s:5:\"mtime\";i:1543869101;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:379;s:1:\"p\";i:0;s:1:\"f\";i:0;}}}', 'yes'),
(1380, '_transient_loco_po_33a49284a3d25ca28798502443f14393', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:66:\"plugins/booster-plus-for-woocommerce/langs/woocommerce-jetpack.pot\";s:5:\"bytes\";i:499866;s:5:\"mtime\";i:1543869397;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:3654;s:1:\"p\";i:0;s:1:\"f\";i:0;}}}', 'yes'),
(1381, '_transient_loco_po_cae2f2a9b8a42b8911b6611d22e7584c', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:68:\"plugins/booster-plus-for-woocommerce/langs/woocommerce-jetpack-az.mo\";s:5:\"bytes\";i:11452;s:5:\"mtime\";i:1543869397;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:305;s:1:\"p\";i:305;s:1:\"f\";i:0;}}}', 'yes'),
(1382, '_transient_loco_po_c22a37c4b698da0d881efa5a27172c09', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:71:\"plugins/booster-plus-for-woocommerce/langs/woocommerce-jetpack-de_DE.mo\";s:5:\"bytes\";i:189526;s:5:\"mtime\";i:1543869397;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:2253;s:1:\"p\";i:2253;s:1:\"f\";i:0;}}}', 'yes'),
(1383, '_transient_loco_po_8c0658871c3be260fc7eaf845f4ff040', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:71:\"plugins/booster-plus-for-woocommerce/langs/woocommerce-jetpack-es_ES.mo\";s:5:\"bytes\";i:35897;s:5:\"mtime\";i:1543869397;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:465;s:1:\"p\";i:465;s:1:\"f\";i:0;}}}', 'yes'),
(1384, '_transient_loco_po_781a8cac002d5b83dd2bde2c3001dfa8', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:71:\"plugins/booster-plus-for-woocommerce/langs/woocommerce-jetpack-fr_FR.mo\";s:5:\"bytes\";i:46186;s:5:\"mtime\";i:1543869397;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:474;s:1:\"p\";i:474;s:1:\"f\";i:0;}}}', 'yes'),
(1385, '_transient_loco_po_38f41d4280d4fc976aa797900090c2c6', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:71:\"plugins/booster-plus-for-woocommerce/langs/woocommerce-jetpack-is_IS.mo\";s:5:\"bytes\";i:24749;s:5:\"mtime\";i:1543869397;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:578;s:1:\"p\";i:578;s:1:\"f\";i:0;}}}', 'yes'),
(1386, '_transient_loco_po_043af52a550146cca25cccde57574096', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:71:\"plugins/booster-plus-for-woocommerce/langs/woocommerce-jetpack-it_IT.mo\";s:5:\"bytes\";i:24356;s:5:\"mtime\";i:1543869397;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:477;s:1:\"p\";i:477;s:1:\"f\";i:0;}}}', 'yes'),
(1387, '_transient_loco_po_612fbecd63875d151f0f2b939dabc7b5', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:68:\"plugins/booster-plus-for-woocommerce/langs/woocommerce-jetpack-ja.mo\";s:5:\"bytes\";i:33174;s:5:\"mtime\";i:1543869397;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:686;s:1:\"p\";i:686;s:1:\"f\";i:0;}}}', 'yes'),
(1388, '_transient_loco_po_272d1e87dad392646298399ec486eb15', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:71:\"plugins/booster-plus-for-woocommerce/langs/woocommerce-jetpack-nl_NL.mo\";s:5:\"bytes\";i:68749;s:5:\"mtime\";i:1543869397;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:897;s:1:\"p\";i:897;s:1:\"f\";i:0;}}}', 'yes'),
(1389, '_transient_loco_po_84e6322719b4ca9b8fac330794655050', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:71:\"plugins/booster-plus-for-woocommerce/langs/woocommerce-jetpack-pt_BR.mo\";s:5:\"bytes\";i:34395;s:5:\"mtime\";i:1543869397;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:765;s:1:\"p\";i:765;s:1:\"f\";i:0;}}}', 'yes'),
(1390, '_transient_loco_po_dbb474c5407d5a226dc90a8da66a634d', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:71:\"plugins/booster-plus-for-woocommerce/langs/woocommerce-jetpack-ro_RO.mo\";s:5:\"bytes\";i:39330;s:5:\"mtime\";i:1543869397;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:853;s:1:\"p\";i:853;s:1:\"f\";i:0;}}}', 'yes'),
(1391, '_transient_loco_po_18814f0988dcebd13b7416ee6abffd36', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:71:\"plugins/booster-plus-for-woocommerce/langs/woocommerce-jetpack-ru_RU.mo\";s:5:\"bytes\";i:50161;s:5:\"mtime\";i:1543869397;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:373;s:1:\"p\";i:373;s:1:\"f\";i:0;}}}', 'yes'),
(1392, '_transient_loco_po_ff84900b5d95142003fb4446f512cd02', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:71:\"plugins/booster-plus-for-woocommerce/langs/woocommerce-jetpack-sv_SE.mo\";s:5:\"bytes\";i:19844;s:5:\"mtime\";i:1543869397;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:446;s:1:\"p\";i:446;s:1:\"f\";i:0;}}}', 'yes'),
(1393, '_transient_loco_po_0373d69706d141ea5bfa2ce656129ff0', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:117:\"plugins/booster-plus-for-woocommerce/includes/plus/lib/plugin-update-checker/languages/plugin-update-checker-fr_FR.po\";s:5:\"bytes\";i:1214;s:5:\"mtime\";i:1543869397;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:5;s:1:\"p\";i:5;s:1:\"f\";i:0;}}}', 'yes'),
(1394, '_transient_loco_po_3e340f26a8dead4c1e0e3ac527e45acb', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:117:\"plugins/booster-plus-for-woocommerce/includes/plus/lib/plugin-update-checker/languages/plugin-update-checker-hu_HU.po\";s:5:\"bytes\";i:1256;s:5:\"mtime\";i:1543869397;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:5;s:1:\"p\";i:5;s:1:\"f\";i:0;}}}', 'yes'),
(1395, '_transient_loco_po_042e08ae47df5a36c95b51fdae0edfc1', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:112:\"plugins/booster-plus-for-woocommerce/includes/plus/lib/plugin-update-checker/languages/plugin-update-checker.pot\";s:5:\"bytes\";i:1033;s:5:\"mtime\";i:1543869397;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:5;s:1:\"p\";i:0;s:1:\"f\";i:0;}}}', 'yes'),
(1397, '_transient_loco_po_5f89f4a1b28d76a9c25e34a6b0daf33c', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:50:\"plugins/woocommerce/i18n/languages/woocommerce.pot\";s:5:\"bytes\";i:771788;s:5:\"mtime\";i:1543869342;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:5637;s:1:\"p\";i:0;s:1:\"f\";i:0;}}}', 'yes'),
(1406, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-5.0.2.zip\";s:6:\"locale\";s:5:\"pl_PL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-5.0.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.2\";s:7:\"version\";s:5:\"5.0.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.2\";s:7:\"version\";s:5:\"5.0.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-5.0.2.zip\";s:6:\"locale\";s:5:\"pl_PL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-5.0.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.2\";s:7:\"version\";s:5:\"5.0.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-4.9.9.zip\";s:6:\"locale\";s:5:\"pl_PL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-4.9.9.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.9\";s:7:\"version\";s:5:\"4.9.9\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1545331911;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(1548, 'gamipress_settings', 'a:16:{s:12:\"minimum_role\";s:14:\"manage_options\";s:17:\"points_image_size\";a:2:{s:5:\"width\";i:50;s:6:\"height\";i:50;}s:22:\"achievement_image_size\";a:2:{s:5:\"width\";i:100;s:6:\"height\";i:100;}s:15:\"rank_image_size\";a:2:{s:5:\"width\";i:100;s:6:\"height\";i:100;}s:32:\"achievement_earned_email_subject\";s:84:\"[{site_title}] {user_first}, you unlocked the {achievement_type} {achievement_title}\";s:32:\"achievement_earned_email_content\";s:183:\"<h2>Congratulations {user_first}!</h2>\n{achievement_image}\nYou unlocked the {achievement_type} {achievement_title} by completing the following steps:\n{achievement_steps}\n\nBest regards\";s:28:\"step_completed_email_subject\";s:94:\"[{site_title}] {user_first}, you complete a step of the {achievement_type} {achievement_title}\";s:28:\"step_completed_email_content\";s:260:\"<h2>Congratulations {user_first}!</h2>\n{achievement_image}\nYou completed the step \"{label}\" of the {achievement_type} {achievement_title}!\n\nYou need to complete the following steps to completely unlock this {achievement_type}:\n{achievement_steps}\n\nBest regards\";s:36:\"points_award_completed_email_subject\";s:59:\"[{site_title}] {user_first}, you got {points} {points_type}\";s:36:\"points_award_completed_email_content\";s:161:\"<h2>Congratulations {user_first}!</h2>\nYou got {points} {points_type} for completing \"{label}\".\nYour new {points_type} balance is:\n{points_balance}\n\nBest regards\";s:25:\"rank_earned_email_subject\";s:69:\"[{site_title}] {user_first}, you reached the {rank_type} {rank_title}\";s:25:\"rank_earned_email_content\";s:168:\"<h2>Congratulations {user_first}!</h2>\n{rank_image}\nYou reached the {rank_type} {rank_title} by completing the following requirements:\n{rank_requirements}\n\nBest regards\";s:40:\"rank_requirement_completed_email_subject\";s:87:\"[{site_title}] {user_first}, you complete a requirement of the {rank_type} {rank_title}\";s:40:\"rank_requirement_completed_email_content\";s:245:\"<h2>Congratulations {user_first}!</h2>\n{rank_image}\nYou completed the requirement \"{label}\" of the {rank_type} {rank_title}!\n\nYou need to complete the following requirements to completely reach this {rank_type}:\n{rank_requirements}\n\nBest regards\";s:37:\"points_deduct_completed_email_subject\";s:60:\"[{site_title}] {user_first}, you lost {points} {points_type}\";s:37:\"points_deduct_completed_email_content\";s:139:\"<h2>Ops {user_first}!</h2>\nYou lost {points} {points_type} for \"{label}\".\nYour new {points_type} balance is:\n{points_balance}\n\nBest regards\";}', 'yes'),
(1549, 'gamipress_install_date', '2018-12-06 14:00:19', 'yes'),
(1550, 'widget_gamipress_achievement_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1551, 'widget_gamipress_achievements_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1552, 'widget_gamipress_earnings_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1553, 'widget_gamipress_logs_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1554, 'widget_gamipress_points_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1555, 'widget_gamipress_points_types_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1556, 'widget_gamipress_rank_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1557, 'widget_gamipress_ranks_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1558, 'widget_gamipress_user_rank_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1562, 'gamipress_version', '1.5.1', 'yes'),
(1563, 'wpdb_gamipress_user_earnings_version', '2', 'yes'),
(1564, 'wpdb_gamipress_user_earnings_meta_version', '1', 'yes'),
(1565, 'wpdb_gamipress_logs_version', '3', 'yes'),
(1566, 'wpdb_gamipress_logs_meta_version', '1', 'yes'),
(1568, 'gamipress_cache_gamipress_site_visit_triggered_requirements', 'a:0:{}', 'yes'),
(1569, 'gamipress_cache_gamipress_post_visit_triggered_requirements', 'a:0:{}', 'yes'),
(1570, 'gamipress_cache_gamipress_specific_post_visit_triggered_requirements', 'a:0:{}', 'yes'),
(1579, 'gamipress_cache_gamipress_login_triggered_requirements', 'a:0:{}', 'yes'),
(1622, 'gamipress_cache_gamipress_specific_new_comment_triggered_requirements', 'a:0:{}', 'yes'),
(1623, 'gamipress_cache_gamipress_new_comment_triggered_requirements', 'a:0:{}', 'yes'),
(1624, 'gamipress_cache_gamipress_user_specific_post_comment_triggered_requirements', 'a:0:{}', 'yes'),
(1625, 'gamipress_cache_gamipress_user_post_comment_triggered_requirements', 'a:0:{}', 'yes'),
(1637, '_transient_loco_po_8cb1f1181f6ed43b7d15a1d7bb9bbe71', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:51:\"languages/loco/plugins/woocommerce-jetpack-pl_PL.po\";s:5:\"bytes\";i:500394;s:5:\"mtime\";i:1544028103;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:3653;s:1:\"p\";i:2;s:1:\"f\";i:0;}}}', 'yes'),
(1871, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"6\";s:12:\"post-trashed\";s:1:\"5\";s:14:\"total_comments\";i:6;s:3:\"all\";i:6;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;}', 'yes'),
(1902, '_transient_timeout_external_ip_address_127.0.0.1', '1545848921', 'no'),
(1903, '_transient_external_ip_address_127.0.0.1', '5.184.14.132', 'no'),
(1910, 'gamipress_cache_gamipress_delete_post_triggered_requirements', 'a:0:{}', 'yes'),
(1918, '_site_transient_timeout_browser_0ac1f9240df96b3586c220faef490724', '1545849445', 'no'),
(1919, '_site_transient_browser_0ac1f9240df96b3586c220faef490724', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"71.0.3578.98\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1934, '_transient_timeout_plugin_slugs', '1545336387', 'no'),
(1935, '_transient_plugin_slugs', 'a:7:{i:0;s:61:\"booster-plus-for-woocommerce/booster-plus-for-woocommerce.php\";i:1;s:41:\"comment-attachment/comment-attachment.php\";i:2;s:23:\"elementor/elementor.php\";i:3;s:23:\"loco-translate/loco.php\";i:4;s:33:\"nav-menu-roles/nav-menu-roles.php\";i:5;s:37:\"user-role-editor/user-role-editor.php\";i:6;s:27:\"woocommerce/woocommerce.php\";}', 'no'),
(1936, 'gamipress_hide_review_notice', 'yes', 'yes'),
(1951, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:6;s:3:\"all\";i:6;s:8:\"approved\";s:1:\"6\";s:12:\"post-trashed\";s:1:\"5\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;}', 'yes'),
(1953, '_transient_timeout_wc_term_counts', '1547836960', 'no'),
(1954, '_transient_wc_term_counts', 'a:27:{i:43;s:1:\"1\";i:15;s:1:\"1\";i:40;s:1:\"3\";i:39;s:1:\"1\";i:41;s:1:\"2\";i:31;s:1:\"5\";i:36;s:1:\"2\";i:32;s:0:\"\";i:33;s:1:\"1\";i:38;s:1:\"2\";i:35;s:0:\"\";i:34;s:1:\"1\";i:21;s:1:\"3\";i:37;s:1:\"2\";i:42;s:0:\"\";i:47;s:1:\"4\";i:44;s:1:\"3\";i:45;s:1:\"3\";i:49;s:1:\"3\";i:50;s:1:\"2\";i:52;s:1:\"2\";i:46;s:1:\"1\";i:48;s:1:\"1\";i:51;s:1:\"1\";i:53;s:1:\"1\";i:54;s:1:\"1\";i:55;s:1:\"1\";}', 'no'),
(2037, '_site_transient_timeout_theme_roots', '1545333712', 'no'),
(2038, '_site_transient_theme_roots', 'a:4:{s:7:\"oceanwp\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(2039, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1545331914;s:7:\"checked\";a:4:{s:7:\"oceanwp\";s:6:\"1.5.32\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.2.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.9.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.7.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(2040, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1545331915;s:7:\"checked\";a:7:{s:61:\"booster-plus-for-woocommerce/booster-plus-for-woocommerce.php\";s:5:\"3.6.1\";s:41:\"comment-attachment/comment-attachment.php\";s:7:\"1.5.8.1\";s:23:\"elementor/elementor.php\";s:5:\"2.3.4\";s:23:\"loco-translate/loco.php\";s:5:\"2.2.0\";s:33:\"nav-menu-roles/nav-menu-roles.php\";s:5:\"1.9.2\";s:37:\"user-role-editor/user-role-editor.php\";s:4:\"4.47\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.5.2\";}s:8:\"response\";a:2:{s:23:\"elementor/elementor.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:23:\"w.org/plugins/elementor\";s:4:\"slug\";s:9:\"elementor\";s:6:\"plugin\";s:23:\"elementor/elementor.php\";s:11:\"new_version\";s:5:\"2.3.8\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/elementor/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/elementor.2.3.8.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/elementor/assets/icon-256x256.png?rev=1427768\";s:2:\"1x\";s:54:\"https://ps.w.org/elementor/assets/icon.svg?rev=1426809\";s:3:\"svg\";s:54:\"https://ps.w.org/elementor/assets/icon.svg?rev=1426809\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/elementor/assets/banner-1544x500.png?rev=1475479\";s:2:\"1x\";s:64:\"https://ps.w.org/elementor/assets/banner-772x250.png?rev=1475479\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.2\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.5.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:41:\"comment-attachment/comment-attachment.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/comment-attachment\";s:4:\"slug\";s:18:\"comment-attachment\";s:6:\"plugin\";s:41:\"comment-attachment/comment-attachment.php\";s:11:\"new_version\";s:7:\"1.5.8.1\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/comment-attachment/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/comment-attachment.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/comment-attachment/assets/icon-256x256.png?rev=1075636\";s:2:\"1x\";s:63:\"https://ps.w.org/comment-attachment/assets/icon.svg?rev=1075636\";s:3:\"svg\";s:63:\"https://ps.w.org/comment-attachment/assets/icon.svg?rev=1075636\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/comment-attachment/assets/banner-772x250.png?rev=1075646\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"loco-translate/loco.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/loco-translate\";s:4:\"slug\";s:14:\"loco-translate\";s:6:\"plugin\";s:23:\"loco-translate/loco.php\";s:11:\"new_version\";s:5:\"2.2.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/loco-translate/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/loco-translate.2.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-256x256.png?rev=1000676\";s:2:\"1x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-128x128.png?rev=1000676\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/loco-translate/assets/banner-772x250.jpg?rev=745046\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"nav-menu-roles/nav-menu-roles.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/nav-menu-roles\";s:4:\"slug\";s:14:\"nav-menu-roles\";s:6:\"plugin\";s:33:\"nav-menu-roles/nav-menu-roles.php\";s:11:\"new_version\";s:5:\"1.9.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/nav-menu-roles/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/nav-menu-roles.1.9.2.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:58:\"https://s.w.org/plugins/geopattern-icon/nav-menu-roles.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:37:\"user-role-editor/user-role-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/user-role-editor\";s:4:\"slug\";s:16:\"user-role-editor\";s:6:\"plugin\";s:37:\"user-role-editor/user-role-editor.php\";s:11:\"new_version\";s:4:\"4.47\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/user-role-editor/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/user-role-editor.4.47.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-256x256.jpg?rev=1020390\";s:2:\"1x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-128x128.jpg?rev=1020390\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/user-role-editor/assets/banner-772x250.png?rev=1263116\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 10, '_wp_attached_file', '2018/12/woocommerce-sample-products.csv'),
(6, 10, '_wp_attachment_context', 'import'),
(8, 12, '_menu_item_type', 'post_type'),
(9, 12, '_menu_item_menu_item_parent', '0'),
(10, 12, '_menu_item_object_id', '9'),
(11, 12, '_menu_item_object', 'page'),
(12, 12, '_menu_item_target', ''),
(13, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(14, 12, '_menu_item_xfn', ''),
(15, 12, '_menu_item_url', ''),
(17, 12, '_menu_item_template', ''),
(18, 12, '_menu_item_mega_template', '0'),
(19, 12, '_menu_item_nolink', ''),
(20, 12, '_menu_item_category_post', ''),
(21, 12, '_menu_item_megamenu', ''),
(22, 12, '_menu_item_megamenu_auto_width', ''),
(23, 12, '_menu_item_megamenu_col', ''),
(24, 12, '_menu_item_megamenu_heading', ''),
(25, 12, '_menu_item_megamenu_widgetarea', '0'),
(26, 12, '_menu_item_icon', ''),
(27, 13, '_menu_item_type', 'post_type'),
(28, 13, '_menu_item_menu_item_parent', '12'),
(29, 13, '_menu_item_object_id', '8'),
(30, 13, '_menu_item_object', 'page'),
(31, 13, '_menu_item_target', ''),
(32, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(33, 13, '_menu_item_xfn', ''),
(34, 13, '_menu_item_url', ''),
(36, 13, '_menu_item_template', ''),
(37, 13, '_menu_item_mega_template', '0'),
(38, 13, '_menu_item_nolink', ''),
(39, 13, '_menu_item_category_post', ''),
(40, 13, '_menu_item_megamenu', ''),
(41, 13, '_menu_item_megamenu_auto_width', ''),
(42, 13, '_menu_item_megamenu_col', ''),
(43, 13, '_menu_item_megamenu_heading', ''),
(44, 13, '_menu_item_megamenu_widgetarea', '0'),
(45, 13, '_menu_item_icon', ''),
(46, 14, '_menu_item_type', 'post_type'),
(47, 14, '_menu_item_menu_item_parent', '12'),
(48, 14, '_menu_item_object_id', '7'),
(49, 14, '_menu_item_object', 'page'),
(50, 14, '_menu_item_target', ''),
(51, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 14, '_menu_item_xfn', ''),
(53, 14, '_menu_item_url', ''),
(55, 14, '_menu_item_template', ''),
(56, 14, '_menu_item_mega_template', '0'),
(57, 14, '_menu_item_nolink', ''),
(58, 14, '_menu_item_category_post', ''),
(59, 14, '_menu_item_megamenu', ''),
(60, 14, '_menu_item_megamenu_auto_width', ''),
(61, 14, '_menu_item_megamenu_col', ''),
(62, 14, '_menu_item_megamenu_heading', ''),
(63, 14, '_menu_item_megamenu_widgetarea', '0'),
(64, 14, '_menu_item_icon', ''),
(65, 15, '_menu_item_type', 'post_type'),
(66, 15, '_menu_item_menu_item_parent', '0'),
(67, 15, '_menu_item_object_id', '6'),
(68, 15, '_menu_item_object', 'page'),
(69, 15, '_menu_item_target', ''),
(70, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 15, '_menu_item_xfn', ''),
(72, 15, '_menu_item_url', ''),
(74, 15, '_menu_item_template', ''),
(75, 15, '_menu_item_mega_template', '0'),
(76, 15, '_menu_item_nolink', ''),
(77, 15, '_menu_item_category_post', ''),
(78, 15, '_menu_item_megamenu', ''),
(79, 15, '_menu_item_megamenu_auto_width', ''),
(80, 15, '_menu_item_megamenu_col', ''),
(81, 15, '_menu_item_megamenu_heading', ''),
(82, 15, '_menu_item_megamenu_widgetarea', '0'),
(83, 15, '_menu_item_icon', ''),
(85, 2, '_wp_trash_meta_status', 'publish'),
(86, 2, '_wp_trash_meta_time', '1543928721'),
(87, 2, '_wp_desired_post_slug', 'przykladowa-strona'),
(88, 6, '_edit_lock', '1543928617:1'),
(89, 6, '_edit_last', '1'),
(90, 6, '_wp_page_template', 'default'),
(91, 18, '_edit_last', '1'),
(92, 18, '_wp_page_template', 'default'),
(93, 18, '_edit_lock', '1543928632:1'),
(94, 8, '_edit_last', '1'),
(95, 8, '_wp_page_template', 'default'),
(96, 8, '_edit_lock', '1543928813:1'),
(97, 21, '_edit_last', '1'),
(98, 21, '_wp_page_template', 'default'),
(99, 21, '_edit_lock', '1543934126:1'),
(101, 23, '_wp_trash_meta_status', 'publish'),
(102, 23, '_wp_trash_meta_time', '1543929170'),
(103, 24, '_edit_lock', '1543930596:1'),
(104, 24, '_wp_trash_meta_status', 'publish'),
(105, 24, '_wp_trash_meta_time', '1543930601'),
(107, 26, '_wp_attached_file', '2018/12/sample_products.csv'),
(108, 26, '_wp_attachment_context', 'import'),
(281, 33, '_sku', '44'),
(282, 33, '_regular_price', ''),
(283, 33, '_sale_price', ''),
(284, 33, '_sale_price_dates_from', ''),
(285, 33, '_sale_price_dates_to', ''),
(286, 33, 'total_sales', '0'),
(287, 33, '_tax_status', 'taxable'),
(288, 33, '_tax_class', ''),
(289, 33, '_manage_stock', 'no'),
(290, 33, '_backorders', 'no'),
(291, 33, '_low_stock_amount', ''),
(292, 33, '_sold_individually', 'no'),
(293, 33, '_weight', ''),
(294, 33, '_length', ''),
(295, 33, '_width', ''),
(296, 33, '_height', ''),
(297, 33, '_upsell_ids', 'a:0:{}'),
(298, 33, '_crosssell_ids', 'a:0:{}'),
(299, 33, '_purchase_note', ''),
(300, 33, '_default_attributes', 'a:0:{}'),
(301, 33, '_virtual', 'no'),
(302, 33, '_downloadable', 'no'),
(303, 33, '_product_image_gallery', '64,65'),
(304, 33, '_download_limit', '-1'),
(305, 33, '_download_expiry', '-1'),
(306, 33, '_stock', NULL),
(307, 33, '_stock_status', 'outofstock'),
(308, 33, '_wc_average_rating', '0'),
(309, 33, '_wc_rating_count', 'a:0:{}'),
(310, 33, '_wc_review_count', '0'),
(311, 33, '_downloadable_files', 'a:0:{}'),
(312, 33, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(313, 33, '_product_version', '3.5.2'),
(314, 33, '_price', ''),
(316, 34, '_sku', '45'),
(317, 34, '_regular_price', '120'),
(318, 34, '_sale_price', ''),
(319, 34, '_sale_price_dates_from', ''),
(320, 34, '_sale_price_dates_to', ''),
(321, 34, 'total_sales', '8'),
(322, 34, '_tax_status', 'taxable'),
(323, 34, '_tax_class', ''),
(324, 34, '_manage_stock', 'no'),
(325, 34, '_backorders', 'no'),
(326, 34, '_low_stock_amount', ''),
(327, 34, '_sold_individually', 'no'),
(328, 34, '_weight', ''),
(329, 34, '_length', ''),
(330, 34, '_width', ''),
(331, 34, '_height', ''),
(332, 34, '_upsell_ids', 'a:0:{}'),
(333, 34, '_crosssell_ids', 'a:0:{}'),
(334, 34, '_purchase_note', ''),
(335, 34, '_default_attributes', 'a:0:{}'),
(336, 34, '_virtual', 'no'),
(337, 34, '_downloadable', 'no'),
(338, 34, '_product_image_gallery', '123,124'),
(339, 34, '_download_limit', '-1'),
(340, 34, '_download_expiry', '-1'),
(341, 34, '_stock', NULL),
(342, 34, '_stock_status', 'instock'),
(343, 34, '_wc_average_rating', '5.00'),
(344, 34, '_wc_rating_count', 'a:1:{i:5;i:2;}'),
(345, 34, '_wc_review_count', '3'),
(346, 34, '_downloadable_files', 'a:0:{}'),
(347, 34, '_product_attributes', 'a:0:{}'),
(348, 34, '_product_version', '3.5.2'),
(349, 34, '_price', '120'),
(351, 35, '_sku', '46'),
(352, 35, '_regular_price', '45'),
(353, 35, '_sale_price', ''),
(354, 35, '_sale_price_dates_from', ''),
(355, 35, '_sale_price_dates_to', ''),
(356, 35, 'total_sales', '0'),
(357, 35, '_tax_status', 'taxable'),
(358, 35, '_tax_class', ''),
(359, 35, '_manage_stock', 'no'),
(360, 35, '_backorders', 'no'),
(361, 35, '_low_stock_amount', ''),
(362, 35, '_sold_individually', 'no'),
(363, 35, '_weight', ''),
(364, 35, '_length', ''),
(365, 35, '_width', ''),
(366, 35, '_height', ''),
(367, 35, '_upsell_ids', 'a:0:{}'),
(368, 35, '_crosssell_ids', 'a:0:{}'),
(369, 35, '_purchase_note', ''),
(370, 35, '_default_attributes', 'a:0:{}'),
(371, 35, '_virtual', 'no'),
(372, 35, '_downloadable', 'no'),
(373, 35, '_product_image_gallery', ''),
(374, 35, '_download_limit', '-1'),
(375, 35, '_download_expiry', '-1'),
(376, 35, '_stock', NULL),
(377, 35, '_stock_status', 'instock'),
(378, 35, '_wc_average_rating', '0'),
(379, 35, '_wc_rating_count', 'a:0:{}'),
(380, 35, '_wc_review_count', '0'),
(381, 35, '_downloadable_files', 'a:0:{}'),
(382, 35, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(383, 35, '_product_version', '3.5.2'),
(384, 35, '_price', '45'),
(386, 36, '_sku', '47'),
(387, 36, '_regular_price', '250'),
(388, 36, '_sale_price', ''),
(389, 36, '_sale_price_dates_from', ''),
(390, 36, '_sale_price_dates_to', ''),
(391, 36, 'total_sales', '1'),
(392, 36, '_tax_status', 'taxable'),
(393, 36, '_tax_class', ''),
(394, 36, '_manage_stock', 'no'),
(395, 36, '_backorders', 'no'),
(396, 36, '_low_stock_amount', ''),
(397, 36, '_sold_individually', 'no'),
(398, 36, '_weight', ''),
(399, 36, '_length', ''),
(400, 36, '_width', ''),
(401, 36, '_height', ''),
(402, 36, '_upsell_ids', 'a:0:{}'),
(403, 36, '_crosssell_ids', 'a:0:{}'),
(404, 36, '_purchase_note', ''),
(405, 36, '_default_attributes', 'a:0:{}'),
(406, 36, '_virtual', 'no'),
(407, 36, '_downloadable', 'no'),
(408, 36, '_product_image_gallery', ''),
(409, 36, '_download_limit', '-1'),
(410, 36, '_download_expiry', '-1'),
(411, 36, '_stock', NULL),
(412, 36, '_stock_status', 'instock'),
(413, 36, '_wc_average_rating', '4.00'),
(414, 36, '_wc_rating_count', 'a:1:{i:4;i:1;}'),
(415, 36, '_wc_review_count', '1'),
(416, 36, '_downloadable_files', 'a:0:{}'),
(417, 36, '_product_attributes', 'a:1:{s:16:\"trasy-zwiedzania\";a:6:{s:4:\"name\";s:16:\"Trasy zwiedzania\";s:5:\"value\";s:164:\"Stare Miasto i zwiedzanie wnętrz Zamku Królewskiego | Spacer po Krakowskim Przedmieściu | Plac marsz. J.Piłsudskiego, Grób Nieznanego Żołnierza, Ogród Saski\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(418, 36, '_product_version', '3.5.2'),
(419, 36, '_price', '250'),
(421, 37, '_sku', '48'),
(422, 37, '_regular_price', '100'),
(423, 37, '_sale_price', ''),
(424, 37, '_sale_price_dates_from', ''),
(425, 37, '_sale_price_dates_to', ''),
(426, 37, 'total_sales', '0'),
(427, 37, '_tax_status', 'taxable'),
(428, 37, '_tax_class', ''),
(429, 37, '_manage_stock', 'no'),
(430, 37, '_backorders', 'no'),
(431, 37, '_low_stock_amount', ''),
(432, 37, '_sold_individually', 'no'),
(433, 37, '_weight', ''),
(434, 37, '_length', ''),
(435, 37, '_width', ''),
(436, 37, '_height', ''),
(437, 37, '_upsell_ids', 'a:0:{}'),
(438, 37, '_crosssell_ids', 'a:0:{}'),
(439, 37, '_purchase_note', ''),
(440, 37, '_default_attributes', 'a:0:{}'),
(441, 37, '_virtual', 'no'),
(442, 37, '_downloadable', 'no'),
(443, 37, '_product_image_gallery', ''),
(444, 37, '_download_limit', '-1'),
(445, 37, '_download_expiry', '-1'),
(446, 37, '_stock', NULL),
(447, 37, '_stock_status', 'instock'),
(448, 37, '_wc_average_rating', '0'),
(449, 37, '_wc_rating_count', 'a:0:{}'),
(450, 37, '_wc_review_count', '1'),
(451, 37, '_downloadable_files', 'a:0:{}'),
(452, 37, '_product_attributes', 'a:4:{s:5:\"jezyk\";a:6:{s:4:\"name\";s:6:\"Język\";s:5:\"value\";s:6:\"Polski\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:14:\"typ-podroznego\";a:6:{s:4:\"name\";s:16:\"Typ podróżnego\";s:5:\"value\";s:58:\"Rodziny | Pary | Wyjazd w pojedynkę | Biznesowa | Znajomi\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:7:\"telefon\";a:6:{s:4:\"name\";s:7:\"Telefon\";s:5:\"value\";s:9:\"735721561\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:5:\"email\";a:6:{s:4:\"name\";s:5:\"Email\";s:5:\"value\";s:25:\"twoja_wycieczka@gmail.com\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(453, 37, '_product_version', '3.5.2'),
(454, 37, '_price', '100'),
(456, 38, '_sku', '58'),
(457, 38, '_regular_price', '65'),
(458, 38, '_sale_price', '55'),
(459, 38, '_sale_price_dates_from', ''),
(460, 38, '_sale_price_dates_to', ''),
(461, 38, 'total_sales', '0'),
(462, 38, '_tax_status', 'taxable'),
(463, 38, '_tax_class', ''),
(464, 38, '_manage_stock', 'no'),
(465, 38, '_backorders', 'no'),
(466, 38, '_low_stock_amount', ''),
(467, 38, '_sold_individually', 'no'),
(468, 38, '_weight', ''),
(469, 38, '_length', ''),
(470, 38, '_width', ''),
(471, 38, '_height', ''),
(472, 38, '_upsell_ids', 'a:0:{}'),
(473, 38, '_crosssell_ids', 'a:0:{}'),
(474, 38, '_purchase_note', ''),
(475, 38, '_default_attributes', 'a:0:{}'),
(476, 38, '_virtual', 'no'),
(477, 38, '_downloadable', 'no'),
(478, 38, '_product_image_gallery', ''),
(479, 38, '_download_limit', '-1'),
(480, 38, '_download_expiry', '-1'),
(481, 38, '_stock', NULL),
(482, 38, '_stock_status', 'instock'),
(483, 38, '_wc_average_rating', '4.00'),
(484, 38, '_wc_rating_count', 'a:1:{i:4;i:2;}'),
(485, 38, '_wc_review_count', '2'),
(486, 38, '_downloadable_files', 'a:0:{}'),
(487, 38, '_product_attributes', 'a:0:{}'),
(488, 38, '_product_version', '3.5.2'),
(489, 38, '_price', '55'),
(491, 39, '_sku', '60'),
(492, 39, '_regular_price', '18'),
(493, 39, '_sale_price', '16'),
(494, 39, '_sale_price_dates_from', ''),
(495, 39, '_sale_price_dates_to', ''),
(496, 39, 'total_sales', '0'),
(497, 39, '_tax_status', 'taxable'),
(498, 39, '_tax_class', ''),
(499, 39, '_manage_stock', 'no'),
(500, 39, '_backorders', 'no'),
(501, 39, '_low_stock_amount', ''),
(502, 39, '_sold_individually', 'no'),
(503, 39, '_weight', ''),
(504, 39, '_length', ''),
(505, 39, '_width', ''),
(506, 39, '_height', ''),
(507, 39, '_upsell_ids', 'a:0:{}'),
(508, 39, '_crosssell_ids', 'a:0:{}'),
(509, 39, '_purchase_note', ''),
(510, 39, '_default_attributes', 'a:0:{}'),
(511, 39, '_virtual', 'no'),
(512, 39, '_downloadable', 'no'),
(513, 39, '_product_image_gallery', ''),
(514, 39, '_download_limit', '-1'),
(515, 39, '_download_expiry', '-1'),
(516, 39, '_stock', NULL),
(517, 39, '_stock_status', 'instock'),
(518, 39, '_wc_average_rating', '0'),
(519, 39, '_wc_rating_count', 'a:0:{}'),
(520, 39, '_wc_review_count', '0'),
(521, 39, '_downloadable_files', 'a:0:{}'),
(522, 39, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(523, 39, '_product_version', '3.5.2'),
(524, 39, '_price', '16'),
(526, 40, '_sku', '62'),
(527, 40, '_regular_price', '90'),
(528, 40, '_sale_price', ''),
(529, 40, '_sale_price_dates_from', ''),
(530, 40, '_sale_price_dates_to', ''),
(531, 40, 'total_sales', '0'),
(532, 40, '_tax_status', 'taxable'),
(533, 40, '_tax_class', ''),
(534, 40, '_manage_stock', 'no'),
(535, 40, '_backorders', 'no'),
(536, 40, '_low_stock_amount', ''),
(537, 40, '_sold_individually', 'no'),
(538, 40, '_weight', ''),
(539, 40, '_length', ''),
(540, 40, '_width', ''),
(541, 40, '_height', ''),
(542, 40, '_upsell_ids', 'a:0:{}'),
(543, 40, '_crosssell_ids', 'a:0:{}'),
(544, 40, '_purchase_note', ''),
(545, 40, '_default_attributes', 'a:0:{}'),
(546, 40, '_virtual', 'no'),
(547, 40, '_downloadable', 'no'),
(548, 40, '_product_image_gallery', ''),
(549, 40, '_download_limit', '-1'),
(550, 40, '_download_expiry', '-1'),
(551, 40, '_stock', NULL),
(552, 40, '_stock_status', 'instock'),
(553, 40, '_wc_average_rating', '0'),
(554, 40, '_wc_rating_count', 'a:0:{}'),
(555, 40, '_wc_review_count', '0'),
(556, 40, '_downloadable_files', 'a:0:{}'),
(557, 40, '_product_attributes', 'a:0:{}'),
(558, 40, '_product_version', '3.5.2'),
(559, 40, '_price', '90'),
(561, 41, '_sku', '64'),
(562, 41, '_regular_price', '45'),
(563, 41, '_sale_price', '35'),
(564, 41, '_sale_price_dates_from', ''),
(565, 41, '_sale_price_dates_to', ''),
(566, 41, 'total_sales', '0'),
(567, 41, '_tax_status', 'taxable'),
(568, 41, '_tax_class', ''),
(569, 41, '_manage_stock', 'no'),
(570, 41, '_backorders', 'no'),
(571, 41, '_low_stock_amount', ''),
(572, 41, '_sold_individually', 'no'),
(573, 41, '_weight', ''),
(574, 41, '_length', ''),
(575, 41, '_width', ''),
(576, 41, '_height', ''),
(577, 41, '_upsell_ids', 'a:0:{}'),
(578, 41, '_crosssell_ids', 'a:0:{}'),
(579, 41, '_purchase_note', ''),
(580, 41, '_default_attributes', 'a:0:{}'),
(581, 41, '_virtual', 'no'),
(582, 41, '_downloadable', 'no'),
(583, 41, '_product_image_gallery', ''),
(584, 41, '_download_limit', '-1'),
(585, 41, '_download_expiry', '-1'),
(586, 41, '_stock', NULL),
(587, 41, '_stock_status', 'instock'),
(588, 41, '_wc_average_rating', '0'),
(589, 41, '_wc_rating_count', 'a:0:{}'),
(590, 41, '_wc_review_count', '0'),
(591, 41, '_downloadable_files', 'a:0:{}'),
(592, 41, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(593, 41, '_product_version', '3.5.2'),
(594, 41, '_price', '35'),
(596, 42, '_sku', '66'),
(597, 42, '_regular_price', '45'),
(598, 42, '_sale_price', ''),
(599, 42, '_sale_price_dates_from', ''),
(600, 42, '_sale_price_dates_to', ''),
(601, 42, 'total_sales', '0'),
(602, 42, '_tax_status', 'taxable'),
(603, 42, '_tax_class', ''),
(604, 42, '_manage_stock', 'no'),
(605, 42, '_backorders', 'no'),
(606, 42, '_low_stock_amount', ''),
(607, 42, '_sold_individually', 'no'),
(608, 42, '_weight', ''),
(609, 42, '_length', ''),
(610, 42, '_width', ''),
(611, 42, '_height', ''),
(612, 42, '_upsell_ids', 'a:0:{}'),
(613, 42, '_crosssell_ids', 'a:0:{}'),
(614, 42, '_purchase_note', ''),
(615, 42, '_default_attributes', 'a:0:{}'),
(616, 42, '_virtual', 'no'),
(617, 42, '_downloadable', 'no'),
(618, 42, '_product_image_gallery', ''),
(619, 42, '_download_limit', '-1'),
(620, 42, '_download_expiry', '-1'),
(621, 42, '_stock', NULL),
(622, 42, '_stock_status', 'instock'),
(623, 42, '_wc_average_rating', '0'),
(624, 42, '_wc_rating_count', 'a:0:{}'),
(625, 42, '_wc_review_count', '0'),
(626, 42, '_downloadable_files', 'a:0:{}'),
(627, 42, '_product_attributes', 'a:0:{}'),
(628, 42, '_product_version', '3.5.2'),
(629, 42, '_price', '45'),
(631, 43, '_sku', '68'),
(632, 43, '_regular_price', '25'),
(633, 43, '_sale_price', ''),
(634, 43, '_sale_price_dates_from', ''),
(635, 43, '_sale_price_dates_to', ''),
(636, 43, 'total_sales', '0'),
(637, 43, '_tax_status', 'taxable'),
(638, 43, '_tax_class', ''),
(639, 43, '_manage_stock', 'no'),
(640, 43, '_backorders', 'no'),
(641, 43, '_low_stock_amount', ''),
(642, 43, '_sold_individually', 'no'),
(643, 43, '_weight', ''),
(644, 43, '_length', ''),
(645, 43, '_width', ''),
(646, 43, '_height', ''),
(647, 43, '_upsell_ids', 'a:0:{}'),
(648, 43, '_crosssell_ids', 'a:0:{}'),
(649, 43, '_purchase_note', ''),
(650, 43, '_default_attributes', 'a:0:{}'),
(651, 43, '_virtual', 'no'),
(652, 43, '_downloadable', 'no'),
(653, 43, '_product_image_gallery', ''),
(654, 43, '_download_limit', '-1'),
(655, 43, '_download_expiry', '-1'),
(656, 43, '_stock', NULL),
(657, 43, '_stock_status', 'instock'),
(658, 43, '_wc_average_rating', '0'),
(659, 43, '_wc_rating_count', 'a:0:{}'),
(660, 43, '_wc_review_count', '0'),
(661, 43, '_downloadable_files', 'a:0:{}'),
(662, 43, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(663, 43, '_product_version', '3.5.2'),
(664, 43, '_price', '25'),
(666, 44, '_sku', '70'),
(667, 44, '_regular_price', '20'),
(668, 44, '_sale_price', ''),
(669, 44, '_sale_price_dates_from', ''),
(670, 44, '_sale_price_dates_to', ''),
(671, 44, 'total_sales', '0'),
(672, 44, '_tax_status', 'taxable'),
(673, 44, '_tax_class', ''),
(674, 44, '_manage_stock', 'no'),
(675, 44, '_backorders', 'no'),
(676, 44, '_low_stock_amount', ''),
(677, 44, '_sold_individually', 'no'),
(678, 44, '_weight', ''),
(679, 44, '_length', ''),
(680, 44, '_width', ''),
(681, 44, '_height', ''),
(682, 44, '_upsell_ids', 'a:0:{}'),
(683, 44, '_crosssell_ids', 'a:0:{}'),
(684, 44, '_purchase_note', ''),
(685, 44, '_default_attributes', 'a:0:{}'),
(686, 44, '_virtual', 'no'),
(687, 44, '_downloadable', 'no'),
(688, 44, '_product_image_gallery', ''),
(689, 44, '_download_limit', '-1'),
(690, 44, '_download_expiry', '-1'),
(691, 44, '_stock', NULL),
(692, 44, '_stock_status', 'instock'),
(693, 44, '_wc_average_rating', '0'),
(694, 44, '_wc_rating_count', 'a:0:{}'),
(695, 44, '_wc_review_count', '0'),
(696, 44, '_downloadable_files', 'a:0:{}'),
(697, 44, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(698, 44, '_product_version', '3.5.2'),
(699, 44, '_price', '20'),
(701, 45, '_sku', '73'),
(702, 45, '_regular_price', '15'),
(703, 45, '_sale_price', ''),
(704, 45, '_sale_price_dates_from', ''),
(705, 45, '_sale_price_dates_to', ''),
(706, 45, 'total_sales', '0'),
(707, 45, '_tax_status', 'taxable'),
(708, 45, '_tax_class', ''),
(709, 45, '_manage_stock', 'no'),
(710, 45, '_backorders', 'no'),
(711, 45, '_low_stock_amount', ''),
(712, 45, '_sold_individually', 'no'),
(713, 45, '_weight', ''),
(714, 45, '_length', ''),
(715, 45, '_width', ''),
(716, 45, '_height', ''),
(717, 45, '_upsell_ids', 'a:0:{}'),
(718, 45, '_crosssell_ids', 'a:0:{}'),
(719, 45, '_purchase_note', ''),
(720, 45, '_default_attributes', 'a:0:{}'),
(721, 45, '_virtual', 'yes'),
(722, 45, '_downloadable', 'yes'),
(723, 45, '_product_image_gallery', ''),
(724, 45, '_download_limit', '-1'),
(725, 45, '_download_expiry', '-1'),
(726, 45, '_stock', NULL),
(727, 45, '_stock_status', 'instock'),
(728, 45, '_wc_average_rating', '4.00'),
(729, 45, '_wc_rating_count', 'a:3:{i:3;i:1;i:4;i:1;i:5;i:1;}'),
(730, 45, '_wc_review_count', '3'),
(731, 45, '_downloadable_files', 'a:2:{s:36:\"e8edfb51-35d0-45ce-b653-80f137b506d2\";a:3:{s:2:\"id\";s:36:\"e8edfb51-35d0-45ce-b653-80f137b506d2\";s:4:\"name\";s:8:\"Single 1\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";}s:36:\"c1818052-2a53-4215-8af8-b6fd2a95bf7d\";a:3:{s:2:\"id\";s:36:\"c1818052-2a53-4215-8af8-b6fd2a95bf7d\";s:4:\"name\";s:8:\"Single 2\";s:4:\"file\";s:84:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/album.jpg\";}}'),
(732, 45, '_product_attributes', 'a:0:{}'),
(733, 45, '_product_version', '3.5.2'),
(734, 45, '_price', '15'),
(736, 46, '_sku', '75'),
(737, 46, '_regular_price', '3'),
(738, 46, '_sale_price', '2'),
(739, 46, '_sale_price_dates_from', ''),
(740, 46, '_sale_price_dates_to', ''),
(741, 46, 'total_sales', '0'),
(742, 46, '_tax_status', 'taxable'),
(743, 46, '_tax_class', ''),
(744, 46, '_manage_stock', 'no'),
(745, 46, '_backorders', 'no'),
(746, 46, '_low_stock_amount', ''),
(747, 46, '_sold_individually', 'no'),
(748, 46, '_weight', ''),
(749, 46, '_length', ''),
(750, 46, '_width', ''),
(751, 46, '_height', ''),
(752, 46, '_upsell_ids', 'a:0:{}'),
(753, 46, '_crosssell_ids', 'a:0:{}'),
(754, 46, '_purchase_note', ''),
(755, 46, '_default_attributes', 'a:0:{}'),
(756, 46, '_virtual', 'yes'),
(757, 46, '_downloadable', 'yes'),
(758, 46, '_product_image_gallery', ''),
(759, 46, '_download_limit', '-1'),
(760, 46, '_download_expiry', '-1'),
(761, 46, '_stock', NULL),
(762, 46, '_stock_status', 'instock'),
(763, 46, '_wc_average_rating', '0'),
(764, 46, '_wc_rating_count', 'a:0:{}'),
(765, 46, '_wc_review_count', '0'),
(766, 46, '_downloadable_files', 'a:1:{s:36:\"6b76bdf6-4577-4420-bdba-9ab77b8d2c87\";a:3:{s:2:\"id\";s:36:\"6b76bdf6-4577-4420-bdba-9ab77b8d2c87\";s:4:\"name\";s:6:\"Single\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";}}'),
(767, 46, '_product_attributes', 'a:0:{}'),
(768, 46, '_product_version', '3.5.2'),
(769, 46, '_price', '2'),
(1049, 55, '_sku', '83'),
(1050, 55, '_regular_price', '18'),
(1051, 55, '_sale_price', ''),
(1052, 55, '_sale_price_dates_from', ''),
(1053, 55, '_sale_price_dates_to', ''),
(1054, 55, 'total_sales', '0'),
(1055, 55, '_tax_status', 'taxable'),
(1056, 55, '_tax_class', ''),
(1057, 55, '_manage_stock', 'no'),
(1058, 55, '_backorders', 'no'),
(1059, 55, '_low_stock_amount', ''),
(1060, 55, '_sold_individually', 'no'),
(1061, 55, '_weight', ''),
(1062, 55, '_length', ''),
(1063, 55, '_width', ''),
(1064, 55, '_height', ''),
(1065, 55, '_upsell_ids', 'a:0:{}'),
(1066, 55, '_crosssell_ids', 'a:0:{}'),
(1067, 55, '_purchase_note', ''),
(1068, 55, '_default_attributes', 'a:0:{}'),
(1069, 55, '_virtual', 'no'),
(1070, 55, '_downloadable', 'no'),
(1071, 55, '_product_image_gallery', ''),
(1072, 55, '_download_limit', '-1'),
(1073, 55, '_download_expiry', '-1'),
(1074, 55, '_stock', NULL),
(1075, 55, '_stock_status', 'instock'),
(1076, 55, '_wc_average_rating', '0'),
(1077, 55, '_wc_rating_count', 'a:0:{}'),
(1078, 55, '_wc_review_count', '0'),
(1079, 55, '_downloadable_files', 'a:0:{}'),
(1080, 55, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1081, 55, '_product_version', '3.5.2'),
(1082, 55, '_price', '18'),
(1084, 56, '_sku', '85'),
(1085, 56, '_regular_price', '20'),
(1086, 56, '_sale_price', '18'),
(1087, 56, '_sale_price_dates_from', ''),
(1088, 56, '_sale_price_dates_to', ''),
(1089, 56, 'total_sales', '0'),
(1090, 56, '_tax_status', 'taxable'),
(1091, 56, '_tax_class', ''),
(1092, 56, '_manage_stock', 'no'),
(1093, 56, '_backorders', 'no'),
(1094, 56, '_low_stock_amount', ''),
(1095, 56, '_sold_individually', 'no'),
(1096, 56, '_weight', ''),
(1097, 56, '_length', ''),
(1098, 56, '_width', ''),
(1099, 56, '_height', ''),
(1100, 56, '_upsell_ids', 'a:0:{}'),
(1101, 56, '_crosssell_ids', 'a:0:{}'),
(1102, 56, '_purchase_note', ''),
(1103, 56, '_default_attributes', 'a:0:{}'),
(1104, 56, '_virtual', 'no'),
(1105, 56, '_downloadable', 'no'),
(1106, 56, '_product_image_gallery', ''),
(1107, 56, '_download_limit', '-1'),
(1108, 56, '_download_expiry', '-1'),
(1109, 56, '_stock', NULL),
(1110, 56, '_stock_status', 'instock'),
(1111, 56, '_wc_average_rating', '0'),
(1112, 56, '_wc_rating_count', 'a:0:{}'),
(1113, 56, '_wc_review_count', '0'),
(1114, 56, '_downloadable_files', 'a:0:{}'),
(1115, 56, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1116, 56, '_product_version', '3.5.2'),
(1117, 56, '_price', '18'),
(1119, 57, '_sku', '87'),
(1122, 57, '_sale_price_dates_from', ''),
(1123, 57, '_sale_price_dates_to', ''),
(1124, 57, 'total_sales', '0'),
(1125, 57, '_tax_status', 'taxable'),
(1126, 57, '_tax_class', ''),
(1127, 57, '_manage_stock', 'no'),
(1128, 57, '_backorders', 'no'),
(1129, 57, '_low_stock_amount', ''),
(1130, 57, '_sold_individually', 'no'),
(1131, 57, '_weight', ''),
(1132, 57, '_length', ''),
(1133, 57, '_width', ''),
(1134, 57, '_height', ''),
(1135, 57, '_upsell_ids', 'a:0:{}'),
(1136, 57, '_crosssell_ids', 'a:0:{}'),
(1137, 57, '_purchase_note', ''),
(1138, 57, '_default_attributes', 'a:0:{}'),
(1139, 57, '_virtual', 'no'),
(1140, 57, '_downloadable', 'no'),
(1141, 57, '_product_image_gallery', '82,81,69'),
(1142, 57, '_download_limit', '-1'),
(1143, 57, '_download_expiry', '-1'),
(1144, 57, '_stock', NULL),
(1145, 57, '_stock_status', 'instock'),
(1146, 57, '_wc_average_rating', '0'),
(1147, 57, '_wc_rating_count', 'a:0:{}'),
(1148, 57, '_wc_review_count', '0'),
(1149, 57, '_downloadable_files', 'a:0:{}'),
(1150, 57, '_product_attributes', 'a:0:{}'),
(1151, 57, '_product_version', '3.5.2'),
(1256, 61, '_sku', '89'),
(1257, 61, '_regular_price', '11.05'),
(1258, 61, '_sale_price', ''),
(1259, 61, '_sale_price_dates_from', ''),
(1260, 61, '_sale_price_dates_to', ''),
(1261, 61, 'total_sales', '0'),
(1262, 61, '_tax_status', 'taxable'),
(1263, 61, '_tax_class', ''),
(1264, 61, '_manage_stock', 'no'),
(1265, 61, '_backorders', 'no'),
(1266, 61, '_low_stock_amount', ''),
(1267, 61, '_sold_individually', 'no'),
(1268, 61, '_weight', ''),
(1269, 61, '_length', ''),
(1270, 61, '_width', ''),
(1271, 61, '_height', ''),
(1272, 61, '_upsell_ids', 'a:0:{}'),
(1273, 61, '_crosssell_ids', 'a:0:{}'),
(1274, 61, '_purchase_note', ''),
(1275, 61, '_default_attributes', 'a:0:{}'),
(1276, 61, '_virtual', 'no'),
(1277, 61, '_downloadable', 'no'),
(1278, 61, '_product_image_gallery', ''),
(1279, 61, '_download_limit', '-1'),
(1280, 61, '_download_expiry', '-1'),
(1281, 61, '_stock', NULL),
(1282, 61, '_stock_status', 'instock'),
(1283, 61, '_wc_average_rating', '0'),
(1284, 61, '_wc_rating_count', 'a:0:{}'),
(1285, 61, '_wc_review_count', '0'),
(1286, 61, '_downloadable_files', 'a:0:{}'),
(1287, 61, '_product_attributes', 'a:0:{}'),
(1288, 61, '_product_version', '3.5.2'),
(1289, 61, '_price', '11.05'),
(1326, 63, '_wp_attached_file', '2018/12/vneck-tee-2.jpg'),
(1327, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:23:\"2018/12/vneck-tee-2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1328, 63, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vneck-tee-2.jpg'),
(1329, 64, '_wp_attached_file', '2018/12/vnech-tee-green-1.jpg'),
(1330, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:29:\"2018/12/vnech-tee-green-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1331, 64, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-green-1.jpg'),
(1332, 65, '_wp_attached_file', '2018/12/vnech-tee-blue-1.jpg'),
(1333, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:28:\"2018/12/vnech-tee-blue-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1334, 65, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-blue-1.jpg'),
(1335, 33, '_wpcom_is_markdown', '1'),
(1336, 33, '_wp_old_slug', 'import-placeholder-for-44'),
(1337, 33, '_thumbnail_id', '63'),
(1338, 66, '_wp_attached_file', '2018/12/hoodie-2.jpg'),
(1339, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2018/12/hoodie-2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"hoodie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"hoodie-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"hoodie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"hoodie-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"hoodie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"hoodie-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1340, 66, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-2.jpg'),
(1341, 67, '_wp_attached_file', '2018/12/hoodie-blue-1.jpg'),
(1342, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:25:\"2018/12/hoodie-blue-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1343, 67, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-blue-1.jpg'),
(1344, 68, '_wp_attached_file', '2018/12/hoodie-green-1.jpg'),
(1345, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:26:\"2018/12/hoodie-green-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1346, 68, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-green-1.jpg'),
(1347, 69, '_wp_attached_file', '2018/12/hoodie-with-logo-2.jpg'),
(1348, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:30:\"2018/12/hoodie-with-logo-2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1349, 69, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-logo-2.jpg'),
(1350, 34, '_wpcom_is_markdown', '1'),
(1351, 34, '_wp_old_slug', 'import-placeholder-for-45'),
(1352, 34, '_thumbnail_id', '126'),
(1353, 35, '_wpcom_is_markdown', '1'),
(1354, 35, '_wp_old_slug', 'import-placeholder-for-46'),
(1355, 35, '_thumbnail_id', '69'),
(1356, 70, '_wp_attached_file', '2018/12/tshirt-2.jpg'),
(1357, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2018/12/tshirt-2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"tshirt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"tshirt-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"tshirt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"tshirt-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"tshirt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"tshirt-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1358, 70, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/tshirt-2.jpg'),
(1359, 36, '_wpcom_is_markdown', '1'),
(1360, 36, '_wp_old_slug', 'import-placeholder-for-47'),
(1361, 36, '_thumbnail_id', '110'),
(1362, 71, '_wp_attached_file', '2018/12/beanie-2.jpg'),
(1363, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2018/12/beanie-2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"beanie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"beanie-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"beanie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"beanie-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"beanie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"beanie-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1364, 71, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-2.jpg'),
(1365, 37, '_wpcom_is_markdown', '1'),
(1366, 37, '_wp_old_slug', 'import-placeholder-for-48'),
(1367, 37, '_thumbnail_id', '120'),
(1368, 72, '_wp_attached_file', '2018/12/belt-2.jpg'),
(1369, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2018/12/belt-2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"belt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"belt-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"belt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"belt-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"belt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"belt-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1370, 72, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/belt-2.jpg'),
(1371, 38, '_wpcom_is_markdown', '1'),
(1372, 38, '_wp_old_slug', 'import-placeholder-for-58'),
(1373, 38, '_thumbnail_id', '72'),
(1374, 73, '_wp_attached_file', '2018/12/cap-2.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1375, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:17:\"2018/12/cap-2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"cap-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"cap-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"cap-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"cap-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"cap-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"cap-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1376, 73, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/cap-2.jpg'),
(1377, 39, '_wpcom_is_markdown', '1'),
(1378, 39, '_wp_old_slug', 'import-placeholder-for-60'),
(1379, 39, '_thumbnail_id', '73'),
(1380, 74, '_wp_attached_file', '2018/12/sunglasses-2.jpg'),
(1381, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:24:\"2018/12/sunglasses-2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"sunglasses-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1382, 74, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/sunglasses-2.jpg'),
(1383, 40, '_wpcom_is_markdown', '1'),
(1384, 40, '_wp_old_slug', 'import-placeholder-for-62'),
(1385, 40, '_thumbnail_id', '74'),
(1386, 75, '_wp_attached_file', '2018/12/hoodie-with-pocket-2.jpg'),
(1387, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:32:\"2018/12/hoodie-with-pocket-2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1388, 75, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-pocket-2.jpg'),
(1389, 41, '_wpcom_is_markdown', '1'),
(1390, 41, '_wp_old_slug', 'import-placeholder-for-64'),
(1391, 41, '_thumbnail_id', '75'),
(1392, 76, '_wp_attached_file', '2018/12/hoodie-with-zipper-2.jpg'),
(1393, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:32:\"2018/12/hoodie-with-zipper-2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1394, 76, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-zipper-2.jpg'),
(1395, 42, '_wpcom_is_markdown', '1'),
(1396, 42, '_wp_old_slug', 'import-placeholder-for-66'),
(1397, 42, '_thumbnail_id', '76'),
(1398, 77, '_wp_attached_file', '2018/12/long-sleeve-tee-2.jpg'),
(1399, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:29:\"2018/12/long-sleeve-tee-2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"long-sleeve-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1400, 77, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/long-sleeve-tee-2.jpg'),
(1401, 43, '_wpcom_is_markdown', '1'),
(1402, 43, '_wp_old_slug', 'import-placeholder-for-68'),
(1403, 43, '_thumbnail_id', '77'),
(1404, 78, '_wp_attached_file', '2018/12/polo-2.jpg'),
(1405, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2018/12/polo-2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"polo-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"polo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"polo-2-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"polo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"polo-2-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"polo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"polo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"polo-2-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"polo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1406, 78, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/polo-2.jpg'),
(1407, 44, '_wpcom_is_markdown', '1'),
(1408, 44, '_wp_old_slug', 'import-placeholder-for-70'),
(1409, 44, '_thumbnail_id', '78'),
(1410, 79, '_wp_attached_file', '2018/12/album-1.jpg'),
(1411, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2018/12/album-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"album-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"album-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"album-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"album-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"album-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"album-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"album-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"album-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"album-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1412, 79, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/album-1.jpg'),
(1413, 45, '_wpcom_is_markdown', '1'),
(1414, 45, '_wp_old_slug', 'import-placeholder-for-73'),
(1415, 45, '_thumbnail_id', '79'),
(1416, 80, '_wp_attached_file', '2018/12/single-1.jpg'),
(1417, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:20:\"2018/12/single-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"single-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"single-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"single-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"single-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"single-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"single-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"single-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"single-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"single-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1418, 80, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/single-1.jpg'),
(1419, 46, '_wpcom_is_markdown', '1'),
(1420, 46, '_wp_old_slug', 'import-placeholder-for-75'),
(1421, 46, '_thumbnail_id', '80'),
(1446, 81, '_wp_attached_file', '2018/12/t-shirt-with-logo-1.jpg'),
(1447, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:31:\"2018/12/t-shirt-with-logo-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1448, 81, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/t-shirt-with-logo-1.jpg'),
(1449, 55, '_wpcom_is_markdown', '1'),
(1450, 55, '_wp_old_slug', 'import-placeholder-for-83'),
(1451, 55, '_thumbnail_id', '81'),
(1452, 82, '_wp_attached_file', '2018/12/beanie-with-logo-1.jpg'),
(1453, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:30:\"2018/12/beanie-with-logo-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"beanie-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1454, 82, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-with-logo-1.jpg'),
(1455, 56, '_wpcom_is_markdown', '1'),
(1456, 56, '_wp_old_slug', 'import-placeholder-for-85'),
(1457, 56, '_thumbnail_id', '82'),
(1458, 83, '_wp_attached_file', '2018/12/logo-1.jpg'),
(1459, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:799;s:4:\"file\";s:18:\"2018/12/logo-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"logo-1-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"logo-1-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"logo-1-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1460, 83, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/logo-1.jpg'),
(1461, 57, '_wpcom_is_markdown', '1'),
(1462, 57, '_wp_old_slug', 'import-placeholder-for-87'),
(1463, 57, '_children', 'a:3:{i:0;i:58;i:1;i:59;i:2;i:60;}'),
(1464, 57, '_thumbnail_id', '83'),
(1465, 84, '_wp_attached_file', '2018/12/pennant-1.jpg'),
(1466, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2018/12/pennant-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"pennant-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"pennant-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"pennant-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"pennant-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"pennant-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"pennant-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"pennant-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"pennant-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"pennant-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1467, 84, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/pennant-1.jpg'),
(1468, 61, '_wpcom_is_markdown', '1'),
(1469, 61, '_wp_old_slug', 'import-placeholder-for-89'),
(1470, 61, '_thumbnail_id', '84'),
(1471, 61, '_product_url', 'https://mercantile.wordpress.org/product/wordpress-pennant/'),
(1472, 61, '_button_text', 'Buy on the WordPress swag store!'),
(1478, 85, '_wp_trash_meta_status', 'publish'),
(1479, 85, '_wp_trash_meta_time', '1543931551'),
(1480, 86, '_edit_lock', '1543931702:1'),
(1481, 87, '_menu_item_type', 'post_type'),
(1482, 87, '_menu_item_menu_item_parent', '0'),
(1483, 87, '_menu_item_object_id', '18'),
(1484, 87, '_menu_item_object', 'page'),
(1485, 87, '_menu_item_target', ''),
(1486, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1487, 87, '_menu_item_xfn', ''),
(1488, 87, '_menu_item_url', ''),
(1489, 87, '_menu_item_template', ''),
(1490, 87, '_menu_item_mega_template', '0'),
(1491, 87, '_menu_item_nolink', ''),
(1492, 87, '_menu_item_category_post', ''),
(1493, 87, '_menu_item_megamenu', ''),
(1494, 87, '_menu_item_megamenu_auto_width', ''),
(1495, 87, '_menu_item_megamenu_col', ''),
(1496, 87, '_menu_item_megamenu_heading', ''),
(1497, 87, '_menu_item_megamenu_widgetarea', '0'),
(1498, 87, '_menu_item_icon', ''),
(1499, 88, '_menu_item_type', 'post_type'),
(1500, 88, '_menu_item_menu_item_parent', '12'),
(1501, 88, '_menu_item_object_id', '21'),
(1502, 88, '_menu_item_object', 'page'),
(1503, 88, '_menu_item_target', ''),
(1504, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1505, 88, '_menu_item_xfn', ''),
(1506, 88, '_menu_item_url', ''),
(1507, 88, '_menu_item_template', ''),
(1508, 88, '_menu_item_mega_template', '0'),
(1509, 88, '_menu_item_nolink', ''),
(1510, 88, '_menu_item_category_post', ''),
(1511, 88, '_menu_item_megamenu', ''),
(1512, 88, '_menu_item_megamenu_auto_width', ''),
(1513, 88, '_menu_item_megamenu_col', ''),
(1514, 88, '_menu_item_megamenu_heading', ''),
(1515, 88, '_menu_item_megamenu_widgetarea', '0'),
(1516, 88, '_menu_item_icon', ''),
(1517, 86, '_wp_trash_meta_status', 'publish'),
(1518, 86, '_wp_trash_meta_time', '1543931701'),
(1519, 89, '_edit_lock', '1543932303:1'),
(1520, 89, '_wp_trash_meta_status', 'publish'),
(1521, 89, '_wp_trash_meta_time', '1543932354'),
(1522, 90, '_edit_lock', '1543932423:1'),
(1523, 90, '_wp_trash_meta_status', 'publish'),
(1524, 90, '_wp_trash_meta_time', '1543932425'),
(1525, 91, '_wp_trash_meta_status', 'publish'),
(1526, 91, '_wp_trash_meta_time', '1543932528'),
(1527, 92, '_edit_lock', '1543932965:1'),
(1528, 92, '_wp_trash_meta_status', 'publish'),
(1529, 92, '_wp_trash_meta_time', '1543932999'),
(1530, 93, '_wp_trash_meta_status', 'publish'),
(1531, 93, '_wp_trash_meta_time', '1543933074'),
(1532, 94, '_wp_trash_meta_status', 'publish'),
(1533, 94, '_wp_trash_meta_time', '1543933329'),
(1534, 88, '_nav_menu_role', 'a:3:{i:0;s:13:\"administrator\";i:1;s:8:\"customer\";i:2;s:17:\"uzytkownik_zwykly\";}'),
(1535, 56, '_edit_lock', '1543935259:1'),
(1538, 97, '_wp_attached_file', '2018/12/New-Project.jpg'),
(1539, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:801;s:4:\"file\";s:23:\"2018/12/New-Project.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"New-Project-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"New-Project-288x300.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"New-Project-768x801.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:801;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"New-Project-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"New-Project-600x626.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:626;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"New-Project-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"New-Project-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"New-Project-600x626.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:626;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"New-Project-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1540, 98, '_wp_attached_file', '2018/12/New-Project-1.jpg'),
(1541, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:801;s:4:\"file\";s:25:\"2018/12/New-Project-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"New-Project-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"New-Project-1-288x300.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"New-Project-1-768x801.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:801;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"New-Project-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"New-Project-1-600x626.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:626;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"New-Project-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"New-Project-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"New-Project-1-600x626.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:626;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"New-Project-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1542, 99, '_edit_lock', '1543964508:1'),
(1543, 99, '_wp_trash_meta_status', 'publish'),
(1544, 99, '_wp_trash_meta_time', '1543964516'),
(1545, 100, '_edit_lock', '1543964780:1'),
(1546, 100, '_wp_trash_meta_status', 'publish'),
(1547, 100, '_wp_trash_meta_time', '1543964783'),
(1550, 104, '_wp_trash_meta_status', 'publish'),
(1551, 104, '_wp_trash_meta_time', '1543965702'),
(1554, 107, '_wp_trash_meta_status', 'publish'),
(1555, 107, '_wp_trash_meta_time', '1544000886'),
(1557, 61, '_wp_trash_meta_status', 'publish'),
(1558, 61, '_wp_trash_meta_time', '1544001372'),
(1559, 61, '_wp_desired_post_slug', 'wordpress-pennant'),
(1560, 57, '_wp_trash_meta_status', 'publish'),
(1561, 57, '_wp_trash_meta_time', '1544001372'),
(1562, 57, '_wp_desired_post_slug', 'logo-collection'),
(1563, 56, '_wp_trash_meta_status', 'publish'),
(1564, 56, '_wp_trash_meta_time', '1544001372'),
(1565, 56, '_wp_desired_post_slug', 'beanie-with-logo'),
(1566, 55, '_wp_trash_meta_status', 'publish'),
(1567, 55, '_wp_trash_meta_time', '1544001372'),
(1568, 55, '_wp_desired_post_slug', 't-shirt-with-logo'),
(1569, 46, '_wp_trash_meta_status', 'publish'),
(1570, 46, '_wp_trash_meta_time', '1544001372'),
(1571, 46, '_wp_desired_post_slug', 'single'),
(1572, 45, '_wp_trash_meta_status', 'publish'),
(1573, 45, '_wp_trash_meta_time', '1544001372'),
(1574, 45, '_wp_desired_post_slug', 'album'),
(1575, 45, '_wp_trash_meta_comments_status', 'a:3:{i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";}'),
(1576, 44, '_wp_trash_meta_status', 'publish'),
(1577, 44, '_wp_trash_meta_time', '1544001372'),
(1578, 44, '_wp_desired_post_slug', 'polo'),
(1579, 43, '_wp_trash_meta_status', 'publish'),
(1580, 43, '_wp_trash_meta_time', '1544001372'),
(1581, 43, '_wp_desired_post_slug', 'long-sleeve-tee'),
(1582, 42, '_wp_trash_meta_status', 'publish'),
(1583, 42, '_wp_trash_meta_time', '1544001373'),
(1584, 42, '_wp_desired_post_slug', 'hoodie-with-zipper'),
(1585, 41, '_wp_trash_meta_status', 'publish'),
(1586, 41, '_wp_trash_meta_time', '1544001373'),
(1587, 41, '_wp_desired_post_slug', 'hoodie-with-pocket'),
(1588, 40, '_wp_trash_meta_status', 'publish'),
(1589, 40, '_wp_trash_meta_time', '1544001373'),
(1590, 40, '_wp_desired_post_slug', 'sunglasses'),
(1591, 36, '_edit_lock', '1544004046:1'),
(1592, 36, '_edit_last', '1'),
(1593, 110, '_wp_attached_file', '2018/12/zamek-krolewski-w-warszawie-213782-e1544003227757.jpg'),
(1594, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:747;s:6:\"height\";i:665;s:4:\"file\";s:61:\"2018/12/zamek-krolewski-w-warszawie-213782-e1544003227757.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"zamek-krolewski-w-warszawie-213782-e1544003227757-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:61:\"zamek-krolewski-w-warszawie-213782-e1544003227757-300x267.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"zamek-krolewski-w-warszawie-213782-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:4:{s:4:\"file\";s:61:\"zamek-krolewski-w-warszawie-213782-e1544003227757-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:61:\"zamek-krolewski-w-warszawie-213782-e1544003227757-600x534.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:534;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:61:\"zamek-krolewski-w-warszawie-213782-e1544003227757-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:61:\"zamek-krolewski-w-warszawie-213782-e1544003227757-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:61:\"zamek-krolewski-w-warszawie-213782-e1544003227757-600x534.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:534;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:61:\"zamek-krolewski-w-warszawie-213782-e1544003227757-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1595, 110, '_wp_attachment_backup_sizes', 'a:10:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:1000;s:6:\"height\";i:665;s:4:\"file\";s:38:\"zamek-krolewski-w-warszawie-213782.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:46:\"zamek-krolewski-w-warszawie-213782-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:46:\"zamek-krolewski-w-warszawie-213782-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medium_large-orig\";a:4:{s:4:\"file\";s:46:\"zamek-krolewski-w-warszawie-213782-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"woocommerce_thumbnail-orig\";a:5:{s:4:\"file\";s:46:\"zamek-krolewski-w-warszawie-213782-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:23:\"woocommerce_single-orig\";a:4:{s:4:\"file\";s:46:\"zamek-krolewski-w-warszawie-213782-600x399.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:34:\"woocommerce_gallery_thumbnail-orig\";a:4:{s:4:\"file\";s:46:\"zamek-krolewski-w-warszawie-213782-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"shop_catalog-orig\";a:4:{s:4:\"file\";s:46:\"zamek-krolewski-w-warszawie-213782-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"shop_single-orig\";a:4:{s:4:\"file\";s:46:\"zamek-krolewski-w-warszawie-213782-600x399.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"shop_thumbnail-orig\";a:4:{s:4:\"file\";s:46:\"zamek-krolewski-w-warszawie-213782-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(1596, 111, '_wp_attached_file', '2018/12/warszawa-20.jpg'),
(1597, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:848;s:4:\"file\";s:23:\"2018/12/warszawa-20.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"warszawa-20-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"warszawa-20-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"warszawa-20-768x509.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"warszawa-20-1024x678.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"warszawa-20-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"warszawa-20-600x398.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:398;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"warszawa-20-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"warszawa-20-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"warszawa-20-600x398.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:398;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"warszawa-20-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1598, 112, '_wp_attached_file', '2018/12/warszawa-24.jpg'),
(1599, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:23:\"2018/12/warszawa-24.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"warszawa-24-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"warszawa-24-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"warszawa-24-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"warszawa-24-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"warszawa-24-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"warszawa-24-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"warszawa-24-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"warszawa-24-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"warszawa-24-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"warszawa-24-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1600, 113, '_wp_attached_file', '2018/12/zamek-krolewski-w-warszawie-213782-1.jpg'),
(1601, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:665;s:4:\"file\";s:48:\"2018/12/zamek-krolewski-w-warszawie-213782-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"zamek-krolewski-w-warszawie-213782-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"zamek-krolewski-w-warszawie-213782-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"zamek-krolewski-w-warszawie-213782-1-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"zamek-krolewski-w-warszawie-213782-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"zamek-krolewski-w-warszawie-213782-1-600x399.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"zamek-krolewski-w-warszawie-213782-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"zamek-krolewski-w-warszawie-213782-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"zamek-krolewski-w-warszawie-213782-1-600x399.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"zamek-krolewski-w-warszawie-213782-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1603, 114, '_wp_trash_meta_status', 'publish'),
(1604, 114, '_wp_trash_meta_time', '1544003935'),
(1605, 116, '_edit_lock', '1544017413:1'),
(1606, 116, '_wp_trash_meta_status', 'publish'),
(1607, 116, '_wp_trash_meta_time', '1544017356'),
(1608, 117, '_edit_lock', '1544017913:1'),
(1609, 118, '_wp_attached_file', '2018/12/MAM-TEN-KOD-PIOSENKA.mp3'),
(1610, 118, '_wp_attachment_metadata', 'a:18:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";d:192022.8411259542;s:11:\"channelmode\";s:6:\"stereo\";s:12:\"bitrate_mode\";s:3:\"vbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:3:\"VBR\";s:17:\"compression_ratio\";d:0.13607060737383375;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:5261104;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:219;s:16:\"length_formatted\";s:4:\"3:39\";s:7:\"comment\";s:28:\"converted by convert2mp3.net\";s:5:\"title\";s:8:\"PIOSENKA\";s:6:\"artist\";s:11:\"MAM TEN KOD\";s:5:\"album\";s:0:\"\";}'),
(1611, 117, '_wp_trash_meta_status', 'publish'),
(1612, 117, '_wp_trash_meta_time', '1544017929'),
(1613, 37, '_edit_lock', '1544116221:1'),
(1614, 120, '_wp_attached_file', '2018/12/IMG_3279-2-870x600.jpg'),
(1615, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:870;s:6:\"height\";i:600;s:4:\"file\";s:30:\"2018/12/IMG_3279-2-870x600.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"IMG_3279-2-870x600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"IMG_3279-2-870x600-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"IMG_3279-2-870x600-768x530.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:530;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"IMG_3279-2-870x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"IMG_3279-2-870x600-600x414.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:414;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"IMG_3279-2-870x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"IMG_3279-2-870x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"IMG_3279-2-870x600-600x414.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:414;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"IMG_3279-2-870x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1616, 37, '_edit_last', '1'),
(1617, 38, '_wp_trash_meta_status', 'publish'),
(1618, 38, '_wp_trash_meta_time', '1544101325'),
(1619, 38, '_wp_desired_post_slug', 'belt'),
(1620, 38, '_wp_trash_meta_comments_status', 'a:2:{i:5;s:1:\"1\";i:6;s:1:\"1\";}'),
(1621, 39, '_wp_trash_meta_status', 'publish'),
(1622, 39, '_wp_trash_meta_time', '1544101325'),
(1623, 39, '_wp_desired_post_slug', 'cap'),
(1624, 33, '_wp_trash_meta_status', 'publish'),
(1625, 33, '_wp_trash_meta_time', '1544101325'),
(1626, 33, '_wp_desired_post_slug', 'v-neck-t-shirt'),
(1627, 34, '_edit_lock', '1544102072:1'),
(1628, 122, '_wp_attached_file', '2018/12/Bez-tytułu.jpg'),
(1629, 122, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:753;s:6:\"height\";i:793;s:4:\"file\";s:23:\"2018/12/Bez-tytułu.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1630, 123, '_wp_attached_file', '2018/12/1jpg.jpg'),
(1631, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1306;s:6:\"height\";i:725;s:4:\"file\";s:16:\"2018/12/1jpg.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"1jpg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"1jpg-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"1jpg-768x426.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:426;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"1jpg-1024x568.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:568;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"1jpg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"1jpg-600x333.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:333;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"1jpg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"1jpg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"1jpg-600x333.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:333;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"1jpg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1632, 124, '_wp_attached_file', '2018/12/2.jpg'),
(1633, 124, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:882;s:6:\"height\";i:784;s:4:\"file\";s:13:\"2018/12/2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x267.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"2-768x683.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"2-600x533.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"2-600x533.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1634, 125, '_wp_attached_file', '2018/12/Bez-tytułu-1.jpg'),
(1635, 125, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:753;s:6:\"height\";i:793;s:4:\"file\";s:25:\"2018/12/Bez-tytułu-1.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1636, 34, '_edit_last', '1'),
(1637, 126, '_wp_attached_file', '2018/12/3u.png'),
(1638, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:956;s:6:\"height\";i:776;s:4:\"file\";s:14:\"2018/12/3u.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"3u-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"3u-300x244.png\";s:5:\"width\";i:300;s:6:\"height\";i:244;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"3u-768x623.png\";s:5:\"width\";i:768;s:6:\"height\";i:623;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"3u-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"3u-600x487.png\";s:5:\"width\";i:600;s:6:\"height\";i:487;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"3u-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"3u-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"3u-600x487.png\";s:5:\"width\";i:600;s:6:\"height\";i:487;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"3u-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1639, 127, '_wp_attached_file', '2018/12/Bez-tytułu-2.jpg'),
(1640, 127, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:753;s:6:\"height\";i:793;s:4:\"file\";s:25:\"2018/12/Bez-tytułu-2.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1641, 128, '_wp_attached_file', '2018/12/warszawa-24-1.jpg'),
(1642, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:25:\"2018/12/warszawa-24-1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"warszawa-24-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"warszawa-24-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"warszawa-24-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"warszawa-24-1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"warszawa-24-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"warszawa-24-1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"warszawa-24-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"warszawa-24-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"warszawa-24-1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"warszawa-24-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1643, 129, '_regular_price', '49.86'),
(1644, 129, '_sale_price', ''),
(1645, 129, '_price', '49.86'),
(1646, 129, '_visibility', 'visible'),
(1647, 129, '_stock_status', 'instock'),
(1648, 130, '_wp_attached_file', '2018/12/skaryszewski_6141-1280x768.jpg'),
(1649, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:768;s:4:\"file\";s:38:\"2018/12/skaryszewski_6141-1280x768.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"skaryszewski_6141-1280x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"skaryszewski_6141-1280x768-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"skaryszewski_6141-1280x768-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:39:\"skaryszewski_6141-1280x768-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"skaryszewski_6141-1280x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:38:\"skaryszewski_6141-1280x768-600x360.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"skaryszewski_6141-1280x768-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:38:\"skaryszewski_6141-1280x768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:38:\"skaryszewski_6141-1280x768-600x360.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"skaryszewski_6141-1280x768-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1650, 129, '_thumbnail_id', '130'),
(1651, 129, '_wc_review_count', '0'),
(1652, 129, '_wc_rating_count', 'a:0:{}'),
(1653, 129, '_wc_average_rating', '0'),
(1654, 129, '_edit_lock', '1544103549:1'),
(1655, 129, '_edit_last', '1'),
(1656, 129, '_sku', ''),
(1657, 129, '_sale_price_dates_from', ''),
(1658, 129, '_sale_price_dates_to', ''),
(1659, 129, 'total_sales', '0'),
(1660, 129, '_tax_status', 'taxable'),
(1661, 129, '_tax_class', ''),
(1662, 129, '_manage_stock', 'no'),
(1663, 129, '_backorders', 'no'),
(1664, 129, '_low_stock_amount', ''),
(1665, 129, '_sold_individually', 'no'),
(1666, 129, '_weight', ''),
(1667, 129, '_length', ''),
(1668, 129, '_width', ''),
(1669, 129, '_height', ''),
(1670, 129, '_upsell_ids', 'a:0:{}'),
(1671, 129, '_crosssell_ids', 'a:0:{}'),
(1672, 129, '_purchase_note', ''),
(1673, 129, '_default_attributes', 'a:0:{}'),
(1674, 129, '_virtual', 'no'),
(1675, 129, '_downloadable', 'no'),
(1676, 129, '_product_image_gallery', ''),
(1677, 129, '_download_limit', '-1'),
(1678, 129, '_download_expiry', '-1'),
(1679, 129, '_stock', NULL),
(1680, 129, '_product_version', '3.5.2'),
(1681, 131, '_edit_lock', '1544103195:1'),
(1682, 131, '_wp_trash_meta_status', 'publish'),
(1683, 131, '_wp_trash_meta_time', '1544103226'),
(1686, 134, '_edit_lock', '1544140948:1'),
(1687, 134, '_edit_last', '1'),
(1688, 134, '_wp_page_template', 'default'),
(1691, 138, '_edit_lock', '1544104983:1'),
(1692, 138, '_edit_last', '1'),
(1693, 138, '_gamipress_plural_name', 'dsadsadsa'),
(1694, 138, '_gamipress_label_position', 'after'),
(1695, 35, '_wp_trash_meta_status', 'publish'),
(1696, 35, '_wp_trash_meta_time', '1544114000'),
(1697, 35, '_wp_desired_post_slug', 'hoodie-with-logo'),
(1698, 142, '_wp_attached_file', '2018/12/New-Project-2.jpg'),
(1699, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:801;s:4:\"file\";s:25:\"2018/12/New-Project-2.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"New-Project-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"New-Project-2-288x300.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"New-Project-2-768x801.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:801;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"gamipress-points\";a:4:{s:4:\"file\";s:23:\"New-Project-2-48x50.jpg\";s:5:\"width\";i:48;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"gamipress-achievement\";a:4:{s:4:\"file\";s:24:\"New-Project-2-96x100.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"gamipress-rank\";a:4:{s:4:\"file\";s:24:\"New-Project-2-96x100.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"New-Project-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"New-Project-2-600x626.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:626;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"New-Project-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"New-Project-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"New-Project-2-600x626.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:626;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"New-Project-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1700, 143, '_regular_price', '100'),
(1701, 143, '_sale_price', ''),
(1702, 143, '_price', '100'),
(1703, 143, '_visibility', 'visible'),
(1704, 143, '_stock_status', 'instock'),
(1705, 144, '_wp_attached_file', '2018/12/New Project.jpg'),
(1706, 144, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:801;s:4:\"file\";s:23:\"2018/12/New Project.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"New Project-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"New Project-288x300.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"New Project-768x801.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:801;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"gamipress-points\";a:4:{s:4:\"file\";s:21:\"New Project-48x50.jpg\";s:5:\"width\";i:48;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"gamipress-achievement\";a:4:{s:4:\"file\";s:22:\"New Project-96x100.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"gamipress-rank\";a:4:{s:4:\"file\";s:22:\"New Project-96x100.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"New Project-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"New Project-600x626.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:626;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"New Project-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"New Project-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"New Project-600x626.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:626;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"New Project-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1707, 143, '_thumbnail_id', '144'),
(1708, 143, '_wc_review_count', '0'),
(1709, 143, '_wc_rating_count', 'a:0:{}'),
(1710, 143, '_wc_average_rating', '0'),
(1711, 143, '_edit_lock', '1544117487:1'),
(1712, 143, '_edit_last', '1'),
(1713, 143, '_sku', ''),
(1714, 143, '_sale_price_dates_from', ''),
(1715, 143, '_sale_price_dates_to', ''),
(1716, 143, 'total_sales', '0'),
(1717, 143, '_tax_status', 'taxable'),
(1718, 143, '_tax_class', ''),
(1719, 143, '_manage_stock', 'no'),
(1720, 143, '_backorders', 'no'),
(1721, 143, '_low_stock_amount', ''),
(1722, 143, '_sold_individually', 'no'),
(1723, 143, '_weight', ''),
(1724, 143, '_length', ''),
(1725, 143, '_width', ''),
(1726, 143, '_height', ''),
(1727, 143, '_upsell_ids', 'a:0:{}'),
(1728, 143, '_crosssell_ids', 'a:0:{}'),
(1729, 143, '_purchase_note', ''),
(1730, 143, '_default_attributes', 'a:0:{}'),
(1731, 143, '_virtual', 'no'),
(1732, 143, '_downloadable', 'no'),
(1733, 143, '_product_image_gallery', ''),
(1734, 143, '_download_limit', '-1'),
(1735, 143, '_download_expiry', '-1'),
(1736, 143, '_stock', NULL),
(1737, 143, '_product_version', '3.5.2'),
(1738, 152, '_order_key', 'wc_order_5c0a3675764cf'),
(1739, 152, '_customer_user', '1'),
(1740, 152, '_payment_method', 'bacs'),
(1741, 152, '_payment_method_title', 'Przelew bankowy'),
(1742, 152, '_transaction_id', ''),
(1743, 152, '_customer_ip_address', '127.0.0.1'),
(1744, 152, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36'),
(1745, 152, '_created_via', 'checkout'),
(1746, 152, '_date_completed', '1544173286'),
(1747, 152, '_completed_date', '2018-12-07 10:01:26'),
(1748, 152, '_date_paid', ''),
(1749, 152, '_paid_date', ''),
(1750, 152, '_cart_hash', 'bb53b3eccb70dfc03afbe9ae3b8aab84'),
(1751, 152, '_billing_first_name', 'Oleksandr'),
(1752, 152, '_billing_last_name', 'Iaremii'),
(1753, 152, '_billing_company', ''),
(1754, 152, '_billing_address_1', 'Ziębicka'),
(1755, 152, '_billing_address_2', '2'),
(1756, 152, '_billing_city', 'WARSZAWA'),
(1757, 152, '_billing_state', ''),
(1758, 152, '_billing_postcode', '01-461'),
(1759, 152, '_billing_country', 'PL'),
(1760, 152, '_billing_email', 'ward.wsp@gmail.com'),
(1761, 152, '_billing_phone', '735721561'),
(1762, 152, '_shipping_first_name', 'Oleksandr'),
(1763, 152, '_shipping_last_name', 'Iaremii'),
(1764, 152, '_shipping_company', ''),
(1765, 152, '_shipping_address_1', 'Ziębicka'),
(1766, 152, '_shipping_address_2', '2'),
(1767, 152, '_shipping_city', 'WARSZAWA'),
(1768, 152, '_shipping_state', ''),
(1769, 152, '_shipping_postcode', '01-461'),
(1770, 152, '_shipping_country', 'PL'),
(1771, 152, '_order_currency', 'PLN'),
(1772, 152, '_cart_discount', '0'),
(1773, 152, '_cart_discount_tax', '0'),
(1774, 152, '_order_shipping', '0'),
(1775, 152, '_order_shipping_tax', '0'),
(1776, 152, '_order_tax', '0'),
(1777, 152, '_order_total', '250.00'),
(1778, 152, '_order_version', '3.5.2'),
(1779, 152, '_prices_include_tax', 'no'),
(1780, 152, '_billing_address_index', 'Oleksandr Iaremii  Ziębicka 2 WARSZAWA  01-461 PL ward.wsp@gmail.com 735721561'),
(1781, 152, '_shipping_address_index', 'Oleksandr Iaremii  Ziębicka 2 WARSZAWA  01-461 PL'),
(1782, 152, '_recorded_sales', 'yes'),
(1783, 152, '_recorded_coupon_usage_counts', 'yes'),
(1784, 152, '_order_stock_reduced', 'yes'),
(1785, 152, '_edit_lock', '1544185211:1'),
(1786, 152, '_edit_last', '1'),
(1787, 152, '_download_permissions_granted', 'yes'),
(1788, 153, '_order_key', 'wc_order_5c0a637420a81'),
(1789, 153, '_customer_user', '1'),
(1790, 153, '_payment_method', 'bacs'),
(1791, 153, '_payment_method_title', 'Przelew bankowy'),
(1792, 153, '_transaction_id', ''),
(1793, 153, '_customer_ip_address', '127.0.0.1'),
(1794, 153, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36'),
(1795, 153, '_created_via', 'checkout'),
(1796, 153, '_date_completed', '1544184749'),
(1797, 153, '_completed_date', '2018-12-07 13:12:29'),
(1798, 153, '_date_paid', ''),
(1799, 153, '_paid_date', ''),
(1800, 153, '_cart_hash', '3016adedfa14bdd4dba162da0a9b49c4'),
(1801, 153, '_billing_first_name', 'Oleksandr'),
(1802, 153, '_billing_last_name', 'Iaremii'),
(1803, 153, '_billing_company', ''),
(1804, 153, '_billing_address_1', 'Ziębicka'),
(1805, 153, '_billing_address_2', '2'),
(1806, 153, '_billing_city', 'WARSZAWA'),
(1807, 153, '_billing_state', ''),
(1808, 153, '_billing_postcode', '01-461'),
(1809, 153, '_billing_country', 'PL'),
(1810, 153, '_billing_email', 'ward.wsp@gmail.com'),
(1811, 153, '_billing_phone', '735721561'),
(1812, 153, '_shipping_first_name', 'Oleksandr'),
(1813, 153, '_shipping_last_name', 'Iaremii'),
(1814, 153, '_shipping_company', ''),
(1815, 153, '_shipping_address_1', 'Ziębicka'),
(1816, 153, '_shipping_address_2', '2'),
(1817, 153, '_shipping_city', 'WARSZAWA'),
(1818, 153, '_shipping_state', ''),
(1819, 153, '_shipping_postcode', '01-461'),
(1820, 153, '_shipping_country', 'PL'),
(1821, 153, '_order_currency', 'PLN'),
(1822, 153, '_cart_discount', '0'),
(1823, 153, '_cart_discount_tax', '0'),
(1824, 153, '_order_shipping', '0'),
(1825, 153, '_order_shipping_tax', '0'),
(1826, 153, '_order_tax', '0'),
(1827, 153, '_order_total', '960.00'),
(1828, 153, '_order_version', '3.5.2'),
(1829, 153, '_prices_include_tax', 'no'),
(1830, 153, '_billing_address_index', 'Oleksandr Iaremii  Ziębicka 2 WARSZAWA  01-461 PL ward.wsp@gmail.com 735721561'),
(1831, 153, '_shipping_address_index', 'Oleksandr Iaremii  Ziębicka 2 WARSZAWA  01-461 PL'),
(1832, 153, '_recorded_sales', 'yes'),
(1833, 153, '_recorded_coupon_usage_counts', 'yes'),
(1834, 153, '_order_stock_reduced', 'yes'),
(1835, 153, '_edit_lock', '1544218278:1'),
(1836, 153, '_edit_last', '1'),
(1837, 153, '_download_permissions_granted', 'yes'),
(1838, 155, '_regular_price', '1231'),
(1839, 155, '_sale_price', ''),
(1840, 155, '_price', '1231'),
(1841, 155, '_visibility', 'visible'),
(1842, 155, '_stock_status', 'instock'),
(1843, 156, '_wp_attached_file', '2018/12/New Project.jpg'),
(1844, 155, '_wc_review_count', '0'),
(1845, 155, '_wc_rating_count', 'a:0:{}'),
(1846, 155, '_wc_average_rating', '0'),
(1847, 156, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:801;s:4:\"file\";s:23:\"2018/12/New Project.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"New Project-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"New Project-288x300.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"New Project-768x801.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:801;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"New Project-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"New Project-600x626.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:626;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"New Project-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"New Project-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"New Project-600x626.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:626;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"New Project-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1848, 155, '_thumbnail_id', '156'),
(1849, 155, '_edit_lock', '1545249835:1'),
(1850, 155, '_edit_last', '1'),
(1851, 155, '_sku', ''),
(1852, 155, '_sale_price_dates_from', ''),
(1853, 155, '_sale_price_dates_to', ''),
(1854, 155, 'total_sales', '0'),
(1855, 155, '_tax_status', 'taxable'),
(1856, 155, '_tax_class', ''),
(1857, 155, '_manage_stock', 'no'),
(1858, 155, '_backorders', 'no'),
(1859, 155, '_low_stock_amount', ''),
(1860, 155, '_sold_individually', 'no'),
(1861, 155, '_weight', ''),
(1862, 155, '_length', ''),
(1863, 155, '_width', ''),
(1864, 155, '_height', ''),
(1865, 155, '_upsell_ids', 'a:0:{}'),
(1866, 155, '_crosssell_ids', 'a:0:{}'),
(1867, 155, '_purchase_note', ''),
(1868, 155, '_default_attributes', 'a:0:{}'),
(1869, 155, '_virtual', 'no'),
(1870, 155, '_downloadable', 'no'),
(1871, 155, '_product_image_gallery', ''),
(1872, 155, '_download_limit', '-1'),
(1873, 155, '_download_expiry', '-1'),
(1874, 155, '_stock', NULL),
(1875, 155, '_product_version', '3.5.2');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-11-29 13:30:14', '2018-11-29 12:30:14', 'Witaj w WordPressie. To jest twój pierwszy wpis. Zmodyfikuj go lub usuń, a następnie rozpocznij pisanie!', 'Witaj, świecie!', '', 'publish', 'open', 'open', '', 'witaj-swiecie', '', '', '2018-11-29 13:30:14', '2018-11-29 12:30:14', '', 0, 'http://wycieczki/?p=1', 0, 'post', '', 1),
(2, 1, '2018-11-29 13:30:14', '2018-11-29 12:30:14', 'To jest przykładowa strona. Strony są inne niż wpisy na blogu, ponieważ nie tylko znajdują się zawsze w jednym miejscu, ale także pojawiają się w menu witryny (w większości motywów). Większość użytkowników umieszcza na swoich witrynach stronę z informacjami o sobie, dzięki którym przedstawiają się odwiedzającym ich witrynę. Taka strona może zawierać na przykład taki tekst:\n\n<blockquote>Cześć! Za dnia jestem gońcem, a nocą próbuję swoich sił w aktorstwie. To jest moja witryna. Mieszkam w Los Angeles, mam wspaniałego psa, który wabi się Jack i lubię pi&#241;a coladę (a także spacery, gdy pada deszcz).</blockquote>\n\n... lub taki:\n\n<blockquote>Firma Wihajstry XYZ została założona w 1971 roku i od początku swojego istnienia zajmuje się produkcją najlepszych wihajstrów. W naszej siedzibie w Gotham City pracuje ponad 2000 osób, które zajmują się robieniem całej masy fantastycznych rzeczy dla mieszkańców Gotham.</blockquote>\n\nJako nowy użytkownik WordPressa powinieneś przejść do <a href=\"http://wycieczki/wp-admin/\">swojego kokpitu</a>, aby usunąć tę stronę i utworzyć nowe strony z własną treścią. Baw się dobrze!', 'Przykładowa strona', '', 'trash', 'closed', 'open', '', 'przykladowa-strona__trashed', '', '', '2018-12-04 14:05:21', '2018-12-04 13:05:21', '', 0, 'http://wycieczki/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-11-29 13:30:14', '2018-11-29 12:30:14', '<h2>Kim jesteśmy</h2><p>Adres naszej strony internetowej to: http://wycieczki.</p><h2>Jakie dane osobiste zbieramy i dlaczego je zbieramy</h2><h3>Komentarze</h3><p>Kiedy odwiedzający witrynę zostawia komentarz, zbieramy dane widoczne w formularzu komentowania, jak i adres IP odwiedzającego oraz podpis jego przeglądarki jako pomoc przy wykrywaniu spamu.</p><p>Zanonimizowany ciąg znaków stworzony na podstawie twojego adresu email (tak zwany hash) może zostać przesłany do usługi Gravatar w celu sprawdzenia czy jej używasz. Polityka prywatności usługi Gravatar jest dostępna tutaj: https://automattic.com/privacy/. Po zatwierdzeniu komentarza twój obrazek profilowy jest widoczny publicznie w kontekście twojego komentarza.</p><h3>Media</h3><p>Jeśli jesteś zarejestrowanym użytkownikiem i wgrywasz na witrynę obrazki, powinieneś unikać przesyłania obrazków z tagami EXIF lokalizacji. Odwiedzający stronę mogą pobrać i odczytać pełne dane lokalizacyjne z obrazków w witrynie.</p><h3>Formularze kontaktowe</h3><h3>Ciasteczka</h3><p>Jeśli zostawisz na naszej witrynie komentarz, będziesz mógł wybrać opcję zapisu twojej nazwy, adresu email i adresu strony internetowej w ciasteczkach, dzięki którym podczas pisania kolejnych komentarzy powyższe informacje będą już dogodnie uzupełnione. Te ciasteczka wygasają po roku.</p><p>Jeśli masz konto i zalogujesz się na tej witrynie, utworzymy tymczasowe ciasteczko na potrzeby sprawdzenia czy twoja przeglądarka akceptuje ciasteczka. To ciasteczko nie zawiera żadnych danych osobistych i zostanie wyrzucone kiedy zamkniesz przeglądarkę.</p><p>Podczas logowania tworzymy dodatkowo kilka ciasteczek potrzebnych do zapisu twoich informacji logowania oraz wybranych opcji ekranu. Ciasteczka logowania wygasają po dwóch dniach, a opcji ekranu po roku. Jeśli zaznaczysz opcję &bdquo;Pamiętaj mnie&rdquo;, logowanie wygaśnie po dwóch tygodniach. Jeśli wylogujesz się ze swojego konta, ciasteczka logowania zostaną usunięte.</p><p>Jeśli zmodyfikujesz albo opublikujesz artykuł, w twojej przeglądarce zostanie zapisane dodatkowe ciasteczko. To ciasteczko nie zawiera żadnych danych osobistych, wskazując po prostu na identyfikator przed chwilą edytowanego artykułu. Wygasa ono po 1 dniu.</p><h3>Osadzone treści z innych witryn</h3><p>Artykuły na tej witrynie mogą zawierać osadzone treści (np. filmy, obrazki, artykuły itp.). Osadzone treści z innych witryn zachowują się analogicznie do tego, jakby użytkownik odwiedził bezpośrednio konkretną witrynę.</p><p>Witryny mogą zbierać informacje o tobie, używać ciasteczek, dołączać dodatkowe, zewnętrzne systemy śledzenia i monitorować twoje interakcje z osadzonym materiałem, włączając w to śledzenie twoich interakcji z osadzonym materiałem jeśli posiadasz konto i jesteś zalogowany w tamtej witrynie.</p><h3>Analiza statystyk</h3><h2>Z kim dzielimy się danymi</h2><h2>Jak długo przechowujemy twoje dane</h2><p>Jeśli zostawisz komentarz, jego treść i metadane będą przechowywane przez czas nieokreślony. Dzięki temu jesteśmy w stanie rozpoznawać i zatwierdzać kolejne komentarze automatycznie, bez wysyłania ich do każdorazowej moderacji.</p><p>Dla użytkowników którzy zarejestrowali się na naszej stronie internetowej (jeśli tacy są), przechowujemy również informacje osobiste wprowadzone w profilu. Każdy użytkownik może dokonać wglądu, korekty albo skasować swoje informacje osobiste w dowolnej chwili (nie licząc nazwy użytkownika, której nie można zmienić). Administratorzy strony również mogą przeglądać i modyfikować te informacje.</p><h2>Jakie masz prawa do swoich danych</h2><p>Jeśli masz konto użytkownika albo dodałeś komentarze w tej witrynie, możesz zażądać dostarczenia pliku z wyeksportowanym kompletem twoich danych osobistych będących w naszym posiadaniu, w tym całość tych dostarczonych przez ciebie. Możesz również zażądać usunięcia przez nas całości twoich danych osobistych w naszym posiadaniu. Nie dotyczy to żadnych danych które jesteśmy zobligowani zachować ze względów administracyjnych, prawnych albo bezpieczeństwa.</p><h2>Gdzie przesyłamy dane</h2><p>Komentarze gości mogą być sprawdzane za pomocą automatycznej usługi wykrywania spamu.</p><h2>Twoje dane kontaktowe</h2><h2>Informacje dodatkowe</h2><h3>Jak chronimy twoje dane?</h3><h3>Jakie mamy obowiązujące procedury w przypadku naruszenia prywatności danych</h3><h3>Od jakich stron trzecich otrzymujemy dane</h3><h3>Jakie automatyczne podejmowanie decyzji i/lub tworzenie profili przeprowadzamy z użyciem danych użytkownika</h3><h3>Branżowe wymogi regulacyjne dotyczące ujawniania informacji</h3>', 'Polityka prywatności', '', 'draft', 'closed', 'open', '', 'polityka-prywatnosci', '', '', '2018-11-29 13:30:14', '2018-11-29 12:30:14', '', 0, 'http://wycieczki/?page_id=3', 0, 'page', '', 0),
(6, 1, '2018-12-03 21:38:34', '2018-12-03 20:38:34', '', 'Oferty', '', 'publish', 'closed', 'closed', '', 'oferty', '', '', '2018-12-04 14:05:53', '2018-12-04 13:05:53', '', 0, 'http://wycieczki/sklep/', 0, 'page', '', 0),
(7, 1, '2018-12-03 21:38:34', '2018-12-03 20:38:34', '[woocommerce_cart]', 'Koszyk', '', 'publish', 'closed', 'closed', '', 'koszyk', '', '', '2018-12-03 21:38:34', '2018-12-03 20:38:34', '', 0, 'http://wycieczki/koszyk/', 0, 'page', '', 0),
(8, 1, '2018-12-03 21:38:34', '2018-12-03 20:38:34', '[woocommerce_checkout]', 'Moje zamowienia', '', 'publish', 'closed', 'closed', '', 'mojezamowienie', '', '', '2018-12-04 14:06:53', '2018-12-04 13:06:53', '', 0, 'http://wycieczki/zamowienie/', 0, 'page', '', 0),
(9, 1, '2018-12-03 21:38:34', '2018-12-03 20:38:34', '[woocommerce_my_account]', 'Moje konto', '', 'publish', 'closed', 'closed', '', 'moje-konto', '', '', '2018-12-03 21:38:34', '2018-12-03 20:38:34', '', 0, 'http://wycieczki/moje-konto/', 0, 'page', '', 0),
(10, 1, '2018-12-04 13:55:23', '2018-12-04 12:55:23', 'http://wycieczki/wp-content/uploads/2018/12/woocommerce-sample-products.csv', 'woocommerce-sample-products.csv', '', 'private', 'open', 'closed', '', 'woocommerce-sample-products-csv', '', '', '2018-12-04 13:55:23', '2018-12-04 12:55:23', '', 0, 'http://wycieczki/wp-content/uploads/2018/12/woocommerce-sample-products.csv', 0, 'attachment', 'text/csv', 0),
(12, 1, '2018-12-04 14:04:44', '2018-12-04 13:04:44', '', 'Zaloguj Sie | Moje Konto', '', 'publish', 'closed', 'closed', '', '12', '', '', '2018-12-05 15:46:19', '2018-12-05 14:46:19', '', 0, 'http://wycieczki/?p=12', 3, 'nav_menu_item', '', 0),
(13, 1, '2018-12-04 14:04:44', '2018-12-04 13:04:44', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2018-12-05 15:46:19', '2018-12-05 14:46:19', '', 0, 'http://wycieczki/?p=13', 4, 'nav_menu_item', '', 0),
(14, 1, '2018-12-04 14:04:44', '2018-12-04 13:04:44', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2018-12-05 15:46:19', '2018-12-05 14:46:19', '', 0, 'http://wycieczki/?p=14', 5, 'nav_menu_item', '', 0),
(15, 1, '2018-12-04 14:04:44', '2018-12-04 13:04:44', ' ', '', '', 'publish', 'closed', 'closed', '', 'oferte', '', '', '2018-12-05 15:46:18', '2018-12-05 14:46:18', '', 0, 'http://wycieczki/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2018-12-04 14:05:21', '2018-12-04 13:05:21', 'To jest przykładowa strona. Strony są inne niż wpisy na blogu, ponieważ nie tylko znajdują się zawsze w jednym miejscu, ale także pojawiają się w menu witryny (w większości motywów). Większość użytkowników umieszcza na swoich witrynach stronę z informacjami o sobie, dzięki którym przedstawiają się odwiedzającym ich witrynę. Taka strona może zawierać na przykład taki tekst:\n\n<blockquote>Cześć! Za dnia jestem gońcem, a nocą próbuję swoich sił w aktorstwie. To jest moja witryna. Mieszkam w Los Angeles, mam wspaniałego psa, który wabi się Jack i lubię pi&#241;a coladę (a także spacery, gdy pada deszcz).</blockquote>\n\n... lub taki:\n\n<blockquote>Firma Wihajstry XYZ została założona w 1971 roku i od początku swojego istnienia zajmuje się produkcją najlepszych wihajstrów. W naszej siedzibie w Gotham City pracuje ponad 2000 osób, które zajmują się robieniem całej masy fantastycznych rzeczy dla mieszkańców Gotham.</blockquote>\n\nJako nowy użytkownik WordPressa powinieneś przejść do <a href=\"http://wycieczki/wp-admin/\">swojego kokpitu</a>, aby usunąć tę stronę i utworzyć nowe strony z własną treścią. Baw się dobrze!', 'Przykładowa strona', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-12-04 14:05:21', '2018-12-04 13:05:21', '', 2, 'http://wycieczki/2018/12/04/2-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-12-04 14:05:53', '2018-12-04 13:05:53', '', 'Oferty', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-12-04 14:05:53', '2018-12-04 13:05:53', '', 6, 'http://wycieczki/2018/12/04/6-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-12-04 14:06:10', '2018-12-04 13:06:10', '', 'O nas', '', 'publish', 'closed', 'closed', '', 'o-nas', '', '', '2018-12-04 14:06:10', '2018-12-04 13:06:10', '', 0, 'http://wycieczki/?page_id=18', 0, 'page', '', 0),
(19, 1, '2018-12-04 14:06:10', '2018-12-04 13:06:10', '', 'O nas', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-12-04 14:06:10', '2018-12-04 13:06:10', '', 18, 'http://wycieczki/2018/12/04/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-12-04 14:06:53', '2018-12-04 13:06:53', '[woocommerce_checkout]', 'Moje zamowienia', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-12-04 14:06:53', '2018-12-04 13:06:53', '', 8, 'http://wycieczki/2018/12/04/8-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-12-04 14:07:12', '2018-12-04 13:07:12', '[wcj_product_add_new]', 'Dodaj oferte', '', 'publish', 'closed', 'closed', '', 'dodaj-oferte', '', '', '2018-12-04 15:35:58', '2018-12-04 14:35:58', '', 0, 'http://wycieczki/?page_id=21', 0, 'page', '', 0),
(22, 1, '2018-12-04 14:07:12', '2018-12-04 13:07:12', '', 'Dodaj oferte', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-12-04 14:07:12', '2018-12-04 13:07:12', '', 21, 'http://wycieczki/2018/12/04/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-12-04 14:12:49', '2018-12-04 13:12:49', '{\n    \"oceanwp::nav_menu_locations[topbar_menu]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:12:49\"\n    },\n    \"oceanwp::nav_menu_locations[main_menu]\": {\n        \"value\": 16,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:12:49\"\n    },\n    \"nav_menu_item[13]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Strona\",\n            \"url\": \"http://wycieczki/mojezamowienie/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"template\": \"\",\n            \"mega_template\": \"0\",\n            \"nolink\": \"\",\n            \"category_post\": \"\",\n            \"megamenu\": \"\",\n            \"megamenu_auto_width\": \"\",\n            \"megamenu_col\": \"\",\n            \"megamenu_heading\": \"\",\n            \"megamenu_widgetarea\": \"0\",\n            \"icon\": \"\",\n            \"nav_menu_term_id\": 16,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"Moje zamowienia\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:12:49\"\n    },\n    \"nav_menu_item[14]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Strona\",\n            \"url\": \"http://wycieczki/koszyk/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"template\": \"\",\n            \"mega_template\": \"0\",\n            \"nolink\": \"\",\n            \"category_post\": \"\",\n            \"megamenu\": \"\",\n            \"megamenu_auto_width\": \"\",\n            \"megamenu_col\": \"\",\n            \"megamenu_heading\": \"\",\n            \"megamenu_widgetarea\": \"0\",\n            \"icon\": \"\",\n            \"nav_menu_term_id\": 16,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"Koszyk\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:12:49\"\n    },\n    \"nav_menu_item[12]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Strona\",\n            \"url\": \"http://wycieczki/moje-konto/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"template\": \"\",\n            \"mega_template\": \"0\",\n            \"nolink\": \"\",\n            \"category_post\": \"\",\n            \"megamenu\": \"\",\n            \"megamenu_auto_width\": \"\",\n            \"megamenu_col\": \"\",\n            \"megamenu_heading\": \"\",\n            \"megamenu_widgetarea\": \"0\",\n            \"icon\": \"\",\n            \"nav_menu_term_id\": 16,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"Moje konto\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:12:49\"\n    },\n    \"nav_menu_item[15]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 6,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Strona\",\n            \"url\": \"http://wycieczki/oferty/\",\n            \"title\": \"Oferty\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"template\": \"\",\n            \"mega_template\": \"0\",\n            \"nolink\": \"\",\n            \"category_post\": \"\",\n            \"megamenu\": \"\",\n            \"megamenu_auto_width\": \"\",\n            \"megamenu_col\": \"\",\n            \"megamenu_heading\": \"\",\n            \"megamenu_widgetarea\": \"0\",\n            \"icon\": \"\",\n            \"nav_menu_term_id\": 16,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"Oferty\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:12:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f5320b92-2c9c-4728-abb7-23aec6f702cc', '', '', '2018-12-04 14:12:49', '2018-12-04 13:12:49', '', 0, 'http://wycieczki/2018/12/04/f5320b92-2c9c-4728-abb7-23aec6f702cc/', 0, 'customize_changeset', '', 0),
(24, 1, '2018-12-04 14:36:41', '2018-12-04 13:36:41', '{\n    \"oceanwp::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:28:23\"\n    },\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:28:23\"\n    },\n    \"page_on_front\": {\n        \"value\": \"6\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:28:23\"\n    },\n    \"oceanwp::ocean_search_custom_sidebar\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:28:23\"\n    },\n    \"oceanwp::ocean_top_bar\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:29:23\"\n    },\n    \"sidebars_widgets[sidebar]\": {\n        \"value\": [\n            \"categories-2\",\n            \"tag_cloud-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:35:05\"\n    },\n    \"widget_search[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjM6ImdmZCI7fQ==\",\n            \"title\": \"gfd\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"7630c623a6df40d58adae5ab4411d114\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:34:05\"\n    },\n    \"widget_tag_cloud[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjEyOiJDaG11cmEgdGFnb3ciO3M6NToiY291bnQiO2k6MTtzOjg6InRheG9ub215IjtzOjg6InBvc3RfdGFnIjt9\",\n            \"title\": \"Chmura tagow\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"9e7be35e4ed89588e9b9c1f91b3b0b3d\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:35:05\"\n    },\n    \"oceanwp::ocean_woo_custom_sidebar\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:36:05\"\n    },\n    \"oceanwp::ocean_woo_display_cart_product_added\": {\n        \"value\": \"yes\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:36:41\"\n    },\n    \"oceanwp::ocean_woo_cat_widget_style\": {\n        \"value\": \"dropdown\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:36:41\"\n    },\n    \"oceanwp::ocean_woo_account_page_style\": {\n        \"value\": \"side\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:36:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '05906333-81ff-4f46-96c8-4d559913ae28', '', '', '2018-12-04 14:36:41', '2018-12-04 13:36:41', '', 0, 'http://wycieczki/?p=24', 0, 'customize_changeset', '', 0),
(26, 1, '2018-12-04 14:42:34', '2018-12-04 13:42:34', 'http://wycieczki/wp-content/uploads/2018/12/sample_products.csv', 'sample_products.csv', '', 'private', 'open', 'closed', '', 'sample_products-csv', '', '', '2018-12-04 14:42:34', '2018-12-04 13:42:34', '', 0, 'http://wycieczki/wp-content/uploads/2018/12/sample_products.csv', 0, 'attachment', 'text/csv', 0),
(33, 1, '2018-12-04 14:45:59', '2018-12-04 13:45:59', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'V-Neck T-Shirt', 'This is a variable product.', 'trash', 'open', 'closed', '', 'v-neck-t-shirt__trashed', '', '', '2018-12-06 14:02:05', '2018-12-06 13:02:05', '', 0, 'http://wycieczki/produkt/import-placeholder-for-44/', 0, 'product', '', 0),
(34, 1, '2018-12-04 14:45:59', '2018-12-04 13:45:59', 'Świetny sposób na spędzenie czasu nocą w Warszawie szczególnie jak ktoś nie ma bladego pojęcia gdzie się wyrwać.\r\nMożliwość poznania nowych ludzi, zintegrowanie się z nimi to dodatkowy atut :) \r\nZałoga w składzie Kasia, Wlada i Dean robią świetną robotę uśmiechnięci, z poczuciem humoru, pełni energii wprowadzają świetną atmosferę co sprzyja łatwiejszym kontaktom z innymi uczestnikami.', 'Warsaw Pub Crawl', 'Wycieczki po pubach, barach i klubach', 'publish', 'open', 'closed', '', 'hoodie', '', '', '2018-12-06 14:16:24', '2018-12-06 13:16:24', '', 0, 'http://wycieczki/produkt/import-placeholder-for-45/', 0, 'product', '', 3),
(35, 1, '2018-12-04 14:45:59', '2018-12-04 13:45:59', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Logo', 'This is a simple product.', 'trash', 'open', 'closed', '', 'hoodie-with-logo__trashed', '', '', '2018-12-06 17:33:20', '2018-12-06 16:33:20', '', 0, 'http://wycieczki/produkt/import-placeholder-for-46/', 0, 'product', '', 0),
(36, 1, '2018-12-04 14:46:00', '2018-12-04 13:46:00', '<strong>Zabytki w Warszawie</strong>\r\nNie sposób wymienić wszystkich zabytków stolicy, dlatego podaję tylko te najważniejsze i najciekawsze:\r\n\r\n- <em>Plac Zamkowy</em> - jeden z centralnych placów w Warszawie, z Zamkiem Królewskim oraz Kolumną Zygmunta i dorożkami czekającymi na turystów pragnących zwiedzić Starówkę\r\n\r\n- <em>Rynek</em> - ze słynną warszawską syrenką - symbolem miasta oraz pięknymi kamienicami, których bogato zdobione fasady utrzymane są w ciepłej kolorystyce złota, brązu i brudnej czerwieni. Nigdy nie brakuje tu ludzi, a dodatkowo pełno tu kwiatów, obrazów i wszystkiego, czego możnaby oczekiwać od europejskiej stolicy.\r\n\r\n- <em>Pałac w Wilanowie</em>, ul. Stanisława Kostki Potockiego 10/16 - nie sposób go pominąć, choć znajduje się poza centrum Warszawy, to wspaniałe miejsce, zachowane w idealnym stanie, jak zresztą większość zabytków w stolicy. Pałac jest naprawdę potężny, bogato zdobiony, a wokół roztacza się zadbany ogród włoski i park angielski. Kompleks powstał jako letnia rezydencja króla Jana III Sobieskiego\r\n\r\n- <em>Pałac Kultury i Nauki, plac Defilad</em> - relikt minionej epoki, jeden z symboli Warszawy, a przy tym najwyższy budynek w Polsce!\r\n\r\n- <em>Archikatedra w Warszawie, ul. Świętojańska</em> - budowla zrekonstruowana po wojnie, w stylu mazowieckiego gotyku, sięga korzeniami XIV wieku\r\n\r\n- <em>Pałac na Wyspie, Park Łazienkowski</em> - zabytkowy pałac w słynnym, pięknym parku, to tutaj odbywały się słynne czwartkowe obiady\r\n\r\n- <em>Powązki w Warszawie, ul. Powązkowska</em> - najstarszy i najpiękniejszy cmentarz w stolicy, a przy tym ogromny i skrywający prochy znanych i nieznanych Polaków\r\n\r\n- <strong>Barbakan w Warszawie, ul. Nowomiejska</strong>\r\n\r\n - pozostałość dawnych obwarowań miasta\r\n\r\n\r\n<div class=\"row\">\r\n  <div class=\"column\">\r\n    <img src=\"http://wycieczki/wp-content/uploads/2018/12/warszawa-20-300x199.jpg\"  style=\"width:100%\">\r\n  </div>\r\n  <div class=\"column\">\r\n    <img src=\"http://wycieczki/wp-content/uploads/2018/12/warszawa-24-300x200.jpg\"  style=\"width:100%\">\r\n  </div>\r\n  <div class=\"column\">\r\n    <img src=\"http://wycieczki/wp-content/uploads/2018/12/zamek-krolewski-w-warszawie-213782-1-300x200.jpg\" alt=\"\" style=\"width:100%\">\r\n  </div>\r\n</div>\r\n\r\n\r\n\r\n', 'Warszawa', 'Piękne zabytki Warszawy które zostały wpisani na listę Światowego Dziedzictwa Kulturowego.', 'publish', 'open', 'closed', '', 't-shirt', '', '', '2018-12-05 11:02:58', '2018-12-05 10:02:58', '', 0, 'http://wycieczki/produkt/import-placeholder-for-47/', 0, 'product', '', 1),
(37, 1, '2018-12-04 14:46:00', '2018-12-04 13:46:00', 'Wycieczki, Wypoczynek na świeżym powietrzu, Wycieczki segwayami, Wycieczki po mieście, Wycieczki historyczne, Wycieczki ekologiczne', 'Super Segway', 'Wypoczynek na świeżym powietrzu w lokalizacji Warszawa', 'publish', 'open', 'closed', '', 'beanie', '', '', '2018-12-06 18:01:18', '2018-12-06 17:01:18', '', 0, 'http://wycieczki/produkt/import-placeholder-for-48/', 0, 'product', '', 1),
(38, 1, '2018-12-04 14:46:00', '2018-12-04 13:46:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Belt', 'This is a simple product.', 'trash', 'open', 'closed', '', 'belt__trashed', '', '', '2018-12-06 14:02:05', '2018-12-06 13:02:05', '', 0, 'http://wycieczki/produkt/import-placeholder-for-58/', 0, 'product', '', 2),
(39, 1, '2018-12-04 14:46:00', '2018-12-04 13:46:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Cap', 'This is a simple product.', 'trash', 'open', 'closed', '', 'cap__trashed', '', '', '2018-12-06 14:02:05', '2018-12-06 13:02:05', '', 0, 'http://wycieczki/produkt/import-placeholder-for-60/', 0, 'product', '', 0),
(40, 1, '2018-12-04 14:46:00', '2018-12-04 13:46:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Sunglasses', 'This is a simple product.', 'trash', 'open', 'closed', '', 'sunglasses__trashed', '', '', '2018-12-05 10:16:13', '2018-12-05 09:16:13', '', 0, 'http://wycieczki/produkt/import-placeholder-for-62/', 0, 'product', '', 0),
(41, 1, '2018-12-04 14:46:00', '2018-12-04 13:46:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Pocket', 'This is a simple product.', 'trash', 'open', 'closed', '', 'hoodie-with-pocket__trashed', '', '', '2018-12-05 10:16:13', '2018-12-05 09:16:13', '', 0, 'http://wycieczki/produkt/import-placeholder-for-64/', 0, 'product', '', 0),
(42, 1, '2018-12-04 14:46:00', '2018-12-04 13:46:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Zipper', 'This is a simple product.', 'trash', 'open', 'closed', '', 'hoodie-with-zipper__trashed', '', '', '2018-12-05 10:16:13', '2018-12-05 09:16:13', '', 0, 'http://wycieczki/produkt/import-placeholder-for-66/', 0, 'product', '', 0),
(43, 1, '2018-12-04 14:46:01', '2018-12-04 13:46:01', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Long Sleeve Tee', 'This is a simple product.', 'trash', 'open', 'closed', '', 'long-sleeve-tee__trashed', '', '', '2018-12-05 10:16:12', '2018-12-05 09:16:12', '', 0, 'http://wycieczki/produkt/import-placeholder-for-68/', 0, 'product', '', 0),
(44, 1, '2018-12-04 14:46:01', '2018-12-04 13:46:01', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Polo', 'This is a simple product.', 'trash', 'open', 'closed', '', 'polo__trashed', '', '', '2018-12-05 10:16:12', '2018-12-05 09:16:12', '', 0, 'http://wycieczki/produkt/import-placeholder-for-70/', 0, 'product', '', 0),
(45, 1, '2018-12-04 14:46:01', '2018-12-04 13:46:01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.', 'Album', 'This is a simple, virtual product.', 'trash', 'open', 'closed', '', 'album__trashed', '', '', '2018-12-05 10:16:12', '2018-12-05 09:16:12', '', 0, 'http://wycieczki/produkt/import-placeholder-for-73/', 0, 'product', '', 3),
(46, 1, '2018-12-04 14:46:01', '2018-12-04 13:46:01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.', 'Single', 'This is a simple, virtual product.', 'trash', 'open', 'closed', '', 'single__trashed', '', '', '2018-12-05 10:16:12', '2018-12-05 09:16:12', '', 0, 'http://wycieczki/produkt/import-placeholder-for-75/', 0, 'product', '', 0),
(55, 1, '2018-12-04 14:46:02', '2018-12-04 13:46:02', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'T-Shirt with Logo', 'This is a simple product.', 'trash', 'open', 'closed', '', 't-shirt-with-logo__trashed', '', '', '2018-12-05 10:16:12', '2018-12-05 09:16:12', '', 0, 'http://wycieczki/produkt/import-placeholder-for-83/', 0, 'product', '', 0),
(56, 1, '2018-12-04 14:46:03', '2018-12-04 13:46:03', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Beanie with Logo', 'This is a simple product.', 'trash', 'open', 'closed', '', 'beanie-with-logo__trashed', '', '', '2018-12-05 10:16:12', '2018-12-05 09:16:12', '', 0, 'http://wycieczki/produkt/import-placeholder-for-85/', 0, 'product', '', 0),
(57, 1, '2018-12-04 14:46:03', '2018-12-04 13:46:03', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Logo Collection', 'This is a grouped product.', 'trash', 'open', 'closed', '', 'logo-collection__trashed', '', '', '2018-12-05 10:16:12', '2018-12-05 09:16:12', '', 0, 'http://wycieczki/produkt/import-placeholder-for-87/', 0, 'product', '', 0),
(61, 1, '2018-12-04 14:46:03', '2018-12-04 13:46:03', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'WordPress Pennant', 'This is an external product.', 'trash', 'open', 'closed', '', 'wordpress-pennant__trashed', '', '', '2018-12-05 10:16:12', '2018-12-05 09:16:12', '', 0, 'http://wycieczki/produkt/import-placeholder-for-89/', 0, 'product', '', 0),
(63, 1, '2018-12-04 14:46:05', '2018-12-04 13:46:05', '', 'vneck-tee-2.jpg', '', 'inherit', 'open', 'closed', '', 'vneck-tee-2-jpg', '', '', '2018-12-04 14:46:05', '2018-12-04 13:46:05', '', 33, 'http://wycieczki/wp-content/uploads/2018/12/vneck-tee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2018-12-04 14:46:20', '2018-12-04 13:46:20', '', 'vnech-tee-green-1.jpg', '', 'inherit', 'open', 'closed', '', 'vnech-tee-green-1-jpg', '', '', '2018-12-04 14:46:20', '2018-12-04 13:46:20', '', 33, 'http://wycieczki/wp-content/uploads/2018/12/vnech-tee-green-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2018-12-04 14:46:22', '2018-12-04 13:46:22', '', 'vnech-tee-blue-1.jpg', '', 'inherit', 'open', 'closed', '', 'vnech-tee-blue-1-jpg', '', '', '2018-12-04 14:46:22', '2018-12-04 13:46:22', '', 33, 'http://wycieczki/wp-content/uploads/2018/12/vnech-tee-blue-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2018-12-04 14:46:24', '2018-12-04 13:46:24', '', 'hoodie-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-2-jpg', '', '', '2018-12-04 14:46:24', '2018-12-04 13:46:24', '', 34, 'http://wycieczki/wp-content/uploads/2018/12/hoodie-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2018-12-04 14:46:25', '2018-12-04 13:46:25', '', 'hoodie-blue-1.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-blue-1-jpg', '', '', '2018-12-04 14:46:25', '2018-12-04 13:46:25', '', 34, 'http://wycieczki/wp-content/uploads/2018/12/hoodie-blue-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2018-12-04 14:46:27', '2018-12-04 13:46:27', '', 'hoodie-green-1.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-green-1-jpg', '', '', '2018-12-04 14:46:27', '2018-12-04 13:46:27', '', 34, 'http://wycieczki/wp-content/uploads/2018/12/hoodie-green-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2018-12-04 14:46:28', '2018-12-04 13:46:28', '', 'hoodie-with-logo-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-logo-2-jpg', '', '', '2018-12-04 14:46:28', '2018-12-04 13:46:28', '', 34, 'http://wycieczki/wp-content/uploads/2018/12/hoodie-with-logo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2018-12-04 14:46:33', '2018-12-04 13:46:33', '', 'tshirt-2.jpg', '', 'inherit', 'open', 'closed', '', 'tshirt-2-jpg', '', '', '2018-12-04 14:46:33', '2018-12-04 13:46:33', '', 36, 'http://wycieczki/wp-content/uploads/2018/12/tshirt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2018-12-04 14:46:34', '2018-12-04 13:46:34', '', 'beanie-2.jpg', '', 'inherit', 'open', 'closed', '', 'beanie-2-jpg', '', '', '2018-12-04 14:46:34', '2018-12-04 13:46:34', '', 37, 'http://wycieczki/wp-content/uploads/2018/12/beanie-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2018-12-04 14:46:36', '2018-12-04 13:46:36', '', 'belt-2.jpg', '', 'inherit', 'open', 'closed', '', 'belt-2-jpg', '', '', '2018-12-04 14:46:36', '2018-12-04 13:46:36', '', 38, 'http://wycieczki/wp-content/uploads/2018/12/belt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2018-12-04 14:46:37', '2018-12-04 13:46:37', '', 'cap-2.jpg', '', 'inherit', 'open', 'closed', '', 'cap-2-jpg', '', '', '2018-12-04 14:46:37', '2018-12-04 13:46:37', '', 39, 'http://wycieczki/wp-content/uploads/2018/12/cap-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2018-12-04 14:46:39', '2018-12-04 13:46:39', '', 'sunglasses-2.jpg', '', 'inherit', 'open', 'closed', '', 'sunglasses-2-jpg', '', '', '2018-12-04 14:46:39', '2018-12-04 13:46:39', '', 40, 'http://wycieczki/wp-content/uploads/2018/12/sunglasses-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2018-12-04 14:46:40', '2018-12-04 13:46:40', '', 'hoodie-with-pocket-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-pocket-2-jpg', '', '', '2018-12-04 14:46:40', '2018-12-04 13:46:40', '', 41, 'http://wycieczki/wp-content/uploads/2018/12/hoodie-with-pocket-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2018-12-04 14:46:42', '2018-12-04 13:46:42', '', 'hoodie-with-zipper-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-zipper-2-jpg', '', '', '2018-12-04 14:46:42', '2018-12-04 13:46:42', '', 42, 'http://wycieczki/wp-content/uploads/2018/12/hoodie-with-zipper-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2018-12-04 14:46:43', '2018-12-04 13:46:43', '', 'long-sleeve-tee-2.jpg', '', 'inherit', 'open', 'closed', '', 'long-sleeve-tee-2-jpg', '', '', '2018-12-04 14:46:43', '2018-12-04 13:46:43', '', 43, 'http://wycieczki/wp-content/uploads/2018/12/long-sleeve-tee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2018-12-04 14:46:45', '2018-12-04 13:46:45', '', 'polo-2.jpg', '', 'inherit', 'open', 'closed', '', 'polo-2-jpg', '', '', '2018-12-04 14:46:45', '2018-12-04 13:46:45', '', 44, 'http://wycieczki/wp-content/uploads/2018/12/polo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2018-12-04 14:46:46', '2018-12-04 13:46:46', '', 'album-1.jpg', '', 'inherit', 'open', 'closed', '', 'album-1-jpg', '', '', '2018-12-04 14:46:46', '2018-12-04 13:46:46', '', 45, 'http://wycieczki/wp-content/uploads/2018/12/album-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2018-12-04 14:46:48', '2018-12-04 13:46:48', '', 'single-1.jpg', '', 'inherit', 'open', 'closed', '', 'single-1-jpg', '', '', '2018-12-04 14:46:48', '2018-12-04 13:46:48', '', 46, 'http://wycieczki/wp-content/uploads/2018/12/single-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2018-12-04 14:46:50', '2018-12-04 13:46:50', '', 't-shirt-with-logo-1.jpg', '', 'inherit', 'open', 'closed', '', 't-shirt-with-logo-1-jpg', '', '', '2018-12-04 14:46:50', '2018-12-04 13:46:50', '', 55, 'http://wycieczki/wp-content/uploads/2018/12/t-shirt-with-logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2018-12-04 14:46:55', '2018-12-04 13:46:55', '', 'beanie-with-logo-1.jpg', '', 'inherit', 'open', 'closed', '', 'beanie-with-logo-1-jpg', '', '', '2018-12-04 14:46:55', '2018-12-04 13:46:55', '', 56, 'http://wycieczki/wp-content/uploads/2018/12/beanie-with-logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2018-12-04 14:46:57', '2018-12-04 13:46:57', '', 'logo-1.jpg', '', 'inherit', 'open', 'closed', '', 'logo-1-jpg', '', '', '2018-12-04 14:46:57', '2018-12-04 13:46:57', '', 57, 'http://wycieczki/wp-content/uploads/2018/12/logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2018-12-04 14:46:59', '2018-12-04 13:46:59', '', 'pennant-1.jpg', '', 'inherit', 'open', 'closed', '', 'pennant-1-jpg', '', '', '2018-12-04 14:46:59', '2018-12-04 13:46:59', '', 61, 'http://wycieczki/wp-content/uploads/2018/12/pennant-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2018-12-04 14:52:31', '2018-12-04 13:52:31', '{\n    \"blogdescription\": {\n        \"value\": \"Zobacz nasze oferty\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:52:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1f2fdc94-067f-427a-935f-d28660b59023', '', '', '2018-12-04 14:52:31', '2018-12-04 13:52:31', '', 0, 'http://wycieczki/2018/12/04/1f2fdc94-067f-427a-935f-d28660b59023/', 0, 'customize_changeset', '', 0),
(86, 1, '2018-12-04 14:55:01', '2018-12-04 13:55:01', '{\n    \"nav_menu_item[14]\": {\n        \"value\": {\n            \"menu_item_parent\": 12,\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Strona\",\n            \"url\": \"http://wycieczki/koszyk/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"template\": \"\",\n            \"mega_template\": \"\",\n            \"nolink\": \"\",\n            \"category_post\": \"\",\n            \"megamenu\": \"\",\n            \"megamenu_auto_width\": \"\",\n            \"megamenu_col\": \"\",\n            \"megamenu_heading\": \"\",\n            \"megamenu_widgetarea\": \"\",\n            \"icon\": \"\",\n            \"nav_menu_term_id\": 16,\n            \"position\": 5,\n            \"status\": \"publish\",\n            \"original_title\": \"Koszyk\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:55:01\"\n    },\n    \"nav_menu_item[12]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Strona\",\n            \"url\": \"http://wycieczki/moje-konto/\",\n            \"title\": \"Zaloguj Si\\u0119 | Moje Konto\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"template\": \"\",\n            \"mega_template\": \"\",\n            \"nolink\": \"\",\n            \"category_post\": \"\",\n            \"megamenu\": \"\",\n            \"megamenu_auto_width\": \"\",\n            \"megamenu_col\": \"\",\n            \"megamenu_heading\": \"\",\n            \"megamenu_widgetarea\": \"\",\n            \"icon\": \"\",\n            \"nav_menu_term_id\": 16,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"Moje konto\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:55:01\"\n    },\n    \"nav_menu_item[-1625444047]\": {\n        \"value\": {\n            \"object_id\": 18,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"O nas\",\n            \"url\": \"http://wycieczki/o-nas/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"O nas\",\n            \"nav_menu_term_id\": 16,\n            \"_invalid\": false,\n            \"type_label\": \"Strona\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:55:01\"\n    },\n    \"nav_menu_item[13]\": {\n        \"value\": {\n            \"menu_item_parent\": 12,\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Strona\",\n            \"url\": \"http://wycieczki/mojezamowienie/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"template\": \"\",\n            \"mega_template\": \"\",\n            \"nolink\": \"\",\n            \"category_post\": \"\",\n            \"megamenu\": \"\",\n            \"megamenu_auto_width\": \"\",\n            \"megamenu_col\": \"\",\n            \"megamenu_heading\": \"\",\n            \"megamenu_widgetarea\": \"\",\n            \"icon\": \"\",\n            \"nav_menu_term_id\": 16,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"Moje zamowienia\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:55:01\"\n    },\n    \"nav_menu_item[-1045994018]\": {\n        \"value\": {\n            \"object_id\": 21,\n            \"object\": \"page\",\n            \"menu_item_parent\": 12,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"Dodaj oferte\",\n            \"url\": \"http://wycieczki/dodaj-oferte/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Dodaj oferte\",\n            \"nav_menu_term_id\": 16,\n            \"_invalid\": false,\n            \"type_label\": \"Strona\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:55:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '32539668-9905-4a34-a46d-824220fad3e9', '', '', '2018-12-04 14:55:01', '2018-12-04 13:55:01', '', 0, 'http://wycieczki/?p=86', 0, 'customize_changeset', '', 0),
(87, 1, '2018-12-04 14:55:01', '2018-12-04 13:55:01', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2018-12-05 15:46:19', '2018-12-05 14:46:19', '', 0, 'http://wycieczki/2018/12/04/87/', 2, 'nav_menu_item', '', 0),
(88, 1, '2018-12-04 14:55:01', '2018-12-04 13:55:01', ' ', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2018-12-05 15:46:19', '2018-12-05 14:46:19', '', 0, 'http://wycieczki/2018/12/04/88/', 6, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(89, 1, '2018-12-04 15:05:54', '2018-12-04 14:05:54', '{\n    \"sidebars_widgets[sidebar]\": {\n        \"value\": [\n            \"categories-2\",\n            \"tag_cloud-3\",\n            \"woocommerce_price_filter-3\",\n            \"woocommerce_layered_nav-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:57:02\"\n    },\n    \"widget_woocommerce_price_filter[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:57:02\"\n    },\n    \"widget_woocommerce_layered_nav[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:57:02\"\n    },\n    \"oceanwp::ocean_primary_color\": {\n        \"value\": \"#0b890d\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:59:02\"\n    },\n    \"oceanwp::ocean_hover_primary_color\": {\n        \"value\": \"#01420f\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 13:59:02\"\n    },\n    \"oceanwp::ocean_sidebar_width\": {\n        \"value\": \"28\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:00:02\"\n    },\n    \"oceanwp::ocean_page_single_layout\": {\n        \"value\": \"full-width\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:01:02\"\n    },\n    \"oceanwp::ocean_pagination_border_width\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:02:02\"\n    },\n    \"oceanwp::body_typography[font-family]\": {\n        \"value\": \"ABeeZee\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:03:03\"\n    },\n    \"oceanwp::logo_typography[font-weight]\": {\n        \"value\": \"700\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:04:03\"\n    },\n    \"oceanwp::menu_typography[font-weight]\": {\n        \"value\": \"700\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:04:03\"\n    },\n    \"oceanwp::ocean_header_height\": {\n        \"value\": \"67\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:05:02\"\n    },\n    \"oceanwp::ocean_header_background\": {\n        \"value\": \"#34aa19\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:05:54\"\n    },\n    \"oceanwp::ocean_links_color_hover\": {\n        \"value\": \"#0b890d\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:05:54\"\n    },\n    \"oceanwp::ocean_logo_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:05:54\"\n    },\n    \"oceanwp::ocean_logo_hover_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:05:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9baf4441-c991-4ff9-b5ff-78252b1a9d7b', '', '', '2018-12-04 15:05:54', '2018-12-04 14:05:54', '', 0, 'http://wycieczki/?p=89', 0, 'customize_changeset', '', 0),
(90, 1, '2018-12-04 15:07:05', '2018-12-04 14:07:05', '{\n    \"oceanwp::ocean_menu_links_effect\": {\n        \"value\": \"one\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:07:03\"\n    },\n    \"oceanwp::ocean_menu_links_effect_blue_color\": {\n        \"value\": \"#4af904\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:07:03\"\n    },\n    \"oceanwp::ocean_menu_link_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:07:03\"\n    },\n    \"oceanwp::ocean_menu_link_color_hover\": {\n        \"value\": \"#4af904\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:07:03\"\n    },\n    \"oceanwp::ocean_dropdown_menu_top_border\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:07:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3ec9e3d4-c28a-4153-80c8-b2a666551dc8', '', '', '2018-12-04 15:07:05', '2018-12-04 14:07:05', '', 0, 'http://wycieczki/?p=90', 0, 'customize_changeset', '', 0),
(91, 1, '2018-12-04 15:08:48', '2018-12-04 14:08:48', '{\n    \"oceanwp::ocean_woo_display_cart_product_added\": {\n        \"value\": \"no\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:08:48\"\n    },\n    \"oceanwp::ocean_woo_menu_icon\": {\n        \"value\": \"fa fa-shopping-bag\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:08:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8a2e8961-f2c6-4a6b-b922-ad61283c1a49', '', '', '2018-12-04 15:08:48', '2018-12-04 14:08:48', '', 0, 'http://wycieczki/2018/12/04/8a2e8961-f2c6-4a6b-b922-ad61283c1a49/', 0, 'customize_changeset', '', 0),
(92, 1, '2018-12-04 15:16:39', '2018-12-04 14:16:39', '{\n    \"oceanwp::ocean_woo_menu_icon\": {\n        \"value\": \"icon-handbag\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:09:02\"\n    },\n    \"oceanwp::ocean_woo_menu_icon_size_tablet\": {\n        \"value\": 13,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:09:02\"\n    },\n    \"oceanwp::ocean_woo_menu_icon_center_vertically_tablet\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:10:02\"\n    },\n    \"oceanwp::ocean_woo_cart_dropdown_width\": {\n        \"value\": \"350\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:10:02\"\n    },\n    \"oceanwp::ocean_woo_product_layout\": {\n        \"value\": \"full-width\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:16:39\"\n    },\n    \"oceanwp::ocean_woo_product_image_width\": {\n        \"value\": \"45\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:16:39\"\n    },\n    \"oceanwp::ocean_woo_product_summary_width\": {\n        \"value\": \"50\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:16:39\"\n    },\n    \"oceanwp::ocean_woo_product_addtocart_style\": {\n        \"value\": \"big\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:16:39\"\n    },\n    \"oceanwp::ocean_woo_product_tabs_layout\": {\n        \"value\": \"section\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:16:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6e0ca502-a661-439f-a12a-a92474218427', '', '', '2018-12-04 15:16:39', '2018-12-04 14:16:39', '', 0, 'http://wycieczki/?p=92', 0, 'customize_changeset', '', 0),
(93, 1, '2018-12-04 15:17:54', '2018-12-04 14:17:54', '{\n    \"blogname\": {\n        \"value\": \"Twoja Wycieczka\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:17:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8e54861f-f1e3-463d-901c-0fc312f80573', '', '', '2018-12-04 15:17:54', '2018-12-04 14:17:54', '', 0, 'http://wycieczki/2018/12/04/8e54861f-f1e3-463d-901c-0fc312f80573/', 0, 'customize_changeset', '', 0),
(94, 1, '2018-12-04 15:22:09', '2018-12-04 14:22:09', '{\n    \"oceanwp::ocean_woo_account_page_style\": {\n        \"value\": \"original\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 14:22:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '917fa271-9160-4f8e-ba9c-ab03081dce3c', '', '', '2018-12-04 15:22:09', '2018-12-04 14:22:09', '', 0, 'http://wycieczki/2018/12/04/917fa271-9160-4f8e-ba9c-ab03081dce3c/', 0, 'customize_changeset', '', 0),
(95, 1, '2018-12-04 15:35:58', '2018-12-04 14:35:58', '[wcj_product_add_new]', 'Dodaj oferte', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-12-04 15:35:58', '2018-12-04 14:35:58', '', 21, 'http://wycieczki/2018/12/04/21-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2018-12-04 23:49:59', '2018-12-04 22:49:59', '', 'New Project', '', 'inherit', 'open', 'closed', '', 'new-project', '', '', '2018-12-04 23:49:59', '2018-12-04 22:49:59', '', 38, 'http://wycieczki/wp-content/uploads/2018/12/New-Project.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2018-12-04 23:51:40', '2018-12-04 22:51:40', '', 'New Project', '', 'inherit', 'open', 'closed', '', 'new-project-2', '', '', '2018-12-04 23:51:40', '2018-12-04 22:51:40', '', 38, 'http://wycieczki/wp-content/uploads/2018/12/New-Project-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2018-12-05 00:01:56', '2018-12-04 23:01:56', '{\n    \"sidebars_widgets[footer-one]\": {\n        \"value\": [\n            \"custom_html-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 23:00:54\"\n    },\n    \"widget_custom_html[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo3OiJjb250ZW50IjtzOjA6IiI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"e9d417ca11ad0d1a4779ae3c9594f48d\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 23:01:18\"\n    },\n    \"oceanwp::body_typography[font-size]\": {\n        \"value\": \"15px\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 23:01:56\"\n    },\n    \"oceanwp::body_typography[line-height]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 23:01:56\"\n    },\n    \"oceanwp::body_typography[color]\": {\n        \"value\": \"#0a0000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 23:01:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '806b3b44-dd1b-41bd-afd6-ae06fec87f2e', '', '', '2018-12-05 00:01:56', '2018-12-04 23:01:56', '', 0, 'http://wycieczki/?p=99', 0, 'customize_changeset', '', 0),
(100, 1, '2018-12-05 00:06:22', '2018-12-04 23:06:22', '{\n    \"custom_css[oceanwp]\": {\n        \"value\": \".attachmentRules{\\n\\tcolor: white\\n}\\n#attachment{\\n\\tcolor: white\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 23:06:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '18c7701f-d42d-419b-98c5-c0de4d9ce467', '', '', '2018-12-05 00:06:22', '2018-12-04 23:06:22', '', 0, 'http://wycieczki/?p=100', 0, 'customize_changeset', '', 0),
(101, 1, '2018-12-05 00:06:23', '2018-12-04 23:06:23', '\n#attachment{\n	color: white\n}\n.column {\n    float: left;\n    width: 33.33%;\n\n}\n\n.row::after {\n    content: \"\";\n    clear: both;\n    display: table;\n}\n\n.woo-dropdown-cat .widget_product_categories li.cat-parent .open-this{\n		right: auto;\n}', 'oceanwp', '', 'publish', 'closed', 'closed', '', 'oceanwp', '', '', '2018-12-06 14:33:46', '2018-12-06 13:33:46', '', 0, 'http://wycieczki/2018/12/05/oceanwp/', 0, 'custom_css', '', 0),
(102, 1, '2018-12-05 00:06:23', '2018-12-04 23:06:23', '.attachmentRules{\n	color: white\n}\n#attachment{\n	color: white\n}', 'oceanwp', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-12-05 00:06:23', '2018-12-04 23:06:23', '', 101, 'http://wycieczki/2018/12/05/101-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2018-12-05 00:21:42', '2018-12-04 23:21:42', '{\n    \"custom_css[oceanwp]\": {\n        \"value\": \"\\n#attachment{\\n\\tcolor: white\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-04 23:21:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '295f0138-fb24-47d1-ad32-d9599912ed71', '', '', '2018-12-05 00:21:42', '2018-12-04 23:21:42', '', 0, 'http://wycieczki/2018/12/05/295f0138-fb24-47d1-ad32-d9599912ed71/', 0, 'customize_changeset', '', 0),
(105, 1, '2018-12-05 00:21:42', '2018-12-04 23:21:42', '\n#attachment{\n	color: white\n}', 'oceanwp', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-12-05 00:21:42', '2018-12-04 23:21:42', '', 101, 'http://wycieczki/2018/12/05/101-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-12-05 10:08:06', '2018-12-05 09:08:06', '{\n    \"nav_menu_item[12]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Strona\",\n            \"url\": \"http://wycieczki/moje-konto/\",\n            \"title\": \"Zaloguj Sie | Moje Konto\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"template\": \"\",\n            \"mega_template\": \"0\",\n            \"nolink\": \"\",\n            \"category_post\": \"\",\n            \"megamenu\": \"\",\n            \"megamenu_auto_width\": \"\",\n            \"megamenu_col\": \"\",\n            \"megamenu_heading\": \"\",\n            \"megamenu_widgetarea\": \"0\",\n            \"icon\": \"\",\n            \"nav_menu_term_id\": 16,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"Moje konto\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 09:08:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '882fc624-b7e6-4a46-99b0-f5f099006db1', '', '', '2018-12-05 10:08:06', '2018-12-05 09:08:06', '', 0, 'http://wycieczki/2018/12/05/882fc624-b7e6-4a46-99b0-f5f099006db1/', 0, 'customize_changeset', '', 0),
(109, 1, '2018-12-05 11:01:54', '2018-12-05 10:01:54', '<strong>Zabytki w Warszawie</strong>\nNie sposób wymienić wszystkich zabytków stolicy, dlatego podaję tylko te najważniejsze i najciekawsze:\n\n- <em>Plac Zamkowy</em> - jeden z centralnych placów w Warszawie, z Zamkiem Królewskim oraz Kolumną Zygmunta i dorożkami czekającymi na turystów pragnących zwiedzić Starówkę\n\n- <em>Rynek</em> - ze słynną warszawską syrenką - symbolem miasta oraz pięknymi kamienicami, których bogato zdobione fasady utrzymane są w ciepłej kolorystyce złota, brązu i brudnej czerwieni. Nigdy nie brakuje tu ludzi, a dodatkowo pełno tu kwiatów, obrazów i wszystkiego, czego możnaby oczekiwać od europejskiej stolicy.\n\n- <em>Pałac w Wilanowie</em>, ul. Stanisława Kostki Potockiego 10/16 - nie sposób go pominąć, choć znajduje się poza centrum Warszawy, to wspaniałe miejsce, zachowane w idealnym stanie, jak zresztą większość zabytków w stolicy. Pałac jest naprawdę potężny, bogato zdobiony, a wokół roztacza się zadbany ogród włoski i park angielski. Kompleks powstał jako letnia rezydencja króla Jana III Sobieskiego\n\n- <em>Pałac Kultury i Nauki, plac Defilad</em> - relikt minionej epoki, jeden z symboli Warszawy, a przy tym najwyższy budynek w Polsce!\n\n- <em>Archikatedra w Warszawie, ul. Świętojańska</em> - budowla zrekonstruowana po wojnie, w stylu mazowieckiego gotyku, sięga korzeniami XIV wieku\n\n- <em>Pałac na Wyspie, Park Łazienkowski</em> - zabytkowy pałac w słynnym, pięknym parku, to tutaj odbywały się słynne czwartkowe obiady\n\n- <em>Powązki w Warszawie, ul. Powązkowska</em> - najstarszy i najpiękniejszy cmentarz w stolicy, a przy tym ogromny i skrywający prochy znanych i nieznanych Polaków\n\n- <strong>Barbakan w Warszawie, ul. Nowomiejska</strong>\n\n - pozostałość dawnych obwarowań miasta\n\n\n<div class=\"row\">\n  <div class=\"column\">\n    <img src=\"http://wycieczki/wp-content/uploads/2018/12/warszawa-20-300x199.jpg\"  style=\"width:100%\">\n  </div>\n  <div class=\"column\">\n    <img src=\"http://wycieczki/wp-content/uploads/2018/12/warszawa-24-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" style=\"width:100%\">\n  </div>\n  <div class=\"column\">\n    <img src=\"http://wycieczki/wp-content/uploads/2018/12/zamek-krolewski-w-warszawie-213782-1-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" style=\"width:100%\">\n  </div>\n</div>\n\n\n\n', 'Warszawa', 'Piękne zabytki Warszawy które zostały wpisani na listę Światowego Dziedzictwa Kulturowego.', 'inherit', 'closed', 'closed', '', '36-autosave-v1', '', '', '2018-12-05 11:01:54', '2018-12-05 10:01:54', '', 36, 'http://wycieczki/2018/12/05/36-autosave-v1/', 0, 'revision', '', 0),
(110, 1, '2018-12-05 10:31:05', '2018-12-05 09:31:05', '', 'zamek-krolewski-w-warszawie-213782', '', 'inherit', 'open', 'closed', '', 'zamek-krolewski-w-warszawie-213782', '', '', '2018-12-05 10:31:05', '2018-12-05 09:31:05', '', 36, 'http://wycieczki/wp-content/uploads/2018/12/zamek-krolewski-w-warszawie-213782.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2018-12-05 10:49:46', '2018-12-05 09:49:46', '', 'warszawa-20', '', 'inherit', 'open', 'closed', '', 'warszawa-20', '', '', '2018-12-05 10:49:46', '2018-12-05 09:49:46', '', 36, 'http://wycieczki/wp-content/uploads/2018/12/warszawa-20.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2018-12-05 10:49:48', '2018-12-05 09:49:48', '', 'warszawa-24', '', 'inherit', 'open', 'closed', '', 'warszawa-24', '', '', '2018-12-05 10:49:48', '2018-12-05 09:49:48', '', 36, 'http://wycieczki/wp-content/uploads/2018/12/warszawa-24.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2018-12-05 10:49:51', '2018-12-05 09:49:51', '', 'zamek-krolewski-w-warszawie-213782', '', 'inherit', 'open', 'closed', '', 'zamek-krolewski-w-warszawie-213782-2', '', '', '2018-12-05 10:49:51', '2018-12-05 09:49:51', '', 36, 'http://wycieczki/wp-content/uploads/2018/12/zamek-krolewski-w-warszawie-213782-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2018-12-05 10:58:55', '2018-12-05 09:58:55', '{\n    \"custom_css[oceanwp]\": {\n        \"value\": \"\\n#attachment{\\n\\tcolor: white\\n}\\n.column {\\n    float: left;\\n    width: 33.33%;\\n    padding: 5px;\\n}\\n\\n.row::after {\\n    content: \\\"\\\";\\n    clear: both;\\n    display: table;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 09:58:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6e88f813-5365-4461-bd95-3b07ba66153a', '', '', '2018-12-05 10:58:55', '2018-12-05 09:58:55', '', 0, 'http://wycieczki/2018/12/05/6e88f813-5365-4461-bd95-3b07ba66153a/', 0, 'customize_changeset', '', 0),
(115, 1, '2018-12-05 10:58:55', '2018-12-05 09:58:55', '\n#attachment{\n	color: white\n}\n.column {\n    float: left;\n    width: 33.33%;\n    padding: 5px;\n}\n\n.row::after {\n    content: \"\";\n    clear: both;\n    display: table;\n}', 'oceanwp', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-12-05 10:58:55', '2018-12-05 09:58:55', '', 101, 'http://wycieczki/2018/12/05/101-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2018-12-05 14:42:36', '2018-12-05 13:42:36', '{\n    \"widget_categories[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJjb3VudCI7aTowO3M6MTI6ImhpZXJhcmNoaWNhbCI7aTowO3M6ODoiZHJvcGRvd24iO2k6MTt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a82b0fcb62ab9d026e55b4434f526027\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 10:46:28\"\n    },\n    \"widget_tag_cloud[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjEyOiJDaG11cmEgdGFnb3ciO3M6NToiY291bnQiO2k6MTtzOjg6InRheG9ub215IjtzOjExOiJwcm9kdWN0X3RhZyI7fQ==\",\n            \"title\": \"Chmura tagow\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0deacefe8e1f3e43746421f34b9b7630\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 10:48:55\"\n    },\n    \"sidebars_widgets[sidebar]\": {\n        \"value\": [\n            \"woocommerce_product_categories-4\",\n            \"tag_cloud-3\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 13:42:36\"\n    },\n    \"widget_woocommerce_layered_nav_filters[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTowOnt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"ba43437e407a7db65897065b86adc41f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 13:42:36\"\n    },\n    \"widget_wcj_widget_selector[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTowOnt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"ba43437e407a7db65897065b86adc41f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 13:42:36\"\n    },\n    \"widget_categories[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjQ6ImdmZHMiO3M6NToiY291bnQiO2k6MTtzOjEyOiJoaWVyYXJjaGljYWwiO2k6MDtzOjg6ImRyb3Bkb3duIjtpOjA7fQ==\",\n            \"title\": \"gfds\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"46ba1a7583cec68d9a51dbe0a3af6566\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 10:50:09\"\n    },\n    \"sidebars_widgets[footer-one]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 13:01:03\"\n    },\n    \"sidebars_widgets[woo_sidebar]\": {\n        \"value\": [\n            \"woocommerce_product_categories-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 13:42:36\"\n    },\n    \"widget_archives[4]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 13:01:03\"\n    },\n    \"widget_archives[5]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 13:01:03\"\n    },\n    \"widget_woocommerce_product_categories[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo4OntzOjU6InRpdGxlIjtzOjIwOiJLYXRlZ29yaWUgcHJvZHVrdMOzdyI7czo3OiJvcmRlcmJ5IjtzOjQ6Im5hbWUiO3M6ODoiZHJvcGRvd24iO2k6MTtzOjU6ImNvdW50IjtpOjE7czoxMjoiaGllcmFyY2hpY2FsIjtpOjE7czoxODoic2hvd19jaGlsZHJlbl9vbmx5IjtpOjA7czoxMDoiaGlkZV9lbXB0eSI7aTowO3M6OToibWF4X2RlcHRoIjtzOjA6IiI7fQ==\",\n            \"title\": \"Kategorie produkt\\u00f3w\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a4efba2b3526ac2a13fc630fcf6f8522\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 13:02:03\"\n    },\n    \"widget_nav_menu[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 13:38:33\"\n    },\n    \"widget_woocommerce_product_categories[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo4OntzOjU6InRpdGxlIjtzOjE5OiJLYXRlZ29yaWUgd3ljaWVjemVrIjtzOjc6Im9yZGVyYnkiO3M6NDoibmFtZSI7czo4OiJkcm9wZG93biI7aTowO3M6NToiY291bnQiO2k6MTtzOjEyOiJoaWVyYXJjaGljYWwiO2k6MTtzOjE4OiJzaG93X2NoaWxkcmVuX29ubHkiO2k6MDtzOjEwOiJoaWRlX2VtcHR5IjtpOjA7czo5OiJtYXhfZGVwdGgiO3M6MDoiIjt9\",\n            \"title\": \"Kategorie wycieczek\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"44d60c2df4655488d84f67ee75c1b00c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 13:41:10\"\n    },\n    \"widget_woocommerce_price_filter[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjE3OiJGaWx0cnVqIHdnIGNlbnlzYSI7fQ==\",\n            \"title\": \"Filtruj wg cenysa\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"461dc5383b7e47492a591e45e2476d6c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 13:41:10\"\n    },\n    \"widget_wcj_widget_selector[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czoxMzoic2VsZWN0b3JfdHlwZSI7czoyNToicHJvZHVjdF9jdXN0b21fdmlzaWJpbGl0eSI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0f523725c386547490f1dbd2bfb2eb99\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 13:42:14\"\n    },\n    \"widget_woocommerce_top_rated_products[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 13:42:14\"\n    },\n    \"widget_search[4]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 13:42:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b4486c6f-b273-4379-bcf7-8d0a9d69f1c8', '', '', '2018-12-05 14:42:36', '2018-12-05 13:42:36', '', 0, 'http://wycieczki/?p=116', 0, 'customize_changeset', '', 0),
(117, 1, '2018-12-05 14:52:09', '2018-12-05 13:52:09', '{\n    \"widget_woocommerce_product_categories[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo4OntzOjU6InRpdGxlIjtzOjE5OiJLYXRlZ29yaWUgd3ljaWVjemVrIjtzOjc6Im9yZGVyYnkiO3M6NToib3JkZXIiO3M6ODoiZHJvcGRvd24iO2k6MDtzOjU6ImNvdW50IjtpOjE7czoxMjoiaGllcmFyY2hpY2FsIjtpOjE7czoxODoic2hvd19jaGlsZHJlbl9vbmx5IjtpOjA7czoxMDoiaGlkZV9lbXB0eSI7aTowO3M6OToibWF4X2RlcHRoIjtzOjA6IiI7fQ==\",\n            \"title\": \"Kategorie wycieczek\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"011fed711be8d08cf1e0862f3de5015e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 13:49:48\"\n    },\n    \"sidebars_widgets[woo_sidebar]\": {\n        \"value\": [\n            \"woocommerce_product_categories-3\",\n            \"tag_cloud-5\",\n            \"search-6\",\n            \"media_audio-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 13:49:48\"\n    },\n    \"widget_tag_cloud[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjE0OiJDaG11cmthIHRhZ8OzdyI7czo1OiJjb3VudCI7aToxO3M6ODoidGF4b25vbXkiO3M6MTE6InByb2R1Y3RfdGFnIjt9\",\n            \"title\": \"Chmurka tag\\u00f3w\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"04460df81ea9563c74f3f7c40f16d3a9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 13:48:48\"\n    },\n    \"widget_search[6]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 13:49:48\"\n    },\n    \"widget_media_audio[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxMDp7czoxMzoiYXR0YWNobWVudF9pZCI7aToxMTg7czozOiJ1cmwiO3M6Njg6Imh0dHA6Ly93eWNpZWN6a2kvd3AtY29udGVudC91cGxvYWRzLzIwMTgvMTIvTUFNLVRFTi1LT0QtUElPU0VOS0EubXAzIjtzOjU6InRpdGxlIjtzOjg6IlBpb3NlbmthIjtzOjc6InByZWxvYWQiO3M6NDoibm9uZSI7czo0OiJsb29wIjtiOjA7czozOiJtcDMiO3M6Njg6Imh0dHA6Ly93eWNpZWN6a2kvd3AtY29udGVudC91cGxvYWRzLzIwMTgvMTIvTUFNLVRFTi1LT0QtUElPU0VOS0EubXAzIjtzOjM6Im9nZyI7czowOiIiO3M6NDoiZmxhYyI7czowOiIiO3M6MzoibTRhIjtzOjA6IiI7czozOiJ3YXYiO3M6MDoiIjt9\",\n            \"title\": \"Piosenka\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"104e51df1d8516a9fa4db380731bb971\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-05 13:52:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6bf47fe3-3ddb-44dc-ad8b-2255e4bacecf', '', '', '2018-12-05 14:52:09', '2018-12-05 13:52:09', '', 0, 'http://wycieczki/?p=117', 0, 'customize_changeset', '', 0),
(118, 1, '2018-12-05 14:51:43', '2018-12-05 13:51:43', '\"PIOSENKA\" autor: MAM TEN KOD.', 'PIOSENKA', '', 'inherit', 'open', 'closed', '', 'piosenka', '', '', '2018-12-05 14:51:48', '2018-12-05 13:51:48', '', 0, 'http://wycieczki/wp-content/uploads/2018/12/MAM-TEN-KOD-PIOSENKA.mp3', 0, 'attachment', 'audio/mpeg', 0),
(119, 1, '2018-12-06 13:56:05', '2018-12-06 12:56:05', 'Wycieczki, Wypoczynek na świeżym powietrzu, Wycieczki segwayami, Wycieczki po mieście, Wycieczki historyczne, Wycieczki ekologiczne', 'Super Segway', 'Wypoczynek na świeżym powietrzu w lokalizacji Warszawa', 'inherit', 'closed', 'closed', '', '37-autosave-v1', '', '', '2018-12-06 13:56:05', '2018-12-06 12:56:05', '', 37, 'http://wycieczki/2018/12/06/37-autosave-v1/', 0, 'revision', '', 0),
(120, 1, '2018-12-06 14:01:01', '2018-12-06 13:01:01', '', 'IMG_3279-2-870x600', '', 'inherit', 'open', 'closed', '', 'img_3279-2-870x600', '', '', '2018-12-06 14:01:01', '2018-12-06 13:01:01', '', 37, 'http://wycieczki/wp-content/uploads/2018/12/IMG_3279-2-870x600.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2018-12-06 14:04:07', '2018-12-06 13:04:07', 'Świetny sposób na spędzenie czasu nocą w Warszawie szczególnie jak ktoś nie ma bladego pojęcia gdzie się wyrwać.\nMożliwość poznania nowych ludzi, zintegrowanie się z nimi to dodatkowy atut :) \nZałoga w składzie Kasia, Wlada i Dean robią świetną robotę uśmiechnięci, z poczuciem humoru, pełni energii wprowadzają świetną atmosferę co sprzyja łatwiejszym kontaktom z innymi uczestnikami.', 'Warsaw Pub Crawl', 'Wycieczki po pubach, barach i klubach', 'inherit', 'closed', 'closed', '', '34-autosave-v1', '', '', '2018-12-06 14:04:07', '2018-12-06 13:04:07', '', 34, 'http://wycieczki/2018/12/06/34-autosave-v1/', 0, 'revision', '', 0),
(122, 1, '2018-12-06 14:05:58', '2018-12-06 13:05:58', '', 'Bez tytułu', '', 'inherit', 'open', 'closed', '', 'bez-tytulu', '', '', '2018-12-06 14:05:58', '2018-12-06 13:05:58', '', 34, 'http://wycieczki/wp-content/uploads/2018/12/Bez-tytułu.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2018-12-06 14:09:31', '2018-12-06 13:09:31', '', '1jpg', '', 'inherit', 'open', 'closed', '', '1jpg', '', '', '2018-12-06 14:09:31', '2018-12-06 13:09:31', '', 34, 'http://wycieczki/wp-content/uploads/2018/12/1jpg.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2018-12-06 14:09:33', '2018-12-06 13:09:33', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2018-12-06 14:09:33', '2018-12-06 13:09:33', '', 34, 'http://wycieczki/wp-content/uploads/2018/12/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2018-12-06 14:10:18', '2018-12-06 13:10:18', '', 'Bez tytułu', '', 'inherit', 'open', 'closed', '', 'bez-tytulu-2', '', '', '2018-12-06 14:10:18', '2018-12-06 13:10:18', '', 34, 'http://wycieczki/wp-content/uploads/2018/12/Bez-tytułu-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2018-12-06 14:15:13', '2018-12-06 13:15:13', '', '3u', '', 'inherit', 'open', 'closed', '', '3u', '', '', '2018-12-06 14:15:13', '2018-12-06 13:15:13', '', 34, 'http://wycieczki/wp-content/uploads/2018/12/3u.png', 0, 'attachment', 'image/png', 0),
(127, 1, '2018-12-06 14:17:59', '2018-12-06 13:17:59', '', 'Bez tytułu', '', 'inherit', 'open', 'closed', '', 'bez-tytulu-3', '', '', '2018-12-06 14:17:59', '2018-12-06 13:17:59', '', 34, 'http://wycieczki/wp-content/uploads/2018/12/Bez-tytułu-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2018-12-06 14:19:29', '2018-12-06 13:19:29', '', 'warszawa-24', '', 'inherit', 'open', 'closed', '', 'warszawa-24-2', '', '', '2018-12-06 14:19:29', '2018-12-06 13:19:29', '', 36, 'http://wycieczki/wp-content/uploads/2018/12/warszawa-24-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2018-12-06 14:26:41', '2018-12-06 13:26:41', 'Jestem naukowcem z USA, który niedawno uczestniczył w konferencji w Krakowie. Chciałem spędzić trochę czasu po konferencji, widząc polską wieś. Próbowałem kilku grup, ale nikt nie miał możliwości pracy ze mną. A potem znalazłem Wokół Polski. Magda zorganizowała moją wyprawę w Bieszczady, gdzie zobaczyłem wiele ptaków i ssaków oraz niezbyt wiele osób. (Dokładnie to, na co liczyłem.) Moje mieszkanie było piękną, czystą kabiną w pobliżu wejścia do Bieszczadzkiego Parku Narodowego. Kiedy zgubiłem się w pewnym momencie, wysłałem jej e-mail, a ona odpowiedziała natychmiast i pomogła. Jeśli jesteś wytrawnym polskim podróżnikiem lub po raz pierwszy polskim podróżnikiem, polecam Wam Polskę', 'Around Poland', 'Wypoczynek na świeżym powietrzu w lokalizacji Warszawa', 'publish', 'open', 'closed', '', 'around-poland', '', '', '2018-12-06 14:26:41', '2018-12-06 13:26:41', '', 0, 'http://wycieczki/?post_type=product&#038;p=129', 0, 'product', '', 0),
(130, 1, '2018-12-06 14:25:31', '2018-12-06 13:25:31', '', 'skaryszewski_6141-1280x768.jpg', '', 'inherit', 'open', 'closed', '', 'skaryszewski_6141-1280x768-jpg', '', '', '2018-12-06 14:25:31', '2018-12-06 13:25:31', '', 129, 'http://wycieczki/?attachment_id=130', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2018-12-06 14:33:46', '2018-12-06 13:33:46', '{\n    \"custom_css[oceanwp]\": {\n        \"value\": \"\\n#attachment{\\n\\tcolor: white\\n}\\n.column {\\n    float: left;\\n    width: 33.33%;\\n\\n}\\n\\n.row::after {\\n    content: \\\"\\\";\\n    clear: both;\\n    display: table;\\n}\\n\\n.woo-dropdown-cat .widget_product_categories li.cat-parent .open-this{\\n\\t\\tright: auto;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-06 13:33:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fa9256e2-ff50-4dc5-8b7d-5af7f4ddb5a1', '', '', '2018-12-06 14:33:46', '2018-12-06 13:33:46', '', 0, 'http://wycieczki/?p=131', 0, 'customize_changeset', '', 0),
(132, 1, '2018-12-06 14:33:46', '2018-12-06 13:33:46', '\n#attachment{\n	color: white\n}\n.column {\n    float: left;\n    width: 33.33%;\n\n}\n\n.row::after {\n    content: \"\";\n    clear: both;\n    display: table;\n}\n\n.woo-dropdown-cat .widget_product_categories li.cat-parent .open-this{\n		right: auto;\n}', 'oceanwp', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-12-06 14:33:46', '2018-12-06 13:33:46', '', 101, 'http://wycieczki/2018/12/06/101-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2018-12-06 14:48:30', '2018-12-06 13:48:30', '[gamipress_user_rank prev_rank=\"yes\" current_rank=\"yes\" next_rank=\"yes\" current_user=\"yes\" columns=\"1\" title=\"yes\" link=\"yes\" thumbnail=\"yes\" excerpt=\"yes\" requirements=\"yes\" toggle=\"yes\" unlock_button=\"no\" earners=\"no\" layout=\"left\"]', 'profile', '', 'publish', 'closed', 'closed', '', 'profile', '', '', '2018-12-06 18:37:51', '2018-12-06 17:37:51', '', 0, 'http://wycieczki/?page_id=134', 0, 'page', '', 0),
(135, 1, '2018-12-06 14:48:30', '2018-12-06 13:48:30', '[gamipress_user_rank type=\"level\" prev_rank=\"yes\" current_rank=\"yes\" next_rank=\"yes\" current_user=\"yes\" columns=\"3\"]', 'profile', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2018-12-06 14:48:30', '2018-12-06 13:48:30', '', 134, 'http://wycieczki/2018/12/06/134-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2018-12-06 14:49:09', '2018-12-06 13:49:09', '[gamipress_user_rank]', 'profile', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2018-12-06 14:49:09', '2018-12-06 13:49:09', '', 134, 'http://wycieczki/2018/12/06/134-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2018-12-06 15:01:27', '2018-12-06 14:01:27', '', 'dsadas', '', 'publish', 'closed', 'closed', '', 'aaaa', '', '', '2018-12-06 15:01:27', '2018-12-06 14:01:27', '', 0, 'http://wycieczki/?post_type=points-type&#038;p=138', 0, 'points-type', '', 0),
(139, 1, '2018-12-06 15:03:37', '2018-12-06 14:03:37', '[gamipress_user_rank type=\"level\" prev_rank=\"yes\" current_rank=\"yes\" next_rank=\"yes\" current_user=\"yes\" columns=\"3\"]\r\n{user}', 'profile', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2018-12-06 15:03:37', '2018-12-06 14:03:37', '', 134, 'http://wycieczki/2018/12/06/134-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2018-12-06 15:05:37', '2018-12-06 14:05:37', ' [gamipress_social_share title=\"Share it!\" twitter=\"yes\" twitter_pattern=\"{title} on {site_title}\" twitter_count_box=\"vertical\" twitter_button_size=\"medium\" facebook=\"yes\" facebook_action=\"like\" facebook_button_layout=\"button\" facebook_button_size=\"small\" google_plus=\"yes\" google_plus_button_annotation=\"bubble\" google_plus_button_size=\"tall\" linkedin=\"yes\" linkedin_counter=\"none\" pinterest=\"yes\" pinterest_round=\"yes\" pinterest_tall=\"yes\" pinterest_count=\"none\" pinterest_description=\"{title} on {site_title}\"]', 'profile', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2018-12-06 15:05:37', '2018-12-06 14:05:37', '', 134, 'http://wycieczki/2018/12/06/134-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2018-12-06 18:23:01', '2018-12-06 17:23:01', '', 'New Project', '', 'inherit', 'open', 'closed', '', 'new-project-3', '', '', '2018-12-06 18:23:01', '2018-12-06 17:23:01', '', 34, 'http://wycieczki/wp-content/uploads/2018/12/New-Project-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2018-12-06 18:26:12', '2018-12-06 17:26:12', 'description', 'Around Poland', 'short', 'publish', 'open', 'closed', '', 'around-poland-2', '', '', '2018-12-06 18:26:13', '2018-12-06 17:26:13', '', 0, 'http://wycieczki/?post_type=product&#038;p=143', 0, 'product', '', 0),
(144, 1, '2018-12-06 18:25:52', '2018-12-06 17:25:52', '', 'New-Project.jpg', '', 'inherit', 'open', 'closed', '', 'new-project-jpg', '', '', '2018-12-06 18:25:52', '2018-12-06 17:25:52', '', 143, 'http://wycieczki/?attachment_id=144', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2018-12-06 18:33:41', '2018-12-06 17:33:41', '[gamipress_earnings current_user=\"yes\" limit=\"10\" pagination=\"yes\" order=\"DESC\" points=\"yes\" awards=\"yes\" deducts=\"yes\" achievements=\"yes\" steps=\"yes\" ranks=\"yes\" rank_requirements=\"yes\"]description', 'Around Poland', 'short', 'inherit', 'closed', 'closed', '', '143-autosave-v1', '', '', '2018-12-06 18:33:41', '2018-12-06 17:33:41', '', 143, 'http://wycieczki/2018/12/06/143-autosave-v1/', 0, 'revision', '', 0),
(146, 1, '2018-12-06 18:34:07', '2018-12-06 17:34:07', '[gamipress_achievement title=\"yes\" link=\"yes\" thumbnail=\"yes\" points_awarded=\"yes\" excerpt=\"yes\" times_earned=\"yes\" steps=\"yes\" toggle=\"yes\" unlock_button=\"no\" earners=\"no\" layout=\"left\"]', 'profile', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2018-12-06 18:34:07', '2018-12-06 17:34:07', '', 134, 'http://wycieczki/2018/12/06/134-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2018-12-06 18:34:34', '2018-12-06 17:34:34', '[gamipress_achievements columns=\"1\" filter=\"yes\" filter_value=\"all\" search=\"yes\" load_more=\"yes\" limit=\"10\" orderby=\"menu_order\" order=\"ASC\" current_user=\"no\" title=\"yes\" link=\"yes\" thumbnail=\"yes\" points_awarded=\"yes\" excerpt=\"yes\" times_earned=\"yes\" steps=\"yes\" toggle=\"yes\" unlock_button=\"no\" earners=\"no\" layout=\"left\"]', 'profile', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2018-12-06 18:34:34', '2018-12-06 17:34:34', '', 134, 'http://wycieczki/2018/12/06/134-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2018-12-06 18:35:11', '2018-12-06 17:35:11', '[gamipress_earnings current_user=\"yes\" limit=\"10\" pagination=\"yes\" order=\"DESC\" points=\"yes\" points_types=\"all\" awards=\"yes\" deducts=\"yes\" achievements=\"yes\" steps=\"yes\" ranks=\"yes\" rank_requirements=\"yes\"]', 'profile', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2018-12-06 18:35:11', '2018-12-06 17:35:11', '', 134, 'http://wycieczki/2018/12/06/134-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2018-12-06 18:36:17', '2018-12-06 17:36:17', '[gamipress_points thumbnail=\"yes\" label=\"yes\" current_user=\"no\" user_id=\"1\" inline=\"no\" columns=\"1\" layout=\"top\"]', 'profile', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2018-12-06 18:36:17', '2018-12-06 17:36:17', '', 134, 'http://wycieczki/2018/12/06/134-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2018-12-06 18:37:21', '2018-12-06 17:37:21', '[gamipress_rank title=\"yes\" link=\"yes\" thumbnail=\"yes\" excerpt=\"yes\" requirements=\"yes\" toggle=\"yes\" unlock_button=\"no\" earners=\"no\" layout=\"left\"]', 'profile', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2018-12-06 18:37:21', '2018-12-06 17:37:21', '', 134, 'http://wycieczki/2018/12/06/134-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2018-12-06 18:37:51', '2018-12-06 17:37:51', '[gamipress_user_rank prev_rank=\"yes\" current_rank=\"yes\" next_rank=\"yes\" current_user=\"yes\" columns=\"1\" title=\"yes\" link=\"yes\" thumbnail=\"yes\" excerpt=\"yes\" requirements=\"yes\" toggle=\"yes\" unlock_button=\"no\" earners=\"no\" layout=\"left\"]', 'profile', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2018-12-06 18:37:51', '2018-12-06 17:37:51', '', 134, 'http://wycieczki/2018/12/06/134-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2018-12-07 09:59:33', '2018-12-07 08:59:33', '', 'Order &ndash; Grudzień 7, 2018 @ 09:59 AM', '', 'wc-completed', 'closed', 'closed', 'order_5c0a367576e55', 'zamowienie-dec-07-2018-o-0859-am', '', '', '2018-12-07 10:01:26', '2018-12-07 09:01:26', '', 0, 'http://wycieczki/?post_type=shop_order&#038;p=152', 0, 'shop_order', '', 2),
(153, 1, '2018-12-07 13:11:32', '2018-12-07 12:11:32', '', 'Order &ndash; Grudzień 7, 2018 @ 01:11 PM', '', 'wc-completed', 'closed', 'closed', 'order_5c0a637420b80', 'zamowienie-dec-07-2018-o-1211-pm', '', '', '2018-12-07 13:12:29', '2018-12-07 12:12:29', '', 0, 'http://wycieczki/?post_type=shop_order&#038;p=153', 0, 'shop_order', '', 2),
(154, 1, '2018-12-19 19:37:26', '0000-00-00 00:00:00', '', 'Automatycznie zapisany szkic', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-12-19 19:37:26', '0000-00-00 00:00:00', '', 0, 'http://wycieczki/?p=154', 0, 'post', '', 0),
(155, 5, '2018-12-19 19:42:33', '2018-12-19 18:42:33', 'dsa', 'dsa', 'dsa', 'publish', 'open', 'closed', '', 'dsa', '', '', '2018-12-19 19:42:33', '2018-12-19 18:42:33', '', 0, 'http://wycieczki/?post_type=product&#038;p=155', 0, 'product', '', 0),
(156, 5, '2018-12-19 19:42:08', '2018-12-19 18:42:08', '', 'New-Project.jpg', '', 'inherit', 'open', 'closed', '', 'new-project-jpg-2', '', '', '2018-12-19 19:42:08', '2018-12-19 18:42:08', '', 155, 'http://wycieczki/?attachment_id=156', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(5, 21, 'order', '18'),
(6, 15, 'product_count_product_cat', '1'),
(10, 23, 'order_pa_color', '0'),
(11, 24, 'order_pa_color', '0'),
(12, 25, 'order_pa_color', '0'),
(13, 26, 'order_pa_size', '0'),
(14, 27, 'order_pa_size', '0'),
(15, 28, 'order_pa_size', '0'),
(17, 29, 'order_pa_color', '0'),
(19, 30, 'order_pa_color', '0'),
(20, 21, 'product_count_product_cat', '3'),
(22, 31, 'order', '11'),
(23, 32, 'order', '13'),
(24, 33, 'order', '14'),
(25, 34, 'order', '17'),
(26, 35, 'order', '16'),
(27, 36, 'order', '12'),
(28, 37, 'order', '19'),
(29, 38, 'order', '15'),
(30, 39, 'order', '9'),
(31, 40, 'order', '8'),
(32, 41, 'order', '10'),
(33, 42, 'order', '20'),
(34, 43, 'order', '1'),
(35, 43, 'product_count_product_cat', '1'),
(36, 40, 'product_count_product_cat', '3'),
(37, 31, 'product_count_product_cat', '5'),
(38, 33, 'product_count_product_cat', '1'),
(39, 34, 'product_count_product_cat', '1'),
(40, 44, 'product_count_product_tag', '3'),
(41, 45, 'product_count_product_tag', '3'),
(42, 46, 'product_count_product_tag', '1'),
(43, 47, 'product_count_product_tag', '4'),
(44, 15, 'order', '2'),
(45, 39, 'product_count_product_cat', '1'),
(46, 38, 'product_count_product_cat', '2'),
(47, 37, 'product_count_product_cat', '2'),
(48, 48, 'product_count_product_tag', '1'),
(49, 49, 'product_count_product_tag', '3'),
(50, 50, 'product_count_product_tag', '2'),
(51, 51, 'product_count_product_tag', '1'),
(52, 41, 'product_count_product_cat', '2'),
(53, 36, 'product_count_product_cat', '2'),
(54, 52, 'product_count_product_tag', '2'),
(55, 53, 'product_count_product_tag', '1'),
(56, 54, 'product_count_product_tag', '1'),
(57, 55, 'product_count_product_tag', '1');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Bez kategorii', 'bez-kategorii', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Bez kategorii', 'bez-kategorii', 0),
(16, 'MyMenu', 'mymenu', 0),
(21, 'Music', 'music', 0),
(23, 'Blue', 'blue', 0),
(24, 'Green', 'green', 0),
(25, 'Red', 'red', 0),
(26, 'Large', 'large', 0),
(27, 'Medium', 'medium', 0),
(28, 'Small', 'small', 0),
(29, 'Gray', 'gray', 0),
(30, 'Yellow', 'yellow', 0),
(31, 'Miejsca', 'miejsca', 0),
(32, 'Kino', 'kino', 0),
(33, 'Muzeum', 'muzeum', 0),
(34, 'Teatr', 'teatr', 0),
(35, 'Restauracja', 'restauracja', 0),
(36, 'Bary', 'bary', 0),
(37, 'Sportowa', 'sportowa', 0),
(38, 'Park', 'park', 0),
(39, 'Jeziorowe', 'jeziorowe', 0),
(40, 'Historyczne', 'historyczne', 0),
(41, 'Koncerty', 'koncerty', 0),
(42, 'Zakupy', 'zakupy', 0),
(43, 'Architektura', 'architektura', 0),
(44, 'Warszawa', 'warszawa', 0),
(45, 'Polska', 'polska', 0),
(46, 'Muzeum', 'muzeum', 0),
(47, 'Spacer', 'spacer', 0),
(48, 'Wycieczki segwayami', 'wycieczki-segwayami', 0),
(49, 'Wycieczka sportowa', 'wycieczka-sportowa', 0),
(50, 'Wycieczki historyczne', 'wycieczki-historyczne', 0),
(51, 'Wycieczki ekologiczne', 'wycieczki-ekologiczne', 0),
(52, 'Piwo', 'piwo', 0),
(53, 'Wycieczki po pubach', 'wycieczki-po-pubach', 0),
(54, 'Wycieczki po barach', 'wycieczki-po-barach', 0),
(55, 'Wycieczki po klubach', 'wycieczki-po-klubach', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(12, 16, 0),
(13, 16, 0),
(14, 16, 0),
(15, 16, 0),
(33, 4, 0),
(33, 9, 0),
(33, 23, 0),
(33, 24, 0),
(33, 25, 0),
(33, 26, 0),
(33, 27, 0),
(33, 28, 0),
(33, 31, 0),
(34, 2, 0),
(34, 14, 0),
(34, 21, 0),
(34, 31, 0),
(34, 36, 0),
(34, 41, 0),
(34, 52, 0),
(34, 53, 0),
(34, 54, 0),
(34, 55, 0),
(35, 2, 0),
(35, 23, 0),
(35, 31, 0),
(36, 2, 0),
(36, 13, 0),
(36, 31, 0),
(36, 33, 0),
(36, 34, 0),
(36, 40, 0),
(36, 43, 0),
(36, 44, 0),
(36, 45, 0),
(36, 46, 0),
(36, 47, 0),
(37, 2, 0),
(37, 21, 0),
(37, 31, 0),
(37, 37, 0),
(37, 38, 0),
(37, 39, 0),
(37, 40, 0),
(37, 48, 0),
(37, 49, 0),
(37, 50, 0),
(37, 51, 0),
(38, 2, 0),
(38, 13, 0),
(38, 31, 0),
(39, 2, 0),
(39, 30, 0),
(39, 31, 0),
(40, 2, 0),
(40, 31, 0),
(41, 2, 0),
(41, 6, 0),
(41, 7, 0),
(41, 29, 0),
(41, 31, 0),
(42, 2, 0),
(42, 31, 0),
(43, 2, 0),
(43, 24, 0),
(43, 31, 0),
(44, 2, 0),
(44, 23, 0),
(44, 31, 0),
(45, 2, 0),
(45, 13, 0),
(45, 21, 0),
(46, 2, 0),
(46, 21, 0),
(55, 2, 0),
(55, 29, 0),
(55, 31, 0),
(56, 2, 0),
(56, 25, 0),
(56, 31, 0),
(57, 3, 0),
(57, 31, 0),
(61, 5, 0),
(61, 31, 0),
(87, 16, 0),
(88, 16, 0),
(129, 2, 0),
(129, 21, 0),
(129, 31, 0),
(129, 37, 0),
(129, 38, 0),
(129, 40, 0),
(129, 44, 0),
(129, 45, 0),
(129, 47, 0),
(129, 49, 0),
(143, 2, 0),
(143, 31, 0),
(143, 36, 0),
(143, 41, 0),
(143, 44, 0),
(143, 45, 0),
(143, 47, 0),
(143, 49, 0),
(143, 50, 0),
(143, 52, 0),
(155, 2, 0),
(155, 15, 0),
(155, 47, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 6),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 1),
(14, 14, 'product_visibility', '', 0, 1),
(15, 15, 'product_cat', '', 0, 1),
(16, 16, 'nav_menu', '', 0, 6),
(21, 21, 'product_cat', '', 0, 3),
(23, 23, 'pa_color', '', 0, 0),
(24, 24, 'pa_color', '', 0, 0),
(25, 25, 'pa_color', '', 0, 0),
(26, 26, 'pa_size', '', 0, 0),
(27, 27, 'pa_size', '', 0, 0),
(28, 28, 'pa_size', '', 0, 0),
(29, 29, 'pa_color', '', 0, 0),
(30, 30, 'pa_color', '', 0, 0),
(31, 31, 'product_cat', '', 0, 5),
(32, 32, 'product_cat', '', 31, 0),
(33, 33, 'product_cat', '', 31, 1),
(34, 34, 'product_cat', '', 31, 1),
(35, 35, 'product_cat', '', 31, 0),
(36, 36, 'product_cat', '', 31, 2),
(37, 37, 'product_cat', '', 0, 2),
(38, 38, 'product_cat', '', 31, 2),
(39, 39, 'product_cat', '', 0, 1),
(40, 40, 'product_cat', '', 0, 3),
(41, 41, 'product_cat', '', 0, 2),
(42, 42, 'product_cat', '', 0, 0),
(43, 43, 'product_cat', '', 0, 1),
(44, 44, 'product_tag', '', 0, 3),
(45, 45, 'product_tag', '', 0, 3),
(46, 46, 'product_tag', '', 0, 1),
(47, 47, 'product_tag', '', 0, 4),
(48, 48, 'product_tag', '', 0, 1),
(49, 49, 'product_tag', '', 0, 3),
(50, 50, 'product_tag', '', 0, 2),
(51, 51, 'product_tag', '', 0, 1),
(52, 52, 'product_tag', '', 0, 2),
(53, 53, 'product_tag', '', 0, 1),
(54, 54, 'product_tag', '', 0, 1),
(55, 55, 'product_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Oleksandr'),
(2, 1, 'first_name', 'Oleksandr'),
(3, 1, 'last_name', 'Iaremii'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '154'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(20, 1, 'wc_last_active', '1545177600'),
(21, 1, 'wp_woocommerce_product_import_mapping', 'a:51:{i:0;s:2:\"id\";i:1;s:4:\"type\";i:2;s:0:\"\";i:3;s:4:\"name\";i:4;s:9:\"published\";i:5;s:0:\"\";i:6;s:18:\"catalog_visibility\";i:7;s:17:\"short_description\";i:8;s:11:\"description\";i:9;s:17:\"date_on_sale_from\";i:10;s:15:\"date_on_sale_to\";i:11;s:0:\"\";i:12;s:0:\"\";i:13;s:0:\"\";i:14;s:0:\"\";i:15;s:0:\"\";i:16;s:0:\"\";i:17;s:0:\"\";i:18;s:0:\"\";i:19;s:0:\"\";i:20;s:0:\"\";i:21;s:15:\"reviews_allowed\";i:22;s:0:\"\";i:23;s:10:\"sale_price\";i:24;s:13:\"regular_price\";i:25;s:12:\"category_ids\";i:26;s:7:\"tag_ids\";i:27;s:0:\"\";i:28;s:6:\"images\";i:29;s:0:\"\";i:30;s:0:\"\";i:31;s:9:\"parent_id\";i:32;s:16:\"grouped_products\";i:33;s:10:\"upsell_ids\";i:34;s:14:\"cross_sell_ids\";i:35;s:11:\"product_url\";i:36;s:11:\"button_text\";i:37;s:10:\"menu_order\";i:38;s:16:\"attributes:name1\";i:39;s:17:\"attributes:value1\";i:40;s:19:\"attributes:visible1\";i:41;s:20:\"attributes:taxonomy1\";i:42;s:16:\"attributes:name2\";i:43;s:17:\"attributes:value2\";i:44;s:19:\"attributes:visible2\";i:45;s:20:\"attributes:taxonomy2\";i:46;s:23:\"meta:_wpcom_is_markdown\";i:47;s:15:\"downloads:name1\";i:48;s:14:\"downloads:url1\";i:49;s:15:\"downloads:name2\";i:50;s:14:\"downloads:url2\";}'),
(22, 1, 'wp_product_import_error_log', 'a:0:{}'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:15:\"add-product_cat\";i:4;s:15:\"add-product_tag\";}'),
(27, 1, 'tgmpa_dismissed_notice_oceanwp_theme', '1'),
(30, 2, 'nickname', 'test'),
(31, 2, 'first_name', ''),
(32, 2, 'last_name', ''),
(33, 2, 'description', ''),
(34, 2, 'rich_editing', 'true'),
(35, 2, 'syntax_highlighting', 'true'),
(36, 2, 'comment_shortcuts', 'false'),
(37, 2, 'admin_color', 'fresh'),
(38, 2, 'use_ssl', '0'),
(39, 2, 'show_admin_bar_front', 'true'),
(40, 2, 'locale', ''),
(41, 2, 'wp_capabilities', 'a:1:{s:17:\"uzytkownik_zwykly\";b:1;}'),
(42, 2, 'wp_user_level', '9'),
(44, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(45, 2, 'wc_last_active', '1543881600'),
(46, 1, 'session_tokens', 'a:1:{s:64:\"1d68a09214e1478e65c9aa9afe3731a122a2e38cb8f47574a223e46b9b52c76c\";a:4:{s:10:\"expiration\";i:1545417413;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1545244613;}}'),
(48, 2, 'billing_first_name', ''),
(49, 2, 'billing_last_name', ''),
(50, 2, 'billing_company', ''),
(51, 2, 'billing_address_1', ''),
(52, 2, 'billing_address_2', ''),
(53, 2, 'billing_city', ''),
(54, 2, 'billing_postcode', ''),
(55, 2, 'billing_country', ''),
(56, 2, 'billing_state', ''),
(57, 2, 'billing_phone', ''),
(58, 2, 'billing_email', 'test@user.com'),
(59, 2, 'shipping_first_name', ''),
(60, 2, 'shipping_last_name', ''),
(61, 2, 'shipping_company', ''),
(62, 2, 'shipping_address_1', ''),
(63, 2, 'shipping_address_2', ''),
(64, 2, 'shipping_city', ''),
(65, 2, 'shipping_postcode', ''),
(66, 2, 'shipping_country', ''),
(67, 2, 'shipping_state', ''),
(68, 2, 'last_update', '1543933507'),
(69, 1, 'nav_menu_recently_edited', '16'),
(70, 1, 'wp_user-settings', 'editor=html&libraryContent=browse'),
(71, 1, 'wp_user-settings-time', '1544003254'),
(72, 3, 'nickname', 'dsadasd'),
(73, 3, 'first_name', ''),
(74, 3, 'last_name', ''),
(75, 3, 'description', ''),
(76, 3, 'rich_editing', 'true'),
(77, 3, 'syntax_highlighting', 'true'),
(78, 3, 'comment_shortcuts', 'false'),
(79, 3, 'admin_color', 'fresh'),
(80, 3, 'use_ssl', '0'),
(81, 3, 'show_admin_bar_front', 'true'),
(82, 3, 'locale', ''),
(83, 3, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(84, 3, 'wp_user_level', '0'),
(86, 3, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(87, 3, 'wc_last_active', '1543968000'),
(88, 4, 'nickname', 'dsads'),
(89, 4, 'first_name', ''),
(90, 4, 'last_name', ''),
(91, 4, 'description', ''),
(92, 4, 'rich_editing', 'true'),
(93, 4, 'syntax_highlighting', 'true'),
(94, 4, 'comment_shortcuts', 'false'),
(95, 4, 'admin_color', 'fresh'),
(96, 4, 'use_ssl', '0'),
(97, 4, 'show_admin_bar_front', 'true'),
(98, 4, 'locale', ''),
(99, 4, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(100, 4, 'wp_user_level', '0'),
(101, 4, 'session_tokens', 'a:1:{s:64:\"f1ff2685283f878d66dc0de14233a1de7dbc1c17708a43a970b14a5d49873767\";a:4:{s:10:\"expiration\";i:1545227863;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36\";s:5:\"login\";i:1544018263;}}'),
(102, 4, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(103, 4, 'wc_last_active', '1543968000'),
(104, 1, 'closedpostboxes_points-type', 'a:0:{}'),
(105, 1, 'metaboxhidden_points-type', 'a:0:{}'),
(106, 1, '_gamipress_triggered_triggers', 'a:2:{s:20:\"gamipress_post_visit\";i:17;i:1;a:1:{s:29:\"gamipress_specific_post_visit\";i:3;}}'),
(108, 1, 'last_update', '1544184749'),
(109, 1, 'billing_first_name', 'Oleksandr'),
(110, 1, 'billing_last_name', 'Iaremii'),
(111, 1, 'billing_address_1', 'Ziębicka'),
(112, 1, 'billing_address_2', '2'),
(113, 1, 'billing_city', 'WARSZAWA'),
(114, 1, 'billing_postcode', '01-461'),
(115, 1, 'billing_country', 'PL'),
(116, 1, 'billing_email', 'ward.wsp@gmail.com'),
(117, 1, 'billing_phone', '735721561'),
(118, 1, 'shipping_first_name', 'Oleksandr'),
(119, 1, 'shipping_last_name', 'Iaremii'),
(120, 1, 'shipping_address_1', 'Ziębicka'),
(121, 1, 'shipping_address_2', '2'),
(122, 1, 'shipping_city', 'WARSZAWA'),
(123, 1, 'shipping_postcode', '01-461'),
(124, 1, 'shipping_country', 'PL'),
(128, 1, 'paying_customer', '1'),
(129, 1, 'shipping_method', 'a:1:{i:0;s:15:\"free_shipping:1\";}'),
(131, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(132, 1, 'meta-box-order_shop_order', 'a:3:{s:4:\"side\";s:49:\"woocommerce-order-actions,woocommerce-order-notes\";s:6:\"normal\";s:85:\"woocommerce-order-data,woocommerce-order-items,postcustom,woocommerce-order-downloads\";s:8:\"advanced\";s:0:\"\";}'),
(133, 1, 'screen_layout_shop_order', '2'),
(134, 1, 'closedpostboxes_shop_order', 'a:1:{i:0;s:10:\"postcustom\";}'),
(135, 1, 'metaboxhidden_shop_order', 'a:0:{}'),
(137, 5, 'nickname', 'test1'),
(138, 5, 'first_name', ''),
(139, 5, 'last_name', ''),
(140, 5, 'description', ''),
(141, 5, 'rich_editing', 'true'),
(142, 5, 'syntax_highlighting', 'true'),
(143, 5, 'comment_shortcuts', 'false'),
(144, 5, 'admin_color', 'fresh'),
(145, 5, 'use_ssl', '0'),
(146, 5, 'show_admin_bar_front', 'true'),
(147, 5, 'locale', ''),
(150, 5, 'session_tokens', 'a:1:{s:64:\"5e75ee3e626f02fee5c58264410b50b8eec7adfa5d03af8cb741c0e4bc06613a\";a:4:{s:10:\"expiration\";i:1546454417;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1545244817;}}'),
(151, 5, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(152, 5, 'wc_last_active', '1545177600'),
(153, 5, 'wp_capabilities', 'a:7:{s:8:\"customer\";b:1;s:6:\"editor\";b:1;s:6:\"author\";b:1;s:11:\"contributor\";b:1;s:10:\"subscriber\";b:1;s:12:\"shop_manager\";b:1;s:17:\"uzytkownik_zwykly\";b:1;}'),
(154, 5, 'wp_user_level', '9');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Oleksandr', '$P$BbEyNGHEVoueOgyG4cnop7t4tNuYD5.', 'oleksandr', 'oleksandr.iaremii@outlook.com', '', '2018-11-29 12:30:14', '', 0, 'Oleksandr'),
(2, 'test', '$P$Byg7C7H.PryDJ.1S.RUXncl5Mo8ypw.', 'test', 'test@user.com', '', '2018-12-04 14:23:21', '', 0, 'test'),
(3, 'dsadasd', '$P$Bn2ezvlKhelpMNVt0p4HzkaT.4mZfm/', 'dsadasd', 'dsadasd@dsada.dsa', '', '2018-12-05 13:53:35', '', 0, 'dsadasd'),
(4, 'dsads', '$P$BqZ2FgNeOoOCi9bsPHZzurzxdBcEdt0', 'dsads', 'dsads@dsa.dsa', '', '2018-12-05 13:57:42', '', 0, 'dsads'),
(5, 'test1', '$P$B/E2w9E/qASvytl4Kbu4VzDb1WxqHc/', 'test1', 'test@saasa.test', '', '2018-12-19 18:40:16', '', 0, 'test1');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'color', 'Color', 'select', 'menu_order', 0),
(2, 'size', 'Size', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '36'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '250'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '250'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, 'method_id', 'free_shipping'),
(11, 2, 'instance_id', '1'),
(12, 2, 'cost', '0.00'),
(13, 2, 'total_tax', '0'),
(14, 2, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(15, 2, 'Pozycje', 'Warszawa &times; 1'),
(16, 3, '_product_id', '34'),
(17, 3, '_variation_id', '0'),
(18, 3, '_qty', '8'),
(19, 3, '_tax_class', ''),
(20, 3, '_line_subtotal', '960'),
(21, 3, '_line_subtotal_tax', '0'),
(22, 3, '_line_total', '960'),
(23, 3, '_line_tax', '0'),
(24, 3, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(25, 4, 'method_id', 'free_shipping'),
(26, 4, 'instance_id', '1'),
(27, 4, 'cost', '0.00'),
(28, 4, 'total_tax', '0'),
(29, 4, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(30, 4, 'Pozycje', 'Warsaw Pub Crawl &times; 8');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Warszawa', 'line_item', 152),
(2, 'Darmowa wysyłka', 'shipping', 152),
(3, 'Warsaw Pub Crawl', 'line_item', 153),
(4, 'Darmowa wysyłka', 'shipping', 153);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(10, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:839:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2018-12-07T13:12:29+01:00\";s:8:\"postcode\";s:6:\"01-461\";s:4:\"city\";s:8:\"WARSZAWA\";s:9:\"address_1\";s:9:\"Ziębicka\";s:7:\"address\";s:9:\"Ziębicka\";s:9:\"address_2\";s:1:\"2\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"PL\";s:17:\"shipping_postcode\";s:6:\"01-461\";s:13:\"shipping_city\";s:8:\"WARSZAWA\";s:18:\"shipping_address_1\";s:9:\"Ziębicka\";s:16:\"shipping_address\";s:9:\"Ziębicka\";s:18:\"shipping_address_2\";s:1:\"2\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"PL\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:9:\"Oleksandr\";s:9:\"last_name\";s:7:\"Iaremii\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:9:\"735721561\";s:5:\"email\";s:18:\"ward.wsp@gmail.com\";s:19:\"shipping_first_name\";s:9:\"Oleksandr\";s:18:\"shipping_last_name\";s:7:\"Iaremii\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1545417414),
(11, '1165d47184ebe790e1716468de9269b5', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:687:\"a:26:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"PL\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"PL\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1545417616),
(12, '5', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:703:\"a:26:{s:2:\"id\";s:1:\"5\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"PL\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"PL\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:15:\"test@saasa.test\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1545417618);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Polska', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'PL', 'country');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1),
(0, 2, 'free_shipping', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Індекси таблиці `wp_gamipress_logs`
--
ALTER TABLE `wp_gamipress_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Індекси таблиці `wp_gamipress_logs_meta`
--
ALTER TABLE `wp_gamipress_logs_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Індекси таблиці `wp_gamipress_user_earnings`
--
ALTER TABLE `wp_gamipress_user_earnings`
  ADD PRIMARY KEY (`user_earning_id`);

--
-- Індекси таблиці `wp_gamipress_user_earnings_meta`
--
ALTER TABLE `wp_gamipress_user_earnings_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Індекси таблиці `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Індекси таблиці `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Індекси таблиці `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Індекси таблиці `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Індекси таблиці `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Індекси таблиці `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Індекси таблиці `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Індекси таблиці `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Індекси таблиці `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Індекси таблиці `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Індекси таблиці `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Індекси таблиці `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Індекси таблиці `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Індекси таблиці `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Індекси таблиці `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Індекси таблиці `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Індекси таблиці `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Індекси таблиці `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Індекси таблиці `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Індекси таблиці `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Індекси таблиці `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Індекси таблиці `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Індекси таблиці `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблиці `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблиці `wp_gamipress_logs`
--
ALTER TABLE `wp_gamipress_logs`
  MODIFY `log_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT для таблиці `wp_gamipress_logs_meta`
--
ALTER TABLE `wp_gamipress_logs_meta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT для таблиці `wp_gamipress_user_earnings`
--
ALTER TABLE `wp_gamipress_user_earnings`
  MODIFY `user_earning_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_gamipress_user_earnings_meta`
--
ALTER TABLE `wp_gamipress_user_earnings_meta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2041;

--
-- AUTO_INCREMENT для таблиці `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1876;

--
-- AUTO_INCREMENT для таблиці `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT для таблиці `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблиці `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT для таблиці `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT для таблиці `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT для таблиці `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблиці `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;