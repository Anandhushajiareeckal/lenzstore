-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: 127.0.0.1    Database: shofy
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'x6gJdborr4Kh6fiRw9rw00s4AZMryFz5',1,'2024-04-18 23:51:54','2024-04-18 23:51:54','2024-04-18 23:51:54');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT '0',
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT '0',
  `dismissible` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Announcement 1','Enjoy free shipping on all orders over $99! Shop now and save on delivery costs.',0,NULL,NULL,0,1,'2024-04-19 06:52:02',NULL,1,'2024-04-18 23:52:02','2024-04-18 23:52:02'),(2,'Announcement 2','Need assistance? Our customer support is available 24/7 to help you with any questions or concerns.',0,NULL,NULL,0,1,'2024-04-19 06:52:02',NULL,1,'2024-04-18 23:52:02','2024-04-18 23:52:02'),(3,'Announcement 3','Shop with confidence! We offer a hassle-free 30 days return service for your peace of mind.',0,NULL,NULL,0,1,'2024-04-19 06:52:02',NULL,1,'2024-04-18 23:52:02','2024-04-18 23:52:02');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcements_id` bigint unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Crisp Bread &amp; Cake',0,'Et sed blanditiis inventore ullam. Quia et facilis culpa illum corrupti. Possimus voluptas possimus est.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-04-18 23:51:58','2024-04-18 23:51:58'),(2,'Fashion',0,'Deleniti amet consequatur molestiae quidem deleniti. Ducimus nam pariatur velit placeat eum. Modi voluptate mollitia aut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-18 23:51:58','2024-04-18 23:51:58'),(3,'Electronic',0,'Provident dolores consectetur fugiat asperiores asperiores odio. Est vitae praesentium cumque ducimus velit. Iusto delectus assumenda ipsa quo.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-18 23:51:58','2024-04-18 23:51:58'),(4,'Commercial',0,'Cumque consequatur aut inventore ut. Qui esse et et dolore a. Aut amet et maiores et. Natus ipsa molestias rem sunt.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-18 23:51:58','2024-04-18 23:51:58'),(5,'Organic Fruits',0,'Laborum sed fugiat dolore consequatur ut dolorem explicabo. Nostrum iste quam vitae maxime fugit quia itaque. Velit cumque et qui. Est veniam aut culpa ea vitae iste. Voluptas quas atque et est.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-18 23:51:58','2024-04-18 23:51:58'),(6,'Ecological',0,'Nesciunt est at in rerum illum. Sed quo dolore natus. Odit dolor sequi rerum optio eius sint expedita. Corporis dolores quis velit vitae facere.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-18 23:51:58','2024-04-18 23:51:58');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Bridget Walsh','zachary51@example.net','+1 (856) 792-0891','48320 Nienow Mill Suite 484\nPort Fay, KY 11801','Ut ducimus quisquam et dolores debitis possimus.','Numquam et ea sed maxime voluptatum. Voluptatum repellendus numquam repudiandae omnis consequuntur modi. Quod sed repellendus ab earum vel enim. Et ab et sint non perspiciatis enim amet saepe. Blanditiis repudiandae quaerat mollitia alias. Nobis non saepe eum vel voluptates blanditiis molestiae. Molestias tempore molestiae aut doloremque qui veniam expedita in. Voluptatem in laborum quo harum eligendi commodi occaecati.','unread','2024-04-18 23:51:58','2024-04-18 23:51:58'),(2,'Dr. Kale Herman I','carolanne31@example.org','+1-631-680-3240','11702 Little Ford\nNorth Vickie, NC 69659-5476','Aliquam aut aut laborum quasi quia.','In corrupti nemo alias voluptatibus. Rerum facere voluptates ipsum magnam. Est suscipit delectus voluptatem nostrum est nulla eveniet eum. Dolores enim alias error quo. Accusantium eos quos neque aut delectus vero voluptatem. Quisquam fugit sequi animi quidem quos consequatur fuga. Nulla ut soluta iure id nihil. Atque praesentium ullam aut similique dolores ipsam eaque.','unread','2024-04-18 23:51:58','2024-04-18 23:51:58'),(3,'Dagmar Veum','whitney.hermiston@example.com','+1-307-637-3264','2608 Mertz Points\nWest Jakob, WV 58733-1517','Molestiae velit nisi sit laborum.','Nesciunt et reprehenderit mollitia aut ducimus eligendi. Dicta perferendis dignissimos magnam ducimus adipisci. Incidunt officia aut perferendis laudantium. Quo similique aperiam consequatur quia dolores. Sit quis et labore. Corporis sint aut aut ducimus sit asperiores deleniti minima. Iste incidunt facere inventore harum. Soluta autem architecto asperiores voluptatem. Omnis perspiciatis esse qui dolor amet. Fugiat officiis harum dolor.','unread','2024-04-18 23:51:58','2024-04-18 23:51:58'),(4,'Mose Yost','vhirthe@example.org','602.468.7757','1971 Bernhard Burg\nLindtown, WI 36026-1426','Et quia non voluptatum.','Voluptatem ut deleniti numquam repudiandae omnis. Vitae possimus temporibus qui voluptatem neque consequatur ipsam. Quasi voluptatem ea qui ea. Velit quia error voluptates quasi consequatur voluptatem. Quisquam inventore reprehenderit libero doloremque vel odit. Omnis deserunt dolor praesentium eum. Pariatur culpa ducimus est quibusdam vero sed quis. Officia dolor autem sint repudiandae voluptatibus.','unread','2024-04-18 23:51:58','2024-04-18 23:51:58'),(5,'Marlin Fadel','keebler.kolby@example.net','+16199390189','1552 Viola Unions\nMoenhaven, ND 95498','Officia est dolorem molestiae et non.','Est maxime autem perferendis quas. Et est harum rerum. Voluptates sit fugiat repellat soluta quia aut eos. Dolores aut quam dicta voluptatem illum minus rem. Deserunt occaecati id rerum placeat ut nostrum. Molestias error aut autem pariatur sed quia laboriosam. Et qui accusantium ex molestiae.','unread','2024-04-18 23:51:58','2024-04-18 23:51:58'),(6,'Mr. Armani Vandervort IV','gerard18@example.net','1-731-892-6087','620 Bosco Hill Apt. 222\nPietroshire, CT 34808-1436','Labore doloremque est quasi a voluptas.','Adipisci voluptate temporibus vero corporis minima. Eum minus ipsam velit ducimus laboriosam beatae alias. Incidunt accusantium provident sapiente rerum. Omnis voluptas blanditiis nam et consequatur. Facere id quae incidunt nisi distinctio dolorem. Dolor in ea doloremque possimus esse neque quae qui. Placeat porro tempora minus itaque ex est. Sunt molestiae voluptas cum enim. Voluptatem ut rerum quidem aliquam.','unread','2024-04-18 23:51:58','2024-04-18 23:51:58'),(7,'Jess Keeling','trey.stehr@example.net','913-296-5649','3673 Purdy Court\nLake Clovisfort, NH 97600','Natus doloremque sint quis.','Vel qui perspiciatis laborum qui. Libero eum praesentium aliquam. Repellendus totam delectus qui. Voluptatem asperiores voluptas voluptas eligendi quasi occaecati. Deserunt harum vero eum alias architecto perferendis nam numquam. Aliquam commodi et non eaque. Quo deserunt sint eos quo pariatur dolorem ut. Ut aliquam vel unde officia. Harum inventore aut nam voluptatem impedit voluptates. Minus vel deleniti eum incidunt quisquam. Soluta vel expedita quos. Aliquam aut ut fuga quae quia tenetur.','unread','2024-04-18 23:51:58','2024-04-18 23:51:58'),(8,'Cecile Stoltenberg','vallie.cassin@example.com','1-317-279-0596','6630 Juliet Drives Apt. 611\nWest Karlieville, AK 53369','Dicta minima explicabo amet ut quas saepe modi.','Nobis voluptates consequatur aspernatur ipsam. Omnis cum id est aut. Maiores reiciendis eos in eaque praesentium saepe. Earum expedita voluptatum nesciunt et harum dicta. Dolor aperiam non commodi atque. Saepe consequatur molestiae commodi sit possimus nobis. Id rerum ut sunt quia similique. Eveniet ex cumque nihil pariatur et. Laudantium praesentium velit veniam saepe doloremque. Nesciunt aperiam ut facere aliquid.','read','2024-04-18 23:51:58','2024-04-18 23:51:58'),(9,'Donny Weber','jaylon96@example.com','305.543.9320','940 Breitenberg Mountains\nSouth Laurel, GA 26449','Ut ut sed consequuntur.','Aut ut aut ea dolorum aut. Libero voluptatem aut exercitationem porro accusantium perferendis enim. Est vitae numquam autem cumque enim. Omnis fuga est facilis minima minima porro aspernatur aspernatur. Et expedita inventore quisquam ad. Vel voluptatem dolores eos adipisci et. Aliquid qui non molestiae quidem repellat dolorem facilis. Asperiores in quia ut. Aut enim sit consequuntur dolores aut. Dolorem fugiat ea esse.','read','2024-04-18 23:51:58','2024-04-18 23:51:58'),(10,'Prof. Rosa Huels','libbie38@example.com','(323) 643-4338','93021 Scot Circle\nKuvalisberg, WA 65563-5134','Aut ab illo molestiae asperiores.','Qui ea quidem voluptatem quia aut molestiae. Sit nisi consequatur neque ducimus ea. Suscipit maxime sint soluta qui aut dolores voluptas. Explicabo eum commodi consequatur excepturi. Dignissimos fuga sit officiis occaecati officia nihil voluptates nihil. Maxime consequatur dolor non corporis ipsum voluptatem est. Ut minima itaque eius magnam qui debitis fugit odit.','read','2024-04-18 23:51:58','2024-04-18 23:51:58');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'FoodPound','New Snacks Release',NULL,'main/brands/1.png','published',0,1,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(2,'iTea JSC','Happy Tea 100% Organic. From $29.9',NULL,'main/brands/2.png','published',1,1,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(3,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/3.png','published',2,1,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(4,'Shofy','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/4.png','published',3,1,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(5,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/5.png','published',4,1,'2024-04-18 23:51:54','2024-04-18 23:51:54');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(2,'EUR','€',0,2,1,0,0.84,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(3,'VND','₫',0,0,2,0,23203,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(4,'NGN','₦',1,2,2,0,895.52,'2024-04-18 23:51:54','2024-04-18 23:51:54');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Jaquan Wolf','customer@botble.com','+16203229006','ML','Oklahoma','Trevertown','908 Jerrod Track Suite 993',1,1,'2024-04-18 23:51:55','2024-04-18 23:51:55','67299'),(2,'Jaquan Wolf','customer@botble.com','+15513593396','EH','Kansas','Erichfurt','8540 Wilfredo Course Suite 351',1,0,'2024-04-18 23:51:55','2024-04-18 23:51:55','95235-4943'),(3,'Miss Lavonne Carroll','vendor@botble.com','+12836147928','TO','Hawaii','Dietrichfurt','754 Clemmie Mills',2,1,'2024-04-18 23:51:55','2024-04-18 23:51:55','35911'),(4,'Miss Lavonne Carroll','vendor@botble.com','+17206223266','TH','Idaho','Stevieville','135 Caleb Falls Suite 244',2,0,'2024-04-18 23:51:55','2024-04-18 23:51:55','14469'),(5,'Dr. Perry Runolfsdottir','moore.lacy@example.net','+13043046374','GL','New York','South Eugene','309 Lowe Inlet Suite 182',3,1,'2024-04-18 23:51:56','2024-04-18 23:51:56','84595'),(6,'Crystel Stanton','kuhic.anissa@example.org','+17407433885','SL','Georgia','North Wileyview','829 Towne Road',4,1,'2024-04-18 23:51:56','2024-04-18 23:51:56','01882'),(7,'Sylvan Mayert','marlon.mertz@example.org','+13309563381','NU','California','Eleanoreport','850 Pacocha Parkway',5,1,'2024-04-18 23:51:56','2024-04-18 23:51:56','89599-6950'),(8,'Zane King','wswift@example.net','+12053333042','MO','Nevada','Port Braeden','68599 Mills Lakes',6,1,'2024-04-18 23:51:56','2024-04-18 23:51:56','55314'),(9,'Jeremy Kemmer','sean.erdman@example.net','+14135334273','GT','North Carolina','Cyrilfort','147 Hettinger Tunnel Apt. 515',7,1,'2024-04-18 23:51:57','2024-04-18 23:51:57','36433-9378'),(10,'Vena Homenick','cassidy.little@example.com','+16786052011','QA','Alaska','Leopoldofort','9486 Smitham Hollow',8,1,'2024-04-18 23:51:57','2024-04-18 23:51:57','58932-4718'),(11,'Antonetta Wuckert','blick.carolyne@example.org','+19146330271','KM','Rhode Island','Bayerburgh','9741 Hansen Valleys Suite 605',9,1,'2024-04-18 23:51:57','2024-04-18 23:51:57','99955'),(12,'Wilfred Borer','ohara.triston@example.com','+14425069545','MZ','Florida','Lockmanfort','150 Lucie Key',10,1,'2024-04-18 23:51:57','2024-04-18 23:51:57','47480');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Jaquan Wolf','customer@botble.com','$2y$12$KLDIQrw6ex9XZqHtScvo0ugAaBJpSg.BH4r2Olmh4wkzqaxKs/jBi','main/customers/4.jpg','1989-04-10','+12054025199',NULL,'2024-04-18 23:51:55','2024-04-18 23:52:00','2024-04-19 06:51:55',NULL,1,'2024-04-19 06:52:00','activated',NULL),(2,'Miss Lavonne Carroll','vendor@botble.com','$2y$12$z6rRUl6RplW375oqtWBd8erfTpbUYijx6pg151pmjeEOBshNOU2aW','main/customers/6.jpg','1995-04-10','+17344764747',NULL,'2024-04-18 23:51:55','2024-04-18 23:52:00','2024-04-19 06:51:55',NULL,1,'2024-04-19 06:52:00','activated',NULL),(3,'Dr. Perry Runolfsdottir','moore.lacy@example.net','$2y$12$khEMUOmxb3fVhQ4Q0nhTLuvFcEqmFEO.9t2SvWt3qzxAXNFOtaHme','main/customers/1.jpg','1991-04-13','+15203962236',NULL,'2024-04-18 23:51:56','2024-04-18 23:52:00','2024-04-19 06:51:55',NULL,1,'2024-04-19 06:52:00','activated',NULL),(4,'Crystel Stanton','kuhic.anissa@example.org','$2y$12$ONZoYsGtaKAEGZ1hkbwxqODE2vDT7g2OcVgwAFATZqipF/pbbzY2a','main/customers/2.jpg','1975-04-05','+14144334777',NULL,'2024-04-18 23:51:56','2024-04-18 23:52:00','2024-04-19 06:51:55',NULL,1,'2024-04-19 06:52:00','activated',NULL),(5,'Sylvan Mayert','marlon.mertz@example.org','$2y$12$SneFCubvh8.jg42NjXoNpubrvty0EydqXfzIEoVUGCCGAyg7KQgGi','main/customers/3.jpg','1975-04-04','+15127492246',NULL,'2024-04-18 23:51:56','2024-04-18 23:52:01','2024-04-19 06:51:55',NULL,1,'2024-04-19 06:52:00','activated',NULL),(6,'Zane King','wswift@example.net','$2y$12$7Ue8dWtm9tK8tlfEg0wZHuhORSXfuXvIn2DlIC9T2e4fkEPcXaALq','main/customers/4.jpg','1979-04-15','+19866315526',NULL,'2024-04-18 23:51:56','2024-04-18 23:52:01','2024-04-19 06:51:55',NULL,1,'2024-04-19 06:52:00','activated',NULL),(7,'Jeremy Kemmer','sean.erdman@example.net','$2y$12$Wwm/jnCfjww221ZrSLFZ2OF6XtX4vN149Ctlkmr0vHjDTGKe4pPQy','main/customers/5.jpg','1976-03-25','+12837178618',NULL,'2024-04-18 23:51:57','2024-04-18 23:52:01','2024-04-19 06:51:55',NULL,1,'2024-04-19 06:52:00','activated',NULL),(8,'Vena Homenick','cassidy.little@example.com','$2y$12$gzxlHyVEi6e5UddlCbQDJ.eNmMefLGn55eR3KLvjF2bRI2n0/Dzky','main/customers/6.jpg','1978-03-28','+15102985648',NULL,'2024-04-18 23:51:57','2024-04-18 23:52:01','2024-04-19 06:51:55',NULL,1,'2024-04-19 06:52:00','activated',NULL),(9,'Antonetta Wuckert','blick.carolyne@example.org','$2y$12$uqSCvfcJ26x.HHEJHnfaNuSilHRqf9inHvK0lqYD17LKCXd6G/W/W','main/customers/7.jpg','2003-04-07','+15598161910',NULL,'2024-04-18 23:51:57','2024-04-18 23:52:02','2024-04-19 06:51:55',NULL,0,NULL,'activated',NULL),(10,'Wilfred Borer','ohara.triston@example.com','$2y$12$mZuH2lIWVL4Sro2En9KfXe/xYCPRolYtLBQ9UIGDbvTJWF4V6eB8e','main/customers/8.jpg','1975-04-03','+12295370123',NULL,'2024-04-18 23:51:57','2024-04-18 23:52:02','2024-04-19 06:51:55',NULL,0,NULL,'activated',NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','CWWIFH3QBIFV','2024-04-18 06:51:59',NULL,NULL,0,720,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-04-18 23:51:59','2024-04-18 23:51:59',NULL,NULL),(2,'Discount 2','DVKS8ZKDFQXG','2024-04-18 06:51:59','2024-05-05 06:51:59',NULL,0,479,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-04-18 23:51:59','2024-04-18 23:51:59',NULL,NULL),(3,'Discount 3','XSPMKGUSGTWX','2024-04-18 06:51:59','2024-05-06 06:51:59',NULL,0,344,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-04-18 23:51:59','2024-04-18 23:51:59',NULL,NULL),(4,'Discount 4','SGT5I07ACA6D','2024-04-18 06:51:59','2024-05-08 06:51:59',NULL,0,521,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-04-18 23:51:59','2024-04-18 23:51:59',NULL,NULL),(5,'Discount 5','EB3TP6D7NLVV','2024-04-18 06:51:59',NULL,NULL,0,890,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-04-18 23:51:59','2024-04-18 23:51:59',NULL,NULL),(6,'Discount 6','RHGIE26CGENH','2024-04-18 06:51:59',NULL,NULL,0,322,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-04-18 23:51:59','2024-04-18 23:51:59',NULL,NULL),(7,'Discount 7','5NL39QWVA1HM','2024-04-18 06:51:59','2024-05-12 06:51:59',NULL,0,712,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-04-18 23:51:59','2024-04-18 23:51:59',NULL,NULL),(8,'Discount 8','ZWI0K6OMPD6D','2024-04-18 06:51:59',NULL,NULL,0,837,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-04-18 23:51:59','2024-04-18 23:51:59',NULL,NULL),(9,'Discount 9','EFZVBAUR0ZHU','2024-04-18 06:51:59',NULL,NULL,0,629,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-04-18 23:51:59','2024-04-18 23:51:59',NULL,NULL),(10,'Discount 10','3OHQYHLTYKMR','2024-04-18 06:51:59',NULL,NULL,0,986,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-04-18 23:51:59','2024-04-18 23:51:59',NULL,NULL);
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,429.5,16,4),(1,2,1135.22,8,4),(1,3,401.17,8,3),(1,4,251.46,11,5),(1,5,95.04,13,2),(1,6,1378.8,9,5),(1,7,78,14,2),(1,8,206.36,7,3),(1,9,911.62,13,1),(1,10,60.48,16,5);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2024-05-10 00:00:00','published','2024-04-18 23:52:07','2024-04-18 23:52:07');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(1,2,'2 Year',10,9999,0,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(1,3,'3 Year',20,9999,0,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(2,4,'4GB',0,9999,0,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(2,5,'8GB',10,9999,0,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(2,6,'16GB',20,9999,0,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(3,7,'Core i5',0,9999,0,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(3,8,'Core i7',10,9999,0,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(3,9,'Core i9',20,9999,0,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(4,10,'128GB',0,9999,0,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(4,11,'256GB',10,9999,0,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(4,12,'512GB',20,9999,0,'2024-04-18 23:51:59','2024-04-18 23:51:59');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-04-18 23:51:59','2024-04-18 23:51:59');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-04-18 23:51:54','2024-04-18 23:51:54',0),(2,'Size','size','text',1,1,1,'published',1,'2024-04-18 23:51:54','2024-04-18 23:51:54',0),(3,'Weight','weight','text',1,1,1,'published',0,'2024-04-18 23:51:54','2024-04-18 23:51:54',0),(4,'Boxes','boxes','text',1,1,1,'published',1,'2024-04-18 23:51:54','2024-04-18 23:51:54',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(6,2,'S','s',NULL,NULL,1,1,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(7,2,'M','m',NULL,NULL,0,2,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(8,2,'L','l',NULL,NULL,0,3,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(11,3,'1KG','1kg',NULL,NULL,1,1,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(12,3,'2KG','2kg',NULL,NULL,0,2,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(13,3,'3KG','3kg',NULL,NULL,0,3,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(14,3,'4KG','4kg',NULL,NULL,0,4,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(15,3,'5KG','5kg',NULL,NULL,0,5,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(16,4,'1 Box','1-box',NULL,NULL,1,1,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(17,4,'2 Boxes','2-boxes',NULL,NULL,0,2,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(18,4,'3 Boxes','3-boxes',NULL,NULL,0,3,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(19,4,'4 Boxes','4-boxes',NULL,NULL,0,4,'2024-04-18 23:51:54','2024-04-18 23:51:54'),(20,4,'5 Boxes','5-boxes',NULL,NULL,0,5,'2024-04-18 23:51:54','2024-04-18 23:51:54');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Discover Skincare',0,NULL,'published',0,'beauty/product-categories/1.jpg',1,'2024-04-18 23:52:03','2024-04-18 23:52:03',NULL,NULL),(2,'Clothing',0,NULL,'published',1,'beauty/product-categories/4.jpg',1,'2024-04-18 23:52:03','2024-04-18 23:52:03',NULL,NULL),(3,'Men\'s Clothing',2,NULL,'published',0,NULL,0,'2024-04-18 23:52:03','2024-04-18 23:52:03',NULL,NULL),(4,'T-Shirts',3,NULL,'published',0,NULL,0,'2024-04-18 23:52:03','2024-04-18 23:52:03',NULL,NULL),(5,'Jeans',3,NULL,'published',1,NULL,0,'2024-04-18 23:52:03','2024-04-18 23:52:03',NULL,NULL),(6,'Suits',3,NULL,'published',2,NULL,0,'2024-04-18 23:52:03','2024-04-18 23:52:03',NULL,NULL),(7,'Women\'s Clothing',2,NULL,'published',1,'beauty/product-categories/2.jpg',1,'2024-04-18 23:52:03','2024-04-18 23:52:03',NULL,NULL),(8,'Dresses',7,NULL,'published',0,NULL,0,'2024-04-18 23:52:03','2024-04-18 23:52:03',NULL,NULL),(9,'Blouses',7,NULL,'published',1,NULL,0,'2024-04-18 23:52:03','2024-04-18 23:52:03',NULL,NULL),(10,'Pants',7,NULL,'published',2,NULL,0,'2024-04-18 23:52:03','2024-04-18 23:52:03',NULL,NULL),(11,'Accessories',0,NULL,'published',2,'beauty/product-categories/5.jpg',1,'2024-04-18 23:52:03','2024-04-18 23:52:03',NULL,NULL),(12,'Hats',11,NULL,'published',0,NULL,0,'2024-04-18 23:52:03','2024-04-18 23:52:03',NULL,NULL),(13,'Scarves',11,NULL,'published',1,NULL,0,'2024-04-18 23:52:03','2024-04-18 23:52:03',NULL,NULL),(14,'Jewelry',11,NULL,'published',2,NULL,0,'2024-04-18 23:52:03','2024-04-18 23:52:03',NULL,NULL),(15,'Shoes',0,NULL,'published',3,'beauty/product-categories/6.jpg',1,'2024-04-18 23:52:03','2024-04-18 23:52:03',NULL,NULL),(16,'Sportswear',0,NULL,'published',4,NULL,0,'2024-04-18 23:52:03','2024-04-18 23:52:03',NULL,NULL),(17,'Activewear',16,NULL,'published',0,NULL,0,'2024-04-18 23:52:03','2024-04-18 23:52:03',NULL,NULL),(18,'Running Shoes',16,NULL,'published',1,'beauty/product-categories/3.jpg',1,'2024-04-18 23:52:03','2024-04-18 23:52:03',NULL,NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,12),(1,18),(1,19),(1,27),(1,28),(1,32),(1,35),(1,36),(2,1),(2,2),(2,4),(2,5),(2,11),(2,19),(2,32),(2,33),(2,36),(2,37),(2,43),(3,3),(3,6),(3,8),(3,9),(3,14),(3,21),(3,24),(3,27),(3,29),(3,31),(3,36),(3,37),(3,38),(3,40),(4,18),(4,22),(4,23),(4,25),(4,34),(4,38),(4,39),(5,12),(5,19),(5,20),(5,21),(5,24),(5,29),(5,31),(5,39),(5,40),(5,41),(6,8),(6,10),(6,15),(6,19),(6,22),(6,23),(6,26),(6,31),(6,40),(6,42),(7,4),(7,6),(7,8),(7,9),(7,12),(7,13),(7,16),(7,20),(7,25),(7,28),(7,42),(8,1),(8,9),(8,17),(8,20),(8,22),(8,29),(8,32),(8,35),(8,41),(8,43),(9,2),(9,3),(9,4),(9,10),(9,11),(9,14),(9,18),(9,30),(9,36),(9,38),(10,2),(10,3),(10,5),(10,7),(10,8),(10,10),(10,14),(10,18),(10,26),(10,35),(10,41),(10,42),(11,13),(11,15),(11,29),(11,32),(11,33),(11,35),(11,37),(11,38),(11,39),(12,7),(12,9),(12,15),(12,17),(12,23),(12,25),(12,26),(12,28),(12,31),(12,33),(12,34),(12,41),(13,1),(13,5),(13,7),(13,10),(13,12),(13,16),(13,17),(13,20),(13,25),(13,34),(13,43),(14,3),(14,4),(14,5),(14,6),(14,11),(14,24),(14,27),(14,30),(14,39),(14,42),(15,11),(15,15),(15,16),(15,21),(15,22),(15,23),(15,26),(15,28),(15,30),(15,34),(16,7),(16,13),(16,30),(16,37),(16,40),(16,43),(17,6),(17,21),(17,24),(17,33),(18,1),(18,2),(18,13),(18,14),(18,16),(18,17),(18,27);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,3),(1,4),(1,6),(1,8),(1,11),(1,13),(1,14),(1,15),(1,20),(1,35),(1,38),(2,1),(2,9),(2,10),(2,22),(2,27),(2,32),(2,34),(2,39),(2,41),(2,42),(3,2),(3,16),(3,19),(3,21),(3,23),(3,25),(3,26),(3,28),(3,29),(3,40),(3,43),(4,5),(4,7),(4,12),(4,17),(4,18),(4,24),(4,30),(4,31),(4,33),(4,36),(4,37);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'Trendy Wardrobe Essentials','trendy-wardrobe-essentials',NULL,NULL,'published','2024-04-18 23:52:03','2024-04-18 23:52:03',0),(2,'Fashion Forward Finds','fashion-forward-finds',NULL,NULL,'published','2024-04-18 23:52:03','2024-04-18 23:52:03',0),(3,'Chic &amp; Stylish Collection','chic-stylish-collection',NULL,NULL,'published','2024-04-18 23:52:03','2024-04-18 23:52:03',0),(4,'Weekly Fashion Picks','weekly-fashion-picks',NULL,NULL,'published','2024-04-18 23:52:03','2024-04-18 23:52:03',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,3,0,0.00,'fixed',1),(1,5,0,0.00,'fixed',1),(1,7,0,0.00,'fixed',1),(1,9,0,0.00,'fixed',1),(1,15,0,0.00,'fixed',1),(1,18,0,0.00,'fixed',1),(1,20,0,0.00,'fixed',1),(2,3,0,0.00,'fixed',1),(2,6,0,0.00,'fixed',1),(2,7,0,0.00,'fixed',1),(2,9,0,0.00,'fixed',1),(2,10,0,0.00,'fixed',1),(2,14,0,0.00,'fixed',1),(2,19,0,0.00,'fixed',1),(3,1,0,0.00,'fixed',1),(3,15,0,0.00,'fixed',1),(3,16,0,0.00,'fixed',1),(3,17,0,0.00,'fixed',1),(3,18,0,0.00,'fixed',1),(3,19,0,0.00,'fixed',1),(4,5,0,0.00,'fixed',1),(4,6,0,0.00,'fixed',1),(4,7,0,0.00,'fixed',1),(4,8,0,0.00,'fixed',1),(4,9,0,0.00,'fixed',1),(4,11,0,0.00,'fixed',1),(4,15,0,0.00,'fixed',1),(5,2,0,0.00,'fixed',1),(5,3,0,0.00,'fixed',1),(5,4,0,0.00,'fixed',1),(5,12,0,0.00,'fixed',1),(5,20,0,0.00,'fixed',1),(6,1,0,0.00,'fixed',1),(6,3,0,0.00,'fixed',1),(6,8,0,0.00,'fixed',1),(6,10,0,0.00,'fixed',1),(6,11,0,0.00,'fixed',1),(6,16,0,0.00,'fixed',1),(6,19,0,0.00,'fixed',1),(7,3,0,0.00,'fixed',1),(7,8,0,0.00,'fixed',1),(7,9,0,0.00,'fixed',1),(7,17,0,0.00,'fixed',1),(7,18,0,0.00,'fixed',1),(8,1,0,0.00,'fixed',1),(8,4,0,0.00,'fixed',1),(8,5,0,0.00,'fixed',1),(8,10,0,0.00,'fixed',1),(8,16,0,0.00,'fixed',1),(8,18,0,0.00,'fixed',1),(9,1,0,0.00,'fixed',1),(9,2,0,0.00,'fixed',1),(9,8,0,0.00,'fixed',1),(9,13,0,0.00,'fixed',1),(9,18,0,0.00,'fixed',1),(9,20,0,0.00,'fixed',1),(10,2,0,0.00,'fixed',1),(10,12,0,0.00,'fixed',1),(10,13,0,0.00,'fixed',1),(10,14,0,0.00,'fixed',1),(10,20,0,0.00,'fixed',1),(11,2,0,0.00,'fixed',1),(11,4,0,0.00,'fixed',1),(11,6,0,0.00,'fixed',1),(11,7,0,0.00,'fixed',1),(11,17,0,0.00,'fixed',1),(12,4,0,0.00,'fixed',1),(12,6,0,0.00,'fixed',1),(12,9,0,0.00,'fixed',1),(12,10,0,0.00,'fixed',1),(12,13,0,0.00,'fixed',1),(12,17,0,0.00,'fixed',1),(13,3,0,0.00,'fixed',1),(13,7,0,0.00,'fixed',1),(13,10,0,0.00,'fixed',1),(13,12,0,0.00,'fixed',1),(13,16,0,0.00,'fixed',1),(13,17,0,0.00,'fixed',1),(14,2,0,0.00,'fixed',1),(14,9,0,0.00,'fixed',1),(14,11,0,0.00,'fixed',1),(14,12,0,0.00,'fixed',1),(14,16,0,0.00,'fixed',1),(14,17,0,0.00,'fixed',1),(15,5,0,0.00,'fixed',1),(15,6,0,0.00,'fixed',1),(15,7,0,0.00,'fixed',1),(15,9,0,0.00,'fixed',1),(15,17,0,0.00,'fixed',1),(15,20,0,0.00,'fixed',1),(16,2,0,0.00,'fixed',1),(16,6,0,0.00,'fixed',1),(16,7,0,0.00,'fixed',1),(16,9,0,0.00,'fixed',1),(16,10,0,0.00,'fixed',1),(16,11,0,0.00,'fixed',1),(16,15,0,0.00,'fixed',1),(17,3,0,0.00,'fixed',1),(17,5,0,0.00,'fixed',1),(17,6,0,0.00,'fixed',1),(17,9,0,0.00,'fixed',1),(17,11,0,0.00,'fixed',1),(17,12,0,0.00,'fixed',1),(18,3,0,0.00,'fixed',1),(18,7,0,0.00,'fixed',1),(18,8,0,0.00,'fixed',1),(18,10,0,0.00,'fixed',1),(18,20,0,0.00,'fixed',1),(19,2,0,0.00,'fixed',1),(19,3,0,0.00,'fixed',1),(19,5,0,0.00,'fixed',1),(19,7,0,0.00,'fixed',1),(19,11,0,0.00,'fixed',1),(20,1,0,0.00,'fixed',1),(20,3,0,0.00,'fixed',1),(20,6,0,0.00,'fixed',1),(20,9,0,0.00,'fixed',1),(20,12,0,0.00,'fixed',1),(20,13,0,0.00,'fixed',1),(21,2,0,0.00,'fixed',1),(21,7,0,0.00,'fixed',1),(21,12,0,0.00,'fixed',1),(21,16,0,0.00,'fixed',1),(21,18,0,0.00,'fixed',1),(22,3,0,0.00,'fixed',1),(22,8,0,0.00,'fixed',1),(22,9,0,0.00,'fixed',1),(22,10,0,0.00,'fixed',1),(22,14,0,0.00,'fixed',1),(22,16,0,0.00,'fixed',1),(22,19,0,0.00,'fixed',1),(23,3,0,0.00,'fixed',1),(23,4,0,0.00,'fixed',1),(23,7,0,0.00,'fixed',1),(23,12,0,0.00,'fixed',1),(23,14,0,0.00,'fixed',1),(23,15,0,0.00,'fixed',1),(23,19,0,0.00,'fixed',1),(24,2,0,0.00,'fixed',1),(24,8,0,0.00,'fixed',1),(24,10,0,0.00,'fixed',1),(24,13,0,0.00,'fixed',1),(24,14,0,0.00,'fixed',1),(24,15,0,0.00,'fixed',1),(24,18,0,0.00,'fixed',1),(25,1,0,0.00,'fixed',1),(25,4,0,0.00,'fixed',1),(25,6,0,0.00,'fixed',1),(25,7,0,0.00,'fixed',1),(25,8,0,0.00,'fixed',1),(25,15,0,0.00,'fixed',1),(25,16,0,0.00,'fixed',1),(26,1,0,0.00,'fixed',1),(26,2,0,0.00,'fixed',1),(26,8,0,0.00,'fixed',1),(26,9,0,0.00,'fixed',1),(26,10,0,0.00,'fixed',1),(26,12,0,0.00,'fixed',1),(26,18,0,0.00,'fixed',1),(27,4,0,0.00,'fixed',1),(27,5,0,0.00,'fixed',1),(27,8,0,0.00,'fixed',1),(27,10,0,0.00,'fixed',1),(27,14,0,0.00,'fixed',1),(27,18,0,0.00,'fixed',1),(28,1,0,0.00,'fixed',1),(28,2,0,0.00,'fixed',1),(28,7,0,0.00,'fixed',1),(28,9,0,0.00,'fixed',1),(28,14,0,0.00,'fixed',1),(28,15,0,0.00,'fixed',1),(28,16,0,0.00,'fixed',1),(29,1,0,0.00,'fixed',1),(29,3,0,0.00,'fixed',1),(29,5,0,0.00,'fixed',1),(29,7,0,0.00,'fixed',1),(29,9,0,0.00,'fixed',1),(29,15,0,0.00,'fixed',1),(30,1,0,0.00,'fixed',1),(30,4,0,0.00,'fixed',1),(30,5,0,0.00,'fixed',1),(30,7,0,0.00,'fixed',1),(30,11,0,0.00,'fixed',1),(30,12,0,0.00,'fixed',1),(30,19,0,0.00,'fixed',1),(31,3,0,0.00,'fixed',1),(31,8,0,0.00,'fixed',1),(31,9,0,0.00,'fixed',1),(31,14,0,0.00,'fixed',1),(31,17,0,0.00,'fixed',1),(31,19,0,0.00,'fixed',1),(32,1,0,0.00,'fixed',1),(32,3,0,0.00,'fixed',1),(32,4,0,0.00,'fixed',1),(32,5,0,0.00,'fixed',1),(32,9,0,0.00,'fixed',1),(32,10,0,0.00,'fixed',1),(33,1,0,0.00,'fixed',1),(33,5,0,0.00,'fixed',1),(33,8,0,0.00,'fixed',1),(33,10,0,0.00,'fixed',1),(33,11,0,0.00,'fixed',1),(33,12,0,0.00,'fixed',1),(33,19,0,0.00,'fixed',1),(34,3,0,0.00,'fixed',1),(34,4,0,0.00,'fixed',1),(34,9,0,0.00,'fixed',1),(34,12,0,0.00,'fixed',1),(34,15,0,0.00,'fixed',1),(34,18,0,0.00,'fixed',1),(34,19,0,0.00,'fixed',1),(35,1,0,0.00,'fixed',1),(35,5,0,0.00,'fixed',1),(35,8,0,0.00,'fixed',1),(35,10,0,0.00,'fixed',1),(35,11,0,0.00,'fixed',1),(36,3,0,0.00,'fixed',1),(36,4,0,0.00,'fixed',1),(36,12,0,0.00,'fixed',1),(36,13,0,0.00,'fixed',1),(36,14,0,0.00,'fixed',1),(36,17,0,0.00,'fixed',1),(36,18,0,0.00,'fixed',1),(37,1,0,0.00,'fixed',1),(37,4,0,0.00,'fixed',1),(37,7,0,0.00,'fixed',1),(37,9,0,0.00,'fixed',1),(37,10,0,0.00,'fixed',1),(37,13,0,0.00,'fixed',1),(37,14,0,0.00,'fixed',1),(38,2,0,0.00,'fixed',1),(38,3,0,0.00,'fixed',1),(38,6,0,0.00,'fixed',1),(38,8,0,0.00,'fixed',1),(38,14,0,0.00,'fixed',1),(38,16,0,0.00,'fixed',1),(39,4,0,0.00,'fixed',1),(39,7,0,0.00,'fixed',1),(39,8,0,0.00,'fixed',1),(39,10,0,0.00,'fixed',1),(39,11,0,0.00,'fixed',1),(39,12,0,0.00,'fixed',1),(39,15,0,0.00,'fixed',1),(40,6,0,0.00,'fixed',1),(40,8,0,0.00,'fixed',1),(40,9,0,0.00,'fixed',1),(40,12,0,0.00,'fixed',1),(40,14,0,0.00,'fixed',1),(40,17,0,0.00,'fixed',1),(41,2,0,0.00,'fixed',1),(41,7,0,0.00,'fixed',1),(41,10,0,0.00,'fixed',1),(41,11,0,0.00,'fixed',1),(41,14,0,0.00,'fixed',1),(41,18,0,0.00,'fixed',1),(42,2,0,0.00,'fixed',1),(42,6,0,0.00,'fixed',1),(42,11,0,0.00,'fixed',1),(42,12,0,0.00,'fixed',1),(42,13,0,0.00,'fixed',1),(42,15,0,0.00,'fixed',1),(43,2,0,0.00,'fixed',1),(43,5,0,0.00,'fixed',1),(43,9,0,0.00,'fixed',1),(43,10,0,0.00,'fixed',1),(43,14,0,0.00,'fixed',1),(43,16,0,0.00,'fixed',1),(43,19,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,52,'product-files/product-5.png','{\"filename\":\"product-5.png\",\"url\":\"product-files\\/product-5.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:05\",\"name\":\"product-5\",\"extension\":\"png\"}','2024-04-18 23:52:05','2024-04-18 23:52:05'),(2,52,'product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:05\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-04-18 23:52:05','2024-04-18 23:52:05'),(3,52,'product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:05\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-04-18 23:52:05','2024-04-18 23:52:05'),(4,52,'product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:05\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-04-18 23:52:05','2024-04-18 23:52:05'),(5,53,'product-files/product-5.png','{\"filename\":\"product-5.png\",\"url\":\"product-files\\/product-5.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:05\",\"name\":\"product-5\",\"extension\":\"png\"}','2024-04-18 23:52:05','2024-04-18 23:52:05'),(6,53,'product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:05\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-04-18 23:52:05','2024-04-18 23:52:05'),(7,53,'product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:05\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-04-18 23:52:05','2024-04-18 23:52:05'),(8,53,'product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:05\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-04-18 23:52:05','2024-04-18 23:52:05'),(9,54,'product-files/product-5.png','{\"filename\":\"product-5.png\",\"url\":\"product-files\\/product-5.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:05\",\"name\":\"product-5\",\"extension\":\"png\"}','2024-04-18 23:52:05','2024-04-18 23:52:05'),(10,54,'product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:05\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-04-18 23:52:05','2024-04-18 23:52:05'),(11,54,'product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:05\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-04-18 23:52:05','2024-04-18 23:52:05'),(12,54,'product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:05\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-04-18 23:52:05','2024-04-18 23:52:05'),(13,75,'product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(14,75,'product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(15,75,'product-files/product-2.png','{\"filename\":\"product-2.png\",\"url\":\"product-files\\/product-2.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-2\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(16,75,'product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(17,75,'product-files/product-6.png','{\"filename\":\"product-6.png\",\"url\":\"product-files\\/product-6.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-6\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(18,75,'product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(19,75,'product-files/product-5.png','{\"filename\":\"product-5.png\",\"url\":\"product-files\\/product-5.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-5\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(20,75,'product-files/product-8.png','{\"filename\":\"product-8.png\",\"url\":\"product-files\\/product-8.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-8\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(21,76,'product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(22,76,'product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(23,76,'product-files/product-2.png','{\"filename\":\"product-2.png\",\"url\":\"product-files\\/product-2.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-2\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(24,76,'product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(25,76,'product-files/product-6.png','{\"filename\":\"product-6.png\",\"url\":\"product-files\\/product-6.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-6\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(26,76,'product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(27,76,'product-files/product-5.png','{\"filename\":\"product-5.png\",\"url\":\"product-files\\/product-5.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-5\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(28,76,'product-files/product-8.png','{\"filename\":\"product-8.png\",\"url\":\"product-files\\/product-8.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-8\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(29,77,'product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(30,77,'product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(31,77,'product-files/product-2.png','{\"filename\":\"product-2.png\",\"url\":\"product-files\\/product-2.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-2\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(32,77,'product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(33,77,'product-files/product-6.png','{\"filename\":\"product-6.png\",\"url\":\"product-files\\/product-6.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-6\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(34,77,'product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(35,77,'product-files/product-5.png','{\"filename\":\"product-5.png\",\"url\":\"product-files\\/product-5.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-5\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(36,77,'product-files/product-8.png','{\"filename\":\"product-8.png\",\"url\":\"product-files\\/product-8.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-8\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(37,86,'product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(38,86,'product-files/product-2.png','{\"filename\":\"product-2.png\",\"url\":\"product-files\\/product-2.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-2\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(39,86,'product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(40,87,'product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(41,87,'product-files/product-2.png','{\"filename\":\"product-2.png\",\"url\":\"product-files\\/product-2.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-2\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(42,87,'product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(43,90,'product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(44,90,'product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(45,90,'product-files/product-2.png','{\"filename\":\"product-2.png\",\"url\":\"product-files\\/product-2.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-2\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(46,91,'product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(47,91,'product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(48,91,'product-files/product-2.png','{\"filename\":\"product-2.png\",\"url\":\"product-files\\/product-2.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-2\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(49,92,'product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(50,92,'product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06'),(51,92,'product-files/product-2.png','{\"filename\":\"product-2.png\",\"url\":\"product-files\\/product-2.png\",\"mime_type\":\"image\\/png\",\"size\":9730,\"modified\":\"2024-04-19 06:52:06\",\"name\":\"product-2\",\"extension\":\"png\"}','2024-04-18 23:52:06','2024-04-18 23:52:06');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,21),(1,27),(1,30),(1,42),(2,6),(2,9),(2,12),(2,24),(2,33),(2,39),(3,3),(3,15),(3,18),(3,36);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#AC2200','published','2024-04-18 23:51:54','2024-04-18 23:51:54'),(2,'New','#006554','published','2024-04-18 23:51:54','2024-04-18 23:51:54'),(3,'Sale','#9A3B00','published','2024-04-18 23:51:54','2024-04-18 23:51:54');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,1),(1,2),(1,3),(2,1),(2,5),(2,6),(3,2),(3,4),(3,6),(4,1),(4,3),(4,4),(5,2),(5,3),(5,4),(6,1),(6,2),(6,6),(7,1),(7,3),(7,6),(8,3),(8,4),(8,5),(9,1),(9,5),(9,6),(10,4),(10,5),(10,6),(11,1),(11,2),(11,5),(12,1),(12,3),(12,4),(13,1),(13,3),(13,5),(14,2),(14,3),(14,4),(15,2),(15,3),(15,5),(16,3),(16,4),(16,5),(17,1),(17,2),(17,3),(18,2),(18,3),(18,4),(19,1),(19,4),(19,5),(20,2),(20,3),(20,4),(21,3),(21,4),(21,6),(22,1),(22,4),(22,5),(23,1),(23,2),(23,5),(24,2),(24,4),(24,5),(25,1),(25,4),(25,6),(26,3),(26,4),(26,6),(27,1),(27,3),(27,5),(28,1),(28,2),(28,3),(29,2),(29,4),(29,6),(30,2),(30,3),(30,5),(31,2),(31,5),(31,6),(32,2),(32,4),(32,6),(33,1),(33,2),(33,4),(34,1),(34,3),(34,6),(35,3),(35,4),(35,6),(36,2),(36,4),(36,5),(37,1),(37,2),(37,5),(38,2),(38,4),(38,6),(39,1),(39,2),(39,4),(40,3),(40,5),(40,6),(41,1),(41,2),(41,4),(42,2),(42,5),(42,6),(43,1),(43,2),(43,5);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-04-18 23:51:57','2024-04-18 23:51:57'),(2,'Mobile',NULL,'published','2024-04-18 23:51:57','2024-04-18 23:51:57'),(3,'Iphone',NULL,'published','2024-04-18 23:51:57','2024-04-18 23:51:57'),(4,'Printer',NULL,'published','2024-04-18 23:51:57','2024-04-18 23:51:57'),(5,'Office',NULL,'published','2024-04-18 23:51:57','2024-04-18 23:51:57'),(6,'IT',NULL,'published','2024-04-18 23:51:57','2024-04-18 23:51:57');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (17,1,9),(25,1,13),(53,1,27),(57,1,29),(15,2,8),(33,2,17),(37,2,19),(39,2,20),(47,2,24),(11,3,6),(21,3,11),(23,3,12),(29,3,15),(5,4,3),(7,4,4),(9,4,5),(13,4,7),(27,4,14),(31,4,16),(35,4,18),(41,4,21),(45,4,23),(49,4,25),(51,4,26),(55,4,28),(1,5,1),(3,5,2),(19,5,10),(43,5,22),(59,5,30),(10,6,5),(16,6,8),(42,6,21),(44,6,22),(48,6,24),(2,7,1),(6,7,3),(28,7,14),(36,7,18),(50,7,25),(54,7,27),(60,7,30),(4,8,2),(26,8,13),(30,8,15),(34,8,17),(46,8,23),(56,8,28),(22,9,11),(32,9,16),(52,9,26),(58,9,29),(8,10,4),(12,10,6),(14,10,7),(18,10,9),(20,10,10),(24,10,12),(38,10,19),(40,10,20),(67,11,34),(103,11,52),(109,11,55),(61,12,31),(65,12,33),(73,12,37),(75,12,38),(83,12,42),(89,12,45),(97,12,49),(69,13,35),(77,13,39),(79,13,40),(95,13,48),(107,13,54),(113,13,57),(81,14,41),(99,14,50),(105,14,53),(63,15,32),(71,15,36),(85,15,43),(87,15,44),(91,15,46),(93,15,47),(101,15,51),(111,15,56),(115,15,58),(90,16,45),(98,16,49),(112,16,56),(66,17,33),(68,17,34),(80,17,40),(84,17,42),(64,18,32),(74,18,37),(76,18,38),(86,18,43),(96,18,48),(100,18,50),(106,18,53),(110,18,55),(116,18,58),(62,19,31),(70,19,35),(78,19,39),(92,19,46),(94,19,47),(102,19,51),(104,19,52),(108,19,54),(72,20,36),(82,20,41),(88,20,44),(114,20,57);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,44,2,1),(2,45,2,0),(3,46,2,0),(4,47,6,1),(5,48,9,1),(6,49,9,0),(7,50,11,1),(8,51,11,0),(9,52,12,1),(10,53,12,0),(11,54,12,0),(12,55,13,1),(13,56,13,0),(14,57,13,0),(15,58,14,1),(16,59,14,0),(17,60,18,1),(18,61,18,0),(19,62,18,0),(20,63,18,0),(21,64,21,1),(22,65,21,0),(23,66,21,0),(24,67,22,1),(25,68,22,0),(26,69,22,0),(27,70,22,0),(28,71,22,0),(29,72,23,1),(30,73,23,0),(31,74,25,1),(32,75,28,1),(33,76,28,0),(34,77,28,0),(35,78,29,1),(36,79,29,0),(37,80,30,1),(38,81,30,0),(39,82,30,0),(40,83,31,1),(41,84,31,0),(42,85,31,0),(43,86,32,1),(44,87,32,0),(45,88,33,1),(46,89,33,0),(47,90,36,1),(48,91,36,0),(49,92,36,0),(50,93,39,1),(51,94,39,0),(52,95,39,0),(53,96,42,1),(54,97,42,0),(55,98,43,1),(56,99,43,0),(57,100,43,0),(58,101,43,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2024-04-19',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0),(3,24,0),(4,24,0),(3,25,0),(4,25,0),(3,26,0),(4,26,0),(3,27,0),(4,27,0),(3,28,0),(4,28,0),(3,29,0),(4,29,0),(3,30,0),(4,30,0),(3,31,0),(4,31,0),(3,32,0),(4,32,0),(3,33,0),(4,33,0),(3,34,0),(4,34,0),(3,35,0),(4,35,0),(3,36,0),(4,36,0),(3,37,0),(4,37,0),(3,38,0),(4,38,0),(3,39,0),(4,39,0),(3,40,0),(4,40,0),(3,41,0),(4,41,0),(3,42,0),(4,42,0),(3,43,0),(4,43,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `approved_by` bigint unsigned DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Vintage Denim Jacket','Achieve a polished look with this tailored wool blazer, designed for a flattering fit and versatile enough for both work and casual outings.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-2.png\"]','8O-192',0,11,0,1,0,1,0,0,1158,859,NULL,NULL,15.00,19.00,18.00,628.00,NULL,162405,'2024-04-18 23:52:03','2024-04-18 23:52:03','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(2,'Floral Maxi Dress','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]','CD-104-A0',0,18,0,1,0,1,0,0,1831,NULL,NULL,NULL,14.00,18.00,10.00,683.00,NULL,58342,'2024-04-18 23:52:03','2024-04-18 23:52:05','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(3,'Leather Ankle Boots','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]','LL-142',0,13,0,1,1,3,0,0,1231,521,NULL,NULL,13.00,18.00,14.00,514.00,NULL,59659,'2024-04-18 23:52:03','2024-04-18 23:52:03','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(4,'Knit Turtleneck Sweater (Digital)','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-5.png\"]','JO-197',0,16,0,1,0,3,0,0,2416,762,NULL,NULL,18.00,11.00,19.00,788.00,NULL,198679,'2024-04-18 23:52:03','2024-04-18 23:52:03','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(5,'Classic Aviator Sunglasses','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-1.png\"]','TU-132',0,13,0,1,1,5,0,0,608,297,NULL,NULL,12.00,10.00,19.00,648.00,NULL,182185,'2024-04-18 23:52:03','2024-04-18 23:52:03','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(6,'Tailored Wool Blazer','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]','HL-190-A0',0,19,0,1,1,3,0,0,2298,NULL,NULL,NULL,20.00,13.00,17.00,754.00,NULL,121814,'2024-04-18 23:52:03','2024-04-18 23:52:05','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(7,'Bohemian Fringe Handbag','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-2.png\"]','QY-198',0,17,0,1,1,3,0,0,1758,104,NULL,NULL,13.00,11.00,19.00,740.00,NULL,24357,'2024-04-18 23:52:03','2024-04-18 23:52:03','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(8,'Silk Scarf with Geometric Print (Digital)','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-2.png\"]','IM-132',0,20,0,1,1,2,0,0,1177,308,NULL,NULL,13.00,16.00,16.00,616.00,NULL,142270,'2024-04-18 23:52:03','2024-04-18 23:52:03','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(9,'High-Waisted Wide Leg Trousers','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\"]','CY-105-A0',0,19,0,1,0,5,0,0,2399,NULL,NULL,NULL,19.00,10.00,16.00,718.00,NULL,116497,'2024-04-18 23:52:03','2024-04-18 23:52:05','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(10,'Embroidered Boho Blouse','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-8.png\"]','OA-116',0,20,0,1,1,2,0,0,612,189,NULL,NULL,20.00,14.00,10.00,775.00,NULL,11965,'2024-04-18 23:52:03','2024-04-18 23:52:03','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(11,'Statement Chunky Necklace','Achieve a polished look with this tailored wool blazer, designed for a flattering fit and versatile enough for both work and casual outings.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-6.png\"]','BV-127-A0',0,15,0,1,1,3,0,0,1714,NULL,NULL,NULL,19.00,12.00,10.00,855.00,NULL,149580,'2024-04-18 23:52:03','2024-04-18 23:52:05','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(12,'Chic Fedora Hat (Digital)','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-1.png\"]','JH-176-A0',0,10,0,1,1,3,0,0,1844,1456.76,NULL,NULL,16.00,10.00,13.00,547.00,NULL,113362,'2024-04-18 23:52:03','2024-04-18 23:52:05','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(13,'Strappy Block Heel Sandals','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-1.png\"]','FX-131-A0',0,16,0,1,0,4,0,0,1405,NULL,NULL,NULL,11.00,10.00,12.00,605.00,NULL,16250,'2024-04-18 23:52:03','2024-04-18 23:52:05','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(14,'Velvet Evening Gown','Achieve a polished look with this tailored wool blazer, designed for a flattering fit and versatile enough for both work and casual outings.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-5.png\"]','NM-163-A0',0,15,0,1,0,1,0,0,1621,NULL,NULL,NULL,13.00,18.00,16.00,725.00,NULL,3884,'2024-04-18 23:52:03','2024-04-18 23:52:05','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(15,'Quilted Crossbody Bag','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]','KO-161',0,16,0,1,0,2,0,0,956,694,NULL,NULL,18.00,20.00,12.00,879.00,NULL,38905,'2024-04-18 23:52:03','2024-04-18 23:52:03','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(16,'Distressed Skinny Jeans (Digital)','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-4.png\"]','78-180',0,10,0,1,1,1,0,0,2442,775,NULL,NULL,10.00,15.00,13.00,709.00,NULL,3431,'2024-04-18 23:52:03','2024-04-18 23:52:03','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(17,'Lace-Up Combat Boots','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\"]','LO-147',0,14,0,1,1,4,0,0,2034,1355,NULL,NULL,20.00,18.00,19.00,573.00,NULL,152160,'2024-04-18 23:52:03','2024-04-18 23:52:03','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(18,'Cotton Striped T-Shirt Dress','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]','BL-181-A0',0,12,0,1,1,1,0,0,899,NULL,NULL,NULL,19.00,16.00,16.00,782.00,NULL,84817,'2024-04-18 23:52:04','2024-04-18 23:52:05','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(19,'Printed Palazzo Pants','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-2.png\"]','LW-164',0,14,0,1,1,2,0,0,1305,52,NULL,NULL,13.00,14.00,16.00,614.00,NULL,91473,'2024-04-18 23:52:04','2024-04-18 23:52:04','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(20,'Structured Satchel Bag (Digital)','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-1.png\"]','EG-156',0,15,0,1,1,1,0,0,1931,158,NULL,NULL,11.00,16.00,10.00,642.00,NULL,132119,'2024-04-18 23:52:04','2024-04-18 23:52:04','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(21,'Off-Shoulder Ruffle Top','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]','4D-116-A0',0,17,0,1,0,2,0,0,536,NULL,NULL,NULL,14.00,11.00,18.00,595.00,NULL,69055,'2024-04-18 23:52:04','2024-04-18 23:52:05','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(22,'Suede Pointed-Toe Pumps','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-5.png\"]','XT-166-A0',0,13,0,1,0,5,0,0,279,NULL,NULL,NULL,12.00,20.00,12.00,617.00,NULL,188577,'2024-04-18 23:52:04','2024-04-18 23:52:05','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(23,'Cropped Cable Knit Sweater','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\"]','YD-174-A0',0,17,0,1,1,1,0,0,1253,NULL,NULL,NULL,14.00,13.00,10.00,730.00,NULL,163721,'2024-04-18 23:52:04','2024-04-18 23:52:06','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(24,'Athleisure Jogger Pants (Digital)','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]','IJ-158',0,11,0,1,0,3,0,0,1600,392,NULL,NULL,18.00,13.00,10.00,693.00,NULL,9701,'2024-04-18 23:52:04','2024-04-18 23:52:04','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(25,'Leopard Print Midi Skirt','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\"]','VG-195-A0',0,12,0,1,1,1,0,0,481,NULL,NULL,NULL,15.00,11.00,19.00,844.00,NULL,171744,'2024-04-18 23:52:04','2024-04-18 23:52:06','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(26,'Retro Cat-Eye Sunglasses','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]','JS-200',0,11,0,1,1,3,0,0,1083,461,NULL,NULL,19.00,15.00,16.00,745.00,NULL,110252,'2024-04-18 23:52:04','2024-04-18 23:52:04','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(27,'Faux Fur Trimmed Coat','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-6.png\"]','8F-193',0,15,0,1,1,4,0,0,452,245,NULL,NULL,15.00,18.00,18.00,658.00,NULL,38440,'2024-04-18 23:52:04','2024-04-18 23:52:04','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(28,'Boho Fringed Kimono (Digital)','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]','TE-196-A0',0,19,0,1,0,1,0,0,2153,1873.11,NULL,NULL,20.00,15.00,19.00,662.00,NULL,31355,'2024-04-18 23:52:04','2024-04-18 23:52:06','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(29,'Ruffled Wrap Dress','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-2.png\"]','BM-100-A0',0,12,0,1,1,1,0,0,1750,NULL,NULL,NULL,18.00,14.00,14.00,812.00,NULL,168255,'2024-04-18 23:52:04','2024-04-18 23:52:06','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(30,'Beaded Evening Clutch','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]','6V-129-A0',0,12,0,1,1,5,0,0,448,NULL,NULL,NULL,18.00,17.00,17.00,833.00,NULL,127640,'2024-04-18 23:52:04','2024-04-18 23:52:06','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(31,'Wide Brim Floppy Hat','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]','EH-144-A0',0,19,0,1,1,5,0,0,795,NULL,NULL,NULL,15.00,17.00,19.00,823.00,NULL,129483,'2024-04-18 23:52:04','2024-04-18 23:52:06','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(32,'Denim Overall Jumpsuit (Digital)','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-1.png\"]','PB-103-A0',0,15,0,1,0,3,0,0,457,406.73,NULL,NULL,12.00,18.00,12.00,773.00,NULL,74030,'2024-04-18 23:52:04','2024-04-18 23:52:06','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(33,'Embellished Ballet Flats','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-4.png\"]','NR-123-A0',0,16,0,1,1,4,0,0,1245,NULL,NULL,NULL,18.00,14.00,10.00,540.00,NULL,87904,'2024-04-18 23:52:04','2024-04-18 23:52:06','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(34,'Pleated Midi Skirt','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-2.png\"]','DB-151',0,10,0,1,0,3,0,0,702,435,NULL,NULL,19.00,17.00,10.00,861.00,NULL,61541,'2024-04-18 23:52:04','2024-04-18 23:52:04','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(35,'Velour Tracksuit Set','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-2.png\"]','RR-200',0,20,0,1,0,3,0,0,1239,279,NULL,NULL,15.00,18.00,11.00,518.00,NULL,191944,'2024-04-18 23:52:04','2024-04-18 23:52:04','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(36,'Geometric Patterned Cardigan (Digital)','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\"]','SM-121-A0',0,18,0,1,0,2,0,0,2141,1498.7,NULL,NULL,11.00,11.00,17.00,845.00,NULL,94434,'2024-04-18 23:52:04','2024-04-18 23:52:06','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(37,'Buckle Detail Ankle Booties','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]','J9-197',0,20,0,1,1,2,0,0,1761,1375,NULL,NULL,20.00,16.00,20.00,815.00,NULL,77226,'2024-04-18 23:52:04','2024-04-18 23:52:04','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(38,'Embroidered Bomber Jacket','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]','E7-186',0,12,0,1,0,1,0,0,1110,863,NULL,NULL,12.00,13.00,12.00,708.00,NULL,191595,'2024-04-18 23:52:04','2024-04-18 23:52:04','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(39,'Cowl Neck Knit Poncho','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-5.png\"]','T3-143-A0',0,12,0,1,0,2,0,0,1356,NULL,NULL,NULL,19.00,20.00,19.00,893.00,NULL,10794,'2024-04-18 23:52:04','2024-04-18 23:52:06','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(40,'Chunky Knit Infinity Scarf (Digital)','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-3.png\"]','IQ-127',0,10,0,1,1,1,0,0,2351,737,NULL,NULL,12.00,18.00,17.00,588.00,NULL,101697,'2024-04-18 23:52:04','2024-04-18 23:52:04','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(41,'Retro High-Top Sneakers','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-1.png\"]','6V-104',0,14,0,1,1,2,0,0,1293,737,NULL,NULL,20.00,15.00,19.00,631.00,NULL,83983,'2024-04-18 23:52:04','2024-04-18 23:52:04','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(42,'Faux Leather Leggings','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]','G9-141-A0',0,14,0,1,0,4,0,0,1642,NULL,NULL,NULL,19.00,13.00,12.00,525.00,NULL,167121,'2024-04-18 23:52:04','2024-04-18 23:52:06','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(43,'Metallic Pleated Maxi Skirt','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-2.png\"]','IO-124-A0',0,20,0,1,1,2,0,0,617,NULL,NULL,NULL,15.00,16.00,10.00,651.00,NULL,47771,'2024-04-18 23:52:04','2024-04-18 23:52:06','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(44,'Floral Maxi Dress',NULL,NULL,'published','[\"beauty\\/products\\/product-8.png\"]','CD-104-A0',0,18,0,1,0,1,1,0,1831,NULL,NULL,NULL,14.00,18.00,10.00,683.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(45,'Floral Maxi Dress',NULL,NULL,'published','[\"beauty\\/products\\/product-4.png\"]','CD-104-A0-A1',0,18,0,1,0,1,1,0,1831,NULL,NULL,NULL,14.00,18.00,10.00,683.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(46,'Floral Maxi Dress',NULL,NULL,'published','[\"beauty\\/products\\/product-5.png\"]','CD-104-A0-A2',0,18,0,1,0,1,1,0,1831,NULL,NULL,NULL,14.00,18.00,10.00,683.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(47,'Tailored Wool Blazer',NULL,NULL,'published','[\"beauty\\/products\\/product-4.png\"]','HL-190-A0',0,19,0,1,0,3,1,0,2298,NULL,NULL,NULL,20.00,13.00,17.00,754.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(48,'High-Waisted Wide Leg Trousers',NULL,NULL,'published','[\"beauty\\/products\\/product-3.png\"]','CY-105-A0',0,19,0,1,0,5,1,0,2399,NULL,NULL,NULL,19.00,10.00,16.00,718.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(49,'High-Waisted Wide Leg Trousers',NULL,NULL,'published','[\"beauty\\/products\\/product-1.png\"]','CY-105-A0-A1',0,19,0,1,0,5,1,0,2399,NULL,NULL,NULL,19.00,10.00,16.00,718.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(50,'Statement Chunky Necklace',NULL,NULL,'published','[\"beauty\\/products\\/product-1.png\"]','BV-127-A0',0,15,0,1,0,3,1,0,1714,NULL,NULL,NULL,19.00,12.00,10.00,855.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(51,'Statement Chunky Necklace',NULL,NULL,'published','[\"beauty\\/products\\/product-3.png\"]','BV-127-A0-A1',0,15,0,1,0,3,1,0,1714,NULL,NULL,NULL,19.00,12.00,10.00,855.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(52,'Chic Fedora Hat (Digital)',NULL,NULL,'published','[\"beauty\\/products\\/product-5.png\"]','JH-176-A0',0,10,0,1,0,3,1,0,1844,1456.76,NULL,NULL,16.00,10.00,13.00,547.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(53,'Chic Fedora Hat (Digital)',NULL,NULL,'published','[\"beauty\\/products\\/product-4.png\"]','JH-176-A0-A1',0,10,0,1,0,3,1,0,1844,1290.8,NULL,NULL,16.00,10.00,13.00,547.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(54,'Chic Fedora Hat (Digital)',NULL,NULL,'published','[\"beauty\\/products\\/product-3.png\"]','JH-176-A0-A2',0,10,0,1,0,3,1,0,1844,1419.88,NULL,NULL,16.00,10.00,13.00,547.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(55,'Strappy Block Heel Sandals',NULL,NULL,'published','[\"beauty\\/products\\/product-2.png\"]','FX-131-A0',0,16,0,1,0,4,1,0,1405,NULL,NULL,NULL,11.00,10.00,12.00,605.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(56,'Strappy Block Heel Sandals',NULL,NULL,'published','[\"beauty\\/products\\/product-4.png\"]','FX-131-A0-A1',0,16,0,1,0,4,1,0,1405,NULL,NULL,NULL,11.00,10.00,12.00,605.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(57,'Strappy Block Heel Sandals',NULL,NULL,'published','[\"beauty\\/products\\/product-1.png\"]','FX-131-A0-A2',0,16,0,1,0,4,1,0,1405,NULL,NULL,NULL,11.00,10.00,12.00,605.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(58,'Velvet Evening Gown',NULL,NULL,'published','[\"beauty\\/products\\/product-8.png\"]','NM-163-A0',0,15,0,1,0,1,1,0,1621,NULL,NULL,NULL,13.00,18.00,16.00,725.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(59,'Velvet Evening Gown',NULL,NULL,'published','[\"beauty\\/products\\/product-6.png\"]','NM-163-A0-A1',0,15,0,1,0,1,1,0,1621,NULL,NULL,NULL,13.00,18.00,16.00,725.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(60,'Cotton Striped T-Shirt Dress',NULL,NULL,'published','[\"beauty\\/products\\/product-3.png\"]','BL-181-A0',0,12,0,1,0,1,1,0,899,NULL,NULL,NULL,19.00,16.00,16.00,782.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(61,'Cotton Striped T-Shirt Dress',NULL,NULL,'published','[\"beauty\\/products\\/product-2.png\"]','BL-181-A0-A1',0,12,0,1,0,1,1,0,899,NULL,NULL,NULL,19.00,16.00,16.00,782.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(62,'Cotton Striped T-Shirt Dress',NULL,NULL,'published','[\"beauty\\/products\\/product-1.png\"]','BL-181-A0-A2',0,12,0,1,0,1,1,0,899,NULL,NULL,NULL,19.00,16.00,16.00,782.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(63,'Cotton Striped T-Shirt Dress',NULL,NULL,'published','[\"beauty\\/products\\/product-6.png\"]','BL-181-A0-A3',0,12,0,1,0,1,1,0,899,NULL,NULL,NULL,19.00,16.00,16.00,782.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(64,'Off-Shoulder Ruffle Top',NULL,NULL,'published','[\"beauty\\/products\\/product-4.png\"]','4D-116-A0',0,17,0,1,0,2,1,0,536,NULL,NULL,NULL,14.00,11.00,18.00,595.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(65,'Off-Shoulder Ruffle Top',NULL,NULL,'published','[\"beauty\\/products\\/product-6.png\"]','4D-116-A0-A1',0,17,0,1,0,2,1,0,536,NULL,NULL,NULL,14.00,11.00,18.00,595.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(66,'Off-Shoulder Ruffle Top',NULL,NULL,'published','[\"beauty\\/products\\/product-2.png\"]','4D-116-A0-A2',0,17,0,1,0,2,1,0,536,NULL,NULL,NULL,14.00,11.00,18.00,595.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(67,'Suede Pointed-Toe Pumps',NULL,NULL,'published','[\"beauty\\/products\\/product-4.png\"]','XT-166-A0',0,13,0,1,0,5,1,0,279,NULL,NULL,NULL,12.00,20.00,12.00,617.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(68,'Suede Pointed-Toe Pumps',NULL,NULL,'published','[\"beauty\\/products\\/product-7.png\"]','XT-166-A0-A1',0,13,0,1,0,5,1,0,279,NULL,NULL,NULL,12.00,20.00,12.00,617.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(69,'Suede Pointed-Toe Pumps',NULL,NULL,'published','[\"beauty\\/products\\/product-5.png\"]','XT-166-A0-A2',0,13,0,1,0,5,1,0,279,NULL,NULL,NULL,12.00,20.00,12.00,617.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(70,'Suede Pointed-Toe Pumps',NULL,NULL,'published','[\"beauty\\/products\\/product-4.png\"]','XT-166-A0-A3',0,13,0,1,0,5,1,0,279,NULL,NULL,NULL,12.00,20.00,12.00,617.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(71,'Suede Pointed-Toe Pumps',NULL,NULL,'published','[\"beauty\\/products\\/product-4.png\"]','XT-166-A0-A4',0,13,0,1,0,5,1,0,279,NULL,NULL,NULL,12.00,20.00,12.00,617.00,NULL,0,'2024-04-18 23:52:05','2024-04-18 23:52:05','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(72,'Cropped Cable Knit Sweater',NULL,NULL,'published','[\"beauty\\/products\\/product-2.png\"]','YD-174-A0',0,17,0,1,0,1,1,0,1253,NULL,NULL,NULL,14.00,13.00,10.00,730.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(73,'Cropped Cable Knit Sweater',NULL,NULL,'published','[\"beauty\\/products\\/product-1.png\"]','YD-174-A0-A1',0,17,0,1,0,1,1,0,1253,NULL,NULL,NULL,14.00,13.00,10.00,730.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(74,'Leopard Print Midi Skirt',NULL,NULL,'published','[\"beauty\\/products\\/product-7.png\"]','VG-195-A0',0,12,0,1,0,1,1,0,481,NULL,NULL,NULL,15.00,11.00,19.00,844.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(75,'Boho Fringed Kimono (Digital)',NULL,NULL,'published','[\"beauty\\/products\\/product-1.png\"]','TE-196-A0',0,19,0,1,0,1,1,0,2153,1873.11,NULL,NULL,20.00,15.00,19.00,662.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(76,'Boho Fringed Kimono (Digital)',NULL,NULL,'published','[\"beauty\\/products\\/product-7.png\"]','TE-196-A0-A1',0,19,0,1,0,1,1,0,2153,1916.17,NULL,NULL,20.00,15.00,19.00,662.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(77,'Boho Fringed Kimono (Digital)',NULL,NULL,'published','[\"beauty\\/products\\/product-2.png\"]','TE-196-A0-A2',0,19,0,1,0,1,1,0,2153,1636.28,NULL,NULL,20.00,15.00,19.00,662.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(78,'Ruffled Wrap Dress',NULL,NULL,'published','[\"beauty\\/products\\/product-4.png\"]','BM-100-A0',0,12,0,1,0,1,1,0,1750,NULL,NULL,NULL,18.00,14.00,14.00,812.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(79,'Ruffled Wrap Dress',NULL,NULL,'published','[\"beauty\\/products\\/product-3.png\"]','BM-100-A0-A1',0,12,0,1,0,1,1,0,1750,NULL,NULL,NULL,18.00,14.00,14.00,812.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(80,'Beaded Evening Clutch',NULL,NULL,'published','[\"beauty\\/products\\/product-2.png\"]','6V-129-A0',0,12,0,1,0,5,1,0,448,NULL,NULL,NULL,18.00,17.00,17.00,833.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(81,'Beaded Evening Clutch',NULL,NULL,'published','[\"beauty\\/products\\/product-7.png\"]','6V-129-A0-A1',0,12,0,1,0,5,1,0,448,NULL,NULL,NULL,18.00,17.00,17.00,833.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(82,'Beaded Evening Clutch',NULL,NULL,'published','[\"beauty\\/products\\/product-6.png\"]','6V-129-A0-A2',0,12,0,1,0,5,1,0,448,NULL,NULL,NULL,18.00,17.00,17.00,833.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(83,'Wide Brim Floppy Hat',NULL,NULL,'published','[\"beauty\\/products\\/product-8.png\"]','EH-144-A0',0,19,0,1,0,5,1,0,795,NULL,NULL,NULL,15.00,17.00,19.00,823.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(84,'Wide Brim Floppy Hat',NULL,NULL,'published','[\"beauty\\/products\\/product-3.png\"]','EH-144-A0-A1',0,19,0,1,0,5,1,0,795,NULL,NULL,NULL,15.00,17.00,19.00,823.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(85,'Wide Brim Floppy Hat',NULL,NULL,'published','[\"beauty\\/products\\/product-1.png\"]','EH-144-A0-A2',0,19,0,1,0,5,1,0,795,NULL,NULL,NULL,15.00,17.00,19.00,823.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(86,'Denim Overall Jumpsuit (Digital)',NULL,NULL,'published','[\"beauty\\/products\\/product-3.png\"]','PB-103-A0',0,15,0,1,0,3,1,0,457,406.73,NULL,NULL,12.00,18.00,12.00,773.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(87,'Denim Overall Jumpsuit (Digital)',NULL,NULL,'published','[\"beauty\\/products\\/product-2.png\"]','PB-103-A0-A1',0,15,0,1,0,3,1,0,457,319.9,NULL,NULL,12.00,18.00,12.00,773.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(88,'Embellished Ballet Flats',NULL,NULL,'published','[\"beauty\\/products\\/product-1.png\"]','NR-123-A0',0,16,0,1,0,4,1,0,1245,NULL,NULL,NULL,18.00,14.00,10.00,540.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(89,'Embellished Ballet Flats',NULL,NULL,'published','[\"beauty\\/products\\/product-2.png\"]','NR-123-A0-A1',0,16,0,1,0,4,1,0,1245,NULL,NULL,NULL,18.00,14.00,10.00,540.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(90,'Geometric Patterned Cardigan (Digital)',NULL,NULL,'published','[\"beauty\\/products\\/product-3.png\"]','SM-121-A0',0,18,0,1,0,2,1,0,2141,1498.7,NULL,NULL,11.00,11.00,17.00,845.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(91,'Geometric Patterned Cardigan (Digital)',NULL,NULL,'published','[\"beauty\\/products\\/product-1.png\"]','SM-121-A0-A1',0,18,0,1,0,2,1,0,2141,1884.08,NULL,NULL,11.00,11.00,17.00,845.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(92,'Geometric Patterned Cardigan (Digital)',NULL,NULL,'published','[\"beauty\\/products\\/product-2.png\"]','SM-121-A0-A2',0,18,0,1,0,2,1,0,2141,1926.9,NULL,NULL,11.00,11.00,17.00,845.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(93,'Cowl Neck Knit Poncho',NULL,NULL,'published','[\"beauty\\/products\\/product-3.png\"]','T3-143-A0',0,12,0,1,0,2,1,0,1356,NULL,NULL,NULL,19.00,20.00,19.00,893.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(94,'Cowl Neck Knit Poncho',NULL,NULL,'published','[\"beauty\\/products\\/product-7.png\"]','T3-143-A0-A1',0,12,0,1,0,2,1,0,1356,NULL,NULL,NULL,19.00,20.00,19.00,893.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(95,'Cowl Neck Knit Poncho',NULL,NULL,'published','[\"beauty\\/products\\/product-5.png\"]','T3-143-A0-A2',0,12,0,1,0,2,1,0,1356,NULL,NULL,NULL,19.00,20.00,19.00,893.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(96,'Faux Leather Leggings',NULL,NULL,'published','[\"beauty\\/products\\/product-8.png\"]','G9-141-A0',0,14,0,1,0,4,1,0,1642,NULL,NULL,NULL,19.00,13.00,12.00,525.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(97,'Faux Leather Leggings',NULL,NULL,'published','[\"beauty\\/products\\/product-5.png\"]','G9-141-A0-A1',0,14,0,1,0,4,1,0,1642,NULL,NULL,NULL,19.00,13.00,12.00,525.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(98,'Metallic Pleated Maxi Skirt',NULL,NULL,'published','[\"beauty\\/products\\/product-6.png\"]','IO-124-A0',0,20,0,1,0,2,1,0,617,NULL,NULL,NULL,15.00,16.00,10.00,651.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(99,'Metallic Pleated Maxi Skirt',NULL,NULL,'published','[\"beauty\\/products\\/product-8.png\"]','IO-124-A0-A1',0,20,0,1,0,2,1,0,617,NULL,NULL,NULL,15.00,16.00,10.00,651.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(100,'Metallic Pleated Maxi Skirt',NULL,NULL,'published','[\"beauty\\/products\\/product-3.png\"]','IO-124-A0-A2',0,20,0,1,0,2,1,0,617,NULL,NULL,NULL,15.00,16.00,10.00,651.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(101,'Metallic Pleated Maxi Skirt',NULL,NULL,'published','[\"beauty\\/products\\/product-1.png\"]','IO-124-A0-A3',0,20,0,1,0,2,1,0,617,NULL,NULL,NULL,15.00,16.00,10.00,651.00,NULL,0,'2024-04-18 23:52:06','2024-04-18 23:52:06','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,6,NULL,NULL,38,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(2,4,NULL,NULL,21,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(3,3,NULL,NULL,21,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\"]'),(4,9,NULL,NULL,32,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\"]'),(5,7,NULL,NULL,32,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(6,5,NULL,NULL,18,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(7,8,NULL,NULL,27,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(8,1,NULL,NULL,39,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(9,7,NULL,NULL,12,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(10,6,NULL,NULL,41,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(11,6,NULL,NULL,28,4.00,'Clean & perfect source code','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\"]'),(12,6,NULL,NULL,40,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(13,9,NULL,NULL,24,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-8.png\"]'),(14,1,NULL,NULL,8,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(15,4,NULL,NULL,33,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\"]'),(16,9,NULL,NULL,26,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\"]'),(17,1,NULL,NULL,22,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\"]'),(18,6,NULL,NULL,43,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(19,2,NULL,NULL,6,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(20,8,NULL,NULL,29,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(21,7,NULL,NULL,34,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\"]'),(22,5,NULL,NULL,4,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\"]'),(23,7,NULL,NULL,41,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\"]'),(24,7,NULL,NULL,4,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\"]'),(25,5,NULL,NULL,14,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(26,3,NULL,NULL,22,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(27,2,NULL,NULL,42,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(28,3,NULL,NULL,20,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(29,2,NULL,NULL,25,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-6.png\"]'),(30,7,NULL,NULL,29,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(31,10,NULL,NULL,15,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(32,1,NULL,NULL,5,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(33,2,NULL,NULL,12,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\"]'),(34,3,NULL,NULL,7,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(35,8,NULL,NULL,7,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(36,8,NULL,NULL,42,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(37,4,NULL,NULL,18,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(38,8,NULL,NULL,10,1.00,'Clean & perfect source code','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(39,2,NULL,NULL,20,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(40,4,NULL,NULL,4,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\"]'),(41,7,NULL,NULL,24,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(42,9,NULL,NULL,43,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(43,10,NULL,NULL,18,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-6.png\"]'),(44,5,NULL,NULL,21,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-7.png\"]'),(46,2,NULL,NULL,27,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\"]'),(47,4,NULL,NULL,10,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]'),(48,10,NULL,NULL,30,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(49,6,NULL,NULL,32,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\"]'),(50,2,NULL,NULL,38,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(51,7,NULL,NULL,15,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\"]'),(52,8,NULL,NULL,26,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(53,5,NULL,NULL,9,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\"]'),(54,3,NULL,NULL,41,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(55,10,NULL,NULL,39,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(56,6,NULL,NULL,15,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\"]'),(59,9,NULL,NULL,36,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\"]'),(60,9,NULL,NULL,31,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(61,9,NULL,NULL,1,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(63,9,NULL,NULL,19,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(65,3,NULL,NULL,16,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(66,7,NULL,NULL,17,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(67,6,NULL,NULL,16,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(69,5,NULL,NULL,33,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(70,7,NULL,NULL,37,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\"]'),(71,9,NULL,NULL,6,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(72,8,NULL,NULL,36,2.00,'Good app, good backup service and support. Good documentation.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\"]'),(73,1,NULL,NULL,42,4.00,'Best ecommerce CMS online store!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\"]'),(74,3,NULL,NULL,10,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(75,8,NULL,NULL,9,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\"]'),(76,10,NULL,NULL,4,3.00,'Best ecommerce CMS online store!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\"]'),(77,5,NULL,NULL,8,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\"]'),(78,2,NULL,NULL,9,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\"]'),(79,3,NULL,NULL,11,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(80,9,NULL,NULL,25,3.00,'Best ecommerce CMS online store!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\"]'),(81,1,NULL,NULL,38,1.00,'Best ecommerce CMS online store!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(82,8,NULL,NULL,11,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(83,5,NULL,NULL,32,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(84,7,NULL,NULL,38,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(85,3,NULL,NULL,38,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(86,6,NULL,NULL,19,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(87,7,NULL,NULL,6,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\"]'),(89,3,NULL,NULL,33,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\"]'),(90,2,NULL,NULL,28,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(91,1,NULL,NULL,29,5.00,'Best ecommerce CMS online store!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\"]'),(92,8,NULL,NULL,23,5.00,'Good app, good backup service and support. Good documentation.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(93,3,NULL,NULL,13,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(94,4,NULL,NULL,14,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(96,1,NULL,NULL,32,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\"]'),(98,6,NULL,NULL,7,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(100,8,NULL,NULL,12,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\"]'),(101,9,NULL,NULL,33,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(102,6,NULL,NULL,4,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\"]'),(103,10,NULL,NULL,3,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\"]'),(104,7,NULL,NULL,25,3.00,'Good app, good backup service and support. Good documentation.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-6.png\"]'),(105,9,NULL,NULL,27,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(106,5,NULL,NULL,36,4.00,'Clean & perfect source code','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(107,6,NULL,NULL,35,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-6.png\"]'),(112,3,NULL,NULL,5,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(114,4,NULL,NULL,24,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]'),(115,2,NULL,NULL,33,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(116,6,NULL,NULL,26,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-7.png\"]'),(118,4,NULL,NULL,36,3.00,'Clean & perfect source code','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\"]'),(119,5,NULL,NULL,39,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\"]'),(121,4,NULL,NULL,22,4.00,'Best ecommerce CMS online store!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\"]'),(123,7,NULL,NULL,31,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(124,7,NULL,NULL,42,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\"]'),(126,5,NULL,NULL,10,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\"]'),(127,8,NULL,NULL,37,3.00,'Good app, good backup service and support. Good documentation.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-8.png\"]'),(128,3,NULL,NULL,1,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\"]'),(129,3,NULL,NULL,24,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(130,1,NULL,NULL,4,3.00,'Good app, good backup service and support. Good documentation.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\"]'),(131,1,NULL,NULL,6,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(132,3,NULL,NULL,9,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\"]'),(133,3,NULL,NULL,42,5.00,'Best ecommerce CMS online store!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]'),(134,2,NULL,NULL,32,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\"]'),(135,7,NULL,NULL,43,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\"]'),(136,8,NULL,NULL,18,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(138,6,NULL,NULL,12,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(139,2,NULL,NULL,3,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\"]'),(140,10,NULL,NULL,40,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(141,6,NULL,NULL,25,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(143,2,NULL,NULL,35,3.00,'Good app, good backup service and support. Good documentation.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(145,2,NULL,NULL,29,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(146,7,NULL,NULL,14,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(148,8,NULL,NULL,8,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-8.png\"]'),(151,3,NULL,NULL,40,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(153,9,NULL,NULL,5,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(154,1,NULL,NULL,15,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\"]'),(155,6,NULL,NULL,18,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(156,8,NULL,NULL,40,2.00,'Good app, good backup service and support. Good documentation.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\"]'),(158,9,NULL,NULL,30,4.00,'Best ecommerce CMS online store!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(159,4,NULL,NULL,16,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(160,5,NULL,NULL,22,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(161,2,NULL,NULL,23,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\"]'),(162,7,NULL,NULL,23,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-8.png\"]'),(164,7,NULL,NULL,7,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]'),(165,6,NULL,NULL,20,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(167,3,NULL,NULL,31,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(168,10,NULL,NULL,12,2.00,'Good app, good backup service and support. Good documentation.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(169,10,NULL,NULL,11,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(170,1,NULL,NULL,23,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(172,7,NULL,NULL,3,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(174,2,NULL,NULL,22,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(175,7,NULL,NULL,9,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\"]'),(177,3,NULL,NULL,12,4.00,'Good app, good backup service and support. Good documentation.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(178,5,NULL,NULL,20,2.00,'Best ecommerce CMS online store!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(179,1,NULL,NULL,11,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(180,5,NULL,NULL,17,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(181,6,NULL,NULL,21,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\"]'),(183,10,NULL,NULL,27,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(184,5,NULL,NULL,5,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(186,5,NULL,NULL,2,2.00,'Clean & perfect source code','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\"]'),(188,4,NULL,NULL,28,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-8.png\"]'),(191,6,NULL,NULL,17,2.00,'Good app, good backup service and support. Good documentation.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\"]'),(192,2,NULL,NULL,31,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(194,3,NULL,NULL,4,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(195,3,NULL,NULL,30,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(200,1,NULL,NULL,12,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(201,10,NULL,NULL,38,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\"]'),(202,8,NULL,NULL,24,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(204,9,NULL,NULL,18,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(205,4,NULL,NULL,39,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\"]'),(207,9,NULL,NULL,20,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(208,7,NULL,NULL,40,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\"]'),(209,4,NULL,NULL,19,2.00,'Best ecommerce CMS online store!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(210,9,NULL,NULL,40,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-8.png\"]'),(211,5,NULL,NULL,29,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-8.png\"]'),(214,4,NULL,NULL,23,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-7.png\"]'),(215,3,NULL,NULL,32,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\"]'),(216,7,NULL,NULL,33,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(217,3,NULL,NULL,19,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(218,4,NULL,NULL,20,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(220,8,NULL,NULL,4,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\"]'),(222,10,NULL,NULL,10,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-8.png\"]'),(224,5,NULL,NULL,12,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(225,2,NULL,NULL,34,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(227,10,NULL,NULL,20,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-6.png\"]'),(229,4,NULL,NULL,43,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\"]'),(230,6,NULL,NULL,24,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\"]'),(231,3,NULL,NULL,23,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(232,10,NULL,NULL,35,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(233,7,NULL,NULL,1,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\"]'),(236,9,NULL,NULL,7,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\"]'),(238,2,NULL,NULL,16,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(239,5,NULL,NULL,24,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\"]'),(240,10,NULL,NULL,43,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(242,10,NULL,NULL,7,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(245,5,NULL,NULL,38,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(246,2,NULL,NULL,40,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\"]'),(248,10,NULL,NULL,6,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\"]'),(250,2,NULL,NULL,1,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\"]'),(252,8,NULL,NULL,41,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(253,10,NULL,NULL,36,1.00,'Best ecommerce CMS online store!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\"]'),(254,1,NULL,NULL,25,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(256,5,NULL,NULL,11,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(258,1,NULL,NULL,27,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\"]'),(259,2,NULL,NULL,18,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\"]'),(261,10,NULL,NULL,31,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-6.png\"]'),(263,5,NULL,NULL,42,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\"]'),(265,9,NULL,NULL,29,4.00,'Clean & perfect source code','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(266,5,NULL,NULL,28,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(267,6,NULL,NULL,10,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\"]'),(268,6,NULL,NULL,2,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\"]'),(271,3,NULL,NULL,18,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(272,2,NULL,NULL,39,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(278,1,NULL,NULL,43,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\"]'),(281,2,NULL,NULL,4,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\"]'),(282,7,NULL,NULL,21,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-6.png\"]'),(284,6,NULL,NULL,14,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(286,10,NULL,NULL,32,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(289,7,NULL,NULL,18,1.00,'Clean & perfect source code','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(290,3,NULL,NULL,37,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\"]'),(292,10,NULL,NULL,28,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(293,9,NULL,NULL,15,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(294,9,NULL,NULL,9,5.00,'Clean & perfect source code','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(295,9,NULL,NULL,42,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\"]'),(296,6,NULL,NULL,9,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(298,1,NULL,NULL,17,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\"]'),(301,1,NULL,NULL,10,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(302,7,NULL,NULL,39,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(305,1,NULL,NULL,40,4.00,'Good app, good backup service and support. Good documentation.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(306,3,NULL,NULL,35,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(308,4,NULL,NULL,31,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(309,7,NULL,NULL,16,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-8.png\"]'),(311,5,NULL,NULL,34,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(315,9,NULL,NULL,28,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\"]'),(319,1,NULL,NULL,31,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(321,5,NULL,NULL,37,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-6.png\"]'),(326,4,NULL,NULL,37,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(329,8,NULL,NULL,35,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(330,6,NULL,NULL,22,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(334,3,NULL,NULL,34,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-6.png\"]'),(342,2,NULL,NULL,21,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\"]'),(344,1,NULL,NULL,20,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(345,10,NULL,NULL,9,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(347,4,NULL,NULL,40,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(349,4,NULL,NULL,2,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\"]'),(351,10,NULL,NULL,13,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(352,3,NULL,NULL,26,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(355,4,NULL,NULL,26,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\"]'),(356,2,NULL,NULL,14,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(361,1,NULL,NULL,2,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(363,10,NULL,NULL,25,4.00,'Clean & perfect source code','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(365,5,NULL,NULL,16,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(368,2,NULL,NULL,36,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\"]'),(371,3,NULL,NULL,43,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-6.png\"]'),(373,8,NULL,NULL,34,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(375,6,NULL,NULL,6,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\"]'),(379,1,NULL,NULL,21,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(382,1,NULL,NULL,19,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(385,5,NULL,NULL,1,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\"]'),(389,5,NULL,NULL,40,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\"]'),(393,10,NULL,NULL,26,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\"]'),(394,5,NULL,NULL,3,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(397,3,NULL,NULL,36,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\"]'),(398,6,NULL,NULL,30,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(401,7,NULL,NULL,11,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\"]'),(403,4,NULL,NULL,35,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(408,10,NULL,NULL,17,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(410,1,NULL,NULL,35,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(411,6,NULL,NULL,27,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(413,9,NULL,NULL,41,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\"]'),(416,7,NULL,NULL,20,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-8.png\"]'),(423,8,NULL,NULL,13,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(424,9,NULL,NULL,8,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(428,2,NULL,NULL,5,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\"]'),(429,10,NULL,NULL,21,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(432,8,NULL,NULL,38,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(433,1,NULL,NULL,30,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]'),(441,7,NULL,NULL,19,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-6.png\"]'),(447,7,NULL,NULL,30,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-8.png\"]'),(452,5,NULL,NULL,35,2.00,'Good app, good backup service and support. Good documentation.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]'),(453,9,NULL,NULL,13,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(454,2,NULL,NULL,7,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\"]'),(455,8,NULL,NULL,28,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(461,4,NULL,NULL,13,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-6.png\"]'),(462,7,NULL,NULL,35,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(463,1,NULL,NULL,9,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(464,2,NULL,NULL,13,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(465,9,NULL,NULL,3,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(470,7,NULL,NULL,5,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\"]'),(472,8,NULL,NULL,43,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\"]'),(473,6,NULL,NULL,1,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(477,4,NULL,NULL,11,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-6.png\"]'),(480,9,NULL,NULL,34,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(481,6,NULL,NULL,34,3.00,'Best ecommerce CMS online store!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\"]'),(482,6,NULL,NULL,33,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\"]'),(493,9,NULL,NULL,14,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(496,3,NULL,NULL,39,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\"]'),(505,3,NULL,NULL,14,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\"]'),(508,4,NULL,NULL,17,2.00,'Good app, good backup service and support. Good documentation.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(509,6,NULL,NULL,8,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-7.png\"]'),(510,8,NULL,NULL,15,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-8.png\"]'),(512,4,NULL,NULL,32,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\"]'),(516,1,NULL,NULL,24,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(518,3,NULL,NULL,15,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(520,3,NULL,NULL,29,3.00,'Best ecommerce CMS online store!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(521,10,NULL,NULL,8,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-8.png\"]'),(522,1,NULL,NULL,33,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(523,10,NULL,NULL,14,5.00,'Clean & perfect source code','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(527,6,NULL,NULL,39,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(528,3,NULL,NULL,27,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(531,9,NULL,NULL,10,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\"]'),(533,4,NULL,NULL,8,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(536,7,NULL,NULL,27,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(538,9,NULL,NULL,4,4.00,'Good app, good backup service and support. Good documentation.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\"]'),(539,10,NULL,NULL,24,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(540,2,NULL,NULL,24,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(541,7,NULL,NULL,22,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(544,2,NULL,NULL,26,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(545,4,NULL,NULL,7,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(546,3,NULL,NULL,3,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(549,1,NULL,NULL,13,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(551,8,NULL,NULL,19,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\"]'),(553,4,NULL,NULL,34,1.00,'Best ecommerce CMS online store!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(557,4,NULL,NULL,41,1.00,'Good app, good backup service and support. Good documentation.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\"]'),(561,8,NULL,NULL,17,1.00,'Clean & perfect source code','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(562,7,NULL,NULL,26,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(564,8,NULL,NULL,32,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(575,2,NULL,NULL,17,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(576,10,NULL,NULL,37,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(577,1,NULL,NULL,18,5.00,'Clean & perfect source code','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(580,6,NULL,NULL,11,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\"]'),(589,4,NULL,NULL,38,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(601,6,NULL,NULL,36,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-6.png\"]'),(603,9,NULL,NULL,21,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\"]'),(604,5,NULL,NULL,30,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(606,2,NULL,NULL,11,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(611,9,NULL,NULL,22,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(613,9,NULL,NULL,23,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-8.png\"]'),(620,4,NULL,NULL,9,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(621,9,NULL,NULL,11,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\"]'),(627,2,NULL,NULL,30,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(628,5,NULL,NULL,26,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(630,10,NULL,NULL,33,1.00,'Good app, good backup service and support. Good documentation.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\"]'),(635,7,NULL,NULL,2,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\"]'),(654,9,NULL,NULL,37,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(659,7,NULL,NULL,13,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\"]'),(663,10,NULL,NULL,1,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(665,10,NULL,NULL,42,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\"]'),(668,4,NULL,NULL,12,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(669,6,NULL,NULL,31,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\"]'),(676,2,NULL,NULL,15,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\"]'),(680,7,NULL,NULL,28,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(681,8,NULL,NULL,2,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\"]'),(682,1,NULL,NULL,7,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(710,5,NULL,NULL,7,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\"]'),(714,3,NULL,NULL,17,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\"]'),(719,4,NULL,NULL,5,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(728,3,NULL,NULL,28,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\"]'),(730,9,NULL,NULL,2,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\"]'),(737,6,NULL,NULL,23,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\"]'),(742,5,NULL,NULL,27,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\"]'),(755,6,NULL,NULL,37,2.00,'Clean & perfect source code','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(765,10,NULL,NULL,23,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(772,3,NULL,NULL,6,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(778,1,NULL,NULL,37,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\"]'),(788,2,NULL,NULL,10,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\"]'),(789,6,NULL,NULL,29,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\"]'),(790,5,NULL,NULL,41,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(791,4,NULL,NULL,1,2.00,'Good app, good backup service and support. Good documentation.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(798,1,NULL,NULL,41,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(799,4,NULL,NULL,6,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(815,7,NULL,NULL,36,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-5.png\"]'),(820,6,NULL,NULL,3,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(830,1,NULL,NULL,14,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(833,6,NULL,NULL,5,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(839,8,NULL,NULL,3,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(843,8,NULL,NULL,22,3.00,'Clean & perfect source code','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-7.png\"]'),(852,8,NULL,NULL,33,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(854,5,NULL,NULL,6,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(856,7,NULL,NULL,8,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(866,1,NULL,NULL,34,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]'),(870,8,NULL,NULL,20,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\"]'),(880,2,NULL,NULL,2,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(886,10,NULL,NULL,2,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(894,7,NULL,NULL,10,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(920,5,NULL,NULL,25,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\"]'),(944,1,NULL,NULL,28,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\"]'),(945,8,NULL,NULL,30,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\"]'),(947,8,NULL,NULL,31,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]'),(950,1,NULL,NULL,16,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(956,10,NULL,NULL,41,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(961,4,NULL,NULL,29,3.00,'Best ecommerce CMS online store!','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-6.png\"]'),(969,5,NULL,NULL,15,3.00,'Clean & perfect source code','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(972,4,NULL,NULL,30,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\"]'),(983,8,NULL,NULL,14,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-8.png\"]'),(984,1,NULL,NULL,36,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(985,10,NULL,NULL,19,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-18 23:52:07','2024-04-18 23:52:07','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-04-18 23:51:57','2024-04-18 23:51:57');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2024-04-18 23:51:57','2024-04-18 23:51:57');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Shofy','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2024-04-18 23:51:59','2024-04-18 23:51:59');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,5),(1,6),(1,7),(1,8),(1,10),(1,11),(1,15),(1,16),(1,19),(1,21),(1,22),(1,26),(1,29),(1,37),(1,39),(2,2),(2,12),(2,17),(2,18),(2,23),(2,24),(2,27),(2,35),(2,38),(2,41),(3,1),(3,3),(3,4),(3,9),(3,13),(3,14),(3,20),(3,25),(3,28),(3,30),(3,31),(3,32),(3,33),(3,34),(3,36),(3,40),(3,42),(3,43);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-04-18 23:51:57','2024-04-18 23:51:57'),(2,'None',0.000000,2,'published','2024-04-18 23:51:57','2024-04-18 23:51:57'),(3,'Import Tax',15.000000,3,'published','2024-04-18 23:51:57','2024-04-18 23:51:57');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2024-04-18 23:51:54','2024-04-18 23:51:54',NULL),(2,'PAYMENT',1,'published','2024-04-18 23:51:54','2024-04-18 23:51:54',NULL),(3,'ORDER &amp; RETURNS',2,'published','2024-04-18 23:51:54','2024-04-18 23:51:54',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-04-18 23:51:54','2024-04-18 23:51:54'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-04-18 23:51:54','2024-04-18 23:51:54'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-04-18 23:51:54','2024-04-18 23:51:54'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-04-18 23:51:54','2024-04-18 23:51:54'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-04-18 23:51:54','2024-04-18 23:51:54'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-04-18 23:51:54','2024-04-18 23:51:54'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-04-18 23:51:54','2024-04-18 23:51:54'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-04-18 23:51:54','2024-04-18 23:51:54'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-04-18 23:51:54','2024-04-18 23:51:54'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-04-18 23:51:54','2024-04-18 23:51:54');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Radiant Reflections','As she said to herself, and began picking them up again with a sigh: \'he taught Laughing and Grief, they used to know. Let me see: four times six is thirteen, and four times six is thirteen, and.',1,0,'beauty/galleries/1.jpg',1,'published','2024-04-18 23:52:07','2024-04-18 23:52:07'),(2,'Glamour Grove','ME.\' \'You!\' said the Caterpillar. Here was another long passage, and the poor child, \'for I never heard it say to itself, \'Oh dear! Oh dear! I\'d nearly forgotten to ask.\' \'It turned into a.',1,0,'beauty/galleries/2.jpg',1,'published','2024-04-18 23:52:07','2024-04-18 23:52:07'),(3,'Serene Styles Showcase','First, however, she again heard a little quicker. \'What a curious dream!\' said Alice, \'and why it is all the time they were trying to make SOME change in my kitchen AT ALL. Soup does very well as.',1,0,'beauty/galleries/3.jpg',1,'published','2024-04-18 23:52:07','2024-04-18 23:52:07'),(4,'Allure Alcove','QUITE as much use in crying like that!\' But she did not see anything that had made her so savage when they passed too close, and waving their forepaws to mark the time, while the rest of it in less.',1,0,'beauty/galleries/4.jpg',1,'published','2024-04-18 23:52:07','2024-04-18 23:52:07'),(5,'Glamour Galleria','Alice could bear: she got to the door. \'Call the next witness would be quite as safe to stay in here any longer!\' She waited for some way, and then all the unjust things--\' when his eye chanced to.',1,0,'beauty/galleries/5.jpg',1,'published','2024-04-18 23:52:07','2024-04-18 23:52:07'),(6,'Beauty Boulevard','On which Seven looked up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t know that you\'re mad?\' \'To begin with,\' said the Gryphon. \'Well, I can\'t show it you myself,\' the Mock.',1,0,'beauty/galleries/6.jpg',1,'published','2024-04-18 23:52:07','2024-04-18 23:52:07');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"beauty\\/galleries\\/1.jpg\",\"description\":\"At this moment the door opened inwards, and Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice heard the Queen\'s shrill cries to the Duchess: \'what a clear way you.\"},{\"img\":\"beauty\\/galleries\\/3.jpg\",\"description\":\"Time!\' \'Perhaps not,\' Alice replied very politely, \'if I had to stop and untwist it. After a minute or two she stood looking at Alice for some time without interrupting it. \'They must go by the.\"},{\"img\":\"beauty\\/galleries\\/5.jpg\",\"description\":\"Queen. \'I never went to him,\' said Alice sadly. \'Hand it over afterwards, it occurred to her head, and she walked sadly down the hall. After a time she heard her sentence three of the Queen say only.\"},{\"img\":\"beauty\\/galleries\\/4.jpg\",\"description\":\"Gryphon is, look at it!\' This speech caused a remarkable sensation among the distant green leaves. As there seemed to have lessons to learn! No, I\'ve made up my mind about it; if I\'m not particular.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-04-18 23:52:07','2024-04-18 23:52:07'),(2,'[{\"img\":\"beauty\\/galleries\\/1.jpg\",\"description\":\"At this moment the door opened inwards, and Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice heard the Queen\'s shrill cries to the Duchess: \'what a clear way you.\"},{\"img\":\"beauty\\/galleries\\/3.jpg\",\"description\":\"Time!\' \'Perhaps not,\' Alice replied very politely, \'if I had to stop and untwist it. After a minute or two she stood looking at Alice for some time without interrupting it. \'They must go by the.\"},{\"img\":\"beauty\\/galleries\\/5.jpg\",\"description\":\"Queen. \'I never went to him,\' said Alice sadly. \'Hand it over afterwards, it occurred to her head, and she walked sadly down the hall. After a time she heard her sentence three of the Queen say only.\"},{\"img\":\"beauty\\/galleries\\/4.jpg\",\"description\":\"Gryphon is, look at it!\' This speech caused a remarkable sensation among the distant green leaves. As there seemed to have lessons to learn! No, I\'ve made up my mind about it; if I\'m not particular.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-04-18 23:52:07','2024-04-18 23:52:07'),(3,'[{\"img\":\"beauty\\/galleries\\/1.jpg\",\"description\":\"At this moment the door opened inwards, and Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice heard the Queen\'s shrill cries to the Duchess: \'what a clear way you.\"},{\"img\":\"beauty\\/galleries\\/3.jpg\",\"description\":\"Time!\' \'Perhaps not,\' Alice replied very politely, \'if I had to stop and untwist it. After a minute or two she stood looking at Alice for some time without interrupting it. \'They must go by the.\"},{\"img\":\"beauty\\/galleries\\/5.jpg\",\"description\":\"Queen. \'I never went to him,\' said Alice sadly. \'Hand it over afterwards, it occurred to her head, and she walked sadly down the hall. After a time she heard her sentence three of the Queen say only.\"},{\"img\":\"beauty\\/galleries\\/4.jpg\",\"description\":\"Gryphon is, look at it!\' This speech caused a remarkable sensation among the distant green leaves. As there seemed to have lessons to learn! No, I\'ve made up my mind about it; if I\'m not particular.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-04-18 23:52:07','2024-04-18 23:52:07'),(4,'[{\"img\":\"beauty\\/galleries\\/1.jpg\",\"description\":\"At this moment the door opened inwards, and Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice heard the Queen\'s shrill cries to the Duchess: \'what a clear way you.\"},{\"img\":\"beauty\\/galleries\\/3.jpg\",\"description\":\"Time!\' \'Perhaps not,\' Alice replied very politely, \'if I had to stop and untwist it. After a minute or two she stood looking at Alice for some time without interrupting it. \'They must go by the.\"},{\"img\":\"beauty\\/galleries\\/5.jpg\",\"description\":\"Queen. \'I never went to him,\' said Alice sadly. \'Hand it over afterwards, it occurred to her head, and she walked sadly down the hall. After a time she heard her sentence three of the Queen say only.\"},{\"img\":\"beauty\\/galleries\\/4.jpg\",\"description\":\"Gryphon is, look at it!\' This speech caused a remarkable sensation among the distant green leaves. As there seemed to have lessons to learn! No, I\'ve made up my mind about it; if I\'m not particular.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-04-18 23:52:07','2024-04-18 23:52:07'),(5,'[{\"img\":\"beauty\\/galleries\\/1.jpg\",\"description\":\"At this moment the door opened inwards, and Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice heard the Queen\'s shrill cries to the Duchess: \'what a clear way you.\"},{\"img\":\"beauty\\/galleries\\/3.jpg\",\"description\":\"Time!\' \'Perhaps not,\' Alice replied very politely, \'if I had to stop and untwist it. After a minute or two she stood looking at Alice for some time without interrupting it. \'They must go by the.\"},{\"img\":\"beauty\\/galleries\\/5.jpg\",\"description\":\"Queen. \'I never went to him,\' said Alice sadly. \'Hand it over afterwards, it occurred to her head, and she walked sadly down the hall. After a time she heard her sentence three of the Queen say only.\"},{\"img\":\"beauty\\/galleries\\/4.jpg\",\"description\":\"Gryphon is, look at it!\' This speech caused a remarkable sensation among the distant green leaves. As there seemed to have lessons to learn! No, I\'ve made up my mind about it; if I\'m not particular.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-04-18 23:52:07','2024-04-18 23:52:07'),(6,'[{\"img\":\"beauty\\/galleries\\/1.jpg\",\"description\":\"At this moment the door opened inwards, and Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice heard the Queen\'s shrill cries to the Duchess: \'what a clear way you.\"},{\"img\":\"beauty\\/galleries\\/3.jpg\",\"description\":\"Time!\' \'Perhaps not,\' Alice replied very politely, \'if I had to stop and untwist it. After a minute or two she stood looking at Alice for some time without interrupting it. \'They must go by the.\"},{\"img\":\"beauty\\/galleries\\/5.jpg\",\"description\":\"Queen. \'I never went to him,\' said Alice sadly. \'Hand it over afterwards, it occurred to her head, and she walked sadly down the hall. After a time she heard her sentence three of the Queen say only.\"},{\"img\":\"beauty\\/galleries\\/4.jpg\",\"description\":\"Gryphon is, look at it!\' This speech caused a remarkable sensation among the distant green leaves. As there seemed to have lessons to learn! No, I\'ve made up my mind about it; if I\'m not particular.\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-04-18 23:52:07','2024-04-18 23:52:07');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','9c9d0597440f8fabe504b86adaa97ef4',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','59439bf6c54a19b83e5d55c968f4fa33',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','a8b6496000844c3c7fb42f022d9f1fd0',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','3b1bfdd1784aa8fbf5685de5b0f8d03f',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','3a54b516181c7bdd0b9c52eb456c330f',3,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'404','404',2,'image/png',15820,'main/general/404.png','[]','2024-04-18 23:51:53','2024-04-18 23:51:53',NULL),(2,0,'about-1','about-1',2,'image/jpeg',9222,'main/general/about-1.jpg','[]','2024-04-18 23:51:53','2024-04-18 23:51:53',NULL),(3,0,'about-2','about-2',2,'image/jpeg',5105,'main/general/about-2.jpg','[]','2024-04-18 23:51:53','2024-04-18 23:51:53',NULL),(4,0,'breadcrumb','breadcrumb',2,'image/jpeg',5276,'main/general/breadcrumb.jpg','[]','2024-04-18 23:51:53','2024-04-18 23:51:53',NULL),(5,0,'cta-shape-1','cta-shape-1',2,'image/png',22860,'main/general/cta-shape-1.png','[]','2024-04-18 23:51:53','2024-04-18 23:51:53',NULL),(6,0,'cta-shape-2','cta-shape-2',2,'image/png',16796,'main/general/cta-shape-2.png','[]','2024-04-18 23:51:53','2024-04-18 23:51:53',NULL),(7,0,'cta-thumb-1','cta-thumb-1',2,'image/jpeg',6053,'main/general/cta-thumb-1.jpg','[]','2024-04-18 23:51:53','2024-04-18 23:51:53',NULL),(8,0,'favicon','favicon',2,'image/png',1831,'main/general/favicon.png','[]','2024-04-18 23:51:53','2024-04-18 23:51:53',NULL),(9,0,'footer-pay','footer-pay',2,'image/png',490,'main/general/footer-pay.png','[]','2024-04-18 23:51:53','2024-04-18 23:51:53',NULL),(10,0,'logo-white','logo-white',2,'image/png',22020,'main/general/logo-white.png','[]','2024-04-18 23:51:53','2024-04-18 23:51:53',NULL),(11,0,'logo','logo',2,'image/png',22398,'main/general/logo.png','[]','2024-04-18 23:51:53','2024-04-18 23:51:53',NULL),(12,0,'newsletter-popup','newsletter-popup',2,'image/png',17253,'main/general/newsletter-popup.png','[]','2024-04-18 23:51:53','2024-04-18 23:51:53',NULL),(13,0,'placeholder','placeholder',2,'image/png',2100,'main/general/placeholder.png','[]','2024-04-18 23:51:53','2024-04-18 23:51:53',NULL),(14,0,'preloader-icon','preloader-icon',2,'image/png',4182,'main/general/preloader-icon.png','[]','2024-04-18 23:51:53','2024-04-18 23:51:53',NULL),(15,0,'signature','signature',2,'image/png',2117,'main/general/signature.png','[]','2024-04-18 23:51:53','2024-04-18 23:51:53',NULL),(16,0,'slider-offer','slider-offer',2,'image/png',970,'main/general/slider-offer.png','[]','2024-04-18 23:51:53','2024-04-18 23:51:53',NULL),(27,0,'1','1',4,'image/png',948,'main/brands/1.png','[]','2024-04-18 23:51:54','2024-04-18 23:51:54',NULL),(28,0,'2','2',4,'image/png',948,'main/brands/2.png','[]','2024-04-18 23:51:54','2024-04-18 23:51:54',NULL),(29,0,'3','3',4,'image/png',948,'main/brands/3.png','[]','2024-04-18 23:51:54','2024-04-18 23:51:54',NULL),(30,0,'4','4',4,'image/png',948,'main/brands/4.png','[]','2024-04-18 23:51:54','2024-04-18 23:51:54',NULL),(31,0,'5','5',4,'image/png',948,'main/brands/5.png','[]','2024-04-18 23:51:54','2024-04-18 23:51:54',NULL),(32,0,'1','1',5,'image/jpeg',4294,'main/customers/1.jpg','[]','2024-04-18 23:51:54','2024-04-18 23:51:54',NULL),(33,0,'10','10',5,'image/jpeg',4294,'main/customers/10.jpg','[]','2024-04-18 23:51:54','2024-04-18 23:51:54',NULL),(34,0,'2','2',5,'image/jpeg',4294,'main/customers/2.jpg','[]','2024-04-18 23:51:55','2024-04-18 23:51:55',NULL),(35,0,'3','3',5,'image/jpeg',4294,'main/customers/3.jpg','[]','2024-04-18 23:51:55','2024-04-18 23:51:55',NULL),(36,0,'4','4',5,'image/jpeg',4294,'main/customers/4.jpg','[]','2024-04-18 23:51:55','2024-04-18 23:51:55',NULL),(37,0,'5','5',5,'image/jpeg',4294,'main/customers/5.jpg','[]','2024-04-18 23:51:55','2024-04-18 23:51:55',NULL),(38,0,'6','6',5,'image/jpeg',4294,'main/customers/6.jpg','[]','2024-04-18 23:51:55','2024-04-18 23:51:55',NULL),(39,0,'7','7',5,'image/jpeg',4294,'main/customers/7.jpg','[]','2024-04-18 23:51:55','2024-04-18 23:51:55',NULL),(40,0,'8','8',5,'image/jpeg',4294,'main/customers/8.jpg','[]','2024-04-18 23:51:55','2024-04-18 23:51:55',NULL),(41,0,'9','9',5,'image/jpeg',4294,'main/customers/9.jpg','[]','2024-04-18 23:51:55','2024-04-18 23:51:55',NULL),(42,0,'blog-big-1','blog-big-1',6,'image/jpeg',13885,'main/blog/blog-big-1.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(43,0,'blog-details-sm-1','blog-details-sm-1',6,'image/jpeg',8166,'main/blog/blog-details-sm-1.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(44,0,'post-1','post-1',6,'image/jpeg',6189,'main/blog/post-1.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(45,0,'post-10','post-10',6,'image/jpeg',5907,'main/blog/post-10.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(46,0,'post-11','post-11',6,'image/jpeg',5907,'main/blog/post-11.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(47,0,'post-12','post-12',6,'image/jpeg',5907,'main/blog/post-12.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(48,0,'post-2','post-2',6,'image/jpeg',6189,'main/blog/post-2.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(49,0,'post-3','post-3',6,'image/jpeg',6189,'main/blog/post-3.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(50,0,'post-4','post-4',6,'image/jpeg',6045,'main/blog/post-4.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(51,0,'post-5','post-5',6,'image/jpeg',6045,'main/blog/post-5.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(52,0,'post-6','post-6',6,'image/jpeg',6045,'main/blog/post-6.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(53,0,'post-7','post-7',6,'image/jpeg',5907,'main/blog/post-7.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(54,0,'post-8','post-8',6,'image/jpeg',5907,'main/blog/post-8.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(55,0,'post-9','post-9',6,'image/jpeg',5907,'main/blog/post-9.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(56,0,'1','1',3,'image/jpeg',4068,'main/users/1.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(57,0,'10','10',3,'image/jpeg',7599,'main/users/10.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(58,0,'2','2',3,'image/jpeg',7599,'main/users/2.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(59,0,'3','3',3,'image/jpeg',6387,'main/users/3.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(60,0,'4','4',3,'image/jpeg',7599,'main/users/4.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(61,0,'5','5',3,'image/jpeg',6387,'main/users/5.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(62,0,'6','6',3,'image/jpeg',7599,'main/users/6.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(63,0,'7','7',3,'image/jpeg',6387,'main/users/7.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(64,0,'8','8',3,'image/jpeg',7599,'main/users/8.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(65,0,'9','9',3,'image/jpeg',6387,'main/users/9.jpg','[]','2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(66,0,'1','1',7,'image/png',9133,'main/stores/1.png','[]','2024-04-18 23:51:59','2024-04-18 23:51:59',NULL),(67,0,'10','10',7,'image/png',4263,'main/stores/10.png','[]','2024-04-18 23:51:59','2024-04-18 23:51:59',NULL),(68,0,'11','11',7,'image/png',4420,'main/stores/11.png','[]','2024-04-18 23:51:59','2024-04-18 23:51:59',NULL),(69,0,'12','12',7,'image/png',4908,'main/stores/12.png','[]','2024-04-18 23:51:59','2024-04-18 23:51:59',NULL),(70,0,'13','13',7,'image/png',3441,'main/stores/13.png','[]','2024-04-18 23:51:59','2024-04-18 23:51:59',NULL),(71,0,'14','14',7,'image/png',4209,'main/stores/14.png','[]','2024-04-18 23:51:59','2024-04-18 23:51:59',NULL),(72,0,'15','15',7,'image/png',5113,'main/stores/15.png','[]','2024-04-18 23:51:59','2024-04-18 23:51:59',NULL),(73,0,'16','16',7,'image/png',4563,'main/stores/16.png','[]','2024-04-18 23:51:59','2024-04-18 23:51:59',NULL),(74,0,'17','17',7,'image/png',4896,'main/stores/17.png','[]','2024-04-18 23:51:59','2024-04-18 23:51:59',NULL),(75,0,'2','2',7,'image/png',9008,'main/stores/2.png','[]','2024-04-18 23:51:59','2024-04-18 23:51:59',NULL),(76,0,'3','3',7,'image/png',8006,'main/stores/3.png','[]','2024-04-18 23:51:59','2024-04-18 23:51:59',NULL),(77,0,'4','4',7,'image/png',8728,'main/stores/4.png','[]','2024-04-18 23:51:59','2024-04-18 23:51:59',NULL),(78,0,'5','5',7,'image/png',10689,'main/stores/5.png','[]','2024-04-18 23:51:59','2024-04-18 23:51:59',NULL),(79,0,'6','6',7,'image/png',10989,'main/stores/6.png','[]','2024-04-18 23:51:59','2024-04-18 23:51:59',NULL),(80,0,'7','7',7,'image/png',3730,'main/stores/7.png','[]','2024-04-18 23:51:59','2024-04-18 23:51:59',NULL),(81,0,'8','8',7,'image/png',4030,'main/stores/8.png','[]','2024-04-18 23:51:59','2024-04-18 23:51:59',NULL),(82,0,'9','9',7,'image/png',3810,'main/stores/9.png','[]','2024-04-18 23:51:59','2024-04-18 23:51:59',NULL),(83,0,'cover-1','cover-1',7,'image/png',4208,'main/stores/cover-1.png','[]','2024-04-18 23:51:59','2024-04-18 23:51:59',NULL),(84,0,'cover-2','cover-2',7,'image/png',8798,'main/stores/cover-2.png','[]','2024-04-18 23:51:59','2024-04-18 23:51:59',NULL),(85,0,'cover-3','cover-3',7,'image/png',3888,'main/stores/cover-3.png','[]','2024-04-18 23:51:59','2024-04-18 23:51:59',NULL),(86,0,'cover-4','cover-4',7,'image/png',11893,'main/stores/cover-4.png','[]','2024-04-18 23:52:00','2024-04-18 23:52:00',NULL),(87,0,'cover-5','cover-5',7,'image/png',8798,'main/stores/cover-5.png','[]','2024-04-18 23:52:00','2024-04-18 23:52:00',NULL),(88,0,'slider-1','slider-1',9,'image/jpeg',27493,'beauty/sliders/slider-1.jpg','[]','2024-04-18 23:52:02','2024-04-18 23:52:02',NULL),(89,0,'slider-2','slider-2',9,'image/jpeg',27493,'beauty/sliders/slider-2.jpg','[]','2024-04-18 23:52:02','2024-04-18 23:52:02',NULL),(90,0,'slider-3','slider-3',9,'image/jpeg',27493,'beauty/sliders/slider-3.jpg','[]','2024-04-18 23:52:02','2024-04-18 23:52:02',NULL),(91,0,'1','1',10,'image/jpeg',4294,'beauty/product-categories/1.jpg','[]','2024-04-18 23:52:02','2024-04-18 23:52:02',NULL),(92,0,'2','2',10,'image/jpeg',4294,'beauty/product-categories/2.jpg','[]','2024-04-18 23:52:02','2024-04-18 23:52:02',NULL),(93,0,'3','3',10,'image/jpeg',4294,'beauty/product-categories/3.jpg','[]','2024-04-18 23:52:02','2024-04-18 23:52:02',NULL),(94,0,'4','4',10,'image/jpeg',4294,'beauty/product-categories/4.jpg','[]','2024-04-18 23:52:03','2024-04-18 23:52:03',NULL),(95,0,'5','5',10,'image/jpeg',4294,'beauty/product-categories/5.jpg','[]','2024-04-18 23:52:03','2024-04-18 23:52:03',NULL),(96,0,'6','6',10,'image/jpeg',4294,'beauty/product-categories/6.jpg','[]','2024-04-18 23:52:03','2024-04-18 23:52:03',NULL),(97,0,'product-1','product-1',11,'image/png',9803,'beauty/products/product-1.png','[]','2024-04-18 23:52:03','2024-04-18 23:52:03',NULL),(98,0,'product-2','product-2',11,'image/png',9803,'beauty/products/product-2.png','[]','2024-04-18 23:52:03','2024-04-18 23:52:03',NULL),(99,0,'product-3','product-3',11,'image/png',9803,'beauty/products/product-3.png','[]','2024-04-18 23:52:03','2024-04-18 23:52:03',NULL),(100,0,'product-4','product-4',11,'image/png',9803,'beauty/products/product-4.png','[]','2024-04-18 23:52:03','2024-04-18 23:52:03',NULL),(101,0,'product-5','product-5',11,'image/png',9803,'beauty/products/product-5.png','[]','2024-04-18 23:52:03','2024-04-18 23:52:03',NULL),(102,0,'product-6','product-6',11,'image/png',9803,'beauty/products/product-6.png','[]','2024-04-18 23:52:03','2024-04-18 23:52:03',NULL),(103,0,'product-7','product-7',11,'image/png',9803,'beauty/products/product-7.png','[]','2024-04-18 23:52:03','2024-04-18 23:52:03',NULL),(104,0,'product-8','product-8',11,'image/png',9803,'beauty/products/product-8.png','[]','2024-04-18 23:52:03','2024-04-18 23:52:03',NULL),(105,0,'1','1',12,'image/jpeg',4294,'beauty/galleries/1.jpg','[]','2024-04-18 23:52:07','2024-04-18 23:52:07',NULL),(106,0,'2','2',12,'image/jpeg',4294,'beauty/galleries/2.jpg','[]','2024-04-18 23:52:07','2024-04-18 23:52:07',NULL),(107,0,'3','3',12,'image/jpeg',4294,'beauty/galleries/3.jpg','[]','2024-04-18 23:52:07','2024-04-18 23:52:07',NULL),(108,0,'4','4',12,'image/jpeg',4294,'beauty/galleries/4.jpg','[]','2024-04-18 23:52:07','2024-04-18 23:52:07',NULL),(109,0,'5','5',12,'image/jpeg',4294,'beauty/galleries/5.jpg','[]','2024-04-18 23:52:07','2024-04-18 23:52:07',NULL),(110,0,'6','6',12,'image/jpeg',4294,'beauty/galleries/6.jpg','[]','2024-04-18 23:52:07','2024-04-18 23:52:07',NULL),(111,0,'instagram-1','instagram-1',12,'image/jpeg',4294,'beauty/galleries/instagram-1.jpg','[]','2024-04-18 23:52:07','2024-04-18 23:52:07',NULL),(112,0,'instagram-2','instagram-2',12,'image/jpeg',4294,'beauty/galleries/instagram-2.jpg','[]','2024-04-18 23:52:07','2024-04-18 23:52:07',NULL),(113,0,'instagram-3','instagram-3',12,'image/jpeg',4294,'beauty/galleries/instagram-3.jpg','[]','2024-04-18 23:52:07','2024-04-18 23:52:07',NULL),(114,0,'instagram-4','instagram-4',12,'image/jpeg',4294,'beauty/galleries/instagram-4.jpg','[]','2024-04-18 23:52:07','2024-04-18 23:52:07',NULL),(115,0,'instagram-5','instagram-5',12,'image/jpeg',4294,'beauty/galleries/instagram-5.jpg','[]','2024-04-18 23:52:07','2024-04-18 23:52:07',NULL),(116,0,'instagram-6','instagram-6',12,'image/jpeg',4294,'beauty/galleries/instagram-6.jpg','[]','2024-04-18 23:52:07','2024-04-18 23:52:07',NULL),(117,0,'icon-1','icon-1',13,'image/png',4469,'main/contact/icon-1.png','[]','2024-04-18 23:52:07','2024-04-18 23:52:07',NULL),(118,0,'icon-2','icon-2',13,'image/png',5977,'main/contact/icon-2.png','[]','2024-04-18 23:52:07','2024-04-18 23:52:07',NULL),(119,0,'icon-3','icon-3',13,'image/png',6082,'main/contact/icon-3.png','[]','2024-04-18 23:52:07','2024-04-18 23:52:07',NULL),(120,0,'line','line',14,'image/png',6152,'main/shapes/line.png','[]','2024-04-18 23:52:07','2024-04-18 23:52:07',NULL),(121,0,'quote','quote',14,'image/png',595,'main/shapes/quote.png','[]','2024-04-18 23:52:07','2024-04-18 23:52:07',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2024-04-18 23:51:53','2024-04-18 23:51:53',NULL),(2,0,'general',NULL,'general',1,'2024-04-18 23:51:53','2024-04-18 23:51:53',NULL),(3,0,'users',NULL,'users',1,'2024-04-18 23:51:53','2024-04-18 23:51:53',NULL),(4,0,'brands',NULL,'brands',1,'2024-04-18 23:51:54','2024-04-18 23:51:54',NULL),(5,0,'customers',NULL,'customers',1,'2024-04-18 23:51:54','2024-04-18 23:51:54',NULL),(6,0,'blog',NULL,'blog',1,'2024-04-18 23:51:58','2024-04-18 23:51:58',NULL),(7,0,'stores',NULL,'stores',1,'2024-04-18 23:51:59','2024-04-18 23:51:59',NULL),(8,0,'beauty',NULL,'beauty',0,'2024-04-18 23:52:02','2024-04-18 23:52:02',NULL),(9,0,'sliders',NULL,'sliders',8,'2024-04-18 23:52:02','2024-04-18 23:52:02',NULL),(10,0,'product-categories',NULL,'product-categories',8,'2024-04-18 23:52:02','2024-04-18 23:52:02',NULL),(11,0,'products',NULL,'products',8,'2024-04-18 23:52:03','2024-04-18 23:52:03',NULL),(12,0,'galleries',NULL,'galleries',8,'2024-04-18 23:52:07','2024-04-18 23:52:07',NULL),(13,0,'contact',NULL,'contact',1,'2024-04-18 23:52:07','2024-04-18 23:52:07',NULL),(14,0,'shapes',NULL,'shapes',1,'2024-04-18 23:52:07','2024-04-18 23:52:07',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-04-18 23:52:07','2024-04-18 23:52:07');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,1,'Botble\\Page\\Models\\Page','/home',NULL,0,'Home',NULL,'_self',1,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(2,1,1,NULL,NULL,'https://shofy.botble.com',NULL,0,'Electronics',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(3,1,1,NULL,NULL,'https://shofy-fashion.botble.com',NULL,0,'Fashion',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(4,1,1,NULL,NULL,'https://shofy-beauty.botble.com',NULL,0,'Beauty',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(5,1,1,NULL,NULL,'https://shofy-jewelry.botble.com',NULL,0,'Jewelry',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(6,1,1,NULL,NULL,'https://shofy-grocery.botble.com',NULL,0,'Grocery',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(7,1,0,NULL,NULL,NULL,NULL,0,'Shop',NULL,'_self',1,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(8,1,7,2,'Botble\\Page\\Models\\Page','/product-categories',NULL,0,'Shop Categories',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(9,1,7,NULL,NULL,'/products?layout=list',NULL,0,'Shop List',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(10,1,7,NULL,NULL,'/products?layout=grid',NULL,0,'Shop Grid',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(11,1,7,NULL,NULL,'/products/embellished-ballet-flats',NULL,0,'Product Detail',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(12,1,7,3,'Botble\\Page\\Models\\Page','/coupons',NULL,0,'Grab Coupons',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(13,1,7,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(14,1,7,NULL,NULL,'/compare',NULL,0,'Compare',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(15,1,7,NULL,NULL,'/wishlist',NULL,0,'Wishlist',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(16,1,7,NULL,NULL,'/orders/tracking',NULL,0,'Track Your Order',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(17,1,0,NULL,NULL,'/stores',NULL,0,'Vendors',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(18,1,0,NULL,NULL,NULL,NULL,0,'Pages',NULL,'_self',1,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(19,1,18,NULL,NULL,'/login',NULL,0,'Login',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(20,1,18,NULL,NULL,'/register',NULL,0,'Register',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(21,1,18,NULL,NULL,'/password/reset',NULL,0,'Forgot Password',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(22,1,18,NULL,NULL,'/404',NULL,0,'404 Error',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(23,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(24,1,23,NULL,NULL,'/blog?layout=grid',NULL,0,'Blog Grid',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(25,1,23,NULL,NULL,'/blog?layout=list',NULL,0,'Blog List',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(26,1,23,NULL,NULL,'/blog/exploring-the-english-countryside',NULL,0,'Blog Detail',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(27,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(28,2,0,NULL,NULL,'/orders/tracking',NULL,1,'Track Orders',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(29,2,0,10,'Botble\\Page\\Models\\Page','/shipping',NULL,1,'Shipping',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(30,2,0,NULL,NULL,'/wishlist',NULL,1,'Wishlist',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(31,2,0,NULL,NULL,'/customer/overview',NULL,1,'My Account',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(32,2,0,NULL,NULL,'/customer/orders',NULL,1,'Order History',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(33,2,0,NULL,NULL,'/customer/order-returns',NULL,1,'Returns',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(34,3,0,8,'Botble\\Page\\Models\\Page','/our-story',NULL,2,'Our Story',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(35,3,0,9,'Botble\\Page\\Models\\Page','/careers',NULL,2,'Careers',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(36,3,0,7,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,2,'Privacy Policy',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(37,3,0,NULL,NULL,'/blog',NULL,2,'Latest News',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07'),(38,3,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,2,'Contact Us',NULL,'_self',0,'2024-04-18 23:52:07','2024-04-18 23:52:07');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-04-18 23:52:07','2024-04-18 23:52:07'),(2,'My Account','my-account','published','2024-04-18 23:52:07','2024-04-18 23:52:07'),(3,'Information','information','published','2024-04-18 23:52:07','2024-04-18 23:52:07');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',1,'Botble\\Marketplace\\Models\\Store','2024-04-18 23:52:02','2024-04-18 23:52:02'),(2,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',2,'Botble\\Marketplace\\Models\\Store','2024-04-18 23:52:02','2024-04-18 23:52:02'),(3,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',3,'Botble\\Marketplace\\Models\\Store','2024-04-18 23:52:02','2024-04-18 23:52:02'),(4,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',4,'Botble\\Marketplace\\Models\\Store','2024-04-18 23:52:02','2024-04-18 23:52:02'),(5,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',5,'Botble\\Marketplace\\Models\\Store','2024-04-18 23:52:02','2024-04-18 23:52:02'),(6,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',6,'Botble\\Marketplace\\Models\\Store','2024-04-18 23:52:02','2024-04-18 23:52:02'),(7,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',7,'Botble\\Marketplace\\Models\\Store','2024-04-18 23:52:02','2024-04-18 23:52:02'),(8,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',8,'Botble\\Marketplace\\Models\\Store','2024-04-18 23:52:02','2024-04-18 23:52:02'),(9,'button_label','[\"Shop Collection\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-18 23:52:02','2024-04-18 23:52:02'),(10,'button_label','[\"Shop Collection\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-18 23:52:02','2024-04-18 23:52:02'),(11,'button_label','[\"Shop Collection\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-18 23:52:02','2024-04-18 23:52:02'),(12,'faq_ids','[[3,5,6,8,9]]',1,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:03','2024-04-18 23:52:03'),(13,'faq_ids','[[1,4,5,9,10]]',2,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:03','2024-04-18 23:52:03'),(14,'faq_ids','[[1,2,6,8,10]]',3,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:03','2024-04-18 23:52:03'),(15,'faq_ids','[[3,4,5,7,8]]',4,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:03','2024-04-18 23:52:03'),(16,'faq_ids','[[3,4,5,7,10]]',5,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:03','2024-04-18 23:52:03'),(17,'faq_ids','[[1,6,7,9,10]]',6,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:03','2024-04-18 23:52:03'),(18,'faq_ids','[[3,5,7,8,10]]',7,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:03','2024-04-18 23:52:03'),(19,'faq_ids','[[1,4,6,8,9]]',8,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:03','2024-04-18 23:52:03'),(20,'faq_ids','[[1,3,6,7,9]]',9,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:03','2024-04-18 23:52:03'),(21,'faq_ids','[[2,3,7,8,9]]',10,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:03','2024-04-18 23:52:03'),(22,'faq_ids','[[1,3,5,6,7]]',11,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:03','2024-04-18 23:52:03'),(23,'faq_ids','[[2,4,5,7,8]]',12,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:03','2024-04-18 23:52:03'),(24,'faq_ids','[[1,3,6,7,10]]',13,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:03','2024-04-18 23:52:03'),(25,'faq_ids','[[1,3,8,9,10]]',14,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:03','2024-04-18 23:52:03'),(26,'faq_ids','[[1,4,5,6,7]]',15,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:03','2024-04-18 23:52:03'),(27,'faq_ids','[[1,3,5,8,10]]',16,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:03','2024-04-18 23:52:03'),(28,'faq_ids','[[1,3,4,6,7]]',17,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(29,'faq_ids','[[1,5,6,8,10]]',18,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(30,'faq_ids','[[1,2,4,7,9]]',19,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(31,'faq_ids','[[2,6,7,8,9]]',20,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(32,'faq_ids','[[2,3,5,7,9]]',21,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(33,'faq_ids','[[2,3,5,7,10]]',22,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(34,'faq_ids','[[3,4,5,6,10]]',23,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(35,'faq_ids','[[1,2,3,7,8]]',24,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(36,'faq_ids','[[1,2,3,5,8]]',25,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(37,'faq_ids','[[2,6,7,8,10]]',26,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(38,'faq_ids','[[4,5,6,7,9]]',27,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(39,'faq_ids','[[3,4,6,7,8]]',28,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(40,'faq_ids','[[1,4,7,8,10]]',29,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(41,'faq_ids','[[2,5,8,9,10]]',30,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(42,'faq_ids','[[1,3,4,5,9]]',31,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(43,'faq_ids','[[2,3,4,5,9]]',32,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(44,'faq_ids','[[6,7,8,9,10]]',33,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(45,'faq_ids','[[1,4,6,7,9]]',34,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(46,'faq_ids','[[1,2,3,7,10]]',35,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(47,'faq_ids','[[2,3,4,6,9]]',36,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(48,'faq_ids','[[2,5,7,8,9]]',37,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(49,'faq_ids','[[1,2,5,6,7]]',38,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(50,'faq_ids','[[1,2,6,7,10]]',39,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(51,'faq_ids','[[3,4,7,8,10]]',40,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(52,'faq_ids','[[2,3,4,5,8]]',41,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(53,'faq_ids','[[1,4,5,7,9]]',42,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(54,'faq_ids','[[2,3,5,8,10]]',43,'Botble\\Ecommerce\\Models\\Product','2024-04-18 23:52:04','2024-04-18 23:52:04'),(55,'breadcrumb_style','[\"none\"]',1,'Botble\\Page\\Models\\Page','2024-04-18 23:52:07','2024-04-18 23:52:07'),(56,'breadcrumb_style','[\"align-start\"]',2,'Botble\\Page\\Models\\Page','2024-04-18 23:52:07','2024-04-18 23:52:07');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2016_05_28_112028_create_system_request_logs_table',1),(8,'2016_06_10_230148_create_acl_tables',1),(9,'2016_06_14_230857_create_menus_table',1),(10,'2016_06_17_091537_create_contacts_table',1),(11,'2016_06_28_221418_create_pages_table',1),(12,'2016_10_03_032336_create_languages_table',1),(13,'2016_10_05_074239_create_setting_table',1),(14,'2016_10_07_193005_create_translations_table',1),(15,'2016_10_13_150201_create_galleries_table',1),(16,'2016_11_28_032840_create_dashboard_widget_tables',1),(17,'2016_12_16_084601_create_widgets_table',1),(18,'2017_05_09_070343_create_media_tables',1),(19,'2017_05_18_080441_create_payment_tables',1),(20,'2017_07_11_140018_create_simple_slider_table',1),(21,'2017_10_24_154832_create_newsletter_table',1),(22,'2017_11_03_070450_create_slug_table',1),(23,'2018_07_09_214610_create_testimonial_table',1),(24,'2018_07_09_221238_create_faq_table',1),(25,'2019_01_05_053554_create_jobs_table',1),(26,'2019_08_19_000000_create_failed_jobs_table',1),(27,'2019_11_18_061011_create_country_table',1),(28,'2019_12_14_000001_create_personal_access_tokens_table',1),(29,'2020_03_05_041139_create_ecommerce_tables',1),(30,'2020_11_18_150916_ads_create_ads_table',1),(31,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(32,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(33,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(34,'2021_02_16_092633_remove_default_value_for_author_type',1),(35,'2021_02_18_073505_update_table_ec_reviews',1),(36,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(37,'2021_03_10_025153_change_column_tax_amount',1),(38,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(39,'2021_03_27_144913_add_customer_type_into_table_payments',1),(40,'2021_04_28_074008_ecommerce_create_product_label_table',1),(41,'2021_05_24_034720_make_column_currency_nullable',1),(42,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(43,'2021_07_06_030002_create_marketplace_table',1),(44,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(45,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(46,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(47,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',1),(48,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(49,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',1),(50,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(51,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',1),(52,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',1),(53,'2021_10_19_020859_update_metadata_field',1),(54,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(55,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(56,'2021_11_23_071403_correct_languages_for_product_variations',1),(57,'2021_11_28_031808_add_product_tags_translations',1),(58,'2021_12_01_031123_add_featured_image_to_ec_products',1),(59,'2021_12_02_035301_add_ads_translations_table',1),(60,'2021_12_03_030600_create_blog_translations',1),(61,'2021_12_03_075608_create_page_translations',1),(62,'2021_12_03_082134_create_faq_translations',1),(63,'2021_12_03_082953_create_gallery_translations',1),(64,'2021_12_03_083642_create_testimonials_translations',1),(65,'2021_12_03_084118_create_location_translations',1),(66,'2021_12_03_094518_migrate_old_location_data',1),(67,'2021_12_06_031304_update_table_mp_customer_revenues',1),(68,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',1),(69,'2022_01_01_033107_update_table_ec_shipments',1),(70,'2022_01_16_085908_improve_plugin_location',1),(71,'2022_02_16_042457_improve_product_attribute_sets',1),(72,'2022_03_22_075758_correct_product_name',1),(73,'2022_04_19_113334_add_index_to_ec_products',1),(74,'2022_04_19_113923_add_index_to_table_posts',1),(75,'2022_04_20_100851_add_index_to_media_table',1),(76,'2022_04_20_101046_add_index_to_menu_table',1),(77,'2022_04_28_144405_remove_unused_table',1),(78,'2022_04_30_034048_create_gallery_meta_translations_table',1),(79,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',1),(80,'2022_05_18_143720_add_index_to_table_ec_product_categories',1),(81,'2022_06_16_095633_add_index_to_some_tables',1),(82,'2022_06_28_151901_activate_paypal_stripe_plugin',1),(83,'2022_06_30_035148_create_order_referrals_table',1),(84,'2022_07_07_153354_update_charge_id_in_table_payments',1),(85,'2022_07_10_034813_move_lang_folder_to_root',1),(86,'2022_07_24_153815_add_completed_at_to_ec_orders_table',1),(87,'2022_08_04_051940_add_missing_column_expires_at',1),(88,'2022_08_04_052122_delete_location_backup_tables',1),(89,'2022_08_14_032836_create_ec_order_returns_table',1),(90,'2022_08_14_033554_create_ec_order_return_items_table',1),(91,'2022_08_15_040324_add_billing_address',1),(92,'2022_08_30_091114_support_digital_products_table',1),(93,'2022_09_01_000001_create_admin_notifications_tables',1),(94,'2022_09_13_095744_create_options_table',1),(95,'2022_09_13_104347_create_option_value_table',1),(96,'2022_10_05_163518_alter_table_ec_order_product',1),(97,'2022_10_12_041517_create_invoices_table',1),(98,'2022_10_12_142226_update_orders_table',1),(99,'2022_10_13_024916_update_table_order_returns',1),(100,'2022_10_14_024629_drop_column_is_featured',1),(101,'2022_10_19_152916_add_columns_to_mp_stores_table',1),(102,'2022_10_20_062849_create_mp_category_sale_commissions_table',1),(103,'2022_10_21_030830_update_columns_in_ec_shipments_table',1),(104,'2022_10_28_021046_update_columns_in_ec_shipments_table',1),(105,'2022_11_02_071413_add_more_info_for_store',1),(106,'2022_11_02_080444_add_tax_info',1),(107,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',1),(108,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(109,'2022_11_19_041643_add_ec_tax_product_table',1),(110,'2022_12_02_093615_update_slug_index_columns',1),(111,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',1),(112,'2022_12_17_041532_fix_address_in_order_invoice',1),(113,'2022_12_26_070329_create_ec_product_views_table',1),(114,'2023_01_04_033051_fix_product_categories',1),(115,'2023_01_09_050400_add_ec_global_options_translations_table',1),(116,'2023_01_10_093754_add_missing_option_value_id',1),(117,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',1),(118,'2023_01_26_021854_add_ec_customer_used_coupons_table',1),(119,'2023_01_30_024431_add_alt_to_media_table',1),(120,'2023_02_01_062030_add_store_translations',1),(121,'2023_02_08_015900_update_options_column_in_ec_order_product_table',1),(122,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',1),(123,'2023_02_16_042611_drop_table_password_resets',1),(124,'2023_02_17_023648_fix_store_prefix',1),(125,'2023_02_27_095752_remove_duplicate_reviews',1),(126,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',1),(127,'2023_04_17_062645_add_open_in_new_tab',1),(128,'2023_04_21_082427_create_ec_product_categorizables_table',1),(129,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(130,'2023_04_23_061847_increase_state_translations_abbreviation_column',1),(131,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',1),(132,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(133,'2023_05_17_025812_fix_invoice_issue',1),(134,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',1),(135,'2023_05_27_144611_fix_exchange_rate_setting',1),(136,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',1),(137,'2023_06_30_042512_create_ec_order_tax_information_table',1),(138,'2023_07_06_011444_create_slug_translations_table',1),(139,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',1),(140,'2023_07_26_041451_add_more_columns_to_location_table',1),(141,'2023_07_27_041451_add_more_columns_to_location_translation_table',1),(142,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',1),(143,'2023_08_11_060908_create_announcements_table',1),(144,'2023_08_15_064505_create_ec_tax_rules_table',1),(145,'2023_08_15_073307_drop_unique_in_states_cities_translations',1),(146,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',1),(147,'2023_08_21_090810_make_page_content_nullable',1),(148,'2023_08_22_094114_drop_unique_for_barcode',1),(149,'2023_08_29_074620_make_column_author_id_nullable',1),(150,'2023_08_29_075308_make_column_user_id_nullable',1),(151,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',1),(152,'2023_09_07_094312_add_index_to_product_sku_and_translations',1),(153,'2023_09_14_021936_update_index_for_slugs_table',1),(154,'2023_09_14_022423_add_index_for_language_table',1),(155,'2023_09_19_024955_create_discount_product_categories_table',1),(156,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',1),(157,'2023_10_21_065016_make_state_id_in_table_cities_nullable',1),(158,'2023_11_07_023805_add_tablet_mobile_image',1),(159,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',1),(160,'2023_11_14_033417_change_request_column_in_table_audit_histories',1),(161,'2023_11_17_063408_add_description_column_to_faq_categories_table',1),(162,'2023_11_22_154643_add_unique_in_table_ec_products_variations',1),(163,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',1),(164,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',1),(165,'2023_12_06_100448_change_random_hash_for_media',1),(166,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(167,'2023_12_12_105220_drop_translations_table',1),(168,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(169,'2023_12_25_040604_ec_create_review_replies_table',1),(170,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',1),(171,'2024_01_16_070706_fix_translation_tables',1),(172,'2024_01_23_075227_add_proof_file_to_ec_orders_table',1),(173,'2024_03_14_041050_migrate_lazy_load_theme_options',1),(174,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',1),(175,'2024_03_21_100334_update_section_title_shape',1),(176,'2024_03_25_000001_update_captcha_settings_for_contact',1),(177,'2024_03_25_000001_update_captcha_settings_for_newsletter',1),(178,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',1),(179,'2024_03_27_062402_create_ec_customer_deletion_requests_table',1),(180,'2024_03_29_042242_migrate_old_captcha_settings',1),(181,'2024_03_29_093946_create_ec_order_return_histories_table',1),(182,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',1),(183,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',1),(184,'2024_04_03_062451_add_cover_image_to_table_mp_stores',1),(185,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(186,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',1),(187,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','kim85@example.net','+14848100987','91509 Amari Junction','ST','Louisiana','New Verdaville',1,'main/stores/1.png','main/stores/cover-4.png','Porro laudantium quo eaque magni aut et itaque impedit. Autem eum molestiae reiciendis vel. Illo at vel officia quia ullam qui id. Quas nihil aut eum expedita fugit quis iusto dolor.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-18 23:52:02','2024-04-18 23:52:02',NULL,NULL),(2,'Global Office','ima.nikolaus@example.com','+13616517766','13457 Micah Burgs Suite 851','NI','Massachusetts','Hodkiewiczton',2,'main/stores/2.png','main/stores/cover-2.png','Rerum qui eius quis saepe unde eligendi. Debitis iure aut totam ut accusantium natus. Nisi aperiam ea et ipsa deserunt asperiores. Ut ut dolorum natus nulla voluptate occaecati. Aut laboriosam placeat quia ut recusandae ab neque. Debitis in ex quaerat ab fugit voluptatem possimus.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-18 23:52:02','2024-04-18 23:52:02',NULL,NULL),(3,'Young Shop','mills.kathryn@example.com','+18472586000','981 D\'Amore Summit Apt. 151','IR','North Carolina','South Einar',3,'main/stores/3.png','main/stores/cover-4.png','Doloribus itaque et voluptas. Nulla omnis consequatur provident rerum aliquam qui vel. Necessitatibus qui et est fugiat aut. Cum quia enim sit repellendus quia ut nobis. Distinctio non sapiente et nam. Tempore cum tempore quos ipsam voluptas incidunt dolorum.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-18 23:52:02','2024-04-18 23:52:02',NULL,NULL),(4,'Global Store','xsatterfield@example.org','+18282516629','22493 Moore Rest Suite 626','MW','Connecticut','New Rockyton',4,'main/stores/4.png','main/stores/cover-2.png','Omnis et quaerat doloremque ipsam rem consequatur. Commodi consequatur aut et et. Asperiores excepturi sapiente quia voluptates. Quibusdam maxime quas ducimus dolore voluptas dicta veniam. Hic molestias veritatis dignissimos occaecati laboriosam est. Laborum animi qui id temporibus. Corrupti et eos et maiores rem dolores illo. Dolores quia ex minus asperiores.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-18 23:52:02','2024-04-18 23:52:02',NULL,NULL),(5,'Robert’s Store','lamar38@example.net','+12404678188','3128 Pinkie Ridge','KH','New Hampshire','New Kipburgh',5,'main/stores/5.png','main/stores/cover-2.png','Officia vel delectus explicabo labore. Rem quia et amet placeat sit deserunt consequatur. Porro modi facere placeat odit alias similique. Ut consequatur vel id et doloribus velit. Et quo omnis quia deserunt. Id aut illo doloribus sit voluptate velit quam. Nobis ut amet corporis tempora.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-18 23:52:02','2024-04-18 23:52:02',NULL,NULL),(6,'Stouffer','denesik.susanna@example.com','+14757640212','988 Kaylah Way','LA','South Dakota','Charlottemouth',6,'main/stores/6.png','main/stores/cover-2.png','Quae est dolor in possimus sed optio. Voluptatem consequuntur minima omnis illum magnam libero qui. Qui distinctio blanditiis incidunt vitae quo molestiae. Maiores odit dolorem sint dolores sed et. Dignissimos ad qui cum est eaque. Quo blanditiis totam consequatur ipsam excepturi earum minima.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-18 23:52:02','2024-04-18 23:52:02',NULL,NULL),(7,'StarKist','fern.smith@example.org','+19254092076','372 Denis Fort Apt. 090','MV','Iowa','Robertsville',7,'main/stores/7.png','main/stores/cover-2.png','Eos deserunt quas consequatur quia accusantium voluptas et dolore. Occaecati accusantium illum ut nobis iure. Dicta ipsam occaecati facilis voluptas tempora nesciunt voluptatem. Est aut modi quos consequatur architecto quis et. Voluptas in repellendus odio et impedit. Velit deserunt aspernatur voluptatem culpa totam mollitia modi dicta. Quidem dolor non eaque aliquid et eos ea.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-18 23:52:02','2024-04-18 23:52:02',NULL,NULL),(8,'Old El Paso','oheidenreich@example.com','+15348379713','26586 Yesenia Rapid','AW','Georgia','West Ethyl',8,'main/stores/8.png','main/stores/cover-2.png','Magni est animi laudantium quas neque eaque eaque. Eaque repellat expedita quibusdam. Voluptatem consectetur temporibus iste est quidem ducimus deleniti. Corrupti beatae qui mollitia minima nam est voluptas. Ut voluptas sint recusandae qui ratione maiores. Et hic saepe quibusdam. Dolorem voluptatem adipisci sit quidem ipsum.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-18 23:52:02','2024-04-18 23:52:02',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,1,0.00,0.00,0.00,'$2y$12$WjcZNMlgWWIPJNm2/0CdtuTJ77QSfSpn8m1ANKrMHf9tASTYJoug6','{\"name\":\"Chance Treutel\",\"number\":\"+13808292533\",\"full_name\":\"Silas Paucek\",\"description\":\"Amya Pagac\"}','2024-04-18 23:52:00','2024-04-18 23:52:00','bank_transfer',NULL),(2,2,0.00,0.00,0.00,'$2y$12$EoLkqcPhlgpbacBL5A/g7ejEmCSqhLnhglkLBRTzQONZgD5ZW1YSS','{\"name\":\"Prof. Garth Frami\",\"number\":\"+13206034336\",\"full_name\":\"Coby Brown\",\"description\":\"Mrs. Shawna Wuckert\"}','2024-04-18 23:52:00','2024-04-18 23:52:00','bank_transfer',NULL),(3,3,0.00,0.00,0.00,'$2y$12$65VXQ45pKFaaRIxXWl/QKuRuS.XbW8SRkMw.5ubY6X1QQ8RxLSzRW','{\"name\":\"Jaclyn Toy\",\"number\":\"+19857892699\",\"full_name\":\"Rosendo Kirlin\",\"description\":\"Stella Gislason\"}','2024-04-18 23:52:00','2024-04-18 23:52:00','bank_transfer',NULL),(4,4,0.00,0.00,0.00,'$2y$12$XFYTBKKYDIMo8R2.W0.JP.F1n50NciqifOigR1PYxUkvNMbbxohbO','{\"name\":\"Avery Waelchi\",\"number\":\"+16789487141\",\"full_name\":\"Miss Loraine Greenfelder II\",\"description\":\"Luciano Schumm\"}','2024-04-18 23:52:01','2024-04-18 23:52:01','bank_transfer',NULL),(5,5,0.00,0.00,0.00,'$2y$12$LQK2hg4KRPfvO9DRCw8a9evb56giE2gXblyNJF5t2genGyb7.newW','{\"name\":\"Trevion Hodkiewicz II\",\"number\":\"+17129844311\",\"full_name\":\"Prof. Jude Glover Sr.\",\"description\":\"Sharon Kessler\"}','2024-04-18 23:52:01','2024-04-18 23:52:01','bank_transfer',NULL),(6,6,0.00,0.00,0.00,'$2y$12$K0vkAbE2Gz244HHAHPqojuQT1l9G79.c1PrDuPM/gEe.i6dsbaGqy','{\"name\":\"Bradley Bins\",\"number\":\"+13869923265\",\"full_name\":\"Prof. Bernhard Cruickshank PhD\",\"description\":\"Haven Jerde\"}','2024-04-18 23:52:01','2024-04-18 23:52:01','bank_transfer',NULL),(7,7,0.00,0.00,0.00,'$2y$12$GqFO0oJAnQOnQuQwRAPYm.tv6TT6J4ntrKG8KAWmx2PD9oVGWmGxW','{\"name\":\"Prof. Meghan Lynch\",\"number\":\"+14435791101\",\"full_name\":\"Dr. Angus Carter\",\"description\":\"Dr. Merl Nader\"}','2024-04-18 23:52:01','2024-04-18 23:52:01','bank_transfer',NULL),(8,8,0.00,0.00,0.00,'$2y$12$mNOlH5HmYckeU5/KCQDX7.8e9KBx6FzNuRF0TCsH70/1m8Zwr7LWu','{\"name\":\"Betsy Maggio\",\"number\":\"+16239926470\",\"full_name\":\"Amy Zemlak\",\"description\":\"Adah Armstrong\"}','2024-04-18 23:52:02','2024-04-18 23:52:02','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','[simple-slider customize_font_family_of_description=\"1\" font_family_of_description=\"Charm\" style=\"3\" key=\"home-slider\"][/simple-slider][ecommerce-categories style=\"slider\" category_ids=\"1,2,7,17\" background_color=\"#F3F5F7\" title=\"Discover our products\" subtitle=\"Product Collection\" button_label=\"Shop All Products\" button_url=\"/products\" enable_lazy_loading=\"yes\"][/ecommerce-categories][ecommerce-products style=\"simple\" by=\"specify\" product_ids=\"2,39,41\" enable_lazy_loading=\"yes\"][/ecommerce-products][ecommerce-products style=\"grid\" title=\"Best sellers in beauty\" subtitle=\"Shop by Category\" by=\"category\" category_ids=\"2,3,4\" limit=\"8\" background_color=\"rgb(234, 228, 222)\" button_label=\"Shop All Products\" button_url=\"/products\" enable_lazy_loading=\"yes\"][/ecommerce-products][ecommerce-product-groups title=\"Enjoy the best quality\" subtitle=\"Best Seller This Week’s\" limit=\"8\" tabs=\"all,featured,on-sale,trending,top-rated\" enable_lazy_loading=\"yes\"][/ecommerce-product-groups][testimonials style=\"2\" title=\"What our Clients say\" subtitle=\"Customers Review\" testimonial_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/testimonials][site-features style=\"2\" quantity=\"4\" title_1=\"Free Delivery\" description_1=\"Orders from all item\" icon_1=\"ti ti-truck-delivery\" title_2=\"Return & Refund\" description_2=\"Money-back guarantee\" icon_2=\"ti ti-currency-dollar\" title_3=\"Member Discount\" description_3=\"Every order over $140.00\" icon_3=\"ti ti-discount-2\" title_4=\"Support 24/7\" description_4=\"Contact us 24 hours a day\" icon_4=\"ti ti-headset\" enable_lazy_loading=\"yes\"][/site-features][gallery style=\"2\" limit=\"6\" enable_lazy_loading=\"yes\"][/gallery]',1,NULL,'full-width',NULL,'published','2024-04-18 23:52:07','2024-04-18 23:52:07'),(2,'Product Categories','[ads style=\"2\" key_1=\"UROL9F9ZZVAA\" key_2=\"B30VDBKO7SBF\" enable_lazy_loading=\"yes\"][/ads]<p>&nbsp;</p>[ecommerce-categories category_ids=\"11,14,17,18,21,22,23,25,38\" style=\"grid\" enable_lazy_loading=\"yes\"][/ecommerce-categories]<p>&nbsp;</p><p>&nbsp;</p>',1,NULL,'full-width',NULL,'published','2024-04-18 23:52:07','2024-04-18 23:52:07'),(3,'Coupons','[ecommerce-coupons coupon_ids=\"1,2,3,4,5,6\" enable_lazy_loading=\"yes\"][/ecommerce-coupons]',1,NULL,'full-width',NULL,'published','2024-04-18 23:52:07','2024-04-18 23:52:07'),(4,'Coupons','[ecommerce-coupons coupon_ids=\"1,2,3,4,5,6\" enable_lazy_loading=\"yes\"][/ecommerce-coupons]',1,NULL,'full-width',NULL,'published','2024-04-18 23:52:07','2024-04-18 23:52:07'),(5,'Blog',NULL,1,NULL,'full-width',NULL,'published','2024-04-18 23:52:07','2024-04-18 23:52:07'),(6,'Contact','[contact-form show_contact_form=&quot;1&quot; title=&quot;Sent A Message&quot; quantity=&quot;2&quot; icon_1=&quot;main/contact/icon-1.png&quot; content_1=&quot;contact@shofy.com &lt;br&gt; &lt;strong&gt;+670 413 90 762&lt;/strong&gt;&quot; icon_2=&quot;main/contact/icon-2.png&quot; content_2=&quot;502 New St, Brighton VIC 3186, Australia&quot; show_social_info=&quot;1&quot; social_info_label=&quot;Find on social media&quot; social_info_icon=&quot;main/contact/icon-3.png&quot;][/contact-form][google-map]502 New Street, Brighton VIC, Australia[/google-map]',1,NULL,'full-width',NULL,'published','2024-04-18 23:52:07','2024-04-18 23:52:07'),(7,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2024-04-18 23:52:07','2024-04-18 23:52:07'),(8,'Our Story','<h4>A passion for handcrafted coffee, brewed with love and community.</h4>\n\n<p>\n    We are a small, family-owned coffee roaster dedicated to bringing the finest, ethically sourced beans to your cup. Our story began in a cozy kitchen, fueled by a shared passion for the rich aroma and invigorating taste of freshly brewed coffee. We dreamt of creating a space where people could connect over a warm cup, share stories, and experience the joy of handcrafted coffee.\n</p>\n\n<h4>From Humble Beginnings to Roasting Success:</h4>\n\n<p>\n    Our journey started with a small coffee roaster nestled in our garage. We spent countless hours experimenting with different roasting profiles, meticulously cupping each batch to achieve the perfect balance of flavor and aroma. Driven by a desire to make a difference, we built relationships with sustainable coffee farms around the world, ensuring fair trade practices and the highest quality beans.\n</p>\n\n<h4>Milestones and More to Come:</h4>\n\n<p>\n    Our dedication to quality and community resonated with coffee lovers, and our small business quickly grew. We opened our first cafe, a warm and inviting space where people could gather, savor our freshly roasted coffee, and connect with friends and neighbors. We\'ve continued to expand, now offering a variety of handcrafted coffee beverages, alongside delicious pastries and light bites.\n</p>\n\n<h4>Values at Our Core:</h4>\n\n<p>\n    At the heart of everything we do lies our commitment to ethical sourcing, sustainable practices, and building meaningful connections. We believe in supporting the communities that cultivate our coffee beans, ensuring fair wages and responsible farming methods. Every cup you enjoy contributes to a positive impact, one sip at a time.\n</p>\n\n<h4>Join us on our journey!</h4>\n\n<p>\n    We invite you to explore our world of coffee, from the rich diversity of our bean origins to the unique flavors crafted through meticulous roasting. Visit our cafe, discover your perfect cup, and become part of our ever-growing coffee community. Let\'s connect over a cup, share stories, and celebrate the simple joy of a well-brewed coffee.\n</p>\n',1,NULL,NULL,NULL,'published','2024-04-18 23:52:07','2024-04-18 23:52:07'),(9,'Careers','<h3>Careers: Be Part of Our Brewing Legacy</h3>\n\n<p>\n    At Shofy, we\'re not just brewing coffee, we\'re brewing a legacy. Since our humble beginnings in 2024, we\'ve grown from a small, family-owned roaster to a thriving coffee haven. But our passion for quality, community, and sustainability remains at the core of everything we do.\n</p>\n\n<h4>Why Join Our Team?</h4>\n\n<ul>\n    <li>\n        <p><strong>Become a Coffee Connoisseur</strong>: Immerse yourself in the world of coffee, learning from experienced roasters and baristas about bean origins, roasting techniques, and crafting the perfect cup.</p>\n    </li>\n    <li>\n        <p><strong>Fuel Your Passion</strong>: Contribute to our mission by sourcing ethically, promoting sustainable practices, and fostering positive relationships with coffee-growing communities around the globe.</p>\n    </li>\n    <li>\n        <p><strong>Grow with Us</strong>: We offer comprehensive training programs and opportunities for professional development, helping you refine your skills and advance your career in the coffee industry.</p>\n    </li>\n    <li>\n        <p><strong>Be Part of the Family</strong>: We cultivate a collaborative and supportive work environment where your unique talents and perspectives are valued.</p>\n    </li>\n</ul>\n\n<h4>Current Openings:</h4>\n\n<ul>\n    <li>\n        <p><strong>Coffee Roaster</strong>: Play a vital role in our roasting process, meticulously crafting unique flavor profiles and ensuring the highest quality beans reach our customers.</p>\n    </li>\n    <li>\n        <p><strong>Barista</strong>: Become a coffee ambassador, welcoming guests with a smile, crafting their perfect cup, and sharing your knowledge and passion for coffee.</p>\n    </li>\n    <li>\n        <p><strong>Cafe Manager</strong>: Lead your team in creating a warm and inviting atmosphere, overseeing daily operations, and ensuring exceptional customer service.</p>\n    </li>\n</ul>\n\n<h4>We are always looking for passionate individuals who share our values:</h4>\n\n<ul>\n    <li>\n        <p>A genuine love for coffee and a desire to learn everything there is to know about it.</p>\n    </li>\n    <li>\n        <p>A commitment to ethical sourcing, sustainability, and social responsibility.</p>\n    </li>\n    <li>\n        <p>Excellent communication and interpersonal skills to build rapport with colleagues and customers.</p>\n    </li>\n    <li>\n        <p>A positive attitude, a willingness to learn, and a collaborative spirit.</p>\n    </li>\n</ul>\n\n<p>Ready to join our brewing legacy?</p>\n\n<p>\n    Submit your resume and cover letter, telling us why you\'re a perfect fit for our team. We look forward to meeting passionate individuals who are ready to brew the future with us, one cup at a time.\n</p>\n',1,NULL,NULL,NULL,'published','2024-04-18 23:52:07','2024-04-18 23:52:07'),(10,'Shipping','<section>\n    <h2>Shipping Methods</h2>\n    <p>We offer several shipping methods to choose from:</p>\n    <ul>\n        <li>Standard Shipping - 3 to 5 business days</li>\n        <li>Express Shipping - 1 to 2 business days</li>\n        <li>International Shipping - 7 to 14 business days</li>\n    </ul>\n    <p>Please note that shipping times may vary depending on your location and other factors.</p>\n</section>\n\n<section>\n    <h2>Shipping Costs</h2>\n    <p>Shipping costs are calculated based on the weight of your order and the shipping method selected during checkout.</p>\n    <p>You can view the estimated shipping costs in your shopping cart before completing your purchase.</p>\n</section>\n\n<section>\n    <h2>Tracking Your Order</h2>\n    <p>Once your order has been shipped, you will receive a confirmation email with a tracking number.</p>\n    <p>You can use this tracking number to monitor the status of your delivery on our website or through the shipping carrier\'s website.</p>\n</section>\n\n<section>\n    <h2>Shipping Restrictions</h2>\n    <p>Some items may be subject to shipping restrictions due to size, weight, or destination.</p>\n    <p>If your order contains any restricted items, we will notify you during the checkout process.</p>\n</section>\n',1,NULL,NULL,NULL,'published','2024-04-18 23:52:07','2024-04-18 23:52:07');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(1,1),(3,2),(2,2),(4,3),(1,4),(2,4),(2,5),(5,5),(4,6),(6,6),(5,7),(1,7),(2,8),(6,8),(1,9),(4,9),(2,10),(5,10),(4,11),(1,12),(6,12),(6,13),(5,13),(6,14),(4,14),(1,15),(5,15),(3,16),(6,16),(4,17),(6,17),(6,18),(5,18);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (2,1),(8,1),(5,2),(4,2),(3,2),(8,3),(7,3),(4,3),(8,4),(7,4),(3,4),(5,5),(4,5),(6,5),(3,6),(1,6),(2,7),(1,7),(5,7),(3,8),(6,8),(2,8),(3,9),(7,9),(2,9),(5,10),(3,10),(5,11),(7,11),(4,12),(7,12),(3,12),(3,13),(6,13),(8,13),(3,14),(7,14),(6,14),(2,15),(8,15),(5,15),(8,16),(2,16),(4,16),(1,17),(6,17),(5,18),(4,18),(1,18);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','The King\'s argument was, that anything that had a head unless there was nothing else to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it was very likely true.) Down, down, down. There was a queer-shaped.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-5.jpg',825,NULL,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','Let this be a walrus or hippopotamus, but then she remembered that she tipped over the fire, licking her paws and washing her face--and she is of mine, the less there is of finding morals in.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-5.jpg',2056,NULL,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(3,'The Top 2020 Handbag Trends to Know','SHE, of course,\' said the Cat. \'I\'d nearly forgotten that I\'ve got to see if she had caught the baby at her feet as the large birds complained that they couldn\'t get them out of sight: then it.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-3.jpg',1134,NULL,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(4,'How to Match the Color of Your Handbag With an Outfit','Queen was in the sun. (IF you don\'t know what it was: she was now only ten inches high, and her eyes immediately met those of a book,\' thought Alice \'without pictures or conversations in it, and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-3.jpg',1509,NULL,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(5,'How to Care for Leather Bags','Queen?\' said the Mouse to tell them something more. \'You promised to tell me your history, you know,\' said Alice, \'because I\'m not used to say when I got up this morning, but I can\'t see you?\' She.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-12.jpg',951,NULL,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','The Mouse did not like the name: however, it only grinned when it had entirely disappeared; so the King said, for about the reason is--\' here the conversation a little. \'\'Tis so,\' said the Mock.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-7.jpg',1822,NULL,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(7,'Essential Qualities of Highly Successful Music','But there seemed to Alice an excellent opportunity for repeating his remark, with variations. \'I shall sit here,\' he said, turning to Alice, they all looked puzzled.) \'He must have been ill.\' \'So.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-2.jpg',2365,NULL,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(8,'9 Things I Love About Shaving My Head','Alice found at first was moderate. But the snail replied \"Too far, too far!\" and gave a little wider. \'Come, it\'s pleased so far,\' said the Hatter, it woke up again with a deep voice, \'What are they.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-6.jpg',1134,NULL,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(9,'Why Teamwork Really Makes The Dream Work','I\'m sure she\'s the best thing to get in?\' \'There might be hungry, in which the March Hare. \'Yes, please do!\' but the three gardeners who were lying round the court with a sigh: \'it\'s always.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-5.jpg',1676,NULL,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(10,'The World Caters to Average People','Alice took up the fan and the Queen furiously, throwing an inkstand at the flowers and those cool fountains, but she did not like to see the earth takes twenty-four hours to turn round on its.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-7.jpg',1316,NULL,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(11,'The litigants on the screen are not actors','I goes like a Jack-in-the-box, and up I goes like a wild beast, screamed \'Off with his knuckles. It was all dark overhead; before her was another puzzling question; and as Alice could not answer.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-8.jpg',505,NULL,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(12,'Hiring the Right Sales Team at the Right Time','Queen. \'Never!\' said the King. \'When did you ever eat a little shriek and a long sleep you\'ve had!\' \'Oh, I\'ve had such a simple question,\' added the Queen. \'It proves nothing of the reeds--the.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-2.jpg',2175,NULL,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(13,'Fully Embrace the Return of 90s fashion','William,\' the young man said, \'And your hair has become very white; And yet I don\'t like them raw.\' \'Well, be off, and she went on, half to itself, \'Oh dear! Oh dear! I wish you wouldn\'t squeeze.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-2.jpg',297,NULL,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(14,'Exploring the English Countryside','Cheshire Cat: now I shall have some fun now!\' thought Alice. \'Now we shall get on better.\' \'I\'d rather finish my tea,\' said the Hatter: \'but you could manage it?) \'And what are they doing?\' Alice.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-12.jpg',1332,NULL,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(15,'Here’s the First Valentino’s New Makeup Collection','I eat or drink under the window, and one foot to the conclusion that it might end, you know,\' Alice gently remarked; \'they\'d have been ill.\' \'So they were,\' said the sage, as he came, \'Oh! the.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-1.jpg',1138,NULL,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(16,'Follow Your own Design process, whatever gets','Hatter. He came in with the birds and beasts, as well as she picked her way into a conversation. \'You don\'t know where Dinn may be,\' said the King; and the three gardeners at it, busily painting.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-8.jpg',743,NULL,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(17,'Freelancer Days 2024, What’s new?','KING AND QUEEN OF HEARTS. Alice was silent. The King and the poor child, \'for I never knew so much into the garden with one eye, How the Owl and the shrill voice of thunder, and people began running.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-3.jpg',1828,NULL,'2024-04-18 23:51:59','2024-04-18 23:51:59'),(18,'Quality Foods Requirments For Every Human Body’s','LESS,\' said the Caterpillar sternly. \'Explain yourself!\' \'I can\'t help it,\' said Alice, who felt very curious to know what they\'re like.\' \'I believe so,\' Alice replied in an offended tone, \'so I.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-11.jpg',378,NULL,'2024-04-18 23:51:59','2024-04-18 23:51:59');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"extensions.index\":true,\"systems.cronjob\":true,\"core.tools\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.website-tracking\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"plugins.captcha\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.general\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.settings\":true,\"marketplace.reports\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"sale-popup.settings\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,1,1,'2024-04-18 23:51:54','2024-04-18 23:51:54');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','52ccda6ae1746f584592dc9108c79b09',NULL,'2024-04-18 23:52:07'),(2,'api_enabled','0',NULL,'2024-04-18 23:52:07'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"gallery\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"request-log\",\"sale-popup\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"testimonial\",\"translation\"]',NULL,'2024-04-18 23:52:07'),(6,'theme','shofy-beauty',NULL,'2024-04-18 23:52:07'),(7,'show_admin_bar','1',NULL,'2024-04-18 23:52:07'),(8,'payment_cod_status','1',NULL,'2024-04-18 23:52:07'),(9,'payment_bank_transfer_status','1',NULL,'2024-04-18 23:52:07'),(10,'admin_favicon','main/general/favicon.png',NULL,'2024-04-18 23:52:07'),(11,'admin_logo','main/general/logo-white.png',NULL,'2024-04-18 23:52:07'),(12,'permalink-botble-blog-models-post','blog',NULL,'2024-04-18 23:52:07'),(13,'permalink-botble-blog-models-category','blog',NULL,'2024-04-18 23:52:07'),(14,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-04-18 23:52:07'),(15,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-04-18 23:52:07'),(16,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-04-18 23:52:07'),(17,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-04-18 23:52:07'),(18,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-04-18 23:52:07'),(19,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-04-18 23:52:07'),(20,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-04-18 23:52:07'),(21,'announcement_lazy_loading','1',NULL,'2024-04-18 23:52:07'),(22,'language_hide_default','1',NULL,'2024-04-18 23:52:07'),(23,'language_switcher_display','dropdown',NULL,'2024-04-18 23:52:07'),(24,'language_display','all',NULL,'2024-04-18 23:52:07'),(25,'language_hide_languages','[]',NULL,'2024-04-18 23:52:07'),(26,'ecommerce_store_name','Shofy',NULL,'2024-04-18 23:52:07'),(27,'ecommerce_store_phone','1800979769',NULL,'2024-04-18 23:52:07'),(28,'ecommerce_store_address','502 New Street',NULL,'2024-04-18 23:52:07'),(29,'ecommerce_store_state','Brighton VIC',NULL,'2024-04-18 23:52:07'),(30,'ecommerce_store_city','Brighton VIC',NULL,'2024-04-18 23:52:07'),(31,'ecommerce_store_country','AU',NULL,'2024-04-18 23:52:07'),(32,'announcement_max_width','1390',NULL,'2024-04-18 23:52:07'),(33,'announcement_text_color','#010f1c',NULL,'2024-04-18 23:52:07'),(34,'announcement_background_color','transparent',NULL,'2024-04-18 23:52:07'),(35,'announcement_placement','theme',NULL,'2024-04-18 23:52:07'),(36,'announcement_text_alignment','start',NULL,'2024-04-18 23:52:07'),(37,'announcement_dismissible','0',NULL,'2024-04-18 23:52:07'),(38,'simple_slider_using_assets','0',NULL,'2024-04-18 23:52:07'),(39,'theme-shofy-beauty-site_name','Shofy',NULL,NULL),(40,'theme-shofy-beauty-site_title','Shofy - Multipurpose eCommerce Laravel Script',NULL,NULL),(41,'theme-shofy-beauty-seo_description','Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.',NULL,NULL),(42,'theme-shofy-beauty-copyright','© %Y All Rights Reserved.',NULL,NULL),(43,'theme-shofy-beauty-tp_primary_font','Jost',NULL,NULL),(44,'theme-shofy-beauty-primary_color','#BD844C',NULL,NULL),(45,'theme-shofy-beauty-favicon','main/general/favicon.png',NULL,NULL),(46,'theme-shofy-beauty-logo','main/general/logo.png',NULL,NULL),(47,'theme-shofy-beauty-logo_light','main/general/logo-white.png',NULL,NULL),(48,'theme-shofy-beauty-header_style','3',NULL,NULL),(49,'theme-shofy-beauty-preloader_icon','main/general/preloader-icon.png',NULL,NULL),(50,'theme-shofy-beauty-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(51,'theme-shofy-beauty-hotline','8 800 332 65-66',NULL,NULL),(52,'theme-shofy-beauty-email','contact@fartmart.co',NULL,NULL),(53,'theme-shofy-beauty-working_time','Mon - Fri: 07AM - 06PM',NULL,NULL),(54,'theme-shofy-beauty-homepage_id','1',NULL,NULL),(55,'theme-shofy-beauty-blog_page_id','5',NULL,NULL),(56,'theme-shofy-beauty-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(57,'theme-shofy-beauty-cookie_consent_learn_more_url','cookie-policy',NULL,NULL),(58,'theme-shofy-beauty-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(59,'theme-shofy-beauty-number_of_products_per_page','24',NULL,NULL),(60,'theme-shofy-beauty-number_of_cross_sale_product','6',NULL,NULL),(61,'theme-shofy-beauty-ecommerce_products_page_layout','left_sidebar',NULL,NULL),(62,'theme-shofy-beauty-ecommerce_product_item_style','3',NULL,NULL),(63,'theme-shofy-beauty-logo_in_the_checkout_page','main/general/logo.png',NULL,NULL),(64,'theme-shofy-beauty-logo_in_invoices','main/general/logo.png',NULL,NULL),(65,'theme-shofy-beauty-logo_vendor_dashboard','main/general/logo.png',NULL,NULL),(66,'theme-shofy-beauty-404_page_image','main/general/404.png',NULL,NULL),(67,'theme-shofy-beauty-newsletter_popup_enable','1',NULL,NULL),(68,'theme-shofy-beauty-newsletter_popup_image','main/general/newsletter-popup.png',NULL,NULL),(69,'theme-shofy-beauty-newsletter_popup_title','Subscribe Now',NULL,NULL),(70,'theme-shofy-beauty-newsletter_popup_subtitle','Newsletter',NULL,NULL),(71,'theme-shofy-beauty-newsletter_popup_description','Subscribe to our newsletter and get 10% off your first purchase',NULL,NULL),(72,'theme-shofy-beauty-lazy_load_images','1',NULL,NULL),(73,'theme-shofy-beauty-lazy_load_placeholder_image','main/general/placeholder.png',NULL,NULL),(74,'theme-shofy-beauty-breadcrumb_background_image','main/general/breadcrumb.jpg',NULL,NULL),(75,'theme-shofy-beauty-section_title_shape_decorated','none',NULL,NULL),(76,'theme-shofy-beauty-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"Youtube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL),(77,'theme-shofy-beauty-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,NULL),(78,'theme-shofy-beauty-header_top_background_color','#fff',NULL,NULL),(79,'theme-shofy-beauty-header_top_text_color','#010f1c',NULL,NULL),(80,'theme-shofy-beauty-header_main_background_color','transparent',NULL,NULL),(81,'theme-shofy-beauty-header_main_text_color','#010f1c',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'The Clothing Collection','beauty/sliders/slider-1.jpg','/products','New Arrivals 2023',0,'2024-04-18 23:52:02','2024-04-18 23:52:02'),(2,1,'The Summer Collection','beauty/sliders/slider-2.jpg','/products','Best Selling 2023',1,'2024-04-18 23:52:02','2024-04-18 23:52:02'),(3,1,'Amazing New designs','beauty/sliders/slider-3.jpg','/products','Winter Has Arrived',2,'2024-04-18 23:52:02','2024-04-18 23:52:02');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2024-04-18 23:52:02','2024-04-18 23:52:02');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'foodpound',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-18 23:51:54','2024-04-18 23:51:54'),(2,'itea-jsc',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-18 23:51:54','2024-04-18 23:51:54'),(3,'soda-brand',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-18 23:51:54','2024-04-18 23:51:54'),(4,'shofy',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-18 23:51:54','2024-04-18 23:51:54'),(5,'soda-brand',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-18 23:51:54','2024-04-18 23:51:54'),(6,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-18 23:51:57','2024-04-18 23:51:57'),(7,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-18 23:51:57','2024-04-18 23:51:57'),(8,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-18 23:51:57','2024-04-18 23:51:57'),(9,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-18 23:51:57','2024-04-18 23:51:57'),(10,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-18 23:51:57','2024-04-18 23:51:57'),(11,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-18 23:51:57','2024-04-18 23:51:57'),(12,'crisp-bread-cake',1,'Botble\\Blog\\Models\\Category','blog','2024-04-18 23:51:58','2024-04-18 23:51:58'),(13,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-04-18 23:51:58','2024-04-18 23:51:58'),(14,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-04-18 23:51:58','2024-04-18 23:51:58'),(15,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-04-18 23:51:58','2024-04-18 23:51:58'),(16,'organic-fruits',5,'Botble\\Blog\\Models\\Category','blog','2024-04-18 23:51:58','2024-04-18 23:51:58'),(17,'ecological',6,'Botble\\Blog\\Models\\Category','blog','2024-04-18 23:51:58','2024-04-18 23:51:58'),(18,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-04-18 23:51:58','2024-04-18 23:51:58'),(19,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-04-18 23:51:58','2024-04-18 23:51:58'),(20,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-04-18 23:51:58','2024-04-18 23:51:58'),(21,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-04-18 23:51:59','2024-04-18 23:51:59'),(22,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-04-18 23:51:59','2024-04-18 23:51:59'),(23,'nature',6,'Botble\\Blog\\Models\\Tag','tag','2024-04-18 23:51:59','2024-04-18 23:51:59'),(24,'vintage',7,'Botble\\Blog\\Models\\Tag','tag','2024-04-18 23:51:59','2024-04-18 23:51:59'),(25,'sunglasses',8,'Botble\\Blog\\Models\\Tag','tag','2024-04-18 23:51:59','2024-04-18 23:51:59'),(26,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-04-18 23:51:59','2024-04-18 23:51:59'),(27,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-04-18 23:51:59','2024-04-18 23:51:59'),(28,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-04-18 23:51:59','2024-04-18 23:51:59'),(29,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-04-18 23:51:59','2024-04-18 23:51:59'),(30,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-04-18 23:51:59','2024-04-18 23:51:59'),(31,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-04-18 23:51:59','2024-04-18 23:51:59'),(32,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-04-18 23:51:59','2024-04-18 23:51:59'),(33,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-04-18 23:51:59','2024-04-18 23:51:59'),(34,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-04-18 23:51:59','2024-04-18 23:51:59'),(35,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-04-18 23:51:59','2024-04-18 23:51:59'),(36,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-04-18 23:51:59','2024-04-18 23:51:59'),(37,'hiring-the-right-sales-team-at-the-right-time',12,'Botble\\Blog\\Models\\Post','blog','2024-04-18 23:51:59','2024-04-18 23:51:59'),(38,'fully-embrace-the-return-of-90s-fashion',13,'Botble\\Blog\\Models\\Post','blog','2024-04-18 23:51:59','2024-04-18 23:51:59'),(39,'exploring-the-english-countryside',14,'Botble\\Blog\\Models\\Post','blog','2024-04-18 23:51:59','2024-04-18 23:51:59'),(40,'heres-the-first-valentinos-new-makeup-collection',15,'Botble\\Blog\\Models\\Post','blog','2024-04-18 23:51:59','2024-04-18 23:51:59'),(41,'follow-your-own-design-process-whatever-gets',16,'Botble\\Blog\\Models\\Post','blog','2024-04-18 23:51:59','2024-04-18 23:51:59'),(42,'freelancer-days-2024-whats-new',17,'Botble\\Blog\\Models\\Post','blog','2024-04-18 23:51:59','2024-04-18 23:51:59'),(43,'quality-foods-requirments-for-every-human-bodys',18,'Botble\\Blog\\Models\\Post','blog','2024-04-18 23:51:59','2024-04-18 23:51:59'),(44,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2024-04-18 23:52:02','2024-04-18 23:52:02'),(45,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2024-04-18 23:52:02','2024-04-18 23:52:02'),(46,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2024-04-18 23:52:02','2024-04-18 23:52:02'),(47,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2024-04-18 23:52:02','2024-04-18 23:52:02'),(48,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2024-04-18 23:52:02','2024-04-18 23:52:02'),(49,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2024-04-18 23:52:02','2024-04-18 23:52:02'),(50,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2024-04-18 23:52:02','2024-04-18 23:52:02'),(51,'old-el-paso',8,'Botble\\Marketplace\\Models\\Store','stores','2024-04-18 23:52:02','2024-04-18 23:52:02'),(52,'discover-skincare',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-18 23:52:03','2024-04-18 23:52:03'),(53,'clothing',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-18 23:52:03','2024-04-18 23:52:03'),(54,'mens-clothing',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-18 23:52:03','2024-04-18 23:52:03'),(55,'t-shirts',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-18 23:52:03','2024-04-18 23:52:03'),(56,'jeans',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-18 23:52:03','2024-04-18 23:52:03'),(57,'suits',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-18 23:52:03','2024-04-18 23:52:03'),(58,'womens-clothing',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-18 23:52:03','2024-04-18 23:52:03'),(59,'dresses',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-18 23:52:03','2024-04-18 23:52:03'),(60,'blouses',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-18 23:52:03','2024-04-18 23:52:03'),(61,'pants',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-18 23:52:03','2024-04-18 23:52:03'),(62,'accessories',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-18 23:52:03','2024-04-18 23:52:03'),(63,'hats',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-18 23:52:03','2024-04-18 23:52:03'),(64,'scarves',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-18 23:52:03','2024-04-18 23:52:03'),(65,'jewelry',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-18 23:52:03','2024-04-18 23:52:03'),(66,'shoes',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-18 23:52:03','2024-04-18 23:52:03'),(67,'sportswear',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-18 23:52:03','2024-04-18 23:52:03'),(68,'activewear',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-18 23:52:03','2024-04-18 23:52:03'),(69,'running-shoes',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-18 23:52:03','2024-04-18 23:52:03'),(70,'vintage-denim-jacket',1,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:03','2024-04-18 23:52:03'),(71,'floral-maxi-dress',2,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:03','2024-04-18 23:52:03'),(72,'leather-ankle-boots',3,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:03','2024-04-18 23:52:03'),(73,'knit-turtleneck-sweater-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:03','2024-04-18 23:52:08'),(74,'classic-aviator-sunglasses',5,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:03','2024-04-18 23:52:03'),(75,'tailored-wool-blazer',6,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:03','2024-04-18 23:52:03'),(76,'bohemian-fringe-handbag',7,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:03','2024-04-18 23:52:03'),(77,'silk-scarf-with-geometric-print-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:03','2024-04-18 23:52:08'),(78,'high-waisted-wide-leg-trousers',9,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:03','2024-04-18 23:52:03'),(79,'embroidered-boho-blouse',10,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:03','2024-04-18 23:52:03'),(80,'statement-chunky-necklace',11,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:03','2024-04-18 23:52:03'),(81,'chic-fedora-hat-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:03','2024-04-18 23:52:08'),(82,'strappy-block-heel-sandals',13,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:03','2024-04-18 23:52:03'),(83,'velvet-evening-gown',14,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:03','2024-04-18 23:52:03'),(84,'quilted-crossbody-bag',15,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:03','2024-04-18 23:52:03'),(85,'distressed-skinny-jeans-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:03','2024-04-18 23:52:08'),(86,'lace-up-combat-boots',17,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:04'),(87,'cotton-striped-t-shirt-dress',18,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:04'),(88,'printed-palazzo-pants',19,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:04'),(89,'structured-satchel-bag-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:08'),(90,'off-shoulder-ruffle-top',21,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:04'),(91,'suede-pointed-toe-pumps',22,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:04'),(92,'cropped-cable-knit-sweater',23,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:04'),(93,'athleisure-jogger-pants-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:08'),(94,'leopard-print-midi-skirt',25,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:04'),(95,'retro-cat-eye-sunglasses',26,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:04'),(96,'faux-fur-trimmed-coat',27,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:04'),(97,'boho-fringed-kimono-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:08'),(98,'ruffled-wrap-dress',29,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:04'),(99,'beaded-evening-clutch',30,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:04'),(100,'wide-brim-floppy-hat',31,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:04'),(101,'denim-overall-jumpsuit-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:08'),(102,'embellished-ballet-flats',33,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:04'),(103,'pleated-midi-skirt',34,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:04'),(104,'velour-tracksuit-set',35,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:04'),(105,'geometric-patterned-cardigan-digital',36,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:08'),(106,'buckle-detail-ankle-booties',37,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:04'),(107,'embroidered-bomber-jacket',38,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:04'),(108,'cowl-neck-knit-poncho',39,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:04'),(109,'chunky-knit-infinity-scarf-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:08'),(110,'retro-high-top-sneakers',41,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:04'),(111,'faux-leather-leggings',42,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:04'),(112,'metallic-pleated-maxi-skirt',43,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:04','2024-04-18 23:52:04'),(113,'radiant-reflections',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-18 23:52:07','2024-04-18 23:52:07'),(114,'glamour-grove',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-18 23:52:07','2024-04-18 23:52:07'),(115,'serene-styles-showcase',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-18 23:52:07','2024-04-18 23:52:07'),(116,'allure-alcove',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-18 23:52:07','2024-04-18 23:52:07'),(117,'glamour-galleria',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-18 23:52:07','2024-04-18 23:52:07'),(118,'beauty-boulevard',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-18 23:52:07','2024-04-18 23:52:07'),(119,'home',1,'Botble\\Page\\Models\\Page','','2024-04-18 23:52:07','2024-04-18 23:52:07'),(120,'product-categories',2,'Botble\\Page\\Models\\Page','','2024-04-18 23:52:07','2024-04-18 23:52:07'),(121,'coupons',3,'Botble\\Page\\Models\\Page','','2024-04-18 23:52:07','2024-04-18 23:52:07'),(122,'coupons',4,'Botble\\Page\\Models\\Page','','2024-04-18 23:52:07','2024-04-18 23:52:07'),(123,'blog',5,'Botble\\Page\\Models\\Page','','2024-04-18 23:52:07','2024-04-18 23:52:07'),(124,'contact',6,'Botble\\Page\\Models\\Page','','2024-04-18 23:52:07','2024-04-18 23:52:07'),(125,'cookie-policy',7,'Botble\\Page\\Models\\Page','','2024-04-18 23:52:07','2024-04-18 23:52:07'),(126,'our-story',8,'Botble\\Page\\Models\\Page','','2024-04-18 23:52:07','2024-04-18 23:52:07'),(127,'careers',9,'Botble\\Page\\Models\\Page','','2024-04-18 23:52:07','2024-04-18 23:52:07'),(128,'shipping',10,'Botble\\Page\\Models\\Page','','2024-04-18 23:52:07','2024-04-18 23:52:07'),(129,'floral-maxi-dress',44,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(130,'floral-maxi-dress',45,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(131,'floral-maxi-dress',46,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(132,'tailored-wool-blazer',47,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(133,'high-waisted-wide-leg-trousers',48,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(134,'high-waisted-wide-leg-trousers',49,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(135,'statement-chunky-necklace',50,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(136,'statement-chunky-necklace',51,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(137,'chic-fedora-hat-digital',52,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(138,'chic-fedora-hat-digital',53,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(139,'chic-fedora-hat-digital',54,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(140,'strappy-block-heel-sandals',55,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(141,'strappy-block-heel-sandals',56,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(142,'strappy-block-heel-sandals',57,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(143,'velvet-evening-gown',58,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(144,'velvet-evening-gown',59,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(145,'cotton-striped-t-shirt-dress',60,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(146,'cotton-striped-t-shirt-dress',61,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(147,'cotton-striped-t-shirt-dress',62,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(148,'cotton-striped-t-shirt-dress',63,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(149,'off-shoulder-ruffle-top',64,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(150,'off-shoulder-ruffle-top',65,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(151,'off-shoulder-ruffle-top',66,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(152,'suede-pointed-toe-pumps',67,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(153,'suede-pointed-toe-pumps',68,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(154,'suede-pointed-toe-pumps',69,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(155,'suede-pointed-toe-pumps',70,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(156,'suede-pointed-toe-pumps',71,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(157,'cropped-cable-knit-sweater',72,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(158,'cropped-cable-knit-sweater',73,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(159,'leopard-print-midi-skirt',74,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(160,'boho-fringed-kimono-digital',75,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(161,'boho-fringed-kimono-digital',76,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(162,'boho-fringed-kimono-digital',77,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(163,'ruffled-wrap-dress',78,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(164,'ruffled-wrap-dress',79,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(165,'beaded-evening-clutch',80,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(166,'beaded-evening-clutch',81,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(167,'beaded-evening-clutch',82,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(168,'wide-brim-floppy-hat',83,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(169,'wide-brim-floppy-hat',84,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(170,'wide-brim-floppy-hat',85,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(171,'denim-overall-jumpsuit-digital',86,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(172,'denim-overall-jumpsuit-digital',87,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(173,'embellished-ballet-flats',88,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(174,'embellished-ballet-flats',89,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(175,'geometric-patterned-cardigan-digital',90,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(176,'geometric-patterned-cardigan-digital',91,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(177,'geometric-patterned-cardigan-digital',92,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(178,'cowl-neck-knit-poncho',93,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(179,'cowl-neck-knit-poncho',94,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(180,'cowl-neck-knit-poncho',95,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(181,'faux-leather-leggings',96,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(182,'faux-leather-leggings',97,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(183,'metallic-pleated-maxi-skirt',98,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(184,'metallic-pleated-maxi-skirt',99,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(185,'metallic-pleated-maxi-skirt',100,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08'),(186,'metallic-pleated-maxi-skirt',101,'Botble\\Ecommerce\\Models\\Product','products','2024-04-18 23:52:08','2024-04-18 23:52:08');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-18 23:51:58','2024-04-18 23:51:58'),(2,'Design',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-18 23:51:58','2024-04-18 23:51:58'),(3,'Fashion',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-18 23:51:58','2024-04-18 23:51:58'),(4,'Branding',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-18 23:51:59','2024-04-18 23:51:59'),(5,'Modern',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-18 23:51:59','2024-04-18 23:51:59'),(6,'Nature',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-18 23:51:59','2024-04-18 23:51:59'),(7,'Vintage',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-18 23:51:59','2024-04-18 23:51:59'),(8,'Sunglasses',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-18 23:51:59','2024-04-18 23:51:59');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'James Dopli','Thanks for all your efforts and teamwork over the last several months!  Thank you so much','main/users/2.jpg','Developer','published','2024-04-18 23:52:02','2024-04-18 23:52:02'),(2,'Theodore Handle','How you use the city or town name is up to you. All results may be freely used in any work.','main/users/9.jpg','CO Founder','published','2024-04-18 23:52:02','2024-04-18 23:52:02'),(3,'Shahnewaz Sakil','Very happy with our choice to take our daughter to Brave care. The entire team was great! Thank you!','main/users/3.jpg','UI/UX Designer','published','2024-04-18 23:52:02','2024-04-18 23:52:02'),(4,'Albert Flores','Wedding day savior! 5 stars. Their bridal collection is a game-changer. Made me feel like a star.','main/users/9.jpg','Bank of America','published','2024-04-18 23:52:02','2024-04-18 23:52:02');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'dixie37@zboncak.org',NULL,'$2y$12$vNx4Wsf4VlC4DVN6D7BHkOlAAC9k7sneCCgUG20tNfzV4KnQs7ofu',NULL,'2024-04-18 23:51:54','2024-04-18 23:51:54','Lucie','Ritchie','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_primary_sidebar','shofy-beauty',1,'{\"id\":\"SiteInfoWidget\",\"logo\":\"main\\/general\\/logo.png\",\"logo_height\":50,\"about\":\"Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.\",\"show_social_links\":true}','2024-04-18 23:52:07','2024-04-18 23:52:07'),(2,'CustomMenuWidget','footer_primary_sidebar','shofy-beauty',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2024-04-18 23:52:07','2024-04-18 23:52:07'),(3,'CustomMenuWidget','footer_primary_sidebar','shofy-beauty',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2024-04-18 23:52:07','2024-04-18 23:52:07'),(4,'SiteContactWidget','footer_primary_sidebar','shofy-beauty',4,'{\"id\":\"SiteContactWidget\",\"name\":\"Talk To Us\",\"phone_label\":\"Got Questions? Call us\",\"phone\":\"+670 413 90 762\",\"email\":\"support@shofy.com\",\"address\":\"79 Sleepy Hollow St. Jamaica, New York 1432\"}','2024-04-18 23:52:07','2024-04-18 23:52:07'),(5,'ProductCategoriesWidget','footer_primary_sidebar','shofy-beauty',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[5,6,7,8,10,11,12]}','2024-04-18 23:52:07','2024-04-18 23:52:07'),(6,'ProductCategoriesWidget','footer_primary_sidebar','shofy-beauty',7,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Electronics\",\"style\":\"simple-text\",\"categories\":[3,4,15,18,19,20]}','2024-04-18 23:52:07','2024-04-18 23:52:07'),(7,'ProductCategoriesWidget','footer_primary_sidebar','shofy-beauty',8,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Sweet Treats\",\"categories\":[11,12,13,14,15,16,17]}','2024-04-18 23:52:07','2024-04-18 23:52:07'),(8,'ProductCategoriesWidget','footer_primary_sidebar','shofy-beauty',9,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Fashion\",\"categories\":[1,2,3,4,5,6,7,8]}','2024-04-18 23:52:07','2024-04-18 23:52:07'),(9,'NewsletterWidget','footer_top_sidebar','shofy-beauty',1,'{\"id\":\"NewsletterWidget\",\"title\":\"Subscribe our Newsletter\",\"subtitle\":\"Sale 20% off all store\"}','2024-04-18 23:52:07','2024-04-18 23:52:07'),(10,'SiteCopyrightWidget','footer_bottom_sidebar','shofy-beauty',1,'{\"id\":\"SiteCopyrightWidget\",\"content\":\"\\u00a9 %y% All rights Reserved.\"}','2024-04-18 23:52:07','2024-04-18 23:52:07'),(11,'SiteAcceptedPaymentsWidget','footer_bottom_sidebar','shofy-beauty',2,'{\"id\":\"SiteAcceptedPaymentsWidget\",\"name\":\"Accepted Payments\",\"image\":\"main\\/general\\/footer-pay.png\",\"url\":\"#\"}','2024-04-18 23:52:07','2024-04-18 23:52:07'),(12,'BlogSearchWidget','blog_sidebar','shofy-beauty',1,'{\"id\":\"BlogSearchWidget\"}','2024-04-18 23:52:07','2024-04-18 23:52:07'),(13,'BlogAboutMeWidget','blog_sidebar','shofy-beauty',2,'{\"id\":\"BlogAboutMeWidget\",\"name\":\"About Me\",\"author_url\":\"\\/blog\",\"author_avatar\":\"main\\/users\\/3.jpg\",\"author_name\":\"Ravi O\'Leigh\",\"author_role\":\"Photographer & Blogger\",\"author_description\":\"Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient\",\"author_signature\":\"main\\/general\\/signature.png\"}','2024-04-18 23:52:07','2024-04-18 23:52:07'),(14,'BlogPostsWidget','blog_sidebar','shofy-beauty',3,'{\"id\":\"BlogPostsWidget\",\"name\":\"Latest Posts\",\"limit\":3}','2024-04-18 23:52:07','2024-04-18 23:52:07'),(15,'BlogCategoriesWidget','blog_sidebar','shofy-beauty',4,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"number_display\":6}','2024-04-18 23:52:07','2024-04-18 23:52:07'),(16,'BlogTagsWidget','blog_sidebar','shofy-beauty',5,'{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\",\"number_display\":6}','2024-04-18 23:52:07','2024-04-18 23:52:07'),(17,'ProductDetailInfoWidget','product_details_sidebar','shofy-beauty',1,'{\"id\":\"ProductDetailInfoWidget\",\"messages\":[[{\"key\":\"message\",\"value\":\"30 days easy returns\"}],[{\"key\":\"message\",\"value\":\"Order yours before 2.30pm for same day dispatch\"}]],\"description\":\"Guaranteed safe & secure checkout\",\"image\":\"main\\/general\\/footer-pay.png\"}','2024-04-18 23:52:07','2024-04-18 23:52:07'),(18,'EcommerceBrands','products_listing_top_sidebar','shofy-beauty',1,'{\"id\":\"EcommerceBrands\",\"brand_ids\":[1,2,3,4,5]}','2024-04-18 23:52:07','2024-04-18 23:52:07'),(19,'ProductCategoriesWidget','products_listing_top_sidebar','shofy-beauty',2,'{\"id\":\"ProductCategoriesWidget\",\"categories\":[1,2,7,11,15,18],\"style\":\"grid\",\"display_children\":true}','2024-04-18 23:52:07','2024-04-18 23:52:07');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-19 13:52:09