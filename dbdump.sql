-- MySQL dump 10.13  Distrib 5.1.58, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: ec2
-- ------------------------------------------------------
-- Server version	5.1.58-1ubuntu1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `costs`
--

DROP TABLE IF EXISTS `costs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `costs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instance_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` decimal(10,0) DEFAULT NULL,
  `billing_owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costs`
--

LOCK TABLES `costs` WRITE;
/*!40000 ALTER TABLE `costs` DISABLE KEYS */;
INSERT INTO `costs` VALUES (1,'i-7b0b0c18','46800','','',NULL,NULL),(2,'i-df01bcba','32160','ops','',NULL,NULL),(3,'i-ecb78288','19920','ops','',NULL,NULL),(4,'i-2c444848','4080','platform','',NULL,NULL),(5,'i-10d0f377','960','','',NULL,NULL),(6,'i-67059701','7920','','',NULL,NULL),(7,'i-93dfadf5','6960','','',NULL,NULL),(8,'i-5797ed31','6720','','',NULL,NULL),(9,'i-8d4200eb','6480','','',NULL,NULL),(10,'i-01015467','6240','','',NULL,NULL),(11,'i-59336f3f','6000','','',NULL,NULL),(12,'i-e5336f83','6000','','',NULL,NULL),(13,'i-ed336f8b','6000','','',NULL,NULL),(14,'i-409a4b39','2640','','',NULL,NULL),(15,'i-9a06d5e3','2640','','',NULL,NULL);
/*!40000 ALTER TABLE `costs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `runs`
--

DROP TABLE IF EXISTS `runs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `runs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instance_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `stop_time` datetime DEFAULT NULL,
  `ec2_region` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `server_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flavor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `runs`
--

LOCK TABLES `runs` WRITE;
/*!40000 ALTER TABLE `runs` DISABLE KEYS */;
INSERT INTO `runs` VALUES (16,'i-7b0b0c18','2011-12-05 18:14:42','0000-00-00 00:00:00','us-east-1a','stopped','t1.micro','{\"inscitiv:task-message\"=>\"Bootstrapped core packages\", \"inscitiv:task-name\"=>\"corePackages\", \"inscitiv:organization\"=>\"inscitiv_dev\", \"inscitiv:status\"=>\"running\", \"inscitiv:task-error-code\"=>\"\", \"inscitiv:owner\"=>\"kgilpin\", \"Name\"=>\"Workspace DB Server\"}',NULL,NULL),(17,'i-df01bcba','2012-02-03 22:21:59','0000-00-00 00:00:00','us-east-1a','running','t1.micro','{\"billing-owner\"=>\"ops\", \"Name\"=>\"[dev] LDAP Server\"}',NULL,NULL),(18,'i-ecb78288','2012-03-26 15:44:02','0000-00-00 00:00:00','us-east-1a','running','m1.medium','{\"billing-owner\"=>\"ops\", \"Name\"=>\"Jenkins\"}',NULL,NULL),(19,'i-2c444848','2012-05-30 22:23:30','0000-00-00 00:00:00','us-east-1a','stopped','m1.medium','{\"Name\"=>\"Krishna Workspace Sandbox\", \"billing-owner\"=>\"platform\"}',NULL,NULL),(20,'i-10d0f377','2012-06-13 18:37:58','0000-00-00 00:00:00','us-east-1a','stopped','m1.medium','{\"Name\"=>\"Baran Workspace Sandbox\"}',NULL,NULL),(21,'i-67059701','2012-05-15 16:21:57','0000-00-00 00:00:00','us-east-1a','stopped','t1.micro','{\"Name\"=>\"RStudio Test\"}',NULL,NULL),(22,'i-93dfadf5','2012-05-19 00:02:22','0000-00-00 00:00:00','us-east-1b','stopped','t1.micro','{}',NULL,NULL),(23,'i-5797ed31','2012-05-20 00:02:28','0000-00-00 00:00:00','us-east-1b','stopped','t1.micro','{}',NULL,NULL),(24,'i-8d4200eb','2012-05-21 00:02:32','0000-00-00 00:00:00','us-east-1b','stopped','t1.micro','{}',NULL,NULL),(25,'i-01015467','2012-05-22 00:02:32','0000-00-00 00:00:00','us-east-1b','running','t1.micro','{}',NULL,NULL),(26,'i-59336f3f','2012-05-23 00:02:46','0000-00-00 00:00:00','us-east-1b','running','t1.micro','{}',NULL,NULL),(27,'i-e5336f83','2012-05-23 00:02:54','0000-00-00 00:00:00','us-east-1a','running','t1.micro','{}',NULL,NULL),(28,'i-ed336f8b','2012-05-23 00:02:57','0000-00-00 00:00:00','us-east-1a','running','t1.micro','{}',NULL,NULL),(29,'i-409a4b39','2012-06-06 13:03:20','0000-00-00 00:00:00','us-east-1a','running','m1.small','{\"Name\"=>\"PRD Wordpress\"}',NULL,NULL),(30,'i-9a06d5e3','2012-06-06 18:57:08','0000-00-00 00:00:00','us-east-1a','running','m1.small','{}',NULL,NULL);
/*!40000 ALTER TABLE `runs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20120617124940'),('20120617195010'),('20120617195145');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisations`
--

DROP TABLE IF EXISTS `utilisations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilisations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instance_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `network_in` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `network_out` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpu_utilisation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disk_read_bytes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disk_write_bytes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisations`
--

LOCK TABLES `utilisations` WRITE;
/*!40000 ALTER TABLE `utilisations` DISABLE KEYS */;
/*!40000 ALTER TABLE `utilisations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-06-20  1:35:01
