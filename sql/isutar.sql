-- MySQL dump 10.13  Distrib 5.7.15, for Linux (x86_64)
--
-- Host: localhost    Database: isutar
-- ------------------------------------------------------
-- Server version	5.7.15-0ubuntu0.16.04.1

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
-- Table structure for table `star`
--

DROP TABLE IF EXISTS `star`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `star` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `star`
--

LOCK TABLES `star` WRITE;
/*!40000 ALTER TABLE `star` DISABLE KEYS */;
INSERT INTO `star` VALUES (1,'技術職員','karupa','2016-09-17 12:43:05'),(2,'吉富町','karupa','2016-09-17 12:43:06'),(3,'塩畑弘之','karupa','2016-09-17 12:43:06'),(4,'チュウゴクグリ','karupa','2016-09-17 12:43:06'),(5,'蔵王町','karupa','2016-09-17 12:43:07'),(6,'女島灯台','karupa','2016-09-17 12:43:07'),(7,'アリストブロス1世','karupa','2016-09-17 12:43:07'),(8,'代官町駅','karupa','2016-09-17 12:43:07'),(9,'河端龍','karupa','2016-09-17 12:43:07'),(10,'熱塩循環','karupa','2016-09-17 12:43:07'),(11,'平尾山','anazawa','2016-09-17 12:43:16'),(12,'大日如来','anazawa','2016-09-17 12:43:17'),(13,'北海道第2区','hideakio','2016-09-17 12:43:18'),(14,'技術職員','anazawa','2016-09-17 12:43:21'),(15,'平尾山','hideakio','2016-09-17 12:43:21'),(16,'イギリス政府','yuyaw','2016-09-17 12:43:25'),(17,'輪状甲状筋','yuyaw','2016-09-17 12:43:27'),(18,'イギリス政府','monmon','2016-09-17 12:43:29'),(19,'北消防署','yuyaw','2016-09-17 12:43:29'),(20,'巨大基数','yuyaw','2016-09-17 12:43:34'),(21,'南蟹谷村','kazukima','2016-09-17 12:43:34'),(22,'トイズ','kazukima','2016-09-17 12:43:38'),(23,'南蟹谷村','gologo','2016-09-17 12:43:39'),(24,'トイズ','gologo','2016-09-17 12:43:42'),(25,'菅山かおる','gologo','2016-09-17 12:43:42'),(26,'中央ライナー・青梅ライナー','papix','2016-09-17 12:43:44'),(27,'岡山西警察署','gologo','2016-09-17 12:43:44'),(28,'南蟹谷村','papix','2016-09-17 12:43:44'),(29,'イギリス政府','gologo','2016-09-17 12:43:45'),(30,'トイズ','papix','2016-09-17 12:43:45'),(31,'菅山かおる','papix','2016-09-17 12:43:47'),(32,'輪状甲状筋','gologo','2016-09-17 12:43:47'),(33,'岡山西警察署','papix','2016-09-17 12:43:48'),(34,'北消防署','gologo','2016-09-17 12:43:49'),(35,'イギリス政府','papix','2016-09-17 12:43:49'),(36,'巨大基数','gologo','2016-09-17 12:43:52'),(37,'輪状甲状筋','papix','2016-09-17 12:43:52'),(38,'京橋駅','kobayashi','2016-09-17 12:43:58'),(39,'京橋駅','yayohei','2016-09-17 12:43:58'),(40,'八田小学校','kobayashi','2016-09-17 12:44:00'),(41,'八田小学校','yayohei','2016-09-17 12:44:00'),(42,'CCE','kobayashi','2016-09-17 12:44:01'),(43,'CCE','yayohei','2016-09-17 12:44:02'),(44,'船戸山','kobayashi','2016-09-17 12:44:02'),(45,'船戸山','yayohei','2016-09-17 12:44:03'),(46,'海潮温泉','kobayashi','2016-09-17 12:44:03'),(47,'海潮温泉','yayohei','2016-09-17 12:44:04'),(48,'中央ライナー・青梅ライナー','yayohei','2016-09-17 12:44:06'),(49,'中央ライナー・青梅ライナー','kobayashi','2016-09-17 12:44:06'),(50,'南蟹谷村','yayohei','2016-09-17 12:44:07'),(51,'南蟹谷村','kobayashi','2016-09-17 12:44:07'),(52,'トイズ','yayohei','2016-09-17 12:44:08'),(53,'トイズ','kobayashi','2016-09-17 12:44:08'),(54,'菅山かおる','kobayashi','2016-09-17 12:44:10'),(55,'菅山かおる','yayohei','2016-09-17 12:44:10'),(56,'岡山西警察署','kobayashi','2016-09-17 12:44:10'),(57,'岡山西警察署','yayohei','2016-09-17 12:44:10');
/*!40000 ALTER TABLE `star` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-17 12:47:19
