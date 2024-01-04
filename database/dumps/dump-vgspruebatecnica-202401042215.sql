-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: vgspruebatecnica
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (4,'Articulo 1','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget nunc lobortis mattis aliquam faucibus. Id venenatis a condimentum vitae sapien pellentesque habitant morbi tristique. Iaculis eu non diam phasellus vestibulum lorem sed risus ultricies. Et netus et malesuada fames ac turpis egestas. Id semper risus in hendrerit gravida. Mi eget mauris pharetra et ultrices. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Tortor dignissim convallis aenean et. Arcu dui vivamus arcu felis. Nam libero justo laoreet sit. Quis blandit turpis cursus in. Ullamcorper dignissim cras tincidunt lobortis feugiat. Nec sagittis aliquam malesuada bibendum arcu vitae. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci. Mauris rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar. Aenean sed adipiscing diam donec adipiscing.','articulo-1','2023-12-31 16:38:17','2024-01-02 18:51:50'),(5,'Articulo 2','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget nunc lobortis mattis aliquam faucibus. Id venenatis a condimentum vitae sapien pellentesque habitant morbi tristique. Iaculis eu non diam phasellus vestibulum lorem sed risus ultricies. Et netus et malesuada fames ac turpis egestas. Id semper risus in hendrerit gravida. Mi eget mauris pharetra et ultrices. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Tortor dignissim convallis aenean et. Arcu dui vivamus arcu felis. Nam libero justo laoreet sit. Quis blandit turpis cursus in. Ullamcorper dignissim cras tincidunt lobortis feugiat. Nec sagittis aliquam malesuada bibendum arcu vitae. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci. Mauris rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar. Aenean sed adipiscing diam donec adipiscing.','articulo-2','2024-01-02 18:52:09','2024-01-02 18:52:09'),(6,'Articulo 3','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget nunc lobortis mattis aliquam faucibus. Id venenatis a condimentum vitae sapien pellentesque habitant morbi tristique. Iaculis eu non diam phasellus vestibulum lorem sed risus ultricies. Et netus et malesuada fames ac turpis egestas. Id semper risus in hendrerit gravida. Mi eget mauris pharetra et ultrices. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Tortor dignissim convallis aenean et. Arcu dui vivamus arcu felis. Nam libero justo laoreet sit. Quis blandit turpis cursus in. Ullamcorper dignissim cras tincidunt lobortis feugiat. Nec sagittis aliquam malesuada bibendum arcu vitae. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci. Mauris rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar. Aenean sed adipiscing diam donec adipiscing.','articulo-3','2024-01-02 18:52:24','2024-01-02 18:52:24'),(7,'Articulo 4','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget nunc lobortis mattis aliquam faucibus. Id venenatis a condimentum vitae sapien pellentesque habitant morbi tristique. Iaculis eu non diam phasellus vestibulum lorem sed risus ultricies. Et netus et malesuada fames ac turpis egestas. Id semper risus in hendrerit gravida. Mi eget mauris pharetra et ultrices. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Tortor dignissim convallis aenean et. Arcu dui vivamus arcu felis. Nam libero justo laoreet sit. Quis blandit turpis cursus in. Ullamcorper dignissim cras tincidunt lobortis feugiat. Nec sagittis aliquam malesuada bibendum arcu vitae. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci. Mauris rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar. Aenean sed adipiscing diam donec adipiscing.','articulo-4','2024-01-02 18:53:07','2024-01-02 18:53:07'),(8,'Articulo 5','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget nunc lobortis mattis aliquam faucibus. Id venenatis a condimentum vitae sapien pellentesque habitant morbi tristique. Iaculis eu non diam phasellus vestibulum lorem sed risus ultricies. Et netus et malesuada fames ac turpis egestas. Id semper risus in hendrerit gravida. Mi eget mauris pharetra et ultrices. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Tortor dignissim convallis aenean et. Arcu dui vivamus arcu felis. Nam libero justo laoreet sit. Quis blandit turpis cursus in. Ullamcorper dignissim cras tincidunt lobortis feugiat. Nec sagittis aliquam malesuada bibendum arcu vitae. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci. Mauris rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar. Aenean sed adipiscing diam donec adipiscing.','articulo-5','2024-01-02 18:53:19','2024-01-02 18:53:19'),(9,'Articulo 6','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget nunc lobortis mattis aliquam faucibus. Id venenatis a condimentum vitae sapien pellentesque habitant morbi tristique. Iaculis eu non diam phasellus vestibulum lorem sed risus ultricies. Et netus et malesuada fames ac turpis egestas. Id semper risus in hendrerit gravida. Mi eget mauris pharetra et ultrices. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Tortor dignissim convallis aenean et. Arcu dui vivamus arcu felis. Nam libero justo laoreet sit. Quis blandit turpis cursus in. Ullamcorper dignissim cras tincidunt lobortis feugiat. Nec sagittis aliquam malesuada bibendum arcu vitae. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci. Mauris rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar. Aenean sed adipiscing diam donec adipiscing.','articulo-6','2024-01-02 18:53:42','2024-01-02 18:53:42');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorie_article`
--

DROP TABLE IF EXISTS `categorie_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorie_article` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `categorie_id` bigint(20) unsigned NOT NULL,
  `article_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categorie_article_categorie_id_foreign` (`categorie_id`),
  KEY `categorie_article_article_id_foreign` (`article_id`),
  CONSTRAINT `categorie_article_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `categorie_article_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie_article`
--

LOCK TABLES `categorie_article` WRITE;
/*!40000 ALTER TABLE `categorie_article` DISABLE KEYS */;
INSERT INTO `categorie_article` VALUES (5,1,4,NULL,NULL),(8,1,5,NULL,NULL),(9,2,5,NULL,NULL),(10,1,6,NULL,NULL),(11,2,6,NULL,NULL),(12,3,6,NULL,NULL),(13,2,7,NULL,NULL),(14,3,7,NULL,NULL),(15,1,8,NULL,NULL),(16,3,8,NULL,NULL),(17,2,9,NULL,NULL);
/*!40000 ALTER TABLE `categorie_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Noticias','noticias',NULL,NULL),(2,'Novedades','novedades',NULL,NULL),(3,'Anuncios','anuncios',NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(7,'2023_12_29_191059_create_articles_table',2),(8,'2023_12_29_191813_create_categories_table',2),(9,'2023_12_31_112709_create_categorie_article_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Alejandro','alejandro@gmail.com',NULL,'$2y$12$6sgOm03IR1AeDPaRUnk5j.7lm/a05WoZlRSra.EgHsrwU7VcLMacO',NULL,'2023-12-29 17:39:09','2023-12-29 17:39:09');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'vgspruebatecnica'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-04 22:15:35
