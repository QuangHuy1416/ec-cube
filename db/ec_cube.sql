-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: ec_cube
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.25-MariaDB

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
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_authority_role`
--

DROP TABLE IF EXISTS `dtb_authority_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_authority_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `authority_id` smallint(5) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `deny_url` varchar(4000) NOT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4A1F70B181EC865B` (`authority_id`),
  KEY `IDX_4A1F70B161220EA6` (`creator_id`),
  CONSTRAINT `FK_4A1F70B161220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  CONSTRAINT `FK_4A1F70B181EC865B` FOREIGN KEY (`authority_id`) REFERENCES `mtb_authority` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_authority_role`
--

LOCK TABLES `dtb_authority_role` WRITE;
/*!40000 ALTER TABLE `dtb_authority_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `dtb_authority_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_base_info`
--

DROP TABLE IF EXISTS `dtb_base_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_base_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` smallint(5) unsigned DEFAULT NULL,
  `pref_id` smallint(5) unsigned DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_kana` varchar(255) DEFAULT NULL,
  `postal_code` varchar(8) DEFAULT NULL,
  `addr01` varchar(255) DEFAULT NULL,
  `addr02` varchar(255) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `business_hour` varchar(255) DEFAULT NULL,
  `email01` varchar(255) DEFAULT NULL,
  `email02` varchar(255) DEFAULT NULL,
  `email03` varchar(255) DEFAULT NULL,
  `email04` varchar(255) DEFAULT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `shop_kana` varchar(255) DEFAULT NULL,
  `shop_name_eng` varchar(255) DEFAULT NULL,
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `good_traded` varchar(4000) DEFAULT NULL,
  `message` varchar(4000) DEFAULT NULL,
  `delivery_free_amount` decimal(12,2) unsigned DEFAULT NULL,
  `delivery_free_quantity` int(10) unsigned DEFAULT NULL,
  `option_mypage_order_status_display` tinyint(1) NOT NULL DEFAULT 1,
  `option_nostock_hidden` tinyint(1) NOT NULL DEFAULT 0,
  `option_favorite_product` tinyint(1) NOT NULL DEFAULT 1,
  `option_product_delivery_fee` tinyint(1) NOT NULL DEFAULT 0,
  `option_product_tax_rule` tinyint(1) NOT NULL DEFAULT 0,
  `option_customer_activate` tinyint(1) NOT NULL DEFAULT 1,
  `option_remember_me` tinyint(1) NOT NULL DEFAULT 1,
  `authentication_key` varchar(255) DEFAULT NULL,
  `php_path` varchar(255) DEFAULT NULL,
  `option_point` tinyint(1) NOT NULL DEFAULT 1,
  `basic_point_rate` decimal(10,0) unsigned DEFAULT 1,
  `point_conversion_rate` decimal(10,0) unsigned DEFAULT 1,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1D3655F4F92F3E70` (`country_id`),
  KEY `IDX_1D3655F4E171EF5F` (`pref_id`),
  CONSTRAINT `FK_1D3655F4E171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`),
  CONSTRAINT `FK_1D3655F4F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_base_info`
--

