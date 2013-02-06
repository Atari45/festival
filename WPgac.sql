-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Client: smysql
-- Généré le: Mer 06 Février 2013 à 10:36
-- Version du serveur: 5.5.24-4-log
-- Version de PHP: 5.3.10-1ubuntu3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `WPgac`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(4, 6, '_wp_trash_meta_status', '0');

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'http://wordpress.org/', '', '2012-11-27 15:50:04', '2012-11-27 15:50:04', 'Bonjour, ceci est un commentaire.<br /> Pour supprimer un commentaire, connectez-vous, et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, '1', '', '', 0, 0),
(2, 27, 'Gac', 'alexgac45@gmail.com', '', '::1', '2012-11-27 17:36:14', '2012-11-27 16:36:14', 'Super fiche technique ;)', 0, '1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:11.0) Gecko/20100101 Firefox/11.0', '', 0, 1),
(3, 27, 'Gac', 'alexgac45@gmail.com', '', '::1', '2012-11-27 17:36:20', '2012-11-27 16:36:20', 'Merci', 0, '1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:11.0) Gecko/20100101 Firefox/11.0', '', 2, 1),
(4, 20, 'Gac', 'alexgac45@gmail.com', '', '::1', '2012-11-27 17:41:01', '2012-11-27 16:41:01', 'Super logo Ferrari', 0, '1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:11.0) Gecko/20100101 Firefox/11.0', '', 0, 1),
(5, 49, 'Gac', 'alexgac45@gmail.com', '', '::1', '2012-12-04 17:42:27', '2012-12-04 16:42:27', 'Super Gallerie d''images ;)', 0, '1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:11.0) Gecko/20100101 Firefox/11.0', '', 0, 1),
(6, 49, 'Bob', 'Marley@gmail.com', 'http://Bonmonsite', '::1', '2012-12-04 17:44:40', '2012-12-04 16:44:40', 'Trop laid !', 0, 'spam', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:11.0) Gecko/20100101 Firefox/11.0', '', 5, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_comments`
--

CREATE TABLE IF NOT EXISTS `wp_festival_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_links`
--

CREATE TABLE IF NOT EXISTS `wp_festival_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_options`
--

