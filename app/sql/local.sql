-- MySQL dump 10.13  Distrib 8.0.16, for Linux (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id` (`claim_id`),
  KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES (43,'wc-admin_import_customers','complete','2022-01-02 14:13:25','2022-01-02 12:13:25','[1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1641132805;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1641132805;}',2,1,'2022-01-02 14:14:22','2022-01-02 12:14:22',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (44,'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','[]','O:28:\"ActionScheduler_NullSchedule\":0:{}',0,1,'2022-01-02 14:23:25','2022-01-02 12:23:25',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (45,'wc-admin_import_customers','complete','2022-01-03 21:43:39','2022-01-03 19:43:39','[1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1641246219;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1641246219;}',2,1,'2022-01-03 21:44:02','2022-01-03 19:44:02',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=616 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES (1,'action-scheduler-migration');
INSERT INTO `wp_actionscheduler_groups` VALUES (2,'wc-admin-data');
INSERT INTO `wp_actionscheduler_groups` VALUES (3,'wc_update_product_default_cat');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES (112,43,'ação criada','2022-01-02 14:13:20','2022-01-02 12:13:20');
INSERT INTO `wp_actionscheduler_logs` VALUES (113,43,'ação iniciada por WP Cron','2022-01-02 14:14:22','2022-01-02 12:14:22');
INSERT INTO `wp_actionscheduler_logs` VALUES (114,43,'ação completa por WP Cron','2022-01-02 14:14:22','2022-01-02 12:14:22');
INSERT INTO `wp_actionscheduler_logs` VALUES (115,44,'ação criada','2022-01-02 14:22:23','2022-01-02 12:22:23');
INSERT INTO `wp_actionscheduler_logs` VALUES (116,44,'ação iniciada por WP Cron','2022-01-02 14:23:25','2022-01-02 12:23:25');
INSERT INTO `wp_actionscheduler_logs` VALUES (117,44,'ação completa por WP Cron','2022-01-02 14:23:25','2022-01-02 12:23:25');
INSERT INTO `wp_actionscheduler_logs` VALUES (118,45,'ação criada','2022-01-03 21:43:34','2022-01-03 19:43:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (119,45,'ação iniciada por WP Cron','2022-01-03 21:44:02','2022-01-03 19:44:02');
INSERT INTO `wp_actionscheduler_logs` VALUES (120,45,'ação completa por WP Cron','2022-01-03 21:44:02','2022-01-03 19:44:02');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-11-27 13:27:17','2021-11-27 13:27:17','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1447 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:10003','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://localhost:10003','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','handel','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','d/m/Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','H:i','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:166:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"loja/?$\";s:27:\"index.php?post_type=product\";s:37:\"loja/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"loja/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"loja/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:56:\"categoria-produto/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:51:\"categoria-produto/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:32:\"categoria-produto/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:44:\"categoria-produto/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:26:\"categoria-produto/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"produto-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"produto-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"produto-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"produto-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"produto-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:48:\"tamanho/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?pa_tamanho=$matches[1]&feed=$matches[2]\";s:43:\"tamanho/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?pa_tamanho=$matches[1]&feed=$matches[2]\";s:24:\"tamanho/([^/]+)/embed/?$\";s:43:\"index.php?pa_tamanho=$matches[1]&embed=true\";s:36:\"tamanho/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?pa_tamanho=$matches[1]&paged=$matches[2]\";s:18:\"tamanho/([^/]+)/?$\";s:32:\"index.php?pa_tamanho=$matches[1]\";s:35:\"produto/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"produto/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"produto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"produto/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"produto/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"produto/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"produto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"produto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"produto/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"produto/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"produto/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"produto/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"produto/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"produto/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"produto/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"produto/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"produto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"produto/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=13&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)/pagar(/(.*))?/?$\";s:48:\"index.php?pagename=$matches[1]&pagar=$matches[3]\";s:34:\"(.?.+?)/pedido-recebido(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&pedido-recebido=$matches[3]\";s:26:\"(.?.+?)/pedidos(/(.*))?/?$\";s:50:\"index.php?pagename=$matches[1]&pedidos=$matches[3]\";s:29:\"(.?.+?)/ver-pedido(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&ver-pedido=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/editar-conta(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&editar-conta=$matches[3]\";s:34:\"(.?.+?)/editar-endereco(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&editar-endereco=$matches[3]\";s:39:\"(.?.+?)/metodos-de-pagamento(/(.*))?/?$\";s:63:\"index.php?pagename=$matches[1]&metodos-de-pagamento=$matches[3]\";s:32:\"(.?.+?)/senha-perdida(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&senha-perdida=$matches[3]\";s:23:\"(.?.+?)/sair(/(.*))?/?$\";s:47:\"index.php?pagename=$matches[1]&sair=$matches[3]\";s:48:\"(.?.+?)/adicionar-metodo-de-pagamento(/(.*))?/?$\";s:72:\"index.php?pagename=$matches[1]&adicionar-metodo-de-pagamento=$matches[3]\";s:46:\"(.?.+?)/excluir-metodo-de-pagamento(/(.*))?/?$\";s:70:\"index.php?pagename=$matches[1]&excluir-metodo-de-pagamento=$matches[3]\";s:53:\"(.?.+?)/definir-metodo-de-pagamento-padrao(/(.*))?/?$\";s:77:\"index.php?pagename=$matches[1]&definir-metodo-de-pagamento-padrao=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:1:{i:2;s:27:\"woocommerce/woocommerce.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','handel','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','handel','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','760','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','840','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','America/Sao_Paulo','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','13','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1653571636','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:115:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:10:\"loco_admin\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:10:\"translator\";a:2:{s:4:\"name\";s:10:\"Translator\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:10:\"loco_admin\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:17:{i:1642534862;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1642536002;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1642536014;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1642536218;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1642537637;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1642538333;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1642555637;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1642557600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1642598837;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1642598891;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1642598893;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1642600803;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1642601028;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1642611818;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1642944437;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1643205878;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','46jnneAdaq{y!/nK7HTOi)a_5&&VY|lyC:ZJ ObVK|4wx$A3iVo1R|$bEph5Q+@@','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','eN8c3x0akYYCwsZ+DU]yQa0MA)ayoYt`2[9hWJ(Q [Y?Qz41x#};sUH3y#RWPYNp','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:26:\"Requisição HTTPS falhou.\";}}','yes');
INSERT INTO `wp_options` VALUES (128,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1638023470;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (136,'can_compress_scripts','0','no');
INSERT INTO `wp_options` VALUES (151,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (152,'WPLANG','pt_BR','yes');
INSERT INTO `wp_options` VALUES (153,'new_admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (164,'recently_activated','a:2:{s:33:\"classic-editor/classic-editor.php\";i:1639230655;s:23:\"loco-translate/loco.php\";i:1639230574;}','yes');
INSERT INTO `wp_options` VALUES (177,'action_scheduler_hybrid_store_demarkation','5','yes');
INSERT INTO `wp_options` VALUES (178,'schema-ActionScheduler_StoreSchema','5.0.1638021591','yes');
INSERT INTO `wp_options` VALUES (179,'schema-ActionScheduler_LoggerSchema','3.0.1638021591','yes');
INSERT INTO `wp_options` VALUES (182,'woocommerce_schema_version','430','yes');
INSERT INTO `wp_options` VALUES (183,'woocommerce_store_address','Dezenove de Dezembro','yes');
INSERT INTO `wp_options` VALUES (184,'woocommerce_store_address_2','','yes');
INSERT INTO `wp_options` VALUES (185,'woocommerce_store_city','Ponta Grossa','yes');
INSERT INTO `wp_options` VALUES (186,'woocommerce_default_country','BR:PR','yes');
INSERT INTO `wp_options` VALUES (187,'woocommerce_store_postcode','84010390','yes');
INSERT INTO `wp_options` VALUES (188,'woocommerce_allowed_countries','all','yes');
INSERT INTO `wp_options` VALUES (189,'woocommerce_all_except_countries','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (190,'woocommerce_specific_allowed_countries','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (191,'woocommerce_ship_to_countries','','yes');
INSERT INTO `wp_options` VALUES (192,'woocommerce_specific_ship_to_countries','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (193,'woocommerce_default_customer_address','base','yes');
INSERT INTO `wp_options` VALUES (194,'woocommerce_calc_taxes','no','yes');
INSERT INTO `wp_options` VALUES (195,'woocommerce_enable_coupons','yes','yes');
INSERT INTO `wp_options` VALUES (196,'woocommerce_calc_discounts_sequentially','no','no');
INSERT INTO `wp_options` VALUES (197,'woocommerce_currency','BRL','yes');
INSERT INTO `wp_options` VALUES (198,'woocommerce_currency_pos','left_space','yes');
INSERT INTO `wp_options` VALUES (199,'woocommerce_price_thousand_sep','.','yes');
INSERT INTO `wp_options` VALUES (200,'woocommerce_price_decimal_sep',',','yes');
INSERT INTO `wp_options` VALUES (201,'woocommerce_price_num_decimals','2','yes');
INSERT INTO `wp_options` VALUES (202,'woocommerce_shop_page_id','6','yes');
INSERT INTO `wp_options` VALUES (203,'woocommerce_cart_redirect_after_add','no','yes');
INSERT INTO `wp_options` VALUES (204,'woocommerce_enable_ajax_add_to_cart','no','yes');
INSERT INTO `wp_options` VALUES (205,'woocommerce_placeholder_image','5','yes');
INSERT INTO `wp_options` VALUES (206,'woocommerce_weight_unit','kg','yes');
INSERT INTO `wp_options` VALUES (207,'woocommerce_dimension_unit','cm','yes');
INSERT INTO `wp_options` VALUES (208,'woocommerce_enable_reviews','no','yes');
INSERT INTO `wp_options` VALUES (209,'woocommerce_review_rating_verification_label','yes','no');
INSERT INTO `wp_options` VALUES (210,'woocommerce_review_rating_verification_required','no','no');
INSERT INTO `wp_options` VALUES (211,'woocommerce_enable_review_rating','yes','yes');
INSERT INTO `wp_options` VALUES (212,'woocommerce_review_rating_required','yes','no');
INSERT INTO `wp_options` VALUES (213,'woocommerce_manage_stock','yes','yes');
INSERT INTO `wp_options` VALUES (214,'woocommerce_hold_stock_minutes','60','no');
INSERT INTO `wp_options` VALUES (215,'woocommerce_notify_low_stock','yes','no');
INSERT INTO `wp_options` VALUES (216,'woocommerce_notify_no_stock','yes','no');
INSERT INTO `wp_options` VALUES (217,'woocommerce_stock_email_recipient','dev-email@flywheel.local','no');
INSERT INTO `wp_options` VALUES (218,'woocommerce_notify_low_stock_amount','2','no');
INSERT INTO `wp_options` VALUES (219,'woocommerce_notify_no_stock_amount','0','yes');
INSERT INTO `wp_options` VALUES (220,'woocommerce_hide_out_of_stock_items','yes','yes');
INSERT INTO `wp_options` VALUES (221,'woocommerce_stock_format','','yes');
INSERT INTO `wp_options` VALUES (222,'woocommerce_file_download_method','force','no');
INSERT INTO `wp_options` VALUES (223,'woocommerce_downloads_redirect_fallback_allowed','no','no');
INSERT INTO `wp_options` VALUES (224,'woocommerce_downloads_require_login','yes','no');
INSERT INTO `wp_options` VALUES (225,'woocommerce_downloads_grant_access_after_payment','yes','no');
INSERT INTO `wp_options` VALUES (226,'woocommerce_downloads_add_hash_to_filename','yes','yes');
INSERT INTO `wp_options` VALUES (227,'woocommerce_prices_include_tax','no','yes');
INSERT INTO `wp_options` VALUES (228,'woocommerce_tax_based_on','shipping','yes');
INSERT INTO `wp_options` VALUES (229,'woocommerce_shipping_tax_class','inherit','yes');
INSERT INTO `wp_options` VALUES (230,'woocommerce_tax_round_at_subtotal','no','yes');
INSERT INTO `wp_options` VALUES (231,'woocommerce_tax_classes','','yes');
INSERT INTO `wp_options` VALUES (232,'woocommerce_tax_display_shop','excl','yes');
INSERT INTO `wp_options` VALUES (233,'woocommerce_tax_display_cart','excl','yes');
INSERT INTO `wp_options` VALUES (234,'woocommerce_price_display_suffix','','yes');
INSERT INTO `wp_options` VALUES (235,'woocommerce_tax_total_display','itemized','no');
INSERT INTO `wp_options` VALUES (236,'woocommerce_enable_shipping_calc','yes','no');
INSERT INTO `wp_options` VALUES (237,'woocommerce_shipping_cost_requires_address','no','yes');
INSERT INTO `wp_options` VALUES (238,'woocommerce_ship_to_destination','billing','no');
INSERT INTO `wp_options` VALUES (239,'woocommerce_shipping_debug_mode','no','yes');
INSERT INTO `wp_options` VALUES (240,'woocommerce_enable_guest_checkout','no','no');
INSERT INTO `wp_options` VALUES (241,'woocommerce_enable_checkout_login_reminder','yes','no');
INSERT INTO `wp_options` VALUES (242,'woocommerce_enable_signup_and_login_from_checkout','yes','no');
INSERT INTO `wp_options` VALUES (243,'woocommerce_enable_myaccount_registration','no','no');
INSERT INTO `wp_options` VALUES (244,'woocommerce_registration_generate_username','yes','no');
INSERT INTO `wp_options` VALUES (245,'woocommerce_registration_generate_password','yes','no');
INSERT INTO `wp_options` VALUES (246,'woocommerce_erasure_request_removes_order_data','no','no');
INSERT INTO `wp_options` VALUES (247,'woocommerce_erasure_request_removes_download_data','no','no');
INSERT INTO `wp_options` VALUES (248,'woocommerce_allow_bulk_remove_personal_data','no','no');
INSERT INTO `wp_options` VALUES (249,'woocommerce_registration_privacy_policy_text','Seus dados pessoais serão usados para aprimorar a sua experiência em todo este site, para gerenciar o acesso a sua conta e para outros propósitos, como descritos em nossa [privacy_policy].','yes');
INSERT INTO `wp_options` VALUES (250,'woocommerce_checkout_privacy_policy_text','Os seus dados pessoais serão utilizados para processar a sua compra, apoiar a sua experiência em todo este site e para outros fins descritos na nossa [privacy_policy].','yes');
INSERT INTO `wp_options` VALUES (251,'woocommerce_delete_inactive_accounts','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no');
INSERT INTO `wp_options` VALUES (252,'woocommerce_trash_pending_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}','no');
INSERT INTO `wp_options` VALUES (253,'woocommerce_trash_failed_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}','no');
INSERT INTO `wp_options` VALUES (254,'woocommerce_trash_cancelled_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}','no');
INSERT INTO `wp_options` VALUES (255,'woocommerce_anonymize_completed_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no');
INSERT INTO `wp_options` VALUES (256,'woocommerce_email_from_name','handel','no');
INSERT INTO `wp_options` VALUES (257,'woocommerce_email_from_address','dev-email@flywheel.local','no');
INSERT INTO `wp_options` VALUES (258,'woocommerce_email_header_image','','no');
INSERT INTO `wp_options` VALUES (259,'woocommerce_email_footer_text','{site_title}','no');
INSERT INTO `wp_options` VALUES (260,'woocommerce_email_base_color','#000000','no');
INSERT INTO `wp_options` VALUES (261,'woocommerce_email_background_color','#f7f7f7','no');
INSERT INTO `wp_options` VALUES (262,'woocommerce_email_body_background_color','#ffffff','no');
INSERT INTO `wp_options` VALUES (263,'woocommerce_email_text_color','#3c3c3c','no');
INSERT INTO `wp_options` VALUES (264,'woocommerce_merchant_email_notifications','no','no');
INSERT INTO `wp_options` VALUES (265,'woocommerce_cart_page_id','7','no');
INSERT INTO `wp_options` VALUES (266,'woocommerce_checkout_page_id','8','no');
INSERT INTO `wp_options` VALUES (267,'woocommerce_myaccount_page_id','9','no');
INSERT INTO `wp_options` VALUES (268,'woocommerce_terms_page_id','','no');
INSERT INTO `wp_options` VALUES (269,'woocommerce_force_ssl_checkout','no','yes');
INSERT INTO `wp_options` VALUES (270,'woocommerce_unforce_ssl_checkout','no','yes');
INSERT INTO `wp_options` VALUES (271,'woocommerce_checkout_pay_endpoint','pagar','yes');
INSERT INTO `wp_options` VALUES (272,'woocommerce_checkout_order_received_endpoint','pedido-recebido','yes');
INSERT INTO `wp_options` VALUES (273,'woocommerce_myaccount_add_payment_method_endpoint','adicionar-metodo-de-pagamento','yes');
INSERT INTO `wp_options` VALUES (274,'woocommerce_myaccount_delete_payment_method_endpoint','excluir-metodo-de-pagamento','yes');
INSERT INTO `wp_options` VALUES (275,'woocommerce_myaccount_set_default_payment_method_endpoint','definir-metodo-de-pagamento-padrao','yes');
INSERT INTO `wp_options` VALUES (276,'woocommerce_myaccount_orders_endpoint','pedidos','yes');
INSERT INTO `wp_options` VALUES (277,'woocommerce_myaccount_view_order_endpoint','ver-pedido','yes');
INSERT INTO `wp_options` VALUES (278,'woocommerce_myaccount_downloads_endpoint','downloads','yes');
INSERT INTO `wp_options` VALUES (279,'woocommerce_myaccount_edit_account_endpoint','editar-conta','yes');
INSERT INTO `wp_options` VALUES (280,'woocommerce_myaccount_edit_address_endpoint','editar-endereco','yes');
INSERT INTO `wp_options` VALUES (281,'woocommerce_myaccount_payment_methods_endpoint','metodos-de-pagamento','yes');
INSERT INTO `wp_options` VALUES (282,'woocommerce_myaccount_lost_password_endpoint','senha-perdida','yes');
INSERT INTO `wp_options` VALUES (283,'woocommerce_logout_endpoint','sair','yes');
INSERT INTO `wp_options` VALUES (284,'woocommerce_api_enabled','no','yes');
INSERT INTO `wp_options` VALUES (285,'woocommerce_allow_tracking','no','no');
INSERT INTO `wp_options` VALUES (286,'woocommerce_show_marketplace_suggestions','yes','no');
INSERT INTO `wp_options` VALUES (287,'woocommerce_single_image_width','600','yes');
INSERT INTO `wp_options` VALUES (288,'woocommerce_thumbnail_image_width','300','yes');
INSERT INTO `wp_options` VALUES (289,'woocommerce_checkout_highlight_required_fields','yes','yes');
INSERT INTO `wp_options` VALUES (290,'woocommerce_demo_store','no','no');
INSERT INTO `wp_options` VALUES (292,'woocommerce_permalinks','a:5:{s:12:\"product_base\";s:7:\"produto\";s:13:\"category_base\";s:17:\"categoria-produto\";s:8:\"tag_base\";s:11:\"produto-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (293,'current_theme_supports_woocommerce','yes','yes');
INSERT INTO `wp_options` VALUES (294,'woocommerce_queue_flush_rewrite_rules','no','yes');
INSERT INTO `wp_options` VALUES (297,'default_product_cat','15','yes');
INSERT INTO `wp_options` VALUES (299,'woocommerce_refund_returns_page_id','10','yes');
INSERT INTO `wp_options` VALUES (302,'woocommerce_paypal_settings','a:23:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:107:\"Pague com PayPal; você pode pagar com o seu cartão de crédito caso você não tenha uma conta no PayPal.\";s:5:\"email\";s:24:\"dev-email@flywheel.local\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:24:\"dev-email@flywheel.local\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:12:\"_should_load\";s:2:\"no\";}','yes');
INSERT INTO `wp_options` VALUES (303,'woocommerce_version','5.9.0','yes');
INSERT INTO `wp_options` VALUES (304,'woocommerce_db_version','5.9.0','yes');
INSERT INTO `wp_options` VALUES (305,'woocommerce_inbox_variant_assignment','6','yes');
INSERT INTO `wp_options` VALUES (309,'_transient_jetpack_autoloader_plugin_paths','a:1:{i:0;s:29:\"{{WP_PLUGIN_DIR}}/woocommerce\";}','yes');
INSERT INTO `wp_options` VALUES (310,'action_scheduler_lock_async-request-runner','1642534800','yes');
INSERT INTO `wp_options` VALUES (311,'woocommerce_admin_notices','a:1:{i:0;s:20:\"no_secure_connection\";}','yes');
INSERT INTO `wp_options` VALUES (312,'woocommerce_maxmind_geolocation_settings','a:1:{s:15:\"database_prefix\";s:32:\"EhhqqIBoS6JHb5PJ3CRuAGq4PY28QH8c\";}','yes');
INSERT INTO `wp_options` VALUES (313,'_transient_woocommerce_webhook_ids_status_active','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (314,'widget_woocommerce_widget_cart','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (315,'widget_woocommerce_layered_nav_filters','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (316,'widget_woocommerce_layered_nav','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (317,'widget_woocommerce_price_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (318,'widget_woocommerce_product_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (319,'widget_woocommerce_product_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (320,'widget_woocommerce_product_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (321,'widget_woocommerce_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (322,'widget_woocommerce_recently_viewed_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (323,'widget_woocommerce_top_rated_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (324,'widget_woocommerce_recent_reviews','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (325,'widget_woocommerce_rating_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (328,'woocommerce_admin_version','2.8.0','yes');
INSERT INTO `wp_options` VALUES (329,'woocommerce_admin_install_timestamp','1638021603','yes');
INSERT INTO `wp_options` VALUES (330,'wc_remote_inbox_notifications_wca_updated','','no');
INSERT INTO `wp_options` VALUES (331,'wc_remote_inbox_notifications_specs','a:31:{s:27:\"stripe_applepay_holiday2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"stripe_applepay_holiday2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:47:\"Boost sales this holiday season with Apple Pay!\";s:7:\"content\";s:380:\"Increase your conversion rate by letting your customers know that you accept Apple Pay. It’s seamless to <a href=\"https://docs.woocommerce.com/document/stripe/?_ga=2.90941597.642705274.1635776464-1391993999.1621950839#apple-pay\">enable Apple Pay with Stripe</a> and easy to communicate it with this <a href=\"https://developer.apple.com/apple-pay/marketing/\">marketing guide</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:27:\"stripe_applepay_holiday2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:16:\"Accept Apple Pay\";}}s:3:\"url\";s:34:\"https://woocommerce.com/apple-pay/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-08 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-12-26 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}}s:27:\"square_applepay_holiday2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"square_applepay_holiday2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:47:\"Boost sales this holiday season with Apple Pay!\";s:7:\"content\";s:393:\"Increase your conversion rate by letting your customers know that you accept Apple Pay. It’s seamless to <a href=\"https://docs.woocommerce.com/document/woocommerce-square/?_ga=2.90941597.642705274.1635776464-1391993999.1621950839#section-14\">enable Apple Pay with Square</a> and easy to communicate it with this <a href=\"https://developer.apple.com/apple-pay/marketing/\">marketing guide</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:27:\"square_applepay_holiday2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:16:\"Accept Apple Pay\";}}s:3:\"url\";s:34:\"https://woocommerce.com/apple-pay/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-08 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-12-26 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:18:\"woocommerce-square\";}}}}s:26:\"wcpay_applepay_holiday2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"wcpay_applepay_holiday2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:47:\"Boost sales this holiday season with Apple Pay!\";s:7:\"content\";s:338:\"Increase your conversion rate by letting your customers know that you accept Apple Pay. It’s seamless to <a href=\"https://docs.woocommerce.com/document/payments/apple-pay/\">enable Apple Pay with WooCommerce Payments</a> and easy to communicate it with this <a href=\"https://developer.apple.com/apple-pay/marketing/\">marketing guide</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:26:\"wcpay_applepay_holiday2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:16:\"Accept Apple Pay\";}}s:3:\"url\";s:34:\"https://woocommerce.com/apple-pay/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-08 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-12-26 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}}s:27:\"new_in_app_marketplace_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"new_in_app_marketplace_2021\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:36:\"Customize your store with extensions\";s:7:\"content\";s:164:\"Check out our NEW Extensions tab to see our favorite extensions for customizing your store, and discover the most popular extensions in the WooCommerce Marketplace.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"browse_extensions\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:17:\"Browse extensions\";}}s:3:\"url\";s:15:\"&page=wc-addons\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.7\";}}}s:21:\"wayflyer_bnpl_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:21:\"wayflyer_bnpl_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:48:\"Grow your business with funding through Wayflyer\";s:7:\"content\";s:259:\"Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store\'s performance, Wayflyer provides funding and analytical insights to invest in your business.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:21:\"wayflyer_bnpl_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Level up with funding\";}}s:3:\"url\";s:42:\"https://woocommerce.com/products/wayflyer/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-17 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-12-18 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AU\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"BE\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IE\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NL\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"GB\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-affirm\";}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:32:\"afterpay-gateway-for-woocommerce\";}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:31:\"klarna-payments-for-woocommerce\";}}}}}}s:35:\"wc_shipping_mobile_app_usps_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:35:\"wc_shipping_mobile_app_usps_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:94:\"Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App\";s:7:\"content\";s:210:\"Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"wc_shipping_mobile_app_usps_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Get WooCommerce Shipping\";}}s:3:\"url\";s:45:\"https://woocommerce.com/woocommerce-shipping/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-12 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-11-27 00:00:00\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:25:\"woocommerce-shipping-usps\";}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}}}s:30:\"wc_shipping_mobile_app_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:30:\"wc_shipping_mobile_app_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:69:\"Print and manage your shipping labels with the WooCommerce Mobile App\";s:7:\"content\";s:210:\"Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:30:\"wc_shipping_mobile_app_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:30:\"Get the WooCommerce Mobile App\";}}s:3:\"url\";s:31:\"https://woocommerce.com/mobile/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-12 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-11-27 00:00:00\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:255:\"WooCommerce Shipping & Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:274:\"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:37:\"wc-admin-getting-started-in-ecommerce\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-getting-started-in-ecommerce\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:38:\"Getting Started in eCommerce - webinar\";s:7:\"content\";s:174:\"We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"watch-the-webinar\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:17:\"Watch the webinar\";}}s:3:\"url\";s:28:\"https://youtu.be/V_2XtCOyZ7o\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:12:\"setup_client\";s:9:\"operation\";s:2:\"!=\";s:5:\"value\";b:1;}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_count\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:1:\"0\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:4:\"none\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:10:\"up-to-2500\";}}}}}s:18:\"your-first-product\";O:8:\"stdClass\":8:{s:4:\"slug\";s:18:\"your-first-product\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:18:\"Your first product\";s:7:\"content\";s:461:\"That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br/><br/>Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:82:\"https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_were_no_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_are_now_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:1;}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_types\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"physical\";s:7:\"default\";a:0:{}}}}s:37:\"wc-admin-optimizing-the-checkout-flow\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-optimizing-the-checkout-flow\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:28:\"Optimizing the checkout flow\";s:7:\"content\";s:171:\"It\'s crucial to get your store\'s checkout as smooth as possible to avoid losing sales. Let\'s take a look at how you can optimize the checkout experience for your shoppers.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:28:\"optimizing-the-checkout-flow\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:78:\"https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"payments\";s:7:\"default\";a:0:{}}}}s:39:\"wc-admin-first-five-things-to-customize\";O:8:\"stdClass\":8:{s:4:\"slug\";s:39:\"wc-admin-first-five-things-to-customize\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:45:\"The first 5 things to customize in your store\";s:7:\"content\";s:173:\"Deciding what to start with first is tricky. To help you properly prioritize, we\'ve put together this short list of the first few things you should customize in WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:82:\"https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:2;}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:5:\"value\";s:9:\"NOT EMPTY\";s:7:\"default\";s:9:\"NOT EMPTY\";s:9:\"operation\";s:2:\"!=\";}}}s:32:\"wc-payments-qualitative-feedback\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"wc-payments-qualitative-feedback\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"WooCommerce Payments setup - let us know what you think\";s:7:\"content\";s:146:\"Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"qualitative-feedback-from-new-users\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:39:\"https://automattic.survey.fm/wc-pay-new\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:20:\"woocommerce-payments\";s:7:\"default\";a:0:{}}}}s:29:\"share-your-feedback-on-paypal\";O:8:\"stdClass\":8:{s:4:\"slug\";s:29:\"share-your-feedback-on-paypal\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:29:\"Share your feedback on PayPal\";s:7:\"content\";s:127:\"Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:14:\"share-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:43:\"http://automattic.survey.fm/paypal-feedback\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}}}s:31:\"google_listings_and_ads_install\";O:8:\"stdClass\":8:{s:4:\"slug\";s:31:\"google_listings_and_ads_install\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Drive traffic and sales with Google\";s:7:\"content\";s:123:\"Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"get-started\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Get started\";}}s:3:\"url\";s:56:\"https://woocommerce.com/products/google-listings-and-ads\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-06-09 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"google_listings_and_ads\";}}}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:10;}}}s:39:\"wc-subscriptions-security-update-3-0-15\";O:8:\"stdClass\":8:{s:4:\"slug\";s:39:\"wc-subscriptions-security-update-3-0-15\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:42:\"WooCommerce Subscriptions security update!\";s:7:\"content\";s:736:\"We recently released an important security update to WooCommerce Subscriptions. To ensure your site\'s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br/><br/>Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br/><br/>We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br/><br/>If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:30:\"update-wc-subscriptions-3-0-15\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"View latest version\";}}s:3:\"url\";s:30:\"&page=wc-addons&section=helper\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:25:\"woocommerce-subscriptions\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:6:\"3.0.15\";}}}s:29:\"woocommerce-core-update-5-4-0\";O:8:\"stdClass\":8:{s:4:\"slug\";s:29:\"woocommerce-core-update-5-4-0\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:31:\"Update to WooCommerce 5.4.1 now\";s:7:\"content\";s:140:\"WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:20:\"update-wc-core-5-4-0\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:25:\"How to update WooCommerce\";}}s:3:\"url\";s:64:\"https://docs.woocommerce.com/document/how-to-update-woocommerce/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.0\";}}}s:19:\"wcpay-promo-2020-11\";O:8:\"stdClass\":7:{s:4:\"slug\";s:19:\"wcpay-promo-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:19:\"wcpay-promo-2020-11\";s:7:\"content\";s:19:\"wcpay-promo-2020-11\";}}s:5:\"rules\";a:0:{}}s:19:\"wcpay-promo-2020-12\";O:8:\"stdClass\":7:{s:4:\"slug\";s:19:\"wcpay-promo-2020-12\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:19:\"wcpay-promo-2020-12\";s:7:\"content\";s:19:\"wcpay-promo-2020-12\";}}s:5:\"rules\";a:0:{}}s:30:\"wcpay-promo-2021-6-incentive-1\";O:8:\"stdClass\":8:{s:4:\"slug\";s:30:\"wcpay-promo-2021-6-incentive-1\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:82:\"Simplify the payments process for you and your customers with WooCommerce Payments\";s:7:\"content\";s:702:\"With <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay601\">WooCommerce Payments</a>, you can securely accept all major cards, Apple Pay®, and recurring revenue in over 100 currencies.\n				Built into your store’s WooCommerce dashboard, track cash flow and manage all of your transactions in one place – with no setup costs or monthly fees.\n				<br/><br/>\n				By clicking \"Get WooCommerce Payments,\" you agree to the <a href=\"https://wordpress.com/tos/?utm_medium=notification&utm_source=product&utm_campaign=wcpay601\">Terms of Service</a>\n				and acknowledge you have read the <a href=\"https://automattic.com/privacy/\">Privacy Policy</a>.\n				\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:25:\"get-woo-commerce-payments\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Get WooCommerce Payments\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:12:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:6:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:1:\"1\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:1:\"3\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:1:\"5\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:1:\"7\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:1:\"9\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:2:\"11\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:4:{i:0;s:17:\"crowdsignal-forms\";i:1;s:11:\"layout-grid\";i:2;s:17:\"full-site-editing\";i:3;s:13:\"page-optimize\";}}}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:26:\"woocommerce_allow_tracking\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:2:\">=\";s:4:\"days\";i:31;}i:5;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.0\";}i:7;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:10:\"db_version\";s:5:\"value\";s:5:\"45805\";s:7:\"default\";i:0;s:9:\"operation\";s:2:\">=\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:19:\"wcpay-promo-2020-11\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:19:\"wcpay-promo-2020-11\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:19:\"wcpay-promo-2020-12\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:19:\"wcpay-promo-2020-12\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:30:\"wcpay-promo-2021-6-incentive-2\";O:8:\"stdClass\":8:{s:4:\"slug\";s:30:\"wcpay-promo-2021-6-incentive-2\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:82:\"Simplify the payments process for you and your customers with WooCommerce Payments\";s:7:\"content\";s:702:\"With <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay601\">WooCommerce Payments</a>, you can securely accept all major cards, Apple Pay®, and recurring revenue in over 100 currencies.\n				Built into your store’s WooCommerce dashboard, track cash flow and manage all of your transactions in one place – with no setup costs or monthly fees.\n				<br/><br/>\n				By clicking \"Get WooCommerce Payments,\" you agree to the <a href=\"https://wordpress.com/tos/?utm_medium=notification&utm_source=product&utm_campaign=wcpay601\">Terms of Service</a>\n				and acknowledge you have read the <a href=\"https://automattic.com/privacy/\">Privacy Policy</a>.\n				\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:24:\"get-woocommerce-payments\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Get WooCommerce Payments\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:12:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:6:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:1:\"2\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:1:\"4\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:1:\"6\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:1:\"8\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:2:\"10\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:2:\"12\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:4:{i:0;s:17:\"crowdsignal-forms\";i:1;s:11:\"layout-grid\";i:2;s:17:\"full-site-editing\";i:3;s:13:\"page-optimize\";}}}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:26:\"woocommerce_allow_tracking\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:2:\">=\";s:4:\"days\";i:31;}i:5;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.0\";}i:7;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:10:\"db_version\";s:5:\"value\";s:5:\"45805\";s:7:\"default\";i:0;s:9:\"operation\";s:2:\">=\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:19:\"wcpay-promo-2020-11\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:19:\"wcpay-promo-2020-11\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:19:\"wcpay-promo-2020-12\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:19:\"wcpay-promo-2020-12\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:34:\"ppxo-pps-upgrade-paypal-payments-1\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"ppxo-pps-upgrade-paypal-payments-1\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:47:\"Get the latest PayPal extension for WooCommerce\";s:7:\"content\";s:440:\"Heads up! There\'s a new PayPal on the block!<br/><br/>Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br/><br/>Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"ppxo-pps-install-paypal-payments-1\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:18:\"View upgrade guide\";}}s:3:\"url\";s:96:\"https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;}}}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";i:7;s:7:\"default\";i:1;s:9:\"operation\";s:1:\"<\";}}}s:34:\"ppxo-pps-upgrade-paypal-payments-2\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"ppxo-pps-upgrade-paypal-payments-2\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:31:\"Upgrade your PayPal experience!\";s:7:\"content\";s:513:\"We\'ve developed a whole new <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension for WooCommerce</a> that combines the best features of our many PayPal extensions into just one extension.<br/><br/>Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br/><br/>Start using our latest PayPal today to continue to receive support and updates.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"ppxo-pps-install-paypal-payments-2\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:18:\"View upgrade guide\";}}s:3:\"url\";s:96:\"https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;}}}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";i:6;s:7:\"default\";i:1;s:9:\"operation\";s:1:\">\";}}}s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:56:\"Action required: Critical vulnerabilities in WooCommerce\";s:7:\"content\";s:570:\"In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/>Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br/><br/>For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:146:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=vulnerability_comms\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:38:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.3.6\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.4.8\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.5.9\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.6\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.2\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.2\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.2\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.3\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.2\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.3\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.3\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.4\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.4\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.5\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.2\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.3\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.4\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.3\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.4\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.3\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.2\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.3\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.4\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.1\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.2\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.1\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.2\";}i:31;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.3\";}i:32;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.4\";}i:33;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.1\";}i:34;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.2\";}i:35;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.2\";}i:36;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.3\";}i:37;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"5.5.1\";}}}s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:63:\"Action required: Critical vulnerabilities in WooCommerce Blocks\";s:7:\"content\";s:570:\"In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/>Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br/><br/>For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:146:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=vulnerability_comms\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:31:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:6:\"2.5.16\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.6.2\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.7.2\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.8.1\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.9.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.0.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.1.1\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.2.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.3.1\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.4.1\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.5.1\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.1\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.2\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.1\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.1\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.1\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.3\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.1\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.1\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.2\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.1\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.1\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.2\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.1\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"5.5.1\";}}}s:45:\"woocommerce-core-sqli-july-2021-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:45:\"woocommerce-core-sqli-july-2021-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"Solved: Critical vulnerabilities patched in WooCommerce\";s:7:\"content\";s:433:\"In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:146:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=vulnerability_comms\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:23:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.3.6\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.4.8\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.5.9\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.6\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.2\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.2\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.2\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.2\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.3\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.4\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.2\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.3\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.2\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.3\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.1\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.5.1\";}}}}}s:47:\"woocommerce-blocks-sqli-july-2021-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:47:\"woocommerce-blocks-sqli-july-2021-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:62:\"Solved: Critical vulnerabilities patched in WooCommerce Blocks\";s:7:\"content\";s:433:\"In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:146:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=vulnerability_comms\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:31:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"2.5.16\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.6.2\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.7.2\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.8.1\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.9.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.0.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.1.1\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.2.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.3.1\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.4.1\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.5.1\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.1\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.2\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.1\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.1\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.1\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.3\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.1\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.1\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.2\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.1\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.1\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.2\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.1\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.5.1\";}}}}}s:19:\"habit-moment-survey\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"habit-moment-survey\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:61:\"We\'re all ears! Share your experience so far with WooCommerce\";s:7:\"content\";s:134:\"We\'d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:14:\"share-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:45:\"https://automattic.survey.fm/store-management\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:30;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:0;}}}s:26:\"ecomm-wc-navigation-survey\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"ecomm-wc-navigation-survey\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"We\'d like your feedback on the WooCommerce navigation\";s:7:\"content\";s:132:\"We\'re making improvements to the WooCommerce navigation and would love your feedback. Share your experience in this 2 minute survey.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:32:\"share-navigation-survey-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:63:\"https://automattic.survey.fm/feedback-on-woocommerce-navigation\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:12:\"is_ecommerce\";s:5:\"value\";b:1;}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:90;}}}}','no');
INSERT INTO `wp_options` VALUES (332,'wc_remote_inbox_notifications_stored_state','O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}','no');
INSERT INTO `wp_options` VALUES (336,'_transient_wc_count_comments','O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (337,'wc_blocks_surface_cart_checkout_probability','79','yes');
INSERT INTO `wp_options` VALUES (338,'wc_blocks_db_schema_version','260','yes');
INSERT INTO `wp_options` VALUES (339,'woocommerce_meta_box_errors','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (342,'_transient_woocommerce_reports-transient-version','1638021934','yes');
INSERT INTO `wp_options` VALUES (378,'woocommerce_onboarding_profile','a:9:{s:18:\"is_agree_marketing\";b:1;s:11:\"store_email\";s:24:\"dev-email@flywheel.local\";s:8:\"industry\";a:1:{i:0;a:1:{s:4:\"slug\";s:27:\"fashion-apparel-accessories\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:1:\"0\";s:14:\"selling_venues\";s:2:\"no\";s:12:\"setup_client\";b:1;s:19:\"business_extensions\";a:0:{}s:9:\"completed\";b:1;}','yes');
INSERT INTO `wp_options` VALUES (393,'woocommerce_task_list_tracked_completed_tasks','a:3:{i:0;s:13:\"store_details\";i:1;s:8:\"products\";i:2;s:8:\"shipping\";}','yes');
INSERT INTO `wp_options` VALUES (394,'woocommerce_task_list_welcome_modal_dismissed','yes','yes');
INSERT INTO `wp_options` VALUES (399,'_transient_product_query-transient-version','1642534738','yes');
INSERT INTO `wp_options` VALUES (403,'_transient_product-transient-version','1641133343','yes');
INSERT INTO `wp_options` VALUES (422,'_transient_shipping-transient-version','1638023077','yes');
INSERT INTO `wp_options` VALUES (453,'current_theme','','yes');
INSERT INTO `wp_options` VALUES (454,'theme_mods_handel','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (455,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (456,'woocommerce_maybe_regenerate_images_hash','991b1ca641921cf0f5baf7a2fe85861b','yes');
INSERT INTO `wp_options` VALUES (496,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (545,'_transient_health-check-site-status-result','{\"good\":11,\"recommended\":6,\"critical\":1}','yes');
INSERT INTO `wp_options` VALUES (554,'woocommerce_onboarding_subscribed_to_mailchimp','yes','yes');
INSERT INTO `wp_options` VALUES (604,'medium_crop','1','yes');
INSERT INTO `wp_options` VALUES (609,'recovery_mode_email_last_sent','1639228795','yes');
INSERT INTO `wp_options` VALUES (628,'product_cat_children','a:2:{i:19;a:2:{i:0;i:21;i:1;i:22;}i:20;a:2:{i:0;i:23;i:1;i:24;}}','yes');
INSERT INTO `wp_options` VALUES (632,'_transient_wc_attribute_taxonomies','a:1:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:7:\"tamanho\";s:15:\"attribute_label\";s:7:\"Tamanho\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}}','yes');
INSERT INTO `wp_options` VALUES (711,'_transient_timeout_wc_var_prices_26','1643725345','no');
INSERT INTO `wp_options` VALUES (712,'_transient_wc_var_prices_26','{\"version\":\"1641133343\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"27\":\"129.00\",\"28\":\"129.00\",\"29\":\"129.00\"},\"regular_price\":{\"27\":\"129.00\",\"28\":\"129.00\",\"29\":\"129.00\"},\"sale_price\":{\"27\":\"129.00\",\"28\":\"129.00\",\"29\":\"129.00\"}}}','no');
INSERT INTO `wp_options` VALUES (734,'_transient_timeout_wc_var_prices_31','1643725530','no');
INSERT INTO `wp_options` VALUES (735,'_transient_wc_var_prices_31','{\"version\":\"1641133343\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"32\":\"129.00\",\"33\":\"129.00\",\"34\":\"129.00\"},\"regular_price\":{\"32\":\"129.00\",\"33\":\"129.00\",\"34\":\"129.00\"},\"sale_price\":{\"32\":\"129.00\",\"33\":\"129.00\",\"34\":\"129.00\"}}}','no');
INSERT INTO `wp_options` VALUES (851,'widget_recent-comments','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (852,'widget_recent-posts','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (855,'nav_menu_options','a:1:{s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (979,'action_scheduler_migration_status','complete','yes');
INSERT INTO `wp_options` VALUES (1301,'_transient_timeout_wc_shipping_method_count_legacy','1643724802','no');
INSERT INTO `wp_options` VALUES (1303,'_transient_wc_shipping_method_count_legacy','a:2:{s:7:\"version\";s:10:\"1638023077\";s:5:\"value\";i:1;}','no');
INSERT INTO `wp_options` VALUES (1427,'_transient_timeout__woocommerce_helper_subscriptions','1642535634','no');
INSERT INTO `wp_options` VALUES (1428,'_transient__woocommerce_helper_subscriptions','a:0:{}','no');
INSERT INTO `wp_options` VALUES (1429,'_site_transient_timeout_theme_roots','1642536534','no');
INSERT INTO `wp_options` VALUES (1430,'_site_transient_theme_roots','a:1:{s:6:\"handel\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (1431,'_transient_timeout__woocommerce_helper_updates','1642577934','no');
INSERT INTO `wp_options` VALUES (1432,'_transient__woocommerce_helper_updates','a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1642534734;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}','no');
INSERT INTO `wp_options` VALUES (1434,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.8.3.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.8.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.3\";s:7:\"version\";s:5:\"5.8.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.8.3-partial-2.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.3\";s:7:\"version\";s:5:\"5.8.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:5:\"5.8.2\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.8.3-partial-2.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.3-rollback-2.zip\";}s:7:\"current\";s:5:\"5.8.3\";s:7:\"version\";s:5:\"5.8.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:5:\"5.8.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1642534736;s:15:\"version_checked\";s:5:\"5.8.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (1435,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1642534737;s:7:\"checked\";a:1:{s:6:\"handel\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (1436,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1642534737;s:8:\"response\";a:1:{s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"6.1.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.6.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";s:6:\"tested\";s:5:\"5.8.3\";s:12:\"requires_php\";s:3:\"7.0\";}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"woocommerce\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.9.0\";s:7:\"updated\";s:19:\"2021-11-30 12:14:13\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/woocommerce/5.9.0/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}}s:7:\"checked\";a:2:{s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:27:\"woocommerce/woocommerce.php\";s:5:\"5.9.0\";}}','no');
INSERT INTO `wp_options` VALUES (1440,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1643139541','no');
INSERT INTO `wp_options` VALUES (1441,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (1443,'_transient_timeout_wc_term_counts','1645126756','no');
INSERT INTO `wp_options` VALUES (1444,'_transient_wc_term_counts','a:7:{i:24;s:1:\"2\";i:21;s:1:\"3\";i:19;s:1:\"5\";i:20;s:1:\"5\";i:22;s:1:\"2\";i:25;s:1:\"7\";i:23;s:1:\"3\";}','no');
INSERT INTO `wp_options` VALUES (1445,'_transient_timeout_wc_related_47','1642621156','no');
INSERT INTO `wp_options` VALUES (1446,'_transient_wc_related_47','a:1:{s:50:\"limit=6&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=47\";a:7:{i:0;s:2:\"39\";i:1;s:2:\"41\";i:2;s:2:\"43\";i:3;s:2:\"45\";i:4;s:2:\"24\";i:5;s:2:\"26\";i:6;s:2:\"31\";}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=656 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_wp_attached_file','woocommerce-placeholder.png');
INSERT INTO `wp_postmeta` VALUES (4,5,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (5,11,'_wp_attached_file','2021/11/hoodie-with-logo-2.jpg');
INSERT INTO `wp_postmeta` VALUES (6,11,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:30:\"2021/11/hoodie-with-logo-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (7,11,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-logo-2.jpg');
INSERT INTO `wp_postmeta` VALUES (36,13,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (37,13,'_wp_page_template','page-home.php');
INSERT INTO `wp_postmeta` VALUES (38,13,'_edit_lock','1639230853:1');
INSERT INTO `wp_postmeta` VALUES (48,20,'_wp_attached_file','2021/12/feminino.jpg');
INSERT INTO `wp_postmeta` VALUES (49,20,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:920;s:4:\"file\";s:20:\"2021/12/feminino.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"feminino-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"feminino-1024x654.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:654;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"feminino-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"feminino-768x491.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:491;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"slide\";a:4:{s:4:\"file\";s:21:\"feminino-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"feminino-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"feminino-600x383.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"feminino-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"feminino-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"feminino-600x383.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"feminino-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (50,21,'_wp_attached_file','2021/12/masculino.jpg');
INSERT INTO `wp_postmeta` VALUES (51,21,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:920;s:4:\"file\";s:21:\"2021/12/masculino.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"masculino-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"masculino-1024x654.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:654;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"masculino-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"masculino-768x491.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:491;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"slide\";a:4:{s:4:\"file\";s:22:\"masculino-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"masculino-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"masculino-600x383.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"masculino-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"masculino-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"masculino-600x383.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"masculino-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (55,22,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (56,22,'_edit_lock','1638831199:1');
INSERT INTO `wp_postmeta` VALUES (57,23,'_wp_attached_file','2021/12/feminino-1.jpg');
INSERT INTO `wp_postmeta` VALUES (58,23,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2021/12/feminino-1.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"feminino-1-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"feminino-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"feminino-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"feminino-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"slide\";a:4:{s:4:\"file\";s:23:\"feminino-1-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"feminino-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"feminino-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"feminino-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"feminino-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"feminino-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"feminino-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (59,22,'_thumbnail_id','23');
INSERT INTO `wp_postmeta` VALUES (60,22,'_regular_price','159');
INSERT INTO `wp_postmeta` VALUES (61,22,'_sale_price','99');
INSERT INTO `wp_postmeta` VALUES (62,22,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (63,22,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (64,22,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (65,22,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (66,22,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (67,22,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (68,22,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (69,22,'_length','10');
INSERT INTO `wp_postmeta` VALUES (70,22,'_width','10');
INSERT INTO `wp_postmeta` VALUES (71,22,'_height','10');
INSERT INTO `wp_postmeta` VALUES (72,22,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (73,22,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (74,22,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (75,22,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (76,22,'_stock','10');
INSERT INTO `wp_postmeta` VALUES (77,22,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (78,22,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (79,22,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (80,22,'_product_version','5.9.0');
INSERT INTO `wp_postmeta` VALUES (81,22,'_price','99');
INSERT INTO `wp_postmeta` VALUES (82,24,'_regular_price','239');
INSERT INTO `wp_postmeta` VALUES (84,24,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (85,24,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (86,24,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (87,24,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (88,24,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (89,24,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (90,24,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (91,24,'_length','10');
INSERT INTO `wp_postmeta` VALUES (92,24,'_width','10');
INSERT INTO `wp_postmeta` VALUES (93,24,'_height','10');
INSERT INTO `wp_postmeta` VALUES (94,24,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (95,24,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (96,24,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (97,24,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (98,24,'_thumbnail_id','25');
INSERT INTO `wp_postmeta` VALUES (99,24,'_stock','10');
INSERT INTO `wp_postmeta` VALUES (100,24,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (101,24,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (102,24,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (103,24,'_product_version','5.9.0');
INSERT INTO `wp_postmeta` VALUES (104,24,'_price','239');
INSERT INTO `wp_postmeta` VALUES (105,24,'_edit_lock','1638831279:1');
INSERT INTO `wp_postmeta` VALUES (106,25,'_wp_attached_file','2021/12/feminino-2.jpg');
INSERT INTO `wp_postmeta` VALUES (107,25,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2021/12/feminino-2.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"feminino-2-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"feminino-2-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"feminino-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"feminino-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"slide\";a:4:{s:4:\"file\";s:23:\"feminino-2-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"feminino-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"feminino-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"feminino-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"feminino-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"feminino-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"feminino-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (108,24,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (110,26,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (111,26,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (112,26,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (113,26,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (114,26,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (115,26,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (116,26,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (117,26,'_length','10');
INSERT INTO `wp_postmeta` VALUES (118,26,'_width','10');
INSERT INTO `wp_postmeta` VALUES (119,26,'_height','10');
INSERT INTO `wp_postmeta` VALUES (120,26,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (121,26,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (122,26,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (123,26,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (124,26,'_thumbnail_id','30');
INSERT INTO `wp_postmeta` VALUES (126,26,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (127,26,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (128,26,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (129,26,'_product_version','5.9.0');
INSERT INTO `wp_postmeta` VALUES (131,26,'_edit_lock','1638831663:1');
INSERT INTO `wp_postmeta` VALUES (132,26,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (133,26,'_product_attributes','a:1:{s:10:\"pa_tamanho\";a:6:{s:4:\"name\";s:10:\"pa_tamanho\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}');
INSERT INTO `wp_postmeta` VALUES (134,27,'_variation_description','');
INSERT INTO `wp_postmeta` VALUES (135,27,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (136,27,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (137,27,'_tax_class','parent');
INSERT INTO `wp_postmeta` VALUES (138,27,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (139,27,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (140,27,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (141,27,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (142,27,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (143,27,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (144,27,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (145,27,'_stock','5');
INSERT INTO `wp_postmeta` VALUES (146,27,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (147,27,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (148,27,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (149,27,'attribute_pa_tamanho','pequeno');
INSERT INTO `wp_postmeta` VALUES (150,27,'_product_version','5.9.0');
INSERT INTO `wp_postmeta` VALUES (151,28,'_variation_description','');
INSERT INTO `wp_postmeta` VALUES (152,28,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (153,28,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (154,28,'_tax_class','parent');
INSERT INTO `wp_postmeta` VALUES (155,28,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (156,28,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (157,28,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (158,28,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (159,28,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (160,28,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (161,28,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (162,28,'_stock','5');
INSERT INTO `wp_postmeta` VALUES (163,28,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (164,28,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (165,28,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (166,28,'attribute_pa_tamanho','medio');
INSERT INTO `wp_postmeta` VALUES (167,28,'_product_version','5.9.0');
INSERT INTO `wp_postmeta` VALUES (168,29,'_variation_description','');
INSERT INTO `wp_postmeta` VALUES (169,29,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (170,29,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (171,29,'_tax_class','parent');
INSERT INTO `wp_postmeta` VALUES (172,29,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (173,29,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (174,29,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (175,29,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (176,29,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (177,29,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (178,29,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (179,29,'_stock','5');
INSERT INTO `wp_postmeta` VALUES (180,29,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (181,29,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (182,29,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (183,29,'attribute_pa_tamanho','grande');
INSERT INTO `wp_postmeta` VALUES (184,29,'_product_version','5.9.0');
INSERT INTO `wp_postmeta` VALUES (186,27,'_thumbnail_id','0');
INSERT INTO `wp_postmeta` VALUES (187,27,'_price','129');
INSERT INTO `wp_postmeta` VALUES (188,28,'_regular_price','129');
INSERT INTO `wp_postmeta` VALUES (189,27,'_sku','camisa-preta-p');
INSERT INTO `wp_postmeta` VALUES (190,28,'_thumbnail_id','0');
INSERT INTO `wp_postmeta` VALUES (191,28,'_price','129');
INSERT INTO `wp_postmeta` VALUES (192,27,'_sale_price','');
INSERT INTO `wp_postmeta` VALUES (194,29,'_regular_price','129');
INSERT INTO `wp_postmeta` VALUES (195,29,'_thumbnail_id','0');
INSERT INTO `wp_postmeta` VALUES (196,29,'_price','129');
INSERT INTO `wp_postmeta` VALUES (199,27,'_regular_price','129');
INSERT INTO `wp_postmeta` VALUES (203,27,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (204,28,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (205,29,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (208,27,'_length','10');
INSERT INTO `wp_postmeta` VALUES (209,28,'_length','10');
INSERT INTO `wp_postmeta` VALUES (210,29,'_length','10');
INSERT INTO `wp_postmeta` VALUES (213,27,'_width','10');
INSERT INTO `wp_postmeta` VALUES (214,28,'_width','10');
INSERT INTO `wp_postmeta` VALUES (215,29,'_width','10');
INSERT INTO `wp_postmeta` VALUES (217,26,'_price','129');
INSERT INTO `wp_postmeta` VALUES (218,30,'_wp_attached_file','2021/12/feminino-3.jpg');
INSERT INTO `wp_postmeta` VALUES (219,30,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2021/12/feminino-3.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"feminino-3-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"feminino-3-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"feminino-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"feminino-3-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"slide\";a:4:{s:4:\"file\";s:23:\"feminino-3-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"feminino-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"feminino-3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"feminino-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"feminino-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"feminino-3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"feminino-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (220,26,'_regular_price','239');
INSERT INTO `wp_postmeta` VALUES (221,31,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (222,31,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (223,31,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (224,31,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (225,31,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (226,31,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (227,31,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (228,31,'_length','10');
INSERT INTO `wp_postmeta` VALUES (229,31,'_width','10');
INSERT INTO `wp_postmeta` VALUES (230,31,'_height','10');
INSERT INTO `wp_postmeta` VALUES (231,31,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (232,31,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (233,31,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (234,31,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (235,31,'_thumbnail_id','35');
INSERT INTO `wp_postmeta` VALUES (236,31,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (237,31,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (238,31,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (239,31,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (240,31,'_product_attributes','a:1:{s:10:\"pa_tamanho\";a:6:{s:4:\"name\";s:10:\"pa_tamanho\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}');
INSERT INTO `wp_postmeta` VALUES (241,31,'_product_version','5.9.0');
INSERT INTO `wp_postmeta` VALUES (242,32,'_variation_description','');
INSERT INTO `wp_postmeta` VALUES (243,32,'_sku','saia-rosa-p');
INSERT INTO `wp_postmeta` VALUES (244,32,'_regular_price','129');
INSERT INTO `wp_postmeta` VALUES (245,32,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (246,32,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (247,32,'_tax_class','parent');
INSERT INTO `wp_postmeta` VALUES (248,32,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (249,32,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (250,32,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (251,32,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (252,32,'_length','10');
INSERT INTO `wp_postmeta` VALUES (253,32,'_width','10');
INSERT INTO `wp_postmeta` VALUES (254,32,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (255,32,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (256,32,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (257,32,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (258,32,'_thumbnail_id','0');
INSERT INTO `wp_postmeta` VALUES (259,32,'_stock','5');
INSERT INTO `wp_postmeta` VALUES (260,32,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (261,32,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (262,32,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (263,32,'attribute_pa_tamanho','pequeno');
INSERT INTO `wp_postmeta` VALUES (264,32,'_price','129');
INSERT INTO `wp_postmeta` VALUES (265,32,'_product_version','5.9.0');
INSERT INTO `wp_postmeta` VALUES (266,33,'_variation_description','');
INSERT INTO `wp_postmeta` VALUES (267,33,'_regular_price','129');
INSERT INTO `wp_postmeta` VALUES (268,33,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (269,33,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (270,33,'_tax_class','parent');
INSERT INTO `wp_postmeta` VALUES (271,33,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (272,33,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (273,33,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (274,33,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (275,33,'_length','10');
INSERT INTO `wp_postmeta` VALUES (276,33,'_width','10');
INSERT INTO `wp_postmeta` VALUES (277,33,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (278,33,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (279,33,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (280,33,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (281,33,'_thumbnail_id','0');
INSERT INTO `wp_postmeta` VALUES (282,33,'_stock','5');
INSERT INTO `wp_postmeta` VALUES (283,33,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (284,33,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (285,33,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (286,33,'attribute_pa_tamanho','medio');
INSERT INTO `wp_postmeta` VALUES (287,33,'_price','129');
INSERT INTO `wp_postmeta` VALUES (288,33,'_product_version','5.9.0');
INSERT INTO `wp_postmeta` VALUES (289,34,'_variation_description','');
INSERT INTO `wp_postmeta` VALUES (290,34,'_regular_price','129');
INSERT INTO `wp_postmeta` VALUES (291,34,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (292,34,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (293,34,'_tax_class','parent');
INSERT INTO `wp_postmeta` VALUES (294,34,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (295,34,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (296,34,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (297,34,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (298,34,'_length','10');
INSERT INTO `wp_postmeta` VALUES (299,34,'_width','10');
INSERT INTO `wp_postmeta` VALUES (300,34,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (301,34,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (302,34,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (303,34,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (304,34,'_thumbnail_id','0');
INSERT INTO `wp_postmeta` VALUES (305,34,'_stock','5');
INSERT INTO `wp_postmeta` VALUES (306,34,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (307,34,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (308,34,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (309,34,'attribute_pa_tamanho','grande');
INSERT INTO `wp_postmeta` VALUES (310,34,'_price','129');
INSERT INTO `wp_postmeta` VALUES (311,34,'_product_version','5.9.0');
INSERT INTO `wp_postmeta` VALUES (313,31,'_edit_lock','1638831904:1');
INSERT INTO `wp_postmeta` VALUES (314,31,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (315,35,'_wp_attached_file','2021/12/feminino-4.jpg');
INSERT INTO `wp_postmeta` VALUES (316,35,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2021/12/feminino-4.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"feminino-4-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"feminino-4-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"feminino-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"feminino-4-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"slide\";a:4:{s:4:\"file\";s:23:\"feminino-4-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"feminino-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"feminino-4-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"feminino-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"feminino-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"feminino-4-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"feminino-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (317,33,'_sku','saia-rosa-m');
INSERT INTO `wp_postmeta` VALUES (318,34,'_sku','saia-rosa-g');
INSERT INTO `wp_postmeta` VALUES (319,31,'_price','129');
INSERT INTO `wp_postmeta` VALUES (320,36,'_regular_price','159');
INSERT INTO `wp_postmeta` VALUES (321,36,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (322,36,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (323,36,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (324,36,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (325,36,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (326,36,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (327,36,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (328,36,'_length','10');
INSERT INTO `wp_postmeta` VALUES (329,36,'_width','10');
INSERT INTO `wp_postmeta` VALUES (330,36,'_height','10');
INSERT INTO `wp_postmeta` VALUES (331,36,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (332,36,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (333,36,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (334,36,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (335,36,'_thumbnail_id','37');
INSERT INTO `wp_postmeta` VALUES (336,36,'_stock','10');
INSERT INTO `wp_postmeta` VALUES (337,36,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (338,36,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (339,36,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (340,36,'_product_version','5.9.0');
INSERT INTO `wp_postmeta` VALUES (341,36,'_price','69');
INSERT INTO `wp_postmeta` VALUES (342,36,'_edit_lock','1638831977:1');
INSERT INTO `wp_postmeta` VALUES (343,36,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (344,37,'_wp_attached_file','2021/12/feminino-5.jpg');
INSERT INTO `wp_postmeta` VALUES (345,37,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2021/12/feminino-5.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"feminino-5-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"feminino-5-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"feminino-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"feminino-5-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"slide\";a:4:{s:4:\"file\";s:23:\"feminino-5-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"feminino-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"feminino-5-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"feminino-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"feminino-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"feminino-5-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"feminino-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (346,36,'_sale_price','69');
INSERT INTO `wp_postmeta` VALUES (347,39,'_regular_price','159');
INSERT INTO `wp_postmeta` VALUES (348,39,'_sale_price','69');
INSERT INTO `wp_postmeta` VALUES (349,39,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (350,39,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (351,39,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (352,39,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (353,39,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (354,39,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (355,39,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (356,39,'_length','10');
INSERT INTO `wp_postmeta` VALUES (357,39,'_width','10');
INSERT INTO `wp_postmeta` VALUES (358,39,'_height','10');
INSERT INTO `wp_postmeta` VALUES (359,39,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (360,39,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (361,39,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (362,39,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (363,39,'_thumbnail_id','40');
INSERT INTO `wp_postmeta` VALUES (364,39,'_stock','10');
INSERT INTO `wp_postmeta` VALUES (365,39,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (366,39,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (367,39,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (368,39,'_product_version','5.9.0');
INSERT INTO `wp_postmeta` VALUES (369,39,'_price','69');
INSERT INTO `wp_postmeta` VALUES (370,39,'_edit_lock','1638832932:1');
INSERT INTO `wp_postmeta` VALUES (371,40,'_wp_attached_file','2021/12/masculino-1.jpg');
INSERT INTO `wp_postmeta` VALUES (372,40,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:23:\"2021/12/masculino-1.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"masculino-1-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"masculino-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"masculino-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"masculino-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"slide\";a:4:{s:4:\"file\";s:24:\"masculino-1-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"masculino-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"masculino-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"masculino-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"masculino-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"masculino-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"masculino-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (373,39,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (374,41,'_regular_price','159');
INSERT INTO `wp_postmeta` VALUES (376,41,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (377,41,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (378,41,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (379,41,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (380,41,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (381,41,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (382,41,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (383,41,'_length','10');
INSERT INTO `wp_postmeta` VALUES (384,41,'_width','10');
INSERT INTO `wp_postmeta` VALUES (385,41,'_height','10');
INSERT INTO `wp_postmeta` VALUES (386,41,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (387,41,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (388,41,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (389,41,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (390,41,'_thumbnail_id','42');
INSERT INTO `wp_postmeta` VALUES (391,41,'_stock','10');
INSERT INTO `wp_postmeta` VALUES (392,41,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (393,41,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (394,41,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (395,41,'_product_version','5.9.0');
INSERT INTO `wp_postmeta` VALUES (396,41,'_price','159');
INSERT INTO `wp_postmeta` VALUES (397,41,'_edit_lock','1639779595:1');
INSERT INTO `wp_postmeta` VALUES (398,42,'_wp_attached_file','2021/12/masculino-2.jpg');
INSERT INTO `wp_postmeta` VALUES (399,42,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:23:\"2021/12/masculino-2.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"masculino-2-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"masculino-2-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"masculino-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"masculino-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"slide\";a:4:{s:4:\"file\";s:24:\"masculino-2-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"masculino-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"masculino-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"masculino-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"masculino-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"masculino-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"masculino-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (400,41,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (401,43,'_regular_price','59');
INSERT INTO `wp_postmeta` VALUES (402,43,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (403,43,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (404,43,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (405,43,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (406,43,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (407,43,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (408,43,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (409,43,'_length','10');
INSERT INTO `wp_postmeta` VALUES (410,43,'_width','10');
INSERT INTO `wp_postmeta` VALUES (411,43,'_height','10');
INSERT INTO `wp_postmeta` VALUES (412,43,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (413,43,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (414,43,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (415,43,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (416,43,'_thumbnail_id','44');
INSERT INTO `wp_postmeta` VALUES (417,43,'_stock','10');
INSERT INTO `wp_postmeta` VALUES (418,43,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (419,43,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (420,43,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (421,43,'_product_version','5.9.0');
INSERT INTO `wp_postmeta` VALUES (422,43,'_price','59');
INSERT INTO `wp_postmeta` VALUES (423,43,'_edit_lock','1638832407:1');
INSERT INTO `wp_postmeta` VALUES (424,44,'_wp_attached_file','2021/12/masculino-3.jpg');
INSERT INTO `wp_postmeta` VALUES (425,44,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:23:\"2021/12/masculino-3.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"masculino-3-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"masculino-3-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"masculino-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"masculino-3-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"slide\";a:4:{s:4:\"file\";s:24:\"masculino-3-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"masculino-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"masculino-3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"masculino-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"masculino-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"masculino-3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"masculino-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (426,43,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (427,45,'_regular_price','89');
INSERT INTO `wp_postmeta` VALUES (428,45,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (429,45,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (430,45,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (431,45,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (432,45,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (433,45,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (434,45,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (435,45,'_length','10');
INSERT INTO `wp_postmeta` VALUES (436,45,'_width','10');
INSERT INTO `wp_postmeta` VALUES (437,45,'_height','10');
INSERT INTO `wp_postmeta` VALUES (438,45,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (439,45,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (440,45,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (441,45,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (442,45,'_thumbnail_id','46');
INSERT INTO `wp_postmeta` VALUES (443,45,'_stock','10');
INSERT INTO `wp_postmeta` VALUES (444,45,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (445,45,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (446,45,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (447,45,'_product_version','5.9.0');
INSERT INTO `wp_postmeta` VALUES (448,45,'_price','89');
INSERT INTO `wp_postmeta` VALUES (449,45,'_edit_lock','1641135113:1');
INSERT INTO `wp_postmeta` VALUES (450,46,'_wp_attached_file','2021/12/masculino-4.jpg');
INSERT INTO `wp_postmeta` VALUES (451,46,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:23:\"2021/12/masculino-4.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"masculino-4-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"masculino-4-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"masculino-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"masculino-4-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"slide\";a:4:{s:4:\"file\";s:24:\"masculino-4-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"masculino-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"masculino-4-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"masculino-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"masculino-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"masculino-4-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"masculino-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (452,45,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (453,47,'_regular_price','139');
INSERT INTO `wp_postmeta` VALUES (454,47,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (455,47,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (456,47,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (457,47,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (458,47,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (459,47,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (460,47,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (461,47,'_length','10');
INSERT INTO `wp_postmeta` VALUES (462,47,'_width','10');
INSERT INTO `wp_postmeta` VALUES (463,47,'_height','10');
INSERT INTO `wp_postmeta` VALUES (464,47,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (465,47,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (466,47,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (467,47,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (468,47,'_thumbnail_id','48');
INSERT INTO `wp_postmeta` VALUES (469,47,'_stock','10');
INSERT INTO `wp_postmeta` VALUES (470,47,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (471,47,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (472,47,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (473,47,'_product_version','5.9.0');
INSERT INTO `wp_postmeta` VALUES (474,47,'_price','139');
INSERT INTO `wp_postmeta` VALUES (475,47,'_edit_lock','1638832388:1');
INSERT INTO `wp_postmeta` VALUES (476,48,'_wp_attached_file','2021/12/masculino-5.jpg');
INSERT INTO `wp_postmeta` VALUES (477,48,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:23:\"2021/12/masculino-5.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"masculino-5-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"masculino-5-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"masculino-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"masculino-5-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"slide\";a:4:{s:4:\"file\";s:24:\"masculino-5-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"masculino-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"masculino-5-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"masculino-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"masculino-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"masculino-5-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"masculino-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (478,47,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (480,50,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (481,50,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (482,50,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (483,50,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (484,50,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (485,50,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (486,50,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (487,50,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (488,51,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (489,51,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (490,51,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (491,51,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (492,51,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (493,51,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (494,51,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (495,51,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (496,52,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (497,52,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (498,52,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (499,52,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (500,52,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (501,52,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (502,52,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (503,52,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (504,53,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (505,53,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (506,53,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (507,53,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (508,53,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (509,53,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (510,53,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (511,53,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (512,54,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (513,54,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (514,54,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (515,54,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (516,54,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (517,54,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (518,54,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (519,54,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (522,13,'categoria_esquerda','feminino');
INSERT INTO `wp_postmeta` VALUES (523,13,'categoria_direita','masculino');
INSERT INTO `wp_postmeta` VALUES (525,56,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (526,56,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (527,56,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (528,56,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (529,56,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (530,56,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (531,56,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (532,56,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (533,57,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (534,57,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (535,57,'_menu_item_object_id','57');
INSERT INTO `wp_postmeta` VALUES (536,57,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (537,57,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (538,57,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (539,57,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (540,57,'_menu_item_url','/');
INSERT INTO `wp_postmeta` VALUES (541,58,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (542,58,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (543,58,'_menu_item_object_id','6');
INSERT INTO `wp_postmeta` VALUES (544,58,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (545,58,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (546,58,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (547,58,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (548,58,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (549,59,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (550,59,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (551,59,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (552,59,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (553,59,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (554,59,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (555,59,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (556,59,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (557,60,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (558,60,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (559,60,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (560,60,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (561,60,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (562,60,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (563,60,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (564,60,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (565,61,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (566,61,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (567,61,'_menu_item_object_id','61');
INSERT INTO `wp_postmeta` VALUES (568,61,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (569,61,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (570,61,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (571,61,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (572,61,'_menu_item_url','/');
INSERT INTO `wp_postmeta` VALUES (577,64,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (578,64,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (579,64,'_menu_item_object_id','64');
INSERT INTO `wp_postmeta` VALUES (580,64,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (581,64,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (582,64,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (583,64,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (584,64,'_menu_item_url','/');
INSERT INTO `wp_postmeta` VALUES (585,65,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (586,65,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (587,65,'_menu_item_object_id','65');
INSERT INTO `wp_postmeta` VALUES (588,65,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (589,65,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (590,65,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (591,65,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (592,65,'_menu_item_url','/');
INSERT INTO `wp_postmeta` VALUES (593,66,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (594,66,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (595,66,'_menu_item_object_id','66');
INSERT INTO `wp_postmeta` VALUES (596,66,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (597,66,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (598,66,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (599,66,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (600,66,'_menu_item_url','/');
INSERT INTO `wp_postmeta` VALUES (604,68,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (605,68,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (606,68,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (607,68,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (608,68,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (609,68,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (610,68,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (611,68,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (612,69,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (613,69,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (614,69,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (615,69,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (616,69,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (617,69,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (618,69,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (619,69,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (620,70,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (621,70,'_menu_item_menu_item_parent','69');
INSERT INTO `wp_postmeta` VALUES (622,70,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (623,70,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (624,70,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (625,70,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (626,70,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (627,70,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (628,71,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (629,71,'_menu_item_menu_item_parent','68');
INSERT INTO `wp_postmeta` VALUES (630,71,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (631,71,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (632,71,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (633,71,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (634,71,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (635,71,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (636,72,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (637,72,'_menu_item_menu_item_parent','69');
INSERT INTO `wp_postmeta` VALUES (638,72,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (639,72,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (640,72,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (641,72,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (642,72,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (643,72,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (644,73,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (645,73,'_menu_item_menu_item_parent','68');
INSERT INTO `wp_postmeta` VALUES (646,73,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (647,73,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (648,73,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (649,73,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (650,73,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (651,73,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (654,41,'_product_image_gallery','46,48,40,44,42');
INSERT INTO `wp_postmeta` VALUES (655,45,'_product_image_gallery','48,46,44');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-11-27 13:27:17','2021-11-27 13:27:17','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-11-27 13:27:17','2021-11-27 13:27:17','',0,'http://localhost:10003/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2021-11-27 13:27:17','2021-11-27 13:27:17','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10003/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2021-11-27 13:27:17','2021-11-27 13:27:17','',0,'http://localhost:10003/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-11-27 13:27:17','2021-11-27 13:27:17','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10003.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2021-11-27 13:27:17','2021-11-27 13:27:17','',0,'http://localhost:10003/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2021-11-27 11:59:55','2021-11-27 13:59:55','','woocommerce-placeholder','','inherit','open','closed','','woocommerce-placeholder','','','2021-11-27 11:59:55','2021-11-27 13:59:55','',0,'http://localhost:10003/wp-content/uploads/2021/11/woocommerce-placeholder.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (6,1,'2021-11-27 11:59:56','2021-11-27 13:59:56','','Loja','','publish','closed','closed','','loja','','','2021-11-27 11:59:56','2021-11-27 13:59:56','',0,'http://localhost:10003/loja/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2021-11-27 11:59:56','2021-11-27 13:59:56','<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->','Carrinho','','publish','closed','closed','','carrinho','','','2021-11-27 11:59:56','2021-11-27 13:59:56','',0,'http://localhost:10003/carrinho/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2021-11-27 11:59:56','2021-11-27 13:59:56','<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->','Finalizar compra','','publish','closed','closed','','finalizar-compra','','','2021-11-27 11:59:56','2021-11-27 13:59:56','',0,'http://localhost:10003/finalizar-compra/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-11-27 11:59:56','2021-11-27 13:59:56','<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->','Minha conta','','publish','closed','closed','','minha-conta','','','2021-11-27 11:59:56','2021-11-27 13:59:56','',0,'http://localhost:10003/minha-conta/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-11-27 11:59:56','0000-00-00 00:00:00','<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h3>Overview</h3>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Gift cards</li>\n<li>Downloadable software products</li>\n<li>Some health and personal care items</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Book with obvious signs of use</li>\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<li>Any item that is returned more than 30 days after delivery</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<h2>Refunds</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Late or missing refunds</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Sale items</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Exchanges</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Gifts</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Shipping returns</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Need help?</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->','Refund and Returns Policy','','draft','closed','closed','','refund_returns','','','2021-11-27 11:59:56','0000-00-00 00:00:00','',0,'http://localhost:10003/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-11-27 12:10:06','2021-11-27 14:10:06','','hoodie-with-logo-2.jpg','','inherit','open','closed','','hoodie-with-logo-2-jpg','','','2021-11-27 12:10:06','2021-11-27 14:10:06','',0,'http://localhost:10003/wp-content/uploads/2021/11/hoodie-with-logo-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (13,1,'2021-11-27 12:55:04','2021-11-27 14:55:04','','Home','','publish','closed','closed','','13-2','','','2021-12-11 11:54:13','2021-12-11 13:54:13','',0,'http://localhost:10003/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-11-27 12:55:04','2021-11-27 14:55:04','','','','inherit','closed','closed','','13-revision-v1','','','2021-11-27 12:55:04','2021-11-27 14:55:04','',13,'http://localhost:10003/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2021-11-27 12:55:44','2021-11-27 14:55:44','','Home','','inherit','closed','closed','','13-revision-v1','','','2021-11-27 12:55:44','2021-11-27 14:55:44','',13,'http://localhost:10003/?p=15',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2021-12-06 20:49:02','2021-12-06 22:49:02','','feminino','','inherit','open','closed','','feminino','','','2021-12-06 20:49:02','2021-12-06 22:49:02','',0,'http://localhost:10003/wp-content/uploads/2021/12/feminino.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-12-06 20:49:44','2021-12-06 22:49:44','','masculino','','inherit','open','closed','','masculino','','','2021-12-06 20:49:44','2021-12-06 22:49:44','',0,'http://localhost:10003/wp-content/uploads/2021/12/masculino.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-12-06 20:55:20','2021-12-06 22:55:20','Essa é uma camisa marrom.','Camisa Marrom','','publish','closed','closed','','camisa-marrom','','','2021-12-06 20:55:21','2021-12-06 22:55:21','',0,'http://localhost:10003/?post_type=product&#038;p=22',0,'product','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-12-06 20:55:06','2021-12-06 22:55:06','','feminino-1','','inherit','open','closed','','feminino-1-2','','','2021-12-06 20:55:06','2021-12-06 22:55:06','',22,'http://localhost:10003/wp-content/uploads/2021/12/feminino-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-12-06 20:55:49','2021-12-06 22:55:49','Essa é uma saia verde.','Saia Verde','','publish','closed','closed','','saia-verde','','','2021-12-06 20:56:57','2021-12-06 22:56:57','',0,'http://localhost:10003/?post_type=product&#038;p=24',0,'product','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-12-06 20:56:47','2021-12-06 22:56:47','','feminino-2','','inherit','open','closed','','feminino-2','','','2021-12-06 20:56:47','2021-12-06 22:56:47','',24,'http://localhost:10003/wp-content/uploads/2021/12/feminino-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (26,1,'2021-12-06 20:57:40','2021-12-06 22:57:40','Essa é uma camisa preta.','Camisa Preta','','publish','closed','closed','','camisa-preta','','','2021-12-06 21:03:23','2021-12-06 23:03:23','',0,'http://localhost:10003/?post_type=product&#038;p=26',0,'product','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2021-12-06 20:59:11','2021-12-06 22:59:11','','Camisa Preta - Pequeno','Tamanho: Pequeno','publish','closed','closed','','camisa-preta-pequeno','','','2021-12-06 21:02:36','2021-12-06 23:02:36','',26,'http://localhost:10003/?post_type=product_variation&p=27',1,'product_variation','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2021-12-06 20:59:11','2021-12-06 22:59:11','','Camisa Preta - Médio','Tamanho: Médio','publish','closed','closed','','camisa-preta-medio','','','2021-12-06 21:02:36','2021-12-06 23:02:36','',26,'http://localhost:10003/?post_type=product_variation&p=28',2,'product_variation','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2021-12-06 20:59:11','2021-12-06 22:59:11','','Camisa Preta - Grande','Tamanho: Grande','publish','closed','closed','','camisa-preta-grande','','','2021-12-06 21:02:36','2021-12-06 23:02:36','',26,'http://localhost:10003/?post_type=product_variation&p=29',3,'product_variation','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2021-12-06 21:03:19','2021-12-06 23:03:19','','feminino-3','','inherit','open','closed','','feminino-3','','','2021-12-06 21:03:19','2021-12-06 23:03:19','',26,'http://localhost:10003/wp-content/uploads/2021/12/feminino-3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (31,1,'2021-12-06 21:05:54','2021-12-06 23:05:54','Essa é uma saia rosa.','Saia Rosa','','publish','closed','closed','','saia-rosa','','','2021-12-06 21:07:25','2021-12-06 23:07:25','',0,'http://localhost:10003/?post_type=product&#038;p=31',0,'product','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2021-12-06 21:05:54','2021-12-06 23:05:54','','Saia Rosa - Pequeno','Tamanho: Pequeno','publish','closed','closed','','camisa-preta-pequeno-2','','','2021-12-06 21:07:24','2021-12-06 23:07:24','',31,'http://localhost:10003/?post_type=product_variation&p=32',1,'product_variation','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-12-06 21:05:55','2021-12-06 23:05:55','','Saia Rosa - Médio','Tamanho: Médio','publish','closed','closed','','camisa-preta-medio-2','','','2021-12-06 21:07:24','2021-12-06 23:07:24','',31,'http://localhost:10003/?post_type=product_variation&p=33',2,'product_variation','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-12-06 21:05:55','2021-12-06 23:05:55','','Saia Rosa - Grande','Tamanho: Grande','publish','closed','closed','','camisa-preta-grande-2','','','2021-12-06 21:07:24','2021-12-06 23:07:24','',31,'http://localhost:10003/?post_type=product_variation&p=34',3,'product_variation','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-12-06 21:07:20','2021-12-06 23:07:20','','feminino-4','','inherit','open','closed','','feminino-4','','','2021-12-06 21:07:20','2021-12-06 23:07:20','',31,'http://localhost:10003/wp-content/uploads/2021/12/feminino-4.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (36,1,'2021-12-06 21:07:45','2021-12-06 23:07:45','Essa é uma camisa amarela.','Camisa Amarela','','publish','closed','closed','','camisa-amarela','','','2021-12-06 21:08:30','2021-12-06 23:08:30','',0,'http://localhost:10003/?post_type=product&#038;p=36',0,'product','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2021-12-06 21:08:17','2021-12-06 23:08:17','','feminino-5','','inherit','open','closed','','feminino-5','','','2021-12-06 21:08:17','2021-12-06 23:08:17','',36,'http://localhost:10003/wp-content/uploads/2021/12/feminino-5.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-12-06 21:08:52','2021-12-06 23:08:52','Essa é uma camisa vermelha.','Camisa Vermelha','','publish','closed','closed','','camisa-vermelha','','','2021-12-06 21:09:30','2021-12-06 23:09:30','',0,'http://localhost:10003/?post_type=product&#038;p=39',0,'product','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2021-12-06 21:09:22','2021-12-06 23:09:22','','masculino-1','','inherit','open','closed','','masculino-1','','','2021-12-06 21:09:22','2021-12-06 23:09:22','',39,'http://localhost:10003/wp-content/uploads/2021/12/masculino-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-12-06 21:12:04','2021-12-06 23:12:04','Essa é uma bermuda azul.','Bermuda Azul','','publish','closed','closed','','bermuda-azul','','','2021-12-17 20:03:42','2021-12-17 22:03:42','',0,'http://localhost:10003/?post_type=product&#038;p=41',0,'product','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-12-06 21:12:51','2021-12-06 23:12:51','','masculino-2','','inherit','open','closed','','masculino-2','','','2021-12-06 21:12:51','2021-12-06 23:12:51','',41,'http://localhost:10003/wp-content/uploads/2021/12/masculino-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (43,1,'2021-12-06 21:13:17','2021-12-06 23:13:17','Essa é uma camisa jeans.','Camisa Jeans','','publish','closed','closed','','camisa-jeans','','','2021-12-06 21:15:49','2021-12-06 23:15:49','',0,'http://localhost:10003/?post_type=product&#038;p=43',0,'product','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-12-06 21:13:50','2021-12-06 23:13:50','','masculino-3','','inherit','open','closed','','masculino-3','','','2021-12-06 21:13:50','2021-12-06 23:13:50','',43,'http://localhost:10003/wp-content/uploads/2021/12/masculino-3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-12-06 21:13:58','2021-12-06 23:13:58','Essa é uma camisa preta.','Camisa Preta','','publish','closed','closed','','camisa-preta-2','','','2022-01-02 12:22:23','2022-01-02 14:22:23','',0,'http://localhost:10003/?post_type=product&#038;p=45',0,'product','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-12-06 21:14:36','2021-12-06 23:14:36','','masculino-4','','inherit','open','closed','','masculino-4','','','2021-12-06 21:14:36','2021-12-06 23:14:36','',45,'http://localhost:10003/wp-content/uploads/2021/12/masculino-4.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-12-06 21:14:48','2021-12-06 23:14:48','Essa é uma bermuda preta.','Bermuda Preta','','publish','closed','closed','','bermuda-preta','','','2021-12-06 21:15:29','2021-12-06 23:15:29','',0,'http://localhost:10003/?post_type=product&#038;p=47',0,'product','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-12-06 21:15:17','2021-12-06 23:15:17','','masculino-5','','inherit','open','closed','','masculino-5','','','2021-12-06 21:15:17','2021-12-06 23:15:17','',47,'http://localhost:10003/wp-content/uploads/2021/12/masculino-5.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-12-07 20:05:20','2021-12-07 22:05:20',' ','','','publish','closed','closed','','50','','','2021-12-07 20:05:20','2021-12-07 22:05:20','',0,'http://localhost:10003/50/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-12-07 20:05:20','2021-12-07 22:05:20',' ','','','publish','closed','closed','','51','','','2021-12-07 20:05:20','2021-12-07 22:05:20','',0,'http://localhost:10003/51/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-12-07 20:05:20','2021-12-07 22:05:20',' ','','','publish','closed','closed','','52','','','2021-12-07 20:05:20','2021-12-07 22:05:20','',19,'http://localhost:10003/52/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2021-12-07 20:05:21','2021-12-07 22:05:21',' ','','','publish','closed','closed','','53','','','2021-12-07 20:05:21','2021-12-07 22:05:21','',20,'http://localhost:10003/53/',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2021-12-07 20:05:21','2021-12-07 22:05:21',' ','','','publish','closed','closed','','54','','','2021-12-07 20:05:21','2021-12-07 22:05:21','',19,'http://localhost:10003/54/',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2021-12-11 12:36:52','2021-12-11 14:36:52',' ','','','publish','closed','closed','','56','','','2021-12-11 12:36:52','2021-12-11 14:36:52','',0,'http://localhost:10003/56/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2021-12-11 12:36:52','2021-12-11 14:36:52','','Sobre','','publish','closed','closed','','sobre','','','2021-12-11 12:36:52','2021-12-11 14:36:52','',0,'http://localhost:10003/sobre/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-12-11 12:36:52','2021-12-11 14:36:52',' ','','','publish','closed','closed','','58','','','2021-12-11 12:36:52','2021-12-11 14:36:52','',0,'http://localhost:10003/58/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2021-12-11 12:36:52','2021-12-11 14:36:52',' ','','','publish','closed','closed','','59','','','2021-12-11 12:36:52','2021-12-11 14:36:52','',0,'http://localhost:10003/59/',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2021-12-11 12:36:52','2021-12-11 14:36:52',' ','','','publish','closed','closed','','60','','','2021-12-11 12:36:52','2021-12-11 14:36:52','',0,'http://localhost:10003/60/',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2021-12-11 12:36:52','2021-12-11 14:36:52','','Contato','','publish','closed','closed','','contato','','','2021-12-11 12:36:52','2021-12-11 14:36:52','',0,'http://localhost:10003/contato/',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2021-12-11 12:37:50','2021-12-11 14:37:50','','Facebook','','publish','closed','closed','','facebook','','','2021-12-11 12:37:50','2021-12-11 14:37:50','',0,'http://localhost:10003/facebook/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2021-12-11 12:37:50','2021-12-11 14:37:50','','Instagram','','publish','closed','closed','','instagram','','','2021-12-11 12:37:50','2021-12-11 14:37:50','',0,'http://localhost:10003/instagram/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2021-12-11 12:37:50','2021-12-11 14:37:50','','YouTube','','publish','closed','closed','','youtube','','','2021-12-11 12:37:50','2021-12-11 14:37:50','',0,'http://localhost:10003/youtube/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2021-12-13 20:17:28','2021-12-13 22:17:28',' ','','','publish','closed','closed','','68','','','2021-12-13 20:17:28','2021-12-13 22:17:28','',0,'http://localhost:10003/68/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2021-12-13 20:17:28','2021-12-13 22:17:28',' ','','','publish','closed','closed','','69','','','2021-12-13 20:17:28','2021-12-13 22:17:28','',0,'http://localhost:10003/69/',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2021-12-13 20:17:28','2021-12-13 22:17:28',' ','','','publish','closed','closed','','70','','','2021-12-13 20:17:28','2021-12-13 22:17:28','',19,'http://localhost:10003/70/',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2021-12-13 20:17:28','2021-12-13 22:17:28',' ','','','publish','closed','closed','','71','','','2021-12-13 20:17:28','2021-12-13 22:17:28','',20,'http://localhost:10003/71/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2021-12-13 20:17:28','2021-12-13 22:17:28',' ','','','publish','closed','closed','','72','','','2021-12-13 20:17:28','2021-12-13 22:17:28','',19,'http://localhost:10003/72/',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2021-12-13 20:17:28','2021-12-13 22:17:28',' ','','','publish','closed','closed','','73','','','2021-12-13 20:17:28','2021-12-13 22:17:28','',20,'http://localhost:10003/73/',2,'nav_menu_item','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (22,2,0);
INSERT INTO `wp_term_relationships` VALUES (22,19,0);
INSERT INTO `wp_term_relationships` VALUES (22,21,0);
INSERT INTO `wp_term_relationships` VALUES (24,2,0);
INSERT INTO `wp_term_relationships` VALUES (24,19,0);
INSERT INTO `wp_term_relationships` VALUES (24,22,0);
INSERT INTO `wp_term_relationships` VALUES (24,25,0);
INSERT INTO `wp_term_relationships` VALUES (26,4,0);
INSERT INTO `wp_term_relationships` VALUES (26,19,0);
INSERT INTO `wp_term_relationships` VALUES (26,21,0);
INSERT INTO `wp_term_relationships` VALUES (26,25,0);
INSERT INTO `wp_term_relationships` VALUES (26,26,0);
INSERT INTO `wp_term_relationships` VALUES (26,27,0);
INSERT INTO `wp_term_relationships` VALUES (26,28,0);
INSERT INTO `wp_term_relationships` VALUES (31,4,0);
INSERT INTO `wp_term_relationships` VALUES (31,19,0);
INSERT INTO `wp_term_relationships` VALUES (31,21,0);
INSERT INTO `wp_term_relationships` VALUES (31,25,0);
INSERT INTO `wp_term_relationships` VALUES (31,26,0);
INSERT INTO `wp_term_relationships` VALUES (31,27,0);
INSERT INTO `wp_term_relationships` VALUES (31,28,0);
INSERT INTO `wp_term_relationships` VALUES (36,2,0);
INSERT INTO `wp_term_relationships` VALUES (36,19,0);
INSERT INTO `wp_term_relationships` VALUES (36,22,0);
INSERT INTO `wp_term_relationships` VALUES (39,2,0);
INSERT INTO `wp_term_relationships` VALUES (39,20,0);
INSERT INTO `wp_term_relationships` VALUES (39,23,0);
INSERT INTO `wp_term_relationships` VALUES (41,2,0);
INSERT INTO `wp_term_relationships` VALUES (41,20,0);
INSERT INTO `wp_term_relationships` VALUES (41,24,0);
INSERT INTO `wp_term_relationships` VALUES (41,25,0);
INSERT INTO `wp_term_relationships` VALUES (43,2,0);
INSERT INTO `wp_term_relationships` VALUES (43,20,0);
INSERT INTO `wp_term_relationships` VALUES (43,23,0);
INSERT INTO `wp_term_relationships` VALUES (43,25,0);
INSERT INTO `wp_term_relationships` VALUES (45,2,0);
INSERT INTO `wp_term_relationships` VALUES (45,20,0);
INSERT INTO `wp_term_relationships` VALUES (45,23,0);
INSERT INTO `wp_term_relationships` VALUES (45,25,0);
INSERT INTO `wp_term_relationships` VALUES (47,2,0);
INSERT INTO `wp_term_relationships` VALUES (47,20,0);
INSERT INTO `wp_term_relationships` VALUES (47,24,0);
INSERT INTO `wp_term_relationships` VALUES (47,25,0);
INSERT INTO `wp_term_relationships` VALUES (50,29,0);
INSERT INTO `wp_term_relationships` VALUES (51,29,0);
INSERT INTO `wp_term_relationships` VALUES (52,29,0);
INSERT INTO `wp_term_relationships` VALUES (53,29,0);
INSERT INTO `wp_term_relationships` VALUES (54,29,0);
INSERT INTO `wp_term_relationships` VALUES (56,30,0);
INSERT INTO `wp_term_relationships` VALUES (57,30,0);
INSERT INTO `wp_term_relationships` VALUES (58,30,0);
INSERT INTO `wp_term_relationships` VALUES (59,30,0);
INSERT INTO `wp_term_relationships` VALUES (60,30,0);
INSERT INTO `wp_term_relationships` VALUES (61,30,0);
INSERT INTO `wp_term_relationships` VALUES (64,31,0);
INSERT INTO `wp_term_relationships` VALUES (65,31,0);
INSERT INTO `wp_term_relationships` VALUES (66,31,0);
INSERT INTO `wp_term_relationships` VALUES (68,32,0);
INSERT INTO `wp_term_relationships` VALUES (69,32,0);
INSERT INTO `wp_term_relationships` VALUES (70,32,0);
INSERT INTO `wp_term_relationships` VALUES (71,32,0);
INSERT INTO `wp_term_relationships` VALUES (72,32,0);
INSERT INTO `wp_term_relationships` VALUES (73,32,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'product_type','',0,8);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'product_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'product_type','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'product_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'product_cat','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (19,19,'product_cat','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (20,20,'product_cat','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (21,21,'product_cat','',19,3);
INSERT INTO `wp_term_taxonomy` VALUES (22,22,'product_cat','',19,2);
INSERT INTO `wp_term_taxonomy` VALUES (23,23,'product_cat','',20,3);
INSERT INTO `wp_term_taxonomy` VALUES (24,24,'product_cat','',20,2);
INSERT INTO `wp_term_taxonomy` VALUES (25,25,'product_tag','',0,7);
INSERT INTO `wp_term_taxonomy` VALUES (26,26,'pa_tamanho','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (27,27,'pa_tamanho','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (28,28,'pa_tamanho','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (29,29,'nav_menu','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (30,30,'nav_menu','',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (31,31,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (32,32,'nav_menu','',0,6);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
INSERT INTO `wp_termmeta` VALUES (3,15,'product_count_product_cat','0');
INSERT INTO `wp_termmeta` VALUES (4,19,'order','0');
INSERT INTO `wp_termmeta` VALUES (5,19,'display_type','');
INSERT INTO `wp_termmeta` VALUES (6,19,'thumbnail_id','20');
INSERT INTO `wp_termmeta` VALUES (7,20,'order','0');
INSERT INTO `wp_termmeta` VALUES (8,20,'display_type','');
INSERT INTO `wp_termmeta` VALUES (9,20,'thumbnail_id','21');
INSERT INTO `wp_termmeta` VALUES (10,21,'order','0');
INSERT INTO `wp_termmeta` VALUES (11,21,'display_type','');
INSERT INTO `wp_termmeta` VALUES (12,21,'thumbnail_id','0');
INSERT INTO `wp_termmeta` VALUES (13,22,'order','0');
INSERT INTO `wp_termmeta` VALUES (14,22,'display_type','');
INSERT INTO `wp_termmeta` VALUES (15,22,'thumbnail_id','0');
INSERT INTO `wp_termmeta` VALUES (16,23,'order','0');
INSERT INTO `wp_termmeta` VALUES (17,23,'display_type','');
INSERT INTO `wp_termmeta` VALUES (18,23,'thumbnail_id','0');
INSERT INTO `wp_termmeta` VALUES (19,24,'order','0');
INSERT INTO `wp_termmeta` VALUES (20,24,'display_type','');
INSERT INTO `wp_termmeta` VALUES (21,24,'thumbnail_id','0');
INSERT INTO `wp_termmeta` VALUES (22,26,'order_pa_tamanho','0');
INSERT INTO `wp_termmeta` VALUES (23,27,'order_pa_tamanho','0');
INSERT INTO `wp_termmeta` VALUES (24,28,'order_pa_tamanho','0');
INSERT INTO `wp_termmeta` VALUES (25,26,'order','1');
INSERT INTO `wp_termmeta` VALUES (26,28,'order','3');
INSERT INTO `wp_termmeta` VALUES (27,27,'order','2');
INSERT INTO `wp_termmeta` VALUES (28,19,'product_count_product_cat','5');
INSERT INTO `wp_termmeta` VALUES (29,21,'product_count_product_cat','3');
INSERT INTO `wp_termmeta` VALUES (30,22,'product_count_product_cat','2');
INSERT INTO `wp_termmeta` VALUES (31,25,'product_count_product_tag','7');
INSERT INTO `wp_termmeta` VALUES (32,20,'product_count_product_cat','5');
INSERT INTO `wp_termmeta` VALUES (33,23,'product_count_product_cat','3');
INSERT INTO `wp_termmeta` VALUES (34,24,'product_count_product_cat','2');
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'simple','simple',0);
INSERT INTO `wp_terms` VALUES (3,'grouped','grouped',0);
INSERT INTO `wp_terms` VALUES (4,'variable','variable',0);
INSERT INTO `wp_terms` VALUES (5,'external','external',0);
INSERT INTO `wp_terms` VALUES (6,'exclude-from-search','exclude-from-search',0);
INSERT INTO `wp_terms` VALUES (7,'exclude-from-catalog','exclude-from-catalog',0);
INSERT INTO `wp_terms` VALUES (8,'featured','featured',0);
INSERT INTO `wp_terms` VALUES (9,'outofstock','outofstock',0);
INSERT INTO `wp_terms` VALUES (10,'rated-1','rated-1',0);
INSERT INTO `wp_terms` VALUES (11,'rated-2','rated-2',0);
INSERT INTO `wp_terms` VALUES (12,'rated-3','rated-3',0);
INSERT INTO `wp_terms` VALUES (13,'rated-4','rated-4',0);
INSERT INTO `wp_terms` VALUES (14,'rated-5','rated-5',0);
INSERT INTO `wp_terms` VALUES (15,'Sem categoria','sem-categoria',0);
INSERT INTO `wp_terms` VALUES (19,'Feminino','feminino',0);
INSERT INTO `wp_terms` VALUES (20,'Masculino','masculino',0);
INSERT INTO `wp_terms` VALUES (21,'Camisas','camisas-f',0);
INSERT INTO `wp_terms` VALUES (22,'Saias','saias',0);
INSERT INTO `wp_terms` VALUES (23,'Camisas','camisas-m',0);
INSERT INTO `wp_terms` VALUES (24,'Bermudas','bermudas',0);
INSERT INTO `wp_terms` VALUES (25,'Slide','slide',0);
INSERT INTO `wp_terms` VALUES (26,'Pequeno','pequeno',0);
INSERT INTO `wp_terms` VALUES (27,'Médio','medio',0);
INSERT INTO `wp_terms` VALUES (28,'Grande','grande',0);
INSERT INTO `wp_terms` VALUES (29,'categorias','categorias',0);
INSERT INTO `wp_terms` VALUES (30,'footer','footer',0);
INSERT INTO `wp_terms` VALUES (31,'redes','redes',0);
INSERT INTO `wp_terms` VALUES (32,'categorias-interna','categorias-interna',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','handel');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','75');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'session_tokens','a:3:{s:64:\"01770690862c0471fef6c6f71be6cee003a593f85823e5de8d6e132b203a0c1e\";a:4:{s:10:\"expiration\";i:1641305600;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36\";s:5:\"login\";i:1641132800;}s:64:\"72a14dd63876f8f82d9bca19c3b0d11871a0e543143823375652329c0a309172\";a:4:{s:10:\"expiration\";i:1641419014;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36\";s:5:\"login\";i:1641246214;}s:64:\"f1389108096b1bff5ddb2b28dfb3a5597d453df583f4dac086b6b1d8131fe510\";a:4:{s:10:\"expiration\";i:1641419685;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36\";s:5:\"login\";i:1641246885;}}');
INSERT INTO `wp_usermeta` VALUES (20,1,'_woocommerce_tracks_anon_id','woo:ZBj9HGMBifFbga2G1wrmo4Rm');
INSERT INTO `wp_usermeta` VALUES (21,1,'last_update','1641133311');
INSERT INTO `wp_usermeta` VALUES (22,1,'woocommerce_admin_activity_panel_inbox_last_read','1641133311220');
INSERT INTO `wp_usermeta` VALUES (23,1,'wc_last_active','1641168000');
INSERT INTO `wp_usermeta` VALUES (24,1,'woocommerce_admin_task_list_tracked_started_tasks','{\"products\":1}');
INSERT INTO `wp_usermeta` VALUES (25,1,'dismissed_no_secure_connection_notice','1');
INSERT INTO `wp_usermeta` VALUES (26,1,'_woocommerce_persistent_cart_1','a:1:{s:4:\"cart\";a:2:{s:32:\"67c6a1e7ce56d3d6fa748ab6d9af3fd7\";a:11:{s:3:\"key\";s:32:\"67c6a1e7ce56d3d6fa748ab6d9af3fd7\";s:10:\"product_id\";i:47;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:3;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:417;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:417;s:8:\"line_tax\";i:0;}s:32:\"1ff1de774005f8da13f42943881c655f\";a:11:{s:3:\"key\";s:32:\"1ff1de774005f8da13f42943881c655f\";s:10:\"product_id\";i:24;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:239;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:239;s:8:\"line_tax\";i:0;}}}');
INSERT INTO `wp_usermeta` VALUES (27,1,'_order_count','0');
INSERT INTO `wp_usermeta` VALUES (28,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (29,1,'wp_user-settings-time','1638830198');
INSERT INTO `wp_usermeta` VALUES (31,1,'enable_custom_fields','1');
INSERT INTO `wp_usermeta` VALUES (32,1,'closedpostboxes_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (33,1,'metaboxhidden_page','a:0:{}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'handel','$P$B6FhkP14tXAhTbqMywn.FURuIhxdDv.','handel','dev-email@flywheel.local','http://localhost:10003','2021-11-27 13:27:17','',0,'handel');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_admin_note_actions`
--

DROP TABLE IF EXISTS `wp_wc_admin_note_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonce_action` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `nonce_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `note_id` (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=525 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

LOCK TABLES `wp_wc_admin_note_actions` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` DISABLE KEYS */;
INSERT INTO `wp_wc_admin_note_actions` VALUES (33,31,'notify-refund-returns-page','Editar página','http://localhost:10003/wp-admin/post.php?post=10&action=edit','actioned',0,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (34,32,'connect','Conectar','?page=wc-addons&section=helper','unactioned',0,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (163,33,'learn-more','Aprenda mais','https://docs.woocommerce.com/document/variable-product/?utm_source=inbox&utm_medium=product','actioned',0,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (164,34,'tracking-opt-in','Ativar rastreamento de uso','','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (165,35,'view-payment-gateways','Aprenda mais','https://woocommerce.com/product-category/woocommerce-extensions/payment-gateways/?utm_medium=product','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (166,36,'open-marketing-hub','Abrir hub de marketing','http://localhost:10003/wp-admin/admin.php?page=wc-admin&path=/marketing','actioned',0,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (167,37,'affirm-insight-first-sale','Sim','','actioned',0,'Obrigado pelo seu comentário',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (168,37,'deny-insight-first-sale','Não','','actioned',0,'Obrigado pelo seu comentário',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (169,38,'day-after-first-product','Aprenda mais','https://docs.woocommerce.com/document/woocommerce-customizer/?utm_source=inbox&utm_medium=product','actioned',0,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (202,39,'learn-more','Aprenda mais','https://docs.woocommerce.com/document/woocommerce-analytics/?utm_medium=product#variations-report','actioned',0,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (459,40,'learn-more','Aprenda mais','https://woocommerce.com/posts/pre-launch-checklist-the-essentials/?utm_source=inbox&utm_medium=product','actioned',0,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (492,1,'stripe_applepay_holiday2021','Accept Apple Pay','https://woocommerce.com/apple-pay/','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (493,2,'square_applepay_holiday2021','Accept Apple Pay','https://woocommerce.com/apple-pay/','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (494,3,'wcpay_applepay_holiday2021','Accept Apple Pay','https://woocommerce.com/apple-pay/','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (495,4,'browse_extensions','Browse extensions','http://localhost:10003/wp-admin/admin.php?page=wc-admin&page=wc-addons','unactioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (496,5,'wayflyer_bnpl_q4_2021','Level up with funding','https://woocommerce.com/products/wayflyer/','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (497,6,'wc_shipping_mobile_app_usps_q4_2021','Get WooCommerce Shipping','https://woocommerce.com/woocommerce-shipping/','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (498,7,'wc_shipping_mobile_app_q4_2021','Get the WooCommerce Mobile App','https://woocommerce.com/mobile/','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (499,8,'set-up-concierge','Schedule free session','https://wordpress.com/me/concierge','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (500,9,'learn-more','Learn more','https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox','unactioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (501,10,'learn-more-ecomm-unique-shopping-experience','Learn more','https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (502,11,'watch-the-webinar','Watch the webinar','https://youtu.be/V_2XtCOyZ7o','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (503,12,'learn-more','Learn more','https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (504,13,'optimizing-the-checkout-flow','Learn more','https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (505,14,'learn-more','Learn more','https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox','unactioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (506,15,'qualitative-feedback-from-new-users','Share feedback','https://automattic.survey.fm/wc-pay-new','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (507,16,'share-feedback','Share feedback','http://automattic.survey.fm/paypal-feedback','unactioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (508,17,'get-started','Get started','https://woocommerce.com/products/google-listings-and-ads','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (509,18,'update-wc-subscriptions-3-0-15','View latest version','http://localhost:10003/wp-admin/admin.php?page=wc-admin&page=wc-addons&section=helper','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (510,19,'update-wc-core-5-4-0','How to update WooCommerce','https://docs.woocommerce.com/document/how-to-update-woocommerce/','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (511,22,'get-woo-commerce-payments','Get WooCommerce Payments','admin.php?page=wc-admin&action=setup-woocommerce-payments','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (512,23,'get-woocommerce-payments','Get WooCommerce Payments','admin.php?page=wc-admin&action=setup-woocommerce-payments','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (513,24,'ppxo-pps-install-paypal-payments-1','View upgrade guide','https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (514,25,'ppxo-pps-install-paypal-payments-2','View upgrade guide','https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (515,26,'learn-more','Learn more','https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=vulnerability_comms','unactioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (516,26,'dismiss','Dismiss','','actioned',0,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (517,27,'learn-more','Learn more','https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=vulnerability_comms','unactioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (518,27,'dismiss','Dismiss','','actioned',0,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (519,28,'learn-more','Learn more','https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=vulnerability_comms','unactioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (520,28,'dismiss','Dismiss','','actioned',0,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (521,29,'learn-more','Learn more','https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=vulnerability_comms','unactioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (522,29,'dismiss','Dismiss','','actioned',0,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (523,30,'share-feedback','Share feedback','https://automattic.survey.fm/store-management','unactioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (524,41,'share-navigation-survey-feedback','Share feedback','https://automattic.survey.fm/feedback-on-woocommerce-navigation','actioned',1,'',NULL,NULL);
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_admin_notes`
--

DROP TABLE IF EXISTS `wp_wc_admin_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'info',
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_admin_notes`
--

LOCK TABLES `wp_wc_admin_notes` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_notes` DISABLE KEYS */;
INSERT INTO `wp_wc_admin_notes` VALUES (1,'stripe_applepay_holiday2021','marketing','en_US','Boost sales this holiday season with Apple Pay!','Increase your conversion rate by letting your customers know that you accept Apple Pay. It’s seamless to <a href=\"https://docs.woocommerce.com/document/stripe/?_ga=2.90941597.642705274.1635776464-1391993999.1621950839#apple-pay\">enable Apple Pay with Stripe</a> and easy to communicate it with this <a href=\"https://developer.apple.com/apple-pay/marketing/\">marketing guide</a>.','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (2,'square_applepay_holiday2021','marketing','en_US','Boost sales this holiday season with Apple Pay!','Increase your conversion rate by letting your customers know that you accept Apple Pay. It’s seamless to <a href=\"https://docs.woocommerce.com/document/woocommerce-square/?_ga=2.90941597.642705274.1635776464-1391993999.1621950839#section-14\">enable Apple Pay with Square</a> and easy to communicate it with this <a href=\"https://developer.apple.com/apple-pay/marketing/\">marketing guide</a>.','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (3,'wcpay_applepay_holiday2021','marketing','en_US','Boost sales this holiday season with Apple Pay!','Increase your conversion rate by letting your customers know that you accept Apple Pay. It’s seamless to <a href=\"https://docs.woocommerce.com/document/payments/apple-pay/\">enable Apple Pay with WooCommerce Payments</a> and easy to communicate it with this <a href=\"https://developer.apple.com/apple-pay/marketing/\">marketing guide</a>.','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (4,'new_in_app_marketplace_2021','info','en_US','Customize your store with extensions','Check out our NEW Extensions tab to see our favorite extensions for customizing your store, and discover the most popular extensions in the WooCommerce Marketplace.','{}','unactioned','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (5,'wayflyer_bnpl_q4_2021','marketing','en_US','Grow your business with funding through Wayflyer','Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store\'s performance, Wayflyer provides funding and analytical insights to invest in your business.','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (6,'wc_shipping_mobile_app_usps_q4_2021','marketing','en_US','Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App','Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (7,'wc_shipping_mobile_app_q4_2021','marketing','en_US','Print and manage your shipping labels with the WooCommerce Mobile App','Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (8,'ecomm-need-help-setting-up-your-store','info','en_US','Need help setting up your Store?','Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (9,'woocommerce-services','info','en_US','WooCommerce Shipping & Tax','WooCommerce Shipping &amp; Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (10,'ecomm-unique-shopping-experience','info','en_US','For a shopping experience as unique as your customers','Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (11,'wc-admin-getting-started-in-ecommerce','info','en_US','Getting Started in eCommerce - webinar','We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (12,'your-first-product','info','en_US','Your first product','That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.','{}','unactioned','woocommerce.com','2021-12-06 21:57:28',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (13,'wc-admin-optimizing-the-checkout-flow','info','en_US','Optimizing the checkout flow','It\'s crucial to get your store\'s checkout as smooth as possible to avoid losing sales. Let\'s take a look at how you can optimize the checkout experience for your shoppers.','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (14,'wc-admin-first-five-things-to-customize','info','en_US','The first 5 things to customize in your store','Deciding what to start with first is tricky. To help you properly prioritize, we\'ve put together this short list of the first few things you should customize in WooCommerce.','{}','unactioned','woocommerce.com','2021-12-06 21:57:28',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (15,'wc-payments-qualitative-feedback','info','en_US','WooCommerce Payments setup - let us know what you think','Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (16,'share-your-feedback-on-paypal','info','en_US','Share your feedback on PayPal','Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (17,'google_listings_and_ads_install','marketing','en_US','Drive traffic and sales with Google','Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (18,'wc-subscriptions-security-update-3-0-15','info','en_US','WooCommerce Subscriptions security update!','We recently released an important security update to WooCommerce Subscriptions. To ensure your site\'s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br /><br />Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br /><br />We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br /><br />If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (19,'woocommerce-core-update-5-4-0','info','en_US','Update to WooCommerce 5.4.1 now','WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (20,'wcpay-promo-2020-11','marketing','en_US','wcpay-promo-2020-11','wcpay-promo-2020-11','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (21,'wcpay-promo-2020-12','marketing','en_US','wcpay-promo-2020-12','wcpay-promo-2020-12','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (22,'wcpay-promo-2021-6-incentive-1','marketing','en_US','Simplify the payments process for you and your customers with WooCommerce Payments','With <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay601\">WooCommerce Payments</a>, you can securely accept all major cards, Apple Pay®, and recurring revenue in over 100 currencies.\n				Built into your store’s WooCommerce dashboard, track cash flow and manage all of your transactions in one place – with no setup costs or monthly fees.\n				<br /><br />\n				By clicking \"Get WooCommerce Payments,\" you agree to the <a href=\"https://wordpress.com/tos/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay601\">Terms of Service</a>\n				and acknowledge you have read the <a href=\"https://automattic.com/privacy/\">Privacy Policy</a>.\n				','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (23,'wcpay-promo-2021-6-incentive-2','marketing','en_US','Simplify the payments process for you and your customers with WooCommerce Payments','With <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay601\">WooCommerce Payments</a>, you can securely accept all major cards, Apple Pay®, and recurring revenue in over 100 currencies.\n				Built into your store’s WooCommerce dashboard, track cash flow and manage all of your transactions in one place – with no setup costs or monthly fees.\n				<br /><br />\n				By clicking \"Get WooCommerce Payments,\" you agree to the <a href=\"https://wordpress.com/tos/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay601\">Terms of Service</a>\n				and acknowledge you have read the <a href=\"https://automattic.com/privacy/\">Privacy Policy</a>.\n				','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (24,'ppxo-pps-upgrade-paypal-payments-1','info','en_US','Get the latest PayPal extension for WooCommerce','Heads up! There\'s a new PayPal on the block!<br /><br />Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br /><br />Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (25,'ppxo-pps-upgrade-paypal-payments-2','info','en_US','Upgrade your PayPal experience!','We\'ve developed a whole new <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension for WooCommerce</a> that combines the best features of our many PayPal extensions into just one extension.<br /><br />Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our latest PayPal today to continue to receive support and updates.','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (26,'woocommerce-core-sqli-july-2021-need-to-update','update','en_US','Action required: Critical vulnerabilities in WooCommerce','In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.','{}','pending','woocommerce.com','2021-11-27 14:00:03',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (27,'woocommerce-blocks-sqli-july-2021-need-to-update','update','en_US','Action required: Critical vulnerabilities in WooCommerce Blocks','In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.','{}','pending','woocommerce.com','2021-11-27 14:00:04',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (28,'woocommerce-core-sqli-july-2021-store-patched','update','en_US','Solved: Critical vulnerabilities patched in WooCommerce','In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.','{}','pending','woocommerce.com','2021-11-27 14:00:04',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (29,'woocommerce-blocks-sqli-july-2021-store-patched','update','en_US','Solved: Critical vulnerabilities patched in WooCommerce Blocks','In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.','{}','pending','woocommerce.com','2021-11-27 14:00:04',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (30,'habit-moment-survey','marketing','en_US','We\'re all ears! Share your experience so far with WooCommerce','We\'d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.','{}','pending','woocommerce.com','2021-11-27 14:00:04',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (31,'wc-refund-returns-page','info','en_US','Setup a Refund and Returns Policy page to boost your store\'s credibility.','We have created a sample draft Refund and Returns Policy page for you. Please have a look and update it to fit your store.','{}','unactioned','woocommerce-core','2021-11-27 14:00:04',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (32,'wc-admin-wc-helper-connection','info','en_US','Conectar ao WooCommerce.com','Conecte-se para receber notificações e atualizações importantes do produto.','{}','unactioned','woocommerce-admin','2021-11-27 14:00:04',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (33,'wc-admin-learn-more-about-variable-products','info','en_US','Aprenda mais sobre produtos variáveis','Variable products are a powerful product type that lets you offer a set of variations on a product, with control over prices, stock, image and more for each variation. They can be used for a product like a shirt, where you can offer a large, medium and small and in different colors.','{}','unactioned','woocommerce-admin','2021-11-27 14:17:08',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (34,'wc-admin-usage-tracking-opt-in','info','en_US','Ajude o WooCommerce a melhorar ativando o rastreamento de uso.','A coleta de dados de uso nos permite melhorar o WooCommerce. Sua loja será considerada à medida que avaliarmos novos recursos, julgarmos a qualidade de uma atualização ou determinarmos se uma melhoria faz sentido. Você sempre pode visitar as <a href=\"http://localhost:10003/wp-admin/admin.php?page=wc-settings&#038;tab=advanced&#038;section=woocommerce_com\" target=\"_blank\">Configurações</a> e optar por parar de compartilhar dados. <a href=\"https://woocommerce.com/usage-tracking?utm_medium=product\" target=\"_blank\">Saiba mais</a> sobre quais dados coletamos.','{}','unactioned','woocommerce-admin','2021-12-06 21:57:27',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (35,'wc-admin-onboarding-payments-reminder','info','en_US','Comece a aceitar pagamentos em sua loja!','Faça pagamentos com o provedor certo para você, escolha entre mais de 100 gateways de pagamento para o WooCommerce.','{}','unactioned','woocommerce-admin','2021-12-06 21:57:27',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (36,'wc-admin-marketing-intro','info','en_US','Conecte-se com seu público','Aumente sua base de clientes e aumente suas vendas com as ferramentas de marketing criadas para o WooCommerce.','{}','unactioned','woocommerce-admin','2021-12-06 21:57:27',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (37,'wc-admin-insight-first-sale','survey','en_US','Você sabia?','Uma loja com tecnologia WooCommerce precisa, em média, de 31 dias para obter a primeira venda. Você está no caminho certo! Você acha esse tipo de insight útil?','{}','unactioned','woocommerce-admin','2021-12-06 21:57:27',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (38,'wc-admin-customizing-product-catalog','info','en_US','Como personalizar seu catálogo do produtos','You want your product catalog and images to look great and align with your brand. This guide will give you all the tips you need to get your products looking great in your store.','{}','unactioned','woocommerce-admin','2021-12-06 21:57:27',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (39,'wc-admin-filter-by-product-variations-in-reports','info','en_US','Novo - filtro por variações de produtos em pedidos e relatórios de produtos','Um dos recursos mais aguardados chegou! Você terá ideias em cada variação de produto nos relatórios de pedidos e produtos.','{}','unactioned','woocommerce-admin','2021-12-07 21:28:55',NULL,0,'banner','http://localhost:10003/wp-content/plugins/woocommerce/packages/woocommerce-admin/images/admin_notes/filter-by-product-variations-note.svg',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (40,'wc-admin-launch-checklist','info','en_US','Pronto para lançar sua loja?','Para garantir que você nunca fique com aquela sensação de \"o que eu esqueci\", reunimos uma lista com tudo que é essencial para você verificar antes do lançamento.','{}','unactioned','woocommerce-admin','2022-01-03 21:24:49',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (41,'ecomm-wc-navigation-survey','info','en_US','We\'d like your feedback on the WooCommerce navigation','We\'re making improvements to the WooCommerce navigation and would love your feedback. Share your experience in this 2 minute survey.','{}','pending','woocommerce.com','2022-01-18 19:39:00',NULL,0,'plain','',0,'info');
/*!40000 ALTER TABLE `wp_wc_admin_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_category_lookup`
--

DROP TABLE IF EXISTS `wp_wc_category_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_category_lookup`
--

LOCK TABLES `wp_wc_category_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_category_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_category_lookup` VALUES (15,15);
INSERT INTO `wp_wc_category_lookup` VALUES (16,16);
INSERT INTO `wp_wc_category_lookup` VALUES (16,17);
INSERT INTO `wp_wc_category_lookup` VALUES (17,17);
INSERT INTO `wp_wc_category_lookup` VALUES (19,19);
INSERT INTO `wp_wc_category_lookup` VALUES (19,21);
INSERT INTO `wp_wc_category_lookup` VALUES (19,22);
INSERT INTO `wp_wc_category_lookup` VALUES (20,20);
INSERT INTO `wp_wc_category_lookup` VALUES (20,23);
INSERT INTO `wp_wc_category_lookup` VALUES (20,24);
INSERT INTO `wp_wc_category_lookup` VALUES (21,21);
INSERT INTO `wp_wc_category_lookup` VALUES (22,22);
INSERT INTO `wp_wc_category_lookup` VALUES (23,23);
INSERT INTO `wp_wc_category_lookup` VALUES (24,24);
/*!40000 ALTER TABLE `wp_wc_category_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_customer_lookup`
--

DROP TABLE IF EXISTS `wp_wc_customer_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_customer_lookup`
--

LOCK TABLES `wp_wc_customer_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_customer_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_customer_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_download_log`
--

DROP TABLE IF EXISTS `wp_wc_download_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`),
  CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_download_log`
--

LOCK TABLES `wp_wc_download_log` WRITE;
/*!40000 ALTER TABLE `wp_wc_download_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_download_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_coupon_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`coupon_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_coupon_lookup`
--

LOCK TABLES `wp_wc_order_coupon_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_product_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_product_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `variation_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_product_lookup`
--

LOCK TABLES `wp_wc_order_product_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_stats`
--

DROP TABLE IF EXISTS `wp_wc_order_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_stats`
--

LOCK TABLES `wp_wc_order_stats` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_tax_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`tax_rate_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_tax_lookup`
--

LOCK TABLES `wp_wc_order_tax_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

DROP TABLE IF EXISTS `wp_wc_product_meta_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

LOCK TABLES `wp_wc_product_meta_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_product_meta_lookup` VALUES (12,'camisa-preta-01',0,0,59.0000,59.0000,0,10,'instock',0,0.00,0,'taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (22,'',0,0,99.0000,99.0000,1,10,'instock',0,0.00,0,'taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (24,'',0,0,239.0000,239.0000,0,10,'instock',0,0.00,0,'taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (26,'',0,0,129.0000,129.0000,0,NULL,'instock',0,0.00,0,'taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (27,'camisa-preta-p',0,0,129.0000,129.0000,0,5,'instock',0,0.00,0,'taxable','parent');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (28,'',0,0,129.0000,129.0000,0,5,'instock',0,0.00,0,'taxable','parent');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (29,'',0,0,129.0000,129.0000,0,5,'instock',0,0.00,0,'taxable','parent');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (31,'',0,0,129.0000,129.0000,0,NULL,'instock',0,0.00,0,'taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (32,'saia-rosa-p',0,0,129.0000,129.0000,0,5,'instock',0,0.00,0,'taxable','parent');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (33,'saia-rosa-m',0,0,129.0000,129.0000,0,5,'instock',0,0.00,0,'taxable','parent');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (34,'saia-rosa-g',0,0,129.0000,129.0000,0,5,'instock',0,0.00,0,'taxable','parent');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (36,'',0,0,69.0000,69.0000,1,10,'instock',0,0.00,0,'taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (39,'',0,0,69.0000,69.0000,1,10,'instock',0,0.00,0,'taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (41,'',0,0,159.0000,159.0000,0,10,'instock',0,0.00,0,'taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (43,'',0,0,59.0000,59.0000,0,10,'instock',0,0.00,0,'taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (45,'',0,0,89.0000,89.0000,0,10,'instock',0,0.00,0,'taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (47,'',0,0,139.0000,139.0000,0,10,'instock',0,0.00,0,'taxable','');
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_reserved_stock`
--

DROP TABLE IF EXISTS `wp_wc_reserved_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_reserved_stock`
--

LOCK TABLES `wp_wc_reserved_stock` WRITE;
/*!40000 ALTER TABLE `wp_wc_reserved_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_reserved_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

DROP TABLE IF EXISTS `wp_wc_tax_rate_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

LOCK TABLES `wp_wc_tax_rate_classes` WRITE;
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` DISABLE KEYS */;
INSERT INTO `wp_wc_tax_rate_classes` VALUES (1,'Taxa reduzida','taxa-reduzida');
INSERT INTO `wp_wc_tax_rate_classes` VALUES (2,'Taxa zero','taxa-zero');
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_webhooks`
--

DROP TABLE IF EXISTS `wp_wc_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_webhooks`
--

LOCK TABLES `wp_wc_webhooks` WRITE;
/*!40000 ALTER TABLE `wp_wc_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_api_keys`
--

LOCK TABLES `wp_woocommerce_api_keys` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

LOCK TABLES `wp_woocommerce_attribute_taxonomies` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_attribute_taxonomies` VALUES (2,'tamanho','Tamanho','select','menu_order',1);
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_downloadable_product_permissions`
--

LOCK TABLES `wp_woocommerce_downloadable_product_permissions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_log`
--

DROP TABLE IF EXISTS `wp_woocommerce_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_log`
--

LOCK TABLES `wp_woocommerce_log` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

LOCK TABLES `wp_woocommerce_order_itemmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

LOCK TABLES `wp_woocommerce_order_items` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokenmeta`
--

LOCK TABLES `wp_woocommerce_payment_tokenmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokens`
--

LOCK TABLES `wp_woocommerce_payment_tokens` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

LOCK TABLES `wp_woocommerce_sessions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_sessions` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_sessions` VALUES (43,'cd69fe4d2388769637003ea1f4ba8149','a:12:{s:4:\"cart\";s:412:\"a:1:{s:32:\"67c6a1e7ce56d3d6fa748ab6d9af3fd7\";a:11:{s:3:\"key\";s:32:\"67c6a1e7ce56d3d6fa748ab6d9af3fd7\";s:10:\"product_id\";i:47;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:139;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:139;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:396:\"a:15:{s:8:\"subtotal\";s:3:\"139\";s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";s:3:\"139\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:6:\"139.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:379:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_7b5f726d5f53488d057da6813a29ca53\";s:5:\"rates\";a:1:{s:11:\"flat_rate:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:1\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:1;s:5:\"label\";s:9:\"Taxa fixa\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Itens\";s:23:\"Bermuda Preta &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:39:\"a:1:{i:0;a:1:{i:0;s:11:\"flat_rate:1\";}}\";s:23:\"chosen_shipping_methods\";s:29:\"a:1:{i:0;s:11:\"flat_rate:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:10:\"wc_notices\";N;s:8:\"customer\";s:720:\"a:27:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"PR\";s:7:\"country\";s:2:\"BR\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"PR\";s:16:\"shipping_country\";s:2:\"BR\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";}',1642707558);
/*!40000 ALTER TABLE `wp_woocommerce_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

LOCK TABLES `wp_woocommerce_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_shipping_zone_locations` VALUES (1,1,'BR','country');
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

LOCK TABLES `wp_woocommerce_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_shipping_zone_methods` VALUES (1,1,'flat_rate',1,1);
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

LOCK TABLES `wp_woocommerce_shipping_zones` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_shipping_zones` VALUES (1,'Brasil',0);
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rate_locations`
--

LOCK TABLES `wp_woocommerce_tax_rate_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rates`
--

LOCK TABLES `wp_woocommerce_tax_rates` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-18 18:09:16
