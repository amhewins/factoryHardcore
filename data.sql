-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 03, 2018 at 12:53 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `factoryHardcore`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
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
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-03-26 01:58:03', '2018-03-26 01:58:03', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
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
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/factoryHardcore', 'yes'),
(2, 'home', 'http://localhost:8888/factoryHardcore', 'yes'),
(3, 'blogname', 'Factory Hardcore', 'yes'),
(4, 'blogdescription', 'Not Another Gym', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'amhewins@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=12&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:56:\"advanced-custom-fields-font-awesome/acf-font-awesome.php\";i:1;s:48:\"advanced-custom-fields-table-field/acf-table.php\";i:2;s:30:\"advanced-custom-fields/acf.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'fhc_theme', 'yes'),
(41, 'stylesheet', 'fhc_theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '12', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:5:{i:1522720683;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1522720711;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1522762981;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1522765299;a:1:{s:26:\"ACFFA_refresh_latest_icons\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1522029961;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1522713568;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(119, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1522713569;s:7:\"checked\";a:4:{s:9:\"fhc_theme\";s:0:\"\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(126, 'can_compress_scripts', '1', 'no'),
(138, 'current_theme', '', 'yes'),
(139, 'theme_mods_fhc_theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(143, 'WPLANG', '', 'yes'),
(144, 'new_admin_email', 'amhewins@gmail.com', 'yes'),
(167, 'recently_activated', 'a:2:{s:31:\"wp-google-maps/wpGoogleMaps.php\";i:1522713214;s:57:\"accesspress-instagram-feed/accesspress-instagram-feed.php\";i:1522179257;}', 'yes'),
(168, 'acf_version', '4.4.12', 'yes'),
(183, 'ACFFA_current_version', '4.7.0', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(184, 'ACFFA_icon_data', 'a:1:{s:5:\"4.7.0\";a:3:{s:4:\"list\";a:676:{s:0:\"\";s:0:\"\";s:8:\"fa-500px\";s:14:\"&#xf26e; 500px\";s:15:\"fa-address-book\";s:21:\"&#xf2b9; address-book\";s:17:\"fa-address-book-o\";s:23:\"&#xf2ba; address-book-o\";s:15:\"fa-address-card\";s:21:\"&#xf2bb; address-card\";s:17:\"fa-address-card-o\";s:23:\"&#xf2bc; address-card-o\";s:9:\"fa-adjust\";s:15:\"&#xf042; adjust\";s:6:\"fa-adn\";s:12:\"&#xf170; adn\";s:15:\"fa-align-center\";s:21:\"&#xf037; align-center\";s:16:\"fa-align-justify\";s:22:\"&#xf039; align-justify\";s:13:\"fa-align-left\";s:19:\"&#xf036; align-left\";s:14:\"fa-align-right\";s:20:\"&#xf038; align-right\";s:9:\"fa-amazon\";s:15:\"&#xf270; amazon\";s:12:\"fa-ambulance\";s:18:\"&#xf0f9; ambulance\";s:38:\"fa-american-sign-language-interpreting\";s:44:\"&#xf2a3; american-sign-language-interpreting\";s:9:\"fa-anchor\";s:15:\"&#xf13d; anchor\";s:10:\"fa-android\";s:16:\"&#xf17b; android\";s:12:\"fa-angellist\";s:18:\"&#xf209; angellist\";s:20:\"fa-angle-double-down\";s:26:\"&#xf103; angle-double-down\";s:20:\"fa-angle-double-left\";s:26:\"&#xf100; angle-double-left\";s:21:\"fa-angle-double-right\";s:27:\"&#xf101; angle-double-right\";s:18:\"fa-angle-double-up\";s:24:\"&#xf102; angle-double-up\";s:13:\"fa-angle-down\";s:19:\"&#xf107; angle-down\";s:13:\"fa-angle-left\";s:19:\"&#xf104; angle-left\";s:14:\"fa-angle-right\";s:20:\"&#xf105; angle-right\";s:11:\"fa-angle-up\";s:17:\"&#xf106; angle-up\";s:8:\"fa-apple\";s:14:\"&#xf179; apple\";s:10:\"fa-archive\";s:16:\"&#xf187; archive\";s:13:\"fa-area-chart\";s:19:\"&#xf1fe; area-chart\";s:20:\"fa-arrow-circle-down\";s:26:\"&#xf0ab; arrow-circle-down\";s:20:\"fa-arrow-circle-left\";s:26:\"&#xf0a8; arrow-circle-left\";s:22:\"fa-arrow-circle-o-down\";s:28:\"&#xf01a; arrow-circle-o-down\";s:22:\"fa-arrow-circle-o-left\";s:28:\"&#xf190; arrow-circle-o-left\";s:23:\"fa-arrow-circle-o-right\";s:29:\"&#xf18e; arrow-circle-o-right\";s:20:\"fa-arrow-circle-o-up\";s:26:\"&#xf01b; arrow-circle-o-up\";s:21:\"fa-arrow-circle-right\";s:27:\"&#xf0a9; arrow-circle-right\";s:18:\"fa-arrow-circle-up\";s:24:\"&#xf0aa; arrow-circle-up\";s:13:\"fa-arrow-down\";s:19:\"&#xf063; arrow-down\";s:13:\"fa-arrow-left\";s:19:\"&#xf060; arrow-left\";s:14:\"fa-arrow-right\";s:20:\"&#xf061; arrow-right\";s:11:\"fa-arrow-up\";s:17:\"&#xf062; arrow-up\";s:9:\"fa-arrows\";s:15:\"&#xf047; arrows\";s:13:\"fa-arrows-alt\";s:19:\"&#xf0b2; arrows-alt\";s:11:\"fa-arrows-h\";s:17:\"&#xf07e; arrows-h\";s:11:\"fa-arrows-v\";s:17:\"&#xf07d; arrows-v\";s:30:\"fa-assistive-listening-systems\";s:36:\"&#xf2a2; assistive-listening-systems\";s:11:\"fa-asterisk\";s:17:\"&#xf069; asterisk\";s:5:\"fa-at\";s:11:\"&#xf1fa; at\";s:20:\"fa-audio-description\";s:26:\"&#xf29e; audio-description\";s:11:\"fa-backward\";s:17:\"&#xf04a; backward\";s:16:\"fa-balance-scale\";s:22:\"&#xf24e; balance-scale\";s:6:\"fa-ban\";s:12:\"&#xf05e; ban\";s:11:\"fa-bandcamp\";s:17:\"&#xf2d5; bandcamp\";s:12:\"fa-bar-chart\";s:18:\"&#xf080; bar-chart\";s:10:\"fa-barcode\";s:16:\"&#xf02a; barcode\";s:7:\"fa-bars\";s:13:\"&#xf0c9; bars\";s:7:\"fa-bath\";s:13:\"&#xf2cd; bath\";s:16:\"fa-battery-empty\";s:22:\"&#xf244; battery-empty\";s:15:\"fa-battery-full\";s:21:\"&#xf240; battery-full\";s:15:\"fa-battery-half\";s:21:\"&#xf242; battery-half\";s:18:\"fa-battery-quarter\";s:24:\"&#xf243; battery-quarter\";s:25:\"fa-battery-three-quarters\";s:31:\"&#xf241; battery-three-quarters\";s:6:\"fa-bed\";s:12:\"&#xf236; bed\";s:7:\"fa-beer\";s:13:\"&#xf0fc; beer\";s:10:\"fa-behance\";s:16:\"&#xf1b4; behance\";s:17:\"fa-behance-square\";s:23:\"&#xf1b5; behance-square\";s:7:\"fa-bell\";s:13:\"&#xf0f3; bell\";s:9:\"fa-bell-o\";s:15:\"&#xf0a2; bell-o\";s:13:\"fa-bell-slash\";s:19:\"&#xf1f6; bell-slash\";s:15:\"fa-bell-slash-o\";s:21:\"&#xf1f7; bell-slash-o\";s:10:\"fa-bicycle\";s:16:\"&#xf206; bicycle\";s:13:\"fa-binoculars\";s:19:\"&#xf1e5; binoculars\";s:16:\"fa-birthday-cake\";s:22:\"&#xf1fd; birthday-cake\";s:12:\"fa-bitbucket\";s:18:\"&#xf171; bitbucket\";s:19:\"fa-bitbucket-square\";s:25:\"&#xf172; bitbucket-square\";s:12:\"fa-black-tie\";s:18:\"&#xf27e; black-tie\";s:8:\"fa-blind\";s:14:\"&#xf29d; blind\";s:12:\"fa-bluetooth\";s:18:\"&#xf293; bluetooth\";s:14:\"fa-bluetooth-b\";s:20:\"&#xf294; bluetooth-b\";s:7:\"fa-bold\";s:13:\"&#xf032; bold\";s:7:\"fa-bolt\";s:13:\"&#xf0e7; bolt\";s:7:\"fa-bomb\";s:13:\"&#xf1e2; bomb\";s:7:\"fa-book\";s:13:\"&#xf02d; book\";s:11:\"fa-bookmark\";s:17:\"&#xf02e; bookmark\";s:13:\"fa-bookmark-o\";s:19:\"&#xf097; bookmark-o\";s:10:\"fa-braille\";s:16:\"&#xf2a1; braille\";s:12:\"fa-briefcase\";s:18:\"&#xf0b1; briefcase\";s:6:\"fa-btc\";s:12:\"&#xf15a; btc\";s:6:\"fa-bug\";s:12:\"&#xf188; bug\";s:11:\"fa-building\";s:17:\"&#xf1ad; building\";s:13:\"fa-building-o\";s:19:\"&#xf0f7; building-o\";s:11:\"fa-bullhorn\";s:17:\"&#xf0a1; bullhorn\";s:11:\"fa-bullseye\";s:17:\"&#xf140; bullseye\";s:6:\"fa-bus\";s:12:\"&#xf207; bus\";s:13:\"fa-buysellads\";s:19:\"&#xf20d; buysellads\";s:13:\"fa-calculator\";s:19:\"&#xf1ec; calculator\";s:11:\"fa-calendar\";s:17:\"&#xf073; calendar\";s:19:\"fa-calendar-check-o\";s:25:\"&#xf274; calendar-check-o\";s:19:\"fa-calendar-minus-o\";s:25:\"&#xf272; calendar-minus-o\";s:13:\"fa-calendar-o\";s:19:\"&#xf133; calendar-o\";s:18:\"fa-calendar-plus-o\";s:24:\"&#xf271; calendar-plus-o\";s:19:\"fa-calendar-times-o\";s:25:\"&#xf273; calendar-times-o\";s:9:\"fa-camera\";s:15:\"&#xf030; camera\";s:15:\"fa-camera-retro\";s:21:\"&#xf083; camera-retro\";s:6:\"fa-car\";s:12:\"&#xf1b9; car\";s:13:\"fa-caret-down\";s:19:\"&#xf0d7; caret-down\";s:13:\"fa-caret-left\";s:19:\"&#xf0d9; caret-left\";s:14:\"fa-caret-right\";s:20:\"&#xf0da; caret-right\";s:22:\"fa-caret-square-o-down\";s:28:\"&#xf150; caret-square-o-down\";s:22:\"fa-caret-square-o-left\";s:28:\"&#xf191; caret-square-o-left\";s:23:\"fa-caret-square-o-right\";s:29:\"&#xf152; caret-square-o-right\";s:20:\"fa-caret-square-o-up\";s:26:\"&#xf151; caret-square-o-up\";s:11:\"fa-caret-up\";s:17:\"&#xf0d8; caret-up\";s:18:\"fa-cart-arrow-down\";s:24:\"&#xf218; cart-arrow-down\";s:12:\"fa-cart-plus\";s:18:\"&#xf217; cart-plus\";s:5:\"fa-cc\";s:11:\"&#xf20a; cc\";s:10:\"fa-cc-amex\";s:16:\"&#xf1f3; cc-amex\";s:17:\"fa-cc-diners-club\";s:23:\"&#xf24c; cc-diners-club\";s:14:\"fa-cc-discover\";s:20:\"&#xf1f2; cc-discover\";s:9:\"fa-cc-jcb\";s:15:\"&#xf24b; cc-jcb\";s:16:\"fa-cc-mastercard\";s:22:\"&#xf1f1; cc-mastercard\";s:12:\"fa-cc-paypal\";s:18:\"&#xf1f4; cc-paypal\";s:12:\"fa-cc-stripe\";s:18:\"&#xf1f5; cc-stripe\";s:10:\"fa-cc-visa\";s:16:\"&#xf1f0; cc-visa\";s:14:\"fa-certificate\";s:20:\"&#xf0a3; certificate\";s:15:\"fa-chain-broken\";s:21:\"&#xf127; chain-broken\";s:8:\"fa-check\";s:14:\"&#xf00c; check\";s:15:\"fa-check-circle\";s:21:\"&#xf058; check-circle\";s:17:\"fa-check-circle-o\";s:23:\"&#xf05d; check-circle-o\";s:15:\"fa-check-square\";s:21:\"&#xf14a; check-square\";s:17:\"fa-check-square-o\";s:23:\"&#xf046; check-square-o\";s:22:\"fa-chevron-circle-down\";s:28:\"&#xf13a; chevron-circle-down\";s:22:\"fa-chevron-circle-left\";s:28:\"&#xf137; chevron-circle-left\";s:23:\"fa-chevron-circle-right\";s:29:\"&#xf138; chevron-circle-right\";s:20:\"fa-chevron-circle-up\";s:26:\"&#xf139; chevron-circle-up\";s:15:\"fa-chevron-down\";s:21:\"&#xf078; chevron-down\";s:15:\"fa-chevron-left\";s:21:\"&#xf053; chevron-left\";s:16:\"fa-chevron-right\";s:22:\"&#xf054; chevron-right\";s:13:\"fa-chevron-up\";s:19:\"&#xf077; chevron-up\";s:8:\"fa-child\";s:14:\"&#xf1ae; child\";s:9:\"fa-chrome\";s:15:\"&#xf268; chrome\";s:9:\"fa-circle\";s:15:\"&#xf111; circle\";s:11:\"fa-circle-o\";s:17:\"&#xf10c; circle-o\";s:17:\"fa-circle-o-notch\";s:23:\"&#xf1ce; circle-o-notch\";s:14:\"fa-circle-thin\";s:20:\"&#xf1db; circle-thin\";s:12:\"fa-clipboard\";s:18:\"&#xf0ea; clipboard\";s:10:\"fa-clock-o\";s:16:\"&#xf017; clock-o\";s:8:\"fa-clone\";s:14:\"&#xf24d; clone\";s:8:\"fa-cloud\";s:14:\"&#xf0c2; cloud\";s:17:\"fa-cloud-download\";s:23:\"&#xf0ed; cloud-download\";s:15:\"fa-cloud-upload\";s:21:\"&#xf0ee; cloud-upload\";s:7:\"fa-code\";s:13:\"&#xf121; code\";s:12:\"fa-code-fork\";s:18:\"&#xf126; code-fork\";s:10:\"fa-codepen\";s:16:\"&#xf1cb; codepen\";s:11:\"fa-codiepie\";s:17:\"&#xf284; codiepie\";s:9:\"fa-coffee\";s:15:\"&#xf0f4; coffee\";s:6:\"fa-cog\";s:12:\"&#xf013; cog\";s:7:\"fa-cogs\";s:13:\"&#xf085; cogs\";s:10:\"fa-columns\";s:16:\"&#xf0db; columns\";s:10:\"fa-comment\";s:16:\"&#xf075; comment\";s:12:\"fa-comment-o\";s:18:\"&#xf0e5; comment-o\";s:13:\"fa-commenting\";s:19:\"&#xf27a; commenting\";s:15:\"fa-commenting-o\";s:21:\"&#xf27b; commenting-o\";s:11:\"fa-comments\";s:17:\"&#xf086; comments\";s:13:\"fa-comments-o\";s:19:\"&#xf0e6; comments-o\";s:10:\"fa-compass\";s:16:\"&#xf14e; compass\";s:11:\"fa-compress\";s:17:\"&#xf066; compress\";s:17:\"fa-connectdevelop\";s:23:\"&#xf20e; connectdevelop\";s:9:\"fa-contao\";s:15:\"&#xf26d; contao\";s:12:\"fa-copyright\";s:18:\"&#xf1f9; copyright\";s:19:\"fa-creative-commons\";s:25:\"&#xf25e; creative-commons\";s:14:\"fa-credit-card\";s:20:\"&#xf09d; credit-card\";s:18:\"fa-credit-card-alt\";s:24:\"&#xf283; credit-card-alt\";s:7:\"fa-crop\";s:13:\"&#xf125; crop\";s:13:\"fa-crosshairs\";s:19:\"&#xf05b; crosshairs\";s:7:\"fa-css3\";s:13:\"&#xf13c; css3\";s:7:\"fa-cube\";s:13:\"&#xf1b2; cube\";s:8:\"fa-cubes\";s:14:\"&#xf1b3; cubes\";s:10:\"fa-cutlery\";s:16:\"&#xf0f5; cutlery\";s:11:\"fa-dashcube\";s:17:\"&#xf210; dashcube\";s:11:\"fa-database\";s:17:\"&#xf1c0; database\";s:7:\"fa-deaf\";s:13:\"&#xf2a4; deaf\";s:12:\"fa-delicious\";s:18:\"&#xf1a5; delicious\";s:10:\"fa-desktop\";s:16:\"&#xf108; desktop\";s:13:\"fa-deviantart\";s:19:\"&#xf1bd; deviantart\";s:10:\"fa-diamond\";s:16:\"&#xf219; diamond\";s:7:\"fa-digg\";s:13:\"&#xf1a6; digg\";s:15:\"fa-dot-circle-o\";s:21:\"&#xf192; dot-circle-o\";s:11:\"fa-download\";s:17:\"&#xf019; download\";s:11:\"fa-dribbble\";s:17:\"&#xf17d; dribbble\";s:10:\"fa-dropbox\";s:16:\"&#xf16b; dropbox\";s:9:\"fa-drupal\";s:15:\"&#xf1a9; drupal\";s:7:\"fa-edge\";s:13:\"&#xf282; edge\";s:10:\"fa-eercast\";s:16:\"&#xf2da; eercast\";s:8:\"fa-eject\";s:14:\"&#xf052; eject\";s:13:\"fa-ellipsis-h\";s:19:\"&#xf141; ellipsis-h\";s:13:\"fa-ellipsis-v\";s:19:\"&#xf142; ellipsis-v\";s:9:\"fa-empire\";s:15:\"&#xf1d1; empire\";s:11:\"fa-envelope\";s:17:\"&#xf0e0; envelope\";s:13:\"fa-envelope-o\";s:19:\"&#xf003; envelope-o\";s:16:\"fa-envelope-open\";s:22:\"&#xf2b6; envelope-open\";s:18:\"fa-envelope-open-o\";s:24:\"&#xf2b7; envelope-open-o\";s:18:\"fa-envelope-square\";s:24:\"&#xf199; envelope-square\";s:9:\"fa-envira\";s:15:\"&#xf299; envira\";s:9:\"fa-eraser\";s:15:\"&#xf12d; eraser\";s:7:\"fa-etsy\";s:13:\"&#xf2d7; etsy\";s:6:\"fa-eur\";s:12:\"&#xf153; eur\";s:11:\"fa-exchange\";s:17:\"&#xf0ec; exchange\";s:14:\"fa-exclamation\";s:20:\"&#xf12a; exclamation\";s:21:\"fa-exclamation-circle\";s:27:\"&#xf06a; exclamation-circle\";s:23:\"fa-exclamation-triangle\";s:29:\"&#xf071; exclamation-triangle\";s:9:\"fa-expand\";s:15:\"&#xf065; expand\";s:15:\"fa-expeditedssl\";s:21:\"&#xf23e; expeditedssl\";s:16:\"fa-external-link\";s:22:\"&#xf08e; external-link\";s:23:\"fa-external-link-square\";s:29:\"&#xf14c; external-link-square\";s:6:\"fa-eye\";s:12:\"&#xf06e; eye\";s:12:\"fa-eye-slash\";s:18:\"&#xf070; eye-slash\";s:13:\"fa-eyedropper\";s:19:\"&#xf1fb; eyedropper\";s:11:\"fa-facebook\";s:17:\"&#xf09a; facebook\";s:20:\"fa-facebook-official\";s:26:\"&#xf230; facebook-official\";s:18:\"fa-facebook-square\";s:24:\"&#xf082; facebook-square\";s:16:\"fa-fast-backward\";s:22:\"&#xf049; fast-backward\";s:15:\"fa-fast-forward\";s:21:\"&#xf050; fast-forward\";s:6:\"fa-fax\";s:12:\"&#xf1ac; fax\";s:9:\"fa-female\";s:15:\"&#xf182; female\";s:14:\"fa-fighter-jet\";s:20:\"&#xf0fb; fighter-jet\";s:7:\"fa-file\";s:13:\"&#xf15b; file\";s:17:\"fa-file-archive-o\";s:23:\"&#xf1c6; file-archive-o\";s:15:\"fa-file-audio-o\";s:21:\"&#xf1c7; file-audio-o\";s:14:\"fa-file-code-o\";s:20:\"&#xf1c9; file-code-o\";s:15:\"fa-file-excel-o\";s:21:\"&#xf1c3; file-excel-o\";s:15:\"fa-file-image-o\";s:21:\"&#xf1c5; file-image-o\";s:9:\"fa-file-o\";s:15:\"&#xf016; file-o\";s:13:\"fa-file-pdf-o\";s:19:\"&#xf1c1; file-pdf-o\";s:20:\"fa-file-powerpoint-o\";s:26:\"&#xf1c4; file-powerpoint-o\";s:12:\"fa-file-text\";s:18:\"&#xf15c; file-text\";s:14:\"fa-file-text-o\";s:20:\"&#xf0f6; file-text-o\";s:15:\"fa-file-video-o\";s:21:\"&#xf1c8; file-video-o\";s:14:\"fa-file-word-o\";s:20:\"&#xf1c2; file-word-o\";s:10:\"fa-files-o\";s:16:\"&#xf0c5; files-o\";s:7:\"fa-film\";s:13:\"&#xf008; film\";s:9:\"fa-filter\";s:15:\"&#xf0b0; filter\";s:7:\"fa-fire\";s:13:\"&#xf06d; fire\";s:20:\"fa-fire-extinguisher\";s:26:\"&#xf134; fire-extinguisher\";s:10:\"fa-firefox\";s:16:\"&#xf269; firefox\";s:14:\"fa-first-order\";s:20:\"&#xf2b0; first-order\";s:7:\"fa-flag\";s:13:\"&#xf024; flag\";s:17:\"fa-flag-checkered\";s:23:\"&#xf11e; flag-checkered\";s:9:\"fa-flag-o\";s:15:\"&#xf11d; flag-o\";s:8:\"fa-flask\";s:14:\"&#xf0c3; flask\";s:9:\"fa-flickr\";s:15:\"&#xf16e; flickr\";s:11:\"fa-floppy-o\";s:17:\"&#xf0c7; floppy-o\";s:9:\"fa-folder\";s:15:\"&#xf07b; folder\";s:11:\"fa-folder-o\";s:17:\"&#xf114; folder-o\";s:14:\"fa-folder-open\";s:20:\"&#xf07c; folder-open\";s:16:\"fa-folder-open-o\";s:22:\"&#xf115; folder-open-o\";s:7:\"fa-font\";s:13:\"&#xf031; font\";s:15:\"fa-font-awesome\";s:21:\"&#xf2b4; font-awesome\";s:12:\"fa-fonticons\";s:18:\"&#xf280; fonticons\";s:15:\"fa-fort-awesome\";s:21:\"&#xf286; fort-awesome\";s:11:\"fa-forumbee\";s:17:\"&#xf211; forumbee\";s:10:\"fa-forward\";s:16:\"&#xf04e; forward\";s:13:\"fa-foursquare\";s:19:\"&#xf180; foursquare\";s:17:\"fa-free-code-camp\";s:23:\"&#xf2c5; free-code-camp\";s:10:\"fa-frown-o\";s:16:\"&#xf119; frown-o\";s:11:\"fa-futbol-o\";s:17:\"&#xf1e3; futbol-o\";s:10:\"fa-gamepad\";s:16:\"&#xf11b; gamepad\";s:8:\"fa-gavel\";s:14:\"&#xf0e3; gavel\";s:6:\"fa-gbp\";s:12:\"&#xf154; gbp\";s:13:\"fa-genderless\";s:19:\"&#xf22d; genderless\";s:13:\"fa-get-pocket\";s:19:\"&#xf265; get-pocket\";s:5:\"fa-gg\";s:11:\"&#xf260; gg\";s:12:\"fa-gg-circle\";s:18:\"&#xf261; gg-circle\";s:7:\"fa-gift\";s:13:\"&#xf06b; gift\";s:6:\"fa-git\";s:12:\"&#xf1d3; git\";s:13:\"fa-git-square\";s:19:\"&#xf1d2; git-square\";s:9:\"fa-github\";s:15:\"&#xf09b; github\";s:13:\"fa-github-alt\";s:19:\"&#xf113; github-alt\";s:16:\"fa-github-square\";s:22:\"&#xf092; github-square\";s:9:\"fa-gitlab\";s:15:\"&#xf296; gitlab\";s:8:\"fa-glass\";s:14:\"&#xf000; glass\";s:8:\"fa-glide\";s:14:\"&#xf2a5; glide\";s:10:\"fa-glide-g\";s:16:\"&#xf2a6; glide-g\";s:8:\"fa-globe\";s:14:\"&#xf0ac; globe\";s:9:\"fa-google\";s:15:\"&#xf1a0; google\";s:14:\"fa-google-plus\";s:20:\"&#xf0d5; google-plus\";s:23:\"fa-google-plus-official\";s:29:\"&#xf2b3; google-plus-official\";s:21:\"fa-google-plus-square\";s:27:\"&#xf0d4; google-plus-square\";s:16:\"fa-google-wallet\";s:22:\"&#xf1ee; google-wallet\";s:17:\"fa-graduation-cap\";s:23:\"&#xf19d; graduation-cap\";s:11:\"fa-gratipay\";s:17:\"&#xf184; gratipay\";s:7:\"fa-grav\";s:13:\"&#xf2d6; grav\";s:11:\"fa-h-square\";s:17:\"&#xf0fd; h-square\";s:14:\"fa-hacker-news\";s:20:\"&#xf1d4; hacker-news\";s:16:\"fa-hand-lizard-o\";s:22:\"&#xf258; hand-lizard-o\";s:14:\"fa-hand-o-down\";s:20:\"&#xf0a7; hand-o-down\";s:14:\"fa-hand-o-left\";s:20:\"&#xf0a5; hand-o-left\";s:15:\"fa-hand-o-right\";s:21:\"&#xf0a4; hand-o-right\";s:12:\"fa-hand-o-up\";s:18:\"&#xf0a6; hand-o-up\";s:15:\"fa-hand-paper-o\";s:21:\"&#xf256; hand-paper-o\";s:15:\"fa-hand-peace-o\";s:21:\"&#xf25b; hand-peace-o\";s:17:\"fa-hand-pointer-o\";s:23:\"&#xf25a; hand-pointer-o\";s:14:\"fa-hand-rock-o\";s:20:\"&#xf255; hand-rock-o\";s:18:\"fa-hand-scissors-o\";s:24:\"&#xf257; hand-scissors-o\";s:15:\"fa-hand-spock-o\";s:21:\"&#xf259; hand-spock-o\";s:14:\"fa-handshake-o\";s:20:\"&#xf2b5; handshake-o\";s:10:\"fa-hashtag\";s:16:\"&#xf292; hashtag\";s:8:\"fa-hdd-o\";s:14:\"&#xf0a0; hdd-o\";s:9:\"fa-header\";s:15:\"&#xf1dc; header\";s:13:\"fa-headphones\";s:19:\"&#xf025; headphones\";s:8:\"fa-heart\";s:14:\"&#xf004; heart\";s:10:\"fa-heart-o\";s:16:\"&#xf08a; heart-o\";s:12:\"fa-heartbeat\";s:18:\"&#xf21e; heartbeat\";s:10:\"fa-history\";s:16:\"&#xf1da; history\";s:7:\"fa-home\";s:13:\"&#xf015; home\";s:13:\"fa-hospital-o\";s:19:\"&#xf0f8; hospital-o\";s:12:\"fa-hourglass\";s:18:\"&#xf254; hourglass\";s:16:\"fa-hourglass-end\";s:22:\"&#xf253; hourglass-end\";s:17:\"fa-hourglass-half\";s:23:\"&#xf252; hourglass-half\";s:14:\"fa-hourglass-o\";s:20:\"&#xf250; hourglass-o\";s:18:\"fa-hourglass-start\";s:24:\"&#xf251; hourglass-start\";s:8:\"fa-houzz\";s:14:\"&#xf27c; houzz\";s:8:\"fa-html5\";s:14:\"&#xf13b; html5\";s:11:\"fa-i-cursor\";s:17:\"&#xf246; i-cursor\";s:11:\"fa-id-badge\";s:17:\"&#xf2c1; id-badge\";s:10:\"fa-id-card\";s:16:\"&#xf2c2; id-card\";s:12:\"fa-id-card-o\";s:18:\"&#xf2c3; id-card-o\";s:6:\"fa-ils\";s:12:\"&#xf20b; ils\";s:7:\"fa-imdb\";s:13:\"&#xf2d8; imdb\";s:8:\"fa-inbox\";s:14:\"&#xf01c; inbox\";s:9:\"fa-indent\";s:15:\"&#xf03c; indent\";s:11:\"fa-industry\";s:17:\"&#xf275; industry\";s:7:\"fa-info\";s:13:\"&#xf129; info\";s:14:\"fa-info-circle\";s:20:\"&#xf05a; info-circle\";s:6:\"fa-inr\";s:12:\"&#xf156; inr\";s:12:\"fa-instagram\";s:18:\"&#xf16d; instagram\";s:20:\"fa-internet-explorer\";s:26:\"&#xf26b; internet-explorer\";s:10:\"fa-ioxhost\";s:16:\"&#xf208; ioxhost\";s:9:\"fa-italic\";s:15:\"&#xf033; italic\";s:9:\"fa-joomla\";s:15:\"&#xf1aa; joomla\";s:6:\"fa-jpy\";s:12:\"&#xf157; jpy\";s:11:\"fa-jsfiddle\";s:17:\"&#xf1cc; jsfiddle\";s:6:\"fa-key\";s:12:\"&#xf084; key\";s:13:\"fa-keyboard-o\";s:19:\"&#xf11c; keyboard-o\";s:6:\"fa-krw\";s:12:\"&#xf159; krw\";s:11:\"fa-language\";s:17:\"&#xf1ab; language\";s:9:\"fa-laptop\";s:15:\"&#xf109; laptop\";s:9:\"fa-lastfm\";s:15:\"&#xf202; lastfm\";s:16:\"fa-lastfm-square\";s:22:\"&#xf203; lastfm-square\";s:7:\"fa-leaf\";s:13:\"&#xf06c; leaf\";s:10:\"fa-leanpub\";s:16:\"&#xf212; leanpub\";s:10:\"fa-lemon-o\";s:16:\"&#xf094; lemon-o\";s:13:\"fa-level-down\";s:19:\"&#xf149; level-down\";s:11:\"fa-level-up\";s:17:\"&#xf148; level-up\";s:12:\"fa-life-ring\";s:18:\"&#xf1cd; life-ring\";s:14:\"fa-lightbulb-o\";s:20:\"&#xf0eb; lightbulb-o\";s:13:\"fa-line-chart\";s:19:\"&#xf201; line-chart\";s:7:\"fa-link\";s:13:\"&#xf0c1; link\";s:11:\"fa-linkedin\";s:17:\"&#xf0e1; linkedin\";s:18:\"fa-linkedin-square\";s:24:\"&#xf08c; linkedin-square\";s:9:\"fa-linode\";s:15:\"&#xf2b8; linode\";s:8:\"fa-linux\";s:14:\"&#xf17c; linux\";s:7:\"fa-list\";s:13:\"&#xf03a; list\";s:11:\"fa-list-alt\";s:17:\"&#xf022; list-alt\";s:10:\"fa-list-ol\";s:16:\"&#xf0cb; list-ol\";s:10:\"fa-list-ul\";s:16:\"&#xf0ca; list-ul\";s:17:\"fa-location-arrow\";s:23:\"&#xf124; location-arrow\";s:7:\"fa-lock\";s:13:\"&#xf023; lock\";s:18:\"fa-long-arrow-down\";s:24:\"&#xf175; long-arrow-down\";s:18:\"fa-long-arrow-left\";s:24:\"&#xf177; long-arrow-left\";s:19:\"fa-long-arrow-right\";s:25:\"&#xf178; long-arrow-right\";s:16:\"fa-long-arrow-up\";s:22:\"&#xf176; long-arrow-up\";s:13:\"fa-low-vision\";s:19:\"&#xf2a8; low-vision\";s:8:\"fa-magic\";s:14:\"&#xf0d0; magic\";s:9:\"fa-magnet\";s:15:\"&#xf076; magnet\";s:7:\"fa-male\";s:13:\"&#xf183; male\";s:6:\"fa-map\";s:12:\"&#xf279; map\";s:13:\"fa-map-marker\";s:19:\"&#xf041; map-marker\";s:8:\"fa-map-o\";s:14:\"&#xf278; map-o\";s:10:\"fa-map-pin\";s:16:\"&#xf276; map-pin\";s:12:\"fa-map-signs\";s:18:\"&#xf277; map-signs\";s:7:\"fa-mars\";s:13:\"&#xf222; mars\";s:14:\"fa-mars-double\";s:20:\"&#xf227; mars-double\";s:14:\"fa-mars-stroke\";s:20:\"&#xf229; mars-stroke\";s:16:\"fa-mars-stroke-h\";s:22:\"&#xf22b; mars-stroke-h\";s:16:\"fa-mars-stroke-v\";s:22:\"&#xf22a; mars-stroke-v\";s:9:\"fa-maxcdn\";s:15:\"&#xf136; maxcdn\";s:11:\"fa-meanpath\";s:17:\"&#xf20c; meanpath\";s:9:\"fa-medium\";s:15:\"&#xf23a; medium\";s:9:\"fa-medkit\";s:15:\"&#xf0fa; medkit\";s:9:\"fa-meetup\";s:15:\"&#xf2e0; meetup\";s:8:\"fa-meh-o\";s:14:\"&#xf11a; meh-o\";s:10:\"fa-mercury\";s:16:\"&#xf223; mercury\";s:12:\"fa-microchip\";s:18:\"&#xf2db; microchip\";s:13:\"fa-microphone\";s:19:\"&#xf130; microphone\";s:19:\"fa-microphone-slash\";s:25:\"&#xf131; microphone-slash\";s:8:\"fa-minus\";s:14:\"&#xf068; minus\";s:15:\"fa-minus-circle\";s:21:\"&#xf056; minus-circle\";s:15:\"fa-minus-square\";s:21:\"&#xf146; minus-square\";s:17:\"fa-minus-square-o\";s:23:\"&#xf147; minus-square-o\";s:11:\"fa-mixcloud\";s:17:\"&#xf289; mixcloud\";s:9:\"fa-mobile\";s:15:\"&#xf10b; mobile\";s:7:\"fa-modx\";s:13:\"&#xf285; modx\";s:8:\"fa-money\";s:14:\"&#xf0d6; money\";s:9:\"fa-moon-o\";s:15:\"&#xf186; moon-o\";s:13:\"fa-motorcycle\";s:19:\"&#xf21c; motorcycle\";s:16:\"fa-mouse-pointer\";s:22:\"&#xf245; mouse-pointer\";s:8:\"fa-music\";s:14:\"&#xf001; music\";s:9:\"fa-neuter\";s:15:\"&#xf22c; neuter\";s:14:\"fa-newspaper-o\";s:20:\"&#xf1ea; newspaper-o\";s:15:\"fa-object-group\";s:21:\"&#xf247; object-group\";s:17:\"fa-object-ungroup\";s:23:\"&#xf248; object-ungroup\";s:16:\"fa-odnoklassniki\";s:22:\"&#xf263; odnoklassniki\";s:23:\"fa-odnoklassniki-square\";s:29:\"&#xf264; odnoklassniki-square\";s:11:\"fa-opencart\";s:17:\"&#xf23d; opencart\";s:9:\"fa-openid\";s:15:\"&#xf19b; openid\";s:8:\"fa-opera\";s:14:\"&#xf26a; opera\";s:16:\"fa-optin-monster\";s:22:\"&#xf23c; optin-monster\";s:10:\"fa-outdent\";s:16:\"&#xf03b; outdent\";s:12:\"fa-pagelines\";s:18:\"&#xf18c; pagelines\";s:14:\"fa-paint-brush\";s:20:\"&#xf1fc; paint-brush\";s:14:\"fa-paper-plane\";s:20:\"&#xf1d8; paper-plane\";s:16:\"fa-paper-plane-o\";s:22:\"&#xf1d9; paper-plane-o\";s:12:\"fa-paperclip\";s:18:\"&#xf0c6; paperclip\";s:12:\"fa-paragraph\";s:18:\"&#xf1dd; paragraph\";s:8:\"fa-pause\";s:14:\"&#xf04c; pause\";s:15:\"fa-pause-circle\";s:21:\"&#xf28b; pause-circle\";s:17:\"fa-pause-circle-o\";s:23:\"&#xf28c; pause-circle-o\";s:6:\"fa-paw\";s:12:\"&#xf1b0; paw\";s:9:\"fa-paypal\";s:15:\"&#xf1ed; paypal\";s:9:\"fa-pencil\";s:15:\"&#xf040; pencil\";s:16:\"fa-pencil-square\";s:22:\"&#xf14b; pencil-square\";s:18:\"fa-pencil-square-o\";s:24:\"&#xf044; pencil-square-o\";s:10:\"fa-percent\";s:16:\"&#xf295; percent\";s:8:\"fa-phone\";s:14:\"&#xf095; phone\";s:15:\"fa-phone-square\";s:21:\"&#xf098; phone-square\";s:12:\"fa-picture-o\";s:18:\"&#xf03e; picture-o\";s:12:\"fa-pie-chart\";s:18:\"&#xf200; pie-chart\";s:13:\"fa-pied-piper\";s:19:\"&#xf2ae; pied-piper\";s:17:\"fa-pied-piper-alt\";s:23:\"&#xf1a8; pied-piper-alt\";s:16:\"fa-pied-piper-pp\";s:22:\"&#xf1a7; pied-piper-pp\";s:12:\"fa-pinterest\";s:18:\"&#xf0d2; pinterest\";s:14:\"fa-pinterest-p\";s:20:\"&#xf231; pinterest-p\";s:19:\"fa-pinterest-square\";s:25:\"&#xf0d3; pinterest-square\";s:8:\"fa-plane\";s:14:\"&#xf072; plane\";s:7:\"fa-play\";s:13:\"&#xf04b; play\";s:14:\"fa-play-circle\";s:20:\"&#xf144; play-circle\";s:16:\"fa-play-circle-o\";s:22:\"&#xf01d; play-circle-o\";s:7:\"fa-plug\";s:13:\"&#xf1e6; plug\";s:7:\"fa-plus\";s:13:\"&#xf067; plus\";s:14:\"fa-plus-circle\";s:20:\"&#xf055; plus-circle\";s:14:\"fa-plus-square\";s:20:\"&#xf0fe; plus-square\";s:16:\"fa-plus-square-o\";s:22:\"&#xf196; plus-square-o\";s:10:\"fa-podcast\";s:16:\"&#xf2ce; podcast\";s:12:\"fa-power-off\";s:18:\"&#xf011; power-off\";s:8:\"fa-print\";s:14:\"&#xf02f; print\";s:15:\"fa-product-hunt\";s:21:\"&#xf288; product-hunt\";s:15:\"fa-puzzle-piece\";s:21:\"&#xf12e; puzzle-piece\";s:5:\"fa-qq\";s:11:\"&#xf1d6; qq\";s:9:\"fa-qrcode\";s:15:\"&#xf029; qrcode\";s:11:\"fa-question\";s:17:\"&#xf128; question\";s:18:\"fa-question-circle\";s:24:\"&#xf059; question-circle\";s:20:\"fa-question-circle-o\";s:26:\"&#xf29c; question-circle-o\";s:8:\"fa-quora\";s:14:\"&#xf2c4; quora\";s:13:\"fa-quote-left\";s:19:\"&#xf10d; quote-left\";s:14:\"fa-quote-right\";s:20:\"&#xf10e; quote-right\";s:9:\"fa-random\";s:15:\"&#xf074; random\";s:10:\"fa-ravelry\";s:16:\"&#xf2d9; ravelry\";s:8:\"fa-rebel\";s:14:\"&#xf1d0; rebel\";s:10:\"fa-recycle\";s:16:\"&#xf1b8; recycle\";s:9:\"fa-reddit\";s:15:\"&#xf1a1; reddit\";s:15:\"fa-reddit-alien\";s:21:\"&#xf281; reddit-alien\";s:16:\"fa-reddit-square\";s:22:\"&#xf1a2; reddit-square\";s:10:\"fa-refresh\";s:16:\"&#xf021; refresh\";s:13:\"fa-registered\";s:19:\"&#xf25d; registered\";s:9:\"fa-renren\";s:15:\"&#xf18b; renren\";s:9:\"fa-repeat\";s:15:\"&#xf01e; repeat\";s:8:\"fa-reply\";s:14:\"&#xf112; reply\";s:12:\"fa-reply-all\";s:18:\"&#xf122; reply-all\";s:10:\"fa-retweet\";s:16:\"&#xf079; retweet\";s:7:\"fa-road\";s:13:\"&#xf018; road\";s:9:\"fa-rocket\";s:15:\"&#xf135; rocket\";s:6:\"fa-rss\";s:12:\"&#xf09e; rss\";s:13:\"fa-rss-square\";s:19:\"&#xf143; rss-square\";s:6:\"fa-rub\";s:12:\"&#xf158; rub\";s:9:\"fa-safari\";s:15:\"&#xf267; safari\";s:11:\"fa-scissors\";s:17:\"&#xf0c4; scissors\";s:9:\"fa-scribd\";s:15:\"&#xf28a; scribd\";s:9:\"fa-search\";s:15:\"&#xf002; search\";s:15:\"fa-search-minus\";s:21:\"&#xf010; search-minus\";s:14:\"fa-search-plus\";s:20:\"&#xf00e; search-plus\";s:9:\"fa-sellsy\";s:15:\"&#xf213; sellsy\";s:9:\"fa-server\";s:15:\"&#xf233; server\";s:8:\"fa-share\";s:14:\"&#xf064; share\";s:12:\"fa-share-alt\";s:18:\"&#xf1e0; share-alt\";s:19:\"fa-share-alt-square\";s:25:\"&#xf1e1; share-alt-square\";s:15:\"fa-share-square\";s:21:\"&#xf14d; share-square\";s:17:\"fa-share-square-o\";s:23:\"&#xf045; share-square-o\";s:9:\"fa-shield\";s:15:\"&#xf132; shield\";s:7:\"fa-ship\";s:13:\"&#xf21a; ship\";s:15:\"fa-shirtsinbulk\";s:21:\"&#xf214; shirtsinbulk\";s:15:\"fa-shopping-bag\";s:21:\"&#xf290; shopping-bag\";s:18:\"fa-shopping-basket\";s:24:\"&#xf291; shopping-basket\";s:16:\"fa-shopping-cart\";s:22:\"&#xf07a; shopping-cart\";s:9:\"fa-shower\";s:15:\"&#xf2cc; shower\";s:10:\"fa-sign-in\";s:16:\"&#xf090; sign-in\";s:16:\"fa-sign-language\";s:22:\"&#xf2a7; sign-language\";s:11:\"fa-sign-out\";s:17:\"&#xf08b; sign-out\";s:9:\"fa-signal\";s:15:\"&#xf012; signal\";s:14:\"fa-simplybuilt\";s:20:\"&#xf215; simplybuilt\";s:10:\"fa-sitemap\";s:16:\"&#xf0e8; sitemap\";s:11:\"fa-skyatlas\";s:17:\"&#xf216; skyatlas\";s:8:\"fa-skype\";s:14:\"&#xf17e; skype\";s:8:\"fa-slack\";s:14:\"&#xf198; slack\";s:10:\"fa-sliders\";s:16:\"&#xf1de; sliders\";s:13:\"fa-slideshare\";s:19:\"&#xf1e7; slideshare\";s:10:\"fa-smile-o\";s:16:\"&#xf118; smile-o\";s:11:\"fa-snapchat\";s:17:\"&#xf2ab; snapchat\";s:17:\"fa-snapchat-ghost\";s:23:\"&#xf2ac; snapchat-ghost\";s:18:\"fa-snapchat-square\";s:24:\"&#xf2ad; snapchat-square\";s:14:\"fa-snowflake-o\";s:20:\"&#xf2dc; snowflake-o\";s:7:\"fa-sort\";s:13:\"&#xf0dc; sort\";s:17:\"fa-sort-alpha-asc\";s:23:\"&#xf15d; sort-alpha-asc\";s:18:\"fa-sort-alpha-desc\";s:24:\"&#xf15e; sort-alpha-desc\";s:18:\"fa-sort-amount-asc\";s:24:\"&#xf160; sort-amount-asc\";s:19:\"fa-sort-amount-desc\";s:25:\"&#xf161; sort-amount-desc\";s:11:\"fa-sort-asc\";s:17:\"&#xf0de; sort-asc\";s:12:\"fa-sort-desc\";s:18:\"&#xf0dd; sort-desc\";s:19:\"fa-sort-numeric-asc\";s:25:\"&#xf162; sort-numeric-asc\";s:20:\"fa-sort-numeric-desc\";s:26:\"&#xf163; sort-numeric-desc\";s:13:\"fa-soundcloud\";s:19:\"&#xf1be; soundcloud\";s:16:\"fa-space-shuttle\";s:22:\"&#xf197; space-shuttle\";s:10:\"fa-spinner\";s:16:\"&#xf110; spinner\";s:8:\"fa-spoon\";s:14:\"&#xf1b1; spoon\";s:10:\"fa-spotify\";s:16:\"&#xf1bc; spotify\";s:9:\"fa-square\";s:15:\"&#xf0c8; square\";s:11:\"fa-square-o\";s:17:\"&#xf096; square-o\";s:17:\"fa-stack-exchange\";s:23:\"&#xf18d; stack-exchange\";s:17:\"fa-stack-overflow\";s:23:\"&#xf16c; stack-overflow\";s:7:\"fa-star\";s:13:\"&#xf005; star\";s:12:\"fa-star-half\";s:18:\"&#xf089; star-half\";s:14:\"fa-star-half-o\";s:20:\"&#xf123; star-half-o\";s:9:\"fa-star-o\";s:15:\"&#xf006; star-o\";s:8:\"fa-steam\";s:14:\"&#xf1b6; steam\";s:15:\"fa-steam-square\";s:21:\"&#xf1b7; steam-square\";s:16:\"fa-step-backward\";s:22:\"&#xf048; step-backward\";s:15:\"fa-step-forward\";s:21:\"&#xf051; step-forward\";s:14:\"fa-stethoscope\";s:20:\"&#xf0f1; stethoscope\";s:14:\"fa-sticky-note\";s:20:\"&#xf249; sticky-note\";s:16:\"fa-sticky-note-o\";s:22:\"&#xf24a; sticky-note-o\";s:7:\"fa-stop\";s:13:\"&#xf04d; stop\";s:14:\"fa-stop-circle\";s:20:\"&#xf28d; stop-circle\";s:16:\"fa-stop-circle-o\";s:22:\"&#xf28e; stop-circle-o\";s:14:\"fa-street-view\";s:20:\"&#xf21d; street-view\";s:16:\"fa-strikethrough\";s:22:\"&#xf0cc; strikethrough\";s:14:\"fa-stumbleupon\";s:20:\"&#xf1a4; stumbleupon\";s:21:\"fa-stumbleupon-circle\";s:27:\"&#xf1a3; stumbleupon-circle\";s:12:\"fa-subscript\";s:18:\"&#xf12c; subscript\";s:9:\"fa-subway\";s:15:\"&#xf239; subway\";s:11:\"fa-suitcase\";s:17:\"&#xf0f2; suitcase\";s:8:\"fa-sun-o\";s:14:\"&#xf185; sun-o\";s:14:\"fa-superpowers\";s:20:\"&#xf2dd; superpowers\";s:14:\"fa-superscript\";s:20:\"&#xf12b; superscript\";s:8:\"fa-table\";s:14:\"&#xf0ce; table\";s:9:\"fa-tablet\";s:15:\"&#xf10a; tablet\";s:13:\"fa-tachometer\";s:19:\"&#xf0e4; tachometer\";s:6:\"fa-tag\";s:12:\"&#xf02b; tag\";s:7:\"fa-tags\";s:13:\"&#xf02c; tags\";s:8:\"fa-tasks\";s:14:\"&#xf0ae; tasks\";s:7:\"fa-taxi\";s:13:\"&#xf1ba; taxi\";s:11:\"fa-telegram\";s:17:\"&#xf2c6; telegram\";s:13:\"fa-television\";s:19:\"&#xf26c; television\";s:16:\"fa-tencent-weibo\";s:22:\"&#xf1d5; tencent-weibo\";s:11:\"fa-terminal\";s:17:\"&#xf120; terminal\";s:14:\"fa-text-height\";s:20:\"&#xf034; text-height\";s:13:\"fa-text-width\";s:19:\"&#xf035; text-width\";s:5:\"fa-th\";s:11:\"&#xf00a; th\";s:11:\"fa-th-large\";s:17:\"&#xf009; th-large\";s:10:\"fa-th-list\";s:16:\"&#xf00b; th-list\";s:12:\"fa-themeisle\";s:18:\"&#xf2b2; themeisle\";s:20:\"fa-thermometer-empty\";s:26:\"&#xf2cb; thermometer-empty\";s:19:\"fa-thermometer-full\";s:25:\"&#xf2c7; thermometer-full\";s:19:\"fa-thermometer-half\";s:25:\"&#xf2c9; thermometer-half\";s:22:\"fa-thermometer-quarter\";s:28:\"&#xf2ca; thermometer-quarter\";s:29:\"fa-thermometer-three-quarters\";s:35:\"&#xf2c8; thermometer-three-quarters\";s:13:\"fa-thumb-tack\";s:19:\"&#xf08d; thumb-tack\";s:14:\"fa-thumbs-down\";s:20:\"&#xf165; thumbs-down\";s:16:\"fa-thumbs-o-down\";s:22:\"&#xf088; thumbs-o-down\";s:14:\"fa-thumbs-o-up\";s:20:\"&#xf087; thumbs-o-up\";s:12:\"fa-thumbs-up\";s:18:\"&#xf164; thumbs-up\";s:9:\"fa-ticket\";s:15:\"&#xf145; ticket\";s:8:\"fa-times\";s:14:\"&#xf00d; times\";s:15:\"fa-times-circle\";s:21:\"&#xf057; times-circle\";s:17:\"fa-times-circle-o\";s:23:\"&#xf05c; times-circle-o\";s:7:\"fa-tint\";s:13:\"&#xf043; tint\";s:13:\"fa-toggle-off\";s:19:\"&#xf204; toggle-off\";s:12:\"fa-toggle-on\";s:18:\"&#xf205; toggle-on\";s:12:\"fa-trademark\";s:18:\"&#xf25c; trademark\";s:8:\"fa-train\";s:14:\"&#xf238; train\";s:14:\"fa-transgender\";s:20:\"&#xf224; transgender\";s:18:\"fa-transgender-alt\";s:24:\"&#xf225; transgender-alt\";s:8:\"fa-trash\";s:14:\"&#xf1f8; trash\";s:10:\"fa-trash-o\";s:16:\"&#xf014; trash-o\";s:7:\"fa-tree\";s:13:\"&#xf1bb; tree\";s:9:\"fa-trello\";s:15:\"&#xf181; trello\";s:14:\"fa-tripadvisor\";s:20:\"&#xf262; tripadvisor\";s:9:\"fa-trophy\";s:15:\"&#xf091; trophy\";s:8:\"fa-truck\";s:14:\"&#xf0d1; truck\";s:6:\"fa-try\";s:12:\"&#xf195; try\";s:6:\"fa-tty\";s:12:\"&#xf1e4; tty\";s:9:\"fa-tumblr\";s:15:\"&#xf173; tumblr\";s:16:\"fa-tumblr-square\";s:22:\"&#xf174; tumblr-square\";s:9:\"fa-twitch\";s:15:\"&#xf1e8; twitch\";s:10:\"fa-twitter\";s:16:\"&#xf099; twitter\";s:17:\"fa-twitter-square\";s:23:\"&#xf081; twitter-square\";s:11:\"fa-umbrella\";s:17:\"&#xf0e9; umbrella\";s:12:\"fa-underline\";s:18:\"&#xf0cd; underline\";s:7:\"fa-undo\";s:13:\"&#xf0e2; undo\";s:19:\"fa-universal-access\";s:25:\"&#xf29a; universal-access\";s:13:\"fa-university\";s:19:\"&#xf19c; university\";s:9:\"fa-unlock\";s:15:\"&#xf09c; unlock\";s:13:\"fa-unlock-alt\";s:19:\"&#xf13e; unlock-alt\";s:9:\"fa-upload\";s:15:\"&#xf093; upload\";s:6:\"fa-usb\";s:12:\"&#xf287; usb\";s:6:\"fa-usd\";s:12:\"&#xf155; usd\";s:7:\"fa-user\";s:13:\"&#xf007; user\";s:14:\"fa-user-circle\";s:20:\"&#xf2bd; user-circle\";s:16:\"fa-user-circle-o\";s:22:\"&#xf2be; user-circle-o\";s:10:\"fa-user-md\";s:16:\"&#xf0f0; user-md\";s:9:\"fa-user-o\";s:15:\"&#xf2c0; user-o\";s:12:\"fa-user-plus\";s:18:\"&#xf234; user-plus\";s:14:\"fa-user-secret\";s:20:\"&#xf21b; user-secret\";s:13:\"fa-user-times\";s:19:\"&#xf235; user-times\";s:8:\"fa-users\";s:14:\"&#xf0c0; users\";s:8:\"fa-venus\";s:14:\"&#xf221; venus\";s:15:\"fa-venus-double\";s:21:\"&#xf226; venus-double\";s:13:\"fa-venus-mars\";s:19:\"&#xf228; venus-mars\";s:10:\"fa-viacoin\";s:16:\"&#xf237; viacoin\";s:9:\"fa-viadeo\";s:15:\"&#xf2a9; viadeo\";s:16:\"fa-viadeo-square\";s:22:\"&#xf2aa; viadeo-square\";s:15:\"fa-video-camera\";s:21:\"&#xf03d; video-camera\";s:8:\"fa-vimeo\";s:14:\"&#xf27d; vimeo\";s:15:\"fa-vimeo-square\";s:21:\"&#xf194; vimeo-square\";s:7:\"fa-vine\";s:13:\"&#xf1ca; vine\";s:5:\"fa-vk\";s:11:\"&#xf189; vk\";s:23:\"fa-volume-control-phone\";s:29:\"&#xf2a0; volume-control-phone\";s:14:\"fa-volume-down\";s:20:\"&#xf027; volume-down\";s:13:\"fa-volume-off\";s:19:\"&#xf026; volume-off\";s:12:\"fa-volume-up\";s:18:\"&#xf028; volume-up\";s:8:\"fa-weibo\";s:14:\"&#xf18a; weibo\";s:9:\"fa-weixin\";s:15:\"&#xf1d7; weixin\";s:11:\"fa-whatsapp\";s:17:\"&#xf232; whatsapp\";s:13:\"fa-wheelchair\";s:19:\"&#xf193; wheelchair\";s:17:\"fa-wheelchair-alt\";s:23:\"&#xf29b; wheelchair-alt\";s:7:\"fa-wifi\";s:13:\"&#xf1eb; wifi\";s:14:\"fa-wikipedia-w\";s:20:\"&#xf266; wikipedia-w\";s:15:\"fa-window-close\";s:21:\"&#xf2d3; window-close\";s:17:\"fa-window-close-o\";s:23:\"&#xf2d4; window-close-o\";s:18:\"fa-window-maximize\";s:24:\"&#xf2d0; window-maximize\";s:18:\"fa-window-minimize\";s:24:\"&#xf2d1; window-minimize\";s:17:\"fa-window-restore\";s:23:\"&#xf2d2; window-restore\";s:10:\"fa-windows\";s:16:\"&#xf17a; windows\";s:12:\"fa-wordpress\";s:18:\"&#xf19a; wordpress\";s:13:\"fa-wpbeginner\";s:19:\"&#xf297; wpbeginner\";s:13:\"fa-wpexplorer\";s:19:\"&#xf2de; wpexplorer\";s:10:\"fa-wpforms\";s:16:\"&#xf298; wpforms\";s:9:\"fa-wrench\";s:15:\"&#xf0ad; wrench\";s:7:\"fa-xing\";s:13:\"&#xf168; xing\";s:14:\"fa-xing-square\";s:20:\"&#xf169; xing-square\";s:15:\"fa-y-combinator\";s:21:\"&#xf23b; y-combinator\";s:8:\"fa-yahoo\";s:14:\"&#xf19e; yahoo\";s:7:\"fa-yelp\";s:13:\"&#xf1e9; yelp\";s:8:\"fa-yoast\";s:14:\"&#xf2b1; yoast\";s:10:\"fa-youtube\";s:16:\"&#xf167; youtube\";s:15:\"fa-youtube-play\";s:21:\"&#xf16a; youtube-play\";s:17:\"fa-youtube-square\";s:23:\"&#xf166; youtube-square\";}s:7:\"details\";a:675:{s:9:\"fa-meetup\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-meetup\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-meetup\";s:3:\"hex\";s:5:\"\\f2e0\";s:7:\"unicode\";s:8:\"&#xf2e0;\";}s:13:\"fa-wpexplorer\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-wpexplorer\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-wpexplorer\";s:3:\"hex\";s:5:\"\\f2de\";s:7:\"unicode\";s:8:\"&#xf2de;\";}s:14:\"fa-superpowers\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-superpowers\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-superpowers\";s:3:\"hex\";s:5:\"\\f2dd\";s:7:\"unicode\";s:8:\"&#xf2dd;\";}s:14:\"fa-snowflake-o\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-snowflake-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-snowflake-o\";s:3:\"hex\";s:5:\"\\f2dc\";s:7:\"unicode\";s:8:\"&#xf2dc;\";}s:12:\"fa-microchip\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-microchip\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-microchip\";s:3:\"hex\";s:5:\"\\f2db\";s:7:\"unicode\";s:8:\"&#xf2db;\";}s:10:\"fa-eercast\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-eercast\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-eercast\";s:3:\"hex\";s:5:\"\\f2da\";s:7:\"unicode\";s:8:\"&#xf2da;\";}s:10:\"fa-ravelry\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-ravelry\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-ravelry\";s:3:\"hex\";s:5:\"\\f2d9\";s:7:\"unicode\";s:8:\"&#xf2d9;\";}s:7:\"fa-imdb\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-imdb\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-imdb\";s:3:\"hex\";s:5:\"\\f2d8\";s:7:\"unicode\";s:8:\"&#xf2d8;\";}s:7:\"fa-etsy\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-etsy\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-etsy\";s:3:\"hex\";s:5:\"\\f2d7\";s:7:\"unicode\";s:8:\"&#xf2d7;\";}s:7:\"fa-grav\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-grav\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-grav\";s:3:\"hex\";s:5:\"\\f2d6\";s:7:\"unicode\";s:8:\"&#xf2d6;\";}s:11:\"fa-bandcamp\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-bandcamp\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-bandcamp\";s:3:\"hex\";s:5:\"\\f2d5\";s:7:\"unicode\";s:8:\"&#xf2d5;\";}s:17:\"fa-window-close-o\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-window-close-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-window-close-o\";s:3:\"hex\";s:5:\"\\f2d4\";s:7:\"unicode\";s:8:\"&#xf2d4;\";}s:15:\"fa-window-close\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-window-close\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-window-close\";s:3:\"hex\";s:5:\"\\f2d3\";s:7:\"unicode\";s:8:\"&#xf2d3;\";}s:17:\"fa-window-restore\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-window-restore\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-window-restore\";s:3:\"hex\";s:5:\"\\f2d2\";s:7:\"unicode\";s:8:\"&#xf2d2;\";}s:18:\"fa-window-minimize\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-window-minimize\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-window-minimize\";s:3:\"hex\";s:5:\"\\f2d1\";s:7:\"unicode\";s:8:\"&#xf2d1;\";}s:18:\"fa-window-maximize\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-window-maximize\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-window-maximize\";s:3:\"hex\";s:5:\"\\f2d0\";s:7:\"unicode\";s:8:\"&#xf2d0;\";}s:10:\"fa-podcast\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-podcast\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-podcast\";s:3:\"hex\";s:5:\"\\f2ce\";s:7:\"unicode\";s:8:\"&#xf2ce;\";}s:7:\"fa-bath\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-bath\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-bath\";s:3:\"hex\";s:5:\"\\f2cd\";s:7:\"unicode\";s:8:\"&#xf2cd;\";}s:9:\"fa-shower\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-shower\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-shower\";s:3:\"hex\";s:5:\"\\f2cc\";s:7:\"unicode\";s:8:\"&#xf2cc;\";}s:20:\"fa-thermometer-empty\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-thermometer-empty\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-thermometer-empty\";s:3:\"hex\";s:5:\"\\f2cb\";s:7:\"unicode\";s:8:\"&#xf2cb;\";}s:22:\"fa-thermometer-quarter\";a:4:{s:7:\"element\";s:60:\"<i class=\"fa fa-thermometer-quarter\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:22:\"fa-thermometer-quarter\";s:3:\"hex\";s:5:\"\\f2ca\";s:7:\"unicode\";s:8:\"&#xf2ca;\";}s:19:\"fa-thermometer-half\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-thermometer-half\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-thermometer-half\";s:3:\"hex\";s:5:\"\\f2c9\";s:7:\"unicode\";s:8:\"&#xf2c9;\";}s:29:\"fa-thermometer-three-quarters\";a:4:{s:7:\"element\";s:67:\"<i class=\"fa fa-thermometer-three-quarters\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:29:\"fa-thermometer-three-quarters\";s:3:\"hex\";s:5:\"\\f2c8\";s:7:\"unicode\";s:8:\"&#xf2c8;\";}s:19:\"fa-thermometer-full\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-thermometer-full\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-thermometer-full\";s:3:\"hex\";s:5:\"\\f2c7\";s:7:\"unicode\";s:8:\"&#xf2c7;\";}s:11:\"fa-telegram\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-telegram\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-telegram\";s:3:\"hex\";s:5:\"\\f2c6\";s:7:\"unicode\";s:8:\"&#xf2c6;\";}s:17:\"fa-free-code-camp\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-free-code-camp\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-free-code-camp\";s:3:\"hex\";s:5:\"\\f2c5\";s:7:\"unicode\";s:8:\"&#xf2c5;\";}s:8:\"fa-quora\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-quora\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-quora\";s:3:\"hex\";s:5:\"\\f2c4\";s:7:\"unicode\";s:8:\"&#xf2c4;\";}s:12:\"fa-id-card-o\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-id-card-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-id-card-o\";s:3:\"hex\";s:5:\"\\f2c3\";s:7:\"unicode\";s:8:\"&#xf2c3;\";}s:10:\"fa-id-card\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-id-card\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-id-card\";s:3:\"hex\";s:5:\"\\f2c2\";s:7:\"unicode\";s:8:\"&#xf2c2;\";}s:11:\"fa-id-badge\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-id-badge\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-id-badge\";s:3:\"hex\";s:5:\"\\f2c1\";s:7:\"unicode\";s:8:\"&#xf2c1;\";}s:9:\"fa-user-o\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-user-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-user-o\";s:3:\"hex\";s:5:\"\\f2c0\";s:7:\"unicode\";s:8:\"&#xf2c0;\";}s:16:\"fa-user-circle-o\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-user-circle-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-user-circle-o\";s:3:\"hex\";s:5:\"\\f2be\";s:7:\"unicode\";s:8:\"&#xf2be;\";}s:14:\"fa-user-circle\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-user-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-user-circle\";s:3:\"hex\";s:5:\"\\f2bd\";s:7:\"unicode\";s:8:\"&#xf2bd;\";}s:17:\"fa-address-card-o\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-address-card-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-address-card-o\";s:3:\"hex\";s:5:\"\\f2bc\";s:7:\"unicode\";s:8:\"&#xf2bc;\";}s:15:\"fa-address-card\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-address-card\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-address-card\";s:3:\"hex\";s:5:\"\\f2bb\";s:7:\"unicode\";s:8:\"&#xf2bb;\";}s:17:\"fa-address-book-o\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-address-book-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-address-book-o\";s:3:\"hex\";s:5:\"\\f2ba\";s:7:\"unicode\";s:8:\"&#xf2ba;\";}s:15:\"fa-address-book\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-address-book\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-address-book\";s:3:\"hex\";s:5:\"\\f2b9\";s:7:\"unicode\";s:8:\"&#xf2b9;\";}s:9:\"fa-linode\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-linode\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-linode\";s:3:\"hex\";s:5:\"\\f2b8\";s:7:\"unicode\";s:8:\"&#xf2b8;\";}s:18:\"fa-envelope-open-o\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-envelope-open-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-envelope-open-o\";s:3:\"hex\";s:5:\"\\f2b7\";s:7:\"unicode\";s:8:\"&#xf2b7;\";}s:16:\"fa-envelope-open\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-envelope-open\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-envelope-open\";s:3:\"hex\";s:5:\"\\f2b6\";s:7:\"unicode\";s:8:\"&#xf2b6;\";}s:14:\"fa-handshake-o\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-handshake-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-handshake-o\";s:3:\"hex\";s:5:\"\\f2b5\";s:7:\"unicode\";s:8:\"&#xf2b5;\";}s:15:\"fa-font-awesome\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-font-awesome\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-font-awesome\";s:3:\"hex\";s:5:\"\\f2b4\";s:7:\"unicode\";s:8:\"&#xf2b4;\";}s:23:\"fa-google-plus-official\";a:4:{s:7:\"element\";s:61:\"<i class=\"fa fa-google-plus-official\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:23:\"fa-google-plus-official\";s:3:\"hex\";s:5:\"\\f2b3\";s:7:\"unicode\";s:8:\"&#xf2b3;\";}s:12:\"fa-themeisle\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-themeisle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-themeisle\";s:3:\"hex\";s:5:\"\\f2b2\";s:7:\"unicode\";s:8:\"&#xf2b2;\";}s:8:\"fa-yoast\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-yoast\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-yoast\";s:3:\"hex\";s:5:\"\\f2b1\";s:7:\"unicode\";s:8:\"&#xf2b1;\";}s:14:\"fa-first-order\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-first-order\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-first-order\";s:3:\"hex\";s:5:\"\\f2b0\";s:7:\"unicode\";s:8:\"&#xf2b0;\";}s:13:\"fa-pied-piper\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-pied-piper\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-pied-piper\";s:3:\"hex\";s:5:\"\\f2ae\";s:7:\"unicode\";s:8:\"&#xf2ae;\";}s:18:\"fa-snapchat-square\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-snapchat-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-snapchat-square\";s:3:\"hex\";s:5:\"\\f2ad\";s:7:\"unicode\";s:8:\"&#xf2ad;\";}s:17:\"fa-snapchat-ghost\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-snapchat-ghost\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-snapchat-ghost\";s:3:\"hex\";s:5:\"\\f2ac\";s:7:\"unicode\";s:8:\"&#xf2ac;\";}s:11:\"fa-snapchat\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-snapchat\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-snapchat\";s:3:\"hex\";s:5:\"\\f2ab\";s:7:\"unicode\";s:8:\"&#xf2ab;\";}s:16:\"fa-viadeo-square\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-viadeo-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-viadeo-square\";s:3:\"hex\";s:5:\"\\f2aa\";s:7:\"unicode\";s:8:\"&#xf2aa;\";}s:9:\"fa-viadeo\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-viadeo\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-viadeo\";s:3:\"hex\";s:5:\"\\f2a9\";s:7:\"unicode\";s:8:\"&#xf2a9;\";}s:13:\"fa-low-vision\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-low-vision\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-low-vision\";s:3:\"hex\";s:5:\"\\f2a8\";s:7:\"unicode\";s:8:\"&#xf2a8;\";}s:16:\"fa-sign-language\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-sign-language\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-sign-language\";s:3:\"hex\";s:5:\"\\f2a7\";s:7:\"unicode\";s:8:\"&#xf2a7;\";}s:10:\"fa-glide-g\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-glide-g\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-glide-g\";s:3:\"hex\";s:5:\"\\f2a6\";s:7:\"unicode\";s:8:\"&#xf2a6;\";}s:8:\"fa-glide\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-glide\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-glide\";s:3:\"hex\";s:5:\"\\f2a5\";s:7:\"unicode\";s:8:\"&#xf2a5;\";}s:7:\"fa-deaf\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-deaf\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-deaf\";s:3:\"hex\";s:5:\"\\f2a4\";s:7:\"unicode\";s:8:\"&#xf2a4;\";}s:38:\"fa-american-sign-language-interpreting\";a:4:{s:7:\"element\";s:76:\"<i class=\"fa fa-american-sign-language-interpreting\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:38:\"fa-american-sign-language-interpreting\";s:3:\"hex\";s:5:\"\\f2a3\";s:7:\"unicode\";s:8:\"&#xf2a3;\";}s:30:\"fa-assistive-listening-systems\";a:4:{s:7:\"element\";s:68:\"<i class=\"fa fa-assistive-listening-systems\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:30:\"fa-assistive-listening-systems\";s:3:\"hex\";s:5:\"\\f2a2\";s:7:\"unicode\";s:8:\"&#xf2a2;\";}s:10:\"fa-braille\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-braille\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-braille\";s:3:\"hex\";s:5:\"\\f2a1\";s:7:\"unicode\";s:8:\"&#xf2a1;\";}s:23:\"fa-volume-control-phone\";a:4:{s:7:\"element\";s:61:\"<i class=\"fa fa-volume-control-phone\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:23:\"fa-volume-control-phone\";s:3:\"hex\";s:5:\"\\f2a0\";s:7:\"unicode\";s:8:\"&#xf2a0;\";}s:20:\"fa-audio-description\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-audio-description\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-audio-description\";s:3:\"hex\";s:5:\"\\f29e\";s:7:\"unicode\";s:8:\"&#xf29e;\";}s:8:\"fa-blind\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-blind\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-blind\";s:3:\"hex\";s:5:\"\\f29d\";s:7:\"unicode\";s:8:\"&#xf29d;\";}s:20:\"fa-question-circle-o\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-question-circle-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-question-circle-o\";s:3:\"hex\";s:5:\"\\f29c\";s:7:\"unicode\";s:8:\"&#xf29c;\";}s:17:\"fa-wheelchair-alt\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-wheelchair-alt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-wheelchair-alt\";s:3:\"hex\";s:5:\"\\f29b\";s:7:\"unicode\";s:8:\"&#xf29b;\";}s:19:\"fa-universal-access\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-universal-access\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-universal-access\";s:3:\"hex\";s:5:\"\\f29a\";s:7:\"unicode\";s:8:\"&#xf29a;\";}s:9:\"fa-envira\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-envira\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-envira\";s:3:\"hex\";s:5:\"\\f299\";s:7:\"unicode\";s:8:\"&#xf299;\";}s:10:\"fa-wpforms\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-wpforms\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-wpforms\";s:3:\"hex\";s:5:\"\\f298\";s:7:\"unicode\";s:8:\"&#xf298;\";}s:13:\"fa-wpbeginner\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-wpbeginner\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-wpbeginner\";s:3:\"hex\";s:5:\"\\f297\";s:7:\"unicode\";s:8:\"&#xf297;\";}s:9:\"fa-gitlab\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-gitlab\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-gitlab\";s:3:\"hex\";s:5:\"\\f296\";s:7:\"unicode\";s:8:\"&#xf296;\";}s:10:\"fa-percent\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-percent\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-percent\";s:3:\"hex\";s:5:\"\\f295\";s:7:\"unicode\";s:8:\"&#xf295;\";}s:14:\"fa-bluetooth-b\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-bluetooth-b\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-bluetooth-b\";s:3:\"hex\";s:5:\"\\f294\";s:7:\"unicode\";s:8:\"&#xf294;\";}s:12:\"fa-bluetooth\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-bluetooth\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-bluetooth\";s:3:\"hex\";s:5:\"\\f293\";s:7:\"unicode\";s:8:\"&#xf293;\";}s:10:\"fa-hashtag\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-hashtag\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-hashtag\";s:3:\"hex\";s:5:\"\\f292\";s:7:\"unicode\";s:8:\"&#xf292;\";}s:18:\"fa-shopping-basket\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-shopping-basket\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-shopping-basket\";s:3:\"hex\";s:5:\"\\f291\";s:7:\"unicode\";s:8:\"&#xf291;\";}s:15:\"fa-shopping-bag\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-shopping-bag\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-shopping-bag\";s:3:\"hex\";s:5:\"\\f290\";s:7:\"unicode\";s:8:\"&#xf290;\";}s:16:\"fa-stop-circle-o\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-stop-circle-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-stop-circle-o\";s:3:\"hex\";s:5:\"\\f28e\";s:7:\"unicode\";s:8:\"&#xf28e;\";}s:14:\"fa-stop-circle\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-stop-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-stop-circle\";s:3:\"hex\";s:5:\"\\f28d\";s:7:\"unicode\";s:8:\"&#xf28d;\";}s:17:\"fa-pause-circle-o\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-pause-circle-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-pause-circle-o\";s:3:\"hex\";s:5:\"\\f28c\";s:7:\"unicode\";s:8:\"&#xf28c;\";}s:15:\"fa-pause-circle\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-pause-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-pause-circle\";s:3:\"hex\";s:5:\"\\f28b\";s:7:\"unicode\";s:8:\"&#xf28b;\";}s:9:\"fa-scribd\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-scribd\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-scribd\";s:3:\"hex\";s:5:\"\\f28a\";s:7:\"unicode\";s:8:\"&#xf28a;\";}s:11:\"fa-mixcloud\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-mixcloud\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-mixcloud\";s:3:\"hex\";s:5:\"\\f289\";s:7:\"unicode\";s:8:\"&#xf289;\";}s:15:\"fa-product-hunt\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-product-hunt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-product-hunt\";s:3:\"hex\";s:5:\"\\f288\";s:7:\"unicode\";s:8:\"&#xf288;\";}s:6:\"fa-usb\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-usb\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-usb\";s:3:\"hex\";s:5:\"\\f287\";s:7:\"unicode\";s:8:\"&#xf287;\";}s:15:\"fa-fort-awesome\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-fort-awesome\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-fort-awesome\";s:3:\"hex\";s:5:\"\\f286\";s:7:\"unicode\";s:8:\"&#xf286;\";}s:7:\"fa-modx\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-modx\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-modx\";s:3:\"hex\";s:5:\"\\f285\";s:7:\"unicode\";s:8:\"&#xf285;\";}s:11:\"fa-codiepie\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-codiepie\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-codiepie\";s:3:\"hex\";s:5:\"\\f284\";s:7:\"unicode\";s:8:\"&#xf284;\";}s:18:\"fa-credit-card-alt\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-credit-card-alt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-credit-card-alt\";s:3:\"hex\";s:5:\"\\f283\";s:7:\"unicode\";s:8:\"&#xf283;\";}s:7:\"fa-edge\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-edge\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-edge\";s:3:\"hex\";s:5:\"\\f282\";s:7:\"unicode\";s:8:\"&#xf282;\";}s:15:\"fa-reddit-alien\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-reddit-alien\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-reddit-alien\";s:3:\"hex\";s:5:\"\\f281\";s:7:\"unicode\";s:8:\"&#xf281;\";}s:12:\"fa-fonticons\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-fonticons\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-fonticons\";s:3:\"hex\";s:5:\"\\f280\";s:7:\"unicode\";s:8:\"&#xf280;\";}s:12:\"fa-black-tie\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-black-tie\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-black-tie\";s:3:\"hex\";s:5:\"\\f27e\";s:7:\"unicode\";s:8:\"&#xf27e;\";}s:8:\"fa-vimeo\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-vimeo\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-vimeo\";s:3:\"hex\";s:5:\"\\f27d\";s:7:\"unicode\";s:8:\"&#xf27d;\";}s:8:\"fa-houzz\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-houzz\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-houzz\";s:3:\"hex\";s:5:\"\\f27c\";s:7:\"unicode\";s:8:\"&#xf27c;\";}s:15:\"fa-commenting-o\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-commenting-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-commenting-o\";s:3:\"hex\";s:5:\"\\f27b\";s:7:\"unicode\";s:8:\"&#xf27b;\";}s:13:\"fa-commenting\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-commenting\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-commenting\";s:3:\"hex\";s:5:\"\\f27a\";s:7:\"unicode\";s:8:\"&#xf27a;\";}s:6:\"fa-map\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-map\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-map\";s:3:\"hex\";s:5:\"\\f279\";s:7:\"unicode\";s:8:\"&#xf279;\";}s:8:\"fa-map-o\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-map-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-map-o\";s:3:\"hex\";s:5:\"\\f278\";s:7:\"unicode\";s:8:\"&#xf278;\";}s:12:\"fa-map-signs\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-map-signs\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-map-signs\";s:3:\"hex\";s:5:\"\\f277\";s:7:\"unicode\";s:8:\"&#xf277;\";}s:10:\"fa-map-pin\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-map-pin\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-map-pin\";s:3:\"hex\";s:5:\"\\f276\";s:7:\"unicode\";s:8:\"&#xf276;\";}s:11:\"fa-industry\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-industry\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-industry\";s:3:\"hex\";s:5:\"\\f275\";s:7:\"unicode\";s:8:\"&#xf275;\";}s:19:\"fa-calendar-check-o\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-calendar-check-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-calendar-check-o\";s:3:\"hex\";s:5:\"\\f274\";s:7:\"unicode\";s:8:\"&#xf274;\";}s:19:\"fa-calendar-times-o\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-calendar-times-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-calendar-times-o\";s:3:\"hex\";s:5:\"\\f273\";s:7:\"unicode\";s:8:\"&#xf273;\";}s:19:\"fa-calendar-minus-o\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-calendar-minus-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-calendar-minus-o\";s:3:\"hex\";s:5:\"\\f272\";s:7:\"unicode\";s:8:\"&#xf272;\";}s:18:\"fa-calendar-plus-o\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-calendar-plus-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-calendar-plus-o\";s:3:\"hex\";s:5:\"\\f271\";s:7:\"unicode\";s:8:\"&#xf271;\";}s:9:\"fa-amazon\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-amazon\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-amazon\";s:3:\"hex\";s:5:\"\\f270\";s:7:\"unicode\";s:8:\"&#xf270;\";}s:8:\"fa-500px\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-500px\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-500px\";s:3:\"hex\";s:5:\"\\f26e\";s:7:\"unicode\";s:8:\"&#xf26e;\";}s:9:\"fa-contao\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-contao\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-contao\";s:3:\"hex\";s:5:\"\\f26d\";s:7:\"unicode\";s:8:\"&#xf26d;\";}s:13:\"fa-television\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-television\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-television\";s:3:\"hex\";s:5:\"\\f26c\";s:7:\"unicode\";s:8:\"&#xf26c;\";}s:20:\"fa-internet-explorer\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-internet-explorer\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-internet-explorer\";s:3:\"hex\";s:5:\"\\f26b\";s:7:\"unicode\";s:8:\"&#xf26b;\";}s:8:\"fa-opera\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-opera\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-opera\";s:3:\"hex\";s:5:\"\\f26a\";s:7:\"unicode\";s:8:\"&#xf26a;\";}s:10:\"fa-firefox\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-firefox\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-firefox\";s:3:\"hex\";s:5:\"\\f269\";s:7:\"unicode\";s:8:\"&#xf269;\";}s:9:\"fa-chrome\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-chrome\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-chrome\";s:3:\"hex\";s:5:\"\\f268\";s:7:\"unicode\";s:8:\"&#xf268;\";}s:9:\"fa-safari\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-safari\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-safari\";s:3:\"hex\";s:5:\"\\f267\";s:7:\"unicode\";s:8:\"&#xf267;\";}s:14:\"fa-wikipedia-w\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-wikipedia-w\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-wikipedia-w\";s:3:\"hex\";s:5:\"\\f266\";s:7:\"unicode\";s:8:\"&#xf266;\";}s:13:\"fa-get-pocket\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-get-pocket\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-get-pocket\";s:3:\"hex\";s:5:\"\\f265\";s:7:\"unicode\";s:8:\"&#xf265;\";}s:23:\"fa-odnoklassniki-square\";a:4:{s:7:\"element\";s:61:\"<i class=\"fa fa-odnoklassniki-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:23:\"fa-odnoklassniki-square\";s:3:\"hex\";s:5:\"\\f264\";s:7:\"unicode\";s:8:\"&#xf264;\";}s:16:\"fa-odnoklassniki\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-odnoklassniki\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-odnoklassniki\";s:3:\"hex\";s:5:\"\\f263\";s:7:\"unicode\";s:8:\"&#xf263;\";}s:14:\"fa-tripadvisor\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-tripadvisor\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-tripadvisor\";s:3:\"hex\";s:5:\"\\f262\";s:7:\"unicode\";s:8:\"&#xf262;\";}s:12:\"fa-gg-circle\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-gg-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-gg-circle\";s:3:\"hex\";s:5:\"\\f261\";s:7:\"unicode\";s:8:\"&#xf261;\";}s:5:\"fa-gg\";a:4:{s:7:\"element\";s:43:\"<i class=\"fa fa-gg\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:5:\"fa-gg\";s:3:\"hex\";s:5:\"\\f260\";s:7:\"unicode\";s:8:\"&#xf260;\";}s:19:\"fa-creative-commons\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-creative-commons\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-creative-commons\";s:3:\"hex\";s:5:\"\\f25e\";s:7:\"unicode\";s:8:\"&#xf25e;\";}s:13:\"fa-registered\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-registered\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-registered\";s:3:\"hex\";s:5:\"\\f25d\";s:7:\"unicode\";s:8:\"&#xf25d;\";}s:12:\"fa-trademark\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-trademark\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-trademark\";s:3:\"hex\";s:5:\"\\f25c\";s:7:\"unicode\";s:8:\"&#xf25c;\";}s:15:\"fa-hand-peace-o\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-hand-peace-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-hand-peace-o\";s:3:\"hex\";s:5:\"\\f25b\";s:7:\"unicode\";s:8:\"&#xf25b;\";}s:17:\"fa-hand-pointer-o\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-hand-pointer-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-hand-pointer-o\";s:3:\"hex\";s:5:\"\\f25a\";s:7:\"unicode\";s:8:\"&#xf25a;\";}s:15:\"fa-hand-spock-o\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-hand-spock-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-hand-spock-o\";s:3:\"hex\";s:5:\"\\f259\";s:7:\"unicode\";s:8:\"&#xf259;\";}s:16:\"fa-hand-lizard-o\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-hand-lizard-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-hand-lizard-o\";s:3:\"hex\";s:5:\"\\f258\";s:7:\"unicode\";s:8:\"&#xf258;\";}s:18:\"fa-hand-scissors-o\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-hand-scissors-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-hand-scissors-o\";s:3:\"hex\";s:5:\"\\f257\";s:7:\"unicode\";s:8:\"&#xf257;\";}s:15:\"fa-hand-paper-o\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-hand-paper-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-hand-paper-o\";s:3:\"hex\";s:5:\"\\f256\";s:7:\"unicode\";s:8:\"&#xf256;\";}s:14:\"fa-hand-rock-o\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-hand-rock-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-hand-rock-o\";s:3:\"hex\";s:5:\"\\f255\";s:7:\"unicode\";s:8:\"&#xf255;\";}s:12:\"fa-hourglass\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-hourglass\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-hourglass\";s:3:\"hex\";s:5:\"\\f254\";s:7:\"unicode\";s:8:\"&#xf254;\";}s:16:\"fa-hourglass-end\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-hourglass-end\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-hourglass-end\";s:3:\"hex\";s:5:\"\\f253\";s:7:\"unicode\";s:8:\"&#xf253;\";}s:17:\"fa-hourglass-half\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-hourglass-half\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-hourglass-half\";s:3:\"hex\";s:5:\"\\f252\";s:7:\"unicode\";s:8:\"&#xf252;\";}s:18:\"fa-hourglass-start\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-hourglass-start\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-hourglass-start\";s:3:\"hex\";s:5:\"\\f251\";s:7:\"unicode\";s:8:\"&#xf251;\";}s:14:\"fa-hourglass-o\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-hourglass-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-hourglass-o\";s:3:\"hex\";s:5:\"\\f250\";s:7:\"unicode\";s:8:\"&#xf250;\";}s:16:\"fa-balance-scale\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-balance-scale\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-balance-scale\";s:3:\"hex\";s:5:\"\\f24e\";s:7:\"unicode\";s:8:\"&#xf24e;\";}s:8:\"fa-clone\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-clone\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-clone\";s:3:\"hex\";s:5:\"\\f24d\";s:7:\"unicode\";s:8:\"&#xf24d;\";}s:17:\"fa-cc-diners-club\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-cc-diners-club\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-cc-diners-club\";s:3:\"hex\";s:5:\"\\f24c\";s:7:\"unicode\";s:8:\"&#xf24c;\";}s:9:\"fa-cc-jcb\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-cc-jcb\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-cc-jcb\";s:3:\"hex\";s:5:\"\\f24b\";s:7:\"unicode\";s:8:\"&#xf24b;\";}s:16:\"fa-sticky-note-o\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-sticky-note-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-sticky-note-o\";s:3:\"hex\";s:5:\"\\f24a\";s:7:\"unicode\";s:8:\"&#xf24a;\";}s:14:\"fa-sticky-note\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-sticky-note\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-sticky-note\";s:3:\"hex\";s:5:\"\\f249\";s:7:\"unicode\";s:8:\"&#xf249;\";}s:17:\"fa-object-ungroup\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-object-ungroup\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-object-ungroup\";s:3:\"hex\";s:5:\"\\f248\";s:7:\"unicode\";s:8:\"&#xf248;\";}s:15:\"fa-object-group\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-object-group\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-object-group\";s:3:\"hex\";s:5:\"\\f247\";s:7:\"unicode\";s:8:\"&#xf247;\";}s:11:\"fa-i-cursor\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-i-cursor\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-i-cursor\";s:3:\"hex\";s:5:\"\\f246\";s:7:\"unicode\";s:8:\"&#xf246;\";}s:16:\"fa-mouse-pointer\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-mouse-pointer\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-mouse-pointer\";s:3:\"hex\";s:5:\"\\f245\";s:7:\"unicode\";s:8:\"&#xf245;\";}s:16:\"fa-battery-empty\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-battery-empty\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-battery-empty\";s:3:\"hex\";s:5:\"\\f244\";s:7:\"unicode\";s:8:\"&#xf244;\";}s:18:\"fa-battery-quarter\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-battery-quarter\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-battery-quarter\";s:3:\"hex\";s:5:\"\\f243\";s:7:\"unicode\";s:8:\"&#xf243;\";}s:15:\"fa-battery-half\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-battery-half\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-battery-half\";s:3:\"hex\";s:5:\"\\f242\";s:7:\"unicode\";s:8:\"&#xf242;\";}s:25:\"fa-battery-three-quarters\";a:4:{s:7:\"element\";s:63:\"<i class=\"fa fa-battery-three-quarters\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:25:\"fa-battery-three-quarters\";s:3:\"hex\";s:5:\"\\f241\";s:7:\"unicode\";s:8:\"&#xf241;\";}s:15:\"fa-battery-full\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-battery-full\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-battery-full\";s:3:\"hex\";s:5:\"\\f240\";s:7:\"unicode\";s:8:\"&#xf240;\";}s:15:\"fa-expeditedssl\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-expeditedssl\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-expeditedssl\";s:3:\"hex\";s:5:\"\\f23e\";s:7:\"unicode\";s:8:\"&#xf23e;\";}s:11:\"fa-opencart\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-opencart\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-opencart\";s:3:\"hex\";s:5:\"\\f23d\";s:7:\"unicode\";s:8:\"&#xf23d;\";}s:16:\"fa-optin-monster\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-optin-monster\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-optin-monster\";s:3:\"hex\";s:5:\"\\f23c\";s:7:\"unicode\";s:8:\"&#xf23c;\";}s:15:\"fa-y-combinator\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-y-combinator\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-y-combinator\";s:3:\"hex\";s:5:\"\\f23b\";s:7:\"unicode\";s:8:\"&#xf23b;\";}s:9:\"fa-medium\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-medium\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-medium\";s:3:\"hex\";s:5:\"\\f23a\";s:7:\"unicode\";s:8:\"&#xf23a;\";}s:9:\"fa-subway\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-subway\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-subway\";s:3:\"hex\";s:5:\"\\f239\";s:7:\"unicode\";s:8:\"&#xf239;\";}s:8:\"fa-train\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-train\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-train\";s:3:\"hex\";s:5:\"\\f238\";s:7:\"unicode\";s:8:\"&#xf238;\";}s:10:\"fa-viacoin\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-viacoin\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-viacoin\";s:3:\"hex\";s:5:\"\\f237\";s:7:\"unicode\";s:8:\"&#xf237;\";}s:6:\"fa-bed\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-bed\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-bed\";s:3:\"hex\";s:5:\"\\f236\";s:7:\"unicode\";s:8:\"&#xf236;\";}s:13:\"fa-user-times\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-user-times\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-user-times\";s:3:\"hex\";s:5:\"\\f235\";s:7:\"unicode\";s:8:\"&#xf235;\";}s:12:\"fa-user-plus\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-user-plus\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-user-plus\";s:3:\"hex\";s:5:\"\\f234\";s:7:\"unicode\";s:8:\"&#xf234;\";}s:9:\"fa-server\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-server\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-server\";s:3:\"hex\";s:5:\"\\f233\";s:7:\"unicode\";s:8:\"&#xf233;\";}s:11:\"fa-whatsapp\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-whatsapp\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-whatsapp\";s:3:\"hex\";s:5:\"\\f232\";s:7:\"unicode\";s:8:\"&#xf232;\";}s:14:\"fa-pinterest-p\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-pinterest-p\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-pinterest-p\";s:3:\"hex\";s:5:\"\\f231\";s:7:\"unicode\";s:8:\"&#xf231;\";}s:20:\"fa-facebook-official\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-facebook-official\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-facebook-official\";s:3:\"hex\";s:5:\"\\f230\";s:7:\"unicode\";s:8:\"&#xf230;\";}s:13:\"fa-genderless\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-genderless\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-genderless\";s:3:\"hex\";s:5:\"\\f22d\";s:7:\"unicode\";s:8:\"&#xf22d;\";}s:9:\"fa-neuter\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-neuter\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-neuter\";s:3:\"hex\";s:5:\"\\f22c\";s:7:\"unicode\";s:8:\"&#xf22c;\";}s:16:\"fa-mars-stroke-h\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-mars-stroke-h\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-mars-stroke-h\";s:3:\"hex\";s:5:\"\\f22b\";s:7:\"unicode\";s:8:\"&#xf22b;\";}s:16:\"fa-mars-stroke-v\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-mars-stroke-v\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-mars-stroke-v\";s:3:\"hex\";s:5:\"\\f22a\";s:7:\"unicode\";s:8:\"&#xf22a;\";}s:14:\"fa-mars-stroke\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-mars-stroke\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-mars-stroke\";s:3:\"hex\";s:5:\"\\f229\";s:7:\"unicode\";s:8:\"&#xf229;\";}s:13:\"fa-venus-mars\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-venus-mars\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-venus-mars\";s:3:\"hex\";s:5:\"\\f228\";s:7:\"unicode\";s:8:\"&#xf228;\";}s:14:\"fa-mars-double\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-mars-double\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-mars-double\";s:3:\"hex\";s:5:\"\\f227\";s:7:\"unicode\";s:8:\"&#xf227;\";}s:15:\"fa-venus-double\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-venus-double\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-venus-double\";s:3:\"hex\";s:5:\"\\f226\";s:7:\"unicode\";s:8:\"&#xf226;\";}s:18:\"fa-transgender-alt\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-transgender-alt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-transgender-alt\";s:3:\"hex\";s:5:\"\\f225\";s:7:\"unicode\";s:8:\"&#xf225;\";}s:14:\"fa-transgender\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-transgender\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-transgender\";s:3:\"hex\";s:5:\"\\f224\";s:7:\"unicode\";s:8:\"&#xf224;\";}s:10:\"fa-mercury\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-mercury\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-mercury\";s:3:\"hex\";s:5:\"\\f223\";s:7:\"unicode\";s:8:\"&#xf223;\";}s:7:\"fa-mars\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-mars\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-mars\";s:3:\"hex\";s:5:\"\\f222\";s:7:\"unicode\";s:8:\"&#xf222;\";}s:8:\"fa-venus\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-venus\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-venus\";s:3:\"hex\";s:5:\"\\f221\";s:7:\"unicode\";s:8:\"&#xf221;\";}s:12:\"fa-heartbeat\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-heartbeat\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-heartbeat\";s:3:\"hex\";s:5:\"\\f21e\";s:7:\"unicode\";s:8:\"&#xf21e;\";}s:14:\"fa-street-view\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-street-view\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-street-view\";s:3:\"hex\";s:5:\"\\f21d\";s:7:\"unicode\";s:8:\"&#xf21d;\";}s:13:\"fa-motorcycle\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-motorcycle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-motorcycle\";s:3:\"hex\";s:5:\"\\f21c\";s:7:\"unicode\";s:8:\"&#xf21c;\";}s:14:\"fa-user-secret\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-user-secret\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-user-secret\";s:3:\"hex\";s:5:\"\\f21b\";s:7:\"unicode\";s:8:\"&#xf21b;\";}s:7:\"fa-ship\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-ship\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-ship\";s:3:\"hex\";s:5:\"\\f21a\";s:7:\"unicode\";s:8:\"&#xf21a;\";}s:10:\"fa-diamond\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-diamond\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-diamond\";s:3:\"hex\";s:5:\"\\f219\";s:7:\"unicode\";s:8:\"&#xf219;\";}s:18:\"fa-cart-arrow-down\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-cart-arrow-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-cart-arrow-down\";s:3:\"hex\";s:5:\"\\f218\";s:7:\"unicode\";s:8:\"&#xf218;\";}s:12:\"fa-cart-plus\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-cart-plus\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-cart-plus\";s:3:\"hex\";s:5:\"\\f217\";s:7:\"unicode\";s:8:\"&#xf217;\";}s:11:\"fa-skyatlas\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-skyatlas\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-skyatlas\";s:3:\"hex\";s:5:\"\\f216\";s:7:\"unicode\";s:8:\"&#xf216;\";}s:14:\"fa-simplybuilt\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-simplybuilt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-simplybuilt\";s:3:\"hex\";s:5:\"\\f215\";s:7:\"unicode\";s:8:\"&#xf215;\";}s:15:\"fa-shirtsinbulk\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-shirtsinbulk\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-shirtsinbulk\";s:3:\"hex\";s:5:\"\\f214\";s:7:\"unicode\";s:8:\"&#xf214;\";}s:9:\"fa-sellsy\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-sellsy\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-sellsy\";s:3:\"hex\";s:5:\"\\f213\";s:7:\"unicode\";s:8:\"&#xf213;\";}s:10:\"fa-leanpub\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-leanpub\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-leanpub\";s:3:\"hex\";s:5:\"\\f212\";s:7:\"unicode\";s:8:\"&#xf212;\";}s:11:\"fa-forumbee\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-forumbee\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-forumbee\";s:3:\"hex\";s:5:\"\\f211\";s:7:\"unicode\";s:8:\"&#xf211;\";}s:11:\"fa-dashcube\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-dashcube\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-dashcube\";s:3:\"hex\";s:5:\"\\f210\";s:7:\"unicode\";s:8:\"&#xf210;\";}s:17:\"fa-connectdevelop\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-connectdevelop\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-connectdevelop\";s:3:\"hex\";s:5:\"\\f20e\";s:7:\"unicode\";s:8:\"&#xf20e;\";}s:13:\"fa-buysellads\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-buysellads\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-buysellads\";s:3:\"hex\";s:5:\"\\f20d\";s:7:\"unicode\";s:8:\"&#xf20d;\";}s:11:\"fa-meanpath\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-meanpath\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-meanpath\";s:3:\"hex\";s:5:\"\\f20c\";s:7:\"unicode\";s:8:\"&#xf20c;\";}s:6:\"fa-ils\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-ils\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-ils\";s:3:\"hex\";s:5:\"\\f20b\";s:7:\"unicode\";s:8:\"&#xf20b;\";}s:5:\"fa-cc\";a:4:{s:7:\"element\";s:43:\"<i class=\"fa fa-cc\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:5:\"fa-cc\";s:3:\"hex\";s:5:\"\\f20a\";s:7:\"unicode\";s:8:\"&#xf20a;\";}s:12:\"fa-angellist\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-angellist\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-angellist\";s:3:\"hex\";s:5:\"\\f209\";s:7:\"unicode\";s:8:\"&#xf209;\";}s:10:\"fa-ioxhost\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-ioxhost\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-ioxhost\";s:3:\"hex\";s:5:\"\\f208\";s:7:\"unicode\";s:8:\"&#xf208;\";}s:6:\"fa-bus\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-bus\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-bus\";s:3:\"hex\";s:5:\"\\f207\";s:7:\"unicode\";s:8:\"&#xf207;\";}s:10:\"fa-bicycle\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-bicycle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-bicycle\";s:3:\"hex\";s:5:\"\\f206\";s:7:\"unicode\";s:8:\"&#xf206;\";}s:12:\"fa-toggle-on\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-toggle-on\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-toggle-on\";s:3:\"hex\";s:5:\"\\f205\";s:7:\"unicode\";s:8:\"&#xf205;\";}s:13:\"fa-toggle-off\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-toggle-off\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-toggle-off\";s:3:\"hex\";s:5:\"\\f204\";s:7:\"unicode\";s:8:\"&#xf204;\";}s:16:\"fa-lastfm-square\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-lastfm-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-lastfm-square\";s:3:\"hex\";s:5:\"\\f203\";s:7:\"unicode\";s:8:\"&#xf203;\";}s:9:\"fa-lastfm\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-lastfm\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-lastfm\";s:3:\"hex\";s:5:\"\\f202\";s:7:\"unicode\";s:8:\"&#xf202;\";}s:13:\"fa-line-chart\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-line-chart\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-line-chart\";s:3:\"hex\";s:5:\"\\f201\";s:7:\"unicode\";s:8:\"&#xf201;\";}s:12:\"fa-pie-chart\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-pie-chart\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-pie-chart\";s:3:\"hex\";s:5:\"\\f200\";s:7:\"unicode\";s:8:\"&#xf200;\";}s:13:\"fa-area-chart\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-area-chart\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-area-chart\";s:3:\"hex\";s:5:\"\\f1fe\";s:7:\"unicode\";s:8:\"&#xf1fe;\";}s:16:\"fa-birthday-cake\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-birthday-cake\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-birthday-cake\";s:3:\"hex\";s:5:\"\\f1fd\";s:7:\"unicode\";s:8:\"&#xf1fd;\";}s:14:\"fa-paint-brush\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-paint-brush\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-paint-brush\";s:3:\"hex\";s:5:\"\\f1fc\";s:7:\"unicode\";s:8:\"&#xf1fc;\";}s:13:\"fa-eyedropper\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-eyedropper\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-eyedropper\";s:3:\"hex\";s:5:\"\\f1fb\";s:7:\"unicode\";s:8:\"&#xf1fb;\";}s:5:\"fa-at\";a:4:{s:7:\"element\";s:43:\"<i class=\"fa fa-at\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:5:\"fa-at\";s:3:\"hex\";s:5:\"\\f1fa\";s:7:\"unicode\";s:8:\"&#xf1fa;\";}s:12:\"fa-copyright\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-copyright\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-copyright\";s:3:\"hex\";s:5:\"\\f1f9\";s:7:\"unicode\";s:8:\"&#xf1f9;\";}s:8:\"fa-trash\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-trash\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-trash\";s:3:\"hex\";s:5:\"\\f1f8\";s:7:\"unicode\";s:8:\"&#xf1f8;\";}s:15:\"fa-bell-slash-o\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-bell-slash-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-bell-slash-o\";s:3:\"hex\";s:5:\"\\f1f7\";s:7:\"unicode\";s:8:\"&#xf1f7;\";}s:13:\"fa-bell-slash\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-bell-slash\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-bell-slash\";s:3:\"hex\";s:5:\"\\f1f6\";s:7:\"unicode\";s:8:\"&#xf1f6;\";}s:12:\"fa-cc-stripe\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-cc-stripe\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-cc-stripe\";s:3:\"hex\";s:5:\"\\f1f5\";s:7:\"unicode\";s:8:\"&#xf1f5;\";}s:12:\"fa-cc-paypal\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-cc-paypal\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-cc-paypal\";s:3:\"hex\";s:5:\"\\f1f4\";s:7:\"unicode\";s:8:\"&#xf1f4;\";}s:10:\"fa-cc-amex\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-cc-amex\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-cc-amex\";s:3:\"hex\";s:5:\"\\f1f3\";s:7:\"unicode\";s:8:\"&#xf1f3;\";}s:14:\"fa-cc-discover\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-cc-discover\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-cc-discover\";s:3:\"hex\";s:5:\"\\f1f2\";s:7:\"unicode\";s:8:\"&#xf1f2;\";}s:16:\"fa-cc-mastercard\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-cc-mastercard\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-cc-mastercard\";s:3:\"hex\";s:5:\"\\f1f1\";s:7:\"unicode\";s:8:\"&#xf1f1;\";}s:10:\"fa-cc-visa\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-cc-visa\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-cc-visa\";s:3:\"hex\";s:5:\"\\f1f0\";s:7:\"unicode\";s:8:\"&#xf1f0;\";}s:16:\"fa-google-wallet\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-google-wallet\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-google-wallet\";s:3:\"hex\";s:5:\"\\f1ee\";s:7:\"unicode\";s:8:\"&#xf1ee;\";}s:9:\"fa-paypal\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-paypal\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-paypal\";s:3:\"hex\";s:5:\"\\f1ed\";s:7:\"unicode\";s:8:\"&#xf1ed;\";}s:13:\"fa-calculator\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-calculator\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-calculator\";s:3:\"hex\";s:5:\"\\f1ec\";s:7:\"unicode\";s:8:\"&#xf1ec;\";}s:7:\"fa-wifi\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-wifi\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-wifi\";s:3:\"hex\";s:5:\"\\f1eb\";s:7:\"unicode\";s:8:\"&#xf1eb;\";}s:14:\"fa-newspaper-o\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-newspaper-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-newspaper-o\";s:3:\"hex\";s:5:\"\\f1ea\";s:7:\"unicode\";s:8:\"&#xf1ea;\";}s:7:\"fa-yelp\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-yelp\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-yelp\";s:3:\"hex\";s:5:\"\\f1e9\";s:7:\"unicode\";s:8:\"&#xf1e9;\";}s:9:\"fa-twitch\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-twitch\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-twitch\";s:3:\"hex\";s:5:\"\\f1e8\";s:7:\"unicode\";s:8:\"&#xf1e8;\";}s:13:\"fa-slideshare\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-slideshare\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-slideshare\";s:3:\"hex\";s:5:\"\\f1e7\";s:7:\"unicode\";s:8:\"&#xf1e7;\";}s:7:\"fa-plug\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-plug\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-plug\";s:3:\"hex\";s:5:\"\\f1e6\";s:7:\"unicode\";s:8:\"&#xf1e6;\";}s:13:\"fa-binoculars\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-binoculars\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-binoculars\";s:3:\"hex\";s:5:\"\\f1e5\";s:7:\"unicode\";s:8:\"&#xf1e5;\";}s:6:\"fa-tty\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-tty\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-tty\";s:3:\"hex\";s:5:\"\\f1e4\";s:7:\"unicode\";s:8:\"&#xf1e4;\";}s:11:\"fa-futbol-o\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-futbol-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-futbol-o\";s:3:\"hex\";s:5:\"\\f1e3\";s:7:\"unicode\";s:8:\"&#xf1e3;\";}s:7:\"fa-bomb\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-bomb\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-bomb\";s:3:\"hex\";s:5:\"\\f1e2\";s:7:\"unicode\";s:8:\"&#xf1e2;\";}s:19:\"fa-share-alt-square\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-share-alt-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-share-alt-square\";s:3:\"hex\";s:5:\"\\f1e1\";s:7:\"unicode\";s:8:\"&#xf1e1;\";}s:12:\"fa-share-alt\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-share-alt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-share-alt\";s:3:\"hex\";s:5:\"\\f1e0\";s:7:\"unicode\";s:8:\"&#xf1e0;\";}s:10:\"fa-sliders\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-sliders\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-sliders\";s:3:\"hex\";s:5:\"\\f1de\";s:7:\"unicode\";s:8:\"&#xf1de;\";}s:12:\"fa-paragraph\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-paragraph\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-paragraph\";s:3:\"hex\";s:5:\"\\f1dd\";s:7:\"unicode\";s:8:\"&#xf1dd;\";}s:9:\"fa-header\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-header\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-header\";s:3:\"hex\";s:5:\"\\f1dc\";s:7:\"unicode\";s:8:\"&#xf1dc;\";}s:14:\"fa-circle-thin\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-circle-thin\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-circle-thin\";s:3:\"hex\";s:5:\"\\f1db\";s:7:\"unicode\";s:8:\"&#xf1db;\";}s:10:\"fa-history\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-history\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-history\";s:3:\"hex\";s:5:\"\\f1da\";s:7:\"unicode\";s:8:\"&#xf1da;\";}s:16:\"fa-paper-plane-o\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-paper-plane-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-paper-plane-o\";s:3:\"hex\";s:5:\"\\f1d9\";s:7:\"unicode\";s:8:\"&#xf1d9;\";}s:14:\"fa-paper-plane\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-paper-plane\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-paper-plane\";s:3:\"hex\";s:5:\"\\f1d8\";s:7:\"unicode\";s:8:\"&#xf1d8;\";}s:9:\"fa-weixin\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-weixin\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-weixin\";s:3:\"hex\";s:5:\"\\f1d7\";s:7:\"unicode\";s:8:\"&#xf1d7;\";}s:5:\"fa-qq\";a:4:{s:7:\"element\";s:43:\"<i class=\"fa fa-qq\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:5:\"fa-qq\";s:3:\"hex\";s:5:\"\\f1d6\";s:7:\"unicode\";s:8:\"&#xf1d6;\";}s:16:\"fa-tencent-weibo\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-tencent-weibo\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-tencent-weibo\";s:3:\"hex\";s:5:\"\\f1d5\";s:7:\"unicode\";s:8:\"&#xf1d5;\";}s:14:\"fa-hacker-news\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-hacker-news\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-hacker-news\";s:3:\"hex\";s:5:\"\\f1d4\";s:7:\"unicode\";s:8:\"&#xf1d4;\";}s:6:\"fa-git\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-git\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-git\";s:3:\"hex\";s:5:\"\\f1d3\";s:7:\"unicode\";s:8:\"&#xf1d3;\";}s:13:\"fa-git-square\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-git-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-git-square\";s:3:\"hex\";s:5:\"\\f1d2\";s:7:\"unicode\";s:8:\"&#xf1d2;\";}s:9:\"fa-empire\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-empire\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-empire\";s:3:\"hex\";s:5:\"\\f1d1\";s:7:\"unicode\";s:8:\"&#xf1d1;\";}s:8:\"fa-rebel\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-rebel\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-rebel\";s:3:\"hex\";s:5:\"\\f1d0\";s:7:\"unicode\";s:8:\"&#xf1d0;\";}s:17:\"fa-circle-o-notch\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-circle-o-notch\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-circle-o-notch\";s:3:\"hex\";s:5:\"\\f1ce\";s:7:\"unicode\";s:8:\"&#xf1ce;\";}s:12:\"fa-life-ring\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-life-ring\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-life-ring\";s:3:\"hex\";s:5:\"\\f1cd\";s:7:\"unicode\";s:8:\"&#xf1cd;\";}s:11:\"fa-jsfiddle\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-jsfiddle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-jsfiddle\";s:3:\"hex\";s:5:\"\\f1cc\";s:7:\"unicode\";s:8:\"&#xf1cc;\";}s:10:\"fa-codepen\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-codepen\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-codepen\";s:3:\"hex\";s:5:\"\\f1cb\";s:7:\"unicode\";s:8:\"&#xf1cb;\";}s:7:\"fa-vine\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-vine\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-vine\";s:3:\"hex\";s:5:\"\\f1ca\";s:7:\"unicode\";s:8:\"&#xf1ca;\";}s:14:\"fa-file-code-o\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-file-code-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-file-code-o\";s:3:\"hex\";s:5:\"\\f1c9\";s:7:\"unicode\";s:8:\"&#xf1c9;\";}s:15:\"fa-file-video-o\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-file-video-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-file-video-o\";s:3:\"hex\";s:5:\"\\f1c8\";s:7:\"unicode\";s:8:\"&#xf1c8;\";}s:15:\"fa-file-audio-o\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-file-audio-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-file-audio-o\";s:3:\"hex\";s:5:\"\\f1c7\";s:7:\"unicode\";s:8:\"&#xf1c7;\";}s:17:\"fa-file-archive-o\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-file-archive-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-file-archive-o\";s:3:\"hex\";s:5:\"\\f1c6\";s:7:\"unicode\";s:8:\"&#xf1c6;\";}s:15:\"fa-file-image-o\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-file-image-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-file-image-o\";s:3:\"hex\";s:5:\"\\f1c5\";s:7:\"unicode\";s:8:\"&#xf1c5;\";}s:20:\"fa-file-powerpoint-o\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-file-powerpoint-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-file-powerpoint-o\";s:3:\"hex\";s:5:\"\\f1c4\";s:7:\"unicode\";s:8:\"&#xf1c4;\";}s:15:\"fa-file-excel-o\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-file-excel-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-file-excel-o\";s:3:\"hex\";s:5:\"\\f1c3\";s:7:\"unicode\";s:8:\"&#xf1c3;\";}s:14:\"fa-file-word-o\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-file-word-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-file-word-o\";s:3:\"hex\";s:5:\"\\f1c2\";s:7:\"unicode\";s:8:\"&#xf1c2;\";}s:13:\"fa-file-pdf-o\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-file-pdf-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-file-pdf-o\";s:3:\"hex\";s:5:\"\\f1c1\";s:7:\"unicode\";s:8:\"&#xf1c1;\";}s:11:\"fa-database\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-database\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-database\";s:3:\"hex\";s:5:\"\\f1c0\";s:7:\"unicode\";s:8:\"&#xf1c0;\";}s:13:\"fa-soundcloud\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-soundcloud\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-soundcloud\";s:3:\"hex\";s:5:\"\\f1be\";s:7:\"unicode\";s:8:\"&#xf1be;\";}s:13:\"fa-deviantart\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-deviantart\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-deviantart\";s:3:\"hex\";s:5:\"\\f1bd\";s:7:\"unicode\";s:8:\"&#xf1bd;\";}s:10:\"fa-spotify\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-spotify\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-spotify\";s:3:\"hex\";s:5:\"\\f1bc\";s:7:\"unicode\";s:8:\"&#xf1bc;\";}s:7:\"fa-tree\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-tree\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-tree\";s:3:\"hex\";s:5:\"\\f1bb\";s:7:\"unicode\";s:8:\"&#xf1bb;\";}s:7:\"fa-taxi\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-taxi\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-taxi\";s:3:\"hex\";s:5:\"\\f1ba\";s:7:\"unicode\";s:8:\"&#xf1ba;\";}s:6:\"fa-car\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-car\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-car\";s:3:\"hex\";s:5:\"\\f1b9\";s:7:\"unicode\";s:8:\"&#xf1b9;\";}s:10:\"fa-recycle\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-recycle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-recycle\";s:3:\"hex\";s:5:\"\\f1b8\";s:7:\"unicode\";s:8:\"&#xf1b8;\";}s:15:\"fa-steam-square\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-steam-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-steam-square\";s:3:\"hex\";s:5:\"\\f1b7\";s:7:\"unicode\";s:8:\"&#xf1b7;\";}s:8:\"fa-steam\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-steam\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-steam\";s:3:\"hex\";s:5:\"\\f1b6\";s:7:\"unicode\";s:8:\"&#xf1b6;\";}s:17:\"fa-behance-square\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-behance-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-behance-square\";s:3:\"hex\";s:5:\"\\f1b5\";s:7:\"unicode\";s:8:\"&#xf1b5;\";}s:10:\"fa-behance\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-behance\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-behance\";s:3:\"hex\";s:5:\"\\f1b4\";s:7:\"unicode\";s:8:\"&#xf1b4;\";}s:8:\"fa-cubes\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-cubes\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-cubes\";s:3:\"hex\";s:5:\"\\f1b3\";s:7:\"unicode\";s:8:\"&#xf1b3;\";}s:7:\"fa-cube\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-cube\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-cube\";s:3:\"hex\";s:5:\"\\f1b2\";s:7:\"unicode\";s:8:\"&#xf1b2;\";}s:8:\"fa-spoon\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-spoon\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-spoon\";s:3:\"hex\";s:5:\"\\f1b1\";s:7:\"unicode\";s:8:\"&#xf1b1;\";}s:6:\"fa-paw\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-paw\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-paw\";s:3:\"hex\";s:5:\"\\f1b0\";s:7:\"unicode\";s:8:\"&#xf1b0;\";}s:8:\"fa-child\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-child\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-child\";s:3:\"hex\";s:5:\"\\f1ae\";s:7:\"unicode\";s:8:\"&#xf1ae;\";}s:11:\"fa-building\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-building\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-building\";s:3:\"hex\";s:5:\"\\f1ad\";s:7:\"unicode\";s:8:\"&#xf1ad;\";}s:6:\"fa-fax\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-fax\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-fax\";s:3:\"hex\";s:5:\"\\f1ac\";s:7:\"unicode\";s:8:\"&#xf1ac;\";}s:11:\"fa-language\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-language\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-language\";s:3:\"hex\";s:5:\"\\f1ab\";s:7:\"unicode\";s:8:\"&#xf1ab;\";}s:9:\"fa-joomla\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-joomla\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-joomla\";s:3:\"hex\";s:5:\"\\f1aa\";s:7:\"unicode\";s:8:\"&#xf1aa;\";}s:9:\"fa-drupal\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-drupal\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-drupal\";s:3:\"hex\";s:5:\"\\f1a9\";s:7:\"unicode\";s:8:\"&#xf1a9;\";}s:17:\"fa-pied-piper-alt\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-pied-piper-alt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-pied-piper-alt\";s:3:\"hex\";s:5:\"\\f1a8\";s:7:\"unicode\";s:8:\"&#xf1a8;\";}s:16:\"fa-pied-piper-pp\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-pied-piper-pp\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-pied-piper-pp\";s:3:\"hex\";s:5:\"\\f1a7\";s:7:\"unicode\";s:8:\"&#xf1a7;\";}s:7:\"fa-digg\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-digg\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-digg\";s:3:\"hex\";s:5:\"\\f1a6\";s:7:\"unicode\";s:8:\"&#xf1a6;\";}s:12:\"fa-delicious\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-delicious\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-delicious\";s:3:\"hex\";s:5:\"\\f1a5\";s:7:\"unicode\";s:8:\"&#xf1a5;\";}s:14:\"fa-stumbleupon\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-stumbleupon\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-stumbleupon\";s:3:\"hex\";s:5:\"\\f1a4\";s:7:\"unicode\";s:8:\"&#xf1a4;\";}s:21:\"fa-stumbleupon-circle\";a:4:{s:7:\"element\";s:59:\"<i class=\"fa fa-stumbleupon-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:21:\"fa-stumbleupon-circle\";s:3:\"hex\";s:5:\"\\f1a3\";s:7:\"unicode\";s:8:\"&#xf1a3;\";}s:16:\"fa-reddit-square\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-reddit-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-reddit-square\";s:3:\"hex\";s:5:\"\\f1a2\";s:7:\"unicode\";s:8:\"&#xf1a2;\";}s:9:\"fa-reddit\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-reddit\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-reddit\";s:3:\"hex\";s:5:\"\\f1a1\";s:7:\"unicode\";s:8:\"&#xf1a1;\";}s:9:\"fa-google\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-google\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-google\";s:3:\"hex\";s:5:\"\\f1a0\";s:7:\"unicode\";s:8:\"&#xf1a0;\";}s:8:\"fa-yahoo\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-yahoo\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-yahoo\";s:3:\"hex\";s:5:\"\\f19e\";s:7:\"unicode\";s:8:\"&#xf19e;\";}s:17:\"fa-graduation-cap\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-graduation-cap\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-graduation-cap\";s:3:\"hex\";s:5:\"\\f19d\";s:7:\"unicode\";s:8:\"&#xf19d;\";}s:13:\"fa-university\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-university\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-university\";s:3:\"hex\";s:5:\"\\f19c\";s:7:\"unicode\";s:8:\"&#xf19c;\";}s:9:\"fa-openid\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-openid\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-openid\";s:3:\"hex\";s:5:\"\\f19b\";s:7:\"unicode\";s:8:\"&#xf19b;\";}s:12:\"fa-wordpress\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-wordpress\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-wordpress\";s:3:\"hex\";s:5:\"\\f19a\";s:7:\"unicode\";s:8:\"&#xf19a;\";}s:18:\"fa-envelope-square\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-envelope-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-envelope-square\";s:3:\"hex\";s:5:\"\\f199\";s:7:\"unicode\";s:8:\"&#xf199;\";}s:8:\"fa-slack\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-slack\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-slack\";s:3:\"hex\";s:5:\"\\f198\";s:7:\"unicode\";s:8:\"&#xf198;\";}s:16:\"fa-space-shuttle\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-space-shuttle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-space-shuttle\";s:3:\"hex\";s:5:\"\\f197\";s:7:\"unicode\";s:8:\"&#xf197;\";}s:16:\"fa-plus-square-o\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-plus-square-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-plus-square-o\";s:3:\"hex\";s:5:\"\\f196\";s:7:\"unicode\";s:8:\"&#xf196;\";}s:6:\"fa-try\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-try\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-try\";s:3:\"hex\";s:5:\"\\f195\";s:7:\"unicode\";s:8:\"&#xf195;\";}s:15:\"fa-vimeo-square\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-vimeo-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-vimeo-square\";s:3:\"hex\";s:5:\"\\f194\";s:7:\"unicode\";s:8:\"&#xf194;\";}s:13:\"fa-wheelchair\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-wheelchair\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-wheelchair\";s:3:\"hex\";s:5:\"\\f193\";s:7:\"unicode\";s:8:\"&#xf193;\";}s:15:\"fa-dot-circle-o\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-dot-circle-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-dot-circle-o\";s:3:\"hex\";s:5:\"\\f192\";s:7:\"unicode\";s:8:\"&#xf192;\";}s:22:\"fa-caret-square-o-left\";a:4:{s:7:\"element\";s:60:\"<i class=\"fa fa-caret-square-o-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:22:\"fa-caret-square-o-left\";s:3:\"hex\";s:5:\"\\f191\";s:7:\"unicode\";s:8:\"&#xf191;\";}s:22:\"fa-arrow-circle-o-left\";a:4:{s:7:\"element\";s:60:\"<i class=\"fa fa-arrow-circle-o-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:22:\"fa-arrow-circle-o-left\";s:3:\"hex\";s:5:\"\\f190\";s:7:\"unicode\";s:8:\"&#xf190;\";}s:23:\"fa-arrow-circle-o-right\";a:4:{s:7:\"element\";s:61:\"<i class=\"fa fa-arrow-circle-o-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:23:\"fa-arrow-circle-o-right\";s:3:\"hex\";s:5:\"\\f18e\";s:7:\"unicode\";s:8:\"&#xf18e;\";}s:17:\"fa-stack-exchange\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-stack-exchange\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-stack-exchange\";s:3:\"hex\";s:5:\"\\f18d\";s:7:\"unicode\";s:8:\"&#xf18d;\";}s:12:\"fa-pagelines\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-pagelines\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-pagelines\";s:3:\"hex\";s:5:\"\\f18c\";s:7:\"unicode\";s:8:\"&#xf18c;\";}s:9:\"fa-renren\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-renren\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-renren\";s:3:\"hex\";s:5:\"\\f18b\";s:7:\"unicode\";s:8:\"&#xf18b;\";}s:8:\"fa-weibo\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-weibo\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-weibo\";s:3:\"hex\";s:5:\"\\f18a\";s:7:\"unicode\";s:8:\"&#xf18a;\";}s:5:\"fa-vk\";a:4:{s:7:\"element\";s:43:\"<i class=\"fa fa-vk\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:5:\"fa-vk\";s:3:\"hex\";s:5:\"\\f189\";s:7:\"unicode\";s:8:\"&#xf189;\";}s:6:\"fa-bug\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-bug\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-bug\";s:3:\"hex\";s:5:\"\\f188\";s:7:\"unicode\";s:8:\"&#xf188;\";}s:10:\"fa-archive\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-archive\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-archive\";s:3:\"hex\";s:5:\"\\f187\";s:7:\"unicode\";s:8:\"&#xf187;\";}s:9:\"fa-moon-o\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-moon-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-moon-o\";s:3:\"hex\";s:5:\"\\f186\";s:7:\"unicode\";s:8:\"&#xf186;\";}s:8:\"fa-sun-o\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-sun-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-sun-o\";s:3:\"hex\";s:5:\"\\f185\";s:7:\"unicode\";s:8:\"&#xf185;\";}s:11:\"fa-gratipay\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-gratipay\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-gratipay\";s:3:\"hex\";s:5:\"\\f184\";s:7:\"unicode\";s:8:\"&#xf184;\";}s:7:\"fa-male\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-male\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-male\";s:3:\"hex\";s:5:\"\\f183\";s:7:\"unicode\";s:8:\"&#xf183;\";}s:9:\"fa-female\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-female\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-female\";s:3:\"hex\";s:5:\"\\f182\";s:7:\"unicode\";s:8:\"&#xf182;\";}s:9:\"fa-trello\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-trello\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-trello\";s:3:\"hex\";s:5:\"\\f181\";s:7:\"unicode\";s:8:\"&#xf181;\";}s:13:\"fa-foursquare\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-foursquare\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-foursquare\";s:3:\"hex\";s:5:\"\\f180\";s:7:\"unicode\";s:8:\"&#xf180;\";}s:8:\"fa-skype\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-skype\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-skype\";s:3:\"hex\";s:5:\"\\f17e\";s:7:\"unicode\";s:8:\"&#xf17e;\";}s:11:\"fa-dribbble\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-dribbble\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-dribbble\";s:3:\"hex\";s:5:\"\\f17d\";s:7:\"unicode\";s:8:\"&#xf17d;\";}s:8:\"fa-linux\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-linux\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-linux\";s:3:\"hex\";s:5:\"\\f17c\";s:7:\"unicode\";s:8:\"&#xf17c;\";}s:10:\"fa-android\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-android\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-android\";s:3:\"hex\";s:5:\"\\f17b\";s:7:\"unicode\";s:8:\"&#xf17b;\";}s:10:\"fa-windows\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-windows\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-windows\";s:3:\"hex\";s:5:\"\\f17a\";s:7:\"unicode\";s:8:\"&#xf17a;\";}s:8:\"fa-apple\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-apple\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-apple\";s:3:\"hex\";s:5:\"\\f179\";s:7:\"unicode\";s:8:\"&#xf179;\";}s:19:\"fa-long-arrow-right\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-long-arrow-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-long-arrow-right\";s:3:\"hex\";s:5:\"\\f178\";s:7:\"unicode\";s:8:\"&#xf178;\";}s:18:\"fa-long-arrow-left\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-long-arrow-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-long-arrow-left\";s:3:\"hex\";s:5:\"\\f177\";s:7:\"unicode\";s:8:\"&#xf177;\";}s:16:\"fa-long-arrow-up\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-long-arrow-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-long-arrow-up\";s:3:\"hex\";s:5:\"\\f176\";s:7:\"unicode\";s:8:\"&#xf176;\";}s:18:\"fa-long-arrow-down\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-long-arrow-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-long-arrow-down\";s:3:\"hex\";s:5:\"\\f175\";s:7:\"unicode\";s:8:\"&#xf175;\";}s:16:\"fa-tumblr-square\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-tumblr-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-tumblr-square\";s:3:\"hex\";s:5:\"\\f174\";s:7:\"unicode\";s:8:\"&#xf174;\";}s:9:\"fa-tumblr\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-tumblr\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-tumblr\";s:3:\"hex\";s:5:\"\\f173\";s:7:\"unicode\";s:8:\"&#xf173;\";}s:19:\"fa-bitbucket-square\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-bitbucket-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-bitbucket-square\";s:3:\"hex\";s:5:\"\\f172\";s:7:\"unicode\";s:8:\"&#xf172;\";}s:12:\"fa-bitbucket\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-bitbucket\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-bitbucket\";s:3:\"hex\";s:5:\"\\f171\";s:7:\"unicode\";s:8:\"&#xf171;\";}s:6:\"fa-adn\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-adn\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-adn\";s:3:\"hex\";s:5:\"\\f170\";s:7:\"unicode\";s:8:\"&#xf170;\";}s:9:\"fa-flickr\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-flickr\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-flickr\";s:3:\"hex\";s:5:\"\\f16e\";s:7:\"unicode\";s:8:\"&#xf16e;\";}s:12:\"fa-instagram\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-instagram\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-instagram\";s:3:\"hex\";s:5:\"\\f16d\";s:7:\"unicode\";s:8:\"&#xf16d;\";}s:17:\"fa-stack-overflow\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-stack-overflow\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-stack-overflow\";s:3:\"hex\";s:5:\"\\f16c\";s:7:\"unicode\";s:8:\"&#xf16c;\";}s:10:\"fa-dropbox\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-dropbox\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-dropbox\";s:3:\"hex\";s:5:\"\\f16b\";s:7:\"unicode\";s:8:\"&#xf16b;\";}s:15:\"fa-youtube-play\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-youtube-play\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-youtube-play\";s:3:\"hex\";s:5:\"\\f16a\";s:7:\"unicode\";s:8:\"&#xf16a;\";}s:14:\"fa-xing-square\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-xing-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-xing-square\";s:3:\"hex\";s:5:\"\\f169\";s:7:\"unicode\";s:8:\"&#xf169;\";}s:7:\"fa-xing\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-xing\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-xing\";s:3:\"hex\";s:5:\"\\f168\";s:7:\"unicode\";s:8:\"&#xf168;\";}s:10:\"fa-youtube\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-youtube\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-youtube\";s:3:\"hex\";s:5:\"\\f167\";s:7:\"unicode\";s:8:\"&#xf167;\";}s:17:\"fa-youtube-square\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-youtube-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-youtube-square\";s:3:\"hex\";s:5:\"\\f166\";s:7:\"unicode\";s:8:\"&#xf166;\";}s:14:\"fa-thumbs-down\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-thumbs-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-thumbs-down\";s:3:\"hex\";s:5:\"\\f165\";s:7:\"unicode\";s:8:\"&#xf165;\";}s:12:\"fa-thumbs-up\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-thumbs-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-thumbs-up\";s:3:\"hex\";s:5:\"\\f164\";s:7:\"unicode\";s:8:\"&#xf164;\";}s:20:\"fa-sort-numeric-desc\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-sort-numeric-desc\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-sort-numeric-desc\";s:3:\"hex\";s:5:\"\\f163\";s:7:\"unicode\";s:8:\"&#xf163;\";}s:19:\"fa-sort-numeric-asc\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-sort-numeric-asc\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-sort-numeric-asc\";s:3:\"hex\";s:5:\"\\f162\";s:7:\"unicode\";s:8:\"&#xf162;\";}s:19:\"fa-sort-amount-desc\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-sort-amount-desc\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-sort-amount-desc\";s:3:\"hex\";s:5:\"\\f161\";s:7:\"unicode\";s:8:\"&#xf161;\";}s:18:\"fa-sort-amount-asc\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-sort-amount-asc\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-sort-amount-asc\";s:3:\"hex\";s:5:\"\\f160\";s:7:\"unicode\";s:8:\"&#xf160;\";}s:18:\"fa-sort-alpha-desc\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-sort-alpha-desc\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-sort-alpha-desc\";s:3:\"hex\";s:5:\"\\f15e\";s:7:\"unicode\";s:8:\"&#xf15e;\";}s:17:\"fa-sort-alpha-asc\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-sort-alpha-asc\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-sort-alpha-asc\";s:3:\"hex\";s:5:\"\\f15d\";s:7:\"unicode\";s:8:\"&#xf15d;\";}s:12:\"fa-file-text\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-file-text\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-file-text\";s:3:\"hex\";s:5:\"\\f15c\";s:7:\"unicode\";s:8:\"&#xf15c;\";}s:7:\"fa-file\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-file\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-file\";s:3:\"hex\";s:5:\"\\f15b\";s:7:\"unicode\";s:8:\"&#xf15b;\";}s:6:\"fa-btc\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-btc\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-btc\";s:3:\"hex\";s:5:\"\\f15a\";s:7:\"unicode\";s:8:\"&#xf15a;\";}s:6:\"fa-krw\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-krw\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-krw\";s:3:\"hex\";s:5:\"\\f159\";s:7:\"unicode\";s:8:\"&#xf159;\";}s:6:\"fa-rub\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-rub\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-rub\";s:3:\"hex\";s:5:\"\\f158\";s:7:\"unicode\";s:8:\"&#xf158;\";}s:6:\"fa-jpy\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-jpy\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-jpy\";s:3:\"hex\";s:5:\"\\f157\";s:7:\"unicode\";s:8:\"&#xf157;\";}s:6:\"fa-inr\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-inr\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-inr\";s:3:\"hex\";s:5:\"\\f156\";s:7:\"unicode\";s:8:\"&#xf156;\";}s:6:\"fa-usd\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-usd\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-usd\";s:3:\"hex\";s:5:\"\\f155\";s:7:\"unicode\";s:8:\"&#xf155;\";}s:6:\"fa-gbp\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-gbp\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-gbp\";s:3:\"hex\";s:5:\"\\f154\";s:7:\"unicode\";s:8:\"&#xf154;\";}s:6:\"fa-eur\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-eur\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-eur\";s:3:\"hex\";s:5:\"\\f153\";s:7:\"unicode\";s:8:\"&#xf153;\";}s:23:\"fa-caret-square-o-right\";a:4:{s:7:\"element\";s:61:\"<i class=\"fa fa-caret-square-o-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:23:\"fa-caret-square-o-right\";s:3:\"hex\";s:5:\"\\f152\";s:7:\"unicode\";s:8:\"&#xf152;\";}s:20:\"fa-caret-square-o-up\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-caret-square-o-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-caret-square-o-up\";s:3:\"hex\";s:5:\"\\f151\";s:7:\"unicode\";s:8:\"&#xf151;\";}s:22:\"fa-caret-square-o-down\";a:4:{s:7:\"element\";s:60:\"<i class=\"fa fa-caret-square-o-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:22:\"fa-caret-square-o-down\";s:3:\"hex\";s:5:\"\\f150\";s:7:\"unicode\";s:8:\"&#xf150;\";}s:10:\"fa-compass\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-compass\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-compass\";s:3:\"hex\";s:5:\"\\f14e\";s:7:\"unicode\";s:8:\"&#xf14e;\";}s:15:\"fa-share-square\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-share-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-share-square\";s:3:\"hex\";s:5:\"\\f14d\";s:7:\"unicode\";s:8:\"&#xf14d;\";}s:23:\"fa-external-link-square\";a:4:{s:7:\"element\";s:61:\"<i class=\"fa fa-external-link-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:23:\"fa-external-link-square\";s:3:\"hex\";s:5:\"\\f14c\";s:7:\"unicode\";s:8:\"&#xf14c;\";}s:16:\"fa-pencil-square\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-pencil-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-pencil-square\";s:3:\"hex\";s:5:\"\\f14b\";s:7:\"unicode\";s:8:\"&#xf14b;\";}s:15:\"fa-check-square\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-check-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-check-square\";s:3:\"hex\";s:5:\"\\f14a\";s:7:\"unicode\";s:8:\"&#xf14a;\";}s:13:\"fa-level-down\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-level-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-level-down\";s:3:\"hex\";s:5:\"\\f149\";s:7:\"unicode\";s:8:\"&#xf149;\";}s:11:\"fa-level-up\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-level-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-level-up\";s:3:\"hex\";s:5:\"\\f148\";s:7:\"unicode\";s:8:\"&#xf148;\";}s:17:\"fa-minus-square-o\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-minus-square-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-minus-square-o\";s:3:\"hex\";s:5:\"\\f147\";s:7:\"unicode\";s:8:\"&#xf147;\";}s:15:\"fa-minus-square\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-minus-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-minus-square\";s:3:\"hex\";s:5:\"\\f146\";s:7:\"unicode\";s:8:\"&#xf146;\";}s:9:\"fa-ticket\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-ticket\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-ticket\";s:3:\"hex\";s:5:\"\\f145\";s:7:\"unicode\";s:8:\"&#xf145;\";}s:14:\"fa-play-circle\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-play-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-play-circle\";s:3:\"hex\";s:5:\"\\f144\";s:7:\"unicode\";s:8:\"&#xf144;\";}s:13:\"fa-rss-square\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-rss-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-rss-square\";s:3:\"hex\";s:5:\"\\f143\";s:7:\"unicode\";s:8:\"&#xf143;\";}s:13:\"fa-ellipsis-v\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-ellipsis-v\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-ellipsis-v\";s:3:\"hex\";s:5:\"\\f142\";s:7:\"unicode\";s:8:\"&#xf142;\";}s:13:\"fa-ellipsis-h\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-ellipsis-h\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-ellipsis-h\";s:3:\"hex\";s:5:\"\\f141\";s:7:\"unicode\";s:8:\"&#xf141;\";}s:11:\"fa-bullseye\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-bullseye\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-bullseye\";s:3:\"hex\";s:5:\"\\f140\";s:7:\"unicode\";s:8:\"&#xf140;\";}s:13:\"fa-unlock-alt\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-unlock-alt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-unlock-alt\";s:3:\"hex\";s:5:\"\\f13e\";s:7:\"unicode\";s:8:\"&#xf13e;\";}s:9:\"fa-anchor\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-anchor\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-anchor\";s:3:\"hex\";s:5:\"\\f13d\";s:7:\"unicode\";s:8:\"&#xf13d;\";}s:7:\"fa-css3\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-css3\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-css3\";s:3:\"hex\";s:5:\"\\f13c\";s:7:\"unicode\";s:8:\"&#xf13c;\";}s:8:\"fa-html5\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-html5\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-html5\";s:3:\"hex\";s:5:\"\\f13b\";s:7:\"unicode\";s:8:\"&#xf13b;\";}s:22:\"fa-chevron-circle-down\";a:4:{s:7:\"element\";s:60:\"<i class=\"fa fa-chevron-circle-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:22:\"fa-chevron-circle-down\";s:3:\"hex\";s:5:\"\\f13a\";s:7:\"unicode\";s:8:\"&#xf13a;\";}s:20:\"fa-chevron-circle-up\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-chevron-circle-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-chevron-circle-up\";s:3:\"hex\";s:5:\"\\f139\";s:7:\"unicode\";s:8:\"&#xf139;\";}s:23:\"fa-chevron-circle-right\";a:4:{s:7:\"element\";s:61:\"<i class=\"fa fa-chevron-circle-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:23:\"fa-chevron-circle-right\";s:3:\"hex\";s:5:\"\\f138\";s:7:\"unicode\";s:8:\"&#xf138;\";}s:22:\"fa-chevron-circle-left\";a:4:{s:7:\"element\";s:60:\"<i class=\"fa fa-chevron-circle-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:22:\"fa-chevron-circle-left\";s:3:\"hex\";s:5:\"\\f137\";s:7:\"unicode\";s:8:\"&#xf137;\";}s:9:\"fa-maxcdn\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-maxcdn\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-maxcdn\";s:3:\"hex\";s:5:\"\\f136\";s:7:\"unicode\";s:8:\"&#xf136;\";}s:9:\"fa-rocket\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-rocket\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-rocket\";s:3:\"hex\";s:5:\"\\f135\";s:7:\"unicode\";s:8:\"&#xf135;\";}s:20:\"fa-fire-extinguisher\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-fire-extinguisher\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-fire-extinguisher\";s:3:\"hex\";s:5:\"\\f134\";s:7:\"unicode\";s:8:\"&#xf134;\";}s:13:\"fa-calendar-o\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-calendar-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-calendar-o\";s:3:\"hex\";s:5:\"\\f133\";s:7:\"unicode\";s:8:\"&#xf133;\";}s:9:\"fa-shield\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-shield\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-shield\";s:3:\"hex\";s:5:\"\\f132\";s:7:\"unicode\";s:8:\"&#xf132;\";}s:19:\"fa-microphone-slash\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-microphone-slash\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-microphone-slash\";s:3:\"hex\";s:5:\"\\f131\";s:7:\"unicode\";s:8:\"&#xf131;\";}s:13:\"fa-microphone\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-microphone\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-microphone\";s:3:\"hex\";s:5:\"\\f130\";s:7:\"unicode\";s:8:\"&#xf130;\";}s:15:\"fa-puzzle-piece\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-puzzle-piece\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-puzzle-piece\";s:3:\"hex\";s:5:\"\\f12e\";s:7:\"unicode\";s:8:\"&#xf12e;\";}s:9:\"fa-eraser\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-eraser\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-eraser\";s:3:\"hex\";s:5:\"\\f12d\";s:7:\"unicode\";s:8:\"&#xf12d;\";}s:12:\"fa-subscript\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-subscript\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-subscript\";s:3:\"hex\";s:5:\"\\f12c\";s:7:\"unicode\";s:8:\"&#xf12c;\";}s:14:\"fa-superscript\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-superscript\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-superscript\";s:3:\"hex\";s:5:\"\\f12b\";s:7:\"unicode\";s:8:\"&#xf12b;\";}s:14:\"fa-exclamation\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-exclamation\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-exclamation\";s:3:\"hex\";s:5:\"\\f12a\";s:7:\"unicode\";s:8:\"&#xf12a;\";}s:7:\"fa-info\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-info\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-info\";s:3:\"hex\";s:5:\"\\f129\";s:7:\"unicode\";s:8:\"&#xf129;\";}s:11:\"fa-question\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-question\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-question\";s:3:\"hex\";s:5:\"\\f128\";s:7:\"unicode\";s:8:\"&#xf128;\";}s:15:\"fa-chain-broken\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-chain-broken\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-chain-broken\";s:3:\"hex\";s:5:\"\\f127\";s:7:\"unicode\";s:8:\"&#xf127;\";}s:12:\"fa-code-fork\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-code-fork\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-code-fork\";s:3:\"hex\";s:5:\"\\f126\";s:7:\"unicode\";s:8:\"&#xf126;\";}s:7:\"fa-crop\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-crop\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-crop\";s:3:\"hex\";s:5:\"\\f125\";s:7:\"unicode\";s:8:\"&#xf125;\";}s:17:\"fa-location-arrow\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-location-arrow\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-location-arrow\";s:3:\"hex\";s:5:\"\\f124\";s:7:\"unicode\";s:8:\"&#xf124;\";}s:14:\"fa-star-half-o\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-star-half-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-star-half-o\";s:3:\"hex\";s:5:\"\\f123\";s:7:\"unicode\";s:8:\"&#xf123;\";}s:12:\"fa-reply-all\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-reply-all\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-reply-all\";s:3:\"hex\";s:5:\"\\f122\";s:7:\"unicode\";s:8:\"&#xf122;\";}s:7:\"fa-code\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-code\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-code\";s:3:\"hex\";s:5:\"\\f121\";s:7:\"unicode\";s:8:\"&#xf121;\";}s:11:\"fa-terminal\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-terminal\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-terminal\";s:3:\"hex\";s:5:\"\\f120\";s:7:\"unicode\";s:8:\"&#xf120;\";}s:17:\"fa-flag-checkered\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-flag-checkered\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-flag-checkered\";s:3:\"hex\";s:5:\"\\f11e\";s:7:\"unicode\";s:8:\"&#xf11e;\";}s:9:\"fa-flag-o\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-flag-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-flag-o\";s:3:\"hex\";s:5:\"\\f11d\";s:7:\"unicode\";s:8:\"&#xf11d;\";}s:13:\"fa-keyboard-o\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-keyboard-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-keyboard-o\";s:3:\"hex\";s:5:\"\\f11c\";s:7:\"unicode\";s:8:\"&#xf11c;\";}s:10:\"fa-gamepad\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-gamepad\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-gamepad\";s:3:\"hex\";s:5:\"\\f11b\";s:7:\"unicode\";s:8:\"&#xf11b;\";}s:8:\"fa-meh-o\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-meh-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-meh-o\";s:3:\"hex\";s:5:\"\\f11a\";s:7:\"unicode\";s:8:\"&#xf11a;\";}s:10:\"fa-frown-o\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-frown-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-frown-o\";s:3:\"hex\";s:5:\"\\f119\";s:7:\"unicode\";s:8:\"&#xf119;\";}s:10:\"fa-smile-o\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-smile-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-smile-o\";s:3:\"hex\";s:5:\"\\f118\";s:7:\"unicode\";s:8:\"&#xf118;\";}s:16:\"fa-folder-open-o\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-folder-open-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-folder-open-o\";s:3:\"hex\";s:5:\"\\f115\";s:7:\"unicode\";s:8:\"&#xf115;\";}s:11:\"fa-folder-o\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-folder-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-folder-o\";s:3:\"hex\";s:5:\"\\f114\";s:7:\"unicode\";s:8:\"&#xf114;\";}s:13:\"fa-github-alt\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-github-alt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-github-alt\";s:3:\"hex\";s:5:\"\\f113\";s:7:\"unicode\";s:8:\"&#xf113;\";}s:8:\"fa-reply\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-reply\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-reply\";s:3:\"hex\";s:5:\"\\f112\";s:7:\"unicode\";s:8:\"&#xf112;\";}s:9:\"fa-circle\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-circle\";s:3:\"hex\";s:5:\"\\f111\";s:7:\"unicode\";s:8:\"&#xf111;\";}s:10:\"fa-spinner\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-spinner\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-spinner\";s:3:\"hex\";s:5:\"\\f110\";s:7:\"unicode\";s:8:\"&#xf110;\";}s:14:\"fa-quote-right\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-quote-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-quote-right\";s:3:\"hex\";s:5:\"\\f10e\";s:7:\"unicode\";s:8:\"&#xf10e;\";}s:13:\"fa-quote-left\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-quote-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-quote-left\";s:3:\"hex\";s:5:\"\\f10d\";s:7:\"unicode\";s:8:\"&#xf10d;\";}s:11:\"fa-circle-o\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-circle-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-circle-o\";s:3:\"hex\";s:5:\"\\f10c\";s:7:\"unicode\";s:8:\"&#xf10c;\";}s:9:\"fa-mobile\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-mobile\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-mobile\";s:3:\"hex\";s:5:\"\\f10b\";s:7:\"unicode\";s:8:\"&#xf10b;\";}s:9:\"fa-tablet\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-tablet\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-tablet\";s:3:\"hex\";s:5:\"\\f10a\";s:7:\"unicode\";s:8:\"&#xf10a;\";}s:9:\"fa-laptop\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-laptop\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-laptop\";s:3:\"hex\";s:5:\"\\f109\";s:7:\"unicode\";s:8:\"&#xf109;\";}s:10:\"fa-desktop\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-desktop\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-desktop\";s:3:\"hex\";s:5:\"\\f108\";s:7:\"unicode\";s:8:\"&#xf108;\";}s:13:\"fa-angle-down\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-angle-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-angle-down\";s:3:\"hex\";s:5:\"\\f107\";s:7:\"unicode\";s:8:\"&#xf107;\";}s:11:\"fa-angle-up\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-angle-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-angle-up\";s:3:\"hex\";s:5:\"\\f106\";s:7:\"unicode\";s:8:\"&#xf106;\";}s:14:\"fa-angle-right\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-angle-right\";s:3:\"hex\";s:5:\"\\f105\";s:7:\"unicode\";s:8:\"&#xf105;\";}s:13:\"fa-angle-left\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-angle-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-angle-left\";s:3:\"hex\";s:5:\"\\f104\";s:7:\"unicode\";s:8:\"&#xf104;\";}s:20:\"fa-angle-double-down\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-angle-double-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-angle-double-down\";s:3:\"hex\";s:5:\"\\f103\";s:7:\"unicode\";s:8:\"&#xf103;\";}s:18:\"fa-angle-double-up\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-angle-double-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-angle-double-up\";s:3:\"hex\";s:5:\"\\f102\";s:7:\"unicode\";s:8:\"&#xf102;\";}s:21:\"fa-angle-double-right\";a:4:{s:7:\"element\";s:59:\"<i class=\"fa fa-angle-double-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:21:\"fa-angle-double-right\";s:3:\"hex\";s:5:\"\\f101\";s:7:\"unicode\";s:8:\"&#xf101;\";}s:20:\"fa-angle-double-left\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-angle-double-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-angle-double-left\";s:3:\"hex\";s:5:\"\\f100\";s:7:\"unicode\";s:8:\"&#xf100;\";}s:14:\"fa-plus-square\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-plus-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-plus-square\";s:3:\"hex\";s:5:\"\\f0fe\";s:7:\"unicode\";s:8:\"&#xf0fe;\";}s:11:\"fa-h-square\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-h-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-h-square\";s:3:\"hex\";s:5:\"\\f0fd\";s:7:\"unicode\";s:8:\"&#xf0fd;\";}s:7:\"fa-beer\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-beer\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-beer\";s:3:\"hex\";s:5:\"\\f0fc\";s:7:\"unicode\";s:8:\"&#xf0fc;\";}s:14:\"fa-fighter-jet\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-fighter-jet\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-fighter-jet\";s:3:\"hex\";s:5:\"\\f0fb\";s:7:\"unicode\";s:8:\"&#xf0fb;\";}s:9:\"fa-medkit\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-medkit\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-medkit\";s:3:\"hex\";s:5:\"\\f0fa\";s:7:\"unicode\";s:8:\"&#xf0fa;\";}s:12:\"fa-ambulance\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-ambulance\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-ambulance\";s:3:\"hex\";s:5:\"\\f0f9\";s:7:\"unicode\";s:8:\"&#xf0f9;\";}s:13:\"fa-hospital-o\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-hospital-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-hospital-o\";s:3:\"hex\";s:5:\"\\f0f8\";s:7:\"unicode\";s:8:\"&#xf0f8;\";}s:13:\"fa-building-o\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-building-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-building-o\";s:3:\"hex\";s:5:\"\\f0f7\";s:7:\"unicode\";s:8:\"&#xf0f7;\";}s:14:\"fa-file-text-o\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-file-text-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-file-text-o\";s:3:\"hex\";s:5:\"\\f0f6\";s:7:\"unicode\";s:8:\"&#xf0f6;\";}s:10:\"fa-cutlery\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-cutlery\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-cutlery\";s:3:\"hex\";s:5:\"\\f0f5\";s:7:\"unicode\";s:8:\"&#xf0f5;\";}s:9:\"fa-coffee\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-coffee\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-coffee\";s:3:\"hex\";s:5:\"\\f0f4\";s:7:\"unicode\";s:8:\"&#xf0f4;\";}s:9:\"fa-bell-o\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-bell-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-bell-o\";s:3:\"hex\";s:5:\"\\f0a2\";s:7:\"unicode\";s:8:\"&#xf0a2;\";}s:11:\"fa-suitcase\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-suitcase\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-suitcase\";s:3:\"hex\";s:5:\"\\f0f2\";s:7:\"unicode\";s:8:\"&#xf0f2;\";}s:14:\"fa-stethoscope\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-stethoscope\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-stethoscope\";s:3:\"hex\";s:5:\"\\f0f1\";s:7:\"unicode\";s:8:\"&#xf0f1;\";}s:10:\"fa-user-md\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-user-md\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-user-md\";s:3:\"hex\";s:5:\"\\f0f0\";s:7:\"unicode\";s:8:\"&#xf0f0;\";}s:15:\"fa-cloud-upload\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-cloud-upload\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-cloud-upload\";s:3:\"hex\";s:5:\"\\f0ee\";s:7:\"unicode\";s:8:\"&#xf0ee;\";}s:17:\"fa-cloud-download\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-cloud-download\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-cloud-download\";s:3:\"hex\";s:5:\"\\f0ed\";s:7:\"unicode\";s:8:\"&#xf0ed;\";}s:11:\"fa-exchange\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-exchange\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-exchange\";s:3:\"hex\";s:5:\"\\f0ec\";s:7:\"unicode\";s:8:\"&#xf0ec;\";}s:14:\"fa-lightbulb-o\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-lightbulb-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-lightbulb-o\";s:3:\"hex\";s:5:\"\\f0eb\";s:7:\"unicode\";s:8:\"&#xf0eb;\";}s:12:\"fa-clipboard\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-clipboard\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-clipboard\";s:3:\"hex\";s:5:\"\\f0ea\";s:7:\"unicode\";s:8:\"&#xf0ea;\";}s:11:\"fa-umbrella\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-umbrella\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-umbrella\";s:3:\"hex\";s:5:\"\\f0e9\";s:7:\"unicode\";s:8:\"&#xf0e9;\";}s:10:\"fa-sitemap\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-sitemap\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-sitemap\";s:3:\"hex\";s:5:\"\\f0e8\";s:7:\"unicode\";s:8:\"&#xf0e8;\";}s:7:\"fa-bolt\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-bolt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-bolt\";s:3:\"hex\";s:5:\"\\f0e7\";s:7:\"unicode\";s:8:\"&#xf0e7;\";}s:13:\"fa-comments-o\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-comments-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-comments-o\";s:3:\"hex\";s:5:\"\\f0e6\";s:7:\"unicode\";s:8:\"&#xf0e6;\";}s:12:\"fa-comment-o\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-comment-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-comment-o\";s:3:\"hex\";s:5:\"\\f0e5\";s:7:\"unicode\";s:8:\"&#xf0e5;\";}s:13:\"fa-tachometer\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-tachometer\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-tachometer\";s:3:\"hex\";s:5:\"\\f0e4\";s:7:\"unicode\";s:8:\"&#xf0e4;\";}s:8:\"fa-gavel\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-gavel\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-gavel\";s:3:\"hex\";s:5:\"\\f0e3\";s:7:\"unicode\";s:8:\"&#xf0e3;\";}s:7:\"fa-undo\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-undo\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-undo\";s:3:\"hex\";s:5:\"\\f0e2\";s:7:\"unicode\";s:8:\"&#xf0e2;\";}s:11:\"fa-linkedin\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-linkedin\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-linkedin\";s:3:\"hex\";s:5:\"\\f0e1\";s:7:\"unicode\";s:8:\"&#xf0e1;\";}s:11:\"fa-envelope\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-envelope\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-envelope\";s:3:\"hex\";s:5:\"\\f0e0\";s:7:\"unicode\";s:8:\"&#xf0e0;\";}s:11:\"fa-sort-asc\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-sort-asc\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-sort-asc\";s:3:\"hex\";s:5:\"\\f0de\";s:7:\"unicode\";s:8:\"&#xf0de;\";}s:12:\"fa-sort-desc\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-sort-desc\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-sort-desc\";s:3:\"hex\";s:5:\"\\f0dd\";s:7:\"unicode\";s:8:\"&#xf0dd;\";}s:7:\"fa-sort\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-sort\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-sort\";s:3:\"hex\";s:5:\"\\f0dc\";s:7:\"unicode\";s:8:\"&#xf0dc;\";}s:10:\"fa-columns\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-columns\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-columns\";s:3:\"hex\";s:5:\"\\f0db\";s:7:\"unicode\";s:8:\"&#xf0db;\";}s:14:\"fa-caret-right\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-caret-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-caret-right\";s:3:\"hex\";s:5:\"\\f0da\";s:7:\"unicode\";s:8:\"&#xf0da;\";}s:13:\"fa-caret-left\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-caret-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-caret-left\";s:3:\"hex\";s:5:\"\\f0d9\";s:7:\"unicode\";s:8:\"&#xf0d9;\";}s:11:\"fa-caret-up\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-caret-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-caret-up\";s:3:\"hex\";s:5:\"\\f0d8\";s:7:\"unicode\";s:8:\"&#xf0d8;\";}s:13:\"fa-caret-down\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-caret-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-caret-down\";s:3:\"hex\";s:5:\"\\f0d7\";s:7:\"unicode\";s:8:\"&#xf0d7;\";}s:8:\"fa-money\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-money\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-money\";s:3:\"hex\";s:5:\"\\f0d6\";s:7:\"unicode\";s:8:\"&#xf0d6;\";}s:14:\"fa-google-plus\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-google-plus\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-google-plus\";s:3:\"hex\";s:5:\"\\f0d5\";s:7:\"unicode\";s:8:\"&#xf0d5;\";}s:21:\"fa-google-plus-square\";a:4:{s:7:\"element\";s:59:\"<i class=\"fa fa-google-plus-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:21:\"fa-google-plus-square\";s:3:\"hex\";s:5:\"\\f0d4\";s:7:\"unicode\";s:8:\"&#xf0d4;\";}s:19:\"fa-pinterest-square\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-pinterest-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-pinterest-square\";s:3:\"hex\";s:5:\"\\f0d3\";s:7:\"unicode\";s:8:\"&#xf0d3;\";}s:12:\"fa-pinterest\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-pinterest\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-pinterest\";s:3:\"hex\";s:5:\"\\f0d2\";s:7:\"unicode\";s:8:\"&#xf0d2;\";}s:8:\"fa-truck\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-truck\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-truck\";s:3:\"hex\";s:5:\"\\f0d1\";s:7:\"unicode\";s:8:\"&#xf0d1;\";}s:8:\"fa-magic\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-magic\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-magic\";s:3:\"hex\";s:5:\"\\f0d0\";s:7:\"unicode\";s:8:\"&#xf0d0;\";}s:8:\"fa-table\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-table\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-table\";s:3:\"hex\";s:5:\"\\f0ce\";s:7:\"unicode\";s:8:\"&#xf0ce;\";}s:12:\"fa-underline\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-underline\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-underline\";s:3:\"hex\";s:5:\"\\f0cd\";s:7:\"unicode\";s:8:\"&#xf0cd;\";}s:16:\"fa-strikethrough\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-strikethrough\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-strikethrough\";s:3:\"hex\";s:5:\"\\f0cc\";s:7:\"unicode\";s:8:\"&#xf0cc;\";}s:10:\"fa-list-ol\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-list-ol\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-list-ol\";s:3:\"hex\";s:5:\"\\f0cb\";s:7:\"unicode\";s:8:\"&#xf0cb;\";}s:10:\"fa-list-ul\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-list-ul\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-list-ul\";s:3:\"hex\";s:5:\"\\f0ca\";s:7:\"unicode\";s:8:\"&#xf0ca;\";}s:7:\"fa-bars\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-bars\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-bars\";s:3:\"hex\";s:5:\"\\f0c9\";s:7:\"unicode\";s:8:\"&#xf0c9;\";}s:9:\"fa-square\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-square\";s:3:\"hex\";s:5:\"\\f0c8\";s:7:\"unicode\";s:8:\"&#xf0c8;\";}s:11:\"fa-floppy-o\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-floppy-o\";s:3:\"hex\";s:5:\"\\f0c7\";s:7:\"unicode\";s:8:\"&#xf0c7;\";}s:12:\"fa-paperclip\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-paperclip\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-paperclip\";s:3:\"hex\";s:5:\"\\f0c6\";s:7:\"unicode\";s:8:\"&#xf0c6;\";}s:10:\"fa-files-o\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-files-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-files-o\";s:3:\"hex\";s:5:\"\\f0c5\";s:7:\"unicode\";s:8:\"&#xf0c5;\";}s:11:\"fa-scissors\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-scissors\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-scissors\";s:3:\"hex\";s:5:\"\\f0c4\";s:7:\"unicode\";s:8:\"&#xf0c4;\";}s:8:\"fa-flask\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-flask\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-flask\";s:3:\"hex\";s:5:\"\\f0c3\";s:7:\"unicode\";s:8:\"&#xf0c3;\";}s:8:\"fa-cloud\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-cloud\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-cloud\";s:3:\"hex\";s:5:\"\\f0c2\";s:7:\"unicode\";s:8:\"&#xf0c2;\";}s:7:\"fa-link\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-link\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-link\";s:3:\"hex\";s:5:\"\\f0c1\";s:7:\"unicode\";s:8:\"&#xf0c1;\";}s:8:\"fa-users\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-users\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-users\";s:3:\"hex\";s:5:\"\\f0c0\";s:7:\"unicode\";s:8:\"&#xf0c0;\";}s:13:\"fa-arrows-alt\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-arrows-alt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-arrows-alt\";s:3:\"hex\";s:5:\"\\f0b2\";s:7:\"unicode\";s:8:\"&#xf0b2;\";}s:12:\"fa-briefcase\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-briefcase\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-briefcase\";s:3:\"hex\";s:5:\"\\f0b1\";s:7:\"unicode\";s:8:\"&#xf0b1;\";}s:9:\"fa-filter\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-filter\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-filter\";s:3:\"hex\";s:5:\"\\f0b0\";s:7:\"unicode\";s:8:\"&#xf0b0;\";}s:8:\"fa-tasks\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-tasks\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-tasks\";s:3:\"hex\";s:5:\"\\f0ae\";s:7:\"unicode\";s:8:\"&#xf0ae;\";}s:9:\"fa-wrench\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-wrench\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-wrench\";s:3:\"hex\";s:5:\"\\f0ad\";s:7:\"unicode\";s:8:\"&#xf0ad;\";}s:8:\"fa-globe\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-globe\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-globe\";s:3:\"hex\";s:5:\"\\f0ac\";s:7:\"unicode\";s:8:\"&#xf0ac;\";}s:20:\"fa-arrow-circle-down\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-arrow-circle-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-arrow-circle-down\";s:3:\"hex\";s:5:\"\\f0ab\";s:7:\"unicode\";s:8:\"&#xf0ab;\";}s:18:\"fa-arrow-circle-up\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-arrow-circle-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-arrow-circle-up\";s:3:\"hex\";s:5:\"\\f0aa\";s:7:\"unicode\";s:8:\"&#xf0aa;\";}s:21:\"fa-arrow-circle-right\";a:4:{s:7:\"element\";s:59:\"<i class=\"fa fa-arrow-circle-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:21:\"fa-arrow-circle-right\";s:3:\"hex\";s:5:\"\\f0a9\";s:7:\"unicode\";s:8:\"&#xf0a9;\";}s:20:\"fa-arrow-circle-left\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-arrow-circle-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-arrow-circle-left\";s:3:\"hex\";s:5:\"\\f0a8\";s:7:\"unicode\";s:8:\"&#xf0a8;\";}s:14:\"fa-hand-o-down\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-hand-o-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-hand-o-down\";s:3:\"hex\";s:5:\"\\f0a7\";s:7:\"unicode\";s:8:\"&#xf0a7;\";}s:12:\"fa-hand-o-up\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-hand-o-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-hand-o-up\";s:3:\"hex\";s:5:\"\\f0a6\";s:7:\"unicode\";s:8:\"&#xf0a6;\";}s:14:\"fa-hand-o-left\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-hand-o-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-hand-o-left\";s:3:\"hex\";s:5:\"\\f0a5\";s:7:\"unicode\";s:8:\"&#xf0a5;\";}s:15:\"fa-hand-o-right\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-hand-o-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-hand-o-right\";s:3:\"hex\";s:5:\"\\f0a4\";s:7:\"unicode\";s:8:\"&#xf0a4;\";}s:14:\"fa-certificate\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-certificate\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-certificate\";s:3:\"hex\";s:5:\"\\f0a3\";s:7:\"unicode\";s:8:\"&#xf0a3;\";}s:7:\"fa-bell\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-bell\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-bell\";s:3:\"hex\";s:5:\"\\f0f3\";s:7:\"unicode\";s:8:\"&#xf0f3;\";}s:11:\"fa-bullhorn\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-bullhorn\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-bullhorn\";s:3:\"hex\";s:5:\"\\f0a1\";s:7:\"unicode\";s:8:\"&#xf0a1;\";}s:8:\"fa-hdd-o\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-hdd-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-hdd-o\";s:3:\"hex\";s:5:\"\\f0a0\";s:7:\"unicode\";s:8:\"&#xf0a0;\";}s:6:\"fa-rss\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-rss\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-rss\";s:3:\"hex\";s:5:\"\\f09e\";s:7:\"unicode\";s:8:\"&#xf09e;\";}s:14:\"fa-credit-card\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-credit-card\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-credit-card\";s:3:\"hex\";s:5:\"\\f09d\";s:7:\"unicode\";s:8:\"&#xf09d;\";}s:9:\"fa-unlock\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-unlock\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-unlock\";s:3:\"hex\";s:5:\"\\f09c\";s:7:\"unicode\";s:8:\"&#xf09c;\";}s:9:\"fa-github\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-github\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-github\";s:3:\"hex\";s:5:\"\\f09b\";s:7:\"unicode\";s:8:\"&#xf09b;\";}s:11:\"fa-facebook\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-facebook\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-facebook\";s:3:\"hex\";s:5:\"\\f09a\";s:7:\"unicode\";s:8:\"&#xf09a;\";}s:10:\"fa-twitter\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-twitter\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-twitter\";s:3:\"hex\";s:5:\"\\f099\";s:7:\"unicode\";s:8:\"&#xf099;\";}s:15:\"fa-phone-square\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-phone-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-phone-square\";s:3:\"hex\";s:5:\"\\f098\";s:7:\"unicode\";s:8:\"&#xf098;\";}s:13:\"fa-bookmark-o\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-bookmark-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-bookmark-o\";s:3:\"hex\";s:5:\"\\f097\";s:7:\"unicode\";s:8:\"&#xf097;\";}s:11:\"fa-square-o\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-square-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-square-o\";s:3:\"hex\";s:5:\"\\f096\";s:7:\"unicode\";s:8:\"&#xf096;\";}s:8:\"fa-phone\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-phone\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-phone\";s:3:\"hex\";s:5:\"\\f095\";s:7:\"unicode\";s:8:\"&#xf095;\";}s:10:\"fa-lemon-o\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-lemon-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-lemon-o\";s:3:\"hex\";s:5:\"\\f094\";s:7:\"unicode\";s:8:\"&#xf094;\";}s:9:\"fa-upload\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-upload\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-upload\";s:3:\"hex\";s:5:\"\\f093\";s:7:\"unicode\";s:8:\"&#xf093;\";}s:16:\"fa-github-square\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-github-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-github-square\";s:3:\"hex\";s:5:\"\\f092\";s:7:\"unicode\";s:8:\"&#xf092;\";}s:9:\"fa-trophy\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-trophy\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-trophy\";s:3:\"hex\";s:5:\"\\f091\";s:7:\"unicode\";s:8:\"&#xf091;\";}s:10:\"fa-sign-in\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-sign-in\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-sign-in\";s:3:\"hex\";s:5:\"\\f090\";s:7:\"unicode\";s:8:\"&#xf090;\";}s:16:\"fa-external-link\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-external-link\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-external-link\";s:3:\"hex\";s:5:\"\\f08e\";s:7:\"unicode\";s:8:\"&#xf08e;\";}s:13:\"fa-thumb-tack\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-thumb-tack\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-thumb-tack\";s:3:\"hex\";s:5:\"\\f08d\";s:7:\"unicode\";s:8:\"&#xf08d;\";}s:18:\"fa-linkedin-square\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-linkedin-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-linkedin-square\";s:3:\"hex\";s:5:\"\\f08c\";s:7:\"unicode\";s:8:\"&#xf08c;\";}s:11:\"fa-sign-out\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-sign-out\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-sign-out\";s:3:\"hex\";s:5:\"\\f08b\";s:7:\"unicode\";s:8:\"&#xf08b;\";}s:10:\"fa-heart-o\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-heart-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-heart-o\";s:3:\"hex\";s:5:\"\\f08a\";s:7:\"unicode\";s:8:\"&#xf08a;\";}s:12:\"fa-star-half\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-star-half\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-star-half\";s:3:\"hex\";s:5:\"\\f089\";s:7:\"unicode\";s:8:\"&#xf089;\";}s:16:\"fa-thumbs-o-down\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-thumbs-o-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-thumbs-o-down\";s:3:\"hex\";s:5:\"\\f088\";s:7:\"unicode\";s:8:\"&#xf088;\";}s:14:\"fa-thumbs-o-up\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-thumbs-o-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-thumbs-o-up\";s:3:\"hex\";s:5:\"\\f087\";s:7:\"unicode\";s:8:\"&#xf087;\";}s:11:\"fa-comments\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-comments\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-comments\";s:3:\"hex\";s:5:\"\\f086\";s:7:\"unicode\";s:8:\"&#xf086;\";}s:7:\"fa-cogs\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-cogs\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-cogs\";s:3:\"hex\";s:5:\"\\f085\";s:7:\"unicode\";s:8:\"&#xf085;\";}s:6:\"fa-key\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-key\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-key\";s:3:\"hex\";s:5:\"\\f084\";s:7:\"unicode\";s:8:\"&#xf084;\";}s:15:\"fa-camera-retro\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-camera-retro\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-camera-retro\";s:3:\"hex\";s:5:\"\\f083\";s:7:\"unicode\";s:8:\"&#xf083;\";}s:18:\"fa-facebook-square\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-facebook-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-facebook-square\";s:3:\"hex\";s:5:\"\\f082\";s:7:\"unicode\";s:8:\"&#xf082;\";}s:17:\"fa-twitter-square\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-twitter-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-twitter-square\";s:3:\"hex\";s:5:\"\\f081\";s:7:\"unicode\";s:8:\"&#xf081;\";}s:12:\"fa-bar-chart\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-bar-chart\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-bar-chart\";s:3:\"hex\";s:5:\"\\f080\";s:7:\"unicode\";s:8:\"&#xf080;\";}s:11:\"fa-arrows-h\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-arrows-h\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-arrows-h\";s:3:\"hex\";s:5:\"\\f07e\";s:7:\"unicode\";s:8:\"&#xf07e;\";}s:11:\"fa-arrows-v\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-arrows-v\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-arrows-v\";s:3:\"hex\";s:5:\"\\f07d\";s:7:\"unicode\";s:8:\"&#xf07d;\";}s:14:\"fa-folder-open\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-folder-open\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-folder-open\";s:3:\"hex\";s:5:\"\\f07c\";s:7:\"unicode\";s:8:\"&#xf07c;\";}s:9:\"fa-folder\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-folder\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-folder\";s:3:\"hex\";s:5:\"\\f07b\";s:7:\"unicode\";s:8:\"&#xf07b;\";}s:16:\"fa-shopping-cart\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-shopping-cart\";s:3:\"hex\";s:5:\"\\f07a\";s:7:\"unicode\";s:8:\"&#xf07a;\";}s:10:\"fa-retweet\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-retweet\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-retweet\";s:3:\"hex\";s:5:\"\\f079\";s:7:\"unicode\";s:8:\"&#xf079;\";}s:15:\"fa-chevron-down\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-chevron-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-chevron-down\";s:3:\"hex\";s:5:\"\\f078\";s:7:\"unicode\";s:8:\"&#xf078;\";}s:13:\"fa-chevron-up\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-chevron-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-chevron-up\";s:3:\"hex\";s:5:\"\\f077\";s:7:\"unicode\";s:8:\"&#xf077;\";}s:9:\"fa-magnet\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-magnet\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-magnet\";s:3:\"hex\";s:5:\"\\f076\";s:7:\"unicode\";s:8:\"&#xf076;\";}s:10:\"fa-comment\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-comment\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-comment\";s:3:\"hex\";s:5:\"\\f075\";s:7:\"unicode\";s:8:\"&#xf075;\";}s:9:\"fa-random\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-random\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-random\";s:3:\"hex\";s:5:\"\\f074\";s:7:\"unicode\";s:8:\"&#xf074;\";}s:11:\"fa-calendar\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-calendar\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-calendar\";s:3:\"hex\";s:5:\"\\f073\";s:7:\"unicode\";s:8:\"&#xf073;\";}s:8:\"fa-plane\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-plane\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-plane\";s:3:\"hex\";s:5:\"\\f072\";s:7:\"unicode\";s:8:\"&#xf072;\";}s:23:\"fa-exclamation-triangle\";a:4:{s:7:\"element\";s:61:\"<i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:23:\"fa-exclamation-triangle\";s:3:\"hex\";s:5:\"\\f071\";s:7:\"unicode\";s:8:\"&#xf071;\";}s:12:\"fa-eye-slash\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-eye-slash\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-eye-slash\";s:3:\"hex\";s:5:\"\\f070\";s:7:\"unicode\";s:8:\"&#xf070;\";}s:6:\"fa-eye\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-eye\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-eye\";s:3:\"hex\";s:5:\"\\f06e\";s:7:\"unicode\";s:8:\"&#xf06e;\";}s:7:\"fa-fire\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-fire\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-fire\";s:3:\"hex\";s:5:\"\\f06d\";s:7:\"unicode\";s:8:\"&#xf06d;\";}s:7:\"fa-leaf\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-leaf\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-leaf\";s:3:\"hex\";s:5:\"\\f06c\";s:7:\"unicode\";s:8:\"&#xf06c;\";}s:7:\"fa-gift\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-gift\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-gift\";s:3:\"hex\";s:5:\"\\f06b\";s:7:\"unicode\";s:8:\"&#xf06b;\";}s:21:\"fa-exclamation-circle\";a:4:{s:7:\"element\";s:59:\"<i class=\"fa fa-exclamation-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:21:\"fa-exclamation-circle\";s:3:\"hex\";s:5:\"\\f06a\";s:7:\"unicode\";s:8:\"&#xf06a;\";}s:11:\"fa-asterisk\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-asterisk\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-asterisk\";s:3:\"hex\";s:5:\"\\f069\";s:7:\"unicode\";s:8:\"&#xf069;\";}s:8:\"fa-minus\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-minus\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-minus\";s:3:\"hex\";s:5:\"\\f068\";s:7:\"unicode\";s:8:\"&#xf068;\";}s:7:\"fa-plus\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-plus\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-plus\";s:3:\"hex\";s:5:\"\\f067\";s:7:\"unicode\";s:8:\"&#xf067;\";}s:11:\"fa-compress\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-compress\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-compress\";s:3:\"hex\";s:5:\"\\f066\";s:7:\"unicode\";s:8:\"&#xf066;\";}s:9:\"fa-expand\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-expand\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-expand\";s:3:\"hex\";s:5:\"\\f065\";s:7:\"unicode\";s:8:\"&#xf065;\";}s:8:\"fa-share\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-share\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-share\";s:3:\"hex\";s:5:\"\\f064\";s:7:\"unicode\";s:8:\"&#xf064;\";}s:13:\"fa-arrow-down\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-arrow-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-arrow-down\";s:3:\"hex\";s:5:\"\\f063\";s:7:\"unicode\";s:8:\"&#xf063;\";}s:11:\"fa-arrow-up\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-arrow-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-arrow-up\";s:3:\"hex\";s:5:\"\\f062\";s:7:\"unicode\";s:8:\"&#xf062;\";}s:14:\"fa-arrow-right\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-arrow-right\";s:3:\"hex\";s:5:\"\\f061\";s:7:\"unicode\";s:8:\"&#xf061;\";}s:13:\"fa-arrow-left\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-arrow-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-arrow-left\";s:3:\"hex\";s:5:\"\\f060\";s:7:\"unicode\";s:8:\"&#xf060;\";}s:6:\"fa-ban\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-ban\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-ban\";s:3:\"hex\";s:5:\"\\f05e\";s:7:\"unicode\";s:8:\"&#xf05e;\";}s:17:\"fa-check-circle-o\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-check-circle-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-check-circle-o\";s:3:\"hex\";s:5:\"\\f05d\";s:7:\"unicode\";s:8:\"&#xf05d;\";}s:17:\"fa-times-circle-o\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-times-circle-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-times-circle-o\";s:3:\"hex\";s:5:\"\\f05c\";s:7:\"unicode\";s:8:\"&#xf05c;\";}s:13:\"fa-crosshairs\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-crosshairs\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-crosshairs\";s:3:\"hex\";s:5:\"\\f05b\";s:7:\"unicode\";s:8:\"&#xf05b;\";}s:14:\"fa-info-circle\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-info-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-info-circle\";s:3:\"hex\";s:5:\"\\f05a\";s:7:\"unicode\";s:8:\"&#xf05a;\";}s:18:\"fa-question-circle\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-question-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-question-circle\";s:3:\"hex\";s:5:\"\\f059\";s:7:\"unicode\";s:8:\"&#xf059;\";}s:15:\"fa-check-circle\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-check-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-check-circle\";s:3:\"hex\";s:5:\"\\f058\";s:7:\"unicode\";s:8:\"&#xf058;\";}s:15:\"fa-times-circle\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-times-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-times-circle\";s:3:\"hex\";s:5:\"\\f057\";s:7:\"unicode\";s:8:\"&#xf057;\";}s:15:\"fa-minus-circle\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-minus-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-minus-circle\";s:3:\"hex\";s:5:\"\\f056\";s:7:\"unicode\";s:8:\"&#xf056;\";}s:14:\"fa-plus-circle\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-plus-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-plus-circle\";s:3:\"hex\";s:5:\"\\f055\";s:7:\"unicode\";s:8:\"&#xf055;\";}s:16:\"fa-chevron-right\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-chevron-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-chevron-right\";s:3:\"hex\";s:5:\"\\f054\";s:7:\"unicode\";s:8:\"&#xf054;\";}s:15:\"fa-chevron-left\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-chevron-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-chevron-left\";s:3:\"hex\";s:5:\"\\f053\";s:7:\"unicode\";s:8:\"&#xf053;\";}s:8:\"fa-eject\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-eject\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-eject\";s:3:\"hex\";s:5:\"\\f052\";s:7:\"unicode\";s:8:\"&#xf052;\";}s:15:\"fa-step-forward\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-step-forward\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-step-forward\";s:3:\"hex\";s:5:\"\\f051\";s:7:\"unicode\";s:8:\"&#xf051;\";}s:15:\"fa-fast-forward\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-fast-forward\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-fast-forward\";s:3:\"hex\";s:5:\"\\f050\";s:7:\"unicode\";s:8:\"&#xf050;\";}s:10:\"fa-forward\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-forward\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-forward\";s:3:\"hex\";s:5:\"\\f04e\";s:7:\"unicode\";s:8:\"&#xf04e;\";}s:7:\"fa-stop\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-stop\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-stop\";s:3:\"hex\";s:5:\"\\f04d\";s:7:\"unicode\";s:8:\"&#xf04d;\";}s:8:\"fa-pause\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-pause\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-pause\";s:3:\"hex\";s:5:\"\\f04c\";s:7:\"unicode\";s:8:\"&#xf04c;\";}s:7:\"fa-play\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-play\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-play\";s:3:\"hex\";s:5:\"\\f04b\";s:7:\"unicode\";s:8:\"&#xf04b;\";}s:11:\"fa-backward\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-backward\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-backward\";s:3:\"hex\";s:5:\"\\f04a\";s:7:\"unicode\";s:8:\"&#xf04a;\";}s:16:\"fa-fast-backward\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-fast-backward\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-fast-backward\";s:3:\"hex\";s:5:\"\\f049\";s:7:\"unicode\";s:8:\"&#xf049;\";}s:16:\"fa-step-backward\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-step-backward\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-step-backward\";s:3:\"hex\";s:5:\"\\f048\";s:7:\"unicode\";s:8:\"&#xf048;\";}s:9:\"fa-arrows\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-arrows\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-arrows\";s:3:\"hex\";s:5:\"\\f047\";s:7:\"unicode\";s:8:\"&#xf047;\";}s:17:\"fa-check-square-o\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-check-square-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-check-square-o\";s:3:\"hex\";s:5:\"\\f046\";s:7:\"unicode\";s:8:\"&#xf046;\";}s:17:\"fa-share-square-o\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-share-square-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-share-square-o\";s:3:\"hex\";s:5:\"\\f045\";s:7:\"unicode\";s:8:\"&#xf045;\";}s:18:\"fa-pencil-square-o\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-pencil-square-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-pencil-square-o\";s:3:\"hex\";s:5:\"\\f044\";s:7:\"unicode\";s:8:\"&#xf044;\";}s:7:\"fa-tint\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-tint\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-tint\";s:3:\"hex\";s:5:\"\\f043\";s:7:\"unicode\";s:8:\"&#xf043;\";}s:9:\"fa-adjust\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-adjust\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-adjust\";s:3:\"hex\";s:5:\"\\f042\";s:7:\"unicode\";s:8:\"&#xf042;\";}s:13:\"fa-map-marker\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-map-marker\";s:3:\"hex\";s:5:\"\\f041\";s:7:\"unicode\";s:8:\"&#xf041;\";}s:9:\"fa-pencil\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-pencil\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-pencil\";s:3:\"hex\";s:5:\"\\f040\";s:7:\"unicode\";s:8:\"&#xf040;\";}s:12:\"fa-picture-o\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-picture-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-picture-o\";s:3:\"hex\";s:5:\"\\f03e\";s:7:\"unicode\";s:8:\"&#xf03e;\";}s:15:\"fa-video-camera\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-video-camera\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-video-camera\";s:3:\"hex\";s:5:\"\\f03d\";s:7:\"unicode\";s:8:\"&#xf03d;\";}s:9:\"fa-indent\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-indent\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-indent\";s:3:\"hex\";s:5:\"\\f03c\";s:7:\"unicode\";s:8:\"&#xf03c;\";}s:10:\"fa-outdent\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-outdent\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-outdent\";s:3:\"hex\";s:5:\"\\f03b\";s:7:\"unicode\";s:8:\"&#xf03b;\";}s:7:\"fa-list\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-list\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-list\";s:3:\"hex\";s:5:\"\\f03a\";s:7:\"unicode\";s:8:\"&#xf03a;\";}s:16:\"fa-align-justify\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-align-justify\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-align-justify\";s:3:\"hex\";s:5:\"\\f039\";s:7:\"unicode\";s:8:\"&#xf039;\";}s:14:\"fa-align-right\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-align-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-align-right\";s:3:\"hex\";s:5:\"\\f038\";s:7:\"unicode\";s:8:\"&#xf038;\";}s:15:\"fa-align-center\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-align-center\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-align-center\";s:3:\"hex\";s:5:\"\\f037\";s:7:\"unicode\";s:8:\"&#xf037;\";}s:13:\"fa-align-left\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-align-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-align-left\";s:3:\"hex\";s:5:\"\\f036\";s:7:\"unicode\";s:8:\"&#xf036;\";}s:13:\"fa-text-width\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-text-width\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-text-width\";s:3:\"hex\";s:5:\"\\f035\";s:7:\"unicode\";s:8:\"&#xf035;\";}s:14:\"fa-text-height\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-text-height\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-text-height\";s:3:\"hex\";s:5:\"\\f034\";s:7:\"unicode\";s:8:\"&#xf034;\";}s:9:\"fa-italic\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-italic\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-italic\";s:3:\"hex\";s:5:\"\\f033\";s:7:\"unicode\";s:8:\"&#xf033;\";}s:7:\"fa-bold\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-bold\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-bold\";s:3:\"hex\";s:5:\"\\f032\";s:7:\"unicode\";s:8:\"&#xf032;\";}s:7:\"fa-font\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-font\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-font\";s:3:\"hex\";s:5:\"\\f031\";s:7:\"unicode\";s:8:\"&#xf031;\";}s:9:\"fa-camera\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-camera\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-camera\";s:3:\"hex\";s:5:\"\\f030\";s:7:\"unicode\";s:8:\"&#xf030;\";}s:8:\"fa-print\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-print\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-print\";s:3:\"hex\";s:5:\"\\f02f\";s:7:\"unicode\";s:8:\"&#xf02f;\";}s:11:\"fa-bookmark\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-bookmark\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-bookmark\";s:3:\"hex\";s:5:\"\\f02e\";s:7:\"unicode\";s:8:\"&#xf02e;\";}s:7:\"fa-book\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-book\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-book\";s:3:\"hex\";s:5:\"\\f02d\";s:7:\"unicode\";s:8:\"&#xf02d;\";}s:7:\"fa-tags\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-tags\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-tags\";s:3:\"hex\";s:5:\"\\f02c\";s:7:\"unicode\";s:8:\"&#xf02c;\";}s:6:\"fa-tag\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-tag\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-tag\";s:3:\"hex\";s:5:\"\\f02b\";s:7:\"unicode\";s:8:\"&#xf02b;\";}s:10:\"fa-barcode\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-barcode\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-barcode\";s:3:\"hex\";s:5:\"\\f02a\";s:7:\"unicode\";s:8:\"&#xf02a;\";}s:9:\"fa-qrcode\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-qrcode\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-qrcode\";s:3:\"hex\";s:5:\"\\f029\";s:7:\"unicode\";s:8:\"&#xf029;\";}s:12:\"fa-volume-up\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-volume-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-volume-up\";s:3:\"hex\";s:5:\"\\f028\";s:7:\"unicode\";s:8:\"&#xf028;\";}s:14:\"fa-volume-down\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-volume-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-volume-down\";s:3:\"hex\";s:5:\"\\f027\";s:7:\"unicode\";s:8:\"&#xf027;\";}s:13:\"fa-volume-off\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-volume-off\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-volume-off\";s:3:\"hex\";s:5:\"\\f026\";s:7:\"unicode\";s:8:\"&#xf026;\";}s:13:\"fa-headphones\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-headphones\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-headphones\";s:3:\"hex\";s:5:\"\\f025\";s:7:\"unicode\";s:8:\"&#xf025;\";}s:7:\"fa-flag\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-flag\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-flag\";s:3:\"hex\";s:5:\"\\f024\";s:7:\"unicode\";s:8:\"&#xf024;\";}s:7:\"fa-lock\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-lock\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-lock\";s:3:\"hex\";s:5:\"\\f023\";s:7:\"unicode\";s:8:\"&#xf023;\";}s:11:\"fa-list-alt\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-list-alt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-list-alt\";s:3:\"hex\";s:5:\"\\f022\";s:7:\"unicode\";s:8:\"&#xf022;\";}s:10:\"fa-refresh\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-refresh\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-refresh\";s:3:\"hex\";s:5:\"\\f021\";s:7:\"unicode\";s:8:\"&#xf021;\";}s:9:\"fa-repeat\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-repeat\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-repeat\";s:3:\"hex\";s:5:\"\\f01e\";s:7:\"unicode\";s:8:\"&#xf01e;\";}s:16:\"fa-play-circle-o\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-play-circle-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-play-circle-o\";s:3:\"hex\";s:5:\"\\f01d\";s:7:\"unicode\";s:8:\"&#xf01d;\";}s:8:\"fa-inbox\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-inbox\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-inbox\";s:3:\"hex\";s:5:\"\\f01c\";s:7:\"unicode\";s:8:\"&#xf01c;\";}s:20:\"fa-arrow-circle-o-up\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-arrow-circle-o-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-arrow-circle-o-up\";s:3:\"hex\";s:5:\"\\f01b\";s:7:\"unicode\";s:8:\"&#xf01b;\";}s:22:\"fa-arrow-circle-o-down\";a:4:{s:7:\"element\";s:60:\"<i class=\"fa fa-arrow-circle-o-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:22:\"fa-arrow-circle-o-down\";s:3:\"hex\";s:5:\"\\f01a\";s:7:\"unicode\";s:8:\"&#xf01a;\";}s:11:\"fa-download\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-download\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-download\";s:3:\"hex\";s:5:\"\\f019\";s:7:\"unicode\";s:8:\"&#xf019;\";}s:7:\"fa-road\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-road\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-road\";s:3:\"hex\";s:5:\"\\f018\";s:7:\"unicode\";s:8:\"&#xf018;\";}s:10:\"fa-clock-o\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-clock-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-clock-o\";s:3:\"hex\";s:5:\"\\f017\";s:7:\"unicode\";s:8:\"&#xf017;\";}s:9:\"fa-file-o\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-file-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-file-o\";s:3:\"hex\";s:5:\"\\f016\";s:7:\"unicode\";s:8:\"&#xf016;\";}s:7:\"fa-home\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-home\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-home\";s:3:\"hex\";s:5:\"\\f015\";s:7:\"unicode\";s:8:\"&#xf015;\";}s:10:\"fa-trash-o\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-trash-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-trash-o\";s:3:\"hex\";s:5:\"\\f014\";s:7:\"unicode\";s:8:\"&#xf014;\";}s:6:\"fa-cog\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-cog\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-cog\";s:3:\"hex\";s:5:\"\\f013\";s:7:\"unicode\";s:8:\"&#xf013;\";}s:9:\"fa-signal\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-signal\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-signal\";s:3:\"hex\";s:5:\"\\f012\";s:7:\"unicode\";s:8:\"&#xf012;\";}s:12:\"fa-power-off\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-power-off\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-power-off\";s:3:\"hex\";s:5:\"\\f011\";s:7:\"unicode\";s:8:\"&#xf011;\";}s:15:\"fa-search-minus\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-search-minus\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-search-minus\";s:3:\"hex\";s:5:\"\\f010\";s:7:\"unicode\";s:8:\"&#xf010;\";}s:14:\"fa-search-plus\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-search-plus\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-search-plus\";s:3:\"hex\";s:5:\"\\f00e\";s:7:\"unicode\";s:8:\"&#xf00e;\";}s:8:\"fa-times\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-times\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-times\";s:3:\"hex\";s:5:\"\\f00d\";s:7:\"unicode\";s:8:\"&#xf00d;\";}s:8:\"fa-check\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-check\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-check\";s:3:\"hex\";s:5:\"\\f00c\";s:7:\"unicode\";s:8:\"&#xf00c;\";}s:10:\"fa-th-list\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-th-list\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-th-list\";s:3:\"hex\";s:5:\"\\f00b\";s:7:\"unicode\";s:8:\"&#xf00b;\";}s:5:\"fa-th\";a:4:{s:7:\"element\";s:43:\"<i class=\"fa fa-th\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:5:\"fa-th\";s:3:\"hex\";s:5:\"\\f00a\";s:7:\"unicode\";s:8:\"&#xf00a;\";}s:11:\"fa-th-large\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-th-large\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-th-large\";s:3:\"hex\";s:5:\"\\f009\";s:7:\"unicode\";s:8:\"&#xf009;\";}s:7:\"fa-film\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-film\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-film\";s:3:\"hex\";s:5:\"\\f008\";s:7:\"unicode\";s:8:\"&#xf008;\";}s:7:\"fa-user\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-user\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-user\";s:3:\"hex\";s:5:\"\\f007\";s:7:\"unicode\";s:8:\"&#xf007;\";}s:9:\"fa-star-o\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-star-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-star-o\";s:3:\"hex\";s:5:\"\\f006\";s:7:\"unicode\";s:8:\"&#xf006;\";}s:7:\"fa-star\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-star\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-star\";s:3:\"hex\";s:5:\"\\f005\";s:7:\"unicode\";s:8:\"&#xf005;\";}s:8:\"fa-heart\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-heart\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-heart\";s:3:\"hex\";s:5:\"\\f004\";s:7:\"unicode\";s:8:\"&#xf004;\";}s:13:\"fa-envelope-o\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-envelope-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-envelope-o\";s:3:\"hex\";s:5:\"\\f003\";s:7:\"unicode\";s:8:\"&#xf003;\";}s:9:\"fa-search\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-search\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-search\";s:3:\"hex\";s:5:\"\\f002\";s:7:\"unicode\";s:8:\"&#xf002;\";}s:8:\"fa-music\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-music\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-music\";s:3:\"hex\";s:5:\"\\f001\";s:7:\"unicode\";s:8:\"&#xf001;\";}s:8:\"fa-glass\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-glass\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-glass\";s:3:\"hex\";s:5:\"\\f000\";s:7:\"unicode\";s:8:\"&#xf000;\";}}s:6:\"prefix\";s:3:\"fa-\";}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(195, 'apif_settings', 'a:5:{s:8:\"username\";s:14:\"arcadia_hewins\";s:12:\"access_token\";s:49:\"34905381.54da896.a4598955771846e0a679acb83fc8badb\";s:16:\"instagram_mosaic\";s:6:\"slider\";s:7:\"user_id\";s:0:\"\";s:6:\"active\";s:1:\" \";}', 'yes'),
(196, 'widget_apif_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(197, 'widget_apif_sidewidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(226, 'wpgmza_temp_api', 'AIzaSyChPphumyabdfggISDNBuGOlGVBgEvZnGE', 'yes'),
(227, 'wpgmza_xml_location', '{uploads_dir}/wp-google-maps/', 'yes'),
(228, 'wpgmza_xml_url', '{uploads_url}/wp-google-maps/', 'yes'),
(229, 'wpgmza_db_version', '6.4.11', 'yes'),
(230, 'wpgmaps_current_version', '6.4.11', 'yes'),
(231, 'WPGM_V6_FIRST_TIME', '1', 'yes'),
(232, 'widget_wpgmza_map_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(233, 'WPGMZA_OTHER_SETTINGS', 'a:7:{s:24:\"wpgmza_settings_map_zoom\";s:3:\"yes\";s:24:\"wpgmza_settings_map_type\";s:3:\"yes\";s:34:\"wpgmza_settings_map_open_marker_by\";s:1:\"1\";s:18:\"wpgmza_api_version\";s:4:\"3.30\";s:17:\"wpgmza_custom_css\";s:0:\"\";s:28:\"wpgmza_settings_access_level\";s:14:\"manage_options\";s:27:\"wpgmza_settings_marker_pull\";s:1:\"0\";}', 'yes'),
(234, 'WPGMZA_FIRST_TIME', '6.4.11', 'yes'),
(235, 'wpgmza_stats', 'a:4:{s:15:\"list_maps_basic\";a:3:{s:5:\"views\";i:6;s:13:\"last_accessed\";s:19:\"2018-04-02 23:52:13\";s:14:\"first_accessed\";s:19:\"2018-04-02 19:30:19\";}s:9:\"dashboard\";a:3:{s:5:\"views\";i:7;s:13:\"last_accessed\";s:19:\"2018-04-02 23:50:27\";s:14:\"first_accessed\";s:19:\"2018-04-02 22:53:32\";}s:14:\"settings_basic\";a:3:{s:5:\"views\";i:4;s:13:\"last_accessed\";s:19:\"2018-04-02 23:18:14\";s:14:\"first_accessed\";s:19:\"2018-04-02 23:14:36\";}s:13:\"support_basic\";a:3:{s:5:\"views\";i:1;s:13:\"last_accessed\";s:19:\"2018-04-02 23:18:26\";s:14:\"first_accessed\";s:19:\"2018-04-02 23:18:26\";}}', 'yes'),
(236, 'wpgmza_google_maps_api_key', 'AIzaSyBXnqRMzvqZc5C_aERQyWMG7abR0qr3YFY', 'yes'),
(237, 'WPGMZA_SETTINGS', 'a:10:{s:24:\"map_default_starting_lat\";s:18:\"40.188096255474946\";s:24:\"map_default_starting_lng\";s:18:\"-75.54317071518398\";s:18:\"map_default_height\";s:3:\"400\";s:17:\"map_default_width\";s:3:\"100\";s:16:\"map_default_zoom\";i:14;s:20:\"map_default_max_zoom\";i:1;s:16:\"map_default_type\";i:1;s:21:\"map_default_alignment\";i:2;s:22:\"map_default_width_type\";s:2:\"\\%\";s:23:\"map_default_height_type\";s:2:\"px\";}', 'yes'),
(238, '_transient_timeout_plugin_slugs', '1522799973', 'no'),
(239, '_transient_plugin_slugs', 'a:6:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:56:\"advanced-custom-fields-font-awesome/acf-font-awesome.php\";i:2;s:48:\"advanced-custom-fields-table-field/acf-table.php\";i:3;s:19:\"akismet/akismet.php\";i:4;s:36:\"contact-form-7/wp-contact-form-7.php\";i:5;s:9:\"hello.php\";}', 'no'),
(240, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1522724066', 'no'),
(241, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4446;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2690;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2547;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2415;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1865;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1643;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1637;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1451;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1385;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1381;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1381;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1308;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1280;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1192;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1091;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1056;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1016;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:999;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:878;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:869;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:824;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:797;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:795;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:701;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:690;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:683;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:676;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:672;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:656;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:654;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:641;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:639;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:633;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:618;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:610;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:601;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:601;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:589;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:587;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:585;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:559;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:545;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:535;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:531;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:521;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:517;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:512;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:504;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:491;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:487;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:487;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:483;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:479;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:475;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:467;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:463;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:456;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:453;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:437;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:429;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:423;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:419;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:419;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:416;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:413;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:412;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:402;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:400;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:390;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:385;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:382;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:363;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:357;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:354;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:351;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:344;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:343;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:343;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:339;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:338;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:335;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:335;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:333;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:330;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:330;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:329;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:320;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:310;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:303;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:302;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:302;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:300;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:295;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:294;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:292;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:292;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:289;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:289;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:287;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:285;}}', 'no'),
(243, '_site_transient_timeout_theme_roots', '1522715368', 'no'),
(244, '_site_transient_theme_roots', 'a:4:{s:9:\"fhc_theme\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(245, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1522713572;s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:56:\"advanced-custom-fields-font-awesome/acf-font-awesome.php\";s:5:\"2.1.2\";s:48:\"advanced-custom-fields-table-field/acf-table.php\";s:5:\"1.2.1\";s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.1\";s:9:\"hello.php\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:7:\"default\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:11:\"banners_rtl\";a:0:{}}s:56:\"advanced-custom-fields-font-awesome/acf-font-awesome.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:49:\"w.org/plugins/advanced-custom-fields-font-awesome\";s:4:\"slug\";s:35:\"advanced-custom-fields-font-awesome\";s:6:\"plugin\";s:56:\"advanced-custom-fields-font-awesome/acf-font-awesome.php\";s:11:\"new_version\";s:5:\"2.1.2\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/advanced-custom-fields-font-awesome/\";s:7:\"package\";s:84:\"https://downloads.wordpress.org/plugin/advanced-custom-fields-font-awesome.2.1.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:88:\"https://ps.w.org/advanced-custom-fields-font-awesome/assets/icon-128x128.jpg?rev=1016227\";s:2:\"2x\";s:88:\"https://ps.w.org/advanced-custom-fields-font-awesome/assets/icon-256x256.jpg?rev=1016227\";s:7:\"default\";s:88:\"https://ps.w.org/advanced-custom-fields-font-awesome/assets/icon-256x256.jpg?rev=1016227\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:89:\"https://ps.w.org/advanced-custom-fields-font-awesome/assets/banner-772x250.jpg?rev=859936\";s:7:\"default\";s:89:\"https://ps.w.org/advanced-custom-fields-font-awesome/assets/banner-772x250.jpg?rev=859936\";}s:11:\"banners_rtl\";a:0:{}}s:48:\"advanced-custom-fields-table-field/acf-table.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:48:\"w.org/plugins/advanced-custom-fields-table-field\";s:4:\"slug\";s:34:\"advanced-custom-fields-table-field\";s:6:\"plugin\";s:48:\"advanced-custom-fields-table-field/acf-table.php\";s:11:\"new_version\";s:5:\"1.2.1\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/advanced-custom-fields-table-field/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/advanced-custom-fields-table-field.zip\";s:5:\"icons\";a:4:{s:2:\"1x\";s:87:\"https://ps.w.org/advanced-custom-fields-table-field/assets/icon-128x128.png?rev=1056269\";s:2:\"2x\";s:87:\"https://ps.w.org/advanced-custom-fields-table-field/assets/icon-256x256.png?rev=1056281\";s:3:\"svg\";s:79:\"https://ps.w.org/advanced-custom-fields-table-field/assets/icon.svg?rev=1056269\";s:7:\"default\";s:79:\"https://ps.w.org/advanced-custom-fields-table-field/assets/icon.svg?rev=1056269\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:89:\"https://ps.w.org/advanced-custom-fields-table-field/assets/banner-772x250.png?rev=1056281\";s:7:\"default\";s:89:\"https://ps.w.org/advanced-custom-fields-table-field/assets/banner-772x250.png?rev=1056281\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:7:\"default\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";s:7:\"default\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(246, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1522713572;s:7:\"version\";s:5:\"5.0.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_attached_file', '2018/03/logo.png'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2299;s:6:\"height\";i:2119;s:4:\"file\";s:16:\"2018/03/logo.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo-300x277.png\";s:5:\"width\";i:300;s:6:\"height\";i:277;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"logo-768x708.png\";s:5:\"width\";i:768;s:6:\"height\";i:708;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"logo-1024x944.png\";s:5:\"width\";i:1024;s:6:\"height\";i:944;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 6, '_wp_attached_file', '2018/03/logo2.png'),
(7, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:118;s:4:\"file\";s:17:\"2018/03/logo2.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo2-150x118.png\";s:5:\"width\";i:150;s:6:\"height\";i:118;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo2-300x39.png\";s:5:\"width\";i:300;s:6:\"height\";i:39;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"logo2-768x101.png\";s:5:\"width\";i:768;s:6:\"height\";i:101;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 7, '_wp_attached_file', '2018/03/logo3.png'),
(9, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:118;s:4:\"file\";s:17:\"2018/03/logo3.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo3-150x118.png\";s:5:\"width\";i:150;s:6:\"height\";i:118;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo3-300x39.png\";s:5:\"width\";i:300;s:6:\"height\";i:39;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"logo3-768x101.png\";s:5:\"width\";i:768;s:6:\"height\";i:101;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 8, '_wp_attached_file', '2018/03/workouttype.jpg'),
(11, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"file\";s:23:\"2018/03/workouttype.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"workouttype-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"workouttype-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"workouttype-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"workouttype-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 9, '_wp_attached_file', '2018/03/logo3-invert.png'),
(13, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:118;s:4:\"file\";s:24:\"2018/03/logo3-invert.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"logo3-invert-150x118.png\";s:5:\"width\";i:150;s:6:\"height\";i:118;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"logo3-invert-300x39.png\";s:5:\"width\";i:300;s:6:\"height\";i:39;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"logo3-invert-768x101.png\";s:5:\"width\";i:768;s:6:\"height\";i:101;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 10, '_edit_last', '1'),
(15, 10, 'field_5aba4a8ef52f8', 'a:11:{s:3:\"key\";s:19:\"field_5aba4a8ef52f8\";s:5:\"label\";s:21:\"Front Page Background\";s:4:\"name\";s:21:\"front_page_background\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:63:\"Select the image that you want to be the main background image.\";s:8:\"required\";s:1:\"1\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(16, 10, 'field_5aba4d89f52f9', 'a:14:{s:3:\"key\";s:19:\"field_5aba4d89f52f9\";s:5:\"label\";s:28:\"Front Page Header Title Left\";s:4:\"name\";s:28:\"front_page_header_title_left\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:70:\"Write the text that you want to be the header over the image in white.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:7:\"FACTORY\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(17, 10, 'field_5aba4fecf52fa', 'a:14:{s:3:\"key\";s:19:\"field_5aba4fecf52fa\";s:5:\"label\";s:29:\"Front Page Header Title Right\";s:4:\"name\";s:29:\"front_page_header_title_right\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:68:\"Write the text that you want to be the header over the image in red.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:8:\"HARDCORE\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(19, 10, 'position', 'acf_after_title'),
(20, 10, 'layout', 'default'),
(21, 10, 'hide_on_screen', ''),
(22, 10, '_edit_lock', '1522679768:1'),
(23, 12, '_edit_last', '1'),
(24, 12, '_edit_lock', '1522680799:1'),
(25, 13, 'front_page_background', '8'),
(26, 13, '_front_page_background', 'field_5aba4a8ef52f8'),
(27, 13, 'front_page_header_title_left', 'FACTORY'),
(28, 13, '_front_page_header_title_left', 'field_5aba4d89f52f9'),
(29, 13, 'front_page_header_title_right', 'HARDCORE'),
(30, 13, '_front_page_header_title_right', 'field_5aba4fecf52fa'),
(31, 12, 'front_page_background', '8'),
(32, 12, '_front_page_background', 'field_5aba4a8ef52f8'),
(33, 12, 'front_page_header_title_left', 'FACTORY'),
(34, 12, '_front_page_header_title_left', 'field_5aba4d89f52f9'),
(35, 12, 'front_page_header_title_right', 'HARDCORE'),
(36, 12, '_front_page_header_title_right', 'field_5aba4fecf52fa'),
(37, 10, 'field_5aba5258e312b', 'a:14:{s:3:\"key\";s:19:\"field_5aba5258e312b\";s:5:\"label\";s:19:\"Front Page Subtitle\";s:4:\"name\";s:19:\"front_page_subtitle\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:76:\"Write the text that you want to be under the header over the image in white.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:27:\"We\'re Hardcore About Health\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(39, 15, '_edit_last', '1'),
(40, 15, 'field_5aba538fdfae8', 'a:13:{s:3:\"key\";s:19:\"field_5aba538fdfae8\";s:5:\"label\";s:11:\"Grid A Icon\";s:4:\"name\";s:11:\"grid_a_icon\";s:4:\"type\";s:12:\"font-awesome\";s:12:\"instructions\";s:55:\"Select icon from dropdown menu for top left grid space.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"save_format\";s:7:\"element\";s:10:\"allow_null\";s:1:\"0\";s:12:\"show_preview\";s:1:\"1\";s:10:\"enqueue_fa\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(42, 15, 'field_5aba54bedfae9', 'a:14:{s:3:\"key\";s:19:\"field_5aba54bedfae9\";s:5:\"label\";s:12:\"Grid A Title\";s:4:\"name\";s:12:\"grid_a_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:49:\"Type title for top left grid space to be in bold.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(43, 15, 'field_5aba558adfaea', 'a:14:{s:3:\"key\";s:19:\"field_5aba558adfaea\";s:5:\"label\";s:15:\"Grid A Subtitle\";s:4:\"name\";s:15:\"grid_a_subtitle\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:52:\"Type subtitle for top left grid space to be in bold.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(45, 15, 'position', 'acf_after_title'),
(46, 15, 'layout', 'default'),
(47, 15, 'hide_on_screen', ''),
(48, 15, '_edit_lock', '1522166430:1'),
(51, 15, 'field_5aba5814f2851', 'a:11:{s:3:\"key\";s:19:\"field_5aba5814f2851\";s:5:\"label\";s:12:\"Grid B Image\";s:4:\"name\";s:12:\"grid_b_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:66:\"Insert the image that you wish to be in the top middle grid space.\";s:8:\"required\";s:1:\"1\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(52, 15, 'field_5aba57d6f284e', 'a:13:{s:3:\"key\";s:19:\"field_5aba57d6f284e\";s:5:\"label\";s:11:\"Grid C Icon\";s:4:\"name\";s:11:\"grid_c_icon\";s:4:\"type\";s:12:\"font-awesome\";s:12:\"instructions\";s:56:\"Select icon from dropdown menu for top right grid space.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"save_format\";s:7:\"element\";s:10:\"allow_null\";s:1:\"0\";s:12:\"show_preview\";s:1:\"1\";s:10:\"enqueue_fa\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(53, 15, 'field_5aba57f5f284f', 'a:14:{s:3:\"key\";s:19:\"field_5aba57f5f284f\";s:5:\"label\";s:12:\"Grid C Title\";s:4:\"name\";s:12:\"grid_c_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:50:\"Type title for top right grid space to be in bold.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(54, 15, 'field_5aba5804f2850', 'a:14:{s:3:\"key\";s:19:\"field_5aba5804f2850\";s:5:\"label\";s:15:\"Grid C Subtitle\";s:4:\"name\";s:15:\"grid_c_subtitle\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:53:\"Type subtitle for top right grid space to be in bold.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(56, 15, 'field_5aba587a41646', 'a:11:{s:3:\"key\";s:19:\"field_5aba587a41646\";s:5:\"label\";s:12:\"Grid D Image\";s:4:\"name\";s:12:\"grid_d_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:67:\"Insert the image that you wish to be in the bottom left grid space.\";s:8:\"required\";s:1:\"1\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}'),
(57, 15, 'field_5aba58a041647', 'a:13:{s:3:\"key\";s:19:\"field_5aba58a041647\";s:5:\"label\";s:11:\"Grid E Icon\";s:4:\"name\";s:11:\"grid_e_icon\";s:4:\"type\";s:12:\"font-awesome\";s:12:\"instructions\";s:56:\"Select icon from dropdown menu for top right grid space.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"save_format\";s:7:\"element\";s:10:\"allow_null\";s:1:\"0\";s:12:\"show_preview\";s:1:\"1\";s:10:\"enqueue_fa\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}'),
(58, 15, 'field_5aba58c041648', 'a:14:{s:3:\"key\";s:19:\"field_5aba58c041648\";s:5:\"label\";s:12:\"Grid E Title\";s:4:\"name\";s:12:\"grid_e_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:54:\"Type title for bottom middle grid space to be in bold.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}'),
(59, 15, 'field_5aba590241649', 'a:14:{s:3:\"key\";s:19:\"field_5aba590241649\";s:5:\"label\";s:15:\"Grid E Subtitle\";s:4:\"name\";s:15:\"grid_e_subtitle\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:57:\"Type subtitle for bottom middle grid space to be in bold.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:10;}'),
(60, 15, 'field_5aba59274164a', 'a:11:{s:3:\"key\";s:19:\"field_5aba59274164a\";s:5:\"label\";s:12:\"Grid F Image\";s:4:\"name\";s:12:\"grid_f_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:68:\"Insert the image that you wish to be in the bottom right grid space.\";s:8:\"required\";s:1:\"1\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:11;}'),
(61, 15, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"12\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(62, 16, 'grid_a_icon', 'fa-tint'),
(63, 16, '_grid_a_icon', 'field_5aba538fdfae8'),
(64, 16, 'grid_a_title', 'SAUNA'),
(65, 16, '_grid_a_title', 'field_5aba54bedfae9'),
(66, 16, 'grid_a_subtitle', 'This is the text for the first grid. Yay. Woo. It works.'),
(67, 16, '_grid_a_subtitle', 'field_5aba558adfaea'),
(68, 16, 'grid_b_image', '8'),
(69, 16, '_grid_b_image', 'field_5aba5814f2851'),
(70, 16, 'grid_c_icon', 'fa-ban'),
(71, 16, '_grid_c_icon', 'field_5aba57d6f284e'),
(72, 16, 'grid_c_title', 'JUDGEMENT'),
(73, 16, '_grid_c_title', 'field_5aba57f5f284f'),
(74, 16, 'grid_c_subtitle', 'This is the text for the third grid. Yay. Woo. It works.'),
(75, 16, '_grid_c_subtitle', 'field_5aba5804f2850'),
(76, 16, 'grid_d_image', '8'),
(77, 16, '_grid_d_image', 'field_5aba587a41646'),
(78, 16, 'grid_e_icon', 'fa-heart'),
(79, 16, '_grid_e_icon', 'field_5aba58a041647'),
(80, 16, 'grid_e_title', 'CARING'),
(81, 16, '_grid_e_title', 'field_5aba58c041648'),
(82, 16, 'grid_e_subtitle', 'This is the text for the last text grid. Yay. Woo. It works.'),
(83, 16, '_grid_e_subtitle', 'field_5aba590241649'),
(84, 16, 'grid_f_image', '8'),
(85, 16, '_grid_f_image', 'field_5aba59274164a'),
(86, 16, 'front_page_background', '8'),
(87, 16, '_front_page_background', 'field_5aba4a8ef52f8'),
(88, 16, 'front_page_header_title_left', 'FACTORY'),
(89, 16, '_front_page_header_title_left', 'field_5aba4d89f52f9'),
(90, 16, 'front_page_header_title_right', 'HARDCORE'),
(91, 16, '_front_page_header_title_right', 'field_5aba4fecf52fa'),
(92, 16, 'front_page_subtitle', 'We\'re Hardcore About Health'),
(93, 16, '_front_page_subtitle', 'field_5aba5258e312b'),
(94, 12, 'grid_a_icon', 'fa-tint'),
(95, 12, '_grid_a_icon', 'field_5aba538fdfae8'),
(96, 12, 'grid_a_title', 'SAUNA'),
(97, 12, '_grid_a_title', 'field_5aba54bedfae9'),
(98, 12, 'grid_a_subtitle', 'Lorem ipsum dolor sit amet, case veniam sit at, soluta numquam pri ei.'),
(99, 12, '_grid_a_subtitle', 'field_5aba558adfaea'),
(100, 12, 'grid_b_image', '8'),
(101, 12, '_grid_b_image', 'field_5aba5814f2851'),
(102, 12, 'grid_c_icon', 'fa-ban'),
(103, 12, '_grid_c_icon', 'field_5aba57d6f284e'),
(104, 12, 'grid_c_title', 'JUDGEMENT'),
(105, 12, '_grid_c_title', 'field_5aba57f5f284f'),
(106, 12, 'grid_c_subtitle', 'Te dico nonumy philosophia sed, his senserit consectetuer et.'),
(107, 12, '_grid_c_subtitle', 'field_5aba5804f2850'),
(108, 12, 'grid_d_image', '8'),
(109, 12, '_grid_d_image', 'field_5aba587a41646'),
(110, 12, 'grid_e_icon', 'fa-heart'),
(111, 12, '_grid_e_icon', 'field_5aba58a041647'),
(112, 12, 'grid_e_title', 'CARING'),
(113, 12, '_grid_e_title', 'field_5aba58c041648'),
(114, 12, 'grid_e_subtitle', 'Ut tollit appareat cum, cibo prodesset sea cu, ei facete volumus vix.'),
(115, 12, '_grid_e_subtitle', 'field_5aba590241649'),
(116, 12, 'grid_f_image', '8'),
(117, 12, '_grid_f_image', 'field_5aba59274164a'),
(118, 12, 'front_page_subtitle', 'Something else here'),
(119, 12, '_front_page_subtitle', 'field_5aba5258e312b'),
(120, 17, 'grid_a_icon', 'fa-tint'),
(121, 17, '_grid_a_icon', 'field_5aba538fdfae8'),
(122, 17, 'grid_a_title', 'Saunaaaa'),
(123, 17, '_grid_a_title', 'field_5aba54bedfae9'),
(124, 17, 'grid_a_subtitle', 'This is the text for the first grid. Yay. Woo. It works.'),
(125, 17, '_grid_a_subtitle', 'field_5aba558adfaea'),
(126, 17, 'grid_b_image', '8'),
(127, 17, '_grid_b_image', 'field_5aba5814f2851'),
(128, 17, 'grid_c_icon', 'fa-ban'),
(129, 17, '_grid_c_icon', 'field_5aba57d6f284e'),
(130, 17, 'grid_c_title', 'JUDGEMENT'),
(131, 17, '_grid_c_title', 'field_5aba57f5f284f'),
(132, 17, 'grid_c_subtitle', 'This is the text for the third grid. Yay. Woo. It works.'),
(133, 17, '_grid_c_subtitle', 'field_5aba5804f2850'),
(134, 17, 'grid_d_image', '8'),
(135, 17, '_grid_d_image', 'field_5aba587a41646'),
(136, 17, 'grid_e_icon', 'fa-heart'),
(137, 17, '_grid_e_icon', 'field_5aba58a041647'),
(138, 17, 'grid_e_title', 'CARING'),
(139, 17, '_grid_e_title', 'field_5aba58c041648'),
(140, 17, 'grid_e_subtitle', 'This is the text for the last text grid. Yay. Woo. It works.'),
(141, 17, '_grid_e_subtitle', 'field_5aba590241649'),
(142, 17, 'grid_f_image', '8'),
(143, 17, '_grid_f_image', 'field_5aba59274164a'),
(144, 17, 'front_page_background', '8'),
(145, 17, '_front_page_background', 'field_5aba4a8ef52f8'),
(146, 17, 'front_page_header_title_left', 'FACTORY'),
(147, 17, '_front_page_header_title_left', 'field_5aba4d89f52f9'),
(148, 17, 'front_page_header_title_right', 'HARDCORE'),
(149, 17, '_front_page_header_title_right', 'field_5aba4fecf52fa'),
(150, 17, 'front_page_subtitle', 'We\'re Hardcore About Health'),
(151, 17, '_front_page_subtitle', 'field_5aba5258e312b'),
(152, 18, 'grid_a_icon', 'fa-tint'),
(153, 18, '_grid_a_icon', 'field_5aba538fdfae8'),
(154, 18, 'grid_a_title', 'SAUNA'),
(155, 18, '_grid_a_title', 'field_5aba54bedfae9'),
(156, 18, 'grid_a_subtitle', 'This is the text for the first grid. Yay. Woo. It works.'),
(157, 18, '_grid_a_subtitle', 'field_5aba558adfaea'),
(158, 18, 'grid_b_image', '8'),
(159, 18, '_grid_b_image', 'field_5aba5814f2851'),
(160, 18, 'grid_c_icon', 'fa-ban'),
(161, 18, '_grid_c_icon', 'field_5aba57d6f284e'),
(162, 18, 'grid_c_title', 'JUDGEMENT'),
(163, 18, '_grid_c_title', 'field_5aba57f5f284f'),
(164, 18, 'grid_c_subtitle', 'This is the text for the third grid. Yay. Woo. It works.'),
(165, 18, '_grid_c_subtitle', 'field_5aba5804f2850'),
(166, 18, 'grid_d_image', '8'),
(167, 18, '_grid_d_image', 'field_5aba587a41646'),
(168, 18, 'grid_e_icon', 'fa-heart'),
(169, 18, '_grid_e_icon', 'field_5aba58a041647'),
(170, 18, 'grid_e_title', 'CARING'),
(171, 18, '_grid_e_title', 'field_5aba58c041648'),
(172, 18, 'grid_e_subtitle', 'This is the text for the last text grid. Yay. Woo. It works.'),
(173, 18, '_grid_e_subtitle', 'field_5aba590241649'),
(174, 18, 'grid_f_image', '8'),
(175, 18, '_grid_f_image', 'field_5aba59274164a'),
(176, 18, 'front_page_background', '8'),
(177, 18, '_front_page_background', 'field_5aba4a8ef52f8'),
(178, 18, 'front_page_header_title_left', 'FACTORY'),
(179, 18, '_front_page_header_title_left', 'field_5aba4d89f52f9'),
(180, 18, 'front_page_header_title_right', 'HARDCORE'),
(181, 18, '_front_page_header_title_right', 'field_5aba4fecf52fa'),
(182, 18, 'front_page_subtitle', 'We\'re Hardcore About Health'),
(183, 18, '_front_page_subtitle', 'field_5aba5258e312b'),
(184, 19, '_edit_last', '1'),
(185, 19, 'field_5aba6b9139a8c', 'a:14:{s:3:\"key\";s:19:\"field_5aba6b9139a8c\";s:5:\"label\";s:22:\"Front Page Info Header\";s:4:\"name\";s:22:\"front_page_info_header\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:55:\"Type what you want to be the header for the info block.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(186, 19, 'field_5aba6bed39a8d', 'a:13:{s:3:\"key\";s:19:\"field_5aba6bed39a8d\";s:5:\"label\";s:23:\"Front Page Info Content\";s:4:\"name\";s:23:\"front_page_info_content\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:56:\"Type what you want to be the content for the info block.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(187, 19, 'field_5aba6c2139a8e', 'a:14:{s:3:\"key\";s:19:\"field_5aba6c2139a8e\";s:5:\"label\";s:27:\"Front Page Info Button Name\";s:4:\"name\";s:27:\"front_page_info_button_name\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:48:\"Type what you want to be the name on the button.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(188, 19, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"12\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(189, 19, 'position', 'acf_after_title'),
(190, 19, 'layout', 'default'),
(191, 19, 'hide_on_screen', ''),
(192, 19, '_edit_lock', '1522679670:1'),
(193, 20, 'front_page_info_header', 'Come join us'),
(194, 20, '_front_page_info_header', 'field_5aba6b9139a8c'),
(195, 20, 'front_page_info_content', 'Blah blah blah. Something else that can be changed with WordPress which is really freaking cool, you know? Like wow so awesome I really love it. This is going to be an amazing site. Yayyyy WordPress.'),
(196, 20, '_front_page_info_content', 'field_5aba6bed39a8d'),
(197, 20, 'front_page_info_button_name', 'Join Us'),
(198, 20, '_front_page_info_button_name', 'field_5aba6c2139a8e'),
(199, 20, 'front_page_background', '8'),
(200, 20, '_front_page_background', 'field_5aba4a8ef52f8'),
(201, 20, 'front_page_header_title_left', 'FACTORY'),
(202, 20, '_front_page_header_title_left', 'field_5aba4d89f52f9'),
(203, 20, 'front_page_header_title_right', 'HARDCORE'),
(204, 20, '_front_page_header_title_right', 'field_5aba4fecf52fa'),
(205, 20, 'front_page_subtitle', 'We\'re Hardcore About Health'),
(206, 20, '_front_page_subtitle', 'field_5aba5258e312b'),
(207, 20, 'grid_a_icon', 'fa-tint'),
(208, 20, '_grid_a_icon', 'field_5aba538fdfae8'),
(209, 20, 'grid_a_title', 'SAUNA'),
(210, 20, '_grid_a_title', 'field_5aba54bedfae9'),
(211, 20, 'grid_a_subtitle', 'This is the text for the first grid. Yay. Woo. It works.'),
(212, 20, '_grid_a_subtitle', 'field_5aba558adfaea'),
(213, 20, 'grid_b_image', '8'),
(214, 20, '_grid_b_image', 'field_5aba5814f2851'),
(215, 20, 'grid_c_icon', 'fa-ban'),
(216, 20, '_grid_c_icon', 'field_5aba57d6f284e'),
(217, 20, 'grid_c_title', 'JUDGEMENT'),
(218, 20, '_grid_c_title', 'field_5aba57f5f284f'),
(219, 20, 'grid_c_subtitle', 'This is the text for the third grid. Yay. Woo. It works.'),
(220, 20, '_grid_c_subtitle', 'field_5aba5804f2850'),
(221, 20, 'grid_d_image', '8'),
(222, 20, '_grid_d_image', 'field_5aba587a41646'),
(223, 20, 'grid_e_icon', 'fa-heart'),
(224, 20, '_grid_e_icon', 'field_5aba58a041647'),
(225, 20, 'grid_e_title', 'CARING'),
(226, 20, '_grid_e_title', 'field_5aba58c041648'),
(227, 20, 'grid_e_subtitle', 'This is the text for the last text grid. Yay. Woo. It works.'),
(228, 20, '_grid_e_subtitle', 'field_5aba590241649'),
(229, 20, 'grid_f_image', '8'),
(230, 20, '_grid_f_image', 'field_5aba59274164a'),
(231, 12, 'front_page_info_header', 'Come join us'),
(232, 12, '_front_page_info_header', 'field_5aba6b9139a8c'),
(233, 12, 'front_page_info_content', 'Sit omnium adversarium ne, vim eu nibh interpretaris. Dolore necessitatibus vis ei. Laudem corpora per ea, ne diceret convenire honestatis quo. In purto quaeque nam, atqui elaboraret disputando sed eu, ea usu quis clita euismod. Id posse choro sit, natum invidunt nec ex. Pri velit ludus at, ius magna volumus ea.'),
(234, 12, '_front_page_info_content', 'field_5aba6bed39a8d'),
(235, 12, 'front_page_info_button_name', 'Join Us'),
(236, 12, '_front_page_info_button_name', 'field_5aba6c2139a8e'),
(237, 21, '_edit_last', '1'),
(238, 21, 'field_5aba6d3a1f4ea', 'a:14:{s:3:\"key\";s:19:\"field_5aba6d3a1f4ea\";s:5:\"label\";s:25:\"Front Page Featured Title\";s:4:\"name\";s:25:\"front_page_featured_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:52:\"Type the name that you want for the featured section\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(239, 21, 'field_5aba6db21f4eb', 'a:14:{s:3:\"key\";s:19:\"field_5aba6db21f4eb\";s:5:\"label\";s:32:\"Front Page Featured Grid A Title\";s:4:\"name\";s:32:\"front_page_featured_grid_a_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:72:\"Type the title that you want for the first grid of the featured section.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(240, 21, 'field_5aba6e1d1f4ee', 'a:11:{s:3:\"key\";s:19:\"field_5aba6e1d1f4ee\";s:5:\"label\";s:32:\"Front Page Featured Grid A Image\";s:4:\"name\";s:32:\"front_page_featured_grid_a_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:71:\"Choose the image that you want for the first grid of the featured grid.\";s:8:\"required\";s:1:\"1\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(241, 21, 'field_5aba6f0a1f4f1', 'a:13:{s:3:\"key\";s:19:\"field_5aba6f0a1f4f1\";s:5:\"label\";s:34:\"Front Page Featured Grid A Content\";s:4:\"name\";s:34:\"front_page_featured_grid_a_content\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:67:\"Type the content that you want for the first grid featured section.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(242, 21, 'field_5aba6de91f4ec', 'a:14:{s:3:\"key\";s:19:\"field_5aba6de91f4ec\";s:5:\"label\";s:32:\"Front Page Featured Grid B Title\";s:4:\"name\";s:32:\"front_page_featured_grid_b_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:73:\"Type the title that you want for the second grid of the featured section.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(243, 21, 'field_5aba6eab1f4ef', 'a:11:{s:3:\"key\";s:19:\"field_5aba6eab1f4ef\";s:5:\"label\";s:32:\"Front Page Featured Grid B Image\";s:4:\"name\";s:32:\"front_page_featured_grid_b_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:72:\"Choose the image that you want for the second grid of the featured grid.\";s:8:\"required\";s:1:\"1\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(244, 21, 'field_5aba6f451f4f2', 'a:13:{s:3:\"key\";s:19:\"field_5aba6f451f4f2\";s:5:\"label\";s:34:\"Front Page Featured Grid B Content\";s:4:\"name\";s:34:\"front_page_featured_grid_b_content\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:68:\"Type the content that you want for the second grid featured section.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(245, 21, 'field_5aba6dfd1f4ed', 'a:14:{s:3:\"key\";s:19:\"field_5aba6dfd1f4ed\";s:5:\"label\";s:32:\"Front Page Featured Grid C Title\";s:4:\"name\";s:32:\"front_page_featured_grid_c_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:72:\"Type the title that you want for the third grid of the featured section.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}'),
(246, 21, 'field_5aba6ed01f4f0', 'a:11:{s:3:\"key\";s:19:\"field_5aba6ed01f4f0\";s:5:\"label\";s:32:\"Front Page Featured Grid C Image\";s:4:\"name\";s:32:\"front_page_featured_grid_c_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:71:\"Choose the image that you want for the third grid of the featured grid.\";s:8:\"required\";s:1:\"1\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}'),
(247, 21, 'field_5aba6f581f4f3', 'a:13:{s:3:\"key\";s:19:\"field_5aba6f581f4f3\";s:5:\"label\";s:34:\"Front Page Featured Grid C Content\";s:4:\"name\";s:34:\"front_page_featured_grid_c_content\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:67:\"Type the content that you want for the third grid featured section.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}'),
(249, 21, 'position', 'acf_after_title'),
(250, 21, 'layout', 'default'),
(251, 21, 'hide_on_screen', ''),
(252, 21, '_edit_lock', '1522168918:1'),
(254, 21, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"12\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(255, 22, 'front_page_background', '8'),
(256, 22, '_front_page_background', 'field_5aba4a8ef52f8'),
(257, 22, 'front_page_header_title_left', 'FACTORY'),
(258, 22, '_front_page_header_title_left', 'field_5aba4d89f52f9'),
(259, 22, 'front_page_header_title_right', 'HARDCORE'),
(260, 22, '_front_page_header_title_right', 'field_5aba4fecf52fa'),
(261, 22, 'front_page_subtitle', 'We\'re Hardcore About Health'),
(262, 22, '_front_page_subtitle', 'field_5aba5258e312b'),
(263, 22, 'grid_a_icon', 'fa-tint'),
(264, 22, '_grid_a_icon', 'field_5aba538fdfae8'),
(265, 22, 'grid_a_title', 'SAUNA'),
(266, 22, '_grid_a_title', 'field_5aba54bedfae9'),
(267, 22, 'grid_a_subtitle', 'This is the text for the first grid. Yay. Woo. It works.'),
(268, 22, '_grid_a_subtitle', 'field_5aba558adfaea'),
(269, 22, 'grid_b_image', '8'),
(270, 22, '_grid_b_image', 'field_5aba5814f2851'),
(271, 22, 'grid_c_icon', 'fa-ban'),
(272, 22, '_grid_c_icon', 'field_5aba57d6f284e'),
(273, 22, 'grid_c_title', 'JUDGEMENT'),
(274, 22, '_grid_c_title', 'field_5aba57f5f284f'),
(275, 22, 'grid_c_subtitle', 'This is the text for the third grid. Yay. Woo. It works.'),
(276, 22, '_grid_c_subtitle', 'field_5aba5804f2850'),
(277, 22, 'grid_d_image', '8'),
(278, 22, '_grid_d_image', 'field_5aba587a41646'),
(279, 22, 'grid_e_icon', 'fa-heart'),
(280, 22, '_grid_e_icon', 'field_5aba58a041647'),
(281, 22, 'grid_e_title', 'CARING'),
(282, 22, '_grid_e_title', 'field_5aba58c041648'),
(283, 22, 'grid_e_subtitle', 'This is the text for the last text grid. Yay. Woo. It works.'),
(284, 22, '_grid_e_subtitle', 'field_5aba590241649'),
(285, 22, 'grid_f_image', '8'),
(286, 22, '_grid_f_image', 'field_5aba59274164a'),
(287, 22, 'front_page_info_header', 'Come join us'),
(288, 22, '_front_page_info_header', 'field_5aba6b9139a8c'),
(289, 22, 'front_page_info_content', 'Blah blah blah. Something else that can be changed with WordPress which is really freaking cool, you know? Like wow so awesome I really love it. This is going to be an amazing site. Yayyyy WordPress.'),
(290, 22, '_front_page_info_content', 'field_5aba6bed39a8d'),
(291, 22, 'front_page_info_button_name', 'Join Us'),
(292, 22, '_front_page_info_button_name', 'field_5aba6c2139a8e'),
(293, 22, 'front_page_featured_title', 'Featured Classes'),
(294, 22, '_front_page_featured_title', 'field_5aba6d3a1f4ea'),
(295, 22, 'front_page_featured_grid_a_title', 'Class Name 1'),
(296, 22, '_front_page_featured_grid_a_title', 'field_5aba6db21f4eb'),
(297, 22, 'front_page_featured_grid_a_image', '8'),
(298, 22, '_front_page_featured_grid_a_image', 'field_5aba6e1d1f4ee'),
(299, 22, 'front_page_featured_grid_a_content', 'Icing cookie gummies halvah ice cream. Lemon drops icing danish jujubes fruitcake cake sesame snaps liquorice. Pastry icing soufflé jelly-o gummies.'),
(300, 22, '_front_page_featured_grid_a_content', 'field_5aba6f0a1f4f1'),
(301, 22, 'front_page_featured_grid_b_title', 'Class Name 2'),
(302, 22, '_front_page_featured_grid_b_title', 'field_5aba6de91f4ec'),
(303, 22, 'front_page_featured_grid_b_image', '8'),
(304, 22, '_front_page_featured_grid_b_image', 'field_5aba6eab1f4ef'),
(305, 22, 'front_page_featured_grid_b_content', 'Icing cookie gummies halvah ice cream. Lemon drops icing danish jujubes fruitcake cake sesame snaps liquorice. Pastry icing soufflé jelly-o gummies.'),
(306, 22, '_front_page_featured_grid_b_content', 'field_5aba6f451f4f2'),
(307, 22, 'front_page_featured_grid_c_title', 'Class Name 3'),
(308, 22, '_front_page_featured_grid_c_title', 'field_5aba6dfd1f4ed'),
(309, 22, 'front_page_featured_grid_c_image', '8'),
(310, 22, '_front_page_featured_grid_c_image', 'field_5aba6ed01f4f0'),
(311, 22, 'front_page_featured_grid_c_content', 'Icing cookie gummies halvah ice cream. Lemon drops icing danish jujubes fruitcake cake sesame snaps liquorice. Pastry icing soufflé jelly-o gummies.'),
(312, 22, '_front_page_featured_grid_c_content', 'field_5aba6f581f4f3'),
(313, 12, 'front_page_featured_title', 'Featured Classes'),
(314, 12, '_front_page_featured_title', 'field_5aba6d3a1f4ea'),
(315, 12, 'front_page_featured_grid_a_title', 'Class Name 1'),
(316, 12, '_front_page_featured_grid_a_title', 'field_5aba6db21f4eb'),
(317, 12, 'front_page_featured_grid_a_image', '8'),
(318, 12, '_front_page_featured_grid_a_image', 'field_5aba6e1d1f4ee'),
(319, 12, 'front_page_featured_grid_a_content', 'Icing cookie gummies halvah ice cream. Lemon drops icing danish jujubes fruitcake cake sesame snaps liquorice. Pastry icing soufflé jelly-o gummies.'),
(320, 12, '_front_page_featured_grid_a_content', 'field_5aba6f0a1f4f1'),
(321, 12, 'front_page_featured_grid_b_title', 'Class Name 2'),
(322, 12, '_front_page_featured_grid_b_title', 'field_5aba6de91f4ec'),
(323, 12, 'front_page_featured_grid_b_image', '8'),
(324, 12, '_front_page_featured_grid_b_image', 'field_5aba6eab1f4ef'),
(325, 12, 'front_page_featured_grid_b_content', 'Icing cookie gummies halvah ice cream. Lemon drops icing danish jujubes fruitcake cake sesame snaps liquorice. Pastry icing soufflé jelly-o gummies.'),
(326, 12, '_front_page_featured_grid_b_content', 'field_5aba6f451f4f2'),
(327, 12, 'front_page_featured_grid_c_title', 'Class Name 3'),
(328, 12, '_front_page_featured_grid_c_title', 'field_5aba6dfd1f4ed'),
(329, 12, 'front_page_featured_grid_c_image', '8'),
(330, 12, '_front_page_featured_grid_c_image', 'field_5aba6ed01f4f0'),
(331, 12, 'front_page_featured_grid_c_content', 'Icing cookie gummies halvah ice cream. Lemon drops icing danish jujubes fruitcake cake sesame snaps liquorice. Pastry icing soufflé jelly-o gummies.'),
(332, 12, '_front_page_featured_grid_c_content', 'field_5aba6f581f4f3'),
(333, 10, 'field_5aba760bc93bc', 'a:9:{s:3:\"key\";s:19:\"field_5aba760bc93bc\";s:5:\"label\";s:34:\"Front Page Header Title Left Color\";s:4:\"name\";s:34:\"front_page_header_title_left_color\";s:4:\"type\";s:12:\"color_picker\";s:12:\"instructions\";s:49:\"Select the color for the left side of the header.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(334, 10, 'field_5aba7647c93bd', 'a:9:{s:3:\"key\";s:19:\"field_5aba7647c93bd\";s:5:\"label\";s:35:\"Front Page Header Title Right Color\";s:4:\"name\";s:35:\"front_page_header_title_right_color\";s:4:\"type\";s:12:\"color_picker\";s:12:\"instructions\";s:50:\"Select the color for the right side of the header.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(336, 23, 'front_page_background', '8'),
(337, 23, '_front_page_background', 'field_5aba4a8ef52f8'),
(338, 23, 'front_page_header_title_left', 'FACTORY'),
(339, 23, '_front_page_header_title_left', 'field_5aba4d89f52f9'),
(340, 23, 'front_page_header_left_color', '#ffffff'),
(341, 23, '_front_page_header_left_color', 'field_5aba760bc93bc'),
(342, 23, 'front_page_header_title_right', 'HARDCORE'),
(343, 23, '_front_page_header_title_right', 'field_5aba4fecf52fa'),
(344, 23, 'front_page_header_right_color', '#b6282d'),
(345, 23, '_front_page_header_right_color', 'field_5aba7647c93bd'),
(346, 23, 'front_page_subtitle', 'We\'re Hardcore About Health'),
(347, 23, '_front_page_subtitle', 'field_5aba5258e312b'),
(348, 23, 'grid_a_icon', 'fa-tint'),
(349, 23, '_grid_a_icon', 'field_5aba538fdfae8'),
(350, 23, 'grid_a_title', 'SAUNA'),
(351, 23, '_grid_a_title', 'field_5aba54bedfae9'),
(352, 23, 'grid_a_subtitle', 'This is the text for the first grid. Yay. Woo. It works.'),
(353, 23, '_grid_a_subtitle', 'field_5aba558adfaea'),
(354, 23, 'grid_b_image', '8'),
(355, 23, '_grid_b_image', 'field_5aba5814f2851'),
(356, 23, 'grid_c_icon', 'fa-ban'),
(357, 23, '_grid_c_icon', 'field_5aba57d6f284e'),
(358, 23, 'grid_c_title', 'JUDGEMENT'),
(359, 23, '_grid_c_title', 'field_5aba57f5f284f'),
(360, 23, 'grid_c_subtitle', 'This is the text for the third grid. Yay. Woo. It works.'),
(361, 23, '_grid_c_subtitle', 'field_5aba5804f2850'),
(362, 23, 'grid_d_image', '8'),
(363, 23, '_grid_d_image', 'field_5aba587a41646'),
(364, 23, 'grid_e_icon', 'fa-heart'),
(365, 23, '_grid_e_icon', 'field_5aba58a041647'),
(366, 23, 'grid_e_title', 'CARING'),
(367, 23, '_grid_e_title', 'field_5aba58c041648'),
(368, 23, 'grid_e_subtitle', 'This is the text for the last text grid. Yay. Woo. It works.'),
(369, 23, '_grid_e_subtitle', 'field_5aba590241649'),
(370, 23, 'grid_f_image', '8'),
(371, 23, '_grid_f_image', 'field_5aba59274164a'),
(372, 23, 'front_page_info_header', 'Come join us'),
(373, 23, '_front_page_info_header', 'field_5aba6b9139a8c'),
(374, 23, 'front_page_info_content', 'Blah blah blah. Something else that can be changed with WordPress which is really freaking cool, you know? Like wow so awesome I really love it. This is going to be an amazing site. Yayyyy WordPress.'),
(375, 23, '_front_page_info_content', 'field_5aba6bed39a8d'),
(376, 23, 'front_page_info_button_name', 'Join Us'),
(377, 23, '_front_page_info_button_name', 'field_5aba6c2139a8e'),
(378, 23, 'front_page_featured_title', 'Featured Classes'),
(379, 23, '_front_page_featured_title', 'field_5aba6d3a1f4ea'),
(380, 23, 'front_page_featured_grid_a_title', 'Class Name 1'),
(381, 23, '_front_page_featured_grid_a_title', 'field_5aba6db21f4eb'),
(382, 23, 'front_page_featured_grid_a_image', '8'),
(383, 23, '_front_page_featured_grid_a_image', 'field_5aba6e1d1f4ee'),
(384, 23, 'front_page_featured_grid_a_content', 'Icing cookie gummies halvah ice cream. Lemon drops icing danish jujubes fruitcake cake sesame snaps liquorice. Pastry icing soufflé jelly-o gummies.'),
(385, 23, '_front_page_featured_grid_a_content', 'field_5aba6f0a1f4f1'),
(386, 23, 'front_page_featured_grid_b_title', 'Class Name 2'),
(387, 23, '_front_page_featured_grid_b_title', 'field_5aba6de91f4ec'),
(388, 23, 'front_page_featured_grid_b_image', '8'),
(389, 23, '_front_page_featured_grid_b_image', 'field_5aba6eab1f4ef'),
(390, 23, 'front_page_featured_grid_b_content', 'Icing cookie gummies halvah ice cream. Lemon drops icing danish jujubes fruitcake cake sesame snaps liquorice. Pastry icing soufflé jelly-o gummies.'),
(391, 23, '_front_page_featured_grid_b_content', 'field_5aba6f451f4f2'),
(392, 23, 'front_page_featured_grid_c_title', 'Class Name 3'),
(393, 23, '_front_page_featured_grid_c_title', 'field_5aba6dfd1f4ed'),
(394, 23, 'front_page_featured_grid_c_image', '8'),
(395, 23, '_front_page_featured_grid_c_image', 'field_5aba6ed01f4f0'),
(396, 23, 'front_page_featured_grid_c_content', 'Icing cookie gummies halvah ice cream. Lemon drops icing danish jujubes fruitcake cake sesame snaps liquorice. Pastry icing soufflé jelly-o gummies.'),
(397, 23, '_front_page_featured_grid_c_content', 'field_5aba6f581f4f3'),
(398, 12, 'front_page_header_left_color', '#ffffff'),
(399, 12, '_front_page_header_left_color', 'field_5aba760bc93bc'),
(400, 12, 'front_page_header_right_color', '#b6282d'),
(401, 12, '_front_page_header_right_color', 'field_5aba7647c93bd'),
(403, 24, 'front_page_background', '8'),
(404, 24, '_front_page_background', 'field_5aba4a8ef52f8'),
(405, 24, 'front_page_header_title_left', 'FACTORY'),
(406, 24, '_front_page_header_title_left', 'field_5aba4d89f52f9'),
(407, 24, 'front_page_header_title_left_color', '#ffffff'),
(408, 24, '_front_page_header_title_left_color', 'field_5aba760bc93bc'),
(409, 24, 'front_page_header_title_right', 'HARDCORE'),
(410, 24, '_front_page_header_title_right', 'field_5aba4fecf52fa'),
(411, 24, 'front_page_header_title_right_color', '#b6282d'),
(412, 24, '_front_page_header_title_right_color', 'field_5aba7647c93bd'),
(413, 24, 'front_page_subtitle', 'We\'re Hardcore About Health'),
(414, 24, '_front_page_subtitle', 'field_5aba5258e312b'),
(415, 24, 'grid_a_icon', 'fa-tint'),
(416, 24, '_grid_a_icon', 'field_5aba538fdfae8'),
(417, 24, 'grid_a_title', 'SAUNA'),
(418, 24, '_grid_a_title', 'field_5aba54bedfae9'),
(419, 24, 'grid_a_subtitle', 'This is the text for the first grid. Yay. Woo. It works.'),
(420, 24, '_grid_a_subtitle', 'field_5aba558adfaea'),
(421, 24, 'grid_b_image', '8'),
(422, 24, '_grid_b_image', 'field_5aba5814f2851'),
(423, 24, 'grid_c_icon', 'fa-ban'),
(424, 24, '_grid_c_icon', 'field_5aba57d6f284e'),
(425, 24, 'grid_c_title', 'JUDGEMENT'),
(426, 24, '_grid_c_title', 'field_5aba57f5f284f'),
(427, 24, 'grid_c_subtitle', 'This is the text for the third grid. Yay. Woo. It works.'),
(428, 24, '_grid_c_subtitle', 'field_5aba5804f2850'),
(429, 24, 'grid_d_image', '8'),
(430, 24, '_grid_d_image', 'field_5aba587a41646'),
(431, 24, 'grid_e_icon', 'fa-heart'),
(432, 24, '_grid_e_icon', 'field_5aba58a041647'),
(433, 24, 'grid_e_title', 'CARING'),
(434, 24, '_grid_e_title', 'field_5aba58c041648'),
(435, 24, 'grid_e_subtitle', 'This is the text for the last text grid. Yay. Woo. It works.'),
(436, 24, '_grid_e_subtitle', 'field_5aba590241649'),
(437, 24, 'grid_f_image', '8'),
(438, 24, '_grid_f_image', 'field_5aba59274164a'),
(439, 24, 'front_page_info_header', 'Come join us'),
(440, 24, '_front_page_info_header', 'field_5aba6b9139a8c'),
(441, 24, 'front_page_info_content', 'Blah blah blah. Something else that can be changed with WordPress which is really freaking cool, you know? Like wow so awesome I really love it. This is going to be an amazing site. Yayyyy WordPress.'),
(442, 24, '_front_page_info_content', 'field_5aba6bed39a8d'),
(443, 24, 'front_page_info_button_name', 'Join Us'),
(444, 24, '_front_page_info_button_name', 'field_5aba6c2139a8e'),
(445, 24, 'front_page_featured_title', 'Featured Classes'),
(446, 24, '_front_page_featured_title', 'field_5aba6d3a1f4ea'),
(447, 24, 'front_page_featured_grid_a_title', 'Class Name 1'),
(448, 24, '_front_page_featured_grid_a_title', 'field_5aba6db21f4eb'),
(449, 24, 'front_page_featured_grid_a_image', '8'),
(450, 24, '_front_page_featured_grid_a_image', 'field_5aba6e1d1f4ee'),
(451, 24, 'front_page_featured_grid_a_content', 'Icing cookie gummies halvah ice cream. Lemon drops icing danish jujubes fruitcake cake sesame snaps liquorice. Pastry icing soufflé jelly-o gummies.'),
(452, 24, '_front_page_featured_grid_a_content', 'field_5aba6f0a1f4f1'),
(453, 24, 'front_page_featured_grid_b_title', 'Class Name 2'),
(454, 24, '_front_page_featured_grid_b_title', 'field_5aba6de91f4ec'),
(455, 24, 'front_page_featured_grid_b_image', '8');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(456, 24, '_front_page_featured_grid_b_image', 'field_5aba6eab1f4ef'),
(457, 24, 'front_page_featured_grid_b_content', 'Icing cookie gummies halvah ice cream. Lemon drops icing danish jujubes fruitcake cake sesame snaps liquorice. Pastry icing soufflé jelly-o gummies.'),
(458, 24, '_front_page_featured_grid_b_content', 'field_5aba6f451f4f2'),
(459, 24, 'front_page_featured_grid_c_title', 'Class Name 3'),
(460, 24, '_front_page_featured_grid_c_title', 'field_5aba6dfd1f4ed'),
(461, 24, 'front_page_featured_grid_c_image', '8'),
(462, 24, '_front_page_featured_grid_c_image', 'field_5aba6ed01f4f0'),
(463, 24, 'front_page_featured_grid_c_content', 'Icing cookie gummies halvah ice cream. Lemon drops icing danish jujubes fruitcake cake sesame snaps liquorice. Pastry icing soufflé jelly-o gummies.'),
(464, 24, '_front_page_featured_grid_c_content', 'field_5aba6f581f4f3'),
(465, 12, 'front_page_header_title_left_color', '#ffffff'),
(466, 12, '_front_page_header_title_left_color', 'field_5aba760bc93bc'),
(467, 12, 'front_page_header_title_right_color', '#b6282d'),
(468, 12, '_front_page_header_title_right_color', 'field_5aba7647c93bd'),
(469, 10, 'field_5aba77d6a1daf', 'a:9:{s:3:\"key\";s:19:\"field_5aba77d6a1daf\";s:5:\"label\";s:25:\"Front Page Subtitle Color\";s:4:\"name\";s:25:\"front_page_subtitle_color\";s:4:\"type\";s:12:\"color_picker\";s:12:\"instructions\";s:41:\"Select the color for the header subtitle.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(471, 12, 'front_page_subtitle_color', '#595959'),
(472, 12, '_front_page_subtitle_color', 'field_5aba77d6a1daf'),
(473, 10, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"12\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(474, 26, '_edit_last', '1'),
(475, 26, '_edit_lock', '1522685854:1'),
(476, 26, '_wp_page_template', 'aboutus-tpl.php'),
(477, 31, '_edit_last', '1'),
(478, 31, '_edit_lock', '1522714844:1'),
(479, 31, '_wp_page_template', 'contact-tpl.php'),
(480, 33, '_edit_last', '1'),
(481, 33, '_edit_lock', '1522714646:1'),
(482, 33, '_wp_page_template', 'classes-tpl.php'),
(483, 35, '_edit_last', '1'),
(484, 35, '_edit_lock', '1522713118:1'),
(485, 35, '_wp_page_template', 'rooms-tpl.php'),
(486, 12, '_wp_page_template', 'default'),
(487, 37, 'front_page_background', '8'),
(488, 37, '_front_page_background', 'field_5aba4a8ef52f8'),
(489, 37, 'front_page_header_title_left', 'FACTORY'),
(490, 37, '_front_page_header_title_left', 'field_5aba4d89f52f9'),
(491, 37, 'front_page_header_title_left_color', '#ffffff'),
(492, 37, '_front_page_header_title_left_color', 'field_5aba760bc93bc'),
(493, 37, 'front_page_header_title_right', 'HARDCORE'),
(494, 37, '_front_page_header_title_right', 'field_5aba4fecf52fa'),
(495, 37, 'front_page_header_title_right_color', '#b6282d'),
(496, 37, '_front_page_header_title_right_color', 'field_5aba7647c93bd'),
(497, 37, 'front_page_subtitle', 'Something else here'),
(498, 37, '_front_page_subtitle', 'field_5aba5258e312b'),
(499, 37, 'front_page_subtitle_color', '#595959'),
(500, 37, '_front_page_subtitle_color', 'field_5aba77d6a1daf'),
(501, 37, 'grid_a_icon', 'fa-tint'),
(502, 37, '_grid_a_icon', 'field_5aba538fdfae8'),
(503, 37, 'grid_a_title', 'SAUNA'),
(504, 37, '_grid_a_title', 'field_5aba54bedfae9'),
(505, 37, 'grid_a_subtitle', 'This is the text for the first grid. Yay. Woo. It works.'),
(506, 37, '_grid_a_subtitle', 'field_5aba558adfaea'),
(507, 37, 'grid_b_image', '8'),
(508, 37, '_grid_b_image', 'field_5aba5814f2851'),
(509, 37, 'grid_c_icon', 'fa-ban'),
(510, 37, '_grid_c_icon', 'field_5aba57d6f284e'),
(511, 37, 'grid_c_title', 'JUDGEMENT'),
(512, 37, '_grid_c_title', 'field_5aba57f5f284f'),
(513, 37, 'grid_c_subtitle', 'This is the text for the third grid. Yay. Woo. It works.'),
(514, 37, '_grid_c_subtitle', 'field_5aba5804f2850'),
(515, 37, 'grid_d_image', '8'),
(516, 37, '_grid_d_image', 'field_5aba587a41646'),
(517, 37, 'grid_e_icon', 'fa-heart'),
(518, 37, '_grid_e_icon', 'field_5aba58a041647'),
(519, 37, 'grid_e_title', 'CARING'),
(520, 37, '_grid_e_title', 'field_5aba58c041648'),
(521, 37, 'grid_e_subtitle', 'This is the text for the last text grid. Yay. Woo. It works.'),
(522, 37, '_grid_e_subtitle', 'field_5aba590241649'),
(523, 37, 'grid_f_image', '8'),
(524, 37, '_grid_f_image', 'field_5aba59274164a'),
(525, 37, 'front_page_info_header', 'Come join us'),
(526, 37, '_front_page_info_header', 'field_5aba6b9139a8c'),
(527, 37, 'front_page_info_content', 'Blah blah blah. Something else that can be changed with WordPress which is really freaking cool, you know? Like wow so awesome I really love it. This is going to be an amazing site. Yayyyy WordPress.'),
(528, 37, '_front_page_info_content', 'field_5aba6bed39a8d'),
(529, 37, 'front_page_info_button_name', 'Join Us'),
(530, 37, '_front_page_info_button_name', 'field_5aba6c2139a8e'),
(531, 37, 'front_page_featured_title', 'Featured Classes'),
(532, 37, '_front_page_featured_title', 'field_5aba6d3a1f4ea'),
(533, 37, 'front_page_featured_grid_a_title', 'Class Name 1'),
(534, 37, '_front_page_featured_grid_a_title', 'field_5aba6db21f4eb'),
(535, 37, 'front_page_featured_grid_a_image', '8'),
(536, 37, '_front_page_featured_grid_a_image', 'field_5aba6e1d1f4ee'),
(537, 37, 'front_page_featured_grid_a_content', 'Icing cookie gummies halvah ice cream. Lemon drops icing danish jujubes fruitcake cake sesame snaps liquorice. Pastry icing soufflé jelly-o gummies.'),
(538, 37, '_front_page_featured_grid_a_content', 'field_5aba6f0a1f4f1'),
(539, 37, 'front_page_featured_grid_b_title', 'Class Name 2'),
(540, 37, '_front_page_featured_grid_b_title', 'field_5aba6de91f4ec'),
(541, 37, 'front_page_featured_grid_b_image', '8'),
(542, 37, '_front_page_featured_grid_b_image', 'field_5aba6eab1f4ef'),
(543, 37, 'front_page_featured_grid_b_content', 'Icing cookie gummies halvah ice cream. Lemon drops icing danish jujubes fruitcake cake sesame snaps liquorice. Pastry icing soufflé jelly-o gummies.'),
(544, 37, '_front_page_featured_grid_b_content', 'field_5aba6f451f4f2'),
(545, 37, 'front_page_featured_grid_c_title', 'Class Name 3'),
(546, 37, '_front_page_featured_grid_c_title', 'field_5aba6dfd1f4ed'),
(547, 37, 'front_page_featured_grid_c_image', '8'),
(548, 37, '_front_page_featured_grid_c_image', 'field_5aba6ed01f4f0'),
(549, 37, 'front_page_featured_grid_c_content', 'Icing cookie gummies halvah ice cream. Lemon drops icing danish jujubes fruitcake cake sesame snaps liquorice. Pastry icing soufflé jelly-o gummies.'),
(550, 37, '_front_page_featured_grid_c_content', 'field_5aba6f581f4f3'),
(551, 38, 'front_page_background', '8'),
(552, 38, '_front_page_background', 'field_5aba4a8ef52f8'),
(553, 38, 'front_page_header_title_left', 'FACTORY'),
(554, 38, '_front_page_header_title_left', 'field_5aba4d89f52f9'),
(555, 38, 'front_page_header_title_left_color', '#ffffff'),
(556, 38, '_front_page_header_title_left_color', 'field_5aba760bc93bc'),
(557, 38, 'front_page_header_title_right', 'HARDCORE'),
(558, 38, '_front_page_header_title_right', 'field_5aba4fecf52fa'),
(559, 38, 'front_page_header_title_right_color', '#b6282d'),
(560, 38, '_front_page_header_title_right_color', 'field_5aba7647c93bd'),
(561, 38, 'front_page_subtitle', 'Something else here'),
(562, 38, '_front_page_subtitle', 'field_5aba5258e312b'),
(563, 38, 'front_page_subtitle_color', '#595959'),
(564, 38, '_front_page_subtitle_color', 'field_5aba77d6a1daf'),
(565, 38, 'grid_a_icon', 'fa-tint'),
(566, 38, '_grid_a_icon', 'field_5aba538fdfae8'),
(567, 38, 'grid_a_title', 'SAUNA'),
(568, 38, '_grid_a_title', 'field_5aba54bedfae9'),
(569, 38, 'grid_a_subtitle', 'Lorem ipsum dolor sit amet, case veniam sit at, soluta numquam pri ei.'),
(570, 38, '_grid_a_subtitle', 'field_5aba558adfaea'),
(571, 38, 'grid_b_image', '8'),
(572, 38, '_grid_b_image', 'field_5aba5814f2851'),
(573, 38, 'grid_c_icon', 'fa-ban'),
(574, 38, '_grid_c_icon', 'field_5aba57d6f284e'),
(575, 38, 'grid_c_title', 'JUDGEMENT'),
(576, 38, '_grid_c_title', 'field_5aba57f5f284f'),
(577, 38, 'grid_c_subtitle', 'Te dico nonumy philosophia sed, his senserit consectetuer et.'),
(578, 38, '_grid_c_subtitle', 'field_5aba5804f2850'),
(579, 38, 'grid_d_image', '8'),
(580, 38, '_grid_d_image', 'field_5aba587a41646'),
(581, 38, 'grid_e_icon', 'fa-heart'),
(582, 38, '_grid_e_icon', 'field_5aba58a041647'),
(583, 38, 'grid_e_title', 'CARING'),
(584, 38, '_grid_e_title', 'field_5aba58c041648'),
(585, 38, 'grid_e_subtitle', 'Ut tollit appareat cum, cibo prodesset sea cu, ei facete volumus vix.'),
(586, 38, '_grid_e_subtitle', 'field_5aba590241649'),
(587, 38, 'grid_f_image', '8'),
(588, 38, '_grid_f_image', 'field_5aba59274164a'),
(589, 38, 'front_page_info_header', 'Come join us'),
(590, 38, '_front_page_info_header', 'field_5aba6b9139a8c'),
(591, 38, 'front_page_info_content', 'Blah blah blah. Something else that can be changed with WordPress which is really freaking cool, you know? Like wow so awesome I really love it. This is going to be an amazing site. Yayyyy WordPress.'),
(592, 38, '_front_page_info_content', 'field_5aba6bed39a8d'),
(593, 38, 'front_page_info_button_name', 'Join Us'),
(594, 38, '_front_page_info_button_name', 'field_5aba6c2139a8e'),
(595, 38, 'front_page_featured_title', 'Featured Classes'),
(596, 38, '_front_page_featured_title', 'field_5aba6d3a1f4ea'),
(597, 38, 'front_page_featured_grid_a_title', 'Class Name 1'),
(598, 38, '_front_page_featured_grid_a_title', 'field_5aba6db21f4eb'),
(599, 38, 'front_page_featured_grid_a_image', '8'),
(600, 38, '_front_page_featured_grid_a_image', 'field_5aba6e1d1f4ee'),
(601, 38, 'front_page_featured_grid_a_content', 'Icing cookie gummies halvah ice cream. Lemon drops icing danish jujubes fruitcake cake sesame snaps liquorice. Pastry icing soufflé jelly-o gummies.'),
(602, 38, '_front_page_featured_grid_a_content', 'field_5aba6f0a1f4f1'),
(603, 38, 'front_page_featured_grid_b_title', 'Class Name 2'),
(604, 38, '_front_page_featured_grid_b_title', 'field_5aba6de91f4ec'),
(605, 38, 'front_page_featured_grid_b_image', '8'),
(606, 38, '_front_page_featured_grid_b_image', 'field_5aba6eab1f4ef'),
(607, 38, 'front_page_featured_grid_b_content', 'Icing cookie gummies halvah ice cream. Lemon drops icing danish jujubes fruitcake cake sesame snaps liquorice. Pastry icing soufflé jelly-o gummies.'),
(608, 38, '_front_page_featured_grid_b_content', 'field_5aba6f451f4f2'),
(609, 38, 'front_page_featured_grid_c_title', 'Class Name 3'),
(610, 38, '_front_page_featured_grid_c_title', 'field_5aba6dfd1f4ed'),
(611, 38, 'front_page_featured_grid_c_image', '8'),
(612, 38, '_front_page_featured_grid_c_image', 'field_5aba6ed01f4f0'),
(613, 38, 'front_page_featured_grid_c_content', 'Icing cookie gummies halvah ice cream. Lemon drops icing danish jujubes fruitcake cake sesame snaps liquorice. Pastry icing soufflé jelly-o gummies.'),
(614, 38, '_front_page_featured_grid_c_content', 'field_5aba6f581f4f3'),
(615, 39, 'front_page_background', '8'),
(616, 39, '_front_page_background', 'field_5aba4a8ef52f8'),
(617, 39, 'front_page_header_title_left', 'FACTORY'),
(618, 39, '_front_page_header_title_left', 'field_5aba4d89f52f9'),
(619, 39, 'front_page_header_title_left_color', '#ffffff'),
(620, 39, '_front_page_header_title_left_color', 'field_5aba760bc93bc'),
(621, 39, 'front_page_header_title_right', 'HARDCORE'),
(622, 39, '_front_page_header_title_right', 'field_5aba4fecf52fa'),
(623, 39, 'front_page_header_title_right_color', '#b6282d'),
(624, 39, '_front_page_header_title_right_color', 'field_5aba7647c93bd'),
(625, 39, 'front_page_subtitle', 'Something else here'),
(626, 39, '_front_page_subtitle', 'field_5aba5258e312b'),
(627, 39, 'front_page_subtitle_color', '#595959'),
(628, 39, '_front_page_subtitle_color', 'field_5aba77d6a1daf'),
(629, 39, 'grid_a_icon', 'fa-tint'),
(630, 39, '_grid_a_icon', 'field_5aba538fdfae8'),
(631, 39, 'grid_a_title', 'SAUNA'),
(632, 39, '_grid_a_title', 'field_5aba54bedfae9'),
(633, 39, 'grid_a_subtitle', 'Lorem ipsum dolor sit amet, case veniam sit at, soluta numquam pri ei.'),
(634, 39, '_grid_a_subtitle', 'field_5aba558adfaea'),
(635, 39, 'grid_b_image', '8'),
(636, 39, '_grid_b_image', 'field_5aba5814f2851'),
(637, 39, 'grid_c_icon', 'fa-ban'),
(638, 39, '_grid_c_icon', 'field_5aba57d6f284e'),
(639, 39, 'grid_c_title', 'JUDGEMENT'),
(640, 39, '_grid_c_title', 'field_5aba57f5f284f'),
(641, 39, 'grid_c_subtitle', 'Te dico nonumy philosophia sed, his senserit consectetuer et.'),
(642, 39, '_grid_c_subtitle', 'field_5aba5804f2850'),
(643, 39, 'grid_d_image', '8'),
(644, 39, '_grid_d_image', 'field_5aba587a41646'),
(645, 39, 'grid_e_icon', 'fa-heart'),
(646, 39, '_grid_e_icon', 'field_5aba58a041647'),
(647, 39, 'grid_e_title', 'CARING'),
(648, 39, '_grid_e_title', 'field_5aba58c041648'),
(649, 39, 'grid_e_subtitle', 'Ut tollit appareat cum, cibo prodesset sea cu, ei facete volumus vix.'),
(650, 39, '_grid_e_subtitle', 'field_5aba590241649'),
(651, 39, 'grid_f_image', '8'),
(652, 39, '_grid_f_image', 'field_5aba59274164a'),
(653, 39, 'front_page_info_header', 'Come join us'),
(654, 39, '_front_page_info_header', 'field_5aba6b9139a8c'),
(655, 39, 'front_page_info_content', 'Sit omnium adversarium ne, vim eu nibh interpretaris. Dolore necessitatibus vis ei. Laudem corpora per ea, ne diceret convenire honestatis quo. In purto quaeque nam, atqui elaboraret disputando sed eu, ea usu quis clita euismod. Id posse choro sit, natum invidunt nec ex. Pri velit ludus at, ius magna volumus ea.'),
(656, 39, '_front_page_info_content', 'field_5aba6bed39a8d'),
(657, 39, 'front_page_info_button_name', 'Join Us'),
(658, 39, '_front_page_info_button_name', 'field_5aba6c2139a8e'),
(659, 39, 'front_page_featured_title', 'Featured Classes'),
(660, 39, '_front_page_featured_title', 'field_5aba6d3a1f4ea'),
(661, 39, 'front_page_featured_grid_a_title', 'Class Name 1'),
(662, 39, '_front_page_featured_grid_a_title', 'field_5aba6db21f4eb'),
(663, 39, 'front_page_featured_grid_a_image', '8'),
(664, 39, '_front_page_featured_grid_a_image', 'field_5aba6e1d1f4ee'),
(665, 39, 'front_page_featured_grid_a_content', 'Icing cookie gummies halvah ice cream. Lemon drops icing danish jujubes fruitcake cake sesame snaps liquorice. Pastry icing soufflé jelly-o gummies.'),
(666, 39, '_front_page_featured_grid_a_content', 'field_5aba6f0a1f4f1'),
(667, 39, 'front_page_featured_grid_b_title', 'Class Name 2'),
(668, 39, '_front_page_featured_grid_b_title', 'field_5aba6de91f4ec'),
(669, 39, 'front_page_featured_grid_b_image', '8'),
(670, 39, '_front_page_featured_grid_b_image', 'field_5aba6eab1f4ef'),
(671, 39, 'front_page_featured_grid_b_content', 'Icing cookie gummies halvah ice cream. Lemon drops icing danish jujubes fruitcake cake sesame snaps liquorice. Pastry icing soufflé jelly-o gummies.'),
(672, 39, '_front_page_featured_grid_b_content', 'field_5aba6f451f4f2'),
(673, 39, 'front_page_featured_grid_c_title', 'Class Name 3'),
(674, 39, '_front_page_featured_grid_c_title', 'field_5aba6dfd1f4ed'),
(675, 39, 'front_page_featured_grid_c_image', '8'),
(676, 39, '_front_page_featured_grid_c_image', 'field_5aba6ed01f4f0'),
(677, 39, 'front_page_featured_grid_c_content', 'Icing cookie gummies halvah ice cream. Lemon drops icing danish jujubes fruitcake cake sesame snaps liquorice. Pastry icing soufflé jelly-o gummies.'),
(678, 39, '_front_page_featured_grid_c_content', 'field_5aba6f581f4f3'),
(679, 40, '_edit_last', '1'),
(680, 40, 'field_5ac24479e9227', 'a:14:{s:3:\"key\";s:19:\"field_5ac24479e9227\";s:5:\"label\";s:20:\"Classes Grid A Title\";s:4:\"name\";s:20:\"classes_grid_a_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(681, 40, 'field_5ac246bae9230', 'a:11:{s:3:\"key\";s:19:\"field_5ac246bae9230\";s:5:\"label\";s:20:\"Classes Grid A Image\";s:4:\"name\";s:20:\"classes_grid_a_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(682, 40, 'field_5ac2476ce9239', 'a:13:{s:3:\"key\";s:19:\"field_5ac2476ce9239\";s:5:\"label\";s:22:\"Classes Grid A Content\";s:4:\"name\";s:22:\"classes_grid_a_content\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(683, 40, 'field_5ac2462fe9228', 'a:14:{s:3:\"key\";s:19:\"field_5ac2462fe9228\";s:5:\"label\";s:20:\"Classes Grid B Title\";s:4:\"name\";s:20:\"classes_grid_b_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(684, 40, 'field_5ac246dde9231', 'a:11:{s:3:\"key\";s:19:\"field_5ac246dde9231\";s:5:\"label\";s:20:\"Classes Grid B Image\";s:4:\"name\";s:20:\"classes_grid_b_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(685, 40, 'field_5ac2477fe923a', 'a:13:{s:3:\"key\";s:19:\"field_5ac2477fe923a\";s:5:\"label\";s:22:\"Classes Grid B Content\";s:4:\"name\";s:22:\"classes_grid_b_content\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}'),
(686, 40, 'field_5ac24644e9229', 'a:14:{s:3:\"key\";s:19:\"field_5ac24644e9229\";s:5:\"label\";s:20:\"Classes Grid C Title\";s:4:\"name\";s:20:\"classes_grid_c_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}'),
(687, 40, 'field_5ac246eae9232', 'a:11:{s:3:\"key\";s:19:\"field_5ac246eae9232\";s:5:\"label\";s:20:\"Classes Grid C Image\";s:4:\"name\";s:20:\"classes_grid_c_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}'),
(688, 40, 'field_5ac24793e923b', 'a:13:{s:3:\"key\";s:19:\"field_5ac24793e923b\";s:5:\"label\";s:22:\"Classes Grid C Content\";s:4:\"name\";s:22:\"classes_grid_c_content\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:10;}'),
(689, 40, 'field_5ac24651e922a', 'a:14:{s:3:\"key\";s:19:\"field_5ac24651e922a\";s:5:\"label\";s:20:\"Classes Grid D Title\";s:4:\"name\";s:20:\"classes_grid_d_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:11;}'),
(690, 40, 'field_5ac2470be9233', 'a:11:{s:3:\"key\";s:19:\"field_5ac2470be9233\";s:5:\"label\";s:20:\"Classes Grid D Image\";s:4:\"name\";s:20:\"classes_grid_d_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:12;}'),
(691, 40, 'field_5ac2479fe923c', 'a:13:{s:3:\"key\";s:19:\"field_5ac2479fe923c\";s:5:\"label\";s:22:\"Classes Grid D Content\";s:4:\"name\";s:22:\"classes_grid_d_content\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:13;}'),
(692, 40, 'field_5ac2465ee922b', 'a:14:{s:3:\"key\";s:19:\"field_5ac2465ee922b\";s:5:\"label\";s:20:\"Classes Grid E Title\";s:4:\"name\";s:20:\"classes_grid_e_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:14;}'),
(693, 40, 'field_5ac24718e9234', 'a:11:{s:3:\"key\";s:19:\"field_5ac24718e9234\";s:5:\"label\";s:20:\"Classes Grid E Image\";s:4:\"name\";s:20:\"classes_grid_e_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:15;}'),
(694, 40, 'field_5ac247b0e923d', 'a:13:{s:3:\"key\";s:19:\"field_5ac247b0e923d\";s:5:\"label\";s:22:\"Classes Grid E Content\";s:4:\"name\";s:22:\"classes_grid_e_content\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:16;}'),
(695, 40, 'field_5ac2466ae922c', 'a:14:{s:3:\"key\";s:19:\"field_5ac2466ae922c\";s:5:\"label\";s:20:\"Classes Grid F Title\";s:4:\"name\";s:20:\"classes_grid_f_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:17;}'),
(696, 40, 'field_5ac24729e9235', 'a:11:{s:3:\"key\";s:19:\"field_5ac24729e9235\";s:5:\"label\";s:20:\"Classes Grid F Image\";s:4:\"name\";s:20:\"classes_grid_f_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:18;}'),
(697, 40, 'field_5ac247bee923e', 'a:13:{s:3:\"key\";s:19:\"field_5ac247bee923e\";s:5:\"label\";s:22:\"Classes Grid F Content\";s:4:\"name\";s:22:\"classes_grid_f_content\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:19;}'),
(698, 40, 'field_5ac2467ce922d', 'a:14:{s:3:\"key\";s:19:\"field_5ac2467ce922d\";s:5:\"label\";s:20:\"Classes Grid G Title\";s:4:\"name\";s:20:\"classes_grid_g_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:20;}'),
(699, 40, 'field_5ac2473fe9236', 'a:11:{s:3:\"key\";s:19:\"field_5ac2473fe9236\";s:5:\"label\";s:20:\"Classes Grid G Image\";s:4:\"name\";s:20:\"classes_grid_g_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:21;}'),
(700, 40, 'field_5ac247cce923f', 'a:13:{s:3:\"key\";s:19:\"field_5ac247cce923f\";s:5:\"label\";s:22:\"Classes Grid G Content\";s:4:\"name\";s:22:\"classes_grid_g_content\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:22;}'),
(701, 40, 'field_5ac2468fe922e', 'a:14:{s:3:\"key\";s:19:\"field_5ac2468fe922e\";s:5:\"label\";s:20:\"Classes Grid H Title\";s:4:\"name\";s:20:\"classes_grid_h_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:23;}'),
(702, 40, 'field_5ac2474de9237', 'a:11:{s:3:\"key\";s:19:\"field_5ac2474de9237\";s:5:\"label\";s:20:\"Classes Grid H Image\";s:4:\"name\";s:20:\"classes_grid_h_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:24;}'),
(703, 40, 'field_5ac247e5e9240', 'a:13:{s:3:\"key\";s:19:\"field_5ac247e5e9240\";s:5:\"label\";s:22:\"Classes Grid H Content\";s:4:\"name\";s:22:\"classes_grid_h_content\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:25;}'),
(704, 40, 'field_5ac2469ce922f', 'a:14:{s:3:\"key\";s:19:\"field_5ac2469ce922f\";s:5:\"label\";s:20:\"Classes Grid I Title\";s:4:\"name\";s:20:\"classes_grid_i_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:26;}'),
(705, 40, 'field_5ac2475be9238', 'a:11:{s:3:\"key\";s:19:\"field_5ac2475be9238\";s:5:\"label\";s:20:\"Classes Grid I Image\";s:4:\"name\";s:20:\"classes_grid_i_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:27;}'),
(706, 40, 'field_5ac24806e9241', 'a:13:{s:3:\"key\";s:19:\"field_5ac24806e9241\";s:5:\"label\";s:22:\"Classes Grid I Content\";s:4:\"name\";s:22:\"classes_grid_i_content\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:28;}'),
(708, 40, 'position', 'acf_after_title'),
(709, 40, 'layout', 'default'),
(710, 40, 'hide_on_screen', ''),
(711, 40, '_edit_lock', '1522714677:1'),
(712, 40, 'field_5ac24c3955021', 'a:14:{s:3:\"key\";s:19:\"field_5ac24c3955021\";s:5:\"label\";s:13:\"Classes Title\";s:4:\"name\";s:13:\"classes_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(714, 41, 'classes_title', 'Our Classes'),
(715, 41, '_classes_title', 'field_5ac24c3955021'),
(716, 41, 'classes_grid_a_title', 'a'),
(717, 41, '_classes_grid_a_title', 'field_5ac24479e9227'),
(718, 41, 'classes_grid_a_image', ''),
(719, 41, '_classes_grid_a_image', 'field_5ac246bae9230'),
(720, 41, 'classes_grid_a_content', ''),
(721, 41, '_classes_grid_a_content', 'field_5ac2476ce9239'),
(722, 41, 'classes_grid_b_title', 'b'),
(723, 41, '_classes_grid_b_title', 'field_5ac2462fe9228'),
(724, 41, 'classes_grid_b_image', ''),
(725, 41, '_classes_grid_b_image', 'field_5ac246dde9231'),
(726, 41, 'classes_grid_b_content', ''),
(727, 41, '_classes_grid_b_content', 'field_5ac2477fe923a'),
(728, 41, 'classes_grid_c_title', 'c'),
(729, 41, '_classes_grid_c_title', 'field_5ac24644e9229'),
(730, 41, 'classes_grid_c_image', ''),
(731, 41, '_classes_grid_c_image', 'field_5ac246eae9232'),
(732, 41, 'classes_grid_c_content', ''),
(733, 41, '_classes_grid_c_content', 'field_5ac24793e923b'),
(734, 41, 'classes_grid_d_title', 'd'),
(735, 41, '_classes_grid_d_title', 'field_5ac24651e922a'),
(736, 41, 'classes_grid_d_image', ''),
(737, 41, '_classes_grid_d_image', 'field_5ac2470be9233'),
(738, 41, 'classes_grid_d_content', ''),
(739, 41, '_classes_grid_d_content', 'field_5ac2479fe923c'),
(740, 41, 'classes_grid_e_title', 'e'),
(741, 41, '_classes_grid_e_title', 'field_5ac2465ee922b'),
(742, 41, 'classes_grid_e_image', ''),
(743, 41, '_classes_grid_e_image', 'field_5ac24718e9234'),
(744, 41, 'classes_grid_e_content', ''),
(745, 41, '_classes_grid_e_content', 'field_5ac247b0e923d'),
(746, 41, 'classes_grid_f_title', 'f'),
(747, 41, '_classes_grid_f_title', 'field_5ac2466ae922c'),
(748, 41, 'classes_grid_f_image', ''),
(749, 41, '_classes_grid_f_image', 'field_5ac24729e9235'),
(750, 41, 'classes_grid_f_content', ''),
(751, 41, '_classes_grid_f_content', 'field_5ac247bee923e'),
(752, 41, 'classes_grid_g_title', 'g'),
(753, 41, '_classes_grid_g_title', 'field_5ac2467ce922d'),
(754, 41, 'classes_grid_g_image', ''),
(755, 41, '_classes_grid_g_image', 'field_5ac2473fe9236'),
(756, 41, 'classes_grid_g_content', ''),
(757, 41, '_classes_grid_g_content', 'field_5ac247cce923f'),
(758, 41, 'classes_grid_h_title', 'h'),
(759, 41, '_classes_grid_h_title', 'field_5ac2468fe922e'),
(760, 41, 'classes_grid_h_image', ''),
(761, 41, '_classes_grid_h_image', 'field_5ac2474de9237'),
(762, 41, 'classes_grid_h_content', ''),
(763, 41, '_classes_grid_h_content', 'field_5ac247e5e9240'),
(764, 41, 'classes_grid_i_title', 'i'),
(765, 41, '_classes_grid_i_title', 'field_5ac2469ce922f'),
(766, 41, 'classes_grid_i_image', ''),
(767, 41, '_classes_grid_i_image', 'field_5ac2475be9238'),
(768, 41, 'classes_grid_i_content', ''),
(769, 41, '_classes_grid_i_content', 'field_5ac24806e9241'),
(770, 33, 'classes_title', 'Our Classes'),
(771, 33, '_classes_title', 'field_5ac24c3955021'),
(772, 33, 'classes_grid_a_title', 'Class'),
(773, 33, '_classes_grid_a_title', 'field_5ac24479e9227'),
(774, 33, 'classes_grid_a_image', '8'),
(775, 33, '_classes_grid_a_image', 'field_5ac246bae9230'),
(776, 33, 'classes_grid_a_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(777, 33, '_classes_grid_a_content', 'field_5ac2476ce9239'),
(778, 33, 'classes_grid_b_title', 'Class'),
(779, 33, '_classes_grid_b_title', 'field_5ac2462fe9228'),
(780, 33, 'classes_grid_b_image', '8'),
(781, 33, '_classes_grid_b_image', 'field_5ac246dde9231'),
(782, 33, 'classes_grid_b_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(783, 33, '_classes_grid_b_content', 'field_5ac2477fe923a'),
(784, 33, 'classes_grid_c_title', 'Class'),
(785, 33, '_classes_grid_c_title', 'field_5ac24644e9229'),
(786, 33, 'classes_grid_c_image', '8'),
(787, 33, '_classes_grid_c_image', 'field_5ac246eae9232'),
(788, 33, 'classes_grid_c_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(789, 33, '_classes_grid_c_content', 'field_5ac24793e923b'),
(790, 33, 'classes_grid_d_title', 'Class'),
(791, 33, '_classes_grid_d_title', 'field_5ac24651e922a'),
(792, 33, 'classes_grid_d_image', '8'),
(793, 33, '_classes_grid_d_image', 'field_5ac2470be9233'),
(794, 33, 'classes_grid_d_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(795, 33, '_classes_grid_d_content', 'field_5ac2479fe923c'),
(796, 33, 'classes_grid_e_title', 'Class'),
(797, 33, '_classes_grid_e_title', 'field_5ac2465ee922b'),
(798, 33, 'classes_grid_e_image', '8'),
(799, 33, '_classes_grid_e_image', 'field_5ac24718e9234'),
(800, 33, 'classes_grid_e_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(801, 33, '_classes_grid_e_content', 'field_5ac247b0e923d'),
(802, 33, 'classes_grid_f_title', 'Class'),
(803, 33, '_classes_grid_f_title', 'field_5ac2466ae922c'),
(804, 33, 'classes_grid_f_image', '8'),
(805, 33, '_classes_grid_f_image', 'field_5ac24729e9235'),
(806, 33, 'classes_grid_f_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(807, 33, '_classes_grid_f_content', 'field_5ac247bee923e'),
(808, 33, 'classes_grid_g_title', 'Class'),
(809, 33, '_classes_grid_g_title', 'field_5ac2467ce922d'),
(810, 33, 'classes_grid_g_image', '8'),
(811, 33, '_classes_grid_g_image', 'field_5ac2473fe9236'),
(812, 33, 'classes_grid_g_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(813, 33, '_classes_grid_g_content', 'field_5ac247cce923f'),
(814, 33, 'classes_grid_h_title', 'Class'),
(815, 33, '_classes_grid_h_title', 'field_5ac2468fe922e'),
(816, 33, 'classes_grid_h_image', '8'),
(817, 33, '_classes_grid_h_image', 'field_5ac2474de9237'),
(818, 33, 'classes_grid_h_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(819, 33, '_classes_grid_h_content', 'field_5ac247e5e9240'),
(820, 33, 'classes_grid_i_title', 'Class'),
(821, 33, '_classes_grid_i_title', 'field_5ac2469ce922f'),
(822, 33, 'classes_grid_i_image', '8'),
(823, 33, '_classes_grid_i_image', 'field_5ac2475be9238'),
(824, 33, 'classes_grid_i_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(825, 33, '_classes_grid_i_content', 'field_5ac24806e9241'),
(826, 42, 'classes_title', 'Our Classes'),
(827, 42, '_classes_title', 'field_5ac24c3955021'),
(828, 42, 'classes_grid_a_title', 'Class'),
(829, 42, '_classes_grid_a_title', 'field_5ac24479e9227'),
(830, 42, 'classes_grid_a_image', ''),
(831, 42, '_classes_grid_a_image', 'field_5ac246bae9230'),
(832, 42, 'classes_grid_a_content', ''),
(833, 42, '_classes_grid_a_content', 'field_5ac2476ce9239'),
(834, 42, 'classes_grid_b_title', 'Class'),
(835, 42, '_classes_grid_b_title', 'field_5ac2462fe9228'),
(836, 42, 'classes_grid_b_image', ''),
(837, 42, '_classes_grid_b_image', 'field_5ac246dde9231'),
(838, 42, 'classes_grid_b_content', ''),
(839, 42, '_classes_grid_b_content', 'field_5ac2477fe923a'),
(840, 42, 'classes_grid_c_title', 'Class'),
(841, 42, '_classes_grid_c_title', 'field_5ac24644e9229'),
(842, 42, 'classes_grid_c_image', ''),
(843, 42, '_classes_grid_c_image', 'field_5ac246eae9232'),
(844, 42, 'classes_grid_c_content', ''),
(845, 42, '_classes_grid_c_content', 'field_5ac24793e923b'),
(846, 42, 'classes_grid_d_title', 'Class'),
(847, 42, '_classes_grid_d_title', 'field_5ac24651e922a'),
(848, 42, 'classes_grid_d_image', ''),
(849, 42, '_classes_grid_d_image', 'field_5ac2470be9233'),
(850, 42, 'classes_grid_d_content', ''),
(851, 42, '_classes_grid_d_content', 'field_5ac2479fe923c'),
(852, 42, 'classes_grid_e_title', 'Class'),
(853, 42, '_classes_grid_e_title', 'field_5ac2465ee922b'),
(854, 42, 'classes_grid_e_image', ''),
(855, 42, '_classes_grid_e_image', 'field_5ac24718e9234'),
(856, 42, 'classes_grid_e_content', ''),
(857, 42, '_classes_grid_e_content', 'field_5ac247b0e923d'),
(858, 42, 'classes_grid_f_title', 'Class'),
(859, 42, '_classes_grid_f_title', 'field_5ac2466ae922c'),
(860, 42, 'classes_grid_f_image', ''),
(861, 42, '_classes_grid_f_image', 'field_5ac24729e9235'),
(862, 42, 'classes_grid_f_content', ''),
(863, 42, '_classes_grid_f_content', 'field_5ac247bee923e'),
(864, 42, 'classes_grid_g_title', 'Class'),
(865, 42, '_classes_grid_g_title', 'field_5ac2467ce922d'),
(866, 42, 'classes_grid_g_image', ''),
(867, 42, '_classes_grid_g_image', 'field_5ac2473fe9236'),
(868, 42, 'classes_grid_g_content', ''),
(869, 42, '_classes_grid_g_content', 'field_5ac247cce923f'),
(870, 42, 'classes_grid_h_title', 'Class'),
(871, 42, '_classes_grid_h_title', 'field_5ac2468fe922e'),
(872, 42, 'classes_grid_h_image', ''),
(873, 42, '_classes_grid_h_image', 'field_5ac2474de9237'),
(874, 42, 'classes_grid_h_content', ''),
(875, 42, '_classes_grid_h_content', 'field_5ac247e5e9240'),
(876, 42, 'classes_grid_i_title', 'Class'),
(877, 42, '_classes_grid_i_title', 'field_5ac2469ce922f'),
(878, 42, 'classes_grid_i_image', ''),
(879, 42, '_classes_grid_i_image', 'field_5ac2475be9238'),
(880, 42, 'classes_grid_i_content', ''),
(881, 42, '_classes_grid_i_content', 'field_5ac24806e9241'),
(882, 43, 'classes_title', 'Our Classes'),
(883, 43, '_classes_title', 'field_5ac24c3955021'),
(884, 43, 'classes_grid_a_title', 'Class'),
(885, 43, '_classes_grid_a_title', 'field_5ac24479e9227'),
(886, 43, 'classes_grid_a_image', '8'),
(887, 43, '_classes_grid_a_image', 'field_5ac246bae9230'),
(888, 43, 'classes_grid_a_content', ''),
(889, 43, '_classes_grid_a_content', 'field_5ac2476ce9239'),
(890, 43, 'classes_grid_b_title', 'Class'),
(891, 43, '_classes_grid_b_title', 'field_5ac2462fe9228'),
(892, 43, 'classes_grid_b_image', '8'),
(893, 43, '_classes_grid_b_image', 'field_5ac246dde9231'),
(894, 43, 'classes_grid_b_content', ''),
(895, 43, '_classes_grid_b_content', 'field_5ac2477fe923a'),
(896, 43, 'classes_grid_c_title', 'Class'),
(897, 43, '_classes_grid_c_title', 'field_5ac24644e9229'),
(898, 43, 'classes_grid_c_image', '8'),
(899, 43, '_classes_grid_c_image', 'field_5ac246eae9232'),
(900, 43, 'classes_grid_c_content', ''),
(901, 43, '_classes_grid_c_content', 'field_5ac24793e923b'),
(902, 43, 'classes_grid_d_title', 'Class'),
(903, 43, '_classes_grid_d_title', 'field_5ac24651e922a'),
(904, 43, 'classes_grid_d_image', '8'),
(905, 43, '_classes_grid_d_image', 'field_5ac2470be9233'),
(906, 43, 'classes_grid_d_content', ''),
(907, 43, '_classes_grid_d_content', 'field_5ac2479fe923c'),
(908, 43, 'classes_grid_e_title', 'Class'),
(909, 43, '_classes_grid_e_title', 'field_5ac2465ee922b'),
(910, 43, 'classes_grid_e_image', '8'),
(911, 43, '_classes_grid_e_image', 'field_5ac24718e9234'),
(912, 43, 'classes_grid_e_content', ''),
(913, 43, '_classes_grid_e_content', 'field_5ac247b0e923d'),
(914, 43, 'classes_grid_f_title', 'Class'),
(915, 43, '_classes_grid_f_title', 'field_5ac2466ae922c'),
(916, 43, 'classes_grid_f_image', '8'),
(917, 43, '_classes_grid_f_image', 'field_5ac24729e9235'),
(918, 43, 'classes_grid_f_content', ''),
(919, 43, '_classes_grid_f_content', 'field_5ac247bee923e'),
(920, 43, 'classes_grid_g_title', 'Class'),
(921, 43, '_classes_grid_g_title', 'field_5ac2467ce922d'),
(922, 43, 'classes_grid_g_image', '8'),
(923, 43, '_classes_grid_g_image', 'field_5ac2473fe9236'),
(924, 43, 'classes_grid_g_content', ''),
(925, 43, '_classes_grid_g_content', 'field_5ac247cce923f'),
(926, 43, 'classes_grid_h_title', 'Class'),
(927, 43, '_classes_grid_h_title', 'field_5ac2468fe922e'),
(928, 43, 'classes_grid_h_image', '8'),
(929, 43, '_classes_grid_h_image', 'field_5ac2474de9237'),
(930, 43, 'classes_grid_h_content', ''),
(931, 43, '_classes_grid_h_content', 'field_5ac247e5e9240'),
(932, 43, 'classes_grid_i_title', 'Class'),
(933, 43, '_classes_grid_i_title', 'field_5ac2469ce922f'),
(934, 43, 'classes_grid_i_image', '8'),
(935, 43, '_classes_grid_i_image', 'field_5ac2475be9238'),
(936, 43, 'classes_grid_i_content', ''),
(937, 43, '_classes_grid_i_content', 'field_5ac24806e9241'),
(939, 44, 'classes_title', 'Our Classes'),
(940, 44, '_classes_title', 'field_5ac24c3955021'),
(941, 44, 'classes_grid_a_title', 'Class'),
(942, 44, '_classes_grid_a_title', 'field_5ac24479e9227'),
(943, 44, 'classes_grid_a_image', '8'),
(944, 44, '_classes_grid_a_image', 'field_5ac246bae9230'),
(945, 44, 'classes_grid_a_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(946, 44, '_classes_grid_a_content', 'field_5ac2476ce9239'),
(947, 44, 'classes_grid_b_title', 'Class'),
(948, 44, '_classes_grid_b_title', 'field_5ac2462fe9228'),
(949, 44, 'classes_grid_b_image', '8'),
(950, 44, '_classes_grid_b_image', 'field_5ac246dde9231'),
(951, 44, 'classes_grid_b_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(952, 44, '_classes_grid_b_content', 'field_5ac2477fe923a'),
(953, 44, 'classes_grid_c_title', 'Class'),
(954, 44, '_classes_grid_c_title', 'field_5ac24644e9229'),
(955, 44, 'classes_grid_c_image', '8'),
(956, 44, '_classes_grid_c_image', 'field_5ac246eae9232'),
(957, 44, 'classes_grid_c_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(958, 44, '_classes_grid_c_content', 'field_5ac24793e923b'),
(959, 44, 'classes_grid_d_title', 'Class'),
(960, 44, '_classes_grid_d_title', 'field_5ac24651e922a'),
(961, 44, 'classes_grid_d_image', '8'),
(962, 44, '_classes_grid_d_image', 'field_5ac2470be9233'),
(963, 44, 'classes_grid_d_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(964, 44, '_classes_grid_d_content', 'field_5ac2479fe923c'),
(965, 44, 'classes_grid_e_title', 'Class'),
(966, 44, '_classes_grid_e_title', 'field_5ac2465ee922b'),
(967, 44, 'classes_grid_e_image', '8'),
(968, 44, '_classes_grid_e_image', 'field_5ac24718e9234'),
(969, 44, 'classes_grid_e_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(970, 44, '_classes_grid_e_content', 'field_5ac247b0e923d'),
(971, 44, 'classes_grid_f_title', 'Class'),
(972, 44, '_classes_grid_f_title', 'field_5ac2466ae922c'),
(973, 44, 'classes_grid_f_image', '8'),
(974, 44, '_classes_grid_f_image', 'field_5ac24729e9235'),
(975, 44, 'classes_grid_f_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(976, 44, '_classes_grid_f_content', 'field_5ac247bee923e'),
(977, 44, 'classes_grid_g_title', 'Class'),
(978, 44, '_classes_grid_g_title', 'field_5ac2467ce922d'),
(979, 44, 'classes_grid_g_image', '8'),
(980, 44, '_classes_grid_g_image', 'field_5ac2473fe9236'),
(981, 44, 'classes_grid_g_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(982, 44, '_classes_grid_g_content', 'field_5ac247cce923f'),
(983, 44, 'classes_grid_h_title', 'Class'),
(984, 44, '_classes_grid_h_title', 'field_5ac2468fe922e'),
(985, 44, 'classes_grid_h_image', '8'),
(986, 44, '_classes_grid_h_image', 'field_5ac2474de9237'),
(987, 44, 'classes_grid_h_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(988, 44, '_classes_grid_h_content', 'field_5ac247e5e9240'),
(989, 44, 'classes_grid_i_title', 'Class'),
(990, 44, '_classes_grid_i_title', 'field_5ac2469ce922f'),
(991, 44, 'classes_grid_i_image', '8'),
(992, 44, '_classes_grid_i_image', 'field_5ac2475be9238'),
(993, 44, 'classes_grid_i_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(994, 44, '_classes_grid_i_content', 'field_5ac24806e9241'),
(995, 45, '_edit_last', '1'),
(996, 45, 'field_5ac25132a98ac', 'a:11:{s:3:\"key\";s:19:\"field_5ac25132a98ac\";s:5:\"label\";s:24:\"Company Overview Content\";s:4:\"name\";s:24:\"company_overview_content\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:2:\"no\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(997, 45, 'field_5ac25185a98ad', 'a:14:{s:3:\"key\";s:19:\"field_5ac25185a98ad\";s:5:\"label\";s:19:\"Team Member A Title\";s:4:\"name\";s:19:\"team_member_a_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(998, 45, 'field_5ac251b6a98b0', 'a:11:{s:3:\"key\";s:19:\"field_5ac251b6a98b0\";s:5:\"label\";s:19:\"Team Member A Image\";s:4:\"name\";s:19:\"team_member_a_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(999, 45, 'field_5ac251a2a98ae', 'a:14:{s:3:\"key\";s:19:\"field_5ac251a2a98ae\";s:5:\"label\";s:19:\"Team Member B Title\";s:4:\"name\";s:19:\"team_member_b_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(1000, 45, 'field_5ac251d3a98b1', 'a:11:{s:3:\"key\";s:19:\"field_5ac251d3a98b1\";s:5:\"label\";s:19:\"Team Member B Image\";s:4:\"name\";s:19:\"team_member_b_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(1001, 45, 'field_5ac25227a98b3', 'a:13:{s:3:\"key\";s:19:\"field_5ac25227a98b3\";s:5:\"label\";s:17:\"Team Member A Bio\";s:4:\"name\";s:17:\"team_member_a_bio\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(1002, 45, 'field_5ac25272a98b4', 'a:13:{s:3:\"key\";s:19:\"field_5ac25272a98b4\";s:5:\"label\";s:17:\"Team Member B Bio\";s:4:\"name\";s:17:\"team_member_b_bio\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}'),
(1003, 45, 'field_5ac251aba98af', 'a:14:{s:3:\"key\";s:19:\"field_5ac251aba98af\";s:5:\"label\";s:19:\"Team Member C Title\";s:4:\"name\";s:19:\"team_member_c_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}'),
(1004, 45, 'field_5ac251f6a98b2', 'a:11:{s:3:\"key\";s:19:\"field_5ac251f6a98b2\";s:5:\"label\";s:19:\"Team Member C Image\";s:4:\"name\";s:19:\"team_member_c_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}'),
(1005, 45, 'field_5ac25289a98b5', 'a:13:{s:3:\"key\";s:19:\"field_5ac25289a98b5\";s:5:\"label\";s:17:\"Team Member C Bio\";s:4:\"name\";s:17:\"team_member_c_bio\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:10;}'),
(1007, 45, 'position', 'acf_after_title'),
(1008, 45, 'layout', 'default'),
(1009, 45, 'hide_on_screen', ''),
(1010, 45, '_edit_lock', '1522685455:1'),
(1011, 45, 'field_5ac2542c7a7b8', 'a:14:{s:3:\"key\";s:19:\"field_5ac2542c7a7b8\";s:5:\"label\";s:16:\"Last Block Title\";s:4:\"name\";s:16:\"last_block_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:11;}'),
(1012, 45, 'field_5ac2543d7a7b9', 'a:13:{s:3:\"key\";s:19:\"field_5ac2543d7a7b9\";s:5:\"label\";s:18:\"Last Block Content\";s:4:\"name\";s:18:\"last_block_content\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:12;}'),
(1014, 45, 'field_5ac25464a12ed', 'a:14:{s:3:\"key\";s:19:\"field_5ac25464a12ed\";s:5:\"label\";s:11:\"About Title\";s:4:\"name\";s:11:\"about_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(1017, 46, 'about_title', 'Company Overview'),
(1018, 46, '_about_title', 'field_5ac25464a12ed'),
(1019, 46, 'company_overview_content', 'The content of the page goes here in the first text block.'),
(1020, 46, '_company_overview_content', 'field_5ac25132a98ac'),
(1021, 46, 'team_member_a_title', ''),
(1022, 46, '_team_member_a_title', 'field_5ac25185a98ad'),
(1023, 46, 'team_member_a_image', ''),
(1024, 46, '_team_member_a_image', 'field_5ac251b6a98b0'),
(1025, 46, 'team_member_b_title', ''),
(1026, 46, '_team_member_b_title', 'field_5ac251a2a98ae'),
(1027, 46, 'team_member_b_image', ''),
(1028, 46, '_team_member_b_image', 'field_5ac251d3a98b1'),
(1029, 46, 'team_member_a_bio', ''),
(1030, 46, '_team_member_a_bio', 'field_5ac25227a98b3'),
(1031, 46, 'team_member_b_bio', ''),
(1032, 46, '_team_member_b_bio', 'field_5ac25272a98b4'),
(1033, 46, 'team_member_c_title', ''),
(1034, 46, '_team_member_c_title', 'field_5ac251aba98af'),
(1035, 46, 'team_member_c_image', ''),
(1036, 46, '_team_member_c_image', 'field_5ac251f6a98b2'),
(1037, 46, 'team_member_c_bio', ''),
(1038, 46, '_team_member_c_bio', 'field_5ac25289a98b5'),
(1039, 46, 'last_block_title', ''),
(1040, 46, '_last_block_title', 'field_5ac2542c7a7b8'),
(1041, 46, 'last_block_content', ''),
(1042, 46, '_last_block_content', 'field_5ac2543d7a7b9'),
(1043, 26, 'about_title', 'Company Overview'),
(1044, 26, '_about_title', 'field_5ac25464a12ed'),
(1045, 26, 'company_overview_content', 'The content of the page goes here in the first text block.'),
(1046, 26, '_company_overview_content', 'field_5ac25132a98ac'),
(1047, 26, 'team_member_a_title', 'Team Member'),
(1048, 26, '_team_member_a_title', 'field_5ac25185a98ad'),
(1049, 26, 'team_member_a_image', '8'),
(1050, 26, '_team_member_a_image', 'field_5ac251b6a98b0'),
(1051, 26, 'team_member_b_title', 'Team Member'),
(1052, 26, '_team_member_b_title', 'field_5ac251a2a98ae'),
(1053, 26, 'team_member_b_image', '8'),
(1054, 26, '_team_member_b_image', 'field_5ac251d3a98b1'),
(1055, 26, 'team_member_a_bio', 'Maecenas ipsum tellus, accumsan vitae tempus eu, volutpat sit amet ante. Vivamus accumsan enim eu quam sollicitudin, vitae rutrum orci pretium. Duis blandit lacus eu velit egestas ultricies. Pellentesque luctus volutpat augue sit amet lacinia.'),
(1056, 26, '_team_member_a_bio', 'field_5ac25227a98b3'),
(1057, 26, 'team_member_b_bio', 'Maecenas ipsum tellus, accumsan vitae tempus eu, volutpat sit amet ante. Vivamus accumsan enim eu quam sollicitudin, vitae rutrum orci pretium. Duis blandit lacus eu velit egestas ultricies. Pellentesque luctus volutpat augue sit amet lacinia.'),
(1058, 26, '_team_member_b_bio', 'field_5ac25272a98b4'),
(1059, 26, 'team_member_c_title', 'Team Member'),
(1060, 26, '_team_member_c_title', 'field_5ac251aba98af'),
(1061, 26, 'team_member_c_image', '8'),
(1062, 26, '_team_member_c_image', 'field_5ac251f6a98b2'),
(1063, 26, 'team_member_c_bio', 'Maecenas ipsum tellus, accumsan vitae tempus eu, volutpat sit amet ante. Vivamus accumsan enim eu quam sollicitudin, vitae rutrum orci pretium. Duis blandit lacus eu velit egestas ultricies. Pellentesque luctus volutpat augue sit amet lacinia.'),
(1064, 26, '_team_member_c_bio', 'field_5ac25289a98b5'),
(1065, 26, 'last_block_title', 'Bottom Content'),
(1066, 26, '_last_block_title', 'field_5ac2542c7a7b8'),
(1067, 26, 'last_block_content', 'Donec eget sodales urna. Nunc porttitor nisl ac tempus vulputate. Maecenas tempus porttitor lobortis. Vestibulum fringilla semper purus non condimentum. Curabitur vulputate interdum scelerisque. Morbi eu tincidunt mauris. Pellentesque sollicitudin aliquam lectus vitae varius.'),
(1068, 26, '_last_block_content', 'field_5ac2543d7a7b9'),
(1069, 47, 'about_title', 'Company Overview'),
(1070, 47, '_about_title', 'field_5ac25464a12ed'),
(1071, 47, 'company_overview_content', 'The content of the page goes here in the first text block.'),
(1072, 47, '_company_overview_content', 'field_5ac25132a98ac'),
(1073, 47, 'team_member_a_title', 'Team Member'),
(1074, 47, '_team_member_a_title', 'field_5ac25185a98ad'),
(1075, 47, 'team_member_a_image', ''),
(1076, 47, '_team_member_a_image', 'field_5ac251b6a98b0'),
(1077, 47, 'team_member_b_title', 'Team Member'),
(1078, 47, '_team_member_b_title', 'field_5ac251a2a98ae'),
(1079, 47, 'team_member_b_image', ''),
(1080, 47, '_team_member_b_image', 'field_5ac251d3a98b1'),
(1081, 47, 'team_member_a_bio', ''),
(1082, 47, '_team_member_a_bio', 'field_5ac25227a98b3'),
(1083, 47, 'team_member_b_bio', ''),
(1084, 47, '_team_member_b_bio', 'field_5ac25272a98b4'),
(1085, 47, 'team_member_c_title', 'Team Member'),
(1086, 47, '_team_member_c_title', 'field_5ac251aba98af'),
(1087, 47, 'team_member_c_image', ''),
(1088, 47, '_team_member_c_image', 'field_5ac251f6a98b2'),
(1089, 47, 'team_member_c_bio', ''),
(1090, 47, '_team_member_c_bio', 'field_5ac25289a98b5'),
(1091, 47, 'last_block_title', ''),
(1092, 47, '_last_block_title', 'field_5ac2542c7a7b8'),
(1093, 47, 'last_block_content', ''),
(1094, 47, '_last_block_content', 'field_5ac2543d7a7b9'),
(1095, 45, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"26\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(1096, 48, 'about_title', 'Company Overview'),
(1097, 48, '_about_title', 'field_5ac25464a12ed'),
(1098, 48, 'company_overview_content', 'The content of the page goes here in the first text block.'),
(1099, 48, '_company_overview_content', 'field_5ac25132a98ac'),
(1100, 48, 'team_member_a_title', 'Team Member'),
(1101, 48, '_team_member_a_title', 'field_5ac25185a98ad'),
(1102, 48, 'team_member_a_image', ''),
(1103, 48, '_team_member_a_image', 'field_5ac251b6a98b0'),
(1104, 48, 'team_member_a_bio', 'Maecenas ipsum tellus, accumsan vitae tempus eu, volutpat sit amet ante. Vivamus accumsan enim eu quam sollicitudin, vitae rutrum orci pretium. Duis blandit lacus eu velit egestas ultricies. Pellentesque luctus volutpat augue sit amet lacinia.'),
(1105, 48, '_team_member_a_bio', 'field_5ac25227a98b3'),
(1106, 48, 'team_member_b_title', 'Team Member'),
(1107, 48, '_team_member_b_title', 'field_5ac251a2a98ae'),
(1108, 48, 'team_member_b_image', ''),
(1109, 48, '_team_member_b_image', 'field_5ac251d3a98b1'),
(1110, 48, 'team_member_b_bio', 'Maecenas ipsum tellus, accumsan vitae tempus eu, volutpat sit amet ante. Vivamus accumsan enim eu quam sollicitudin, vitae rutrum orci pretium. Duis blandit lacus eu velit egestas ultricies. Pellentesque luctus volutpat augue sit amet lacinia.'),
(1111, 48, '_team_member_b_bio', 'field_5ac25272a98b4'),
(1112, 48, 'team_member_c_title', 'Team Member'),
(1113, 48, '_team_member_c_title', 'field_5ac251aba98af'),
(1114, 48, 'team_member_c_image', ''),
(1115, 48, '_team_member_c_image', 'field_5ac251f6a98b2'),
(1116, 48, 'team_member_c_bio', 'Maecenas ipsum tellus, accumsan vitae tempus eu, volutpat sit amet ante. Vivamus accumsan enim eu quam sollicitudin, vitae rutrum orci pretium. Duis blandit lacus eu velit egestas ultricies. Pellentesque luctus volutpat augue sit amet lacinia.'),
(1117, 48, '_team_member_c_bio', 'field_5ac25289a98b5'),
(1118, 48, 'last_block_title', ''),
(1119, 48, '_last_block_title', 'field_5ac2542c7a7b8'),
(1120, 48, 'last_block_content', ''),
(1121, 48, '_last_block_content', 'field_5ac2543d7a7b9'),
(1122, 49, 'about_title', 'Company Overview'),
(1123, 49, '_about_title', 'field_5ac25464a12ed'),
(1124, 49, 'company_overview_content', 'The content of the page goes here in the first text block.'),
(1125, 49, '_company_overview_content', 'field_5ac25132a98ac'),
(1126, 49, 'team_member_a_title', 'Team Member'),
(1127, 49, '_team_member_a_title', 'field_5ac25185a98ad'),
(1128, 49, 'team_member_a_image', ''),
(1129, 49, '_team_member_a_image', 'field_5ac251b6a98b0'),
(1130, 49, 'team_member_a_bio', 'Maecenas ipsum tellus, accumsan vitae tempus eu, volutpat sit amet ante. Vivamus accumsan enim eu quam sollicitudin, vitae rutrum orci pretium. Duis blandit lacus eu velit egestas ultricies. Pellentesque luctus volutpat augue sit amet lacinia.'),
(1131, 49, '_team_member_a_bio', 'field_5ac25227a98b3'),
(1132, 49, 'team_member_b_title', 'Team Member'),
(1133, 49, '_team_member_b_title', 'field_5ac251a2a98ae'),
(1134, 49, 'team_member_b_image', ''),
(1135, 49, '_team_member_b_image', 'field_5ac251d3a98b1'),
(1136, 49, 'team_member_b_bio', 'Maecenas ipsum tellus, accumsan vitae tempus eu, volutpat sit amet ante. Vivamus accumsan enim eu quam sollicitudin, vitae rutrum orci pretium. Duis blandit lacus eu velit egestas ultricies. Pellentesque luctus volutpat augue sit amet lacinia.'),
(1137, 49, '_team_member_b_bio', 'field_5ac25272a98b4'),
(1138, 49, 'team_member_c_title', 'Team Member'),
(1139, 49, '_team_member_c_title', 'field_5ac251aba98af'),
(1140, 49, 'team_member_c_image', ''),
(1141, 49, '_team_member_c_image', 'field_5ac251f6a98b2'),
(1142, 49, 'team_member_c_bio', 'Maecenas ipsum tellus, accumsan vitae tempus eu, volutpat sit amet ante. Vivamus accumsan enim eu quam sollicitudin, vitae rutrum orci pretium. Duis blandit lacus eu velit egestas ultricies. Pellentesque luctus volutpat augue sit amet lacinia.'),
(1143, 49, '_team_member_c_bio', 'field_5ac25289a98b5'),
(1144, 49, 'last_block_title', 'Bottom Content'),
(1145, 49, '_last_block_title', 'field_5ac2542c7a7b8'),
(1146, 49, 'last_block_content', 'Donec eget sodales urna. Nunc porttitor nisl ac tempus vulputate. Maecenas tempus porttitor lobortis. Vestibulum fringilla semper purus non condimentum. Curabitur vulputate interdum scelerisque. Morbi eu tincidunt mauris. Pellentesque sollicitudin aliquam lectus vitae varius.'),
(1147, 49, '_last_block_content', 'field_5ac2543d7a7b9'),
(1148, 50, 'about_title', 'Company Overview'),
(1149, 50, '_about_title', 'field_5ac25464a12ed'),
(1150, 50, 'company_overview_content', 'The content of the page goes here in the first text block.'),
(1151, 50, '_company_overview_content', 'field_5ac25132a98ac'),
(1152, 50, 'team_member_a_title', 'Team Member'),
(1153, 50, '_team_member_a_title', 'field_5ac25185a98ad'),
(1154, 50, 'team_member_a_image', '8'),
(1155, 50, '_team_member_a_image', 'field_5ac251b6a98b0'),
(1156, 50, 'team_member_a_bio', 'Maecenas ipsum tellus, accumsan vitae tempus eu, volutpat sit amet ante. Vivamus accumsan enim eu quam sollicitudin, vitae rutrum orci pretium. Duis blandit lacus eu velit egestas ultricies. Pellentesque luctus volutpat augue sit amet lacinia.'),
(1157, 50, '_team_member_a_bio', 'field_5ac25227a98b3'),
(1158, 50, 'team_member_b_title', 'Team Member'),
(1159, 50, '_team_member_b_title', 'field_5ac251a2a98ae'),
(1160, 50, 'team_member_b_image', '8'),
(1161, 50, '_team_member_b_image', 'field_5ac251d3a98b1'),
(1162, 50, 'team_member_b_bio', 'Maecenas ipsum tellus, accumsan vitae tempus eu, volutpat sit amet ante. Vivamus accumsan enim eu quam sollicitudin, vitae rutrum orci pretium. Duis blandit lacus eu velit egestas ultricies. Pellentesque luctus volutpat augue sit amet lacinia.'),
(1163, 50, '_team_member_b_bio', 'field_5ac25272a98b4'),
(1164, 50, 'team_member_c_title', 'Team Member'),
(1165, 50, '_team_member_c_title', 'field_5ac251aba98af'),
(1166, 50, 'team_member_c_image', '8'),
(1167, 50, '_team_member_c_image', 'field_5ac251f6a98b2'),
(1168, 50, 'team_member_c_bio', 'Maecenas ipsum tellus, accumsan vitae tempus eu, volutpat sit amet ante. Vivamus accumsan enim eu quam sollicitudin, vitae rutrum orci pretium. Duis blandit lacus eu velit egestas ultricies. Pellentesque luctus volutpat augue sit amet lacinia.'),
(1169, 50, '_team_member_c_bio', 'field_5ac25289a98b5'),
(1170, 50, 'last_block_title', 'Bottom Content'),
(1171, 50, '_last_block_title', 'field_5ac2542c7a7b8'),
(1172, 50, 'last_block_content', 'Donec eget sodales urna. Nunc porttitor nisl ac tempus vulputate. Maecenas tempus porttitor lobortis. Vestibulum fringilla semper purus non condimentum. Curabitur vulputate interdum scelerisque. Morbi eu tincidunt mauris. Pellentesque sollicitudin aliquam lectus vitae varius.'),
(1173, 50, '_last_block_content', 'field_5ac2543d7a7b9'),
(1174, 52, '_edit_last', '1'),
(1175, 52, '_wp_page_template', 'rooms-tpl.php'),
(1176, 52, '_edit_lock', '1522686216:1'),
(1177, 52, '_wp_trash_meta_status', 'publish'),
(1178, 52, '_wp_trash_meta_time', '1522686365'),
(1179, 52, '_wp_desired_post_slug', 'rooms-2'),
(1180, 56, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(1181, 56, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:33:\"Factory Hardcore \"[your-subject]\"\";s:6:\"sender\";s:32:\"[your-name] <amhewins@gmail.com>\";s:9:\"recipient\";s:18:\"amhewins@gmail.com\";s:4:\"body\";s:192:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Factory Hardcore (http://localhost:8888/factoryHardcore)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1182, 56, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:33:\"Factory Hardcore \"[your-subject]\"\";s:6:\"sender\";s:37:\"Factory Hardcore <amhewins@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:134:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Factory Hardcore (http://localhost:8888/factoryHardcore)\";s:18:\"additional_headers\";s:28:\"Reply-To: amhewins@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1183, 56, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(1184, 56, '_additional_settings', ''),
(1185, 56, '_locale', 'en_US'),
(1186, 40, 'field_5ac2c876f16ea', 'a:13:{s:3:\"key\";s:19:\"field_5ac2c876f16ea\";s:5:\"label\";s:15:\"Classes Content\";s:4:\"name\";s:15:\"classes_content\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(1188, 59, 'classes_title', 'Our Classes'),
(1189, 59, '_classes_title', 'field_5ac24c3955021'),
(1190, 59, 'classes_content', 'Little thing about the classes'),
(1191, 59, '_classes_content', 'field_5ac2c876f16ea'),
(1192, 59, 'classes_grid_a_title', 'Class'),
(1193, 59, '_classes_grid_a_title', 'field_5ac24479e9227'),
(1194, 59, 'classes_grid_a_image', '8'),
(1195, 59, '_classes_grid_a_image', 'field_5ac246bae9230'),
(1196, 59, 'classes_grid_a_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(1197, 59, '_classes_grid_a_content', 'field_5ac2476ce9239'),
(1198, 59, 'classes_grid_b_title', 'Class'),
(1199, 59, '_classes_grid_b_title', 'field_5ac2462fe9228'),
(1200, 59, 'classes_grid_b_image', '8'),
(1201, 59, '_classes_grid_b_image', 'field_5ac246dde9231'),
(1202, 59, 'classes_grid_b_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(1203, 59, '_classes_grid_b_content', 'field_5ac2477fe923a'),
(1204, 59, 'classes_grid_c_title', 'Class'),
(1205, 59, '_classes_grid_c_title', 'field_5ac24644e9229'),
(1206, 59, 'classes_grid_c_image', '8'),
(1207, 59, '_classes_grid_c_image', 'field_5ac246eae9232'),
(1208, 59, 'classes_grid_c_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(1209, 59, '_classes_grid_c_content', 'field_5ac24793e923b'),
(1210, 59, 'classes_grid_d_title', 'Class'),
(1211, 59, '_classes_grid_d_title', 'field_5ac24651e922a'),
(1212, 59, 'classes_grid_d_image', '8'),
(1213, 59, '_classes_grid_d_image', 'field_5ac2470be9233'),
(1214, 59, 'classes_grid_d_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(1215, 59, '_classes_grid_d_content', 'field_5ac2479fe923c'),
(1216, 59, 'classes_grid_e_title', 'Class'),
(1217, 59, '_classes_grid_e_title', 'field_5ac2465ee922b'),
(1218, 59, 'classes_grid_e_image', '8'),
(1219, 59, '_classes_grid_e_image', 'field_5ac24718e9234'),
(1220, 59, 'classes_grid_e_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(1221, 59, '_classes_grid_e_content', 'field_5ac247b0e923d'),
(1222, 59, 'classes_grid_f_title', 'Class'),
(1223, 59, '_classes_grid_f_title', 'field_5ac2466ae922c'),
(1224, 59, 'classes_grid_f_image', '8'),
(1225, 59, '_classes_grid_f_image', 'field_5ac24729e9235'),
(1226, 59, 'classes_grid_f_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(1227, 59, '_classes_grid_f_content', 'field_5ac247bee923e'),
(1228, 59, 'classes_grid_g_title', 'Class'),
(1229, 59, '_classes_grid_g_title', 'field_5ac2467ce922d'),
(1230, 59, 'classes_grid_g_image', '8'),
(1231, 59, '_classes_grid_g_image', 'field_5ac2473fe9236'),
(1232, 59, 'classes_grid_g_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(1233, 59, '_classes_grid_g_content', 'field_5ac247cce923f'),
(1234, 59, 'classes_grid_h_title', 'Class'),
(1235, 59, '_classes_grid_h_title', 'field_5ac2468fe922e'),
(1236, 59, 'classes_grid_h_image', '8'),
(1237, 59, '_classes_grid_h_image', 'field_5ac2474de9237'),
(1238, 59, 'classes_grid_h_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(1239, 59, '_classes_grid_h_content', 'field_5ac247e5e9240'),
(1240, 59, 'classes_grid_i_title', 'Class'),
(1241, 59, '_classes_grid_i_title', 'field_5ac2469ce922f'),
(1242, 59, 'classes_grid_i_image', '8'),
(1243, 59, '_classes_grid_i_image', 'field_5ac2475be9238'),
(1244, 59, 'classes_grid_i_content', 'Cras tempus nulla ac tellus lobortis, at pulvinar mauris scelerisque. Sed porta elementum nisi, non hendrerit ex varius non. Nullam tincidunt egestas tincidunt.'),
(1245, 59, '_classes_grid_i_content', 'field_5ac24806e9241'),
(1246, 33, 'classes_content', 'Little thing about the classes'),
(1247, 33, '_classes_content', 'field_5ac2c876f16ea'),
(1248, 40, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"33\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(1249, 60, '_edit_last', '1'),
(1250, 60, 'field_5ac2c8cd46385', 'a:14:{s:3:\"key\";s:19:\"field_5ac2c8cd46385\";s:5:\"label\";s:13:\"Contact Title\";s:4:\"name\";s:13:\"contact_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(1251, 60, 'field_5ac2c8d646386', 'a:13:{s:3:\"key\";s:19:\"field_5ac2c8d646386\";s:5:\"label\";s:15:\"Contact Content\";s:4:\"name\";s:15:\"contact_content\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(1253, 60, 'position', 'acf_after_title'),
(1254, 60, 'layout', 'default'),
(1255, 60, 'hide_on_screen', ''),
(1256, 60, '_edit_lock', '1522714734:1'),
(1257, 60, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"31\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(1258, 61, 'contact_title', 'Contact Us'),
(1259, 61, '_contact_title', 'field_5ac2c8cd46385'),
(1260, 61, 'contact_content', 'Enter and send a message below to get in contact us - or come on in!'),
(1261, 61, '_contact_content', 'field_5ac2c8d646386'),
(1262, 31, 'contact_title', 'Contact Us'),
(1263, 31, '_contact_title', 'field_5ac2c8cd46385'),
(1264, 31, 'contact_content', 'Enter and send a message below to get in contact us - or come on in!'),
(1265, 31, '_contact_content', 'field_5ac2c8d646386');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
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
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-03-26 01:58:03', '2018-03-26 01:58:03', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-03-26 01:58:03', '2018-03-26 01:58:03', '', 0, 'http://localhost:8888/factoryHardcore/?p=1', 0, 'post', '', 1),
(2, 1, '2018-03-26 01:58:03', '2018-03-26 01:58:03', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8888/factoryHardcore/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-03-26 01:58:03', '2018-03-26 01:58:03', '', 0, 'http://localhost:8888/factoryHardcore/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-03-27 01:44:40', '2018-03-27 01:44:40', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-03-27 01:44:40', '2018-03-27 01:44:40', '', 0, 'http://localhost:8888/factoryHardcore/wp-content/uploads/2018/03/logo.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2018-03-27 02:29:31', '2018-03-27 02:29:31', '', 'logo2', '', 'inherit', 'open', 'closed', '', 'logo2', '', '', '2018-03-27 02:29:31', '2018-03-27 02:29:31', '', 0, 'http://localhost:8888/factoryHardcore/wp-content/uploads/2018/03/logo2.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2018-03-27 02:30:17', '2018-03-27 02:30:17', '', 'logo3', '', 'inherit', 'open', 'closed', '', 'logo3', '', '', '2018-03-27 02:30:17', '2018-03-27 02:30:17', '', 0, 'http://localhost:8888/factoryHardcore/wp-content/uploads/2018/03/logo3.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2018-03-27 03:20:05', '2018-03-27 03:20:05', '', 'workouttype', '', 'inherit', 'open', 'closed', '', 'workouttype', '', '', '2018-03-27 03:20:05', '2018-03-27 03:20:05', '', 0, 'http://localhost:8888/factoryHardcore/wp-content/uploads/2018/03/workouttype.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2018-03-27 03:29:39', '2018-03-27 03:29:39', '', 'logo3-invert', '', 'inherit', 'open', 'closed', '', 'logo3-invert', '', '', '2018-03-27 03:29:39', '2018-03-27 03:29:39', '', 0, 'http://localhost:8888/factoryHardcore/wp-content/uploads/2018/03/logo3-invert.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2018-03-27 14:15:23', '2018-03-27 14:15:23', '', 'Front Page Header', '', 'publish', 'closed', 'closed', '', 'acf_front-page-header', '', '', '2018-03-27 17:28:01', '2018-03-27 17:28:01', '', 0, 'http://localhost:8888/factoryHardcore/?post_type=acf&#038;p=10', 0, 'acf', '', 0),
(11, 1, '2018-03-27 14:15:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-27 14:15:27', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/factoryHardcore/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-03-27 14:16:15', '2018-03-27 14:16:15', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-04-02 14:40:56', '2018-04-02 14:40:56', '', 0, 'http://localhost:8888/factoryHardcore/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-03-27 14:16:15', '2018-03-27 14:16:15', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-03-27 14:16:15', '2018-03-27 14:16:15', '', 12, 'http://localhost:8888/factoryHardcore/2018/03/27/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-03-27 14:18:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-27 14:18:20', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/factoryHardcore/?post_type=acf&p=14', 0, 'acf', '', 0),
(15, 1, '2018-03-27 14:38:31', '2018-03-27 14:38:31', '', 'Front Page Grid', '', 'publish', 'closed', 'closed', '', 'acf_front-page-grid', '', '', '2018-03-27 14:46:19', '2018-03-27 14:46:19', '', 0, 'http://localhost:8888/factoryHardcore/?post_type=acf&#038;p=15', 0, 'acf', '', 0),
(16, 1, '2018-03-27 15:24:17', '2018-03-27 15:24:17', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-03-27 15:24:17', '2018-03-27 15:24:17', '', 12, 'http://localhost:8888/factoryHardcore/2018/03/27/12-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-03-27 15:30:13', '2018-03-27 15:30:13', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-03-27 15:30:13', '2018-03-27 15:30:13', '', 12, 'http://localhost:8888/factoryHardcore/2018/03/27/12-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-03-27 15:51:52', '2018-03-27 15:51:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-03-27 15:51:52', '2018-03-27 15:51:52', '', 12, 'http://localhost:8888/factoryHardcore/2018/03/27/12-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-03-27 16:08:03', '2018-03-27 16:08:03', '', 'Front Page Info', '', 'publish', 'closed', 'closed', '', 'acf_front-page-info', '', '', '2018-03-27 16:08:03', '2018-03-27 16:08:03', '', 0, 'http://localhost:8888/factoryHardcore/?post_type=acf&#038;p=19', 0, 'acf', '', 0),
(20, 1, '2018-03-27 16:08:53', '2018-03-27 16:08:53', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-03-27 16:08:53', '2018-03-27 16:08:53', '', 12, 'http://localhost:8888/factoryHardcore/2018/03/27/12-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-03-27 16:21:13', '2018-03-27 16:21:13', '', 'Front Page Featured Grid', '', 'publish', 'closed', 'closed', '', 'acf_front-page-featured-grid', '', '', '2018-03-27 16:24:05', '2018-03-27 16:24:05', '', 0, 'http://localhost:8888/factoryHardcore/?post_type=acf&#038;p=21', 0, 'acf', '', 0),
(22, 1, '2018-03-27 16:25:44', '2018-03-27 16:25:44', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-03-27 16:25:44', '2018-03-27 16:25:44', '', 12, 'http://localhost:8888/factoryHardcore/2018/03/27/12-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-03-27 16:51:09', '2018-03-27 16:51:09', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-03-27 16:51:09', '2018-03-27 16:51:09', '', 12, 'http://localhost:8888/factoryHardcore/2018/03/27/12-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-03-27 16:52:41', '2018-03-27 16:52:41', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-03-27 16:52:41', '2018-03-27 16:52:41', '', 12, 'http://localhost:8888/factoryHardcore/2018/03/27/12-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-03-27 17:27:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-27 17:27:36', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/factoryHardcore/?page_id=25', 0, 'page', '', 0),
(26, 1, '2018-03-27 17:48:41', '2018-03-27 17:48:41', '', 'Company Overview', '', 'publish', 'closed', 'closed', '', 'company-overview', '', '', '2018-04-02 16:18:30', '2018-04-02 16:18:30', '', 0, 'http://localhost:8888/factoryHardcore/?page_id=26', 0, 'page', '', 0),
(27, 1, '2018-03-27 17:42:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-27 17:42:59', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/factoryHardcore/?p=27', 0, 'post', '', 0),
(28, 1, '2018-03-27 17:48:41', '2018-03-27 17:48:41', '', 'About', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-03-27 17:48:41', '2018-03-27 17:48:41', '', 26, 'http://localhost:8888/factoryHardcore/2018/03/27/26-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-03-27 22:37:45', '2018-03-27 22:37:45', '', 'Company Overview', '', 'inherit', 'closed', 'closed', '', '26-autosave-v1', '', '', '2018-03-27 22:37:45', '2018-03-27 22:37:45', '', 26, 'http://localhost:8888/factoryHardcore/2018/03/27/26-autosave-v1/', 0, 'revision', '', 0),
(30, 1, '2018-03-27 22:37:47', '2018-03-27 22:37:47', '', 'Company Overview', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-03-27 22:37:47', '2018-03-27 22:37:47', '', 26, 'http://localhost:8888/factoryHardcore/2018/03/27/26-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-04-02 01:20:02', '2018-04-02 01:20:02', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-04-03 00:21:43', '2018-04-03 00:21:43', '', 0, 'http://localhost:8888/factoryHardcore/?page_id=31', 0, 'page', '', 0),
(32, 1, '2018-04-02 01:20:02', '2018-04-02 01:20:02', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-04-02 01:20:02', '2018-04-02 01:20:02', '', 31, 'http://localhost:8888/factoryHardcore/2018/04/02/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-04-02 01:21:44', '2018-04-02 01:21:44', '', 'Classes', '', 'publish', 'closed', 'closed', '', 'classes', '', '', '2018-04-03 00:19:27', '2018-04-03 00:19:27', '', 0, 'http://localhost:8888/factoryHardcore/?page_id=33', 0, 'page', '', 0),
(34, 1, '2018-04-02 01:21:44', '2018-04-02 01:21:44', '', 'Classes', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-04-02 01:21:44', '2018-04-02 01:21:44', '', 33, 'http://localhost:8888/factoryHardcore/2018/04/02/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-04-02 02:10:18', '2018-04-02 02:10:18', '', 'Rooms', '', 'publish', 'closed', 'closed', '', 'rooms', '', '', '2018-04-02 23:54:06', '2018-04-02 23:54:06', '', 0, 'http://localhost:8888/factoryHardcore/?page_id=35', 0, 'page', '', 0),
(36, 1, '2018-04-02 02:10:18', '2018-04-02 02:10:18', '', 'Rooms', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-04-02 02:10:18', '2018-04-02 02:10:18', '', 35, 'http://localhost:8888/factoryHardcore/2018/04/02/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-04-02 14:35:33', '2018-04-02 14:35:33', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-04-02 14:35:33', '2018-04-02 14:35:33', '', 12, 'http://localhost:8888/factoryHardcore/2018/04/02/12-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-04-02 14:40:04', '2018-04-02 14:40:04', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-04-02 14:40:04', '2018-04-02 14:40:04', '', 12, 'http://localhost:8888/factoryHardcore/2018/04/02/12-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-04-02 14:40:56', '2018-04-02 14:40:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-04-02 14:40:56', '2018-04-02 14:40:56', '', 12, 'http://localhost:8888/factoryHardcore/2018/04/02/12-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-04-02 15:13:01', '2018-04-02 15:13:01', '', 'Classes', '', 'publish', 'closed', 'closed', '', 'acf_classes', '', '', '2018-04-03 00:19:58', '2018-04-03 00:19:58', '', 0, 'http://localhost:8888/factoryHardcore/?post_type=acf&#038;p=40', 0, 'acf', '', 0),
(41, 1, '2018-04-02 15:30:54', '2018-04-02 15:30:54', '', 'Classes', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-04-02 15:30:54', '2018-04-02 15:30:54', '', 33, 'http://localhost:8888/factoryHardcore/2018/04/02/33-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-04-02 15:38:04', '2018-04-02 15:38:04', '', 'Classes', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-04-02 15:38:04', '2018-04-02 15:38:04', '', 33, 'http://localhost:8888/factoryHardcore/2018/04/02/33-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-04-02 15:38:45', '2018-04-02 15:38:45', '', 'Classes', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-04-02 15:38:45', '2018-04-02 15:38:45', '', 33, 'http://localhost:8888/factoryHardcore/2018/04/02/33-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-04-02 15:42:02', '2018-04-02 15:42:02', '', 'Classes', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-04-02 15:42:02', '2018-04-02 15:42:02', '', 33, 'http://localhost:8888/factoryHardcore/2018/04/02/33-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-04-02 15:56:38', '2018-04-02 15:56:38', '', 'Company Overview', '', 'publish', 'closed', 'closed', '', 'acf_company-overview', '', '', '2018-04-02 16:08:22', '2018-04-02 16:08:22', '', 0, 'http://localhost:8888/factoryHardcore/?post_type=acf&#038;p=45', 0, 'acf', '', 0),
(46, 1, '2018-04-02 16:05:58', '2018-04-02 16:05:58', '', 'Company Overview', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-04-02 16:05:58', '2018-04-02 16:05:58', '', 26, 'http://localhost:8888/factoryHardcore/2018/04/02/26-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-04-02 16:08:00', '2018-04-02 16:08:00', '', 'Company Overview', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-04-02 16:08:00', '2018-04-02 16:08:00', '', 26, 'http://localhost:8888/factoryHardcore/2018/04/02/26-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-04-02 16:10:19', '2018-04-02 16:10:19', '', 'Company Overview', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-04-02 16:10:19', '2018-04-02 16:10:19', '', 26, 'http://localhost:8888/factoryHardcore/2018/04/02/26-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-04-02 16:13:39', '2018-04-02 16:13:39', '', 'Company Overview', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-04-02 16:13:39', '2018-04-02 16:13:39', '', 26, 'http://localhost:8888/factoryHardcore/2018/04/02/26-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-04-02 16:17:29', '2018-04-02 16:17:29', '', 'Company Overview', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-04-02 16:17:29', '2018-04-02 16:17:29', '', 26, 'http://localhost:8888/factoryHardcore/2018/04/02/26-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-04-02 16:19:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-02 16:19:58', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/factoryHardcore/?page_id=51', 0, 'page', '', 0),
(52, 1, '2018-04-02 16:23:21', '2018-04-02 16:23:21', '', 'Rooms', '', 'trash', 'closed', 'closed', '', 'rooms-2__trashed', '', '', '2018-04-02 16:26:05', '2018-04-02 16:26:05', '', 0, 'http://localhost:8888/factoryHardcore/?page_id=52', 0, 'page', '', 0),
(53, 1, '2018-04-02 16:23:21', '2018-04-02 16:23:21', '', 'Rooms', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-04-02 16:23:21', '2018-04-02 16:23:21', '', 52, 'http://localhost:8888/factoryHardcore/2018/04/02/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-04-02 23:52:28', '2018-04-02 23:52:28', '[wpgmza id=\"1\"]', 'Rooms', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-04-02 23:52:28', '2018-04-02 23:52:28', '', 35, 'http://localhost:8888/factoryHardcore/2018/04/02/35-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-04-02 23:53:53', '2018-04-02 23:53:53', '', 'Rooms', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-04-02 23:53:53', '2018-04-02 23:53:53', '', 35, 'http://localhost:8888/factoryHardcore/2018/04/02/35-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-04-02 23:59:32', '2018-04-02 23:59:32', '<label> Your Name (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Your Email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Subject\r\n    [text your-subject] </label>\r\n\r\n<label> Your Message\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Send\"]\n1\nFactory Hardcore \"[your-subject]\"\n[your-name] <amhewins@gmail.com>\namhewins@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Factory Hardcore (http://localhost:8888/factoryHardcore)\nReply-To: [your-email]\n\n\n\n\nFactory Hardcore \"[your-subject]\"\nFactory Hardcore <amhewins@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Factory Hardcore (http://localhost:8888/factoryHardcore)\nReply-To: amhewins@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-04-03 00:11:32', '2018-04-03 00:11:32', '', 0, 'http://localhost:8888/factoryHardcore/?post_type=wpcf7_contact_form&#038;p=56', 0, 'wpcf7_contact_form', '', 0),
(57, 1, '2018-04-03 00:00:46', '2018-04-03 00:00:46', '[contact-form-7 id=\"56\" title=\"Contact form 1\"]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-04-03 00:00:46', '2018-04-03 00:00:46', '', 31, 'http://localhost:8888/factoryHardcore/2018/04/03/31-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-04-03 00:03:36', '2018-04-03 00:03:36', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-04-03 00:03:36', '2018-04-03 00:03:36', '', 31, 'http://localhost:8888/factoryHardcore/2018/04/03/31-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-04-03 00:19:27', '2018-04-03 00:19:27', '', 'Classes', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-04-03 00:19:27', '2018-04-03 00:19:27', '', 33, 'http://localhost:8888/factoryHardcore/2018/04/03/33-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-04-03 00:20:59', '2018-04-03 00:20:59', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'acf_contact-us', '', '', '2018-04-03 00:21:16', '2018-04-03 00:21:16', '', 0, 'http://localhost:8888/factoryHardcore/?post_type=acf&#038;p=60', 0, 'acf', '', 0),
(61, 1, '2018-04-03 00:21:43', '2018-04-03 00:21:43', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-04-03 00:21:43', '2018-04-03 00:21:43', '', 31, 'http://localhost:8888/factoryHardcore/2018/04/03/31-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
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
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'arcadia'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"ca2a2215e5dd3db8a5b594039886d9f760cdfe5bbe67f9ccce89a54d56ad2496\";a:4:{s:10:\"expiration\";i:1523239110;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36\";s:5:\"login\";i:1522029510;}s:64:\"0d6431c5ae8d479746ee45614c32e7386dc95e542b190c63cf39719f84c70d8c\";a:4:{s:10:\"expiration\";i:1522771141;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36\";s:5:\"login\";i:1522598341;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=1'),
(20, 1, 'wp_user-settings-time', '1522167809'),
(21, 1, 'closedpostboxes_page', 'a:4:{i:0;s:6:\"acf_10\";i:1;s:6:\"acf_15\";i:2;s:6:\"acf_21\";i:3;s:12:\"revisionsdiv\";}'),
(22, 1, 'metaboxhidden_page', 'a:4:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),
(23, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:27:\"acf_10,acf_15,acf_19,acf_21\";s:4:\"side\";s:23:\"submitdiv,pageparentdiv\";s:6:\"normal\";s:70:\"revisionsdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(24, 1, 'screen_layout_page', '2'),
(25, 1, 'closedpostboxes_post', 'a:1:{i:0;s:11:\"categorydiv\";}'),
(26, 1, 'metaboxhidden_post', 'a:10:{i:0;s:6:\"acf_21\";i:1;s:6:\"acf_15\";i:2;s:6:\"acf_10\";i:3;s:6:\"acf_19\";i:4;s:11:\"postexcerpt\";i:5;s:13:\"trackbacksdiv\";i:6;s:10:\"postcustom\";i:7;s:16:\"commentstatusdiv\";i:8;s:7:\"slugdiv\";i:9;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
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
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'arcadia', '$P$B/fGGkBloqBHntxswuKJT6Hd07ULPE1', 'arcadia', 'amhewins@gmail.com', '', '2018-03-26 01:58:03', '', 0, 'arcadia');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza`
--

CREATE TABLE `wp_wpgmza` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(700) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) NOT NULL,
  `other_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wpgmza`
--

INSERT INTO `wp_wpgmza` (`id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`, `approved`, `retina`, `type`, `did`, `other_data`) VALUES
(3, 1, '201 N 4th Ave, Royersford, PA, USA', '', '', '', '', '40.188111', '-75.54322400000001', '2', '', '0', '', 1, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_categories`
--

CREATE TABLE `wp_wpgmza_categories` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(700) NOT NULL,
  `retina` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_category_maps`
--

CREATE TABLE `wp_wpgmza_category_maps` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_maps`
--

CREATE TABLE `wp_wpgmza_maps` (
  `id` int(11) NOT NULL,
  `map_title` varchar(55) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wpgmza_maps`
--

INSERT INTO `wp_wpgmza_maps` (`id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'Factory Hardcore Map', '100', '400', '40.188096', '-75.543171', '40.188096255474946,-75.54317071518398', 14, '0', 1, 2, 1, 0, '', 0, '', 2, 2, 1, '100', 0, 0, 0, 0, 0, '', '\\%', 'px', 1, 0, 1, 2, 0, '', 'a:13:{s:21:\"store_locator_enabled\";i:2;s:22:\"store_locator_distance\";i:2;s:28:\"store_locator_default_radius\";s:2:\"10\";s:31:\"store_locator_not_found_message\";s:52:\"No results found in this location. Please try again.\";s:20:\"store_locator_bounce\";i:1;s:26:\"store_locator_query_string\";s:14:\"ZIP / Address:\";s:29:\"store_locator_default_address\";s:0:\"\";s:29:\"wpgmza_store_locator_restrict\";s:0:\"\";s:12:\"map_max_zoom\";s:1:\"1\";s:15:\"transport_layer\";i:2;s:17:\"wpgmza_theme_data\";s:1556:\"[{\\\"featureType\\\":\\\"landscape.man_made\\\",\\\"elementType\\\":\\\"geometry\\\",\\\"stylers\\\":[{\\\"color\\\":\\\"#f7f1df\\\"}]},{\\\"featureType\\\":\\\"landscape.natural\\\",\\\"elementType\\\":\\\"geometry\\\",\\\"stylers\\\":[{\\\"color\\\":\\\"#d0e3b4\\\"}]},{\\\"featureType\\\":\\\"landscape.natural.terrain\\\",\\\"elementType\\\":\\\"geometry\\\",\\\"stylers\\\":[{\\\"visibility\\\":\\\"off\\\"}]},{\\\"featureType\\\":\\\"poi\\\",\\\"elementType\\\":\\\"labels\\\",\\\"stylers\\\":[{\\\"visibility\\\":\\\"off\\\"}]},{\\\"featureType\\\":\\\"poi.business\\\",\\\"elementType\\\":\\\"all\\\",\\\"stylers\\\":[{\\\"visibility\\\":\\\"off\\\"}]},{\\\"featureType\\\":\\\"poi.medical\\\",\\\"elementType\\\":\\\"geometry\\\",\\\"stylers\\\":[{\\\"color\\\":\\\"#fbd3da\\\"}]},{\\\"featureType\\\":\\\"poi.park\\\",\\\"elementType\\\":\\\"geometry\\\",\\\"stylers\\\":[{\\\"color\\\":\\\"#bde6ab\\\"}]},{\\\"featureType\\\":\\\"road\\\",\\\"elementType\\\":\\\"geometry.stroke\\\",\\\"stylers\\\":[{\\\"visibility\\\":\\\"off\\\"}]},{\\\"featureType\\\":\\\"road\\\",\\\"elementType\\\":\\\"labels\\\",\\\"stylers\\\":[{\\\"visibility\\\":\\\"off\\\"}]},{\\\"featureType\\\":\\\"road.highway\\\",\\\"elementType\\\":\\\"geometry.fill\\\",\\\"stylers\\\":[{\\\"color\\\":\\\"#ffe15f\\\"}]},{\\\"featureType\\\":\\\"road.highway\\\",\\\"elementType\\\":\\\"geometry.stroke\\\",\\\"stylers\\\":[{\\\"color\\\":\\\"#efd151\\\"}]},{\\\"featureType\\\":\\\"road.arterial\\\",\\\"elementType\\\":\\\"geometry.fill\\\",\\\"stylers\\\":[{\\\"color\\\":\\\"#ffffff\\\"}]},{\\\"featureType\\\":\\\"road.local\\\",\\\"elementType\\\":\\\"geometry.fill\\\",\\\"stylers\\\":[{\\\"color\\\":\\\"black\\\"}]},{\\\"featureType\\\":\\\"transit.station.airport\\\",\\\"elementType\\\":\\\"geometry.fill\\\",\\\"stylers\\\":[{\\\"color\\\":\\\"#cfb2db\\\"}]},{\\\"featureType\\\":\\\"water\\\",\\\"elementType\\\":\\\"geometry\\\",\\\"stylers\\\":[{\\\"color\\\":\\\"#a2daf2\\\"}]}]\";s:22:\"wpgmza_theme_selection\";i:2;s:30:\"wpgmza_show_points_of_interest\";i:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_polygon`
--

CREATE TABLE `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `innerpolydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_polylines`
--

CREATE TABLE `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_categories`
--
ALTER TABLE `wp_wpgmza_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_category_maps`
--
ALTER TABLE `wp_wpgmza_category_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1266;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_wpgmza_categories`
--
ALTER TABLE `wp_wpgmza_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_category_maps`
--
ALTER TABLE `wp_wpgmza_category_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