LOCK TABLES `dtb_base_info` WRITE;
/*!40000 ALTER TABLE `dtb_base_info` DISABLE KEYS */;
INSERT INTO `dtb_base_info` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HuyHVQ@saisystem.vn','HuyHVQ@saisystem.vn','HuyHVQ@saisystem.vn','HuyHVQ@saisystem.vn','Trainning_EC_CUBE',NULL,NULL,'2023-11-01 07:06:27',NULL,NULL,NULL,NULL,1,0,1,0,0,1,1,NULL,NULL,1,1,1,'baseinfo');
/*!40000 ALTER TABLE `dtb_base_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_block`
--

DROP TABLE IF EXISTS `dtb_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_block` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `device_type_id` smallint(5) unsigned DEFAULT NULL,
  `block_name` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `use_controller` tinyint(1) NOT NULL DEFAULT 0,
  `deletable` tinyint(1) NOT NULL DEFAULT 1,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_type_id` (`device_type_id`,`file_name`),
  KEY `IDX_6B54DCBD4FFA550E` (`device_type_id`),
  CONSTRAINT `FK_6B54DCBD4FFA550E` FOREIGN KEY (`device_type_id`) REFERENCES `mtb_device_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_block`
--

LOCK TABLES `dtb_block` WRITE;
/*!40000 ALTER TABLE `dtb_block` DISABLE KEYS */;
INSERT INTO `dtb_block` VALUES (1,10,'Giỏ hàng','cart',0,0,'2017-03-07 10:14:52','2017-03-07 10:14:52','block'),(2,10,'Thể loại','category',0,0,'2017-03-07 10:14:52','2017-03-07 10:14:52','block'),(3,10,'Điều hướng danh mục (PC)','category_nav_pc',0,0,'2017-03-07 10:14:52','2017-03-07 10:14:52','block'),(4,10,'Điều hướng danh mục (SP)','category_nav_sp',0,0,'2017-03-07 10:14:52','2017-03-07 10:14:52','block'),(5,10,'Sản phẩm mới','eyecatch',0,0,'2017-03-07 10:14:52','2017-03-07 10:14:52','block'),(6,10,'Chân trang','footer',0,0,'2017-03-07 10:14:52','2017-03-07 10:14:52','block'),(7,10,'Đầu trang (Tìm kiếm sản phẩm, Menu đăng nhập, Giỏ hàng)','header',0,0,'2017-03-07 10:14:52','2017-03-07 10:14:52','block'),(8,10,'Điều hướng đăng nhập (Common)','login',0,0,'2017-03-07 10:14:52','2017-03-07 10:14:52','block'),(9,10,'Điều hướng đăng nhập (SP)','login_sp',0,0,'2017-03-07 10:14:52','2017-03-07 10:14:52','block'),(10,10,'Logos','logo',0,0,'2017-03-07 10:14:52','2017-03-07 10:14:52','block'),(11,10,'Sản phẩm mới','new_item',0,0,'2017-03-07 10:14:52','2017-03-07 10:14:52','block'),(12,10,'Tin tức','news',0,0,'2017-03-07 10:14:52','2017-03-07 10:14:52','block'),(13,10,'Tìm kiếm sản phẩm','search_product',1,0,'2017-03-07 10:14:52','2017-03-07 10:14:52','block'),(14,10,'Tính năng','topic',0,0,'2017-03-07 10:14:52','2017-03-07 10:14:52','block');
/*!40000 ALTER TABLE `dtb_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_block_position`
--

DROP TABLE IF EXISTS `dtb_block_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_block_position` (
  `section` int(10) unsigned NOT NULL,
  `block_id` int(10) unsigned NOT NULL,
  `layout_id` int(10) unsigned NOT NULL,
  `block_row` int(10) unsigned DEFAULT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`section`,`block_id`,`layout_id`),
  KEY `IDX_35DCD731E9ED820C` (`block_id`),
  KEY `IDX_35DCD7318C22AA1A` (`layout_id`),
  CONSTRAINT `FK_35DCD7318C22AA1A` FOREIGN KEY (`layout_id`) REFERENCES `dtb_layout` (`id`),
  CONSTRAINT `FK_35DCD731E9ED820C` FOREIGN KEY (`block_id`) REFERENCES `dtb_block` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_block_position`
--

LOCK TABLES `dtb_block_position` WRITE;
/*!40000 ALTER TABLE `dtb_block_position` DISABLE KEYS */;
INSERT INTO `dtb_block_position` VALUES (3,3,1,3,'blockposition'),(3,3,2,3,'blockposition'),(3,7,1,1,'blockposition'),(3,7,2,1,'blockposition'),(3,10,1,2,'blockposition'),(3,10,2,2,'blockposition'),(7,2,1,4,'blockposition'),(7,5,1,1,'blockposition'),(7,11,1,3,'blockposition'),(7,12,1,5,'blockposition'),(7,14,1,2,'blockposition'),(10,6,1,1,'blockposition'),(10,6,2,1,'blockposition'),(11,4,1,2,'blockposition'),(11,4,2,2,'blockposition'),(11,9,1,3,'blockposition'),(11,9,2,3,'blockposition'),(11,13,1,1,'blockposition'),(11,13,2,1,'blockposition');
/*!40000 ALTER TABLE `dtb_block_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_cart`
--

DROP TABLE IF EXISTS `dtb_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `cart_key` varchar(255) DEFAULT NULL,
  `pre_order_id` varchar(255) DEFAULT NULL,
  `total_price` decimal(12,2) unsigned NOT NULL DEFAULT 0.00,
  `delivery_fee_total` decimal(12,2) unsigned NOT NULL DEFAULT 0.00,
  `sort_no` smallint(5) unsigned DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `add_point` decimal(12,0) unsigned NOT NULL DEFAULT 0,
  `use_point` decimal(12,0) unsigned NOT NULL DEFAULT 0,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dtb_cart_pre_order_id_idx` (`pre_order_id`),
  KEY `IDX_FC3C24F09395C3F3` (`customer_id`),
  KEY `dtb_cart_update_date_idx` (`update_date`),
  CONSTRAINT `FK_FC3C24F09395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `dtb_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_cart`
--

LOCK TABLES `dtb_cart` WRITE;
/*!40000 ALTER TABLE `dtb_cart` DISABLE KEYS */;
INSERT INTO `dtb_cart` VALUES (3,NULL,'UkIqHPguZ2k0qby46yYmqe4SOxbeeKUH_1',NULL,154000.00,0.00,NULL,'2023-11-02 09:48:05','2023-11-02 09:48:13',0,0,'cart');
/*!40000 ALTER TABLE `dtb_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_cart_item`
--

DROP TABLE IF EXISTS `dtb_cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_cart_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_class_id` int(10) unsigned DEFAULT NULL,
  `cart_id` int(10) unsigned DEFAULT NULL,
  `price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `quantity` decimal(10,0) NOT NULL DEFAULT 0,
  `point_rate` decimal(10,0) unsigned DEFAULT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B0228F7421B06187` (`product_class_id`),
  KEY `IDX_B0228F741AD5CDBF` (`cart_id`),
  CONSTRAINT `FK_B0228F741AD5CDBF` FOREIGN KEY (`cart_id`) REFERENCES `dtb_cart` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_B0228F7421B06187` FOREIGN KEY (`product_class_id`) REFERENCES `dtb_product_class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_cart_item`
--

LOCK TABLES `dtb_cart_item` WRITE;
/*!40000 ALTER TABLE `dtb_cart_item` DISABLE KEYS */;
INSERT INTO `dtb_cart_item` VALUES (3,10,3,30800.00,5,NULL,'cartitem');
/*!40000 ALTER TABLE `dtb_cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_category`
--

DROP TABLE IF EXISTS `dtb_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_category_id` int(10) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `category_name` varchar(255) NOT NULL,
  `hierarchy` int(10) unsigned NOT NULL,
  `sort_no` int(11) NOT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5ED2C2B796A8F92` (`parent_category_id`),
  KEY `IDX_5ED2C2B61220EA6` (`creator_id`),
  CONSTRAINT `FK_5ED2C2B61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  CONSTRAINT `FK_5ED2C2B796A8F92` FOREIGN KEY (`parent_category_id`) REFERENCES `dtb_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_category`
--

LOCK TABLES `dtb_category` WRITE;
/*!40000 ALTER TABLE `dtb_category` DISABLE KEYS */;
INSERT INTO `dtb_category` VALUES (1,NULL,NULL,'Gelato',1,5,'2017-03-07 10:14:52','2017-03-07 10:14:52','category'),(2,NULL,NULL,'Sản phẩm mới',1,6,'2017-03-07 10:14:52','2017-03-07 10:14:52','category'),(3,1,NULL,'Món tráng miệng ngon',2,3,'2017-03-07 10:14:52','2017-03-07 10:14:52','category'),(4,3,NULL,'CUBE',3,2,'2017-03-07 10:14:52','2017-03-07 10:14:52','category'),(5,NULL,NULL,'Bánh mì kẹp kem',1,1,'2017-03-07 10:14:52','2017-03-07 10:14:52','category'),(6,5,NULL,'Trái cây',2,4,'2017-03-07 10:14:52','2017-03-07 10:14:52','category');
/*!40000 ALTER TABLE `dtb_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_class_category`
--

DROP TABLE IF EXISTS `dtb_class_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_class_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_name_id` int(10) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `backend_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` int(10) unsigned NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9B0D1DBAB462FB2A` (`class_name_id`),
  KEY `IDX_9B0D1DBA61220EA6` (`creator_id`),
  CONSTRAINT `FK_9B0D1DBA61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  CONSTRAINT `FK_9B0D1DBAB462FB2A` FOREIGN KEY (`class_name_id`) REFERENCES `dtb_class_name` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_class_category`
--

LOCK TABLES `dtb_class_category` WRITE;
/*!40000 ALTER TABLE `dtb_class_category` DISABLE KEYS */;
INSERT INTO `dtb_class_category` VALUES (1,1,NULL,'Chocolate','Sô cô la',3,1,'2017-03-07 10:14:52','2017-03-07 10:14:52','classcategory'),(2,1,NULL,'Green Tea','Trà xanh',2,1,'2017-03-07 10:14:52','2017-03-07 10:14:52','classcategory'),(3,1,NULL,'Vanilla','Vị vani',1,1,'2017-03-07 10:14:52','2017-03-07 10:14:52','classcategory'),(4,2,NULL,'16mm × 16mm','16mm × 16mm',3,1,'2017-03-07 10:14:52','2017-03-07 10:14:52','classcategory'),(5,2,NULL,'32mm × 32mm','32mm × 32mm',2,1,'2017-03-07 10:14:52','2017-03-07 10:14:52','classcategory'),(6,2,NULL,'64cm × 64cm','64cm × 64cm',1,1,'2017-03-07 10:14:52','2017-03-07 10:14:52','classcategory');
/*!40000 ALTER TABLE `dtb_class_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_class_name`
--

DROP TABLE IF EXISTS `dtb_class_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_class_name` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `backend_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` int(10) unsigned NOT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_187C95AD61220EA6` (`creator_id`),
  CONSTRAINT `FK_187C95AD61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_class_name`
--

LOCK TABLES `dtb_class_name` WRITE;
/*!40000 ALTER TABLE `dtb_class_name` DISABLE KEYS */;
INSERT INTO `dtb_class_name` VALUES (1,NULL,'Flavors for CUBE','Hương vị',1,'2017-03-07 10:14:52','2017-03-07 10:14:52','classname'),(2,NULL,'Sizes for CUBE','Kích thước',2,'2017-03-07 10:14:52','2017-03-07 10:14:52','classname');
/*!40000 ALTER TABLE `dtb_class_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_company`
--

DROP TABLE IF EXISTS `dtb_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_company` (
  `company_id` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `discriminator_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_company`
--

LOCK TABLES `dtb_company` WRITE;
/*!40000 ALTER TABLE `dtb_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `dtb_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_csv`
--

DROP TABLE IF EXISTS `dtb_csv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_csv` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `csv_type_id` smallint(5) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `entity_name` varchar(255) NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `reference_field_name` varchar(255) DEFAULT NULL,
  `disp_name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F55F48C3E8507796` (`csv_type_id`),
  KEY `IDX_F55F48C361220EA6` (`creator_id`),
  CONSTRAINT `FK_F55F48C361220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  CONSTRAINT `FK_F55F48C3E8507796` FOREIGN KEY (`csv_type_id`) REFERENCES `mtb_csv_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_csv`
--

LOCK TABLES `dtb_csv` WRITE;
/*!40000 ALTER TABLE `dtb_csv` DISABLE KEYS */;
INSERT INTO `dtb_csv` VALUES (1,1,NULL,'Eccube\\\\Entity\\\\Product','id',NULL,'Định danh sản phẩm',1,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(2,1,NULL,'Eccube\\\\Entity\\\\Product','Status','id','Mã trạng thái',2,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(3,1,NULL,'Eccube\\\\Entity\\\\Product','Status','name','Trạng thái',3,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(4,1,NULL,'Eccube\\\\Entity\\\\Product','name',NULL,'Tên sản phẩm',4,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(5,1,NULL,'Eccube\\\\Entity\\\\Product','note',NULL,'Ghi chú',5,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(6,1,NULL,'Eccube\\\\Entity\\\\Product','description_list',NULL,'Mô tả sản phẩm',6,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(7,1,NULL,'Eccube\\\\Entity\\\\Product','description_detail',NULL,'Mô tả sản phẩm (chi tiết)',7,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(8,1,NULL,'Eccube\\\\Entity\\\\Product','search_word',NULL,'Từ tìm kiếm',8,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(9,1,NULL,'Eccube\\\\Entity\\\\Product','free_area',NULL,'Khác',9,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(10,1,NULL,'Eccube\\\\Entity\\\\ProductClass','id',NULL,'Mã phân loại sản phẩm',10,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(11,1,NULL,'Eccube\\\\Entity\\\\ProductClass','SaleType','id','Mã kiểu bán',11,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(12,1,NULL,'Eccube\\\\Entity\\\\ProductClass','SaleType','name','Tên kiểu bán',12,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(13,1,NULL,'Eccube\\\\Entity\\\\ProductClass','ClassCategory1','id','Mã loại lớp 1',13,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(14,1,NULL,'Eccube\\\\Entity\\\\ProductClass','ClassCategory1','name','Loại lớp 1',14,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(15,1,NULL,'Eccube\\\\Entity\\\\ProductClass','ClassCategory2','id','Mã loại lớp 2',15,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(16,1,NULL,'Eccube\\\\Entity\\\\ProductClass','ClassCategory2','name','Loại lớp 2',16,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(17,1,NULL,'Eccube\\\\Entity\\\\ProductClass','DeliveryDuration','id','Mã thời gian vận chuyển',17,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(18,1,NULL,'Eccube\\\\Entity\\\\ProductClass','DeliveryDuration','name','Thời gian vận chuyển',18,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(19,1,NULL,'Eccube\\\\Entity\\\\ProductClass','code',NULL,'Mã sản phẩm',19,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(20,1,NULL,'Eccube\\\\Entity\\\\ProductClass','stock',NULL,'Số lượng',20,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(21,1,NULL,'Eccube\\\\Entity\\\\ProductClass','stock_unlimited',NULL,'Không giới hạn số lượng',21,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(22,1,NULL,'Eccube\\\\Entity\\\\ProductClass','sale_limit',NULL,'Số lượng bán tối đa cho một lần',22,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(23,1,NULL,'Eccube\\\\Entity\\\\ProductClass','price01',NULL,'Giá gốc',23,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(24,1,NULL,'Eccube\\\\Entity\\\\ProductClass','price02',NULL,'Giá bán',24,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(25,1,NULL,'Eccube\\\\Entity\\\\ProductClass','delivery_fee',NULL,'Phí giao hàng',25,0,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(26,1,NULL,'Eccube\\\\Entity\\\\Product','ProductImage','file_name','Ảnh sản phẩm',26,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(27,1,NULL,'Eccube\\\\Entity\\\\Product','ProductCategories','category_id','Mã thể loại',27,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(28,1,NULL,'Eccube\\\\Entity\\\\Product','ProductCategories','Category','Tên thể loại',28,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(29,1,NULL,'Eccube\\\\Entity\\\\Product','ProductTag','tag_id','Mã thẻ',29,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(30,1,NULL,'Eccube\\\\Entity\\\\Product','ProductTag','Tag','Tên thẻ',30,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(31,2,NULL,'Eccube\\\\Entity\\\\Customer','id',NULL,'Mã khách hàng',1,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(32,2,NULL,'Eccube\\\\Entity\\\\Customer','name01',NULL,'Tên',2,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(33,2,NULL,'Eccube\\\\Entity\\\\Customer','name02',NULL,'Họ',3,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(36,2,NULL,'Eccube\\\\Entity\\\\Customer','company_name',NULL,'Tên công ty',6,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(37,2,NULL,'Eccube\\\\Entity\\\\Customer','postal_code',NULL,'Mã bưu điện',7,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(38,2,NULL,'Eccube\\\\Entity\\\\Customer','Pref','id','Mã tỉnh',9,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(39,2,NULL,'Eccube\\\\Entity\\\\Customer','Pref','name','Tên tỉnh',10,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(40,2,NULL,'Eccube\\\\Entity\\\\Customer','addr01',NULL,'Quận huyện và thành phố',11,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(41,2,NULL,'Eccube\\\\Entity\\\\Customer','addr02',NULL,'Số nhà và đường',12,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(42,2,NULL,'Eccube\\\\Entity\\\\Customer','email',NULL,'Email',13,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(43,2,NULL,'Eccube\\\\Entity\\\\Customer','phone_number',NULL,'Số điện thoại',14,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(44,2,NULL,'Eccube\\\\Entity\\\\Customer','Sex','id','Mã giới tính',20,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(45,2,NULL,'Eccube\\\\Entity\\\\Customer','Sex','name','Tên giới tính',21,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(46,2,NULL,'Eccube\\\\Entity\\\\Customer','Job','id','Mã việc làm',22,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(47,2,NULL,'Eccube\\\\Entity\\\\Customer','Job','name','Việc làm',23,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(48,2,NULL,'Eccube\\\\Entity\\\\Customer','birth',NULL,'Sinh nhật',24,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(49,2,NULL,'Eccube\\\\Entity\\\\Customer','first_buy_date',NULL,'Ngày mua hàng đầu tiên',25,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(50,2,NULL,'Eccube\\\\Entity\\\\Customer','last_buy_date',NULL,'Ngày mua hàng sau cùng',26,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(51,2,NULL,'Eccube\\\\Entity\\\\Customer','buy_times',NULL,'Số lần mua hàng',27,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(52,2,NULL,'Eccube\\\\Entity\\\\Customer','note',NULL,'Ghi chú',28,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(53,2,NULL,'Eccube\\\\Entity\\\\Customer','Status','id','Mã trạng thái',29,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(54,2,NULL,'Eccube\\\\Entity\\\\Customer','Status','name','Tên trạng thái',30,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(55,2,NULL,'Eccube\\\\Entity\\\\Customer','create_date',NULL,'Ngày đăng ký',31,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(56,2,NULL,'Eccube\\\\Entity\\\\Customer','update_date',NULL,'Ngày cặp nhật',32,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(57,3,NULL,'Eccube\\\\Entity\\\\Order','id',NULL,'Mã đơn hàng',1,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(58,3,NULL,'Eccube\\\\Entity\\\\Order','order_no',NULL,'Số đơn hàng',2,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(59,3,NULL,'Eccube\\\\Entity\\\\Order','Customer','id','Mã khách hàng',3,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(60,3,NULL,'Eccube\\\\Entity\\\\Order','name01',NULL,'Tên khách hàng',4,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(61,3,NULL,'Eccube\\\\Entity\\\\Order','name02',NULL,'Họ khách hàng',5,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(64,3,NULL,'Eccube\\\\Entity\\\\Order','company_name',NULL,'Tên công ty',8,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(65,3,NULL,'Eccube\\\\Entity\\\\Order','postal_code',NULL,'Mã bưu điện',9,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(66,3,NULL,'Eccube\\\\Entity\\\\Order','Pref','id','Mã tỉnh',10,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(67,3,NULL,'Eccube\\\\Entity\\\\Order','Pref','name','Tên tỉnh',11,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(68,3,NULL,'Eccube\\\\Entity\\\\Order','addr01',NULL,'Quận huyện',12,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(69,3,NULL,'Eccube\\\\Entity\\\\Order','addr02',NULL,'Số nhà tên đường',13,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(70,3,NULL,'Eccube\\\\Entity\\\\Order','email',NULL,'Email',14,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(71,3,NULL,'Eccube\\\\Entity\\\\Order','phone_number',NULL,'Số điện thoại',15,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(72,3,NULL,'Eccube\\\\Entity\\\\Order','Sex','id','Mã giới tính',16,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(73,3,NULL,'Eccube\\\\Entity\\\\Order','Sex','name','Giới tính',17,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(74,3,NULL,'Eccube\\\\Entity\\\\Order','Job','id','Mã việc làm',18,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(75,3,NULL,'Eccube\\\\Entity\\\\Order','Job','name','Việc làm',19,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(76,3,NULL,'Eccube\\\\Entity\\\\Order','birth',NULL,'Sinh nhật',20,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(77,3,NULL,'Eccube\\\\Entity\\\\Order','note',NULL,'Ghi chú',21,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(78,3,NULL,'Eccube\\\\Entity\\\\Order','subtotal',NULL,'Tổng tiền chưa tính phí',22,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(79,3,NULL,'Eccube\\\\Entity\\\\Order','discount',NULL,'Giảm giá',23,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(80,3,NULL,'Eccube\\\\Entity\\\\Order','delivery_fee_total',NULL,'Tổng phí vận chuyển',24,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(81,3,NULL,'Eccube\\\\Entity\\\\Order','tax',NULL,'Thuế',25,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(82,3,NULL,'Eccube\\\\Entity\\\\Order','total',NULL,'Tổng tiền',26,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(83,3,NULL,'Eccube\\\\Entity\\\\Order','payment_total',NULL,'Tổng tiền thanh toán',27,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(84,3,NULL,'Eccube\\\\Entity\\\\Order','OrderStatus','id','Mã trạng thái đơn hàng',28,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(85,3,NULL,'Eccube\\\\Entity\\\\Order','OrderStatus','name','Trạng thái đơn hàng',29,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(86,3,NULL,'Eccube\\\\Entity\\\\Order','Payment','id','Mã phương thức thanh toán',30,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(87,3,NULL,'Eccube\\\\Entity\\\\Order','payment_method',NULL,'Phương thức thanh toán',31,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(88,3,NULL,'Eccube\\\\Entity\\\\Order','order_date',NULL,'Ngày đặt hàng',32,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(89,3,NULL,'Eccube\\\\Entity\\\\Order','payment_date',NULL,'Ngày trả tiền',33,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(90,3,NULL,'Eccube\\\\Entity\\\\OrderItem','id',NULL,'Mã chi tiết đơn hàng',34,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(91,3,NULL,'Eccube\\\\Entity\\\\OrderItem','Product','id','Định danh sản phẩm',35,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(92,3,NULL,'Eccube\\\\Entity\\\\OrderItem','ProductClass','id','Mã phân loại sản phẩm',36,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(93,3,NULL,'Eccube\\\\Entity\\\\OrderItem','product_name',NULL,'Tên sản phẩm',37,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(94,3,NULL,'Eccube\\\\Entity\\\\OrderItem','product_code',NULL,'Mã sản phẩm',38,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(95,3,NULL,'Eccube\\\\Entity\\\\OrderItem','class_name1',NULL,'Lựa chọn 1',39,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(96,3,NULL,'Eccube\\\\Entity\\\\OrderItem','class_name2',NULL,'Lựa chọn 2',40,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(97,3,NULL,'Eccube\\\\Entity\\\\OrderItem','class_category_name1',NULL,'Tên loại lớp 1',41,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(98,3,NULL,'Eccube\\\\Entity\\\\OrderItem','class_category_name2',NULL,'Tên loại lớp 2',42,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(99,3,NULL,'Eccube\\\\Entity\\\\OrderItem','price',NULL,'Giá',43,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(100,3,NULL,'Eccube\\\\Entity\\\\OrderItem','quantity',NULL,'Số lượng',44,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(101,3,NULL,'Eccube\\\\Entity\\\\OrderItem','tax_rate',NULL,'Tỉ lệ thuế',45,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(102,3,NULL,'Eccube\\\\Entity\\\\OrderItem','tax_rule',NULL,'Mã thuế',46,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(103,3,NULL,'Eccube\\\\Entity\\\\OrderItem','OrderItemType','id','Mã loại mục',47,1,'2018-07-23 09:00:00','2018-07-23 09:00:00','csv'),(104,3,NULL,'Eccube\\\\Entity\\\\OrderItem','OrderItemType','name','Tên loại mục',48,1,'2018-07-23 09:00:00','2018-07-23 09:00:00','csv'),(105,3,NULL,'Eccube\\\\Entity\\\\Shipping','id',NULL,'Mã giao hàng',49,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(106,3,NULL,'Eccube\\\\Entity\\\\Shipping','name01',NULL,'Tên người nhận',50,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(107,3,NULL,'Eccube\\\\Entity\\\\Shipping','name02',NULL,'Họ người nhận',51,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(110,3,NULL,'Eccube\\\\Entity\\\\Shipping','company_name',NULL,'Tên công ty người nhận',54,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(111,3,NULL,'Eccube\\\\Entity\\\\Shipping','postal_code',NULL,'Mã bưu cục người nhận',55,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(112,3,NULL,'Eccube\\\\Entity\\\\Shipping','Pref','id','Mã tỉnh',56,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(113,3,NULL,'Eccube\\\\Entity\\\\Shipping','Pref','name','Tên tỉnh',57,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(114,3,NULL,'Eccube\\\\Entity\\\\Shipping','addr01',NULL,'Quận huyện thành phố',58,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(115,3,NULL,'Eccube\\\\Entity\\\\Shipping','addr02',NULL,'Số nhà tên đường',59,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(116,3,NULL,'Eccube\\\\Entity\\\\Shipping','phone_number',NULL,'Số điện thoại người nhận',60,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(117,3,NULL,'Eccube\\\\Entity\\\\Shipping','Delivery','id','Mã công ty vận chuyển',61,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(118,3,NULL,'Eccube\\\\Entity\\\\Shipping','shipping_delivery_name',NULL,'Tên công ty vận chuyển',62,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(119,3,NULL,'Eccube\\\\Entity\\\\Shipping','DeliveryTime','id','Mã thời gian vận chuyển',63,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(120,3,NULL,'Eccube\\\\Entity\\\\Shipping','shipping_delivery_time',NULL,'Thời gian vận chuyển',64,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(121,3,NULL,'Eccube\\\\Entity\\\\Shipping','shipping_delivery_date',NULL,'Ngày vận chuyển',65,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(122,3,NULL,'Eccube\\\\Entity\\\\Shipping','DeliveryFee','id','Mã phí vận chuyển',66,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(123,3,NULL,'Eccube\\\\Entity\\\\Shipping','shipping_delivery_fee',NULL,'Phí vận chuyển',67,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(124,3,NULL,'Eccube\\\\Entity\\\\Shipping','shipping_date',NULL,'Ngày vận chuyển',68,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(125,3,NULL,'Eccube\\\\Entity\\\\Shipping','tracking_number',NULL,'Mã theo dõi ',69,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(126,3,NULL,'Eccube\\\\Entity\\\\Shipping','note',NULL,'Ghi chú giao hàng',70,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(127,3,NULL,'Eccube\\\\Entity\\\\Shipping','mail_send_date',NULL,'Ngày gửi mail',71,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(128,4,NULL,'Eccube\\\\Entity\\\\Order','id',NULL,'Mã đơn hàng',1,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(129,4,NULL,'Eccube\\\\Entity\\\\Order','order_no',NULL,'Số đơn hàng',2,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(130,4,NULL,'Eccube\\\\Entity\\\\Order','Customer','id','Mã khách hàng',3,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(131,4,NULL,'Eccube\\\\Entity\\\\Order','name01',NULL,'Tên khách hàng',4,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(132,4,NULL,'Eccube\\\\Entity\\\\Order','name02',NULL,'Họ khách hàng',5,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(135,4,NULL,'Eccube\\\\Entity\\\\Order','company_name',NULL,'Tên công ty',8,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(136,4,NULL,'Eccube\\\\Entity\\\\Order','postal_code',NULL,'Mã bưu cục',9,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(137,4,NULL,'Eccube\\\\Entity\\\\Order','Pref','id','Mã tỉnh',10,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(138,4,NULL,'Eccube\\\\Entity\\\\Order','Pref','name','Tên tỉnh',11,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(139,4,NULL,'Eccube\\\\Entity\\\\Order','addr01',NULL,'Quận huyện tỉnh',12,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(140,4,NULL,'Eccube\\\\Entity\\\\Order','addr02',NULL,'Số nhà tên đường',13,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(141,4,NULL,'Eccube\\\\Entity\\\\Order','email',NULL,'Email',14,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(142,4,NULL,'Eccube\\\\Entity\\\\Order','phone_number',NULL,'Số điện thoại',15,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(143,4,NULL,'Eccube\\\\Entity\\\\Order','Sex','id','Mã giới tính',16,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(144,4,NULL,'Eccube\\\\Entity\\\\Order','Sex','name','Tên giới tính',17,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(145,4,NULL,'Eccube\\\\Entity\\\\Order','Job','id','Mã việc làm',18,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(146,4,NULL,'Eccube\\\\Entity\\\\Order','Job','name','Việc làm',19,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(147,4,NULL,'Eccube\\\\Entity\\\\Order','birth',NULL,'Sinh nhật',20,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(148,4,NULL,'Eccube\\\\Entity\\\\Order','note',NULL,'Ghi chú',21,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(149,4,NULL,'Eccube\\\\Entity\\\\Order','subtotal',NULL,'Tổng giá chưa tính phí',22,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(150,4,NULL,'Eccube\\\\Entity\\\\Order','discount',NULL,'Giảm giá',23,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(151,4,NULL,'Eccube\\\\Entity\\\\Order','delivery_fee_total',NULL,'Tổng phí giao hàng',24,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(152,4,NULL,'Eccube\\\\Entity\\\\Order','tax',NULL,'Thuế',25,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(153,4,NULL,'Eccube\\\\Entity\\\\Order','total',NULL,'Tổng tiền',26,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(154,4,NULL,'Eccube\\\\Entity\\\\Order','payment_total',NULL,'Tổng tiền thanh toán',27,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(155,4,NULL,'Eccube\\\\Entity\\\\Order','OrderStatus','id','Mã trạng thái đơn hàng',28,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(156,4,NULL,'Eccube\\\\Entity\\\\Order','OrderStatus','name','Trạng thái đơn hàng',29,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(157,4,NULL,'Eccube\\\\Entity\\\\Order','Payment','id','Mã thanh toán',30,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(158,4,NULL,'Eccube\\\\Entity\\\\Order','payment_method',NULL,'Tên phương thức thanh toán',31,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(159,4,NULL,'Eccube\\\\Entity\\\\Order','order_date',NULL,'Ngày đặt hàng',32,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(160,4,NULL,'Eccube\\\\Entity\\\\Order','payment_date',NULL,'Ngày thanh toán',33,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(161,4,NULL,'Eccube\\\\Entity\\\\OrderItem','id',NULL,'Mã chi tiết đơn hàng',34,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(162,4,NULL,'Eccube\\\\Entity\\\\OrderItem','Product','id','Định danh sản phẩm',35,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(163,4,NULL,'Eccube\\\\Entity\\\\OrderItem','ProductClass','id','Mã loại sản phẩm',36,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(164,4,NULL,'Eccube\\\\Entity\\\\OrderItem','product_name',NULL,'Tên sản phẩm',37,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(165,4,NULL,'Eccube\\\\Entity\\\\OrderItem','product_code',NULL,'Mã sản phẩm',38,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(166,4,NULL,'Eccube\\\\Entity\\\\OrderItem','class_name1',NULL,'Lựa chọn 1',39,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(167,4,NULL,'Eccube\\\\Entity\\\\OrderItem','class_name2',NULL,'Lựa chọn 2',40,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(168,4,NULL,'Eccube\\\\Entity\\\\OrderItem','class_category_name1',NULL,'Tên loại lớp 1',41,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(169,4,NULL,'Eccube\\\\Entity\\\\OrderItem','class_category_name2',NULL,'Tên loại lớp 2',42,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(170,4,NULL,'Eccube\\\\Entity\\\\OrderItem','price',NULL,'Giá',43,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(171,4,NULL,'Eccube\\\\Entity\\\\OrderItem','quantity',NULL,'Số lượng',44,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(172,4,NULL,'Eccube\\\\Entity\\\\OrderItem','tax_rate',NULL,'Tỉ lệ thuế',45,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(173,4,NULL,'Eccube\\\\Entity\\\\OrderItem','tax_rule',NULL,'Mã thuế',46,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(174,4,NULL,'Eccube\\\\Entity\\\\OrderItem','OrderItemType','id','Mã loại mục',47,1,'2018-07-23 09:00:00','2018-07-23 09:00:00','csv'),(175,4,NULL,'Eccube\\\\Entity\\\\OrderItem','OrderItemType','name','Tên loại mục',48,1,'2018-07-23 09:00:00','2018-07-23 09:00:00','csv'),(176,4,NULL,'Eccube\\\\Entity\\\\Shipping','id',NULL,'Mã giao hàng',49,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(177,4,NULL,'Eccube\\\\Entity\\\\Shipping','name01',NULL,'Tên',50,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(178,4,NULL,'Eccube\\\\Entity\\\\Shipping','name02',NULL,'Họ',51,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(181,4,NULL,'Eccube\\\\Entity\\\\Shipping','company_name',NULL,'Tên công ty nhận hàng',54,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(182,4,NULL,'Eccube\\\\Entity\\\\Shipping','postal_code',NULL,'Mã bưu cục nhận hàng',55,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(183,4,NULL,'Eccube\\\\Entity\\\\Shipping','Pref','id','Mã tỉnh thành phố nhận hàng',56,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(184,4,NULL,'Eccube\\\\Entity\\\\Shipping','Pref','name','Tên tỉnh thành phố nhận hàng',57,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(185,4,NULL,'Eccube\\\\Entity\\\\Shipping','addr01',NULL,'Quận huyện thành phố nhận hàng',58,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(186,4,NULL,'Eccube\\\\Entity\\\\Shipping','addr02',NULL,'Số nhà số đường nhận hàng',59,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(187,4,NULL,'Eccube\\\\Entity\\\\Shipping','phone_number',NULL,'Số điện thoại nhận hàng',60,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(188,4,NULL,'Eccube\\\\Entity\\\\Shipping','Delivery','id','Mã công ty giao hàng',61,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(189,4,NULL,'Eccube\\\\Entity\\\\Shipping','shipping_delivery_name',NULL,'Tên công ty giao hàng',62,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(190,4,NULL,'Eccube\\\\Entity\\\\Shipping','DeliveryTime','id','Mã thời gian giao hàng',63,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(191,4,NULL,'Eccube\\\\Entity\\\\Shipping','shipping_delivery_time',NULL,'Thời gian công ty giao hàng',64,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(192,4,NULL,'Eccube\\\\Entity\\\\Shipping','shipping_delivery_date',NULL,'Ngày công ty giao hàng',65,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(193,4,NULL,'Eccube\\\\Entity\\\\Shipping','DeliveryFee','id','Mã phí giao hàng',66,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(194,4,NULL,'Eccube\\\\Entity\\\\Shipping','shipping_delivery_fee',NULL,'Phí giao hàng',67,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(195,4,NULL,'Eccube\\\\Entity\\\\Shipping','shipping_date',NULL,'Ngày giao hàng',68,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(196,4,NULL,'Eccube\\\\Entity\\\\Shipping','tracking_number',NULL,'Mã theo dõi ',69,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(197,4,NULL,'Eccube\\\\Entity\\\\Shipping','note',NULL,'Ghi chú giao hàng',70,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(198,4,NULL,'Eccube\\\\Entity\\\\Shipping','mail_send_date',NULL,'Ngày gửi mail',71,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(199,5,NULL,'Eccube\\\\Entity\\\\Category','id',NULL,'Mã thể loại',1,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(200,5,NULL,'Eccube\\\\Entity\\\\Category','sort_no',NULL,'Thứ tự hiển thị',2,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(201,5,NULL,'Eccube\\\\Entity\\\\Category','name',NULL,'Tên thể loại',3,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(202,5,NULL,'Eccube\\\\Entity\\\\Category','Parent','id','Mã thể loại cha',4,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv'),(203,5,NULL,'Eccube\\\\Entity\\\\Category','level',NULL,'Phân cấp',5,1,'2017-03-07 10:14:00','2017-03-07 10:14:00','csv');
/*!40000 ALTER TABLE `dtb_csv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_customer`
--

DROP TABLE IF EXISTS `dtb_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_status_id` smallint(5) unsigned DEFAULT NULL,
  `sex_id` smallint(5) unsigned DEFAULT NULL,
  `job_id` smallint(5) unsigned DEFAULT NULL,
  `country_id` smallint(5) unsigned DEFAULT NULL,
  `pref_id` smallint(5) unsigned DEFAULT NULL,
  `name01` varchar(255) NOT NULL,
  `name02` varchar(255) NOT NULL,
  `kana01` varchar(255) DEFAULT NULL,
  `kana02` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `postal_code` varchar(8) DEFAULT NULL,
  `addr01` varchar(255) DEFAULT NULL,
  `addr02` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `birth` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) NOT NULL,
  `first_buy_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `last_buy_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `buy_times` decimal(10,0) unsigned DEFAULT 0,
  `buy_total` decimal(12,2) unsigned DEFAULT 0.00,
  `note` varchar(4000) DEFAULT NULL,
  `reset_key` varchar(255) DEFAULT NULL,
  `reset_expire` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `point` decimal(12,0) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `secret_key` (`secret_key`),
  KEY `IDX_8298BBE3C00AF8A7` (`customer_status_id`),
  KEY `IDX_8298BBE35A2DB2A0` (`sex_id`),
  KEY `IDX_8298BBE3BE04EA9` (`job_id`),
  KEY `IDX_8298BBE3F92F3E70` (`country_id`),
  KEY `IDX_8298BBE3E171EF5F` (`pref_id`),
  KEY `dtb_customer_buy_times_idx` (`buy_times`),
  KEY `dtb_customer_buy_total_idx` (`buy_total`),
  KEY `dtb_customer_create_date_idx` (`create_date`),
  KEY `dtb_customer_update_date_idx` (`update_date`),
  KEY `dtb_customer_last_buy_date_idx` (`last_buy_date`),
  KEY `dtb_customer_email_idx` (`email`),
  CONSTRAINT `FK_8298BBE35A2DB2A0` FOREIGN KEY (`sex_id`) REFERENCES `mtb_sex` (`id`),
  CONSTRAINT `FK_8298BBE3BE04EA9` FOREIGN KEY (`job_id`) REFERENCES `mtb_job` (`id`),
  CONSTRAINT `FK_8298BBE3C00AF8A7` FOREIGN KEY (`customer_status_id`) REFERENCES `mtb_customer_status` (`id`),
  CONSTRAINT `FK_8298BBE3E171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`),
  CONSTRAINT `FK_8298BBE3F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_customer`
--

LOCK TABLES `dtb_customer` WRITE;
/*!40000 ALTER TABLE `dtb_customer` DISABLE KEYS */;
INSERT INTO `dtb_customer` VALUES (1,2,1,3,NULL,52,'Huy','Hồ','カナ','カナ','Saisunkan System','12345678','Tp Huế','28 Nguyễn Tri Phương','HuyHVQ@saisystem.vn','0912235645','1998-05-13 17:00:00','f1255bbf5c19a951304ba84576e4210ede0c97a5ae1946d5c48e7b993a8bb012','7dc08ca4d4','CTN7L5MyitPuhfpgkjk3agft8VkKOppz',NULL,NULL,0,0.00,NULL,NULL,NULL,0,'2023-11-02 05:59:46','2023-11-02 06:00:13','customer'),(2,2,1,3,NULL,52,'Khánh','Lê','カナ','カナ','Saisunkan System','12345678','Tp Huế','28 Nguyễn Tri Phương','KhanhLV@saisystem.vn','091223516','1989-11-20 17:00:00','2e63bbe4c764b355e432de718245c8512e9dc12c446bf9299ec393e0e19db3f2','0e0a9e7594','Rzz4t1NYW8GynL0oYZR7dg8zERX6swtq',NULL,NULL,0,0.00,NULL,NULL,NULL,0,'2023-11-02 06:03:12','2023-11-02 06:03:12','customer'),(3,2,1,3,NULL,52,'Sinh','Nguyễn','カナ','カナ','Saisunkan System','12345678','Tp Huế','28 Nguyễn Tri Phương','SinhNT@saisystem.vn','0912232135','1992-11-06 17:00:00','ce8cbef6861ccd61ee4593a3990ccec61992ea846ea1e65da7e102e8ad6107b3','9cd7f8055e','Yrq3b8UvdXpgZISDPFwr1tap471Byiey',NULL,NULL,0,0.00,NULL,NULL,NULL,0,'2023-11-02 06:04:17','2023-11-02 06:05:27','customer'),(4,2,1,3,NULL,52,'Hưng','Lê','カナ','カナ',NULL,'12345678','Tp Huế','28 Nguyễn Tri Phương','HungLV@saisystem.vn','0912212302','2001-10-30 17:00:00','75c859aeb2b03b574675637a22b43f17bfbd3f61ae57a34b37edb2517881e4e8','6711289090','kf6V4fJEdhBZHs0mZfvj9L5VVIDRaHkg',NULL,NULL,0,0.00,NULL,NULL,NULL,0,'2023-11-02 06:05:11','2023-11-02 06:05:11','customer'),(5,2,1,3,NULL,52,'Thắng','Phan','カナ','カナ','Saisunkan System','12345678','Tp Huế','28 Nguyễn Tri Phương','ThangPV@saisystem.vn','0912232125','1998-11-19 17:00:00','45f7ad52db5cc6386d7917f4ad7b868fabf106c32c65569a1401bd24206264ce','a887306f04','kyIOkRZcTcfKOqwYEYdMzZjamlnEmhjb','2023-11-02 06:28:02','2023-11-02 06:28:02',1,53900.00,NULL,NULL,NULL,0,'2023-11-02 06:08:34','2023-11-02 06:28:02','customer');
/*!40000 ALTER TABLE `dtb_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_customer_address`
--

DROP TABLE IF EXISTS `dtb_customer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_customer_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `country_id` smallint(5) unsigned DEFAULT NULL,
  `pref_id` smallint(5) unsigned DEFAULT NULL,
  `name01` varchar(255) NOT NULL,
  `name02` varchar(255) NOT NULL,
  `kana01` varchar(255) DEFAULT NULL,
  `kana02` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `postal_code` varchar(8) DEFAULT NULL,
  `addr01` varchar(255) DEFAULT NULL,
  `addr02` varchar(255) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6C38C0F89395C3F3` (`customer_id`),
  KEY `IDX_6C38C0F8F92F3E70` (`country_id`),
  KEY `IDX_6C38C0F8E171EF5F` (`pref_id`),
  CONSTRAINT `FK_6C38C0F89395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `dtb_customer` (`id`),
  CONSTRAINT `FK_6C38C0F8E171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`),
  CONSTRAINT `FK_6C38C0F8F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_customer_address`
--

LOCK TABLES `dtb_customer_address` WRITE;
/*!40000 ALTER TABLE `dtb_customer_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `dtb_customer_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_customer_favorite_product`
--

DROP TABLE IF EXISTS `dtb_customer_favorite_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_customer_favorite_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ED6313839395C3F3` (`customer_id`),
  KEY `IDX_ED6313834584665A` (`product_id`),
  CONSTRAINT `FK_ED6313834584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`id`),
  CONSTRAINT `FK_ED6313839395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `dtb_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_customer_favorite_product`
--

LOCK TABLES `dtb_customer_favorite_product` WRITE;
/*!40000 ALTER TABLE `dtb_customer_favorite_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `dtb_customer_favorite_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_delivery`
--

DROP TABLE IF EXISTS `dtb_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_delivery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `sale_type_id` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `confirm_url` varchar(4000) DEFAULT NULL,
  `sort_no` int(10) unsigned DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3420D9FA61220EA6` (`creator_id`),
  KEY `IDX_3420D9FAB0524E01` (`sale_type_id`),
  CONSTRAINT `FK_3420D9FA61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  CONSTRAINT `FK_3420D9FAB0524E01` FOREIGN KEY (`sale_type_id`) REFERENCES `mtb_sale_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_delivery`
--

LOCK TABLES `dtb_delivery` WRITE;
/*!40000 ALTER TABLE `dtb_delivery` DISABLE KEYS */;
INSERT INTO `dtb_delivery` VALUES (1,NULL,1,'Sample Company','Sample Company',NULL,NULL,1,1,'2017-03-07 10:14:52','2017-03-07 10:14:52','delivery'),(2,NULL,2,'Sample Delivery','Sample Delivery',NULL,NULL,2,1,'2017-03-07 10:14:52','2017-03-07 10:14:52','delivery');
/*!40000 ALTER TABLE `dtb_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_delivery_duration`
--

DROP TABLE IF EXISTS `dtb_delivery_duration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_delivery_duration` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `duration` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sort_no` int(10) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_delivery_duration`
--

LOCK TABLES `dtb_delivery_duration` WRITE;
/*!40000 ALTER TABLE `dtb_delivery_duration` DISABLE KEYS */;
INSERT INTO `dtb_delivery_duration` VALUES (1,'Cùng ngày',0,0,'deliveryduration'),(2,'1-2 ngày',1,1,'deliveryduration'),(3,'3-4 ngày',3,2,'deliveryduration'),(4,'Hơn 1 tuần sau',7,3,'deliveryduration'),(5,'Hơn 2 tuần sau',14,4,'deliveryduration'),(6,'Hơn 3 tuần sau',21,5,'deliveryduration'),(7,'Hơn 1 tuần sau',30,6,'deliveryduration'),(8,'Hơn 2 tuần sau',60,7,'deliveryduration'),(9,'Đặt hàng trở lại (Đã giao một lần có sẵn)',0,8,'deliveryduration');
/*!40000 ALTER TABLE `dtb_delivery_duration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_delivery_fee`
--

DROP TABLE IF EXISTS `dtb_delivery_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_delivery_fee` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_id` int(10) unsigned DEFAULT NULL,
  `pref_id` smallint(5) unsigned DEFAULT NULL,
  `fee` decimal(12,2) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_491552412136921` (`delivery_id`),
  KEY `IDX_4915524E171EF5F` (`pref_id`),
  CONSTRAINT `FK_491552412136921` FOREIGN KEY (`delivery_id`) REFERENCES `dtb_delivery` (`id`),
  CONSTRAINT `FK_4915524E171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_delivery_fee`
--

LOCK TABLES `dtb_delivery_fee` WRITE;
/*!40000 ALTER TABLE `dtb_delivery_fee` DISABLE KEYS */;
INSERT INTO `dtb_delivery_fee` VALUES (1,1,1,1000.00,'deliveryfee'),(2,1,2,1000.00,'deliveryfee'),(3,1,3,1000.00,'deliveryfee'),(4,1,4,1000.00,'deliveryfee'),(5,1,5,1000.00,'deliveryfee'),(6,1,6,1000.00,'deliveryfee'),(7,1,7,1000.00,'deliveryfee'),(8,1,8,1000.00,'deliveryfee'),(9,1,9,1000.00,'deliveryfee'),(10,1,10,1000.00,'deliveryfee'),(11,1,11,1000.00,'deliveryfee'),(12,1,12,1000.00,'deliveryfee'),(13,1,13,1000.00,'deliveryfee'),(14,1,14,1000.00,'deliveryfee'),(15,1,15,1000.00,'deliveryfee'),(16,1,16,1000.00,'deliveryfee'),(17,1,17,1000.00,'deliveryfee'),(18,1,18,1000.00,'deliveryfee'),(19,1,19,1000.00,'deliveryfee'),(20,1,20,1000.00,'deliveryfee'),(21,1,21,1000.00,'deliveryfee'),(22,1,22,1000.00,'deliveryfee'),(23,1,23,1000.00,'deliveryfee'),(24,1,24,1000.00,'deliveryfee'),(25,1,25,1000.00,'deliveryfee'),(26,1,26,1000.00,'deliveryfee'),(27,1,27,1000.00,'deliveryfee'),(28,1,28,1000.00,'deliveryfee'),(29,1,29,1000.00,'deliveryfee'),(30,1,30,1000.00,'deliveryfee'),(31,1,31,1000.00,'deliveryfee'),(32,1,32,1000.00,'deliveryfee'),(33,1,33,1000.00,'deliveryfee'),(34,1,34,1000.00,'deliveryfee'),(35,1,35,1000.00,'deliveryfee'),(36,1,36,1000.00,'deliveryfee'),(37,1,37,1000.00,'deliveryfee'),(38,1,38,1000.00,'deliveryfee'),(39,1,39,1000.00,'deliveryfee'),(40,1,40,1000.00,'deliveryfee'),(41,1,41,1000.00,'deliveryfee'),(42,1,42,1000.00,'deliveryfee'),(43,1,43,1000.00,'deliveryfee'),(44,1,44,1000.00,'deliveryfee'),(45,1,45,1000.00,'deliveryfee'),(46,1,46,1000.00,'deliveryfee'),(47,1,47,1000.00,'deliveryfee'),(48,1,48,1000.00,'deliveryfee'),(49,1,49,1000.00,'deliveryfee'),(50,1,50,1000.00,'deliveryfee'),(51,1,51,1000.00,'deliveryfee'),(52,1,52,1000.00,'deliveryfee'),(53,1,53,1000.00,'deliveryfee'),(54,1,54,1000.00,'deliveryfee'),(55,1,55,1000.00,'deliveryfee'),(56,1,56,1000.00,'deliveryfee'),(57,1,57,1000.00,'deliveryfee'),(58,1,58,1000.00,'deliveryfee'),(59,1,59,1000.00,'deliveryfee'),(60,1,60,1000.00,'deliveryfee'),(61,1,61,1000.00,'deliveryfee'),(62,1,62,1000.00,'deliveryfee'),(63,1,63,1000.00,'deliveryfee'),(64,2,1,0.00,'deliveryfee'),(65,2,2,0.00,'deliveryfee'),(66,2,3,0.00,'deliveryfee'),(67,2,4,0.00,'deliveryfee'),(68,2,5,0.00,'deliveryfee'),(69,2,6,0.00,'deliveryfee'),(70,2,7,0.00,'deliveryfee'),(71,2,8,0.00,'deliveryfee'),(72,2,9,0.00,'deliveryfee'),(73,2,10,0.00,'deliveryfee'),(74,2,11,0.00,'deliveryfee'),(75,2,12,0.00,'deliveryfee'),(76,2,13,0.00,'deliveryfee'),(77,2,14,0.00,'deliveryfee'),(78,2,15,0.00,'deliveryfee'),(79,2,16,0.00,'deliveryfee'),(80,2,17,0.00,'deliveryfee'),(81,2,18,0.00,'deliveryfee'),(82,2,19,0.00,'deliveryfee'),(83,2,20,0.00,'deliveryfee'),(84,2,21,0.00,'deliveryfee'),(85,2,22,0.00,'deliveryfee'),(86,2,23,0.00,'deliveryfee'),(87,2,24,0.00,'deliveryfee'),(88,2,25,0.00,'deliveryfee'),(89,2,26,0.00,'deliveryfee'),(90,2,27,0.00,'deliveryfee'),(91,2,28,0.00,'deliveryfee'),(92,2,29,0.00,'deliveryfee'),(93,2,30,0.00,'deliveryfee'),(94,2,31,0.00,'deliveryfee'),(95,2,32,0.00,'deliveryfee'),(96,2,33,0.00,'deliveryfee'),(97,2,34,0.00,'deliveryfee'),(98,2,35,0.00,'deliveryfee'),(99,2,36,0.00,'deliveryfee'),(100,2,37,0.00,'deliveryfee'),(101,2,38,0.00,'deliveryfee'),(102,2,39,0.00,'deliveryfee'),(103,2,40,0.00,'deliveryfee'),(104,2,41,0.00,'deliveryfee'),(105,2,42,0.00,'deliveryfee'),(106,2,43,0.00,'deliveryfee'),(107,2,44,0.00,'deliveryfee'),(108,2,45,0.00,'deliveryfee'),(109,2,46,0.00,'deliveryfee'),(110,2,47,0.00,'deliveryfee'),(111,2,48,0.00,'deliveryfee'),(112,2,49,0.00,'deliveryfee'),(113,2,50,0.00,'deliveryfee'),(114,2,51,0.00,'deliveryfee'),(115,2,52,0.00,'deliveryfee'),(116,2,53,0.00,'deliveryfee'),(117,2,54,0.00,'deliveryfee'),(118,2,55,0.00,'deliveryfee'),(119,2,56,0.00,'deliveryfee'),(120,2,57,0.00,'deliveryfee'),(121,2,58,0.00,'deliveryfee'),(122,2,59,0.00,'deliveryfee'),(123,2,60,0.00,'deliveryfee'),(124,2,61,0.00,'deliveryfee'),(125,2,62,0.00,'deliveryfee'),(126,2,63,0.00,'deliveryfee');
/*!40000 ALTER TABLE `dtb_delivery_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_delivery_time`
--

DROP TABLE IF EXISTS `dtb_delivery_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_delivery_time` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_id` int(10) unsigned DEFAULT NULL,
  `delivery_time` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E80EE3A612136921` (`delivery_id`),
  CONSTRAINT `FK_E80EE3A612136921` FOREIGN KEY (`delivery_id`) REFERENCES `dtb_delivery` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_delivery_time`
--

LOCK TABLES `dtb_delivery_time` WRITE;
/*!40000 ALTER TABLE `dtb_delivery_time` DISABLE KEYS */;
INSERT INTO `dtb_delivery_time` VALUES (1,1,'Sáng',1,1,'2017-03-07 10:14:52','2017-03-07 10:14:52','deliverytime'),(2,1,'Chiều',2,1,'2017-03-07 10:14:52','2017-03-07 10:14:52','deliverytime');
/*!40000 ALTER TABLE `dtb_delivery_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_layout`
--

DROP TABLE IF EXISTS `dtb_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_layout` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `device_type_id` smallint(5) unsigned DEFAULT NULL,
  `layout_name` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5A62AA7C4FFA550E` (`device_type_id`),
  CONSTRAINT `FK_5A62AA7C4FFA550E` FOREIGN KEY (`device_type_id`) REFERENCES `mtb_device_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_layout`
--

LOCK TABLES `dtb_layout` WRITE;
/*!40000 ALTER TABLE `dtb_layout` DISABLE KEYS */;
INSERT INTO `dtb_layout` VALUES (0,10,'Xem trước','2017-03-07 10:14:52','2017-03-07 10:14:52','layout'),(1,10,'Bố trí trang chủ','2017-03-07 10:14:52','2017-03-07 10:14:52','layout'),(2,10,'Bố trí trang phụ','2017-03-07 10:14:52','2017-03-07 10:14:52','layout');
/*!40000 ALTER TABLE `dtb_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_mail_history`
--

DROP TABLE IF EXISTS `dtb_mail_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_mail_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `send_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `mail_subject` varchar(255) DEFAULT NULL,
  `mail_body` longtext DEFAULT NULL,
  `mail_html_body` longtext DEFAULT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4870AB118D9F6D38` (`order_id`),
  KEY `IDX_4870AB1161220EA6` (`creator_id`),
  CONSTRAINT `FK_4870AB1161220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  CONSTRAINT `FK_4870AB118D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `dtb_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_mail_history`
--

LOCK TABLES `dtb_mail_history` WRITE;
/*!40000 ALTER TABLE `dtb_mail_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `dtb_mail_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_mail_template`
--

DROP TABLE IF EXISTS `dtb_mail_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_mail_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `mail_subject` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1CB16DB261220EA6` (`creator_id`),
  CONSTRAINT `FK_1CB16DB261220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_mail_template`
--

LOCK TABLES `dtb_mail_template` WRITE;
/*!40000 ALTER TABLE `dtb_mail_template` DISABLE KEYS */;
INSERT INTO `dtb_mail_template` VALUES (1,NULL,'Nhận đơn đặt hàng','Mail/vi/order.twig','Rất cảm ơn bạn đã đặt hàng!','2017-03-07 10:14:52','2017-03-07 10:14:52','mailtemplate'),(2,NULL,'Đăng ký tạm thời','Mail/vi/entry_confirm.twig','Xác nhận đăng ký thành viên','2017-03-07 10:14:52','2017-03-07 10:14:52','mailtemplate'),(3,NULL,'Đăng ký chính thức','Mail/vi/entry_complete.twig','Hoàn thành đăng ký thành viên','2017-03-07 10:14:52','2017-03-07 10:14:52','mailtemplate'),(4,NULL,'Hủy thành viên','Mail/vi/customer_withdraw_mail.twig','Hoàn tất hủy thành viên','2017-03-07 10:14:52','2017-03-07 10:14:52','mailtemplate'),(5,NULL,'Biên nhận yêu cầu','Mail/vi/contact_mail.twig','Cảm ơn bạn đã yêu cầu','2017-03-07 10:14:52','2017-03-07 10:14:52','mailtemplate'),(6,NULL,'Đặt lại mật khẩu','Mail/vi/forgot_mail.twig','Đặt lại mật khẩu của bạn','2017-03-07 10:14:52','2017-03-07 10:14:52','mailtemplate'),(7,NULL,'Nhắc nhở mật khẩu','Mail/vi/reset_complete_mail.twig','Mật khẩu của bạn đã được thay đổi','2017-03-07 10:14:52','2017-03-07 10:14:52','mailtemplate'),(8,NULL,'Thông báo giao hàng','Mail/vi/shipping_notify.twig','Đơn hàng của bạn đã được giao','2017-03-07 10:14:52','2017-03-07 10:14:52','mailtemplate');
/*!40000 ALTER TABLE `dtb_mail_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_member`
--

DROP TABLE IF EXISTS `dtb_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `work_id` smallint(5) unsigned DEFAULT NULL,
  `authority_id` smallint(5) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `login_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `login_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_10BC3BE6BB3453DB` (`work_id`),
  KEY `IDX_10BC3BE681EC865B` (`authority_id`),
  KEY `IDX_10BC3BE661220EA6` (`creator_id`),
  CONSTRAINT `FK_10BC3BE661220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  CONSTRAINT `FK_10BC3BE681EC865B` FOREIGN KEY (`authority_id`) REFERENCES `mtb_authority` (`id`),
  CONSTRAINT `FK_10BC3BE6BB3453DB` FOREIGN KEY (`work_id`) REFERENCES `mtb_work` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_member`
--

LOCK TABLES `dtb_member` WRITE;
/*!40000 ALTER TABLE `dtb_member` DISABLE KEYS */;
INSERT INTO `dtb_member` VALUES (1,1,0,1,'Administrator','Trainning_EC_CUBE','HuyHVQ@saisystem.vn','63cf24834d3034c8bb58e3d5aa7067599a2ba71573a143a78333a502265aa263','Y30WoaDSCi0oIwhybbnHMUjItQTvIc8H',1,'2023-11-01 07:06:27','2023-11-03 01:38:15','2023-11-03 01:38:15','member');
/*!40000 ALTER TABLE `dtb_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_news`
--

DROP TABLE IF EXISTS `dtb_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `url` varchar(4000) DEFAULT NULL,
  `link_method` tinyint(1) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_EA4C351761220EA6` (`creator_id`),
  CONSTRAINT `FK_EA4C351761220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_news`
--

LOCK TABLES `dtb_news` WRITE;
/*!40000 ALTER TABLE `dtb_news` DISABLE KEYS */;
INSERT INTO `dtb_news` VALUES (1,NULL,'2019-01-08 10:14:52','Cửa hàng mới phát hành!','Cho dù đó là cho văn phòng hoặc nhà của bạn, chúng tôi có một lựa chọn tuyệt vời các sản phẩm có thể nâng cao năng suất và cuộc sống hàng ngày của bạn.',NULL,1,'2017-03-07 10:14:52','2017-03-07 10:14:52',1,'news');
/*!40000 ALTER TABLE `dtb_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_order`
--

DROP TABLE IF EXISTS `dtb_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `country_id` smallint(5) unsigned DEFAULT NULL,
  `pref_id` smallint(5) unsigned DEFAULT NULL,
  `sex_id` smallint(5) unsigned DEFAULT NULL,
  `job_id` smallint(5) unsigned DEFAULT NULL,
  `payment_id` int(10) unsigned DEFAULT NULL,
  `device_type_id` smallint(5) unsigned DEFAULT NULL,
  `pre_order_id` varchar(255) DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `message` varchar(4000) DEFAULT NULL,
  `name01` varchar(255) NOT NULL,
  `name02` varchar(255) NOT NULL,
  `kana01` varchar(255) DEFAULT NULL,
  `kana02` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `postal_code` varchar(8) DEFAULT NULL,
  `addr01` varchar(255) DEFAULT NULL,
  `addr02` varchar(255) DEFAULT NULL,
  `birth` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `subtotal` decimal(12,2) unsigned NOT NULL DEFAULT 0.00,
  `discount` decimal(12,2) unsigned NOT NULL DEFAULT 0.00,
  `delivery_fee_total` decimal(12,2) unsigned NOT NULL DEFAULT 0.00,
  `charge` decimal(12,2) unsigned NOT NULL DEFAULT 0.00,
  `tax` decimal(12,2) unsigned NOT NULL DEFAULT 0.00,
  `total` decimal(12,2) unsigned NOT NULL DEFAULT 0.00,
  `payment_total` decimal(12,2) unsigned NOT NULL DEFAULT 0.00,
  `payment_method` varchar(255) DEFAULT NULL,
  `note` varchar(4000) DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `order_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `payment_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `currency_code` varchar(255) DEFAULT NULL,
  `complete_message` longtext DEFAULT NULL,
  `complete_mail_message` longtext DEFAULT NULL,
  `add_point` decimal(12,0) unsigned NOT NULL DEFAULT 0,
  `use_point` decimal(12,0) unsigned NOT NULL DEFAULT 0,
  `order_status_id` smallint(5) unsigned DEFAULT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dtb_order_pre_order_id_idx` (`pre_order_id`),
  KEY `IDX_1D66D8079395C3F3` (`customer_id`),
  KEY `IDX_1D66D807F92F3E70` (`country_id`),
  KEY `IDX_1D66D807E171EF5F` (`pref_id`),
  KEY `IDX_1D66D8075A2DB2A0` (`sex_id`),
  KEY `IDX_1D66D807BE04EA9` (`job_id`),
  KEY `IDX_1D66D8074C3A3BB` (`payment_id`),
  KEY `IDX_1D66D8074FFA550E` (`device_type_id`),
  KEY `IDX_1D66D807D7707B45` (`order_status_id`),
  KEY `dtb_order_email_idx` (`email`),
  KEY `dtb_order_order_date_idx` (`order_date`),
  KEY `dtb_order_payment_date_idx` (`payment_date`),
  KEY `dtb_order_update_date_idx` (`update_date`),
  KEY `dtb_order_order_no_idx` (`order_no`),
  CONSTRAINT `FK_1D66D8074C3A3BB` FOREIGN KEY (`payment_id`) REFERENCES `dtb_payment` (`id`),
  CONSTRAINT `FK_1D66D8074FFA550E` FOREIGN KEY (`device_type_id`) REFERENCES `mtb_device_type` (`id`),
  CONSTRAINT `FK_1D66D8075A2DB2A0` FOREIGN KEY (`sex_id`) REFERENCES `mtb_sex` (`id`),
  CONSTRAINT `FK_1D66D8079395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `dtb_customer` (`id`),
  CONSTRAINT `FK_1D66D807BE04EA9` FOREIGN KEY (`job_id`) REFERENCES `mtb_job` (`id`),
  CONSTRAINT `FK_1D66D807E171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`),
  CONSTRAINT `FK_1D66D807F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_order`
--

LOCK TABLES `dtb_order` WRITE;
/*!40000 ALTER TABLE `dtb_order` DISABLE KEYS */;
INSERT INTO `dtb_order` VALUES (1,NULL,NULL,52,NULL,NULL,1,NULL,NULL,'1',NULL,'Thắng','Phan','カナ','カナ','Saisunkan System','ThangPV@saisystem.vn','0912232125','12345678','Tp Huế','28 Nguyễn Tri Phương',NULL,55000.00,0.00,0.00,0.00,5000.00,55000.00,55000.00,'Thanh toán khi giao hàng',NULL,'2023-11-02 06:17:43','2023-11-02 06:17:43','2023-11-02 06:17:43',NULL,'VND',NULL,NULL,0,0,1,'order'),(2,5,NULL,52,1,3,1,NULL,NULL,'2',NULL,'Thắng','Phan','カナ','カナ','Saisunkan System','ThangPV@saisystem.vn','0912232125','12345678','Tp Huế','28 Nguyễn Tri Phương','1998-11-19 17:00:00',53900.00,0.00,0.00,0.00,4900.00,53900.00,53900.00,'Thanh toán khi giao hàng',NULL,'2023-11-02 06:28:02','2023-11-02 06:28:02','2023-11-02 06:28:02',NULL,'VND',NULL,NULL,490,0,1,'order');
/*!40000 ALTER TABLE `dtb_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_order_item`
--

DROP TABLE IF EXISTS `dtb_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_order_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `product_class_id` int(10) unsigned DEFAULT NULL,
  `shipping_id` int(10) unsigned DEFAULT NULL,
  `rounding_type_id` smallint(5) unsigned DEFAULT NULL,
  `tax_type_id` smallint(5) unsigned DEFAULT NULL,
  `tax_display_type_id` smallint(5) unsigned DEFAULT NULL,
  `order_item_type_id` smallint(5) unsigned DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `class_name1` varchar(255) DEFAULT NULL,
  `class_name2` varchar(255) DEFAULT NULL,
  `class_category_name1` varchar(255) DEFAULT NULL,
  `class_category_name2` varchar(255) DEFAULT NULL,
  `price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `quantity` decimal(10,0) NOT NULL DEFAULT 0,
  `tax` decimal(10,0) NOT NULL DEFAULT 0,
  `tax_rate` decimal(10,0) unsigned NOT NULL DEFAULT 0,
  `tax_rule_id` smallint(5) unsigned DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `processor_name` varchar(255) DEFAULT NULL,
  `point_rate` decimal(10,0) unsigned DEFAULT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A0C8C3ED8D9F6D38` (`order_id`),
  KEY `IDX_A0C8C3ED4584665A` (`product_id`),
  KEY `IDX_A0C8C3ED21B06187` (`product_class_id`),
  KEY `IDX_A0C8C3ED4887F3F8` (`shipping_id`),
  KEY `IDX_A0C8C3ED1BD5C574` (`rounding_type_id`),
  KEY `IDX_A0C8C3ED84042C99` (`tax_type_id`),
  KEY `IDX_A0C8C3EDA2505856` (`tax_display_type_id`),
  KEY `IDX_A0C8C3EDCAD13EAD` (`order_item_type_id`),
  CONSTRAINT `FK_A0C8C3ED1BD5C574` FOREIGN KEY (`rounding_type_id`) REFERENCES `mtb_rounding_type` (`id`),
  CONSTRAINT `FK_A0C8C3ED21B06187` FOREIGN KEY (`product_class_id`) REFERENCES `dtb_product_class` (`id`),
  CONSTRAINT `FK_A0C8C3ED4584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`id`),
  CONSTRAINT `FK_A0C8C3ED4887F3F8` FOREIGN KEY (`shipping_id`) REFERENCES `dtb_shipping` (`id`),
  CONSTRAINT `FK_A0C8C3ED84042C99` FOREIGN KEY (`tax_type_id`) REFERENCES `mtb_tax_type` (`id`),
  CONSTRAINT `FK_A0C8C3ED8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `dtb_order` (`id`),
  CONSTRAINT `FK_A0C8C3EDA2505856` FOREIGN KEY (`tax_display_type_id`) REFERENCES `mtb_tax_display_type` (`id`),
  CONSTRAINT `FK_A0C8C3EDCAD13EAD` FOREIGN KEY (`order_item_type_id`) REFERENCES `mtb_order_item_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_order_item`
--

LOCK TABLES `dtb_order_item` WRITE;
/*!40000 ALTER TABLE `dtb_order_item` DISABLE KEYS */;
INSERT INTO `dtb_order_item` VALUES (1,1,1,9,1,1,1,1,1,'CUBE đầy màu sắc','cube-09','Hương vị','Kích thước','Sô cô la','16mm × 16mm',50000.00,1,5000,10,1,'VND',NULL,NULL,'orderitem'),(2,2,1,5,2,1,1,1,1,'CUBE đầy màu sắc','cube-05','Hương vị','Kích thước','Trà xanh','32mm × 32mm',49000.00,1,4900,10,1,'VND',NULL,NULL,'orderitem');
/*!40000 ALTER TABLE `dtb_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_order_pdf`
--

DROP TABLE IF EXISTS `dtb_order_pdf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_order_pdf` (
  `member_id` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message1` varchar(255) DEFAULT NULL,
  `message2` varchar(255) DEFAULT NULL,
  `message3` varchar(255) DEFAULT NULL,
  `note1` varchar(255) DEFAULT NULL,
  `note2` varchar(255) DEFAULT NULL,
  `note3` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_order_pdf`
--

LOCK TABLES `dtb_order_pdf` WRITE;
/*!40000 ALTER TABLE `dtb_order_pdf` DISABLE KEYS */;
/*!40000 ALTER TABLE `dtb_order_pdf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_page`
--

DROP TABLE IF EXISTS `dtb_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `master_page_id` int(10) unsigned DEFAULT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `edit_type` smallint(5) unsigned NOT NULL DEFAULT 1,
  `author` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `meta_robots` varchar(255) DEFAULT NULL,
  `meta_tags` varchar(4000) DEFAULT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E3951A67D0618E8C` (`master_page_id`),
  KEY `dtb_page_url_idx` (`url`),
  CONSTRAINT `FK_E3951A67D0618E8C` FOREIGN KEY (`master_page_id`) REFERENCES `dtb_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_page`
--

LOCK TABLES `dtb_page` WRITE;
/*!40000 ALTER TABLE `dtb_page` DISABLE KEYS */;
INSERT INTO `dtb_page` VALUES (0,NULL,'Xem trước','preview',NULL,1,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52',NULL,NULL,'page'),(1,NULL,'Trang chủ','homepage','index',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52',NULL,NULL,'page'),(2,NULL,'Danh sách sản phẩm','product_list','Product/list',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52',NULL,NULL,'page'),(3,NULL,'Chi tiết sản phẩm','product_detail','Product/detail',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52',NULL,NULL,'page'),(4,NULL,'Tài khoản của tôi','mypage','Mypage/index',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','noindex',NULL,'page'),(5,NULL,'Tài khoản của tôi / Chỉnh sửa thông tin','mypage_change','Mypage/change',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','noindex',NULL,'page'),(6,NULL,'Tài khoản của tôi / Chỉnh sửa thông tin (hoàn thành)','mypage_change_complete','Mypage/change_complete',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','noindex',NULL,'page'),(7,NULL,'Tài khoản của tôi / Tất cả các địa chỉ giao hàng','mypage_delivery','Mypage/delivery',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','noindex',NULL,'page'),(8,NULL,'Tài khoản của tôi / Thêm địa chỉ giao hàng','mypage_delivery_new','Mypage/delivery_edit',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','noindex',NULL,'page'),(9,NULL,'Tài khoản của tôi / Sản phẩm ưa thích','mypage_favorite','Mypage/favorite',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','noindex',NULL,'page'),(10,NULL,'Tài khoản của tôi / Lịch sử mua hàng','mypage_history','Mypage/history',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','noindex',NULL,'page'),(11,NULL,'Tài khoản của tôi / Đăng nhập','mypage_login','Mypage/login',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','noindex',NULL,'page'),(12,NULL,'Tài khoản của tôi / Hủy tài khoản','mypage_withdraw','Mypage/withdraw',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','noindex',NULL,'page'),(13,NULL,'Tài khoản của tôi / Hủy tài khoản (hoàn thành)','mypage_withdraw_complete','Mypage/withdraw_complete',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','noindex',NULL,'page'),(14,NULL,'Về chúng tôi','help_about','Help/about',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52',NULL,NULL,'page'),(15,NULL,'Giỏ hàng','cart','Cart/index',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','noindex',NULL,'page'),(16,NULL,'Liên hệ','contact','Contact/index',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52',NULL,NULL,'page'),(17,NULL,'Liên hệ (hoàn thành)','contact_complete','Contact/complete',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52',NULL,NULL,'page'),(18,NULL,'Đăng ký','entry','Entry/index',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52',NULL,NULL,'page'),(19,NULL,'Điều khoản và điều kiện','help_agreement','Help/agreement',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52',NULL,NULL,'page'),(20,NULL,'Đăng ký tạm thời hoàn thành','entry_complete','Entry/complete',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52',NULL,NULL,'page'),(21,NULL,'Chính sách giao hàng và trả hàng','help_tradelaw','Help/tradelaw',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52',NULL,NULL,'page'),(22,NULL,'Đăng ký thành viên (kích hoạt)','entry_activate','Entry/activate',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52',NULL,NULL,'page'),(23,NULL,'Mua hàng','shopping','Shopping/index',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','noindex',NULL,'page'),(24,NULL,'Mua hàng / Địa chỉ giao hàng','shopping_shipping','Shopping/shipping',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','noindex',NULL,'page'),(25,NULL,'Mua hàng / Chọn nhiều địa chỉ giao hàng','shopping_shipping_multiple','Shopping/shipping_multiple',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','noindex',NULL,'page'),(28,NULL,'Mua hàng / Hoàn thành','shopping_complete','Shopping/complete',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','noindex',NULL,'page'),(29,NULL,'Chính sách bảo mật','help_privacy','Help/privacy',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52',NULL,NULL,'page'),(30,NULL,'Đăng nhập','shopping_login','Shopping/login',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52',NULL,NULL,'page'),(31,NULL,'Mua hàng không cần tài khoản','shopping_nonmember','Shopping/nonmember',2,NULL,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52',NULL,NULL,'page'),(32,NULL,'Mua hàng / Thêm-sửa địa chỉ giao hàng','shopping_shipping_edit','Shopping/shipping_edit',2,NULL,NULL,NULL,'2017-03-07 01:15:02','2017-03-07 01:15:02','noindex',NULL,'page'),(33,NULL,'Mua hàng / Giao hàng nhiều địa chỉ (Thêm địa chỉ giao hàng)','shopping_shipping_multiple_edit','Shopping/shipping_multiple_edit',2,NULL,NULL,NULL,'2017-03-07 01:15:02','2017-03-07 01:15:02','noindex',NULL,'page'),(34,NULL,'Mua hàng / Lỗi','shopping_error','Shopping/shopping_error',2,NULL,NULL,NULL,'2017-03-07 01:15:02','2017-03-07 01:15:02','noindex',NULL,'page'),(35,NULL,'Hướng dẫn mua hàng','help_guide','Help/guide',2,NULL,NULL,NULL,'2017-03-07 01:15:02','2017-03-07 01:15:02',NULL,NULL,'page'),(36,NULL,'Cài đặt lại mật khẩu','forgot','Forgot/index',2,NULL,NULL,NULL,'2017-03-07 01:15:02','2017-03-07 01:15:02',NULL,NULL,'page'),(37,NULL,'Cài đặt lại mật khẩu (cảm ơn)','forgot_complete','Forgot/complete',2,NULL,NULL,NULL,'2017-03-07 01:15:02','2017-03-07 01:15:02','noindex',NULL,'page'),(38,NULL,'Cài đặt lại mật khẩu (Nhập mật khẩu mới)','forgot_reset','Forgot/reset',2,NULL,NULL,NULL,'2017-03-07 01:15:02','2017-03-07 01:15:05','noindex',NULL,'page'),(42,NULL,'Mua hàng / Thay đổi địa chỉ giao hàng','shopping_shipping_edit_change','Shopping/index',2,NULL,NULL,NULL,'2017-03-07 01:15:03','2017-03-07 01:15:03','noindex',NULL,'page'),(44,8,'Tài khoản của tôi / Chỉnh sửa địa chỉ giao hàng','mypage_delivery_edit','Mypage/delivery_edit',2,NULL,NULL,NULL,'2017-03-07 01:15:05','2017-03-07 01:15:05','noindex',NULL,'page'),(45,NULL,'Mua sắm / Xác nhận','shopping_confirm','Shopping/confirm',2,NULL,NULL,NULL,'2017-03-07 01:15:03','2017-03-07 01:15:03','noindex',NULL,'page'),(46,NULL,'Tìm kiếm mã bưu điện','help_postalcode','Help/postalcode',2,NULL,NULL,NULL,'2017-03-07 01:15:03','2017-03-07 01:15:03','noindex',NULL,'page');
/*!40000 ALTER TABLE `dtb_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_page_layout`
--

DROP TABLE IF EXISTS `dtb_page_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_page_layout` (
  `page_id` int(10) unsigned NOT NULL,
  `layout_id` int(10) unsigned NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`page_id`,`layout_id`),
  KEY `IDX_F2799941C4663E4` (`page_id`),
  KEY `IDX_F27999418C22AA1A` (`layout_id`),
  CONSTRAINT `FK_F27999418C22AA1A` FOREIGN KEY (`layout_id`) REFERENCES `dtb_layout` (`id`),
  CONSTRAINT `FK_F2799941C4663E4` FOREIGN KEY (`page_id`) REFERENCES `dtb_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_page_layout`
--

LOCK TABLES `dtb_page_layout` WRITE;
/*!40000 ALTER TABLE `dtb_page_layout` DISABLE KEYS */;
INSERT INTO `dtb_page_layout` VALUES (0,0,2,'pagelayout'),(1,1,2,'pagelayout'),(2,2,4,'pagelayout'),(3,2,5,'pagelayout'),(4,2,6,'pagelayout'),(5,2,7,'pagelayout'),(6,2,8,'pagelayout'),(7,2,36,'pagelayout'),(8,2,37,'pagelayout'),(9,2,9,'pagelayout'),(10,2,10,'pagelayout'),(11,2,11,'pagelayout'),(12,2,12,'pagelayout'),(13,2,14,'pagelayout'),(14,2,13,'pagelayout'),(15,2,15,'pagelayout'),(16,2,16,'pagelayout'),(17,2,17,'pagelayout'),(18,2,18,'pagelayout'),(19,2,33,'pagelayout'),(20,2,19,'pagelayout'),(21,2,20,'pagelayout'),(22,2,21,'pagelayout'),(23,2,35,'pagelayout'),(24,2,22,'pagelayout'),(25,2,34,'pagelayout'),(28,2,23,'pagelayout'),(29,2,24,'pagelayout'),(30,2,25,'pagelayout'),(31,2,26,'pagelayout'),(32,2,27,'pagelayout'),(33,2,28,'pagelayout'),(34,2,29,'pagelayout'),(35,2,30,'pagelayout'),(36,2,31,'pagelayout'),(37,2,32,'pagelayout'),(38,2,39,'pagelayout'),(42,2,38,'pagelayout'),(44,2,40,'pagelayout'),(45,2,41,'pagelayout'),(46,2,42,'pagelayout');
/*!40000 ALTER TABLE `dtb_page_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_payment`
--

DROP TABLE IF EXISTS `dtb_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_payment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `charge` decimal(12,2) unsigned DEFAULT 0.00,
  `rule_max` decimal(12,2) unsigned DEFAULT NULL,
  `sort_no` smallint(5) unsigned DEFAULT NULL,
  `fixed` tinyint(1) NOT NULL DEFAULT 1,
  `payment_image` varchar(255) DEFAULT NULL,
  `rule_min` decimal(12,2) unsigned DEFAULT NULL,
  `method_class` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7AFF628F61220EA6` (`creator_id`),
  CONSTRAINT `FK_7AFF628F61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_payment`
--

LOCK TABLES `dtb_payment` WRITE;
/*!40000 ALTER TABLE `dtb_payment` DISABLE KEYS */;
INSERT INTO `dtb_payment` VALUES (1,NULL,'Thanh toán khi giao hàng',0.00,NULL,1,1,NULL,0.00,'Eccube\\Service\\Payment\\Method\\Cash',1,'2017-03-07 10:14:52','2017-03-07 10:14:52','payment');
/*!40000 ALTER TABLE `dtb_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_payment_option`
--

DROP TABLE IF EXISTS `dtb_payment_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_payment_option` (
  `delivery_id` int(10) unsigned NOT NULL,
  `payment_id` int(10) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`delivery_id`,`payment_id`),
  KEY `IDX_5631540D12136921` (`delivery_id`),
  KEY `IDX_5631540D4C3A3BB` (`payment_id`),
  CONSTRAINT `FK_5631540D12136921` FOREIGN KEY (`delivery_id`) REFERENCES `dtb_delivery` (`id`),
  CONSTRAINT `FK_5631540D4C3A3BB` FOREIGN KEY (`payment_id`) REFERENCES `dtb_payment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_payment_option`
--

LOCK TABLES `dtb_payment_option` WRITE;
/*!40000 ALTER TABLE `dtb_payment_option` DISABLE KEYS */;
INSERT INTO `dtb_payment_option` VALUES (1,1,'paymentoption'),(2,1,'paymentoption');
/*!40000 ALTER TABLE `dtb_payment_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_plugin`
--

DROP TABLE IF EXISTS `dtb_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `version` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `initialized` tinyint(1) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_plugin`
--

LOCK TABLES `dtb_plugin` WRITE;
/*!40000 ALTER TABLE `dtb_plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `dtb_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_product`
--

DROP TABLE IF EXISTS `dtb_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `product_status_id` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `note` varchar(4000) DEFAULT NULL,
  `description_list` varchar(4000) DEFAULT NULL,
  `description_detail` varchar(4000) DEFAULT NULL,
  `search_word` varchar(4000) DEFAULT NULL,
  `free_area` longtext DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C49DE22F61220EA6` (`creator_id`),
  KEY `IDX_C49DE22F557B630` (`product_status_id`),
  CONSTRAINT `FK_C49DE22F557B630` FOREIGN KEY (`product_status_id`) REFERENCES `mtb_product_status` (`id`),
  CONSTRAINT `FK_C49DE22F61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_product`
--

LOCK TABLES `dtb_product` WRITE;
/*!40000 ALTER TABLE `dtb_product` DISABLE KEYS */;
INSERT INTO `dtb_product` VALUES (1,NULL,1,'CUBE đầy màu sắc',NULL,NULL,'CUBE gelatos là tốt ngay cả trong mùa đông. Hương vị sô cô la phổ biến có hương vị sô cô la ngọt ngào của nó. Đó là người bán lâu năm của chúng tôi vì độ ngọt khiêm tốn và kích thước tốt cho người Nhật. Hương vị vani hạng nhất là một món quà yêu thích.',NULL,NULL,'2018-09-28 10:14:52','2018-09-28 10:14:52','product'),(2,NULL,1,'Sandwich kem Cherry',NULL,NULL,'Kem cherry do Hokkaido sản xuất được kẹp với bánh quy giòn. Dễ dàng mang lại nhiều vì hình dạng hình khối của nó. Đi kèm trong một hộp rắn miễn phí chỉ có sẵn bây giờ.',NULL,NULL,'2018-09-28 10:14:52','2018-09-28 10:14:52','product');
/*!40000 ALTER TABLE `dtb_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_product_category`
--

DROP TABLE IF EXISTS `dtb_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_product_category` (
  `product_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `IDX_B05778914584665A` (`product_id`),
  KEY `IDX_B057789112469DE2` (`category_id`),
  CONSTRAINT `FK_B057789112469DE2` FOREIGN KEY (`category_id`) REFERENCES `dtb_category` (`id`),
  CONSTRAINT `FK_B05778914584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_product_category`
--

LOCK TABLES `dtb_product_category` WRITE;
/*!40000 ALTER TABLE `dtb_product_category` DISABLE KEYS */;
INSERT INTO `dtb_product_category` VALUES (1,1,'productcategory'),(1,2,'productcategory'),(1,3,'productcategory'),(1,4,'productcategory'),(2,2,'productcategory'),(2,5,'productcategory'),(2,6,'productcategory');
/*!40000 ALTER TABLE `dtb_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_product_class`
--

DROP TABLE IF EXISTS `dtb_product_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_product_class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `sale_type_id` smallint(5) unsigned DEFAULT NULL,
  `class_category_id1` int(10) unsigned DEFAULT NULL,
  `class_category_id2` int(10) unsigned DEFAULT NULL,
  `delivery_duration_id` int(10) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `stock` decimal(10,0) DEFAULT NULL,
  `stock_unlimited` tinyint(1) NOT NULL DEFAULT 0,
  `sale_limit` decimal(10,0) unsigned DEFAULT NULL,
  `price01` decimal(12,2) DEFAULT NULL,
  `price02` decimal(12,2) NOT NULL,
  `delivery_fee` decimal(12,2) unsigned DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `currency_code` varchar(255) DEFAULT NULL,
  `point_rate` decimal(10,0) unsigned DEFAULT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1A11D1BA4584665A` (`product_id`),
  KEY `IDX_1A11D1BAB0524E01` (`sale_type_id`),
  KEY `IDX_1A11D1BA248D128` (`class_category_id1`),
  KEY `IDX_1A11D1BA9B418092` (`class_category_id2`),
  KEY `IDX_1A11D1BABA4269E` (`delivery_duration_id`),
  KEY `IDX_1A11D1BA61220EA6` (`creator_id`),
  KEY `dtb_product_class_price02_idx` (`price02`),
  KEY `dtb_product_class_stock_stock_unlimited_idx` (`stock`,`stock_unlimited`),
  CONSTRAINT `FK_1A11D1BA248D128` FOREIGN KEY (`class_category_id1`) REFERENCES `dtb_class_category` (`id`),
  CONSTRAINT `FK_1A11D1BA4584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`id`),
  CONSTRAINT `FK_1A11D1BA61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  CONSTRAINT `FK_1A11D1BA9B418092` FOREIGN KEY (`class_category_id2`) REFERENCES `dtb_class_category` (`id`),
  CONSTRAINT `FK_1A11D1BAB0524E01` FOREIGN KEY (`sale_type_id`) REFERENCES `mtb_sale_type` (`id`),
  CONSTRAINT `FK_1A11D1BABA4269E` FOREIGN KEY (`delivery_duration_id`) REFERENCES `dtb_delivery_duration` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_product_class`
--

LOCK TABLES `dtb_product_class` WRITE;
/*!40000 ALTER TABLE `dtb_product_class` DISABLE KEYS */;
INSERT INTO `dtb_product_class` VALUES (0,1,1,NULL,NULL,NULL,NULL,'cube-01',NULL,1,NULL,115000.00,110000.00,NULL,0,'2017-03-07 10:14:52','2017-03-07 10:14:52','JPY',NULL,'productclass'),(1,1,1,3,6,NULL,NULL,'cube-01',NULL,1,NULL,115000.00,110000.00,NULL,1,'2017-03-07 10:14:52','2017-03-07 10:14:52','JPY',NULL,'productclass'),(2,1,1,3,5,NULL,NULL,'cube-02',NULL,1,NULL,95000.00,93000.00,NULL,1,'2017-03-07 10:14:52','2017-03-07 10:14:52','JPY',NULL,'productclass'),(3,1,1,3,4,NULL,NULL,'cube-03',NULL,1,NULL,75000.00,74000.00,NULL,1,'2017-03-07 10:14:52','2017-03-07 10:14:52','JPY',NULL,'productclass'),(4,1,1,2,6,NULL,NULL,'cube-04',NULL,1,NULL,95000.00,93000.00,NULL,1,'2017-03-07 10:14:52','2017-03-07 10:14:52','JPY',NULL,'productclass'),(5,1,1,2,5,NULL,NULL,'cube-05',NULL,1,NULL,50000.00,49000.00,NULL,1,'2017-03-07 10:14:52','2017-03-07 10:14:52','JPY',NULL,'productclass'),(6,1,1,2,4,NULL,NULL,'cube-06',NULL,1,NULL,35000.00,34500.00,NULL,1,'2017-03-07 10:14:52','2017-03-07 10:14:52','JPY',NULL,'productclass'),(7,1,1,1,6,NULL,NULL,'cube-07',NULL,1,NULL,NULL,180000.00,NULL,1,'2017-03-07 10:14:52','2017-03-07 10:14:52','JPY',NULL,'productclass'),(8,1,1,1,5,NULL,NULL,'cube-08',NULL,1,NULL,NULL,130000.00,NULL,1,'2017-03-07 10:14:52','2017-03-07 10:14:52','JPY',NULL,'productclass'),(9,1,1,1,4,NULL,NULL,'cube-09',NULL,1,NULL,NULL,50000.00,NULL,1,'2017-03-07 10:14:52','2017-03-07 10:14:52','JPY',NULL,'productclass'),(10,2,1,NULL,NULL,NULL,NULL,'sand-01',100,0,5,3000.00,28000.00,NULL,1,'2017-03-07 10:14:52','2017-03-07 10:14:52','JPY',NULL,'productclass');
/*!40000 ALTER TABLE `dtb_product_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_product_image`
--

DROP TABLE IF EXISTS `dtb_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_product_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3267CC7A4584665A` (`product_id`),
  KEY `IDX_3267CC7A61220EA6` (`creator_id`),
  CONSTRAINT `FK_3267CC7A4584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`id`),
  CONSTRAINT `FK_3267CC7A61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_product_image`
--

LOCK TABLES `dtb_product_image` WRITE;
/*!40000 ALTER TABLE `dtb_product_image` DISABLE KEYS */;
INSERT INTO `dtb_product_image` VALUES (1,1,NULL,'cube-1.png',1,'2017-03-07 10:14:52','productimage'),(2,1,NULL,'cube-2.png',2,'2017-03-07 10:14:52','productimage'),(3,1,NULL,'cube-3.png',3,'2017-03-07 10:14:52','productimage'),(4,2,NULL,'sand-1.png',1,'2017-03-07 10:14:52','productimage'),(5,2,NULL,'sand-2.png',2,'2017-03-07 10:14:52','productimage'),(6,2,NULL,'sand-3.png',3,'2017-03-07 10:14:52','productimage');
/*!40000 ALTER TABLE `dtb_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_product_stock`
--

DROP TABLE IF EXISTS `dtb_product_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_product_stock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_class_id` int(10) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `stock` decimal(10,0) DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BC6C9E4521B06187` (`product_class_id`),
  KEY `IDX_BC6C9E4561220EA6` (`creator_id`),
  CONSTRAINT `FK_BC6C9E4521B06187` FOREIGN KEY (`product_class_id`) REFERENCES `dtb_product_class` (`id`),
  CONSTRAINT `FK_BC6C9E4561220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_product_stock`
--

LOCK TABLES `dtb_product_stock` WRITE;
/*!40000 ALTER TABLE `dtb_product_stock` DISABLE KEYS */;
INSERT INTO `dtb_product_stock` VALUES (1,0,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','productstock'),(2,1,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','productstock'),(3,2,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','productstock'),(4,3,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','productstock'),(5,4,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','productstock'),(6,5,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','productstock'),(7,6,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','productstock'),(8,7,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','productstock'),(9,8,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','productstock'),(10,9,NULL,NULL,'2017-03-07 10:14:52','2017-03-07 10:14:52','productstock'),(11,10,NULL,100,'2017-03-07 10:14:52','2017-03-07 10:14:52','productstock');
/*!40000 ALTER TABLE `dtb_product_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_product_tag`
--

DROP TABLE IF EXISTS `dtb_product_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_product_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `tag_id` int(10) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4433E7214584665A` (`product_id`),
  KEY `IDX_4433E721BAD26311` (`tag_id`),
  KEY `IDX_4433E72161220EA6` (`creator_id`),
  CONSTRAINT `FK_4433E7214584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`id`),
  CONSTRAINT `FK_4433E72161220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  CONSTRAINT `FK_4433E721BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `dtb_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_product_tag`
--

LOCK TABLES `dtb_product_tag` WRITE;
/*!40000 ALTER TABLE `dtb_product_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `dtb_product_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_shipping`
--

DROP TABLE IF EXISTS `dtb_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_shipping` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned DEFAULT NULL,
  `country_id` smallint(5) unsigned DEFAULT NULL,
  `pref_id` smallint(5) unsigned DEFAULT NULL,
  `delivery_id` int(10) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `name01` varchar(255) NOT NULL,
  `name02` varchar(255) NOT NULL,
  `kana01` varchar(255) DEFAULT NULL,
  `kana02` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `postal_code` varchar(8) DEFAULT NULL,
  `addr01` varchar(255) DEFAULT NULL,
  `addr02` varchar(255) DEFAULT NULL,
  `delivery_name` varchar(255) DEFAULT NULL,
  `time_id` int(10) unsigned DEFAULT NULL,
  `delivery_time` varchar(255) DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `shipping_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `tracking_number` varchar(255) DEFAULT NULL,
  `note` varchar(4000) DEFAULT NULL,
  `sort_no` smallint(5) unsigned DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `mail_send_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2EBD22CE8D9F6D38` (`order_id`),
  KEY `IDX_2EBD22CEF92F3E70` (`country_id`),
  KEY `IDX_2EBD22CEE171EF5F` (`pref_id`),
  KEY `IDX_2EBD22CE12136921` (`delivery_id`),
  KEY `IDX_2EBD22CE61220EA6` (`creator_id`),
  CONSTRAINT `FK_2EBD22CE12136921` FOREIGN KEY (`delivery_id`) REFERENCES `dtb_delivery` (`id`),
  CONSTRAINT `FK_2EBD22CE61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  CONSTRAINT `FK_2EBD22CE8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `dtb_order` (`id`),
  CONSTRAINT `FK_2EBD22CEE171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`),
  CONSTRAINT `FK_2EBD22CEF92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_shipping`
--

LOCK TABLES `dtb_shipping` WRITE;
/*!40000 ALTER TABLE `dtb_shipping` DISABLE KEYS */;
INSERT INTO `dtb_shipping` VALUES (1,1,NULL,52,1,1,'Thắng','Phan','カナ','カナ','Saisunkan System','0912232125','12345678','Tp Huế','28 Nguyễn Tri Phương','Sample Company',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-11-02 06:17:43','2023-11-02 06:17:43',NULL,'shipping'),(2,2,NULL,52,2,1,'Thắng','Phan','カナ','カナ','Saisunkan System','0912232125','12345678','Tp Huế','28 Nguyễn Tri Phương','Sample Delivery',NULL,NULL,'2023-12-31 17:00:00',NULL,'123456798',NULL,NULL,'2023-11-02 06:28:02','2023-11-02 06:28:02',NULL,'shipping');
/*!40000 ALTER TABLE `dtb_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_tag`
--

DROP TABLE IF EXISTS `dtb_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_tag`
--

LOCK TABLES `dtb_tag` WRITE;
/*!40000 ALTER TABLE `dtb_tag` DISABLE KEYS */;
INSERT INTO `dtb_tag` VALUES (1,'Sản phẩm mới',1,'tag'),(2,'Lựa chọn của chúng tôi',2,'tag'),(3,'Sản phẩm giới hạn',3,'tag');
/*!40000 ALTER TABLE `dtb_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_tax_rule`
--

DROP TABLE IF EXISTS `dtb_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_tax_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_class_id` int(10) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `country_id` smallint(5) unsigned DEFAULT NULL,
  `pref_id` smallint(5) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `rounding_type_id` smallint(5) unsigned DEFAULT NULL,
  `tax_rate` decimal(10,0) unsigned NOT NULL DEFAULT 8,
  `tax_adjust` decimal(10,0) unsigned NOT NULL DEFAULT 0,
  `apply_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_59F696DE21B06187` (`product_class_id`),
  KEY `IDX_59F696DE61220EA6` (`creator_id`),
  KEY `IDX_59F696DEF92F3E70` (`country_id`),
  KEY `IDX_59F696DEE171EF5F` (`pref_id`),
  KEY `IDX_59F696DE4584665A` (`product_id`),
  KEY `IDX_59F696DE1BD5C574` (`rounding_type_id`),
  CONSTRAINT `FK_59F696DE1BD5C574` FOREIGN KEY (`rounding_type_id`) REFERENCES `mtb_rounding_type` (`id`),
  CONSTRAINT `FK_59F696DE21B06187` FOREIGN KEY (`product_class_id`) REFERENCES `dtb_product_class` (`id`),
  CONSTRAINT `FK_59F696DE4584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`id`),
  CONSTRAINT `FK_59F696DE61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  CONSTRAINT `FK_59F696DEE171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`),
  CONSTRAINT `FK_59F696DEF92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_tax_rule`
--

LOCK TABLES `dtb_tax_rule` WRITE;
/*!40000 ALTER TABLE `dtb_tax_rule` DISABLE KEYS */;
INSERT INTO `dtb_tax_rule` VALUES (1,NULL,NULL,NULL,NULL,NULL,1,10,0,'2019-01-08 10:14:52','2019-01-08 10:14:52','2019-01-08 10:14:52','taxrule');
/*!40000 ALTER TABLE `dtb_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtb_template`
--

DROP TABLE IF EXISTS `dtb_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtb_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `device_type_id` smallint(5) unsigned DEFAULT NULL,
  `template_code` varchar(255) NOT NULL,
  `template_name` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_94C12A694FFA550E` (`device_type_id`),
  CONSTRAINT `FK_94C12A694FFA550E` FOREIGN KEY (`device_type_id`) REFERENCES `mtb_device_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtb_template`
--

LOCK TABLES `dtb_template` WRITE;
/*!40000 ALTER TABLE `dtb_template` DISABLE KEYS */;
INSERT INTO `dtb_template` VALUES (1,10,'default','Default','2017-03-07 10:14:52','2017-03-07 10:14:52','template');
/*!40000 ALTER TABLE `dtb_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtb_authority`
--

DROP TABLE IF EXISTS `mtb_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtb_authority` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtb_authority`
--

LOCK TABLES `mtb_authority` WRITE;
/*!40000 ALTER TABLE `mtb_authority` DISABLE KEYS */;
INSERT INTO `mtb_authority` VALUES (0,'Quản lý hệ thống',0,'authority'),(1,'Chủ cửa hàng',1,'authority');
/*!40000 ALTER TABLE `mtb_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtb_country`
--

DROP TABLE IF EXISTS `mtb_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtb_country` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtb_country`
--

LOCK TABLES `mtb_country` WRITE;
/*!40000 ALTER TABLE `mtb_country` DISABLE KEYS */;
INSERT INTO `mtb_country` VALUES (4,'Afghanistan',4,'country'),(8,'Albania',12,'country'),(10,'Antarctic',149,'country'),(12,'Algeria',9,'country'),(16,'American Samoa',7,'country'),(20,'Andorra',17,'country'),(24,'Angola',15,'country'),(28,'Antigua and Barbuda',16,'country'),(31,'Azerbaijan',3,'country'),(32,'Argentina',10,'country'),(36,'Australia',39,'country'),(40,'Austria',40,'country'),(44,'The Bahamas',167,'country'),(48,'Bahrain',161,'country'),(50,'Bangladesh',175,'country'),(51,'Armenia',13,'country'),(52,'Barbados',172,'country'),(56,'Belgium',201,'country'),(60,'Bermuda Islands | Bermuda',169,'country'),(64,'Bhutan',181,'country'),(68,'Bolivia | Bolivia Multi Ethnic Countries',206,'country'),(70,'Bosnia-Herzegovina',203,'country'),(72,'Botswana',204,'country'),(74,'Bouvet Island',182,'country'),(76,'Brazil',186,'country'),(84,'Belize',199,'country'),(86,'British Indian Ocean Territory',20,'country'),(90,'Solomon Islands',121,'country'),(92,'British Virgin Islands',21,'country'),(96,'Brunei | Brunei Darussalam',193,'country'),(100,'Bulgaria',191,'country'),(104,'Myanmar',224,'country'),(108,'Burundi',194,'country'),(112,'Belarus',198,'country'),(116,'Cambodia',55,'country'),(120,'Cameroon',53,'country'),(124,'Canada',51,'country'),(132,'Cabo Verde',45,'country'),(136,'Cayman Islands',75,'country'),(140,'Central African Republic',130,'country'),(144,'Sri Lanka',108,'country'),(148,'Chad',129,'country'),(152,'Chile',134,'country'),(156,'People\'s Republic of China | China',131,'country'),(158,'Taiwan',125,'country'),(162,'Christmas Island (Australia) | Christmas Island',71,'country'),(166,'Cocos Islands | Cocos (Keeling) Islands',78,'country'),(170,'Columbia',81,'country'),(174,'Comoros',80,'country'),(175,'Mayotte',214,'country'),(178,'Republic of Congo',82,'country'),(180,'Democratic Republic of the Congo',83,'country'),(184,'Cook Islands',69,'country'),(188,'Costa Rica',79,'country'),(191,'Croatia',74,'country'),(192,'Cuba',60,'country'),(196,'Cyprus',59,'country'),(203,'Czech',128,'country'),(204,'Benin',196,'country'),(208,'Denmark',136,'country'),(212,'Dominica country',141,'country'),(214,'Dominican Republic',140,'country'),(218,'Ecuador',33,'country'),(222,'El Salvador',38,'country'),(226,'Equatorial Guinea',113,'country'),(231,'Ethiopia',36,'country'),(232,'Eritrea',37,'country'),(233,'Estonia',35,'country'),(234,'Faroe Islands',184,'country'),(238,'Falkland Islands | Falkland (Malvinas) Islands',185,'country'),(239,'South Georgia and the South Sandwich Islands',85,'country'),(242,'Fiji',178,'country'),(246,'Finland',180,'country'),(248,'Orlando Islands',41,'country'),(250,'France',187,'country'),(254,'French Guiana',188,'country'),(258,'French Polynesia',189,'country'),(260,'French Southern and Antarctic Region',190,'country'),(262,'Djibouti',94,'country'),(266,'Gabon',52,'country'),(268,'Georgia',72,'country'),(270,'Gambia',54,'country'),(275,'Palestine',173,'country'),(276,'Germany',137,'country'),(288,'Ghana',44,'country'),(292,'Gibraltar',95,'country'),(296,'Kiribati',63,'country'),(300,'Greece',62,'country'),(304,'Greenland',70,'country'),(308,'Grenada',73,'country'),(312,'Guadeloupe',66,'country'),(316,'Guam',67,'country'),(320,'Guatemala',65,'country'),(324,'Guinea',57,'country'),(328,'Guyana',47,'country'),(332,'Haiti',162,'country'),(334,'Heard Island and Mcdonald Islands',160,'country'),(336,'Vatican City | Vatican City State',164,'country'),(340,'Honduras',209,'country'),(344,'Hong Kong',208,'country'),(348,'Hungary',174,'country'),(352,'Iceland',1,'country'),(356,'India',26,'country'),(360,'Indonesia',27,'country'),(364,'Iran | Islamic Republic of Iran',25,'country'),(368,'Iraq',24,'country'),(372,'Ireland',2,'country'),(376,'Israel',22,'country'),(380,'Italy',23,'country'),(384,'Cote d\'Ivoire',77,'country'),(388,'Jamaica',97,'country'),(392,'Japan',153,'country'),(398,'Kazakhstan',48,'country'),(400,'Jordan',236,'country'),(404,'Kenya',76,'country'),(408,'Democratic People\'s Republic of Korea',133,'country'),(410,'South Korea',124,'country'),(414,'Kuwait',68,'country'),(417,'Kyrgyzstan',64,'country'),(418,'Laos | Lao People\'s Democratic Republic',237,'country'),(422,'Lebanon',247,'country'),(426,'Lesotho',246,'country'),(428,'Latvia',238,'country'),(430,'Liberia',242,'country'),(434,'Libya',240,'country'),(438,'Liechtenstein',241,'country'),(440,'Lithuania',239,'country'),(442,'Luxembourg',244,'country'),(446,'Macau',211,'country'),(450,'Madagascar',213,'country'),(454,'Malawi',215,'country'),(458,'Malaysia',219,'country'),(462,'Maldives',230,'country'),(466,'Mali Republic | Mali',216,'country'),(470,'Malta',217,'country'),(474,'Martinique',218,'country'),(478,'Mauritania',227,'country'),(480,'Mauritius',226,'country'),(484,'Mexico',225,'country'),(492,'Monaco',229,'country'),(496,'Mongolia country | Mongolia',233,'country'),(498,'Moldova | Moldova Republic',231,'country'),(499,'Montenegro',234,'country'),(500,'Montserrat',235,'country'),(504,'Morocco',232,'country'),(508,'Mozambique',228,'country'),(512,'Oman',42,'country'),(516,'Namibia',148,'country'),(520,'Nauru',147,'country'),(524,'Nepal',157,'country'),(528,'Netherlands',43,'country'),(531,'Curaçao | Curaçao',61,'country'),(533,'Aruba',11,'country'),(534,'Sint Maarten | Sint Maarten (Netherlands territory)',100,'country'),(535,'BES Islands | Bonaire, Sint-Eustatius and Mackerel',205,'country'),(540,'New Caledonia',155,'country'),(548,'Vanuatu',166,'country'),(554,'New Zealand',156,'country'),(558,'Nicaragua',151,'country'),(562,'Niger',152,'country'),(566,'Nigeria',146,'country'),(570,'Niue',150,'country'),(574,'Norfolk Island',158,'country'),(578,'Norway',159,'country'),(580,'Northern Mariana Islands',56,'country'),(581,'United States Minor Outlying Islands',50,'country'),(583,'Federated States of Micronesia',221,'country'),(584,'Marshall Islands',210,'country'),(585,'Palau',170,'country'),(586,'Pakistan',163,'country'),(591,'Panama',165,'country'),(598,'Papua New Guinea',168,'country'),(600,'Paraguay',171,'country'),(604,'Peru',200,'country'),(608,'Philippines',179,'country'),(612,'Pitcairn Islands | Pitcairn',177,'country'),(616,'Poland',202,'country'),(620,'Portugal',207,'country'),(624,'Guinea-Bissau',58,'country'),(626,'East Timor',176,'country'),(630,'Puerto Rico',183,'country'),(634,'Qatar',49,'country'),(638,'Reunion',248,'country'),(642,'Romania',243,'country'),(643,'Russia | Russian Federation',249,'country'),(646,'Rwanda',245,'country'),(652,'Saint Barthelemy | Saint Barthelemy',88,'country'),(654,'St. Helena Ascension and Tristan da Cunha',118,'country'),(659,'Saint Kitts and Nevis',116,'country'),(660,'Anguilla',14,'country'),(662,'Saint Lucia',119,'country'),(663,'Saint Martin (West Indies) | Saint Martin (French territory)',92,'country'),(666,'Saint Pierre and Miquelon Island',90,'country'),(670,'Saint Vincent and the Grenadines | Saint Vincent and the Grenadines',117,'country'),(674,'San Marino',91,'country'),(678,'Sao Tome and Principe',87,'country'),(682,'Saudi Arabia',84,'country'),(686,'Senegal',114,'country'),(688,'Serbia',115,'country'),(690,'Seychelles',112,'country'),(694,'Sierra Leone',93,'country'),(702,'Singapore',99,'country'),(703,'Slovakia',109,'country'),(704,'Vietnam',195,'country'),(705,'Slovenia',110,'country'),(706,'Somalia',120,'country'),(710,'South Africa Republic | South Africa',222,'country'),(716,'Zimbabwe',101,'country'),(724,'Spain',106,'country'),(728,'South Sudan',223,'country'),(729,'Sudan',104,'country'),(732,'Western Sahara',154,'country'),(740,'Suriname',107,'country'),(744,'Svalbard and Jan Mayen Island',105,'country'),(748,'Swaziland',111,'country'),(752,'Sweden',103,'country'),(756,'Switzerland',102,'country'),(760,'Syria | Syria / Arab Republic',98,'country'),(762,'Tajikistan',126,'country'),(764,'Thailand Kingdom | Thailand',123,'country'),(768,'Togo',138,'country'),(772,'Tokelau',139,'country'),(776,'Tonga',145,'country'),(780,'Republic of Trinidad and Tobago',142,'country'),(784,'United Arab Emirates',8,'country'),(788,'Tunisia',132,'country'),(792,'Turkey',144,'country'),(795,'Turkmenistan',143,'country'),(796,'Turks & Caicos Islands',122,'country'),(798,'Tuvalu',135,'country'),(800,'Uganda',29,'country'),(804,'Ukraine',30,'country'),(807,'Macedonia Republic | Macedonia Former Yugoslav Republic',212,'country'),(818,'Egypt',34,'country'),(826,'England',19,'country'),(831,'Guernsey',46,'country'),(832,'Jersey',96,'country'),(833,'Isle of Man',220,'country'),(834,'Tanzania',127,'country'),(840,'United States of America',5,'country'),(850,'US Virgin Islands',6,'country'),(854,'Burkina Faso',192,'country'),(858,'Uruguay',32,'country'),(860,'Uzbekistan',31,'country'),(862,'Venezuela | Venezuela / Bolivar Republic',197,'country'),(876,'Wallis and Futuna',28,'country'),(882,'Samoa',86,'country'),(887,'Yemen',18,'country'),(894,'Zambia',89,'country');
/*!40000 ALTER TABLE `mtb_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtb_csv_type`
--

DROP TABLE IF EXISTS `mtb_csv_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtb_csv_type` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtb_csv_type`
--

LOCK TABLES `mtb_csv_type` WRITE;
/*!40000 ALTER TABLE `mtb_csv_type` DISABLE KEYS */;
INSERT INTO `mtb_csv_type` VALUES (1,'Sản phẩm CSV',3,'csvtype'),(2,'Khách hàng CSV',4,'csvtype'),(3,'Đơn hàng CSV',1,'csvtype'),(4,'Giao hàng CSV',1,'csvtype'),(5,'Danh mục nhóm CSV',5,'csvtype');
/*!40000 ALTER TABLE `mtb_csv_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtb_customer_order_status`
--

DROP TABLE IF EXISTS `mtb_customer_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtb_customer_order_status` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtb_customer_order_status`
--

LOCK TABLES `mtb_customer_order_status` WRITE;
/*!40000 ALTER TABLE `mtb_customer_order_status` DISABLE KEYS */;
INSERT INTO `mtb_customer_order_status` VALUES (1,'Đã nhận đơn hàng',0,'customerorderstatus'),(3,'Đã hủy đơn hàng',4,'customerorderstatus'),(4,'Đã nhận đơn hàng',3,'customerorderstatus'),(5,'Đã giao đơn hàng',6,'customerorderstatus'),(6,'Đã nhận đơn hàng',2,'customerorderstatus'),(7,'Đã nhận đơn hàng',1,'customerorderstatus'),(8,'Đơn hàng chưa hoàn thành',5,'customerorderstatus'),(9,'Đã trả lại đơn hàng',7,'customerorderstatus');
/*!40000 ALTER TABLE `mtb_customer_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtb_customer_status`
--

DROP TABLE IF EXISTS `mtb_customer_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtb_customer_status` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtb_customer_status`
--

LOCK TABLES `mtb_customer_status` WRITE;
/*!40000 ALTER TABLE `mtb_customer_status` DISABLE KEYS */;
INSERT INTO `mtb_customer_status` VALUES (1,'Tạm thời',0,'customerstatus'),(2,'Chính thức',1,'customerstatus'),(3,'Đã hủy',2,'customerstatus');
/*!40000 ALTER TABLE `mtb_customer_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtb_device_type`
--

DROP TABLE IF EXISTS `mtb_device_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtb_device_type` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtb_device_type`
--

LOCK TABLES `mtb_device_type` WRITE;
/*!40000 ALTER TABLE `mtb_device_type` DISABLE KEYS */;
INSERT INTO `mtb_device_type` VALUES (2,'Di động',0,'devicetype'),(10,'Máy tính',1,'devicetype');
/*!40000 ALTER TABLE `mtb_device_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtb_job`
--

DROP TABLE IF EXISTS `mtb_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtb_job` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtb_job`
--

LOCK TABLES `mtb_job` WRITE;
/*!40000 ALTER TABLE `mtb_job` DISABLE KEYS */;
INSERT INTO `mtb_job` VALUES (1,'Công chức nhà nước',0,'job'),(2,'Tư vấn',1,'job'),(3,'Kỹ sư (IT)',2,'job'),(4,'Kỹ sư (Khác IT)',3,'job'),(5,'Tài chính',4,'job'),(6,'Bác sĩ',5,'job'),(7,'Luật sư',6,'job'),(8,'Quản trị / Nhân sự / Thư ký',7,'job'),(9,'Bán hàng',8,'job'),(10,'Nghiên cứu và phát triển (R&D)',9,'job'),(11,'PR',10,'job'),(12,'Lập kế hoạch / Tiếp thị',11,'job'),(13,'Thiết kế',12,'job'),(14,'Chủ doanh nghiệp / Thành viên hội đồng quản trị',13,'job'),(15,'Nhà xuất bản / Truyền thông đại chúng',14,'job'),(16,'Sinh viên / Bán thời gian',15,'job'),(17,'Người nội trợ',16,'job'),(18,'Khác',17,'job');
/*!40000 ALTER TABLE `mtb_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtb_order_item_type`
--

DROP TABLE IF EXISTS `mtb_order_item_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtb_order_item_type` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtb_order_item_type`
--

LOCK TABLES `mtb_order_item_type` WRITE;
/*!40000 ALTER TABLE `mtb_order_item_type` DISABLE KEYS */;
INSERT INTO `mtb_order_item_type` VALUES (1,'Sản phẩm',0,'orderitemtype'),(2,'Phí giao hàng',1,'orderitemtype'),(3,'Phí thanh toán',2,'orderitemtype'),(4,'Giảm giá',3,'orderitemtype'),(5,'Thuế',4,'orderitemtype'),(6,'Điểm thưởng',5,'orderitemtype');
/*!40000 ALTER TABLE `mtb_order_item_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtb_order_status`
--

DROP TABLE IF EXISTS `mtb_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtb_order_status` (
  `id` smallint(5) unsigned NOT NULL,
  `display_order_count` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtb_order_status`
--

LOCK TABLES `mtb_order_status` WRITE;
/*!40000 ALTER TABLE `mtb_order_status` DISABLE KEYS */;
INSERT INTO `mtb_order_status` VALUES (1,1,'Mới',0,'orderstatus'),(3,0,'Đã hủy',3,'orderstatus'),(4,1,'Đang xử lý',2,'orderstatus'),(5,0,'Đã giao hàng',4,'orderstatus'),(6,1,'Đã thanh toán',1,'orderstatus'),(7,0,'Đang thanh toán',6,'orderstatus'),(8,0,'Đang mua',5,'orderstatus'),(9,0,'Đã trả lại',7,'orderstatus');
/*!40000 ALTER TABLE `mtb_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtb_order_status_color`
--

DROP TABLE IF EXISTS `mtb_order_status_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtb_order_status_color` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtb_order_status_color`
--

LOCK TABLES `mtb_order_status_color` WRITE;
/*!40000 ALTER TABLE `mtb_order_status_color` DISABLE KEYS */;
INSERT INTO `mtb_order_status_color` VALUES (1,'#437ec4',0,'orderstatuscolor'),(3,'#C04949',3,'orderstatuscolor'),(4,'#EEB128',2,'orderstatuscolor'),(5,'#25B877',4,'orderstatuscolor'),(6,'#25B877',1,'orderstatuscolor'),(7,'#A3A3A3',6,'orderstatuscolor'),(8,'#A3A3A3',5,'orderstatuscolor'),(9,'#C04949',7,'orderstatuscolor');
/*!40000 ALTER TABLE `mtb_order_status_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtb_page_max`
--

DROP TABLE IF EXISTS `mtb_page_max`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtb_page_max` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtb_page_max`
--

LOCK TABLES `mtb_page_max` WRITE;
/*!40000 ALTER TABLE `mtb_page_max` DISABLE KEYS */;
INSERT INTO `mtb_page_max` VALUES (10,'10',0,'pagemax'),(20,'20',1,'pagemax'),(30,'30',2,'pagemax'),(40,'40',3,'pagemax'),(50,'50',4,'pagemax'),(60,'60',5,'pagemax'),(70,'70',6,'pagemax'),(80,'80',7,'pagemax'),(90,'90',8,'pagemax'),(100,'100',9,'pagemax');
/*!40000 ALTER TABLE `mtb_page_max` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtb_pref`
--

DROP TABLE IF EXISTS `mtb_pref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtb_pref` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtb_pref`
--

LOCK TABLES `mtb_pref` WRITE;
/*!40000 ALTER TABLE `mtb_pref` DISABLE KEYS */;
INSERT INTO `mtb_pref` VALUES (1,'Hồ Chí Minh',1,'pref'),(2,'Hà Nội',2,'pref'),(3,'Đà Nẵng',3,'pref'),(4,'An Giang',4,'pref'),(5,'Bà Rịa - Vũng Tàu',5,'pref'),(6,'Bắc Giang',6,'pref'),(7,'Bắc Kạn',7,'pref'),(8,'Bạc Liêu',8,'pref'),(9,'Bắc Ninh',9,'pref'),(10,'Bến Tre',10,'pref'),(11,'Bình Dương',11,'pref'),(12,'Bình Phước',12,'pref'),(13,'Bình Thuận',13,'pref'),(14,'Bình Định',14,'pref'),(15,'Cà Mau',15,'pref'),(16,'Cần Thơ',16,'pref'),(17,'Cao Bằng',17,'pref'),(18,'Gia Lai',18,'pref'),(19,'Hà Giang',19,'pref'),(20,'Hà Nam',20,'pref'),(21,'Hà Tĩnh',21,'pref'),(22,'Hải Dương',22,'pref'),(23,'Hải Phòng',23,'pref'),(24,'Hậu Giang',24,'pref'),(25,'Hoà Bình',25,'pref'),(26,'Hưng Yên',26,'pref'),(27,'Khánh Hòa',27,'pref'),(28,'Kiên Giang',28,'pref'),(29,'Kon Tum',29,'pref'),(30,'Lai Châu',30,'pref'),(31,'Lâm Đồng',31,'pref'),(32,'Lạng Sơn',32,'pref'),(33,'Lào Cai',33,'pref'),(34,'Long An',34,'pref'),(35,'Nam Định',35,'pref'),(36,'Nghệ An',36,'pref'),(37,'Ninh Bình',37,'pref'),(38,'Ninh Thuận',38,'pref'),(39,'Phú Thọ',39,'pref'),(40,'Phú Yên',40,'pref'),(41,'Quảng Bình',41,'pref'),(42,'Quảng Nam',42,'pref'),(43,'Quảng Ngãi',43,'pref'),(44,'Quảng Ninh',44,'pref'),(45,'Quảng Trị',45,'pref'),(46,'Sóc Trăng',46,'pref'),(47,'Sơn La',47,'pref'),(48,'Tây Ninh',48,'pref'),(49,'Thái Bình',49,'pref'),(50,'Thái Nguyên',50,'pref'),(51,'Thanh Hóa',51,'pref'),(52,'Thừa Thiên Huế',52,'pref'),(53,'Tiền Giang',53,'pref'),(54,'Trà Vinh',54,'pref'),(55,'Tuyên Quang',55,'pref'),(56,'Vĩnh Long',56,'pref'),(57,'Vĩnh Phúc',57,'pref'),(58,'Yên Bái',58,'pref'),(59,'Đắk Lắk',59,'pref'),(60,'Đắk Nông',60,'pref'),(61,'Điện Biên',61,'pref'),(62,'Đồng Nai',62,'pref'),(63,'Đồng Tháp',63,'pref');
/*!40000 ALTER TABLE `mtb_pref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtb_product_list_max`
--

DROP TABLE IF EXISTS `mtb_product_list_max`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtb_product_list_max` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtb_product_list_max`
--

LOCK TABLES `mtb_product_list_max` WRITE;
/*!40000 ALTER TABLE `mtb_product_list_max` DISABLE KEYS */;
INSERT INTO `mtb_product_list_max` VALUES (20,'20 mục',0,'productlistmax'),(40,'40 mục',1,'productlistmax'),(60,'60 mục',2,'productlistmax');
/*!40000 ALTER TABLE `mtb_product_list_max` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtb_product_list_order_by`
--

DROP TABLE IF EXISTS `mtb_product_list_order_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtb_product_list_order_by` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtb_product_list_order_by`
--

LOCK TABLES `mtb_product_list_order_by` WRITE;
/*!40000 ALTER TABLE `mtb_product_list_order_by` DISABLE KEYS */;
INSERT INTO `mtb_product_list_order_by` VALUES (1,'Giá thấp đến cao',0,'productlistorderby'),(2,'Hàng mới nhất',2,'productlistorderby'),(3,'Giá cao tới thấp',1,'productlistorderby');
/*!40000 ALTER TABLE `mtb_product_list_order_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtb_product_status`
--

DROP TABLE IF EXISTS `mtb_product_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtb_product_status` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtb_product_status`
--

LOCK TABLES `mtb_product_status` WRITE;
/*!40000 ALTER TABLE `mtb_product_status` DISABLE KEYS */;
INSERT INTO `mtb_product_status` VALUES (1,'Hiện',0,'productstatus'),(2,'Ẩn',1,'productstatus'),(3,'Ngưng',2,'productstatus');
/*!40000 ALTER TABLE `mtb_product_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtb_rounding_type`
--

DROP TABLE IF EXISTS `mtb_rounding_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtb_rounding_type` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtb_rounding_type`
--

LOCK TABLES `mtb_rounding_type` WRITE;
/*!40000 ALTER TABLE `mtb_rounding_type` DISABLE KEYS */;
INSERT INTO `mtb_rounding_type` VALUES (1,'Làm tròn',0,'roundingtype'),(2,'Làm tròn lên',1,'roundingtype'),(3,'Làm tròn xuống',2,'roundingtype');
/*!40000 ALTER TABLE `mtb_rounding_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtb_sale_type`
--

DROP TABLE IF EXISTS `mtb_sale_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtb_sale_type` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtb_sale_type`
--

LOCK TABLES `mtb_sale_type` WRITE;
/*!40000 ALTER TABLE `mtb_sale_type` DISABLE KEYS */;
INSERT INTO `mtb_sale_type` VALUES (1,'Loại A',0,'saletype'),(2,'Loại B',1,'saletype');
/*!40000 ALTER TABLE `mtb_sale_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtb_sex`
--

DROP TABLE IF EXISTS `mtb_sex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtb_sex` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtb_sex`
--

LOCK TABLES `mtb_sex` WRITE;
/*!40000 ALTER TABLE `mtb_sex` DISABLE KEYS */;
INSERT INTO `mtb_sex` VALUES (1,'Nam',0,'sex'),(2,'Nữ',1,'sex');
/*!40000 ALTER TABLE `mtb_sex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtb_tax_display_type`
--

DROP TABLE IF EXISTS `mtb_tax_display_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtb_tax_display_type` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtb_tax_display_type`
--

LOCK TABLES `mtb_tax_display_type` WRITE;
/*!40000 ALTER TABLE `mtb_tax_display_type` DISABLE KEYS */;
INSERT INTO `mtb_tax_display_type` VALUES (1,'Chưa bao gồm thuế.',0,'taxdisplaytype'),(2,'Đã bao gồm thuế.',1,'taxdisplaytype');
/*!40000 ALTER TABLE `mtb_tax_display_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtb_tax_type`
--

DROP TABLE IF EXISTS `mtb_tax_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtb_tax_type` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtb_tax_type`
--

LOCK TABLES `mtb_tax_type` WRITE;
/*!40000 ALTER TABLE `mtb_tax_type` DISABLE KEYS */;
INSERT INTO `mtb_tax_type` VALUES (1,'Chịu thuế',0,'taxtype'),(2,'Không chịu thuế',1,'taxtype'),(3,'Miễn thuế',2,'taxtype');
/*!40000 ALTER TABLE `mtb_tax_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtb_work`
--

DROP TABLE IF EXISTS `mtb_work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtb_work` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtb_work`
--

LOCK TABLES `mtb_work` WRITE;
/*!40000 ALTER TABLE `mtb_work` DISABLE KEYS */;
INSERT INTO `mtb_work` VALUES (0,'Không hoạt động',0,'work'),(1,'Họat động',1,'work');
/*!40000 ALTER TABLE `mtb_work` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ec_cube'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-03 17:41:32
