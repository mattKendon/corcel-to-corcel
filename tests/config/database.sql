# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.1.71)
# Database: corcel-dev
# Generation Time: 2014-08-20 22:45:18 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table wp_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_posts`;

CREATE TABLE `wp_posts` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`)
VALUES
  (1,0,'2014-08-20 19:34:59','0000-00-00 00:00:00','','','','publish','open','open','','','','','2014-08-20 19:34:59','0000-00-00 00:00:00','',0,'',0,'post','',0),
  (2,0,'2014-08-20 19:35:55','0000-00-00 00:00:00','','','','publish','open','open','','','','','2014-08-20 19:35:55','0000-00-00 00:00:00','',0,'',0,'post','',0),
  (3,0,'2014-08-20 19:37:21','0000-00-00 00:00:00','','','','publish','open','open','','','','','2014-08-20 19:37:21','0000-00-00 00:00:00','',0,'',0,'post','',0),
  (4,0,'2014-08-20 19:38:13','0000-00-00 00:00:00','','','','publish','open','open','','','','','2014-08-20 19:38:13','0000-00-00 00:00:00','',0,'',0,'post','',0),
  (5,0,'2014-08-20 19:34:59','0000-00-00 00:00:00','','','','publish','open','open','','','','','2014-08-20 19:34:59','0000-00-00 00:00:00','',0,'',0,'post','',0),
  (6,0,'2014-08-20 19:35:55','0000-00-00 00:00:00','','','','publish','open','open','','','','','2014-08-20 19:35:55','0000-00-00 00:00:00','',0,'',0,'post','',0),
  (7,0,'2014-08-20 19:37:21','0000-00-00 00:00:00','','','','publish','open','open','','','','','2014-08-20 19:37:21','0000-00-00 00:00:00','',0,'',0,'post','',0),
  (8,0,'2014-08-20 19:38:13','0000-00-00 00:00:00','','','','publish','open','open','','','','','2014-08-20 19:38:13','0000-00-00 00:00:00','',0,'',0,'post','',0),
  (9,0,'2014-08-20 19:39:00','0000-00-00 00:00:00','','','','publish','open','open','','','','','2014-08-20 19:39:00','0000-00-00 00:00:00','',0,'',0,'page','',0),
  (10,0,'2014-08-20 19:40:07','0000-00-00 00:00:00','','','','publish','open','open','','','','','2014-08-20 19:40:07','0000-00-00 00:00:00','',0,'',0,'page','',0),
  (11,0,'2014-08-20 19:42:05','0000-00-00 00:00:00','','','','publish','open','open','','','','','2014-08-20 19:42:05','0000-00-00 00:00:00','',0,'',0,'page','',0),
  (12,0,'2014-08-20 19:42:31','0000-00-00 00:00:00','','','','publish','open','open','','','','','2014-08-20 19:42:31','0000-00-00 00:00:00','',0,'',0,'page','',0),
  (13,0,'2014-08-20 19:43:18','0000-00-00 00:00:00','','','','publish','open','open','','','','','2014-08-20 19:43:18','0000-00-00 00:00:00','',0,'',0,'page','',0),
  (14,0,'2014-08-20 19:43:34','0000-00-00 00:00:00','','','','publish','open','open','','','','','2014-08-20 19:43:34','0000-00-00 00:00:00','',0,'',0,'page','',0),
  (15,0,'2014-08-20 19:43:34','0000-00-00 00:00:00','','','','publish','open','open','','','','','2014-08-20 19:43:34','0000-00-00 00:00:00','',0,'',0,'page','',0),
  (16,0,'2014-08-20 19:44:52','0000-00-00 00:00:00','','','','publish','open','open','','','','','2014-08-20 19:44:52','0000-00-00 00:00:00','',0,'',0,'page','',0);
;

/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_postmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_postmeta`;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


# Dump of table wp_p2p
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_p2p`;

CREATE TABLE `wp_p2p` (
  `p2p_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `p2p_from` bigint(20) unsigned NOT NULL,
  `p2p_to` bigint(20) unsigned NOT NULL,
  `p2p_type` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`p2p_id`),
  KEY `p2p_from` (`p2p_from`),
  KEY `p2p_to` (`p2p_to`),
  KEY `p2p_type` (`p2p_type`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_p2p` WRITE;
/*!40000 ALTER TABLE `wp_p2p` DISABLE KEYS */;

INSERT INTO `wp_p2p` (`p2p_id`, `p2p_from`, `p2p_to`, `p2p_type`)
VALUES
  (1,1,9,'post_page'),
  (2,1,10,'post_page'),
  (3,1,11,'post_page'),
  (4,2,12,'post_page'),
  (5,2,3,'post_post'),
  (6,3,4,'post_post'),
  (7,3,5,'post_post'),
  (8,3,6,'post_post')
;

/*!40000 ALTER TABLE `wp_p2p` ENABLE KEYS */;
UNLOCK TABLES;

# Dump of table wp_p2pmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_p2pmeta`;

CREATE TABLE `wp_p2pmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `p2p_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `p2p_id` (`p2p_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

  LOCK TABLES `wp_p2pmeta` WRITE;
/*!40000 ALTER TABLE `wp_p2pmeta` DISABLE KEYS */;

/*!40000 ALTER TABLE `wp_p2pmeta` ENABLE KEYS */;
UNLOCK TABLES;
