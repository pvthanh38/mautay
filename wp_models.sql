-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 27, 2019 lúc 06:30 AM
-- Phiên bản máy phục vụ: 10.1.29-MariaDB
-- Phiên bản PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `wp_models`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_blogs`
--

CREATE TABLE `wp_blogs` (
  `blog_id` bigint(20) NOT NULL,
  `site_id` bigint(20) NOT NULL DEFAULT '0',
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `public` tinyint(2) NOT NULL DEFAULT '1',
  `archived` tinyint(2) NOT NULL DEFAULT '0',
  `mature` tinyint(2) NOT NULL DEFAULT '0',
  `spam` tinyint(2) NOT NULL DEFAULT '0',
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  `lang_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_blogs`
--

INSERT INTO `wp_blogs` (`blog_id`, `site_id`, `domain`, `path`, `registered`, `last_updated`, `public`, `archived`, `mature`, `spam`, `deleted`, `lang_id`) VALUES
(1, 1, 'localhost', '/wp/models/', '2019-07-30 03:36:57', '0000-00-00 00:00:00', 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_blog_versions`
--

CREATE TABLE `wp_blog_versions` (
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `db_version` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_db7_forms`
--

CREATE TABLE `wp_db7_forms` (
  `form_id` bigint(20) NOT NULL,
  `form_post_id` bigint(20) NOT NULL,
  `form_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_db7_forms`
--

INSERT INTO `wp_db7_forms` (`form_id`, `form_post_id`, `form_value`, `form_date`) VALUES
(1, 58, 'a:8:{s:12:\"cfdb7_status\";s:6:\"unread\";s:9:\"your-name\";s:5:\"Coder\";s:9:\"your-date\";s:10:\"2019-07-18\";s:10:\"your-phone\";s:9:\"123456789\";s:12:\"your-address\";s:62:\"Số 132&#047;71 Nguyễn Hữu Cảnh, P.22, Q. Bình Thạnh\";s:10:\"your-email\";s:21:\"thoweb.demo@gmail.com\";s:15:\"your-occupation\";s:0:\"\";s:11:\"menu-course\";s:10:\"K - MODELS\";}', '2019-07-19 14:01:25'),
(2, 43, 'a:8:{s:12:\"cfdb7_status\";s:6:\"unread\";s:9:\"your-name\";s:5:\"Coder\";s:10:\"your-email\";s:21:\"thoweb.demo@gmail.com\";s:10:\"your-phone\";s:9:\"123456789\";s:12:\"your-company\";s:3:\"ABC\";s:12:\"your-address\";s:62:\"Số 132&#047;71 Nguyễn Hữu Cảnh, P.22, Q. Bình Thạnh\";s:12:\"your-subject\";s:5:\"title\";s:12:\"your-message\";s:7:\"message\";}', '2019-07-19 14:10:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wp/models', 'yes'),
(2, 'home', 'http://localhost/wp/models', 'yes'),
(3, 'blogname', 'Models', 'yes'),
(4, 'blogdescription', 'show models', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'thoweb.demo@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/blog/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:289:{s:18:\"blog/vtm_footer/?$\";s:30:\"index.php?post_type=vtm_footer\";s:48:\"blog/vtm_footer/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=vtm_footer&feed=$matches[1]\";s:43:\"blog/vtm_footer/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=vtm_footer&feed=$matches[1]\";s:35:\"blog/vtm_footer/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=vtm_footer&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:14:\"blog/images/?$\";s:26:\"index.php?post_type=images\";s:44:\"blog/images/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=images&feed=$matches[1]\";s:39:\"blog/images/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=images&feed=$matches[1]\";s:31:\"blog/images/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=images&paged=$matches[1]\";s:12:\"blog/post/?$\";s:25:\"index.php?post_type=posts\";s:42:\"blog/post/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=posts&feed=$matches[1]\";s:37:\"blog/post/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=posts&feed=$matches[1]\";s:29:\"blog/post/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=posts&paged=$matches[1]\";s:15:\"blog/artists/?$\";s:27:\"index.php?post_type=artists\";s:45:\"blog/artists/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=artists&feed=$matches[1]\";s:40:\"blog/artists/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=artists&feed=$matches[1]\";s:32:\"blog/artists/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=artists&paged=$matches[1]\";s:16:\"blog/services/?$\";s:28:\"index.php?post_type=services\";s:46:\"blog/services/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:41:\"blog/services/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:33:\"blog/services/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=services&paged=$matches[1]\";s:15:\"blog/academy/?$\";s:27:\"index.php?post_type=academy\";s:45:\"blog/academy/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=academy&feed=$matches[1]\";s:40:\"blog/academy/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=academy&feed=$matches[1]\";s:32:\"blog/academy/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=academy&paged=$matches[1]\";s:52:\"blog/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:47:\"blog/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:28:\"blog/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:40:\"blog/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"blog/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:49:\"blog/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:44:\"blog/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:25:\"blog/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:37:\"blog/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:19:\"blog/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:50:\"blog/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:45:\"blog/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:26:\"blog/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:38:\"blog/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:20:\"blog/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:43:\"blog/vtm_footer/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"blog/vtm_footer/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"blog/vtm_footer/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"blog/vtm_footer/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"blog/vtm_footer/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"blog/vtm_footer/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"blog/vtm_footer/([^/]+)/embed/?$\";s:43:\"index.php?vtm_footer=$matches[1]&embed=true\";s:36:\"blog/vtm_footer/([^/]+)/trackback/?$\";s:37:\"index.php?vtm_footer=$matches[1]&tb=1\";s:56:\"blog/vtm_footer/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?vtm_footer=$matches[1]&feed=$matches[2]\";s:51:\"blog/vtm_footer/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?vtm_footer=$matches[1]&feed=$matches[2]\";s:44:\"blog/vtm_footer/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?vtm_footer=$matches[1]&paged=$matches[2]\";s:51:\"blog/vtm_footer/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?vtm_footer=$matches[1]&cpage=$matches[2]\";s:40:\"blog/vtm_footer/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?vtm_footer=$matches[1]&page=$matches[2]\";s:32:\"blog/vtm_footer/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blog/vtm_footer/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blog/vtm_footer/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blog/vtm_footer/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blog/vtm_footer/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blog/vtm_footer/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:52:\"blog/object/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?object=$matches[1]&feed=$matches[2]\";s:47:\"blog/object/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?object=$matches[1]&feed=$matches[2]\";s:28:\"blog/object/([^/]+)/embed/?$\";s:39:\"index.php?object=$matches[1]&embed=true\";s:40:\"blog/object/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?object=$matches[1]&paged=$matches[2]\";s:22:\"blog/object/([^/]+)/?$\";s:28:\"index.php?object=$matches[1]\";s:57:\"blog/artists_cat/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?artists_cat=$matches[1]&feed=$matches[2]\";s:52:\"blog/artists_cat/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?artists_cat=$matches[1]&feed=$matches[2]\";s:33:\"blog/artists_cat/([^/]+)/embed/?$\";s:44:\"index.php?artists_cat=$matches[1]&embed=true\";s:45:\"blog/artists_cat/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?artists_cat=$matches[1]&paged=$matches[2]\";s:27:\"blog/artists_cat/([^/]+)/?$\";s:33:\"index.php?artists_cat=$matches[1]\";s:58:\"blog/services_cat/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?services_cat=$matches[1]&feed=$matches[2]\";s:53:\"blog/services_cat/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?services_cat=$matches[1]&feed=$matches[2]\";s:34:\"blog/services_cat/([^/]+)/embed/?$\";s:45:\"index.php?services_cat=$matches[1]&embed=true\";s:46:\"blog/services_cat/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?services_cat=$matches[1]&paged=$matches[2]\";s:28:\"blog/services_cat/([^/]+)/?$\";s:34:\"index.php?services_cat=$matches[1]\";s:57:\"blog/academy_cat/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?academy_cat=$matches[1]&feed=$matches[2]\";s:52:\"blog/academy_cat/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?academy_cat=$matches[1]&feed=$matches[2]\";s:33:\"blog/academy_cat/([^/]+)/embed/?$\";s:44:\"index.php?academy_cat=$matches[1]&embed=true\";s:45:\"blog/academy_cat/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?academy_cat=$matches[1]&paged=$matches[2]\";s:27:\"blog/academy_cat/([^/]+)/?$\";s:33:\"index.php?academy_cat=$matches[1]\";s:54:\"blog/archives/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?archives=$matches[1]&feed=$matches[2]\";s:49:\"blog/archives/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?archives=$matches[1]&feed=$matches[2]\";s:30:\"blog/archives/([^/]+)/embed/?$\";s:41:\"index.php?archives=$matches[1]&embed=true\";s:42:\"blog/archives/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?archives=$matches[1]&paged=$matches[2]\";s:24:\"blog/archives/([^/]+)/?$\";s:30:\"index.php?archives=$matches[1]\";s:39:\"blog/models/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"blog/models/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"blog/models/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"blog/models/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"blog/models/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"blog/models/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"blog/models/([^/]+)/embed/?$\";s:39:\"index.php?models=$matches[1]&embed=true\";s:32:\"blog/models/([^/]+)/trackback/?$\";s:33:\"index.php?models=$matches[1]&tb=1\";s:40:\"blog/models/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?models=$matches[1]&paged=$matches[2]\";s:47:\"blog/models/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?models=$matches[1]&cpage=$matches[2]\";s:36:\"blog/models/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?models=$matches[1]&page=$matches[2]\";s:28:\"blog/models/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"blog/models/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"blog/models/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"blog/models/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"blog/models/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"blog/models/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"blog/images/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"blog/images/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"blog/images/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"blog/images/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"blog/images/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"blog/images/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"blog/images/([^/]+)/embed/?$\";s:39:\"index.php?images=$matches[1]&embed=true\";s:32:\"blog/images/([^/]+)/trackback/?$\";s:33:\"index.php?images=$matches[1]&tb=1\";s:52:\"blog/images/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?images=$matches[1]&feed=$matches[2]\";s:47:\"blog/images/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?images=$matches[1]&feed=$matches[2]\";s:40:\"blog/images/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?images=$matches[1]&paged=$matches[2]\";s:47:\"blog/images/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?images=$matches[1]&cpage=$matches[2]\";s:36:\"blog/images/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?images=$matches[1]&page=$matches[2]\";s:28:\"blog/images/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"blog/images/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"blog/images/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"blog/images/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"blog/images/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"blog/images/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"blog/artists/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"blog/artists/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"blog/artists/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"blog/artists/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"blog/artists/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"blog/artists/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"blog/artists/([^/]+)/embed/?$\";s:40:\"index.php?artists=$matches[1]&embed=true\";s:33:\"blog/artists/([^/]+)/trackback/?$\";s:34:\"index.php?artists=$matches[1]&tb=1\";s:53:\"blog/artists/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?artists=$matches[1]&feed=$matches[2]\";s:48:\"blog/artists/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?artists=$matches[1]&feed=$matches[2]\";s:41:\"blog/artists/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?artists=$matches[1]&paged=$matches[2]\";s:48:\"blog/artists/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?artists=$matches[1]&cpage=$matches[2]\";s:37:\"blog/artists/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?artists=$matches[1]&page=$matches[2]\";s:29:\"blog/artists/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"blog/artists/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"blog/artists/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"blog/artists/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"blog/artists/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"blog/artists/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"blog/services/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"blog/services/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"blog/services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"blog/services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"blog/services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"blog/services/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"blog/services/([^/]+)/embed/?$\";s:41:\"index.php?services=$matches[1]&embed=true\";s:34:\"blog/services/([^/]+)/trackback/?$\";s:35:\"index.php?services=$matches[1]&tb=1\";s:54:\"blog/services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:49:\"blog/services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:42:\"blog/services/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&paged=$matches[2]\";s:49:\"blog/services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&cpage=$matches[2]\";s:38:\"blog/services/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?services=$matches[1]&page=$matches[2]\";s:30:\"blog/services/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"blog/services/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"blog/services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"blog/services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"blog/services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"blog/services/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"blog/academy/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"blog/academy/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"blog/academy/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"blog/academy/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"blog/academy/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"blog/academy/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"blog/academy/([^/]+)/embed/?$\";s:40:\"index.php?academy=$matches[1]&embed=true\";s:33:\"blog/academy/([^/]+)/trackback/?$\";s:34:\"index.php?academy=$matches[1]&tb=1\";s:53:\"blog/academy/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?academy=$matches[1]&feed=$matches[2]\";s:48:\"blog/academy/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?academy=$matches[1]&feed=$matches[2]\";s:41:\"blog/academy/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?academy=$matches[1]&paged=$matches[2]\";s:48:\"blog/academy/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?academy=$matches[1]&cpage=$matches[2]\";s:37:\"blog/academy/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?academy=$matches[1]&page=$matches[2]\";s:29:\"blog/academy/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"blog/academy/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"blog/academy/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"blog/academy/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"blog/academy/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"blog/academy/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"blog/image/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"blog/image/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"blog/image/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"blog/image/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"blog/image/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"blog/image/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"blog/image/([^/]+)/embed/?$\";s:38:\"index.php?image=$matches[1]&embed=true\";s:31:\"blog/image/([^/]+)/trackback/?$\";s:32:\"index.php?image=$matches[1]&tb=1\";s:39:\"blog/image/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?image=$matches[1]&paged=$matches[2]\";s:46:\"blog/image/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?image=$matches[1]&cpage=$matches[2]\";s:35:\"blog/image/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?image=$matches[1]&page=$matches[2]\";s:27:\"blog/image/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"blog/image/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"blog/image/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"blog/image/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"blog/image/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"blog/image/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"blog/post/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"blog/post/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"blog/post/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"blog/post/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"blog/post/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"blog/post/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"blog/post/([^/]+)/embed/?$\";s:38:\"index.php?posts=$matches[1]&embed=true\";s:30:\"blog/post/([^/]+)/trackback/?$\";s:32:\"index.php?posts=$matches[1]&tb=1\";s:50:\"blog/post/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?posts=$matches[1]&feed=$matches[2]\";s:45:\"blog/post/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?posts=$matches[1]&feed=$matches[2]\";s:38:\"blog/post/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?posts=$matches[1]&paged=$matches[2]\";s:45:\"blog/post/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?posts=$matches[1]&cpage=$matches[2]\";s:34:\"blog/post/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?posts=$matches[1]&page=$matches[2]\";s:26:\"blog/post/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"blog/post/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"blog/post/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"blog/post/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"blog/post/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"blog/post/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:16:\".*wp-signup.php$\";s:21:\"index.php?signup=true\";s:18:\".*wp-activate.php$\";s:23:\"index.php?activate=true\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:52:\"blog/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:47:\"blog/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:28:\"blog/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:40:\"blog/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:22:\"blog/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:74:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:69:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:50:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:62:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:44:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:61:\"blog/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:56:\"blog/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:37:\"blog/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:49:\"blog/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:31:\"blog/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:48:\"blog/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:43:\"blog/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:24:\"blog/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:36:\"blog/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:18:\"blog/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:63:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:73:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:93:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:88:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:88:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:69:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:58:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:62:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:82:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:77:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:70:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:77:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:66:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:52:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:62:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:82:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:58:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:69:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:56:\"blog/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:43:\"blog/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(1315, 'addthis_shared_settings', 'a:54:{s:28:\"addthis_asynchronous_loading\";b:0;s:24:\"addthis_per_post_enabled\";b:1;s:15:\"addthis_profile\";s:0:\"\";s:15:\"addthis_rate_us\";s:0:\"\";s:15:\"profile_edition\";s:9:\"anonymous\";s:7:\"api_key\";s:0:\"\";s:12:\"ajax_support\";b:0;s:28:\"credential_validation_status\";s:1:\"0\";s:22:\"filter_get_the_excerpt\";b:1;s:18:\"filter_the_excerpt\";b:1;s:22:\"filter_wp_trim_excerpt\";b:0;s:8:\"wpfooter\";b:1;s:11:\"xmlns_attrs\";b:1;s:30:\"follow_buttons_feature_enabled\";b:0;s:35:\"recommended_content_feature_enabled\";b:0;s:31:\"sharing_buttons_feature_enabled\";b:0;s:14:\"enqueue_client\";b:1;s:22:\"enqueue_local_settings\";b:0;s:12:\"debug_enable\";b:0;s:19:\"addthis_environment\";s:0:\"\";s:23:\"addthis_plugin_controls\";s:9:\"WordPress\";s:20:\"darkseid_environment\";s:0:\"\";s:20:\"settings_ui_base_url\";s:0:\"\";s:24:\"addthis_twitter_template\";s:0:\"\";s:13:\"addthis_bitly\";b:0;s:18:\"addthis_share_json\";s:0:\"\";s:25:\"addthis_share_follow_json\";s:0:\"\";s:30:\"addthis_share_recommended_json\";s:0:\"\";s:27:\"addthis_share_trending_json\";s:0:\"\";s:26:\"addthis_share_welcome_json\";s:0:\"\";s:19:\"addthis_layers_json\";s:0:\"\";s:26:\"addthis_layers_follow_json\";s:0:\"\";s:31:\"addthis_layers_recommended_json\";s:0:\"\";s:28:\"addthis_layers_trending_json\";s:0:\"\";s:27:\"addthis_layers_welcome_json\";s:0:\"\";s:16:\"data_ga_property\";s:0:\"\";s:16:\"addthis_language\";s:0:\"\";s:9:\"atversion\";s:3:\"300\";s:19:\"addthis_append_data\";b:1;s:18:\"addthis_addressbar\";b:0;s:11:\"addthis_508\";b:0;s:19:\"addthis_config_json\";s:0:\"\";s:26:\"addthis_config_follow_json\";s:0:\"\";s:31:\"addthis_config_recommended_json\";s:0:\"\";s:28:\"addthis_config_trending_json\";s:0:\"\";s:27:\"addthis_config_welcome_json\";s:0:\"\";s:11:\"amp_disable\";b:0;s:22:\"amp_inline_share_width\";i:480;s:23:\"amp_inline_share_height\";i:63;s:14:\"startUpgradeAt\";i:4;s:25:\"addthis_anonymous_profile\";s:35:\"wp-0f4e38295e9be5e1923cc9646b5e6270\";s:28:\"registration_feature_enabled\";b:0;s:25:\"addthis_layers_share_json\";s:0:\"\";s:15:\"script_location\";s:6:\"footer\";}', 'yes'),
(1316, 'addthis_follow_buttons_settings', 'a:3:{s:4:\"flwh\";a:5:{s:7:\"enabled\";b:0;s:4:\"size\";s:5:\"large\";s:8:\"thankyou\";b:1;s:5:\"title\";s:0:\"\";s:8:\"services\";O:8:\"stdClass\":0:{}}s:4:\"flwv\";a:5:{s:7:\"enabled\";b:0;s:4:\"size\";s:5:\"large\";s:5:\"title\";s:0:\"\";s:8:\"thankyou\";b:1;s:8:\"services\";O:8:\"stdClass\":0:{}}s:5:\"smlfw\";a:7:{s:7:\"enabled\";b:0;s:5:\"theme\";s:11:\"transparent\";s:10:\"responsive\";i:979;s:6:\"offset\";a:3:{s:8:\"location\";s:3:\"top\";s:6:\"amount\";i:0;s:4:\"unit\";s:2:\"px\";}s:8:\"thankyou\";b:1;s:5:\"title\";s:0:\"\";s:8:\"services\";O:8:\"stdClass\":0:{}}}', 'yes'),
(1317, 'addthis_sharing_buttons_settings', 'a:1:{s:14:\"startUpgradeAt\";i:6;}', 'yes'),
(1318, 'addthis_recommended_content_settings', 'a:2:{s:5:\"smlre\";a:3:{s:7:\"enabled\";b:0;s:5:\"title\";s:19:\"Recommended for you\";s:5:\"theme\";s:5:\"light\";}s:5:\"smlwn\";a:4:{s:7:\"enabled\";b:0;s:5:\"title\";s:19:\"Recommended for you\";s:5:\"theme\";s:5:\"light\";s:6:\"offset\";a:3:{s:8:\"location\";s:5:\"right\";s:6:\"amount\";i:0;s:4:\"unit\";s:2:\"px\";}}}', 'yes'),
(1319, 'widget_addthis_tool_by_class_name_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1320, 'widget_addthis_global_options_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1321, 'analyst_cache', 's:6:\"a:0:{}\";', 'yes'),
(1323, 'show_new_notification', 'yes', 'yes'),
(1324, 'show_premium_cumulative_count_notification', 'yes', 'yes'),
(1325, 'sfsi_custom_icons', 'no', 'yes'),
(1326, 'sfsi_section1_options', 's:546:\"a:15:{s:16:\"sfsi_rss_display\";s:3:\"yes\";s:18:\"sfsi_email_display\";s:3:\"yes\";s:21:\"sfsi_facebook_display\";s:3:\"yes\";s:20:\"sfsi_twitter_display\";s:3:\"yes\";s:22:\"sfsi_pinterest_display\";s:2:\"no\";s:21:\"sfsi_telegram_display\";s:2:\"no\";s:15:\"sfsi_vk_display\";s:2:\"no\";s:15:\"sfsi_ok_display\";s:2:\"no\";s:19:\"sfsi_wechat_display\";s:2:\"no\";s:18:\"sfsi_weibo_display\";s:2:\"no\";s:22:\"sfsi_instagram_display\";s:2:\"no\";s:21:\"sfsi_linkedin_display\";s:2:\"no\";s:20:\"sfsi_youtube_display\";s:2:\"no\";s:19:\"sfsi_custom_display\";s:0:\"\";s:17:\"sfsi_custom_files\";s:0:\"\";}\";', 'yes'),
(1327, 'sfsi_curlErrorNotices', 'yes', 'yes'),
(1328, 'sfsi_curlErrorMessage', 'cURL error 28: Operation timed out after 5000 milliseconds with 0 bytes received', 'yes'),
(1329, 'sfsi_section2_options', 's:1734:\"a:44:{s:12:\"sfsi_rss_url\";s:32:\"http://localhost/wp/models/feed/\";s:14:\"sfsi_rss_icons\";s:5:\"email\";s:14:\"sfsi_email_url\";N;s:24:\"sfsi_facebookPage_option\";s:2:\"no\";s:21:\"sfsi_facebookPage_url\";s:0:\"\";s:24:\"sfsi_facebookLike_option\";s:3:\"yes\";s:25:\"sfsi_facebookShare_option\";s:3:\"yes\";s:21:\"sfsi_twitter_followme\";s:2:\"no\";s:27:\"sfsi_twitter_followUserName\";s:0:\"\";s:22:\"sfsi_twitter_aboutPage\";s:3:\"yes\";s:17:\"sfsi_twitter_page\";s:2:\"no\";s:20:\"sfsi_twitter_pageURL\";s:0:\"\";s:26:\"sfsi_twitter_aboutPageText\";s:82:\"Hey, check out this cool site I found: www.yourname.com #Topic via@my_twitter_name\";s:20:\"sfsi_youtube_pageUrl\";s:0:\"\";s:17:\"sfsi_youtube_page\";s:2:\"no\";s:24:\"sfsi_youtubeusernameorid\";s:0:\"\";s:17:\"sfsi_ytube_chnlid\";s:0:\"\";s:19:\"sfsi_youtube_follow\";s:2:\"no\";s:19:\"sfsi_pinterest_page\";s:2:\"no\";s:22:\"sfsi_pinterest_pageUrl\";s:0:\"\";s:23:\"sfsi_pinterest_pingBlog\";s:0:\"\";s:19:\"sfsi_instagram_page\";s:2:\"no\";s:22:\"sfsi_instagram_pageUrl\";s:0:\"\";s:18:\"sfsi_linkedin_page\";s:2:\"no\";s:21:\"sfsi_linkedin_pageURL\";s:0:\"\";s:20:\"sfsi_linkedin_follow\";s:2:\"no\";s:27:\"sfsi_linkedin_followCompany\";s:0:\"\";s:23:\"sfsi_linkedin_SharePage\";s:3:\"yes\";s:30:\"sfsi_linkedin_recommendBusines\";s:2:\"no\";s:30:\"sfsi_linkedin_recommendCompany\";s:0:\"\";s:32:\"sfsi_linkedin_recommendProductId\";s:0:\"\";s:21:\"sfsi_CustomIcon_links\";s:0:\"\";s:18:\"sfsi_telegram_page\";s:2:\"no\";s:21:\"sfsi_telegram_pageURL\";s:0:\"\";s:21:\"sfsi_telegram_message\";s:0:\"\";s:22:\"sfsi_telegram_username\";s:0:\"\";s:25:\"sfsi_telegram_messageName\";s:0:\"\";s:15:\"sfsi_weibo_page\";s:2:\"no\";s:18:\"sfsi_weibo_pageURL\";s:0:\"\";s:12:\"sfsi_vk_page\";s:2:\"no\";s:15:\"sfsi_vk_pageURL\";s:0:\"\";s:12:\"sfsi_ok_page\";s:2:\"no\";s:15:\"sfsi_ok_pageURL\";s:0:\"\";s:23:\"sfsi_wechatShare_option\";s:3:\"yes\";}\";', 'yes'),
(1330, 'sfsi_section3_options', 's:382:\"a:9:{s:14:\"sfsi_mouseOver\";s:2:\"no\";s:21:\"sfsi_mouseOver_effect\";s:7:\"fade_in\";s:26:\"sfsi_mouseOver_effect_type\";s:10:\"same_icons\";s:39:\"mouseover_other_icons_transition_effect\";s:4:\"flip\";s:18:\"sfsi_shuffle_icons\";s:2:\"no\";s:22:\"sfsi_shuffle_Firstload\";s:2:\"no\";s:21:\"sfsi_shuffle_interval\";s:2:\"no\";s:25:\"sfsi_shuffle_intervalTime\";s:0:\"\";s:18:\"sfsi_actvite_theme\";s:7:\"default\";}\";', 'yes'),
(1331, 'sfsi_section4_options', 's:2149:\"a:54:{s:19:\"sfsi_display_counts\";s:2:\"no\";s:24:\"sfsi_email_countsDisplay\";s:2:\"no\";s:21:\"sfsi_email_countsFrom\";s:6:\"source\";s:23:\"sfsi_email_manualCounts\";s:2:\"20\";s:22:\"sfsi_rss_countsDisplay\";s:2:\"no\";s:21:\"sfsi_rss_manualCounts\";s:2:\"20\";s:22:\"sfsi_facebook_PageLink\";s:0:\"\";s:27:\"sfsi_facebook_countsDisplay\";s:2:\"no\";s:24:\"sfsi_facebook_countsFrom\";s:6:\"manual\";s:26:\"sfsi_facebook_manualCounts\";s:2:\"20\";s:26:\"sfsi_twitter_countsDisplay\";s:2:\"no\";s:23:\"sfsi_twitter_countsFrom\";s:6:\"manual\";s:25:\"sfsi_twitter_manualCounts\";s:2:\"20\";s:27:\"sfsi_linkedIn_countsDisplay\";s:2:\"no\";s:24:\"sfsi_linkedIn_countsFrom\";s:6:\"manual\";s:26:\"sfsi_linkedIn_manualCounts\";s:2:\"20\";s:27:\"sfsi_telegram_countsDisplay\";s:2:\"no\";s:24:\"sfsi_telegram_countsFrom\";s:6:\"manual\";s:26:\"sfsi_telegram_manualCounts\";s:2:\"20\";s:21:\"sfsi_vk_countsDisplay\";s:2:\"no\";s:18:\"sfsi_vk_countsFrom\";s:6:\"manual\";s:20:\"sfsi_vk_manualCounts\";s:2:\"20\";s:21:\"sfsi_ok_countsDisplay\";s:2:\"no\";s:18:\"sfsi_ok_countsFrom\";s:6:\"manual\";s:20:\"sfsi_ok_manualCounts\";s:2:\"20\";s:24:\"sfsi_weibo_countsDisplay\";s:2:\"no\";s:21:\"sfsi_weibo_countsFrom\";s:6:\"manual\";s:23:\"sfsi_weibo_manualCounts\";s:2:\"20\";s:25:\"sfsi_wechat_countsDisplay\";s:2:\"no\";s:22:\"sfsi_wechat_countsFrom\";s:6:\"manual\";s:24:\"sfsi_wechat_manualCounts\";s:2:\"20\";s:10:\"ln_api_key\";s:0:\"\";s:13:\"ln_secret_key\";s:0:\"\";s:19:\"ln_oAuth_user_token\";s:0:\"\";s:10:\"ln_company\";s:0:\"\";s:24:\"sfsi_youtubeusernameorid\";s:4:\"name\";s:17:\"sfsi_youtube_user\";s:0:\"\";s:22:\"sfsi_youtube_channelId\";s:0:\"\";s:17:\"sfsi_ytube_chnlid\";s:0:\"\";s:26:\"sfsi_youtube_countsDisplay\";s:2:\"no\";s:23:\"sfsi_youtube_countsFrom\";s:6:\"manual\";s:25:\"sfsi_youtube_manualCounts\";s:2:\"20\";s:28:\"sfsi_pinterest_countsDisplay\";s:2:\"no\";s:25:\"sfsi_pinterest_countsFrom\";s:6:\"manual\";s:27:\"sfsi_pinterest_manualCounts\";s:2:\"20\";s:19:\"sfsi_pinterest_user\";s:0:\"\";s:20:\"sfsi_pinterest_board\";s:0:\"\";s:25:\"sfsi_instagram_countsFrom\";s:6:\"manual\";s:28:\"sfsi_instagram_countsDisplay\";s:2:\"no\";s:27:\"sfsi_instagram_manualCounts\";s:2:\"20\";s:19:\"sfsi_instagram_User\";s:0:\"\";s:23:\"sfsi_instagram_clientid\";s:0:\"\";s:21:\"sfsi_instagram_appurl\";s:0:\"\";s:20:\"sfsi_instagram_token\";s:0:\"\";}\";', 'yes'),
(1332, 'sfsi_section5_options', 's:1528:\"a:37:{s:15:\"sfsi_icons_size\";s:2:\"40\";s:18:\"sfsi_icons_spacing\";s:1:\"5\";s:20:\"sfsi_icons_Alignment\";s:4:\"left\";s:17:\"sfsi_icons_perRow\";s:1:\"5\";s:24:\"sfsi_icons_ClickPageOpen\";s:3:\"yes\";s:26:\"sfsi_icons_suppress_errors\";s:2:\"no\";s:16:\"sfsi_icons_stick\";s:2:\"no\";s:18:\"sfsi_rssIcon_order\";s:1:\"1\";s:20:\"sfsi_emailIcon_order\";s:1:\"2\";s:23:\"sfsi_facebookIcon_order\";s:1:\"3\";s:22:\"sfsi_twitterIcon_order\";s:1:\"4\";s:22:\"sfsi_youtubeIcon_order\";s:1:\"5\";s:24:\"sfsi_pinterestIcon_order\";s:1:\"7\";s:23:\"sfsi_linkedinIcon_order\";s:1:\"8\";s:24:\"sfsi_instagramIcon_order\";s:1:\"9\";s:23:\"sfsi_telegramIcon_order\";s:2:\"11\";s:17:\"sfsi_vkIcon_order\";s:2:\"12\";s:17:\"sfsi_okIcon_order\";s:2:\"13\";s:20:\"sfsi_weiboIcon_order\";s:2:\"14\";s:21:\"sfsi_wechatIcon_order\";s:2:\"15\";s:22:\"sfsi_CustomIcons_order\";s:0:\"\";s:22:\"sfsi_rss_MouseOverText\";s:3:\"RSS\";s:24:\"sfsi_email_MouseOverText\";s:15:\"Follow by Email\";s:26:\"sfsi_twitter_MouseOverText\";s:7:\"Twitter\";s:27:\"sfsi_facebook_MouseOverText\";s:8:\"Facebook\";s:27:\"sfsi_linkedIn_MouseOverText\";s:8:\"LinkedIn\";s:28:\"sfsi_pinterest_MouseOverText\";s:9:\"Pinterest\";s:28:\"sfsi_instagram_MouseOverText\";s:9:\"Instagram\";s:26:\"sfsi_youtube_MouseOverText\";s:7:\"YouTube\";s:27:\"sfsi_telegram_MouseOverText\";s:8:\"Telegram\";s:21:\"sfsi_vk_MouseOverText\";s:2:\"VK\";s:21:\"sfsi_ok_MouseOverText\";s:2:\"OK\";s:24:\"sfsi_weibo_MouseOverText\";s:5:\"Weibo\";s:25:\"sfsi_wechat_MouseOverText\";s:6:\"WeChat\";s:26:\"sfsi_custom_MouseOverTexts\";s:0:\"\";s:23:\"sfsi_custom_social_hide\";s:2:\"no\";s:32:\"sfsi_pplus_icons_suppress_errors\";s:2:\"no\";}\";', 'yes'),
(1355, 'sfsi_addThis_icon_removal_notice_dismissed', '1', 'yes'),
(1333, 'sfsi_section6_options', 's:1374:\"a:17:{s:17:\"sfsi_show_Onposts\";s:2:\"no\";s:18:\"sfsi_show_Onbottom\";s:2:\"no\";s:22:\"sfsi_icons_postPositon\";s:6:\"source\";s:20:\"sfsi_icons_alignment\";s:12:\"center-right\";s:22:\"sfsi_rss_countsDisplay\";s:2:\"no\";s:20:\"sfsi_textBefor_icons\";s:26:\"Please follow and like us:\";s:24:\"sfsi_icons_DisplayCounts\";s:2:\"no\";s:12:\"sfsi_rectsub\";s:3:\"yes\";s:11:\"sfsi_rectfb\";s:3:\"yes\";s:12:\"sfsi_rectshr\";s:2:\"no\";s:13:\"sfsi_recttwtr\";s:3:\"yes\";s:14:\"sfsi_rectpinit\";s:3:\"yes\";s:16:\"sfsi_rectfbshare\";s:3:\"yes\";s:24:\"sfsi_display_button_type\";s:16:\"standard_buttons\";s:30:\"sfsi_responsive_icons_end_post\";s:2:\"no\";s:16:\"sfsi_share_count\";s:2:\"no\";s:21:\"sfsi_responsive_icons\";a:3:{s:13:\"default_icons\";a:3:{s:8:\"facebook\";a:3:{s:6:\"active\";s:3:\"yes\";s:4:\"text\";s:17:\"Share on Facebook\";s:3:\"url\";s:0:\"\";}s:7:\"Twitter\";a:3:{s:6:\"active\";s:3:\"yes\";s:4:\"text\";s:5:\"Tweet\";s:3:\"url\";s:0:\"\";}s:6:\"Follow\";a:3:{s:6:\"active\";s:3:\"yes\";s:4:\"text\";s:9:\"Follow us\";s:3:\"url\";s:0:\"\";}}s:12:\"custom_icons\";a:0:{}s:8:\"settings\";a:12:{s:9:\"icon_size\";s:6:\"Medium\";s:15:\"icon_width_type\";s:16:\"Fully responsive\";s:15:\"icon_width_size\";i:240;s:9:\"edge_type\";s:5:\"Round\";s:11:\"edge_radius\";i:5;s:5:\"style\";s:8:\"Gradient\";s:6:\"margin\";i:10;s:10:\"text_align\";s:8:\"Centered\";s:10:\"show_count\";s:2:\"no\";s:13:\"counter_color\";s:7:\"#aaaaaa\";s:16:\"counter_bg_color\";s:4:\"#fff\";s:16:\"share_count_text\";s:6:\"SHARES\";}}}\";', 'yes'),
(1334, 'sfsi_section7_options', 's:666:\"a:15:{s:15:\"sfsi_show_popup\";s:2:\"no\";s:15:\"sfsi_popup_text\";s:42:\"Enjoy this blog? Please spread the word :)\";s:27:\"sfsi_popup_background_color\";s:7:\"#eff7f7\";s:23:\"sfsi_popup_border_color\";s:7:\"#f3faf2\";s:27:\"sfsi_popup_border_thickness\";s:1:\"1\";s:24:\"sfsi_popup_border_shadow\";s:3:\"yes\";s:15:\"sfsi_popup_font\";s:26:\"Helvetica,Arial,sans-serif\";s:19:\"sfsi_popup_fontSize\";s:2:\"30\";s:20:\"sfsi_popup_fontStyle\";s:6:\"normal\";s:20:\"sfsi_popup_fontColor\";s:7:\"#000000\";s:17:\"sfsi_Show_popupOn\";s:4:\"none\";s:25:\"sfsi_Show_popupOn_PageIDs\";s:0:\"\";s:14:\"sfsi_Shown_pop\";s:8:\"ETscroll\";s:24:\"sfsi_Shown_popupOnceTime\";s:0:\"\";s:32:\"sfsi_Shown_popuplimitPerUserTime\";s:0:\"\";}\";', 'yes'),
(1335, 'sfsi_section8_options', 's:1208:\"a:26:{s:20:\"sfsi_form_adjustment\";s:3:\"yes\";s:16:\"sfsi_form_height\";s:3:\"180\";s:15:\"sfsi_form_width\";s:3:\"230\";s:16:\"sfsi_form_border\";s:2:\"no\";s:26:\"sfsi_form_border_thickness\";s:1:\"1\";s:22:\"sfsi_form_border_color\";s:7:\"#b5b5b5\";s:20:\"sfsi_form_background\";s:7:\"#ffffff\";s:22:\"sfsi_form_heading_text\";s:22:\"Get new posts by email\";s:22:\"sfsi_form_heading_font\";s:26:\"Helvetica,Arial,sans-serif\";s:27:\"sfsi_form_heading_fontstyle\";s:4:\"bold\";s:27:\"sfsi_form_heading_fontcolor\";s:7:\"#000000\";s:26:\"sfsi_form_heading_fontsize\";s:2:\"16\";s:27:\"sfsi_form_heading_fontalign\";s:6:\"center\";s:20:\"sfsi_form_field_text\";s:9:\"Subscribe\";s:20:\"sfsi_form_field_font\";s:26:\"Helvetica,Arial,sans-serif\";s:25:\"sfsi_form_field_fontstyle\";s:6:\"normal\";s:25:\"sfsi_form_field_fontcolor\";s:7:\"#000000\";s:24:\"sfsi_form_field_fontsize\";s:2:\"14\";s:25:\"sfsi_form_field_fontalign\";s:6:\"center\";s:21:\"sfsi_form_button_text\";s:9:\"Subscribe\";s:21:\"sfsi_form_button_font\";s:26:\"Helvetica,Arial,sans-serif\";s:26:\"sfsi_form_button_fontstyle\";s:4:\"bold\";s:26:\"sfsi_form_button_fontcolor\";s:7:\"#000000\";s:25:\"sfsi_form_button_fontsize\";s:2:\"16\";s:26:\"sfsi_form_button_fontalign\";s:6:\"center\";s:27:\"sfsi_form_button_background\";s:7:\"#dedede\";}\";', 'yes'),
(1336, 'sfsi_section9_options', 's:420:\"a:10:{s:20:\"sfsi_show_via_widget\";s:2:\"no\";s:16:\"sfsi_icons_float\";s:2:\"no\";s:24:\"sfsi_icons_floatPosition\";s:12:\"center-right\";s:26:\"sfsi_icons_floatMargin_top\";s:0:\"\";s:29:\"sfsi_icons_floatMargin_bottom\";s:0:\"\";s:27:\"sfsi_icons_floatMargin_left\";s:0:\"\";s:28:\"sfsi_icons_floatMargin_right\";s:0:\"\";s:23:\"sfsi_disable_floaticons\";s:2:\"no\";s:23:\"sfsi_show_via_shortcode\";s:2:\"no\";s:24:\"sfsi_show_via_afterposts\";s:2:\"no\";}\";', 'yes'),
(1337, 'sfsi_feed_id', '', 'yes'),
(1338, 'sfsi_redirect_url', '', 'yes'),
(1339, 'sfsi_installDate', '2019-07-30 03:40:23', 'yes'),
(1340, 'sfsi_RatingDiv', 'no', 'yes'),
(1341, 'sfsi_footer_sec', 'no', 'yes'),
(1342, 'sfsi_activate', '0', 'yes'),
(1343, 'sfsi_instagram_sf_count', 's:126:\"a:4:{s:7:\"date_sf\";i:1564444800;s:14:\"date_instagram\";s:0:\"\";s:13:\"sfsi_sf_count\";s:1:\"O\";s:20:\"sfsi_instagram_count\";s:0:\"\";}\";', 'yes'),
(1344, 'sfsi_error_reporting_notice_dismissed', '1', 'yes'),
(1345, 'adding_tags', 'yes', 'yes'),
(1346, 'widget_sfsi-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1347, 'widget_subscriber_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1348, 'sfsi_pluginVersion', '2.28', 'yes'),
(1349, 'sfsi_serverphpVersionnotification', 'yes', 'yes'),
(1350, 'show_premium_notification', 'yes', 'yes'),
(1351, 'show_notification', 'yes', 'yes'),
(1352, 'show_mobile_notification', 'yes', 'yes'),
(1353, 'sfsi_languageNotice', 'yes', 'yes'),
(1354, 'sfsi_pplus_error_reporting_notice_dismissed', '1', 'yes'),
(1359, 'theme_mods_twentyseventeen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:37;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1564458161;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(39, 'recently_edited', 'a:5:{i:0;s:54:\"D:\\xampp\\htdocs\\wp\\models/wp-content/plugins/hello.php\";i:2;s:79:\"D:\\xampp\\htdocs\\wp\\models/wp-content/plugins/advanced-custom-fields-pro/acf.php\";i:3;s:76:\"D:\\xampp\\htdocs\\wp\\models/wp-content/themes/models/taxonomy-services_cat.php\";i:4;s:70:\"D:\\xampp\\htdocs\\wp\\models/wp-content/themes/models/taxonomy-object.php\";i:5;s:74:\"D:\\xampp\\htdocs\\wp\\models/wp-content/themes/models/taxonomy-models_cat.php\";}', 'no'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
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
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:3:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}s:35:\"litespeed-cache/litespeed-cache.php\";s:53:\"LiteSpeed_Cache_Activation::uninstall_litespeed_cache\";s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";s:20:\"sfsi_Unistall_plugin\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '138', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:12:\"cfdb7_access\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:7:{i:1566881453;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1566913853;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1566913854;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566913866;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566913872;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566920285;a:1:{s:21:\"update_network_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1562853924;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(137, 'recovery_keys', 'a:0:{}', 'yes'),
(140, 'recently_activated', 'a:4:{s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";i:1564458082;s:33:\"addthis/addthis_social_widget.php\";i:1564458066;s:38:\"post-duplicator/m4c-postduplicator.php\";i:1564454253;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:1564454248;}', 'yes'),
(143, 'vc_version', '5.4.7', 'yes'),
(144, 'wpb_js_composer_license_activation_notified', 'yes', 'yes'),
(145, 'acf_version', '5.6.10', 'yes'),
(146, 'current_theme', 'Models', 'yes'),
(147, 'theme_mods_tfot', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1562853920;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(149, 'recovery_mode_email_last_sent', '1563468658', 'yes'),
(152, 'theme_mods_models', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:9:\"main-menu\";i:37;s:11:\"footer_menu\";i:45;s:15:\"about_left_menu\";i:56;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1564458111;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(154, 'vtm_post_page', 'a:11:{i:0;a:2:{s:5:\"label\";s:14:\"Privacy Policy\";s:5:\"value\";i:232;}i:1;a:2:{s:5:\"label\";s:12:\"Terms-of-Use\";s:5:\"value\";i:228;}i:2;a:2:{s:5:\"label\";s:4:\"Blog\";s:5:\"value\";i:202;}i:3;a:2:{s:5:\"label\";s:10:\"Be a model\";s:5:\"value\";i:77;}i:4;a:2:{s:5:\"label\";s:12:\"How to apply\";s:5:\"value\";i:56;}i:5;a:2:{s:5:\"label\";s:10:\"Newsletter\";s:5:\"value\";i:52;}i:6;a:2:{s:5:\"label\";s:10:\"Contact us\";s:5:\"value\";i:40;}i:7;a:2:{s:5:\"label\";s:6:\"MODELS\";s:5:\"value\";i:38;}i:8;a:2:{s:5:\"label\";s:8:\"ABOUT US\";s:5:\"value\";i:36;}i:9;a:2:{s:5:\"label\";s:4:\"Home\";s:5:\"value\";i:5;}i:10;a:2:{s:5:\"label\";s:11:\"Sample Page\";s:5:\"value\";i:2;}}', 'yes'),
(181, 'ai1wm_updater', 'a:0:{}', 'yes'),
(188, 'jetpack_active_modules', 'a:0:{}', 'yes'),
(192, 'db_upgraded', '', 'yes'),
(204, 'cptui_new_install', 'false', 'yes'),
(205, 'cptui_post_types', 'a:6:{s:6:\"models\";a:29:{s:4:\"name\";s:6:\"models\";s:5:\"label\";s:6:\"Models\";s:14:\"singular_label\";s:6:\"Models\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:68:\"http://localhost/wp/models/wp-content/uploads/2019/07/icon-model.jpg\";s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:1:{i:0;s:8:\"post_tag\";}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:6:\"images\";a:29:{s:4:\"name\";s:6:\"images\";s:5:\"label\";s:6:\"Images\";s:14:\"singular_label\";s:6:\"Images\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:68:\"http://localhost/wp/models/wp-content/uploads/2019/07/icon-image.png\";s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:1:{i:0;s:8:\"post_tag\";}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:7:\"artists\";a:29:{s:4:\"name\";s:7:\"artists\";s:5:\"label\";s:7:\"Artists\";s:14:\"singular_label\";s:7:\"Artists\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:63:\"http://localhost/wp/models/wp-content/uploads/2019/07/ngesi.png\";s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:1:{i:0;s:8:\"post_tag\";}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:8:\"services\";a:29:{s:4:\"name\";s:8:\"services\";s:5:\"label\";s:8:\"Services\";s:14:\"singular_label\";s:8:\"Services\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:65:\"http://localhost/wp/models/wp-content/uploads/2019/07/service.jpg\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:7:\"excerpt\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:7:\"academy\";a:29:{s:4:\"name\";s:7:\"academy\";s:5:\"label\";s:7:\"Academy\";s:14:\"singular_label\";s:7:\"Academy\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:4:\"true\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:73:\"http://localhost/wp/models/wp-content/uploads/2019/07/school-building.png\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:7:\"excerpt\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:5:\"image\";a:29:{s:4:\"name\";s:5:\"image\";s:5:\"label\";s:6:\"Images\";s:14:\"singular_label\";s:6:\"Images\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:68:\"http://localhost/wp/models/wp-content/uploads/2019/07/icon-image.png\";s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:1:{i:0;s:8:\"post_tag\";}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(208, 'cptui_taxonomies', 'a:5:{s:6:\"object\";a:24:{s:4:\"name\";s:6:\"object\";s:5:\"label\";s:15:\"Đối tượng\";s:14:\"singular_label\";s:15:\"Đối tượng\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:6:\"models\";}}s:11:\"artists_cat\";a:24:{s:4:\"name\";s:11:\"artists_cat\";s:5:\"label\";s:16:\"Category Artists\";s:14:\"singular_label\";s:16:\"Category Artists\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:7:\"artists\";}}s:12:\"services_cat\";a:24:{s:4:\"name\";s:12:\"services_cat\";s:5:\"label\";s:17:\"Category Services\";s:14:\"singular_label\";s:17:\"Category Services\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:8:\"services\";}}s:11:\"academy_cat\";a:24:{s:4:\"name\";s:11:\"academy_cat\";s:5:\"label\";s:16:\"Category Academy\";s:14:\"singular_label\";s:16:\"Category Academy\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:7:\"academy\";}}s:8:\"archives\";a:24:{s:4:\"name\";s:8:\"archives\";s:5:\"label\";s:8:\"Archives\";s:14:\"singular_label\";s:8:\"Archives\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:4:\"post\";}}}', 'yes'),
(211, 'vtm_post_models', 'a:9:{i:0;a:2:{s:5:\"label\";s:5:\"ALENA\";s:5:\"value\";i:76;}i:1;a:2:{s:5:\"label\";s:5:\"ALENA\";s:5:\"value\";i:75;}i:2;a:2:{s:5:\"label\";s:5:\"ALENA\";s:5:\"value\";i:74;}i:3;a:2:{s:5:\"label\";s:5:\"ALENA\";s:5:\"value\";i:73;}i:4;a:2:{s:5:\"label\";s:5:\"ALENA\";s:5:\"value\";i:72;}i:5;a:2:{s:5:\"label\";s:5:\"ALENA\";s:5:\"value\";i:71;}i:6;a:2:{s:5:\"label\";s:5:\"ALENA\";s:5:\"value\";i:70;}i:7;a:2:{s:5:\"label\";s:5:\"ALENA\";s:5:\"value\";i:17;}i:8;a:2:{s:5:\"label\";s:5:\"ALENA\";s:5:\"value\";i:11;}}', 'yes'),
(214, 'vtm_post_acf-field-group', 'a:6:{i:0;a:2:{s:5:\"label\";s:4:\"test\";s:5:\"value\";i:245;}i:1;a:2:{s:5:\"label\";s:8:\"Archives\";s:5:\"value\";i:236;}i:2;a:2:{s:5:\"label\";s:17:\"Services Taxonomy\";s:5:\"value\";i:162;}i:3;a:2:{s:5:\"label\";s:6:\"Footer\";s:5:\"value\";i:146;}i:4;a:2:{s:5:\"label\";s:11:\"Logo mobile\";s:5:\"value\";i:140;}i:5;a:2:{s:5:\"label\";s:6:\"Images\";s:5:\"value\";i:21;}}', 'yes'),
(215, 'vtm_post_acf-field', 'a:12:{i:0;a:2:{s:5:\"label\";s:3:\"des\";s:5:\"value\";i:246;}i:1;a:2:{s:5:\"label\";s:3:\"wer\";s:5:\"value\";i:247;}i:2;a:2:{s:5:\"label\";s:26:\"Hiện ở sidemenu phải\";s:5:\"value\";i:237;}i:3;a:2:{s:5:\"label\";s:18:\"Services left menu\";s:5:\"value\";i:163;}i:4;a:2:{s:5:\"label\";s:10:\"Powered by\";s:5:\"value\";i:152;}i:5;a:2:{s:5:\"label\";s:9:\"Copyright\";s:5:\"value\";i:147;}i:6;a:2:{s:5:\"label\";s:7:\"youtube\";s:5:\"value\";i:148;}i:7;a:2:{s:5:\"label\";s:8:\"facebook\";s:5:\"value\";i:149;}i:8;a:2:{s:5:\"label\";s:7:\"twitter\";s:5:\"value\";i:150;}i:9;a:2:{s:5:\"label\";s:9:\"Instagram\";s:5:\"value\";i:151;}i:10;a:2:{s:5:\"label\";s:11:\"Logo Mobile\";s:5:\"value\";i:141;}i:11;a:2:{s:5:\"label\";s:15:\"Bộ sưu tập\";s:5:\"value\";i:22;}}', 'yes'),
(228, 'vtm_post_nav_menu_item', 'a:66:{i:0;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:234;}i:1;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:230;}i:2;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:208;}i:3;a:2:{s:5:\"label\";s:12:\"Terms of Use\";s:5:\"value\";i:209;}i:4;a:2:{s:5:\"label\";s:14:\"PRIVACY POLICY\";s:5:\"value\";i:210;}i:5;a:2:{s:5:\"label\";s:11:\"NEWS LETTER\";s:5:\"value\";i:211;}i:6;a:2:{s:5:\"label\";s:5:\"ABOUT\";s:5:\"value\";i:206;}i:7;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:207;}i:8;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:177;}i:9;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:174;}i:10;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:175;}i:11;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:176;}i:12;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:167;}i:13;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:168;}i:14;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:169;}i:15;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:171;}i:16;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:170;}i:17;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:161;}i:18;a:2:{s:5:\"label\";s:11:\"News letter\";s:5:\"value\";i:159;}i:19;a:2:{s:5:\"label\";s:5:\"About\";s:5:\"value\";i:156;}i:20;a:2:{s:5:\"label\";s:7:\"Contact\";s:5:\"value\";i:157;}i:21;a:2:{s:5:\"label\";s:10:\"Contact Us\";s:5:\"value\";i:158;}i:22;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:160;}i:23;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:155;}i:24;a:2:{s:5:\"label\";s:10:\"Contact Us\";s:5:\"value\";i:143;}i:25;a:2:{s:5:\"label\";s:10:\"Be a model\";s:5:\"value\";i:144;}i:26;a:2:{s:5:\"label\";s:11:\"News letter\";s:5:\"value\";i:145;}i:27;a:2:{s:5:\"label\";s:4:\"Blog\";s:5:\"value\";i:134;}i:28;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:123;}i:29;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:125;}i:30;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:126;}i:31;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:127;}i:32;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:128;}i:33;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:129;}i:34;a:2:{s:5:\"label\";s:7:\"Academy\";s:5:\"value\";i:130;}i:35;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:118;}i:36;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:117;}i:37;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:119;}i:38;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:120;}i:39;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:121;}i:40;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:122;}i:41;a:2:{s:5:\"label\";s:4:\"Blog\";s:5:\"value\";i:116;}i:42;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:96;}i:43;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:98;}i:44;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:99;}i:45;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:100;}i:46;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:101;}i:47;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:102;}i:48;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:103;}i:49;a:2:{s:5:\"label\";s:6:\"Images\";s:5:\"value\";i:104;}i:50;a:2:{s:5:\"label\";s:7:\"Artists\";s:5:\"value\";i:105;}i:51;a:2:{s:5:\"label\";s:8:\"Services\";s:5:\"value\";i:110;}i:52;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:95;}i:53;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:97;}i:54;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:89;}i:55;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:90;}i:56;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:91;}i:57;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:92;}i:58;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:93;}i:59;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:94;}i:60;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:85;}i:61;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:86;}i:62;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:87;}i:63;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:18;}i:64;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:19;}i:65;a:2:{s:5:\"label\";s:0:\"\";s:5:\"value\";i:20;}}', 'yes'),
(233, 'sex_children', 'a:0:{}', 'yes'),
(237, 'gender_children', 'a:0:{}', 'yes'),
(249, 'vtm_post_images', 'a:2:{i:0;a:2:{s:5:\"label\";s:10:\"ALEKSANDRA\";s:5:\"value\";i:63;}i:1;a:2:{s:5:\"label\";s:7:\"LE THUY\";s:5:\"value\";i:23;}}', 'yes'),
(301, 'vtm_post_artists', 'a:1:{i:0;a:2:{s:5:\"label\";s:13:\"EMIL BILINSKI\";s:5:\"value\";i:154;}}', 'yes'),
(364, 'vtm_post_wpcf7_contact_form', 'a:4:{i:0;a:2:{s:5:\"label\";s:15:\"Be a model form\";s:5:\"value\";i:79;}i:1;a:2:{s:5:\"label\";s:17:\"How to apply form\";s:5:\"value\";i:58;}i:2;a:2:{s:5:\"label\";s:16:\"News letter form\";s:5:\"value\";i:51;}i:3;a:2:{s:5:\"label\";s:12:\"Contact form\";s:5:\"value\";i:43;}}', 'yes'),
(365, 'wpcf7', 'a:3:{s:7:\"version\";s:5:\"5.0.5\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1563072562;s:7:\"version\";s:5:\"5.0.5\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}s:9:\"recaptcha\";a:1:{s:40:\"6LcNkK0UAAAAAGXQWxa4y899eakv4uQv7Bjmlto3\";s:40:\"6LcNkK0UAAAAAEQ5aOdOnU-QHYCLj62PEY_T_2ns\";}}', 'yes'),
(409, 'models_cat_children', 'a:0:{}', 'yes'),
(436, 'mtphr_post_duplicator_settings', '', 'yes'),
(466, 'litespeed-cache-conf', 'a:126:{s:7:\"version\";s:7:\"2.9.8.3\";s:12:\"radio_select\";i:1;s:12:\"auto_upgrade\";b:0;s:13:\"purge_upgrade\";b:1;s:10:\"cache_priv\";b:1;s:15:\"cache_commenter\";b:1;s:10:\"cache_rest\";b:1;s:16:\"cache_page_login\";b:1;s:10:\"timed_urls\";s:0:\"\";s:15:\"timed_urls_time\";s:0:\"\";s:13:\"cache_favicon\";b:1;s:15:\"cache_resources\";b:1;s:18:\"mobileview_enabled\";b:0;s:16:\"mobileview_rules\";s:62:\"Mobile|Android|Silk/|Kindle|BlackBerry|Opera\\ Mini|Opera\\ Mobi\";s:12:\"cache_object\";b:0;s:17:\"cache_object_kind\";b:0;s:17:\"cache_object_host\";s:9:\"localhost\";s:17:\"cache_object_port\";s:5:\"11211\";s:17:\"cache_object_life\";s:3:\"360\";s:23:\"cache_object_persistent\";b:1;s:18:\"cache_object_admin\";b:1;s:23:\"cache_object_transients\";b:1;s:18:\"cache_object_db_id\";i:0;s:17:\"cache_object_user\";s:0:\"\";s:17:\"cache_object_pswd\";s:0:\"\";s:13:\"cache_browser\";b:0;s:17:\"cache_browser_ttl\";i:2592000;s:12:\"login_cookie\";s:0:\"\";s:19:\"check_advancedcache\";b:1;s:23:\"use_http_for_https_vary\";b:0;s:17:\"debug_disable_all\";b:0;s:5:\"debug\";i:0;s:9:\"admin_ips\";s:9:\"127.0.0.1\";s:11:\"debug_level\";b:0;s:13:\"log_file_size\";i:3;s:9:\"heartbeat\";b:1;s:12:\"debug_cookie\";b:0;s:10:\"collaps_qs\";b:0;s:11:\"log_filters\";b:0;s:10:\"public_ttl\";i:604800;s:11:\"private_ttl\";i:1800;s:14:\"front_page_ttl\";i:604800;s:8:\"feed_ttl\";i:1;s:7:\"403_ttl\";i:3600;s:7:\"404_ttl\";i:3600;s:7:\"500_ttl\";i:3600;s:13:\"purge_by_post\";s:22:\"A.F.H.M.PGS.PGSRP.PT.T\";s:11:\"excludes_qs\";s:0:\"\";s:12:\"excludes_cat\";s:0:\"\";s:12:\"excludes_tag\";s:0:\"\";s:13:\"instant_click\";b:0;s:10:\"css_minify\";b:0;s:17:\"css_inline_minify\";b:0;s:11:\"css_combine\";b:0;s:21:\"css_combined_priority\";b:0;s:9:\"css_http2\";b:0;s:11:\"css_exclude\";s:0:\"\";s:9:\"js_minify\";b:0;s:16:\"js_inline_minify\";b:0;s:10:\"js_combine\";b:0;s:20:\"js_combined_priority\";b:0;s:8:\"js_http2\";b:0;s:10:\"js_exclude\";s:0:\"\";s:12:\"optimize_ttl\";i:604800;s:11:\"html_minify\";b:0;s:10:\"optm_qs_rm\";b:0;s:15:\"optm_ggfonts_rm\";b:0;s:14:\"optm_css_async\";b:0;s:13:\"optm_ccss_gen\";b:1;s:15:\"optm_ccss_async\";b:1;s:21:\"optm_css_async_inline\";b:1;s:13:\"optm_js_defer\";b:0;s:13:\"optm_emoji_rm\";b:0;s:19:\"optm_exclude_jquery\";b:1;s:18:\"optm_ggfonts_async\";b:0;s:13:\"optm_max_size\";d:1.1999999999999999555910790149937383830547332763671875;s:15:\"optm_rm_comment\";b:0;s:3:\"cdn\";b:0;s:7:\"cdn_ori\";s:0:\"\";s:11:\"cdn_exclude\";s:0:\"\";s:17:\"cdn_remote_jquery\";b:0;s:8:\"cdn_quic\";b:0;s:14:\"cdn_quic_email\";s:0:\"\";s:12:\"cdn_quic_key\";s:0:\"\";s:14:\"cdn_cloudflare\";b:0;s:20:\"cdn_cloudflare_email\";s:0:\"\";s:18:\"cdn_cloudflare_key\";s:0:\"\";s:19:\"cdn_cloudflare_name\";s:0:\"\";s:19:\"cdn_cloudflare_zone\";s:0:\"\";s:14:\"media_img_lazy\";b:0;s:26:\"media_img_lazy_placeholder\";s:0:\"\";s:22:\"media_placeholder_resp\";b:0;s:28:\"media_placeholder_resp_color\";s:7:\"#cfd4db\";s:28:\"media_placeholder_resp_async\";b:1;s:17:\"media_iframe_lazy\";b:0;s:23:\"media_img_lazyjs_inline\";b:0;s:15:\"media_optm_auto\";b:0;s:15:\"media_optm_cron\";b:1;s:14:\"media_optm_ori\";b:1;s:17:\"media_rm_ori_bkup\";b:0;s:15:\"media_optm_webp\";b:0;s:19:\"media_optm_lossless\";b:0;s:15:\"media_optm_exif\";b:0;s:18:\"media_webp_replace\";b:0;s:25:\"media_webp_replace_srcset\";b:0;s:4:\"hash\";s:32:\"CzRUOHCKGcbsj9YphLUdbtxKFjiFXOmq\";s:15:\"nocache_cookies\";s:0:\"\";s:18:\"nocache_useragents\";s:0:\"\";s:21:\"crawler_include_posts\";b:1;s:21:\"crawler_include_pages\";b:1;s:20:\"crawler_include_cats\";b:1;s:20:\"crawler_include_tags\";b:1;s:20:\"crawler_excludes_cpt\";s:0:\"\";s:19:\"crawler_order_links\";s:9:\"date_desc\";s:14:\"crawler_usleep\";i:500;s:20:\"crawler_run_duration\";i:400;s:20:\"crawler_run_interval\";i:600;s:22:\"crawler_crawl_interval\";i:302400;s:15:\"crawler_threads\";i:3;s:18:\"crawler_load_limit\";i:1;s:17:\"crawler_domain_ip\";s:0:\"\";s:22:\"crawler_custom_sitemap\";s:0:\"\";s:19:\"crawler_cron_active\";b:0;s:11:\"esi_enabled\";b:0;s:17:\"esi_cached_admbar\";b:1;s:19:\"esi_cached_commform\";b:1;}', 'yes'),
(467, 'litespeed-cache_uri_priv', '', 'yes'),
(468, 'litespeed-cache-drop_qs', '', 'yes'),
(469, 'litespeed-forced_cache_uri', '', 'yes'),
(470, 'litespeed-excludes_uri', '', 'yes'),
(471, 'litespeed-cache-exclude-cache-roles', 'a:0:{}', 'yes'),
(472, 'litespeed-optm-css', 'a:0:{}', 'yes'),
(473, 'litespeed-optm_excludes', '', 'yes'),
(474, 'litespeed-optm-js-defer-excludes', '', 'yes'),
(475, 'litespeed-cache-exclude-optimization-roles', 'a:0:{}', 'yes'),
(476, 'litespeed-cache-dns_prefetch', '', 'yes'),
(477, 'litespeed-optm-ccss-separate_posttype', '', 'yes'),
(478, 'litespeed-optm-css-separate_uri', '', 'yes'),
(479, 'litespeed-media-lazy-img-excludes', '', 'yes'),
(480, 'litespeed-media-lazy-img-cls-excludes', '', 'yes'),
(481, 'litespeed-media-webp_attribute', 'img.src\ndiv.data-thumb\nimg.data-src\ndiv.data-large_image\nimg.retina_logo_url', 'yes'),
(482, 'litespeed-cdn-ori_dir', 'wp-content\nwp-includes\n/min/', 'yes'),
(483, 'litespeed-cache-cdn_mapping', 'a:1:{i:0;a:5:{s:3:\"url\";b:0;s:7:\"inc_img\";s:1:\"1\";s:7:\"inc_css\";s:1:\"1\";s:6:\"inc_js\";s:1:\"1\";s:8:\"filetype\";s:86:\".aac\n.css\n.eot\n.gif\n.jpeg\n.js\n.jpg\n.less\n.mp3\n.mp4\n.ogg\n.otf\n.pdf\n.png\n.svg\n.ttf\n.woff\";}}', 'yes'),
(484, 'litespeed-adv-purge_all_hooks', 'switch_theme\nwp_create_nav_menu\nwp_update_nav_menu\nwp_delete_nav_menu\ncreate_term\nedit_terms\ndelete_term\nadd_link\nedit_link\ndelete_link', 'yes'),
(485, 'litespeed-log_ignore_filters', 'gettext\ngettext_with_context\nget_the_terms\nget_term', 'yes'),
(486, 'litespeed-log_ignore_part_filters', 'i18n\nlocale\nsettings\noption', 'yes'),
(487, 'litespeed-crawler-as-uids', '', 'yes'),
(488, 'litespeed-crawler-cookies', 'a:0:{}', 'yes'),
(489, 'litespeed-object_global_groups', 'users\nuserlogins\nusermeta\nuser_meta\nsite-transient\nsite-options\nsite-lookup\nblog-lookup\nblog-details\nrss\nglobal-posts\nblog-id-cache', 'yes'),
(490, 'litespeed-object_non_persistent_groups', 'comment\ncounts\nplugins', 'yes'),
(491, 'litespeed-cache-vary-group', '', 'yes'),
(534, 'litespeed-gui-summary', 'a:2:{s:24:\"banner_promo.new_version\";i:1563295587;s:12:\"banner_promo\";i:1563641187;}', 'yes'),
(787, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(810, 'litespeed-timestamp-purge-css', '1563264066', 'yes'),
(811, 'litespeed_messages', 'a:2:{i:0;b:0;i:1;s:94:\"<div class=\"notice notice-success is-dismissible\"><p>Purged all caches successfully.</p></div>\";}', 'yes'),
(813, 'vtm_post_customize_changeset', 'a:0:{}', 'yes'),
(814, 'options_logo', '138', 'no'),
(815, '_options_logo', 'field_5aec8d0c44402', 'no'),
(816, 'options_default_footer', '', 'no'),
(817, '_options_default_footer', 'field_5b1659f4a1783', 'no'),
(818, 'options_after_head_open', '', 'no'),
(819, '_options_after_head_open', 'field_5b16583094f26', 'no'),
(820, 'options_before_head_close', '', 'no'),
(821, '_options_before_head_close', 'field_5b16584994f27', 'no'),
(822, 'options_after_body_open', '', 'no'),
(823, '_options_after_body_open', 'field_5b16585894f28', 'no'),
(824, 'options_before_body_close', '', 'no'),
(825, '_options_before_body_close', 'field_5b16586594f29', 'no'),
(826, 'options_logo_mobile', '142', 'no'),
(827, '_options_logo_mobile', 'field_5d2d8d3cbac98', 'no'),
(831, 'options_copyright', '© Copyright 2013 Tay-Models.coms', 'no'),
(832, '_options_copyright', 'field_5d2d92a606e2b', 'no'),
(833, 'options_youtube', '#', 'no'),
(834, '_options_youtube', 'field_5d2d92b506e2c', 'no'),
(835, 'options_facebook', '#', 'no'),
(836, '_options_facebook', 'field_5d2d92db06e2d', 'no'),
(837, 'options_twitter', '#', 'no'),
(838, '_options_twitter', 'field_5d2d92f306e2e', 'no'),
(839, 'options_instagram', '#', 'no'),
(840, '_options_instagram', 'field_5d2d930b06e2f', 'no'),
(841, 'options_powered_by', '<span>Powered by</span> <a title=\"Công ty Thiết kế website chuyên nghiệp\" href=\"http://skyoss.net/\" target=\"_blank\">Công ty Thiết kế website chuyên nghiệp</a>', 'no'),
(842, '_options_powered_by', 'field_5d2d94fb54e9b', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1305, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:6:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.4\";s:7:\"version\";s:5:\"5.0.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1564453980;s:15:\"version_checked\";s:6:\"4.9.10\";s:12:\"translations\";a:0:{}}', 'no'),
(904, 'vtm_post_services', 'a:1:{i:0;a:2:{s:5:\"label\";s:18:\"TAYMODELS SERVICES\";s:5:\"value\";i:165;}}', 'yes'),
(958, 'vtm_post_academy', 'a:2:{i:0;a:2:{s:5:\"label\";s:32:\"Quach Anh &#8211; Make up artist\";s:5:\"value\";i:179;}i:1;a:2:{s:5:\"label\";s:44:\"Anna Nocon &#8211; Giảng viên quốc tế\";s:5:\"value\";i:164;}}', 'yes'),
(959, 'category_children', 'a:0:{}', 'yes'),
(960, 'object_children', 'a:3:{i:23;a:2:{i:0;i:25;i:1;i:29;}i:24;a:2:{i:0;i:26;i:1;i:30;}i:22;a:2:{i:0;i:27;i:1;i:28;}}', 'yes'),
(961, 'artists_cat_children', 'a:0:{}', 'yes'),
(962, 'services_cat_children', 'a:0:{}', 'yes'),
(966, 'vtm_post_post', 'a:4:{i:0;a:2:{s:5:\"label\";s:15:\"THE QUEEN  Copy\";s:5:\"value\";i:201;}i:1;a:2:{s:5:\"label\";s:15:\"THE QUEEN  Copy\";s:5:\"value\";i:200;}i:2;a:2:{s:5:\"label\";s:15:\"THE QUEEN  Copy\";s:5:\"value\";i:199;}i:3;a:2:{s:5:\"label\";s:9:\"THE QUEEN\";s:5:\"value\";i:184;}}', 'yes'),
(998, 'academy_cat_children', 'a:1:{i:38;a:3:{i:0;i:39;i:1;i:40;i:2;i:41;}}', 'yes'),
(1034, 'cfdb7_view_install_date', '2019-07-19 8:40:04', 'yes'),
(1061, 'archives_children', 'a:2:{i:57;a:2:{i:0;i:60;i:1;i:61;}i:62;a:2:{i:0;i:63;i:1;i:64;}}', 'yes'),
(1280, '_site_transient_timeout_theme_roots', '1564454834', 'no'),
(1281, '_site_transient_theme_roots', 'a:5:{s:6:\"models\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(1282, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1564453036;s:7:\"checked\";a:5:{s:6:\"models\";s:3:\"7.0\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:1:{s:13:\"twentyfifteen\";a:6:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.5.zip\";s:8:\"requires\";s:3:\"4.1\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(1283, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1564454185;s:7:\"checked\";a:17:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.6.10\";s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"6.74\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.5\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:7:\"1.2.4.6\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.6.2\";s:49:\"external-image-replace/external-image-replace.php\";s:5:\"1.0.8\";s:79:\"geodatasource-country-region-dropdown/geodatasource-country-region-dropdown.php\";s:5:\"1.0.1\";s:9:\"hello.php\";s:5:\"1.7.2\";s:35:\"litespeed-cache/litespeed-cache.php\";s:7:\"2.9.8.3\";s:38:\"post-duplicator/m4c-postduplicator.php\";s:4:\"2.20\";s:33:\"addthis/addthis_social_widget.php\";s:5:\"6.2.6\";s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";s:5:\"2.2.8\";s:25:\"addthis-all/bootstrap.php\";s:5:\"3.2.6\";s:41:\"wordpress-importer/wordpress-importer.php\";s:5:\"0.6.4\";s:27:\"js_composer/js_composer.php\";s:5:\"5.4.7\";}s:8:\"response\";a:6:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:3:\"7.3\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2097157\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2097157\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2097157\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2097157\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";s:6:\"5.2.17\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:35:\"litespeed-cache/litespeed-cache.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:29:\"w.org/plugins/litespeed-cache\";s:4:\"slug\";s:15:\"litespeed-cache\";s:6:\"plugin\";s:35:\"litespeed-cache/litespeed-cache.php\";s:11:\"new_version\";s:7:\"2.9.8.4\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/litespeed-cache/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/litespeed-cache.2.9.8.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-256x256.png?rev=1574145\";s:2:\"1x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-128x128.png?rev=1574145\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/litespeed-cache/assets/banner-1544x500.png?rev=2031698\";s:2:\"1x\";s:70:\"https://ps.w.org/litespeed-cache/assets/banner-772x250.png?rev=2031698\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:41:\"w.org/plugins/ultimate-social-media-icons\";s:4:\"slug\";s:27:\"ultimate-social-media-icons\";s:6:\"plugin\";s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";s:11:\"new_version\";s:5:\"2.2.9\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/ultimate-social-media-icons/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/ultimate-social-media-icons.2.2.9.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:80:\"https://ps.w.org/ultimate-social-media-icons/assets/icon-128x128.png?rev=1598977\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/ultimate-social-media-icons/assets/banner-772x250.png?rev=1032920\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:21:\"<p>Please upgrade</p>\";s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"js_composer/js_composer.php\";O:8:\"stdClass\":5:{s:4:\"slug\";s:11:\"js_composer\";s:11:\"new_version\";s:5:\"6.0.5\";s:3:\"url\";s:0:\"\";s:7:\"package\";b:0;s:4:\"name\";s:21:\"WPBakery Page Builder\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:11:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/contact-form-cfdb7\";s:4:\"slug\";s:18:\"contact-form-cfdb7\";s:6:\"plugin\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:11:\"new_version\";s:7:\"1.2.4.6\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/contact-form-cfdb7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-cfdb7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-256x256.png?rev=1619878\";s:2:\"1x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-128x128.png?rev=1619878\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/contact-form-cfdb7/assets/banner-772x250.png?rev=1619902\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:49:\"external-image-replace/external-image-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/external-image-replace\";s:4:\"slug\";s:22:\"external-image-replace\";s:6:\"plugin\";s:49:\"external-image-replace/external-image-replace.php\";s:11:\"new_version\";s:5:\"1.0.8\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/external-image-replace/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/external-image-replace.1.0.10.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:66:\"https://s.w.org/plugins/geopattern-icon/external-image-replace.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:79:\"geodatasource-country-region-dropdown/geodatasource-country-region-dropdown.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:51:\"w.org/plugins/geodatasource-country-region-dropdown\";s:4:\"slug\";s:37:\"geodatasource-country-region-dropdown\";s:6:\"plugin\";s:79:\"geodatasource-country-region-dropdown/geodatasource-country-region-dropdown.php\";s:11:\"new_version\";s:5:\"1.0.1\";s:3:\"url\";s:68:\"https://wordpress.org/plugins/geodatasource-country-region-dropdown/\";s:7:\"package\";s:86:\"https://downloads.wordpress.org/plugin/geodatasource-country-region-dropdown.1.0.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:90:\"https://ps.w.org/geodatasource-country-region-dropdown/assets/icon-128x128.png?rev=2121895\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:38:\"post-duplicator/m4c-postduplicator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/post-duplicator\";s:4:\"slug\";s:15:\"post-duplicator\";s:6:\"plugin\";s:38:\"post-duplicator/m4c-postduplicator.php\";s:11:\"new_version\";s:4:\"2.20\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/post-duplicator/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/post-duplicator.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/post-duplicator/assets/icon-128x128.png?rev=1587588\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/post-duplicator/assets/banner-1544x500.png?rev=1587588\";s:2:\"1x\";s:70:\"https://ps.w.org/post-duplicator/assets/banner-772x250.png?rev=1587588\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"addthis/addthis_social_widget.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/addthis\";s:4:\"slug\";s:7:\"addthis\";s:6:\"plugin\";s:33:\"addthis/addthis_social_widget.php\";s:11:\"new_version\";s:5:\"6.2.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/addthis/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/addthis.6.2.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/addthis/assets/icon-256x256.png?rev=1223867\";s:2:\"1x\";s:60:\"https://ps.w.org/addthis/assets/icon-128x128.png?rev=1223867\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/addthis/assets/banner-1544x500.png?rev=1499004\";s:2:\"1x\";s:62:\"https://ps.w.org/addthis/assets/banner-772x250.png?rev=1499004\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"addthis-all/bootstrap.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/addthis-all\";s:4:\"slug\";s:11:\"addthis-all\";s:6:\"plugin\";s:25:\"addthis-all/bootstrap.php\";s:11:\"new_version\";s:5:\"3.2.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/addthis-all/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/addthis-all.3.2.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/addthis-all/assets/icon-256x256.png?rev=1310277\";s:2:\"1x\";s:64:\"https://ps.w.org/addthis-all/assets/icon-128x128.png?rev=1310277\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/addthis-all/assets/banner-1544x500.png?rev=1499001\";s:2:\"1x\";s:66:\"https://ps.w.org/addthis-all/assets/banner-772x250.png?rev=1499001\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.6.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1284, '_site_transient_timeout_browser_b1877e5a46707c0c64e8871a155e5135', '1565057870', 'no'),
(1285, '_site_transient_browser_b1877e5a46707c0c64e8871a155e5135', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"75.0.3770.142\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1286, '_site_transient_timeout_php_check_a5907c2ea4d6fbd7e531b3aa7734f0e4', '1565057871', 'no'),
(1287, '_site_transient_php_check_a5907c2ea4d6fbd7e531b3aa7734f0e4', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:1;}', 'no'),
(1288, '_site_transient_timeout_community-events-bddbbefee2ec0dfd64a825a0d55071cc', '1564496275', 'no'),
(1289, '_site_transient_community-events-bddbbefee2ec0dfd64a825a0d55071cc', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:11:\"14.230.65.0\";}s:6:\"events\";a:0:{}}', 'no'),
(1300, 'active_plugins', 'a:10:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";i:4;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:5;s:49:\"external-image-replace/external-image-replace.php\";i:6;s:79:\"geodatasource-country-region-dropdown/geodatasource-country-region-dropdown.php\";i:7;s:9:\"hello.php\";i:8;s:27:\"js_composer/js_composer.php\";i:9;s:41:\"wordpress-importer/wordpress-importer.php\";}', 'yes'),
(1301, 'ai1wm_secret_key', 'dckQxUMyglvM', 'yes'),
(1302, 'template', 'models', 'yes'),
(1303, 'stylesheet', 'models', 'yes'),
(1304, 'ai1wm_status', 'a:3:{s:4:\"type\";s:4:\"done\";s:5:\"title\";s:41:\"Your data has been imported successfully!\";s:7:\"message\";s:524:\"You need to perform two more steps:<br /><strong>1. You must save your permalinks structure twice. <a class=\"ai1wm-no-underline\" href=\"http://localhost/wp/models/wp-admin/options-permalink.php#submit\" target=\"_blank\">Permalinks Settings</a></strong> <small>(opens a new window)</small><br /><strong>2. <a class=\"ai1wm-no-underline\" href=\"https://wordpress.org/support/view/plugin-reviews/all-in-one-wp-migration?rate=5#postform\" target=\"_blank\">Optionally, review the plugin</a>.</strong> <small>(opens a new window)</small>\";}', 'yes'),
(1306, 'can_compress_scripts', '1', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(3, 5, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(4, 5, '_edit_last', '1'),
(5, 5, '_edit_lock', '1563807103:1'),
(6, 5, '_wpb_vc_js_status', 'true'),
(12, 11, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(13, 11, '_edit_last', '1'),
(14, 11, '_edit_lock', '1562938949:1'),
(20, 15, '_wp_attached_file', '2019/07/a.jpg'),
(21, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:340;s:6:\"height\";i:453;s:4:\"file\";s:13:\"2019/07/a.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"a-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"a-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(22, 16, '_wp_attached_file', '2019/07/a-1.jpg'),
(23, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:340;s:6:\"height\";i:453;s:4:\"file\";s:15:\"2019/07/a-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"a-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"a-1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(24, 17, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(25, 17, '_edit_last', '1'),
(26, 17, '_edit_lock', '1563175157:1'),
(27, 17, '_thumbnail_id', '15'),
(28, 17, 'images', 'a:2:{i:0;s:2:\"16\";i:1;s:2:\"15\";}'),
(29, 17, '_images', 'field_5d28956c735a8'),
(30, 18, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(31, 18, '_menu_item_type', 'post_type'),
(32, 18, '_menu_item_menu_item_parent', '0'),
(33, 18, '_menu_item_object_id', '5'),
(34, 18, '_menu_item_object', 'page'),
(35, 18, '_menu_item_target', ''),
(36, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 18, '_menu_item_xfn', ''),
(38, 18, '_menu_item_url', ''),
(39, 18, '_menu_item_orphaned', '1562940181'),
(40, 19, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(41, 19, '_menu_item_type', 'post_type'),
(42, 19, '_menu_item_menu_item_parent', '0'),
(43, 19, '_menu_item_object_id', '5'),
(44, 19, '_menu_item_object', 'page'),
(45, 19, '_menu_item_target', ''),
(46, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 19, '_menu_item_xfn', ''),
(48, 19, '_menu_item_url', ''),
(49, 19, '_menu_item_orphaned', '1562940181'),
(50, 20, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(51, 20, '_menu_item_type', 'post_type'),
(52, 20, '_menu_item_menu_item_parent', '0'),
(53, 20, '_menu_item_object_id', '2'),
(54, 20, '_menu_item_object', 'page'),
(55, 20, '_menu_item_target', ''),
(56, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(57, 20, '_menu_item_xfn', ''),
(58, 20, '_menu_item_url', ''),
(59, 20, '_menu_item_orphaned', '1562940181'),
(60, 21, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(61, 21, '_edit_last', '1'),
(62, 22, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(63, 21, '_edit_lock', '1562944564:1'),
(64, 23, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(65, 23, '_edit_last', '1'),
(66, 23, '_edit_lock', '1562941428:1'),
(67, 24, '_wp_attached_file', '2019/07/1446787894_le_thuy_5.jpg'),
(68, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:340;s:6:\"height\";i:453;s:4:\"file\";s:32:\"2019/07/1446787894_le_thuy_5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"1446787894_le_thuy_5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"1446787894_le_thuy_5-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(69, 23, '_thumbnail_id', '24'),
(70, 23, 'bộ_suu_tập', 'a:2:{i:0;s:2:\"24\";i:1;s:2:\"16\";}'),
(71, 23, '_bộ_suu_tập', 'field_5d28956c735a8'),
(72, 25, '_wp_attached_file', '2019/07/Photo-icon.png'),
(73, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:22:\"2019/07/Photo-icon.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Photo-icon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Photo-icon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"Photo-icon-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(76, 27, '_wp_attached_file', '2019/07/image.png'),
(77, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:17:\"2019/07/image.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"image-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(78, 28, '_wp_attached_file', '2019/07/icon-image.png'),
(79, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:22:\"2019/07/icon-image.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"icon-image-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"icon-image-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"icon-image-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(80, 29, '_wp_attached_file', '2019/07/icon-models.png'),
(81, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:23:\"2019/07/icon-models.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"icon-models-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"icon-models-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(82, 30, '_wp_attached_file', '2019/07/icon-m.jpg'),
(83, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:1300;s:4:\"file\";s:18:\"2019/07/icon-m.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"icon-m-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"icon-m-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"icon-m-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"icon-m-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:52:\"Vector woman and man models dressed in classic pants\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:20:\"Vector woman and man\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:50:{i:0;s:11:\"accessories\";i:1;s:3:\"bag\";i:2;s:4:\"body\";i:3;s:8:\"clothing\";i:4;s:7:\"costume\";i:5;s:7:\"couture\";i:6;s:6:\"design\";i:7;s:8:\"designer\";i:8;s:7:\"display\";i:9;s:7:\"drawing\";i:10;s:10:\"dressmaker\";i:11;s:5:\"dummy\";i:12;s:7:\"fashion\";i:13;s:7:\"garment\";i:14;s:4:\"girl\";i:15;s:7:\"glasses\";i:16;s:5:\"groom\";i:17;s:8:\"handsome\";i:18;s:5:\"human\";i:19;s:12:\"illustration\";i:20;s:8:\"isolated\";i:21;s:4:\"male\";i:22;s:3:\"man\";i:23;s:7:\"manikin\";i:24;s:9:\"mannequin\";i:25;s:5:\"model\";i:26;s:7:\"necktie\";i:27;s:6:\"office\";i:28;s:6:\"outfit\";i:29;s:5:\"phone\";i:30;s:4:\"sale\";i:31;s:5:\"salon\";i:32;s:4:\"sexy\";i:33;s:4:\"shop\";i:34;s:4:\"show\";i:35;s:6:\"sketch\";i:36;s:5:\"store\";i:37;s:5:\"style\";i:38;s:7:\"stylish\";i:39;s:4:\"suit\";i:40;s:6:\"tailor\";i:41;s:8:\"tailored\";i:42;s:8:\"template\";i:43;s:3:\"tie\";i:44;s:6:\"vector\";i:45;s:5:\"vogue\";i:46;s:4:\"wear\";i:47;s:5:\"white\";i:48;s:5:\"woman\";i:49;s:5:\"young\";}}}'),
(84, 31, '_wp_attached_file', '2019/07/icon-model.jpg'),
(85, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:541;s:6:\"height\";i:589;s:4:\"file\";s:22:\"2019/07/icon-model.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"icon-model-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"icon-model-276x300.jpg\";s:5:\"width\";i:276;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 32, '_wp_attached_file', '2019/07/ngesi.png'),
(87, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2019/07/ngesi.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"ngesi-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"ngesi-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"ngesi-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(88, 33, '_wp_attached_file', '2019/07/service.jpg'),
(89, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:900;s:4:\"file\";s:19:\"2019/07/service.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"service-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"service-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"service-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 34, '_wp_attached_file', '2019/07/school-building.png'),
(91, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:420;s:6:\"height\";i:420;s:4:\"file\";s:27:\"2019/07/school-building.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"school-building-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"school-building-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 36, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(100, 36, '_edit_last', '1'),
(101, 36, '_edit_lock', '1563525440:1'),
(102, 36, '_wpb_vc_js_status', 'true'),
(103, 38, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(104, 38, '_edit_last', '1'),
(105, 38, '_wpb_vc_js_status', 'false'),
(106, 38, '_edit_lock', '1562945620:1'),
(107, 40, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(108, 40, '_edit_last', '1'),
(109, 40, '_edit_lock', '1563545285:1'),
(110, 40, '_wpb_vc_js_status', 'true'),
(118, 43, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(119, 43, '_form', '<div class=\"frmContact contact-form clearfix\" id=\"frmContact\" name=\"frmContact\" method=\"post\" action=\"\" novalidate=\"novalidate\">\n	<p>\n		<label for=\"name\" class=\"required\">Name&nbsp;<font color=\"red\">*</font>&nbsp;</label>[text* your-name id:name class:input]\n	</p>\n	<p>\n		<label for=\"email\" class=\"required\">Email&nbsp;<font color=\"red\">*</font>&nbsp;</label>[email* your-email id:email class:input]\n	</p>\n	<p>\n		<label for=\"phone\" class=\"required\">Phone&nbsp;<font color=\"red\">*</font>&nbsp;</label>[tel* your-phone id:phone class:input]\n	</p>\n	<p>\n		<label for=\"company\">Company</label>[text your-company id:company_ class:input]\n	</p>\n	<p>\n		<label for=\"address\">Address</label>[text your-address id:address class:input]\n	</p>\n	<p>\n		<label for=\"subject\">Subject</label>[text your-subject id:subject class:input]\n	</p>\n	<p>\n		<label for=\"message\" class=\"required\">Message&nbsp;<font color=\"red\">*</font>&nbsp;</label>[textarea* your-message id:message class:input]\n	</p>\n	<p style=\"width: 160px; float:left\">\n		<label for=\"address\" class=\"required\">Recapcha &nbsp;<font color=\"red\">*</font>&nbsp;</label><span class=\"recapcha\">[recaptcha]</span>\n	</p>\n	<p style=\"width: 100%; padding: 15px 0; margin-bottom: 60px; float:left\">\n                [submit class:button value\'Send\']		\n	</p>\n</div>'),
(120, 43, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:23:\"Models \"[your-subject]\"\";s:6:\"sender\";s:33:\"[your-name] <wordpress@localhost>\";s:9:\"recipient\";s:21:\"thoweb.demo@gmail.com\";s:4:\"body\";s:171:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Models (http://localhost/wp/models)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(121, 43, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:23:\"Models \"[your-subject]\"\";s:6:\"sender\";s:28:\"Models <wordpress@localhost>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:113:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Models (http://localhost/wp/models)\";s:18:\"additional_headers\";s:31:\"Reply-To: thoweb.demo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(122, 43, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(123, 43, '_additional_settings', ''),
(124, 43, '_locale', 'en_US'),
(125, 40, '_wpb_shortcodes_custom_css', '.vc_custom_1563073767866{margin-top: 60px !important;}'),
(126, 51, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(127, 51, '_form', '<div class=\"frmContact contact-form\" id=\"frmContact\" name=\"frmContact\" method=\"post\" action=\"\" novalidate=\"novalidate\">\n	<p>\n		<label for=\"email\" class=\"required\">Email&nbsp;<font color=\"red\">*</font>&nbsp;</label>[email* your-email id:email class:input]\n	</p>\n	<p>\n		<label for=\"name\" class=\"required\">Name&nbsp;<font color=\"red\">*</font>&nbsp;</label>[text* your-name id:name class:input]\n	</p>\n	<p style=\"width: 160px; float:left\">\n		<label for=\"address\" class=\"required\">Recapcha &nbsp;<font color=\"red\">*</font>&nbsp;</label><span class=\"recapcha\">[recaptcha]</span>\n	</p>\n	<p style=\"width: 100%; padding: 15px 0; margin-bottom: 60px;\">\n                [submit class:button value\'Send\']		\n	</p>\n</div>'),
(128, 51, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:23:\"Models \"[your-subject]\"\";s:6:\"sender\";s:33:\"[your-name] <wordpress@localhost>\";s:9:\"recipient\";s:21:\"thoweb.demo@gmail.com\";s:4:\"body\";s:171:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Models (http://localhost/wp/models)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(129, 51, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:23:\"Models \"[your-subject]\"\";s:6:\"sender\";s:28:\"Models <wordpress@localhost>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:113:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Models (http://localhost/wp/models)\";s:18:\"additional_headers\";s:31:\"Reply-To: thoweb.demo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(130, 51, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(131, 51, '_additional_settings', ''),
(132, 51, '_locale', 'en_US'),
(133, 52, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(134, 52, '_edit_last', '1'),
(135, 52, '_edit_lock', '1563525482:1'),
(136, 52, '_wpb_vc_js_status', 'true'),
(137, 52, '_wpb_shortcodes_custom_css', '.vc_custom_1563117041461{margin-top: 60px !important;}'),
(138, 56, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(139, 56, '_edit_last', '1'),
(140, 56, '_edit_lock', '1563504375:1'),
(141, 56, '_wpb_vc_js_status', 'true'),
(142, 56, '_wpb_shortcodes_custom_css', '.vc_custom_1563117575655{margin-top: 60px !important;margin-bottom: 60px !important;}'),
(143, 58, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(144, 58, '_form', '<div class=\"frmContact contact-form\" id=\"frmContact\" name=\"frmContact\" method=\"post\" action=\"\" novalidate=\"novalidate\">\n	<p>\n		<label for=\"name\" class=\"required\">Full name/Họ tên&nbsp;<font color=\"red\">*</font>&nbsp;</label>[text* your-name id:name class:input]\n	</p>\n        <p>\n		<label for=\"name\" class=\"required\">D.O.P/Ngày sinh&nbsp;<font color=\"red\">*</font>&nbsp;</label>[date* your-date id:date class:input]\n	</p>\n        <p>\n		<label for=\"phone\" class=\"required\">Phone number/Số điện thoại&nbsp;<font color=\"red\">*</font>&nbsp;</label>[tel* your-phone id:phone class:input]\n	</p>\n        <p>\n		<label for=\"address\">Address/Địa chỉ</label>[text your-address id:address class:input]\n	</p>\n	<p>\n		<label for=\"email\" class=\"required\">Email&nbsp;<font color=\"red\">*</font>&nbsp;</label>[email* your-email id:email class:input]\n	</p>\n	\n	<p>\n		<label for=\"occupation\">Occupation/Nghề nghiệp</label>[text your-occupation id:company_ class:input]\n	</p>\n	<p>\n		<label for=\"message\" class=\"required\">Course/Khóa học&nbsp;<font color=\"red\">*</font>&nbsp;</label>[select* menu-course id:course class:input \"-Please select the course of your choice/Lựa chọn khóa học-\" \"K - MODELS\" \"B - MODELS\" \"I - MODELS\"]\n	</p>\n	<p style=\"width: 160px; float:left\">\n		<label for=\"address\" class=\"required\">Recapcha &nbsp;<font color=\"red\">*</font>&nbsp;</label><span class=\"recapcha\">[recaptcha]</span>\n	</p>\n	<p style=\"width: 100%; padding: 15px 0; margin-bottom: 60px;\">\n                [submit class:button value\'Send\']		\n	</p>\n</div>'),
(145, 58, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:23:\"Models \"[your-subject]\"\";s:6:\"sender\";s:33:\"[your-name] <wordpress@localhost>\";s:9:\"recipient\";s:21:\"thoweb.demo@gmail.com\";s:4:\"body\";s:171:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Models (http://localhost/wp/models)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(146, 58, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:23:\"Models \"[your-subject]\"\";s:6:\"sender\";s:28:\"Models <wordpress@localhost>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:113:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Models (http://localhost/wp/models)\";s:18:\"additional_headers\";s:31:\"Reply-To: thoweb.demo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(147, 58, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(148, 58, '_additional_settings', ''),
(149, 58, '_locale', 'en_US'),
(152, 11, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(153, 11, '_edit_last', '1'),
(154, 17, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(155, 17, '_edit_last', '1'),
(156, 17, '_thumbnail_id', '15'),
(157, 17, 'images', 'a:2:{i:0;s:2:\"16\";i:1;s:2:\"15\";}'),
(158, 17, '_images', 'field_5d28956c735a8'),
(175, 23, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(176, 23, '_edit_last', '1'),
(177, 23, '_thumbnail_id', '24'),
(178, 23, 'bộ_suu_tập', 'a:2:{i:0;s:2:\"24\";i:1;s:2:\"16\";}'),
(179, 23, '_bộ_suu_tập', 'field_5d28956c735a8'),
(180, 63, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(181, 63, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(182, 63, '_edit_last', '1'),
(184, 63, 'images', 'a:4:{i:0;s:2:\"24\";i:1;s:2:\"66\";i:2;s:2:\"68\";i:3;s:2:\"16\";}'),
(185, 63, '_images', 'field_5d28956c735a8'),
(188, 65, '_wp_attached_file', '2019/07/1379089105_officialwithborder.jpg'),
(189, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:518;s:4:\"file\";s:41:\"2019/07/1379089105_officialwithborder.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"1379089105_officialwithborder-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"1379089105_officialwithborder-300x130.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"1379089105_officialwithborder-768x332.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:332;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"1379089105_officialwithborder-1024x442.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:442;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(190, 66, '_wp_attached_file', '2019/07/1543475906_1449134956_1.jpg'),
(191, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:340;s:6:\"height\";i:453;s:4:\"file\";s:35:\"2019/07/1543475906_1449134956_1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"1543475906_1449134956_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"1543475906_1449134956_1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(192, 68, '_wp_attached_file', '2019/07/1543475899_1420865346_w1.jpg'),
(193, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:340;s:6:\"height\";i:453;s:4:\"file\";s:36:\"2019/07/1543475899_1420865346_w1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"1543475899_1420865346_w1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"1543475899_1420865346_w1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(200, 70, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(201, 70, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(202, 70, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(203, 70, '_edit_last', '1'),
(204, 70, '_edit_last', '1'),
(205, 70, '_edit_lock', '1563175157:1'),
(206, 70, '_thumbnail_id', '15'),
(207, 70, '_thumbnail_id', '15'),
(208, 70, 'images', 'a:2:{i:0;s:2:\"16\";i:1;s:2:\"15\";}'),
(209, 70, 'images', 'a:2:{i:0;s:2:\"16\";i:1;s:2:\"15\";}'),
(210, 70, '_images', 'field_5d28956c735a8'),
(211, 70, '_images', 'field_5d28956c735a8'),
(212, 71, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(213, 71, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(214, 71, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(215, 71, '_edit_last', '1'),
(216, 71, '_edit_last', '1'),
(217, 71, '_edit_lock', '1563175157:1'),
(218, 71, '_thumbnail_id', '15'),
(219, 71, '_thumbnail_id', '15'),
(220, 71, 'images', 'a:2:{i:0;s:2:\"16\";i:1;s:2:\"15\";}'),
(221, 71, 'images', 'a:2:{i:0;s:2:\"16\";i:1;s:2:\"15\";}'),
(222, 71, '_images', 'field_5d28956c735a8'),
(223, 71, '_images', 'field_5d28956c735a8'),
(224, 72, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(225, 72, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(226, 72, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(227, 72, '_edit_last', '1'),
(228, 72, '_edit_last', '1'),
(229, 72, '_edit_lock', '1563175157:1'),
(230, 72, '_thumbnail_id', '15'),
(231, 72, '_thumbnail_id', '15'),
(232, 72, 'images', 'a:2:{i:0;s:2:\"16\";i:1;s:2:\"15\";}'),
(233, 72, 'images', 'a:2:{i:0;s:2:\"16\";i:1;s:2:\"15\";}'),
(234, 72, '_images', 'field_5d28956c735a8'),
(235, 72, '_images', 'field_5d28956c735a8'),
(236, 73, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(237, 73, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(238, 73, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(239, 73, '_edit_last', '1'),
(240, 73, '_edit_last', '1'),
(241, 73, '_edit_lock', '1563175157:1'),
(242, 73, '_thumbnail_id', '15'),
(243, 73, '_thumbnail_id', '15'),
(244, 73, 'images', 'a:2:{i:0;s:2:\"16\";i:1;s:2:\"15\";}'),
(245, 73, 'images', 'a:2:{i:0;s:2:\"16\";i:1;s:2:\"15\";}'),
(246, 73, '_images', 'field_5d28956c735a8'),
(247, 73, '_images', 'field_5d28956c735a8'),
(248, 74, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(249, 74, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(250, 74, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(251, 74, '_edit_last', '1'),
(252, 74, '_edit_last', '1'),
(253, 74, '_edit_lock', '1563175157:1'),
(254, 74, '_thumbnail_id', '15'),
(255, 74, '_thumbnail_id', '15'),
(256, 74, 'images', 'a:2:{i:0;s:2:\"16\";i:1;s:2:\"15\";}'),
(257, 74, 'images', 'a:2:{i:0;s:2:\"16\";i:1;s:2:\"15\";}'),
(258, 74, '_images', 'field_5d28956c735a8'),
(259, 74, '_images', 'field_5d28956c735a8'),
(260, 75, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(261, 75, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(262, 75, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(263, 75, '_edit_last', '1'),
(264, 75, '_edit_last', '1'),
(265, 75, '_edit_lock', '1563175157:1'),
(266, 75, '_thumbnail_id', '15'),
(267, 75, '_thumbnail_id', '15'),
(268, 75, 'images', 'a:2:{i:0;s:2:\"16\";i:1;s:2:\"15\";}'),
(269, 75, 'images', 'a:2:{i:0;s:2:\"16\";i:1;s:2:\"15\";}'),
(270, 75, '_images', 'field_5d28956c735a8'),
(271, 75, '_images', 'field_5d28956c735a8'),
(272, 76, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(273, 76, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(274, 76, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(275, 76, '_edit_last', '1'),
(276, 76, '_edit_last', '1'),
(277, 76, '_edit_lock', '1563808568:1'),
(278, 76, '_thumbnail_id', '15'),
(279, 76, '_thumbnail_id', '15'),
(280, 76, 'images', 'a:4:{i:0;s:2:\"16\";i:1;s:2:\"68\";i:2;s:2:\"66\";i:3;s:2:\"24\";}'),
(281, 76, 'images', 'a:4:{i:0;s:2:\"16\";i:1;s:2:\"68\";i:2;s:2:\"66\";i:3;s:2:\"24\";}'),
(282, 76, '_images', 'field_5d28956c735a8'),
(283, 76, '_images', 'field_5d28956c735a8'),
(284, 77, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(285, 77, '_edit_last', '1'),
(286, 77, '_edit_lock', '1563470518:1'),
(287, 77, '_wpb_vc_js_status', 'true'),
(288, 79, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(289, 79, '_form', '<div class=\"frmRegister contact-form\" id=\"frmRegister\" name=\"frmRegister\" method=\"post\" action=\"\" enctype=\"multipart/form-data\" novalidate=\"novalidate\">\n		<div class=\"step1\">\n			<h2>Step 1</h2>\n			<p>\n				<label for=\"email\" class=\"required\">Email&nbsp;<font color=\"red\">*</font>&nbsp;</label>\n				[email* your-email id:email class:input]\n			</p>\n			<p>\n				<label for=\"firstname\" class=\"required\">First name&nbsp;<font color=\"red\">*</font>&nbsp;</label>\n                                [text* your-firstname id:firstname class:input]\n			</p>\n			<p>\n				<label for=\"lastname\" class=\"required\">Last name&nbsp;<font color=\"red\">*</font>&nbsp;</label>\n                                [text* your-lastname id:lastname class:input]\n			</p>\n			<p>\n				<label for=\"address\" class=\"required\">Address&nbsp;<font color=\"red\">*</font>&nbsp;</label>\n                                [text* your-address id:address class:input]\n			</p>\n			<p>\n				<label for=\"phone\" class=\"required\">Phone&nbsp;<font color=\"red\">*</font>&nbsp;</label>\n                                [text* your-phone id:phone class:input]\n			</p>\n			<p>\n				<label for=\"mobile\">Mobile</label>\n                                [tel your-mobile id:mobile class:input]\n			</p>\n			<p>\n				<label for=\"country\" class=\"required\">Country&nbsp;<font color=\"red\">*</font>&nbsp;</label>\n				[select* menu-179 id:country class:input \"Việt Nam\" \"Afghanistan\" \"Albania\" \"Algeria\" \"American Samoa\" \"Andorra\" \"Angola\" \"Anguilla\" \"Antarctica\" \"Antigua and Barbuda\" \"Argentina\" \"Armenia\" \"Aruba\" \"Australia\" \"Austria\" \"Azerbaijan\" \"Bahamas\" \"Bahrain\" \"Bangladesh\" \"Barbados\" \"Belarus\" \"Belgium\" \"Belize\" \"Benin\" \"Bermuda\" \"Bhutan\" \"Bolivia\" \"Bosnia and Herzegovina\" \"Botswana\" \"Bouvet Island\" \"Brazil\" \"British Indian Ocean Territory\" \"British Virgin Islands\" \"Brunei\" \"Bulgaria\" \"Burkina Faso\" \"Burundi\" \"Cambodia\" \"Cameroon\" \"Canada\" \"Cape Verde\" \"Cayman Islands\" \"Central African Republic\" \"Chad\" \"Chile\" \"China\" \"Christmas Island\" \"Cocos Islands\" \"Colombia\" \"Comoros\" \"Congo\" \"Cook Islands\" \"Costa Rica\" \"Croatia\" \"Cuba\" \"Cyprus\" \"Czech Republic\" \"Denmark\" \"Djibouti\" \"Dominica\" \"Dominican Republic\" \"East Timor\" \"Ecuador\" \"Egypt\" \"El Salvador\" \"Equatorial Guinea\" \"Eritrea\" \"Estonia\" \"Ethiopia\" \"Falkland Islands\" \"Faroe Islands\" \"Fiji\" \"Finland\" \"France\" \"French Guiana\" \"French Polynesia\" \"French Southern Territories\" \"Gabon\" \"Gambia\" \"Georgia\" \"Germany\" \"Ghana\" \"Gibraltar\" \"Greece\" \"Greenland\" \"Grenada\" \"Guadeloupe\" \"Guam\" \"Guatemala\" \"Guinea\" \"Guinea-Bissau\" \"Guyana\" \"Haiti\" \"Heard and McDonald Islands\" \"Honduras\" \"Hong Kong\" \"Hungary\" \"Iceland\" \"India\" \"Indonesia\" \"Iran\" \"Iraq\" \"Ireland\" \"Israel\" \"Italy\" \"Ivory Coast\" \"Jamaica\" \"Japan\" \"Jordan\" \"Kazakhstan\" \"Kenya\" \"Kiribati\" \"Korea, North\" \"Korea, South\" \"Kuwait\" \"Kyrgyzstan\" \"Laos\" \"Latvia\" \"Lebanon\" \"Lesotho\" \"Liberia\" \"Libya\" \"Liechtenstein\" \"Lithuania\" \"Luxembourg\" \"Macau\" \"Macedonia, Former Yugoslav Republic of\" \"Madagascar\" \"Malawi\" \"Malaysia\" \"Maldives\" \"Mali\" \"Malta\" \"Marshall Islands\" \"Martinique\" \"Mauritania\" \"Mauritius\" \"Mayotte\" \"Mexico\" \"Micronesia, Federated States of\" \"Moldova\" \"Monaco\" \"Mongolia\" \"Montserrat\" \"Morocco\" \"Mozambique\" \"Myanmar\" \"Namibia\" \"Nauru\" \"Nepal\" \"Netherlands\" \"Netherlands Antilles\" \"New Caledonia\" \"New Zealand\" \"Nicaragua\" \"Niger\" \"Nigeria\" \"Niue\" \"Norfolk Island\" \"Northern Mariana Islands\" \"Norway\" \"Oman\" \"Pakistan\" \"Palau\" \"Panama\" \"Papua New Guinea\" \"Paraguay\" \"Peru\" \"Philippines\" \"Pitcairn Island\" \"Poland\" \"Portugal\" \"Puerto Rico\" \"Qatar\" \"Reunion\" \"Romania\" \"Russia\" \"Rwanda\" \"S. Georgia and S. Sandwich Isls.\" \"Saint Kitts & Nevis\" \"Saint Lucia\" \"Saint Vincent and The Grenadines\" \"Samoa\" \"San Marino\" \"Sao Tome and Principe\" \"Saudi Arabia\" \"Senegal\" \"Seychelles\" \"Sierra Leone\" \"Singapore\" \"Slovakia\" \"Slovenia\" \"Somalia\" \"South Africa\" \"Spain\" \"Sri Lanka\" \"St. Helena\" \"St. Pierre and Miquelon\" \"Sudan\" \"Suriname\" \"Svalbard and Jan Mayen Islands\" \"Swaziland\" \"Sweden\" \"Switzerland\" \"Syria\" \"Taiwan\" \"Tajikistan\" \"Tanzania\" \"Thailand\" \"Togo\" \"Tokelau\" \"Tonga\" \"Trinidad and Tobago\" \"Tunisia\" \"Turkey\" \"Turkmenistan\" \"Turks and Caicos Islands\" \"Tuvalu\" \"U.S. Minor Outlying Islands\" \"Uganda\" \"Ukraine\" \"United Arab Emirates\" \"United Kingdom\" \"United States of America\" \"Uruguay\" \"Uzbekistan\" \"Vanuatu\" \"Vatican City\" \"Venezuela\" \"Virgin Islands\" \"Wallis and Futuna Islands\" \"Western Sahara\" \"Yemen\" \"Yugoslavia (Former)\" \"Zaire\" \"Zambia\" \"Zimbabwe\"]\n			</p>\n		</div>\n		<div class=\"step2\">\n			<h2>Step 2</h2>\n			<p>\n				<label for=\"info\">Info</label>\n                                [textarea* your-message id:info class:input]\n			</p>\n			<p>\n				<label for=\"height\" class=\"required\">Height&nbsp;<font color=\"red\">*</font>&nbsp;</label>\n                                [select* menu-height id:height class:input \"--\" \"160cm\" \"161cm\" \"162cm\" \"163cm\" \"164cm\" \"165cm\" \"166cm\" \"167cm\" \"168cm\" \"169cm\" \"170cm\" \"171cm\"]\n			</p>\n			<p>\n				<label for=\"weight\" class=\"required\">Weight&nbsp;<font color=\"red\">*</font>&nbsp;</label>\n                                [select* menu-weight id:weight class:input \"--\" \"40 kg\" \"50 kg\" \"60 kg\"]\n			</p>\n			<p>\n				<label for=\"dress\">Dress</label>\n                                [select* menu-dress id:dress class:input \"--\" \"0\" \"2\" \"4\"]\n			</p>\n			<p>\n				<label for=\"chest\" class=\"required\">Chest&nbsp;<font color=\"red\">*</font>&nbsp;</label>\n                                [select* menu-chest id:chest class:input \"--\" \"70 cm\" \"72 cm\"]\n			</p>\n			<p>\n				<label for=\"hips\" class=\"required\">Hips&nbsp;<font color=\"red\">*</font>&nbsp;</label>\n                                [select* menu-hips id:hips class:input \"--\" \"76 cm\" \"77 cm\"]        \n			</p>\n			<p>\n				<label for=\"waist\" class=\"required\">Waist&nbsp;<font color=\"red\">*</font>&nbsp;</label>\n                                [select* menu-waist id:waist class:input \"--\" \"50 cm\" \"51 cm\"]\n			</p>\n			<p>\n				<label for=\"shoe\" class=\"required\">Shoe&nbsp;<font color=\"red\">*</font>&nbsp;</label>\n                                [select* menu-shoe id:shoe class:input \"--\" \"34 cm\" \"35 cm\"]\n			</p>\n			<p>\n				<label for=\"eyecolor\" class=\"required\">Eye color&nbsp;<font color=\"red\">*</font>&nbsp;</label>\n                                [select* menu-eyecolor id:eyecolor class:input \"--\" \"Blue\" \"Black\"]\n			</p>\n			<p>\n				<label for=\"haircolor\" class=\"required\">Hair color&nbsp;<font color=\"red\">*</font>&nbsp;</label>\n                                [select* menu-haircolor id:haircolor class:input \"--\" \"Auburn\" \"Blonde\"]\n			</p>\n						\n		</div>\n		<div class=\"step3\">\n			<h2>Step 3</h2>\n			<p>\n				<label>Photo</label>\n				</p><div style=\"\">\n                                        <p>[file file-1 id:file-1 class:input]</p>\n                                        <div id=\"photo_browse_1\"></div>\n                                        <p>[file file-2 id:file-2 class:input]</p>\n                                        <div id=\"photo_browse_2\"></div>\n                                        <p>[file file-3 id:file-3 class:input]</p>\n                                        <div id=\"photo_browse_3\"></div>\n					<p>[file file-4 id:file-4 class:input]</p>\n                                        <div id=\"photo_browse_4\"></div>\n				</div>\n				<div class=\"clb\"></div>\n		</div>\n		<p style=\"width: 160px; float:left\">\n		<label for=\"address\" class=\"required\">Recapcha &nbsp;<font color=\"red\">*</font>&nbsp;</label><span class=\"recapcha\">[recaptcha]</span>\n	</p>\n	<p style=\"width: 100%; padding: 15px 0; margin-bottom: 60px; float:left\">\n                [submit class:button value\'Send\']		\n	</p>\n	</div>'),
(290, 79, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:23:\"Models \"[your-subject]\"\";s:6:\"sender\";s:33:\"[your-name] <wordpress@localhost>\";s:9:\"recipient\";s:21:\"thoweb.demo@gmail.com\";s:4:\"body\";s:171:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Models (http://localhost/wp/models)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(291, 79, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:23:\"Models \"[your-subject]\"\";s:6:\"sender\";s:28:\"Models <wordpress@localhost>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:113:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Models (http://localhost/wp/models)\";s:18:\"additional_headers\";s:31:\"Reply-To: thoweb.demo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(292, 79, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(293, 79, '_additional_settings', ''),
(294, 79, '_locale', 'en_US'),
(297, 77, '_wpb_shortcodes_custom_css', '.vc_custom_1563203978251{margin-top: 60px !important;margin-bottom: 60px !important;}'),
(299, 63, '_edit_lock', '1563261266:1'),
(304, 85, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(305, 85, '_menu_item_type', 'post_type'),
(306, 85, '_menu_item_menu_item_parent', '0'),
(307, 85, '_menu_item_object_id', '5'),
(308, 85, '_menu_item_object', 'page'),
(309, 85, '_menu_item_target', ''),
(310, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(311, 85, '_menu_item_xfn', ''),
(312, 85, '_menu_item_url', ''),
(313, 85, '_menu_item_orphaned', '1563262772'),
(314, 86, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(315, 86, '_menu_item_type', 'post_type'),
(316, 86, '_menu_item_menu_item_parent', '0'),
(317, 86, '_menu_item_object_id', '36'),
(318, 86, '_menu_item_object', 'page'),
(319, 86, '_menu_item_target', ''),
(320, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(321, 86, '_menu_item_xfn', ''),
(322, 86, '_menu_item_url', ''),
(323, 86, '_menu_item_orphaned', '1563262772'),
(324, 87, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(325, 87, '_menu_item_type', 'post_type'),
(326, 87, '_menu_item_menu_item_parent', '0'),
(327, 87, '_menu_item_object_id', '77'),
(328, 87, '_menu_item_object', 'page'),
(329, 87, '_menu_item_target', ''),
(330, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(331, 87, '_menu_item_xfn', ''),
(332, 87, '_menu_item_url', ''),
(333, 87, '_menu_item_orphaned', '1563262772'),
(344, 89, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(345, 89, '_menu_item_type', 'post_type'),
(346, 89, '_menu_item_menu_item_parent', '0'),
(347, 89, '_menu_item_object_id', '40'),
(348, 89, '_menu_item_object', 'page'),
(349, 89, '_menu_item_target', ''),
(350, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(351, 89, '_menu_item_xfn', ''),
(352, 89, '_menu_item_url', ''),
(353, 89, '_menu_item_orphaned', '1563262773'),
(354, 90, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(355, 90, '_menu_item_type', 'post_type'),
(356, 90, '_menu_item_menu_item_parent', '0'),
(357, 90, '_menu_item_object_id', '5'),
(358, 90, '_menu_item_object', 'page'),
(359, 90, '_menu_item_target', ''),
(360, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(361, 90, '_menu_item_xfn', ''),
(362, 90, '_menu_item_url', ''),
(363, 90, '_menu_item_orphaned', '1563262773'),
(364, 91, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(365, 91, '_menu_item_type', 'post_type'),
(366, 91, '_menu_item_menu_item_parent', '0'),
(367, 91, '_menu_item_object_id', '56');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(368, 91, '_menu_item_object', 'page'),
(369, 91, '_menu_item_target', ''),
(370, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(371, 91, '_menu_item_xfn', ''),
(372, 91, '_menu_item_url', ''),
(373, 91, '_menu_item_orphaned', '1563262773'),
(374, 92, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(375, 92, '_menu_item_type', 'post_type'),
(376, 92, '_menu_item_menu_item_parent', '0'),
(377, 92, '_menu_item_object_id', '38'),
(378, 92, '_menu_item_object', 'page'),
(379, 92, '_menu_item_target', ''),
(380, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(381, 92, '_menu_item_xfn', ''),
(382, 92, '_menu_item_url', ''),
(383, 92, '_menu_item_orphaned', '1563262773'),
(384, 93, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(385, 93, '_menu_item_type', 'post_type'),
(386, 93, '_menu_item_menu_item_parent', '0'),
(387, 93, '_menu_item_object_id', '52'),
(388, 93, '_menu_item_object', 'page'),
(389, 93, '_menu_item_target', ''),
(390, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(391, 93, '_menu_item_xfn', ''),
(392, 93, '_menu_item_url', ''),
(393, 93, '_menu_item_orphaned', '1563262773'),
(394, 94, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(395, 94, '_menu_item_type', 'post_type'),
(396, 94, '_menu_item_menu_item_parent', '0'),
(397, 94, '_menu_item_object_id', '2'),
(398, 94, '_menu_item_object', 'page'),
(399, 94, '_menu_item_target', ''),
(400, 94, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(401, 94, '_menu_item_xfn', ''),
(402, 94, '_menu_item_url', ''),
(403, 94, '_menu_item_orphaned', '1563262773'),
(404, 95, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(405, 95, '_menu_item_type', 'taxonomy'),
(406, 95, '_menu_item_menu_item_parent', '0'),
(407, 95, '_menu_item_object_id', '22'),
(408, 95, '_menu_item_object', 'object'),
(409, 95, '_menu_item_target', ''),
(410, 95, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(411, 95, '_menu_item_xfn', ''),
(412, 95, '_menu_item_url', ''),
(414, 96, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(415, 96, '_menu_item_type', 'taxonomy'),
(416, 96, '_menu_item_menu_item_parent', '95'),
(417, 96, '_menu_item_object_id', '28'),
(418, 96, '_menu_item_object', 'object'),
(419, 96, '_menu_item_target', ''),
(420, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(421, 96, '_menu_item_xfn', ''),
(422, 96, '_menu_item_url', ''),
(424, 97, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(425, 97, '_menu_item_type', 'taxonomy'),
(426, 97, '_menu_item_menu_item_parent', '95'),
(427, 97, '_menu_item_object_id', '27'),
(428, 97, '_menu_item_object', 'object'),
(429, 97, '_menu_item_target', ''),
(430, 97, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(431, 97, '_menu_item_xfn', ''),
(432, 97, '_menu_item_url', ''),
(434, 98, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(435, 98, '_menu_item_type', 'taxonomy'),
(436, 98, '_menu_item_menu_item_parent', '0'),
(437, 98, '_menu_item_object_id', '23'),
(438, 98, '_menu_item_object', 'object'),
(439, 98, '_menu_item_target', ''),
(440, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(441, 98, '_menu_item_xfn', ''),
(442, 98, '_menu_item_url', ''),
(444, 99, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(445, 99, '_menu_item_type', 'taxonomy'),
(446, 99, '_menu_item_menu_item_parent', '98'),
(447, 99, '_menu_item_object_id', '25'),
(448, 99, '_menu_item_object', 'object'),
(449, 99, '_menu_item_target', ''),
(450, 99, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(451, 99, '_menu_item_xfn', ''),
(452, 99, '_menu_item_url', ''),
(454, 100, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(455, 100, '_menu_item_type', 'taxonomy'),
(456, 100, '_menu_item_menu_item_parent', '98'),
(457, 100, '_menu_item_object_id', '29'),
(458, 100, '_menu_item_object', 'object'),
(459, 100, '_menu_item_target', ''),
(460, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(461, 100, '_menu_item_xfn', ''),
(462, 100, '_menu_item_url', ''),
(464, 101, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(465, 101, '_menu_item_type', 'taxonomy'),
(466, 101, '_menu_item_menu_item_parent', '0'),
(467, 101, '_menu_item_object_id', '24'),
(468, 101, '_menu_item_object', 'object'),
(469, 101, '_menu_item_target', ''),
(470, 101, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(471, 101, '_menu_item_xfn', ''),
(472, 101, '_menu_item_url', ''),
(474, 102, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(475, 102, '_menu_item_type', 'taxonomy'),
(476, 102, '_menu_item_menu_item_parent', '101'),
(477, 102, '_menu_item_object_id', '26'),
(478, 102, '_menu_item_object', 'object'),
(479, 102, '_menu_item_target', ''),
(480, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(481, 102, '_menu_item_xfn', ''),
(482, 102, '_menu_item_url', ''),
(484, 103, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(485, 103, '_menu_item_type', 'taxonomy'),
(486, 103, '_menu_item_menu_item_parent', '101'),
(487, 103, '_menu_item_object_id', '30'),
(488, 103, '_menu_item_object', 'object'),
(489, 103, '_menu_item_target', ''),
(490, 103, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(491, 103, '_menu_item_xfn', ''),
(492, 103, '_menu_item_url', ''),
(494, 104, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(495, 104, '_menu_item_type', 'custom'),
(496, 104, '_menu_item_menu_item_parent', '0'),
(497, 104, '_menu_item_object_id', '104'),
(498, 104, '_menu_item_object', 'custom'),
(499, 104, '_menu_item_target', ''),
(500, 104, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(501, 104, '_menu_item_xfn', ''),
(502, 104, '_menu_item_url', 'http://localhost/wp/models/images/'),
(504, 105, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(505, 105, '_menu_item_type', 'custom'),
(506, 105, '_menu_item_menu_item_parent', '0'),
(507, 105, '_menu_item_object_id', '105'),
(508, 105, '_menu_item_object', 'custom'),
(509, 105, '_menu_item_target', ''),
(510, 105, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(511, 105, '_menu_item_xfn', ''),
(512, 105, '_menu_item_url', 'http://localhost/wp/models/artists/'),
(554, 110, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(555, 110, '_menu_item_type', 'custom'),
(556, 110, '_menu_item_menu_item_parent', '0'),
(557, 110, '_menu_item_object_id', '110'),
(558, 110, '_menu_item_object', 'custom'),
(559, 110, '_menu_item_target', ''),
(560, 110, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(561, 110, '_menu_item_xfn', ''),
(562, 110, '_menu_item_url', 'http://localhost/wp/models/services/'),
(614, 116, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(615, 116, '_menu_item_type', 'custom'),
(616, 116, '_menu_item_menu_item_parent', '0'),
(617, 116, '_menu_item_object_id', '116'),
(618, 116, '_menu_item_object', 'custom'),
(619, 116, '_menu_item_target', ''),
(620, 116, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(621, 116, '_menu_item_xfn', ''),
(622, 116, '_menu_item_url', 'http://localhost/wp/models/blog/'),
(624, 117, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(625, 117, '_menu_item_type', 'taxonomy'),
(626, 117, '_menu_item_menu_item_parent', '116'),
(627, 117, '_menu_item_object_id', '32'),
(628, 117, '_menu_item_object', 'category'),
(629, 117, '_menu_item_target', ''),
(630, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(631, 117, '_menu_item_xfn', ''),
(632, 117, '_menu_item_url', ''),
(634, 118, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(635, 118, '_menu_item_type', 'taxonomy'),
(636, 118, '_menu_item_menu_item_parent', '116'),
(637, 118, '_menu_item_object_id', '36'),
(638, 118, '_menu_item_object', 'category'),
(639, 118, '_menu_item_target', ''),
(640, 118, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(641, 118, '_menu_item_xfn', ''),
(642, 118, '_menu_item_url', ''),
(644, 119, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(645, 119, '_menu_item_type', 'taxonomy'),
(646, 119, '_menu_item_menu_item_parent', '116'),
(647, 119, '_menu_item_object_id', '33'),
(648, 119, '_menu_item_object', 'category'),
(649, 119, '_menu_item_target', ''),
(650, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(651, 119, '_menu_item_xfn', ''),
(652, 119, '_menu_item_url', ''),
(654, 120, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(655, 120, '_menu_item_type', 'taxonomy'),
(656, 120, '_menu_item_menu_item_parent', '116'),
(657, 120, '_menu_item_object_id', '35'),
(658, 120, '_menu_item_object', 'category'),
(659, 120, '_menu_item_target', ''),
(660, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(661, 120, '_menu_item_xfn', ''),
(662, 120, '_menu_item_url', ''),
(664, 121, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(665, 121, '_menu_item_type', 'taxonomy'),
(666, 121, '_menu_item_menu_item_parent', '116'),
(667, 121, '_menu_item_object_id', '31'),
(668, 121, '_menu_item_object', 'category'),
(669, 121, '_menu_item_target', ''),
(670, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(671, 121, '_menu_item_xfn', ''),
(672, 121, '_menu_item_url', ''),
(674, 122, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(675, 122, '_menu_item_type', 'taxonomy'),
(676, 122, '_menu_item_menu_item_parent', '116'),
(677, 122, '_menu_item_object_id', '34'),
(678, 122, '_menu_item_object', 'category'),
(679, 122, '_menu_item_target', ''),
(680, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(681, 122, '_menu_item_xfn', ''),
(682, 122, '_menu_item_url', ''),
(684, 123, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(685, 123, '_menu_item_type', 'taxonomy'),
(686, 123, '_menu_item_menu_item_parent', '130'),
(687, 123, '_menu_item_object_id', '44'),
(688, 123, '_menu_item_object', 'academy_cat'),
(689, 123, '_menu_item_target', ''),
(690, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(691, 123, '_menu_item_xfn', ''),
(692, 123, '_menu_item_url', ''),
(704, 125, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(705, 125, '_menu_item_type', 'taxonomy'),
(706, 125, '_menu_item_menu_item_parent', '130'),
(707, 125, '_menu_item_object_id', '38'),
(708, 125, '_menu_item_object', 'academy_cat'),
(709, 125, '_menu_item_target', ''),
(710, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(711, 125, '_menu_item_xfn', ''),
(712, 125, '_menu_item_url', ''),
(714, 126, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(715, 126, '_menu_item_type', 'taxonomy'),
(716, 126, '_menu_item_menu_item_parent', '125'),
(717, 126, '_menu_item_object_id', '40'),
(718, 126, '_menu_item_object', 'academy_cat'),
(719, 126, '_menu_item_target', ''),
(720, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(721, 126, '_menu_item_xfn', ''),
(722, 126, '_menu_item_url', ''),
(724, 127, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(725, 127, '_menu_item_type', 'taxonomy'),
(726, 127, '_menu_item_menu_item_parent', '125'),
(727, 127, '_menu_item_object_id', '41'),
(728, 127, '_menu_item_object', 'academy_cat'),
(729, 127, '_menu_item_target', ''),
(730, 127, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(731, 127, '_menu_item_xfn', ''),
(732, 127, '_menu_item_url', ''),
(734, 128, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(735, 128, '_menu_item_type', 'taxonomy'),
(736, 128, '_menu_item_menu_item_parent', '125'),
(737, 128, '_menu_item_object_id', '39'),
(738, 128, '_menu_item_object', 'academy_cat'),
(739, 128, '_menu_item_target', ''),
(740, 128, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(741, 128, '_menu_item_xfn', ''),
(742, 128, '_menu_item_url', ''),
(744, 129, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(745, 129, '_menu_item_type', 'taxonomy'),
(746, 129, '_menu_item_menu_item_parent', '130'),
(747, 129, '_menu_item_object_id', '42'),
(748, 129, '_menu_item_object', 'academy_cat'),
(749, 129, '_menu_item_target', ''),
(750, 129, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(751, 129, '_menu_item_xfn', ''),
(752, 129, '_menu_item_url', ''),
(754, 130, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(755, 130, '_menu_item_type', 'custom'),
(756, 130, '_menu_item_menu_item_parent', '0'),
(757, 130, '_menu_item_object_id', '130'),
(758, 130, '_menu_item_object', 'custom'),
(759, 130, '_menu_item_target', ''),
(760, 130, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(761, 130, '_menu_item_xfn', ''),
(762, 130, '_menu_item_url', 'http://localhost/wp/models/academy'),
(794, 134, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(795, 134, '_menu_item_type', 'custom'),
(796, 134, '_menu_item_menu_item_parent', '157'),
(797, 134, '_menu_item_object_id', '134'),
(798, 134, '_menu_item_object', 'custom'),
(799, 134, '_menu_item_target', ''),
(800, 134, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(801, 134, '_menu_item_xfn', ''),
(802, 134, '_menu_item_url', 'http://localhost/wp/models/blog'),
(834, 138, '_wp_attached_file', '2019/07/logo-taymodels.png'),
(835, 138, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:168;s:6:\"height\";i:111;s:4:\"file\";s:26:\"2019/07/logo-taymodels.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"logo-taymodels-150x111.png\";s:5:\"width\";i:150;s:6:\"height\";i:111;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(838, 140, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(839, 140, '_edit_last', '1'),
(840, 141, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(841, 140, '_edit_lock', '1563266376:1'),
(842, 142, '_wp_attached_file', '2019/07/logo.png'),
(843, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:99;s:6:\"height\";i:50;s:4:\"file\";s:16:\"2019/07/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(844, 143, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(845, 143, '_menu_item_type', 'custom'),
(846, 143, '_menu_item_menu_item_parent', '0'),
(847, 143, '_menu_item_object_id', '143'),
(848, 143, '_menu_item_object', 'custom'),
(849, 143, '_menu_item_target', ''),
(850, 143, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(851, 143, '_menu_item_xfn', ''),
(852, 143, '_menu_item_url', 'http://#'),
(854, 144, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(855, 144, '_menu_item_type', 'custom'),
(856, 144, '_menu_item_menu_item_parent', '0'),
(857, 144, '_menu_item_object_id', '144'),
(858, 144, '_menu_item_object', 'custom'),
(859, 144, '_menu_item_target', ''),
(860, 144, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(861, 144, '_menu_item_xfn', ''),
(862, 144, '_menu_item_url', 'http://#'),
(864, 145, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(865, 145, '_menu_item_type', 'custom'),
(866, 145, '_menu_item_menu_item_parent', '0'),
(867, 145, '_menu_item_object_id', '145'),
(868, 145, '_menu_item_object', 'custom'),
(869, 145, '_menu_item_target', ''),
(870, 145, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(871, 145, '_menu_item_xfn', ''),
(872, 145, '_menu_item_url', 'http://#'),
(874, 146, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(875, 146, '_edit_last', '1'),
(876, 147, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(877, 148, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(878, 149, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(879, 150, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(880, 151, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(881, 146, '_edit_lock', '1563268272:1'),
(882, 152, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(884, 154, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(885, 154, '_edit_last', '1'),
(886, 154, '_edit_lock', '1563445124:1'),
(887, 154, '_thumbnail_id', '24'),
(888, 154, 'images', 'a:4:{i:0;s:2:\"68\";i:1;s:2:\"66\";i:2;s:2:\"24\";i:3;s:2:\"16\";}'),
(889, 154, '_images', 'field_5d28956c735a8'),
(890, 155, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(891, 155, '_menu_item_type', 'post_type'),
(892, 155, '_menu_item_menu_item_parent', '0'),
(893, 155, '_menu_item_object_id', '36'),
(894, 155, '_menu_item_object', 'page'),
(895, 155, '_menu_item_target', ''),
(896, 155, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(897, 155, '_menu_item_xfn', ''),
(898, 155, '_menu_item_url', ''),
(899, 155, '_menu_item_orphaned', '1563292026'),
(900, 156, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(901, 156, '_menu_item_type', 'post_type'),
(902, 156, '_menu_item_menu_item_parent', '157'),
(903, 156, '_menu_item_object_id', '36'),
(904, 156, '_menu_item_object', 'page'),
(905, 156, '_menu_item_target', ''),
(906, 156, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(907, 156, '_menu_item_xfn', ''),
(908, 156, '_menu_item_url', ''),
(910, 157, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(911, 157, '_menu_item_type', 'post_type'),
(912, 157, '_menu_item_menu_item_parent', '0'),
(913, 157, '_menu_item_object_id', '40'),
(914, 157, '_menu_item_object', 'page'),
(915, 157, '_menu_item_target', ''),
(916, 157, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(917, 157, '_menu_item_xfn', ''),
(918, 157, '_menu_item_url', ''),
(920, 158, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(921, 158, '_menu_item_type', 'post_type'),
(922, 158, '_menu_item_menu_item_parent', '157'),
(923, 158, '_menu_item_object_id', '40'),
(924, 158, '_menu_item_object', 'page'),
(925, 158, '_menu_item_target', ''),
(926, 158, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(927, 158, '_menu_item_xfn', ''),
(928, 158, '_menu_item_url', ''),
(930, 159, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(931, 159, '_menu_item_type', 'post_type'),
(932, 159, '_menu_item_menu_item_parent', '157'),
(933, 159, '_menu_item_object_id', '52'),
(934, 159, '_menu_item_object', 'page'),
(935, 159, '_menu_item_target', ''),
(936, 159, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(937, 159, '_menu_item_xfn', ''),
(938, 159, '_menu_item_url', ''),
(940, 160, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(941, 160, '_menu_item_type', 'post_type'),
(942, 160, '_menu_item_menu_item_parent', '0'),
(943, 160, '_menu_item_object_id', '77'),
(944, 160, '_menu_item_object', 'page'),
(945, 160, '_menu_item_target', ''),
(946, 160, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(947, 160, '_menu_item_xfn', ''),
(948, 160, '_menu_item_url', ''),
(950, 161, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(951, 161, '_menu_item_type', 'post_type'),
(952, 161, '_menu_item_menu_item_parent', '130'),
(953, 161, '_menu_item_object_id', '56'),
(954, 161, '_menu_item_object', 'page'),
(955, 161, '_menu_item_target', ''),
(956, 161, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(957, 161, '_menu_item_xfn', ''),
(958, 161, '_menu_item_url', ''),
(960, 162, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(961, 162, '_edit_last', '1'),
(962, 163, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(963, 162, '_edit_lock', '1563531199:1'),
(966, 165, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(967, 165, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(968, 165, '_edit_last', '1'),
(969, 165, '_thumbnail_id', '166'),
(970, 165, '_edit_lock', '1563544603:1'),
(971, 166, '_wp_attached_file', '2019/07/1383488732_service.jpg'),
(972, 166, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1403;s:6:\"height\";i:1171;s:4:\"file\";s:30:\"2019/07/1383488732_service.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"1383488732_service-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"1383488732_service-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"1383488732_service-768x641.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:641;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"1383488732_service-1024x855.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:855;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(973, 167, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(974, 167, '_menu_item_type', 'taxonomy'),
(975, 167, '_menu_item_menu_item_parent', '110'),
(976, 167, '_menu_item_object_id', '47'),
(977, 167, '_menu_item_object', 'services_cat'),
(978, 167, '_menu_item_target', ''),
(979, 167, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(980, 167, '_menu_item_xfn', ''),
(981, 167, '_menu_item_url', ''),
(983, 168, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(984, 168, '_menu_item_type', 'taxonomy'),
(985, 168, '_menu_item_menu_item_parent', '110'),
(986, 168, '_menu_item_object_id', '48'),
(987, 168, '_menu_item_object', 'services_cat'),
(988, 168, '_menu_item_target', ''),
(989, 168, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(990, 168, '_menu_item_xfn', ''),
(991, 168, '_menu_item_url', ''),
(993, 169, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(994, 169, '_menu_item_type', 'taxonomy'),
(995, 169, '_menu_item_menu_item_parent', '110'),
(996, 169, '_menu_item_object_id', '49'),
(997, 169, '_menu_item_object', 'services_cat'),
(998, 169, '_menu_item_target', ''),
(999, 169, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1000, 169, '_menu_item_xfn', ''),
(1001, 169, '_menu_item_url', ''),
(1003, 170, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1004, 170, '_menu_item_type', 'taxonomy'),
(1005, 170, '_menu_item_menu_item_parent', '110'),
(1006, 170, '_menu_item_object_id', '50'),
(1007, 170, '_menu_item_object', 'services_cat'),
(1008, 170, '_menu_item_target', ''),
(1009, 170, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1010, 170, '_menu_item_xfn', ''),
(1011, 170, '_menu_item_url', ''),
(1013, 171, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1014, 171, '_menu_item_type', 'taxonomy'),
(1015, 171, '_menu_item_menu_item_parent', '110'),
(1016, 171, '_menu_item_object_id', '51'),
(1017, 171, '_menu_item_object', 'services_cat'),
(1018, 171, '_menu_item_target', ''),
(1019, 171, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1020, 171, '_menu_item_xfn', ''),
(1021, 171, '_menu_item_url', ''),
(1035, 174, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1036, 174, '_menu_item_type', 'taxonomy'),
(1037, 174, '_menu_item_menu_item_parent', '105'),
(1038, 174, '_menu_item_object_id', '52'),
(1039, 174, '_menu_item_object', 'artists_cat'),
(1040, 174, '_menu_item_target', ''),
(1041, 174, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1042, 174, '_menu_item_xfn', ''),
(1043, 174, '_menu_item_url', ''),
(1045, 175, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1046, 175, '_menu_item_type', 'taxonomy'),
(1047, 175, '_menu_item_menu_item_parent', '105'),
(1048, 175, '_menu_item_object_id', '53'),
(1049, 175, '_menu_item_object', 'artists_cat'),
(1050, 175, '_menu_item_target', ''),
(1051, 175, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1052, 175, '_menu_item_xfn', ''),
(1053, 175, '_menu_item_url', ''),
(1055, 176, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1056, 176, '_menu_item_type', 'taxonomy'),
(1057, 176, '_menu_item_menu_item_parent', '105'),
(1058, 176, '_menu_item_object_id', '54'),
(1059, 176, '_menu_item_object', 'artists_cat'),
(1060, 176, '_menu_item_target', ''),
(1061, 176, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1062, 176, '_menu_item_xfn', ''),
(1063, 176, '_menu_item_url', ''),
(1065, 177, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1066, 177, '_menu_item_type', 'taxonomy'),
(1067, 177, '_menu_item_menu_item_parent', '105'),
(1068, 177, '_menu_item_object_id', '55'),
(1069, 177, '_menu_item_object', 'artists_cat'),
(1070, 177, '_menu_item_target', ''),
(1071, 177, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1072, 177, '_menu_item_xfn', ''),
(1073, 177, '_menu_item_url', ''),
(1077, 164, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1078, 164, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1079, 164, '_edit_last', '1'),
(1080, 164, '_thumbnail_id', '181'),
(1081, 164, 'post_views_count', '13'),
(1082, 179, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1083, 179, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1084, 179, '_edit_last', '1'),
(1085, 179, '_thumbnail_id', '180'),
(1086, 179, 'post_views_count', '10'),
(1087, 179, '_edit_lock', '1563465731:1'),
(1088, 180, '_wp_attached_file', '2019/07/1459925475_anna_nocon__1099.jpg'),
(1089, 180, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2454;s:6:\"height\";i:3198;s:4:\"file\";s:39:\"2019/07/1459925475_anna_nocon__1099.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"1459925475_anna_nocon__1099-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"1459925475_anna_nocon__1099-230x300.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"1459925475_anna_nocon__1099-768x1001.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1001;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"1459925475_anna_nocon__1099-786x1024.jpg\";s:5:\"width\";i:786;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1090, 164, '_edit_lock', '1563464070:1'),
(1091, 181, '_wp_attached_file', '2019/07/1459916669_monika_beauty.jpg'),
(1092, 181, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:4:\"file\";s:36:\"2019/07/1459916669_monika_beauty.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"1459916669_monika_beauty-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"1459916669_monika_beauty-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"1459916669_monika_beauty-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"1459916669_monika_beauty-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1099, 184, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1100, 184, '_edit_last', '1'),
(1101, 184, '_edit_lock', '1563524527:1'),
(1102, 185, '_wp_attached_file', '2019/07/1409765379_1.jpg'),
(1103, 185, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:420;s:6:\"height\";i:560;s:4:\"file\";s:24:\"2019/07/1409765379_1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"1409765379_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"1409765379_1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1104, 184, '_thumbnail_id', '185'),
(1126, 184, 'brief', 'Model: Magda - Photographer: Manhbi - Stylist: Duy Anh - Make up: Cao Tuan Dat - Hair: Gil Nguyen - Designer: Bui Thanh Thuy '),
(1127, 184, '_brief', 'field_5d30997421c21'),
(1128, 191, 'brief', 'Model: Magda - Photographer: Manhbi - Stylist: Duy Anh - Make up: Cao Tuan Dat - Hair: Gil Nguyen - Designer: Bui Thanh Thuy '),
(1129, 191, '_brief', 'field_5d30997421c21'),
(1165, 198, 'brief', 'Model: Magda - Photographer: Manhbi - Stylist: Duy Anh - Make up: Cao Tuan Dat - Hair: Gil Nguyen - Designer: Bui Thanh Thuy '),
(1166, 198, '_brief', 'field_5d30997421c21'),
(1169, 199, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1170, 199, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1171, 199, '_edit_last', '1'),
(1172, 199, '_edit_lock', '1563505150:1'),
(1173, 199, '_thumbnail_id', '185'),
(1174, 199, 'brief', 'Model: Magda - Photographer: Manhbi - Stylist: Duy Anh - Make up: Cao Tuan Dat - Hair: Gil Nguyen - Designer: Bui Thanh Thuy '),
(1175, 199, '_brief', 'field_5d30997421c21'),
(1178, 200, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1179, 200, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1180, 200, '_edit_last', '1'),
(1181, 200, '_edit_lock', '1563529784:1'),
(1182, 200, '_thumbnail_id', '185'),
(1183, 200, 'brief', 'Model: Magda - Photographer: Manhbi - Stylist: Duy Anh - Make up: Cao Tuan Dat - Hair: Gil Nguyen - Designer: Bui Thanh Thuy '),
(1184, 200, '_brief', 'field_5d30997421c21'),
(1187, 201, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1188, 201, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1189, 201, '_edit_last', '1'),
(1190, 201, '_edit_lock', '1563529691:1'),
(1191, 201, '_thumbnail_id', '185'),
(1192, 201, 'brief', 'Model: Magda - Photographer: Manhbi - Stylist: Duy Anh - Make up: Cao Tuan Dat - Hair: Gil Nguyen - Designer: Bui Thanh Thuy '),
(1193, 201, '_brief', 'field_5d30997421c21'),
(1194, 202, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1195, 202, '_edit_last', '1'),
(1196, 202, '_wpb_vc_js_status', 'true'),
(1197, 202, '_edit_lock', '1563540387:1'),
(1198, 206, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1199, 206, '_menu_item_type', 'post_type'),
(1200, 206, '_menu_item_menu_item_parent', '0'),
(1201, 206, '_menu_item_object_id', '36'),
(1202, 206, '_menu_item_object', 'page'),
(1203, 206, '_menu_item_target', ''),
(1204, 206, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1205, 206, '_menu_item_xfn', ''),
(1206, 206, '_menu_item_url', ''),
(1208, 207, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1209, 207, '_menu_item_type', 'post_type'),
(1210, 207, '_menu_item_menu_item_parent', '0'),
(1211, 207, '_menu_item_object_id', '40'),
(1212, 207, '_menu_item_object', 'page'),
(1213, 207, '_menu_item_target', ''),
(1214, 207, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1215, 207, '_menu_item_xfn', ''),
(1216, 207, '_menu_item_url', ''),
(1218, 208, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1219, 208, '_menu_item_type', 'post_type'),
(1220, 208, '_menu_item_menu_item_parent', '0'),
(1221, 208, '_menu_item_object_id', '202'),
(1222, 208, '_menu_item_object', 'page'),
(1223, 208, '_menu_item_target', ''),
(1224, 208, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1225, 208, '_menu_item_xfn', ''),
(1226, 208, '_menu_item_url', ''),
(1228, 209, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1229, 209, '_menu_item_type', 'custom'),
(1230, 209, '_menu_item_menu_item_parent', '0'),
(1231, 209, '_menu_item_object_id', '209'),
(1232, 209, '_menu_item_object', 'custom'),
(1233, 209, '_menu_item_target', ''),
(1234, 209, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1235, 209, '_menu_item_xfn', ''),
(1236, 209, '_menu_item_url', 'http://#'),
(1238, 210, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1239, 210, '_menu_item_type', 'custom'),
(1240, 210, '_menu_item_menu_item_parent', '0'),
(1241, 210, '_menu_item_object_id', '210'),
(1242, 210, '_menu_item_object', 'custom'),
(1243, 210, '_menu_item_target', ''),
(1244, 210, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1245, 210, '_menu_item_xfn', ''),
(1246, 210, '_menu_item_url', 'http://#'),
(1248, 211, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1249, 211, '_menu_item_type', 'custom'),
(1250, 211, '_menu_item_menu_item_parent', '0'),
(1251, 211, '_menu_item_object_id', '211'),
(1252, 211, '_menu_item_object', 'custom'),
(1253, 211, '_menu_item_target', ''),
(1254, 211, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1255, 211, '_menu_item_xfn', ''),
(1256, 211, '_menu_item_url', 'http://#'),
(1258, 201, 'post_views_count', '9'),
(1259, 200, 'post_views_count', '9'),
(1260, 199, 'post_views_count', '2'),
(1261, 184, 'post_views_count', '1'),
(1268, 202, '_wpb_shortcodes_custom_css', '.vc_custom_1563503991627{margin-top: 40px !important;}'),
(1271, 220, 'brief', 'Model: Magda - Photographer: Manhbi - Stylist: Duy Anh - Make up: Cao Tuan Dat - Hair: Gil Nguyen - Designer: Bui Thanh Thuy '),
(1272, 220, '_brief', 'field_5d30997421c21'),
(1283, 221, 'brief', 'Model: Magda - Photographer: Manhbi - Stylist: Duy Anh - Make up: Cao Tuan Dat - Hair: Gil Nguyen - Designer: Bui Thanh Thuy '),
(1284, 221, '_brief', 'field_5d30997421c21'),
(1287, 222, 'brief', 'Model: Magda - Photographer: Manhbi - Stylist: Duy Anh - Make up: Cao Tuan Dat - Hair: Gil Nguyen - Designer: Bui Thanh Thuy '),
(1288, 222, '_brief', 'field_5d30997421c21'),
(1291, 223, 'brief', 'Model: Magda - Photographer: Manhbi - Stylist: Duy Anh - Make up: Cao Tuan Dat - Hair: Gil Nguyen - Designer: Bui Thanh Thuy '),
(1292, 223, '_brief', 'field_5d30997421c21'),
(1296, 36, '_wpb_shortcodes_custom_css', '.vc_custom_1563524575961{margin-top: 50px !important;}'),
(1298, 228, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1299, 228, '_edit_last', '1'),
(1300, 228, '_edit_lock', '1563524811:1'),
(1301, 228, '_wpb_vc_js_status', 'true'),
(1302, 228, '_wpb_shortcodes_custom_css', '.vc_custom_1563524703941{margin-top: 50px !important;}'),
(1303, 230, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1304, 230, '_menu_item_type', 'post_type'),
(1305, 230, '_menu_item_menu_item_parent', '157'),
(1306, 230, '_menu_item_object_id', '228'),
(1307, 230, '_menu_item_object', 'page'),
(1308, 230, '_menu_item_target', ''),
(1309, 230, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1310, 230, '_menu_item_xfn', ''),
(1311, 230, '_menu_item_url', ''),
(1317, 232, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1318, 232, '_edit_last', '1'),
(1319, 232, '_edit_lock', '1563525069:1'),
(1320, 232, '_wpb_vc_js_status', 'true'),
(1321, 232, '_wpb_shortcodes_custom_css', '.vc_custom_1563524924810{margin-top: 50px !important;}'),
(1322, 234, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1323, 234, '_menu_item_type', 'post_type'),
(1324, 234, '_menu_item_menu_item_parent', '157'),
(1325, 234, '_menu_item_object_id', '232'),
(1326, 234, '_menu_item_object', 'page'),
(1327, 234, '_menu_item_target', ''),
(1328, 234, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1329, 234, '_menu_item_xfn', ''),
(1330, 234, '_menu_item_url', ''),
(1333, 236, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1334, 236, '_edit_last', '1'),
(1335, 237, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1336, 236, '_edit_lock', '1563529441:1'),
(1342, 2, '_edit_lock', '1563813908:1'),
(1347, 245, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1348, 245, '_edit_lock', '1565482668:1'),
(1349, 245, '_edit_last', '1'),
(1350, 246, '_wpb_vc_js_status', 'false'),
(1351, 246, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1352, 247, '_wpb_vc_js_status', 'false'),
(1353, 247, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1354, 245, '_wpb_vc_js_status', 'false');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2019-07-11 13:50:53', '2019-07-11 13:50:53', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wp/models/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-07-11 13:50:53', '2019-07-11 13:50:53', '', 0, 'http://localhost/wp/models/?page_id=2', 0, 'page', '', 0),
(5, 1, '2019-07-11 15:20:34', '2019-07-11 15:20:34', '[vc_row][vc_column][models_home_s_banner title=\"Women\" url=\"#\" img=\"65\"][/vc_column][/vc_row][vc_row][vc_column][models_home_s_body content_view=\"%5B%7B%22img%22%3A%2266%22%2C%22link%22%3A%2222%22%7D%2C%7B%22img%22%3A%2268%22%2C%22link%22%3A%2223%22%7D%2C%7B%22img%22%3A%2215%22%2C%22link%22%3A%2224%22%7D%2C%7B%22img%22%3A%2224%22%2C%22link%22%3A%22images%22%7D%5D\"][/vc_column][/vc_row]', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-07-15 01:31:28', '2019-07-15 01:31:28', '', 0, 'http://localhost/wp/models/?page_id=5', 0, 'page', '', 0),
(6, 1, '2019-07-11 15:20:34', '2019-07-11 15:20:34', '[vc_row][vc_column][models_home_s_banner][/models_home_s_banner][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-11 15:20:34', '2019-07-11 15:20:34', '', 5, 'http://localhost/wp/models/2019/07/11/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-07-11 15:34:43', '2019-07-11 15:34:43', '[vc_row][vc_column][models_home_s_banner][/models_home_s_banner][/vc_column][/vc_row][vc_row][vc_column][models_home_s_body][/models_home_s_body][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-11 15:34:43', '2019-07-11 15:34:43', '', 5, 'http://localhost/wp/models/2019/07/11/5-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-07-12 13:42:29', '0000-00-00 00:00:00', '', 'ALENA', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-12 13:42:29', '2019-07-12 13:42:29', '', 0, 'http://localhost/wp/models/?post_type=models&#038;p=11', 0, 'models', '', 0),
(15, 1, '2019-07-12 13:45:12', '2019-07-12 13:45:12', '', 'a', '', 'inherit', 'open', 'closed', '', 'a', '', '', '2019-07-12 13:49:59', '2019-07-12 13:49:59', '', 0, 'http://localhost/wp/models/wp-content/uploads/2019/07/a.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2019-07-12 13:45:27', '2019-07-12 13:45:27', '', 'a', '', 'inherit', 'open', 'closed', '', 'a-2', '', '', '2019-07-16 14:43:28', '2019-07-16 14:43:28', '', 0, 'http://localhost/wp/models/wp-content/uploads/2019/07/a-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2019-07-12 13:52:19', '2019-07-12 13:52:19', '', 'ALENA', '', 'publish', 'closed', 'closed', '', 'aleksandra', '', '', '2019-07-15 07:21:35', '2019-07-15 07:21:35', '', 0, 'http://localhost/wp/models/?post_type=models&#038;p=17', 0, 'models', '', 0),
(18, 1, '2019-07-12 14:03:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-12 14:03:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/models/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2019-07-12 14:03:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-12 14:03:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/models/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2019-07-12 14:03:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-12 14:03:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/models/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2019-07-12 14:13:32', '2019-07-12 14:13:32', 'a:7:{s:8:\"location\";a:3:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"images\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"models\";}}i:2;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"artists\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Images', 'images', 'publish', 'closed', 'closed', '', 'group_5d28956672a24', '', '', '2019-07-12 15:18:11', '2019-07-12 15:18:11', '', 0, 'http://localhost/wp/models/?post_type=acf-field-group&#038;p=21', 0, 'acf-field-group', '', 0),
(22, 1, '2019-07-12 14:13:32', '2019-07-12 14:13:32', 'a:16:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Bộ sưu tập', 'images', 'publish', 'closed', 'closed', '', 'field_5d28956c735a8', '', '', '2019-07-12 15:17:12', '2019-07-12 15:17:12', '', 21, 'http://localhost/wp/models/?post_type=acf-field&#038;p=22', 0, 'acf-field', '', 0),
(23, 1, '2019-07-12 14:15:00', '2019-07-12 14:15:00', '', 'LE THUY', '', 'publish', 'closed', 'closed', '', 'le-thuy', '', '', '2019-07-12 14:15:00', '2019-07-12 14:15:00', '', 0, 'http://localhost/wp/models/?post_type=images&#038;p=23', 0, 'images', '', 0),
(24, 1, '2019-07-12 14:14:36', '2019-07-12 14:14:36', '', '1446787894_le_thuy_5', '', 'inherit', 'open', 'closed', '', '1446787894_le_thuy_5', '', '', '2019-07-15 16:46:40', '2019-07-15 16:46:40', '', 23, 'http://localhost/wp/models/wp-content/uploads/2019/07/1446787894_le_thuy_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2019-07-12 14:38:34', '2019-07-12 14:38:34', '', 'Photo-icon', '', 'inherit', 'open', 'closed', '', 'photo-icon', '', '', '2019-07-12 14:38:34', '2019-07-12 14:38:34', '', 0, 'http://localhost/wp/models/wp-content/uploads/2019/07/Photo-icon.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2019-07-12 14:52:47', '2019-07-12 14:52:47', '', 'image', '', 'inherit', 'open', 'closed', '', 'image', '', '', '2019-07-12 14:52:47', '2019-07-12 14:52:47', '', 0, 'http://localhost/wp/models/wp-content/uploads/2019/07/image.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2019-07-12 14:55:43', '2019-07-12 14:55:43', '', 'icon-image', '', 'inherit', 'open', 'closed', '', 'icon-image', '', '', '2019-07-12 14:55:43', '2019-07-12 14:55:43', '', 0, 'http://localhost/wp/models/wp-content/uploads/2019/07/icon-image.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2019-07-12 14:57:56', '2019-07-12 14:57:56', '', 'icon-models', '', 'inherit', 'open', 'closed', '', 'icon-models', '', '', '2019-07-12 14:57:56', '2019-07-12 14:57:56', '', 0, 'http://localhost/wp/models/wp-content/uploads/2019/07/icon-models.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2019-07-12 14:59:32', '2019-07-12 14:59:32', '', 'Vector woman and man', 'Vector woman and man models dressed in classic pants', 'inherit', 'open', 'closed', '', 'vector-woman-and-man', '', '', '2019-07-12 14:59:32', '2019-07-12 14:59:32', '', 0, 'http://localhost/wp/models/wp-content/uploads/2019/07/icon-m.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2019-07-12 15:02:13', '2019-07-12 15:02:13', '', 'icon model', '', 'inherit', 'open', 'closed', '', 'icon-model', '', '', '2019-07-12 15:02:13', '2019-07-12 15:02:13', '', 0, 'http://localhost/wp/models/wp-content/uploads/2019/07/icon-model.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2019-07-12 15:05:42', '2019-07-12 15:05:42', '', 'ngesi', '', 'inherit', 'open', 'closed', '', 'ngesi', '', '', '2019-07-12 15:05:42', '2019-07-12 15:05:42', '', 0, 'http://localhost/wp/models/wp-content/uploads/2019/07/ngesi.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2019-07-12 15:08:03', '2019-07-12 15:08:03', '', 'service', '', 'inherit', 'open', 'closed', '', 'service', '', '', '2019-07-12 15:08:03', '2019-07-12 15:08:03', '', 0, 'http://localhost/wp/models/wp-content/uploads/2019/07/service.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2019-07-12 15:10:21', '2019-07-12 15:10:21', '', 'school-building', '', 'inherit', 'open', 'closed', '', 'school-building', '', '', '2019-07-12 15:10:21', '2019-07-12 15:10:21', '', 0, 'http://localhost/wp/models/wp-content/uploads/2019/07/school-building.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2019-07-12 15:32:05', '2019-07-12 15:32:05', '[vc_row css=\".vc_custom_1563524575961{margin-top: 50px !important;}\"][vc_column width=\"1/4\"][models_menu_about_left][/vc_column][vc_column width=\"3/4\"][vc_column_text]\r\n<div class=\"content\">\r\n<h1 class=\"title\">About us</h1>\r\n&nbsp;\r\n<div style=\"text-align: center; padding: 20px 0;\"><img title=\"About us \" src=\"http://tay-models.com/media/article/1402764823_profile_English.jpg\" alt=\"About us \" width=\"360\" border=\"0\" /></div>\r\n<div class=\"brief clb\">\r\n\r\nTayModels - The 1st Vietnamese Modeling Agency that provides both local and international models, and offers a wide range of services including campaign production, event planning, and creative exchange and marketing counseling.\r\n\r\n</div>\r\n<div class=\"clb\"></div>\r\n<div class=\"content\">\r\n\r\nFounded in 2010 by Alex Tuong – Lan Pham, Taymodels is a modeling and talent agency specialized in foreign models\r\nToday, Taymodels has grown into an agency that provides both local and international models, and offers a wide range of services including campaign production, event planning, and creative exchange with a network of talents and marketing counseling.\r\n\r\nTaymodels’ clients are among the most prestigious brands and companies in Vietnam and worldwide.\r\n\r\nwww.tay-models.com\r\n<a href=\"http://www.facebook.com/taymodels\" rel=\"nofollow\">www.facebook.com/taymodels</a>\r\n<a href=\"http://www.facebook.com/l.php?u=http%3A%2F%2Fwww.youtube.com%2Ftaymodels&amp;h=rAQHAXvJn&amp;s=1\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">www.youtube.com/taymodels</a>\r\n<a href=\"http://taymodelmanagement.blogspot.com/\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">http://taymodelmanagement.blogspot.com/</a>\r\n\r\n</div>\r\n<script type=\"text/javascript\">var switchTo5x=true;</script>\r\n<script type=\"text/javascript\" src=\"http://w.sharethis.com/button/buttons.js\"></script> <script type=\"text/javascript\">stLight.options({publisher: \"ur-d7c4e3c3-1de9-501-1a16-699a1de5f7d2\"});</script>\r\n<div class=\"article-other\">\r\n<h3 class=\"title\"></h3>\r\n</div>\r\n<div class=\"clb\"></div>\r\n</div>\r\n[/vc_column_text][/vc_column][/vc_row]', 'ABOUT US', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-07-19 08:23:00', '2019-07-19 08:23:00', '', 0, 'http://localhost/wp/models/?page_id=36', 0, 'page', '', 0),
(37, 1, '2019-07-12 15:32:05', '2019-07-12 15:32:05', '<div class=\"content\">\r\n<h1 class=\"title\">About us</h1>\r\n&nbsp;\r\n<div style=\"text-align: center; padding: 20px 0;\"><img title=\"About us \" src=\"http://tay-models.com/media/article/1402764823_profile_English.jpg\" alt=\"About us \" width=\"360\" border=\"0\" /></div>\r\n<div class=\"brief clb\">\r\n\r\nTayModels - The 1st Vietnamese Modeling Agency that provides both local and international models, and offers a wide range of services including campaign production, event planning, and creative exchange and marketing counseling.\r\n\r\n</div>\r\n<div class=\"clb\"></div>\r\n<div class=\"content\">\r\n\r\nFounded in 2010 by Alex Tuong – Lan Pham, Taymodels is a modeling and talent agency specialized in foreign models\r\nToday, Taymodels has grown into an agency that provides both local and international models, and offers a wide range of services including campaign production, event planning, and creative exchange with a network of talents and marketing counseling.\r\n\r\nTaymodels’ clients are among the most prestigious brands and companies in Vietnam and worldwide.\r\n\r\nwww.tay-models.com\r\n<a href=\"http://www.facebook.com/taymodels\" rel=\"nofollow\">www.facebook.com/taymodels</a>\r\n<a href=\"http://www.facebook.com/l.php?u=http%3A%2F%2Fwww.youtube.com%2Ftaymodels&amp;h=rAQHAXvJn&amp;s=1\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">www.youtube.com/taymodels</a>\r\n<a href=\"http://taymodelmanagement.blogspot.com/\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">http://taymodelmanagement.blogspot.com/</a>\r\n\r\n</div>\r\n<script type=\"text/javascript\">var switchTo5x=true;</script>\r\n<script type=\"text/javascript\" src=\"http://w.sharethis.com/button/buttons.js\"></script>\r\n<script type=\"text/javascript\">stLight.options({publisher: \"ur-d7c4e3c3-1de9-501-1a16-699a1de5f7d2\"});</script>\r\n<div class=\"article-other\">\r\n<h3 class=\"title\"></h3>\r\n</div>\r\n<div class=\"clb\"></div>\r\n</div>', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2019-07-12 15:32:05', '2019-07-12 15:32:05', '', 36, 'http://localhost/wp/models/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2019-07-12 15:33:39', '2019-07-12 15:33:39', '<div class=\"content\">\r\n	<h1 class=\"title\">Models </h1><span class=\"date\"></span>\r\n	<div style=\"text-align:center; padding:20px 0;\"><img src=\"http://tay-models.com/media/article/1359522044_app-online.jpg\" width=\"360\" title=\"Models\" alt=\"Models\" border=\"0\"></div>\r\n	<div class=\"brief clb\">\r\n		 <p>Our exclusive models come from Vietnam and all over the world, making us the first Vietnamese modeling agency to provide both local and international models</p>\r\n	</div>\r\n	<div class=\"clb\"></div>\r\n	<div class=\"content\">\r\n		<p>Our thorough selection process ensures that our models meet the highest market requirements and cover different kinds of beauty.  Adding value to your business, our models work with a strictly professional attitude to make sure your concept is understood and your message gets across.  We are constantly recruiting new faces in order to continue to give clients more option from one campaign to the next one.</p>\r\n	</div>\r\n	\r\n	<script type=\"text/javascript\">var switchTo5x=true;</script>\r\n	<script type=\"text/javascript\" src=\"http://w.sharethis.com/button/buttons.js\"></script>\r\n	<script type=\"text/javascript\">stLight.options({publisher: \"ur-d7c4e3c3-1de9-501-1a16-699a1de5f7d2\"});</script>	\r\n	\r\n	\r\n	\r\n	<div class=\"article-other\">\r\n        <h3 class=\"title\"></h3>\r\n        <ul>\r\n        \r\n        </ul>\r\n    </div>\r\n    <div class=\"clb\"></div>\r\n</div>', 'MODELS', '', 'publish', 'closed', 'closed', '', 'models', '', '', '2019-07-12 15:33:39', '2019-07-12 15:33:39', '', 0, 'http://localhost/wp/models/?page_id=38', 0, 'page', '', 0),
(39, 1, '2019-07-12 15:33:39', '2019-07-12 15:33:39', '<div class=\"content\">\r\n	<h1 class=\"title\">Models </h1><span class=\"date\"></span>\r\n	<div style=\"text-align:center; padding:20px 0;\"><img src=\"http://tay-models.com/media/article/1359522044_app-online.jpg\" width=\"360\" title=\"Models\" alt=\"Models\" border=\"0\"></div>\r\n	<div class=\"brief clb\">\r\n		 <p>Our exclusive models come from Vietnam and all over the world, making us the first Vietnamese modeling agency to provide both local and international models</p>\r\n	</div>\r\n	<div class=\"clb\"></div>\r\n	<div class=\"content\">\r\n		<p>Our thorough selection process ensures that our models meet the highest market requirements and cover different kinds of beauty.  Adding value to your business, our models work with a strictly professional attitude to make sure your concept is understood and your message gets across.  We are constantly recruiting new faces in order to continue to give clients more option from one campaign to the next one.</p>\r\n	</div>\r\n	\r\n	<script type=\"text/javascript\">var switchTo5x=true;</script>\r\n	<script type=\"text/javascript\" src=\"http://w.sharethis.com/button/buttons.js\"></script>\r\n	<script type=\"text/javascript\">stLight.options({publisher: \"ur-d7c4e3c3-1de9-501-1a16-699a1de5f7d2\"});</script>	\r\n	\r\n	\r\n	\r\n	<div class=\"article-other\">\r\n        <h3 class=\"title\"></h3>\r\n        <ul>\r\n        \r\n        </ul>\r\n    </div>\r\n    <div class=\"clb\"></div>\r\n</div>', 'MODELS', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2019-07-12 15:33:39', '2019-07-12 15:33:39', '', 38, 'http://localhost/wp/models/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2019-07-14 02:41:53', '2019-07-14 02:41:53', '[vc_row css=\".vc_custom_1563073767866{margin-top: 60px !important;}\"][vc_column width=\"1/4\"][models_menu_about_left][/vc_column][vc_column width=\"3/4\"][vc_column_text]\r\n<table style=\"max-width: 100%;\" width=\"677\">\r\n<tbody>\r\n<tr>\r\n<td><span style=\"font-size: medium;\"><strong>Contact Us:</strong></span></td>\r\n</tr>\r\n<tr>\r\n<td><strong><span style=\"font-size: larger;\">Address: Unit 1003 - 10th Floor - Ford Building - No. 105 Lang Ha street - Ha Noi - Vietnam\r\nTel: +844 66700246\r\nEmail: info@tay-models.com </span></strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<strong>\r\nBooking department </strong>\r\nAlex Tuong-Lan Pham\r\nEmail: alex.pham@tay-models.com\r\nMobile phone: +84 986 849899\r\n\r\n<strong>\r\n</strong><span style=\"font-size: larger;\"><strong>Scouting department </strong></span><span style=\"font-size: larger;\">\r\nVinh Pham\r\nEmail: vinh.pham@tay-models.com\r\nMobile Phone: +84 904427580\r\n</span>[/vc_column_text][contact-form-7 id=\"43\"][/vc_column][/vc_row]', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-07-18 17:18:06', '2019-07-18 17:18:06', '', 0, 'http://localhost/wp/models/?page_id=40', 0, 'page', '', 0),
(41, 1, '2019-07-14 02:41:53', '2019-07-14 02:41:53', '[vc_row][vc_column][/vc_column][/vc_row]', 'Contact us', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-07-14 02:41:53', '2019-07-14 02:41:53', '', 40, 'http://localhost/wp/models/40-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-07-14 02:49:22', '2019-07-14 02:49:22', '<div class=\"frmContact contact-form clearfix\" id=\"frmContact\" name=\"frmContact\" method=\"post\" action=\"\" novalidate=\"novalidate\">\r\n	<p>\r\n		<label for=\"name\" class=\"required\">Name&nbsp;<font color=\"red\">*</font>&nbsp;</label>[text* your-name id:name class:input]\r\n	</p>\r\n	<p>\r\n		<label for=\"email\" class=\"required\">Email&nbsp;<font color=\"red\">*</font>&nbsp;</label>[email* your-email id:email class:input]\r\n	</p>\r\n	<p>\r\n		<label for=\"phone\" class=\"required\">Phone&nbsp;<font color=\"red\">*</font>&nbsp;</label>[tel* your-phone id:phone class:input]\r\n	</p>\r\n	<p>\r\n		<label for=\"company\">Company</label>[text your-company id:company_ class:input]\r\n	</p>\r\n	<p>\r\n		<label for=\"address\">Address</label>[text your-address id:address class:input]\r\n	</p>\r\n	<p>\r\n		<label for=\"subject\">Subject</label>[text your-subject id:subject class:input]\r\n	</p>\r\n	<p>\r\n		<label for=\"message\" class=\"required\">Message&nbsp;<font color=\"red\">*</font>&nbsp;</label>[textarea* your-message id:message class:input]\r\n	</p>\r\n	<p style=\"width: 160px; float:left\">\r\n		<label for=\"address\" class=\"required\">Recapcha &nbsp;<font color=\"red\">*</font>&nbsp;</label><span class=\"recapcha\">[recaptcha]</span>\r\n	</p>\r\n	<p style=\"width: 100%; padding: 15px 0; margin-bottom: 60px; float:left\">\r\n                [submit class:button value\'Send\']		\r\n	</p>\r\n</div>\n1\nModels \"[your-subject]\"\n[your-name] <wordpress@localhost>\nthoweb.demo@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Models (http://localhost/wp/models)\nReply-To: [your-email]\n\n\n\n\nModels \"[your-subject]\"\nModels <wordpress@localhost>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Models (http://localhost/wp/models)\nReply-To: thoweb.demo@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-07-19 14:11:29', '2019-07-19 14:11:29', '', 0, 'http://localhost/wp/models/?post_type=wpcf7_contact_form&#038;p=43', 0, 'wpcf7_contact_form', '', 0),
(44, 1, '2019-07-14 02:59:37', '2019-07-14 02:59:37', '[vc_row][vc_column][contact-form-7 id=\"43\"][/vc_column][/vc_row]', 'Contact us', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-07-14 02:59:37', '2019-07-14 02:59:37', '', 40, 'http://localhost/wp/models/40-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2019-07-14 14:58:35', '2019-07-14 14:58:35', '<p>[vc_row css=\".vc_custom_1563073767866{margin-top: 60px !important;}\"][vc_column width=\"1/4\"][vc_wp_categories][/vc_column][vc_column width=\"3/4\"][vc_column_text]</p>\n<table width=\"677\">\n<tbody>\n<tr>\n<td><span style=\"font-size: medium;\"><strong>Contact Us:</strong></span></td>\n</tr>\n<tr>\n<td><strong><span style=\"font-size: larger;\">Address: Unit 1003 - 10th Floor - Ford Building - No. 105 Lang Ha street - Ha Noi - Vietnam<br />\nTel: +844 66700246<br />\nEmail: info@tay-models.com </span></strong></td>\n</tr>\n</tbody>\n</table>\n<p><strong><br />\nBooking department </strong><br />\nAlex Tuong-Lan Pham<br />\nEmail: alex.pham@tay-models.com<br />\nMobile phone: +84 986 849899</p>\n<p><strong><br />\n</strong><span style=\"font-size: larger;\"><strong>Scouting department </strong></span><span style=\"font-size: larger;\"><br />\nVinh Pham<br />\nEmail: vinh.pham@tay-models.com<br />\nMobile Phone: +84 904427580<br />\n</span></p>\n<p>[/vc_column_text][contact-form-7 id=\"43\"][/vc_column][/vc_row]</p>\n', 'Contact us', '', 'inherit', 'closed', 'closed', '', '40-autosave-v1', '', '', '2019-07-14 14:58:35', '2019-07-14 14:58:35', '', 40, 'http://localhost/wp/models/40-autosave-v1/', 0, 'revision', '', 0),
(46, 1, '2019-07-14 03:07:36', '2019-07-14 03:07:36', '[vc_row][vc_column][vc_column_text]\r\n<table width=\"677\">\r\n<tbody>\r\n<tr>\r\n<td><span style=\"font-size: medium;\"><strong>Contact Us:</strong></span></td>\r\n</tr>\r\n<tr>\r\n<td><strong><span style=\"font-size: larger;\">Address: Unit 1003 - 10th Floor - Ford Building - No. 105 Lang Ha street - Ha Noi - Vietnam\r\nTel: +844 66700246\r\nEmail: info@tay-models.com </span></strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<strong>\r\nBooking department </strong>\r\nAlex Tuong-Lan Pham\r\nEmail: alex.pham@tay-models.com\r\nMobile phone: +84 986 849899\r\n\r\n<strong>\r\n</strong><span style=\"font-size: larger;\"><strong>Scouting department </strong></span><span style=\"font-size: larger;\">\r\nVinh Pham\r\nEmail: vinh.pham@tay-models.com\r\nMobile Phone: +84 904427580\r\n</span>\r\n\r\n[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][contact-form-7 id=\"43\"][/vc_column][/vc_row]', 'Contact us', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-07-14 03:07:36', '2019-07-14 03:07:36', '', 40, 'http://localhost/wp/models/40-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2019-07-14 03:08:06', '2019-07-14 03:08:06', '[vc_row][vc_column width=\"1/4\"][/vc_column][vc_column width=\"3/4\"][vc_column_text]\r\n<table width=\"677\">\r\n<tbody>\r\n<tr>\r\n<td><span style=\"font-size: medium;\"><strong>Contact Us:</strong></span></td>\r\n</tr>\r\n<tr>\r\n<td><strong><span style=\"font-size: larger;\">Address: Unit 1003 - 10th Floor - Ford Building - No. 105 Lang Ha street - Ha Noi - Vietnam\r\nTel: +844 66700246\r\nEmail: info@tay-models.com </span></strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<strong>\r\nBooking department </strong>\r\nAlex Tuong-Lan Pham\r\nEmail: alex.pham@tay-models.com\r\nMobile phone: +84 986 849899\r\n\r\n<strong>\r\n</strong><span style=\"font-size: larger;\"><strong>Scouting department </strong></span><span style=\"font-size: larger;\">\r\nVinh Pham\r\nEmail: vinh.pham@tay-models.com\r\nMobile Phone: +84 904427580\r\n</span>\r\n\r\n[/vc_column_text][contact-form-7 id=\"43\"][/vc_column][/vc_row]', 'Contact us', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-07-14 03:08:06', '2019-07-14 03:08:06', '', 40, 'http://localhost/wp/models/40-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2019-07-14 03:09:29', '2019-07-14 03:09:29', '[vc_row css=\".vc_custom_1563073767866{margin-top: 60px !important;}\"][vc_column width=\"1/4\"][/vc_column][vc_column width=\"3/4\"][vc_column_text]\r\n<table width=\"677\">\r\n<tbody>\r\n<tr>\r\n<td><span style=\"font-size: medium;\"><strong>Contact Us:</strong></span></td>\r\n</tr>\r\n<tr>\r\n<td><strong><span style=\"font-size: larger;\">Address: Unit 1003 - 10th Floor - Ford Building - No. 105 Lang Ha street - Ha Noi - Vietnam\r\nTel: +844 66700246\r\nEmail: info@tay-models.com </span></strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<strong>\r\nBooking department </strong>\r\nAlex Tuong-Lan Pham\r\nEmail: alex.pham@tay-models.com\r\nMobile phone: +84 986 849899\r\n\r\n<strong>\r\n</strong><span style=\"font-size: larger;\"><strong>Scouting department </strong></span><span style=\"font-size: larger;\">\r\nVinh Pham\r\nEmail: vinh.pham@tay-models.com\r\nMobile Phone: +84 904427580\r\n</span>\r\n\r\n[/vc_column_text][contact-form-7 id=\"43\"][/vc_column][/vc_row]', 'Contact us', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-07-14 03:09:29', '2019-07-14 03:09:29', '', 40, 'http://localhost/wp/models/40-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2019-07-14 15:04:22', '2019-07-14 15:04:22', '[vc_row css=\".vc_custom_1563073767866{margin-top: 60px !important;}\"][vc_column width=\"1/4\"][vc_wp_categories][/vc_column][vc_column width=\"3/4\"][vc_column_text]\r\n<table style=\"max-width: 100%;\" width=\"677\">\r\n<tbody>\r\n<tr>\r\n<td><span style=\"font-size: medium;\"><strong>Contact Us:</strong></span></td>\r\n</tr>\r\n<tr>\r\n<td><strong><span style=\"font-size: larger;\">Address: Unit 1003 - 10th Floor - Ford Building - No. 105 Lang Ha street - Ha Noi - Vietnam\r\nTel: +844 66700246\r\nEmail: info@tay-models.com </span></strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<strong>\r\nBooking department </strong>\r\nAlex Tuong-Lan Pham\r\nEmail: alex.pham@tay-models.com\r\nMobile phone: +84 986 849899\r\n\r\n<strong>\r\n</strong><span style=\"font-size: larger;\"><strong>Scouting department </strong></span><span style=\"font-size: larger;\">\r\nVinh Pham\r\nEmail: vinh.pham@tay-models.com\r\nMobile Phone: +84 904427580\r\n</span>[/vc_column_text][contact-form-7 id=\"43\"][/vc_column][/vc_row]', 'Contact us', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-07-14 15:04:22', '2019-07-14 15:04:22', '', 40, 'http://localhost/wp/models/40-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-07-14 15:05:51', '2019-07-14 15:05:51', '[vc_row css=\".vc_custom_1563073767866{margin-top: 60px !important;}\"][vc_column width=\"1/4\"][/vc_column][vc_column width=\"3/4\"][vc_column_text]\r\n<table style=\"max-width: 100%;\" width=\"677\">\r\n<tbody>\r\n<tr>\r\n<td><span style=\"font-size: medium;\"><strong>Contact Us:</strong></span></td>\r\n</tr>\r\n<tr>\r\n<td><strong><span style=\"font-size: larger;\">Address: Unit 1003 - 10th Floor - Ford Building - No. 105 Lang Ha street - Ha Noi - Vietnam\r\nTel: +844 66700246\r\nEmail: info@tay-models.com </span></strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<strong>\r\nBooking department </strong>\r\nAlex Tuong-Lan Pham\r\nEmail: alex.pham@tay-models.com\r\nMobile phone: +84 986 849899\r\n\r\n<strong>\r\n</strong><span style=\"font-size: larger;\"><strong>Scouting department </strong></span><span style=\"font-size: larger;\">\r\nVinh Pham\r\nEmail: vinh.pham@tay-models.com\r\nMobile Phone: +84 904427580\r\n</span>[/vc_column_text][contact-form-7 id=\"43\"][/vc_column][/vc_row]', 'Contact us', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-07-14 15:05:51', '2019-07-14 15:05:51', '', 40, 'http://localhost/wp/models/40-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2019-07-14 15:08:16', '2019-07-14 15:08:16', '<div class=\"frmContact contact-form\" id=\"frmContact\" name=\"frmContact\" method=\"post\" action=\"\" novalidate=\"novalidate\">\r\n	<p>\r\n		<label for=\"email\" class=\"required\">Email&nbsp;<font color=\"red\">*</font>&nbsp;</label>[email* your-email id:email class:input]\r\n	</p>\r\n	<p>\r\n		<label for=\"name\" class=\"required\">Name&nbsp;<font color=\"red\">*</font>&nbsp;</label>[text* your-name id:name class:input]\r\n	</p>\r\n	<p style=\"width: 160px; float:left\">\r\n		<label for=\"address\" class=\"required\">Recapcha &nbsp;<font color=\"red\">*</font>&nbsp;</label><span class=\"recapcha\">[recaptcha]</span>\r\n	</p>\r\n	<p style=\"width: 100%; padding: 15px 0; margin-bottom: 60px;\">\r\n                [submit class:button value\'Send\']		\r\n	</p>\r\n</div>\n1\nModels \"[your-subject]\"\n[your-name] <wordpress@localhost>\nthoweb.demo@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Models (http://localhost/wp/models)\nReply-To: [your-email]\n\n\n\n\nModels \"[your-subject]\"\nModels <wordpress@localhost>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Models (http://localhost/wp/models)\nReply-To: thoweb.demo@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'News letter form', '', 'publish', 'closed', 'closed', '', 'news-letter-form', '', '', '2019-07-14 15:08:16', '2019-07-14 15:08:16', '', 0, 'http://localhost/wp/models/?post_type=wpcf7_contact_form&p=51', 0, 'wpcf7_contact_form', '', 0),
(52, 1, '2019-07-14 15:09:02', '2019-07-14 15:09:02', '[vc_row css=\".vc_custom_1563117041461{margin-top: 60px !important;}\"][vc_column width=\"1/4\"][models_menu_about_left][/vc_column][vc_column width=\"3/4\"][vc_column_text]\r\n<h2>NEWSLETTER SIGN-UP</h2>\r\nSubscribe to Taymodels\' weekly e-mail newsletter and the newsletter is currently available in English.[/vc_column_text][contact-form-7 id=\"51\"][/vc_column][/vc_row]', 'Newsletter', '', 'publish', 'closed', 'closed', '', 'newsletter', '', '', '2019-07-18 17:13:13', '2019-07-18 17:13:13', '', 0, 'http://localhost/wp/models/?page_id=52', 0, 'page', '', 0),
(53, 1, '2019-07-14 15:09:02', '2019-07-14 15:09:02', '[vc_row][vc_column width=\"1/4\"][/vc_column][vc_column width=\"3/4\"][contact-form-7 id=\"51\"][/vc_column][/vc_row]', 'Newsletter', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-07-14 15:09:02', '2019-07-14 15:09:02', '', 52, 'http://localhost/wp/models/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-07-14 15:10:32', '2019-07-14 15:10:32', '[vc_row][vc_column width=\"1/4\"][/vc_column][vc_column width=\"3/4\"][vc_column_text]\r\n<h2>NEWSLETTER SIGN-UP</h2>\r\nSubscribe to Taymodels\' weekly e-mail newsletter and the newsletter is currently available in English.[/vc_column_text][contact-form-7 id=\"51\"][/vc_column][/vc_row]', 'Newsletter', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-07-14 15:10:32', '2019-07-14 15:10:32', '', 52, 'http://localhost/wp/models/52-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-07-14 15:10:44', '2019-07-14 15:10:44', '[vc_row css=\".vc_custom_1563117041461{margin-top: 60px !important;}\"][vc_column width=\"1/4\"][/vc_column][vc_column width=\"3/4\"][vc_column_text]\r\n<h2>NEWSLETTER SIGN-UP</h2>\r\nSubscribe to Taymodels\' weekly e-mail newsletter and the newsletter is currently available in English.[/vc_column_text][contact-form-7 id=\"51\"][/vc_column][/vc_row]', 'Newsletter', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-07-14 15:10:44', '2019-07-14 15:10:44', '', 52, 'http://localhost/wp/models/52-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-07-14 15:19:38', '2019-07-14 15:19:38', '[vc_row css=\".vc_custom_1563117575655{margin-top: 60px !important;margin-bottom: 60px !important;}\"][vc_column width=\"1/4\"][models_menu_academy_left][/vc_column][vc_column width=\"3/4\"][vc_column_text]<strong>Address: Unit 1003 - 10th Floor - Ford Building - No. 105 Lang Ha street - Ha Noi - Vietnam\r\nTel: +844 66700246\r\nEmail: info@tay-models.com</strong>[/vc_column_text][contact-form-7 id=\"58\"][/vc_column][/vc_row]', 'How to apply', '', 'publish', 'closed', 'closed', '', 'how-to-apply', '', '', '2019-07-18 16:52:35', '2019-07-18 16:52:35', '', 0, 'http://localhost/wp/models/?page_id=56', 0, 'page', '', 0),
(57, 1, '2019-07-14 15:19:38', '2019-07-14 15:19:38', '[vc_row css=\".vc_custom_1563117575655{margin-top: 60px !important;margin-bottom: 60px !important;}\"][vc_column width=\"1/4\"][/vc_column][vc_column width=\"3/4\"][vc_column_text]<strong>Address: Unit 1003 - 10th Floor - Ford Building - No. 105 Lang Ha street - Ha Noi - Vietnam\r\nTel: +844 66700246\r\nEmail: info@tay-models.com</strong>[/vc_column_text][/vc_column][/vc_row]', 'How to apply', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-07-14 15:19:38', '2019-07-14 15:19:38', '', 56, 'http://localhost/wp/models/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-07-14 15:24:33', '2019-07-14 15:24:33', '<div class=\"frmContact contact-form\" id=\"frmContact\" name=\"frmContact\" method=\"post\" action=\"\" novalidate=\"novalidate\">\r\n	<p>\r\n		<label for=\"name\" class=\"required\">Full name/Họ tên&nbsp;<font color=\"red\">*</font>&nbsp;</label>[text* your-name id:name class:input]\r\n	</p>\r\n        <p>\r\n		<label for=\"name\" class=\"required\">D.O.P/Ngày sinh&nbsp;<font color=\"red\">*</font>&nbsp;</label>[date* your-date id:date class:input]\r\n	</p>\r\n        <p>\r\n		<label for=\"phone\" class=\"required\">Phone number/Số điện thoại&nbsp;<font color=\"red\">*</font>&nbsp;</label>[tel* your-phone id:phone class:input]\r\n	</p>\r\n        <p>\r\n		<label for=\"address\">Address/Địa chỉ</label>[text your-address id:address class:input]\r\n	</p>\r\n	<p>\r\n		<label for=\"email\" class=\"required\">Email&nbsp;<font color=\"red\">*</font>&nbsp;</label>[email* your-email id:email class:input]\r\n	</p>\r\n	\r\n	<p>\r\n		<label for=\"occupation\">Occupation/Nghề nghiệp</label>[text your-occupation id:company_ class:input]\r\n	</p>\r\n	<p>\r\n		<label for=\"message\" class=\"required\">Course/Khóa học&nbsp;<font color=\"red\">*</font>&nbsp;</label>[select* menu-course id:course class:input \"-Please select the course of your choice/Lựa chọn khóa học-\" \"K - MODELS\" \"B - MODELS\" \"I - MODELS\"]\r\n	</p>\r\n	<p style=\"width: 160px; float:left\">\r\n		<label for=\"address\" class=\"required\">Recapcha &nbsp;<font color=\"red\">*</font>&nbsp;</label><span class=\"recapcha\">[recaptcha]</span>\r\n	</p>\r\n	<p style=\"width: 100%; padding: 15px 0; margin-bottom: 60px;\">\r\n                [submit class:button value\'Send\']		\r\n	</p>\r\n</div>\n1\nModels \"[your-subject]\"\n[your-name] <wordpress@localhost>\nthoweb.demo@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Models (http://localhost/wp/models)\nReply-To: [your-email]\n\n\n\n\nModels \"[your-subject]\"\nModels <wordpress@localhost>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Models (http://localhost/wp/models)\nReply-To: thoweb.demo@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'How to apply form', '', 'publish', 'closed', 'closed', '', 'how-to-apply-form', '', '', '2019-07-14 15:32:12', '2019-07-14 15:32:12', '', 0, 'http://localhost/wp/models/?post_type=wpcf7_contact_form&#038;p=58', 0, 'wpcf7_contact_form', '', 0),
(59, 1, '2019-07-14 15:24:56', '2019-07-14 15:24:56', '[vc_row css=\".vc_custom_1563117575655{margin-top: 60px !important;margin-bottom: 60px !important;}\"][vc_column width=\"1/4\"][/vc_column][vc_column width=\"3/4\"][vc_column_text]<strong>Address: Unit 1003 - 10th Floor - Ford Building - No. 105 Lang Ha street - Ha Noi - Vietnam\r\nTel: +844 66700246\r\nEmail: info@tay-models.com</strong>[/vc_column_text][contact-form-7 id=\"58\"][/vc_column][/vc_row]', 'How to apply', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-07-14 15:24:56', '2019-07-14 15:24:56', '', 56, 'http://localhost/wp/models/56-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2019-07-14 13:50:14', '2019-07-14 13:50:14', '', 'ALEKSANDRA', '', 'publish', 'closed', 'closed', '', 'aleksandra', '', '', '2019-07-16 06:58:34', '2019-07-16 06:58:34', '', 0, 'http://localhost/wp/models/?post_type=images&#038;p=46', 0, 'images', '', 0),
(65, 1, '2019-07-15 01:29:56', '2019-07-15 01:29:56', '', '1379089105_officialwithborder', '', 'inherit', 'open', 'closed', '', '1379089105_officialwithborder', '', '', '2019-07-15 01:29:56', '2019-07-15 01:29:56', '', 5, 'http://localhost/wp/models/wp-content/uploads/2019/07/1379089105_officialwithborder.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2019-07-15 01:30:14', '2019-07-15 01:30:14', '', '1543475906_1449134956_1', '', 'inherit', 'open', 'closed', '', '1543475906_1449134956_1', '', '', '2019-07-15 01:30:14', '2019-07-15 01:30:14', '', 5, 'http://localhost/wp/models/wp-content/uploads/2019/07/1543475906_1449134956_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2019-07-15 01:30:19', '2019-07-15 01:30:19', '<p>[vc_row][vc_column][models_home_s_banner title=\"Women\" url=\"#\" img=\"65\"][/vc_column][/vc_row][vc_row][vc_column][models_home_s_body][/vc_column][/vc_row]</p>\n', 'Home', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2019-07-15 01:30:19', '2019-07-15 01:30:19', '', 5, 'http://localhost/wp/models/5-autosave-v1/', 0, 'revision', '', 0),
(68, 1, '2019-07-15 01:30:45', '2019-07-15 01:30:45', '', '1543475899_1420865346_w1', '', 'inherit', 'open', 'closed', '', '1543475899_1420865346_w1', '', '', '2019-07-15 01:30:45', '2019-07-15 01:30:45', '', 5, 'http://localhost/wp/models/wp-content/uploads/2019/07/1543475899_1420865346_w1.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2019-07-15 01:31:28', '2019-07-15 01:31:28', '[vc_row][vc_column][models_home_s_banner title=\"Women\" url=\"#\" img=\"65\"][/vc_column][/vc_row][vc_row][vc_column][models_home_s_body content_view=\"%5B%7B%22img%22%3A%2266%22%2C%22link%22%3A%2222%22%7D%2C%7B%22img%22%3A%2268%22%2C%22link%22%3A%2223%22%7D%2C%7B%22img%22%3A%2215%22%2C%22link%22%3A%2224%22%7D%2C%7B%22img%22%3A%2224%22%2C%22link%22%3A%22images%22%7D%5D\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-15 01:31:28', '2019-07-15 01:31:28', '', 5, 'http://localhost/wp/models/5-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-07-15 07:22:04', '2019-07-15 07:22:04', '', 'ALENA', '', 'publish', 'closed', 'closed', '', 'aleksandra-copy', '', '', '2019-07-15 07:22:04', '2019-07-15 07:22:04', '', 0, 'http://localhost/wp/models/models/aleksandra-copy/', 0, 'models', '', 0),
(71, 1, '2019-07-15 07:22:20', '2019-07-15 07:22:20', '', 'ALENA', '', 'publish', 'closed', 'closed', '', 'aleksandra-copy-2', '', '', '2019-07-15 07:22:20', '2019-07-15 07:22:20', '', 0, 'http://localhost/wp/models/models/aleksandra-copy-2/', 0, 'models', '', 0),
(72, 1, '2019-07-15 07:22:28', '2019-07-15 07:22:28', '', 'ALENA', '', 'publish', 'closed', 'closed', '', 'aleksandra-copy-3', '', '', '2019-07-15 07:22:28', '2019-07-15 07:22:28', '', 0, 'http://localhost/wp/models/models/aleksandra-copy-3/', 0, 'models', '', 0),
(73, 1, '2019-07-15 07:22:35', '2019-07-15 07:22:35', '', 'ALENA', '', 'publish', 'closed', 'closed', '', 'aleksandra-copy-4', '', '', '2019-07-15 07:22:35', '2019-07-15 07:22:35', '', 0, 'http://localhost/wp/models/models/aleksandra-copy-4/', 0, 'models', '', 0),
(74, 1, '2019-07-15 07:22:40', '2019-07-15 07:22:40', '', 'ALENA', '', 'publish', 'closed', 'closed', '', 'aleksandra-copy-5', '', '', '2019-07-15 07:22:40', '2019-07-15 07:22:40', '', 0, 'http://localhost/wp/models/models/aleksandra-copy-5/', 0, 'models', '', 0),
(75, 1, '2019-07-15 07:22:46', '2019-07-15 07:22:46', '', 'ALENA', '', 'publish', 'closed', 'closed', '', 'aleksandra-copy-6', '', '', '2019-07-15 07:22:46', '2019-07-15 07:22:46', '', 0, 'http://localhost/wp/models/models/aleksandra-copy-6/', 0, 'models', '', 0),
(76, 1, '2019-07-15 07:22:54', '2019-07-15 07:22:54', '', 'ALENA', '', 'publish', 'closed', 'closed', '', 'aleksandra-copy-7', '', '', '2019-07-15 16:46:41', '2019-07-15 16:46:41', '', 0, 'http://localhost/wp/models/models/aleksandra-copy-7/', 0, 'models', '', 0),
(77, 1, '2019-07-15 14:18:35', '2019-07-15 14:18:35', '[vc_row css=\".vc_custom_1563203978251{margin-top: 60px !important;margin-bottom: 60px !important;}\"][vc_column width=\"1/4\"][models_menu_service_left][/vc_column][vc_column width=\"3/4\"][vc_column_text]Register to be a model[/vc_column_text][contact-form-7 id=\"79\"][/vc_column][/vc_row]', 'Be a model', '', 'publish', 'closed', 'closed', '', 'be-a-model', '', '', '2019-07-18 16:19:36', '2019-07-18 16:19:36', '', 0, 'http://localhost/wp/models/?page_id=77', 0, 'page', '', 0),
(78, 1, '2019-07-15 14:18:35', '2019-07-15 14:18:35', '[vc_row][vc_column width=\"1/4\"][/vc_column][vc_column width=\"3/4\"][/vc_column][/vc_row]', 'Be a model', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2019-07-15 14:18:35', '2019-07-15 14:18:35', '', 77, 'http://localhost/wp/models/77-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(79, 1, '2019-07-15 14:31:00', '2019-07-15 14:31:00', '<div class=\"frmRegister contact-form\" id=\"frmRegister\" name=\"frmRegister\" method=\"post\" action=\"\" enctype=\"multipart/form-data\" novalidate=\"novalidate\">\r\n		<div class=\"step1\">\r\n			<h2>Step 1</h2>\r\n			<p>\r\n				<label for=\"email\" class=\"required\">Email&nbsp;<font color=\"red\">*</font>&nbsp;</label>\r\n				[email* your-email id:email class:input]\r\n			</p>\r\n			<p>\r\n				<label for=\"firstname\" class=\"required\">First name&nbsp;<font color=\"red\">*</font>&nbsp;</label>\r\n                                [text* your-firstname id:firstname class:input]\r\n			</p>\r\n			<p>\r\n				<label for=\"lastname\" class=\"required\">Last name&nbsp;<font color=\"red\">*</font>&nbsp;</label>\r\n                                [text* your-lastname id:lastname class:input]\r\n			</p>\r\n			<p>\r\n				<label for=\"address\" class=\"required\">Address&nbsp;<font color=\"red\">*</font>&nbsp;</label>\r\n                                [text* your-address id:address class:input]\r\n			</p>\r\n			<p>\r\n				<label for=\"phone\" class=\"required\">Phone&nbsp;<font color=\"red\">*</font>&nbsp;</label>\r\n                                [text* your-phone id:phone class:input]\r\n			</p>\r\n			<p>\r\n				<label for=\"mobile\">Mobile</label>\r\n                                [tel your-mobile id:mobile class:input]\r\n			</p>\r\n			<p>\r\n				<label for=\"country\" class=\"required\">Country&nbsp;<font color=\"red\">*</font>&nbsp;</label>\r\n				[select* menu-179 id:country class:input \"Việt Nam\" \"Afghanistan\" \"Albania\" \"Algeria\" \"American Samoa\" \"Andorra\" \"Angola\" \"Anguilla\" \"Antarctica\" \"Antigua and Barbuda\" \"Argentina\" \"Armenia\" \"Aruba\" \"Australia\" \"Austria\" \"Azerbaijan\" \"Bahamas\" \"Bahrain\" \"Bangladesh\" \"Barbados\" \"Belarus\" \"Belgium\" \"Belize\" \"Benin\" \"Bermuda\" \"Bhutan\" \"Bolivia\" \"Bosnia and Herzegovina\" \"Botswana\" \"Bouvet Island\" \"Brazil\" \"British Indian Ocean Territory\" \"British Virgin Islands\" \"Brunei\" \"Bulgaria\" \"Burkina Faso\" \"Burundi\" \"Cambodia\" \"Cameroon\" \"Canada\" \"Cape Verde\" \"Cayman Islands\" \"Central African Republic\" \"Chad\" \"Chile\" \"China\" \"Christmas Island\" \"Cocos Islands\" \"Colombia\" \"Comoros\" \"Congo\" \"Cook Islands\" \"Costa Rica\" \"Croatia\" \"Cuba\" \"Cyprus\" \"Czech Republic\" \"Denmark\" \"Djibouti\" \"Dominica\" \"Dominican Republic\" \"East Timor\" \"Ecuador\" \"Egypt\" \"El Salvador\" \"Equatorial Guinea\" \"Eritrea\" \"Estonia\" \"Ethiopia\" \"Falkland Islands\" \"Faroe Islands\" \"Fiji\" \"Finland\" \"France\" \"French Guiana\" \"French Polynesia\" \"French Southern Territories\" \"Gabon\" \"Gambia\" \"Georgia\" \"Germany\" \"Ghana\" \"Gibraltar\" \"Greece\" \"Greenland\" \"Grenada\" \"Guadeloupe\" \"Guam\" \"Guatemala\" \"Guinea\" \"Guinea-Bissau\" \"Guyana\" \"Haiti\" \"Heard and McDonald Islands\" \"Honduras\" \"Hong Kong\" \"Hungary\" \"Iceland\" \"India\" \"Indonesia\" \"Iran\" \"Iraq\" \"Ireland\" \"Israel\" \"Italy\" \"Ivory Coast\" \"Jamaica\" \"Japan\" \"Jordan\" \"Kazakhstan\" \"Kenya\" \"Kiribati\" \"Korea, North\" \"Korea, South\" \"Kuwait\" \"Kyrgyzstan\" \"Laos\" \"Latvia\" \"Lebanon\" \"Lesotho\" \"Liberia\" \"Libya\" \"Liechtenstein\" \"Lithuania\" \"Luxembourg\" \"Macau\" \"Macedonia, Former Yugoslav Republic of\" \"Madagascar\" \"Malawi\" \"Malaysia\" \"Maldives\" \"Mali\" \"Malta\" \"Marshall Islands\" \"Martinique\" \"Mauritania\" \"Mauritius\" \"Mayotte\" \"Mexico\" \"Micronesia, Federated States of\" \"Moldova\" \"Monaco\" \"Mongolia\" \"Montserrat\" \"Morocco\" \"Mozambique\" \"Myanmar\" \"Namibia\" \"Nauru\" \"Nepal\" \"Netherlands\" \"Netherlands Antilles\" \"New Caledonia\" \"New Zealand\" \"Nicaragua\" \"Niger\" \"Nigeria\" \"Niue\" \"Norfolk Island\" \"Northern Mariana Islands\" \"Norway\" \"Oman\" \"Pakistan\" \"Palau\" \"Panama\" \"Papua New Guinea\" \"Paraguay\" \"Peru\" \"Philippines\" \"Pitcairn Island\" \"Poland\" \"Portugal\" \"Puerto Rico\" \"Qatar\" \"Reunion\" \"Romania\" \"Russia\" \"Rwanda\" \"S. Georgia and S. Sandwich Isls.\" \"Saint Kitts & Nevis\" \"Saint Lucia\" \"Saint Vincent and The Grenadines\" \"Samoa\" \"San Marino\" \"Sao Tome and Principe\" \"Saudi Arabia\" \"Senegal\" \"Seychelles\" \"Sierra Leone\" \"Singapore\" \"Slovakia\" \"Slovenia\" \"Somalia\" \"South Africa\" \"Spain\" \"Sri Lanka\" \"St. Helena\" \"St. Pierre and Miquelon\" \"Sudan\" \"Suriname\" \"Svalbard and Jan Mayen Islands\" \"Swaziland\" \"Sweden\" \"Switzerland\" \"Syria\" \"Taiwan\" \"Tajikistan\" \"Tanzania\" \"Thailand\" \"Togo\" \"Tokelau\" \"Tonga\" \"Trinidad and Tobago\" \"Tunisia\" \"Turkey\" \"Turkmenistan\" \"Turks and Caicos Islands\" \"Tuvalu\" \"U.S. Minor Outlying Islands\" \"Uganda\" \"Ukraine\" \"United Arab Emirates\" \"United Kingdom\" \"United States of America\" \"Uruguay\" \"Uzbekistan\" \"Vanuatu\" \"Vatican City\" \"Venezuela\" \"Virgin Islands\" \"Wallis and Futuna Islands\" \"Western Sahara\" \"Yemen\" \"Yugoslavia (Former)\" \"Zaire\" \"Zambia\" \"Zimbabwe\"]\r\n			</p>\r\n		</div>\r\n		<div class=\"step2\">\r\n			<h2>Step 2</h2>\r\n			<p>\r\n				<label for=\"info\">Info</label>\r\n                                [textarea* your-message id:info class:input]\r\n			</p>\r\n			<p>\r\n				<label for=\"height\" class=\"required\">Height&nbsp;<font color=\"red\">*</font>&nbsp;</label>\r\n                                [select* menu-height id:height class:input \"--\" \"160cm\" \"161cm\" \"162cm\" \"163cm\" \"164cm\" \"165cm\" \"166cm\" \"167cm\" \"168cm\" \"169cm\" \"170cm\" \"171cm\"]\r\n			</p>\r\n			<p>\r\n				<label for=\"weight\" class=\"required\">Weight&nbsp;<font color=\"red\">*</font>&nbsp;</label>\r\n                                [select* menu-weight id:weight class:input \"--\" \"40 kg\" \"50 kg\" \"60 kg\"]\r\n			</p>\r\n			<p>\r\n				<label for=\"dress\">Dress</label>\r\n                                [select* menu-dress id:dress class:input \"--\" \"0\" \"2\" \"4\"]\r\n			</p>\r\n			<p>\r\n				<label for=\"chest\" class=\"required\">Chest&nbsp;<font color=\"red\">*</font>&nbsp;</label>\r\n                                [select* menu-chest id:chest class:input \"--\" \"70 cm\" \"72 cm\"]\r\n			</p>\r\n			<p>\r\n				<label for=\"hips\" class=\"required\">Hips&nbsp;<font color=\"red\">*</font>&nbsp;</label>\r\n                                [select* menu-hips id:hips class:input \"--\" \"76 cm\" \"77 cm\"]        \r\n			</p>\r\n			<p>\r\n				<label for=\"waist\" class=\"required\">Waist&nbsp;<font color=\"red\">*</font>&nbsp;</label>\r\n                                [select* menu-waist id:waist class:input \"--\" \"50 cm\" \"51 cm\"]\r\n			</p>\r\n			<p>\r\n				<label for=\"shoe\" class=\"required\">Shoe&nbsp;<font color=\"red\">*</font>&nbsp;</label>\r\n                                [select* menu-shoe id:shoe class:input \"--\" \"34 cm\" \"35 cm\"]\r\n			</p>\r\n			<p>\r\n				<label for=\"eyecolor\" class=\"required\">Eye color&nbsp;<font color=\"red\">*</font>&nbsp;</label>\r\n                                [select* menu-eyecolor id:eyecolor class:input \"--\" \"Blue\" \"Black\"]\r\n			</p>\r\n			<p>\r\n				<label for=\"haircolor\" class=\"required\">Hair color&nbsp;<font color=\"red\">*</font>&nbsp;</label>\r\n                                [select* menu-haircolor id:haircolor class:input \"--\" \"Auburn\" \"Blonde\"]\r\n			</p>\r\n						\r\n		</div>\r\n		<div class=\"step3\">\r\n			<h2>Step 3</h2>\r\n			<p>\r\n				<label>Photo</label>\r\n				</p><div style=\"\">\r\n                                        <p>[file file-1 id:file-1 class:input]</p>\r\n                                        <div id=\"photo_browse_1\"></div>\r\n                                        <p>[file file-2 id:file-2 class:input]</p>\r\n                                        <div id=\"photo_browse_2\"></div>\r\n                                        <p>[file file-3 id:file-3 class:input]</p>\r\n                                        <div id=\"photo_browse_3\"></div>\r\n					<p>[file file-4 id:file-4 class:input]</p>\r\n                                        <div id=\"photo_browse_4\"></div>\r\n				</div>\r\n				<div class=\"clb\"></div>\r\n		</div>\r\n		<p style=\"width: 160px; float:left\">\r\n		<label for=\"address\" class=\"required\">Recapcha &nbsp;<font color=\"red\">*</font>&nbsp;</label><span class=\"recapcha\">[recaptcha]</span>\r\n	</p>\r\n	<p style=\"width: 100%; padding: 15px 0; margin-bottom: 60px; float:left\">\r\n                [submit class:button value\'Send\']		\r\n	</p>\r\n	</div>\n1\nModels \"[your-subject]\"\n[your-name] <wordpress@localhost>\nthoweb.demo@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Models (http://localhost/wp/models)\nReply-To: [your-email]\n\n\n\n\nModels \"[your-subject]\"\nModels <wordpress@localhost>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Models (http://localhost/wp/models)\nReply-To: thoweb.demo@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Be a model form', '', 'publish', 'closed', 'closed', '', 'be-a-model-form', '', '', '2019-07-15 15:21:34', '2019-07-15 15:21:34', '', 0, 'http://localhost/wp/models/?post_type=wpcf7_contact_form&#038;p=79', 0, 'wpcf7_contact_form', '', 0),
(80, 1, '2019-07-15 14:31:23', '2019-07-15 14:31:23', '[vc_row][vc_column width=\"1/4\"][/vc_column][vc_column width=\"3/4\"][contact-form-7 id=\"79\"][/vc_column][/vc_row]', 'Be a model', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2019-07-15 14:31:23', '2019-07-15 14:31:23', '', 77, 'http://localhost/wp/models/77-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2019-07-15 15:19:39', '2019-07-15 15:19:39', '<p>[vc_row css=\".vc_custom_1563203978251{margin-top: 60px !important;margin-bottom: 60px !important;}\"][vc_column width=\"1/4\"][/vc_column][vc_column width=\"3/4\"][vc_column_text]Register to be a model[/vc_column_text][contact-form-7 id=\"79\"][/vc_column][/vc_row]</p>\n', 'Be a model', '', 'inherit', 'closed', 'closed', '', '77-autosave-v1', '', '', '2019-07-15 15:19:39', '2019-07-15 15:19:39', '', 77, 'http://localhost/wp/models/77-autosave-v1/', 0, 'revision', '', 0),
(82, 1, '2019-07-15 15:19:46', '2019-07-15 15:19:46', '[vc_row css=\".vc_custom_1563203978251{margin-top: 60px !important;margin-bottom: 60px !important;}\"][vc_column width=\"1/4\"][/vc_column][vc_column width=\"3/4\"][vc_column_text]Register to be a model[/vc_column_text][contact-form-7 id=\"79\"][/vc_column][/vc_row]', 'Be a model', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2019-07-15 15:19:46', '2019-07-15 15:19:46', '', 77, 'http://localhost/wp/models/77-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2019-07-16 07:39:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-16 07:39:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/models/?p=85', 1, 'nav_menu_item', '', 0),
(86, 1, '2019-07-16 07:39:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-16 07:39:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/models/?p=86', 1, 'nav_menu_item', '', 0),
(87, 1, '2019-07-16 07:39:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-16 07:39:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/models/?p=87', 1, 'nav_menu_item', '', 0),
(89, 1, '2019-07-16 07:39:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-16 07:39:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/models/?p=89', 1, 'nav_menu_item', '', 0),
(90, 1, '2019-07-16 07:39:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-16 07:39:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/models/?p=90', 1, 'nav_menu_item', '', 0),
(91, 1, '2019-07-16 07:39:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-16 07:39:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/models/?p=91', 1, 'nav_menu_item', '', 0),
(92, 1, '2019-07-16 07:39:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-16 07:39:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/models/?p=92', 1, 'nav_menu_item', '', 0),
(93, 1, '2019-07-16 07:39:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-16 07:39:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/models/?p=93', 1, 'nav_menu_item', '', 0),
(94, 1, '2019-07-16 07:39:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-16 07:39:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/models/?p=94', 1, 'nav_menu_item', '', 0),
(95, 1, '2019-07-16 07:46:27', '2019-07-16 07:46:27', ' ', '', '', 'publish', 'closed', 'closed', '', '95', '', '', '2019-07-19 09:59:35', '2019-07-19 09:59:35', '', 0, 'http://localhost/wp/models/?p=95', 1, 'nav_menu_item', '', 0),
(96, 1, '2019-07-16 07:46:28', '2019-07-16 07:46:28', ' ', '', '', 'publish', 'closed', 'closed', '', '96', '', '', '2019-07-19 09:59:35', '2019-07-19 09:59:35', '', 22, 'http://localhost/wp/models/?p=96', 3, 'nav_menu_item', '', 0),
(97, 1, '2019-07-16 07:46:27', '2019-07-16 07:46:27', ' ', '', '', 'publish', 'closed', 'closed', '', '97', '', '', '2019-07-19 09:59:35', '2019-07-19 09:59:35', '', 22, 'http://localhost/wp/models/?p=97', 2, 'nav_menu_item', '', 0),
(98, 1, '2019-07-16 07:46:28', '2019-07-16 07:46:28', ' ', '', '', 'publish', 'closed', 'closed', '', '98', '', '', '2019-07-19 09:59:35', '2019-07-19 09:59:35', '', 0, 'http://localhost/wp/models/?p=98', 4, 'nav_menu_item', '', 0),
(99, 1, '2019-07-16 07:46:28', '2019-07-16 07:46:28', ' ', '', '', 'publish', 'closed', 'closed', '', '99', '', '', '2019-07-19 09:59:35', '2019-07-19 09:59:35', '', 23, 'http://localhost/wp/models/?p=99', 5, 'nav_menu_item', '', 0),
(100, 1, '2019-07-16 07:46:28', '2019-07-16 07:46:28', ' ', '', '', 'publish', 'closed', 'closed', '', '100', '', '', '2019-07-19 09:59:35', '2019-07-19 09:59:35', '', 23, 'http://localhost/wp/models/?p=100', 6, 'nav_menu_item', '', 0),
(101, 1, '2019-07-16 07:46:28', '2019-07-16 07:46:28', ' ', '', '', 'publish', 'closed', 'closed', '', '101', '', '', '2019-07-19 09:59:35', '2019-07-19 09:59:35', '', 0, 'http://localhost/wp/models/?p=101', 7, 'nav_menu_item', '', 0),
(102, 1, '2019-07-16 07:46:28', '2019-07-16 07:46:28', ' ', '', '', 'publish', 'closed', 'closed', '', '102', '', '', '2019-07-19 09:59:35', '2019-07-19 09:59:35', '', 24, 'http://localhost/wp/models/?p=102', 8, 'nav_menu_item', '', 0),
(103, 1, '2019-07-16 07:46:28', '2019-07-16 07:46:28', ' ', '', '', 'publish', 'closed', 'closed', '', '103', '', '', '2019-07-19 09:59:35', '2019-07-19 09:59:35', '', 24, 'http://localhost/wp/models/?p=103', 9, 'nav_menu_item', '', 0),
(104, 1, '2019-07-16 07:46:28', '2019-07-16 07:46:28', '', 'Images', '', 'publish', 'closed', 'closed', '', 'images', '', '', '2019-07-19 09:59:35', '2019-07-19 09:59:35', '', 0, 'http://localhost/wp/models/?p=104', 10, 'nav_menu_item', '', 0),
(105, 1, '2019-07-16 07:46:28', '2019-07-16 07:46:28', '', 'Artists', '', 'publish', 'closed', 'closed', '', 'artists', '', '', '2019-07-19 09:59:35', '2019-07-19 09:59:35', '', 0, 'http://localhost/wp/models/?p=105', 11, 'nav_menu_item', '', 0),
(110, 1, '2019-07-16 07:46:28', '2019-07-16 07:46:28', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2019-07-19 09:59:35', '2019-07-19 09:59:35', '', 0, 'http://localhost/wp/models/?p=110', 16, 'nav_menu_item', '', 0),
(116, 1, '2019-07-16 07:48:26', '2019-07-16 07:48:26', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-07-19 09:59:36', '2019-07-19 09:59:36', '', 0, 'http://localhost/wp/models/?p=116', 23, 'nav_menu_item', '', 0),
(117, 1, '2019-07-16 07:48:27', '2019-07-16 07:48:27', ' ', '', '', 'publish', 'closed', 'closed', '', '117', '', '', '2019-07-19 09:59:36', '2019-07-19 09:59:36', '', 0, 'http://localhost/wp/models/?p=117', 25, 'nav_menu_item', '', 0),
(118, 1, '2019-07-16 07:48:28', '2019-07-16 07:48:28', ' ', '', '', 'publish', 'closed', 'closed', '', '118', '', '', '2019-07-19 09:59:36', '2019-07-19 09:59:36', '', 0, 'http://localhost/wp/models/?p=118', 29, 'nav_menu_item', '', 0),
(119, 1, '2019-07-16 07:48:27', '2019-07-16 07:48:27', ' ', '', '', 'publish', 'closed', 'closed', '', '119', '', '', '2019-07-19 09:59:36', '2019-07-19 09:59:36', '', 0, 'http://localhost/wp/models/?p=119', 26, 'nav_menu_item', '', 0),
(120, 1, '2019-07-16 07:48:27', '2019-07-16 07:48:27', ' ', '', '', 'publish', 'closed', 'closed', '', '120', '', '', '2019-07-19 09:59:36', '2019-07-19 09:59:36', '', 0, 'http://localhost/wp/models/?p=120', 28, 'nav_menu_item', '', 0),
(121, 1, '2019-07-16 07:48:27', '2019-07-16 07:48:27', ' ', '', '', 'publish', 'closed', 'closed', '', '121', '', '', '2019-07-19 09:59:36', '2019-07-19 09:59:36', '', 0, 'http://localhost/wp/models/?p=121', 24, 'nav_menu_item', '', 0),
(122, 1, '2019-07-16 07:48:27', '2019-07-16 07:48:27', ' ', '', '', 'publish', 'closed', 'closed', '', '122', '', '', '2019-07-19 09:59:36', '2019-07-19 09:59:36', '', 0, 'http://localhost/wp/models/?p=122', 27, 'nav_menu_item', '', 0),
(123, 1, '2019-07-16 07:53:03', '2019-07-16 07:53:03', ' ', '', '', 'publish', 'closed', 'closed', '', '123', '', '', '2019-07-19 09:59:36', '2019-07-19 09:59:36', '', 0, 'http://localhost/wp/models/?p=123', 37, 'nav_menu_item', '', 0),
(125, 1, '2019-07-16 07:53:03', '2019-07-16 07:53:03', ' ', '', '', 'publish', 'closed', 'closed', '', '125', '', '', '2019-07-19 09:59:36', '2019-07-19 09:59:36', '', 0, 'http://localhost/wp/models/?p=125', 31, 'nav_menu_item', '', 0),
(126, 1, '2019-07-16 07:53:03', '2019-07-16 07:53:03', ' ', '', '', 'publish', 'closed', 'closed', '', '126', '', '', '2019-07-19 09:59:36', '2019-07-19 09:59:36', '', 38, 'http://localhost/wp/models/?p=126', 33, 'nav_menu_item', '', 0),
(127, 1, '2019-07-16 07:53:03', '2019-07-16 07:53:03', ' ', '', '', 'publish', 'closed', 'closed', '', '127', '', '', '2019-07-19 09:59:36', '2019-07-19 09:59:36', '', 38, 'http://localhost/wp/models/?p=127', 34, 'nav_menu_item', '', 0),
(128, 1, '2019-07-16 07:53:03', '2019-07-16 07:53:03', ' ', '', '', 'publish', 'closed', 'closed', '', '128', '', '', '2019-07-19 09:59:36', '2019-07-19 09:59:36', '', 38, 'http://localhost/wp/models/?p=128', 32, 'nav_menu_item', '', 0),
(129, 1, '2019-07-16 07:53:03', '2019-07-16 07:53:03', ' ', '', '', 'publish', 'closed', 'closed', '', '129', '', '', '2019-07-19 09:59:36', '2019-07-19 09:59:36', '', 0, 'http://localhost/wp/models/?p=129', 35, 'nav_menu_item', '', 0),
(130, 1, '2019-07-16 07:53:03', '2019-07-16 07:53:03', '', 'Academy', '', 'publish', 'closed', 'closed', '', 'academy', '', '', '2019-07-19 09:59:36', '2019-07-19 09:59:36', '', 0, 'http://localhost/wp/models/?p=130', 30, 'nav_menu_item', '', 0),
(134, 1, '2019-07-16 07:55:26', '2019-07-16 07:55:26', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog-2', '', '', '2019-07-19 09:59:37', '2019-07-19 09:59:37', '', 0, 'http://localhost/wp/models/?p=134', 41, 'nav_menu_item', '', 0),
(138, 1, '2019-07-16 08:26:09', '2019-07-16 08:26:09', '', 'logo-taymodels', '', 'inherit', 'open', 'closed', '', 'logo-taymodels', '', '', '2019-07-16 08:36:26', '2019-07-16 08:36:26', '', 0, 'http://localhost/wp/models/wp-content/uploads/2019/07/logo-taymodels.png', 0, 'attachment', 'image/png', 0),
(140, 1, '2019-07-16 08:39:54', '2019-07-16 08:39:54', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"theme-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Logo mobile', 'logo-mobile', 'publish', 'closed', 'closed', '', 'group_5d2d8d33e19aa', '', '', '2019-07-16 08:41:36', '2019-07-16 08:41:36', '', 0, 'http://localhost/wp/models/?post_type=acf-field-group&#038;p=140', 0, 'acf-field-group', '', 0),
(141, 1, '2019-07-16 08:39:54', '2019-07-16 08:39:54', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo Mobile', 'logo_mobile', 'publish', 'closed', 'closed', '', 'field_5d2d8d3cbac98', '', '', '2019-07-16 08:41:36', '2019-07-16 08:41:36', '', 140, 'http://localhost/wp/models/?post_type=acf-field&#038;p=141', 0, 'acf-field', '', 0),
(142, 1, '2019-07-16 08:40:11', '2019-07-16 08:40:11', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-07-16 08:40:11', '2019-07-16 08:40:11', '', 0, 'http://localhost/wp/models/wp-content/uploads/2019/07/logo.png', 0, 'attachment', 'image/png', 0),
(143, 1, '2019-07-16 09:02:06', '2019-07-16 09:02:06', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us-2', '', '', '2019-07-16 09:02:06', '2019-07-16 09:02:06', '', 0, 'http://localhost/wp/models/?p=143', 1, 'nav_menu_item', '', 0),
(144, 1, '2019-07-16 09:02:06', '2019-07-16 09:02:06', '', 'Be a model', '', 'publish', 'closed', 'closed', '', 'be-a-model', '', '', '2019-07-16 09:02:06', '2019-07-16 09:02:06', '', 0, 'http://localhost/wp/models/?p=144', 2, 'nav_menu_item', '', 0),
(145, 1, '2019-07-16 09:02:06', '2019-07-16 09:02:06', '', 'News letter', '', 'publish', 'closed', 'closed', '', 'news-letter-2', '', '', '2019-07-16 09:02:06', '2019-07-16 09:02:06', '', 0, 'http://localhost/wp/models/?p=145', 3, 'nav_menu_item', '', 0),
(146, 1, '2019-07-16 09:04:25', '2019-07-16 09:04:25', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"theme-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Footer', 'footer', 'publish', 'closed', 'closed', '', 'group_5d2d929e91fd9', '', '', '2019-07-16 09:13:07', '2019-07-16 09:13:07', '', 0, 'http://localhost/wp/models/?post_type=acf-field-group&#038;p=146', 0, 'acf-field-group', '', 0),
(147, 1, '2019-07-16 09:04:25', '2019-07-16 09:04:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Copyright', 'copyright', 'publish', 'closed', 'closed', '', 'field_5d2d92a606e2b', '', '', '2019-07-16 09:04:25', '2019-07-16 09:04:25', '', 146, 'http://localhost/wp/models/?post_type=acf-field&p=147', 0, 'acf-field', '', 0),
(148, 1, '2019-07-16 09:04:25', '2019-07-16 09:04:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'youtube', 'youtube', 'publish', 'closed', 'closed', '', 'field_5d2d92b506e2c', '', '', '2019-07-16 09:04:25', '2019-07-16 09:04:25', '', 146, 'http://localhost/wp/models/?post_type=acf-field&p=148', 1, 'acf-field', '', 0),
(149, 1, '2019-07-16 09:04:25', '2019-07-16 09:04:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_5d2d92db06e2d', '', '', '2019-07-16 09:04:25', '2019-07-16 09:04:25', '', 146, 'http://localhost/wp/models/?post_type=acf-field&p=149', 2, 'acf-field', '', 0),
(150, 1, '2019-07-16 09:04:25', '2019-07-16 09:04:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'twitter', 'twitter', 'publish', 'closed', 'closed', '', 'field_5d2d92f306e2e', '', '', '2019-07-16 09:04:25', '2019-07-16 09:04:25', '', 146, 'http://localhost/wp/models/?post_type=acf-field&p=150', 3, 'acf-field', '', 0),
(151, 1, '2019-07-16 09:04:25', '2019-07-16 09:04:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_5d2d930b06e2f', '', '', '2019-07-16 09:04:25', '2019-07-16 09:04:25', '', 146, 'http://localhost/wp/models/?post_type=acf-field&p=151', 4, 'acf-field', '', 0),
(152, 1, '2019-07-16 09:13:01', '2019-07-16 09:13:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Powered by', 'powered_by', 'publish', 'closed', 'closed', '', 'field_5d2d94fb54e9b', '', '', '2019-07-16 09:13:01', '2019-07-16 09:13:01', '', 146, 'http://localhost/wp/models/?post_type=acf-field&p=152', 5, 'acf-field', '', 0),
(154, 1, '2019-07-16 14:44:11', '2019-07-16 14:44:11', '', 'EMIL BILINSKI', '', 'publish', 'closed', 'closed', '', 'emil-bilinski', '', '', '2019-07-18 06:19:16', '2019-07-18 06:19:16', '', 0, 'http://localhost/wp/models/?post_type=artists&#038;p=154', 0, 'artists', '', 0),
(155, 1, '2019-07-16 15:47:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-16 15:47:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/models/?p=155', 1, 'nav_menu_item', '', 0),
(156, 1, '2019-07-16 15:49:51', '2019-07-16 15:49:51', '', 'About', '', 'publish', 'closed', 'closed', '', 'about-2', '', '', '2019-07-19 09:59:37', '2019-07-19 09:59:37', '', 0, 'http://localhost/wp/models/?p=156', 39, 'nav_menu_item', '', 0),
(157, 1, '2019-07-16 15:49:51', '2019-07-16 15:49:51', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact-2', '', '', '2019-07-19 09:59:36', '2019-07-19 09:59:36', '', 0, 'http://localhost/wp/models/?p=157', 38, 'nav_menu_item', '', 0),
(158, 1, '2019-07-16 15:49:51', '2019-07-16 15:49:51', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us-3', '', '', '2019-07-19 09:59:37', '2019-07-19 09:59:37', '', 0, 'http://localhost/wp/models/?p=158', 40, 'nav_menu_item', '', 0),
(159, 1, '2019-07-16 15:49:52', '2019-07-16 15:49:52', '', 'News letter', '', 'publish', 'closed', 'closed', '', 'news-letter-3', '', '', '2019-07-19 09:59:37', '2019-07-19 09:59:37', '', 0, 'http://localhost/wp/models/?p=159', 44, 'nav_menu_item', '', 0),
(160, 1, '2019-07-16 15:49:50', '2019-07-16 15:49:50', ' ', '', '', 'publish', 'closed', 'closed', '', '160', '', '', '2019-07-19 09:59:36', '2019-07-19 09:59:36', '', 0, 'http://localhost/wp/models/?p=160', 22, 'nav_menu_item', '', 0),
(161, 1, '2019-07-16 15:50:20', '2019-07-16 15:50:20', ' ', '', '', 'publish', 'closed', 'closed', '', '161', '', '', '2019-07-19 09:59:36', '2019-07-19 09:59:36', '', 0, 'http://localhost/wp/models/?p=161', 36, 'nav_menu_item', '', 0),
(162, 1, '2019-07-17 23:19:04', '2019-07-17 23:19:04', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"services_cat\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Services Taxonomy', 'services-taxonomy', 'publish', 'closed', 'closed', '', 'group_5d2facb8a32bc', '', '', '2019-07-17 23:22:25', '2019-07-17 23:22:25', '', 0, 'http://localhost/wp/models/?post_type=acf-field-group&#038;p=162', 0, 'acf-field-group', '', 0),
(163, 1, '2019-07-17 23:19:04', '2019-07-17 23:19:04', 'a:12:{s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:1:{s:4:\"hien\";s:6:\"Hiện\";}s:12:\"allow_custom\";i:0;s:11:\"save_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"value\";}', 'Services left menu', 'services_left_menu', 'publish', 'closed', 'closed', '', 'field_5d2facbb27c36', '', '', '2019-07-17 23:19:04', '2019-07-17 23:19:04', '', 162, 'http://localhost/wp/models/?post_type=acf-field&p=163', 0, 'acf-field', '', 0),
(164, 1, '2019-07-18 13:34:34', '2019-07-18 13:34:34', '', 'Anna Nocon - Giảng viên quốc tế', 'Anna N. – từng là gương mặt trang bìa của tạp chí Vogue, cô đã có kinh nghiệm 10 năm làm người mẫu tại thị trường quốc quốc tế, góp mặt trong Tuần lễ thời trang New York, Milan, Paris, London của các thương hiệu danh tiếng như: Dior, Just Cavalli , Salvatore Ferragamo, Anna Sui, Marc Jacob, Kenzo, .. Ngoài kiến thức về nghề người mẫu, cô tin rằng với trải nghiệm thực tế của mình tại môi trường làm việc đa văn hóa, cô sẽ giúp những người mẫu tương lai hoàn thiện bản thân và phát triển sự nghiệp sau này.', 'publish', 'closed', 'closed', '', 'anna-nocon-giang-vien-quoc-te', '', '', '2019-07-18 15:33:43', '2019-07-18 15:33:43', '', 0, 'http://localhost:8080/wp/models/?post_type=academy&#038;p=164', 0, 'academy', '', 0),
(165, 1, '2019-07-17 07:18:37', '2019-07-17 07:18:37', '<div class=\"brief clb\"></div>\r\n<div class=\"content\">\r\n\r\n&nbsp;\r\n<ul>\r\n 	<li><strong>Creative exchange:</strong> working with us, you will get access to our network of talents to work with you on your demand. Our talents including fashion, music, Tv, cinema and art.</li>\r\n 	<li><strong>Campaign production: </strong>we offer an exclusive package, including on and off set consultation on art direction, photographer and stylist, and makeup/hair artist, graphic designer, to provide an affordable and efficient solution to maximize your business value.</li>\r\n 	<li><strong>Event planning: </strong>our experienced event planning team prodives new, unique and exiting concepts for various types of events, makes sure the event go smoothly and successfully.</li>\r\n 	<li><strong>Marketing counseling</strong>: our company experts combine with many years of experiences to help you create solid and efficient business plans in marketing</li>\r\n</ul>\r\n</div>', 'TAYMODELS SERVICES', 'We offer full-package services from creative exchange to campaign production to event planning and marketing counseling.', 'publish', 'closed', 'closed', '', 'taymodels-services', '', '', '2019-07-18 05:49:00', '2019-07-18 05:49:00', '', 0, 'http://localhost:8080/wp/models/?post_type=services&#038;p=156', 0, 'services', '', 0),
(166, 1, '2019-07-17 23:24:31', '2019-07-17 23:24:31', '', '1383488732_service', '', 'inherit', 'open', 'closed', '', '1383488732_service', '', '', '2019-07-17 23:24:31', '2019-07-17 23:24:31', '', 165, 'http://localhost/wp/models/wp-content/uploads/2019/07/1383488732_service.jpg', 0, 'attachment', 'image/jpeg', 0),
(167, 1, '2019-07-18 05:53:42', '2019-07-18 05:53:42', ' ', '', '', 'publish', 'closed', 'closed', '', '167', '', '', '2019-07-19 09:59:35', '2019-07-19 09:59:35', '', 0, 'http://localhost/wp/models/?p=167', 19, 'nav_menu_item', '', 0),
(168, 1, '2019-07-18 05:53:42', '2019-07-18 05:53:42', ' ', '', '', 'publish', 'closed', 'closed', '', '168', '', '', '2019-07-19 09:59:35', '2019-07-19 09:59:35', '', 0, 'http://localhost/wp/models/?p=168', 21, 'nav_menu_item', '', 0),
(169, 1, '2019-07-18 05:53:42', '2019-07-18 05:53:42', ' ', '', '', 'publish', 'closed', 'closed', '', '169', '', '', '2019-07-19 09:59:35', '2019-07-19 09:59:35', '', 0, 'http://localhost/wp/models/?p=169', 18, 'nav_menu_item', '', 0),
(170, 1, '2019-07-18 05:53:41', '2019-07-18 05:53:41', ' ', '', '', 'publish', 'closed', 'closed', '', '170', '', '', '2019-07-19 09:59:35', '2019-07-19 09:59:35', '', 0, 'http://localhost/wp/models/?p=170', 17, 'nav_menu_item', '', 0),
(171, 1, '2019-07-18 05:53:42', '2019-07-18 05:53:42', ' ', '', '', 'publish', 'closed', 'closed', '', '171', '', '', '2019-07-19 09:59:35', '2019-07-19 09:59:35', '', 0, 'http://localhost/wp/models/?p=171', 20, 'nav_menu_item', '', 0),
(174, 1, '2019-07-18 10:29:24', '2019-07-18 10:29:24', ' ', '', '', 'publish', 'closed', 'closed', '', '174', '', '', '2019-07-19 09:59:35', '2019-07-19 09:59:35', '', 0, 'http://localhost/wp/models/?p=174', 14, 'nav_menu_item', '', 0),
(175, 1, '2019-07-18 10:29:24', '2019-07-18 10:29:24', ' ', '', '', 'publish', 'closed', 'closed', '', '175', '', '', '2019-07-19 09:59:35', '2019-07-19 09:59:35', '', 0, 'http://localhost/wp/models/?p=175', 13, 'nav_menu_item', '', 0),
(176, 1, '2019-07-18 10:29:24', '2019-07-18 10:29:24', ' ', '', '', 'publish', 'closed', 'closed', '', '176', '', '', '2019-07-19 09:59:35', '2019-07-19 09:59:35', '', 0, 'http://localhost/wp/models/?p=176', 12, 'nav_menu_item', '', 0),
(177, 1, '2019-07-18 10:29:24', '2019-07-18 10:29:24', ' ', '', '', 'publish', 'closed', 'closed', '', '177', '', '', '2019-07-19 09:59:35', '2019-07-19 09:59:35', '', 0, 'http://localhost/wp/models/?p=177', 15, 'nav_menu_item', '', 0),
(179, 1, '2019-07-18 14:40:49', '2019-07-18 14:40:49', '', 'Quach Anh - Make up artist', 'Quách Ánh – chuyên gia trang điểm hàng đầu Việt Nam, chị đã có gần 10 năm kinh nghiệm trong nghề. Với khả năng sáng tạo và phong cách make up đa dạng, chị được nhiều nghệ sĩ, thương hiệu thời trang, tạp chí danh tiếng lựa chọn để hợp tác.', 'publish', 'closed', 'closed', '', 'quach-anh-make-up-artist', '', '', '2019-07-18 15:33:08', '2019-07-18 15:33:08', '', 0, 'http://localhost:8080/wp/models/?post_type=academy&#038;p=166', 0, 'academy', '', 0),
(180, 1, '2019-07-18 15:32:59', '2019-07-18 15:32:59', '', '1459925475_anna_nocon__1099', '', 'inherit', 'open', 'closed', '', '1459925475_anna_nocon__1099', '', '', '2019-07-18 15:32:59', '2019-07-18 15:32:59', '', 179, 'http://localhost/wp/models/wp-content/uploads/2019/07/1459925475_anna_nocon__1099.jpg', 0, 'attachment', 'image/jpeg', 0),
(181, 1, '2019-07-18 15:33:36', '2019-07-18 15:33:36', '', '1459916669_monika_beauty', '', 'inherit', 'open', 'closed', '', '1459916669_monika_beauty', '', '', '2019-07-18 15:33:36', '2019-07-18 15:33:36', '', 164, 'http://localhost/wp/models/wp-content/uploads/2019/07/1459916669_monika_beauty.jpg', 0, 'attachment', 'image/jpeg', 0),
(184, 1, '2019-07-18 15:48:57', '2019-07-18 15:48:57', '<div></div>\r\n<div class=\"brief clb\" style=\"text-align: center;\">\r\n\r\n&nbsp;\r\n\r\n</div>\r\n<div>\r\n<p style=\"text-align: center;\"><strong>SANH DIEU MAG, SEPT 2104 ISSUE</strong></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/10494660_691522550932688_3863642463754546189_n.jpg\" alt=\"\" width=\"960\" height=\"658\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10338711_691522507599359_4942422286220768572_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10411089_691522654266011_3576121096548620648_n.jpg\" alt=\"\" width=\"698\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10620513_691522687599341_6386112315515974830_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<img class=\"aligncenter\" src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10645193_691522604266016_9105790372036747379_n.jpg\" alt=\"\" width=\"704\" height=\"960\" />\r\n\r\n</div>', 'THE QUEEN', 'Model: Magda - Photographer: Manhbi - Stylist: Duy Anh - Make up: Cao Tuan Dat - Hair: Gil Nguyen - Designer: Bui Thanh Thuy ', 'publish', 'open', 'open', '', 'the-queen', '', '', '2019-07-19 02:59:13', '2019-07-19 02:59:13', '', 0, 'http://localhost/wp/models/?p=184', 0, 'post', '', 0),
(185, 1, '2019-07-18 15:48:50', '2019-07-18 15:48:50', '', '1409765379_1', '', 'inherit', 'open', 'closed', '', '1409765379_1', '', '', '2019-07-18 15:48:50', '2019-07-18 15:48:50', '', 184, 'http://localhost/wp/models/wp-content/uploads/2019/07/1409765379_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(186, 1, '2019-07-18 15:48:57', '2019-07-18 15:48:57', '<div></div>\r\n<div class=\"brief clb\" style=\"text-align: center;\">\r\n\r\n<strong>Model</strong>: Magda - <strong>Photographer</strong>: Manhbi - <strong>Stylist:</strong> Duy Anh - <strong>Make up</strong>: Cao Tuan Dat - <strong>Hair</strong>: Gil Nguyen - <strong>Designer</strong>: Bui Thanh Thuy<strong>\r\n\r\n</strong>\r\n\r\n</div>\r\n<div>\r\n<p style=\"text-align: center;\"><strong>SANH DIEU MAG, SEPT 2104 ISSUE</strong></p>\r\n<p style=\"text-align: center;\"></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/10494660_691522550932688_3863642463754546189_n.jpg\" alt=\"\" width=\"960\" height=\"658\" /></p>\r\n<p style=\"text-align: center;\"></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10338711_691522507599359_4942422286220768572_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10411089_691522654266011_3576121096548620648_n.jpg\" alt=\"\" width=\"698\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10620513_691522687599341_6386112315515974830_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"></p>\r\n<img class=\"aligncenter\" src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10645193_691522604266016_9105790372036747379_n.jpg\" alt=\"\" width=\"704\" height=\"960\" />\r\n\r\n</div>', 'THE QUEEN', '', 'inherit', 'closed', 'closed', '', '184-revision-v1', '', '', '2019-07-18 15:48:57', '2019-07-18 15:48:57', '', 184, 'http://localhost/wp/models/184-revision-v1/', 0, 'revision', '', 0),
(191, 1, '2019-07-18 16:11:33', '2019-07-18 16:11:33', '<div></div>\r\n<div class=\"brief clb\" style=\"text-align: center;\">\r\n\r\n<strong>Model</strong>: Magda - <strong>Photographer</strong>: Manhbi - <strong>Stylist:</strong> Duy Anh - <strong>Make up</strong>: Cao Tuan Dat - <strong>Hair</strong>: Gil Nguyen - <strong>Designer</strong>: Bui Thanh Thuy<strong>\r\n\r\n</strong>\r\n\r\n</div>\r\n<div>\r\n<p style=\"text-align: center;\"><strong>SANH DIEU MAG, SEPT 2104 ISSUE</strong></p>\r\n<p style=\"text-align: center;\"></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/10494660_691522550932688_3863642463754546189_n.jpg\" alt=\"\" width=\"960\" height=\"658\" /></p>\r\n<p style=\"text-align: center;\"></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10338711_691522507599359_4942422286220768572_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10411089_691522654266011_3576121096548620648_n.jpg\" alt=\"\" width=\"698\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10620513_691522687599341_6386112315515974830_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"></p>\r\n<img class=\"aligncenter\" src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10645193_691522604266016_9105790372036747379_n.jpg\" alt=\"\" width=\"704\" height=\"960\" />\r\n\r\n</div>', 'THE QUEEN', '', 'inherit', 'closed', 'closed', '', '184-revision-v1', '', '', '2019-07-18 16:11:33', '2019-07-18 16:11:33', '', 184, 'http://localhost/wp/models/184-revision-v1/', 0, 'revision', '', 0),
(195, 1, '2019-07-18 16:19:36', '2019-07-18 16:19:36', '[vc_row css=\".vc_custom_1563203978251{margin-top: 60px !important;margin-bottom: 60px !important;}\"][vc_column width=\"1/4\"][models_menu_service_left][/vc_column][vc_column width=\"3/4\"][vc_column_text]Register to be a model[/vc_column_text][contact-form-7 id=\"79\"][/vc_column][/vc_row]', 'Be a model', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2019-07-18 16:19:36', '2019-07-18 16:19:36', '', 77, 'http://localhost/wp/models/77-revision-v1/', 0, 'revision', '', 0),
(198, 1, '2019-07-18 16:21:18', '2019-07-18 16:21:18', '<div></div>\r\n<div class=\"brief clb\" style=\"text-align: center;\">\r\n\r\n&nbsp;\r\n\r\n</div>\r\n<div>\r\n<p style=\"text-align: center;\"><strong>SANH DIEU MAG, SEPT 2104 ISSUE</strong></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/10494660_691522550932688_3863642463754546189_n.jpg\" alt=\"\" width=\"960\" height=\"658\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10338711_691522507599359_4942422286220768572_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10411089_691522654266011_3576121096548620648_n.jpg\" alt=\"\" width=\"698\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10620513_691522687599341_6386112315515974830_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<img class=\"aligncenter\" src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10645193_691522604266016_9105790372036747379_n.jpg\" alt=\"\" width=\"704\" height=\"960\" />\r\n\r\n</div>', 'THE QUEEN', '', 'inherit', 'closed', 'closed', '', '184-revision-v1', '', '', '2019-07-18 16:21:18', '2019-07-18 16:21:18', '', 184, 'http://localhost/wp/models/184-revision-v1/', 0, 'revision', '', 0),
(199, 1, '2019-07-18 16:24:16', '2019-07-18 16:24:16', '<div></div>\r\n<div class=\"brief clb\" style=\"text-align: center;\">\r\n\r\n&nbsp;\r\n\r\n</div>\r\n<div>\r\n<p style=\"text-align: center;\"><strong>SANH DIEU MAG, SEPT 2104 ISSUE</strong></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/10494660_691522550932688_3863642463754546189_n.jpg\" alt=\"\" width=\"960\" height=\"658\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10338711_691522507599359_4942422286220768572_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10411089_691522654266011_3576121096548620648_n.jpg\" alt=\"\" width=\"698\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10620513_691522687599341_6386112315515974830_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<img class=\"aligncenter\" src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10645193_691522604266016_9105790372036747379_n.jpg\" alt=\"\" width=\"704\" height=\"960\" />\r\n\r\n</div>', 'THE QUEEN  Copy', 'Model: Magda - Photographer: Manhbi - Stylist: Duy Anh - Make up: Cao Tuan Dat - Hair: Gil Nguyen - Designer: Bui Thanh Thuy ', 'publish', 'open', 'open', '', 'the-queen-copy', '', '', '2019-07-19 02:59:10', '2019-07-19 02:59:10', '', 0, 'http://localhost/wp/models/the-queen-copy/', 0, 'post', '', 0),
(200, 1, '2019-07-18 16:24:20', '2019-07-18 16:24:20', '<div></div>\r\n<div class=\"brief clb\" style=\"text-align: center;\">\r\n\r\n&nbsp;\r\n\r\n</div>\r\n<div>\r\n<p style=\"text-align: center;\"><strong>SANH DIEU MAG, SEPT 2104 ISSUE</strong></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/10494660_691522550932688_3863642463754546189_n.jpg\" alt=\"\" width=\"960\" height=\"658\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10338711_691522507599359_4942422286220768572_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10411089_691522654266011_3576121096548620648_n.jpg\" alt=\"\" width=\"698\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10620513_691522687599341_6386112315515974830_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<img class=\"aligncenter\" src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10645193_691522604266016_9105790372036747379_n.jpg\" alt=\"\" width=\"704\" height=\"960\" />\r\n\r\n</div>', 'THE QUEEN  Copy', 'Model: Magda - Photographer: Manhbi - Stylist: Duy Anh - Make up: Cao Tuan Dat - Hair: Gil Nguyen - Designer: Bui Thanh Thuy ', 'publish', 'open', 'open', '', 'the-queen-copy-2', '', '', '2019-07-19 09:50:52', '2019-07-19 09:50:52', '', 0, 'http://localhost/wp/models/the-queen-copy-2/', 0, 'post', '', 0),
(201, 1, '2019-07-18 16:24:24', '2019-07-18 16:24:24', '<div></div>\r\n<div class=\"brief clb\" style=\"text-align: center;\">\r\n\r\n&nbsp;\r\n\r\n</div>\r\n<div>\r\n<p style=\"text-align: center;\"><strong>SANH DIEU MAG, SEPT 2104 ISSUE</strong></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/10494660_691522550932688_3863642463754546189_n.jpg\" alt=\"\" width=\"960\" height=\"658\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10338711_691522507599359_4942422286220768572_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10411089_691522654266011_3576121096548620648_n.jpg\" alt=\"\" width=\"698\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10620513_691522687599341_6386112315515974830_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<img class=\"aligncenter\" src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10645193_691522604266016_9105790372036747379_n.jpg\" alt=\"\" width=\"704\" height=\"960\" />\r\n\r\n</div>', 'THE QUEEN  Copy', 'Model: Magda - Photographer: Manhbi - Stylist: Duy Anh - Make up: Cao Tuan Dat - Hair: Gil Nguyen - Designer: Bui Thanh Thuy ', 'publish', 'open', 'open', '', 'the-queen-copy-3', '', '', '2019-07-19 09:50:29', '2019-07-19 09:50:29', '', 0, 'http://localhost/wp/models/the-queen-copy-3/', 0, 'post', '', 0),
(202, 1, '2019-07-18 16:52:37', '2019-07-18 16:52:37', '[vc_row css=\".vc_custom_1563503991627{margin-top: 40px !important;}\"][vc_column width=\"1/4\"][models_menu_blog_left][/vc_column][vc_column width=\"1/2\"][models_blog][/vc_column][vc_column width=\"1/4\"][models_menu_blog_right][/vc_column][/vc_row]', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-07-19 10:12:46', '2019-07-19 10:12:46', '', 0, 'http://localhost/wp/models/?page_id=202', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(203, 1, '2019-07-18 16:52:35', '2019-07-18 16:52:35', '[vc_row css=\".vc_custom_1563117575655{margin-top: 60px !important;margin-bottom: 60px !important;}\"][vc_column width=\"1/4\"][models_menu_academy_left][/vc_column][vc_column width=\"3/4\"][vc_column_text]<strong>Address: Unit 1003 - 10th Floor - Ford Building - No. 105 Lang Ha street - Ha Noi - Vietnam\r\nTel: +844 66700246\r\nEmail: info@tay-models.com</strong>[/vc_column_text][contact-form-7 id=\"58\"][/vc_column][/vc_row]', 'How to apply', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-07-18 16:52:35', '2019-07-18 16:52:35', '', 56, 'http://localhost/wp/models/56-revision-v1/', 0, 'revision', '', 0),
(204, 1, '2019-07-18 16:52:37', '2019-07-18 16:52:37', '[vc_row][vc_column][models_blog][/vc_column][/vc_row]', 'Blog', '', 'inherit', 'closed', 'closed', '', '202-revision-v1', '', '', '2019-07-18 16:52:37', '2019-07-18 16:52:37', '', 202, 'http://localhost/wp/models/202-revision-v1/', 0, 'revision', '', 0),
(205, 1, '2019-07-18 17:13:13', '2019-07-18 17:13:13', '[vc_row css=\".vc_custom_1563117041461{margin-top: 60px !important;}\"][vc_column width=\"1/4\"][models_menu_about_left][/vc_column][vc_column width=\"3/4\"][vc_column_text]\r\n<h2>NEWSLETTER SIGN-UP</h2>\r\nSubscribe to Taymodels\' weekly e-mail newsletter and the newsletter is currently available in English.[/vc_column_text][contact-form-7 id=\"51\"][/vc_column][/vc_row]', 'Newsletter', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-07-18 17:13:13', '2019-07-18 17:13:13', '', 52, 'http://localhost/wp/models/52-revision-v1/', 0, 'revision', '', 0),
(206, 1, '2019-07-18 17:16:18', '2019-07-18 17:16:18', '', 'ABOUT', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-07-18 17:16:18', '2019-07-18 17:16:18', '', 0, 'http://localhost/wp/models/?p=206', 1, 'nav_menu_item', '', 0),
(207, 1, '2019-07-18 17:16:18', '2019-07-18 17:16:18', ' ', '', '', 'publish', 'closed', 'closed', '', '207', '', '', '2019-07-18 17:16:18', '2019-07-18 17:16:18', '', 0, 'http://localhost/wp/models/?p=207', 2, 'nav_menu_item', '', 0),
(208, 1, '2019-07-18 17:16:19', '2019-07-18 17:16:19', ' ', '', '', 'publish', 'closed', 'closed', '', '208', '', '', '2019-07-18 17:16:19', '2019-07-18 17:16:19', '', 0, 'http://localhost/wp/models/?p=208', 3, 'nav_menu_item', '', 0),
(209, 1, '2019-07-18 17:16:19', '2019-07-18 17:16:19', '', 'Terms of Use', '', 'publish', 'closed', 'closed', '', 'terms-of-use-2', '', '', '2019-07-18 17:16:19', '2019-07-18 17:16:19', '', 0, 'http://localhost/wp/models/?p=209', 4, 'nav_menu_item', '', 0),
(210, 1, '2019-07-18 17:16:19', '2019-07-18 17:16:19', '', 'PRIVACY POLICY', '', 'publish', 'closed', 'closed', '', 'privacy-policy-2', '', '', '2019-07-18 17:16:19', '2019-07-18 17:16:19', '', 0, 'http://localhost/wp/models/?p=210', 5, 'nav_menu_item', '', 0),
(211, 1, '2019-07-18 17:16:19', '2019-07-18 17:16:19', '', 'NEWS LETTER', '', 'publish', 'closed', 'closed', '', 'news-letter', '', '', '2019-07-18 17:16:19', '2019-07-18 17:16:19', '', 0, 'http://localhost/wp/models/?p=211', 6, 'nav_menu_item', '', 0),
(212, 1, '2019-07-18 17:18:06', '2019-07-18 17:18:06', '[vc_row css=\".vc_custom_1563073767866{margin-top: 60px !important;}\"][vc_column width=\"1/4\"][models_menu_about_left][/vc_column][vc_column width=\"3/4\"][vc_column_text]\r\n<table style=\"max-width: 100%;\" width=\"677\">\r\n<tbody>\r\n<tr>\r\n<td><span style=\"font-size: medium;\"><strong>Contact Us:</strong></span></td>\r\n</tr>\r\n<tr>\r\n<td><strong><span style=\"font-size: larger;\">Address: Unit 1003 - 10th Floor - Ford Building - No. 105 Lang Ha street - Ha Noi - Vietnam\r\nTel: +844 66700246\r\nEmail: info@tay-models.com </span></strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<strong>\r\nBooking department </strong>\r\nAlex Tuong-Lan Pham\r\nEmail: alex.pham@tay-models.com\r\nMobile phone: +84 986 849899\r\n\r\n<strong>\r\n</strong><span style=\"font-size: larger;\"><strong>Scouting department </strong></span><span style=\"font-size: larger;\">\r\nVinh Pham\r\nEmail: vinh.pham@tay-models.com\r\nMobile Phone: +84 904427580\r\n</span>[/vc_column_text][contact-form-7 id=\"43\"][/vc_column][/vc_row]', 'Contact us', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-07-18 17:18:06', '2019-07-18 17:18:06', '', 40, 'http://localhost/wp/models/40-revision-v1/', 0, 'revision', '', 0),
(213, 1, '2019-07-18 17:47:59', '2019-07-18 17:47:59', '<p>[vc_row][vc_column width=\"1/4\"][/vc_column][vc_column width=\"3/4\"][models_blog][/vc_column][/vc_row]</p>\r\n', 'Blog', '', 'inherit', 'closed', 'closed', '', '202-revision-v1', '', '', '2019-07-18 17:47:59', '2019-07-18 17:47:59', '', 202, 'http://localhost/wp/models/202-revision-v1/', 0, 'revision', '', 0),
(214, 1, '2019-07-18 17:48:17', '2019-07-18 17:48:17', '<p>[vc_row][vc_column width=\"1/4\"][models_menu_blog_left][/vc_column][vc_column width=\"3/4\"][models_blog][/vc_column][/vc_row]</p>\r\n', 'Blog', '', 'inherit', 'closed', 'closed', '', '202-revision-v1', '', '', '2019-07-18 17:48:17', '2019-07-18 17:48:17', '', 202, 'http://localhost/wp/models/202-revision-v1/', 0, 'revision', '', 0),
(215, 1, '2019-07-19 02:34:21', '2019-07-19 02:34:21', '<div></div>\r\n<div class=\"brief clb\" style=\"text-align: center;\">\r\n\r\n&nbsp;\r\n\r\n</div>\r\n<div>\r\n<p style=\"text-align: center;\"><strong>SANH DIEU MAG, SEPT 2104 ISSUE</strong></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/10494660_691522550932688_3863642463754546189_n.jpg\" alt=\"\" width=\"960\" height=\"658\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10338711_691522507599359_4942422286220768572_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10411089_691522654266011_3576121096548620648_n.jpg\" alt=\"\" width=\"698\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10620513_691522687599341_6386112315515974830_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<img class=\"aligncenter\" src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10645193_691522604266016_9105790372036747379_n.jpg\" alt=\"\" width=\"704\" height=\"960\" />\r\n\r\n</div>', 'THE QUEEN  Copy', '', 'inherit', 'closed', 'closed', '', '199-revision-v1', '', '', '2019-07-19 02:34:21', '2019-07-19 02:34:21', '', 199, 'http://localhost/wp/models/199-revision-v1/', 0, 'revision', '', 0),
(216, 1, '2019-07-19 02:34:29', '2019-07-19 02:34:29', '<div></div>\r\n<div class=\"brief clb\" style=\"text-align: center;\">\r\n\r\n&nbsp;\r\n\r\n</div>\r\n<div>\r\n<p style=\"text-align: center;\"><strong>SANH DIEU MAG, SEPT 2104 ISSUE</strong></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/10494660_691522550932688_3863642463754546189_n.jpg\" alt=\"\" width=\"960\" height=\"658\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10338711_691522507599359_4942422286220768572_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10411089_691522654266011_3576121096548620648_n.jpg\" alt=\"\" width=\"698\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10620513_691522687599341_6386112315515974830_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<img class=\"aligncenter\" src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10645193_691522604266016_9105790372036747379_n.jpg\" alt=\"\" width=\"704\" height=\"960\" />\r\n\r\n</div>', 'THE QUEEN  Copy', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2019-07-19 02:34:29', '2019-07-19 02:34:29', '', 200, 'http://localhost/wp/models/200-revision-v1/', 0, 'revision', '', 0),
(217, 1, '2019-07-19 02:34:40', '2019-07-19 02:34:40', '<div></div>\r\n<div class=\"brief clb\" style=\"text-align: center;\">\r\n\r\n&nbsp;\r\n\r\n</div>\r\n<div>\r\n<p style=\"text-align: center;\"><strong>SANH DIEU MAG, SEPT 2104 ISSUE</strong></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/10494660_691522550932688_3863642463754546189_n.jpg\" alt=\"\" width=\"960\" height=\"658\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10338711_691522507599359_4942422286220768572_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10411089_691522654266011_3576121096548620648_n.jpg\" alt=\"\" width=\"698\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10620513_691522687599341_6386112315515974830_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<img class=\"aligncenter\" src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10645193_691522604266016_9105790372036747379_n.jpg\" alt=\"\" width=\"704\" height=\"960\" />\r\n\r\n</div>', 'THE QUEEN  Copy', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2019-07-19 02:34:40', '2019-07-19 02:34:40', '', 201, 'http://localhost/wp/models/201-revision-v1/', 0, 'revision', '', 0),
(218, 1, '2019-07-19 02:39:35', '2019-07-19 02:39:35', '<p>[vc_row][vc_column width=\"1/4\"][models_menu_blog_left][/vc_column][vc_column width=\"3/4\"][models_blog][/vc_column][/vc_row]</p>\n', 'Blog', '', 'inherit', 'closed', 'closed', '', '202-autosave-v1', '', '', '2019-07-19 02:39:35', '2019-07-19 02:39:35', '', 202, 'http://localhost/wp/models/202-autosave-v1/', 0, 'revision', '', 0),
(219, 1, '2019-07-19 02:39:57', '2019-07-19 02:39:57', '[vc_row css=\".vc_custom_1563503991627{margin-top: 40px !important;}\"][vc_column width=\"1/4\"][models_menu_blog_left][/vc_column][vc_column width=\"3/4\"][models_blog][/vc_column][/vc_row]', 'Blog', '', 'inherit', 'closed', 'closed', '', '202-revision-v1', '', '', '2019-07-19 02:39:57', '2019-07-19 02:39:57', '', 202, 'http://localhost/wp/models/202-revision-v1/', 0, 'revision', '', 0),
(220, 1, '2019-07-19 02:47:25', '2019-07-19 02:47:25', '<div></div>\r\n<div class=\"brief clb\" style=\"text-align: center;\">\r\n\r\n&nbsp;\r\n\r\n</div>\r\n<div>\r\n<p style=\"text-align: center;\"><strong>SANH DIEU MAG, SEPT 2104 ISSUE</strong></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/10494660_691522550932688_3863642463754546189_n.jpg\" alt=\"\" width=\"960\" height=\"658\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10338711_691522507599359_4942422286220768572_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10411089_691522654266011_3576121096548620648_n.jpg\" alt=\"\" width=\"698\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10620513_691522687599341_6386112315515974830_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<img class=\"aligncenter\" src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10645193_691522604266016_9105790372036747379_n.jpg\" alt=\"\" width=\"704\" height=\"960\" />\r\n\r\n</div>', 'THE QUEEN  Copy', 'Model: Magda - Photographer: Manhbi - Stylist: Duy Anh - Make up: Cao Tuan Dat - Hair: Gil Nguyen - Designer: Bui Thanh Thuy ', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2019-07-19 02:47:25', '2019-07-19 02:47:25', '', 201, 'http://localhost/wp/models/201-revision-v1/', 0, 'revision', '', 0),
(221, 1, '2019-07-19 02:58:52', '2019-07-19 02:58:52', '<div></div>\r\n<div class=\"brief clb\" style=\"text-align: center;\">\r\n\r\n&nbsp;\r\n\r\n</div>\r\n<div>\r\n<p style=\"text-align: center;\"><strong>SANH DIEU MAG, SEPT 2104 ISSUE</strong></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/10494660_691522550932688_3863642463754546189_n.jpg\" alt=\"\" width=\"960\" height=\"658\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10338711_691522507599359_4942422286220768572_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10411089_691522654266011_3576121096548620648_n.jpg\" alt=\"\" width=\"698\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10620513_691522687599341_6386112315515974830_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<img class=\"aligncenter\" src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10645193_691522604266016_9105790372036747379_n.jpg\" alt=\"\" width=\"704\" height=\"960\" />\r\n\r\n</div>', 'THE QUEEN  Copy', 'Model: Magda - Photographer: Manhbi - Stylist: Duy Anh - Make up: Cao Tuan Dat - Hair: Gil Nguyen - Designer: Bui Thanh Thuy ', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2019-07-19 02:58:52', '2019-07-19 02:58:52', '', 200, 'http://localhost/wp/models/200-revision-v1/', 0, 'revision', '', 0),
(222, 1, '2019-07-19 02:59:10', '2019-07-19 02:59:10', '<div></div>\r\n<div class=\"brief clb\" style=\"text-align: center;\">\r\n\r\n&nbsp;\r\n\r\n</div>\r\n<div>\r\n<p style=\"text-align: center;\"><strong>SANH DIEU MAG, SEPT 2104 ISSUE</strong></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/10494660_691522550932688_3863642463754546189_n.jpg\" alt=\"\" width=\"960\" height=\"658\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10338711_691522507599359_4942422286220768572_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10411089_691522654266011_3576121096548620648_n.jpg\" alt=\"\" width=\"698\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10620513_691522687599341_6386112315515974830_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<img class=\"aligncenter\" src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10645193_691522604266016_9105790372036747379_n.jpg\" alt=\"\" width=\"704\" height=\"960\" />\r\n\r\n</div>', 'THE QUEEN  Copy', 'Model: Magda - Photographer: Manhbi - Stylist: Duy Anh - Make up: Cao Tuan Dat - Hair: Gil Nguyen - Designer: Bui Thanh Thuy ', 'inherit', 'closed', 'closed', '', '199-revision-v1', '', '', '2019-07-19 02:59:10', '2019-07-19 02:59:10', '', 199, 'http://localhost/wp/models/199-revision-v1/', 0, 'revision', '', 0),
(223, 1, '2019-07-19 02:59:13', '2019-07-19 02:59:13', '<div></div>\r\n<div class=\"brief clb\" style=\"text-align: center;\">\r\n\r\n&nbsp;\r\n\r\n</div>\r\n<div>\r\n<p style=\"text-align: center;\"><strong>SANH DIEU MAG, SEPT 2104 ISSUE</strong></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/10494660_691522550932688_3863642463754546189_n.jpg\" alt=\"\" width=\"960\" height=\"658\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10338711_691522507599359_4942422286220768572_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10411089_691522654266011_3576121096548620648_n.jpg\" alt=\"\" width=\"698\" height=\"960\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10620513_691522687599341_6386112315515974830_n.jpg\" alt=\"\" width=\"690\" height=\"960\" /></p>\r\n<img class=\"aligncenter\" src=\"http://tay-models.com/media/fck/image/Sanh%20dieu/10645193_691522604266016_9105790372036747379_n.jpg\" alt=\"\" width=\"704\" height=\"960\" />\r\n\r\n</div>', 'THE QUEEN', 'Model: Magda - Photographer: Manhbi - Stylist: Duy Anh - Make up: Cao Tuan Dat - Hair: Gil Nguyen - Designer: Bui Thanh Thuy ', 'inherit', 'closed', 'closed', '', '184-revision-v1', '', '', '2019-07-19 02:59:13', '2019-07-19 02:59:13', '', 184, 'http://localhost/wp/models/184-revision-v1/', 0, 'revision', '', 0),
(224, 1, '2019-07-19 08:12:13', '2019-07-19 08:12:13', '<div class=\"content\">\n<h1 class=\"title\">About us</h1>\n&nbsp;\n<div style=\"text-align: center; padding: 20px 0;\"><img title=\"About us \" src=\"http://tay-models.com/media/article/1402764823_profile_English.jpg\" alt=\"About us \" width=\"360\" border=\"0\" /></div>\n<div class=\"brief clb\">\n\nTayModels - The 1st Vietnamese Modeling Agency that provides both local and international models, and offers a wide range of services including campaign production, event planning, and creative exchange and marketing counseling.\n\n</div>\n<div class=\"clb\"></div>\n<div class=\"content\">\n\nFounded in 2010 by Alex Tuong – Lan Pham, Taymodels is a modeling and talent agency specialized in foreign models\nToday, Taymodels has grown into an agency that provides both local and international models, and offers a wide range of services including campaign production, event planning, and creative exchange with a network of talents and marketing counseling.\n\nTaymodels’ clients are among the most prestigious brands and companies in Vietnam and worldwide.\n\nwww.tay-models.com\n<a href=\"http://www.facebook.com/taymodels\" rel=\"nofollow\">www.facebook.com/taymodels</a>\n<a href=\"http://www.facebook.com/l.php?u=http%3A%2F%2Fwww.youtube.com%2Ftaymodels&amp;h=rAQHAXvJn&amp;s=1\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">www.youtube.com/taymodels</a>\n<a href=\"http://taymodelmanagement.blogspot.com/\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">http://taymodelmanagement.blogspot.com/</a>\n\n</div>\n<script type=\"text/javascript\">var switchTo5x=true;</script>\n<script type=\"text/javascript\" src=\"http://w.sharethis.com/button/buttons.js\"></script>\n<script type=\"text/javascript\">stLight.options({publisher: \"ur-d7c4e3c3-1de9-501-1a16-699a1de5f7d2\"});</script>\n<div class=\"article-other\">\n<h3 class=\"title\"></h3>\n</div>\n<div class=\"clb\"></div>\n</div>', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '36-autosave-v1', '', '', '2019-07-19 08:12:13', '2019-07-19 08:12:13', '', 36, 'http://localhost/wp/models/36-autosave-v1/', 0, 'revision', '', 0),
(225, 1, '2019-07-19 08:12:39', '2019-07-19 08:12:39', '[vc_row][vc_column width=\"1/4\"][models_menu_about_left][/vc_column][vc_column width=\"3/4\"][vc_column_text]\r\n<div class=\"content\">\r\n<h1 class=\"title\">About us</h1>\r\n&nbsp;\r\n<div style=\"text-align: center; padding: 20px 0;\"><img title=\"About us \" src=\"http://tay-models.com/media/article/1402764823_profile_English.jpg\" alt=\"About us \" width=\"360\" border=\"0\" /></div>\r\n<div class=\"brief clb\">\r\n\r\nTayModels - The 1st Vietnamese Modeling Agency that provides both local and international models, and offers a wide range of services including campaign production, event planning, and creative exchange and marketing counseling.\r\n\r\n</div>\r\n<div class=\"clb\"></div>\r\n<div class=\"content\">\r\n\r\nFounded in 2010 by Alex Tuong – Lan Pham, Taymodels is a modeling and talent agency specialized in foreign models\r\nToday, Taymodels has grown into an agency that provides both local and international models, and offers a wide range of services including campaign production, event planning, and creative exchange with a network of talents and marketing counseling.\r\n\r\nTaymodels’ clients are among the most prestigious brands and companies in Vietnam and worldwide.\r\n\r\nwww.tay-models.com\r\n<a href=\"http://www.facebook.com/taymodels\" rel=\"nofollow\">www.facebook.com/taymodels</a>\r\n<a href=\"http://www.facebook.com/l.php?u=http%3A%2F%2Fwww.youtube.com%2Ftaymodels&amp;h=rAQHAXvJn&amp;s=1\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">www.youtube.com/taymodels</a>\r\n<a href=\"http://taymodelmanagement.blogspot.com/\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">http://taymodelmanagement.blogspot.com/</a>\r\n\r\n</div>\r\n<script type=\"text/javascript\">var switchTo5x=true;</script>\r\n<script type=\"text/javascript\" src=\"http://w.sharethis.com/button/buttons.js\"></script> <script type=\"text/javascript\">stLight.options({publisher: \"ur-d7c4e3c3-1de9-501-1a16-699a1de5f7d2\"});</script>\r\n<div class=\"article-other\">\r\n<h3 class=\"title\"></h3>\r\n</div>\r\n<div class=\"clb\"></div>\r\n</div>\r\n[/vc_column_text][/vc_column][/vc_row]', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2019-07-19 08:12:39', '2019-07-19 08:12:39', '', 36, 'http://localhost/wp/models/36-revision-v1/', 0, 'revision', '', 0),
(226, 1, '2019-07-19 08:23:00', '2019-07-19 08:23:00', '[vc_row css=\".vc_custom_1563524575961{margin-top: 50px !important;}\"][vc_column width=\"1/4\"][models_menu_about_left][/vc_column][vc_column width=\"3/4\"][vc_column_text]\r\n<div class=\"content\">\r\n<h1 class=\"title\">About us</h1>\r\n&nbsp;\r\n<div style=\"text-align: center; padding: 20px 0;\"><img title=\"About us \" src=\"http://tay-models.com/media/article/1402764823_profile_English.jpg\" alt=\"About us \" width=\"360\" border=\"0\" /></div>\r\n<div class=\"brief clb\">\r\n\r\nTayModels - The 1st Vietnamese Modeling Agency that provides both local and international models, and offers a wide range of services including campaign production, event planning, and creative exchange and marketing counseling.\r\n\r\n</div>\r\n<div class=\"clb\"></div>\r\n<div class=\"content\">\r\n\r\nFounded in 2010 by Alex Tuong – Lan Pham, Taymodels is a modeling and talent agency specialized in foreign models\r\nToday, Taymodels has grown into an agency that provides both local and international models, and offers a wide range of services including campaign production, event planning, and creative exchange with a network of talents and marketing counseling.\r\n\r\nTaymodels’ clients are among the most prestigious brands and companies in Vietnam and worldwide.\r\n\r\nwww.tay-models.com\r\n<a href=\"http://www.facebook.com/taymodels\" rel=\"nofollow\">www.facebook.com/taymodels</a>\r\n<a href=\"http://www.facebook.com/l.php?u=http%3A%2F%2Fwww.youtube.com%2Ftaymodels&amp;h=rAQHAXvJn&amp;s=1\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">www.youtube.com/taymodels</a>\r\n<a href=\"http://taymodelmanagement.blogspot.com/\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">http://taymodelmanagement.blogspot.com/</a>\r\n\r\n</div>\r\n<script type=\"text/javascript\">var switchTo5x=true;</script>\r\n<script type=\"text/javascript\" src=\"http://w.sharethis.com/button/buttons.js\"></script> <script type=\"text/javascript\">stLight.options({publisher: \"ur-d7c4e3c3-1de9-501-1a16-699a1de5f7d2\"});</script>\r\n<div class=\"article-other\">\r\n<h3 class=\"title\"></h3>\r\n</div>\r\n<div class=\"clb\"></div>\r\n</div>\r\n[/vc_column_text][/vc_column][/vc_row]', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2019-07-19 08:23:00', '2019-07-19 08:23:00', '', 36, 'http://localhost/wp/models/36-revision-v1/', 0, 'revision', '', 0),
(228, 1, '2019-07-19 08:26:05', '2019-07-19 08:26:05', '[vc_row css=\".vc_custom_1563524703941{margin-top: 50px !important;}\"][vc_column width=\"1/4\"][models_menu_about_left][/vc_column][vc_column width=\"3/4\"][vc_raw_html]JTNDZGl2JTIwY2xhc3MlM0QlMjJhZGR0aGlzX2lubGluZV9zaGFyZV90b29sYm94JTIyJTNFJTNDJTJGZGl2JTNFJTBBJTNDc2NyaXB0JTIwdHlwZSUzRCUyMnRleHQlMkZqYXZhc2NyaXB0JTIyJTIwc3JjJTNEJTIyJTJGJTJGczcuYWRkdGhpcy5jb20lMkZqcyUyRjMwMCUyRmFkZHRoaXNfd2lkZ2V0LmpzJTIzcHViaWQlM0RyYS01NTBiOTM0ZTYyZGM4OTA4JTIyJTNFJTNDJTJGc2NyaXB0JTNF[/vc_raw_html][/vc_column][/vc_row]', 'Terms-of-Use', '', 'publish', 'closed', 'closed', '', 'terms-of-use', '', '', '2019-07-19 08:26:05', '2019-07-19 08:26:05', '', 0, 'http://localhost/wp/models/?page_id=228', 0, 'page', '', 0),
(229, 1, '2019-07-19 08:26:05', '2019-07-19 08:26:05', '[vc_row css=\".vc_custom_1563524703941{margin-top: 50px !important;}\"][vc_column width=\"1/4\"][models_menu_about_left][/vc_column][vc_column width=\"3/4\"][vc_raw_html]JTNDZGl2JTIwY2xhc3MlM0QlMjJhZGR0aGlzX2lubGluZV9zaGFyZV90b29sYm94JTIyJTNFJTNDJTJGZGl2JTNFJTBBJTNDc2NyaXB0JTIwdHlwZSUzRCUyMnRleHQlMkZqYXZhc2NyaXB0JTIyJTIwc3JjJTNEJTIyJTJGJTJGczcuYWRkdGhpcy5jb20lMkZqcyUyRjMwMCUyRmFkZHRoaXNfd2lkZ2V0LmpzJTIzcHViaWQlM0RyYS01NTBiOTM0ZTYyZGM4OTA4JTIyJTNFJTNDJTJGc2NyaXB0JTNF[/vc_raw_html][/vc_column][/vc_row]', 'Terms-of-Use', '', 'inherit', 'closed', 'closed', '', '228-revision-v1', '', '', '2019-07-19 08:26:05', '2019-07-19 08:26:05', '', 228, 'http://localhost/wp/models/228-revision-v1/', 0, 'revision', '', 0),
(230, 1, '2019-07-19 08:26:36', '2019-07-19 08:26:36', ' ', '', '', 'publish', 'closed', 'closed', '', '230', '', '', '2019-07-19 09:59:37', '2019-07-19 09:59:37', '', 0, 'http://localhost/wp/models/?p=230', 42, 'nav_menu_item', '', 0),
(232, 1, '2019-07-19 08:29:23', '2019-07-19 08:29:23', '[vc_row css=\".vc_custom_1563524924810{margin-top: 50px !important;}\"][vc_column width=\"1/4\"][models_menu_about_left][/vc_column][vc_column width=\"3/4\"][vc_raw_html]JTNDZGl2JTIwY2xhc3MlM0QlMjJjb250ZW50JTIyJTNFJTBBJTA5JTNDaDElMjBjbGFzcyUzRCUyMnRpdGxlJTIyJTNFTW9kZWxzJTIwJTNDJTJGaDElM0UlM0NzcGFuJTIwY2xhc3MlM0QlMjJkYXRlJTIyJTNFJTNDJTJGc3BhbiUzRSUwQSUwOSUzQ2RpdiUyMHN0eWxlJTNEJTIydGV4dC1hbGlnbiUzQWNlbnRlciUzQiUyMHBhZGRpbmclM0EyMHB4JTIwMCUzQiUyMiUzRSUzQ2ltZyUyMHNyYyUzRCUyMmh0dHAlM0ElMkYlMkZ0YXktbW9kZWxzLmNvbSUyRm1lZGlhJTJGYXJ0aWNsZSUyRjEzNTk1MjIwNDRfYXBwLW9ubGluZS5qcGclMjIlMjB3aWR0aCUzRCUyMjM2MCUyMiUyMHRpdGxlJTNEJTIyTW9kZWxzJTIyJTIwYWx0JTNEJTIyTW9kZWxzJTIyJTIwYm9yZGVyJTNEJTIyMCUyMiUzRSUzQyUyRmRpdiUzRSUwQSUwOSUzQ2RpdiUyMGNsYXNzJTNEJTIyYnJpZWYlMjBjbGIlMjIlM0UlMEElMDklMDklMjAlM0NwJTNFT3VyJTIwZXhjbHVzaXZlJTIwbW9kZWxzJTIwY29tZSUyMGZyb20lMjBWaWV0bmFtJTIwYW5kJTIwYWxsJTIwb3ZlciUyMHRoZSUyMHdvcmxkJTJDJTIwbWFraW5nJTIwdXMlMjB0aGUlMjBmaXJzdCUyMFZpZXRuYW1lc2UlMjBtb2RlbGluZyUyMGFnZW5jeSUyMHRvJTIwcHJvdmlkZSUyMGJvdGglMjBsb2NhbCUyMGFuZCUyMGludGVybmF0aW9uYWwlMjBtb2RlbHMlM0MlMkZwJTNFJTBBJTA5JTNDJTJGZGl2JTNFJTBBJTA5JTNDZGl2JTIwY2xhc3MlM0QlMjJjbGIlMjIlM0UlM0MlMkZkaXYlM0UlMEElMDklM0NkaXYlMjBjbGFzcyUzRCUyMmNvbnRlbnQlMjIlM0UlMEElMDklMDklM0NwJTNFT3VyJTIwdGhvcm91Z2glMjBzZWxlY3Rpb24lMjBwcm9jZXNzJTIwZW5zdXJlcyUyMHRoYXQlMjBvdXIlMjBtb2RlbHMlMjBtZWV0JTIwdGhlJTIwaGlnaGVzdCUyMG1hcmtldCUyMHJlcXVpcmVtZW50cyUyMGFuZCUyMGNvdmVyJTIwZGlmZmVyZW50JTIwa2luZHMlMjBvZiUyMGJlYXV0eS4lMjAlMjBBZGRpbmclMjB2YWx1ZSUyMHRvJTIweW91ciUyMGJ1c2luZXNzJTJDJTIwb3VyJTIwbW9kZWxzJTIwd29yayUyMHdpdGglMjBhJTIwc3RyaWN0bHklMjBwcm9mZXNzaW9uYWwlMjBhdHRpdHVkZSUyMHRvJTIwbWFrZSUyMHN1cmUlMjB5b3VyJTIwY29uY2VwdCUyMGlzJTIwdW5kZXJzdG9vZCUyMGFuZCUyMHlvdXIlMjBtZXNzYWdlJTIwZ2V0cyUyMGFjcm9zcy4lMjAlMjBXZSUyMGFyZSUyMGNvbnN0YW50bHklMjByZWNydWl0aW5nJTIwbmV3JTIwZmFjZXMlMjBpbiUyMG9yZGVyJTIwdG8lMjBjb250aW51ZSUyMHRvJTIwZ2l2ZSUyMGNsaWVudHMlMjBtb3JlJTIwb3B0aW9uJTIwZnJvbSUyMG9uZSUyMGNhbXBhaWduJTIwdG8lMjB0aGUlMjBuZXh0JTIwb25lLiUzQyUyRnAlM0UlMEElMDklM0MlMkZkaXYlM0UlMEElMDklMEElMDklM0NzY3JpcHQlMjB0eXBlJTNEJTIydGV4dCUyRmphdmFzY3JpcHQlMjIlM0V2YXIlMjBzd2l0Y2hUbzV4JTNEdHJ1ZSUzQiUzQyUyRnNjcmlwdCUzRSUwQSUwOSUzQ3NjcmlwdCUyMHR5cGUlM0QlMjJ0ZXh0JTJGamF2YXNjcmlwdCUyMiUyMHNyYyUzRCUyMmh0dHAlM0ElMkYlMkZ3LnNoYXJldGhpcy5jb20lMkZidXR0b24lMkZidXR0b25zLmpzJTIyJTNFJTNDJTJGc2NyaXB0JTNFJTBBJTA5JTNDc2NyaXB0JTIwdHlwZSUzRCUyMnRleHQlMkZqYXZhc2NyaXB0JTIyJTNFc3RMaWdodC5vcHRpb25zJTI4JTdCcHVibGlzaGVyJTNBJTIwJTIydXItZDdjNGUzYzMtMWRlOS01MDEtMWExNi02OTlhMWRlNWY3ZDIlMjIlN0QlMjklM0IlM0MlMkZzY3JpcHQlM0UlMDklMEElMDklM0NkaXYlMjBjbGFzcyUzRCUyMnNoYXJlLWJ1dHRvbiUyMiUzRSUwQSUwOSUzQ3NwYW4lMjBjbGFzcyUzRCUyMnN0X3NoYXJldGhpcyUyMiUyMGRpc3BsYXl0ZXh0JTNEJTIyU2hhcmVUaGlzJTIyJTIwc3RfcHJvY2Vzc2VkJTNEJTIyeWVzJTIyJTNFJTNDc3BhbiUyMHN0eWxlJTNEJTIydGV4dC1kZWNvcmF0aW9uJTNBbm9uZSUzQmNvbG9yJTNBJTIzMDAwMDAwJTNCZGlzcGxheSUzQWlubGluZS1ibG9jayUzQmN1cnNvciUzQXBvaW50ZXIlM0IlMjIlMjBjbGFzcyUzRCUyMnN0QnV0dG9uJTIyJTNFJTNDc3BhbiUyMGNsYXNzJTNEJTIyY2hpY2tsZXRzJTIwc2hhcmV0aGlzJTIyJTNFU2hhcmVUaGlzJTNDJTJGc3BhbiUzRSUzQyUyRnNwYW4lM0UlM0MlMkZzcGFuJTNFJTBBJTA5JTNDc3BhbiUyMGNsYXNzJTNEJTIyc3RfZmFjZWJvb2slMjIlMjBkaXNwbGF5dGV4dCUzRCUyMkZhY2Vib29rJTIyJTIwc3RfcHJvY2Vzc2VkJTNEJTIyeWVzJTIyJTNFJTNDc3BhbiUyMHN0eWxlJTNEJTIydGV4dC1kZWNvcmF0aW9uJTNBbm9uZSUzQmNvbG9yJTNBJTIzMDAwMDAwJTNCZGlzcGxheSUzQWlubGluZS1ibG9jayUzQmN1cnNvciUzQXBvaW50ZXIlM0IlMjIlMjBjbGFzcyUzRCUyMnN0QnV0dG9uJTIyJTNFJTNDc3BhbiUyMGNsYXNzJTNEJTIyY2hpY2tsZXRzJTIwZmFjZWJvb2slMjIlM0VGYWNlYm9vayUzQyUyRnNwYW4lM0UlM0MlMkZzcGFuJTNFJTNDJTJGc3BhbiUzRSUwQSUwOSUzQ3NwYW4lMjBjbGFzcyUzRCUyMnN0X3R3aXR0ZXIlMjIlMjBkaXNwbGF5dGV4dCUzRCUyMlR3ZWV0JTIyJTIwc3RfcHJvY2Vzc2VkJTNEJTIyeWVzJTIyJTNFJTNDc3BhbiUyMHN0eWxlJTNEJTIydGV4dC1kZWNvcmF0aW9uJTNBbm9uZSUzQmNvbG9yJTNBJTIzMDAwMDAwJTNCZGlzcGxheSUzQWlubGluZS1ibG9jayUzQmN1cnNvciUzQXBvaW50ZXIlM0IlMjIlMjBjbGFzcyUzRCUyMnN0QnV0dG9uJTIyJTNFJTNDc3BhbiUyMGNsYXNzJTNEJTIyY2hpY2tsZXRzJTIwdHdpdHRlciUyMiUzRVR3ZWV0JTNDJTJGc3BhbiUzRSUzQyUyRnNwYW4lM0UlM0MlMkZzcGFuJTNFJTBBJTA5JTNDc3BhbiUyMGNsYXNzJTNEJTIyc3RfZ29vZ2xlcGx1cyUyMiUyMGRpc3BsYXl0ZXh0JTNEJTIyR29vZ2xlJTIwJTJCJTIyJTIwc3RfcHJvY2Vzc2VkJTNEJTIyeWVzJTIyJTNFJTNDc3BhbiUyMHN0eWxlJTNEJTIydGV4dC1kZWNvcmF0aW9uJTNBbm9uZSUzQmNvbG9yJTNBJTIzMDAwMDAwJTNCZGlzcGxheSUzQWlubGluZS1ibG9jayUzQmN1cnNvciUzQXBvaW50ZXIlM0IlMjIlMjBjbGFzcyUzRCUyMnN0QnV0dG9uJTIyJTNFJTNDc3BhbiUyMGNsYXNzJTNEJTIyY2hpY2tsZXRzJTIwZ29vZ2xlcGx1cyUyMiUzRUdvb2dsZSUyMCUyQiUzQyUyRnNwYW4lM0UlM0MlMkZzcGFuJTNFJTNDJTJGc3BhbiUzRSUwQSUwOSUzQ3NwYW4lMjBjbGFzcyUzRCUyMnN0X2xpbmtlZGluJTIyJTIwZGlzcGxheXRleHQlM0QlMjJMaW5rZWRJbiUyMiUyMHN0X3Byb2Nlc3NlZCUzRCUyMnllcyUyMiUzRSUzQ3NwYW4lMjBzdHlsZSUzRCUyMnRleHQtZGVjb3JhdGlvbiUzQW5vbmUlM0Jjb2xvciUzQSUyMzAwMDAwMCUzQmRpc3BsYXklM0FpbmxpbmUtYmxvY2slM0JjdXJzb3IlM0Fwb2ludGVyJTNCJTIyJTIwY2xhc3MlM0QlMjJzdEJ1dHRvbiUyMiUzRSUzQ3NwYW4lMjBjbGFzcyUzRCUyMmNoaWNrbGV0cyUyMGxpbmtlZGluJTIyJTNFTGlua2VkSW4lM0MlMkZzcGFuJTNFJTNDJTJGc3BhbiUzRSUzQyUyRnNwYW4lM0UlMEElMDklM0NzcGFuJTIwY2xhc3MlM0QlMjJzdF9waW50ZXJlc3QlMjIlMjBkaXNwbGF5dGV4dCUzRCUyMlBpbnRlcmVzdCUyMiUyMHN0X3Byb2Nlc3NlZCUzRCUyMnllcyUyMiUzRSUzQ3NwYW4lMjBzdHlsZSUzRCUyMnRleHQtZGVjb3JhdGlvbiUzQW5vbmUlM0Jjb2xvciUzQSUyMzAwMDAwMCUzQmRpc3BsYXklM0FpbmxpbmUtYmxvY2slM0JjdXJzb3IlM0Fwb2ludGVyJTNCJTIyJTIwY2xhc3MlM0QlMjJzdEJ1dHRvbiUyMiUzRSUzQ3NwYW4lMjBjbGFzcyUzRCUyMmNoaWNrbGV0cyUyMHBpbnRlcmVzdCUyMiUzRVBpbnRlcmVzdCUzQyUyRnNwYW4lM0UlM0MlMkZzcGFuJTNFJTNDJTJGc3BhbiUzRSUwQSUwOSUzQ3NwYW4lMjBjbGFzcyUzRCUyMnN0X2VtYWlsJTIyJTIwZGlzcGxheXRleHQlM0QlMjJFbWFpbCUyMiUyMHN0X3Byb2Nlc3NlZCUzRCUyMnllcyUyMiUzRSUzQ3NwYW4lMjBzdHlsZSUzRCUyMnRleHQtZGVjb3JhdGlvbiUzQW5vbmUlM0Jjb2xvciUzQSUyMzAwMDAwMCUzQmRpc3BsYXklM0FpbmxpbmUtYmxvY2slM0JjdXJzb3IlM0Fwb2ludGVyJTNCJTIyJTIwY2xhc3MlM0QlMjJzdEJ1dHRvbiUyMiUzRSUzQ3NwYW4lMjBjbGFzcyUzRCUyMmNoaWNrbGV0cyUyMGVtYWlsJTIyJTNFRW1haWwlM0MlMkZzcGFuJTNFJTNDJTJGc3BhbiUzRSUzQyUyRnNwYW4lM0UlMEElMDklM0MlMkZkaXYlM0UlMEElMDklMEElMDklMEElMDklM0NkaXYlMjBjbGFzcyUzRCUyMmFydGljbGUtb3RoZXIlMjIlM0UlMEElMjAlMjAlMjAlMjAlMjAlMjAlMjAlMjAlM0NoMyUyMGNsYXNzJTNEJTIydGl0bGUlMjIlM0UlM0MlMkZoMyUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUyMCUyMCUzQ3VsJTNFJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTIwJTIwJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTIwJTIwJTNDJTJGdWwlM0UlMEElMjAlMjAlMjAlMjAlM0MlMkZkaXYlM0UlMEElMjAlMjAlMjAlMjAlM0NkaXYlMjBjbGFzcyUzRCUyMmNsYiUyMiUzRSUzQyUyRmRpdiUzRSUwQSUzQyUyRmRpdiUzRQ==[/vc_raw_html][/vc_column][/vc_row]', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2019-07-19 08:29:23', '2019-07-19 08:29:23', '', 0, 'http://localhost/wp/models/?page_id=232', 0, 'page', '', 0),
(233, 1, '2019-07-19 08:29:23', '2019-07-19 08:29:23', '[vc_row css=\".vc_custom_1563524924810{margin-top: 50px !important;}\"][vc_column width=\"1/4\"][models_menu_about_left][/vc_column][vc_column width=\"3/4\"][vc_raw_html]JTNDZGl2JTIwY2xhc3MlM0QlMjJjb250ZW50JTIyJTNFJTBBJTA5JTNDaDElMjBjbGFzcyUzRCUyMnRpdGxlJTIyJTNFTW9kZWxzJTIwJTNDJTJGaDElM0UlM0NzcGFuJTIwY2xhc3MlM0QlMjJkYXRlJTIyJTNFJTNDJTJGc3BhbiUzRSUwQSUwOSUzQ2RpdiUyMHN0eWxlJTNEJTIydGV4dC1hbGlnbiUzQWNlbnRlciUzQiUyMHBhZGRpbmclM0EyMHB4JTIwMCUzQiUyMiUzRSUzQ2ltZyUyMHNyYyUzRCUyMmh0dHAlM0ElMkYlMkZ0YXktbW9kZWxzLmNvbSUyRm1lZGlhJTJGYXJ0aWNsZSUyRjEzNTk1MjIwNDRfYXBwLW9ubGluZS5qcGclMjIlMjB3aWR0aCUzRCUyMjM2MCUyMiUyMHRpdGxlJTNEJTIyTW9kZWxzJTIyJTIwYWx0JTNEJTIyTW9kZWxzJTIyJTIwYm9yZGVyJTNEJTIyMCUyMiUzRSUzQyUyRmRpdiUzRSUwQSUwOSUzQ2RpdiUyMGNsYXNzJTNEJTIyYnJpZWYlMjBjbGIlMjIlM0UlMEElMDklMDklMjAlM0NwJTNFT3VyJTIwZXhjbHVzaXZlJTIwbW9kZWxzJTIwY29tZSUyMGZyb20lMjBWaWV0bmFtJTIwYW5kJTIwYWxsJTIwb3ZlciUyMHRoZSUyMHdvcmxkJTJDJTIwbWFraW5nJTIwdXMlMjB0aGUlMjBmaXJzdCUyMFZpZXRuYW1lc2UlMjBtb2RlbGluZyUyMGFnZW5jeSUyMHRvJTIwcHJvdmlkZSUyMGJvdGglMjBsb2NhbCUyMGFuZCUyMGludGVybmF0aW9uYWwlMjBtb2RlbHMlM0MlMkZwJTNFJTBBJTA5JTNDJTJGZGl2JTNFJTBBJTA5JTNDZGl2JTIwY2xhc3MlM0QlMjJjbGIlMjIlM0UlM0MlMkZkaXYlM0UlMEElMDklM0NkaXYlMjBjbGFzcyUzRCUyMmNvbnRlbnQlMjIlM0UlMEElMDklMDklM0NwJTNFT3VyJTIwdGhvcm91Z2glMjBzZWxlY3Rpb24lMjBwcm9jZXNzJTIwZW5zdXJlcyUyMHRoYXQlMjBvdXIlMjBtb2RlbHMlMjBtZWV0JTIwdGhlJTIwaGlnaGVzdCUyMG1hcmtldCUyMHJlcXVpcmVtZW50cyUyMGFuZCUyMGNvdmVyJTIwZGlmZmVyZW50JTIwa2luZHMlMjBvZiUyMGJlYXV0eS4lMjAlMjBBZGRpbmclMjB2YWx1ZSUyMHRvJTIweW91ciUyMGJ1c2luZXNzJTJDJTIwb3VyJTIwbW9kZWxzJTIwd29yayUyMHdpdGglMjBhJTIwc3RyaWN0bHklMjBwcm9mZXNzaW9uYWwlMjBhdHRpdHVkZSUyMHRvJTIwbWFrZSUyMHN1cmUlMjB5b3VyJTIwY29uY2VwdCUyMGlzJTIwdW5kZXJzdG9vZCUyMGFuZCUyMHlvdXIlMjBtZXNzYWdlJTIwZ2V0cyUyMGFjcm9zcy4lMjAlMjBXZSUyMGFyZSUyMGNvbnN0YW50bHklMjByZWNydWl0aW5nJTIwbmV3JTIwZmFjZXMlMjBpbiUyMG9yZGVyJTIwdG8lMjBjb250aW51ZSUyMHRvJTIwZ2l2ZSUyMGNsaWVudHMlMjBtb3JlJTIwb3B0aW9uJTIwZnJvbSUyMG9uZSUyMGNhbXBhaWduJTIwdG8lMjB0aGUlMjBuZXh0JTIwb25lLiUzQyUyRnAlM0UlMEElMDklM0MlMkZkaXYlM0UlMEElMDklMEElMDklM0NzY3JpcHQlMjB0eXBlJTNEJTIydGV4dCUyRmphdmFzY3JpcHQlMjIlM0V2YXIlMjBzd2l0Y2hUbzV4JTNEdHJ1ZSUzQiUzQyUyRnNjcmlwdCUzRSUwQSUwOSUzQ3NjcmlwdCUyMHR5cGUlM0QlMjJ0ZXh0JTJGamF2YXNjcmlwdCUyMiUyMHNyYyUzRCUyMmh0dHAlM0ElMkYlMkZ3LnNoYXJldGhpcy5jb20lMkZidXR0b24lMkZidXR0b25zLmpzJTIyJTNFJTNDJTJGc2NyaXB0JTNFJTBBJTA5JTNDc2NyaXB0JTIwdHlwZSUzRCUyMnRleHQlMkZqYXZhc2NyaXB0JTIyJTNFc3RMaWdodC5vcHRpb25zJTI4JTdCcHVibGlzaGVyJTNBJTIwJTIydXItZDdjNGUzYzMtMWRlOS01MDEtMWExNi02OTlhMWRlNWY3ZDIlMjIlN0QlMjklM0IlM0MlMkZzY3JpcHQlM0UlMDklMEElMDklM0NkaXYlMjBjbGFzcyUzRCUyMnNoYXJlLWJ1dHRvbiUyMiUzRSUwQSUwOSUzQ3NwYW4lMjBjbGFzcyUzRCUyMnN0X3NoYXJldGhpcyUyMiUyMGRpc3BsYXl0ZXh0JTNEJTIyU2hhcmVUaGlzJTIyJTIwc3RfcHJvY2Vzc2VkJTNEJTIyeWVzJTIyJTNFJTNDc3BhbiUyMHN0eWxlJTNEJTIydGV4dC1kZWNvcmF0aW9uJTNBbm9uZSUzQmNvbG9yJTNBJTIzMDAwMDAwJTNCZGlzcGxheSUzQWlubGluZS1ibG9jayUzQmN1cnNvciUzQXBvaW50ZXIlM0IlMjIlMjBjbGFzcyUzRCUyMnN0QnV0dG9uJTIyJTNFJTNDc3BhbiUyMGNsYXNzJTNEJTIyY2hpY2tsZXRzJTIwc2hhcmV0aGlzJTIyJTNFU2hhcmVUaGlzJTNDJTJGc3BhbiUzRSUzQyUyRnNwYW4lM0UlM0MlMkZzcGFuJTNFJTBBJTA5JTNDc3BhbiUyMGNsYXNzJTNEJTIyc3RfZmFjZWJvb2slMjIlMjBkaXNwbGF5dGV4dCUzRCUyMkZhY2Vib29rJTIyJTIwc3RfcHJvY2Vzc2VkJTNEJTIyeWVzJTIyJTNFJTNDc3BhbiUyMHN0eWxlJTNEJTIydGV4dC1kZWNvcmF0aW9uJTNBbm9uZSUzQmNvbG9yJTNBJTIzMDAwMDAwJTNCZGlzcGxheSUzQWlubGluZS1ibG9jayUzQmN1cnNvciUzQXBvaW50ZXIlM0IlMjIlMjBjbGFzcyUzRCUyMnN0QnV0dG9uJTIyJTNFJTNDc3BhbiUyMGNsYXNzJTNEJTIyY2hpY2tsZXRzJTIwZmFjZWJvb2slMjIlM0VGYWNlYm9vayUzQyUyRnNwYW4lM0UlM0MlMkZzcGFuJTNFJTNDJTJGc3BhbiUzRSUwQSUwOSUzQ3NwYW4lMjBjbGFzcyUzRCUyMnN0X3R3aXR0ZXIlMjIlMjBkaXNwbGF5dGV4dCUzRCUyMlR3ZWV0JTIyJTIwc3RfcHJvY2Vzc2VkJTNEJTIyeWVzJTIyJTNFJTNDc3BhbiUyMHN0eWxlJTNEJTIydGV4dC1kZWNvcmF0aW9uJTNBbm9uZSUzQmNvbG9yJTNBJTIzMDAwMDAwJTNCZGlzcGxheSUzQWlubGluZS1ibG9jayUzQmN1cnNvciUzQXBvaW50ZXIlM0IlMjIlMjBjbGFzcyUzRCUyMnN0QnV0dG9uJTIyJTNFJTNDc3BhbiUyMGNsYXNzJTNEJTIyY2hpY2tsZXRzJTIwdHdpdHRlciUyMiUzRVR3ZWV0JTNDJTJGc3BhbiUzRSUzQyUyRnNwYW4lM0UlM0MlMkZzcGFuJTNFJTBBJTA5JTNDc3BhbiUyMGNsYXNzJTNEJTIyc3RfZ29vZ2xlcGx1cyUyMiUyMGRpc3BsYXl0ZXh0JTNEJTIyR29vZ2xlJTIwJTJCJTIyJTIwc3RfcHJvY2Vzc2VkJTNEJTIyeWVzJTIyJTNFJTNDc3BhbiUyMHN0eWxlJTNEJTIydGV4dC1kZWNvcmF0aW9uJTNBbm9uZSUzQmNvbG9yJTNBJTIzMDAwMDAwJTNCZGlzcGxheSUzQWlubGluZS1ibG9jayUzQmN1cnNvciUzQXBvaW50ZXIlM0IlMjIlMjBjbGFzcyUzRCUyMnN0QnV0dG9uJTIyJTNFJTNDc3BhbiUyMGNsYXNzJTNEJTIyY2hpY2tsZXRzJTIwZ29vZ2xlcGx1cyUyMiUzRUdvb2dsZSUyMCUyQiUzQyUyRnNwYW4lM0UlM0MlMkZzcGFuJTNFJTNDJTJGc3BhbiUzRSUwQSUwOSUzQ3NwYW4lMjBjbGFzcyUzRCUyMnN0X2xpbmtlZGluJTIyJTIwZGlzcGxheXRleHQlM0QlMjJMaW5rZWRJbiUyMiUyMHN0X3Byb2Nlc3NlZCUzRCUyMnllcyUyMiUzRSUzQ3NwYW4lMjBzdHlsZSUzRCUyMnRleHQtZGVjb3JhdGlvbiUzQW5vbmUlM0Jjb2xvciUzQSUyMzAwMDAwMCUzQmRpc3BsYXklM0FpbmxpbmUtYmxvY2slM0JjdXJzb3IlM0Fwb2ludGVyJTNCJTIyJTIwY2xhc3MlM0QlMjJzdEJ1dHRvbiUyMiUzRSUzQ3NwYW4lMjBjbGFzcyUzRCUyMmNoaWNrbGV0cyUyMGxpbmtlZGluJTIyJTNFTGlua2VkSW4lM0MlMkZzcGFuJTNFJTNDJTJGc3BhbiUzRSUzQyUyRnNwYW4lM0UlMEElMDklM0NzcGFuJTIwY2xhc3MlM0QlMjJzdF9waW50ZXJlc3QlMjIlMjBkaXNwbGF5dGV4dCUzRCUyMlBpbnRlcmVzdCUyMiUyMHN0X3Byb2Nlc3NlZCUzRCUyMnllcyUyMiUzRSUzQ3NwYW4lMjBzdHlsZSUzRCUyMnRleHQtZGVjb3JhdGlvbiUzQW5vbmUlM0Jjb2xvciUzQSUyMzAwMDAwMCUzQmRpc3BsYXklM0FpbmxpbmUtYmxvY2slM0JjdXJzb3IlM0Fwb2ludGVyJTNCJTIyJTIwY2xhc3MlM0QlMjJzdEJ1dHRvbiUyMiUzRSUzQ3NwYW4lMjBjbGFzcyUzRCUyMmNoaWNrbGV0cyUyMHBpbnRlcmVzdCUyMiUzRVBpbnRlcmVzdCUzQyUyRnNwYW4lM0UlM0MlMkZzcGFuJTNFJTNDJTJGc3BhbiUzRSUwQSUwOSUzQ3NwYW4lMjBjbGFzcyUzRCUyMnN0X2VtYWlsJTIyJTIwZGlzcGxheXRleHQlM0QlMjJFbWFpbCUyMiUyMHN0X3Byb2Nlc3NlZCUzRCUyMnllcyUyMiUzRSUzQ3NwYW4lMjBzdHlsZSUzRCUyMnRleHQtZGVjb3JhdGlvbiUzQW5vbmUlM0Jjb2xvciUzQSUyMzAwMDAwMCUzQmRpc3BsYXklM0FpbmxpbmUtYmxvY2slM0JjdXJzb3IlM0Fwb2ludGVyJTNCJTIyJTIwY2xhc3MlM0QlMjJzdEJ1dHRvbiUyMiUzRSUzQ3NwYW4lMjBjbGFzcyUzRCUyMmNoaWNrbGV0cyUyMGVtYWlsJTIyJTNFRW1haWwlM0MlMkZzcGFuJTNFJTNDJTJGc3BhbiUzRSUzQyUyRnNwYW4lM0UlMEElMDklM0MlMkZkaXYlM0UlMEElMDklMEElMDklMEElMDklM0NkaXYlMjBjbGFzcyUzRCUyMmFydGljbGUtb3RoZXIlMjIlM0UlMEElMjAlMjAlMjAlMjAlMjAlMjAlMjAlMjAlM0NoMyUyMGNsYXNzJTNEJTIydGl0bGUlMjIlM0UlM0MlMkZoMyUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUyMCUyMCUzQ3VsJTNFJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTIwJTIwJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTIwJTIwJTNDJTJGdWwlM0UlMEElMjAlMjAlMjAlMjAlM0MlMkZkaXYlM0UlMEElMjAlMjAlMjAlMjAlM0NkaXYlMjBjbGFzcyUzRCUyMmNsYiUyMiUzRSUzQyUyRmRpdiUzRSUwQSUzQyUyRmRpdiUzRQ==[/vc_raw_html][/vc_column][/vc_row]', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '232-revision-v1', '', '', '2019-07-19 08:29:23', '2019-07-19 08:29:23', '', 232, 'http://localhost/wp/models/232-revision-v1/', 0, 'revision', '', 0),
(234, 1, '2019-07-19 08:29:54', '2019-07-19 08:29:54', ' ', '', '', 'publish', 'closed', 'closed', '', '234', '', '', '2019-07-19 09:59:37', '2019-07-19 09:59:37', '', 0, 'http://localhost/wp/models/?p=234', 43, 'nav_menu_item', '', 0),
(236, 1, '2019-07-19 09:45:16', '2019-07-19 09:45:16', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"archives\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Archives', 'archives', 'publish', 'closed', 'closed', '', 'group_5d3190deecd12', '', '', '2019-07-19 09:45:51', '2019-07-19 09:45:51', '', 0, 'http://localhost/wp/models/?post_type=acf-field-group&#038;p=236', 0, 'acf-field-group', '', 0),
(237, 1, '2019-07-19 09:45:16', '2019-07-19 09:45:16', 'a:12:{s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:1:{s:4:\"hien\";s:6:\"Hiện\";}s:12:\"allow_custom\";i:0;s:11:\"save_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"value\";}', 'Hiện ở sidemenu phải', 'status', 'publish', 'closed', 'closed', '', 'field_5d3190ef7147a', '', '', '2019-07-19 09:45:16', '2019-07-19 09:45:16', '', 236, 'http://localhost/wp/models/?post_type=acf-field&p=237', 0, 'acf-field', '', 0),
(238, 1, '2019-07-19 10:04:07', '2019-07-19 10:04:07', '[vc_row css=\".vc_custom_1563503991627{margin-top: 40px !important;}\"][vc_column width=\"1/4\"][models_menu_blog_left][/vc_column][vc_column width=\"1/2\"][models_blog][/vc_column][vc_column width=\"1/4\"][models_menu_blog_right][/vc_column][/vc_row]', 'Blog', '', 'inherit', 'closed', 'closed', '', '202-revision-v1', '', '', '2019-07-19 10:04:07', '2019-07-19 10:04:07', '', 202, 'http://localhost/wp/models/202-revision-v1/', 0, 'revision', '', 0),
(239, 1, '2019-07-19 10:09:33', '2019-07-19 10:09:33', '[vc_row css=\".vc_custom_1563503991627{margin-top: 40px !important;}\"][vc_column width=\"1/6\"][models_menu_blog_left][/vc_column][vc_column width=\"2/3\"][models_blog][/vc_column][vc_column width=\"1/6\"][models_menu_blog_right][/vc_column][/vc_row]', 'Blog', '', 'inherit', 'closed', 'closed', '', '202-revision-v1', '', '', '2019-07-19 10:09:33', '2019-07-19 10:09:33', '', 202, 'http://localhost/wp/models/202-revision-v1/', 0, 'revision', '', 0),
(240, 1, '2019-07-19 10:12:46', '2019-07-19 10:12:46', '[vc_row css=\".vc_custom_1563503991627{margin-top: 40px !important;}\"][vc_column width=\"1/4\"][models_menu_blog_left][/vc_column][vc_column width=\"1/2\"][models_blog][/vc_column][vc_column width=\"1/4\"][models_menu_blog_right][/vc_column][/vc_row]', 'Blog', '', 'inherit', 'closed', 'closed', '', '202-revision-v1', '', '', '2019-07-19 10:12:46', '2019-07-19 10:12:46', '', 202, 'http://localhost/wp/models/202-revision-v1/', 0, 'revision', '', 0),
(245, 1, '2019-08-11 00:17:02', '2019-08-11 00:17:02', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'test', 'test', 'publish', 'closed', 'closed', '', 'group_5d4f5e53c0ef4', '', '', '2019-08-11 00:17:02', '2019-08-11 00:17:02', '', 0, 'http://localhost/wp/models/?post_type=acf-field-group&#038;p=245', 0, 'acf-field-group', '', 0),
(246, 1, '2019-08-11 00:17:02', '2019-08-11 00:17:02', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'des', 'des', 'publish', 'closed', 'closed', '', 'field_5d4f5e62855cb', '', '', '2019-08-11 00:17:02', '2019-08-11 00:17:02', '', 245, 'http://localhost/wp/models/?post_type=acf-field&p=246', 0, 'acf-field', '', 0),
(247, 1, '2019-08-11 00:17:02', '2019-08-11 00:17:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'wer', 'wer', 'publish', 'closed', 'closed', '', 'field_5d4f5e71855cc', '', '', '2019-08-11 00:17:02', '2019-08-11 00:17:02', '', 246, 'http://localhost/wp/models/?post_type=acf-field&p=247', 0, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_registration_log`
--

CREATE TABLE `wp_registration_log` (
  `ID` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `IP` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `date_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_signups`
--

CREATE TABLE `wp_signups` (
  `signup_id` bigint(20) NOT NULL,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `meta` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_site`
--

CREATE TABLE `wp_site` (
  `id` bigint(20) NOT NULL,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_site`
--

INSERT INTO `wp_site` (`id`, `domain`, `path`) VALUES
(1, 'localhost', '/wp/models/');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_sitemeta`
--

CREATE TABLE `wp_sitemeta` (
  `meta_id` bigint(20) NOT NULL,
  `site_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_sitemeta`
--

INSERT INTO `wp_sitemeta` (`meta_id`, `site_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'site_name', 'Models Sites'),
(2, 1, 'admin_email', 'thoweb.demo@gmail.com'),
(3, 1, 'admin_user_id', '1'),
(4, 1, 'registration', 'none'),
(5, 1, 'upload_filetypes', 'jpg jpeg png gif mov avi mpg 3gp 3g2 midi mid pdf doc ppt odt pptx docx pps ppsx xls xlsx key mp3 ogg flac m4a wav mp4 m4v webm ogv flv'),
(6, 1, 'blog_upload_space', '100'),
(7, 1, 'fileupload_maxk', '1500'),
(8, 1, 'site_admins', 'a:1:{i:0;s:5:\"coder\";}'),
(9, 1, 'allowedthemes', 'a:2:{s:6:\"models\";b:1;s:15:\"twentyseventeen\";b:1;}'),
(10, 1, 'illegal_names', 'a:9:{i:0;s:3:\"www\";i:1;s:3:\"web\";i:2;s:4:\"root\";i:3;s:5:\"admin\";i:4;s:4:\"main\";i:5;s:6:\"invite\";i:6;s:13:\"administrator\";i:7;s:5:\"files\";i:8;s:4:\"blog\";}'),
(11, 1, 'wpmu_upgrade_site', '38590'),
(12, 1, 'welcome_email', 'Howdy USERNAME,\n\nYour new SITE_NAME site has been successfully set up at:\nBLOG_URL\n\nYou can log in to the administrator account with the following information:\n\nUsername: USERNAME\nPassword: PASSWORD\nLog in here: BLOG_URLwp-login.php\n\nWe hope you enjoy your new site. Thanks!\n\n--The Team @ SITE_NAME'),
(13, 1, 'first_post', 'Welcome to %s. This is your first post. Edit or delete it, then start blogging!'),
(14, 1, 'siteurl', 'http://localhost/wp/models/'),
(15, 1, 'add_new_users', '0'),
(16, 1, 'upload_space_check_disabled', '1'),
(17, 1, 'subdomain_install', '0'),
(18, 1, 'global_terms_enabled', '0'),
(19, 1, 'ms_files_rewriting', '0'),
(20, 1, 'initial_db_version', '44719'),
(21, 1, 'active_sitewide_plugins', 'a:0:{}'),
(22, 1, 'WPLANG', 'en_US'),
(23, 1, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:6:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.4\";s:7:\"version\";s:5:\"5.0.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1566879888;s:15:\"version_checked\";s:6:\"4.9.10\";s:12:\"translations\";a:0:{}}'),
(30, 1, 'user_count', '2'),
(31, 1, 'blog_count', '1'),
(32, 1, 'can_compress_scripts', '1'),
(47, 1, '_site_transient_timeout_theme_roots', '1566881692'),
(48, 1, '_site_transient_theme_roots', 'a:5:{s:6:\"models\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}'),
(49, 1, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1566879895;s:7:\"checked\";a:5:{s:6:\"models\";s:3:\"7.0\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:1:{s:13:\"twentyfifteen\";a:6:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.5.zip\";s:8:\"requires\";s:3:\"4.1\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}'),
(50, 1, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1566879897;s:7:\"checked\";a:17:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.6.10\";s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"6.74\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.5\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:7:\"1.2.4.6\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.6.2\";s:49:\"external-image-replace/external-image-replace.php\";s:5:\"1.0.8\";s:79:\"geodatasource-country-region-dropdown/geodatasource-country-region-dropdown.php\";s:5:\"1.0.1\";s:9:\"hello.php\";s:5:\"1.7.2\";s:35:\"litespeed-cache/litespeed-cache.php\";s:7:\"2.9.8.3\";s:38:\"post-duplicator/m4c-postduplicator.php\";s:4:\"2.20\";s:33:\"addthis/addthis_social_widget.php\";s:5:\"6.2.6\";s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";s:5:\"2.2.8\";s:25:\"addthis-all/bootstrap.php\";s:5:\"3.2.6\";s:41:\"wordpress-importer/wordpress-importer.php\";s:5:\"0.6.4\";s:27:\"js_composer/js_composer.php\";s:5:\"5.4.7\";}s:8:\"response\";a:7:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:3:\"7.5\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2097157\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2097157\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2097157\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2097157\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";s:6:\"5.2.17\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:32:\"w.org/plugins/contact-form-cfdb7\";s:4:\"slug\";s:18:\"contact-form-cfdb7\";s:6:\"plugin\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:11:\"new_version\";s:7:\"1.2.4.7\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/contact-form-cfdb7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-cfdb7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-256x256.png?rev=1619878\";s:2:\"1x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-128x128.png?rev=1619878\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/contact-form-cfdb7/assets/banner-772x250.png?rev=1619902\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:35:\"litespeed-cache/litespeed-cache.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:29:\"w.org/plugins/litespeed-cache\";s:4:\"slug\";s:15:\"litespeed-cache\";s:6:\"plugin\";s:35:\"litespeed-cache/litespeed-cache.php\";s:11:\"new_version\";s:7:\"2.9.8.5\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/litespeed-cache/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/litespeed-cache.2.9.8.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-256x256.png?rev=1574145\";s:2:\"1x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-128x128.png?rev=1574145\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/litespeed-cache/assets/banner-1544x500.png?rev=2031698\";s:2:\"1x\";s:70:\"https://ps.w.org/litespeed-cache/assets/banner-772x250.png?rev=2031698\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:41:\"w.org/plugins/ultimate-social-media-icons\";s:4:\"slug\";s:27:\"ultimate-social-media-icons\";s:6:\"plugin\";s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";s:11:\"new_version\";s:5:\"2.3.7\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/ultimate-social-media-icons/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/ultimate-social-media-icons.2.3.7.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:80:\"https://ps.w.org/ultimate-social-media-icons/assets/icon-128x128.png?rev=1598977\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/ultimate-social-media-icons/assets/banner-772x250.png?rev=1032920\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:21:\"<p>Please upgrade</p>\";s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"js_composer/js_composer.php\";O:8:\"stdClass\":5:{s:4:\"slug\";s:11:\"js_composer\";s:11:\"new_version\";s:5:\"6.0.5\";s:3:\"url\";s:0:\"\";s:7:\"package\";b:0;s:4:\"name\";s:21:\"WPBakery Page Builder\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.3\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:10:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:49:\"external-image-replace/external-image-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/external-image-replace\";s:4:\"slug\";s:22:\"external-image-replace\";s:6:\"plugin\";s:49:\"external-image-replace/external-image-replace.php\";s:11:\"new_version\";s:5:\"1.0.8\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/external-image-replace/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/external-image-replace.1.0.10.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:66:\"https://s.w.org/plugins/geopattern-icon/external-image-replace.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:79:\"geodatasource-country-region-dropdown/geodatasource-country-region-dropdown.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:51:\"w.org/plugins/geodatasource-country-region-dropdown\";s:4:\"slug\";s:37:\"geodatasource-country-region-dropdown\";s:6:\"plugin\";s:79:\"geodatasource-country-region-dropdown/geodatasource-country-region-dropdown.php\";s:11:\"new_version\";s:5:\"1.0.1\";s:3:\"url\";s:68:\"https://wordpress.org/plugins/geodatasource-country-region-dropdown/\";s:7:\"package\";s:86:\"https://downloads.wordpress.org/plugin/geodatasource-country-region-dropdown.1.0.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:90:\"https://ps.w.org/geodatasource-country-region-dropdown/assets/icon-128x128.png?rev=2121895\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:38:\"post-duplicator/m4c-postduplicator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/post-duplicator\";s:4:\"slug\";s:15:\"post-duplicator\";s:6:\"plugin\";s:38:\"post-duplicator/m4c-postduplicator.php\";s:11:\"new_version\";s:4:\"2.20\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/post-duplicator/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/post-duplicator.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/post-duplicator/assets/icon-128x128.png?rev=1587588\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/post-duplicator/assets/banner-1544x500.png?rev=1587588\";s:2:\"1x\";s:70:\"https://ps.w.org/post-duplicator/assets/banner-772x250.png?rev=1587588\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"addthis/addthis_social_widget.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/addthis\";s:4:\"slug\";s:7:\"addthis\";s:6:\"plugin\";s:33:\"addthis/addthis_social_widget.php\";s:11:\"new_version\";s:5:\"6.2.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/addthis/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/addthis.6.2.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/addthis/assets/icon-256x256.png?rev=1223867\";s:2:\"1x\";s:60:\"https://ps.w.org/addthis/assets/icon-128x128.png?rev=1223867\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/addthis/assets/banner-1544x500.png?rev=1499004\";s:2:\"1x\";s:62:\"https://ps.w.org/addthis/assets/banner-772x250.png?rev=1499004\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"addthis-all/bootstrap.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/addthis-all\";s:4:\"slug\";s:11:\"addthis-all\";s:6:\"plugin\";s:25:\"addthis-all/bootstrap.php\";s:11:\"new_version\";s:5:\"3.2.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/addthis-all/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/addthis-all.3.2.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/addthis-all/assets/icon-256x256.png?rev=1310277\";s:2:\"1x\";s:64:\"https://ps.w.org/addthis-all/assets/icon-128x128.png?rev=1310277\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/addthis-all/assets/banner-1544x500.png?rev=1499001\";s:2:\"1x\";s:66:\"https://ps.w.org/addthis-all/assets/banner-772x250.png?rev=1499001\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.6.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}}}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 47, 'services_left_menu', 'a:1:{i:0;s:4:\"hien\";}'),
(2, 47, '_services_left_menu', 'field_5d2facbb27c36'),
(3, 48, 'services_left_menu', 'a:1:{i:0;s:4:\"hien\";}'),
(4, 48, '_services_left_menu', 'field_5d2facbb27c36'),
(5, 49, 'services_left_menu', 'a:1:{i:0;s:4:\"hien\";}'),
(6, 49, '_services_left_menu', 'field_5d2facbb27c36'),
(7, 50, 'services_left_menu', 'a:1:{i:0;s:4:\"hien\";}'),
(8, 50, '_services_left_menu', 'field_5d2facbb27c36'),
(9, 51, 'services_left_menu', 'a:1:{i:0;s:4:\"hien\";}'),
(10, 51, '_services_left_menu', 'field_5d2facbb27c36'),
(11, 57, 'status', ''),
(12, 57, '_status', 'field_5d3190ef7147a'),
(21, 62, 'status', ''),
(20, 61, '_status', 'field_5d3190ef7147a'),
(19, 61, 'status', ''),
(17, 60, 'status', ''),
(18, 60, '_status', 'field_5d3190ef7147a'),
(22, 62, '_status', 'field_5d3190ef7147a'),
(23, 63, 'status', ''),
(24, 63, '_status', 'field_5d3190ef7147a'),
(25, 64, 'status', ''),
(26, 64, '_status', 'field_5d3190ef7147a');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'International', 'international', 0),
(3, 'Local', 'local', 0),
(4, 'Height 178cm', 'height-178cm', 0),
(5, 'Bust 86cm', 'bust-86cm', 0),
(6, 'Waist 63cm', 'waist-63cm', 0),
(7, 'Hips 88cm', 'hips-88cm', 0),
(8, 'Shoe 40', 'shoe-40', 0),
(9, 'Hair Brown', 'hair-brown', 0),
(10, 'Eyes Blue', 'eyes-blue', 0),
(11, 'Chiều cao 178cm', 'chieu-cao-178cm', 0),
(12, 'Vòng ngực 86cm', 'vong-nguc-86cm', 0),
(13, 'Vòng eo 63cm', 'vong-eo-63cm', 0),
(14, 'Hông 88cm', 'hong-88cm', 0),
(15, 'Cỡ giày 40', 'co-giay-40', 0),
(16, 'Màu tóc Brown', 'mau-toc-brown', 0),
(17, 'Màu mắt Blue', 'mau-mat-blue', 0),
(20, 'Nam', 'nam', 0),
(21, 'Nữ', 'nu', 0),
(22, 'Women', 'women', 0),
(23, 'Men', 'men', 0),
(24, 'New Comers', 'new-comers', 0),
(25, 'International', 'international', 0),
(26, 'International', 'international-new-comers', 0),
(27, 'International', 'international-women', 0),
(28, 'Local', 'local', 0),
(29, 'Local', 'local-men', 0),
(30, 'Local', 'local-new-comers', 0),
(31, 'NEWS', 'news', 0),
(32, 'Campaigns', 'campaigns', 0),
(33, 'Interview', 'interview', 0),
(34, 'Tay Models Artists', 'tay-models-artists', 0),
(35, 'Lifestyle', 'lifestyle', 0),
(36, 'How to', 'how-to', 0),
(37, 'Main Menu', 'main-menu', 0),
(38, 'Our Courses', 'our-courses', 0),
(39, 'K - Models', 'k-models', 0),
(40, 'B - Models', 'b-models', 0),
(41, 'I - Models', 'i-models', 0),
(42, 'Our Team', 'our-team', 0),
(43, 'HOW TO APPLY', 'how-to-apply', 0),
(44, 'FAQs', 'faqs', 0),
(45, 'Footer Menu', 'footer-menu', 0),
(47, 'CLIENTS', 'clients', 0),
(48, 'CONFIDENTIAL POLICY', 'confidential-policy', 0),
(49, 'QUOTATION', 'quotation', 0),
(50, 'SERVICE PACKAGE', 'service-package', 0),
(51, 'UPCOMING PROJECTS', 'upcoming-projects', 0),
(52, 'HAIR STYLISTS', 'hair-stylists', 0),
(53, 'MAKE-UP ARTISTS', 'make-up-artists', 0),
(54, 'PHOTOGRAPHERS', 'photographers', 0),
(55, 'STYLISTS', 'stylists', 0),
(56, 'Menu About', 'menu-about', 0),
(57, '2019', '2019', 0),
(60, 'June', 'june', 0),
(61, 'July', 'july', 0),
(62, '2018', '2018', 0),
(63, 'June', 'june-2018', 0),
(64, 'July', 'july-2018', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(17, 2, 0),
(17, 3, 0),
(17, 4, 0),
(17, 5, 0),
(17, 6, 0),
(17, 7, 0),
(17, 8, 0),
(17, 9, 0),
(17, 10, 0),
(17, 11, 0),
(17, 12, 0),
(17, 13, 0),
(17, 14, 0),
(17, 15, 0),
(17, 16, 0),
(17, 17, 0),
(17, 22, 0),
(17, 23, 0),
(17, 24, 0),
(17, 25, 0),
(17, 26, 0),
(17, 27, 0),
(17, 28, 0),
(17, 29, 0),
(17, 30, 0),
(42, 2, 0),
(42, 3, 0),
(61, 2, 0),
(61, 3, 0),
(70, 4, 0),
(70, 5, 0),
(70, 6, 0),
(70, 7, 0),
(70, 8, 0),
(70, 9, 0),
(70, 10, 0),
(70, 11, 0),
(70, 12, 0),
(70, 13, 0),
(70, 14, 0),
(70, 15, 0),
(70, 16, 0),
(70, 17, 0),
(70, 22, 0),
(70, 23, 0),
(70, 24, 0),
(70, 25, 0),
(70, 28, 0),
(71, 4, 0),
(71, 5, 0),
(71, 6, 0),
(71, 7, 0),
(71, 8, 0),
(71, 9, 0),
(71, 10, 0),
(71, 11, 0),
(71, 12, 0),
(71, 13, 0),
(71, 14, 0),
(71, 15, 0),
(71, 16, 0),
(71, 17, 0),
(71, 22, 0),
(71, 23, 0),
(71, 24, 0),
(71, 25, 0),
(71, 28, 0),
(72, 4, 0),
(72, 5, 0),
(72, 6, 0),
(72, 7, 0),
(72, 8, 0),
(72, 9, 0),
(72, 10, 0),
(72, 11, 0),
(72, 12, 0),
(72, 13, 0),
(72, 14, 0),
(72, 15, 0),
(72, 16, 0),
(72, 17, 0),
(72, 22, 0),
(72, 23, 0),
(72, 24, 0),
(72, 25, 0),
(72, 28, 0),
(73, 4, 0),
(73, 5, 0),
(73, 6, 0),
(73, 7, 0),
(73, 8, 0),
(73, 9, 0),
(73, 10, 0),
(73, 11, 0),
(73, 12, 0),
(73, 13, 0),
(73, 14, 0),
(73, 15, 0),
(73, 16, 0),
(73, 17, 0),
(73, 22, 0),
(73, 23, 0),
(73, 24, 0),
(73, 25, 0),
(73, 28, 0),
(74, 4, 0),
(74, 5, 0),
(74, 6, 0),
(74, 7, 0),
(74, 8, 0),
(74, 9, 0),
(74, 10, 0),
(74, 11, 0),
(74, 12, 0),
(74, 13, 0),
(74, 14, 0),
(74, 15, 0),
(74, 16, 0),
(74, 17, 0),
(74, 22, 0),
(74, 23, 0),
(74, 24, 0),
(74, 25, 0),
(74, 28, 0),
(75, 4, 0),
(75, 5, 0),
(75, 6, 0),
(75, 7, 0),
(75, 8, 0),
(75, 9, 0),
(75, 10, 0),
(75, 11, 0),
(75, 12, 0),
(75, 13, 0),
(75, 14, 0),
(75, 15, 0),
(75, 16, 0),
(75, 17, 0),
(75, 22, 0),
(75, 23, 0),
(75, 24, 0),
(75, 25, 0),
(75, 28, 0),
(76, 4, 0),
(76, 5, 0),
(76, 6, 0),
(76, 7, 0),
(76, 8, 0),
(76, 9, 0),
(76, 10, 0),
(76, 11, 0),
(76, 12, 0),
(76, 13, 0),
(76, 14, 0),
(76, 15, 0),
(76, 16, 0),
(76, 17, 0),
(76, 22, 0),
(76, 23, 0),
(76, 24, 0),
(76, 25, 0),
(76, 28, 0),
(95, 37, 0),
(96, 37, 0),
(97, 37, 0),
(98, 37, 0),
(99, 37, 0),
(100, 37, 0),
(101, 37, 0),
(102, 37, 0),
(103, 37, 0),
(104, 37, 0),
(105, 37, 0),
(110, 37, 0),
(116, 37, 0),
(117, 37, 0),
(118, 37, 0),
(119, 37, 0),
(120, 37, 0),
(121, 37, 0),
(122, 37, 0),
(123, 37, 0),
(125, 37, 0),
(126, 37, 0),
(127, 37, 0),
(128, 37, 0),
(129, 37, 0),
(130, 37, 0),
(134, 37, 0),
(143, 45, 0),
(144, 45, 0),
(145, 45, 0),
(154, 4, 0),
(154, 5, 0),
(154, 10, 0),
(154, 11, 0),
(154, 13, 0),
(154, 14, 0),
(154, 15, 0),
(154, 16, 0),
(154, 17, 0),
(154, 52, 0),
(154, 53, 0),
(154, 54, 0),
(154, 55, 0),
(156, 37, 0),
(157, 37, 0),
(158, 37, 0),
(159, 37, 0),
(160, 37, 0),
(161, 37, 0),
(164, 38, 0),
(164, 39, 0),
(164, 40, 0),
(164, 41, 0),
(164, 42, 0),
(164, 43, 0),
(164, 44, 0),
(165, 47, 0),
(165, 48, 0),
(165, 49, 0),
(165, 50, 0),
(165, 51, 0),
(167, 37, 0),
(168, 37, 0),
(169, 37, 0),
(170, 37, 0),
(171, 37, 0),
(174, 37, 0),
(175, 37, 0),
(176, 37, 0),
(177, 37, 0),
(179, 38, 0),
(179, 40, 0),
(179, 41, 0),
(184, 31, 0),
(199, 35, 0),
(200, 33, 0),
(200, 57, 0),
(200, 60, 0),
(200, 61, 0),
(201, 32, 0),
(201, 57, 0),
(201, 60, 0),
(201, 61, 0),
(206, 56, 0),
(207, 56, 0),
(208, 56, 0),
(209, 56, 0),
(210, 56, 0),
(211, 56, 0),
(230, 37, 0),
(234, 37, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'models_cat', '', 0, 3),
(3, 3, 'models_cat', '', 0, 3),
(4, 4, 'post_tag', '', 0, 9),
(5, 5, 'post_tag', '', 0, 9),
(6, 6, 'post_tag', '', 0, 8),
(7, 7, 'post_tag', '', 0, 8),
(8, 8, 'post_tag', '', 0, 8),
(9, 9, 'post_tag', '', 0, 8),
(10, 10, 'post_tag', '', 0, 9),
(11, 11, 'post_tag', '', 0, 9),
(12, 12, 'post_tag', '', 0, 8),
(13, 13, 'post_tag', '', 0, 9),
(14, 14, 'post_tag', '', 0, 9),
(15, 15, 'post_tag', '', 0, 9),
(16, 16, 'post_tag', '', 0, 9),
(17, 17, 'post_tag', '', 0, 9),
(20, 20, 'gender', '', 0, 0),
(21, 21, 'gender', '', 0, 0),
(22, 22, 'object', '', 0, 8),
(23, 23, 'object', '', 0, 8),
(24, 24, 'object', '', 0, 8),
(25, 25, 'object', '', 23, 8),
(26, 26, 'object', '', 24, 1),
(27, 27, 'object', '', 22, 1),
(28, 28, 'object', '', 22, 8),
(29, 29, 'object', '', 23, 1),
(30, 30, 'object', '', 24, 1),
(31, 31, 'category', '', 0, 1),
(32, 32, 'category', '', 0, 1),
(33, 33, 'category', '', 0, 1),
(34, 34, 'category', '', 0, 0),
(35, 35, 'category', '', 0, 1),
(36, 36, 'category', '', 0, 0),
(37, 37, 'nav_menu', '', 0, 44),
(38, 38, 'academy_cat', '', 0, 2),
(39, 39, 'academy_cat', '', 38, 1),
(40, 40, 'academy_cat', '', 38, 2),
(41, 41, 'academy_cat', '', 38, 2),
(42, 42, 'academy_cat', '', 0, 1),
(43, 43, 'academy_cat', '', 0, 1),
(44, 44, 'academy_cat', '', 0, 1),
(45, 45, 'nav_menu', '', 0, 3),
(47, 47, 'services_cat', '', 0, 1),
(48, 48, 'services_cat', '', 0, 1),
(49, 49, 'services_cat', '', 0, 1),
(50, 50, 'services_cat', '', 0, 1),
(51, 51, 'services_cat', '', 0, 1),
(52, 52, 'artists_cat', '', 0, 1),
(53, 53, 'artists_cat', '', 0, 1),
(54, 54, 'artists_cat', '', 0, 1),
(55, 55, 'artists_cat', '', 0, 1),
(56, 56, 'nav_menu', '', 0, 6),
(57, 57, 'archives', '', 0, 2),
(60, 60, 'archives', '', 57, 2),
(61, 61, 'archives', '', 57, 2),
(62, 62, 'archives', '', 0, 0),
(63, 63, 'archives', '', 62, 0),
(64, 64, 'archives', '', 62, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'coder'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
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
(14, 1, 'dismissed_wp_pointers', 'vc_pointers_backend_editor,plugin_editor_notice,theme_editor_notice,wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"e444daecd31d2bcc4d0310bf6db1bdc7077d83125b43a580c6f3866acc16f298\";a:4:{s:10:\"expiration\";i:1565662668;s:2:\"ip\";s:12:\"14.230.65.59\";s:2:\"ua\";s:103:\"Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564453068;}s:64:\"f3c1a91fcfe379aed57b9fe0e1bac2ff3137f431247b59669d3cc4f8b2e2d92c\";a:4:{s:10:\"expiration\";i:1565655367;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:103:\"Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1565482567;}}'),
(43, 2, 'session_tokens', 'a:2:{s:64:\"3346f93dd8bc22bde77dfff7465098a49a0852fe92adffb16281eaed73bbae98\";a:4:{s:10:\"expiration\";i:1563717954;s:2:\"ip\";s:12:\"14.230.65.59\";s:2:\"ua\";s:103:\"Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1563545154;}s:64:\"97816bb2e5c80575889f70d5fab24f74530244e53a252b4911645b3e779aac96\";a:4:{s:10:\"expiration\";i:1563719418;s:2:\"ip\";s:14:\"171.241.237.62\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1563546618;}}'),
(29, 2, 'nickname', 'model'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '244'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"14.230.65.0\";}'),
(19, 1, 'wp_user-settings', 'editor=tinymce&edit_element_vcUIPanelWidth=767&edit_element_vcUIPanelLeft=558px&edit_element_vcUIPanelTop=77px&libraryContent=browse&editor_expand=off'),
(20, 1, 'wp_user-settings-time', '1563503618'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:24:\"add-post-type-vtm_footer\";i:1;s:20:\"add-post-type-models\";i:2;s:12:\"add-post_tag\";i:3;s:7:\"add-sex\";}'),
(23, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(24, 1, 'nav_menu_recently_edited', '37'),
(27, 1, 'closedpostboxes_post', 'a:0:{}'),
(28, 1, 'metaboxhidden_post', 'a:10:{i:0;s:23:\"acf-group_5aec8cf4ca3bc\";i:1;s:23:\"acf-group_5d2d929e91fd9\";i:2;s:23:\"acf-group_5d28956672a24\";i:3;s:23:\"acf-group_5d2d8d33e19aa\";i:4;s:23:\"acf-group_5d2facb8a32bc\";i:5;s:13:\"trackbacksdiv\";i:6;s:16:\"commentstatusdiv\";i:7;s:11:\"commentsdiv\";i:8;s:7:\"slugdiv\";i:9;s:9:\"authordiv\";}'),
(25, 1, 'meta-box-order_toplevel_page_theme-general-settings', 'a:2:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:71:\"acf-group_5aec8cf4ca3bc,acf-group_5d2d8d33e19aa,acf-group_5d2d929e91fd9\";}'),
(26, 1, 'screen_layout_toplevel_page_theme-general-settings', '2'),
(30, 2, 'first_name', 'model'),
(31, 2, 'last_name', ''),
(32, 2, 'description', ''),
(33, 2, 'rich_editing', 'true'),
(34, 2, 'syntax_highlighting', 'true'),
(35, 2, 'comment_shortcuts', 'false'),
(36, 2, 'admin_color', 'fresh'),
(37, 2, 'use_ssl', '0'),
(38, 2, 'show_admin_bar_front', 'true'),
(39, 2, 'locale', ''),
(40, 2, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(41, 2, 'wp_user_level', '7'),
(42, 2, 'dismissed_wp_pointers', ''),
(44, 2, 'wp_dashboard_quick_press_last_post_id', '241'),
(45, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:13:\"171.241.237.0\";}'),
(46, 1, 'source_domain', 'localhost'),
(47, 1, 'primary_blog', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `spam` tinyint(2) NOT NULL DEFAULT '0',
  `deleted` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`, `spam`, `deleted`) VALUES
(1, 'coder', '$P$BhLT6t2RmOQxeowPR9WQz/4.T0RQQ6/', 'coder', 'thoweb.demo@gmail.com', '', '2019-07-11 13:50:53', '', 0, 'coder', 0, 0),
(2, 'model', '$P$BPBbgW.SdTCo1mtmGyRdxco83eP3Er/', 'model', 'ltthanh106@gmail.com', '', '2019-07-19 14:05:18', '1563545118:$P$BsSHMGsQDc5mnHKPVv/j6ms5afZoQv/', 0, 'model', 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_blogs`
--
ALTER TABLE `wp_blogs`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `domain` (`domain`(50),`path`(5)),
  ADD KEY `lang_id` (`lang_id`);

--
-- Chỉ mục cho bảng `wp_blog_versions`
--
ALTER TABLE `wp_blog_versions`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `db_version` (`db_version`);

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `wp_db7_forms`
--
ALTER TABLE `wp_db7_forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_registration_log`
--
ALTER TABLE `wp_registration_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IP` (`IP`);

--
-- Chỉ mục cho bảng `wp_signups`
--
ALTER TABLE `wp_signups`
  ADD PRIMARY KEY (`signup_id`),
  ADD KEY `activation_key` (`activation_key`),
  ADD KEY `user_email` (`user_email`),
  ADD KEY `user_login_email` (`user_login`,`user_email`),
  ADD KEY `domain_path` (`domain`(140),`path`(51));

--
-- Chỉ mục cho bảng `wp_site`
--
ALTER TABLE `wp_site`
  ADD PRIMARY KEY (`id`),
  ADD KEY `domain` (`domain`(140),`path`(51));

--
-- Chỉ mục cho bảng `wp_sitemeta`
--
ALTER TABLE `wp_sitemeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `site_id` (`site_id`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_blogs`
--
ALTER TABLE `wp_blogs`
  MODIFY `blog_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_db7_forms`
--
ALTER TABLE `wp_db7_forms`
  MODIFY `form_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1381;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1355;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT cho bảng `wp_registration_log`
--
ALTER TABLE `wp_registration_log`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_signups`
--
ALTER TABLE `wp_signups`
  MODIFY `signup_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_site`
--
ALTER TABLE `wp_site`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_sitemeta`
--
ALTER TABLE `wp_sitemeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