CREATE TABLE IF NOT EXISTS `wp_festival_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=339 ;

--
-- Contenu de la table `wp_festival_options`
--

INSERT INTO `wp_festival_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/~gac/festival_cinema/wordpress', 'yes'),
(2, 'blogname', 'Festival LGBT', 'yes'),
(3, 'blogdescription', 'Festival Gay et Lesbiens', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'alexgac45@gmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '0', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'j F Y', 'yes'),
(23, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(24, 'links_updated_date_format', 'j F Y, G \\h i \\m\\i\\n', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:1:{i:0;s:44:"slideshow-jquery-image-gallery/slideshow.php";}', 'yes'),
(36, 'home', 'http://localhost/~gac/festival_cinema/wordpress', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '1', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', 'a:3:{i:0;s:88:"/mnt/home/gac/public_html/festival_cinema/wordpress/wp-content/themes/festival/style.css";i:2;s:92:"/mnt/home/gac/public_html/festival_cinema/wordpress/wp-content/themes/twentytwelve/style.css";i:3;s:0:"";}', 'no'),
(44, 'template', 'twentytwelve', 'yes'),
(45, 'stylesheet', 'festival', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '22441', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '0', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:2:{i:2;a:3:{s:5:"title";s:6:"Agenda";s:4:"text";s:1527:"<div id="programme">\r\n\r\n			<div id="prog-list">\r\n				<div class="prog-item">\r\n					<div style="color:red" class="font-rouge prog-date">\r\n						Vendredi 24 septembre : 20h00\r\n					</div>\r\n					<div class="prog-text">\r\n						Soirée d’ouverture : séance de courts métrages. Rencontre-débat avec un réalisateur.\r\n					</div>\r\n				</div>\r\n\r\n				<div class="prog-item">\r\n					<div style="color:red" class="font-rouge prog-date">\r\n						Samedi 25 septembre : 19h30\r\n					</div>\r\n					<div class="prog-text">\r\n						Documentaire :\r\n						It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école). Rencontre-débat avec le Groupe Action Gay & Lesbien – Loiret sur les interventions en milieu scolaire.\r\n					</div>\r\n				</div>\r\n\r\n				<div class="prog-item">\r\n					<div style="color:red" class="font-rouge prog-date">\r\n						Samedi 25 septembre : 21h45\r\n					</div>\r\n					<div class="prog-text">\r\n						Fiction : Ander    \r\n					</div>\r\n				</div>\r\n\r\n				<div class="prog-item">\r\n					<div style="color:red" class="font-rouge prog-date">\r\n						Dimanche 26 septembre : 16h00\r\n					</div>\r\n					<div class="prog-text">\r\n						Fiction : El niño pez\r\n					</div>\r\n				</div>\r\n\r\n				<div class="prog-item">\r\n					<div style="color:red" class="font-rouge prog-date">\r\n						Dimanche 26 septembre : 18h00  \r\n					</div>\r\n					<div class="prog-text">\r\n						Fiction : I can’t think straight\r\n					</div>\r\n				</div>\r\n			\r\n\r\n			</div>\r\n\r\n		</div>\r\n\r\n	</body>\r\n</html>";s:6:"filter";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '7', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '22441', 'yes'),
(92, 'wp_festival_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:65:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:45:"slideshow-jquery-image-gallery-add-slideshows";b:1;s:46:"slideshow-jquery-image-gallery-edit-slideshows";b:1;s:48:"slideshow-jquery-image-gallery-delete-slideshows";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:37:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:45:"slideshow-jquery-image-gallery-add-slideshows";b:1;s:46:"slideshow-jquery-image-gallery-edit-slideshows";b:1;s:48:"slideshow-jquery-image-gallery-delete-slideshows";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:13:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:45:"slideshow-jquery-image-gallery-add-slideshows";b:1;s:46:"slideshow-jquery-image-gallery-edit-slideshows";b:1;s:48:"slideshow-jquery-image-gallery-delete-slideshows";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:2:{i:0;s:6:"text-2";i:1;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:5:{i:1360168414;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1360168415;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1360168522;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1360168528;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"3.5";s:12:"last_checked";i:1360140578;}', 'yes'),
(102, '_transient_random_seed', 'f18047492f96a3769353b3a2e5fb1471', 'yes'),
(103, 'auth_key', '0G|.d830`Ct^,u67(7,mNqyzpm46+ a%Bf/l4ho5r;RoFh|4Dd6a16`z4Z6Tq6t|', 'yes'),
(104, 'auth_salt', 'H6fI(7r(9n}nAY94B5f:4HH{o8#VI4clydhH$[_3O0v)oEUgOgj6.2,unLZ<ljy]', 'yes'),
(105, 'logged_in_key', ' 3B53av~9F=avq hakbewf;|sfJz{%NW^4KIhN* mtA*aKJAlO4>dlL}(~3(dB-V', 'yes'),
(106, 'logged_in_salt', 'iYx_Arz?u;0a[wNU!zh2i)8s6|t11]A|JX#hs8)mJ*lvZD,Kynj+NlBbh06n]?X_', 'yes'),
(107, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1360140608;}', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1360140639;}', 'yes'),
(111, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:47:"http://localhost/~gac/festival_cinema/wordpress";s:4:"link";s:123:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/~gac/festival_cinema/wordpress/";s:3:"url";s:156:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/~gac/festival_cinema/wordpress/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:14:"Blog WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:46:"Autres actualités de WordPress (en français)";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(112, 'nonce_key', 'fWB.q:^wX!Q4(;8[KPb^Yg;|N-Q^?Mm>X)tg1=%Oj:g5t-9a-#z4PGa]0Rt6Nkcr', 'yes'),
(113, 'nonce_salt', '80r{g/-{x;bX0#DfWJD`/S;`2(> ]@Xy64#&>LEG?F]}>p)u/j+Bne|vf<Nu?*`V', 'yes'),
(114, 'can_compress_scripts', '0', 'yes'),
(133, 'theme_mods_twentytwelve', 'a:2:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:4;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358934551;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:2:{i:0;s:6:"meta-2";i:1;s:6:"text-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(134, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(154, 'recently_activated', 'a:0:{}', 'yes'),
(188, 'current_theme', 'Festival', 'yes'),
(189, 'theme_mods_festival', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:4;}}', 'yes'),
(190, 'theme_switched', '', 'yes'),
(285, 'slideshow-plugin-updated-from-v1-x-x-to-v2-0-1', 'updated', 'yes'),
(286, 'slideshow-plugin-updated-from-v2-to-v2-1-20', 'updated', 'yes'),
(287, 'slideshow-jquery-image-gallery-updated-from-v2-1-20-to-v2-1-22', 'updated', 'yes'),
(288, 'slideshow-jquery-image-gallery-plugin-version', '2.1.23', 'yes'),
(314, '_transient_timeout_plugin_slugs', '1360142702', 'no'),
(315, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:44:"slideshow-jquery-image-gallery/slideshow.php";}', 'no'),
(319, 'category_children', 'a:0:{}', 'yes'),
(324, '_site_transient_timeout_wporg_theme_feature_list', '1360067104', 'yes'),
(325, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(329, '_site_transient_timeout_theme_roots', '1360142438', 'yes'),
(330, '_site_transient_theme_roots', 'a:4:{s:8:"festival";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes'),
(331, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1360184759', 'no'),
(332, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p>', 'no'),
(333, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1360184759', 'no'),
(334, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: couldn''t connect to host</p></div>', 'no'),
(335, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1360184760', 'no'),
(336, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(337, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1360184770', 'no'),
(338, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=330 ;

--
-- Contenu de la table `wp_festival_postmeta`
--

INSERT INTO `wp_festival_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(5, 7, '_edit_last', '1'),
(6, 7, '_edit_lock', '1359478261:1'),
(7, 7, '_wp_page_template', 'default'),
(8, 2, '_wp_trash_meta_status', 'publish'),
(9, 2, '_wp_trash_meta_time', '1358268506'),
(10, 10, '_menu_item_type', 'post_type'),
(11, 10, '_menu_item_menu_item_parent', '0'),
(12, 10, '_menu_item_object_id', '7'),
(13, 10, '_menu_item_object', 'page'),
(14, 10, '_menu_item_target', ''),
(15, 10, '_menu_item_classes', 'a:1:{i:0;s:8:"fg-rouge";}'),
(16, 10, '_menu_item_xfn', ''),
(17, 10, '_menu_item_url', ''),
(19, 11, '_edit_last', '1'),
(20, 11, '_wp_page_template', 'default'),
(21, 11, '_edit_lock', '1358871600:1'),
(22, 12, '_edit_last', '1'),
(23, 12, '_edit_lock', '1358871248:1'),
(33, 14, '_menu_item_type', 'post_type'),
(34, 14, '_menu_item_menu_item_parent', '0'),
(35, 14, '_menu_item_object_id', '7'),
(36, 14, '_menu_item_object', 'page'),
(37, 14, '_menu_item_target', ''),
(38, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(39, 14, '_menu_item_xfn', ''),
(40, 14, '_menu_item_url', ''),
(41, 14, '_menu_item_orphaned', '1358268628'),
(42, 12, '_wp_page_template', 'default'),
(52, 17, '_edit_last', '1'),
(53, 17, '_wp_page_template', 'default'),
(54, 17, '_edit_lock', '1359039789:1'),
(55, 18, '_edit_last', '1'),
(56, 18, '_wp_page_template', 'default'),
(57, 18, '_edit_lock', '1358870977:1'),
(58, 19, '_edit_last', '1'),
(59, 19, '_wp_page_template', 'default'),
(60, 19, '_edit_lock', '1358871011:1'),
(61, 20, '_menu_item_type', 'post_type'),
(62, 20, '_menu_item_menu_item_parent', '0'),
(63, 20, '_menu_item_object_id', '19'),
(64, 20, '_menu_item_object', 'page'),
(65, 20, '_menu_item_target', ''),
(66, 20, '_menu_item_classes', 'a:1:{i:0;s:9:"fg-violet";}'),
(67, 20, '_menu_item_xfn', ''),
(68, 20, '_menu_item_url', ''),
(70, 21, '_menu_item_type', 'post_type'),
(71, 21, '_menu_item_menu_item_parent', '0'),
(72, 21, '_menu_item_object_id', '18'),
(73, 21, '_menu_item_object', 'page'),
(74, 21, '_menu_item_target', ''),
(75, 21, '_menu_item_classes', 'a:1:{i:0;s:7:"fg-bleu";}'),
(76, 21, '_menu_item_xfn', ''),
(77, 21, '_menu_item_url', ''),
(79, 22, '_menu_item_type', 'post_type'),
(80, 22, '_menu_item_menu_item_parent', '0'),
(81, 22, '_menu_item_object_id', '17'),
(82, 22, '_menu_item_object', 'page'),
(83, 22, '_menu_item_target', ''),
(84, 22, '_menu_item_classes', 'a:1:{i:0;s:7:"fg-vert";}'),
(85, 22, '_menu_item_xfn', ''),
(86, 22, '_menu_item_url', ''),
(97, 12, '_wp_trash_meta_status', 'publish'),
(98, 12, '_wp_trash_meta_time', '1358872608'),
(99, 11, '_wp_trash_meta_status', 'publish'),
(100, 11, '_wp_trash_meta_time', '1358872609'),
(101, 47, '_menu_item_type', 'taxonomy'),
(102, 47, '_menu_item_menu_item_parent', '0'),
(103, 47, '_menu_item_object_id', '3'),
(104, 47, '_menu_item_object', 'category'),
(105, 47, '_menu_item_target', ''),
(106, 47, '_menu_item_classes', 'a:1:{i:0;s:8:"fg-jaune";}'),
(107, 47, '_menu_item_xfn', ''),
(108, 47, '_menu_item_url', ''),
(110, 48, '_menu_item_type', 'taxonomy'),
(111, 48, '_menu_item_menu_item_parent', '0'),
(112, 48, '_menu_item_object_id', '2'),
(113, 48, '_menu_item_object', 'category'),
(114, 48, '_menu_item_target', ''),
(115, 48, '_menu_item_classes', 'a:1:{i:0;s:9:"fg-orange";}'),
(116, 48, '_menu_item_xfn', ''),
(117, 48, '_menu_item_url', ''),
(119, 49, '_edit_last', '1'),
(120, 49, '_edit_lock', '1359476121:1'),
(122, 51, '_edit_last', '1'),
(123, 51, '_edit_lock', '1359474779:1'),
(127, 55, '_edit_last', '1'),
(128, 55, '_edit_lock', '1359474876:1'),
(130, 57, '_edit_last', '1'),
(131, 57, '_edit_lock', '1359474901:1'),
(134, 60, '_edit_last', '1'),
(135, 60, '_edit_lock', '1360050534:1'),
(137, 62, '_edit_last', '1'),
(138, 62, '_edit_lock', '1359474970:1'),
(140, 64, '_edit_last', '1'),
(141, 64, '_edit_lock', '1359474991:1'),
(143, 66, '_edit_last', '1'),
(144, 66, '_edit_lock', '1359475012:1'),
(147, 69, '_edit_last', '1'),
(148, 69, '_edit_lock', '1360070927:1'),
(150, 72, '_edit_last', '1'),
(151, 72, '_edit_lock', '1359475335:1'),
(153, 74, '_edit_last', '1'),
(154, 74, '_edit_lock', '1359475089:1'),
(156, 76, '_edit_last', '1'),
(157, 76, '_edit_lock', '1359475117:1'),
(168, 49, 'Realisateur', 'Debra Chasnoff'),
(169, 49, 'Annee', '1996'),
(170, 49, 'Pays', 'Etats-Unis'),
(173, 49, 'Genre', 'Documentaire'),
(174, 49, 'Duree', '1h20'),
(175, 49, 'Version', 'VOSTFR'),
(179, 51, 'Genre', 'Festival International de Berlin'),
(180, 51, 'Pays', 'Espagne'),
(181, 51, 'Version', 'VOSTFR'),
(188, 49, 'Interpretes', 'G.A.G.L 45'),
(190, 51, 'Interpretes', 'Josean Bengoetxea, Eriz Alberdi, Christian Esquive'),
(191, 51, 'Realisateur', 'Roberto Castón'),
(194, 55, 'Annee', '2008'),
(195, 55, 'Duree', '1h36'),
(196, 55, 'Genre', 'Films'),
(197, 55, 'Interpretes', 'Inés Efron, Mariela Vitale, Pep Munne'),
(198, 55, 'Pays', 'Argentine'),
(199, 55, 'Realisateur', 'Lucía Puenzo'),
(200, 55, 'Version', 'VOSTFR'),
(203, 57, 'Annee', '2007'),
(204, 57, 'Duree', '1h20'),
(205, 57, 'Genre', 'Comédie Romantique'),
(206, 57, 'Interpretes', 'Lisa Ray, Sheetal Sheth, Antonia Frering'),
(207, 57, 'Pays', 'Grande-Bretagne'),
(208, 57, 'Realisateur', 'Shamim Sarif'),
(209, 57, 'Version', 'VOSTFR'),
(214, 62, 'Annee', '2009'),
(215, 62, 'Duree', '8 minutes'),
(216, 62, 'Interpretes', 'Mathieu et Maxime'),
(217, 62, 'Version', 'VOSTFR'),
(218, 62, 'Pays', 'France'),
(219, 62, 'Realisateur', 'Pascal-Alex Vincent'),
(220, 62, 'Genre', 'Courts métrages'),
(224, 51, 'Annee', '2009'),
(225, 51, 'Duree', '2h08'),
(227, 64, 'Annee', '2009'),
(228, 64, 'Duree', '7 minutes'),
(229, 64, 'Genre', 'Mise en scène'),
(230, 64, 'Interpretes', 'Une jeune fille (Pauline)'),
(231, 64, 'Pays', 'France'),
(232, 64, 'Realisateur', 'Céline Sciamma'),
(233, 64, 'Version', 'FR'),
(236, 66, 'Annee', '2009'),
(237, 66, 'Duree', '9 minutes'),
(238, 66, 'Genre', 'Histoire'),
(239, 66, 'Interpretes', 'Omar, Arthur'),
(240, 66, 'Pays', 'France'),
(241, 66, 'Realisateur', 'Sébastien Gabriel'),
(242, 66, 'Version', 'FR'),
(244, 69, 'Annee', '2006'),
(245, 69, 'Duree', '10 minutes'),
(246, 69, 'Genre', 'Courts-métrages'),
(247, 69, 'Interpretes', 'Odile'),
(248, 69, 'Pays', 'France'),
(249, 69, 'Realisateur', 'Bénédicte Delgéhier'),
(250, 69, 'Version', 'FR'),
(252, 72, 'Annee', '2008'),
(253, 72, 'Duree', '17 minutes'),
(254, 72, 'Genre', 'Tragédie'),
(255, 72, 'Interpretes', 'Personnes sans nom.'),
(256, 72, 'Pays', 'Brésil'),
(257, 72, 'Realisateur', 'René Guerra Luiz'),
(258, 72, 'Version', 'VOSTFR'),
(260, 74, 'Annee', '2006'),
(261, 74, 'Duree', '26 minutes'),
(262, 74, 'Genre', 'Western'),
(263, 74, 'Interpretes', 'Des cowboys'),
(264, 74, 'Pays', 'Brésil'),
(265, 74, 'Realisateur', 'Jean Baptiste Erreca'),
(266, 74, 'Version', 'FR'),
(268, 76, 'Annee', '2008'),
(269, 76, 'Duree', '4 minutes'),
(270, 76, 'Genre', 'Débat'),
(271, 76, 'Interpretes', '2 personnes'),
(272, 76, 'Pays', 'France'),
(273, 76, 'Realisateur', 'Patricia & Colette'),
(274, 76, 'Version', 'FR'),
(276, 133, '_wp_attached_file', '2013/01/ANDER1.jpg'),
(277, 133, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:18:"2013/01/ANDER1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"ANDER1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"ANDER1-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"ANDER1-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"ANDER1-624x351.jpg";s:5:"width";i:624;s:6:"height";i:351;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(278, 51, '_thumbnail_id', '133'),
(280, 135, '_wp_attached_file', '2013/01/ItsElementaryGBan.jpg'),
(281, 135, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:259;s:6:"height";i:221;s:4:"file";s:29:"2013/01/ItsElementaryGBan.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"ItsElementaryGBan-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(282, 49, '_thumbnail_id', '135'),
(284, 137, '_wp_attached_file', '2013/01/EL-NINO-PEZ-1.jpg'),
(285, 137, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4405;s:6:"height";i:3010;s:4:"file";s:25:"2013/01/EL-NINO-PEZ-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-300x204.jpg";s:5:"width";i:300;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"EL-NINO-PEZ-1-1024x699.jpg";s:5:"width";i:1024;s:6:"height";i:699;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-624x426.jpg";s:5:"width";i:624;s:6:"height";i:426;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(286, 55, '_thumbnail_id', '137'),
(288, 139, '_wp_attached_file', '2013/01/I_cant_think_straight_001.jpg'),
(289, 139, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2400;s:6:"height";i:1600;s:4:"file";s:37:"2013/01/I_cant_think_straight_001.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:38:"I_cant_think_straight_001-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(290, 57, '_thumbnail_id', '139'),
(292, 141, '_wp_attached_file', '2013/01/EN_COLOricco.jpg'),
(293, 141, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1337;s:6:"height";i:875;s:4:"file";s:24:"2013/01/EN_COLOricco.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"EN_COLOricco-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"EN_COLOricco-300x196.jpg";s:5:"width";i:300;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"EN_COLOricco-1024x670.jpg";s:5:"width";i:1024;s:6:"height";i:670;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"EN_COLOricco-624x408.jpg";s:5:"width";i:624;s:6:"height";i:408;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2.7999999999999998;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1243723185;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"48";s:3:"iso";s:4:"4000";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";}}'),
(294, 62, '_thumbnail_id', '141'),
(296, 143, '_wp_attached_file', '2013/01/PAULINE_1.jpg'),
(297, 143, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2362;s:6:"height";i:1575;s:4:"file";s:21:"2013/01/PAULINE_1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"PAULINE_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"PAULINE_1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"PAULINE_1-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"PAULINE_1-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:3.5;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1242468669;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"500";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";}}'),
(298, 64, '_thumbnail_id', '143'),
(300, 145, '_wp_attached_file', '2013/01/OMAR_.jpg'),
(301, 145, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1890;s:6:"height";i:1260;s:4:"file";s:17:"2013/01/OMAR_.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"OMAR_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"OMAR_-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"OMAR_-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"OMAR_-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1243445020;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"180";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(302, 66, '_thumbnail_id', '145'),
(304, 147, '_wp_attached_file', '2013/01/Odile-.jpg'),
(305, 147, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3704;s:6:"height";i:2508;s:4:"file";s:18:"2013/01/Odile-.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Odile--150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Odile--300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"Odile--1024x693.jpg";s:5:"width";i:1024;s:6:"height";i:693;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"Odile--624x422.jpg";s:5:"width";i:624;s:6:"height";i:422;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(306, 69, '_thumbnail_id', '147'),
(308, 149, '_wp_attached_file', '2013/01/COWBOY-FOREVER.jpg'),
(309, 149, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2544;s:6:"height";i:1696;s:4:"file";s:26:"2013/01/COWBOY-FOREVER.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"COWBOY-FOREVER-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:5.5999999999999996;s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 30D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1153563697;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"110";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(310, 74, '_thumbnail_id', '149'),
(312, 151, '_wp_attached_file', '2013/01/American-boy.png'),
(313, 151, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:901;s:6:"height";i:601;s:4:"file";s:24:"2013/01/American-boy.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"American-boy-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"American-boy-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"American-boy-624x416.png";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(314, 76, '_thumbnail_id', '151'),
(316, 153, '_wp_attached_file', '2013/01/essai.jpg'),
(317, 153, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3456;s:6:"height";i:2304;s:4:"file";s:17:"2013/01/essai.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"essai-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"essai-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"essai-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"essai-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(318, 153, '_edit_lock', '1359475434:1'),
(319, 72, '_thumbnail_id', '153'),
(323, 156, 'settings', 'a:17:{s:9:"animation";s:4:"fade";s:10:"slideSpeed";s:1:"2";s:16:"descriptionSpeed";s:3:"0.4";s:13:"intervalSpeed";s:1:"5";s:4:"play";s:4:"true";s:4:"loop";s:4:"true";s:13:"slidesPerView";s:1:"1";s:5:"width";s:1:"0";s:6:"height";s:3:"400";s:17:"descriptionHeight";s:2:"50";s:13:"stretchImages";s:4:"true";s:12:"controllable";s:4:"true";s:12:"controlPanel";s:5:"false";s:15:"showDescription";s:4:"true";s:15:"hideDescription";s:4:"true";s:6:"random";s:5:"false";s:11:"avoidFilter";s:4:"true";}'),
(324, 156, 'styleSettings', 'a:1:{s:5:"style";s:15:"style-light.css";}'),
(325, 156, 'slides', 'a:9:{i:1;a:7:{s:5:"title";s:11:"EL NINO PEZ";s:11:"description";s:0:"";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:4:"type";s:10:"attachment";s:6:"postId";s:3:"137";s:5:"order";s:0:"";}i:2;a:7:{s:5:"title";s:21:"I cant think straight";s:11:"description";s:0:"";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:4:"type";s:10:"attachment";s:6:"postId";s:3:"139";s:5:"order";s:0:"";}i:3;a:7:{s:5:"title";s:12:"En Coloricco";s:11:"description";s:0:"";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:4:"type";s:10:"attachment";s:6:"postId";s:3:"141";s:5:"order";s:0:"";}i:4;a:7:{s:5:"title";s:7:"PAULINE";s:11:"description";s:0:"";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:4:"type";s:10:"attachment";s:6:"postId";s:3:"143";s:5:"order";s:0:"";}i:5;a:7:{s:5:"title";s:4:"OMAR";s:11:"description";s:0:"";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:4:"type";s:10:"attachment";s:6:"postId";s:3:"145";s:5:"order";s:0:"";}i:6;a:7:{s:5:"title";s:5:"Odile";s:11:"description";s:0:"";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:4:"type";s:10:"attachment";s:6:"postId";s:3:"147";s:5:"order";s:0:"";}i:7;a:7:{s:5:"title";s:14:"COWBOY FOREVER";s:11:"description";s:0:"";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:4:"type";s:10:"attachment";s:6:"postId";s:3:"149";s:5:"order";s:0:"";}i:8;a:7:{s:5:"title";s:12:"American boy";s:11:"description";s:0:"";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:4:"type";s:10:"attachment";s:6:"postId";s:3:"151";s:5:"order";s:0:"";}i:9;a:7:{s:5:"title";s:21:"Os sapatos de Aristeu";s:11:"description";s:0:"";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:4:"type";s:10:"attachment";s:6:"postId";s:3:"153";s:5:"order";s:0:"";}}'),
(326, 156, '_edit_last', '1'),
(327, 156, '_edit_lock', '1359549635:1'),
(328, 60, '_wp_trash_meta_status', 'publish'),
(329, 60, '_wp_trash_meta_time', '1360050738');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_posts`
--

CREATE TABLE IF NOT EXISTS `wp_festival_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=159 ;

--
-- Contenu de la table `wp_festival_posts`
--

INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2013-01-15 16:33:26', '2013-01-15 16:33:26', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~gac/festival_cinema/wordpress/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'trash', 'open', 'open', '', 'page-d-exemple', '', '', '2013-01-15 17:48:26', '2013-01-15 16:48:26', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?page_id=2', 0, 'page', '', 0),
(7, 1, '2013-01-15 17:48:18', '2013-01-15 16:48:18', '<div>\r\n\r\nAprès trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien – Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous  : 5  séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire – Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en  2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\r\n\r\nBon festival !\r\n\r\nChristel Guillard, coordinatrice générale.\r\n\r\n</div>', 'Edito', '', 'publish', 'open', 'open', '', 'edito', '', '', '2013-01-23 09:59:42', '2013-01-23 08:59:42', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2013-01-15 17:47:46', '2013-01-15 16:47:46', '', 'Edito', '', 'inherit', 'open', 'open', '', '7-revision', '', '', '2013-01-15 17:47:46', '2013-01-15 16:47:46', '', 7, 'http://localhost/~gac/festival_cinema/wordpress/?p=8', 0, 'revision', '', 0),
(9, 1, '2013-01-15 16:33:26', '2013-01-15 16:33:26', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~gac/festival_cinema/wordpress/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'inherit', 'open', 'open', '', '2-revision', '', '', '2013-01-15 16:33:26', '2013-01-15 16:33:26', '', 2, 'http://localhost/~gac/festival_cinema/wordpress/?p=9', 0, 'revision', '', 0),
(10, 1, '2013-01-15 17:49:44', '2013-01-15 16:49:44', ' ', '', '', 'publish', 'open', 'open', '', '10', '', '', '2013-01-29 17:31:47', '2013-01-29 16:31:47', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2013-01-15 17:50:00', '2013-01-15 16:50:00', '<span style="color: #ff0000;">5.1 It’s elementary, talking about gays issues in school</span>\r\n\r\n(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis - 1996 - Documentaire Durée 01h20 - Réalisation : Debra Chasnoff Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.\r\n\r\n<span style="color: #ff0000;">5.2 ANDER - Réalisé par Roberto Castón</span>\r\n\r\nEspagne - 2009 - 02h08 - VOSTF Interprétation : Josean Bengoetxea, Eriz Alberdi, Christian Esquive Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté. Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009).\r\n\r\n<span style="color: #ff0000;">5.3 EL NIÑO PEZ - Réalisé par Lucía Puenzo</span>\r\n\r\nArgentine - 2008 - 01h36 - VOSTF Interprétation : Inés Efron, Mariela Vitale, Pep Munne Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.\r\n\r\n<span style="color: #ff0000;">5.4 CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif</span>\r\n\r\nGrande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises. Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009).', 'films', '', 'trash', 'open', 'open', '', 'films', '', '', '2013-01-22 17:36:49', '2013-01-22 16:36:49', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2013-01-15 17:50:56', '2013-01-15 16:50:56', '4.1 Intro\r\n\r\nLes 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.\r\n\r\n4.2 En colo - Pascal-Alex Vincent - France\r\n\r\n2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.\r\n\r\n4.3 Pauline – Céline Sciamma- France – 2009\r\n\r\n7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.\r\n\r\n4.4 Omar - Sébastien Gabriel - France - 2009 - 9 minutes\r\n\r\nC’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.\r\n\r\n4.5 Odile - Bénédicte Delgéhier - France - 2006- 10 minutes\r\n\r\nUne boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...\r\n\r\n4.6 Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008\r\n\r\n17 minutes - VOSTF Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.\r\n\r\n4.7 Cowboy Forever - Jean Baptiste Erreca - France\r\n\r\n2006 - 26 minutes Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...\r\n\r\n4.8 American Boy - Patricia &amp; Colette - France\r\n\r\n2008 - 4 minutes Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'courts-métrages', '', 'trash', 'open', 'open', '', 'courts-metrages', '', '', '2013-01-22 17:36:48', '2013-01-22 16:36:48', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?page_id=12', 0, 'page', '', 0),
(14, 1, '2013-01-15 17:50:27', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2013-01-15 17:50:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2013-01-15 17:50:12', '2013-01-15 16:50:12', '', 'courts-métrages', '', 'inherit', 'open', 'open', '', '12-revision', '', '', '2013-01-15 17:50:12', '2013-01-15 16:50:12', '', 12, 'http://localhost/~gac/festival_cinema/wordpress/?p=15', 0, 'revision', '', 0),
(17, 1, '2013-01-15 17:51:59', '2013-01-15 16:51:59', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS                        Tarifs : Plein tarif : 7,50 €                                                                                                             Pass Festival : 25 € (5 séances)                                                                                                         Soirée courts métrages : 6 € (vendredi)                                                                                             2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\nCartes &amp; réductions acceptées :                                                                                                Cartes DECOUVERTE &amp; PASSION,                                                                                            titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.                                                    Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\nEquipe :                                                                                                                                     Direction artistique : Christel Guillard (Présidente de Ciné Mundi)                                Programmation : Christel Guillard en collaboration avec                                                       Françoise Dahmane (Cinéma Les Carmes)                                                                          Communication &amp; partenariats : Christel Guillard                                                               Conception graphique : Yannis Bellair                                                                                   Conception du site internet : rccc                                                                                                Impression : Prevost Offset                                                                                                          Contacts :                                                                                                                    festival.dunbordalautre@gmail.com  ou   www.festivaldunbordalautre.com', 'Infos pratiques', '', 'publish', 'open', 'open', '', 'infos-pratiques', '', '', '2013-01-24 16:05:01', '2013-01-24 15:05:01', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?page_id=17', 0, 'page', '', 0),
(18, 1, '2013-01-15 17:52:18', '2013-01-15 16:52:18', '- Région Centre\r\n\r\n- Orléans\r\n\r\n- Cinéma des Carmes\r\n\r\n- GAGL\r\n\r\n- Têtu\r\n\r\n- La dixième MUSE\r\n\r\n- CiteGay\r\n\r\n- Yagg.com\r\n\r\n- France Bleu', 'Partenaires', '', 'publish', 'open', 'open', '', 'partenaires', '', '', '2013-01-22 17:11:28', '2013-01-22 16:11:28', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?page_id=18', 0, 'page', '', 0),
(19, 1, '2013-01-15 17:52:28', '2013-01-15 16:52:28', '- La Région Centre\r\n\r\n- La Mairie d''Orléans\r\n\r\n- Le cinéma des Carmes\r\n\r\n- Le Groupe Action Gay &amp; Lesbien - Loiret\r\n\r\n- Citégay\r\n\r\n- La dixième Muse\r\n\r\n- Têtu\r\n\r\n- Yagg.com\r\n\r\n- France Bleu Orléans\r\n\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n\r\n- Cineffable\r\n\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n\r\n- Les VidéObstinées', 'Remerciements', '', 'publish', 'open', 'open', '', 'remerciements', '', '', '2013-01-22 17:12:03', '2013-01-22 16:12:03', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?page_id=19', 0, 'page', '', 0),
(20, 1, '2013-01-15 17:53:00', '2013-01-15 16:53:00', ' ', '', '', 'publish', 'open', 'open', '', '20', '', '', '2013-01-29 17:31:48', '2013-01-29 16:31:48', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?p=20', 6, 'nav_menu_item', '', 0),
(21, 1, '2013-01-15 17:53:00', '2013-01-15 16:53:00', ' ', '', '', 'publish', 'open', 'open', '', '21', '', '', '2013-01-29 17:31:48', '2013-01-29 16:31:48', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?p=21', 5, 'nav_menu_item', '', 0),
(22, 1, '2013-01-15 17:53:00', '2013-01-15 16:53:00', ' ', '', '', 'publish', 'open', 'open', '', '22', '', '', '2013-01-29 17:31:48', '2013-01-29 16:31:48', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?p=22', 4, 'nav_menu_item', '', 0),
(28, 1, '2013-01-15 17:50:00', '2013-01-15 16:50:00', '', 'films', '', 'inherit', 'open', 'open', '', '11-revision', '', '', '2013-01-15 17:50:00', '2013-01-15 16:50:00', '', 11, 'http://localhost/~gac/festival_cinema/wordpress/?p=28', 0, 'revision', '', 0),
(29, 1, '2013-01-22 17:08:39', '2013-01-22 16:08:39', '5.1 It’s elementary, talking about gays issues in school\n\n(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis - 1996 - Documentaire Durée 01h20 - Réalisation : Debra Chasnoff Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.\n\n5.2 ANDER - Réalisé par Roberto Castón\n\nEspagne - 2009 - 02h08 - VOSTF Interprétation : Josean Bengoetxea, Eriz Alberdi, Christian Esquive Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté. Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009).\n\n5.3 EL NIÑO PEZ - Réalisé par Lucía Puenzo\n\nArgentine - 2008 - 01h36 - VOSTF Interprétation : Inés Efron, Mariela Vitale, Pep Munne Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.\n\n&nbsp;', 'films', '', 'inherit', 'open', 'open', '', '11-autosave', '', '', '2013-01-22 17:08:39', '2013-01-22 16:08:39', '', 11, 'http://localhost/~gac/festival_cinema/wordpress/?p=29', 0, 'revision', '', 0),
(30, 1, '2013-01-22 17:06:53', '2013-01-22 16:06:53', '5.1 It’s elementary, talking about gays issues in school\r\n\r\n(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis - 1996 - Documentaire Durée 01h20 - Réalisation : Debra Chasnoff Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'films', '', 'inherit', 'open', 'open', '', '11-revision-2', '', '', '2013-01-22 17:06:53', '2013-01-22 16:06:53', '', 11, 'http://localhost/~gac/festival_cinema/wordpress/?p=30', 0, 'revision', '', 0),
(31, 1, '2013-01-15 17:51:59', '2013-01-15 16:51:59', '', 'Infos pratiques', '', 'inherit', 'open', 'open', '', '17-revision', '', '', '2013-01-15 17:51:59', '2013-01-15 16:51:59', '', 17, 'http://localhost/~gac/festival_cinema/wordpress/?p=31', 0, 'revision', '', 0),
(32, 1, '2013-01-15 17:52:18', '2013-01-15 16:52:18', '', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision', '', '', '2013-01-15 17:52:18', '2013-01-15 16:52:18', '', 18, 'http://localhost/~gac/festival_cinema/wordpress/?p=32', 0, 'revision', '', 0),
(33, 1, '2013-01-22 17:11:01', '2013-01-22 16:11:01', '- La Région Centre\r\n\r\n- La Mairie d''Orléans\r\n\r\n- Le cinéma des Carmes\r\n\r\n- Le Groupe Action Gay &amp; Lesbien - Loiret\r\n\r\n- Citégay\r\n\r\n- La dixième Muse\r\n\r\n- Têtu\r\n\r\n- Yagg.com\r\n\r\n- France Bleu Orléans\r\n\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n\r\n- Cineffable\r\n\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n\r\n- Les VidéObstinées', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-2', '', '', '2013-01-22 17:11:01', '2013-01-22 16:11:01', '', 18, 'http://localhost/~gac/festival_cinema/wordpress/?p=33', 0, 'revision', '', 0),
(34, 1, '2013-01-15 17:52:28', '2013-01-15 16:52:28', '', 'Remerciements', '', 'inherit', 'open', 'open', '', '19-revision', '', '', '2013-01-15 17:52:28', '2013-01-15 16:52:28', '', 19, 'http://localhost/~gac/festival_cinema/wordpress/?p=34', 0, 'revision', '', 0),
(35, 1, '2013-01-22 17:15:02', '2013-01-22 16:15:02', '4.1 Intro\n\nLes 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.\n\n4.2 En colo - Pascal-Alex Vincent - France\n\n2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.\n\n4.3 Pauline – Céline Sciamma- France – 2009\n\n7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.\n\n4.4 Omar- Sébastien Gabriel - France - 2009 - 9 minutes C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.\n\n4.5 Odile\n\n- Bénédicte Delgéhier - France - 2006- 10 minutes Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...\n\n4.6 Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008 17 minutes - VOSTF Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte. 4.7 Cowboy Forever - Jean Baptiste Erreca - France 2006 - 26 minutes Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail... 4.8 American Boy - Patricia &amp; Colette - France 2008 - 4 minutes Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'courts-métrages', '', 'inherit', 'open', 'open', '', '12-autosave', '', '', '2013-01-22 17:15:02', '2013-01-22 16:15:02', '', 12, 'http://localhost/~gac/festival_cinema/wordpress/?p=35', 0, 'revision', '', 0),
(36, 1, '2013-01-15 17:50:56', '2013-01-15 16:50:56', '', 'courts-métrages', '', 'inherit', 'open', 'open', '', '12-revision-2', '', '', '2013-01-15 17:50:56', '2013-01-15 16:50:56', '', 12, 'http://localhost/~gac/festival_cinema/wordpress/?p=36', 0, 'revision', '', 0),
(37, 1, '2013-01-23 10:09:00', '2013-01-23 09:09:00', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS                        Tarifs : Plein tarif : 7,50 €                                                                                                             Pass Festival : 25 € (5 séances)                                                                                                         Soirée courts métrages : 6 € (vendredi)                                                                                             2 séances consécutives le samedi ou le dimanche : 12 €\n\nCartes &amp; réductions acceptées :                                                                                                Cartes DECOUVERTE &amp; PASSION,                                                                                            titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\n\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.                                                    Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\n\nEquipe :                                                                                                                                     Direction artistique : Christel Guillard (Présidente de Ciné Mundi)                                Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost Offset Contacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos pratiques', '', 'inherit', 'open', 'open', '', '17-autosave', '', '', '2013-01-23 10:09:00', '2013-01-23 09:09:00', '', 17, 'http://localhost/~gac/festival_cinema/wordpress/?p=37', 0, 'revision', '', 0),
(38, 1, '2013-01-22 17:09:51', '2013-01-22 16:09:51', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS Tarifs : Plein tarif : 7,50 € Pass Festival : 25 € (5 séances) Soirée courts métrages : 6 € (vendredi) 2 séances consécutives le samedi ou le dimanche : 12 € Cartes &amp; réductions acceptées : Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans… Le festival D’un bord à l’autre est organisé par Ciné Mundi. Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents. Equipe : Direction artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost Offset Contacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos pratiques', '', 'inherit', 'open', 'open', '', '17-revision-2', '', '', '2013-01-22 17:09:51', '2013-01-22 16:09:51', '', 17, 'http://localhost/~gac/festival_cinema/wordpress/?p=38', 0, 'revision', '', 0),
(39, 1, '2013-01-22 17:20:37', '2013-01-22 16:20:37', '', 'Infos pratiques', '', 'inherit', 'open', 'open', '', '17-revision-3', '', '', '2013-01-22 17:20:37', '2013-01-22 16:20:37', '', 17, 'http://localhost/~gac/festival_cinema/wordpress/?p=39', 0, 'revision', '', 0),
(40, 1, '2013-01-22 17:09:12', '2013-01-22 16:09:12', '5.1 It’s elementary, talking about gays issues in school\r\n\r\n(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis - 1996 - Documentaire Durée 01h20 - Réalisation : Debra Chasnoff Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.\r\n\r\n5.2 ANDER - Réalisé par Roberto Castón\r\n\r\nEspagne - 2009 - 02h08 - VOSTF Interprétation : Josean Bengoetxea, Eriz Alberdi, Christian Esquive Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté. Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009).\r\n\r\n5.3 EL NIÑO PEZ - Réalisé par Lucía Puenzo\r\n\r\nArgentine - 2008 - 01h36 - VOSTF Interprétation : Inés Efron, Mariela Vitale, Pep Munne Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.\r\n\r\n5.4 CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif\r\n\r\nGrande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises. Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009).', 'films', '', 'inherit', 'open', 'open', '', '11-revision-3', '', '', '2013-01-22 17:09:12', '2013-01-22 16:09:12', '', 11, 'http://localhost/~gac/festival_cinema/wordpress/?p=40', 0, 'revision', '', 0),
(44, 1, '2013-01-22 17:16:00', '2013-01-22 16:16:00', '4.1 Intro\r\n\r\nLes 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.\r\n\r\n4.2 En colo - Pascal-Alex Vincent - France\r\n\r\n2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.\r\n\r\n4.3 Pauline – Céline Sciamma- France – 2009\r\n\r\n7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.\r\n\r\n4.4 Omar - Sébastien Gabriel - France - 2009 - 9 minutes\r\n\r\nC’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.\r\n\r\n4.5 Odile - Bénédicte Delgéhier - France - 2006- 10 minutes\r\n\r\nUne boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...\r\n\r\n4.6 Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008\r\n\r\n17 minutes - VOSTF Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.\r\n\r\n4.7 Cowboy Forever - Jean Baptiste Erreca - France\r\n\r\n2006 - 26 minutes Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...\r\n\r\n4.8 American Boy - Patricia &amp; Colette - France\r\n\r\n2008 - 4 minutes Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'courts-métrages', '', 'inherit', 'open', 'open', '', '12-revision-3', '', '', '2013-01-22 17:16:00', '2013-01-22 16:16:00', '', 12, 'http://localhost/~gac/festival_cinema/wordpress/?p=44', 0, 'revision', '', 0),
(45, 1, '2013-01-22 17:21:52', '2013-01-22 16:21:52', '<span style="color: #ff0000;">5.1 It’s elementary, talking about gays issues in school</span>\r\n\r\n(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis - 1996 - Documentaire Durée 01h20 - Réalisation : Debra Chasnoff Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.\r\n\r\n<span style="color: #ff0000;">5.2 ANDER - Réalisé par Roberto Castón</span>\r\n\r\nEspagne - 2009 - 02h08 - VOSTF Interprétation : Josean Bengoetxea, Eriz Alberdi, Christian Esquive Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté. Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009).\r\n\r\n<span style="color: #ff0000;">5.3 EL NIÑO PEZ - Réalisé par Lucía Puenzo</span>\r\n\r\nArgentine - 2008 - 01h36 - VOSTF Interprétation : Inés Efron, Mariela Vitale, Pep Munne Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.\r\n\r\n<span style="color: #ff0000;">5.4 CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif</span>\r\n\r\nGrande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises. Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009).', 'films', '', 'inherit', 'open', 'open', '', '11-revision-4', '', '', '2013-01-22 17:21:52', '2013-01-22 16:21:52', '', 11, 'http://localhost/~gac/festival_cinema/wordpress/?p=45', 0, 'revision', '', 0),
(47, 1, '2013-01-22 17:38:31', '2013-01-22 16:38:31', ' ', '', '', 'publish', 'open', 'open', '', '47', '', '', '2013-01-29 17:31:48', '2013-01-29 16:31:48', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?p=47', 3, 'nav_menu_item', '', 0),
(48, 1, '2013-01-22 17:38:31', '2013-01-22 16:38:31', ' ', '', '', 'publish', 'open', 'open', '', '48', '', '', '2013-01-29 17:31:47', '2013-01-29 16:31:47', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?p=48', 2, 'nav_menu_item', '', 0),
(49, 1, '2013-01-22 17:39:54', '2013-01-22 16:39:54', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'publish', 'open', 'open', '', '5-1-its-elementary-talking-about-gays-issues-in-school', '', '', '2013-01-29 16:56:01', '2013-01-29 15:56:01', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?p=49', 0, 'post', '', 0);
INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(50, 1, '2013-01-22 17:39:52', '2013-01-22 16:39:52', '(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis - 1996 - Documentaire Durée 01h20 - Réalisation : Debra Chasnoff Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', '5.1 It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '49-revision', '', '', '2013-01-22 17:39:52', '2013-01-22 16:39:52', '', 49, 'http://localhost/~gac/festival_cinema/wordpress/?p=50', 0, 'revision', '', 0),
(51, 1, '2013-01-22 17:41:17', '2013-01-22 16:41:17', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009)\r\n\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\n\r\nGrand prix du jury – Festival Cinehorizontes (2009)', 'ANDER', '', 'publish', 'open', 'open', '', '5-2-ander-realise-par-roberto-caston', '', '', '2013-01-29 16:54:50', '2013-01-29 15:54:50', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?p=51', 0, 'post', '', 0),
(52, 1, '2013-01-22 17:40:18', '2013-01-22 16:40:18', '', '5.2 ANDER - Réalisé par Roberto Castón', '', 'inherit', 'open', 'open', '', '51-revision', '', '', '2013-01-22 17:40:18', '2013-01-22 16:40:18', '', 51, 'http://localhost/~gac/festival_cinema/wordpress/?p=52', 0, 'revision', '', 0),
(53, 1, '2013-01-22 17:39:54', '2013-01-22 16:39:54', '(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis - 1996 - Documentaire Durée 01h20 - Réalisation : Debra Chasnoff Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', '5.1 It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '49-revision-2', '', '', '2013-01-22 17:39:54', '2013-01-22 16:39:54', '', 49, 'http://localhost/~gac/festival_cinema/wordpress/?p=53', 0, 'revision', '', 0),
(54, 1, '2013-01-22 17:41:17', '2013-01-22 16:41:17', 'Espagne - 2009 - 02h08 - VOSTF Interprétation : Josean Bengoetxea, Eriz Alberdi, Christian Esquive Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté. Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', '5.2 ANDER - Réalisé par Roberto Castón', '', 'inherit', 'open', 'open', '', '51-revision-2', '', '', '2013-01-22 17:41:17', '2013-01-22 16:41:17', '', 51, 'http://localhost/~gac/festival_cinema/wordpress/?p=54', 0, 'revision', '', 0),
(55, 1, '2013-01-22 17:42:15', '2013-01-22 16:42:15', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ', '', 'publish', 'open', 'open', '', '5-3-el-nino-pez-realise-par-lucia-puenzo', '', '', '2013-01-29 16:56:28', '2013-01-29 15:56:28', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?p=55', 0, 'post', '', 0),
(56, 1, '2013-01-22 17:41:57', '2013-01-22 16:41:57', '', '5.3 EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'open', 'open', '', '55-revision', '', '', '2013-01-22 17:41:57', '2013-01-22 16:41:57', '', 55, 'http://localhost/~gac/festival_cinema/wordpress/?p=56', 0, 'revision', '', 0),
(57, 1, '2013-01-22 17:42:42', '2013-01-22 16:42:42', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT', '', 'publish', 'open', 'open', '', '5-4-cant-think-straight-realise-par-shamim-sarif', '', '', '2013-01-29 16:56:49', '2013-01-29 15:56:49', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?p=57', 0, 'post', '', 0),
(58, 1, '2013-01-22 17:42:32', '2013-01-22 16:42:32', '', '5.4 CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '57-revision', '', '', '2013-01-22 17:42:32', '2013-01-22 16:42:32', '', 57, 'http://localhost/~gac/festival_cinema/wordpress/?p=58', 0, 'revision', '', 0),
(59, 1, '2013-01-22 17:42:42', '2013-01-22 16:42:42', 'Grande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises. Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', '5.4 CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '57-revision-2', '', '', '2013-01-22 17:42:42', '2013-01-22 16:42:42', '', 57, 'http://localhost/~gac/festival_cinema/wordpress/?p=59', 0, 'revision', '', 0),
(60, 1, '2013-01-22 17:43:18', '2013-01-22 16:43:18', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 'Intro', '', 'trash', 'open', 'open', '', '4-1-intro', '', '', '2013-02-05 08:52:18', '2013-02-05 07:52:18', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?p=60', 0, 'post', '', 0),
(61, 1, '2013-01-22 17:43:06', '2013-01-22 16:43:06', '', '4.1 Intro', '', 'inherit', 'open', 'open', '', '60-revision', '', '', '2013-01-22 17:43:06', '2013-01-22 16:43:06', '', 60, 'http://localhost/~gac/festival_cinema/wordpress/?p=61', 0, 'revision', '', 0),
(62, 1, '2013-01-22 17:43:46', '2013-01-22 16:43:46', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'publish', 'open', 'open', '', '4-2-en-colo-pascal-alex-vincent-france', '', '', '2013-01-29 16:58:02', '2013-01-29 15:58:02', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?p=62', 0, 'post', '', 0),
(63, 1, '2013-01-22 17:43:29', '2013-01-22 16:43:29', '', '4.2 En colo - Pascal-Alex Vincent - France', '', 'inherit', 'open', 'open', '', '62-revision', '', '', '2013-01-22 17:43:29', '2013-01-22 16:43:29', '', 62, 'http://localhost/~gac/festival_cinema/wordpress/?p=63', 0, 'revision', '', 0),
(64, 1, '2013-01-22 17:44:17', '2013-01-22 16:44:17', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'publish', 'open', 'open', '', '4-3-pauline-celine-sciamma-france-2009', '', '', '2013-01-29 16:58:22', '2013-01-29 15:58:22', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?p=64', 0, 'post', '', 0),
(65, 1, '2013-01-22 17:44:02', '2013-01-22 16:44:02', '', '4.3 Pauline – Céline Sciamma- France – 2009', '', 'inherit', 'open', 'open', '', '64-revision', '', '', '2013-01-22 17:44:02', '2013-01-22 16:44:02', '', 64, 'http://localhost/~gac/festival_cinema/wordpress/?p=65', 0, 'revision', '', 0),
(66, 1, '2013-01-22 17:44:42', '2013-01-22 16:44:42', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar', '', 'publish', 'open', 'open', '', '4-4-omar-sebastien-gabriel-france-2009-9-minutes', '', '', '2013-01-29 16:58:44', '2013-01-29 15:58:44', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?p=66', 0, 'post', '', 0),
(67, 1, '2013-01-22 17:44:30', '2013-01-22 16:44:30', '', '4.4 Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'open', 'open', '', '66-revision', '', '', '2013-01-22 17:44:30', '2013-01-22 16:44:30', '', 66, 'http://localhost/~gac/festival_cinema/wordpress/?p=67', 0, 'revision', '', 0),
(68, 1, '2013-01-22 17:44:42', '2013-01-22 16:44:42', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', '4.4 Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'open', 'open', '', '66-revision-2', '', '', '2013-01-22 17:44:42', '2013-01-22 16:44:42', '', 66, 'http://localhost/~gac/festival_cinema/wordpress/?p=68', 0, 'revision', '', 0),
(69, 1, '2013-01-22 17:46:08', '2013-01-22 16:46:08', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile', '', 'publish', 'open', 'open', '', '4-5-odile-benedicte-delgehier-france-2006-10-minutes', '', '', '2013-01-29 16:59:01', '2013-01-29 15:59:01', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?p=69', 0, 'post', '', 0),
(70, 1, '2013-01-22 17:45:52', '2013-01-22 16:45:52', '', '4.5 Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'open', 'open', '', '69-revision', '', '', '2013-01-22 17:45:52', '2013-01-22 16:45:52', '', 69, 'http://localhost/~gac/festival_cinema/wordpress/?p=70', 0, 'revision', '', 0),
(71, 1, '2013-01-29 11:26:12', '2013-01-29 10:26:12', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', '4.5 Odile  -  - France - 2006- 10 minutes', '', 'inherit', 'open', 'open', '', '69-autosave', '', '', '2013-01-29 11:26:12', '2013-01-29 10:26:12', '', 69, 'http://localhost/~gac/festival_cinema/wordpress/?p=71', 0, 'revision', '', 0),
(72, 1, '2013-01-22 17:48:00', '2013-01-22 16:48:00', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu', '', 'publish', 'open', 'open', '', '4-6-os-sapatos-de-aristeu-rene-guerra-luiz-bresil-2008', '', '', '2013-01-29 17:04:08', '2013-01-29 16:04:08', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?p=72', 0, 'post', '', 0),
(73, 1, '2013-01-22 17:47:48', '2013-01-22 16:47:48', '', '4.6 Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'open', 'open', '', '72-revision', '', '', '2013-01-22 17:47:48', '2013-01-22 16:47:48', '', 72, 'http://localhost/~gac/festival_cinema/wordpress/?p=73', 0, 'revision', '', 0),
(74, 1, '2013-01-22 17:48:25', '2013-01-22 16:48:25', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever', '', 'publish', 'open', 'open', '', '4-7-cowboy-forever-jean-baptiste-erreca-france', '', '', '2013-01-29 17:00:00', '2013-01-29 16:00:00', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?p=74', 0, 'post', '', 0),
(75, 1, '2013-01-22 17:48:13', '2013-01-22 16:48:13', '', '4.7 Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'open', 'open', '', '74-revision', '', '', '2013-01-22 17:48:13', '2013-01-22 16:48:13', '', 74, 'http://localhost/~gac/festival_cinema/wordpress/?p=75', 0, 'revision', '', 0),
(76, 1, '2013-01-22 17:48:47', '2013-01-22 16:48:47', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'publish', 'open', 'open', '', '4-8-american-boy-patricia-colette-france', '', '', '2013-01-29 17:00:24', '2013-01-29 16:00:24', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?p=76', 0, 'post', '', 0),
(77, 1, '2013-01-22 17:48:35', '2013-01-22 16:48:35', '', '4.8 American Boy - Patricia & Colette - France', '', 'inherit', 'open', 'open', '', '76-revision', '', '', '2013-01-22 17:48:35', '2013-01-22 16:48:35', '', 76, 'http://localhost/~gac/festival_cinema/wordpress/?p=77', 0, 'revision', '', 0),
(78, 1, '2013-01-23 09:59:37', '2013-01-23 08:59:37', '<div>\n\nAprès trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien – Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\n\nAu programme de ce rendez-vous  : 5  séances inédites au cinéma Les Carmes à Orléans.\n\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\n\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire – Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en  2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\n\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\n\nBon festival !\n\nChristel Guillard, coordinatrice générale.\n\n</div>', 'Edito', '', 'inherit', 'open', 'open', '', '7-autosave', '', '', '2013-01-23 09:59:37', '2013-01-23 08:59:37', '', 7, 'http://localhost/~gac/festival_cinema/wordpress/?p=78', 0, 'revision', '', 0),
(79, 1, '2013-01-15 17:48:18', '2013-01-15 16:48:18', '<div>\r\n\r\nAprès trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien – Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous  : 5  séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire – Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en  2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\r\n\r\nBon festival !\r\n\r\nChristel Guillard, coordinatrice générale.\r\n\r\n</div>', 'Edito', '', 'inherit', 'open', 'open', '', '7-revision-2', '', '', '2013-01-15 17:48:18', '2013-01-15 16:48:18', '', 7, 'http://localhost/~gac/festival_cinema/wordpress/?p=79', 0, 'revision', '', 0),
(80, 1, '2013-01-29 16:46:33', '2013-01-29 15:46:33', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\n\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\n\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '49-autosave', '', '', '2013-01-29 16:46:33', '2013-01-29 15:46:33', '', 49, 'http://localhost/~gac/festival_cinema/wordpress/?p=80', 0, 'revision', '', 0),
(81, 1, '2013-01-22 17:41:30', '2013-01-22 16:41:30', '(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis - 1996 - Documentaire Durée 01h20 - Réalisation : Debra Chasnoff Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', '5.1 It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '49-revision-3', '', '', '2013-01-22 17:41:30', '2013-01-22 16:41:30', '', 49, 'http://localhost/~gac/festival_cinema/wordpress/?p=81', 0, 'revision', '', 0),
(82, 1, '2013-01-22 17:41:40', '2013-01-22 16:41:40', 'Espagne - 2009 - 02h08 - VOSTF Interprétation : Josean Bengoetxea, Eriz Alberdi, Christian Esquive Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté. Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', '5.2 ANDER - Réalisé par Roberto Castón', '', 'inherit', 'open', 'open', '', '51-revision-3', '', '', '2013-01-22 17:41:40', '2013-01-22 16:41:40', '', 51, 'http://localhost/~gac/festival_cinema/wordpress/?p=82', 0, 'revision', '', 0),
(83, 1, '2013-01-23 10:01:35', '2013-01-23 09:01:35', '(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis - 1996 - Documentaire\r\n\r\nDurée 01h20 - Réalisation : Debra Chasnoff\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', '5.1 It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '49-revision-4', '', '', '2013-01-23 10:01:35', '2013-01-23 09:01:35', '', 49, 'http://localhost/~gac/festival_cinema/wordpress/?p=83', 0, 'revision', '', 0),
(84, 1, '2013-01-22 17:42:15', '2013-01-22 16:42:15', 'Argentine - 2008 - 01h36 - VOSTF Interprétation : Inés Efron, Mariela Vitale, Pep Munne Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', '5.3 EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'open', 'open', '', '55-revision-2', '', '', '2013-01-22 17:42:15', '2013-01-22 16:42:15', '', 55, 'http://localhost/~gac/festival_cinema/wordpress/?p=84', 0, 'revision', '', 0),
(85, 1, '2013-01-22 17:42:48', '2013-01-22 16:42:48', 'Grande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises. Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', '5.4 CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '57-revision-3', '', '', '2013-01-22 17:42:48', '2013-01-22 16:42:48', '', 57, 'http://localhost/~gac/festival_cinema/wordpress/?p=85', 0, 'revision', '', 0),
(86, 1, '2013-01-22 17:43:46', '2013-01-22 16:43:46', '2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', '4.2 En colo - Pascal-Alex Vincent - France', '', 'inherit', 'open', 'open', '', '62-revision-2', '', '', '2013-01-22 17:43:46', '2013-01-22 16:43:46', '', 62, 'http://localhost/~gac/festival_cinema/wordpress/?p=86', 0, 'revision', '', 0),
(87, 1, '2013-01-22 17:44:17', '2013-01-22 16:44:17', '7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', '4.3 Pauline – Céline Sciamma- France – 2009', '', 'inherit', 'open', 'open', '', '64-revision-2', '', '', '2013-01-22 17:44:17', '2013-01-22 16:44:17', '', 64, 'http://localhost/~gac/festival_cinema/wordpress/?p=87', 0, 'revision', '', 0),
(88, 1, '2013-01-22 17:48:00', '2013-01-22 16:48:00', '17 minutes - VOSTF Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', '4.6 Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'open', 'open', '', '72-revision-2', '', '', '2013-01-22 17:48:00', '2013-01-22 16:48:00', '', 72, 'http://localhost/~gac/festival_cinema/wordpress/?p=88', 0, 'revision', '', 0),
(89, 1, '2013-01-22 17:48:25', '2013-01-22 16:48:25', '2006 - 26 minutes Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', '4.7 Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'open', 'open', '', '74-revision-2', '', '', '2013-01-22 17:48:25', '2013-01-22 16:48:25', '', 74, 'http://localhost/~gac/festival_cinema/wordpress/?p=89', 0, 'revision', '', 0),
(90, 1, '2013-01-22 17:48:47', '2013-01-22 16:48:47', '2008 - 4 minutes Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', '4.8 American Boy - Patricia & Colette - France', '', 'inherit', 'open', 'open', '', '76-revision-2', '', '', '2013-01-22 17:48:47', '2013-01-22 16:48:47', '', 76, 'http://localhost/~gac/festival_cinema/wordpress/?p=90', 0, 'revision', '', 0),
(91, 1, '2013-01-22 17:21:05', '2013-01-22 16:21:05', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS Tarifs : Plein tarif : 7,50 € Pass Festival : 25 € (5 séances) Soirée courts métrages : 6 € (vendredi) 2 séances consécutives le samedi ou le dimanche : 12 € Cartes &amp; réductions acceptées : Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans… Le festival D’un bord à l’autre est organisé par Ciné Mundi. Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents. Equipe : Direction artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost Offset Contacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos pratiques', '', 'inherit', 'open', 'open', '', '17-revision-4', '', '', '2013-01-22 17:21:05', '2013-01-22 16:21:05', '', 17, 'http://localhost/~gac/festival_cinema/wordpress/?p=91', 0, 'revision', '', 0),
(92, 1, '2013-01-23 10:07:36', '2013-01-23 09:07:36', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS                        Tarifs : Plein tarif : 7,50 €                                                                                                             Pass Festival : 25 € (5 séances)                                                                                                         Soirée courts métrages : 6 € (vendredi)                                                                                             2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\nCartes &amp; réductions acceptées : Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi. Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\nEquipe : Direction artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost Offset Contacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos pratiques', '', 'inherit', 'open', 'open', '', '17-revision-5', '', '', '2013-01-23 10:07:36', '2013-01-23 09:07:36', '', 17, 'http://localhost/~gac/festival_cinema/wordpress/?p=92', 0, 'revision', '', 0),
(93, 1, '2013-01-23 10:03:13', '2013-01-23 09:03:13', '(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis - 1996 - Documentaire\r\n\r\nDurée 01h20 - Réalisation : Debra Chasnoff\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', '5.1 It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '49-revision-5', '', '', '2013-01-23 10:03:13', '2013-01-23 09:03:13', '', 49, 'http://localhost/~gac/festival_cinema/wordpress/?p=93', 0, 'revision', '', 0),
(94, 1, '2013-01-23 10:09:59', '2013-01-23 09:09:59', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS                        Tarifs : Plein tarif : 7,50 €                                                                                                             Pass Festival : 25 € (5 séances)                                                                                                         Soirée courts métrages : 6 € (vendredi)                                                                                             2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\nCartes &amp; réductions acceptées :                                                                                                Cartes DECOUVERTE &amp; PASSION,                                                                                            titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.                                                    Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\nEquipe :                                                                                                                                     Direction artistique : Christel Guillard (Présidente de Ciné Mundi)                                Programmation : Christel Guillard en collaboration avec                                                        Françoise Dahmane (Cinéma Les Carmes)                                                                          Communication &amp; partenariats : Christel Guillard                                                               Conception graphique : Yannis Bellair                                                                                   Conception du site internet : rccc                                                                                                Impression : Prevost Offset                                                                                                          Contacts :                                                                                                                      festival.dunbordalautre@gmail.com                                                                           www.festivaldunbordalautre.com', 'Infos pratiques', '', 'inherit', 'open', 'open', '', '17-revision-6', '', '', '2013-01-23 10:09:59', '2013-01-23 09:09:59', '', 17, 'http://localhost/~gac/festival_cinema/wordpress/?p=94', 0, 'revision', '', 0),
(95, 1, '2013-01-23 11:09:07', '2013-01-23 10:09:07', '(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis - 1996 - Documentaire\r\n\r\nDurée 01h20 - Réalisation : Debra Chasnoff\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', '5.1 It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '49-revision-6', '', '', '2013-01-23 11:09:07', '2013-01-23 10:09:07', '', 49, 'http://localhost/~gac/festival_cinema/wordpress/?p=95', 0, 'revision', '', 0),
(96, 1, '2013-01-29 09:01:47', '2013-01-29 08:01:47', '(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis - 1996 - Documentaire\r\n\r\nDurée 01h20 - Réalisation : Debra Chasnoff\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', '5.1 It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '49-revision-7', '', '', '2013-01-29 09:01:47', '2013-01-29 08:01:47', '', 49, 'http://localhost/~gac/festival_cinema/wordpress/?p=96', 0, 'revision', '', 0),
(97, 1, '2013-01-29 16:52:37', '2013-01-29 15:52:37', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\n\nPrix C.I.C.A.E – Festival International de Berlin (2009)\n\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\n\nGrand prix du jury – Festival Cinehorizontes (2009)', 'ANDER', '', 'inherit', 'open', 'open', '', '51-autosave', '', '', '2013-01-29 16:52:37', '2013-01-29 15:52:37', '', 51, 'http://localhost/~gac/festival_cinema/wordpress/?p=97', 0, 'revision', '', 0),
(98, 1, '2013-01-23 10:02:51', '2013-01-23 09:02:51', 'Espagne - 2009 - 02h08 - VOSTF\r\n\r\nInterprétation : Josean Bengoetxea, Eriz Alberdi, Christian Esquive\r\n\r\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009)\r\n\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\n\r\nGrand prix du jury – Festival Cinehorizontes (2009)', '5.2 ANDER - Réalisé par Roberto Castón', '', 'inherit', 'open', 'open', '', '51-revision-4', '', '', '2013-01-23 10:02:51', '2013-01-23 09:02:51', '', 51, 'http://localhost/~gac/festival_cinema/wordpress/?p=98', 0, 'revision', '', 0),
(100, 1, '2013-01-29 09:19:53', '2013-01-29 08:19:53', '(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis - 1996 - Documentaire\r\n\r\nDurée 01h20 - Réalisation : Debra Chasnoff\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', '5.1 It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '49-revision-8', '', '', '2013-01-29 09:19:53', '2013-01-29 08:19:53', '', 49, 'http://localhost/~gac/festival_cinema/wordpress/?p=100', 0, 'revision', '', 0);
INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(101, 1, '2013-01-29 09:27:15', '2013-01-29 08:27:15', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', '5.1 It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '49-revision-9', '', '', '2013-01-29 09:27:15', '2013-01-29 08:27:15', '', 49, 'http://localhost/~gac/festival_cinema/wordpress/?p=101', 0, 'revision', '', 0),
(102, 1, '2013-01-29 09:28:39', '2013-01-29 08:28:39', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', '5.1 It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '49-revision-10', '', '', '2013-01-29 09:28:39', '2013-01-29 08:28:39', '', 49, 'http://localhost/~gac/festival_cinema/wordpress/?p=102', 0, 'revision', '', 0),
(103, 1, '2013-01-29 09:34:45', '2013-01-29 08:34:45', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', '5.1 It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '49-revision-11', '', '', '2013-01-29 09:34:45', '2013-01-29 08:34:45', '', 49, 'http://localhost/~gac/festival_cinema/wordpress/?p=103', 0, 'revision', '', 0),
(104, 1, '2013-01-29 09:35:52', '2013-01-29 08:35:52', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', '5.1 It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '49-revision-12', '', '', '2013-01-29 09:35:52', '2013-01-29 08:35:52', '', 49, 'http://localhost/~gac/festival_cinema/wordpress/?p=104', 0, 'revision', '', 0),
(105, 1, '2013-01-29 09:36:31', '2013-01-29 08:36:31', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', '5.1 It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '49-revision-13', '', '', '2013-01-29 09:36:31', '2013-01-29 08:36:31', '', 49, 'http://localhost/~gac/festival_cinema/wordpress/?p=105', 0, 'revision', '', 0),
(106, 1, '2013-01-29 09:22:31', '2013-01-29 08:22:31', 'Espagne - 2009 - 02h08 - VOSTF\r\n\r\nInterprétation : Josean Bengoetxea, Eriz Alberdi, Christian Esquive\r\n\r\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009)\r\n\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\n\r\nGrand prix du jury – Festival Cinehorizontes (2009)', '5.2 ANDER - Réalisé par Roberto Castón', '', 'inherit', 'open', 'open', '', '51-revision-5', '', '', '2013-01-29 09:22:31', '2013-01-29 08:22:31', '', 51, 'http://localhost/~gac/festival_cinema/wordpress/?p=106', 0, 'revision', '', 0),
(107, 1, '2013-01-29 11:13:15', '2013-01-29 10:13:15', 'Argentine - 2008 - 01h36 - VOSTF\n\nInterprétation : Inés Efron, Mariela Vitale, Pep Munne\n\nDans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'open', 'open', '', '55-autosave', '', '', '2013-01-29 11:13:15', '2013-01-29 10:13:15', '', 55, 'http://localhost/~gac/festival_cinema/wordpress/?p=107', 0, 'revision', '', 0),
(108, 1, '2013-01-23 10:03:39', '2013-01-23 09:03:39', 'Argentine - 2008 - 01h36 - VOSTF\r\n\r\nInterprétation : Inés Efron, Mariela Vitale, Pep Munne\r\n\r\nDans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', '5.3 EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'open', 'open', '', '55-revision-3', '', '', '2013-01-23 10:03:39', '2013-01-23 09:03:39', '', 55, 'http://localhost/~gac/festival_cinema/wordpress/?p=108', 0, 'revision', '', 0),
(109, 1, '2013-01-29 11:13:43', '2013-01-29 10:13:43', 'Argentine - 2008 - 01h36 - VOSTF\r\n\r\nInterprétation : Inés Efron, Mariela Vitale, Pep Munne\r\n\r\nDans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'open', 'open', '', '55-revision-4', '', '', '2013-01-29 11:13:43', '2013-01-29 10:13:43', '', 55, 'http://localhost/~gac/festival_cinema/wordpress/?p=109', 0, 'revision', '', 0),
(110, 1, '2013-01-29 11:15:15', '2013-01-29 10:15:15', 'Grande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF\n\nInterprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\n\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\n\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', '5.4 CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '57-autosave', '', '', '2013-01-29 11:15:15', '2013-01-29 10:15:15', '', 57, 'http://localhost/~gac/festival_cinema/wordpress/?p=110', 0, 'revision', '', 0),
(111, 1, '2013-01-23 10:04:03', '2013-01-23 09:04:03', 'Grande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF\r\n\r\nInterprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\r\n\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', '5.4 CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '57-revision-4', '', '', '2013-01-23 10:04:03', '2013-01-23 09:04:03', '', 57, 'http://localhost/~gac/festival_cinema/wordpress/?p=111', 0, 'revision', '', 0),
(112, 1, '2013-01-29 11:12:09', '2013-01-29 10:12:09', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009)\r\n\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\n\r\nGrand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'open', 'open', '', '51-revision-6', '', '', '2013-01-29 11:12:09', '2013-01-29 10:12:09', '', 51, 'http://localhost/~gac/festival_cinema/wordpress/?p=112', 0, 'revision', '', 0),
(113, 1, '2013-01-29 11:14:08', '2013-01-29 10:14:08', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'open', 'open', '', '55-revision-5', '', '', '2013-01-29 11:14:08', '2013-01-29 10:14:08', '', 55, 'http://localhost/~gac/festival_cinema/wordpress/?p=113', 0, 'revision', '', 0),
(114, 1, '2013-01-22 17:43:18', '2013-01-22 16:43:18', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', '4.1 Intro', '', 'inherit', 'open', 'open', '', '60-revision-2', '', '', '2013-01-22 17:43:18', '2013-01-22 16:43:18', '', 60, 'http://localhost/~gac/festival_cinema/wordpress/?p=114', 0, 'revision', '', 0),
(115, 1, '2013-01-29 11:17:44', '2013-01-29 10:17:44', '2009 - 8 minutes\n\nLors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'open', 'open', '', '62-autosave', '', '', '2013-01-29 11:17:44', '2013-01-29 10:17:44', '', 62, 'http://localhost/~gac/festival_cinema/wordpress/?p=115', 0, 'revision', '', 0),
(116, 1, '2013-01-23 10:04:26', '2013-01-23 09:04:26', '2009 - 8 minutes\r\n\r\nLors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', '4.2 En colo - Pascal-Alex Vincent - France', '', 'inherit', 'open', 'open', '', '62-revision-3', '', '', '2013-01-23 10:04:26', '2013-01-23 09:04:26', '', 62, 'http://localhost/~gac/festival_cinema/wordpress/?p=116', 0, 'revision', '', 0),
(117, 1, '2013-01-29 11:18:59', '2013-01-29 10:18:59', '2009 - 8 minutes\r\n\r\nLors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'open', 'open', '', '62-revision-4', '', '', '2013-01-29 11:18:59', '2013-01-29 10:18:59', '', 62, 'http://localhost/~gac/festival_cinema/wordpress/?p=117', 0, 'revision', '', 0),
(118, 1, '2013-01-29 11:15:54', '2013-01-29 10:15:54', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009)\r\n\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\n\r\nGrand prix du jury – Festival Cinehorizontes (2009)', 'ANDER', '', 'inherit', 'open', 'open', '', '51-revision-7', '', '', '2013-01-29 11:15:54', '2013-01-29 10:15:54', '', 51, 'http://localhost/~gac/festival_cinema/wordpress/?p=118', 0, 'revision', '', 0),
(119, 1, '2013-01-29 11:20:13', '2013-01-29 10:20:13', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009)\r\n\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\n\r\nGrand prix du jury – Festival Cinehorizontes (2009)', 'ANDER', '', 'inherit', 'open', 'open', '', '51-revision-8', '', '', '2013-01-29 11:20:13', '2013-01-29 10:20:13', '', 51, 'http://localhost/~gac/festival_cinema/wordpress/?p=119', 0, 'revision', '', 0),
(120, 1, '2013-01-29 11:22:53', '2013-01-29 10:22:53', '7 minutes\n\nC’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', '4.3 Pauline – Céline Sciamma- France – 2009', '', 'inherit', 'open', 'open', '', '64-autosave', '', '', '2013-01-29 11:22:53', '2013-01-29 10:22:53', '', 64, 'http://localhost/~gac/festival_cinema/wordpress/?p=120', 0, 'revision', '', 0),
(121, 1, '2013-01-23 10:04:37', '2013-01-23 09:04:37', '7 minutes\r\n\r\nC’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', '4.3 Pauline – Céline Sciamma- France – 2009', '', 'inherit', 'open', 'open', '', '64-revision-3', '', '', '2013-01-23 10:04:37', '2013-01-23 09:04:37', '', 64, 'http://localhost/~gac/festival_cinema/wordpress/?p=121', 0, 'revision', '', 0),
(122, 1, '2013-01-29 11:23:19', '2013-01-29 10:23:19', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'inherit', 'open', 'open', '', '64-revision-4', '', '', '2013-01-29 11:23:19', '2013-01-29 10:23:19', '', 64, 'http://localhost/~gac/festival_cinema/wordpress/?p=122', 0, 'revision', '', 0),
(123, 1, '2013-01-29 11:24:38', '2013-01-29 10:24:38', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', '4.4 Omar -  - France - 2009 - 9 minutes', '', 'inherit', 'open', 'open', '', '66-autosave', '', '', '2013-01-29 11:24:38', '2013-01-29 10:24:38', '', 66, 'http://localhost/~gac/festival_cinema/wordpress/?p=123', 0, 'revision', '', 0),
(124, 1, '2013-01-22 17:45:32', '2013-01-22 16:45:32', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', '4.4 Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'open', 'open', '', '66-revision-3', '', '', '2013-01-22 17:45:32', '2013-01-22 16:45:32', '', 66, 'http://localhost/~gac/festival_cinema/wordpress/?p=124', 0, 'revision', '', 0),
(126, 1, '2013-01-22 17:46:08', '2013-01-22 16:46:08', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', '4.5 Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'open', 'open', '', '69-revision-2', '', '', '2013-01-22 17:46:08', '2013-01-22 16:46:08', '', 69, 'http://localhost/~gac/festival_cinema/wordpress/?p=126', 0, 'revision', '', 0),
(127, 1, '2013-01-29 11:27:36', '2013-01-29 10:27:36', '17 minutes - VOSTF\n\nLe corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', '4.6 Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'open', 'open', '', '72-autosave', '', '', '2013-01-29 11:27:36', '2013-01-29 10:27:36', '', 72, 'http://localhost/~gac/festival_cinema/wordpress/?p=127', 0, 'revision', '', 0),
(128, 1, '2013-01-23 10:04:56', '2013-01-23 09:04:56', '17 minutes - VOSTF\r\n\r\nLe corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', '4.6 Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'open', 'open', '', '72-revision-3', '', '', '2013-01-23 10:04:56', '2013-01-23 09:04:56', '', 72, 'http://localhost/~gac/festival_cinema/wordpress/?p=128', 0, 'revision', '', 0),
(129, 1, '2013-01-29 11:29:27', '2013-01-29 10:29:27', '2006 - 26 minutes\n\nAu cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', '4.7 Cowboy Forever -  - France', '', 'inherit', 'open', 'open', '', '74-autosave', '', '', '2013-01-29 11:29:27', '2013-01-29 10:29:27', '', 74, 'http://localhost/~gac/festival_cinema/wordpress/?p=129', 0, 'revision', '', 0),
(130, 1, '2013-01-23 10:05:06', '2013-01-23 09:05:06', '2006 - 26 minutes\r\n\r\nAu cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', '4.7 Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'open', 'open', '', '74-revision-3', '', '', '2013-01-23 10:05:06', '2013-01-23 09:05:06', '', 74, 'http://localhost/~gac/festival_cinema/wordpress/?p=130', 0, 'revision', '', 0),
(131, 1, '2013-01-29 11:30:58', '2013-01-29 10:30:58', '2008 - 4 minutes\n\nComment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', '4.8 American Boy - Patricia & Colette - France', '', 'inherit', 'open', 'open', '', '76-autosave', '', '', '2013-01-29 11:30:58', '2013-01-29 10:30:58', '', 76, 'http://localhost/~gac/festival_cinema/wordpress/?p=131', 0, 'revision', '', 0),
(132, 1, '2013-01-23 10:05:20', '2013-01-23 09:05:20', '2008 - 4 minutes\r\n\r\nComment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', '4.8 American Boy - Patricia & Colette - France', '', 'inherit', 'open', 'open', '', '76-revision-3', '', '', '2013-01-23 10:05:20', '2013-01-23 09:05:20', '', 76, 'http://localhost/~gac/festival_cinema/wordpress/?p=132', 0, 'revision', '', 0),
(133, 1, '2013-01-29 16:54:36', '2013-01-29 15:54:36', '', 'ANDER1', '', 'inherit', 'open', 'open', '', 'ander1', '', '', '2013-01-29 16:54:36', '2013-01-29 15:54:36', '', 51, 'http://localhost/~gac/festival_cinema/wordpress/wp-content/uploads/2013/01/ANDER1.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2013-01-29 11:21:15', '2013-01-29 10:21:15', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009)\r\n\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\n\r\nGrand prix du jury – Festival Cinehorizontes (2009)', 'ANDER', '', 'inherit', 'open', 'open', '', '51-revision-9', '', '', '2013-01-29 11:21:15', '2013-01-29 10:21:15', '', 51, 'http://localhost/~gac/festival_cinema/wordpress/?p=134', 0, 'revision', '', 0),
(135, 1, '2013-01-29 16:55:54', '2013-01-29 15:55:54', '', 'ItsElementaryGBan', '', 'inherit', 'open', 'open', '', 'itselementarygban', '', '', '2013-01-29 16:55:54', '2013-01-29 15:55:54', '', 49, 'http://localhost/~gac/festival_cinema/wordpress/wp-content/uploads/2013/01/ItsElementaryGBan.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2013-01-29 11:10:45', '2013-01-29 10:10:45', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '49-revision-14', '', '', '2013-01-29 11:10:45', '2013-01-29 10:10:45', '', 49, 'http://localhost/~gac/festival_cinema/wordpress/?p=136', 0, 'revision', '', 0),
(137, 1, '2013-01-29 16:56:20', '2013-01-29 15:56:20', '', 'EL NINO PEZ 1', '', 'inherit', 'open', 'open', '', 'el-nino-pez-1', '', '', '2013-01-29 16:56:20', '2013-01-29 15:56:20', '', 55, 'http://localhost/~gac/festival_cinema/wordpress/wp-content/uploads/2013/01/EL-NINO-PEZ-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2013-01-29 11:16:03', '2013-01-29 10:16:03', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ', '', 'inherit', 'open', 'open', '', '55-revision-6', '', '', '2013-01-29 11:16:03', '2013-01-29 10:16:03', '', 55, 'http://localhost/~gac/festival_cinema/wordpress/?p=138', 0, 'revision', '', 0),
(139, 1, '2013-01-29 16:56:45', '2013-01-29 15:56:45', '', 'I_cant_think_straight_001', '', 'inherit', 'open', 'open', '', 'i_cant_think_straight_001', '', '', '2013-01-29 16:56:45', '2013-01-29 15:56:45', '', 57, 'http://localhost/~gac/festival_cinema/wordpress/wp-content/uploads/2013/01/I_cant_think_straight_001.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2013-01-29 11:15:42', '2013-01-29 10:15:42', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT', '', 'inherit', 'open', 'open', '', '57-revision-5', '', '', '2013-01-29 11:15:42', '2013-01-29 10:15:42', '', 57, 'http://localhost/~gac/festival_cinema/wordpress/?p=140', 0, 'revision', '', 0),
(141, 1, '2013-01-29 16:57:56', '2013-01-29 15:57:56', '', 'EN_COLOricco', '', 'inherit', 'open', 'open', '', 'en_coloricco', '', '', '2013-01-29 16:57:56', '2013-01-29 15:57:56', '', 62, 'http://localhost/~gac/festival_cinema/wordpress/wp-content/uploads/2013/01/EN_COLOricco.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2013-01-29 11:19:13', '2013-01-29 10:19:13', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'open', 'open', '', '62-revision-5', '', '', '2013-01-29 11:19:13', '2013-01-29 10:19:13', '', 62, 'http://localhost/~gac/festival_cinema/wordpress/?p=142', 0, 'revision', '', 0),
(143, 1, '2013-01-29 16:58:17', '2013-01-29 15:58:17', '', 'PAULINE_1', '', 'inherit', 'open', 'open', '', 'pauline_1', '', '', '2013-01-29 16:58:17', '2013-01-29 15:58:17', '', 64, 'http://localhost/~gac/festival_cinema/wordpress/wp-content/uploads/2013/01/PAULINE_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2013-01-29 11:23:33', '2013-01-29 10:23:33', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'inherit', 'open', 'open', '', '64-revision-5', '', '', '2013-01-29 11:23:33', '2013-01-29 10:23:33', '', 64, 'http://localhost/~gac/festival_cinema/wordpress/?p=144', 0, 'revision', '', 0),
(145, 1, '2013-01-29 16:58:37', '2013-01-29 15:58:37', '', 'OMAR_', '', 'inherit', 'open', 'open', '', 'omar_', '', '', '2013-01-29 16:58:37', '2013-01-29 15:58:37', '', 66, 'http://localhost/~gac/festival_cinema/wordpress/wp-content/uploads/2013/01/OMAR_.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2013-01-29 11:24:57', '2013-01-29 10:24:57', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar', '', 'inherit', 'open', 'open', '', '66-revision-4', '', '', '2013-01-29 11:24:57', '2013-01-29 10:24:57', '', 66, 'http://localhost/~gac/festival_cinema/wordpress/?p=146', 0, 'revision', '', 0),
(147, 1, '2013-01-29 16:58:57', '2013-01-29 15:58:57', '', 'Odile', '', 'inherit', 'open', 'open', '', 'odile', '', '', '2013-01-29 16:58:57', '2013-01-29 15:58:57', '', 69, 'http://localhost/~gac/festival_cinema/wordpress/wp-content/uploads/2013/01/Odile-.jpg', 0, 'attachment', 'image/jpeg', 0),
(148, 1, '2013-01-29 11:26:23', '2013-01-29 10:26:23', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile', '', 'inherit', 'open', 'open', '', '69-revision-3', '', '', '2013-01-29 11:26:23', '2013-01-29 10:26:23', '', 69, 'http://localhost/~gac/festival_cinema/wordpress/?p=148', 0, 'revision', '', 0),
(149, 1, '2013-01-29 16:59:55', '2013-01-29 15:59:55', '', 'COWBOY FOREVER', '', 'inherit', 'open', 'open', '', 'cowboy-forever', '', '', '2013-01-29 16:59:55', '2013-01-29 15:59:55', '', 74, 'http://localhost/~gac/festival_cinema/wordpress/wp-content/uploads/2013/01/COWBOY-FOREVER.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2013-01-29 11:29:52', '2013-01-29 10:29:52', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever', '', 'inherit', 'open', 'open', '', '74-revision-4', '', '', '2013-01-29 11:29:52', '2013-01-29 10:29:52', '', 74, 'http://localhost/~gac/festival_cinema/wordpress/?p=150', 0, 'revision', '', 0),
(151, 1, '2013-01-29 17:00:17', '2013-01-29 16:00:17', '', 'American boy', '', 'inherit', 'open', 'open', '', 'american-boy', '', '', '2013-01-29 17:00:17', '2013-01-29 16:00:17', '', 76, 'http://localhost/~gac/festival_cinema/wordpress/wp-content/uploads/2013/01/American-boy.png', 0, 'attachment', 'image/png', 0),
(152, 1, '2013-01-29 11:31:31', '2013-01-29 10:31:31', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'inherit', 'open', 'open', '', '76-revision-4', '', '', '2013-01-29 11:31:31', '2013-01-29 10:31:31', '', 76, 'http://localhost/~gac/festival_cinema/wordpress/?p=152', 0, 'revision', '', 0),
(153, 1, '2013-01-29 17:03:49', '2013-01-29 16:03:49', '', 'essai', '', 'inherit', 'open', 'open', '', 'essai', '', '', '2013-01-29 17:03:49', '2013-01-29 16:03:49', '', 72, 'http://localhost/~gac/festival_cinema/wordpress/wp-content/uploads/2013/01/essai.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 1, '2013-01-29 11:28:15', '2013-01-29 10:28:15', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu', '', 'inherit', 'open', 'open', '', '72-revision-4', '', '', '2013-01-29 11:28:15', '2013-01-29 10:28:15', '', 72, 'http://localhost/~gac/festival_cinema/wordpress/?p=154', 0, 'revision', '', 0),
(156, 1, '2013-01-29 17:56:00', '2013-01-29 16:56:00', '', 'Diaporama Festival', '', 'publish', 'closed', 'closed', '', 'diaporama-festival', '', '', '2013-01-30 13:42:28', '2013-01-30 12:42:28', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?post_type=slideshow&#038;p=156', 0, 'slideshow', '', 0),
(157, 1, '2013-02-05 08:49:54', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-02-05 08:49:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/~gac/festival_cinema/wordpress/?p=157', 0, 'post', '', 0),
(158, 1, '2013-01-29 11:16:33', '2013-01-29 10:16:33', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 'Intro', '', 'inherit', 'open', 'open', '', '60-revision-3', '', '', '2013-01-29 11:16:33', '2013-01-29 10:16:33', '', 60, 'http://localhost/~gac/festival_cinema/wordpress/?p=158', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_terms`
--

CREATE TABLE IF NOT EXISTS `wp_festival_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `wp_festival_terms`
--

INSERT INTO `wp_festival_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'films', 'films', 0),
(3, 'courts-métrages', 'courts-metrages', 0),
(4, 'navigation', 'navigation', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_festival_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_festival_term_relationships`
--

INSERT INTO `wp_festival_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(10, 4, 0),
(20, 4, 0),
(21, 4, 0),
(22, 4, 0),
(47, 4, 0),
(48, 4, 0),
(49, 2, 0),
(51, 2, 0),
(55, 2, 0),
(57, 2, 0),
(60, 3, 0),
(62, 3, 0),
(64, 3, 0),
(66, 3, 0),
(69, 3, 0),
(72, 3, 0),
(74, 3, 0),
(76, 3, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_festival_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `wp_festival_term_taxonomy`
--

INSERT INTO `wp_festival_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', 'Voici quelques films du festival LGBT', 0, 4),
(3, 3, 'category', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 0, 7),
(4, 4, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Contenu de la table `wp_festival_usermeta`
--

INSERT INTO `wp_festival_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_festival_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_festival_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_festival_dashboard_quick_press_last_post_id', '157'),
(15, 1, 'wp_festival_user-settings', 'editor=tinymce&hidetb=1&libraryContent=browse'),
(16, 1, 'wp_festival_user-settings-time', '1359036050'),
(17, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:11:"link-target";i:1;s:3:"xfn";i:2;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(19, 1, 'nav_menu_recently_edited', '4'),
(20, 1, 'closedpostboxes_post', 'a:0:{}'),
(21, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";i:6;s:12:"revisionsdiv";}'),
(22, 1, 'meta-box-order_post', 'a:3:{s:4:"side";s:61:"submitdiv,formatdiv,categorydiv,tagsdiv-post_tag,postimagediv";s:6:"normal";s:96:"postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv,revisionsdiv";s:8:"advanced";s:0:"";}'),
(23, 1, 'screen_layout_post', '2');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_users`
--

CREATE TABLE IF NOT EXISTS `wp_festival_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_festival_users`
--

INSERT INTO `wp_festival_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B9n9tW9B17eolFcxvN4W/VMWGhCcSm.', 'admin', 'alexgac45@gmail.com', '', '2013-01-15 16:33:25', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `wp_links`
--

INSERT INTO `wp_links` (`link_id`, `link_url`, `link_name`, `link_image`, `link_target`, `link_description`, `link_visible`, `link_owner`, `link_rating`, `link_updated`, `link_rel`, `link_notes`, `link_rss`) VALUES
(1, 'http://codex.wordpress.org', 'Documentation', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(2, 'http://www.wordpress-fr.net/planet/', 'Blog WordPress', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', 'http://feeds2.feedburner.com/WordpressFrancophonePlanet'),
(3, 'http://www.wordpress-fr.net/support/', 'Forums d&rsquo;entraide en français', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(4, 'http://wordpress.org/extend/plugins/', 'Extensions', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(5, 'http://wordpress.org/extend/themes/', 'Thèmes', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(6, '<a href="http://www.wordpress-fr.net/support/">Forums d&rsquo;entraide</a>', 'Remarque', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(7, 'http://www.wordpress-fr.net/planet/', 'La planète WordPress', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=231 ;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/~gac/wordpress', 'yes'),
(2, 'blogname', 'Ferrari&#039;s Website', 'yes'),
(3, 'blogdescription', 'by Atari', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'alexgac45@gmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '0', 'yes'),
(21, 'default_post_edit_rows', '20', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y, G \\h i \\m\\i\\n', 'yes'),
(26, 'links_recently_updated_prepend', '<em>', 'yes'),
(27, 'links_recently_updated_append', '</em>', 'yes'),
(28, 'links_recently_updated_time', '120', 'yes'),
(29, 'comment_moderation', '0', 'yes'),
(30, 'moderation_notify', '1', 'yes'),
(31, 'permalink_structure', '', 'yes'),
(32, 'gzipcompression', '0', 'yes'),
(33, 'hack_file', '0', 'yes'),
(34, 'blog_charset', 'UTF-8', 'yes'),
(35, 'moderation_keys', '', 'no'),
(36, 'active_plugins', 'a:1:{i:0;s:21:"wp-piwik/wp-piwik.php";}', 'yes'),
(37, 'home', 'http://localhost/~gac/wordpress', 'yes'),
(38, 'category_base', '', 'yes'),
(39, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(40, 'advanced_edit', '0', 'yes'),
(41, 'comment_max_links', '2', 'yes'),
(42, 'gmt_offset', '1', 'yes'),
(43, 'default_email_category', '1', 'yes'),
(44, 'recently_edited', 'a:4:{i:0;s:108:"/mnt/home/gac/public_html/wordpress/wp-content/themes/wordpress-bootstrap-v2.3/wordpress-bootstrap/style.css";i:2;s:74:"/mnt/home/gac/public_html/wordpress/wp-content/plugins/akismet/akismet.php";i:3;s:76:"/mnt/home/gac/public_html/wordpress/wp-content/themes/twentyeleven/style.css";i:4;s:0:"";}', 'no'),
(45, 'template', 'twentyeleven', 'yes'),
(46, 'stylesheet', 'twentyeleven', 'yes'),
(47, 'comment_whitelist', '1', 'yes'),
(48, 'blacklist_keys', '', 'no'),
(49, 'comment_registration', '0', 'yes'),
(50, 'html_type', 'text/html', 'yes'),
(51, 'use_trackback', '0', 'yes'),
(52, 'default_role', 'subscriber', 'yes'),
(53, 'db_version', '21707', 'yes'),
(54, 'uploads_use_yearmonth_folders', '1', 'yes'),
(55, 'upload_path', '', 'yes'),
(56, 'blog_public', '0', 'yes'),
(57, 'default_link_category', '2', 'yes'),
(58, 'show_on_front', 'posts', 'yes'),
(59, 'tag_base', '', 'yes'),
(60, 'show_avatars', '1', 'yes'),
(61, 'avatar_rating', 'G', 'yes'),
(62, 'upload_url_path', '', 'yes'),
(63, 'thumbnail_size_w', '150', 'yes'),
(64, 'thumbnail_size_h', '150', 'yes'),
(65, 'thumbnail_crop', '1', 'yes'),
(66, 'medium_size_w', '300', 'yes'),
(67, 'medium_size_h', '300', 'yes'),
(68, 'avatar_default', 'mystery', 'yes'),
(69, 'enable_app', '0', 'yes'),
(70, 'enable_xmlrpc', '0', 'yes'),
(71, 'large_size_w', '1024', 'yes'),
(72, 'large_size_h', '1024', 'yes'),
(73, 'image_default_link_type', 'file', 'yes'),
(74, 'image_default_size', '', 'yes'),
(75, 'image_default_align', '', 'yes'),
(76, 'close_comments_for_old_posts', '0', 'yes'),
(77, 'close_comments_days_old', '14', 'yes'),
(78, 'thread_comments', '1', 'yes'),
(79, 'thread_comments_depth', '5', 'yes'),
(80, 'page_comments', '0', 'yes'),
(81, 'comments_per_page', '50', 'yes'),
(82, 'default_comments_page', 'newest', 'yes'),
(83, 'comment_order', 'asc', 'yes'),
(84, 'sticky_posts', 'a:0:{}', 'yes'),
(85, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(86, 'widget_text', 'a:0:{}', 'yes'),
(87, 'widget_rss', 'a:0:{}', 'yes'),
(88, 'uninstall_plugins', 'a:0:{}', 'no'),
(89, 'timezone_string', '', 'yes'),
(90, 'embed_autourls', '1', 'yes'),
(91, 'embed_size_w', '', 'yes'),
(92, 'embed_size_h', '600', 'yes'),
(93, 'page_for_posts', '0', 'yes'),
(94, 'page_on_front', '0', 'yes'),
(95, 'default_post_format', '0', 'yes'),
(96, 'initial_db_version', '21707', 'yes'),
(97, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:63:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:19:"wp-piwik_read_stats";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(98, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:1:{i:0;s:10:"calendar-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(104, 'cron', 'a:4:{i:1360079432;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1360079639;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1360079941;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"3.4.2";s:12:"last_checked";i:1360055538;}', 'yes'),
(107, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1360055569;}', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1360055599;}', 'yes'),
(111, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:31:"http://localhost/~gac/wordpress";s:4:"link";s:107:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/~gac/wordpress/";s:3:"url";s:140:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/~gac/wordpress/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:14:"Blog WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:46:"Autres actualités de WordPress (en français)";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(112, 'can_compress_scripts', '0', 'yes'),
(127, 'current_theme', 'Twenty Eleven', 'yes'),
(128, 'theme_mods_twentyten', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1354635709;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:1:{i:0;s:10:"calendar-2";}s:19:"primary-widget-area";a:1:{i:0;s:6:"meta-2";}s:21:"secondary-widget-area";a:0:{}s:24:"first-footer-widget-area";a:0:{}s:25:"second-footer-widget-area";a:0:{}s:24:"third-footer-widget-area";a:0:{}s:25:"fourth-footer-widget-area";N;}}}', 'yes'),
(129, 'theme_switched', '', 'yes'),
(141, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:"title";s:10:"Calendrier";}s:12:"_multiwidget";i:1;}', 'yes'),
(142, 'twentyeleven_theme_options', 'a:3:{s:12:"color_scheme";s:5:"light";s:10:"link_color";s:7:"#67bef9";s:12:"theme_layout";s:15:"sidebar-content";}', 'yes'),
(147, 'theme_mods_twentyeleven', 'a:5:{s:12:"header_image";s:80:"http://localhost/~gac/wordpress/wp-content/uploads/2012/11/cropped-ferrari11.jpg";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:25;s:3:"url";s:80:"http://localhost/~gac/wordpress/wp-content/uploads/2012/11/cropped-ferrari11.jpg";s:13:"thumbnail_url";s:80:"http://localhost/~gac/wordpress/wp-content/uploads/2012/11/cropped-ferrari11.jpg";s:6:"height";i:513;s:5:"width";i:1000;}s:16:"header_textcolor";s:3:"000";s:16:"background_color";s:6:"742929";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:7;}}', 'yes'),
(155, '_transient_random_seed', '137055c8e1dc0416fd5bf3cdcde1549e', 'yes'),
(168, 'recently_activated', 'a:0:{}', 'yes'),
(171, 'ftp_credentials', 'a:3:{s:8:"hostname";s:3:"gac";s:8:"username";s:3:"gac";s:15:"connection_type";s:3:"ftp";}', 'yes'),
(172, 'wp-piwik_global-settings', 'a:26:{s:8:"revision";i:90700;s:17:"add_tracking_code";b:0;s:20:"last_settings_update";i:1354035183;s:11:"piwik_token";s:0:"";s:9:"piwik_url";s:0:"";s:10:"piwik_path";s:0:"";s:10:"piwik_mode";s:4:"http";s:15:"piwik_useragent";s:3:"php";s:22:"piwik_useragent_string";s:8:"WP-Piwik";s:16:"dashboard_widget";b:0;s:15:"dashboard_chart";b:0;s:13:"dashboard_seo";b:0;s:9:"stats_seo";b:0;s:18:"capability_stealth";a:0:{}s:21:"capability_read_stats";a:1:{s:13:"administrator";b:1;}s:14:"piwik_shortcut";b:0;s:12:"default_date";s:9:"yesterday";s:16:"auto_site_config";b:1;s:9:"track_404";b:0;s:14:"track_compress";b:0;s:10:"track_post";b:0;s:17:"disable_timelimit";b:0;s:18:"disable_ssl_verify";b:0;s:15:"disable_cookies";b:0;s:7:"toolbar";b:0;s:10:"shortcodes";b:0;}', 'yes'),
(173, 'wp-piwik_settings', 'a:5:{s:4:"name";s:0:"";s:13:"tracking_code";s:0:"";s:7:"site_id";N;s:25:"last_tracking_code_update";i:0;s:18:"dashboard_revision";i:0;}', 'yes'),
(180, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1354678515', 'no'),
(181, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p>', 'no'),
(182, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1354678515', 'no'),
(183, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(184, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1354678516', 'no'),
(185, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(186, '_transient_timeout_plugin_slugs', '1354722563', 'no'),
(187, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:21:"wp-piwik/wp-piwik.php";}', 'no'),
(188, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1354678527', 'no'),
(189, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no'),
(190, '_site_transient_timeout_wporg_theme_feature_list', '1354649983', 'yes'),
(191, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(192, 'optionsframework', 'a:2:{s:2:"id";s:11:"wpbootstrap";s:12:"knownoptions";a:1:{i:0;s:11:"wpbootstrap";}}', 'yes'),
(193, 'theme_mods_wordpress-bootstrap-v2.3/wordpress-bootstrap', 'a:9:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:8:"main_nav";i:7;s:12:"footer_links";i:0;}s:16:"background_image";s:70:"http://localhost/~gac/wordpress/wp-content/uploads/2012/12/ferrari.jpg";s:22:"background_image_thumb";s:78:"http://localhost/~gac/wordpress/wp-content/uploads/2012/12/ferrari-150x150.jpg";s:17:"background_repeat";s:9:"no-repeat";s:21:"background_position_x";s:6:"center";s:21:"background_attachment";s:5:"fixed";s:16:"background_color";s:0:"";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1354638563;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:8:"sidebar1";a:2:{i:0;s:10:"calendar-2";i:1;s:6:"meta-2";}s:8:"sidebar2";a:0:{}s:7:"footer1";a:0:{}s:7:"footer2";a:0:{}s:7:"footer3";a:0:{}}}}', 'yes'),
(194, 'wpbootstrap', 'a:22:{s:18:"heading_typography";a:3:{s:4:"face";s:43:""Helvetica Neue",Helvetica,Arial,sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:0:"";}s:20:"main_body_typography";a:3:{s:4:"face";s:43:""Helvetica Neue",Helvetica,Arial,sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:0:"";}s:10:"link_color";s:7:"#000000";s:16:"link_hover_color";s:0:"";s:17:"link_active_color";s:0:"";s:12:"nav_position";s:5:"fixed";s:16:"top_nav_bg_color";s:0:"";s:19:"showhidden_gradient";s:1:"0";s:29:"top_nav_bottom_gradient_color";s:0:"";s:18:"top_nav_link_color";s:0:"";s:24:"top_nav_link_hover_color";s:0:"";s:21:"top_nav_dropdown_item";s:0:"";s:25:"top_nav_dropdown_hover_bg";s:0:"";s:10:"search_bar";s:1:"0";s:17:"showhidden_themes";s:1:"0";s:10:"wpbs_theme";s:7:"default";s:24:"showhidden_slideroptions";s:1:"0";s:14:"slider_options";s:1:"5";s:18:"hero_unit_bg_color";s:0:"";s:25:"suppress_comments_message";s:1:"1";s:9:"blog_hero";s:1:"1";s:8:"wpbs_css";s:0:"";}', 'yes'),
(195, 'category_children', 'a:0:{}', 'yes'),
(199, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(229, '_site_transient_timeout_theme_roots', '1360057399', 'yes'),
(230, '_site_transient_theme_roots', 'a:3:{s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:44:"wordpress-bootstrap-v2.3/wordpress-bootstrap";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=126 ;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 1, '_edit_lock', '1354635700:1'),
(15, 1, '_edit_last', '1'),
(31, 21, '_wp_attached_file', '2012/11/logo.jpg'),
(32, 21, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"400";s:6:"height";s:3:"300";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:16:"2012/11/logo.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:3:{s:4:"file";s:16:"logo-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:16:"logo-300x225.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"225";}s:14:"post-thumbnail";a:3:{s:4:"file";s:16:"logo-400x288.jpg";s:5:"width";s:3:"400";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:16:"logo-400x288.jpg";s:5:"width";s:3:"400";s:6:"height";s:3:"288";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(33, 20, '_edit_last', '1'),
(34, 20, '_edit_lock', '1354034334:1'),
(36, 23, '_wp_attached_file', '2012/11/cropped-ferrari2.jpg'),
(37, 23, '_wp_attachment_context', 'custom-header'),
(38, 23, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:4:"1000";s:6:"height";s:3:"376";s:14:"hwstring_small";s:23:"height=''48'' width=''128''";s:4:"file";s:28:"2012/11/cropped-ferrari2.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:28:"cropped-ferrari2-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:28:"cropped-ferrari2-300x112.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"112";}s:14:"post-thumbnail";a:3:{s:4:"file";s:29:"cropped-ferrari2-1000x288.jpg";s:5:"width";s:4:"1000";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:29:"cropped-ferrari2-1000x288.jpg";s:5:"width";s:4:"1000";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:28:"cropped-ferrari2-500x188.jpg";s:5:"width";s:3:"500";s:6:"height";s:3:"188";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(39, 23, '_wp_attachment_is_custom_header', 'twentyeleven'),
(42, 25, '_wp_attached_file', '2012/11/cropped-ferrari11.jpg'),
(43, 25, '_wp_attachment_context', 'custom-header'),
(44, 25, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:4:"1000";s:6:"height";s:3:"513";s:14:"hwstring_small";s:23:"height=''65'' width=''128''";s:4:"file";s:29:"2012/11/cropped-ferrari11.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:29:"cropped-ferrari11-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:29:"cropped-ferrari11-300x153.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"153";}s:14:"post-thumbnail";a:3:{s:4:"file";s:30:"cropped-ferrari11-1000x288.jpg";s:5:"width";s:4:"1000";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:30:"cropped-ferrari11-1000x288.jpg";s:5:"width";s:4:"1000";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:29:"cropped-ferrari11-500x256.jpg";s:5:"width";s:3:"500";s:6:"height";s:3:"256";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(45, 25, '_wp_attachment_is_custom_header', 'twentyeleven'),
(48, 27, '_edit_last', '1'),
(49, 27, '_edit_lock', '1354033738:1'),
(50, 27, '_wp_page_template', 'default'),
(62, 42, '_edit_last', '1'),
(63, 42, '_edit_lock', '1354635864:1'),
(64, 43, '_wp_attached_file', '2012/12/test.jpg'),
(65, 43, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"500";s:6:"height";s:3:"335";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:16:"2012/12/test.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:3:{s:4:"file";s:16:"test-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:16:"test-300x201.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"201";}s:13:"wpbs-featured";a:3:{s:4:"file";s:16:"test-500x300.jpg";s:5:"width";s:3:"500";s:6:"height";s:3:"300";}s:18:"wpbs-featured-home";a:3:{s:4:"file";s:16:"test-500x311.jpg";s:5:"width";s:3:"500";s:6:"height";s:3:"311";}s:15:"bones-thumb-600";a:3:{s:4:"file";s:16:"test-223x150.jpg";s:5:"width";s:3:"223";s:6:"height";s:3:"150";}s:15:"bones-thumb-300";a:3:{s:4:"file";s:16:"test-300x100.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"100";}s:14:"post-thumbnail";a:3:{s:4:"file";s:16:"test-125x125.jpg";s:5:"width";s:3:"125";s:6:"height";s:3:"125";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(67, 45, '_menu_item_type', 'post_type'),
(68, 45, '_menu_item_menu_item_parent', '0'),
(69, 45, '_menu_item_object_id', '27'),
(70, 45, '_menu_item_object', 'page'),
(71, 45, '_menu_item_target', ''),
(72, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(73, 45, '_menu_item_xfn', ''),
(74, 45, '_menu_item_url', ''),
(85, 47, '_menu_item_type', 'custom'),
(86, 47, '_menu_item_menu_item_parent', '0'),
(87, 47, '_menu_item_object_id', '47'),
(88, 47, '_menu_item_object', 'custom'),
(89, 47, '_menu_item_target', ''),
(90, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(91, 47, '_menu_item_xfn', ''),
(92, 47, '_menu_item_url', 'http://localhost/~gac/wordpress/'),
(94, 49, '_edit_last', '1'),
(95, 49, '_edit_lock', '1354637278:1'),
(96, 50, '_wp_attached_file', '2012/12/1.jpg'),
(97, 50, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"493";s:6:"height";s:3:"328";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:13:"2012/12/1.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:3:{s:4:"file";s:13:"1-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:13:"1-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:13:"wpbs-featured";a:3:{s:4:"file";s:13:"1-493x300.jpg";s:5:"width";s:3:"493";s:6:"height";s:3:"300";}s:18:"wpbs-featured-home";a:3:{s:4:"file";s:13:"1-493x311.jpg";s:5:"width";s:3:"493";s:6:"height";s:3:"311";}s:15:"bones-thumb-600";a:3:{s:4:"file";s:13:"1-225x150.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"150";}s:15:"bones-thumb-300";a:3:{s:4:"file";s:13:"1-300x100.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"100";}s:14:"post-thumbnail";a:3:{s:4:"file";s:13:"1-125x125.jpg";s:5:"width";s:3:"125";s:6:"height";s:3:"125";}}s:10:"image_meta";a:10:{s:8:"aperture";s:2:"11";s:6:"credit";s:0:"";s:6:"camera";s:22:"Canon EOS-1Ds Mark III";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1342625597";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"24";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";}}'),
(98, 51, '_wp_attached_file', '2012/12/2.jpg'),
(99, 51, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"628";s:6:"height";s:3:"417";s:14:"hwstring_small";s:23:"height=''84'' width=''128''";s:4:"file";s:13:"2012/12/2.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:3:{s:4:"file";s:13:"2-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:13:"2-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:13:"wpbs-featured";a:3:{s:4:"file";s:13:"2-628x300.jpg";s:5:"width";s:3:"628";s:6:"height";s:3:"300";}s:18:"wpbs-featured-home";a:3:{s:4:"file";s:13:"2-628x311.jpg";s:5:"width";s:3:"628";s:6:"height";s:3:"311";}s:22:"wpbs-featured-carousel";a:3:{s:4:"file";s:13:"2-628x400.jpg";s:5:"width";s:3:"628";s:6:"height";s:3:"400";}s:15:"bones-thumb-600";a:3:{s:4:"file";s:13:"2-225x150.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"150";}s:15:"bones-thumb-300";a:3:{s:4:"file";s:13:"2-300x100.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"100";}s:14:"post-thumbnail";a:3:{s:4:"file";s:13:"2-125x125.jpg";s:5:"width";s:3:"125";s:6:"height";s:3:"125";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(100, 52, '_wp_attached_file', '2012/12/3.jpg'),
(101, 52, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"500";s:6:"height";s:3:"281";s:14:"hwstring_small";s:23:"height=''71'' width=''128''";s:4:"file";s:13:"2012/12/3.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:13:"3-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:13:"3-300x168.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"168";}s:15:"bones-thumb-600";a:3:{s:4:"file";s:13:"3-266x150.jpg";s:5:"width";s:3:"266";s:6:"height";s:3:"150";}s:15:"bones-thumb-300";a:3:{s:4:"file";s:13:"3-300x100.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"100";}s:14:"post-thumbnail";a:3:{s:4:"file";s:13:"3-125x125.jpg";s:5:"width";s:3:"125";s:6:"height";s:3:"125";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(102, 53, '_wp_attached_file', '2012/12/4.jpg'),
(103, 53, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"500";s:6:"height";s:3:"306";s:14:"hwstring_small";s:23:"height=''78'' width=''128''";s:4:"file";s:13:"2012/12/4.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:3:{s:4:"file";s:13:"4-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:13:"4-300x183.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"183";}s:13:"wpbs-featured";a:3:{s:4:"file";s:13:"4-500x300.jpg";s:5:"width";s:3:"500";s:6:"height";s:3:"300";}s:15:"bones-thumb-600";a:3:{s:4:"file";s:13:"4-245x150.jpg";s:5:"width";s:3:"245";s:6:"height";s:3:"150";}s:15:"bones-thumb-300";a:3:{s:4:"file";s:13:"4-300x100.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"100";}s:14:"post-thumbnail";a:3:{s:4:"file";s:13:"4-125x125.jpg";s:5:"width";s:3:"125";s:6:"height";s:3:"125";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(104, 49, '_wp_page_template', 'default'),
(105, 55, '_menu_item_type', 'post_type'),
(106, 55, '_menu_item_menu_item_parent', '0'),
(107, 55, '_menu_item_object_id', '49'),
(108, 55, '_menu_item_object', 'page'),
(109, 55, '_menu_item_target', ''),
(110, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(111, 55, '_menu_item_xfn', ''),
(112, 55, '_menu_item_url', ''),
(114, 56, '_wp_attached_file', '2012/12/ferrari.jpg'),
(115, 56, '_wp_attachment_context', 'custom-background'),
(116, 56, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:4:"1500";s:6:"height";s:3:"938";s:14:"hwstring_small";s:23:"height=''80'' width=''128''";s:4:"file";s:19:"2012/12/ferrari.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:3:{s:4:"file";s:19:"ferrari-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:19:"ferrari-300x187.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"187";}s:5:"large";a:3:{s:4:"file";s:20:"ferrari-1024x640.jpg";s:5:"width";s:4:"1024";s:6:"height";s:3:"640";}s:13:"wpbs-featured";a:3:{s:4:"file";s:19:"ferrari-638x300.jpg";s:5:"width";s:3:"638";s:6:"height";s:3:"300";}s:18:"wpbs-featured-home";a:3:{s:4:"file";s:19:"ferrari-970x311.jpg";s:5:"width";s:3:"970";s:6:"height";s:3:"311";}s:22:"wpbs-featured-carousel";a:3:{s:4:"file";s:19:"ferrari-970x400.jpg";s:5:"width";s:3:"970";s:6:"height";s:3:"400";}s:15:"bones-thumb-600";a:3:{s:4:"file";s:19:"ferrari-239x150.jpg";s:5:"width";s:3:"239";s:6:"height";s:3:"150";}s:15:"bones-thumb-300";a:3:{s:4:"file";s:19:"ferrari-300x100.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"100";}s:14:"post-thumbnail";a:3:{s:4:"file";s:19:"ferrari-125x125.jpg";s:5:"width";s:3:"125";s:6:"height";s:3:"125";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(117, 56, '_wp_attachment_is_custom_background', 'wordpress-bootstrap-v2.3/wordpress-bootstrap'),
(118, 57, '_menu_item_type', 'custom'),
(119, 57, '_menu_item_menu_item_parent', '0'),
(120, 57, '_menu_item_object_id', '57'),
(121, 57, '_menu_item_object', 'custom'),
(122, 57, '_menu_item_target', ''),
(123, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(124, 57, '_menu_item_xfn', ''),
(125, 57, '_menu_item_url', 'http://localhost/~gac/wordpress/wp-login.php');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2012-11-27 15:50:04', '2012-11-27 15:50:04', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde&nbsp;!', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2012-12-04 16:43:31', '2012-12-04 15:43:31', '', 0, 'http://localhost/~gac/wordpress/?p=1', 0, 'post', '', 1),
(14, 1, '2012-11-27 15:50:04', '2012-11-27 15:50:04', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'open', 'open', '', '1-revision', '', '', '2012-11-27 15:50:04', '2012-11-27 15:50:04', '', 1, 'http://localhost/~gac/wordpress/?p=14', 0, 'revision', '', 0),
(20, 1, '2012-11-27 17:18:36', '2012-11-27 16:18:36', '<a href="http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo.jpg"><img class="wp-image-21 alignleft" title="Ferrari" src="http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo-300x225.jpg" alt="" width="189" height="142" /></a>\r\n\r\n<span style="color: #ff9900;">Ferrari</span>\r\n\r\n&nbsp;', 'Ferrari', '', 'publish', 'open', 'open', '', 'ferrari', '', '', '2012-11-27 17:40:44', '2012-11-27 16:40:44', '', 0, 'http://localhost/~gac/wordpress/?p=20', 0, 'post', '', 1),
(21, 1, '2012-11-27 17:17:21', '2012-11-27 16:17:21', '', 'logo', '', 'inherit', 'open', 'open', '', 'logo', '', '', '2012-11-27 17:17:21', '2012-11-27 16:17:21', '', 20, 'http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2012-11-27 17:18:24', '2012-11-27 16:18:24', '<a href="http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo.jpg"><img class="alignnone size-medium wp-image-21" title="logo" src="http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo-300x225.jpg" alt="" width="300" height="225" /></a>\n<h1><span style="color: #008080;">Ferrari</span></h1>', '', '', 'inherit', 'open', 'open', '', '20-revision', '', '', '2012-11-27 17:18:24', '2012-11-27 16:18:24', '', 20, 'http://localhost/~gac/wordpress/?p=22', 0, 'revision', '', 0),
(23, 1, '2012-11-27 17:20:51', '2012-11-27 16:20:51', 'http://localhost/~gac/wordpress/wp-content/uploads/2012/11/cropped-ferrari2.jpg', 'cropped-ferrari2.jpg', '', 'inherit', 'closed', 'open', '', 'cropped-ferrari2-jpg', '', '', '2012-11-27 17:20:51', '2012-11-27 16:20:51', '', 0, 'http://localhost/~gac/wordpress/wp-content/uploads/2012/11/cropped-ferrari2.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2012-11-27 17:23:56', '2012-11-27 16:23:56', 'http://localhost/~gac/wordpress/wp-content/uploads/2012/11/cropped-ferrari11.jpg', 'cropped-ferrari11.jpg', '', 'inherit', 'closed', 'open', '', 'cropped-ferrari11-jpg', '', '', '2012-11-27 17:23:56', '2012-11-27 16:23:56', '', 0, 'http://localhost/~gac/wordpress/wp-content/uploads/2012/11/cropped-ferrari11.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2012-11-27 17:30:15', '2012-11-27 16:30:15', '<div><strong><span style="text-decoration: underline;">Fiche technique Ferrari F12 Berlinetta :</span></strong><strong>Le moteur </strong>\r\nType : V12, 65°\r\nAlésage et course : 94 x 75,2 mm\r\nCylindrée totale : 6.262 cm<sup>3</sup>\r\nRapport de compression : 13,5:1\r\nPuissance maximale : 545 kW (740 CV) à 8.250 t/min\r\nPuissance spécifique : 118 CV/l\r\nCouple maximum : 690 Nm à 6.000 t/min\r\nRégime maximum : 8700 t/min\r\n\r\n<strong>Dimensions et poids :</strong>\r\nLongueur : 4.618 mm\r\nLargeur : 1.942 mm\r\nHauteur: 1.273 mm\r\nEmpattement : 2.720 mm\r\nPorte-à-faux avant : 1.665 mm\r\nPorte-à-faux arrière : 1.618 mm\r\nPoids à vide : 1525 kg\r\nRépartition des masses : 46% avant, 54% arrière\r\nRapport poids/puissance : 2,1 kg/CV\r\nCapacité du réservoir : 92 l\r\n\r\n<strong>Pneumatiques et jantes</strong>\r\nAntérieurs : 255/35 ZR 20 9.5j\r\nPostérieurs : 315/35 ZR 20 11.5j\r\nAntérieurs hivernaux : 255/35 ZR 20 9.5j\r\nPostérieurs hivernaux : 305/35 ZR 20 11.5j\r\n\r\n<strong>Freins carbocéramiques (CCM3)</strong>\r\nAntérieurs : 398 x 223 x 38 mm\r\nPostérieurs : 360 x 233 x 32 mm\r\n\r\n<strong>Aides électroniques</strong>\r\nESC : Contrôle de stabilité\r\nABS /EBD : Système de freinage avec anti-blocage des roues/Répartiteur électronique de freinage\r\nF1-Trac : Contrôle de traction F1\r\nE-Diff 3 : Troisième génération de différentiel à contrôle électronique\r\nSCM-E : Suspensions à Contrôle Magnéto-rhéologique\r\n\r\n<strong>Boîte de vitesses</strong>\r\nBoîte F1 double-embrayage à 7 rapports\r\n\r\n<strong>Prestations</strong>\r\nVitesse maximale : plus de 340 km/h\r\n0-100 km/h : 3,1 secondes\r\n0-200 km/h : 8,5 secondes\r\nConsommation : 15l/100 km\r\nÉmissions CO<sub>2</sub> : 350 g/km\r\n\r\n</div>', 'Fiche technique', '', 'publish', 'open', 'open', '', 'fiche-technique', '', '', '2012-11-27 17:30:50', '2012-11-27 16:30:50', '', 0, 'http://localhost/~gac/wordpress/?page_id=27', 0, 'page', '', 2),
(28, 1, '2012-11-27 17:29:43', '2012-11-27 16:29:43', '', 'Caractéristiques', '', 'inherit', 'open', 'open', '', '27-revision', '', '', '2012-11-27 17:29:43', '2012-11-27 16:29:43', '', 27, 'http://localhost/~gac/wordpress/?p=28', 0, 'revision', '', 0),
(29, 1, '2012-11-27 17:30:48', '2012-11-27 16:30:48', '<div><strong><span style="text-decoration: underline;">Fiche technique Ferrari F12 Berlinetta :</span></strong><strong>Le moteur </strong>\nType : V12, 65°\nAlésage et course : 94 x 75,2 mm\nCylindrée totale : 6.262 cm<sup>3</sup>\nRapport de compression : 13,5:1\nPuissance maximale : 545 kW (740 CV) à 8.250 t/min\nPuissance spécifique : 118 CV/l\nCouple maximum : 690 Nm à 6.000 t/min\nRégime maximum : 8700 t/min\n\n<strong>Dimensions et poids :</strong>\nLongueur : 4.618 mm\nLargeur : 1.942 mm\nHauteur: 1.273 mm\nEmpattement : 2.720 mm\nPorte-à-faux avant : 1.665 mm\nPorte-à-faux arrière : 1.618 mm\nPoids à vide : 1525 kg\nRépartition des masses : 46% avant, 54% arrière\nRapport poids/puissance : 2,1 kg/CV\nCapacité du réservoir : 92 l\n\n<strong>Pneumatiques et jantes</strong>\nAntérieurs : 255/35 ZR 20 9.5j\nPostérieurs : 315/35 ZR 20 11.5j\nAntérieurs hivernaux : 255/35 ZR 20 9.5j\nPostérieurs hivernaux : 305/35 ZR 20 11.5j\n\n<strong>Freins carbocéramiques (CCM3)</strong>\nAntérieurs : 398 x 223 x 38 mm\nPostérieurs : 360 x 233 x 32 mm\n\n<strong>Aides électroniques</strong>\nESC : Contrôle de stabilité\nABS /EBD : Système de freinage avec anti-blocage des roues/Répartiteur électronique de freinage\nF1-Trac : Contrôle de traction F1\nE-Diff 3 : Troisième génération de différentiel à contrôle électronique\nSCM-E : Suspensions à Contrôle Magnéto-rhéologique\n\n<strong>Boîte de vitesses</strong>\nBoîte F1 double-embrayage à 7 rapports\n\n<strong>Prestations</strong>\nVitesse maximale : plus de 340 km/h\n0-100 km/h : 3,1 secondes\n0-200 km/h : 8,5 secondes\nConsommation : 15l/100 km\nÉmissions CO<sub>2</sub> : 350 g/km\n\n</div>', 'Fiche technique', '', 'inherit', 'open', 'open', '', '27-autosave', '', '', '2012-11-27 17:30:48', '2012-11-27 16:30:48', '', 27, 'http://localhost/~gac/wordpress/?p=29', 0, 'revision', '', 0),
(30, 1, '2012-11-27 17:30:15', '2012-11-27 16:30:15', '<div><strong><span style="text-decoration: underline;">Fiche technique Ferrari F12 Berlinetta :</span></strong>\r\n\r\n<strong>Le moteur </strong>\r\nType : V12, 65°\r\nAlésage et course : 94 x 75,2 mm\r\nCylindrée totale : 6.262 cm<sup>3</sup>\r\nRapport de compression : 13,5:1\r\nPuissance maximale : 545 kW (740 CV) à 8.250 t/min\r\nPuissance spécifique : 118 CV/l\r\nCouple maximum : 690 Nm à 6.000 t/min\r\nRégime maximum : 8700 t/min\r\n\r\n<strong>Dimensions et poids :</strong>\r\nLongueur : 4.618 mm\r\nLargeur : 1.942 mm\r\nHauteur: 1.273 mm\r\nEmpattement : 2.720 mm\r\nPorte-à-faux avant : 1.665 mm\r\nPorte-à-faux arrière : 1.618 mm\r\nPoids à vide : 1525 kg\r\nRépartition des masses : 46% avant, 54% arrière\r\nRapport poids/puissance : 2,1 kg/CV\r\nCapacité du réservoir : 92 l\r\n\r\n<strong>Pneumatiques et jantes</strong>\r\nAntérieurs : 255/35 ZR 20 9.5j\r\nPostérieurs : 315/35 ZR 20 11.5j\r\nAntérieurs hivernaux : 255/35 ZR 20 9.5j\r\nPostérieurs hivernaux : 305/35 ZR 20 11.5j\r\n\r\n<strong>Freins carbocéramiques (CCM3)</strong>\r\nAntérieurs : 398 x 223 x 38 mm\r\nPostérieurs : 360 x 233 x 32 mm\r\n\r\n<strong>Aides électroniques</strong>\r\nESC : Contrôle de stabilité\r\nABS /EBD : Système de freinage avec anti-blocage des roues/Répartiteur électronique de freinage\r\nF1-Trac : Contrôle de traction F1\r\nE-Diff 3 : Troisième génération de différentiel à contrôle électronique\r\nSCM-E : Suspensions à Contrôle Magnéto-rhéologique\r\n\r\n<strong>Boîte de vitesses</strong>\r\nBoîte F1 double-embrayage à 7 rapports\r\n\r\n<strong>Prestations</strong>\r\nVitesse maximale : plus de 340 km/h\r\n0-100 km/h : 3,1 secondes\r\n0-200 km/h : 8,5 secondes\r\nConsommation : 15l/100 km\r\nÉmissions CO<sub>2</sub> : 350 g/km\r\n\r\nActus et Tests auto sur Turbo.fr : <a href="http://www.turbo.fr/actualite-automobile/481292-ferrari-f12-berlinetta-fiche-technique/#ixzz2DRQC80l7">Ferrari F12 Berlinetta : la fiche technique - Turbo.fr</a> <a href="http://www.turbo.fr/actualite-automobile/481292-ferrari-f12-berlinetta-fiche-technique/#ixzz2DRQC80l7">http://www.turbo.fr/actualite-automobile/481292-ferrari-f12-berlinetta-fiche-technique/#ixzz2DRQC80l7</a></div>', 'Fiche technique', '', 'inherit', 'open', 'open', '', '27-revision-2', '', '', '2012-11-27 17:30:15', '2012-11-27 16:30:15', '', 27, 'http://localhost/~gac/wordpress/?p=30', 0, 'revision', '', 0),
(31, 1, '2012-11-27 17:18:36', '2012-11-27 16:18:36', '<a href="http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo.jpg"><img class="alignnone size-medium wp-image-21" title="logo" src="http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo-300x225.jpg" alt="" width="300" height="225" /></a>', 'Ferrari', '', 'inherit', 'open', 'open', '', '20-revision-2', '', '', '2012-11-27 17:18:36', '2012-11-27 16:18:36', '', 20, 'http://localhost/~gac/wordpress/?p=31', 0, 'revision', '', 0),
(32, 1, '2012-11-27 17:31:06', '2012-11-27 16:31:06', '<a href="http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo.jpg"><img class="alignnone size-medium wp-image-21" title="logo" src="http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo-300x225.jpg" alt="" width="300" height="225" /></a>', 'Ferrari', '', 'inherit', 'open', 'open', '', '20-revision-3', '', '', '2012-11-27 17:31:06', '2012-11-27 16:31:06', '', 20, 'http://localhost/~gac/wordpress/?p=32', 0, 'revision', '', 0),
(33, 1, '2012-11-27 17:31:23', '2012-11-27 16:31:23', '<a href="http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo.jpg"><img class="alignnone size-medium wp-image-21" title="logo" src="http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo-300x225.jpg" alt="" width="300" height="225" /></a>', 'Ferrari', '', 'inherit', 'open', 'open', '', '20-revision-4', '', '', '2012-11-27 17:31:23', '2012-11-27 16:31:23', '', 20, 'http://localhost/~gac/wordpress/?p=33', 0, 'revision', '', 0),
(34, 1, '2012-11-27 17:07:44', '2012-11-27 16:07:44', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'open', 'open', '', '1-revision-2', '', '', '2012-11-27 17:07:44', '2012-11-27 16:07:44', '', 1, 'http://localhost/~gac/wordpress/?p=34', 0, 'revision', '', 0),
(35, 1, '2012-11-27 17:32:33', '2012-11-27 16:32:33', '<a href="http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo.jpg"><img class="alignnone size-medium wp-image-21" title="logo" src="http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo-300x225.jpg" alt="" width="300" height="225" /></a>', 'Ferrari', '', 'inherit', 'open', 'open', '', '20-revision-5', '', '', '2012-11-27 17:32:33', '2012-11-27 16:32:33', '', 20, 'http://localhost/~gac/wordpress/?p=35', 0, 'revision', '', 0),
(36, 1, '2012-11-27 17:38:33', '2012-11-27 16:38:33', '<p style="text-align: center;"><a href="http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo.jpg"><img class=" wp-image-21 aligncenter" title="Ferrari" src="http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo-300x225.jpg" alt="" width="210" height="158" />Ferrari</a></p>\n&nbsp;', 'Ferrari', '', 'inherit', 'open', 'open', '', '20-autosave', '', '', '2012-11-27 17:38:33', '2012-11-27 16:38:33', '', 20, 'http://localhost/~gac/wordpress/?p=36', 0, 'revision', '', 0),
(37, 1, '2012-11-27 17:37:18', '2012-11-27 16:37:18', '<a href="http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo.jpg"><img class="alignnone size-medium wp-image-21" title="logo" src="http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo-300x225.jpg" alt="" width="300" height="225" /></a>\r\n\r\nFerrari', 'Ferrari', '', 'inherit', 'open', 'open', '', '20-revision-6', '', '', '2012-11-27 17:37:18', '2012-11-27 16:37:18', '', 20, 'http://localhost/~gac/wordpress/?p=37', 0, 'revision', '', 0),
(38, 1, '2012-11-27 17:39:20', '2012-11-27 16:39:20', '&nbsp;\r\n\r\n<a href="http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo.jpg"><img class="wp-image-21 alignleft" title="Ferrari" src="http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo-300x225.jpg" alt="" width="210" height="158" /></a>\r\n\r\n<a href="http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo.jpg"><span style="color: #ff6600;">Ferrari</span></a>\r\n\r\n&nbsp;', 'Ferrari', '', 'inherit', 'open', 'open', '', '20-revision-7', '', '', '2012-11-27 17:39:20', '2012-11-27 16:39:20', '', 20, 'http://localhost/~gac/wordpress/?p=38', 0, 'revision', '', 0),
(39, 1, '2012-11-27 17:39:49', '2012-11-27 16:39:49', '<a href="http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo.jpg"><img class="wp-image-21 alignleft" title="Ferrari" src="http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo-300x225.jpg" alt="" width="189" height="142" /></a>\r\n\r\n<a href="http://localhost/~gac/wordpress/wp-content/uploads/2012/11/logo.jpg"><span style="color: #ff6600;">Ferrari</span></a>\r\n\r\n&nbsp;', 'Ferrari', '', 'inherit', 'open', 'open', '', '20-revision-8', '', '', '2012-11-27 17:39:49', '2012-11-27 16:39:49', '', 20, 'http://localhost/~gac/wordpress/?p=39', 0, 'revision', '', 0),
(41, 1, '2012-11-27 17:32:41', '2012-11-27 16:32:41', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'open', 'open', '', '1-revision-3', '', '', '2012-11-27 17:32:41', '2012-11-27 16:32:41', '', 1, 'http://localhost/~gac/wordpress/?p=41', 0, 'revision', '', 0),
(42, 1, '2012-12-04 16:46:14', '2012-12-04 15:46:14', 'Nouvel article<a href="http://localhost/~gac/wordpress/wp-content/uploads/2012/12/test.jpg"><img class="alignleft size-medium wp-image-43" title="test" src="http://localhost/~gac/wordpress/wp-content/uploads/2012/12/test-300x201.jpg" alt="" /></a> image paysage', 'Article du 4/12', '', 'publish', 'open', 'open', '', 'article-du-412', '', '', '2012-12-04 16:46:14', '2012-12-04 15:46:14', '', 0, 'http://localhost/~gac/wordpress/?p=42', 0, 'post', '', 0),
(43, 1, '2012-12-04 16:44:42', '2012-12-04 15:44:42', '', 'test', '', 'inherit', 'open', 'open', '', 'test-2', '', '', '2012-12-04 16:44:42', '2012-12-04 15:44:42', '', 42, 'http://localhost/~gac/wordpress/wp-content/uploads/2012/12/test.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2012-12-04 16:45:52', '2012-12-04 15:45:52', 'Nouvel article<a href="http://localhost/~gac/wordpress/wp-content/uploads/2012/12/test.jpg"><img class="alignleft size-medium wp-image-43" title="test" src="http://localhost/~gac/wordpress/wp-content/uploads/2012/12/test-300x201.jpg" alt="" /></a> image paysage', 'Article du 4/12', '', 'inherit', 'open', 'open', '', '42-revision', '', '', '2012-12-04 16:45:52', '2012-12-04 15:45:52', '', 42, 'http://localhost/~gac/wordpress/?p=44', 0, 'revision', '', 0),
(45, 1, '2012-12-04 16:53:23', '2012-12-04 15:53:23', ' ', '', '', 'publish', 'open', 'open', '', '45', '', '', '2012-12-04 17:36:43', '2012-12-04 16:36:43', '', 0, 'http://localhost/~gac/wordpress/?p=45', 3, 'nav_menu_item', '', 0),
(47, 1, '2012-12-04 16:54:59', '2012-12-04 15:54:59', '', 'Accueil', '', 'publish', 'open', 'open', '', 'accueil', '', '', '2012-12-04 17:36:43', '2012-12-04 16:36:43', '', 0, 'http://localhost/~gac/wordpress/?p=47', 2, 'nav_menu_item', '', 0),
(49, 1, '2012-12-04 17:09:49', '2012-12-04 16:09:49', 'Galerie d''images :[gallery]', 'Galerie images', '', 'publish', 'open', 'open', '', 'galerie-images', '', '', '2012-12-04 17:09:49', '2012-12-04 16:09:49', '', 0, 'http://localhost/~gac/wordpress/?page_id=49', 0, 'page', '', 1),
(50, 1, '2012-12-04 17:07:25', '2012-12-04 16:07:25', '', '1', '', 'inherit', 'open', 'open', '', '1', '', '', '2012-12-04 17:07:25', '2012-12-04 16:07:25', '', 49, 'http://localhost/~gac/wordpress/wp-content/uploads/2012/12/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2012-12-04 17:07:26', '2012-12-04 16:07:26', '', '2', '', 'inherit', 'open', 'open', '', '2', '', '', '2012-12-04 17:07:26', '2012-12-04 16:07:26', '', 49, 'http://localhost/~gac/wordpress/wp-content/uploads/2012/12/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2012-12-04 17:07:26', '2012-12-04 16:07:26', '', '3', '', 'inherit', 'open', 'open', '', '3', '', '', '2012-12-04 17:07:26', '2012-12-04 16:07:26', '', 49, 'http://localhost/~gac/wordpress/wp-content/uploads/2012/12/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2012-12-04 17:07:27', '2012-12-04 16:07:27', '', '4', '', 'inherit', 'open', 'open', '', '4', '', '', '2012-12-04 17:07:27', '2012-12-04 16:07:27', '', 49, 'http://localhost/~gac/wordpress/wp-content/uploads/2012/12/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2012-12-04 17:09:43', '2012-12-04 16:09:43', 'Galerie d''images :[gallery]', 'Galerie images', '', 'inherit', 'open', 'open', '', '49-revision', '', '', '2012-12-04 17:09:43', '2012-12-04 16:09:43', '', 49, 'http://localhost/~gac/wordpress/?p=54', 0, 'revision', '', 0),
(55, 1, '2012-12-04 17:10:17', '2012-12-04 16:10:17', ' ', '', '', 'publish', 'open', 'open', '', '55', '', '', '2012-12-04 17:36:43', '2012-12-04 16:36:43', '', 0, 'http://localhost/~gac/wordpress/?p=55', 4, 'nav_menu_item', '', 0),
(56, 1, '2012-12-04 17:19:04', '2012-12-04 16:19:04', 'http://localhost/~gac/wordpress/wp-content/uploads/2012/12/ferrari.jpg', 'ferrari.jpg', '', 'inherit', 'open', 'open', '', 'ferrari-jpg', '', '', '2012-12-04 17:19:04', '2012-12-04 16:19:04', '', 0, 'http://localhost/~gac/wordpress/wp-content/uploads/2012/12/ferrari.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2012-12-04 17:34:06', '2012-12-04 16:34:06', '', 'Connexion', '', 'publish', 'open', 'open', '', 'connexion', '', '', '2012-12-04 17:36:43', '2012-12-04 16:36:43', '', 0, 'http://localhost/~gac/wordpress/?p=57', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Liens', 'liens', 0),
(5, 'Alex', 'gac', 0),
(6, 'Catégorie1', 'categorie1', 0),
(7, 'Navigation_principale', 'navigation_principale', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 2, 0),
(1, 5, 0),
(1, 6, 0),
(2, 2, 0),
(3, 2, 0),
(4, 2, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(20, 5, 0),
(42, 6, 0),
(45, 7, 0),
(47, 7, 0),
(55, 7, 0),
(57, 7, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'link_category', '', 0, 7),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 2),
(7, 7, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'Gac'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'classic'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";s:1:"1";}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_media_uploader,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '48'),
(15, 1, 'wp_user-settings', 'hidetb=1&align=left&editor=tinymce'),
(16, 1, 'wp_user-settings-time', '1354635970'),
(17, 1, 'aim', ''),
(18, 1, 'yim', ''),
(19, 1, 'jabber', ''),
(20, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(22, 1, 'nav_menu_recently_edited', '7');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Gac', '$P$BWTVzh/DxxZS86aMP9lMYajY5Nx7Uq1', 'gac', 'alexgac45@gmail.com', '', '2012-11-27 15:49:59', '', 0, 'Gac');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
