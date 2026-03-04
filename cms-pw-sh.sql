/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.2.2-MariaDB, for osx10.21 (arm64)
--
-- Host: localhost    Database: cms-pw-sh
-- ------------------------------------------------------
-- Server version	12.2.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `caches`
--

DROP TABLE IF EXISTS `caches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caches` (
  `name` varchar(128) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_a_av_date`
--

DROP TABLE IF EXISTS `field_a_av_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_av_date` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text DEFAULT NULL,
  `data5754` text DEFAULT NULL,
  `data5755` text DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_av_date`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_av_date` WRITE;
/*!40000 ALTER TABLE `field_a_av_date` DISABLE KEYS */;
INSERT INTO `field_a_av_date` VALUES
(5868,'1875 - 1948','','',''),
(5869,'1939-2022','','',''),
(5875,'','','',''),
(5871,'','1927-1995','',''),
(5872,'End of 19th Century','Конец 1800 - начало 1900','Fin de 19ème siècle','1900-talet'),
(5873,'20th century','1900е годы','20ème siècle','1900-talet'),
(5874,'1609 – 1656','','',''),
(5877,'1816 - 1898','','',''),
(5878,'1886 - 1958','','',''),
(5879,'1813 - 1887','1813 - 1887','',''),
(5880,'1763‑1814','','',''),
(5882,'','','',''),
(5883,'','1629 – 1670','',''),
(5885,'1610 – 1690','','',''),
(5887,'1846‑1920','','',''),
(5892,'1929 - 1993','','',''),
(5889,'','','',''),
(5891,'','','',''),
(5930,'','','',''),
(5866,'1591 - 1632','','',''),
(5863,'1385 (1390?) - 1441','','',''),
(6356,'1571 - 1610','','','');
/*!40000 ALTER TABLE `field_a_av_date` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_av_duty`
--

DROP TABLE IF EXISTS `field_a_av_duty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_av_duty` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_av_duty`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_av_duty` WRITE;
/*!40000 ALTER TABLE `field_a_av_duty` DISABLE KEYS */;
INSERT INTO `field_a_av_duty` VALUES
(5879,1,0),
(5879,6,1),
(5882,3,0),
(5869,1,0),
(5871,1,0),
(5872,1,0),
(5873,1,0),
(5874,1,0),
(5875,1,0),
(5877,1,0),
(5878,1,0),
(5880,1,0),
(5883,1,0),
(5885,1,0),
(5887,1,0),
(5889,1,0),
(5892,1,0),
(5891,1,0),
(5930,4,0),
(5859,1,0),
(5863,1,0),
(5866,1,0),
(5867,1,0),
(5868,1,0),
(6356,1,0);
/*!40000 ALTER TABLE `field_a_av_duty` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_av_firstname`
--

DROP TABLE IF EXISTS `field_a_av_firstname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_av_firstname` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text DEFAULT NULL,
  `data5754` text DEFAULT NULL,
  `data5755` text DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_av_firstname`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_av_firstname` WRITE;
/*!40000 ALTER TABLE `field_a_av_firstname` DISABLE KEYS */;
INSERT INTO `field_a_av_firstname` VALUES
(5859,'Rembrandt','Рембрандт','Rembrandt','Rembrandt'),
(5863,'Jan','Ян','Jan','Jan'),
(5866,'Valentin','Валантен','Valentin','Valentin'),
(5867,'Unknown','Неизвестный','Artiste Inconnu','Okänd'),
(5868,'Raffaele','Раффаэль','Raffaele','Raffaele'),
(5869,'Viacheslav','Вячеслав','Viacheslav','Viacheslav'),
(5875,'Abraham','Абрахам','Abraham','Abraham'),
(5871,'Christer','Кристер','Christer','Christer'),
(5872,'A.','A.','A.','A.'),
(5873,'L.','L.','L.','L.'),
(5874,'Salomon','Саломон','Salomon','Salomon'),
(5877,'Peter Joseph','Петер Иосиф','Peter Joseph','Peter Joseph'),
(5878,'Robert','Роберт Рафаилович','Robert','Robert'),
(5879,'Basil','Василий Васильевич','Vasily','Vasily'),
(5880,'Andries','Андрис','Andries','Andries'),
(5882,'Haik','Хайк','Haik','Haik'),
(5883,'Abraham','Абрахам','Abraham','Abraham'),
(5885,'David','Давид','David','David'),
(5887,'Vladimir','Владимир Егорович','Vladimir','Vladimir'),
(5892,'Marcel','','',''),
(5930,'Flemish','Фламандская','Primitifs Flamands','Flamländsk'),
(5889,'Unknown Dutch','Неизвестный Голландский','Artiste inconnu Hollande','Okänd holländsk'),
(5891,'Unknown Flemish','Неизвестный Фламандский','',''),
(6356,'Michelangelo','','','');
/*!40000 ALTER TABLE `field_a_av_firstname` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_av_lastname`
--

DROP TABLE IF EXISTS `field_a_av_lastname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_av_lastname` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text DEFAULT NULL,
  `data5754` text DEFAULT NULL,
  `data5755` text DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_av_lastname`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_av_lastname` WRITE;
/*!40000 ALTER TABLE `field_a_av_lastname` DISABLE KEYS */;
INSERT INTO `field_a_av_lastname` VALUES
(5859,'van Rijn','ван Рейн','van Rijn','van Rijn'),
(5863,'van Eyck','ван Эйк','van Eyck','van Eyck'),
(5866,'de Boulogne','де Булонь','de Boulogne','de Boulogne'),
(5867,'Artist','Xудожник','','Konstnärer'),
(5868,'Frigerio','Фриджерио','Frigerio','Frigerio'),
(5869,'Kalinin','Калинин','Kalinin','Kalinin'),
(5875,'Storck','Сторк','Storck','Storck'),
(5871,'Edwardson (Schmiterlöw)','Эдвардсон (Шмитерлев)','Edwardson (Schmiterlöw)','Edwardson (Schmiterlöw)'),
(5872,'Collomb','Колломб','Collomb','Collomb'),
(5873,'Vilardi','Виларди','Vilardi','Vilardi'),
(5874,'Koninck','Конинк','Koninck','Koninck'),
(5877,'Minjon','Миньон','Minjon','Minjon'),
(5878,'Falk','Фальк','Falk','Falk'),
(5879,'Samoylov','Самойлов','Samoylov','Samoylov'),
(5880,'Vermeulen','Вермейлен','Vermeulen','Vermeulen'),
(5882,'Mhitaryan','Мхитарян','Mhitaryan','Mhitaryan'),
(5883,'Teniers','Тенирс','Teniers','Teniers'),
(5885,'Teniers II the Younger','Тенирс II мл.','Teniers II le Jeune','Teniers II den yngre'),
(5887,'','Маковский','',''),
(5892,'Genay','','',''),
(5930,'Painting School','Школа живописи','','Skola'),
(5889,'Artist','Художник','','Konstnär'),
(5891,'Artist','Художник','',''),
(6356,'Merisi','','','');
/*!40000 ALTER TABLE `field_a_av_lastname` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_av_school`
--

DROP TABLE IF EXISTS `field_a_av_school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_av_school` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_av_school`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_av_school` WRITE;
/*!40000 ALTER TABLE `field_a_av_school` DISABLE KEYS */;
INSERT INTO `field_a_av_school` VALUES
(5859,5862,0),
(5874,5862,0),
(5875,5862,0),
(5880,5862,0),
(5889,5862,0),
(5863,5865,0),
(5883,5865,0),
(5885,5865,0),
(5891,5865,0),
(5930,5865,0),
(5866,6357,0),
(6356,6357,0);
/*!40000 ALTER TABLE `field_a_av_school` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_av_url`
--

DROP TABLE IF EXISTS `field_a_av_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_av_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_av_url`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_av_url` WRITE;
/*!40000 ALTER TABLE `field_a_av_url` DISABLE KEYS */;
INSERT INTO `field_a_av_url` VALUES
(5859,'https://nl.wikipedia.org/wiki/Rembrandt_van_Rijn'),
(5869,'http://lebed.com/2006/art4785.htm'),
(5879,'http://www.biografija.ru/biography/samojlov-vasilij-vasilevich.htm'),
(5882,'https://my.mail.ru/mail/albertohaik/'),
(5863,'https://en.wikipedia.org/wiki/Jan_van_Eyck'),
(5874,'https://www.nashteatr.com/2024/07/16/415-let-so-dnja-rozhdenija-gollandskogo-hudozhnika-salomona-koninka/'),
(5871,'https://www.svtplay.se/video/eQJz55j/tva-broder-tva-varldar?video=visa'),
(6356,'https://www.storicang.it/a/caravaggio-artista-tra-il-pennello-e-spada_14933'),
(5885,'https://en.wikipedia.org/wiki/David_Teniers_the_Younger');
/*!40000 ALTER TABLE `field_a_av_url` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_aw_base`
--

DROP TABLE IF EXISTS `field_a_aw_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_aw_base` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_base`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_aw_base` WRITE;
/*!40000 ALTER TABLE `field_a_aw_base` DISABLE KEYS */;
INSERT INTO `field_a_aw_base` VALUES
(5907,1,0),
(5908,1,0),
(5909,1,0),
(5910,1,0),
(5911,1,0),
(5912,1,0),
(5913,1,0),
(5914,3,0),
(5915,3,0),
(5916,4,0),
(5917,1,0),
(5918,1,0),
(5919,3,0),
(5920,1,0),
(5921,4,0),
(5925,3,0),
(5926,3,0),
(5927,1,0),
(5928,1,0),
(5929,3,0),
(5931,4,0),
(5932,4,0),
(5933,1,0),
(5934,1,0),
(5935,1,0),
(5936,3,0),
(5937,3,0),
(5938,3,0),
(5939,4,0),
(5940,3,0);
/*!40000 ALTER TABLE `field_a_aw_base` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_aw_collection`
--

DROP TABLE IF EXISTS `field_a_aw_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_aw_collection` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_collection`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_aw_collection` WRITE;
/*!40000 ALTER TABLE `field_a_aw_collection` DISABLE KEYS */;
INSERT INTO `field_a_aw_collection` VALUES
(5907,5900,0),
(5908,5901,0),
(5915,5901,0),
(5940,5901,0),
(5909,5902,0),
(5910,5902,0),
(5911,5902,0),
(5912,5902,0),
(5913,5902,0),
(5914,5902,0),
(5916,5902,0),
(5917,5902,0),
(5918,5902,0),
(5920,5902,0),
(5921,5902,0),
(5923,5902,0),
(5925,5902,0),
(5931,5902,0),
(5932,5902,0),
(5935,5902,0),
(5937,5902,0),
(5939,5902,0),
(6353,5902,0),
(5922,5904,0),
(6338,5904,0),
(5919,5905,0),
(5926,5905,0),
(5927,5905,0),
(5928,5905,0),
(5929,5905,0),
(5933,5905,0),
(5936,5905,0);
/*!40000 ALTER TABLE `field_a_aw_collection` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_aw_condition`
--

DROP TABLE IF EXISTS `field_a_aw_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_aw_condition` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text DEFAULT NULL,
  `data5754` text DEFAULT NULL,
  `data5755` text DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_condition`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_aw_condition` WRITE;
/*!40000 ALTER TABLE `field_a_aw_condition` DISABLE KEYS */;
INSERT INTO `field_a_aw_condition` VALUES
(5910,'Craquelure, Laying, Minor damage','Кракелюры, Натяжка холста, Небольшие повреждения','Craquelure, Couché, Petits dégâts','Krackelyr, Lagning, Mindre skador'),
(5911,'','','',''),
(5912,'','','',''),
(5913,'','','',''),
(5914,'','','',''),
(5915,'','','',''),
(5916,'','','',''),
(5917,'','','',''),
(5918,'','','',''),
(5919,'','','',''),
(5920,'','','',''),
(5921,'','','',''),
(5922,'','','',''),
(5923,'','','',''),
(6338,'','','',''),
(5925,'Förstärkt pannå, retuscher, sprickor, krackelerad.','','',''),
(5926,'Retuscher','','',''),
(5927,'','','',''),
(5928,'','','',''),
(5929,'Wear due to age','Возрастной износ','Usure liée à l\'âge','Åldersrelaterat slitage'),
(5931,'','','',''),
(5932,'','','',''),
(5933,'','','',''),
(5934,'shit....','Краска поплыла в нескольких местах...','',''),
(5935,'','','',''),
(5936,'','','',''),
(5937,'','','',''),
(5938,'','','',''),
(5939,'','','',''),
(5940,'','','',''),
(6353,'','','','');
/*!40000 ALTER TABLE `field_a_aw_condition` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_aw_copy_artwork`
--

DROP TABLE IF EXISTS `field_a_aw_copy_artwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_aw_copy_artwork` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_copy_artwork`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_aw_copy_artwork` WRITE;
/*!40000 ALTER TABLE `field_a_aw_copy_artwork` DISABLE KEYS */;
INSERT INTO `field_a_aw_copy_artwork` VALUES
(5910,5907,0),
(5914,5915,0),
(5937,5938,0);
/*!40000 ALTER TABLE `field_a_aw_copy_artwork` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_aw_featured`
--

DROP TABLE IF EXISTS `field_a_aw_featured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_aw_featured` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_featured`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_aw_featured` WRITE;
/*!40000 ALTER TABLE `field_a_aw_featured` DISABLE KEYS */;
INSERT INTO `field_a_aw_featured` VALUES
(5932,1),
(5913,1),
(5923,1);
/*!40000 ALTER TABLE `field_a_aw_featured` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_aw_link`
--

DROP TABLE IF EXISTS `field_a_aw_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_aw_link` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_link`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_aw_link` WRITE;
/*!40000 ALTER TABLE `field_a_aw_link` DISABLE KEYS */;
INSERT INTO `field_a_aw_link` VALUES
(5915,4,0),
(5926,4,0),
(5927,3,0),
(5928,3,0),
(5931,5,0),
(5933,4,0),
(5936,4,0),
(5937,4,0),
(5940,4,0),
(5923,6,0);
/*!40000 ALTER TABLE `field_a_aw_link` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_aw_more`
--

DROP TABLE IF EXISTS `field_a_aw_more`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_aw_more` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text DEFAULT NULL,
  `data5754` text DEFAULT NULL,
  `data5755` text DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_more`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_aw_more` WRITE;
/*!40000 ALTER TABLE `field_a_aw_more` DISABLE KEYS */;
INSERT INTO `field_a_aw_more` VALUES
(5909,'','Копия довольно известной работы итальянца Raffaele Frigerio','',''),
(5910,'','','',''),
(5911,'','','',''),
(5912,'','','',''),
(5913,'Haik Mhitaryan','Хаик Мхитарян','Haik Mhitaryan','Haik Mhitaryan'),
(5914,'','','',''),
(5915,'','','',''),
(5916,'','','',''),
(5917,'','','',''),
(5918,'','','',''),
(5919,'The pair was sold for 2,200 SEK','Пара ушла за 2,200 SEK','Vendu pour 2,200 SEK',''),
(5920,'','','',''),
(5921,'','','',''),
(5922,'','','',''),
(5923,'','','',''),
(6338,'','','',''),
(5925,'','','',''),
(5926,'','','',''),
(5927,'Sold for 6,200 SEK (the pair Winter/Summer)','Пара \"Город зимой\"/\"Город летом\" ушла за 6,200 SEK','Sold for 6,200 SEK (the pair Winter/Summer)','Sold for 6,200 SEK (the pair Winter/Summer)'),
(5928,'Sold for 6,200 SEK (the pair Winter/Summer)','Пара \"Город зимой\"/\"Город летом\" ушла за 6,200 SEK','Sold for 6,200 SEK (the pair Winter/Summer)','Sold for 6,200 SEK (the pair Winter/Summer)'),
(5929,'Sold for 1700EUR','Ушло за 1700 евро','Sold for 1700EUR','Sold for 1700EUR'),
(5931,'','','',''),
(5932,'','','',''),
(5933,'','','',''),
(5934,'','','',''),
(5935,'','','',''),
(5936,'Sold for 58 KSEK, estimate 20 KSEK','','',''),
(5937,'','','',''),
(5938,'','','',''),
(5939,'','','',''),
(5940,'','','',''),
(6353,'','','','');
/*!40000 ALTER TABLE `field_a_aw_more` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_aw_person`
--

DROP TABLE IF EXISTS `field_a_aw_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_aw_person` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_person`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_aw_person` WRITE;
/*!40000 ALTER TABLE `field_a_aw_person` DISABLE KEYS */;
INSERT INTO `field_a_aw_person` VALUES
(5922,5859,0),
(5907,5866,0),
(5910,5867,0),
(5912,5867,0),
(5923,5867,0),
(5934,5867,0),
(5935,5867,0),
(6353,5867,0),
(5908,5868,0),
(5913,5869,0),
(5916,5869,0),
(5921,5869,0),
(5917,5871,0),
(5918,5871,0),
(5920,5871,0),
(5911,5872,0),
(5909,5873,0),
(6338,5874,0),
(5926,5875,0),
(5927,5877,0),
(5928,5877,0),
(5931,5878,0),
(5932,5879,0),
(5939,5879,0),
(5933,5880,0),
(5936,5883,0),
(5915,5885,0),
(5937,5885,0),
(5938,5885,0),
(5940,5885,0),
(6337,5885,0),
(5919,5889,0),
(5925,5889,0),
(5914,5891,0),
(5929,5930,0);
/*!40000 ALTER TABLE `field_a_aw_person` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_aw_possession`
--

DROP TABLE IF EXISTS `field_a_aw_possession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_aw_possession` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_possession`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_aw_possession` WRITE;
/*!40000 ALTER TABLE `field_a_aw_possession` DISABLE KEYS */;
INSERT INTO `field_a_aw_possession` VALUES
(5909,5942,0),
(5910,5943,0),
(5911,5944,0),
(5912,5945,0),
(5935,5945,0),
(5913,5946,0),
(5914,5947,0),
(5916,5948,0),
(5917,5949,0),
(5918,5950,0),
(5920,5951,0),
(5921,5952,0),
(5925,5954,0),
(5932,5955,0),
(5939,5955,0),
(5937,5956,0),
(5923,6351,0),
(6353,6352,0);
/*!40000 ALTER TABLE `field_a_aw_possession` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_aw_provenance`
--

DROP TABLE IF EXISTS `field_a_aw_provenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_aw_provenance` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text DEFAULT NULL,
  `data5754` text DEFAULT NULL,
  `data5755` text DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_provenance`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_aw_provenance` WRITE;
/*!40000 ALTER TABLE `field_a_aw_provenance` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_a_aw_provenance` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_aw_signature`
--

DROP TABLE IF EXISTS `field_a_aw_signature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_aw_signature` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text DEFAULT NULL,
  `data5754` text DEFAULT NULL,
  `data5755` text DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_signature`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_aw_signature` WRITE;
/*!40000 ALTER TABLE `field_a_aw_signature` DISABLE KEYS */;
INSERT INTO `field_a_aw_signature` VALUES
(5909,'L. Vilardi','L. Vilardi','L. Vilardi','L. Vilardi'),
(5910,'','','',''),
(5911,'A.Collomb,1901','A.Collomb,1901','A.Collomb,1901','A.Collomb,1901'),
(5912,'C.Moppiy (C.Moppix ?)','C.Moppiy (C.Moppix ?)','C.Moppiy (C.Moppix ?)','C.Moppiy (C.Moppix ?)'),
(5913,'В.Калинин','В.Калинин','В.Калинин','В.Калинин'),
(5914,'','','',''),
(5915,'','','',''),
(5916,'','','',''),
(5917,'','','',''),
(5918,'','','',''),
(5919,'','','',''),
(5920,'Edwardson-82','Edwardson-82','Edwardson-82','Edwardson-82'),
(5921,'','','',''),
(5922,'','','',''),
(5923,'','','',''),
(6338,'','','',''),
(5925,'not signed','без подписи','non signé','osignerad'),
(5926,'','','',''),
(5927,'','','',''),
(5928,'','','',''),
(5929,'','','',''),
(5931,'Falk,1914','Falk,1914','Falk,1914','Falk,1914'),
(5932,'В.Самойлов','','',''),
(5933,'Avercamp','','',''),
(5934,'','','',''),
(5935,'C.Moppiy (C.Moppix ?)','','',''),
(5936,'','','',''),
(5937,'Bears signature','','',''),
(5938,'','','',''),
(5939,'В.Самойлов','','',''),
(5940,'','','',''),
(6353,'','','','');
/*!40000 ALTER TABLE `field_a_aw_signature` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_aw_size`
--

DROP TABLE IF EXISTS `field_a_aw_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_aw_size` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text DEFAULT NULL,
  `data5754` text DEFAULT NULL,
  `data5755` text DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_size`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_aw_size` WRITE;
/*!40000 ALTER TABLE `field_a_aw_size` DISABLE KEYS */;
INSERT INTO `field_a_aw_size` VALUES
(5907,'94,5 x 137','','',''),
(5908,'','','',''),
(5909,'','','',''),
(5910,'30x36','','',''),
(5911,'45x60','','',''),
(5912,'13x17','','',''),
(5913,'53 x 52,5','','',''),
(5914,'23x27','','',''),
(5915,'23.5х33','','',''),
(5916,'71.5x53','','',''),
(5917,'72x92','','',''),
(5918,'81x105','','',''),
(5919,'20 x 25','','',''),
(5920,'72x57','','',''),
(5921,'62x46,5','','',''),
(5922,'','','',''),
(5923,'','','',''),
(6338,'','','',''),
(5925,'53 x 70','','',''),
(5926,'46x62','','',''),
(5927,'','','',''),
(5928,'','','',''),
(5929,'34.5x33','','',''),
(5931,'16x22','','',''),
(5932,'18x12.5','','',''),
(5933,'61x79','','',''),
(5934,'','','',''),
(5935,'13x17','','',''),
(5936,'','','',''),
(5937,'38.5x48','','',''),
(5938,'46 x 66','','',''),
(5939,'','','',''),
(5940,'23.5х33','','',''),
(6353,'','','','');
/*!40000 ALTER TABLE `field_a_aw_size` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_aw_technique`
--

DROP TABLE IF EXISTS `field_a_aw_technique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_aw_technique` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_technique`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_aw_technique` WRITE;
/*!40000 ALTER TABLE `field_a_aw_technique` DISABLE KEYS */;
INSERT INTO `field_a_aw_technique` VALUES
(5907,2,0),
(5908,2,0),
(5909,2,0),
(5910,2,0),
(5911,2,0),
(5912,2,0),
(5913,2,0),
(5914,2,0),
(5915,2,0),
(5916,6,0),
(5917,2,0),
(5918,2,0),
(5919,2,0),
(5920,2,0),
(5921,6,0),
(5922,2,0),
(5923,2,0),
(5925,2,0),
(5926,2,0),
(5927,2,0),
(5928,2,0),
(5929,2,0),
(5931,1,0),
(5932,3,0),
(5933,2,0),
(5934,2,0),
(5935,2,0),
(5936,2,0),
(5937,2,0),
(5938,2,0),
(5939,3,0),
(5940,2,0);
/*!40000 ALTER TABLE `field_a_aw_technique` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_aw_url`
--

DROP TABLE IF EXISTS `field_a_aw_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_aw_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_url`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_aw_url` WRITE;
/*!40000 ALTER TABLE `field_a_aw_url` DISABLE KEYS */;
INSERT INTO `field_a_aw_url` VALUES
(5907,'https://skd-online-collection.skd.museum/Details/Index/415366'),
(5910,'https://www.bukowskis.com/sv/lots/1006514-okand-konstnar-1800-tal-olja-pa-duk'),
(5911,'https://www.metropol.se/auctions/detail.asp?og={95DC4588-F7C3-42E1-9EA0-7725687D7862}'),
(5913,'https://www.bukowskis.com/sv/lots/208919-viatcheslav-kalinin-olja-pa-duk-sign'),
(5914,'https://www.bukowskis.com/sv/lots/146905-okand-konstnar-olja-pa-panna-flamlandsk-skola-1700-tal'),
(5915,'https://www.christies.com/lotfinder/Lot/circle-of-david-teniers-ii-1610-1690-1845379-details.aspx'),
(5916,'https://www.bukowskis.com/sv/lots/193037-viatcheslav-kalinin-akvarell-sign-o-dat'),
(5919,'https://www.bukowskis.com/sv/lots/1027379-hollandsk-skola-1800-tal-ett-par-olja-pa-panna-osignerade'),
(5920,'https://www.metropol.se/auctions/detail.asp?OG={0485555F-7D85-4A8A-A21D-A3010E79AA1A}'),
(5925,'https://www.bukowskis.com/sv/lots/1038896-hollandsk-skola-1700-tal-olja-pa-panna-osignerad'),
(5926,'https://www.bukowskis.com/sv/lots/1029682-abraham-storck-hans-krets-olja-pa-panna'),
(5928,'https://www.bukowskis.com/sv/lots/831414-peter-joseph-minjon-tillskrivna-olja-pa-uppfodrad-duk-ett-par-bar-signatur-p-j-minjon-samt-datering-1864-resp-186'),
(5929,'https://www.bukowskis.com/sv/lots/1047244-okand-konstnar-flamlandsk-skola-kroginterior-1600-1700-tal'),
(5933,'https://www.uppsalaauktion.se/auktioner/?auction_name=20180612&catalog_nr=761;https://nl.wikipedia.org/wiki/De_Stomme_van_Kampen'),
(5935,'https://www.metropol.se/auctions/detail.asp?og={2973E330-F30A-41F4-9A14-BFB9FA05ADD0}'),
(5936,'https://www.uppsalaauktion.se/auktioner/?auction_name=20180612&catalog_nr=759'),
(5937,'https://weekend.di.se/nyheter/konstsamlaren-saljer-livsverk-1;'),
(6353,'http://www.metropol.se/auctions/detail.asp?OG={196144B0-41D7-4F5E-851C-76E4E3DD7928}'),
(5938,'https://commons.wikimedia.org/wiki/File:David_Teniers_the_Younger_-_Puffspieler_in_einem_Wirtshaus.jpg'),
(5940,'https://www.christies.com/lotfinder/Lot/circle-of-david-teniers-ii-1610-1690-1845379-details.aspx'),
(5923,'http://www.metropol.se/auctions/detail.asp?OG={47209B05-31A1-452F-B48F-5F45DABD2B72}'),
(5931,'http://www.metropol.se/auctions/detail.asp?OG={51C0790D-F2DA-4C5E-9244-03608ABAC916}'),
(5909,'http://www.metropol.se/auctions/detail.asp?OG={17006E49-067F-41E1-9226-9EBE6D087FDF}');
/*!40000 ALTER TABLE `field_a_aw_url` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_aw_year`
--

DROP TABLE IF EXISTS `field_a_aw_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_aw_year` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_year`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_aw_year` WRITE;
/*!40000 ALTER TABLE `field_a_aw_year` DISABLE KEYS */;
INSERT INTO `field_a_aw_year` VALUES
(5907,'1620'),
(5908,''),
(5909,'20th Century'),
(5910,'19th Century'),
(5911,'1901'),
(5912,''),
(5913,''),
(5914,'18th Century'),
(5915,''),
(5916,'1987'),
(5917,'1979'),
(5918,'1973'),
(5919,'19th Century'),
(5920,'1982'),
(5921,'1987'),
(5922,''),
(5923,'1640 - 1650'),
(5925,'18th Century'),
(5926,''),
(5927,''),
(5928,''),
(5929,'17th/18th Century'),
(5931,''),
(5932,'1870-1885'),
(5933,''),
(5934,''),
(5935,''),
(5936,''),
(5937,'19th Century'),
(5938,'1640'),
(5939,'1870-1885'),
(5940,'');
/*!40000 ALTER TABLE `field_a_aw_year` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_c_address`
--

DROP TABLE IF EXISTS `field_a_c_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_c_address` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text DEFAULT NULL,
  `data5754` text DEFAULT NULL,
  `data5755` text DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_c_address`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_c_address` WRITE;
/*!40000 ALTER TABLE `field_a_c_address` DISABLE KEYS */;
INSERT INTO `field_a_c_address` VALUES
(5900,'Dresden','Дрезден','Dresden','Dresden'),
(5901,'','','',''),
(5902,'','','',''),
(5903,'Europe','Европа','L\'Europe','Europa'),
(5904,'Paris','Париж','Paris','Paris'),
(5905,'','','','');
/*!40000 ALTER TABLE `field_a_c_address` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_c_duty`
--

DROP TABLE IF EXISTS `field_a_c_duty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_c_duty` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_c_duty`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_c_duty` WRITE;
/*!40000 ALTER TABLE `field_a_c_duty` DISABLE KEYS */;
INSERT INTO `field_a_c_duty` VALUES
(5900,2,0),
(5901,3,0),
(5902,3,0),
(5903,3,0),
(5904,2,0),
(5905,4,0);
/*!40000 ALTER TABLE `field_a_c_duty` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_c_person`
--

DROP TABLE IF EXISTS `field_a_c_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_c_person` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_c_person`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_c_person` WRITE;
/*!40000 ALTER TABLE `field_a_c_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_a_c_person` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_c_url`
--

DROP TABLE IF EXISTS `field_a_c_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_c_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_c_url`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_c_url` WRITE;
/*!40000 ALTER TABLE `field_a_c_url` DISABLE KEYS */;
INSERT INTO `field_a_c_url` VALUES
(5900,'https://skd-online-collection.skd.museum/'),
(5904,'https://www.louvre.fr/');
/*!40000 ALTER TABLE `field_a_c_url` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_p_artwork`
--

DROP TABLE IF EXISTS `field_a_p_artwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_p_artwork` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_p_artwork`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_p_artwork` WRITE;
/*!40000 ALTER TABLE `field_a_p_artwork` DISABLE KEYS */;
INSERT INTO `field_a_p_artwork` VALUES
(5942,5909,0),
(5943,5910,0),
(5944,5911,0),
(5945,5912,0),
(5946,5913,0),
(5947,5914,0),
(5948,5916,0),
(5949,5917,0),
(5950,5918,0),
(5951,5920,0),
(5952,5921,0),
(5953,5923,0),
(6351,5923,0),
(5954,5925,0),
(5955,5932,0),
(5945,5935,1),
(5956,5937,0),
(5955,5939,1),
(6352,6353,0);
/*!40000 ALTER TABLE `field_a_p_artwork` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_p_currency`
--

DROP TABLE IF EXISTS `field_a_p_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_p_currency` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_p_currency`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_p_currency` WRITE;
/*!40000 ALTER TABLE `field_a_p_currency` DISABLE KEYS */;
INSERT INTO `field_a_p_currency` VALUES
(5942,1,0),
(5943,1,0),
(5944,1,0),
(5945,1,0),
(5946,1,0),
(5947,1,0),
(5948,1,0),
(5949,1,0),
(5950,1,0),
(5951,1,0),
(5952,1,0),
(5953,1,0),
(5954,1,0),
(5955,1,0),
(5956,1,0);
/*!40000 ALTER TABLE `field_a_p_currency` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_p_date`
--

DROP TABLE IF EXISTS `field_a_p_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_p_date` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_p_date`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_p_date` WRITE;
/*!40000 ALTER TABLE `field_a_p_date` DISABLE KEYS */;
INSERT INTO `field_a_p_date` VALUES
(5942,'2017-01-16 00:00:00'),
(5943,'2018-02-13 00:00:00'),
(5944,'2017-11-11 00:00:00'),
(5945,'2016-08-29 00:00:00'),
(5946,'2010-12-26 00:00:00'),
(5947,'2010-04-11 00:00:00'),
(5948,'2010-12-11 00:00:00'),
(5949,'2001-01-26 00:00:00'),
(5950,'2001-01-26 00:00:00'),
(5951,'2017-07-31 00:00:00'),
(5952,'2010-12-11 00:00:00'),
(5953,'2018-02-19 00:00:00'),
(5954,'2018-04-24 00:00:00'),
(5955,'2010-03-12 00:00:00'),
(5956,'2018-06-17 00:00:00'),
(6352,'2009-06-15 00:00:00');
/*!40000 ALTER TABLE `field_a_p_date` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_p_object_number`
--

DROP TABLE IF EXISTS `field_a_p_object_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_p_object_number` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_p_object_number`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_p_object_number` WRITE;
/*!40000 ALTER TABLE `field_a_p_object_number` DISABLE KEYS */;
INSERT INTO `field_a_p_object_number` VALUES
(5944,1146),
(5945,1052),
(5946,208919),
(5948,193037),
(5949,7683),
(5950,7683),
(5951,1120),
(5952,193022),
(5953,1164),
(5954,1038896),
(5955,131043),
(5956,1009015);
/*!40000 ALTER TABLE `field_a_p_object_number` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_p_payed`
--

DROP TABLE IF EXISTS `field_a_p_payed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_p_payed` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_p_payed`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_p_payed` WRITE;
/*!40000 ALTER TABLE `field_a_p_payed` DISABLE KEYS */;
INSERT INTO `field_a_p_payed` VALUES
(5956,5769),
(5954,3725),
(5943,2772),
(6351,1536),
(5949,600),
(5951,614),
(5952,6000),
(5953,1536),
(5945,914),
(5950,850),
(6352,180),
(5955,900),
(5942,243),
(5947,4000),
(5948,6000),
(5946,18000),
(5944,675);
/*!40000 ALTER TABLE `field_a_p_payed` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_p_person`
--

DROP TABLE IF EXISTS `field_a_p_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_p_person` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_p_person`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_p_person` WRITE;
/*!40000 ALTER TABLE `field_a_p_person` DISABLE KEYS */;
INSERT INTO `field_a_p_person` VALUES
(5946,5882,0),
(5948,5882,0),
(5952,5882,0);
/*!40000 ALTER TABLE `field_a_p_person` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_p_price_final`
--

DROP TABLE IF EXISTS `field_a_p_price_final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_p_price_final` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_p_price_final`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_p_price_final` WRITE;
/*!40000 ALTER TABLE `field_a_p_price_final` DISABLE KEYS */;
INSERT INTO `field_a_p_price_final` VALUES
(5942,150),
(5943,2222),
(5944,500),
(5945,700),
(5946,15000),
(5947,3650),
(5948,5000),
(5949,468),
(5950,732),
(5951,450),
(5952,5000),
(5953,1200),
(5954,3000),
(5955,750),
(5956,4855),
(6351,1200),
(6352,100);
/*!40000 ALTER TABLE `field_a_p_price_final` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_p_price_start`
--

DROP TABLE IF EXISTS `field_a_p_price_start`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_p_price_start` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_p_price_start`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_p_price_start` WRITE;
/*!40000 ALTER TABLE `field_a_p_price_start` DISABLE KEYS */;
INSERT INTO `field_a_p_price_start` VALUES
(5942,600),
(5943,2500),
(5944,800),
(5945,900),
(5946,18000),
(5947,3000),
(5948,8000),
(5949,734),
(5950,866),
(5951,800),
(5952,8000),
(5953,2000),
(5954,5000),
(5955,1500),
(5956,4000),
(6351,800);
/*!40000 ALTER TABLE `field_a_p_price_start` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_p_seller`
--

DROP TABLE IF EXISTS `field_a_p_seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_p_seller` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_p_seller`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_p_seller` WRITE;
/*!40000 ALTER TABLE `field_a_p_seller` DISABLE KEYS */;
INSERT INTO `field_a_p_seller` VALUES
(5943,5894,0),
(5946,5894,0),
(5947,5894,0),
(5948,5894,0),
(5952,5894,0),
(5954,5894,0),
(5955,5894,0),
(5956,5894,0),
(5942,5895,0),
(5944,5895,0),
(5945,5895,0),
(5951,5895,0),
(5953,5895,0),
(6351,5895,0),
(6352,5895,0),
(5949,5896,0),
(5950,5896,0);
/*!40000 ALTER TABLE `field_a_p_seller` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_s_address`
--

DROP TABLE IF EXISTS `field_a_s_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_s_address` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text DEFAULT NULL,
  `data5754` text DEFAULT NULL,
  `data5755` text DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_s_address`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_s_address` WRITE;
/*!40000 ALTER TABLE `field_a_s_address` DISABLE KEYS */;
INSERT INTO `field_a_s_address` VALUES
(5894,'Stockholm','Стокгольм','Stockholm','Stockholm'),
(5895,'Stockholm','Стокгольм','Stockholm','Stockholm'),
(5896,'Stockholm, Sveaplan','Стокгольм, Свеаплан','Stockholm, Sveaplan','Stockholm, Sveaplan'),
(5897,'','','',''),
(5898,'','','','');
/*!40000 ALTER TABLE `field_a_s_address` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_a_s_duty`
--

DROP TABLE IF EXISTS `field_a_s_duty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_a_s_duty` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_s_duty`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_a_s_duty` WRITE;
/*!40000 ALTER TABLE `field_a_s_duty` DISABLE KEYS */;
INSERT INTO `field_a_s_duty` VALUES
(5894,1,0),
(5895,1,0),
(5896,1,0),
(5897,1,0),
(5898,1,0);
/*!40000 ALTER TABLE `field_a_s_duty` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_admin_theme`
--

DROP TABLE IF EXISTS `field_admin_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_admin_theme`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_admin_theme` WRITE;
/*!40000 ALTER TABLE `field_admin_theme` DISABLE KEYS */;
INSERT INTO `field_admin_theme` VALUES
(41,175),
(5972,175);
/*!40000 ALTER TABLE `field_admin_theme` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_body`
--

DROP TABLE IF EXISTS `field_body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data5753` mediumtext DEFAULT NULL,
  `data5754` mediumtext DEFAULT NULL,
  `data5755` mediumtext DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_body`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_body` WRITE;
/*!40000 ALTER TABLE `field_body` DISABLE KEYS */;
INSERT INTO `field_body` VALUES
(6162,'','','',''),
(6196,'<h3><em>From abigail-goodman.com</em></h3>\n\n<p>I absolutely adore all designs by Leigh P. Cooke!</p>\n\n<p>Many of you have probably heard me rave about <em>I Like Flowers</em>, another stunning creation by Cooke that was recently reissued.</p>\n\n<p>Such amazing high contrast between the pencils and the background. </p>\n\n<p>-----------------------------------------------------------------------------------</p>\n\n<div class=\"Y3BBE\">\n<div>The</div>\n<strong class=\"Yjhzub\">\"À vos crayons!\"</strong> (French for \"To your pencils!\" or \"Take out your pencils!\") scarf is a noted Hermès design created by artist <strong class=\"Yjhzub\">Leigh P. Cooke</strong>.</div>\n\n<div class=\"Fsg96\"> </div>\n\n<div class=\"otQkpb\">Key Facts</div>\n\n<ul class=\"KsbFXc U6u95\">\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Designer:</strong> Leigh P. Cooke, who began designing for Hermès in 2001 and is known for a realistic, detailed style.</span></li>\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Original Issue:</strong> The design was first released in <strong class=\"Yjhzub\">2004</strong> (specifically for the <em class=\"eujQNb\">Plissé</em> or pleated version) and the standard 90cm silk carré. It has also been released in other formats, such as the 45cm Gavroche and the Twilly.</span></li>\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Inspiration:</strong> The design was reportedly inspired by Cooke’s grade-school son.</span></li>\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Visual Style:</strong> The scarf features a playful, hyper-realistic arrangement of colored pencils, pencil shavings, and graphite. It is celebrated for its technical complexity, as the design requires a high number of color screens to achieve its three-dimensional effect and realistic shadows.</span></li>\n</ul>\n\n<div class=\"Fsg96\"> </div>\n\n<div class=\"otQkpb\">Variations and Availability</div>\n\n<div class=\"Y3BBE\">As of 2026, this design continues to appear in secondary luxury markets and occasional Hermès reissues:</div>\n\n<ul class=\"KsbFXc U6u95\">\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Carré 90:</strong> The classic 90x90 cm silk scarf.</span></li>\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Plissé:</strong> A pleated version that accentuates the \"pops\" of color from the pencil graphics.</span></li>\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Twilly:</strong> A thin silk ribbon format titled \"A Vos Crayons et Carre Libre\".</span></li>\n</ul>','','',''),
(6185,'','','',''),
(5786,'','','',''),
(6161,'','','',''),
(5789,'<center>\n<div class=\"rounded-area\">\n<h3>Hermès scarves are an investment, and it\'s much more fun than shares!</h3>\n\n<p><strong>Queen Elizabeth, Princess Margaret, Grace Kelly, Madonna, Catherine Deneuve, Victoria Beckham, Jennifer Lopez, Margo... </strong></p>\n\n<p><strong>What unites them?</strong><br />\n<em><strong>Right, Hermès!</strong></em></p>\n</div>\n</center>','<center>\n<div class=\"rounded-area\">\n<h3>Carrés Hermés — это инвестиция, это гораздо сильнее акций!</h3>\n\n<h3>Queen Elizabeth, Princess Margaret, Grace Killy, Madonna, Catherine Deneuve, Марго...  Что всех объединяет?</h3>\n\n<div style=\"text-align:center;\">Ну конечно Hermès!</div>\n</div>\n</center>','<center>\n<div class=\"rounded-area\">\n<h3>Les carrés Hermès sont un investissement, et c\'est bien plus agréable que les actions !</h3>\n\n<p><strong>La reine Elizabeth, la princesse Margaret, Grace Kelly, Madonna, Catherine Deneuve, Victoria Beckham, Jennifer Lopez, Margo…</strong></p>\n\n<p><strong>Qu\'ont-elles en commun ?</strong><br />\n<em><strong>Exactement, Hermès !</strong></em></p>\n</div>\n</center>',''),
(5791,'','','',''),
(5792,'','','',''),
(5793,'<p>Caty Latham — also known as Cathy Latham-Audibert — is a remarkable artist whose work at Hermès spans more than 45 extraordinary years. She is especially celebrated for creating <em>Clés</em>, one of the top ten best-selling Hermès scarves of all time, as well as for her clever self-referential designs.</p>\n\n<p>Her earliest two creations, <em>Clés</em> and <em>Vendanges</em>, were released without a signature. For the next decade she signed her work as “.Caty.” before eventually adopting the signature “Latham.” This evolution has become part of her story, reflecting the long and creative journey behind her designs.</p>','<p>Кэти Латам, известная также как Кэти Латам-Одибер, — выдающаяся художница, посвятившая Hermès более 45 невероятных лет. Особенно прославилась она платком <em>Clés</em>, вошедшим в десятку самых продаваемых carrés Hermès за всю историю, а также своими изящными, самоироничными и «самоописательными» дизайнами.</p>\n\n<p>Её первые две работы — <em>Clés</em> и <em>Vendanges</em> — выпускались без подписи. Позже, в течение примерно десяти лет, она подписывала свои дизайны как “.Caty.”, а затем перешла к подписи “Latham.” Эта смена подписи стала частью её творческой биографии и отражает долгий путь развития её стиля.</p>','<p>Caty Latham — également connue sous le nom de Cathy Latham-Audibert — est une artiste exceptionnelle dont la collaboration avec Hermès s’étend sur plus de 45 années admirables. Elle est surtout reconnue pour avoir créé <em>Clés</em>, l’un des dix carrés Hermès les plus vendus de tous les temps, ainsi que pour ses motifs subtilement autoréférentiels.</p>\n\n<p>Ses deux premières créations, <em>Clés</em> et <em>Vendanges</em>, ont été publiées sans signature. Par la suite, elle a signé ses dessins “.Caty.” pendant une dizaine d’années avant d’adopter la signature “Latham.” Cette évolution fait aujourd’hui partie de son histoire et témoigne de son long parcours créatif.</p>','<p>Caty Latham — även känd som Cathy Latham-Audibert — är en enastående konstnär som arbetat med Hermès i över 45 imponerande år. Hon är särskilt känd för att ha skapat <em>Clés</em>, en av de tio mest sålda Hermès-sjalarnas genom tiderna, samt för sina lekfulla och självrefererande mönster.</p>\n\n<p>Hennes två första design, <em>Clés</em> och <em>Vendanges</em>, gavs ut utan signatur. Under det följande decenniet signerade hon sina verk med “.Caty.” innan hon så småningom gick över till signaturen “Latham.” Denna utveckling är idag en del av hennes historia och speglar den långa kreativa resa bakom hennes arbete.</p>\n\n<hr />'),
(5794,'<hr />\n<p><strong>Evgenia about herself:</strong></p>\n\n<p>I was born in Kharkiv, Ukraine, and I’ve loved drawing for as long as I can remember. I studied at the Kharkiv State Art School and later at the Academy of Decorative Arts in Saint Petersburg.</p>\n\n<p>My homeland — the birthplace of great artists like Kazimir Malevich — gave me a deep feeling for color, rhythm, and harmony. After graduating from the Academy, I began my creative career and became a member of the Russian Union of Artists and Designers.</p>\n\n<p>I’ve always been fascinated by symbols — those ancient signs that people used to express faith, wisdom, and their understanding of the world. I love exploring their meanings and turning them into patterns, ornaments, and decorative stories.</p>\n\n<p>My works have been exhibited in the UK, France, Germany, Sweden, Russia, and the USA. For many years I worked mostly in Russia. My passion for theater and music led to wonderful collaborations with the Tchaikovsky Symphony Orchestra and the Mariinsky Theatre. Some of my designs were even produced by the famous Imperial Porcelain Factory in Saint Petersburg.</p>\n\n<p>In 2004, my life took a new turn when I started working with Hermès. It was both an honor and a challenge — I became the first contemporary Russian designer to collaborate with the house. I created designs for scarves, enamel bracelets, and porcelain, bringing to them the beauty and spirit of Russian ornament and culture.</p>\n\n<p>Since then, I’ve also worked with other prestigious brands — in France (Pierre Frey, Emaux de Longwy, Beauvillé, J. Seignolles), in the UK (Wedgwood), in Italy (Provasi), and with many private clients in Russia.</p>\n\n<p>Today, my designs can be found in some of the most beautiful stores around the world. But for me, the real joy is when someone looks at my work and feels warmth, wonder, and inspiration.</p>','<p><strong>Евгения о себе:</strong></p>\n\n<p>Я родилась в Харькове, Украина. С самого детства любила рисовать и мечтала стать художником. Училась сначала в Харьковском художественном училище, потом — в Академии декоративно-прикладного искусства в Петербурге.</p>\n\n<p>Моя родина — земля талантливых художников, например Казимира Малевича. Думаю, именно оттуда у меня любовь к цвету и ритму, к сочетанию форм и деталей. После Академии я начала работать дизайнером и вступила в Союз художников и дизайнеров России.</p>\n\n<p>Меня всегда тянуло к символам — знакам, которые люди создавали с древних времён. В каждом из них спрятан смысл, мудрость, вера. Мне нравится искать эти значения и превращать их в орнаменты, украшения и узоры.</p>\n\n<p>Мои работы выставлялись в разных странах — от Великобритании и Франции до США и Швеции. Долгое время я жила и работала в России. Любовь к театру и музыке подарила мне удивительные проекты — сотрудничество с Большим симфоническим оркестром имени Чайковского и Мариинским театром. Некоторые мои дизайны даже выпускались на Императорском фарфоровом заводе в Петербурге.</p>\n\n<p>В 2004 году в моей жизни появился Hermès. Это была встреча, которая всё изменила. Я создавала для них дизайны шарфов, браслетов, фарфора. Это был невероятный опыт — ведь я стала первым современным российским дизайнером, кто работал с Hermès. Мне хотелось показать им красоту русских орнаментов и передать дух нашей культуры.</p>\n\n<p>Позже я сотрудничала и с другими известными брендами — во Франции, Великобритании, Италии, а также с многими заказчиками в России.</p>\n\n<p>Сегодня мои работы можно увидеть в лучших магазинах мира. Но для меня главное — когда человек, глядя на мой рисунок, чувствует радость, тепло и вдохновение.</p>','',''),
(5795,'<p>Son of <a href=\"/sh/h_spot/h_persons/188-vladimir-rybaltchenko/\">Vladimir Rybaltchenko</a> and the great-grandnephew of <a href=\"/sh/h_spot/h_persons/224-philippe-ledoux/\">Philippe Ledoux</a>.</p>','','',''),
(5796,'<p>Here is Alexander Tsybin</p>','','',''),
(5797,'<p>Great-nephew of <a href=\"/sh/h_spot/h_persons/224-philippe-ledoux/\">Philippe Ledoux</a> and father of <a href=\"/sh/h_spot/h_persons/186-dimitri-rybaltchenko/\">Dimitri Rybaltchenko</a>.</p>','<p>Внучатый племянник <a href=\"/sh/h_spot/h_persons/224-philippe-ledoux/\">Philippe Ledoux</a> и отец <a href=\"/sh/h_spot/h_persons/186-dimitri-rybaltchenko/\">Дмитрия Рыбальченко</a></p>','',''),
(5798,'<h2>The father of carré</h2>\n\n<p>The idea of ​​a carré, to print exclusive designs on a square piece of silk came about in the 1930s.  At that time Robert Dumas, son of Emile, then president of the design house Hermès, with talented designers behind him, was able to quickly convince his father about this idea and the Hermès carré as we know it, was born.</p>\n\n<p>Hugo Grygkar not only designed the very first carré for Hermès, but he also became Hermès’ most prolific artist.</p>\n\n<p>Born on December 9, 1907 in Munich to a Czech family, he grew up in Germany where he from an early age attended the studio of his father, who was a tinsmith and bronze sculptor.  In 1914, his family left for France and settled first in Brittany, in Lannion, and later in the Parisian suburbs.</p>\n\n<p>  In his youth, Hugo was a diligent artist and an avid reader, who also loved to write.  A very private and modest person, Hugo kept his education somewhat of a mystery but he most likely attended <em>l’Academie des Beaux-Arts</em> and then the <em>Studio La Ruche</em> in Paris.</p>\n\n<p>  In 1939 along with his father, Hugo joined a special corps in the French army made up of Czech volunteers.  Although dismissed after a few months due to kidney disease, this commitment helped him obtain French citizenship.</p>\n\n<p>  He married in 1942 and two years later had a daughter, Beatrice.</p>\n\n<p>After the war, in a difficult economic environment, in addition to designing scarves for Hermès, Hugo also worked as an illustrator and commercial artist, producing movie posters and some drawings for magazines like Vogue.</p>\n\n<p>Many of the carrés he designed during the forties were created in the tradition of the great illustrators.  Maxims, proverbs and aphorisms come to life in playful ways. Hugo with his great sense of humor created carrés that are in complete contrast to the hard times of the war and the immediate postwar period.  A great example being the caricature styled <strong>Lettre de Napoléon a Murat d’après Caran D’Ache</strong><em> </em>(<em>Caran D’Ache, pseudonym of a 19th century French satirist and political cartoonist Emmanuel Poiré, whose first work glorified Napoleon’s era, Murat - the brother-in-law of Napoléon Bonaparte</em>).</p>\n\n<p>Many of his earlier designs have been re-issued several times, so there can be up to three different versions with no copyright, early copyright and modern copyrights.</p>\n\n<p>He produced over 100 designs and never signed his work.</p>\n\n<p><em>From https://carredeparis.me/</em></p>','','',''),
(5799,'<p>Philippe Ledoux was a superb artist and did some wonderful book illustrations as well as designing some of the most popular scarves for Hermès.</p>\n\n<p>His characterisation, eye for historical detail, and handling of perspective and three dimensional view is staggering. Ships and horses were often his subjects but people his speciality. You will have seen some of his designs in my other guides, La Promenade de Longchamps being a long term favourite with the fakers.</p>\n\n<p><em>By Hermès Scarf Guides </em></p>','<p>Ledoux был превосходным художником и создал как замечательные книжные иллюстрации, так и многие из самых популярных шарфов для Hermès.</p>\n\n<p>Его \"La Promenade de Longchamps\" стал чемпионом по количеству подделок.</p>\n\n<p>Его взгляд на исторические детали и обращение с перспективой и трехмерным пространством ошеломляют. Корабли и лошади часто были его сюжетами, но коньком все-таки были люди.</p>\n\n<p><em>По материалам Hermès Scarf Guides </em></p>','',''),
(5800,'<p>Loïc Dubigeon wasn’t your typical artist. Born in Nantes in 1934, he grew up in a family of shipowners and first planned to become an architect. But creativity had other plans for him. He traded blueprints for brushes and went on to make his mark as a painter, illustrator, and designer — even creating some of the most memorable scarf designs for Hermès.</p>\n\n<p>By the late 1970s, Loïc’s artistic curiosity led him in a new direction. He began drawing nude figures from life — first in charcoal, later in soft pencil. His eye for detail and structure, sharpened by his architectural training, gave his drawings a special depth. He captured not just the form, but the play of light and shadow, the quiet tension of the human body. It was this mix of precision and sensitivity that made his work stand out.</p>\n\n<p>In 1979, he showed some of these drawings, along with other pieces, at an exhibition in Munich. The show caught the eye of the publisher Éditions Borderie, who invited him to create a series of illustrations inspired by Pauline Réage’s *Histoire d’O*. The project gave him another space to explore the balance between elegance and emotion — something that always ran through his art, no matter the subject.</p>\n\n<p>Loïc later settled in Derchigny, at the Domaine de Wargemont — a place once home to Pierre-Auguste Renoir. His paintings and lithographs appeared regularly in exhibitions, especially at the Galerie d’Ophir in Eure, and today, a few of his works live in the Dieppe Museum.</p>\n\n<p>Even after his passing in 2001, Dubigeon’s art continues to speak — through his paintings, illustrations, and his timeless Hermès designs that still inspire artists and dreamers around the world.</p>\n\n<p> </p>','<p>Он вырос в западном французском морском порту Нант, учился в Школе Архитектуры (l’École d’Architecture) в Париже. В течение 1950-х годов он углубился в графический дизайн, создав ряд шарфов для Hermés; он также создал фрески для зданий во Франции, Нью-Йорке и Саудовской Аравии.</p>\n\n<p>В конце 1960-х перебрался на Нормандское побережье северной Франции, где жил в Берневале-ле-Гранде, недалеко от Дьеппа. Создал свою студию в близлежащем Дерчиньи-Гринкуре, где делал и продавал свои товарные знаки, пастели и гравюры приморских деревень и скал, зонтики для пикника.</p>\n\n<p>В конце 1970-х годов Дубиджон начал рисовать в стиле nu, сначала в древесном угле, а затем в мягком карандаше. Острый наблюдатель деталей, состава и взаимодействия света и тьмы, он использовал свои архитектурные навыки для создания рисунков человеческого тела, которые отличали его от большинства художников. В 1979 году он показал некоторые из своих \"обнаженок\" наряду с другими произведениями на выставка в Мюнхене. Это привлекло внимание издателя Издания Borderie, которые заказали серию иллюстраций, для романа Полины Реаге \"Histoire d\'O\".</p>\n\n<p>Эта работа позволила развязать воображение Дубиджона и отточить его навыки. В какой степени он освободил свою личную жизнь, можно только предположить. Дело в том, что рисунки для \"Histoire d\'O\" и \"De l\'aube à la nuit\" четко вычеркнуты из жизни и отражают решимость Dubigeon что искусство должно отражать вещи, поскольку они находятся во всей их абсолютности и естественной красоте. Часть этой достоверности и целостности отражается в том, что он никогда не пытался скрыть свои эротические работы за псевдонимом или выставлять их отдельно от своей других; для него искусство было искусством, и эротические произведения составляли лишь небольшую часть его жизни.</p>','<p>Loïc Dubigeon n’était pas un artiste comme les autres. Né à Nantes en 1934, il grandit dans une famille d’armateurs et se destinait d’abord à l’architecture. Mais la créativité en décida autrement. Il troqua les plans et les croquis techniques pour les pinceaux et fit sa place en tant que peintre, illustrateur et designer — signant notamment certaines des plus belles créations de foulards pour Hermès.</p>\n\n<p>À la fin des années 1970, la curiosité artistique de Loïc l’emmena sur un nouveau chemin. Il se mit à dessiner des nus d’après modèle vivant — d’abord au fusain, puis au crayon tendre. Son sens aigu du détail et de la composition, affiné par sa formation d’architecte, donnait à ses dessins une profondeur particulière. Il capturait non seulement les formes, mais aussi le jeu de la lumière et de l’ombre, la tension silencieuse du corps humain. Ce mélange de précision et de sensibilité rendait son travail unique.</p>\n\n<p>En 1979, il présenta certains de ces dessins, accompagnés d’autres œuvres, lors d’une exposition à Munich. L’événement attira l’attention de l’éditeur Éditions Borderie, qui lui commanda une série d’illustrations inspirées du roman <em>Histoire d’O</em> de Pauline Réage. Ce projet lui offrit un nouvel espace d’expression, où il put explorer encore davantage l’équilibre entre élégance et émotion — un fil conducteur constant dans son œuvre, quel qu’en soit le sujet.</p>\n\n<p>Par la suite, Loïc s’installa à Derchigny, au Domaine de Wargemont — un lieu autrefois habité par Pierre-Auguste Renoir. Ses peintures et lithographies furent régulièrement exposées, notamment à la Galerie d’Ophir dans l’Eure, et plusieurs de ses œuvres font aujourd’hui partie des collections du musée de Dieppe.</p>\n\n<p>Même après sa disparition en 2001, l’art de Dubigeon continue de parler — à travers ses peintures, ses illustrations et ses créations intemporelles pour Hermès, qui inspirent encore aujourd’hui les amateurs d’art et les rêveurs du monde entier</p>',''),
(5801,'','','',''),
(5802,'<p>Françoise De La Perrière is a celebrated designer whose scarves for Hermès have become true collector’s pieces. Her creations are loved for their delicate details, imaginative themes, and beautiful harmony of colors.</p>\n\n<p>Throughout her career, she designed many remarkable scarves that tell stories through refined patterns and thoughtful composition. With an eye for beauty and a spirit of creativity, she has earned a lasting place in the world of luxury design.</p>\n\n<p>Her timeless work continues to inspire collectors and fashion admirers around the globe.</p>\n\n<p><em>Inspired by <a href=\"https://scarfsage.com\">ScarfSage.com</a></em></p>','<p>Франсуаз Де Ла Перрьер — известная дизайнер, чьи carrés для Hermès давно стали предметом коллекционирования. Её работы ценят за тончайшие детали, необычные темы и гармоничные цвета.</p>\n\n<p>За годы творчества она создала множество выдающихся carres, каждый из которых рассказывает историю через изящные узоры и тщательно продуманный орнамент. Чувствительность к красоте и стремление к новому закрепили за ней важное место в мире высокой моды.</p>\n\n<p>Её элегантные и вневременные дизайны до сих пор вдохновляют коллекционеров и любителей стиля.</p>\n\n<p><em>Идея <a href=\"https://scarfsage.com\">ScarfSage.com</a></em></p>','<p>Françoise De La Perrière est une créatrice reconnue, célèbre pour les foulards qu’elle a imaginés pour la maison Hermès. Ses œuvres, appréciées pour leurs détails délicats, leurs thèmes poétiques et leurs harmonies de couleurs, sont devenues de véritables pièces de collection.</p>\n\n<p>Au fil de sa carrière, elle a conçu de nombreux foulards remarquables, tissant des histoires à travers des motifs raffinés et une composition soignée. Son regard artistique et son sens de l’innovation lui ont valu une place durable dans l’univers du luxe.</p>\n\n<p>Ses créations intemporelles continuent de séduire les amateurs de mode du monde entier.</p>\n\n<p><em>Après <a href=\"https://scarfsage.com\">ScarfSage.com</a></em></p>','<p>Françoise De La Perrière är en uppskattad designer, känd för sina ikoniska sidensjalar för Hermès. Hennes skapelser älskas för sina fina detaljer, fantasifulla motiv och vackra färgkombinationer.</p>\n\n<p>Under sin karriär har hon formgett många minnesvärda sjalar som berättar små historier genom eleganta mönster och noggrant komponerade element. Med sinne för skönhet och kreativitet har hon fått en självklar plats i lyxmodets värld.</p>\n\n<p>Hennes tidlösa design fortsätter att fascinera samlare och modeälskare över hela världen.</p>\n\n<div class=\"lRu31\" dir=\"ltr\"><span class=\"HwtZe\" lang=\"sv\" xml:lang=\"sv\"><span class=\"jCAhz\"><span class=\"ryNqvb\">Inspirerad av </span></span></span><em><a href=\"https://scarfsage.com\">ScarfSage.com</a></em>\n\n<div class=\"OvtS8d\"> </div>\n</div>'),
(5803,'<p>Michel Duchêne is a prominent artist for the house of Hermès, most active from the <strong class=\"Yjhzub\">mid-1980s to the early 2000s</strong>.<span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></p>\n\n<div class=\"Y3BBE\"> </div>\n\n<div class=\"Y3BBE\"><span class=\"T286Pc\">He is the great-grandson of the celebrated landscape architect <strong class=\"Yjhzub\">Achille Duchêne</strong>. His work for Hermès often incorporates historical, architectural, and cultural motifs.</span></div>\n\n<ul class=\"KsbFXc U6u95\">\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Major Contributions:</strong></span>\n\n	<ul class=\"KsbFXc U6u95\">\n		<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Feux d’Artifice (1987):</strong> Created to commemorate the 150th anniversary of Hermès, this design is considered a masterpiece of the brand’s annual theme tradition.</span></li>\n		<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Chasse en Inde (1985/1986):</strong> One of the most famous Hermès carres, inspired by an 18th-century silk tapestry.</span></li>\n		<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Other Notable Scarves:</strong> <em class=\"eujQNb\">Grand Cortège à Moscou</em>, <em class=\"eujQNb\">Les Fêtes du Roi Soleil</em>, <em class=\"eujQNb\">Le Songe de Poliphile</em>, and <em class=\"eujQNb\">Naissance d’une Idée</em>.</span><span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></li>\n	</ul>\n	</li>\n</ul>','<p>Мишель Дюшен — выдающийся художник Дома Hermès, наиболее активно работавший с середины 1980-х до начала 2000-х годов. В его работах  часто используются исторические, архитектурные и культурные мотивы.</p>\n\n<p>Он является правнуком знаменитого ландшафтного архитектора Ахилла Дюшена.</p>\n\n<p>Основные работы:<br />\n<em>Feux d’Artifice</em> (1987): Созданный в честь 150-летия Hermès, этот дизайн считается шедевром ежегодной тематической традиции бренда.<br />\n<em>Chasse en Inde </em>(1985/1986): Один из самых известных карре Hermès, вдохновленный шелковым гобеленом XVIII века.</p>\n\n<p>Другие известные шарфы:<br />\n<em>Grand Cortège à Moscou (Великий кортеж в Москве)</em>,<br />\n<em>Les Fêtes du Roi Soleil (Празднования Короля-Солнца)</em>,<br />\n<em>Le Songe de Poliphile (Сон Полифила)</em>,<br />\n<em>Naissance d’une Idée (Зарождение идеи)</em></p>','',''),
(5804,'<p>Cyrille Diatkine’s style is modern and very stylish. As Anamorphée and <a href=\"../186-dimitri-rybaltchenko/\">Dimitri Rybaltchenko</a>, she is artist/designer rather than artist/painter, who designs the carré as a poster rather than a painting.</p>','<p>Стиль Cyrille Diatkine современный и очень стильный. Под псевдонимами <em>Anamorphée</em> и <a href=\"../186-dimitri-rybaltchenko/\">Димитрий Рыбальченко</a> она скорее художник-дизайнер, чем живописец, создающий платок в стиле плаката, а не картины.</p>','<p>Le style de Cyrille Diatkine est moderne et très stylisé. Tout comme Anamorphée et _AO_av_id=186;Dimitri Rybaltchenko_AC_, elle est artiste dessinatrice plutôt qu’artiste peintre, concevant le carré comme une affiche plutôt qu’une toile.</p>',''),
(5805,'<p>Jean De Fougerolle is a French designer whose work for Hermès reflects a deep love for the equestrian world. With graceful lines and a refined sense of color, he brings to life the spirit, movement, and quiet poetry of horses — a language at the heart of the Hermès story.</p>\n\n<p>Blending tradition with modern sensibility, his creations capture moments of elegance and emotion. His scarves, cherished by collectors, reveal both his artistic vision and the timeless beauty that defines Hermès.</p>\n\n<p><strong>-------------------------------------------------------------------------</strong></p>\n\n<p><strong>Jean De Fougerolle</strong> is a distinguished French designer known for his extraordinary work with the iconic luxury brand, Hermès. With a keen eye for detail and a deep understanding of equestrian culture, his designs beautifully capture the essence of the brand’s heritage and sophistication.</p>\n\n<p>His designs often draw inspiration from the equestrian world, incorporating elements of both traditional and modern horsemanship. With an elegant touch and a keen sense of color, Jean De Fougerolle masterfully brings to life the stories and emotions that define the prestigious Hermès brand.</p>\n\n<p>As an accomplished designer, Jean De Fougerolle has made a lasting impact on the world of luxury fashion. His exquisite scarves showcase his artistic vision and dedication to craftsmanship, while also reflecting the timeless elegance and refinement for which Hermès is renowned.</p>\n\n<p>Created by <a href=\"https://scarfsage.com\">ScarfSage.com</a></p>','<p>Jean de Fougerolle — французский дизайнер, чьи работы для Hermès проникнуты глубоким пониманием мира лошадей. Тонкими линиями и утончённым чувством цвета он передаёт движение, характер и тихую поэзию традиционного мотива Hermès.</p>\n\n<p>Соединяя традицию и современный взгляд, он создаёт работы, полные элегантности и эмоций.</p>','<p>Jean De Fougerolle est un créateur français dont les œuvres pour Hermès naissent d’un profond attachement au monde équestre. Par des lignes délicates et un sens raffiné des couleurs, il fait vibrer l’âme, le mouvement et la poésie silencieuse du cheval — symbole essentiel de la maison Hermès.</p>\n\n<p>Alliant tradition et regard contemporain, ses créations saisissent l’élégance et l’émotion. Ses carrés, très appréciés des collectionneurs, dévoilent sa vision artistique et la beauté intemporelle qui fait la renommée d’Hermès.</p>\n\n<hr />',''),
(5806,'<p>Julie Abadie is an artist and scarf designer. Studied at the <em>École Nationale Supérieure des Arts Appliqués</em> in Paris and later at the <em>Cleveland Institute of Art</em> in the United States, received the <em>Merit Award from the Society of Illustrators in New York</em></p>\n\n<p><em>Abadie has started to work with Hermès since 1969, designing and hand-painting many of the brand’s iconic silk scarf motifs.</em></p>\n\n<p><em>In addition to scarf design, she produces personal oil paintings featuring themes related to the sea and nature.</em></p>\n\n<p><em><em>With help from AI</em></em></p>','<p>Джули Абади — художник и дизайнер шарфов. Она училась в <em>Высшей национальной школе прикладных искусств </em>в Париже, а затем в Кливлендском институте искусств в США, и получила награду за заслуги от Общества иллюстраторов в Нью-Йорке.</p>\n\n<p>Абади начала сотрудничать с Hermès в 1969 году, разрабатывая и расписывая вручную многие культовые мотивы шелковых шарфов бренда.</p>\n\n<p>Помимо дизайна шарфов, она создает собственные картины маслом на темы, связанные с морем и природой.</p>\n\n<p><em>С помощью ИИ</em></p>','<p>Julie Abadie est une artiste et créatrice de foulards. Formée à l<em>\'École Nationale Supérieure des Arts Appliqués</em> à Paris, puis au Cleveland <em>Institute of Art </em>aux États-Unis, elle a reçu <em>le Prix du Mérite </em>de la Society of Illustrators à New York.</p>\n\n<p>Depuis 1969, elle collabore avec Hermès, pour lequel elle conçoit et peint à la main de nombreux motifs emblématiques des foulards en soie de la marque.</p>\n\n<p>Parallèlement à son travail de création de foulards, elle réalise des peintures à l\'huile personnelles inspirées par la mer et la nature.</p>\n\n<p><em>Avec l\'aide de l\'IA</em></p>',''),
(5807,'<p>He joined Hermès in <strong class=\"Yjhzub\">1958</strong> and has since been an integral part of the house\'s creative output, designing everything from iconic silk scarves and ties to acclaimed watches like the <em>Arceau</em> and <em>Cape Cod</em>. </p>\n\n<div class=\"Y3BBE\"> </div>\n\n<div class=\"Y3BBE\">He is known for his witty and self-deprecating nature, often referring to his masterful designs as \"doodles\". His work continues to be a source of inspiration, bridging the gap between Hermès\' rich equestrian history and contemporary design.<span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></div>\n\n<div class=\"Y3BBE\"> </div>\n\n<div class=\"Y3BBE\"><em>With help from AI</em></div>\n\n<p> </p>','<p>Он присоединился к Hermès в 1958 году и с тех пор является неотъемлемой частью творческого процесса дома, разрабатывая всё — от культовых шелковых шарфов и галстуков до таких известных часов, как <em>Arceau</em> и <em>Cape Cod</em>. </p>\n\n<p>Он известен своим остроумием и самоиронией, часто называя свои шедевры «каракулями». Его работы продолжают служить источником вдохновения, соединяя богатую историю Hermès, связанную с конным спортом, и современный дизайн.</p>\n\n<p>В течение течение длительного периода, порядка пяти-шести десятилетий он работал художественным директором Hermès. Источники неизменно называют его «легендарным художественным директором», не указывая точные годы начала и окончания его работы на этой должности.</p>\n\n<p><em>С помощью ИИ</em></p>','<p>Il a rejoint Hermès en 1958 et est depuis lors un acteur incontournable de la création au sein de la maison, signant des pièces emblématiques comme les foulards et cravates en soie, ainsi que des montres prestigieuses telles que <em>l\'Arceau</em> et <em>la Cape Cod</em>.</p>\n\n<p>Connu pour son esprit et son autodérision, il qualifie souvent ses créations magistrales de « gribouillis ». Son œuvre demeure une source d\'inspiration, tissant un lien entre le riche héritage équestre d\'Hermès et le design contemporain.</p>\n\n<p><em>Avec l\'aide de l\'IA</em></p>',''),
(5808,'<p>Henri de Linarès was a prominent French animal painter and one of the most significant early designers for Hermès. His work for the house is defined by a meticulous, lifelike style that focused on hunting themes and natural history studies.</p>\n\n<p>Born in Blois, France, he was a distinguished animalier who specialized in capturing the essence of wildlife and hunting trophies with scientific precision. His designs are often compared to 17th-century Northern Renaissance still lifes due to their incredible detail and layering. </p>\n\n<p>Beyond his commercial work, he was a co-founder and the first curator of the <a href=\"https://www.chateaumuseegien.fr/le-musee-et-ses-collections/histoire-du-musee-de-la-chasse\">Musée de la Chasse à Tir et de la Fauconnerie</a> in Gien, inaugurated in 1952.</p>\n\n<p>De Linarès contributed numerous \"grail\" designs to the Hermès canon, many of which remain highly coveted by collectors.</p>\n\n<p><em>With a help from AI</em></p>\n\n<p> </p>','<p>Henri de Linarès (Анри де Линэр) был выдающимся французским художником-анималистом и одним из наиболее значимых дизайнеров раннего периода Hermès. Его работы для модного дома отличаются тщательным, реалистичным стилем, в основе которого лежат охотничьи мотивы и исследования в области естествознания.</p>\n\n<p>Уроженец Blois, он был прославленным анималистом, который с научной точностью умел передать саму суть дикой природы и охотничьих трофеев. Его эскизы часто сравнивают с натюрмортами мастеров Северного Возрождения XVII века из-за невероятной детализации и многослойности.</p>\n\n<p>Помимо коммерческой деятельности, он был сооснователем и первым куратором <a href=\"https://www.chateaumuseegien.fr/le-musee-et-ses-collections/histoire-du-musee-de-la-chasse\">Музея охоты и соколиной охоты</a>, открытого в 1952 году.</p>\n\n<p>Де Линэр создал множество культовых дизайнов, ставших настоящим «святым Граалем» в истории Hermès, которые остаются предметом желаний для коллекционеров.</p>\n\n<p><em>С участием ИИ</em></p>','<p>Henri de Linarès contribue activement, avec Pierre-Louis Duchartre, à la création du <a href=\"https://www.chateaumuseegien.fr/musee_chateau\">Musée de la chasse à tir et de la fauconnerie</a> inauguré en 1952 à Gien (Loiret) et en devient le premier conservateur.</p>\n\n<p>Il crée des imprimés pour les carrés de soie de la maison Hermès.</p>\n\n<p>Il expose au salon d\'hiver en 1949. Il a été membre de la société archéologique et historique de l\'Orléanais.</p>',''),
(5809,'<p>Joachim Metz’s background is not widely documented, but his impact on the world of Hermès scarves is undeniable. He has made a lasting impression on the fashion industry with his stunning designs that continue to captivate and inspire generations of scarf collectors and enthusiasts.</p>\n\n<p>Throughout his career, Metz has created more than 30 captivating scarves, showcasing his exceptional talent for intricate detailing, color, and composition.</p>\n\n<p>His designs have become iconic, admired by Hermès enthusiasts around the world.</p>\n\n<p>      <br />\n<em>Inspired by ScarfSage.com</em></p>','<p>Биография Йоахима Метца плохо известна, но его влияние на мир Hermès неоспоримо. Он оставил неизгладимый след в индустрии моды своими потрясающими дизайнами, которые продолжают очаровывать и вдохновлять поколения коллекционеров и ценителей шарфов.</p>\n\n<p>За свою карьеру Метц создал более 30 восхитительных шарфов, демонстрируя свой исключительный талант к тонкой детализации, цвету и композиции.</p>\n\n<p>Его дизайны стали культовыми и вызывают восхищение у поклонников Hermès по всему миру.</p>\n\n<p><em>Навеяно https://ScarfSage.com</em></p>','',''),
(5810,'<p>Daphne only produced two designs for Hermès and neither have a title on the scarf. There both appear to have had two different issues, with old and new style copyrights.</p>','<p>Она создала для Hermès всего два дизайна, и ни на одном из них нет названия. По всей видимости, с ними возникли проблемы, связанные со старым и новым стилем авторских прав.</p>','',''),
(5811,'<p>He is the son of <a href=\"/sh/site/assets/files/5811/Xavier_de_Poret_parents_mariage.jpg\"> Maurice de Poret and Hélène de Mousin de Bernecourt</a>.</p>\n\n<p>He grew up in <a href=\"/sh/site/assets/files/5811/s-l1600.jpg\">the castle of Farcy-les-Lys</a> near Fontainebleau where very early he developed a certain gift for drawing. Surrounded by stables and aviaries, he finds motifs that will follow throughout his career as an animal artist: horses and birds. But Xavier de Poret is not just confined to animals. During the 1914-1918 war, he already made many sketches of soldiers. Subsequently, he will be known for his talent as a great worldly portraitist. In addition to those of the Belgian and Luxembourg sovereigns, he is credited with equestrian portraits of Queen Elizabeth II and her children Prince Charles and Princess Anne.</p>\n\n<p>Xavier de Poret also realizes a series of squares for the Hermès house in Paris.</p>\n\n<p>On July 27, 1920 he married Juliette d\'Oncieu de la Bâtie. They settled in Riaz, in Gruyère, where the latter owns the <a href=\"https://www.swisscastles.ch/Fribourg/riaz_plaisance.html\">château de Plaisance</a>, former residence of the bishops of Lausanne.</p>','<p>Он был сыном <a href=\"/sh/site/assets/files/5811/Xavier_de_Poret_parents_mariage.jpg\">Мориса де Поре и Элен де Мусин де Бернекур</a>. Детство провёл в замке <a href=\"/sh/site/assets/files/5811/s-l1600.jpg\">Фарси-ле-Лис</a> недалеко от Фонтенбло. Очень рано стало ясно, что у него есть талант к рисованию. Окружённый конюшнями и вольерами, он с юных лет увлёкся темами, которые останутся с ним на всю жизнь: лошадями и птицами.</p>\n\n<p>Но интересы художника не ограничивались только животными. Во время Первой мировой войны он много рисовал солдат. Позже он стал известен и как талантливый портретист. Среди его работ — портреты королевы Великобритании Елизаветы II, её детей принца Чарльза и принцессы Анны, а также монархов Бельгии и Люксембурга.</p>\n\n<p>27 июля 1920 года он женился на Джульетте Оньсие де ла Бати. После свадьбы семья поселилась в Риазе, в швейцарском Грюйере, в замке <a href=\"https://www.swisscastles.ch/Fribourg/riaz_plaisance.html\">Плезанс</a> — бывшей резиденции епископов Лозанны.</p>\n\n<p>Он много сотрудничал с Hermès.</p>\n\n<hr />','<p>Il est le fils de <a href=\"/sh/site/assets/files/5811/Xavier_de_Poret_parents_mariage.jpg\"> Maurice de Poret and Hélène de Mousin de Bernecourt</a>.</p>\n\n<p>Il grandit au château de Farcy-les-Lys près de Fontainebleau où très tôt il développe un don certain pour le dessin. Entouré d\'écuries et de volières, il trouve là des motifs qu\'il va décliner tout au long de sa carrière d\'artiste animalier : les chevaux et les oiseaux. Mais Xavier de Poret ne se cantonne pas aux animaux. Pendant la guerre de 1914-1918, il réalise déjà de nombreux croquis de soldats. Par la suite on lui connaîtra un talent reconnu de grand portraitiste mondain. Outre ceux des souverains belges et luxembourgeois, on lui doit des portraits équestres de la Reine Elisabeth II et de ses enfants le prince Charles et la princesse Anne.</p>\n\n<p>Xavier de Poret réalise également une série de carrés pour la maison Hermès à Paris : les Poulinières, les Tourterelles, les Mésanges, les Ecureuils, les Teckels, les Biches, les Bottes, les Renards, ...</p>\n\n<p>Le 27 juillet 1920 il épouse Juliette d\'Oncieu de la Bâtie. Ils s\'installent à Riaz, en Gruyère, où cette dernière est propriétaire du <a href=\"http://www.swisscastles.ch/Fribourg/riaz_plaisance.html\">château de Plaisance</a>, ancienne résidence des évêques de Lausanne.</p>',''),
(5812,'<p>Hermès\'s deputy creative director</p>\n\n<p>Raised in Paris, Barret studied design and tailoring at Paris Ecole Supérieure des Arts et Techniques de la Mode (ESMOD). She worked as an assistant at several houses, spending time in New York, Italy, and Spain before launching her own Paris-based label in 1999. Hermès\' <a href=\"/sh/h_spot/h_persons/327-pierre-alexis-dumas/\">Pierre-Alexis Dumas</a> was a longtime friend who would pop into her shop now and again with his wife, whom Barret has known since childhood.</p>\n\n<p>Once, in the early aughts, the drive by included of a job offer.<em> He asked, \"Would you love to work for Hermès?\" And I said, \"Are you sure?\" </em> explains Barret, with just the right amount of irreverent French humor needed for what was obviously a major moment in her career. <em> One of the great talents of Pierre-Alexis is that he can see what people are capable of doing. All the houses were coming to me and asking me to design the same things I was already designing for my own collection. I kept saying no. He was the only one that proposed something different.</em></p>\n\n<p>Dumas commissioned Barret to design a capsule of scarves, which she was then required to present to his father, <a href=\"/sh/h_spot/h_persons/328-jean-louis-dumas/\">Jean-Louis Dumas</a>, Hermès\' brilliant-and-intense chairman and artistic director. <em>Right before the meeting, Pierre-Alexis pulled me aside and said, \"Jean-Louis can be very tough. If he doesn\'t say a word, that means he doesn\'t like it. So I starting talking, talking, talking. Absolute silence. I figured it was over, but also realized that I had nothing to lose.</em> Barret began joking with the senior Dumas, becoming more animated as she went along. Soon enough, <em> He started laughing and said, \"I love your project.\"</em></p>','<p>Зам. креативного директора Hermès.</p>\n\n<p>Баррет изучaлa дизайн в Парижской школе искусств и моды (ESMOD). Затем она работала ассистентом в нескольких домах мод, стажировалась в Нью-Йорке, Италии и Испании, прежде чем в 1999 году открыла свою собственную студию дизайна.</p>\n\n<p><a href=\"/sh/h_spot/h_persons/327-pierre-alexis-dumas/\">Пьер-Алексис Дюма (Pierre-Alexis Dumas)</a>, арт-директор Hermès, был ее давним другом, он часто появлялся в ее магазине с женой, с которой Баррет дружила с детства.</p>\n\n<p>Вскоре последовало предложение о работе.</p>\n\n<p><em>Он спросил: \"Вы хотели бы работать на Hermès?\" И я ответила: «Ты шутишь?» </em> объясняет Баррет, с нужным количеством французского юмора, чтобы не показать, что предложение было очень важным моментом в ее карьере. <em> Одним из великих талантов Пьера-Алексиса является то, что он может видеть, что люди способны делать. Все другие дизайнеры приходили ко мне и просили меня разработать те же самые вещи, что я уже разрабатывала для своей коллекции. Я говорила «нет». Он был единственным, кто предложил что-то другое .</em></p>\n\n<p>Дюма поручил Баррет создать коллекцию шарфов, которую она должна была представить на суд <a href=\"/sh/h_spot/h_persons/328-jean-louis-dumas/\">Жан-Луи Дюма (Jean-Louis Dumas)</a>, блестящему и живому председателю и художественному руководителю Hermès. <em> Перед встречей, Пьер-Алексис отвел меня в сторону и сказал: \"Жан-Луи может быть очень суров. Если он не произносит ни слова, это значит, что ему не нравится.\" Поэтому я начала говорить, говорить, говорить. В ответ абсолютная тишина. Я подумала, что все кончено, теперь мне нечего терять и продолжала .</em> Баррет начала шутить со старшим Дюма, становясь все более оживленной. <em> Дюма засмеялся и сказал: \"Мне нравится ваш проект\"</em>.</p>','',''),
(6019,'<div class=\"Z_l5lU MMl86N zQ9jDz qvSjx3 Vq6kJx comp-krf5of9s wixui-rich-text\" id=\"comp-krf5of9s\">\n<p class=\"font_8 wixui-rich-text__text\" style=\"font-size:16px;line-height:1.3em;\">Karin Swildens was born in Holland of dutch parents, raised in Morocco, studied at the <em>Ecole Superieure des Arts Decoratifs in Paris</em> France.</p>\n\n<p class=\"font_8 wixui-rich-text__text\" style=\"font-size:16px;line-height:1.3em;\"><br />\nDesigned <span class=\"wixui-rich-text__text\" style=\"font-size:16px;\">Hermès</span> scarves, illustrated children\'s books and magazines, worked at the restoration of Le Louvre Museum paintings.</p>\n\n<p class=\"font_8 wixui-rich-text__text\" style=\"font-size:16px;line-height:1.3em;\">She came to Los Angeles and started SCULPTING in 1980.<br />\nHer sculptures were appreciated by <em>Austin Productions Inc </em>as well as <em>Collections 85 and Jaru.</em></p>\n\n<p class=\"font_8 wixui-rich-text__text\" style=\"font-size:16px;line-height:1.3em;\">To this day her designs are in the line of Artisan-House, a fine wall-sculptures company based in Burbank, California.<br />\nSwildens\' sculptures have been widely exhibited and are found in many Galleries</p>\n</div>','','',''),
(6018,'<p>Charles-Jean Hallo dit ALO.</p>\n\n<p>The son of a military man, he spent his childhood in Dijon, where he attended the <em>École des Beaux-Arts</em> in that city, followed by the <em>École des Beaux-Arts</em> in Paris.</p>\n\n<p>He studied under Charles Cottet and Jacques-Émile Blanche before specialising in etching.</p>\n\n<p>He served in the air force during the First World War as an observer-photographer.</p>','<p>Сын офицера, провел детство в Дижоне, где учился в <em>Школе изящных искусств</em> в этом городе, а затем в <em>Школе изящных искусств</em> в Париже. Потом учился у <a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%BE%D1%82%D1%82%D0%B5,_%D0%A8%D0%B0%D1%80%D0%BB%D1%8C\">Шарля Котте</a> и <a href=\"https://ru.wikipedia.org/wiki/%D0%91%D0%BB%D0%B0%D0%BD%D1%88,_%D0%96%D0%B0%D0%BA-%D0%AD%D0%BC%D0%B8%D0%BB%D1%8C\">Жака-Эмиля Бланша</a>, и специализировался на гравюре.</p>\n\n<p>Во время Первой мировой войны служил в военно-воздушных силах в качестве наблюдателя-фотографа.</p>\n\n<p><em>По мотивам ИИ</em></p>','<p>Charles-Jean Hallo dit ALO.</p>\n\n<p>Fils de militaire, il passa son enfance à Dijon, où il fréquenta l\'École des Beaux-Arts de cette ville, puis celle de Paris.</p>\n\n<p>Il étudia auprès de Charles Cottet et de Jacques-Émile Blanche avant de se spécialiser dans la gravure à l\'eau-forte.</p>\n\n<p>Durant la Première Guerre mondiale, il servit dans l\'armée de l\'air comme observateur-photographe.</p>',''),
(5813,'<p>A French art director and a fashion designer based in Paris, France. He is also creative director of <em>Objets et La Table</em> at Hermès.</p>\n\n<p>A graduate of the <em>Royal College of Art </em>and of the <em>École nationale supérieure des arts décoratifs</em>, Benoit Emery began his career as a freelancer, working as an art director for Canal+ and Louis Vuitton.</p>\n\n<p>His experience also includes stints with <em>Paco Rabanne, Kenzo, Cabane De Zucca, The Cartier Foundation, Arte and Paris Première </em>among others. In May 2000, he co-founded with Marc Nguyen Tan, the creative agency \"le cabinet.paris\"\"</p>\n\n<p>In October 2003, he set up his own company \"<em>Les Soieries Modernes</em>\" and launched his first silk scarf collection.</p>','','',''),
(5814,'<p>Her public biographical information is limited, which is typical for Hermès illustrators of her generation - the work itself is the primary record.</p>\n\n<p>She was with Hermès during the 1970s–1980s, a formative period for the house’s <em>carré</em> program. Like most Hermès designers of the era, Héron worked as an external illustrator commissioned for specific themes rather than as a public-facing fashion designer.</p>\n\n<p>Her compositions are highly detailed and story-driven, often filled with small vignettes that reward close viewing. Héron belongs to the cohort of illustrators who helped cement the <strong>artistic identity of the Hermès <em>carré</em></strong>—positioning it not merely as an accessory, but as a collectible art object. </p>\n\n<p>Her work sits comfortably alongside that of other notable Hermès illustrators like Hugo Grygkar, Joachim Metz, contributing to the house’s reputation for intellectual and illustrative rigor.</p>\n\n<p><em>With help from AI</em></p>','<p>Доступной информации о ней немного, что вполне типично для дизайнеров Hermès её поколения. В центре внимания всегда была сама работа.</p>\n\n<p>Она сотрудничала с Hermès в 1970–1980-е годы — важный, формирующий период для программы carré. Как и многие дизайнеры того времени, Héron работала как приглашённый иллюстратор, создавая рисунки под конкретные темы, а не как публичное лицо модного дома.</p>\n\n<p>Её композиции очень детализированы и построены как небольшие истории, с множеством мелких сцен, которые интересно рассматривать вблизи. Héron относится к тому поколению художников, которые помогли закрепить художественную идентичность carré Hermès — превратив его не просто в аксессуар, а в коллекционный арт-объект.</p>\n\n<p>Её работы органично смотрятся рядом с произведениями других известных иллюстраторов Hermès, таких, как Hugo Grygkar и Joachim Metz. Они все вносят вклад в репутацию дома как бренда с высоким уровнем художественной и интеллектуальной проработки.</p>\n\n<p><em>С помощью ИИ</em></p>','<p>Les informations biographiques publiques à son sujet sont limitées, ce qui est assez normal pour les illustrateurs Hermès de sa génération — c’est surtout le travail lui-même qui fait office de référence.</p>\n\n<p>Elle a travaillé avec Hermès dans les années 1970–1980, une période clé dans le développement du programme des carrés. Comme beaucoup de créateurs Hermès de cette époque, Héron intervenait en tant qu’illustratrice indépendante, sollicitée pour des thèmes précis, plutôt que comme designer exposée au grand public.</p>\n\n<p>Ses compositions sont très riches en détails et racontent de véritables histoires, avec de petites scènes qui se découvrent en regardant de près. Héron fait partie de cette génération d’illustrateurs qui ont contribué à définir l’identité artistique du carré Hermès — en le positionnant non seulement comme un accessoire, mais comme un véritable objet de collection.</p>\n\n<p>Son travail s’inscrit naturellement aux côtés de celui d’autres illustrateurs emblématiques de la maison, comme Hugo Grygkar ou Joachim Metz, et participe à la réputation d’Hermès pour la qualité intellectuelle et illustrative de ses créations.</p>\n\n<p><em>Avec l’aide de l’IA</em></p>',''),
(5815,'<p>Finding a photo of Catherine Baschet is surprisingly difficult. Hermès is famous for maintaining a high level of discretion regarding its artists, often letting the scarves themselves serve as their public identity.</p>\n\n<p>While photos of other prolific designers like Hugo Grygkar occasionally surface, Catherine Baschet remains one of the more reclusive figures in the house\'s history. No verified public portrait of her exists in major fashion archives or official Hermès publications.</p>\n\n<p>With a keen eye for detail and an innate ability to create captivating designs, Baschet has contributed to the iconic Hermès scarf collections with her masterpieces.</p>\n\n<p>Throughout her career, Catherine has created several noteworthy designs that showcase her talent and creativity. Some of her most famous scarf designs include: <em>Srinagar Tabriz Flacons</em>, <em>Qalamdan,</em> <em>Les beaux jours des bonsaï, Azulejos</em>, <em>Splendeur des maharajas</em>,  <em>Oiseaux de l’inde et de l’himalaya</em>, <em>Les petits princes</em>, <em>Splendeur des maharajas II</em>,  <em>Le fleuve sacré</em>, <em>Parures des maharajas</em>, <em>Collections impériales</em>.</p>\n\n<p>Catherine Baschet’s designs are inspired by a wide range of themes, from the grandeur of Indian Maharajas to the delicate beauty of birds found in India and the Himalayas. Her artistic approach is marked by intricate detailing, striking color combinations, and a deep understanding of the visual elements that make each design unique and appealing.</p>\n\n<p>With each scarf, Catherine Baschet tells a story and transports the wearer to a different time and place. Her ability to create these visual narratives has earned her a place among the most respected and sought-after designers in the world of Hermès scarves.</p>\n\n<p><strong><em>Inspired by ScarfSage.com</em></strong></p>','','',''),
(5816,'Madame Laurence Bourthoumieux (or Thioune, or L.T. or Toutsy),','','',''),
(5817,'<p>A naturalist and artist with acute observational skills and precision, his designs include trees, plants, animals, birds and insects.</p>\n\n<p>Many of his Hermès designs are in the large format scarves and not available in the 90cm silk twill, for instance his 1997 design “Ecume”.</p>','','<p>Diplômé de l’école des Beaux-Arts de Bourges et des métiers d’art à Paris, Antoine de Jacquelot est particulièrement connu pour ses tapisseries. Il se définit comme un peintre cartonnier.</p>\n\n<p>Il a travaillé pour Hermès et a été plusieurs fois primé.</p>\n\n<p>Antoine de Jacquelot vit au cœur de la nature et en est un observateur privilégié pour avoir incessamment \"recueilli\" plantes et animaux, afin de les traduire avec la précision d\'un naturaliste.</p>\n\n<p>Passer de la toile ou du carton à la coloquinte et à la gourde comme support de peinture est une idée survenue lors de la mise en culture de son potager : \"il fallait bien que je trouve quoi faire de toutes ces coloquintes !\" Une belle opportunité qui, depuis un an et demi, inspire l’artiste : la matière et la forme du fruit une fois séché lui dictent donc le sujet. La flore prend alors des airs de faune, se transforme en poisson ou animaux de toutes sortes avec une maîtrise parfaite du pinceau et des couleurs.</p>\n\n<p><em>Publié dans <a href=\"http://leblogdevalmer.over-blog.com/tag/compost/\">Compost</a></em></p>',''),
(5818,'<p>Alice Shirley is a British artist who has been a key collaborator with Hermès since 2012. Known for her intricate, hand-painted depictions of flora and fauna, her work for the house often focuses on wildlife conservation and mythological themes. </p>\n\n<p>She studied at <em>Central St Martins and the Royal Drawing School</em> in London, where she was \"headhunted\" by members of the Hermès family.</p>\n\n<p>Shirley\'s work intentionally excludes humans, emphasizing a wild nature that recovers best when left alone. She uses her platform to raise awareness and funds for conservation through organizations like the <em>World Land Trust </em>and the <em>International Union for Conservation of Nature.</em></p>\n\n<p><em>With a help from AI</em></p>','<p>Alice Shirley — британская художница, которая с 2012 года является ключевым партнером Hermès. Известная своими замысловатыми, расписанными вручную изображениями флоры и фауны, она часто работает для этого дома, затрагивая темы охраны дикой природы и мифологии.</p>\n\n<p>Она училась в <em>Центральном колледже искусств и дизайна</em>  и <em>Королевской школе рисунка</em> в Лондоне, где её «переманили» члены семьи Hermès.</p>\n\n<p>В своих работах Alice намеренно исключает людей, подчеркивая дикую природу, которая лучше всего восстанавливается, когда её оставляют в покое. Она использует свою известность для сбора средств на охрану природы через такие организации, как <em>Всемирный земельный фонд</em> и <em>Международный союз охраны природы.</em></p>\n\n<p><em>С помощью ИИ</em></p>','<p>Alice Shirley est une artiste britannique qui collabore étroitement avec Hermès depuis 2012.</p>\n\n<p>Connue pour ses représentations minutieuses de la faune et de la flore, peintes à la main, son travail pour la maison Hermès se concentre souvent sur la conservation de la faune sauvage et les thèmes mythologiques.</p>\n\n<p>Elle a étudié à Central Saint Martins et à la Royal Drawing School de Londres, où elle a été recrutée par des membres de la famille Hermès.</p>\n\n<p>L\'œuvre de Shirley exclut volontairement la présence humaine, mettant en valeur une nature sauvage qui se régénère mieux lorsqu\'on la laisse tranquille.</p>\n\n<p>Elle utilise sa notoriété pour sensibiliser le public et collecter des fonds pour la conservation, notamment auprès d\'organisations telles que le World Land Trust et l\'Union internationale pour la conservation de la nature (UICN).</p>\n\n<p><em>Avec l\'aide de l\'intelligence artificielle.</em></p>',''),
(5819,'<p>Hubert de Watrigant is a renowned French painter and one of the most prolific designers for Hermès, having collaborated with the fashion house regularly since 1989. </p>\n\n<p>Raised in the Landes region of France by a racehorse trainer, his work is deeply influenced by his equestrian heritage and a self-taught mastery of animal subjects. </p>\n\n<p>Beyond his work for Hermès, de Watrigant is a world-class animal painter whose works are held in the private collections of Queen Elizabeth II, the King of Morocco, and members of the Rothschild family. </p>\n\n<p>His style is often compared to Toulouse-Lautrec and Degas for its ability to capture fleeting, instinctive moments of movement. </p>\n\n<p><em>With a help from AI</em></p>','','',''),
(5820,'<p>The artistic director of Hermès. Under his direction, the firm has seen its biggest growth in decades, with sales of 4 billion euros in 2014.</p>\n\n<p>Dumas is the son of <a href=\"/sh/h_spot/h_persons/328-jean-louis-dumas/\">Jean-Louis Dumas</a>, the former CEO of the Hermès Group. His mother was Rena (née Gregoriadès) Dumas (1937–2009), the Greek-born architect who founded Rena Dumas Architecture Intérieure in 1972 in Paris. Through his father\'s lineage, he is also the great-great-great grandson of Hermès founder <a href=\"/sh/h_spot/h_persons/330-thierry-herms/\">Thierry Hermès.</a></p>\n\n<p>In 1991, Dumas received a Bachelor of Arts degree in the visual arts from Brown University in Providence, Rhode Island, US, due to his parents\' belief that an education in America would be an advantage for his future participation in the family business. His father had spent a short time in the buyer-training program of Bloomingdales department store in New York City.</p>','<p>Dumas...</p>','',''),
(5821,'<div>He was the transformative chairman and artistic director of Hermès from 1978 to 2006.</div>\n\n<div> </div>\n\n<div>A <strong>fifth-generation</strong> descendant of the founder, he is credited with evolving the brand from a traditional Parisian saddlery into a multibillion-euro global powerhouse while fiercely maintaining family control and artisanal quality.</div>\n\n<div>\n<p>Dumas oversaw a period of unprecedented growth, increasing annual sales from approximately <strong class=\"Yjhzub\">$50 million</strong> in the late 1970s to <strong class=\"Yjhzub\">$2.5 billion</strong> by 2009.<span class=\"uJ19be notranslate\"><span class=\"vKEkVd\">  </span></span><span class=\"T286Pc\">He aggressively expanded into Asian and American markets, opening flagship \"Maisons Hermès\" in cities like New York, Tokyo, and Seoul.</span></p>\n\n<p><span class=\"T286Pc\">He integrated new \"métiers\" (crafts) into the brand, including watchmaking, tableware, and jewelry. </span>Dumas was known for his \"poet and grocer\" dual identity—balancing artistic whimsy with sharp business acumen.<span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></p>\n\n<div class=\"Fsg96\">\n<div class=\"Y3BBE\"><span class=\"T286Pc\">He was married to <strong class=\"Yjhzub\">Rena Dumas</strong>, a Greek-born architect who designed more than 300 Hermès boutiques.</span></div>\n\n<p><span class=\"T286Pc\">His son, <strong><a href=\"/sh/h_spot/h_persons/327-pierre-alexis-dumas/\">Pierre-Alexis Dumas</a></strong>, became the company’s artistic director in 2005. His nephew, <strong><a href=\"/sh/h_spot/h_persons/axel-dumas/\">Axel Dumas</a></strong>, has served as executive chairman since 2013.</span></p>\n\n<p><em>With help from AI</em></p>\n</div>\n</div>','<div class=\"Y3BBE\">\n<div>Потомок основателя Hermès в пятом поколении, человек, стоявший у руля фирмы с 1978 по 2006 год, занимая пост председателя и художественного руководителя.</div>\n\n<div> </div>\n\n<div>За годы правления Дюма полностью преобразил бренд, превратив традиционную парижскую мастерскую по производству седел в глобальную империю с миллиардными оборотами.</div>\n\n<div> </div>\n</div>\n\n<div class=\"Y3BBE\">Под его руководством компания пережила невероятный рост: годовые продажи выросли примерно с 50 миллионов долларов в конце 70-х до 2,5 миллиардов к 2009 году. Он активно осваивал рынки Азии и Америки, открывая флагманские \"Maison Hermès\" в Нью-Йорке, Токио, Сеуле, добавил новые направления — часы, посуду, украшения.</div>\n\n<div class=\"Y3BBE\"> </div>\n\n<div class=\"Y3BBE\">Дюма был известен своей двойственностью, он был \"поэтом и лавочником\" одновременно: сочетал художественную фантазию с острой деловой хваткой. При этом он отчаянно ценил семейный контроль и ручное качество.</div>\n\n<div class=\"Y3BBE\"> </div>\n\n<div class=\"Y3BBE\">Он был женат на Рене Дюма, архитекторе из Греции, которая, кстати, спроектировала более 300 бутиков Hermès. Его сын, Пьер-Алексис Дюма, стал художественным директором компании в 2005 году. А племянник, Аксель Дюма, занимает пост исполнительного председателя с 2013 года.</div>\n\n<div class=\"Y3BBE\">\n<p><em>При участии ИИ</em></p>\n</div>','<p>Jean-Louis Robert Frédéric Dumas-Hermès.</p>\n\n<p>Il dirigea et transforma Hermès de 1978 à 2006. Il développa notamment la présence de cette marque à l\'étranger, en Europe, en Asie, et aux États-Unis2.</p>\n\n<p>Il passa une licence en droit et sciences économiques à Paris, en 1959, et un diplôme de sciences politiques à Sciences Po, section Ecofi, en 1960. Il fait en partie son service militaire en Algérie, pendant la guerre pour l\'indépendance de ce pays juste avant les accords d\'Evian.</p>\n\n<p>Il est l\'oncle de Axel Dumas, le fils de <a href=\"../2298-robert-dumas\">Robert Dumas</a> et le frère d\'Olivier Dumas.</p>\n\n<p>Il décéda de la maladie de Parkinson à l\'âge de 72 ans.</p>',''),
(5822,'<p><span class=\"T286Pc\">She studied at the <em class=\"eujQNb\">École Nationale Supérieure des Beaux-Arts</em> and the <em class=\"eujQNb\">École Nationale Supérieure des Arts Décoratifs</em> in Paris.</span></p>\n\n<p><span class=\"T286Pc\">Her partnership with Hermès began in 1979.</span><span class=\"T286Pc\"> Since then, she has created over 40 distinct scarf designs for the brand. </span><span class=\"T286Pc\">Known for intricate, vibrant, and often abstract compositions, her work is heavily influenced by Art Déco and Moorish carvings.</span></p>\n\n<p><span class=\"T286Pc\">A hallmark of her work is a small, stylized monkey hidden within each design — a reference to her childhood nickname, \"Little Monkey\".</span><span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></p>\n\n<p><em>With help from AI</em></p>','','',''),
(5823,'<p>Founder of Hermès.<br />\nHe was born on January 15, 1801, in Krefeld, Germany, later the city was annexed by France. The city, located on the left bank of the Rhine then annexed to France, was famous for its crafts of textile printing. In 1821, he moved to Normandy in a city renowned for the work of skins, Pont-Audemer. He enters as an apprentice at a saddler-harness maker.</p>\n\n<p>On April 17, 1828, he married Christine Pétronille Pierrart (1806-1896) which he will have a son: <a href=\"/sh/h_spot/h_persons/2308-charles-mile-herms/\">Charles-Émile</a>. Thierry Hermès moved to Paris in 1837 where he opened his first factory, rue Basse-du-Rempart (now extinct), near the church of the Madeleine .</p>\n\n<p>His activity is that of a master craftsman harnacheur saddler who designs, makes and sells harnesses and equipment for horses.</p>\n\n<p>Thierry Hermès continues to come to Pont-Audemer, in the Eure, where he will return to stay after the defeat of 1870. He died in Neuilly in 1878, on January 10th.</p>','<p>Основатель фирмы Hermès.<br />\nОн родился 15 января 1801 года в Крефельде (Krefeld), Германия (позже город был аннексирован Францией). Этот город на Рейне славился своими ремеслами текстильной печати. В 1821 году Тьерри переехал в Нормандию в город кожевенников Пон-Аудемер (Pont-Audemer), где учился шить кожаные шорты.</p>\n\n<p>17 апреля 1828 года он женился на Кристине Петронил Пьерарт (1806-1896), от которой у него родился сын <a href=\"/sh/h_spot/h_persons/2308-charles-mile-herms/\">Шарль-Эмиль</a>. В 1837 году Тьерри перебрался в Париж на улицу Басе-дю-Ремпат (ныне вымершую) возле церкви Мадлен, где открыл свой первый завод. Его деятельность - мастер шорник который проектирует, производит и продает упряжи и оборудование для лошадей.</p>\n\n<p>Тьерри продолжает приезжать в Пон-Аудемер, куда он вернется, чтобы остаться после поражения 1870 года.</p>','<p>Le fondateur de l\'entreprise Hermès.<br />\nIl est né le 15 janvier 1801, à Krefeld, en Allemagne. La ville, située sur la rive gauche du Rhin alors annexée à la France, était réputée pour son artisanat de l\'impression textile.</p>\n\n<p>En 1821, il s\'installe en Normandie dans une ville réputée pour le travail des peaux, Pont-Audemer. Il entre comme apprenti chez un artisan sellier-harnacheur.</p>\n\n<p>Le 17 avril 1828, il épouse Christine Pétronille Pierrart (1806-1896) dont il aura un fils <a href=\"/sh/h_spot/h_persons/2308-charles-mile-herms/\">Charles-Émile</a>. Thierry Hermès gagne Paris en 1837 où il ouvre sa première manufacture, rue Basse-du-Rempart (aujourd\'hui disparue), près de l\'église de la Madeleine.</p>\n\n<p>Son activité est celle d\'un maître artisan harnacheur sellier, qui conçoit, confectionne et vend des harnais et des équipements pour les chevaux.</p>\n\n<p>Thierry Hermès continue de venir à Pont-Audemer, dans l\'Eure, où il reviendra séjourner après la défaite de 1870. Il s\'éteint à Neuilly en 1878, le 10 janvier.</p>','<p>Han föddes den 15 januari 1801 i Krefeld, Tyskland. Staden, som ligger på den vänstra stranden av Rhen och sedan annexerad till Frankrike, var känd för sitt hantverk av textiltryck. År 1821 flyttade han till Normandie i en stad som är känd för skinnarbetet, Pont-Audemer. Han går in som lärling hos en sadelmästare.</p>\n\n<p>Den 17 april 1828 giftes han med Christine Pétronille Pierrart (1806-1896), som han kommer att få en son: <a href=\"/sh/h_spot/h_persons/2308-charles-mile-herms/\">Charles-Émile</a>. Thierry Hermès flyttade till Paris 1837, där han öppnade sin första fabrik, rue Basse-du-Rempart (nu utdöd), nära Madeleines kyrka. Hans verksamhet är den hos en mästare hantverkare harnacheur saddler vem designer, tillverkar och säljer sele och utrustning för hästar. Thierry Hermès fortsätter att komma till Pont-Audemer i Eure, där han kommer att återvända för att stanna efter nederlaget 1870. Han dog i Neuilly 1878, den 10 januari.</p>'),
(5824,'<p>4th Generation of the Hermès dynasty.</p>\n\n<p>Robert Dumas married to Jacqueline Hermès. His father in law <a href=\"/sh/h_spot/h_persons/2307-mile-maurice-herms/\">Émile Maurice Hermès</a> gets along with his sons in law and integrates them into the management of his Hermès company.</p>\n\n<p>Robert Dumas becomes CEO of Hermès in 1951 after the death of his father in law. He closely cooperates with his brother in law, the perfumer Jean René Guarrand.</p>\n\n<p>He never retires and is replaced by his sons <a href=\"/sh/h_spot/h_persons/328-jean-louis-dumas/\">Jean Louis Dumas</a> after his death in 1978.</p>\n\n<p>Robert Dumas and Jacqueline Hermès have 6 children (5th generation):</p>\n\n<ul>\n	<li>Philippe Dumas married to Katherine Fender</li>\n	<li>Olivier Dumas married to Michèle Martin</li>\n	<li>Catherine Dumas married to Pierre de Seynes</li>\n	<li><a href=\"/sh/h_spot/h_persons/328-jean-louis-dumas/\">Jean Louis Dumas</a> <em>... CEO</em> married to Renée Gregodires</li>\n	<li>Frederic Dumas</li>\n	<li>Thierry Dumas married to Odile Follenfant</li>\n</ul>\n\n<p> </p>\n\n<p>The couple has several grandchildren (6th generation)</p>\n\n<ul>\n	<li>Alice Dumas - Émile Dumas - Jean Dumas</li>\n	<li><a href=\"../axel-dumas/\">Axel Dumas</a> <em>... future CEO</em> - Mathieu Dumas</li>\n	<li>Corinne de Seynes - Eric de Seynes - Guillaume de Seynes - Sophie de Seynes</li>\n	<li><a href=\"/sh/h_spot/h_persons/327-pierre-alexis-dumas/\">Pierre Alexis Dumas</a> <em>... Artistic Director</em> - Sandrine Dumas</li>\n	<li>Charles Dumas - Edouard Dumas</li>\n	<li>Dorothée Dumas - Jean Christophe Dumas - Stéphane Dumas</li>\n</ul>\n\n<p> </p>','','',''),
(5825,'<p>3rd generation of the Hermès dynasty.<br />\nHe is the grandson of the company founder <a href=\"/sh/h_spot/h_persons/330-thierry-herms/\">Thierry Hermès</a>.</p>\n\n<p>His father <a href=\"/sh/h_spot/h_persons/2308-charles-mile-herms/\">Charles Émile Hermès</a> dies when he and his brother Adolphe are young children.<br />\nThe continuity of the Hermès company is preserved by their mother Christine Hermès-Pierrat</p>\n\n<p>In 1902 Émile Maurice becomes president of the Hermès company together with his brother Adolphe. The company was renamed <em>Hermès Frères</em> until 1919, the time when Adolphe left.</p>\n\n<p>In 1918 The elder brother Adolphe withdraws himself from <em>Hermès Frères</em> beeing pessimistic about the companies future. The younger one Émile Maurice is not of the same opinion, seeing in the changes new opportunities, like leather accessories for cars.</p>\n\n<p>While travelling to Canada he found a kind of zip, used to close the canvas roof of the cars. The zip inspires him to adapt the technologie to jackets which should be able to remain closed while exposed to high speed in an open automobile.</p>\n\n<p>In 1918 Émile Mauice Hermès is granted a patent for zipper that make it easier to open and close clothes.<br />\nSoon he introduced the first leather golf jacket with a zipper, and <a href=\"https://en.wikipedia.org/wiki/Edward_VIII\">Edward, Prince of Wales</a>, was among the first to buy one.</p>\n\n<p>He extended the companies activities beyond horsery. One of his inventions are the Hermès scarves.</p>','<p>3-е поколение династии Hermès, внук основателя компании <a href=\"/sh/h_spot/h_persons/330-thierry-herms/\">Thierry Hermès</a>.</p>\n\n<p>Его отец <a href=\"/sh/h_spot/h_persons/2308-charles-mile-herms/\">Charles-Émile Hermès</a> умирает, когда он и его брат Адольф были детьми.<br />\nСтабильность компании Hermès в эти годы сохраняется их матерью.</p>\n\n<p>В 1902 году Эмиль Морис становится президентом компании Hermès вместе со своим братом Адольфом. Компания переименовывается в <em>Hermès Frères</em>.</p>\n\n<p>В 1918 году старший брат Адольф уходит из <em>Hermès Frères</em>, не веря в её будущее. Émile Maurice был другого мнения, видя новые возможности производства, к примеру кожаные аксессуары для автомобилей.</p>\n\n<p>Во время поездки в Канаду он увидел застежку для закрывания полотнячых крыш автомобилей. Застежка-молния вдохновляет его на адаптацию технологии к курткам, которые должны быть в состоянии защищать водителя, оставаясь застегнутыми на высокой скорости открытых автомобилей.</p>\n\n<p>В 1918 году Эмиль Морис получил патент на молнию (zip). Вскоре он представил первую кожаную куртку для гольфа с застежкой-молнией, и <a>Эдвард, принц Уэльсский</a>, стал одним из первых, кто ее купил.</p>\n\n<p>Эмиль Морис значительно расширил профиль компании и вышел за пределы конного спорта. Одним из его изобретений являются и шарфы Hermès.</p>','<p>3ème génération de la dynastie Hermès.<br />\nIl est le petit-fils du fondateur de l\'entreprise <a href=\"/sh/h_spot/h_persons/330-thierry-herms/\">Thierry Hermès</a>.</p>\n\n<p>Son père <a href=\"/sh/h_spot/h_persons/2308-charles-mile-herms/\">Charles Émile Hermès</a> meurt quand lui et son frère Adolphe sont de jeunes enfants. La continuité de la société Hermès est préservée par leur mère Christine Hermès-Pierrat.</p>\n\n<p>En 1902, Émile Maurice devient président de la compagnie Hermès avec son frère Adolphe. La société fut rebaptisée <em>Hermès Frères</em> jusqu\'en 1919, date du départ d\'Adolphe.</p>\n\n<p>En 1918, le frère aîné Adolphe se retire de <em>Hermès Frères</em> en étant pessimiste quant à l\'avenir des entreprises. Le plus jeune Émile Maurice n\'est pas du même avis, voyant dans les changements de nouvelles opportunités, comme des accessoires en cuir pour voitures.</p>\n\n<p>En voyageant au Canada, il a trouvé une \"zip\", sorte de fermeture à glissière, utilisée pour fermer le toit en toile des voitures. Le zip l\'inspire à adapter la technologie aux vestes qui devraient pouvoir rester fermées tout en étant exposées à haute vitesse dans une automobile ouverte.</p>\n\n<p>En 1918, Émile Mauice Hermès obtient un brevet de fermeture à glissière qui facilite l\'ouverture et la fermeture des vêtements.<br />\nBientôt, il a présenté la première veste de golf en cuir avec une fermeture éclair, et <a href=\"https://en.wikipedia.org/wiki/Edward_VIII\">Edward, Prince of Wales</a>, a été parmi les premiers à en acheter un.</p>\n\n<p>Il a étendu les activités des entreprises au-delà de l\'équitation. Une de ses inventions sont les foulards Hermès.</p>',''),
(5826,'<p>2nd Generation of the Hermès dynasty.</p>\n\n<p>In 1880 - Charles-Émile takes over management of his father’s workshop and moves the store to a different location, on 24 Rue du Faubourg Saint-Honore, where it remains to this day. Here, he continues with the saddler artisan and focuses on international retail sales with lines catering to the elite of Europe, Russia, North Africa, Asia, and the Americas.</p>','<p>2-е поколение династии Hermès.</p>','<p>2ème génération de la dynastie Hermès.</p>\n\n<p>Fils de <a href=\"../330-thierry-herms/\">Thierry Hermès</a>, il installe Hermès au 24 rue du Faubourg-Saint-Honoré1. Il diversifie sa production vers la fabrication d\'articles d\'équitation, de couvertures de cheval, de casaques de courses en soie.</p>\n\n<p>Il est le père de _AO_av_id=2307;Émile Maurice Hermès_AC_.</p>',''),
(5827,'','','',''),
(5828,'','','',''),
(5829,'<div>\n<p>Geneva’s flea market is a meeting of the region’s bric-à-brac dealers.</p>\n\n<p>Each Wednesday and Saturday, and every first Sunday of the month since 1970, the Plaine de Plainpalais teems with stalls and people. This is one of Switzerland’s largest flea markets. Bargain hunters and collectors find all sorts of items: bric-à-brac, books, clothes, jewellery, antiques and decorative items. Spectators and collectors come across the most unbelievable objects, and who knows, somewhere, sometimes, a vintage item might be discovered.</p>\n</div>','<p>Женевский блошиный рынок, место встречи торговцев антиквариатом и всякими безделушками. Это один из крупнейших блошиных рынков Швейцарии.</p>\n\n<p>С 1970 года каждую среду и субботу, Plaine de Plainpalais изобилует киосками и людьми. Охотники за скидками и коллекционеры найдут самые разные предметы: книги, одежду, украшения, предметы декора... Здесь попадаются самые невероятные вещи, включая и carrés Hermès.</p>','',''),
(5830,'','','','<p>Bukowskis grundades 1870 av den polske adelsmannen <a href=\"https://sv.wikipedia.org/wiki/Henryk_Bukowski\" title=\"Henryk Bukowski\">Henryk Bukowski</a>.</p>\n\n<p>Den första större försäljningen ägde rum 1873 och omfattade en av kung <a href=\"https://sv.wikipedia.org/wiki/Karl_XV\" title=\"Karl XV\">Karl XV</a>:s samlingar. En av auktionshusets mest spektakulära auktioner under det tidiga 1900-talets hölls efter storsamlaren <a href=\"https://sv.wikipedia.org/wiki/Christian_Hammer\" title=\"Christian Hammer\">Christian Hammer</a>, då delar av hans samling såldes på fem auktioner. Bland köparna fanns grevinnan <a href=\"https://sv.wikipedia.org/wiki/Wilhelmina_von_Hallwyl\" title=\"Wilhelmina von Hallwyl\">Wilhelmina von Hallwyl</a>, skapare av <a href=\"https://sv.wikipedia.org/wiki/Hallwylska_museet\" title=\"Hallwylska museet\">Hallwylska museet</a>. Under 1920-talet hade Bukowskis ensamrätt på försäljningen av <a href=\"https://sv.wikipedia.org/wiki/Anders_Zorn\" title=\"Anders Zorn\">Anders Zorns</a> etsningar<em>, </em>vilka även under lång tid fungerade som säkerhet för banklån</p>'),
(5831,'','','',''),
(5832,'<p>Stockholms Auktionsverk is the world\'s oldest auction house, with the most branches in Sweden and an international presence in both Germany and Finland.</p>\n\n<p>It was founded in 1674 and can be considered a stock exchange floor for Swedish and international cultural history.</p>\n\n<p>From autumn 2025, Uppsala Auktionskammare – one of the Nordic countries\' most high-profile and successful auction houses – will be fully integrated into Stockholms Auktionsverk.</p>','<p>Stockholms Auktionsverk — старейший в мире аукционный дом с наибольшим количеством филиалов в Швеции и международным присутствием в Германии и Финляндии.</p>\n\n<p>Он был основан в 1674 году и может считаться биржевой площадкой для шведской и мировой культурной истории.</p>\n\n<p>С осени 2025 года Uppsala Auktionskammare — один из самых известных и успешных аукционных домов Северной Европы — полностью вошел в состав Stockholms Auktionsverk.</p>','','<p>Stockholms Auktionsverk är världens äldsta auktionshus, med flest filialer i Sverige och internationell närvaro i både Tyskland och Finland.</p>\n\n<p>Det grundades 1674 och kan betraktas som ett börsgolv för svensk och internationell kulturhistoria.</p>\n\n<p>Från hösten 2025 är Uppsala Auktionskammare – ett av Nordens mest profilstarka och framgångsrika auktionshus – helt integrerad i Stockholms Auktionsverk.</p>'),
(5833,'','','',''),
(5834,'','','',''),
(5835,'<p>The founder of <em> Hermès International S.A. </em>, or <em> Hermès of Paris </em> or simply <em> Hermès </em>, is <a href=\"/sh/h_spot/h_persons/330-thierry-herms/\">Thierry Hermès</a>.</p>\n\n<p>He founded the company in 1837 as a harness workshop in Paris. Originally, his intent was to serve the needs of European noblemen by providing saddles, bridles and other leather riding gear. In the early 20th century, Thierry’s son Charles-Émile Hermès moved the company’s shop to 24 Rue Du Faubourg Saint-Honore in Paris, where it remains to this very day and is the company’s global headquarters.</p>\n\n<p>Hermès typically introduces 12 designs twice a year, of which half are brand new designs and half are reissues of previously offered scarves.</p>\n\n<p>New designs have centered around an annual theme since 1987.</p>\n\n<p>Hermès has a reputation of identifying talented artists who are not well known to create artwork for its scarves.</p>','<p>Основателем <em> Hermès International S.A. </em> или <em> Hermès Paris </em> или просто <em> Hermès </em> является <a href=\"/sh/h_spot/h_persons/330-thierry-herms/\">Thierry Hermès</a>.</p>\n\n<p>Он основал компанию в 1837 году как мастерскую по изготовлению конской упряжи в Париже. Первоначально его цель состояла в том, чтобы удовлетворить потребности европейских дворян, предоставляя седла, уздечки и другие кожаные изделия для верховой езды. В начале 20-го века сын Тьерри Шарль-Эмиль (Charles-Émile) перевел магазин в новое здание по адресу 24 Rue Du Faubourg Saint-Honore в Париже, где Hermès остается по сей день. Теперь это штаб-квартира компании.</p>\n\n<p>Hermès обычно вводит 12 новых проектов два раза в год, из которых половина - совершенно новые создания, а половина - переиздание ранее выпущенных платков.</p>\n\n<p>Новые проекты были сосредоточены вокруг ежегодной темы с 1987 года.</p>\n\n<p><em>Шарф Hermès продается по всему миру примерно каждые 25 секунд.</em></p>','<p>Le fondateur de <em> Hermès International S.A. </em>, ou <em> Hermès de Paris </em> ou simplement <em> Hermès </em>, est <a href=\"/sh/h_spot/h_persons/330-thierry-herms/\">Thierry Hermès</a>.</p>\n\n<p>Il fonde l\'entreprise en 1837 comme atelier de sellerie à Paris. À l\'origine, son intention était de servir les besoins des nobles européens en fournissant des selles, des brides et d\'autres équipements de cuir. Au début du XXe siècle, le fils de Thierry, Charles-Émile Hermès, déménage la boutique de l\'entreprise au 24, rue du Faubourg Saint-Honoré à Paris, où elle demeure encore aujourd\'hui le siège mondial de l\'entreprise.</p>\n\n<p>Hermès introduit généralement 12 modèles deux fois par an, dont la moitié sont de nouveaux modèles et la moitié sont des rééditions de foulards précédemment offerts.</p>\n\n<p>Depuis 1987, de nouveaux dessins sont centrés sur un thème annuel.</p>\n\n<p>Hermès a la réputation d\'identifier des artistes talentueux qui ne sont pas connus pour créer des œuvres d\'art pour ses foulards.</p>','<p>Hermès grundare är <a href=\"/sh/h_spot/h_persons/330-thierry-herms/\">Thierry Hermès</a>.</p>'),
(5836,'<p>Salvatore Ferragamo (June 5, 1898, Bonito, Italy – August 7, 1960, Florence) was an Italian shoemaker known for his handcrafted shoes. In the 1920s, he worked in Hollywood, returning to Italy and founding his own company in Florence.</p>\n\n<p>His unconventional approach to footwear gave rise to such innovations as the wedge heel and the famous square heel.</p>\n\n<p>The company is currently owned by the Ferragamo family, which (as of November 2006) includes Salvatore\'s widow, Wanda, their five children, 23 grandchildren, and other relatives. However, the company has a rule that only three family members can work at a time.</p>','<p><strong>Salvatore Ferragamo</strong> (5 июня 1898, Бонито, Италия — 7 августа 1960, Флоренция) — итальянский обувщик, известный своей обувью ручной работы. В 20-х годах работал в Голливуде, вернувшись в Италию, основал во Флоренции собственную компанию.</p>\n\n<p>Его неординарный подход к обуви породил такие новшества, как клиновидный и знаменитый квадратный каблуки.</p>\n\n<p>Сейчас компания принадлежит семье Феррагамо, которая включает в себя (на ноябрь 2006 года) вдову Сальваторе Ванду, их пять детей, 23 внуков и других родственников. При этом в компании действует правило, что одновременно в ней могут работать только 3 члена семьи.</p>','','<p><strong>Salvatore Ferragamo</strong>, född 5 juni 1898, död 7 augusti 1960, var en italiensk skodesigner.</p>\n\n<p>Ferragamo experimenterade med form och material. Han gjorde sulor av trä eller kort och introducerade kilklacken och platåsulan, Han var populär som skodesigner åt filmstjärnor i Hollywood på 1920-talet.</p>\n\n<h2> </h2>'),
(5837,'<p>Tiffany &amp; Co. was founded in 1837 by the jeweler <a href=\"https://en.wikipedia.org/wiki/Charles_Lewis_Tiffany\" title=\"Charles Lewis Tiffany\">Charles Lewis Tiffany</a> and became famous in the early 20th century under the artistic direction of his son <a href=\"https://en.wikipedia.org/wiki/Louis_Comfort_Tiffany\" title=\"Louis Comfort Tiffany\">Louis Comfort Tiffany</a>. The company operates retail outlets in the Americas, Asia-Pacific, Japan, Europe and the United Arab Emirates.</p>\n\n<p>In 2018, Tiffany had 93 stores in the US and 321 stores worldwide; net sales totaled US$4.44 billion.</p>\n\n<p> </p>','<p><strong>Tiffany &amp; Co. </strong>— ювелирная транснациональная компания, основанная в 1837 году <a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D0%B8%D1%84%D1%84%D0%B0%D0%BD%D0%B8,_%D0%A7%D0%B0%D1%80%D0%BB%D1%8C%D0%B7_%D0%9B%D1%8C%D1%8E%D0%B8%D1%81\" title=\"Тиффани, Чарльз Льюис\">Чарльзом Льюисом Тиффани</a> и Джоном Ф. Янгом.</p>\n\n<p>Фирменный бирюзовый цвет, присутствующий в корпоративном стиле компании, является зарегистрированной торговой маркой.</p>\n\n<p>Компания Tiffany &amp; Co. продаёт ювелирные изделия, серебро, фарфор, хрусталь, канцелярские принадлежности, парфюмерию, украшения, аксессуары, а также некоторые изделия из кожи. Компания славится своими предметами роскоши, особенно известны её ювелирные изделия с бриллиантами.</p>\n\n<p>Tiffany &amp; Co. позиционирует себя в качестве арбитра вкуса и стиля. В 2018 году компании принадлежало 93 магазина в США и 321 по всему миру.</p>','<p><strong>Tiffany &amp; Co.</strong> est une entreprise américaine de joaillerie et d\'art de la table, fondée par <a href=\"https://fr.wikipedia.org/wiki/Charles_Lewis_Tiffany\" title=\"Charles Lewis Tiffany\">Charles Lewis Tiffany</a> (père de <a href=\"https://fr.wikipedia.org/wiki/Louis_Comfort_Tiffany\" title=\"Louis Comfort Tiffany\">Louis Comfort Tiffany</a>) et John B. Young le 18 septembre 1837 dans Manhattan à New York.</p>','<p><strong>Tiffany &amp; Co.</strong> är ett amerikanskt juvelerarföretag som har ungefär 200 butiker runt om i världen. Företagets aktier är börsnoterade på <a href=\"https://sv.wikipedia.org/wiki/NYSE\" title=\"NYSE\">NYSE</a>.</p>'),
(5838,'<p>Born in 1883, Nina Ricci opened her haute couture house in 1932. She designed gowns while her son Robert Ricci managed the business and finances. She worked with the fabrics directly on the mannequin to ensure they had shape once they were finished.</p>\n\n<p>Nina Ricci designs soon became known for the refined, romantic, always feminine feeling Maria adds to all of her collections.</p>','<p>Французский дом высокой моды, основанный в 1932 году в Париже модельером Ниной Риччи (наст. имя Мария-Аделаида Нейи; 1883—1970) по совету и при поддержке её сына, Робера Риччи (1905—1988).</p>\n\n<p>Начиная с 1998 года принадлежит испанской корпорации Puig.</p>','<p>Nina Ricci est une maison de mode fondée par Maria \"Nina\" Ricci et son fils Robert à Paris en 1932 et appartenant au groupe espagnol de beauté et de mode Puig depuis 1998.</p>','<p>År 2003 tog Lars Nilsson över Riccias hus med rave recensioner från kritiker. Medan hans roll också skulle innebära att skapa kreativ inverkan på affärens skönhetssida, var hans primära uppgift att injicera en dos av spänning, ungdom och energi i de något sovande mode- och tillbehörsledningarna. Han gjorde en plötslig omformning i början av 2006, och sedan i september meddelade att Brysselfödd formgivare Olivier Deskens av Rochas skulle ta över rollen som etikettledare.</p>'),
(5839,'<p>Baume &amp; Mercier was founded as \"Frères Baume\" in 1830 by brothers Louis-Victor and Célestin Baume in <a href=\"https://en.wikipedia.org/wiki/Les_Bois\" title=\"Les Bois\">Les Bois</a>, a village in the Swiss Jura.</p>\n\n<p>The Swiss watch manufacturer expanded in London in 1851 under the name \"Baume Brothers\". By the late 19th century, the company had an established international reputation, and its timepieces had set accuracy records and won a number of timekeeping competitions.</p>\n\n<p>With an average selling price of between US$2,000 and US$5,000, Baume &amp; Mercier watches are in the mid-range luxury watch market.</p>','','',''),
(5840,'<p><strong>Lanvin</strong> is a French multinational high fashion house, which was founded by <a href=\"https://en.wikipedia.org/wiki/Jeanne_Lanvin\" title=\"Jeanne Lanvin\">Jeanne Lanvin</a> in 1889.</p>\n\n<p>It is the third oldest French fashion house still in operation.</p>','','<p><strong>Lanvin</strong> est une maison de couture française créée en 1889 par <a href=\"https://fr.wikipedia.org/wiki/Jeanne_Lanvin\" title=\"Jeanne Lanvin\">Jeanne Lanvin</a>.</p>\n\n<p>Elle est la plus ancienne maison de couture française encore en activité.</p>','<p><strong>Lanvin</strong> är ett franskt modehut grundat av <a href=\"https://sv.wikipedia.org/w/index.php?title=Jeanne_Lanvin&amp;action=edit&amp;redlink=1\" title=\"Jeanne Lanvin [inte skriven än]\">Jeanne Lanvin</a> år 1889.</p>\n\n<p>Hon öppnade modehuset i Paris 1889 och under hela 1900-talet hörde det till de ledande, särskilt på 1920-talet med folkdräktsinspirerade kläder. Åren 1950–1963 leddes huset av <a href=\"https://sv.wikipedia.org/wiki/Antonio_Castillo\" title=\"Antonio Castillo\">Antonio Castillo</a> och hette då Lanvin-Castillo.</p>\n\n<p><a href=\"https://sv.wikipedia.org/w/index.php?title=Alber_Elbaz&amp;action=edit&amp;redlink=1\" title=\"Alber Elbaz [inte skriven än]\">Alber Elbaz</a> och <a href=\"https://sv.wikipedia.org/w/index.php?title=Lucas_Ossendrijver&amp;action=edit&amp;redlink=1\" title=\"Lucas Ossendrijver [inte skriven än]\">Lucas Ossendrijver</a> på Lanvin har under hösten 2010 ett designersamarbete med <a href=\"https://sv.wikipedia.org/wiki/H%26M\" title=\"H&amp;M\">H&amp;M</a>.</p>'),
(5841,'<p>French couturier, born Granville, France.1905.</p>\n\n<p>Unknown on February 11, 1947, he was famous on the 12th. He had just launched the «New Look».</p>\n\n<p><em>\"The dresses are my dreams\"</em>, wrote Christian Dior, <em>\"but the chimaeras which have passed from the realm of dreams to that of objects intended to be worn\".</em><br />\nChristian Dior\'s chimeras carried him to the pinnacle.</p>\n\n<p>Died in Montecatini, Italy, 1957</p>\n\n<p> </p>','<p>Christian Dior </p>','<p>Inconnu le 11 février 1947, il était célèbre le 12. Il venait de lancer le «New Look».</p>\n\n<p><em>\"Les robes sont mes chimères\"</em>, écrivait Christian Dior, \"<em>mais des chimè tres apprivoisées qui sont passées du royaume des rêves jusqu\'à celui des objets destinés à être portés</em>».<br />\nLes chimères de Christian Dior l\'ont porté au pinacle.</p>\n\n<p> </p>',''),
(5842,'<p>A few items from Tsybin family collection</p>','<p>Коллекция Александра и Екатерины Цыбиных насчитывает более 700 уникальных дизайнов платков и входит в тройку крупнейших коллекций в мире.</p>\n\n<p>Недавно во Всероссийском музее декоративно-прикладного и народного искусства в Москве прошла выставка «Шелковый лабиринт» из сотни экспонатов коллекции Цыбиных. Она была приурочена к 80-летию выпуска первого платка Hermès.</p>\n\n<p>Несколько объектов с этой выставки представлены ниже.</p>','',''),
(5843,'','','',''),
(5844,'<p>My first carré Hermès</p>','<p>Мой первый платок Hermès</p>','<p>Mon premier carré Hermès</p>','<p>Min första Carré Hermès</p>'),
(5845,'','','',''),
(5846,'','<p>Первый платок (каре), выпущенный Hermès. Много раз переиздавался</p>','<p>Le mouchoir imprimé, comme accessoire de mode féminine indispensable d’une l’époque, apparaît au XIXe siècle vers 1867.</p>\n\n<p>Ce mouchoir, en se développant se rapprochera du foulard, pour devenir également masculin en se transformant en \"mouchoirs de cou\". Les soldats d’alors sont dotés de mouchoirs imprimés sur lesquels on trouve des motifs militaires, voir des instructions illustrées, pour les combattants analphabètes.</p>\n\n<p>Durant le début de la Première Guerre mondiale, les motifs imprimés sur le mouchoir de cou changeront, y compris pour les femmes où ceux-ci prennent une inspiration militaire ou tout du moins masculine.</p>\n\n<p>Alors que les manuels d’instruction militaire sont rendus obligatoires vers 1937, les soldats étant censés savoir lire, Hermès va s’inspirer de cette tradition. Tout juste un siècle après la création de la société par Thierry Hermès, Robert Dumas, directeur d’Hermès, réalise en 1937 le premier carré avec le nom de \"Jeu des omnibus et Dames blanches\" inspiré d’une sorte de jeu de Paris très populaire à l’époque.</p>',''),
(5847,'<h3><em>From AI:</em></h3>\n\n<p>\"Les Folies Du Ciel\" celebrates the whimsical origins of aviation and man\'s early experiments with flights.</p>\n\n<p>It features a playful collection of historical hot air balloons, airships (<em class=\"eujQNb\">montgolfières</em>), and imaginary flying machines with flapping pennants like a dove.</p>\n\n<p>Here<em><strong> </strong><span class=\"T286Pc\"><strong class=\"Yjhzub\">Paz Universal:</strong> An imaginary airship shaped like a dove, based on a design from Spain circa 1880.</span></em></p>\n\n<p>Here <em><strong>Montgolfière</strong></em>: A depiction of the massive balloon that carried seven passengers over Lyons in 1784. Known for its delicate and ethereal detail, the design often features vibrant borders and a central field crowded with intricate aeronautical illustration</p>\n\n<h3><em>From The Hermès Spring-Summer 1994 Seasonal Scarf Booklet:</em></h3>\n\n<p>Madness on the part of the aeronauts who risked their lives, and mad expenditures on the part of the subscribers and spectators who financed such exploits.</p>\n\n<p>On November 21st, 1783, Etienne de Montgolfier\'s aerostat flew over Paris for 25 minutes.</p>\n\n<p>Alas, the balloons on this scarf did not all experience such celestial glory. Many remained at the project stage and are now among the archives preserved in the terrestrial silence of <a href=\"https://www.musee-armee.fr/en/home.html\">Musée des Invalides</a>.</p>\n\n<p> </p>','<h3><em>Навеяно ИИ:</em></h3>\n\n<p>«Les Folies Du Ciel» - это о причудливых истоках авиации. Здесь представлена ​​игривая коллекция реальных воздушных шаров (монгольфьеров) и воображаемых летательных аппаратов.</p>\n\n<p>Здесь «Paz Universal», воображаемый дирижабль в форме голубя по испанскому эскизу примерно 1880 года.</p>\n\n<p>Здесь «Montgolfière», огромный воздушный шар, который в 1784 году поднял семь пассажиров над Лионом.</p>\n\n<p>Дизайн привлекает своей изящной и воздушной детализацией, яркими рамками и центральным полем, заполненным замысловатыми аэронавигационными штучками.</p>\n\n<h3><em>Из буклета Hermès Весна-Лето 1994:</em></h3>\n\n<p>Безумие со стороны воздухоплавателей, рисковавших жизнью, и безумные траты со стороны подписчиков и зрителей, финансировавших такие подвиги.</p>\n\n<p>21 ноября 1783 года аэростат Этьена де Монгольфье пролетел над Парижем 25 минут.</p>\n\n<p>Увы, не все воздушные шары на этом платке испытали такую ​​небесную славу. Многие из них остались на стадии проекта и теперь хранятся в архивах, находящихся в земной тишине <a href=\"https://www.musee-armee.fr/en/home.html\">Musée des Invalides</a>.</p>\n\n<p> </p>','<h3><em>De l\'IA :</em></h3>\n\n<p>« Les Folies du Ciel » célèbre les origines fantaisistes de l\'aviation et les premières expériences de vol de l\'homme.</p>\n\n<p>L\'exposition présente une collection ludique de montgolfières historiques, de dirigeables (<em class=\"eujQNb\">montgolfières</em>) et de machines volantes imaginaires aux fanions flottants, évoquant une colombe.</p>\n\n<p>Ici, <em><span class=\"T286Pc\"><strong class=\"Yjhzub\">Paz Universal :</strong> Un dirigeable imaginaire en forme de colombe, inspiré d\'un modèle espagnol datant d\'environ 1880.</span></em></p>\n\n<p>Ici, <em><strong>Montgolfière</strong></em> : Une représentation de l\'immense ballon qui transporta sept passagers au-dessus de Lyon en 1784. Avec ses détails délicats et aériens, le motif présente souvent des bordures éclatantes et un champ central richement orné d\'illustrations aéronautiques complexes.</p>\n\n<h3><em>Extrait du livret des carrés Hermès Printemps-Été 1994 :</em></h3>\n\n<p>Folie des aéronautes qui risquaient leur vie, et dépenses folles des souscripteurs et spectateurs qui finançaient ces exploits.</p>\n\n<p>Le 21 novembre 1783, l\'aérostat d\'Étienne de Montgolfier survola Paris pendant 25 minutes.</p>\n\n<p>Hélas, tous les ballons représentés sur ce carré n\'ont pas connu une telle gloire céleste. Nombre d\'entre elles sont restées au stade de projet et font désormais partie des archives conservées dans le silence terrestre du <a href=\"https://www.musee-armee.fr/en/home.html\">Musée des Invalides</a>.</p>\n\n<p> </p>',''),
(5848,'','','',''),
(5849,'<p>\"Les Voitures à Transformation\" désigne des carrosses hippomobiles du XIXe siècle, souvent des calèches ou coupés, qui étaient conçus pour être transformables afin de s\'adapter à différents usages ou saisons. Ces véhicules ingénieux et élégants sont l\'objet d\'un motif de design célèbre de la maison.</p>\n\n<p>Les voitures à transformation étaient à la pointe de la technologie pour leur époque, offrant des innovations comme des toits ouvrants ou des glaces actionnées par des systèmes ingénieux. Elles se caractérisaient par leur grande élégance, avec des détails comme le cannage, et étaient souvent associées à des promenades raffinées.</p>\n\n<p><em>Avec l’aide de IA</em></p>\n\n<h3><em>From The Hermès Fall-Winter 2017/18 Seasonal Scarf Booklet:<br />\nPanorama universel de la haute carrosserie et sellerie, Exposition universelle de Londres en 1851, par Guillon.</em></h3>\n\n<p>This composition is inspired by a grandly named volume in the mile Hermes collection. In the mid 19th century. French and international carriage designs were particularly dynamic and inventive, combining aesthetic appeal and technical innovation. At the London World\'s Fair of 1851, for example, a Paris workshop presented a modular carriage, and a coupé whose protective rain-hood could be raised or lowered at the press of a button. Convertible carriages were in vogue in France at the time, as evidenced by the ancestors of the soft-top car seen here, surrounding a central motif inspired by a caned panel, an effect often used at the time to decorate the body of the carriage.</p>','<h3><em>Навеяно ИИ</em></h3>\n\n<p><strong>Трансформирующиеся экипажи</strong> — это конные повозки XIX века, чаще всего кареты или купе, которые можно было перестраивать под разные нужды или времена года. </p>\n\n<p>Для своего времени эти изящные и умные конструкции были очень продвинутыми — с открывающимися крышами и стёклами, которые двигались с помощью хитрых механизмов.</p>\n\n<p>Они отличались утончённым внешним видом, с деталями вроде плетёных вставок, и как правило использовались для красивых прогулок.</p>\n\n<h3> </h3>\n\n<h3><em>Из буклета осенне-зимней коллекции шарфов Hermès 2017/18:</em></h3>\n\n<p>Композиция платка вдохновлена роскошными экипажaми из коллекции Hermès</p>\n\n<p>В середине XIX века французские и международные конструкции карет были особенно динамичными и изобретательными, сочетая эстетическую привлекательность и технические инновации.</p>\n\n<p>Например, на Всемирной выставке в Лондоне 1851 года парижская мастерская представила модульную карету и купе, защитный дождевой тент которого можно было поднимать или опускать нажатием кнопки.</p>\n\n<p>В то время во Франции были в моде кабриолеты, о чем свидетельствует представленный здесь автомобиль с мягкой крышей, центральная деталь которого — плетеная корзина, использовавшаяся для украшения кузовов карет.</p>','<div>\"Les Voitures à Transformation\" désigne des <strong class=\"Yjhzub\">carrosses hippomobiles du XIXe siècle, souvent des calèches ou coupés, qui étaient conçus pour être transformables</strong> afin de s\'adapter à différents usages ou saisons. Ces véhicules ingénieux et élégants sont l\'objet d\'un motif de design célèbre de la maison</div>\n\n<div class=\"Y3BBE\"> </div>\n\n<div class=\"Y3BBE\"><em>Avec l’aide de ChatGPT</em></div>\n\n<p> </p>',''),
(6335,'<p>This scarf was sold by Kaplans Auktioner  as <em>\"Voyage en Étoffes\", </em></p>','<p>Случилось так, что <a class=\"uk-text-bold\" href=\"https://www.kaplans.se/en/auktioner/4171/vara/1883715\">Kaplans Auktioner</a> перепутал лоты и <a href=\"https://www.kaplans.se/en/auktioner/4171/vara/1883715\">продал</a> <em>Bolduc au carre, Caty Latham</em> вместо объявленного <em>Voyage en Étoffes, Annie Faivre</em>. Неприятно, но делать нечего, заметили это слишком поздно...</p>','',''),
(5850,'<p>The carré published in 1957, remains one of greatest successes.</p>\n\n<p>Its composition resumes and assembles various pieces of eighteenth and nineteenth century harness, which are part of treasures from the Hermès collection.</p>\n\n<p>It is reassuring, it is not a question of restraining anyone.</p>','<p>«Carré», изданный в 1957 году, остаётся одним из самых больших успехов Hermès.</p>\n\n<p>В его композицию входят различные предметы сбруи XVIII и XIX веков, входящие в сокровищницу коллекции Hermès.</p>\n\n<p>Эта картина успокаивает...</p>','<p>Le carré paru en 1957, il reste un de nos plus grands succès.</p>\n\n<p>Sa composition reprend et assemble diverses pièces de harnachement des XVIIIe et XIXe siècles, qui font partie des trésors de la collection Hermès.</p>\n\n<p>Qu\'on se rassure, il ne s\'agit de brider personne.</p>',''),
(5851,'','<p><em>Grand Cortège à Moscou</em> передаёт атмосферу праздничного шествия старой Москвы:  всадники в нарядных мундирах, блестящие кони, движущиеся в ритме, и неповторимая атмосфера города с глубокими традициями.</p>\n\n<p>Дизайн вдохновлён работой художника <strong>Константина Аполлоновича Савицкого (1859–1935)</strong>, известного своими историческими и жанровыми полотнами. Внимание Савицкого к деталям и его умение оживлять торжественные сцены ощущаются в композиции платка, где величие и движение картины переданы в языке шелка.</p>\n\n<p>Сюжет кажется праздничным и динамичным. Детально прорисованные костюмы, сияющие упряжи и гармония движений напоминают о красоте императорских церемоний и тепле культурной памяти. <em>Grand Cortège à Moscou</em> — это окно в мир музыки, цвета и радости, увиденный глазами художника и Hermès-дизайнера.</p>','',''),
(5852,'','','',''),
(5853,'','','',''),
(5854,'','','',''),
(5855,'','','',''),
(5856,'','','',''),
(5857,'','','',''),
(5858,'','','',''),
(5859,'','','',''),
(5863,'<div>Jan van Eyck (c. 1390–1441) was a Flemish painter and a leading figure of the Northern </div>\n\n<div class=\"otQkpb\"> </div>\n\n<div class=\"otQkpb\"><span class=\"T286Pc\">While he did not invent oil paint, he perfected the technique by using multiple translucent glazes to create extraordinary depth, light effects, and intricate textures.</span></div>\n\n<p><span class=\"T286Pc\">He served as a court painter and diplomat for <strong class=\"Yjhzub\">Philip the Good</strong>, Duke of Burgundy, and even undertook secret diplomatic missions to \"faraway lands\".</span></p>\n\n<p><span class=\"T286Pc\">His masterpieces include the <strong class=\"Yjhzub\">Ghent Altarpiece</strong> (completed with his brother Hubert in 1432) and the <strong class=\"Yjhzub\">Arnolfini Portrait</strong> (1434), which is famous for its complex symbolism and the inclusion of a convex mirror reflecting the artist.</span></p>\n\n<p><span class=\"T286Pc\">He often signed his works with the personal motto \"<em class=\"eujQNb\">Als Ich Kan</em>\" (\"As best I can\"), a pun on his name.</span><span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></p>','<p><span class=\"T286Pc\">Ян ван Эйк считается одним из величайших художников XV века, который принес в искусство невероятный натурализм и точность деталей.</span></p>\n\n<p><span class=\"T286Pc\">Долгое время его ошибочно считали изобретателем масляных красок; на самом деле он довел эту технику до совершенства, накладывая тончайшие слои краски (лессировки) для передачи игры света.</span></p>\n\n<p><span class=\"T286Pc\">К его самым известным работам относятся <strong class=\"Yjhzub\">Гентский алтарь</strong> (одно из самых почитаемых творений в мире) и <strong class=\"Yjhzub\">«Портрет четы Арнольфини»</strong>, ставший символом мастерства в использовании перспективы и символизма.</span></p>\n\n<p><span class=\"T286Pc\">Он был не только художником, но и доверенным лицом герцога Бургундского <strong class=\"Yjhzub\">Филиппа Доброго</strong>, выполняя для него важные дипломатические поручения.</span><span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></p>','',''),
(5866,'<p>Valentin de Boulogne was a French painter. He is also known as Le Valentin, his real name was Jean Valentin.</p>\n\n<p>Later in life, Valentin went to Rome to study. In Rome, he was under the influence of Michelangelo Merisi da Caravaggio and Bartolomeo Manfredi. Valentin\'s teacher was Simon Vouet.</p>','<p>Xудожник эпохи барокко, представитель караваджизма.</p>\n\n<p>Подобно Караваджо, Валантен не был способен ни на какую идеализацию, признавал только живопись с натуры и брал себе в модели простых людей.</p>\n\n<p>Итальянцы считают Валантена лучшим последователем Караваджо и причисляют его к художникам Римской школы.</p>\n\n<p>Французы тоже причисляют Валантена к своим художникам.</p>\n\n<p>В Лувре хранятся 11 его картин, в Версале можно увидеть серию его работ, купленную королем Солнце в 1670 г. Картины Валантена в Риме, Флоренции, Дрездене и т. д. и даже в Санкт-Петербурге, в Эрмитаже.</p>\n\n<p>Утверждают, что Валантен умер от купания в холодных водах Фонтана-дель-Тритон на площади Барберини в Риме, после крепкой попойки.</p>','<p>Bien que le Caravage et Manfredi aient influencé le style et les thèmes devenus communs dans l\'œuvre de Valentin, celui-ci a également étudié sous Simon Vouet, considéré comme un peintre de premier plan par ses contemporains, et dont les premières œuvres présentent des influences caravagesques. Valentin a réussi avec un type de composition inventé par le Caravage dans lequel diseuses de bonne aventure, buveurs ou joueurs sont regroupés autour d’une table. Il reprend à son compte un réalisme dramatique, la tension suscitée par le clair-obscur et des thèmes novateurs tirés du quotidien, mais il les transfigure par une touche inédite à la fois d’introspection et de mélancolie ainsi qu’une sensibilité à la couleur d’inspiration néo-vénitienne qui tempèrent la violence des clair-obscur (David et Goliath, Musée Thyssen-Bornemisza) et parvient ainsi à les transfigurer. Il va parvenir ainsi à répondre aux critiques formulées à l’encontre de Caravage.</p>\n\n<p>Entre les années 1610 et 1620, il choisit de peindre des sujets du quotidien comme le font Ribera, Cecco del Caravaggio et Manfredi, mais il choisit ses modèles auprès de types du peuple romain, ce qui est nouveau : joueurs de cartes, tricheurs, scènes de tavernes, chiromancie. Les œuvres de cette période, caractérisées par des cadrages resserrés, des figures sculpturales et un travail du clair-obscur très contrasté, qui annoncent le travail «photographique», restituent un sentiment de tension menaçante et sont animées d’une force dramatique inédite.</p>\n\n<p>Après les années 1620, la rhétorique des compositions devient plus importante ainsi que la complexité des gestes et des personnages. Les compositions simples, aux cadrages serrés des années 1610 laissent place à des compositions peintes plus monumentales : que ce soit avec des figures isolées d’après modèle vivant (telles que Saint Jean Baptiste, S. Jean de Maurienne) ou des scènes collectives (Reniement de saint Pierre, Fondazione di Studi di Storia dell’Arte Roberto Longhi, Florence ; Soldats jouant aux cartes, Washington). Certaines œuvres présentent une dimension historique avec des références à l’Antique (Concert au bas-relief, _AO_c_id=166;musée du Louvre_AC_, dont le relief reprend le motif de plaques en terre cuite de la collection Campana).</p>','<p>Valentin de Boulogne var en fransk målare. Han är också känd som Le Valentin, hans riktiga namn var Jean Valentin.</p>\n\n<p>Senare i livet gick Valentin till Rom för att studera. I Rom var han under påverkan av Michelangelo Merisi da Caravaggio och Bartolomeo Manfredi. Valentins lärare var Simon Vouet.</p>'),
(5865,'<p>Work of artists, sometimes known as the Flemish Primitives, active in Flanders during the 15th- 16th-century; especially in the flourishing cities of Bruges, Ghent, Mechelen, Louvain, Tournai, Brussels, all in contemporary Belgium.</p>\n\n<p>The major Flemish painters include Robert Campin, <a href=\"/sh/a_spot/a_persons/14-jan-van-eyck/\">Jan van Eyck</a>, Rogier van der Weyden, Dieric Bouts, Petrus Christus, Hans Memling, Hugo van der Goes, Hieronymus Bosch, <a href=\"/sh/a_spot/a_persons/2306-david-teniers-ii-the-younger/\">David Teniers</a>.</p>','<p>Работы художников, иногда называемых фламандскими примитивистами, творивших во Фландрии в XV-XVI веках, особенно в процветающих городах Брюгге, Генте, Мехелене, Лувене, Турне, Брюсселе, расположенных на территории современной Бельгии.</p>\n\n<p>К числу крупнейших фламандских живописцев относятся Роберт Кампин, Ян ван Эйк, Рогир ван дер Вейден, Дирик Бутс, Петрус Кристус, Ханс Мемлинг, Хуго ван дер Гоэс, Иероним Босх, Давид Тенирс.</p>','',''),
(5861,'','','',''),
(5862,'<p>The medieval Netherlands was divided into two provinces - northern (Holland) and southern (Flanders, modern Belgium).</p>\n\n<p>The painting of the northern part, known today as the Dutch school, (where Rembrandt was working), differs significantly from the painting of the southern (Flemish) school, the development of which was influenced by Catholic Spain.</p>\n\n<h2>The Golden Age of Dutch Painting</h2>\n\n<p>ToBeContinued</p>\n\n<p> </p>\n\n<p> </p>','<p>Средневековые Нидерланды были разделены на две провинции — северную (Голландия) и южную (Фландрия, современная Бельгия).</p>\n\n<p>Живопись северной части, известная сегодня как голландская школа (где работал Рембрандт), значительно отличается от живописи южной (фламандской) школы, развитие которой находилось под влиянием католической Испании.<br />\n </p>\n\n<p><strong>Золотой век голландской живописи</strong></p>\n\n<p>Продолжение следует</p>','',''),
(5867,'','','',''),
(5868,'<div class=\"otQkpb\"><span class=\"T286Pc\">He is believed to have been Neapolitan, as he was a student at the <strong class=\"Yjhzub\">Naples Academy of Fine Arts</strong> and frequently painted subjects such as \"Spadaro\" (a popular Neapolitan figure).</span></div>\n\n<p><span class=\"T286Pc\">While a prolific producer of art with hundreds of works circulating in the modern market, detailed biographical records remain relatively scarce compared to his High Renaissance namesake, Raphael.</span><span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></p>\n\n<p><span class=\"T286Pc\">His work often captures moments of humor, mischief, or quiet reflection, with titles such as <em class=\"eujQNb\">\"A Good Smoke,\"</em> <em class=\"eujQNb\">\"Sharing a Joke,\"</em> and <em class=\"eujQNb\">\"Street Musicians\"</em>.</span><span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></p>','','',''),
(5869,'','<p>В. Калинин: <em>…В своих картинах того времени (сейчас оно обозначается как время «сурового стиля») я писал свою жизнь, которая шла как бы по кругу: пьянство и драки, веселье и печаль. Хотелось запечатлеть быстротечность и театральность нашей жизни. Я совершенно не заботился ни о стиле, ни о модных исканиях в живописи. Все возникало спонтанно, виденное однажды преломлялось в воображении… </em></p>\n\n<p>После окончания абрамцевской художественной школы и художественного училища по специальности «столяр-краснодеревщик» поступил в <a href=\"https://ahpkv.ru/index\">Абрамцевское художественно-промышленное училище им. В. М. Васнецова</a> в подмосковном Хотькове, которое окончил в 1963.</p>\n\n<p>Еще в 1960-е вошел в Лианозовский круг, в мастерскую <a href=\"https://ru.wikipedia.org/wiki/%D0%A0%D0%B0%D0%B1%D0%B8%D0%BD,_%D0%9E%D1%81%D0%BA%D0%B0%D1%80_%D0%AF%D0%BA%D0%BE%D0%B2%D0%BB%D0%B5%D0%B2%D0%B8%D1%87\">Оскара Рабина</a>, где познакомился с <a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D1%80%D0%BE%D0%BF%D0%B8%D0%B2%D0%BD%D0%B8%D1%86%D0%BA%D0%B8%D0%B9,_%D0%95%D0%B2%D0%B3%D0%B5%D0%BD%D0%B8%D0%B9_%D0%9B%D0%B5%D0%BE%D0%BD%D0%B8%D0%B4%D0%BE%D0%B2%D0%B8%D1%87\">Е. Л. Кропивницким</a>, В. Я. Ситниковым, А. Т. Зверевым, В. Яковлевым, а также с <a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%BE%D1%81%D1%82%D0%B0%D0%BA%D0%B8,_%D0%93%D0%B5%D0%BE%D1%80%D0%B3%D0%B8%D0%B9_%D0%94%D0%B8%D0%BE%D0%BD%D0%B8%D1%81%D0%BE%D0%B2%D0%B8%D1%87\">Г. Костаки</a> и другими коллекционерами искусства нонконформистов.</p>\n\n<p>С 1962 работал художником по интерьеру в разных организациях, был экспонентом зарубежных и российских выставок в Италии, ФРГ, Швейцарии. В 1974 участвовал в выставке<em> Progressive Stromungen in Moskau 1957–1970 (Museum Bochum);</em> в том же году выставлял свои работы на втором осеннием смотре картин «на открытом воздухе», состоявшемся в лесопарке Измайлово через две недели после «Бульдозерной выставки»; в 1975 участвовал в выставке в павильоне «Пчеловодство» на ВДНХ, Москва.</p>\n\n<p>В 1976 В. Калинин, объединившись с единомышленниками, организовал Выставку произведений семи московских художников. <em>«…Мы пытались объединиться в небольшую группу и выставляться самостоятельно. В группу входили Плавинский, Краснопевцев, Харитонов, Вечтомов, Кондауров и я. Первая же наша выставка, хотя и без рекламы, афиши и каталога, привлекла внимание интеллигенции и, можно сказать, всей Москвы. Люди стояли в очереди по три-четыре часа — таков был интерес к неофициальному искусству того времени»</em>.</p>\n\n<p><em>... Шел 1979 год. Я готовился к своей персональной выставке, представилась такая возможность, и отказаться было грешно. Подготовительная работа оказалась большой и трудной. Я “пробил” себе каталог и афишу. Мне это стоило огромных физических усилий и всевозможных мытарств. Каталог получился маленьким, но и это тогда считалось сказочным везением…</em></p>\n\n<p>В 1991 В. Калинин уехал в США, жил в Лос-Анджелесе.</p>\n\n<p>Произведения Вячеслава Калинина находятся:<br />\n<em>Москва</em>, ГМИИ имени А. С. Пушкина<br />\n<em>Москва</em>, ГТГ<br />\n<em>Москва</em>, Музей современного искусства<br />\n<em>Санкт-Петербург</em>, ГРМ<br />\n<em>Киев</em>, Музей русского искусства<br />\n<em>New York</em>, Музей современного искусства<br />\n<em>New York,</em> Музей Метрополитен<br />\n<em>Париж, </em>Государственный музей современного искусства, Центр Жоржа Помпиду<br />\n<em>Бохум, Германия</em>, Музей Бохум<br />\n<em>Аахен</em>, <em>Германия</em>, Людвиг Форум международного искусства<br />\n<em>Нью-Брансвик, Нью-Джерси, США, </em>Музей Джейн Вурхис Зиммерли, коллекция Нортона и Ненси Додж<br />\nА также в других собраниях в России и за рубежом.</p>','',''),
(5875,'<p>Storck\'s marine and river scenes were influenced by the two <em>Willem van de Veldes</em> (the elder and the younger), <em>Ludolf Bakhuizen</em> and by <em>Jan Abrahamsz Beerstraaten</em>.</p>\n\n<p>Storck, influenced by <em>Jan Baptist Weenix</em>, produced fantastical views of Mediterranean ports, which place merchant shipping a midst architectural ruins, depicted in the crystal-clear colours of Italian art of the period. This type of scene anticipated the popular 18th-century Italian capriccio. He depicted ships\' rigging and technical details with considerable accuracy, which likely shows the influence of the van de Veldes. His Dutch harbour and river views often include recreational and ceremonial aspects of shipping. He paid particular attention to the display of pleasure yachts, ceremonial gatherings of ships, the passengers and the people watching.</p>\n\n<p>Storck painted some winter scenes, which are inspired by the example of <em>Jan Abrahamsz Beerstraaten</em> and his son <em>Anthonie Beerstraaten</em>, a selfportrait, and some allegories.</p>','','<p>Il est le plus jeune fils du peintre allemand Johannes Sturckenburgh (1603-après 1663) et le frère de Johannes Storck (1629/1630 -1673) ainsi que de Jacobus Storck (1641-après 1692). Il fut membre de la Guilde Saint-Luc d\'Amsterdam à partir de 1679.</p>\n\n<p>Reconnu comme faisant partie de l\'École picturale néerlandaise, au style baroque, plusieurs des œuvres de l\'Amstellodamois sont désormais exposées au Rijksmuseum et au musée du Louvre à Paris. Il utilisa le nom de Sturckenburch jusqu\'en 1688.</p>','<p>Född i Amsterdam, död i Amsterdam, var en nederländsk landskaps- och marinmålare.</p>\n\n<p>Abraham Storch föddes in i en konstnärsfamilj i Amsterdam, där hans far och tre av hans bröder var målare. Han utbildade sig hos sin far, arbetade tillsammans med honom och blev medlem av Sankt Lukasgillet i Amsterdam. Han använde namnet Sturckenburch till 1688.</p>\n\n<p>Han influerades av Ludolf Bakhuisen, Willem van de Velde d.y. och Jan Abrahamsz Beerstraaten.</p>\n\n<p>År 1694 gifte han sig med Neeltje Pieters van Meyservelt, en änka efter en läkare.</p>'),
(5880,'<p>Vermeulen was born in Dordrecht. He was taught by his father, Cornelis Vermeulen. He was primarily a landscape painter. He worked for some time in Amsterdam, where he died. He is known for landscapes and engravings.</p>\n\n<p>His pupils were Leendert de Koningh and Arnoldus van Well.</p>','','<p>Vermeulen est né à Dordrecht.</p>\n\n<p>Il a été formé par son père, Cornelis Vermeulen. Il était principalement un peintre paysagiste, et a travaillé à Amsterdam. Il est connu pour ses paysages et ses gravures.</p>\n\n<p>Ses élèves étaient Leendert de Koningh et Arnoldus van Well.</p>',''),
(5892,'<p>Born in Havre, worked in Paris, Biarritz</p>\n\n<p>Autodidact</p>\n\n<p>Exibitions in Paris, Venice, San Francisco, Biarritz, Ulm, Basel</p>','','',''),
(5889,'','','',''),
(5901,'','','',''),
(5902,'','','',''),
(5903,'','','',''),
(5904,'','','',''),
(5905,'<p>Collection of items which I wanted to acquire, but lost the bid.</p>','<p>Коллекция объектов, которые хотелось приобрести, но что-то пошло не так...</p>\n\n<p>Как правило, цена доходила до неразумных пределов.</p>','<p>Collection d\'articles que je voulais acquérir, mais j\'ai perdu l\'offre.</p>','<p>Samling av objekt som jag ville förvärva, men förlorade budet.</p>'),
(5906,'','','',''),
(5907,'<p>Valentin\'s paintings are notable examples of the Caravaggesque style, popular in Rome during the early 17th century, which depicted dramatic, naturalistic scenes of everyday low life in taverns, often involving an element of criminality or cheating.<span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></p>\n\n<p><span class=\"T286Pc\">This early work by Valentin was heavily inspired by a similar, now lost, composition by <a href=\"../../a_persons/caravaggio/\">Caravaggio</a> himself. It focuses on the moment of deception, with the villain\'s evil nature explicitly shown, though painted with a delicate handling of the medium.</span><span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></p>','<p>Картина затрагивает мотив, ставший чрезвычайно популярным и многократно видоизмененным: мошенники из полусвета обманывают наивных молодых людей.</p>\n\n<p>В фрагментарной, концентрированной композиции натуралистически изображенные фигуры приближаются к зрителю. Так зритель вовлекается в обманчивое взаимодействие жестов и взглядов, раскрытия и сокрытия. Почти возникает искушение вмешаться и разоблачить обман.</p>\n\n<p>Эта живописная направленность, усиленное, драматическое действие и психологическая напряженность определяют художника как одного из важнейших французских преемников <a href=\"../../a_persons/caravaggio/\">Караваджо</a>.</p>\n\n<p>Вплоть до XX века «Карточные шулеры» даже считались работой самого Караваджо.</p>\n\n<p><em>Текст Галереи старых мастеров</em></p>','',''),
(5908,'','','',''),
(5909,'<p>Копия довольно известной работы итальянца Raffaele Frigerio</p>','','',''),
(5910,'<p>Эту картину я покупал долго...</p>','','',''),
(5911,'','','',''),
(5912,'','','',''),
(5913,'','','',''),
(5914,'<div class=\"Y3BBE\">\n<div>The scene you describe refers to a specific type of Dutch Golden Age genre painting. The composition you are looking for is titled</div>\n<strong class=\"Yjhzub\">\"A boor playing a lute in an interior with a woman drinking at his side, peasants playing cards beyond\"</strong> and is a work after David Teniers the Younger. Variations of this theme were popular among many artists of the period, often depicting scenes of music, drinking, and card games in taverns or peasant interiors.</div>\n\n<div class=\"Y3BBE\"> </div>','<p>Масло, доска, Фламандская школа</p>','',''),
(5871,'','','',''),
(5872,'','','',''),
(5873,'','<p>Вероятно уличный художник</p>','',''),
(5874,'<div>Salomon Koninck was a prominent Dutch Golden Age painter and engraver based in Amsterdam.</div>\n\n<div> </div>\n\n<div><span class=\"T286Pc\">Born into a family of artists, he was the nephew of the landscape painter <em><span class=\"T286Pc\">Philips Koninck</span></em>. He trained under masters such as <em>Pieter Lastman</em> and <em>Claes Moeyaert </em>before joining the <span class=\"T286Pc\">Amsterdam Guild of Saint Luke</span> in 1630.</span><span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></div>\n\n<p>He is most recognized for his masterful adoption of <strong class=\"Yjhzub\">Rembrandt’s style</strong>, particularly his use of warm color palettes and dramatic light and shadow (chiaroscuro).</p>\n\n<p><span class=\"T286Pc\">Although he was not a direct pupil of Rembrandt, Koninck was a significant member of his \"school\". He specialized in <em class=\"eujQNb\">tronies</em> (character studies of expressive or exotic heads), genre scenes, and portraits.</span></p>\n\n<p>His <span class=\"T286Pc\"><em class=\"eujQNb\"><strong class=\"Yjhzub\">Philosopher with an Open Book</strong></em>, currently in the <span class=\"T286Pc\">Louvre</span>, was famously misattributed to Rembrandt for many years.</span></p>\n\n<p><strong><em>With help from AI</em></strong></p>','<p>Конинк был под сильным воздействием своего учителя Рембрандта и тоже писал картины на религиозные сюжеты, различные жанровые сцены. Для великого мастера это был период наибольшей славы и популярности, финансового благополучия, беззаботной творческой жизни. В это время наметились основные темы его творчества, определилась тяга к философскому осмыслению трагических сторон жизни, которая заставляла его обращаться не к бытовому жанру, а к образам общечеловеческого значения. Но если Рембрандт пошел в своем художественном развитии дальше, то Конинк остановился на достигнутом. Всю свою не очень долгую жизнь он продолжал в одной и той же манере писать картины на библейские, исторические или мифологические сюжеты.</p>\n\n<p>В ленинградском Эрмитаже хранится одно из характерных полотен такого рода. Это «Притча о работниках на винограднике». Как и другие произведения школы Рембрандта, картина представляет собой очень умелое и профессиональное подражание молодому Рембрандту. На первый взгляд она даже может показаться произведением самого мастера. Евангельский сюжет трактован как бытовая сцена, происходящая в современной художнику Голландии: расчет хозяина со своими работниками. Конинк не обращается ни к патетике, как это любили делать барочные художники, ни к различным аллегориям и символам классицистического искусства. Единственным его приемом служит рембрандтовская знаменитая светотень. Именно она создает драматизм настроения, атмосферу одухотворенности и эмоциональной насыщенности. Именно благодаря ей жанровая сценка обладает такой внутренней значительностью и напряженностью. Светотеневые приемы Конинка (вернее, Рембрандта) построены на контрастном сопоставлении света и тени, на затемнении одних частей картины и высветлении других. Особенный эффект они приобретают, когда художник изображает полутемный интерьер, освещенный ярким боковым источником света. Эти приемы пришли из Италии, от Караваджо. В XVII веке они захватили многих европейских художников. Но у большинства из этих мастеров они выглядят формальными экспериментами в области света и тени. И лишь Рембрандт и его последователи смогли вдохнуть в них жизнь, придать им эмоциональную и смысловую настроенность. Все это видно и в других сюжетных композициях художника, как, например, «Крез, показывающий Солону свои сокровища» или «Призвание апостола Матфея» (обе картины в галерее Берлина).</p>\n\n<p>Помимо фигурных композиций Саломон Конинк занимался портретом. Он был последователем того портретного жанра, который стал специфической чертой голландской живописной школы и, в частности, школы Рембрандта. Речь идет о так называемом «жанровом портрете». Это не было изображением конкретной личности (хотя портрет часто писался с натуры), а некоего собирательного образа, типичного представителя определенной профессии. Чаще всего художников привлекал образ ученого старца, работающего в своем кабинете (создателем этого образа был Рембрандт). Обычно портретное изображение сопровождалось различными бытовыми подробностями, описанием обстановки, одежд, предметов. В Государственном Эрмитаже хранятся два подобных холста («Старик ученый», «Ученый у стола»). Прекрасным образцом «жанрового портрета» может служить «Астроном» Конинка из Дрезденской галереи. Перед нами одетый в бархатную шапку и куртку старик. О его профессиональной принадлежности говорят только определенные атрибуты—подзорная труба в руке и глобус, стоящий на заднем плане. Может быть, в виде модели художник использовал натурщика из рембрандтовской мастерской или даже кого-то из близких. Поэтому вся эта бутафория выглядит несколько искусственной. На самом деле это просто портрет старика, умудренного опытом и отягощенного жизнью. Но такова была специфика жанра, выбранного художником.</p>\n\n<p>Саломон Конинк оставил после себя большое художественное наследие. Его картины есть почти во всех крупных галереях и музеях мира: он был очень продуктивен. Замечательно и то, что в каждой картине он оставался мастеровитым живописцем, никогда не делая ничего в ущерб качеству технического исполнения. С. Конинк был верным хранителем традиций своего великого современника и учителя, в чем и состоит его главная заслуга перед европейским искусством.</p>\n\n<p><strong><em>Опубликовано https://www.nashteatr.com/</em></strong></p>','',''),
(5877,'<p>Minjon studied at the Kunstakademie Düsseldorf from 1832 to 1839, where he was trained by notable instructors including Karl Friedrich Schäffer, Karl Ferdinand Sohn, and Theodor Hildebrandt. He later became a member of the Malkasten artists’ association in Düsseldorf, a local hub for creative exchange among artists.</p>\n\n<p> Minjon’s paintings continue to appear in European art auctions, often depicting riverside villages, landscapes, and architectural vistas. Auction prices can vary widely depending on size, condition, and subject. </p>\n\n<p>Works sold range from modestly priced pieces to more significant landscapes, such as Ideale, romantische Rheinlandschaft and Dorf an der Mosel, which have been offered by established auction houses.</p>\n\n<p> </p>\n\n<p> </p>','','',''),
(5878,'','<p><em>Выдержки из биографии Фалька, относящиеся к <a href=\"../../a_artworks/277-paris/\">истории покупки \"его\" акварели</a>:</em></p>\n\n<p>В 1928 году выехал в командировку за границу и почти 9 лет жил и работал в Париже. Затем вернулся в СССР, жил в так называемом <a href=\"https://ru.wikipedia.org/wiki/%D0%94%D0%BE%D0%BC_%D0%9F%D0%B5%D1%80%D1%86%D0%BE%D0%B2%D0%BE%D0%B9\" title=\"Дом Перцовой\">Доме Перцовой</a>, где по просьбе бывших соратников по <a href=\"https://rusavangard.ru/online/history/bubnovyy-valet/\">Бубновому валету</a> Александра Куприна и Василия Рождественского и при активнейшей помощи лётчика <a href=\"https://ru.wikipedia.org/wiki/%D0%AE%D0%BC%D0%B0%D1%88%D0%B5%D0%B2,_%D0%90%D0%BD%D0%B4%D1%80%D0%B5%D0%B9_%D0%91%D0%BE%D1%80%D0%B8%D1%81%D0%BE%D0%B2%D0%B8%D1%87\" title=\"Юмашев, Андрей Борисович\">Андрея Юмашева</a> получил мастерскую, которую раньше занимал художник Павел Соколов-Скаля.</p>\n\n<p>С Юмашевым Фальк познакомился в 1936 году в посольстве СССР во Франции, они сдружились. В 1937—1938 годах они совершили своеобразное «турне» по Крыму и Средней Азии, где знаменитый лётчик читал лекции о своём перелёте через Северный полюс, а на досуге ставил свой любительский мольберт рядом с мольбертом Фалька.</p>\n\n<p>Работал оформителем сцены Московского государственного еврейского театра (с которым сотрудничал и до своего отъезда за рубеж), а также еврейских театров других городов.</p>','',''),
(5879,'<p>Samoylov was a Russian stage actor, associated with Alexandrinsky Theatre in Saint Petersburg.</p>\n\n<p>Initially an opera singer, he was also an artist whose several albums of paintings include the gallery of stage self-portraits, amounting to a visual autobiography</p>','<p>Родился в знаменитой семье оперных певцов В.М.Самойлова и С.В.Черниковой-Самойловой. Сестры — известные актрисы Александринского театра: Надежда Самойлова и Вера Самойлова.</p>\n\n<p>Воспитывался в Горном корпусе и Лесном институте и был уже офицером, когда по желанию отца, заметившего в нём артистическое дарование и хороший голос, дебютировал в Александринском театре в заглавной партии оперы Э.Н.Мегюля «Иосиф прекрасный».</p>\n\n<p>Диапазон его ролей поражает своим разнообразием. Никто, как он, не умел представить настоящего барина с утонченными манерами и речью. Роли Кречинского, графа в тургеневской «Провинциалке», старого барина в пьесе Пальма после Самойлова не находили исполнителя, который хотя бы несколько был на уровне его творчества.</p>\n\n<p>Талантливость натуры С. не исчерпывалась областью одного лишь драматического искусства.</p>\n\n<p>Он превосходно рисовал (некоторые его картины побывали на выставках), хорошо знал музыку и сочинял романсы; карикатуры его отличались бойкостью и остроумием.</p>\n\n<p>В обществе это был любезный, приятный собеседник, сыпавший анекдотами, остротами и меткими замечаниями.</p>\n\n<p>В 1884 г. Петербург торжественно отпраздновал 50-летний юбилей его деятельности; в этот день Самойлов в последний раз появился на сцене, исполнив отрывок из третьего акта драмы «Ришелье».</p>','',''),
(5882,'<p>Götgatan 116, lgh 1202, 11862 STOCKHOLM</p>','<p>Götgatan 116, lgh 1202, 11862 STOCKHOLM</p>','<p>Götgatan 116, lgh 1202, 11862 STOCKHOLM</p>','<p>Götgatan 116, lgh 1202, 11862 STOCKHOLM</p>'),
(5883,'<p>The son of the prominent genre painter David Teniers the Elder and Dymphna Cornelisse de Wilde (also called <i> Dymphna Hendrikx </i> ) Three of his brothers were also painters: <a href=\"/sh/a_spot/a_persons/2306-david-teniers-ii-the-younger/\">David the Younger</a> who became the most successful of the Teniers painting dynasty, Juliaan III (1616–79) and Theodoor (1619–97).</p>\n\n<p>Abraham Teniers likely trained with his father and older brother David. He was admitted as a ‘wijnmeester’ (i.e. son of a master) in the Antwerp Guild of Saint Luke in 1646.</p>\n\n<p>Abraham married Isabelle de Roore on 16 July 1644. He was a captain of the local <i>schutterij</i> (civil militia) of Antwerp. He was active in the local chamber of rhetoric called the <i>Olyftack;</i> (Olive branch) where he was received as a captain in 1660. In the Guild year 1661-62 Franciscus Bock was registered as his pupil.</p>\n\n<p>Like his brother David before him, Abraham found appreciation at the court in Brussels and the art-loving Archduke Leopold Wilhelm of Austria – then the governor of the Southern Netherlands and a resident of Brussels – appointed him as court painter.</p>\n\n<p>Abraham died in Antwerp.</p>','','',''),
(5885,'<p>Flemish painter, printmaker, draughtsman, miniaturist painter, staffage painter, copyist and art curator. He is now best remembered as the leading Flemish genre painter of his day.</p>\n\n<p>He was an innovator in a wide range of genres such as history, genre, landscape, portrait and still life. Teniers is particularly known for developing the peasant genre, the tavern scene, pictures of collections and scenes with alchemists and physicians.</p>\n\n<h2>Various \"Trick Track Players\"</h2>\n\n<h2>Various \"Lute players\"</h2>\n\n<div class=\"align_left\"><img alt=\"\" src=\"https://www.christies.com/img/LotImages/2000/CSK/2000_CSK_08821_0228_000().jpg\" />\n<div>Playing lute (Christies)</div>\n</div>\n\n<div class=\"align_left\"><img alt=\"A peasant playing a lute in a tavern interior\" src=\"https://www.christies.com/lotfinder/Lot/follower-of-david-teniers-ii-a-peasant-1845383-details.aspx\" />\n<div>A peasant playing a lute in a tavern interior (Christies)</div>\n</div>\n\n<div><a href=\"https://www.christies.com/img/LotImages/2000/CSK/2000_CSK_08821_0228_000().jpg\">A peasant playing a lute in a tavern interior</a></div>\n\n<div class=\"align_right\"><a href=\"https://www.christies.com/lotfinder/Lot/circle-of-david-teniers-ii-1610-1690-1845379-details.aspx#content\">Playing lute 2</a> <a href=\"https://www.christies.com/img/LotImages/2000/CSK/2000_CSK_08821_0224_000().jpg\">Playing lute 2</a></div>','<p>Один из наиболее значимых художников и гравёров фламандской школы, наряду со своими соотечественниками Рубенсом и ван Дейком.</p>\n\n<p>Старший и наиболее успешный из 4 сыновей художника Тенирса Старшего (David Teniers, the Elder) и Димфны Вилде (Dymphna Wylde).</p>','',''),
(6359,'','','',''),
(6360,'<p>Originally from Paris, Théo de Gueltzl studied at <em>Central Saint Martins</em> in London, graduating in 2014.</p>\n\n<p>Initially focusing on fine art, he developed a long-standing partnership with Hermès, contributing intricate drawings for their textile designs.</p>\n\n<p>Documenting his travels through photography became a parallel obsession.</p>\n\n<p>Meanwhile, de Gueltzl continues to develop his design practice. He most recently completed an animated video of Bob Marley’s <em>‘Redemption Song,’ </em>commissioned by the Marley family to mark what would have been his 75th birthday.</p>\n\n<p>He is regularly published by <em>Vogue France</em>, <em>Vogue US</em>, <em>Le magazine du Monde</em>, <em>AnOther</em>, and <em>More or Less</em>, and includes Hermès and Louis Vuitton amongst his commissioned work.</p>','<p>Théo de Gueltzl родом из Парижа. Он учился в лондонском колледже <em>Central Saint Martins, </em>закончил в 2014 году.</p>\n\n<p>Сначала занимался изобразительным искусством, и со временем это привело к долгому и тесному сотрудничеству с домом Hermès, для которого он создавал сложные, детально проработанные рисунки.</p>\n\n<p>Фотография, начавшаяся как способ фиксировать путешествия, постепенно стала для него ещё одной важной страстью.</p>\n\n<p>Параллельно Théo de Gueltzl продолжает развивать свою дизайнерскую практику. Его недавний проект — анимационное видео на песню Боба Марли <em>Redemption Song</em>, созданное по заказу семьи Марли к 75-летию музыканта.</p>\n\n<p>Его работы регулярно публикуются в <em>Vogue France</em>, <em>Vogue US</em>, <em>Le Monde Magazine, AnOther</em> и <em>More or Less</em>, а среди его клиентов — Hermès и Louis Vuitton.</p>','',''),
(5887,'','','',''),
(5893,'','','',''),
(5894,'Bukowskis is a Scandinavian fine art and antique auction house established in 1870 by the Polish nobleman Henryk Bukowski in Stockholm, Sweden. In 1979, an office was opened in Helsinki, Finland.','','',''),
(5895,'','','',''),
(5896,'<p>This house existed just for a few months in 2010.</p>\n<p> They used to run a &quot;Dutch Auction&quot;, when an object could be also purchased for the double starting price without bidding.</p>\n','','',''),
(5891,'<p>av_descr_2918</p>','','',''),
(5897,'<p>Uppsala Auktionskammare was founded in 1731 and is one of the oldest auction houses in the world.</p>\n\n<p>Auctions have a long and solid tradition in Uppsala and the first auction in Sweden mentioned in written sources was held in 1639 in Uppsala.</p>\n\n<p>Today the auction house is one of the leading auction houses in Sweden with auctions of fine art and antiques.</p>\n\n<p>Over the last decade the auction house has sold over 200 lots that have reached a million Swedish kronor and more, many within the Russian segment, but also Old master paintings and Chinese objects.</p>','<p>Аукцион <em>Uppsala Auktionskammare </em>был основан в 1731 году и является одним из старейших аукционных домов в мире.</p>\n\n<p>Аукционы имеют давнюю и твердую традицию в Уппсале, и первый аукцион в Швеции, упомянутый в письменных источниках, был проведен здесь в 1639 году.</p>\n\n<p>Сегодня аукционный дом является одним из ведущих домов в Швеции с аукционами изобразительного искусства и антиквариата.</p>\n\n<p>За последнее десятилетие аукционный дом продал более 200 лотов, которые достигли цены миллион шведских крон и более, многие из них в российском сегменте, картины Старых Мастеров и китайские объекты.</p>','','<p>Uppsala Auktionskammare grundades år 1731 och är därmed ett av världens äldsta auktionshus.</p>\n\n<p>Auktioner har en lång och gedigen tradition i Uppsala och den första auktionen i Sverige som finns omnämnd i skriftliga källor hölls år 1639 av Akademiska konsortiet i Uppsala.</p>\n\n<p>Uppsala Auktionskammare är det enda auktionshuset i Norden som enbart bedriver kvalitetsauktioner. Vi fokuserar på kvalitet och försäljning av högklassig konst, antikviteter och design. Med ett gott internationellt renommé, rekordnoteringar, exklusiva samlingar och över 200 miljonnoteringar har vi kommit att bli ett av Nordens ledande auktionshus.</p>\n\n<p>Våra framgångsrika försäljningar grundar sig i stort engagemang och kunskap hos våra medarbetare och extern världsledande internationell expertis. Genom att fokusera på kvalitetsauktioner med slagauktioner, tryckta kataloger, kraftfull marknadsföring och med senaste tekniken online når vi köpstarka kunder runt om i hela världen.</p>'),
(5898,'','','',''),
(5899,'','','',''),
(5900,'<p>The Gemäldegalerie Alte Meister in Dresden, Germany, displays around 750 paintings from the 15th to the 18th centuries. It includes major Italian Renaissance works as well as Dutch and Flemish paintings. Outstanding works by German, French and Spanish painters of the period are also among the gallery\'s attractions.</p>\n\n<p>The Old Masters are part of the Dresden State Art Collections. The collection is located in the Semper Gallery, the gallery wing of the Zwinger.</p>','<p>Начало этому собранию было положено в 1560 году кабинетом изящных искусств (Kunstkammer), где наряду с природными феноменами, изделиями ручного труда и разного рода диковинками выставлялись полотна итальянских и фламандских мастеров живописи.</p>\n\n<p>Систематически собирать произведения старых мастеров стал курфюрст Август II Сильный (1670—1733), который слыл ценителем искусств и перестроил весь центр Дрездена.</p>\n\n<p>Страсть к собиранию произведений искусства унаследовал от отца Август III. Подобно родителю, он мог себе позволить весьма дорогостоящие покупки за счёт поступлений из казны огромного Польско-Литовского государства, чей выборный трон он занимал. Для приобретения он отбирал только шедевры, полагаясь на советы проницательного Альгаротти.</p>\n\n<p>В 1741 году Август III приобрёл 268 полотен из собрания Валленштейна, в том числе «У сводни» Яна Вермеера Делфтского. Чуть позже за ними последовали многочисленные работы из королевской галереи в Праге, а в 1745 году — «сто лучших картин» из собрания обедневшего герцога Моденского, среди которых были работы Корреджо, Веласкеса, Тициана.</p>\n\n<p>«Царём художников» в то время считался Рафаэль, а его лучшей станковой работой — «Сикстинская мадонна». Это полотно удалось привезти из церкви Сан-Сиксто в Пьяченце.</p>\n\n<p>В 1945 году советские войска вывезли в качестве трофеев значительную часть собрания. На протяжении 10 лет поврежденные картины реставрировались и хранились в ГМИИ им. Пушкина. В 1955 году состоялся торжественный визит правительственной делегации СССР в Германскую Демократическую Республику, в ходе которого по настоянию Н.С.Хрущёва были возвращены 1240 картин. Судьба 450 картин неизвестна.</p>','<p>La Gemäldegalerie Alte Meister (Galerie de Peinture des Vieux Maîtres) est un musée d\'art des Collections nationales de Dresde situé dans le Semperbau du palais Zwinger, à Dresde, en Allemagne. Elle ne doit pas être confondue avec la Gemäldegalerie Alte Meister de Cassel.</p>',''),
(5915,'','','',''),
(5916,'','<p><span class=\"T286Pc\">Калинин часто смешивал реальные бытовые сюжеты с сюрреалистическими образами.</span></p>\n\n<p><span class=\"T286Pc\">Несмотря на то, что основной темой его жизни была «московская сага» и Замоскворечье, в конце 1980-х годов в его работах стали появляться сюжеты, связанные с его заграничными впечатлениями и путешествиями.</span></p>\n\n<p><span class=\"T286Pc\">Работы художника продолжают выставляться на аукционах и ценятся коллекционерами. Например, стоимость данной пастели на арт-рынке оценивается в пределах <strong class=\"Yjhzub\">$2,500 – $2,870</strong>.</span></p>','',''),
(5917,'','','',''),
(5918,'','','',''),
(5919,'','','',''),
(5920,'','','',''),
(5921,'','<p>Картина «Рыцарь и бабочка» была создана в тот же период, что и «Путешествие в Японию». В это время художник активно экспериментировал с мифологическими и аллегорическими образами, отходя от своих привычных сюжетов московского Замоскворечья.<span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></p>\n\n<p><span class=\"T286Pc\">Работа выполнена в характерной для Калинина манере «фантасмагорического реализма» или гротеска, сочетающей элементы старой классической школы с сюрреалистическими сюжетами.</span></p>\n\n<p>В начале 2026 года данная работа оценивается коллекционерами и галереями (например, K Gallery) около <strong class=\"Yjhzub\">$2,500</strong>.</p>','',''),
(5922,'','','',''),
(5923,'','<p>Дого считалось что это картина Рембрандта...</p>','',''),
(5925,'','','',''),
(5926,'','','',''),
(5927,'','','',''),
(5928,'','','',''),
(5929,'','','',''),
(5930,'<p>Work of artists, sometimes known as the Flemish Primitives, active in Flanders during the 15th- 16th-century; especially in the flourishing cities of Bruges, Ghent, Mechelen, Louvain, Tournai, Brussels, all in contemporary Belgium.</p>\n\n<p>The major Flemish painters include Robert Campin, <a href=\"/sh/a_spot/a_persons/14-jan-van-eyck/\">Jan van Eyck</a>, Rogier van der Weyden, Dieric Bouts, Petrus Christus, Hans Memling, Hugo van der Goes, Hieronymus Bosch, <a href=\"/sh/a_spot/a_persons/2306-david-teniers-ii-the-younger/\">David Teniers</a>.</p>','','',''),
(5931,'<p>The story of this drawing\'s purchase is a ready-made script for a detective film.</p>\n\n<p>It all began on October 20, 2009, when I saw a small watercolor signed \"Falk, 1914\" in the corner of the Metropol auction showroom with a very modest starting price of 300 crowns ($30).</p>\n\n<p>I knew who Falk was...</p>\n\n<p>In the days leading up to the auction, I scanned Google, figured out whether Falk had been in Paris in 1914, looked up prices for his drawings, discussed it with my family, and so on. Everything added up. It was clear that there was a possibility of a forgery, and that the price would rise significantly. I had to assess the risks.</p>\n\n<p>I decided to go up to 2,000/3,000 crowns ($200-$300). A long bidding process ensued, and in our excitement, we reached 13,000. We bought it, were delighted, and called the children.</p>\n\n<p>The next morning, inspired, I left for work, and then I got a phone call... It was Rita, she said:<br />\n<em>\"The painting was on its stand, a mouse ran by, flicked its tail, and the painting fell and broke... It tore in half...\"</em><br />\nWhat happened next is rather obvious...</p>\n\n<p>So far, so good... The next morning,  the home(!) phone rings, I didn\'t immediately understand what they were talking about, thought somebody dialed a wrong number, and hung up.</p>\n\n<p>A little while later the phone rings again, the same voice:<br />\n<em>- It\'s the police. Did you buy the painting at auction yesterday? Please bring it to us.<br />\n- What\'s the matter? And the painting is gone, it\'s broken.<br />\n-That\'s not a problem, bring what\'s left. The painting turned out to be a fake, and the auction is suing the seller.</em></p>\n\n<p>I did.</p>\n\n<p>A couple of months later, I received an envelope with strict instructions to CANCEL any appointments for April 17, 2010, and to show up in court that day as a witness in a case of malicious fraud.</p>\n\n<p>It turns out someone noticed an unusual gap between the initial and final prices for a painting he\'d tried to buy a month earlier. But back then, it had been signed by an unknown artist and was priced at 100 crowns.</p>\n\n<p>And so the case unfolded... An expert examination revealed that the old signature had been painted over and a new one painted over it, which was classified as deliberate deception for profit.</p>\n\n<p>The auction has was the victim, I was the witness, and the consignor was the defendant. The consignor was a former Pole, now Swedish. So, Russian avant-garde is known in Poland, since he painted \"Falk.\"</p>\n\n<p>It was my first time in court, and I learned a lot of new and interesting things. Long story short, I got my money back, and the man paid a large fine and legal costs.</p>\n\n<p>I never saw the painting again.</p>','<p>История покупки этого рисунка - готовый сценарий для детективного фильма.</p>\n\n<p>Все началось 20 октября 2009 года, когда я увидел в углу демонстрационного зала аукциона Metropol небольшую акварель подписанную <em>\"Falk,1914\"</em> с весьма скромной стартовой ценой в 300крон (30$).</p>\n\n<p><a href=\"../../a_persons/276-robert-falk/\">Кто такой Фальк</a> я знал...</p>\n\n<p>За дни оставшиеся до аукциона я сканировал Google, вычислял был ли Фальк в Париже в 1914, искал цены на его рисунки, обсуждал с семьей и т.п., всё сходилось. Ясно, что вероятность подделки есть, и что цена будет подниматься сильно. Надо было оценить риски.</p>\n\n<p>Решил идти до 2000/3000 крон (200$-300$). Начались долгие торги, и мы в азарте дошли до 13.000. Купили, были рады, позвонили детям.</p>\n\n<p>Наутро я одухотворённый уехал на работу, звонок... Рита говорит:<br />\n<em>- Картина стояла на подставке, мышка бежала, хвостиком махнула, картина упала и разбилась... Порвалась пополам...</em><br />\nЧто было дальше понятно...</p>\n\n<p>Ладно, но... Наутро звонок домой(!), не сразу понял о чем речь, решил что ошиблись номером, положил трубку.</p>\n\n<p>Через некоторое время тот же голос:<br />\n<em>- Это полиция. Вы вчера купили картину на аукционе? Принесите ее пожалуйста нам.</em><br />\n<em>- В чем дело? Да и картины больше нет, она разбилась</em><br />\n<em>- Это неважно, несите что осталось. Картина оказалась подделкой и аукцион подает в суд на сдатчика </em></p>\n\n<p>Принес.</p>\n\n<p>Через пару месяцев получаю конверт со строгим указанием ОТМЕНИТЬ все встречи на 17 апреля 2010 года, явиться в этот день в суд в качестве свидетеля по делу о злостном обмане.</p>\n\n<p>Выясняется что кто-то обратил внимание на нетипичный разрыв начальной и конечной цены для картины которую он сам пытался купить месяц назад. Но только тогда на ней была подпись неизвестного художника и стоила она 100 крон.</p>\n\n<p>И дело завертелось... Экспертиза показала что старая подпись была закрашена, поверх нарисована новая, что было квафилицировано как сознательный обман с целью наживы.</p>\n\n<p>Пострадавший - аукцион, свидетель - я, ответчик - сдатчик. Сдатчик был ex-поляк, ныне швед. Стало быть в Польше знают русский авангард, коли он нарисовал \"Falk\".</p>\n\n<p>В суде я был в первый раз, получил много новых интересных знаний. Короче, деньги мне все вернули, мужик заплатил крупный штраф и судебные издержки.</p>\n\n<p>Картину я больше не видел.</p>','',''),
(5932,'','','',''),
(5933,'With laquer seal on stretcher. With note on stretcher:<br/>\n<em> \"Henrik Avercamp surnommé ”de Stomme van Kampen” (le muet de Kampen) né à Amsterdam le 25 janvier 1585 et mort [...] aprés 1663 à Kamen où il demeurent depuis 1625 environ. I’est d’abord fixe dans sa ville natale.<br/>\n L’hiver. Signé sur porte. <br/>\nProvement de la collection G. de Clerc [...] de la société Rembrandt en 1897”</em>','<p>На обороте записка приклееная лаком: <br/>\n<em> &quot;Henrik Avercamp surnommé ”de Stomme van Kampen” (le muet de Kampen) né à Amsterdam le 25 janvier 1585 et mort &#91;...&#93; aprés 1663 à Kamen où il demeurent depuis 1625 environ. I’est d’abord fixe dans sa ville natale. <br/>\n L’hiver. Signé sur porte. <br/>\nProvement de la collection G. de Clerc &#91;...&#93; de la société Rembrandt en 1897”</em> </p>\n<p> Перевод записки: <br/>\n <em> Henrik Avercamp по кличке &quot;немой из Кампена&quot; родился в Амстердаме 25 янв. 1585 и умер &#91;...&#93; после 1663 года в Кампене, куда он перебрался в 1625. <br/>\n Зима. Подпись на двери. <br/>\n Провенанс - коллекция G. de Clerc &#91;...&#93; из ассоциации Рембрандта 1897</em></p>\n','Avec le joint de laquer sur la civière. Avec note sur civière en français::<br/>\n<em> \"Henrik Avercamp surnommé ”de Stomme van Kampen” (le muet de Kampen) né à Amsterdam le 25 janvier 1585 et mort [...] aprés 1663 à Kamen où il demeurent depuis 1625 environ. I’est d’abord fixe dans sa ville natale.<br/>\n L’hiver. Signé sur porte. <br/>\nProvement de la collection G. de Clerc [...] de la société Rembrandt en 1897”</em>',''),
(5934,'description','','',''),
(5935,'','','',''),
(5936,'Another rare composition with cats taking on human roles is the painting of the Barber shop, in the Kunsthistorisches Museum in Vienna. Several versions of this composition are known.','','',''),
(5937,'<p>This painting was purchased during the sale of <a href=\"https://weekend.di.se/nyheter/konstsamlaren-saljer-livsverk-1;\">Hans Erik Börjesons collection </a></p>\n\n<p>Hans Erik Börjesons collection _AO_ https://weekend.di.se/nyheter/konstsamlaren-saljer-livsverk-1; (see more) _AC_</p>','','',''),
(5938,'<p>There are several version of this artwork...</p>','<p>Известно несколько версий этой картины:</p>\n\n<p><a> </a></p>\n\n<ul>\n	<li><a href=\"http://www.sothebys.com/en/auctions/ecatalogue/2011/old-master-and-british-paintings-evening-sale/lot.16.html\">Проданая на Sothebys в 2011 </a></li>\n	<li><a href=\"http://www.nationaltrustcollections.org.uk/object/1246499.2#content\">Хранящаяся в <i> Polesden Lacey National Trust Images/Prudence Cuming </i> </a></li>\n	<li><a> Хранящаяся в <i> the AMICA Library, the Cleveland Museum of Art </i> </a></li>\n</ul>','',''),
(5939,'','','',''),
(5940,'','','',''),
(5941,'','','',''),
(5942,'','','',''),
(5943,'','','',''),
(5944,'','','',''),
(5945,'','','',''),
(5946,'','','',''),
(5947,'','','',''),
(5948,'','','',''),
(5949,'','','',''),
(5950,'','','',''),
(5951,'','','',''),
(5952,'','','',''),
(5953,'','','',''),
(5954,'','','',''),
(5955,'','','',''),
(5956,'','','',''),
(5957,'<p>Дымковская игрушка — это всегда ручная работа, в которой чувствуется рука и характер одного мастера. Каждая фигурка рождается по-своему: процесс лепки никогда полностью не повторяется, поэтому двух одинаковых игрушек просто не бывает.</p>\n\n<p>Для них используют местную ярко-красную глину, смешивая её с мелким речным песком. Фигурки создают по частям: лепят элементы отдельно, затем аккуратно соединяют, используя жидкую глину как клей. После этого поверхность тщательно заглаживают, чтобы игрушка получилась ровной и гладкой.</p>\n\n<p>Самые любимые сюжеты — это нарядные барыни, няньки с ребятами, водоноски, бараны с золотыми рогами, индюшки, петухи, олени, молодцы и весёлые скоморохи. Каждая фигурка — маленькая история, которую мастер рассказывает своими руками.</p>','<p>Дымковская игрушка — это всегда ручная работа, в которой чувствуется рука и характер одного мастера. Каждая фигурка рождается по-своему: процесс лепки никогда полностью не повторяется, поэтому двух одинаковых игрушек просто не бывает.</p>\n\n<p>Для них используют местную ярко-красную глину, смешивая её с мелким речным песком. Фигурки создают по частям: лепят элементы отдельно, затем аккуратно соединяют, используя жидкую глину как клей. После этого поверхность тщательно заглаживают, чтобы игрушка получилась ровной и гладкой.</p>\n\n<p>Самые любимые сюжеты — это нарядные барыни, няньки с ребятами, водоноски, бараны с золотыми рогами, индюшки, петухи, олени, молодцы и весёлые скоморохи. Каждая фигурка — маленькая история, которую мастер рассказывает своими руками.</p>','<p>La figurine de Dymkovo est toujours un objet façonné à la main, où l’on ressent la présence et la sensibilité d’un seul artisan. Chaque pièce naît à sa manière : le processus de modelage ne se répète jamais vraiment, et il n’existe donc pas deux jouets parfaitement identiques.</p>\n\n<p>On utilise une argile locale d’un rouge vif, mélangée à du sable fin de rivière. Les figurines sont modelées par éléments séparés, puis assemblées avec de l’argile liquide servant de colle naturelle. Ensuite, la surface est soigneusement lissée pour obtenir un toucher doux et uniforme.</p>\n\n<p>Parmi les thèmes les plus populaires : les élégantes dames, les nourrices avec leurs enfants, les porteuses d’eau, les béliers aux cornes dorées, les dindons, les coqs, les cerfs, les jeunes hommes et les joyeux bateleurs. Chaque figurine raconte une petite histoire, faite à la main.</p>','<p>En Dymkovo-figur är alltid handgjord, formad med omsorg av en enda hantverkare. Ingen figur blir den andra lik — varje skapelse formas på sitt eget sätt och får sin egen personlighet.</p>\n\n<p>Den lokala klarröda leran blandas med fint flodsand. Själva figuren byggs upp av flera delar som först formas separat och sedan sätts samman med flytande lera som fungerar som naturligt lim. Ytan jämnas noggrant ut för att få ett mjukt och jämnt uttryck.</p>\n\n<p>De vanligaste motiven är ståtliga damer, barnflickor med barn, vattenbärare, baggar med gyllene horn, kalkoner, tuppar, hjortar, unga män och glada gycklare. Varje figur är som en liten berättelse, formad av hantverkarens händer.</p>'),
(5958,'','','',''),
(5959,'<div class=\"ilZyRc R7mRQb\">\n<div>\n<div class=\"tbIZh wQN2Jd\">\n<div class=\"sUKAcb\">Людмила Дмитриевна Верещагина — выдающийся потомственный мастер дымковской игрушки, чей творческий путь неразрывно связан с сохранением и развитием этого старинного вятского промысла</div>\n</div>\n</div>\n</div>\n\n<div>\n<div>\n<div class=\"CKgc1d\">\n<div class=\"Zkbeff\">\n<div class=\"pWvJNd\">\n<div class=\"mZJni Dn7Fzd\" dir=\"ltr\">\n<div>\n<div class=\"Y3BBE\">.<span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></div>\n\n<div class=\"Y3BBE\"><span class=\"T286Pc\">Родилась в 1950 году в Кирове. </span><span class=\"T286Pc\">Окончила Кировское училище искусств (педагогическое отделение) в 1971 году.</span></div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n\n<p><span class=\"T286Pc\">В промысел пришла в 1972 году, обучалась мастерству у известной наставницы <a href=\"../kuzminykh\">А. В. Кузьминых</a>.</span><span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></p>\n\n<p><span class=\"T286Pc\">Искусствоведы называют её «большим художником». Её работы отличаются уникальностью и строгим соблюдением традиций, при этом в них чувствуется индивидуальный почерк автора. </span></p>\n\n<p><span class=\"T286Pc\">Её изделия представляли русское искусство на международных выставках в Неаполе, Палермо, Улан-Баторе, Братиславе, Праге и в семи городах Японии.</span><span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></p>\n\n<div class=\"Y3BBE\">Многие произведения художницы хранятся в музейных фондах, включая Государственный исторический музей и Пермскую художественную галерею. </div>\n\n<div>\n<div class=\"DBd2Wb\">\n<div>\n<div class=\"v4bSkd\"> </div>\n</div>\n</div>\n</div>','<div class=\"ilZyRc R7mRQb\">\n<div>\n<div class=\"tbIZh wQN2Jd\">\n<div class=\"sUKAcb\">Людмила Дмитриевна Верещагина — выдающийся потомственный мастер дымковской игрушки, чей творческий путь неразрывно связан с сохранением и развитием этого старинного вятского промысла</div>\n</div>\n</div>\n</div>\n\n<div>\n<div>\n<div class=\"CKgc1d\">\n<div class=\"Zkbeff\">\n<div class=\"pWvJNd\">\n<div class=\"mZJni Dn7Fzd\" dir=\"ltr\">\n<div>\n<div class=\"Y3BBE\">.<span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n\n<div class=\"Y3BBE\"> </div>\n\n<div class=\"Fsg96\"><span class=\"T286Pc\">Родилась в 1950 году в Кирове.</span></div>\n\n<ul class=\"KsbFXc U6u95\">\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Образование:</strong> Окончила Кировское училище искусств (педагогическое отделение) в 1971 году.</span></li>\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Обучение ремеслу:</strong> В промысел пришла в 1972 году, обучалась мастерству у известной наставницы А. В. Кузьминых.</span><span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></li>\n</ul>\n\n<div class=\"otQkpb\"> </div>\n\n<ul class=\"KsbFXc U6u95\">\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Стиль:</strong> Искусствоведы называют её «большим художником». Её работы отличаются уникальностью и строгим соблюдением традиций, при этом в них чувствуется индивидуальный почерк автора.</span></li>\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Общественная деятельность:</strong> В течение многих лет Людмила Дмитриевна является членом, а в настоящее время — <strong class=\"Yjhzub\">председателем художественного совета</strong> организации «Союз художников России — Народный художественный промысел „Дымковская игрушка“».</span></li>\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Выставочная деятельность:</strong> Её изделия представляли русское искусство на международных выставках в Неаполе, Палермо, Улан-Баторе, Братиславе, Праге и в семи городах Японии.</span><span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></li>\n</ul>\n\n<ul class=\"KsbFXc U6u95\">\n	<li> </li>\n</ul>\n\n<div class=\"Fsg96\"> </div>\n\n<div class=\"otQkpb\">Известные работы</div>\n\n<div class=\"otQkpb\"> </div>\n\n<div class=\"Y3BBE\">Многие произведения художницы хранятся в музейных фондах, включая Государственный исторический музей и Пермскую художественную галерею. Среди её знаковых композиций:<span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></div>\n\n<div class=\"Y3BBE\"> </div>\n\n<ul class=\"KsbFXc U6u95\">\n	<li><span class=\"T286Pc\">«Праздник Преображения» (фрагмент «Радуга-Беседка»);</span></li>\n	<li><span class=\"T286Pc\">«Водоноска»;</span></li>\n	<li><span class=\"T286Pc\">«Индюк»;</span></li>\n	<li><span class=\"T286Pc\">«Чаепитие».</span><span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></li>\n</ul>\n\n<ul class=\"KsbFXc U6u95\">\n	<li> </li>\n</ul>\n\n<div class=\"Y3BBE\">За свои заслуги Людмила Верещагина отмечена Почетными грамотами Департамента культуры и благодарностями администрации Кировской области.<span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></div>\n\n<div class=\"Y3BBE\"> </div>\n\n<div class=\"Fsg96\"> </div>\n\n<div>\n<div class=\"DBd2Wb\">\n<div>\n<div class=\"v4bSkd\"> </div>\n</div>\n</div>\n</div>','',''),
(5960,'','','',''),
(5961,'','','',''),
(5973,'<p>Robert Dallet was a French painter and illustrator best known for his highly realistic, almost scientific depictions of wild animals—especially big cats. Within the Hermès universe, he occupies a very specific and respected place: he was not a fashion designer in the conventional sense, but a naturalist artist whose work Hermès adapted into silk.</p>\n\n<p>Dallet trained as a classical painter and developed a deep interest in zoology.  Before working with Hermès, his illustrations were already used in natural history books and scientific publications, which explains the authority and precision of his imagery.</p>\n\n<p>Hermès collaborated with Robert Dallet mainly in the 1980s, a period when the house was actively expanding the artistic vocabulary of the carré. His designs stand apart from more ornamental or heraldic Hermès scarves and are immediately recognizable for their animal focus.</p>\n\n<p>Robert Dallet’s work sits alongside, but distinct from, illustrators like Hugo Grygkar or Joachim Metz:  Where Grygkar emphasized graphic elegance and equestrian motifs, Dallet introduced natural history and wildlife painting into the Hermès silk archive.</p>\n\n<p><em>With help from AI</em></p>','','',''),
(5965,'<p><strong>Why I Love This Pattern</strong>:</p>\n\n<p>It\'s quintessentially Hermès and undeniably French.</p>\n\n<p>Lately, I\'ve been drawn to more traditional scarves, perhaps inspired by my <em>\"As Seen Somewhere\"</em> series. While this particular design isn\'t part of that series, I absolutely adore its classic aesthetic.</p>\n\n<p>Plus, the vibrant yellow border is fabulous.</p>\n\n<p><em>From https://abigail-goodman.com/</em></p>','','',''),
(5966,'<h3><em>From <a href=\"https://abigail-goodman.com/\">abigail-goodman.com</a></em></h3>\n\n<p>It\'s quintessentially Hermès and undeniably French.</p>\n\n<p>Lately, I\'ve been drawn to more traditional scarves, perhaps inspired by my <em>As Seen In</em> series.</p>\n\n<p>While this particular design isn\'t part of that series, I absolutely adore its classic aesthetic.</p>\n\n<p>Plus, the vibrant yellow border is fabulous.</p>','<h3><em>От <a href=\"https://abigail-goodman.com/\">abigail-goodman.com</a></em></h3>\n\n<p>Это квинтэссенция Hermès и настоящий французский стиль.</p>\n\n<p>В последнее время меня привлекают более традиционные carrés из серии <em>«Как  я где-то видел...».</em></p>\n\n<p>Хотя этот конкретный дизайн не входит в эту серию, я просто обожаю его классическую эстетику.</p>\n\n<p>Кроме того, яркая желтая кайма просто великолепна.</p>','',''),
(5967,'<p><em>Marie-Françoise Faconnet</em>— often credited as <em>F. Faconnet </em>or simply <em>Faconnet</em> — is a celebrated French textile designer best known for her iconic silk scarves created for Hermès. Her most famous work includes the beloved <em>Astrologie</em> series of the 1960s, which has become a cornerstone of Hermès scarf history.</p>\n\n<p>Her designs are instantly recognizable for their intricate detail and rich storytelling. Drawing inspiration from astronomy, history, and symbolic imagery, she created patterns that feel both timeless and deeply imaginative. Today, her vintage Hermès scarves are treasured by collectors around the world.</p>\n\n<p>To see the name <em>Faconnet</em> on an Hermès scarf is to hold a piece of classic French design — a blend of artistry, heritage, and enduring beauty.</p>\n\n<p><em><strong>With help from ChatGPT</strong></em></p>','<p><em>Marie-Françoise Faconnet </em>— также известная под подписью <em>F. Faconnet </em>или просто <em>Faconnet</em> — известная французская дизайнер по текстилю, прославившаяся своими легендарными шёлковыми платками для Hermès. Особенно знаменита её серия <em>Astrologie</em> 1960-х годов, ставшая настоящей классикой в истории дома Hermès.</p>\n\n<p>Её работы легко узнать по тончайшим деталям и глубокому образному языку. Черпая вдохновение в астрономии, истории и символике, она создаёт орнаменты, которые одновременно выглядят вечными и фантазийными. Сегодня её винтажные carrés Hermès высоко ценятся коллекционерами по всему миру.</p>\n\n<p>Увидеть имя <em>Faconnet</em> на платке Hermès — значит держать в руках частичку классического французского дизайна, сочетание искусства, традиции и неподвластной времени красоты</p>\n\n<p><em><strong>При помощи ChatGPT</strong></em></p>\n\n<hr />','<p>Marie-Françoise « Faconnet » — souvent créditée F. Faconnet ou simplement Faconnet — est une créatrice textile française renommée, surtout célèbre pour ses emblématiques carrés en soie réalisés pour Hermès. Parmi ses œuvres les plus connues, on trouve la série <em>Astrologie</em> des années 1960, devenue un véritable classique de la maison.</p>\n\n<p>Ses créations se distinguent par une richesse de détails et une narration visuelle raffinée. Inspirée par l’astronomie, l’histoire et l’univers symbolique, elle a imaginé des motifs à la fois intemporels et empreints de poésie. Aujourd’hui, ses carrés vintage Hermès sont très recherchés par les collectionneurs.</p>\n\n<p>Voir la signature <em>Faconnet</em> sur un carré Hermès, c’est tenir entre ses mains un morceau d’histoire du design français — un mariage d’art, d’héritage et d’élégance durable.</p>\n\n<p><em><strong>Avec l’aide de ChatGPT</strong></em></p>','<p>Marie-Françoise ”Faconnet” — ofta signerad som F. Faconnet eller bara Faconnet — är en uppskattad fransk textildesigner, mest känd för sina ikoniska sidensjalar för Hermès. Hennes mest berömda verk är den älskade <em>Astrologie</em>-serien från 1960-talet, som idag räknas som en viktig del av Hermès historia.</p>\n\n<p>Hennes design kännetecknas av rika detaljer och ett starkt berättande. Med inspiration från astronomi, historia och symboliska motiv skapade hon mönster som både känns tidlösa och fantasifulla. I dag är hennes vintage-Hermès-sjalar högt värderade av samlare världen över.</p>\n\n<p>När du ser namnet <em>Faconnet</em> på en Hermès-sjal håller du i ett stycke klassisk fransk design — en kombination av hantverk, arv och varaktig skönhet.</p>\n\n<p><em><strong>Med hjälp av ChatGPT</strong></em></p>'),
(5968,'<p><em>Donna Maria Gabriella La Torre de Stampa</em> is known in the Hermès community only by her pseudonym <em>Madame La Torre</em>. Originally a student in Milan under Master Cremona, Gabriella was a prolific painter of porcelain, reportedly creating over 18,000 pieces in 50 years.</p>\n\n<p>In 1957, Jean R. Guerrand, a director at Hermès, visited her in Rome and was impressed by her porcelain coffee service featuring insect motifs. This meeting led to her first scarf design for the 1958 Spring-Summer collection.</p>\n\n<p>Her designs introduced a feminine, nature-based aesthetic to Hermès at the time, when the brand\'s production was heavily focused on equestrian and military themes.</p>\n\n<p><em>Inspired by AI</em></p>','<p><em>Donna Maria Gabriella La Torre de Stampa</em> известна в сообществе Hermès исключительно под своим псевдонимом — <em>Мадам La Torre</em>. Ученица миланского мастера Кремоны, Gabriella была успешной художницей по фарфору; сообщается, что за 50 лет она создала более 18 000 работ.</p>\n\n<p>В 1957 году Жан Р. Герран, один из директоров Hermès, посетил её в Риме и был впечатлён её фарфоровым кофейным сервизом с изображениями насекомых. Эта встреча привела к созданию её первого дизайна платка для коллекции «Весна-Лето» 1958 года.</p>\n\n<p>Её работы привнесли в Hermès женственную, вдохновлённую природой эстетику в то время, когда производство бренда было сосредоточено преимущественно на конной и военной тематике.</p>\n\n<p><em>Навеяно ИИ</em></p>','<p><em>Donna Maria Gabriella La Torre de Stampa</em> n\'est connue dans la communauté Hermès que sous son pseudonyme, <em>Madame La Torre</em>. Ancienne élève du <em>maître Cremona</em> à Milan, Gabriella était une peintre sur porcelaine prolifique, ayant créé plus de 18 000 pièces en 50 ans.</p>\n\n<p>En 1957, Jean R. Guerrand, l\'un des directeurs d\'Hermès, lui rendit visite à Rome et fut impressionné par son service à café en porcelaine orné de motifs d\'insectes. Cette rencontre mena à la création de son premier carré pour la collection printemps-été 1958.</p>\n\n<p>Ses créations ont introduit une esthétique féminine et naturelle chez Hermès à une époque où la production de la marque était fortement axée sur les thèmes équestres et militaires.</p>',''),
(5969,'<h3><em>From The Hermès Fall-Winter 2012/13 Seasonal Scarf Booklet:</em></h3>\n\n<p>Inspired by an astrological table dating from the Renaissance, the scarf Astrologie, by <a href=\"../../h_persons/marie-francoise-faconnet/\">Françoise Faconnet</a>, shows the ingenious system indicating the passages of the moon and sun.</p>\n\n<p>It is, in a way, an image of time passing. Yet the world and our time changes; rhythms are accelerating and time becomes a tempo.</p>\n\n<p>Reinterpreted by <a href=\"../../h_persons/309-cyrille-diatkine/\">Cyrille Diatkine</a>, the design, transfigured, finds modernity and vigour. The alternating patterns reinvent history, upset the rhythm, syncopate the story, leaving to each the choice to read it in a \"disordered order\"-free and random.</p>\n\n<p>Play with time.</p>\n\n<p>Change, dream, move -  this could be the message.</p>','','',''),
(5975,'','','',''),
(5974,'<h3><em>Inspired by AI</em></h3>\n\n<p>This scarf is one of the most emblematic examples of Hermès’s engagement with wildlife art in the late 20th century. It reflects Dallet’s background as a naturalist painter rather than a decorative fashion illustrator. Within the Hermès scarf archive, Afrika is notable since it breaks equestrian and heraldic tradition</p>\n\n<p>Afrika was issued during the 1980s, a period when Hermès deliberately broadened the artistic scope of the carré. At that time, the house invited artists with strong, independent visual languages  (Dallet being a prime example) to treat the scarf as a serious pictorial surface.</p>\n\n<p>The design centers on African wildlife, most notably big cats—lions, leopards, or cheetahs—placed within a richly observed natural setting. Rather than a symbolic or ornamental “Africa,” Dallet presents a naturalist vision, grounded in real animal anatomy and behavior.</p>\n\n<h3><em>From The Hermès Fall-Winter 1997/98 Seasonal Scarf Booklet: </em></h3>\n\n<p>Africa - the crade of mankind.</p>\n\n<p>Sometimes we find ourselves regretting that the child has shed his swaddling clothes too early, or sown his wild oats too wildly.</p>\n\n<p>But untamed nature still bestows nobility upon this limitless continent, emblazoned by the golden sun.</p>\n\n<p>Flora and fauna combine in a vibrantly multi-coloured atmosphere, which sets, as it were, a mirage of an untouched paradise, there on the flaming savannah and the dreaming faces of the great lakes.</p>','<h3><em>Навеянное ИИ:</em></h3>\n\n<p>Этот платок — один из самых удачных изображений дикой природы, когда  в конце 20-го века Hermès начал расширять темы своих произведений. Он прекрасно демонстрирует опыт Dallet как художника-натуралиста. В архиве шарфов Hermès «Африка» это первое нарушение традиции конной и геральдической линий.</p>\n\n<p>«Африка» была выпущена в 1980-х годах, в период, когда Hermès намеренно расширил художественные рамки платков. В то время дом приглашал художников с сильными, независимыми визуальными языками (Dallet — яркий тому пример) рассматривать шарф как серьезную живописную поверхность.</p>\n\n<p>Дизайн сосредоточен на африканской дикой природе, в первую очередь на крупных кошках — львах, леопардах или гепардах — в богато изображенной природной среде.</p>\n\n<h3> </h3>\n\n<h3><em>Из буклета Hermès осенне-зимней коллекции шарфов 1997/98:</em></h3>\n\n<p>Африка — прародина человечества.</p>\n\n<p>Иногда мы сожалеем, что ребенок слишком рано снял пеленки или слишком бурно посеял свои дикие семена.</p>\n\n<p>Но необузданная природа все еще дарует благородство этому безграничному континенту, озаренному золотым солнцем.</p>\n\n<p>Флора и фауна сливаются в яркую многоцветную атмосферу, которая, словно мираж, создает Нетронутый рай, там, на пылающей саванне и среди мечтательных берегов великих озер.</p>\n\n<p> </p>\n\n<p> </p>\n\n<p> </p>\n\n<p> </p>','',''),
(5976,'<h3><em>From The Hermès Spring-Summer 2009 Seasonal Scarf Booklet:</em></h3>\n\n<p>Over the centuries, the indian in Brazil has mingled his feathers with his past, with his rituals and with his festivals: sumptuous headdresses and finery, jewellery ornaments and musical instruments - sheer bursts of colour!</p>\n\n<p>The art of the feather has evolved in a green and sombre environment where the plume of the birds surpasses that of the flowers.</p>\n\n<p>More than one thousand different species, some of which are unique in the world, offer an incredible array of colours and shapes.</p>\n\n<p>Furthermore, of the 350,000 Indians living in Brazil, 60% reside in the tropical forest where isolated tribes still live today, completely cut off from the rest of the world.</p>\n\n<h3><em>From The Hermès Fall-Winter 1988/89 Seasonal Scarf Booklet:</em></h3>\n\n<p>Primitive man dreamed of flying and since he could not, he adorned himself with beautiful birds\' feathers hoping to rise above his terrestrial fate.</p>\n\n<p>Today, the sons of Icarus fly in airplanes to surmount their pedestrian condition, but the fascination of feathers remains.</p>\n\n<p>In Brazil, they are everywhere: in fashion, head-dress, musical instruments, in celebration of rituals and tumult of festivities.</p>\n\n<p> </p>','<h3><em>Из буклета коллекции шарфов Hermès весна-лето 2009:</em></h3>\n\n<p>На протяжении веков индейцы в Бразилии смешивали свои перья со своим прошлым, со своими ритуалами и праздниками: роскошные головные уборы и наряды, украшения и музыкальные инструменты — сплошные всплески цвета!</p>\n\n<p>Искусство работы с перьями развивалось в зеленой и мрачной среде, где перья птиц превосходят перья цветов.</p>\n\n<p>Более тысячи различных видов, некоторые из которых уникальны в мире, предлагают невероятное разнообразие цветов и форм.</p>\n\n<p>Кроме того, из 350 000 индейцев, проживающих в Бразилии, 60% живут в тропических лесах, где до сих пор живут изолированные племена, полностью отрезанные от остального мира.</p>\n\n<h3><em>Из Буклетa осенне-зимней коллекции шарфов Hermès 1988/89: </em></h3>\n\n<p><em>Первобытный человек мечтал летать, и поскольку он не мог этого делать, он украшал себя прекрасными птичьими перьями, надеясь подняться над своей земной судьбой.</em></p>\n\n<p><em>Сегодня сыновья Икара летают на самолетах, чтобы преодолеть свою обыденность, но очарование перьев остается.</em></p>\n\n<p><em>В Бразилии они повсюду: в моде, головных уборах, музыкальных инструментах, в ритуалах и шуме праздников.</em></p>\n\n<p> </p>','<h3><em>Extrait du catalogue des foulards Hermès Printemps-Été 2009 :</em></h3>\n\n<p>Au fil des siècles, les Indiens du Brésil ont mêlé leurs plumes à leur passé, à leurs rituels et à leurs fêtes : coiffes somptueuses, parures, bijoux et instruments de musique – de véritables explosions de couleurs !</p>\n\n<p>L’art de la plume s’est développé dans un environnement verdoyant et sombre où le plumage des oiseaux surpasse celui des fleurs.</p>\n\n<p>Plus de mille espèces différentes, dont certaines sont uniques au monde, offrent une incroyable palette de couleurs et de formes.</p>\n\n<p>Par ailleurs, sur les 350 000 Indiens vivant au Brésil, 60 % résident dans la forêt tropicale où vivent encore aujourd’hui des tribus isolées, totalement coupées du reste du monde.</p>\n\n<h3><em>Extrait du catalogue Hermès Automne-Hiver Livret des carrés saisonniers 1988/89:</em></h3>\n\n<p>L’homme primitif rêvait de voler et, ne le pouvant, il se parait de magnifiques plumes d’oiseaux, espérant ainsi s’élever au-dessus de sa condition terrestre.</p>\n\n<p>Aujourd’hui, les fils d’Icare prennent l’avion pour échapper à leur condition terrestre, mais la fascination pour les plumes demeure.</p>\n\n<p>Au Brésil, elles sont omniprésentes : dans la mode, les coiffes, les instruments de musique, lors des rituels et des festivités.</p>\n\n<p> </p>',''),
(5977,'<p>The former stables at <a href=\"https://www.schloss-nymphenburg.de/englisch/tourist/index.htm\">Schloss Nymphenburg</a>, in Munich, house one of Europe’s finest collections of classic carriages, covering the 17th to the late 19th centuries.</p>\n\n<p>Here are children’s traps and Imperial coaches, formal Berlins, horse-drawn sleighs and richly decorated dog sleds, together with sumptuous bridlery, each piece more beautiful than the last.</p>\n\n<p>Highlights of the collection include the extravagant carriage of King Ludwig II of Bavaria – a riot of gilded sculpture - and the coronation coach of the Holy Roman Emperor Charles VII of Germany, complete with its harnessing. Inspired by the Nymphenburg collection, this carré features a bridle and saddle cloth decorated with a courtly array of embroidered velvets, golden tassels, finely-worked buckles, braids and embossed leathers.</p>\n\n<p><strong><em>Published  by <a href=\"https://scarfsage.com\">ScarfSage.com</a></em></strong></p>','<p>В бывших конюшнях замка <a href=\"https://www.schloss-nymphenburg.de/englisch/tourist/index.htm\">Нимфенбург</a> в Мюнхене хранится одна из лучших в Европе коллекций классических карет, охватывающая период с XVII по конец XIX века.</p>\n\n<p>Здесь представлены детские кареты и императорские экипажи, парадные берлинские кареты, конные сани и богато украшенные собачьи упряжки, а также роскошная уздечка, каждый экземпляр прекраснее предыдущего.</p>\n\n<p>Среди главных экспонатов коллекции — экстравагантная карета короля Людвига II Баварского, изобилующая позолоченной скульптурой, и коронационная карета императора Священной Римской империи Карла VII Германского, в комплекте с упряжью. Вдохновленная коллекцией Нимфенбурга, эта карета украшена уздечкой и седлом, декорированными изысканным набором вышитого бархата, золотых кисточек, тонко выполненных пряжек, тесьмы и тисненой кожи.</p>\n\n<p><em><strong>Опубликовано ScarfSage.com</strong></em></p>','<p>Les anciennes écuries du château de Nymphenburg, à Munich, abritent l\'une des plus belles collections de voitures hippomobiles classiques d\'Europe, datant du XVIIe siècle à la fin du XIXe siècle.</p>\n\n<p>On y trouve des voitures pour enfants, des carrosses impériaux, des Berlins de cérémonie, des traîneaux à chevaux et des traîneaux à chiens richement décorés, ainsi que de somptueux harnais, chaque pièce étant plus belle que la précédente.</p>\n\n<p>Parmi les pièces maîtresses de la collection figurent le carrosse extravagant du roi Louis II de Bavière – un véritable foisonnement de sculptures dorées – et le carrosse du sacre de l\'empereur Charles VII d\'Allemagne, avec son harnais. Inspiré de la collection Nymphenburg, ce carré présente un motif de bride et de tapis de selle orné d\'une somptueuse broderie de velours, de glands dorés, de boucles finement travaillées, de galons et de cuirs gaufrés.</p>\n\n<p><em>Publié par ScarfSage.com</em></p>',''),
(5979,'','','',''),
(5980,'','','',''),
(5981,'<h3><em>From The Hermès Fall-Winter 1997/98 Seasonal Scarf Booklet:</em></h3>\n\n<p>Man\'s noble conquest serves also to display him to best advantage.</p>\n\n<p>Whether in the headlong fantasia of Mali, or in hunting the giraffe in Burkina Faso, or fording rivers in Togo, lion hunting in Niger or travelling to a feast in Cameroon, the horseman performs wonders and his steed obeys.</p>\n\n<p>But is it he or his mount who draws the glances of the beautiful pounders of millet, of the bathers and others who bear pitchers of water?</p>\n\n<p>Who knows?</p>','<h3><em>Из буклета Hermès осенне-зимней коллекции шарфов 1997/98:</em></h3>\n\n<p>Благородные завоевания человека также служат для того, чтобы представить его в самом выгодном свете.</p>\n\n<p>Будь то безудержная фантазия в Мали, охота на жирафа в Буркина-Фасо, переправа через реки в Того, охота на львов в Нигере или путешествие на пир в Камерун, всадник творит чудеса, и его конь повинуется.</p>\n\n<p>Но кто привлекает взгляды прекрасных толкушек проса, купальщиц и других, несущих кувшины с водой?</p>\n\n<p>Кто знает?</p>','<h3><em>Extrait du catalogue des foulards Hermès Automne-Hiver 1997/98 :</em></h3>\n\n<p>La noble conquête de l’homme sert aussi à le mettre en valeur.</p>\n\n<p>Que ce soit dans l’exubérance fantasmagorique du Mali, à la chasse à la girafe au Burkina Faso, à la traversée des rivières au Togo, à la chasse au lion au Niger ou au voyage vers un festin au Cameroun, le cavalier accomplit des merveilles et sa monture lui obéit.</p>\n\n<p>Mais est-ce lui ou sa monture qui attire les regards des belles pileuses de mil, des baigneuses et de celles qui portent des cruches d’eau ?</p>\n\n<p>Qui sait ?</p>',''),
(6284,'<p>Beyond Retro’s vintage and second-hand clothing shop in Stockholm Södermalm, has become THE destination for locals looking for something truly special and sustainable for their individual style.</p>\n\n<p>Popular for its huge range of affordable iconic brands such as Levis, Tommy Hilfiger, Nike, adidas, plus rails and rails of one-of-a-kind vintage dresses, jackets and childrens clothes, the shop is only moments away from Zinkensdamm and Mariatorget stations, in the heart of the most creative neighborhood in Stockholm.</p>','','',''),
(5982,'<div>The design of this scarf is a detailed depiction of the <em class=\"eujQNb\">charreada</em>, a traditional Mexican rodeo and national sport that showcases the skills of the <em class=\"eujQNb\">charros</em> (mexican cowboys)</div>\n\n<p><span class=\"T286Pc\">The scarf illustrates various scenes and events of a traditional <em>charreada</em>, focusing on the working practices and skills of <em>charros</em> with horses and bulls. Specific competitive events like roping (<em class=\"eujQNb\">piales en lienzo</em>, <em class=\"eujQNb\">manganas</em>), bull riding (<em class=\"eujQNb\">jineteo de toro</em>), and wild mare riding (<em class=\"eujQNb\">jineteo de yegua</em>) are represented in the artwork</span></p>\n\n<div class=\"Y3BBE\">The \"<em>Charreada</em>\" scarf is more than just an accessory; it is considered a work of wearable art that tells a story of Mexican equestrian tradition.</div>\n\n<div class=\"Y3BBE\">\n<p><em>With help from AI</em></p>\n</div>','<p>Дизайн этого платка - это детальное изображение <em>чарреады</em>, традиционного мексиканского родео и национального вида спорта, демонстрирующего мастерство <em>чарро</em> (мексиканских ковбоев).</p>\n\n<p>Здесь различные сцены традиционной чарреады, с акцентом на рабочие приемы и навыки чарро в обращении с лошадьми и быками. Представлены соревновательные дисциплины, такие как ловля арканом <em>(piales en lienzo, manganas)</em>, укрощение быка <em>(jineteo de toro) </em>, укрощение дикой кобылы <em>(jineteo de yegua)</em>.</p>\n\n<p>Платок <em>\"Мексиканское Родео\"</em> — это больше, чем просто аксессуар; он считается произведением носимого искусства, рассказывающим историю мексиканских конных традиций.</p>\n\n<p><em>При участии ИИ</em></p>','<div>Le motif de cette écharpe représente en détail la <em class=\"eujQNb\">charreada</em>, un rodéo traditionnel mexicain et un sport national qui met en valeur le savoir-faire des <em class=\"eujQNb\">charros</em> (cow-boys mexicains).</div>\n\n<p><span class=\"T286Pc\">L\'écharpe illustre différentes scènes et épreuves d\'une <em>charreada</em> traditionnelle, en mettant l\'accent sur le travail et l\'habileté des <em>charros</em> avec les chevaux et les taureaux. Des épreuves spécifiques comme le lasso (<em class=\"eujQNb\">piales en lienzo</em>, <em class=\"eujQNb\">manganas</em>), la monte de taureau (<em class=\"eujQNb\">jineteo de toro</em>) et la monte de jument sauvage (<em class=\"eujQNb\">jineteo de yegua</em>) sont représentées.</span></p>\n\n<div>Charreada » est bien plus qu\'un simple accessoire ; c\'est une véritable œuvre d\'art à porter, qui raconte l\'histoire de la tradition équestre mexicaine.\n<div class=\"Y3BBE\">\n<p><em>Avec l\'aide de l\'IA</em></p>\n</div>\n</div>',''),
(5984,'','','',''),
(5985,'<div><span class=\"T286Pc\">The name \"<strong class=\"Yjhzub\">Clic-clac</strong>\" is an onomatopoeia, meant to evoke the cheerful, tinkling sound and rhythm of harness clasps and horses\' hooves as a magnificent team of horses and carriage passes by.</span></div>\n\n<p><span class=\"T286Pc\">The specific illustrations in the design are directly inspired by real objects and treasures found in the extensive Émile Hermès collection, a key source for many Hermès scarf designs.</span></p>\n\n<p><span class=\"T286Pc\">The dynamic composition of the scarf prominently features:</span><span class=\"T286Pc\"> Sinuous lines of <strong class=\"Yjhzub\">leather blinkers,</strong></span> <span class=\"T286Pc\">Elegant interlacing patterns formed by <strong class=\"Yjhzub\">late 19th-century English horsewhips, </strong></span><span class=\"T286Pc\">Handles made of <strong class=\"Yjhzub\">blackthorn</strong> adorned with <strong class=\"Yjhzub\">silver rings</strong> and <strong class=\"Yjhzub\">pommels</strong>.</span><span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></p>\n\n<div class=\"Y3BBE\">The design is a classic example of Hermès\' ability to transform functional, historic equestrian equipment into a work of art, blending aesthetic rigor with a touch of fantasy.<span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></div>\n\n<div class=\"Y3BBE\"> </div>','<p>Название «Clic-clac» — это ономатопея, призванная передать радостный, звонкий ритм и звучание пряжек упряжи и цокота копыт, когда мимо проезжает великолепная упряжка с каретой. По-русски</p>\n\n<p>Конкретные иллюстрации в дизайне напрямую вдохновлены реальными предметами и сокровищами из обширной коллекции Эмиля Эрмеса — одного из ключевых источников вдохновения для многих платков Hermès.</p>\n\n<p>Динамичная композиция платка строится вокруг выразительных элементов: плавных линий кожаных шор, изящных переплетений, образованных английскими хлыстами конца XIX века, а также рукоятей из терновника, украшенных серебряными кольцами и навершиями.</p>\n\n<p>Этот дизайн — классический пример мастерства Hermès, превращающего функциональные и исторические предметы конного снаряжения в произведение искусства, где строгая эстетика гармонично сочетается с ноткой фантазии.</p>','',''),
(5986,'','','',''),
(5987,'','','',''),
(5988,'','','',''),
(5989,'<h3><em>From <a href=\"https://abigail-goodman.com/\">abigail-goodman.com</a></em></h3>\n\n<p>This is one of the lesser known designs by Françoise De La Perriere.</p>\n\n<p>Sometimes it\'s nice to have one that isn\'t as recognizable.</p>\n\n<p>I love the traditional design and very French colorway.</p>\n\n<p>Françoise has so many designs that are very well known, like Etriers,  Bouclerie moderne and Early America, which are also all scarves I\'ve sold before!</p>\n\n<p> </p>','<h3><em>От <a href=\"https://abigail-goodman.com/\">abigail-goodman.com</a></em></h3>\n\n<p><em>\"Cuivreries\" (Медяшки)</em> - один из менее известных дизайнов Françoise De La Perriere.</p>\n\n<p>Иногда приятно иметь что-то не такое узнаваемое.</p>\n\n<p>Мне нравится традиционный дизайн и очень французская цветовая гамма.</p>\n\n<p>У Françoise так много очень известных дизайнов, таких как Etriers, Bouclerie moderne, Early America, и все эти carré проходили через мои руки!</p>\n\n<p> </p>','<h3><em>De <a href=\"https://abigail-goodman.com/\">abigail-goodman.com</a></em></h3>\n\n<p>Voici l\'un des modèles les moins connus de Françoise De La Perrière.</p>\n\n<p>Parfois, c\'est agréable d\'avoir une pièce moins connue.</p>\n\n<p>J\'adore son design traditionnel et ses couleurs très françaises.</p>\n\n<p>Françoise a créé de nombreux modèles très célèbres, comme Etriers, Bouclerie moderne et Early America, que j\'ai d\'ailleurs déjà vendus !</p>\n\n<p> </p>',''),
(5990,'<h3><em>From The Hermès Fall-Winter 2010/11 Seasonal Scarf Booklet:</em></h3>\n\n<p>A thirst slance, it\'s a complex and harmonious interlacing.</p>\n\n<p>La cunningly orchestrated composition of leather and metal, of rings and circles: a rose pattern set within the square of a carre. And then our eves focus and make out each element, whose repetition gives rhythm to the movement, soothing as much as intriguing.</p>\n\n<p>Our fingers now itch to trace this mysterious network, without any beginning or ending. </p>\n\n<p>Spurs, stirrups, rein buckles and riding crops with three gold ferrules: the riding tack of the horsemen of the <em>Cadre Noir </em>of <em>Saumur</em>, that prestigious French riding school created in the nineteenth century, traces its bends and its straights.</p>','<h3><em>Из буклета коллекции шарфов Hermès осень-зима 2010/11:</em></h3>\n\n<p>Это захватывающее дух переплетение, сложное и гармоничное.</p>\n\n<p>Искусно выстроенная композиция из кожи и металла, колец и кругов: узор розы, вписанный в квадрат шарфа.</p>\n\n<p>И тогда наши глаза сосредотачиваются и различают каждый элемент, повторение которого придает движению ритм, одновременно успокаивающий и интригующий.</p>\n\n<p> </p>\n\n<p>Наши пальцы теперь жаждут проследить эту таинственную сеть, не имеющую ни начала, ни конца.</p>\n\n<p>Шпоры, стремена, пряжки поводьев и хлысты с тремя золотыми наконечниками: конная амуниция всадников <em>Черной Кадры</em> <em>Сомюра</em>, престижной французской школы верховой езды, созданной в девятнадцатом веке, повторяет ее изгибы и прямые участки.</p>','<h3><em>Extrait du catalogue des foulards Hermès Automne-Hiver 2010/11 :</em></h3>\n\n<p>Un entrelacs complexe et harmonieux, une véritable invitation à la détente.</p>\n\n<p>Une composition savamment orchestrée de cuir et de métal, d’anneaux et de cercles : un motif de rose inscrit dans le carré. Le regard se pose alors sur chaque élément, dont la répétition rythme le mouvement, à la fois apaisant et intrigant.</p>\n\n<p>Nos doigts ont une envie irrésistible de parcourir ce réseau mystérieux, sans début ni fin.</p>\n\n<p>Éperons, étriers, boucles de rênes et cravaches à trois embouts d’or : l’équipement des cavaliers du <em>Cadre Noir</em> de <em>Saumur</em>, cette prestigieuse école d’équitation française créée au XIX<sup>e</sup> siècle, dessine ses courbes et ses lignes droites.</p>',''),
(5991,'','','',''),
(5993,'','','',''),
(5994,'','','',''),
(5995,'','','',''),
(5996,'<div class=\"col no-offset push-0 span-5 align-top no-parallax type-text\">\n<div class=\"text lay-textformat-parent\">\n<p>à blanc, commencer, cette impulsion-là assortie d’une entière disponibilité, dans le présent permanent du dessin, voilà ma participation, mon engagement, un des seuls lieux et moments de la vie où le sérieux naturellement s’impose, où je me dissous, ne suis plus, être pour suivre le cours du dessin, dans la concentration absolue de ce qui advient, en direct, totalement attentive à ce qui se produit, la forme appelle la forme, la laisser venir, dans la plus grande liberté et souplesse possibles, laisser advenir et se développer ce qui se formule, coule, accompagner ce mouvement, observer ce flux, s’accorder à lui, au plus près, jusqu’à son amenuisement progressif, momentané ou définitif, alors le processus est arrivé à son terme, sous forme d’un dessin nouveau, inédit, pur, produit avec l’assistance de la main en accord avec un certain cerveau, un nouveau dessin peut alors s’initier, si nécessaire, en complément ou en rupture avec le précédent, sur une nouvelle feuille, chaque dessin est indispensable, un dessin n’est pas le résultat, c’est un début de solution, le dessin est la solution, la solution est toujours dans le dessin, dans un dessin qui s’invente ainsi sans préméditation, le résultat résulte, les autres dessins, plus volontaires, je les aime aussi, j’y mets le même soin, la même concentration, c’est le même plaisir du dessin, mais ce sont ceux qui arrivent ainsi, qui s’inventent de ma main à ma surprise, ce sont eux le coeur, un dessin qui ne représente rien que sa propre forme, une énigme, une altérité, où un début, où une fin, où devant, derrière, l’endroit, l’envers, quelles consistance, contexte, échelle, c’est l’aventure, ici elle n’est pas dangereuse c’est juste un dessin, ce n’est pas le far west, même s’il y a beaucoup de chutes, de temps jeté, perdu, c’est mon far west chéri, j’aime bien cette idée d’inconfort confortable, de meilleur inconfort, le dessin c’est ça, une recherche du meilleur deséquilibre, je suis dans ce présent éternel du dessin, c’est mon activité, ma science et ma vie, les choses se sont ainsi posées, en bonne intelligence entre dessin pour la maison Hermès et dessin privé, il convient maintenant de lui offrir une visibilité</p>\n</div>\n</div>','<p>пустое начало, импульс в сочетании с абсолютной доступностью, в вечном настоящем рисования, таково мое участие, моя преданность, одно из немногих мест и моментов в жизни, которое естественным образом требует серьезности, где я растворяюсь, перестаю существовать, мое бытие следует за потоком рисования, полностью сосредоточенное на том, что происходит в реальном времени, всецело внимательное к происходящему, форма манит форму, принимает очертания в максимально возможной свободе и текучести, то, что появляется, возникает и развивается, вспыхивает, сопровождая движение, наблюдая за потоком, настраиваясь на него настолько, насколько это возможно, до постепенного, мгновенного или окончательного истощения, когда процесс достигает своего завершения в виде нового рисунка, свежего, чистого, рожденного с помощью руки в синхронизации с определенным мозгом, затем может начаться другой рисунок, если необходимо, дополнение или разрыв с тем, что только что появилось, на чистом листе, каждый рисунок существенен, рисунок — это не результат, а начало решения, рисунок — это решение, решение всегда в рисунке, в рисунке, который возникает без предварительного обдумывания, результат является результатом, другие Рисунки, более целенаправленные, мне тоже нравятся, в них та же забота, та же концентрация, удовольствие от рисования то же самое, но именно те, которые получаются, которые выходят из-под моей руки, к моему удивлению, — это ядро, рисунок, который изображает только свою собственную форму, загадку, инаковость, где начало, где конец, где раньше, позади, в правильном положении, вверх ногами, какая согласованность, контекст, масштаб, это приключение, здесь нет опасности, просто рисование, это не Дикий Запад, несмотря на все потери, потерянное или выброшенное время, это мой любимый Дикий Запад, мне нравится мысль о комфортном дискомфорте, лучшем дискомфорте, вот что такое рисование, поиск лучшего дисбаланса, я нахожусь в вечном настоящем рисования, это моя деятельность, моя наука и моя жизнь, так все уладилось, мирно и в хороших отношениях между рисованием для Hermès и рисованием для себя, теперь уместно дать этому видимость</p>','',''),
(5998,'','','',''),
(5999,'<p>The French Navy had several ships named <em class=\"eujQNb\">La Flore</em>, including a 32-gun frigate launched in 1769 that participated in scientific voyages and carried letters during the American War of Independence.</p>\n\n<p>The scarf design almost certainly references one of these historical naval vessels, not the general term for plant life.</p>','<p>Французский флот имел несколько кораблей под названием <em>La Flore</em>, включая 32-пушечный фрегат, спущенный на воду в 1769 году, который участвовал в научных экспедициях и перевозил письма во время Войны за независимость США.</p>\n\n<p>Дизайн шарфа наверняка отсылает к одному из этих исторических военно-морских судов, а не к общему названию растений.</p>','<p>La Marine française possédait plusieurs navires nommés <em>«La Flore»</em>, dont une frégate de 32 canons lancée en 1769 qui participa à des expéditions scientifiques et transporta du courrier pendant la guerre d\'indépendance américaine.</p>\n\n<p>Le motif du carré fait très probablement référence à l\'un de ces navires historiques, et non au terme générique désignant le monde végétal.</p>',''),
(6000,'','','',''),
(6001,'','','',''),
(6002,'','','',''),
(6005,'','','',''),
(6006,'<p>\"Coco\", the most famous couturier of the 20th century.</p>\n\n<p>This fashion phenomenon dared and invented the silhouette of today\'s woman, making her discover the comfort of jersey, cardigans, pants, the tweed, the raincoat, the charm of the little black dress, the short skirts, the tan or even the costume jewelry.</p>\n\n<p>Chanel opened a fashion house in 1914, then moved to Paris. From 1939 to 1954 the house was closed. The choice of the reopening date, February 5, is not innocent. The number 5, her lucky number, is also the name of her favorite perfume \"Chanel n°5\"</p>','','<p>«Coco», le plus célèbre couturier du XXe siècle .</p>\n\n<p>Avec un sens aigu de l\'opportunité, un flair infaillible et du talent, ce phénomène de la mode a osé et inventé la silhouette de la femme d\'au jourd\'hui, lui faisant découvrir le confort du jersey, les cardigans, les pantalons, le tweed, l\'imperméable, le charme de la petite robe noire, les jupes courtes, le bronzage ou encore les bijoux fantaisie.</p>\n\n<p>Jeune provinciale ayant connu une enfance pauvre et triste, elle devint l\'une des femmes les plus en vue de Paris, fabuleusement riche, défrayant la chronique par ses audaces et ses liaisons retentissantes, amie et mécène d\'artis tes et d\'écrivains.</p>\n\n<p>Chanel ouvre une maison de mode en 1914 puis sa maison de couture en 1916 à Biarritz, avant de s\'installer à Paris, rue Cambon. De 1939 à 1954 la maison est fermée. Le choix de la date de réouverture, le 5 février, n\'est pas innocent. Le 5, son chiffre porte - bonheur, est aussi le nom de son parfum fétiche «Chanel n° 5» <br />\n </p>',''),
(6013,'','','',''),
(6014,'','','',''),
(6015,'','','',''),
(6016,'','','',''),
(6008,'<p>Gucci was founded in 1921 by <a href=\"https://en.wikipedia.org/wiki/Guccio_Gucci\" title=\"Guccio Gucci\">Guccio Gucci</a> in Florence.</p>\n\n<p>Under the direction of his son  <a href=\"https://en.wikipedia.org/wiki/Aldo_Gucci\" title=\"Aldo Gucci\">Aldo Gucci</a>, the company became a worldwide-known brand, an icon of the Italian <em>Dolce Vita</em>.</p>\n\n<p>Following family feuds during the 1980s, the Gucci family was entirely ousted from the capital of the company by 1993. After this crisis, the brand was revived with a provocative \'Porno Chic\' props. In 1999, Gucci was acquired by the French conglomerate <a href=\"https://en.wikipedia.org/wiki/Pinault_Printemps_Redoute\" title=\"Pinault Printemps Redoute\">Pinault Printemps Redoute</a>.</p>\n\n<p>During the 2010s, Gucci became an iconic \'Geek-Chic\' brand.</p>','<p>В это время появляется современный логотип компании — переплетённые буквы <strong>GG</strong> (инициалы Гуччио Гуччи), шёлковый шарф <em>Flora</em>, который носила <a href=\"https://ru.wikipedia.org/wiki/%D0%93%D1%80%D0%B5%D0%B9%D1%81_%D0%9A%D0%B5%D0%BB%D0%BB%D0%B8\" title=\"Грейс Келли\">Грейс Келли</a>, и сумка с ручкой через плечо <em>Jackie O</em>, которую сделала знаменитой <a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B5%D0%BD%D0%BD%D0%B5%D0%B4%D0%B8,_%D0%96%D0%B0%D0%BA%D0%BB%D0%B8%D0%BD\" title=\"Кеннеди, Жаклин\">Джеки Кеннеди</a>.</p>\n\n<p> </p>','',''),
(6011,'','','',''),
(6021,'<div class=\"qzhwtbm6 knvmm38d\"><em><strong style=\"color:#FF0000;\">ЭТОТ ТЕХТ НАДО ДОРАБАТЫВАТЬ И ПЕРЕВОДИТЬ...</strong></em></div>\n\n<div class=\"qzhwtbm6 knvmm38d\"> </div>\n\n<div class=\"qzhwtbm6 knvmm38d\"><strong><em><span class=\"d2edcug0 hpfvmrgz qv66sw1b c1et5uql oi732d6d ik7dh3pa ht8s03o8 a8c37x1j keod5gw0 nxhoafnm aigsh9s9 d3f4x2em fe6kdd0r mau55g9w c8b282yb iv3no6db jq4qci2q a3bd9o3v knj5qynh oo9gr5id hzawbc8m\"><span class=\"d2edcug0 hpfvmrgz qv66sw1b c1et5uql oi732d6d ik7dh3pa ht8s03o8 jq4qci2q a3bd9o3v knj5qynh oo9gr5id\">Aline Honore designs are very popular with the fakers and auctions for these scarves need to be approached with caution.</span></span></em></strong></div>\n\n<div class=\"qzhwtbm6 knvmm38d\">\n<p>She is a distinguished French artist and designer who has made an indelible mark on the world of Hermès scarves. Born and raised in France, Honoré pursued her artistic passions from an early age. She studied graphic arts and design at the esteemed <a href=\"http://www.ecole-estienne.paris/\">École Estienne</a> in Paris, laying the foundation for her future career in the creative realm. Before joining Hermès in 2005, Honoré gained valuable experience working in various creative fields, including advertising and illustration.</p>\n\n<p>Hermès provided the perfect canvas for Aline Honoré to showcase her talent in creating exquisite silk scarves. Her designs are characterized by intricate patterns, bold colors, and a touch of whimsy, which has become her signature style. Honoré is known for drawing inspiration from nature, history, mythology, and her love for travel and exploration.</p>\n\n<p>Throughout her tenure at Hermès, Aline Honoré has designed numerous scarves that have captivated collectors and Hermès aficionados alike. Some of her most notable designs include <em><a>Les ailes de la soie</a></em>, <em><a>L’art du sarasa</a></em>, <em><a>Parures des samouraïs</a>“</em> Her works are celebrated for their intricate details, layered symbolism, and elegant compositions, exemplifying the exceptional craftsmanship associated with the Hermès brand.</p>\n\n<p>In addition to her work with Hermès, Aline Honoré has collaborated with various organizations and cultural institutions to promote the arts and contribute to creative projects. Her dedication to her craft and pursuit of excellence have earned her a reputation as one of the most talented and respected designers within the Hermès family.</p>\n\n<p>Aline Honoré’s career has created a lasting legacy within the realm of luxury fashion. Her timeless designs continue to be sought after by collectors and Hermès enthusiasts, and her artistic vision will forever be an essential part of the Hermès narrative.</p>\n\n<p>Created by <a href=\"https://scarfsage.com\">ScarfSage.com</a></p>\n</div>','','',''),
(6022,'<p><strong>Jacques Eudel</strong> is a distinguished French designer celebrated for his exceptional scarf designs for the world-renowned luxury brand, Hermès. With a flair for combining intricate patterns and vivid colors, Eudel’s work stands out as both captivating and timeless.</p>\n\n<p>Over the years, Eudel has created a wide range of remarkable scarves for Hermès, each showcasing his exceptional artistic talent and keen sense of aesthetics.</p>\n\n<p>Eudel’s artistic style is characterized by a unique fusion of traditional and modern elements, making his creations instantly recognizable and highly sought-after. His work transcends fashion trends, embodying the timeless elegance and sophistication that Hermès is known for.</p>\n\n<p>Throughout his career, Jacques Eudel has made a significant impact on the world of luxury fashion, and his designs continue to be cherished by fashion enthusiasts and collectors alike.</p>\n\n<p><em>Created by <a href=\"https://scarfsage.com\">ScarfSage.com</a></em></p>','','',''),
(6023,'<p>Je dessine depuis mon plus jeune âge.</p>\n\n<p>Les contes et légendes du monde entier, les mythologies, la symbolique liée à la représentation des animaux et des végétaux dans différentes civilisations anciennes ou récentes, sont mes sources d’inspiration.</p>\n\n<p>Car pour moi, l’art du dessin et de la peinture doit être au service de la beauté de la vie.</p>\n\n<p>Après avoir fait des études d’Arts Plastiques, j’ai dessiné des illustrations pour la presse et pour des maisons d’édition en freelance.</p>\n\n<p>Ayant suivie une formation de dessin sur ordinateur, j’ai pu aussi créer des logos, des publicités et réaliser des mises en page de livres pour des maisons d’éditions.<br />\nMalgré la diversité de cette activité, l’exercice du dessin traditionnel et de la peinture me manquait.</p>\n\n<p><em>https://christinehenry.fr/</em></p>','<p>Я рисую с раннего детства. </p>\n\n<p>Источники вдохновения для меня - сказки и легенды со всего мира, мифология и символика, связанная с изображением животных и растений в различных древних и современных цивилизациях.</p>\n\n<p>После окончания факультета изобразительных искусств я работала внештатным иллюстратором для газет и издательств. Пройдя обучение компьютерному дизайну, я также создавала логотипы, рекламные объявления и макеты книг для издательств.</p>\n\n<p>Несмотря на разнообразие этой работы, мне не хватало практики традиционного рисования и живописи...</p>\n\n<p>https://christinehenry.fr/</p>','',''),
(6024,'','','',''),
(6025,'','','',''),
(6026,'','','',''),
(6027,'<h3><em>From The Hermès Spring-Summer 1987 Seasonal Scarf Booklet:</em></h3>\n\n<p>The ancient \"stupa*, a funeral monument which became a Buddhist symbol, was a simple mound of stones. Later, it was adorned with porticoes (torana).</p>\n\n<p>The design of this scarf is broadly drawn from the great \"stupa* of Sanci (Maurya dynasty. 324 B.C. 187 A.D.). The carvings and bas-reliefs depict elephants, horses, lions, peacocks, lotus flowers and, in the center, the wheel of the law.</p>\n\n<p>In a flight of fancy, the artist introduced the Hindu religion by depicting Ganesha, the elephant-headed god of abundance and joy.</p>\n\n<p>The lower part of the scarf shows the famous sculpture chosen, in 1947, as the symbol of the Indian republic. i.e. the four lions of the capital of Ashoka (third century B.C.).</p>\n\n<h3><em>From The Hermès Fall-Winter 1990/91 Seasonal Scarf Booklet:</em></h3>\n\n<p>This scarf takes its inspiration from the porticos (torana) of the stüpa of Sânchi, a funeral monument in Central India and the focal point of the buddhist religion under the Maura dynasty towards the beginning of our era.</p>\n\n<p>The artist has slipped the figure of a Hindu deity into his composition - Ganesa, the elephant-god, son of Siva and roughly the counterpart of Hermes in Greek mythology.</p>\n\n<p>This is what might be called a fine example of ecumenism!</p>\n\n<p> </p>','','',''),
(6028,'<p>A Kelly bag for Madame, an Haut à Courroie weekend bag for Monsieur, a Chaîne d’Ancre bracelet for Madame, Clou de Selle cufflinks for Monsieur, a scarf for Madame, a patterned necktie for Monsieur, Calèche eau de toilette for Madame, a harness for Monsieur…</p>\n\n<p>These two striking silhouettes act as ambassadors for the brand and represent some of Hermès’ most emblematic creations.</p>\n\n<p>In the 1920s, a brand advertisement was created in this style, and its spirit and imagination served as the inspiration for this scarf.</p>\n\n<p><strong><em>Created by <a href=\"https://scarfsage.com\">ScarfSage.com</a></em></strong></p>','','',''),
(6029,'','','',''),
(6030,'','','',''),
(6031,'','','',''),
(6033,'<h3><em>From The Hermès Spring-Summer Fall-Winer 1992/93 Seasonal Scarf Booklet:</em></h3>\n\n<p>The tiles that embellished the facades of Arabic mosques reached Spain in the 14th century, then Portugal, and soon were used extensively to ornament houses, churches and palaces.</p>\n\n<p>Generic scenes soon predominated, notably views of ports, in tones influenced by Chinese porcelain and Delft faience.</p>\n\n<p>Our 20th century imagination voluntarily embarks on voyages within these seascapes, where the sails are filled with the genious of the ceramists.</p>','','',''),
(6034,'<p>The scarf depicts the riders and horses of the prestigious <em>Royal Andalusian School of Equestrian Art</em> in Spain. This aligns with de Watrigant\'s personal history, as he grew up in a racehorse training family and is a world-class animal painter.</p>\n\n<p>The design was first issued as part of the Hermès Fall/Winter collection in 1996/1997.</p>\n\n<p>This particular design is considered a sought-after vintage piece among collectors due to its vibrant colors and detailed equestrian theme.</p>\n\n<p><em>With a help from AI</em></p>','','',''),
(6035,'','','',''),
(6036,'<p>This is a classic Hermès scarf, it is considered the first of approximately fourteen designs created by Hallo for Hermes, all of which focused on hunting themes.<span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></p>\n\n<div class=\"otQkpb\"> </div>\n\n<ul class=\"KsbFXc U6u95\">\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">The Hunt:</strong> The title translates to \"Great Royal Hunting.\" True to Hallo\'s specialty, the scarf depicts a grand, traditional chase scene.</span></li>\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Key Imagery:</strong> The design typically features <strong class=\"Yjhzub\">hunting dogs</strong> (hounds) and <strong class=\"Yjhzub\">horn blowers</strong>, set against backgrounds that evoke 18th-century French country life.</span></li>\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Artistic Style:</strong> Hallo utilized his background in etching, wood engraving, and watercolor to create masterfully executed, figurative chase scenes. His work is noted for its detail and \"Toile-like\" storytelling.</span><span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></li>\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">:</strong> While various color palettes exist, vintage collectors frequently seek versions with deep reds, greens, or light blues.</span><span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></li>\n	<li> </li>\n	<li>\n	<div class=\"Fsg96\"> </div>\n\n	<div class=\"otQkpb\">Collectibility</div>\n\n	<div class=\"otQkpb\"> </div>\n\n	<div class=\"Y3BBE\">As a piece from the mid-1950s, the <strong class=\"Yjhzub\">Grande Vénerie Royale</strong> is highly prized by collectors for its rarity and its role in establishing the hunting-themed \"Hallo aesthetic\" for Hermès. Original editions in good condition are considered \"must-haves\" for serious Hermès enthusiasts.<span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></div>\n\n	<div class=\"Y3BBE\"> </div>\n\n	<div class=\"Y3BBE\">You can check for vintage availability on specialized luxury platforms such as <strong class=\"Yjhzub\"><span class=\"T286Pc\">Carre de Paris</span></strong>, <strong class=\"Yjhzub\"><span class=\"T286Pc\">Vestiaire Collective</span></strong>, or through auction houses like <strong class=\"Yjhzub\"><span class=\"T286Pc\">Sotheby\'s</span></strong>.<span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></div>\n\n	<div class=\"Y3BBE\"> </div>\n\n	<div class=\"Fsg96\"> </div>\n\n	<div>\n	<div class=\"DBd2Wb\">\n	<div>\n	<div class=\"v4bSkd\"> </div>\n	</div>\n	</div>\n	</div>\n	</li>\n</ul>','','',''),
(6037,'','','',''),
(6038,'','<p><em>Levriers</em> (Борзые) - это классический carré Hermès, посвящённый движению, скорости, утончённой элегантности.</p>\n\n<p>Выбор именно борзых символичен: в европейской культуре они ассоциируются с аристократическими развлечениями, благородством. Этот образ естественно вписывается в эстетику Hermès — конный спорт, охотничьи традиции и элитарный образ жизни.</p>\n\n<p>Стиль художника отличают знание анатомии, баланс между реализмом и стилизацией. Мускулатура собак лишь намечена, позы передают напряжение и сосредоточенность. Он избегал сентиментальности — животные выглядят достойными и целеустремлёнными, а не декоративно-милыми.</p>\n\n<p>Платок продолжает традиции французского анимализма, где лошади и собаки рассматривались как благородные сюжеты, достойные серьёзного художественного осмысления. В этом смысле <em>Levriers</em> — это не просто модный объект, а скорее часть культурного наследия.</p>\n\n<p><em>При участии ИИ</em></p>','',''),
(6039,'','','',''),
(6040,'','','',''),
(6041,'','','',''),
(6042,'','<p><span class=\"T286Pc\"><strong class=\"Yjhzub\">Коннетабль</strong> <strong>(</strong></span><strong>Conétable)</strong><span class=\"T286Pc\"><strong> </strong>— это высшая военная государственная должность во Франции до 1627 года. Коннетабль также заведовал королевскими конюшнями, поэтому предмет его сбруи — символ власти и статуса.</span></p>\n\n<p>Этот платок считается одной из самых элегантных работ д’Ориньи благодаря строгой симметрии и детализации, напоминающей скорее ювелирное украшение, чем конную амуницию.<span class=\"uJ19be notranslate\"><span class=\"vKEkVd\">  </span></span><span class=\"T286Pc\">В центре композиции изображены парадные удила (мундштук) — предмет роскоши и ювелирной работы, который использовался во время церемоний. Узор дополнен переплетениями кожаных ремней, цепей и пряжек.</span></p>\n\n<p><span class=\"T286Pc\">Модель перевыпускалась несколько раз, что подтверждает его популярность. </span>Этот дизайн является признанной классикой Hermès и еще раз  подчеркивает глубокую связь модного дома с конным искусством.</p>','<p>Connétable – était la plus haute fonction militaire en France jusqu\'en 1627. Il supervisait également les écuries royales ; son harnais était donc un symbole de pouvoir et de statut.</p>\n\n<p>Ce carré est considéré comme l\'une des œuvres les plus élégantes de d\'Origny grâce à sa symétrie rigoureuse et à ses détails, qui évoquent davantage un bijou qu\'un harnachement.</p>\n\n<p>Au centre de la composition figure un mors de cérémonie, un objet luxueux et finement ouvragé utilisé lors des cérémonies. Le motif est rehaussé de lanières de cuir entrelacées, de chaînes et de boucles.</p>\n\n<p>Le carré a été réédité à plusieurs reprises, confirmant ainsi sa popularité. Ce modèle est un classique reconnu d\'Hermès et souligne une fois de plus le lien profond qui unit la maison de couture à l\'art équestre.</p>',''),
(6043,'','','',''),
(6044,'','','',''),
(6045,'','','',''),
(6046,'','','',''),
(6047,'','','',''),
(6048,'','','',''),
(6049,'','','',''),
(6050,'','','',''),
(6051,'','','',''),
(6052,'','','',''),
(6053,'','','',''),
(6054,'','','',''),
(6055,'<p>“Ritote” is regarded as a rare vintage design, it  is based on the concept of <em>rhytons</em>—ancient ceremonial drinking vessels used from Persia to Greece for pouring libations.</p>\n\n<p>Swildens incorporated approximately sixteen stylized <em>rhyton</em> motifs, many rendered as horn-shaped objects decorated with animals or bird-headed caps, arranged symmetrically—a hallmark of Hermès scarf compositions.<br />\n <br />\n It originated in the 1970s and has not been reissued frequently (some listings indicate it was never re-edited after its debut).</p>\n\n<p> </p>','<p>«Ритоте» считается редким винтажным дизайном, основанным на концепции <em>ритонов</em> — древних церемониальных сосудов для питья, использовавшихся от Персии до Греции для возлияний.</p>\n\n<p>Автор включила в дизайн около шестнадцати стилизованных мотивов <em>ритонов</em>, многие из которых выполнены в виде рогообразных предметов, украшенных изображениями животных или головных уборов птиц, расположенных симметрично — отличительная черта композиций шарфов Hermès.</p>\n\n<p>Платок появился в 1970-х годах и редко переиздавался (в некоторых каталогах даже указано, что после дебюта он никогда не переиздавался).</p>','',''),
(6056,'','','',''),
(6057,'','','',''),
(6058,'<h3><em>From The Hermès Fall-Winter 2002/03 Seasonal Scarf Booklet:</em></h3>\n\n<p>Everyone knows Sanskrit, the ancient language of India which was spoken until our Christian era, and which remains today as the literary and brahminical medium.</p>\n\n<p>Everyone therefore knows that maha means \"great\" and raja \"king\".</p>\n\n<p>The Maharaja is the high prince of Hindustan, to whom his spouse, the Maharani, offers many a reason to love her with all her conjugal charms.</p>\n\n<p>Why go off hunting tigers when such feline grace awaits you?</p>','<h3><em>Из буклета Hermès осенне-зимней коллекции шарфов 2002/03:</em></h3>\n\n<p>Все знают санскрит, древний язык Индии, на котором говорили до нашей эры и который и сегодня остается литературным и брахманским языком.</p>\n\n<p>Поэтому все знают, что «маха» означает «великий», а «раджа» — «король».</p>\n\n<p>Махараджа — верховный принц Хиндустана, которому его супруга, Махарани, дарит множество поводов для любви со всем своим супружеским обаянием.</p>\n\n<p>Зачем уходить на охоту на тигров, когда тебя ждет такая кошачья грация?</p>','',''),
(6059,'<h3><em>From The Hermès Spring-Summer 1981 Seasonal Scarf Booklet:</em></h3>\n\n<p>Phaëton, son of the sun, gave his name to the quintessential aristocratic carriage, carved with rich motifs, marvelously suspended, and reserved for the rides of sovereigns.</p>\n\n<p>At the center of this square is the phaëton built for the baptism of the King of Rome, the Aiglon.</p>','','',''),
(6060,'','','',''),
(6061,'<h3><em>From The Hermes Fall-Winter 1989/90 Seasonal Scarf Booklet: </em></h3>\n\n<p>Once upon a time, the rumble of drumrolls accompanied armies marching bravely into battle as well as the town crier\'s signal that a riotous animal fair was about to begin in the village square.</p>\n\n<p>Here we maintain a soldierly bearing and salute the drums of the Swiss Guards (protectors of Louis XI and other French royals), and of Napoleon\'s imperial Guard footsoldiers.</p>\n\n<p>Let the parade begin!</p>','<h3><em>Из буклета о сезонных шарфах Hermes осень-зима 1989/90:</em></h3>\n\n<p>Когда-то давно грохот барабанной дроби сопровождал храбро марширующие в бой армии, а также был сигналом городского глашатая о начале бурной ярмарки животных на деревенской площади.</p>\n\n<p>Здесь мы сохраняем воинскую выправку и отдаем честь барабанам швейцарской гвардии - защитников французских монархов и пехотинцев императорской гвардии Наполеона.</p>\n\n<p>Пусть начнется парад!</p>','',''),
(6062,'','','',''),
(6063,'','','',''),
(6064,'<h3><em>From <a href=\"https://scarfsage.com\">ScarfSage.com</a></em></h3>\n\n<p>The Tropics, two imaginary lines around the Earth, either side of the Equator. Geography is all about geometry.</p>\n\n<p>This carré is both: a carefully-structured composition and a celebration of the luxuriant flora and fabulous fauna of the tropics themselves.</p>\n\n<p>In the middle, a pair of toucans frolic on a branch.<br />\nAll around, multicoloured birds of paradise and their exotic cousins gaze out across other lands.<br />\nThe African savannah, home to zebra and giraffe, is dotted with baobabs.</p>\n\n<h3><em>From <a href=\"https://abigail-goodman.com/\">abigail-goodman.com</a></em></h3>\n\n<p>This motif blends geometry and geography in a lush, balanced composition.</p>\n\n<p>At its center, two toucans are perched on a branch, anchoring the scene.</p>\n\n<p>Surrounding them, birds of paradise and their cousins survey the world below.</p>\n\n<p>The African savannah stretches out with giraffes, zebras, and towering baobabs, each element celebrating the beauty of the tropics.</p>\n\n<p> </p>\n\n<p> </p>','<h3><em>От <a href=\"https://scarfsage.com\">ScarfSage.com</a></em></h3>\n\n<p>Тропики — две «воображаемые» линии вокруг Земли, по обе стороны от экватора. География – это прежде всего геометрия.</p>\n\n<p>Этот платок – одновременно и тщательно продуманная композиция, и воспевание пышной флоры и удивительной фауны тропиков.</p>\n\n<p>В центре пара туканов резвится на ветке.<br />\nВокруг разноцветные райские птицы и их экзотические сородичи смотрят на соседей.<br />\nАфриканская саванна, дом зебр и жирафов, усеяна баобабами.</p>\n\n<h3><em>Из <a href=\"https://abigail-goodman.com/\">abigail-goodman.com</a></em></h3>\n\n<p>Этот мотив сочетает геометрию и географию в пышной, сбалансированной композиции.</p>\n\n<p>В центре два тукана сидят на ветке, являясь опорой композиции.</p>\n\n<p>Вокруг них райские птицы и их сородичи осматривают мир внизу.</p>\n\n<p>Африканская саванна простирается вдаль, где обитают жирафы, зебры и возвышаются баобабы, каждый элемент которых воспевает красоту тропиков.</p>\n\n<p> </p>\n\n<p> </p>','',''),
(6065,'','','',''),
(6066,'','','',''),
(6068,'<p>Zabavushka, features a charming depiction of Russian folk toys and includes numerous horse figures.</p>\n\n<p>This exceptional design was included in a book commemorating the 70th anniversary of Hermès scarves. In 2009, Zabavushka was recognized as the best scarf of the year, selling out quickly.</p>\n\n<p><strong><em>Published by <a href=\"https://scarfsage.com\">ScarfSage.com</a></em></strong></p>','<p>Платок «Забавушка» отличается очаровательным изображением русских народных игрушек и включает в себя множество фигурок лошадей.</p>\n\n<p>«Забавушка» — название конкретного московского музея игрушки, и все представленные на платке фигурки — это изображения реальных игрушек.</p>\n\n<p>Этот исключительный дизайн был включен в книгу, посвященную 70-летию шарфов Hermès.</p>\n\n<p>В 2009 году «Забавушка» была признана лучшим платком года и быстро распродана.</p>','',''),
(6069,'','','',''),
(6070,'','','',''),
(6071,'','','',''),
(6072,'','','',''),
(6073,'','','',''),
(6079,'<div>This silk scarf is a rare, collectible item that commemorates the Greek Revolution of 1821 and the historical friendship between France and Greece. <span class=\"T286Pc\">It is a historical piece that pays tribute to the Greek War of Independence against Ottoman rule, which began on March 25, 1821. It highlights the support Greece received from France during this time.</span></div>\n\n<p><span class=\"T286Pc\">The original design, simply titled \"1821\", was first issued in 1971 and then re-issued in 1985. The specific <strong><em>\"Hommage a l\'Amitié Franco-Hellénique\"</em></strong> subtitle was part of a special issue in 2005 for the opening of the Hermès store in Athens.</span></p>\n\n<p><span class=\"T286Pc\">The design features imagery related to the revolution and is widely believed to depict the Greek war hero <em>Theodoros Kolokotronis</em> on horseback in the center. It is a very detailed and vibrant design, known for \"popping\" visually.</span></p>\n\n<p><span class=\"T286Pc\">This particular scarf is considered rare, especially the limited special issues. According to some sources, only about 500 of each colorway/style were made for the special issues, making them highly sought after by collectors.</span></p>','<div class=\"Y3BBE\">\n<div>Этот шелковый платок — настоящая коллекционная редкость. Он посвящен Греческой революции 1821 года и многовековой дружбе между Францией и Грецией. Это не просто аксессуар, а дань памяти героям борьбы за независимость от Османской империи, начавшейся 25 марта 1821 года, и напоминание о той поддержке, которую Франция оказала греческому народу.</div>\n\n<div> </div>\n</div>\n\n<div class=\"Y3BBE\">Оригинальный дизайн этого платка под лаконичным названием «1821» был впервые представлен в 1971 году и переиздан в 1985-м. Однако именно это издание с подзаголовком <em>«Hommage a l\'Amitié Franco-Hellénique» (Дань франко-греческой дружбе) </em>вышло ограниченным тиражом в 2005 году специально к открытию бутика Hermès в Афинах.</div>\n\n<div class=\"Y3BBE\"> </div>\n\n<div class=\"Y3BBE\">Композиция наполнена символами революции: считается, что в самом центре изображен легендарный полководец Теодорос Колокотронис верхом на коне.</div>\n\n<div class=\"Y3BBE\"> </div>\n\n<div class=\"Y3BBE\">Платок по праву считается редким экземпляром, особенно это касается лимитированных серий. По некоторым данным, в рамках спецвыпуска было создано всего около 500 штук в каждом цветовом решении, что делает его настоящим сокровищем для коллекционеров.</div>','<div>Ce carré de soie est une pièce de collection rare qui commémore la Révolution grecque de 1821 et l\'amitié historique franco-grecque. <span class=\"T286Pc\">C\'est une pièce historique qui rend hommage à la guerre d\'indépendance grecque contre la domination ottomane, qui a débuté le 25 mars 1821. Il met en lumière le soutien apporté à la Grèce par la France durant cette période.</span></div>\n\n<p><span class=\"T286Pc\">Le modèle original, intitulé simplement « 1821 », a été créé en 1971, puis réédité en 1985. Le sous-titre spécifique <strong><em>« Hommage à l\'Amitié franco-hellénique »</em></strong> figurait sur une édition spéciale de 2005, créée à l\'occasion de l\'ouverture de la boutique Hermès à Athènes.</span></p>\n\n<p><span class=\"T286Pc\">Le motif présente des images liées à la révolution et est généralement considéré comme une représentation de la guerre d\'indépendance grecque. Au centre, le héros <em>Theodoros Kolokotronis</em> à cheval. Un motif très détaillé et éclatant, réputé pour son impact visuel saisissant. </span></p>\n\n<p><span class=\"T286Pc\">Cette écharpe est considérée comme rare, surtout les éditions spéciales limitées. Selon certaines sources, seulement 500 exemplaires environ de chaque coloris/style ont été produits pour ces éditions spéciales, ce qui les rend très recherchées par les collectionneurs.</span></p>',''),
(6080,'<h3><em>From The Hermès Spring-Summer 1997 Seasonal Scarf Booklet:</em></h3>\n\n<p><b> </b>« A propos de bottes » is an old French saying meaning \"with-out a serious purpose\".</p>\n\n<p>But do we always have to be serious and must there always be a purpose?</p>\n\n<p>To raise our lives to the dignity of art, let us cultivate a light-hearted fancy which leads us to the heart of things.</p>\n\n<p>This play-fulness, however, does not rule out meticulous attention to detail, especially when it involves the transcription on to silk of the intricate engraving of a very fine study of boots.</p>','<h3><em>Из буклета коллекции шарфов Hermès весна-лето 1997:</em></h3>\n\n<p><b> </b>«A propos de bottes» — это старинная французская поговорка, в дословном переводе «кстати о ботинках», в смысле «без серьезной цели».</p>\n\n<p>Но всегда ли мы должны быть серьезными, и всегда ли должна быть цель?</p>\n\n<p>Чтобы возвысить нашу жизнь до достоинства искусства, давайте будем культивировать беззаботную фантазию, которая ведет нас к сути вещей.</p>\n\n<p>Однако эта игривость не исключает тщательного внимания к деталям, особенно когда речь идет о переносе на шелк замысловатой гравюры очень тонкого эскиза ботинок.</p>','',''),
(6081,'<h3><em>From <a href=\"https://abigail-goodman.com/\">abigail-goodman.com</a></em></h3>\n\n<p>Inspired by the Ghysels family\'s renowned ring collection, featured in the book, \"Bagues ethniques d’Afrique, d’Asie et d’Amérique\", this design shows the history of rings from Africa, America, and Asia.</p>\n\n<p>Faivre combined these treasures, including several from the Hermès collection, arranging them on a flowing ribbon, almost like a necklace strung with seashells from around the world.</p>\n\n<p> </p>\n\n<p> </p>','','',''),
(6082,'','','',''),
(6084,'','','',''),
(6085,'','','',''),
(6086,'','','<p>Why I Love This Pattern:</p>\n\n<p>Not only do I love this pattern because it was featured in A Simple Favor and styled by Anna Kendrick, but for the level of detail, artistry and of course, the dogs.</p>\n\n<p>t was designed in 1965 by Charles-Jean Hallo, who was also known for his poster designs in the 1920’s and 30’s.</p>\n\n<p>Why I Love This Size</p>',''),
(6087,'','','',''),
(6088,'<p>This scarf was notably released as part of the Hermès Fall/Winter 2023 collection, as well as prior collections like the 2022 season in different formats.<span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></p>\n\n<p><span class=\"T286Pc\">The design presents a reimagined zodiac or celestial map, viewed as if looking up into the cupola (dome) of a cathedral.</span></p>\n\n<p><span class=\"T286Pc\">The design has also been featured on other Hermès items, such as the <em class=\"eujQNb\">Arceau Chorus Stellarum</em> watch.</span><span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></p>\n\n<p><em>Published by ScarfSage.com</em></p>','','',''),
(6089,'<p><em>The Circuit 24 Faubourg</em> (often abbreviated in listings) is a contemporary Hermès scarf that differs significantly from the traditional equestrian works of Hermes. It is a modern, graphic reinterpretation of the iconic <em>Chaîne d’Ancre</em> motif originally created for Hermès in 1938.</p>\n\n<p>The \"Circuit\" in its name refers to motor racing. The overlapping, interlocking anchor chain links are designed to resemble the curves and loops of a racetrack. The links and the border are filled with fine, parallel lines (striations) that evoke a sense of speed and movement, further reinforcing the racing theme.</p>\n\n<p>The scarf is celebrated for its clean, sporty lines and minimalist feel, bridging the gap between figurative art and modern abstraction. A rare special edition was released in 2013 to benefit the <em>Imagine Institute</em> (research for genetic diseases), often featuring distinct colorways and the institute\'s branding.</p>','<div class=\"Y3BBE\"><strong class=\"Yjhzub\">Circuit 24 Faubourg</strong> — это современное прочтение эстетики Hermès, которое заметно выделяется на фоне классических «лошадиных» сюжетов модного дома. Дизайн представляет собой графичную и смелую интерпретацию легендарного мотива <em class=\"eujQNb\">Chaîne d’Ancre</em> (якорная цепь), созданного еще в 1938 году.</div>\n\n<div class=\"Y3BBE\"> </div>\n\n<div class=\"Y3BBE\">Слово «Circuit» (с фр. — трасса, автодром) в названии прямо отсылает к миру автоспорта. Переплетения звеньев цепи здесь выстроены так, что напоминают крутые виражи и петли гоночного трека. Тонкие параллельные линии, заполняющие детали рисунка, создают эффект шлейфа и динамики — кажется, будто платок пропитан эстетикой скорости.</div>\n\n<div class=\"Y3BBE\"> </div>\n\n<div class=\"Y3BBE\">Этот аксессуар ценят за лаконичность и спортивный шик. Он идеально балансирует на грани между узнаваемыми символами бренда и современной абстракцией.</div>','',''),
(6090,'<p>Before joining Hermès, Virginie Jamin was a successful illustrator of children\'s books.</p>\n\n<p>She met the head of Hermès\' graphic design at one of her book signings, which led to her first project for the house in 2004.</p>\n\n<p>Her primary muse is the <a href=\"../2307-mile-maurice-herms/\">Émile Hermès</a> collection, a private museum at the brand\'s Paris headquarters. She frequently reinterprets its historical artifacts—such as 19th-century whips, switches, and antique harnesses—into contemporary graphic patterns.</p>\n\n<p>Her work is noted for its meticulous detail and ability to balance traditional equestrian themes with modern, abstract perspectives. </p>\n\n<p><em>With help from AI</em></p>','','',''),
(6091,'','','',''),
(6092,'','','',''),
(6093,'','','',''),
(6094,'<p><strong>TEXT TO BE REVISED...</strong></p>\n\n<p>The \"Do Re Boucles\" design by Florence Manlik started with a minuscule 4 cm by 4 cm drawing. <span class=\"T286Pc\"> The name is a pun on musical notes (Do, Re, Mi) and \"boucles\" (French for buckles).</span></p>\n\n<p>Something simple, perhaps doodled during a phone call, or something drawn without thought.</p>\n\n<p>The design features equestrian rings, most of them entirely made up and imaginative, however, some of which were inspired by pieces in the Hermès catalogue.</p>\n\n<p>The design replaces rings and straps, creating a wide variety of buckle finishes and styles.</p>\n\n<div>\"Do Re Boucles\" is a whimsical <a class=\"GI370e\" href=\"https://www.google.com/search?client=firefox-b-d&amp;q=Herm%C3%A8s+design&amp;mstk=AUtExfBx92zDlmZh60yKrsPpQM0ivcWYIa_MIziz8VlRYobe-vcP8JZrU-6jVKbKh6Xqj-ztZv9qd9jIJe915O_eZVBBEq6hqymPWKj_DhnhDW6jg7g1Yu27u1k5Hkmy42ZSuix-oen1JmuY9VOk19GrDHMqLHKiJAS6OQz83ufxpGrr84pq6HVs7_A3rE6FWmY8Stmw4FQo6MyidOzuGYmgu4sw2LlDoAiDH5kDsCkZU5Sd-YSYgov2pTrNwNwjA-JIh2CNlEcmiE2qbujw0bjILVMX&amp;csui=3&amp;ved=2ahUKEwjn7aOV5-6RAxWOIRAIHegeA-0QgK4QegQIARAC\">Hermès design</a> by <a class=\"GI370e\" href=\"https://www.google.com/search?client=firefox-b-d&amp;q=Florence+Manlik&amp;mstk=AUtExfBx92zDlmZh60yKrsPpQM0ivcWYIa_MIziz8VlRYobe-vcP8JZrU-6jVKbKh6Xqj-ztZv9qd9jIJe915O_eZVBBEq6hqymPWKj_DhnhDW6jg7g1Yu27u1k5Hkmy42ZSuix-oen1JmuY9VOk19GrDHMqLHKiJAS6OQz83ufxpGrr84pq6HVs7_A3rE6FWmY8Stmw4FQo6MyidOzuGYmgu4sw2LlDoAiDH5kDsCkZU5Sd-YSYgov2pTrNwNwjA-JIh2CNlEcmiE2qbujw0bjILVMX&amp;csui=3&amp;ved=2ahUKEwjn7aOV5-6RAxWOIRAIHegeA-0QgK4QegQIARAD\">Florence Manlik</a> featuring playful, musical chains of equestrian buckles, riffing on the \"Do-Re-Mi\" scale and vintage saddlery hardware from the Émile Hermès collection, appearing on silk scarves </div>','','',''),
(6095,'<p>Carine Brancowitz is a French illustrator living in Roma, Italy.</p>\n\n<p>She masters the 4 colors pen with which she draws daily scenes and contemporary still lifes.</p>\n\n<p>Her obsession for details and accuracy make her very special. She collaborated with many brands like Dior, Céline, Vogue, Playboy, Elle, Sébastien Tellier…</p>\n\n<p>Her hobby? To eat dried chestnuts on Sabaudia beach !</p>\n\n<p><strong><em>Carine about herself</em></strong></p>','<p>Карин Бранковиц — французская художница-иллюстратор, живущая в Риме, Италия.</p>\n\n<p>Она виртуозно владеет четырехцветной ручкой, которой рисует повседневные сцены и современные натюрморты.</p>\n\n<p>Ее одержимость деталями и точностью делает ее особенной. Она сотрудничала со многими брендами, такими как Dior, Céline, Vogue, Playboy, Elle, Sébastien Tellier…</p>\n\n<p>Ее хобби? Есть сушеные каштаны на пляже Сабаудиа!</p>\n\n<p><strong><em>Карин о себе</em></strong></p>','<p>Carine Brancowitz est une illustratrice française installée à Rome, en Italie.</p>\n\n<p>Elle maîtrise le stylo à quatre couleurs avec lequel elle dessine des scènes du quotidien et des natures mortes contemporaines.</p>\n\n<p>Son souci du détail et sa précision la rendent unique. Elle a collaboré avec de nombreuses marques prestigieuses telles que Dior, Céline, Vogue, Playboy, Elle, Sébastien Tellier…</p>\n\n<p>Son passe-temps favori ? Déguster des châtaignes séchées sur la plage de Sabaudia !</p>\n\n<p><strong><em>Carine parle d\'elle-même</em></strong></p>',''),
(6096,'<div>The</div>\n\n<p><strong class=\"Yjhzub\">Hermès \"En Liberté!\" scarf</strong> is a design by artist <strong class=\"Yjhzub\">Carine Brancowitz</strong>, first released as a 90cm silk twill scarf and later in other formats like cashmere shawls. The design is known for its playful and colorful illustration style, featuring dogs and lush vegetation inspired by the gardens of the Villa Borghese in Rome.<span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></p>\n\n<div class=\"Y3BBE\"> </div>\n\n<div class=\"Y3BBE\">Here are some images of the Hermès \"En Liberté!\" scarf:</div>\n\n<p> </p>\n\n<div class=\"Y3BBE\"><strong class=\"Yjhzub\">Design Details:</strong></div>\n\n<div class=\"Y3BBE\"> </div>\n\n<ul class=\"KsbFXc U6u95\">\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Artist:</strong> Carine Brancowitz, who divides her time between Paris and Rome, created the design to capture the sense of freedom she experiences in the eternal city.</span></li>\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Motif:</strong> The vibrant illustration features various playful dogs amidst a detailed backdrop of lush gardens and distant architecture, reminiscent of the Villa Borghese.</span></li>\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Material and Size:</strong> It is typically available as a 90cm x 90cm (approx. 35\" x 35\") silk twill scarf with hand-rolled edges, and has also been produced as a larger 140cm x 140cm cashmere and silk shawl.</span></li>\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Colorways:</strong> The scarf comes in multiple color variations, including a prominent aubergine/vert/multicolore (purple/green/multicolor) option and a bleu azur/rose/vert (blue/pink/green) option.</span><span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></li>\n</ul>\n\n<ul class=\"KsbFXc U6u95\">\n	<li> </li>\n</ul>\n\n<div class=\"Fsg96\"> </div>\n\n<div>\n<div class=\"DBd2Wb\">\n<div>\n<div class=\"v4bSkd\"> </div>\n</div>\n</div>\n</div>','','',''),
(6097,'<p>With a keen eye for detail and a deep understanding of color and composition, Dominik Jarlegant has created a remarkable collection of scarves that showcase his immense talent and unique artistic vision.</p>\n\n<p>Drawing inspiration from the natural world, particularly the beauty and majesty of the sea, Jarlegant’s work often features intricate nautical themes, depicting the grace and elegance of various marine vessels. His work is also characterized by the use of vibrant colors and intricate patterns, making each of his scarves a truly stunning piece of wearable art.</p>\n\n<p>Dominik Jarlegant’s passion for the ocean and his talent for capturing its essence in his designs have made him an invaluable member of the Hermès design team. His scarves are highly sought after by collectors and fashion enthusiasts alike, making him a notable figure in the world of luxury fashion.</p>\n\n<p>As Dominik Jarlegant continues to make waves with his work, he remains a shining example of the artistic excellence and craftsmanship that have become synonymous with the Hermès brand.</p>\n\n<p><em>Created by <a href=\"https://scarfsage.com\">ScarfSage.com</a></em></p>','','<p>Doté d\'un sens aigu du détail et d\'une profonde compréhension des couleurs et de la composition, Dominik Jarlegant a créé une remarquable collection de carrés qui témoignent de son immense talent et de sa vision artistique unique.</p>\n\n<p>Puisant son inspiration dans le monde naturel, et plus particulièrement dans la beauté et la majesté de la mer, l\'œuvre de Jarlegant met souvent en scène des thèmes nautiques complexes, illustrant la grâce et l\'élégance de divers navires.</p>\n\n<p>Son travail se caractérise également par l\'utilisation de couleurs vibrantes et de motifs raffinés, faisant de chacun de ses carrés une véritable œuvre d\'art à porter. La passion de Dominik Jarlegant pour l\'océan et son talent pour en capturer l\'essence dans ses créations ont fait de lui un membre précieux de l\'équipe de création d\'Hermès.</p>\n\n<p>Ses foulards sont très recherchés par les collectionneurs et les passionnés de mode, faisant de lui une figure incontournable du monde du luxe.</p>\n\n<p>Alors que Dominik Jarlegant continue de faire sensation avec son travail, il demeure un exemple éclatant de l\'excellence artistique et du savoir-faire qui sont devenus synonymes de la marque Hermès.</p>\n\n<p><em>Créé par ScarfSage.com</em></p>',''),
(6098,'','','',''),
(6099,'','','',''),
(6101,'','','',''),
(6102,'','','',''),
(6103,'<p><strong class=\"Yjhzub\">«Ленты, цветы и налобники»</strong></p>\n\n<div class=\"otQkpb\"> </div>\n\n<div class=\"Y3BBE\">The design draws inspiration from a 19th-century equestrian catalog, and the translation reflects the specific equestrian elements depicted:<span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></div>\n\n<div class=\"Y3BBE\"> </div>\n\n<ul class=\"KsbFXc U6u95\">\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Flots (Ленты):</strong> In this context, \"flots\" refers to the decorative <strong class=\"Yjhzub\">ribbon rosettes</strong> or award ribbons (often called <em class=\"eujQNb\">кокарды</em> or <em class=\"eujQNb\">наградные розетки</em> in Russian) given at competitions.</span></li>\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Fleurs (Цветы):</strong> Simply means <strong class=\"Yjhzub\">flowers</strong>, which are scattered throughout the pattern.</span></li>\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Frontaux (Налобники):</strong> Refers to <strong class=\"Yjhzub\">browbands</strong>, the decorative straps of a horse\'s bridle that sit across the forehead.</span><span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></li>\n</ul>\n\n<ul class=\"KsbFXc U6u95\">\n	<li> </li>\n</ul>\n\n<div class=\"Y3BBE\"><strong class=\"Yjhzub\">Alternative Nuanced Translations:</strong></div>\n\n<div class=\"Y3BBE\"> </div>\n\n<ul class=\"KsbFXc U6u95\">\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">«Розетки, цветы и налобники»</strong> – This emphasizes the specific \"rosette\" shape of the ribbons.</span></li>\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">«Ленты, цветы и налобные ремни»</strong> – A more technical term for the equestrian headgear.</span></li>\n</ul>\n\n<ul class=\"KsbFXc U6u95\">\n	<li> </li>\n</ul>\n\n<div class=\"Y3BBE\"><span class=\"T286Pc\">The title is typically kept in French on official <span><a class=\"H23r4e\" href=\"https://www.hermes.com/se/en/product/hermes-flagship-scarf-90-H004091Sv02/\" rel=\"noopener noreferrer\" target=\"_blank\">Hermès listings</a></span>, but Russian collectors and resellers use the translated terms to describe the motif\'s components</span></div>','','',''),
(6104,'','','',''),
(6105,'','','',''),
(6106,'<div class=\"row sqs-row\" id=\"yui_3_17_2_1_1762533527199_354\">\n<div class=\"col sqs-col-4 span-4\" id=\"yui_3_17_2_1_1762533527199_353\">\n<div class=\"sqs-block html-block sqs-block-html\" id=\"block-34fe2e267bd835e38f05\">\n<div class=\"sqs-block-content\">\n<div class=\"sqs-html-content\">\n<p style=\"white-space:pre-wrap;\">François Houtin, born in 1950 in Craon en Mayenne, France, is celebrated for his imaginative etchings that transform the traditions of French landscape design into dreamlike visions. Trained as a landscape architect, he developed an early expertise in the history and structure of gardens, a foundation that would later shape his artistic voice. In 1971, he moved to Paris, where he has lived and worked ever since. Among his notable professional projects was his participation in the 1991 renovation of the <strong>Jardin des Tuileries</strong>, one of France’s most iconic public gardens and a site originally designed by André Le Nôtre.</p>\n\n<p style=\"white-space:pre-wrap;\">Houtin’s artistic path expanded in 1973, when he began studying printmaking with <strong>Jean Delpech</strong>. He quickly found in etching a medium that allowed him to merge technical precision with creative freedom. By 1979 he had committed fully to being an artist, turning away from traditional landscape architecture to create highly detailed prints of <strong>utopian gardens</strong>.</p>\n\n<p style=\"white-space:pre-wrap;\">These works are neither literal reconstructions or purely imaginary flights. Instead, they blend historical references with fantasy, producing landscapes filled with pavilions, towers, fountains, and intricately ordered vegetation. In them, Houtin draws on the grandeur of French classical design while also giving free rein to his own vision, creating spaces that invite viewers into meditative journeys of the mind.</p>\n\n<p style=\"white-space:pre-wrap;\">In 1981, Houtin won the <strong>Prix de Gravure Lacourière</strong>, one of France’s most prestigious awards for printmaking, and in 1986 he received the <strong>Prix de Gravure Florence Gould</strong>. His election in 1991 to the <strong>Société des Peintres-Graveurs Français</strong> further affirmed his standing among France’s leading printmakers.</p>\n\n<p style=\"white-space:pre-wrap;\">What makes Houtin’s art so distinctive is the way it unites his dual expertise. His training as a landscape architect instilled a sensitivity to order, balance, and perspective, while his work as a printmaker gave him freedom to imagine landscapes unconstrained by the limits of geography or practicality. His gardens, simultaneously rigorous and fanciful, serve as metaphors for the human desire to shape nature while also celebrating the fertile possibilities of the imagination.</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n\n<div class=\"sqs-block html-block sqs-block-html\" id=\"block-491b99d3063cca43e8d5\">\n<div class=\"sqs-block-content\">\n<div class=\"sqs-html-content\">\n<p style=\"white-space:pre-wrap;\"> </p>\n</div>\n</div>\n</div>','<p><strong>Франсуа Утен</strong> (François Houtin), родился в 1950 году в Краоне (Craon), департамент Майенна (Mayenne). Он известен своими гравюрами, где традиции французского садового искусства превращаются в фантазийные, почти сновидческие пейзажи. По образованию ландшафтный архитектор, он с ранних лет увлекался историей и структурой садов — знания, которые легли в основу всего его творчества.</p>\n\n<p>В 1971 году Утен переехал в Париж, где живёт и работает до сих пор. Среди его значимых проектов — участие в <strong>реконструкции сада Тюильри</strong> в 1991 году, одного из самых знаменитых парков Франции, первоначально созданного Андре Ленотром.</p>\n\n<p>Переломный момент в его карьере наступил в 1973 году, когда он начал изучать гравюру у <strong>Жана Дельпеша</strong>. Этот вид искусства позволил ему объединить техническую точность и творческую свободу. Уже к 1979 году он полностью посвятил себя искусству, оставив архитектуру ради создания детализированных офортов, изображающих <strong>утопические сады</strong>.</p>\n\n<p>Его работы нельзя назвать ни точными реконструкциями, ни чистыми фантазиями. Это синтез истории и воображения — миры, где соседствуют павильоны, башни, фонтаны и идеально выстроенная растительность. Вдохновляясь величием классического французского стиля, Утен создаёт собственные пространства, в которых зритель словно погружается в медитативное путешествие.</p>\n\n<p>Признание пришло к нему довольно рано: в 1981 году он получает <strong>Премию Лакурьера за гравюру</strong>, одну из самых престижных во Франции, а в 1986 — <strong>Премию Флоренс Гулд</strong>. В 1991 году он был избран членом <strong>Общества французских художников-гравёров</strong>, что окончательно закрепило его статус мастера своего времени.</p>\n\n<p>Уникальность искусства Франсуа Утена — в соединении двух миров. От профессии ландшафтного архитектора ему достались чувство порядка, баланса и перспективы; от гравюры — безграничная свобода воображения. Его сады, одновременно строгие и фантастические, воплощают вечное человеческое стремление преобразить природу и прославляют неиссякаемую силу творческой мечты.</p>\n\n<hr />','<p>Perfect — here’s a <strong>version in French</strong> that keeps the richness of the content but with a <strong>warmer, more engaging tone</strong> suitable for a website. It reads naturally and flows well for a general audience, while still feeling respectful and professional:</p>\n\n<hr />\n<p><strong>François Houtin</strong>, né en 1950 à Craon, en Mayenne, est un artiste reconnu pour ses gravures pleines d’imagination, où les traditions du jardin à la française se transforment en paysages de rêve. Formé comme architecte paysagiste, il a très tôt développé une passion pour l’histoire et la structure des jardins — un savoir qui nourrit encore aujourd’hui tout son univers artistique.</p>\n\n<p>En 1971, il s’installe à Paris, où il vit et travaille toujours. Parmi ses projets marquants figure sa participation à la rénovation du <strong>Jardin des Tuileries</strong> en 1991, l’un des lieux les plus emblématiques du patrimoine français, conçu à l’origine par André Le Nôtre.</p>\n\n<p>C’est en 1973 que son parcours prend une nouvelle direction : Houtin découvre la gravure auprès de <strong>Jean Delpech</strong>. Ce médium devient vite pour lui une manière d’allier précision et liberté. En 1979, il fait le choix de se consacrer entièrement à la création artistique et de délaisser l’architecture paysagère pour imaginer, à travers ses estampes, des <strong>jardins utopiques</strong> d’une minutie incroyable.</p>\n\n<p>Ses œuvres ne sont ni des reproductions exactes ni de simples inventions. Elles tissent des liens entre passé et imaginaire, entre histoire et rêve. Pavillons, tours, fontaines et végétation parfaitement ordonnée s’y déploient avec une élégance intemporelle. Houtin s’inspire de la grandeur du jardin classique tout en laissant libre cours à sa propre vision, offrant au regard des paysages où l’on se perd volontiers dans une rêverie poétique.</p>\n\n<p>Son talent a été rapidement reconnu : il reçoit le <strong>Prix de Gravure Lacourière</strong> en 1981, puis le <strong>Prix de Gravure Florence Gould</strong> en 1986. En 1991, il est élu à la <strong>Société des Peintres-Graveurs Français</strong>, une distinction qui confirme sa place parmi les grands graveurs contemporains.</p>\n\n<p>Ce qui rend l’art de François Houtin si unique, c’est la rencontre entre deux mondes : celui du paysagiste et celui du graveur. De sa première formation, il garde le goût de l’ordre, de la perspective et de l’harmonie. De la gravure, il tire une liberté infinie pour imaginer des espaces qui n’existent nulle part ailleurs. Ses jardins, à la fois structurés et pleins de fantaisie, traduisent le rêve humain de façonner la nature — tout en célébrant la puissance créatrice de l’imagination.</p>\n\n<hr />\n<p>Would you like me to make a <strong>shorter version</strong> as well — say, one paragraph that could serve as an introduction or summary at the top of the webpage?</p>',''),
(6107,'','','',''),
(6108,'','','',''),
(6109,'<p>A.M. Cassandre, pseudonym of <strong><em>Adolphe Jean-Marie Mouron</em></strong> was a Ukrainian-French painter, commercial poster artist, and typeface designer.</p>\n\n<p>He created an enormous corpus of graphically groundbreaking work, including travel posters, typefaces, and advertising. In 1963 he designed the well-known Yves Saint-Laurent logo. These cards are from the original 1948 edition of playing cards designed by Cassandre for Hermès-Paris and made by Draeger Frères, also of Paris.</p>\n\n<p><em>From Wikipedia</em></p>','<p>А.М. Кассандр, псевдоним Жан-Мари Мурона <em>(Adolphe Jean-Marie Mouron)</em>, был украинско-французским художником, родившемся в Харькове.</p>\n\n<p>Он создал огромное количество новаторских графических работ, включая туристические плакаты, шрифты и рекламу. В 1963 году он разработал известный логотип <em>Yves Saint-Laurent</em>.</p>\n\n<p>В 1948 года, разработал для <em>Hermès-Paris </em> знаменитую колоду игральных карт,  которые изготовила компания <em>Draeger Frères,</em> также из Парижа. В последствии <em>Hermès </em>выпустил <a href=\"/sh/ru-home/h_spot/h_artworks/jeu-de-cartes/\">платок на тему этих карт</a>.</p>\n\n<p><em>Из Википедии</em></p>','',''),
(6111,'<p>Sophie Koechlin is a designer who has worked with Hermès for over 30 (starting in 1993), primarily designing their famous silk carrés and other \"art de vivre\" items.</p>\n\n<p>She is a prolific artist and illustrator who has created numerous popular and sought-after scarf designs for Hermès. Her work often features detailed, narrative illustrations inspired by various cultures, history, and mythology. </p>\n\n<p>Beyond her work with Hermès, she is a multifaceted French artist, illustrator, author, and translator of children\'s literature.  She has written and illustrated numerous children\'s books and translated and adapted English-language works, including those for Disney and Pixar.</p>\n\n<p>After her extensive career designing for the Hermès workshops, she also went on to design for Cartier. </p>\n\n<p><em>With a help from AI</em></p>','','',''),
(6112,'','','',''),
(6113,'<p><em><strong>Pierre-Marie Agin</strong> (Pierre Marie)</em> is a French illustrator and designer, known as one of the key creators of Hermès silk scarves since the beginning of the 21st century.</p>\n\n<p>He has worked with Hermès since around 2008, creating dozens of scarf designs characterized by vibrant patterns, complex compositions and a marriage of historical and artistic motifs.</p>\n\n<p><em>From Wikipedia</em></p>','<p><em><strong>Pierre-Marie Agin</strong> (Pierre Marie) </em>— французский иллюстратор и дизайнер, известный как один из ключевых создателей шелковых платков Hermès с начала XXI века.</p>\n\n<p>Он работал с Hermès с примерно 2008 года, создав десятки моделей шарфов, отличающихся яркими орнаментами, сложными композициями и союзом исторических и художественных мотивов. </p>\n\n<p><em>Из Wikipedia</em></p>','<p><em><strong>Pierre-Marie Agin</strong> (Pierre Marie) </em>est un illustrateur et designer français, connu comme l\'un des principaux créateurs de foulards en soie Hermès depuis le début du 21e siècle.</p>\n\n<p>Il travaille avec Hermès depuis 2008 environ, créant des dizaines de modèles de foulards caractérisés par des motifs vibrants, des compositions complexes et un mariage de motifs historiques et artistiques.</p>\n\n<p><em>Avec Wikipedia</em></p>',''),
(6114,'<p>The plot of the scarf is based on a mystical interpretation of the four seasons, where each season is represented by a fantastic animal.</p>\n\n<p>The plot is inspired by theatrical costumes of the 17th and 20th centuries - from French carnivals to the legendary <a href=\"https://fr.wikipedia.org/wiki/Ballets_russes\">Ballets Russes</a>.</p>\n\n<p>The composition is filled with details reminiscent of baroque costumes and whimsical animal images, making it more of a miniature painting than a standard decorative motif.</p>\n\n<p><em>From a Hermes publication</em></p>','<p>В основе сюжета платка — мистическая интерпретация четырех времен года, где каждый сезон представлен фантастическим животным.</p>\n\n<p>Сюжет вдохновлён театральными костюмами XVII и XX веков — от французских карнавалов до легендарных <a href=\"https://fr.wikipedia.org/wiki/Ballets_russes\">Ballets Russes</a>.</p>\n\n<p>Композиция наполнена деталями, напоминающими барочные костюмы и причудливые образы животных, что делает её скорее миниатюрной картиной, чем стандартным декоративным мотивом. </p>\n\n<p><em>Из публикации Hermes</em></p>\n\n<p> </p>','<p>L\'intrigue du foulard est basée sur une interprétation mystique des quatre saisons, où chaque saison est représentée par un animal fantastique.</p>\n\n<p>L\'intrigue s\'inspire des costumes de théâtre des XVIIe et XXe siècles - des carnavals français aux légendaires <a href=\"https://fr.wikipedia.org/wiki/Ballets_russes\">Ballets Russes</a>.</p>\n\n<p>La composition est remplie de détails rappelant des costumes baroques et des images d\'animaux fantaisistes, ce qui en fait davantage une peinture miniature qu\'un motif décoratif standard.</p>\n\n<p>Extrait d\'une publication Hermès</p>',''),
(6115,'','','',''),
(6116,'<p>He began drawing and sketching horses as a young child, guided by his father, Charles Benoist-Gironière, himself an equestrian artist of note and author of <em>l\'Art de Cheval </em>published in 1950.</p>\n\n<p>Yvan sculpted his first bronze in his teens and enjoyed a lifelong reputation as artist, designer and sculptor.</p>\n\n<p>He is the author and illustrator of the major work <em>\'Almanach Hachette du Cavalier Yvan Benoist-Gironière\' </em>published by Hachette in 1979, and in 2005, his book <em>\'Cheval mon beau souci\' </em>was published, containing 500 of his sketches and illustrations.</p>\n\n<p><em>Published by https://www.askart.com/</em></p>','<p>Он начал рисовать лошадей ещё в раннем детстве под руководством своего отца, Шарля Бенуа-Жироньера, известного художника-наездника и автора книги <em>«Искусство верховой езды»</em>, опубликованной в 1950 году.</p>\n\n<p>Свою первую бронзовую скульптуру Иван создал еще подростком и на протяжении всей жизни пользовался репутацией художника, дизайнера и скульптора.</p>\n\n<p>Он является автором и иллюстратором крупного труда <em>«Альманах Hachette о кавалере Бенуа-Жироньере»</em>, а в 2005 году вышла его книга <em>«Верховая езда, моя прекрасная забота»</em>, содержащая 500 его эскизов и иллюстраций.</p>\n\n<p><em>Опубликовано  https://www.askart.com/</em></p>','',''),
(6117,'','','',''),
(6118,'','','',''),
(6119,'<p>There is a rather limited information available on his broader life, education, or career outside art editions - most sources only appear in the context of Hermès scarves.</p>\n\n<p>There is a circulating anecdotal story in some collector blogs that an artist by a similar name (Sefedin Ibrahim Alamin) was a young Sudanese artist whose early life was marked by loss during civil war and who came to Hermès’s attention through a connection with <a href=\"/sh/h_spot/h_persons/328-jean-louis-dumas/\">Jean-Louis Dumas</a>. According to this account, his expressive drawings of African landscapes led to Hermès employing him to create scarf designs.</p>\n\n<p>This narrative is not confirmed by primary sources and remains part of collector lore rather than established art historical documentation.</p>\n\n<p><em>With help from AI</em></p>','<p>Информация о жизни, образовании и карьере этого художника крайне ограничена. Большинство источников упоминают его только в контексте шарфов Hermès.</p>\n\n<p>В некоторых блогах коллекционеров распространяется полу-анекдотическая история о дизайнере с похожим (с этим ?) именем - молодом суданском художнике, пострадавшим во время гражданской войны, и привлекшем внимание <a href=\"/sh/h_spot/h_persons/328-jean-louis-dumas/\">Жан-Луи Дюма</a>, тогдашнего главы Hermès. Согласно этой истории, выразительные рисунки африканских пейзажей привели к тому, что Hermès нанял Сефедина для создания дизайнов шарфов.</p>\n\n<p>Эта история не подтверждается первоисточниками и остается скорее частью коллекционерских преданий, чем устоявшейся искусствоведческой документацией.</p>\n\n<p><em>При участии ИИ</em></p>','',''),
(6120,'<p> </p>\n\n<p>TEXT TO BE IMPROVED AND TRANSLATED</p>\n\n<p>Records describe this piece as a unique edition — meaning it was produced in limited numbers and is not commonly circulated in Hermès mainstream collections. This rarity contributes to its appeal among collectors.<br />\n Rarity: Collector resources (such as the Arfon Art Squares Dictionary of Edition) list Les Perles de Turkana as quite rare and sought after within the Hermès scarf secondary market.</p>\n\n<p> Due to its limited production and the signature of an artist not widely known outside Hermès scarf collectors, Les Perles de Turkana is considered a collector’s item. Pieces appear periodically at auctions and in specialist resale channels rather than everyday retail listings.</p>\n\n<p> Valuations can vary widely depending on condition, provenance, and market demand. Listings in recent auctions have shown estimated values around certain price bands (e.g., several hundred euros in European auctions), though collector resale prices (condition and rarity dependent) can differ significantly from those estimates.</p>\n\n<p> Scarf pattern names like Les Perles de Turkana often evoke cultural or geographic inspiration. While detailed official Hermès catalog descriptions for this specific design are limited, the title suggests influence from the Turkana region (a part of East Africa around Lake Turkana), possibly reflected in colors or motifs.<br />\n Secondhand listings with images (e.g., in resale shops) describe versions in striking purple with beige borders and central figures or motifs (typical of Hermès Carrés that blend figurative and abstract elements), though actual imagery varies by edition. ([NEARLY NEW CASHMERE CO.][3])</p>\n\n<p>“Les Perles de Turkana” by Ibrahim Alamia Kwumi Sefedin is a 2002 limited edition Hermès silk scarf that combines the craftsmanship of Hermès (hand-rolled silk twill, Paris manufacture) with a rare artistic signature. It holds value for collectors due to its scarcity and distinct artistic attribution, and it appears primarily on secondary markets and at auctions rather than in standard retail Hermès collections.</p>\n\n<p><em>При участии ИИ</em></p>\n\n<p> </p>','','',''),
(6121,'<div class=\"Y3BBE\">\n<p>This scarf tells the story of France’s legendary “Sun King”, Louis XIV. Through elegant equestrian scenes and regal details, it captures the splendor of his reign and the brilliance of France’s golden age, making it a timeless piece for collectors.</p>\n\n<p>Louis XIV is one of France’s most iconic rulers, remembered for his absolute power and the magnificence of Versailles. The design highlights the king on horseback, framed by ornate borders and classic equestrian motifs that evoke authority, refinement, and French heritage.</p>\n\n<p>Wearing the <em>Ludovicus Magnus</em> scarf is like stepping into the opulent world of the French court, where history, artistry, and royal grandeur come together in a single, beautifully detailed design.</p>\n\n<p><em>With help from AI</em></p>\n</div>','<p>Платок рассказывает историю легендарного французского \"Короля-Солнцe\" Людовика XIV. Изящные конные сцены и королевские детали передают великолепие его правления и блеск золотого века Франции, делая платок настоящей классикой для коллекционеров.</p>\n\n<p>Людовик XIV — один из самых знаменитых правителей Франции, известный своей абсолютной властью и роскошью Версаля. Здесь король изображён верхом на коне, в окружении декоративных рамок и традиционных конных мотивов, символизирующих силу, изысканность и французское наследие.</p>\n\n<p>Носить платок <em>Ludovicus Magnus</em> — значит прикоснуться к роскошному миру французской монархии, где история, искусство и королевское величие объединяются в одном изысканном произведении.</p>\n\n<p><em>При участии ChatGPT</em></p>','<p>Ce foulard raconte l’histoire du légendaire «Roi Soleil», Louis XIV. À travers de élégantes scènes équestres et des détails royaux, il évoque toute la splendeur de son règne et l’éclat de l’âge d’or français, ce qui en fait une pièce intemporelle pour les collectionneurs.</p>\n\n<p>Louis XIV est l’un des souverains les plus emblématiques de l’histoire de France, célèbre pour sa monarchie absolue et la magnificence de Versailles. Le dessin met en scène le roi à cheval, entouré de bordures raffinées et de motifs équestres classiques, symboles de pouvoir, d’élégance et d’héritage français.</p>\n\n<p>Porter le foulard <em>Ludovicus Magnus</em>, c’est entrer dans le monde fastueux de la cour française, où l’histoire, l’art et la grandeur royale se rencontrent dans un design richement détaillé.</p>',''),
(6122,'<div class=\"description\">\n<p>Hermès Mega Chariot by Daisuke Nomura Scarf.</p>\n\n<p>Nomura was inspired by a children\'s horse tricycle from the <a href=\"../../h_persons/2307-mile-maurice-herms/\">Émile Hermès</a> collection.</p>\n\n<p>He shows the god Hermes who is said to have taken Apollo\'s chariot without permission. Transformed into a robot, the tricycle hurtles towards Mount Olympus, home of the Greek gods.</p>\n\n<p><em>From https://vintagelux.com/</em></p>\n</div>','<p><strong>Mega Chariot от Daisuke Nomura.</strong></p>\n\n<p>При создании платка Nomura был вдохновлен детским трехколесным велосипедом-лошадкой из коллекции <a href=\"../../h_persons/2307-mile-maurice-herms/\">Émile Hermès</a>.</p>\n\n<p>На платке изображен бог Гермес, который якобы самовольно захватил колесницу Аполлона. Превратившись в робота, трехколесный велосипед мчится к горе Олимп, дому греческих богов.</p>\n\n<p><em> https://vintagelux.com/</em></p>','<p>Nomura s\'est inspiré d\'un tricycle à cheval pour enfants de la collection <a href=\"../../h_persons/2307-mile-maurice-herms/\">Émile Hermès</a>.</p>\n\n<p>Il montre le dieu Hermès qui aurait pris le char d\'Apollon sans autorisation. Transformé en robot, le tricycle fonce vers le mont Olympe, demeure des dieux grecs.</p>\n\n<p><em>Apres https://vintagelux.com/</em></p>',''),
(6123,'<p><font size=\"4\">Splitting his time between Brazil and France, <a href=\"https://bigactive.com/artists/filipe-jardim/\" rel=\"noreferrer noopener\" target=\"_blank\">Filipe Jardim</a> is a world traveler, a renowned fashion illustrator who has also worked for Louis Vuitton and Tiffany. </font></p>\n\n<p><font size=\"4\">He brings a distinct graphic style to Hermes that reflects his exuberant sense of fun and love of surfing. </font></p>\n\n<p><font size=\"4\">His work has also been produced in print, on tableware and on clothing.</font></p>','<p>Filipe Jardim, проводящий время между Бразилией и Францией, — заядлый путешественник, известный модный художник, работавший также для Louis Vuitton и Tiffany.</p>\n\n<p>Он привнес в Hermes свой неповторимый графический стиль, отражающий его жизнерадостность и любовь к серфингу.</p>\n\n<p>Его работы также были представлены в печатной продукции, на посуде и одежде.</p>','<p>Partageant son temps entre le Brésil et la France, Filipe Jardim est un grand voyageur et un illustrateur de mode de renom, ayant également collaboré avec Louis Vuitton et Tiffany.</p>\n\n<p>Il apporte à Hermès un style graphique unique, reflet de sa joie de vivre et de sa passion pour le surf.</p>\n\n<p>Ses illustrations se retrouvent aussi sur des supports imprimés, des arts de la table et des vêtements.</p>',''),
(6124,'','','',''),
(6125,'','','',''),
(6126,'','','',''),
(6127,'','','',''),
(6128,'','','',''),
(6129,'<p>Born in Austria, Claudia studied Fine Arts before launching her career as a freelance designer. Her collaborations with Hermès began in the early 2000s, resulting in a series of beautifully designed scarves that have garnered admiration and praise from fashion enthusiasts around the world.</p>\n\n<p>Claudia’s artistic flair and attention to detail have made her one of the most respected and sought-after designers in the world of luxury scarves. Through her collaboration with Hermès, she continues to produce captivating designs that blend traditional artistry with modern creativity.</p>\n\n<p>In the years to come, Claudia Stuhlhofer-Mayr will undoubtedly continue to create exquisite silk scarves for Hermès, contributing to the iconic fashion house’s legacy of timeless elegance and sophistication.</p>\n\n<p><em>Created by <a href=\"https://scarfsage.com\">ScarfSage.com</a></em></p>','<p>Клаудия Штульхофер-Майр родилась в Австрии, изучала изобразительное искусство, а затем начала карьеру дизайнера-фрилансера. Ее сотрудничество с Hermès началось в начале 2000-х годов, результатом чего стала серия великолепно разработанных шарфов, завоевавших восхищение и похвалу ценителей моды по всему миру.</p>\n\n<p>Художественный талант Клаудии и внимание к деталям сделали ее одним из самых уважаемых и востребованных дизайнеров в мире роскошных шарфов. Благодаря сотрудничеству с Hermès она продолжает создавать захватывающие дизайны, сочетающие традиционное искусство с современной креативностью.</p>\n\n<p><em>По мотивам ScarfSage.com</em></p>','<p>Née en Autriche, Claudia a étudié les Beaux-Arts avant de se lancer comme créatrice indépendante. Ses collaborations avec Hermès ont débuté au début des années 2000, donnant naissance à une série de foulards magnifiquement conçus qui ont suscité l\'admiration et les éloges des passionnés de mode du monde entier.</p>\n\n<p>Le talent artistique et le souci du détail de Claudia font d\'elle l\'une des créatrices les plus respectées et les plus recherchées dans l\'univers des foulards de luxe. Grâce à sa collaboration avec Hermès, elle continue de créer des modèles captivants qui allient savoir-faire traditionnel et créativité contemporaine.</p>\n\n<p>Dans les années à venir, Claudia Stuhlhofer-Mayr continuera sans aucun doute à créer de somptueux foulards en soie pour Hermès, contribuant ainsi à perpétuer l\'héritage d\'élégance et de raffinement intemporels de cette maison de couture emblématique.</p>\n\n<p><em>Créé par <a href=\"https://scarfsage.com\">ScarfSage.com</a></em></p>',''),
(6130,'<h3><em>From The Herm<span class=\"s1\">è</span>s Fall-Winter 2000/01 Seasonal Scarf Booklet</em></h3>\n\n<p>For the literary minded, \"paperoles\" refers to the paper slips which Marcel Proust used to stick to his manuscripts when adding further passages to his masterpiece of lost time.</p>\n\n<p>In the olden days too, the term referred to the slim rolls of paper used in the eighteenth century to make reliquaries and other objects, holy or, as in the case of this coach, profane.</p>\n\n<p>Now on show in the Hermès collection, it comes from a Florentine collector of antiques.</p>','<h3><em>Из буклета Hermès осенне-зимней коллекции шарфов 2000/01</em></h3>\n\n<p>Для любителей литературы: «Paperole» — это бумажные полоски, которые Марсель Пруст использовал для приклеивания к своим рукописям при добавлении новых фрагментов к своему шедевру, созданному в эпоху утраченного времени.</p>\n\n<p>В старину этот термин также обозначал тонкие рулоны бумаги, использовавшиеся в XVIII веке для изготовления реликвариев и других предметов, священных или, как в случае с этой каретой, мирских.</p>\n\n<p>Сейчас карета выставлена ​​в коллекции Hermès и происходит от флорентийского коллекционера антиквариата.</p>','<h3><em>Extrait du catalogue des foulards saisonniers Automne-Hiver 2000/01 d\'Hermès</em></h3>\n\n<p>Pour les amateurs de littérature, le terme «Paperoles» désigne les petits papiers que Marcel Proust utilisait pour ajouter des passages à ses manuscrits, notamment à son chef-d\'œuvre du temps perdu.</p>\n\n<p>Autrefois, ce terme désignait également les fines feuilles de papier utilisées au XVIIIe siècle pour la confection de reliquaires et autres objets, sacrés ou, comme dans le cas de ce carrosse, profanes.</p>\n\n<p>Actuellement exposé dans la collection Hermès, ce carrosse provient d\'un collectionneur d\'antiquités florentin.</p>',''),
(6131,'<p style=\"white-space:pre-wrap;\"><em>I’m an English illustrator living in France.</em></p>\n\n<p style=\"white-space:pre-wrap;\"><em>Collaborating with<a href=\"https://www.hermes.com/fr/fr/product/carre-70-hermes-tea-time-H983782Sv01/\"> </a>Hermès Paris, The Folio<a href=\"https://www.foliosociety.com/row/catalogsearch/result/index/?illustrator=Jonathan%20Burton&amp;q=Jonathan%20Burton\"> </a>Society, The Ritz Hotel, Vacheron Constantin, BAFTA, Penguin Books, Care for the Wild, The Royal Mail, The Royal Mint, Fortnum and Masons, Jack White…</em></p>','<p><em>Я — английский иллюстратор, живу во Франции.</em></p>\n\n<p><em>Сотрудничаю с такими брендами и организациями, как Hermès Paris, The Folio Society, отель Ritz, Vacheron Constantin, BAFTA, Penguin Books, Care for the Wild, Королевская почта Великобритании (The Royal Mail), Королевский монетный двор (The Royal Mint), Fortnum &amp; Mason, Джек Уайт...</em></p>','<p><em>Je suis un illustrateur anglais résidant en France.</em></p>\n\n<p><em>Je collabore avec Hermès Paris, The Folio Society, l’hôtel Ritz, Vacheron Constantin, la BAFTA, Penguin Books, Care for the Wild, la Royal Mail, la Royal Mint, Fortnum &amp; Mason, Jack White…</em></p>',''),
(6132,'<h3><em>From The Hermès Website:</em></h3>\n\n<h3><span style=\"color:rgb(68,68,68);font-family:Manrope, Roboto, sans-serif;font-size:14px;font-style:normal;font-weight:400;letter-spacing:normal;text-align:center;text-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;background-color:rgb(255,252,247);float:none;\">It\'s party time at Hermès. </span></h3>\n\n<p><span style=\"color:rgb(68,68,68);font-family:Manrope, Roboto, sans-serif;font-size:14px;font-style:normal;font-weight:400;letter-spacing:normal;text-align:center;text-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;background-color:rgb(255,252,247);float:none;\">Everyone has gathered on rue du Faubourg Saint-Honoré, decked out in their finest balloons. </span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-family:Manrope, Roboto, sans-serif;font-size:14px;font-style:normal;font-weight:400;letter-spacing:normal;text-align:center;text-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;background-color:rgb(255,252,247);float:none;\">A curious gallery parades in the blue sky and dances in the wind. A dolphin joins a banana, a billiard ball floats towards a rocket, and, with the magic of weightlessness, a rhinoceros even takes flight. All that\'s missing is a horse... </span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-family:Manrope, Roboto, sans-serif;font-size:14px;font-style:normal;font-weight:400;letter-spacing:normal;text-align:center;text-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;background-color:rgb(255,252,247);float:none;\">But then, isn\'t that one just visible up there, like a fleeting cloud in the air?</span></p>','','',''),
(6133,'','','',''),
(6134,'<div><em>\"Archives Hermès\"</em> refers to the body of historical works and documentation of the Hermès house, and not a specific group of artists. Key artists and individuals associated with works found within the <em>Archives Hermès </em>include:</div>\n\n<ul class=\"KsbFXc U6u95\">\n	<li><span class=\"T286Pc\"><a href=\"../robert-dallet/\"><strong class=\"Yjhzub\"><span class=\"T286Pc\"><span class=\"T286Pc\">Robert Dallet</span></span></strong></a> A painter known for his realistic and detailed depictions of wild cats, many of which were used in Hermès scarf designs in the 1980s.</span></li>\n	<li><span class=\"T286Pc\"><a href=\"../199-hugo-grygkar/\"><strong class=\"Yjhzub\"><span class=\"T286Pc\"><span class=\"T286Pc\">Hugo Grygkar</span></span></strong></a><span class=\"T286Pc\"> Designer who created the renowned \"Brides de Gala\" scarf print in collaboration with <span class=\"T286Pc\">Robert Dumas</span> in 1957</span>.</span></li>\n	<li><span class=\"T286Pc\"><a href=\"../leila-menchari/\"><strong class=\"Yjhzub\"><span class=\"T286Pc\"><span class=\"T286Pc\">Leila Menchari</span></span></strong></a> A designer and longtime window dresser for Hermès, known for her elaborate and imaginative window displays.</span></li>\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\"><span class=\"T286Pc\"><span class=\"T286Pc\">Daniel Aron</span></span></strong> A photographer whose images of iconic items like the Kelly bag are part of the archives.</span></li>\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\">Draeger</strong> A name or entity (possibly a design studio or photo agency like \"Wallace et Draeger\") credited with numerous archival photographs of Hermès bags and products across several decades.</span></li>\n	<li><span class=\"T286Pc\"><a href=\"../320-benot-pierre-emery/\"><strong class=\"Yjhzub\"><span class=\"T286Pc\"><span class=\"T286Pc\">Benoit Pierre Emery</span></span></strong></a> A French art director who created designs like the \"Échec au roi\" for scarves.</span></li>\n	<li><span class=\"T286Pc\"><strong class=\"Yjhzub\"><span class=\"T286Pc\"><span class=\"T286Pc\">Evan Hecox</span></span></strong> An American artist who created typography-based designs, such as one featuring the address \"Hermès 24 rue du Faubourg-Saint-Honoré Paris\".</span></li>\n	<li><span class=\"T286Pc\"><a href=\"https://fortstreetstudio.com/special-editions/\"><strong class=\"Yjhzub\"><span class=\"T286Pc\"><span class=\"T286Pc\">Janis Provisor</span><span class=\"T286Pc\"> and <span class=\"T286Pc\">Brad Davis</span></span></span></strong></a> American artists who designed rugs for the Hermès home-decor line.</span></li>\n	<li><span class=\"T286Pc\"><a href=\"https://www.hermes.com/se/en/product/reeditions-jean-michel-frank-par-hermes-3-seater-sofa-H961821MW01/\"><strong class=\"Yjhzub\"><span class=\"T286Pc\"><span class=\"T286Pc\">Jean-Michel Frank</span></span></strong></a> A historical designer whose furnishings have been re-edited by Hermès.</span><span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></li>\n</ul>\n\n<div class=\"Y3BBE\">These individuals represent some of the creative talents whose work is preserved and referenced in the <em>Archives Hermès</em>.<span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></div>','<p><em>Архивы Hermès (Archives Hermès)</em>— это совокупность исторических произведений и документальных материалов дома Hermès, а не конкретная группа художников. Среди ключевых авторов и личностей, чьи работы представлены в <em>Archives Hermès</em>, можно выделить следующих:</p>\n\n<ul>\n	<li> <a href=\"../robert-dallet/\"><strong>Робер Далле (Robert Dallet)</strong></a> Художник, известный своими реалистичными и детально проработанными изображениями диких кошек, многие из которых использовались в дизайне платков Hermès в 1980-е годы.</li>\n	<li> <a href=\"../199-hugo-grygkar/\"><strong>Уго Григкар (Hugo Grygkar)</strong></a> Дизайнер, создавший знаменитый платок <em>«Brides de Gala»</em> в сотрудничестве с <a href=\"..2298-robert-dumas\">Робером Дюма</a> в 1957 году.</li>\n	<li> <a href=\"../leila-menchari/\"><strong>Лейла Меншари (Leila Menchari)</strong></a> Дизайнер и многолетний витринист Hermès, прославившаяся своими сложными и фантазийными оформлением витрин.</li>\n	<li> <strong>Даниэль Арон (Daniel Aron)</strong> Фотограф, чьи снимки культовых предметов, таких как сумка Kelly, входят в архивы дома.</li>\n	<li> <strong>Draeger</strong> Организация (возможно <em>«Wallace et Draeger»</em>), которой приписываются архивные фотографии сумок и продукции Hermès за несколько десятилетий.</li>\n	<li> <a href=\"../320-benot-pierre-emery/\"><strong>Бенуа-Пьер Эмери (Benoit Pierre Emery) </strong></a>Французский арт-директор, автор дизайнов для платков Hermès, включая мотив <em>«Échec au roi»</em>.</li>\n	<li> <strong>Эван Хекокс (Evan Hecox) </strong>Американский художник, работающий с типографикой; среди его работ — дизайн с адресом <em>«Hermès, 24 rue du Faubourg-Saint-Honoré, Paris»</em>.</li>\n	<li> <a href=\"https://fortstreetstudio.com/special-editions/\"><strong>Дженис Провайзор и Брэд Дэвис (Janis Provisor &amp; Brad Davis) </strong></a> Американские художники, создавшие ковры для линии интерьерного декора Hermès.</li>\n	<li> <a href=\"https://www.hermes.com/se/en/product/reeditions-jean-michel-frank-par-hermes-3-seater-sofa-H961821MW01/\"><strong>Жан-Мишель Франк (Jean-Michel Frank)</strong></a> Исторический дизайнер, мебель которого была переиздана домом Hermès.</li>\n</ul>\n\n<p><em>При помощи ИИ</em></p>','<p>Les «Archives Hermès» désignent l’ensemble des œuvres historiques et de la documentation de la maison Hermès, et non un groupe précis d’artistes. Parmi les artistes et personnalités clés dont les travaux figurent dans les Archives Hermès, on peut citer :</p>\n\n<p> Robert Dallet Peintre connu pour ses représentations réalistes et très détaillées de félins sauvages, dont plusieurs ont été utilisées pour des foulards Hermès dans les années 1980.</p>\n\n<p> Hugo Grygkar Designer à l’origine du célèbre carré « Brides de Gala », créé en collaboration avec Robert Dumas en 1957.</p>\n\n<p> Leila Menchari Créatrice et décoratrice de vitrines emblématique de la maison Hermès, reconnue pour ses mises en scène spectaculaires et imaginatives.</p>\n\n<p> Daniel Aron Photographe dont les images d’objets iconiques, comme le sac Kelly, font partie des archives.</p>\n\n<p> Draeger Nom ou entité (probablement un studio de design ou une agence photo, comme «Wallace et Draeger») crédité de nombreuses photographies d’archives de sacs et de produits Hermès sur plusieurs décennies.</p>\n\n<p> Benoît-Pierre Emery Directeur artistique français, auteur de créations pour foulards, dont le motif « Échec au roi ».</p>\n\n<p> Evan Hecox Artiste américain connu pour ses créations typographiques, notamment un design intégrant l’adresse « Hermès, 24 rue du Faubourg-Saint-Honoré, Paris ».</p>\n\n<p> Janis Provisor et Brad Davis Artistes américains ayant conçu des tapis pour la ligne de décoration intérieure d’Hermès.</p>\n\n<p> Jean-Michel Franck Designer historique dont les créations de mobilier ont été rééditées par Hermès.</p>\n\n<p>Ces personnalités représentent une partie des talents créatifs dont les œuvres sont conservées et régulièrement référencées dans les Archives Hermès.</p>\n\n<p><em>Avec l’aide de l´IA</em></p>',''),
(6135,'','','',''),
(6136,'','','',''),
(6137,'','','',''),
(6138,'<p><em>How can one summarize the work of Pierre Péron?</em><br />\n<strong>Yves-Marie Péron (his son): </strong>Difficult... He painted and drew all his life. Right up to his last breath. There\'s an anecdote that I think sums up who he was quite well. On the day he died, at the military hospital, I found a caricature in his pajama pocket... of his surgeon...</p>\n\n<p><em>Which artist(s) did he feel close to?</em><br />\n<strong>Yves-Marie Péron (his son):</strong> In the end, there were relatively few... Except for the poster artists of the 1920s, such as A.M. Cassandre. When he moved to Paris in 1927, his ambition was to become an advertising executive, but he didn\'t have the career he hoped for due to the economic crisis of the 1930s. On the other hand, he knew and worked closely with writers from whom came, among others, the book by Pierre Mac Orlan <em>(“Brest seen by Pierre Péron”),</em> that of Roger Vercel<em> (“Remorques”),</em> and later that of Pierre Jakes Hélias <em>(“Pierre Péron, Tales of truth and appearance”).</em></p>\n\n<p><em>From interview https://www.letelegramme.fr/</em></p>','<p>Pierre Péron — французский художник и график, родился в Бресте (Brest).</p>\n\n<p>В начале своей карьеры преподавал графику в Парижской Академии изящных искусств, работал в художественных и ремесленных ассоциациях. Был многосторонним художником: графиком, иллюстратором, декоратором, занимался сценографией, живописью, дизайном изделий.</p>\n\n<p>В 1950-х годах он начал сотрудничать с Hermès по приглашению <a href=\"../2298-robert-dumas/\">Robert Dumas</a>, создавая уникальные рисунки для шелковых платков. Сотрудничество с брендом продолжалось более тридцати лет.</p>\n\n<p>Pierre Péron считается одним из ранних и заметных художников, работавших для Hermès, особенно в период, когда шелковые carrés становились предметом коллекционирования и предметом искусства. Его работы часто отражают поэтичные, натуралистические и исторически вдохновлённые сюжеты.</p>\n\n<p><em>При участии ИИ</em></p>\n\n<p> </p>','<p><em><span class=\"Hquestion\">Comment résumer l\'oeuvre de Pierre Péron ? </span></em><br />\n<strong>Yves-Marie Péron (son fils):</strong> Difficile... Il a peint et dessiné toute sa vie. Jusqu\'à son dernier souffle. Il y a une anecdote qui, je trouve, résume bien qui il était. Le jour de sa mort, à l\'hôpital des armées, j\'ai retrouvé dans sa poche de pyjama une caricature... de son chirurgien...</p>\n\n<p><em><span class=\"Hquestion\">De quel(s) artiste(s) se sentait-il proche ? </span></em><br />\n<strong>Yves-Marie Péron (son fils): </strong>Il y en a au final assez peu... Si ce n\'est les affichistes des années 1920, telles A.M.Cassandre. Quand il monte à Paris, en 1927, son ambition est de devenir publicitaire mais il n\'aura pas eu la carrière qu\'il espérait du fait de la crise économique des années trente. En revanche, il a connu et travaillé en étroite collaboration avec des écrivains d\'où sont issus, entre autres, le livre de Pierre Mac Orlan <em>(« Brest vu par Pierre Péron »)</em>, celui de Roger Vercel <em>(« Remorques »),</em> et plus tard de Pierre Jakes Hélias <em>(« Pierre Péron, Contes du vrai et du semblant »)</em>.</p>\n\n<p><em>https://www.letelegramme.fr/</em></p>',''),
(6139,'','<p>Дизайн, вдохновлённый древними колесницами на четырёх лошадях (quadriga), отражающий богатую конную историю Hermès.</p>\n\n<p>Этот мотив был настолько успешным, что периодически переиздавался и появлялся в разных вариантах и цветах, в том числе после 2010 года.</p>\n\n<p><em>С участием ИИ.</em></p>','',''),
(6140,'<p>Born on September 27, 1927, in Tunis, <strong>Leila Menchari</strong> was destined for an illustrious career filled with artistic creativity and grandeur. Being the daughter of Abderrahman Menchari, a Francophile lawyer and wealthy landowner, and Habiba Ben Djellab, a justice clerk and a prominent feminist, she enjoyed an upbringing vastly different from many young Tunisian women of her time. As a child, she was allowed the freedom to explore and immerse herself in art, cinema, and high-level swimming.</p>\n\n<p>Her journey into the world of artistry began in the gardens of a villa owned by an American-British couple, Violet and Jean Henson. This space teeming with fruit trees, eucalyptus, peacocks, and a plethora of otherworldly aesthetics ignited an artistic flame within her. Here, she met eminent artists like Man Ray, Jean Cocteau, and Luchino Visconti, which cemented her determination to walk the path of creativity.</p>\n\n<p><strong>Menchari</strong> then ventured to Paris, graduating from the École des Beaux-Arts and mingling with bohemian Saint-Germain-des-Prés’s artistic community in the 1950s. Her friend and childhood companion, designer Azzedine Alaïa, introduced her to French couture, leading to her becoming a favored model for Guy Laroche in 1957. This experience honed her understanding of Parisian elegance.</p>\n\n<p>In 1961, Menchari’s life took a turn when she joined the iconic luxury brand, <strong>Hermès</strong>. Her creative genius was quickly recognized by Annie Beaumel, the in-house decorator of Hermès, who challenged her to “Draw your dreams!” Menchari’s fantastical, grandiose, and oriental dreams materialized as she began designing window displays for Hermès, initially as Beaumel’s assistant and eventually becoming the lead decorator in 1978.</p>\n\n<p>Her designs not only represented her unique artistic vision but also served as a harmonious blend of art and craftsmanship, East and West. Menchari’s window displays, known for their imaginative extravagance, became the main attraction at the Hermès flagship store at 24 Faubourg-Saint-Honoré in Paris. Each display was a tribute to her artistic brilliance, captivating passerby and firmly etching Hermès’s image as a paragon of luxury in the global fashion industry.</p>\n\n<p>Leila Menchari’s legacy continues to inspire, long after her passing on April 4, 2020, in Paris. As one of Hermès’s most distinguished and influential designers, her imaginative designs and captivating window displays will forever be a testament to her artistic prowess and unique vision.</p>\n\n<p><em>Created by <a href=\"https://scarfsage.com\">ScarfSage.com</a></em></p>','<p>Лейле Менчари, родившейся 27 сентября 1927 года в Тунисе, была уготована блестящая карьера, полная художественного творчества и величия. Будучи дочерью Абдеррахмана Менчари, адвоката-франкофила и богатого землевладельца, и Хабибы Бен Джеллаб, судебного клерка и известной феминистки, она получила воспитание, разительно отличавшееся от воспитания многих молодых тунисских женщин её времени. В детстве ей была предоставлена ​​свобода исследовать и погружаться в искусство, кино и профессиональное плавание.</p>\n\n<p>Меншари отправилась в Париж, где окончила Школу изящных искусств и в 1950-х годах познакомилась с богемным художественным сообществом Сен-Жермен-де-Пре. Её друг и товарищ детства, дизайнер Аззедин Алайя, познакомил её с французской высокой модой, благодаря чему в 1957 году она стала любимой моделью Ги Лароша. Этот опыт отточил её понимание парижской элегантности.</p>\n\n<p>В 1961 году жизнь Меншари изменилась, когда она присоединилась к культовому люксовому бренду Hermès. Её творческий гений был быстро признан Анни Бомель, штатным декоратором Hermès, которая бросила ей вызов: «Нарисуй свои мечты!» Фантастические, грандиозные и восточные мечты Меншари воплотились в жизнь, когда она начала оформлять витрины для Hermès, сначала в качестве ассистента Бомеля, а затем, в 1978 году, стала ведущим декоратором.</p>\n\n<p>На протяжении всей своей карьеры в Hermès Меншари была творческой силой, создавшей множество замечательных платков. Её работы не только отражали её уникальное художественное видение, но и представляли собой гармоничное сочетание искусства и мастерства, Востока и Запада. Витрины Меншари, известные своей изобретательной экстравагантностью, стали главной достопримечательностью флагманского магазина Hermès по адресу Фобур-Сент-Оноре, 24, в Париже. Каждая витрина была данью её художественному таланту, очаровывала прохожих и прочно закрепляла образ Hermès как эталона роскоши в мировой индустрии моды.</p>','',''),
(6331,'<div class=\"ul-list-item rounded-area\">\n<p><strong><em>Откуда взялась <a href=\"/sh/h_spot/h_persons/anne-marie-cassandre/\">Anne Marie Cassandre</a> ??? </em></strong></p>\n\n<p><strong><em>Это реально существовавший человек или очередной псевдоним?</em></strong></p>\n\n<p><strong><em>Надо разобраться...</em></strong></p>\n</div>','','',''),
(6332,'','','',''),
(6333,'','','',''),
(6141,'','','',''),
(6142,'','','',''),
(6143,'','','',''),
(6144,'<p>This carré is a highly appreciated design among collectors, celebrated for its refined tribute to the legendary <strong>Cedars of Lebanon</strong>.</p>\n\n<p>These ancient trees—some said to be more than a thousand years old—are symbols of endurance, wisdom, and cultural heritage. Rybaltchenko captures this grandeur with a beautifully composed central cedar, surrounded by subtle motifs inspired by Levantine decorative arts.</p>\n\n<p>Тhe appeal lies in the scarf’s <strong>quiet majesty</strong> and the depth of its cultural references. It is a design that feels both historic and timeless, offering a rare sense of stillness and dignity. <em>Sous le cèdre</em> remains an elegant and meaningful piece within the Hermès universe, valued for its atmosphere, symbolism, and artistic restraint.</p>','<p>Это одна из тех работ Hermès, которые особенно ценятся коллекционерами за свою утончённость и глубокую символику.</p>\n\n<p>В центре — легендарные <strong>ливанские кедры</strong>, деревья-долгожители, которым приписывают возраст более тысячи лет. Они считаются символами стойкости, мудрости и культурной памяти. Рыбальченко передаёт их величие спокойной, благородной композицией, дополненной мотивами, навеянными традиционным искусством Ближнего Востока.</p>\n\n<p>Эту работу отличает её <strong>тихое величие</strong> и насыщенность культурными отсылками. Это carré вне времени, обладающее редкой атмосферой достоинства и покоя. <em>Sous le cèdre</em> остаётся значимой и выразительной частью вселенной Hermès, ценимой за символизм и художественную сдержанность.</p>','<p>Avec <em>Sous le cèdre</em>, Rybaltchenko nous transporte sous les branches des majestueux <strong>cèdres du Liban</strong>, ces arbres anciens qui ont inspiré tant d’artistes et de voyageurs au fil des siècles.</p>\n\n<p>Au cœur du carré se trouve un grand cèdre, dessiné avec une grande douceur et entouré de motifs évoquant les traditions du Levant.</p>\n\n<p>Le dessin dégage une impression de calme, presque de méditation, comme si l’on se trouvait réellement à l’ombre d’un arbre millénaire. <em>Sous le cèdre</em> est un hommage à la nature et à la beauté qui traverse les âges.</p>','<p><em>Sous le cèdre</em> tar betraktaren med till de stilla och tidlösa <strong>Libanoncedrarna</strong>, träd som i århundraden har inspirerat resenärer, poeter och konstnärer. I centrum står en ståtlig ceder, varsamt tecknad och omgiven av mönster som påminner om Mellanösterns hantverkstraditioner.</p>\n\n<p>Sjalen har en lugn, nästan meditativ känsla, som att stå i skuggan av ett tusenårigt träd. <em>Sous le cèdre</em> är en hyllning till naturen och till den skönhet som består genom tiden.</p>\n\n<hr />'),
(6145,'<p><strong>Ardmore Artists</strong> is a South African collective of talented Zulu artists from the village of Ardmore, KwaZulu-Natal. Founded in the early 1980s, the group is known for its hand-painted ceramics, textiles, and illustrations, full of vibrant color, bold patterns, and storytelling.</p>\n\n<p>Their collaboration with Hermès brought this joyful, narrative-rich artistry to silk scarves. Each design reflects Ardmore’s signature style — inspired by African folklore, nature, and daily life — and transforms luxury silk into miniature works of art.</p>\n\n<p>Ardmore scarves are celebrated by collectors for their unique blend of <strong>cultural richness, expressive color, and meticulous craftsmanship</strong>.</p>\n\n<p><strong><em>With help from AI</em></strong></p>','<p><strong>Ardmore Artists</strong> — это южноафриканский коллектив талантливых зулусских художников из деревни Ардмор, провинция КваЗулу-Натал. Основанный в начале 1980-х, коллектив известен своими ручными керамическими изделиями, текстилем и иллюстрациями с яркими цветами, смелыми узорами и живыми историями.</p>\n\n<p>Сотрудничество с Hermès перенесло этот радостный, насыщенный повествованием стиль на шелковые carrés. Каждое произведение отражает уникальный стиль Ardmore, вдохновлённый африканским фольклором, природой и повседневной жизнью, превращая роскошный шелк в миниатюрные произведения искусства.</p>\n\n<p>Carrés Ardmore ценятся коллекционерами за <strong>богатство культурного наследия, выразительные цвета и кропотливое мастерство</strong>.</p>\n\n<p><em>При участии ИИ</em></p>','<p><strong>Ardmore Artists</strong> est un collectif sud-africain d’artistes zoulous, originaire du village d’Ardmore, au KwaZulu-Natal. Fondé au début des années 1980, le groupe est réputé pour ses céramiques, textiles et illustrations peintes à la main, éclatantes de couleurs, de motifs audacieux et d’histoires.</p>\n\n<p>La collaboration avec Hermès a permis de porter cet art narratif et joyeux sur des carrés en soie. Chaque création reflète le style unique d’Ardmore — inspiré par le folklore africain, la nature et la vie quotidienne — transformant la soie de luxe en véritables œuvres d’art miniatures.</p>\n\n<p>Les carrés Ardmore sont appréciés des collectionneurs pour leur <strong>richesse culturelle, leur couleur expressive et leur savoir-faire minutieux</strong>.</p>\n\n<p><em><strong>Avec l’aide de ChatGPT</strong></em></p>\n\n<hr />','<p><strong>Ardmore Artists</strong> är en sydafrikansk samling av skickliga zulu‑konstnärer från byn Ardmore i KwaZulu-Natal. Grundad i början av 1980-talet, är kollektivet känt för sina handmålade keramikföremål, textilier och illustrationer med levande färger, djärva mönster och berättande.</p>\n\n<p>Deras samarbete med Hermès förde denna glädjefyllda, berättande konst till sidensjalar. Varje design speglar Ardmore‑stilens karaktär — inspirerad av afrikansk folklore, natur och vardagsliv — och förvandlar lyxig siden till små konstverk.</p>\n\n<p>Ardmore‑sjalar uppskattas av samlare för sin <strong>kulturella rikedom, uttrycksfulla färger och omsorgsfulla hantverk</strong>.</p>'),
(6147,'','','',''),
(6148,'<h3><em>From AI</em></h3>\n\n<p>\"Tsubas\" scarf is a celebrated design inspired by the ornate hand guards of Japanese swords.</p>\n\n<p>The layout features five central <em>tsubas</em> arranged symmetrically - one in the center and four at the corners.</p>\n\n<p>Complementing the <em>tsubas</em> are four <em>Aori</em> (Samurai saddle flaps) embellished with traditional Japanese symbols like dragons, birds, and tassels.</p>\n\n<p>Known for its bold but simple elegance, the design typically uses only three to four colors, often featuring antique gold against deep backgrounds.</p>\n\n<h3><em>From <a href=\"https://abigail-goodman.com/\">abigail-goodman.com</a></em></h3>\n\n<p>Such a gorgeous motif and I love the vignettes on each of the saddle flaps.</p>\n\n<p>The ones with the deer and dragons are frame-worthy! And the corner details are incredible, featuring tsubas, which give the scarf its name.</p>\n\n<p>These are the hand guards on a samurai sword that prevent the hand from sliding onto the blade.</p>\n\n<p>Such perfect, intricate details!</p>','<h3><em>Из AI</em></h3>\n\n<p>Платок «Tsubas» (<em>гарды</em> - защита рук у холодного оружия) — это знаменитый дизайн, рассказывающий о богато украшенных <em>гардами</em> японских мечей.</p>\n\n<p>В нём представлены пять центральных <em>гард</em>, расположенных симметрично — одна в центре и четыре по углам.</p>\n\n<p>Дополняют <em>гарды</em> четыре <em>аори</em> (самурайские седельные виньетки), украшенные традиционными японскими символами - драконы, птицы, кисточки.</p>\n\n<p>Дизайн со своей смелой, и простой элегантностью,  обычно использует всего три-четыре цвета, часто с античным золотом на темном фоне.</p>\n\n<h3><em>Из <a href=\"https://abigail-goodman.com/\">abigail-goodman.com</a></em></h3>\n\n<p>Это <em>гарды</em> самурайского меча, которые предотвращают соскальзывание руки на лезвие.</p>\n\n<p>Такой великолепный мотив, и мне он очень нравится Виньетки на каждом из клапанов седла.</p>\n\n<p>Изображения оленей и драконов достойны того, чтобы их повесили в рамку! А детали углов просто невероятны, особенно <em>гарды</em>, которые и дали платку его название.</p>\n\n<p>Такие совершенные, замысловатые детали!</p>','',''),
(6149,'<p>Every American town seems to have a street, a school, or a monument named after George Washington. It feels fitting: he not only shaped the young nation, he also chose the very spot along the Potomac River where the new federal capital would rise — a city that would carry his name, just like one of the future fifty states.</p>\n\n<p>When the moment came to mark this new chapter, Washington set out from Federal Hall, his residence in New York, and travelled south.<br />\nIt was 1789. He had just taken the oath of office as the first President of the United States, and the public greeted him with overwhelming enthusiasm. His procession, accompanied by a proud presidential escort, was a spectacle that captured the spirit of the era.</p>\n\n<p>A few years later, in 1792, artist J. Robert Hart created a delicate watercolor titled <em>Profile of the carriage of George Washington, made in London</em>. Seen through the eyes of a carriage painter, it offers a unique glimpse into the elegance of Washington’s official coach. This artwork inspired the design of the carré. We like to imagine that the president’s own carriage — the one that turned so many heads that day — looked just as it does here.</p>\n\n<div class=\"lRu31\" dir=\"ltr\"><strong><span class=\"HwtZe\" lang=\"fr\" xml:lang=\"fr\"><span class=\"jCAhz ChMk0b\"><span class=\"ryNqvb\">Inspired by </span></span></span><em><a href=\"https://scarfsage.com\">ScarfSage.com</a></em></strong></div>','<p>Каждый американский город имеет памятник или улицу Джорджа Вашингтона.</p>\n\n<p>Джордж сам выбрал место для новой столицы США — на берегах реки Потомака, и дал городу своё имя. В 1789 году  Вашингтон отправился туда, чтобы отметить основание города.  Его только что инаугурировали как первого президента США, люди ликовали, и президентский кортеж стал по-настоящему торжественным зрелищем.</p>\n\n<p>Спустя три года художник Дж. Роберт Харт создал акварель «Профиль экипажа Джорджа Вашингтона, изготовленного в Лондоне». Именно эта работа стала источником вдохновения для каре Hermès. Хочется верить, что первая президентская карета, главный символ того исторического дня, выглядела именно так, как на изображении.</p>\n\n<p><em><strong>Идея текста <a href=\"https://scarfsage.com\">carfSage.com</a></strong></em></p>','<p>Dans presque toutes les villes américaines, on trouve une rue, une école ou un monument dédié à George Washington. Rien d’étonnant : il n’a pas seulement forgé la jeune nation, il a lui-même choisi l’emplacement de la future capitale fédérale, sur les rives du fleuve Potomac — une ville qui porterait son nom, tout comme l’un des cinquante États de l’Union.</p>\n\n<p>Pour marquer cet événement fondateur, Washington quitta Federal Hall, sa résidence new-yorkaise, et entreprit le voyage vers le sud.<br />\nNous sommes en 1789. Il venait d’être investi premier président des États-Unis, et les foules l’accueillirent avec un enthousiasme débordant. Son cortège, accompagné d’une escorte présidentielle imposante, fut un véritable spectacle.</p>\n\n<p>Trois ans plus tard, en 1792, l’artiste J. Robert Hart réalisa une aquarelle intitulée <em>Profile of the carriage of George Washington, made in London</em>. Ce regard de peintre-carrossier révèle la finesse et l’élégance du carrosse officiel de Washington. C’est cette œuvre qui a inspiré le dessin du carré. Et nous aimons imaginer que le carrosse présidentiel, celui qui fascina tant de regards ce jour-là, ressemblait exactement à celui représenté ici.</p>\n\n<p><span class=\"HwtZe\" lang=\"fr\" xml:lang=\"fr\"><span class=\"jCAhz ChMk0b\"><span class=\"ryNqvb\"><strong><em>Inspiré par</em></strong> </span></span></span><strong><em><a href=\"https://scarfsage.com\">ScarfSage.com</a></em></strong></p>',''),
(6159,'<p><strong>From The Hermès Spring-Summer 2016 Collection Website:</strong></p>\n\n<p><span>Chased by a leopard, a vervet monkey turns to face its predator, his expression anxious and uncertain. In Zulu culture, the leopard symbolises royalty, while the vervet monkey represents intelligence and wit – fine qualities, though they may not be enough to save his life here. But who knows? Giant King Protea blooms (South Africa’s national flower) surround the two protagonists, and the carré is framed with a border of amazumpa motifs, used in Zulu pottery. Ardmore is a collective of Zulu, Zimbabwean and Sotho artisan potters, founded in 1985 by Fée Halsted, in Kwazulu Natal, South Africa. Today, the group numbers seventy members: creative artists dedicated to reinventing traditional styles, united by their recognition of what our common humanity and fraternity truly mean: that each of us exists thanks to others. This carré marks the beginning of a new collaboration between the collective, and the house of Hermès.</span></p>','','',''),
(6168,'<p>Leigh Cooke is a Surface Pattern Designer best known and admired for his scarf designs.</p>\n\n<p>He designed for Salvatore Ferragamo from 1998 to 2003, and has designed for Hermès since 2001. These works are, like his scarf designs, beautifully arranged <em>Still Lifes</em> of every-day objects.</p>','','',''),
(6171,'','','',''),
(6172,'','','',''),
(6177,'<p><strong>Anne Marie Cassandre</strong>, born on August 30, 1943, in Lyon, France, was a renowned Hermès scarf designer known for her vibrant colors, intricate patterns, and bold, contemporary designs. The daughter of a textile factory owner, Anne Marie was exposed to the world of fabrics and design at an early age. Her natural artistic talent and passion for colors soon led her to pursue a formal education in design.</p>\n\n<p>In 1961, Anne Marie enrolled at the prestigious <em>École Nationale Supérieure des Beaux-Arts</em> in Paris, where she studied textile and graphic design. During her time at the school, she was heavily influenced by the works of modern artists such as Henri Matisse, Joan Miró, and Wassily Kandinsky. Their use of bold colors and abstract shapes would later become a defining characteristic of Anne Marie’s designs.</p>\n\n<p>After graduating in 1966, Anne Marie began her career as a freelance textile designer, creating patterns for various fashion houses in Paris. Her talent was quickly recognized, and in 1970, she was offered a position at Hermès as a scarf designer. This opportunity catapulted her career and solidified her place in the world of high fashion.</p>\n\n<p>Anne Marie’s first scarf design for Hermès, “Labyrinthe des Couleurs,” was introduced in 1971 and was an instant success. The intricate, abstract design combined with the vibrant colors became a trademark of her work. Over the next few decades, Anne Marie would design over 50 iconic scarves for Hermès, each one showcasing her unique artistic vision.</p>\n\n<p>Some of her designs include <a>Perspective</a> and <a>Littérature</a>. These scarves have become highly sought-after collector’s items, and Anne Marie’s work has been praised for its exceptional attention to detail and her ability to create a sense of movement and depth in her designs.</p>\n\n<p>Anne Marie was known not only for her incredible talent but also for her warm personality and dedication to her craft. She married fellow artist and graphic designer, Paul Cassandre, in 1968, and they had two children together, Isabelle and Philippe. Their shared love for art and design led them to collaborate on various projects throughout their lives, including creating a series of limited edition prints and working together on interior design projects.</p>\n\n<p>After a long and successful career, Anne Marie retired from Hermès in 2008. She continued to create art and remained active in the design community, mentoring young designers and participating in various art exhibitions. On June 12, 2016, Anne Marie Cassandre passed away at the age of 72, leaving behind a legacy of unparalleled creativity and artistic innovation.</p>\n\n<p>Today, her designs continue to be celebrated and admired by art enthusiasts and fashion connoisseurs alike. The unique vision and extraordinary talent of Anne Marie Cassandre will forever be remembered as an integral part of the history of Hermès and the world of luxury fashion.</p>\n\n<p><em>Created by <a href=\"https://scarfsage.com\">ScarfSage.com</a></em></p>','','',''),
(6179,'<p>Strictly saying, A.M.Cassandre was not the author of this scarf, it was published years after he passed away.</p>','','',''),
(6222,'','','',''),
(6253,'','','',''),
(6258,'','','',''),
(6271,'','','',''),
(6272,'','','',''),
(6276,'','','',''),
(6277,'','','',''),
(6282,'','<p>Случилось так, что <a class=\"uk-text-bold\" href=\"https://www.kaplans.se/en/auktioner/4171/vara/1883715\">Kaplans Auktioner</a> перепутал лоты и продал <em>Bolduc au carre, Caty Latham</em> вместо объявленного <em>Voyage en Étoffes, Annie Faivre</em>. Неприятно, но делать нечего, заметили это поздно...</p>\n\n<p> </p>','',''),
(6285,'','','',''),
(6294,'<div class=\"lRu31\" dir=\"ltr\"><span class=\"HwtZe\" lang=\"en\" xml:lang=\"en\"><span class=\"jCAhz ChMk0b\"><span class=\"ryNqvb\">Vintage shop in Stockholm.</span></span></span>\n<div class=\"OvtS8d\"> </div>\n\n<div class=\"NQSJo\"> </div>\n</div>','<p><em>Винтажный магазин в Стокгольме.</em></p>','<div class=\"lRu31\" dir=\"ltr\"><span class=\"HwtZe\" lang=\"fr\" xml:lang=\"fr\"><span class=\"jCAhz ChMk0b\"><span class=\"ryNqvb\">Boutique vintage à Stockholm.</span></span></span>\n<div class=\"OvtS8d\"> </div>\n\n<div class=\"NQSJo\"> </div>\n</div>',''),
(6288,'<p><strong class=\"Yjhzub\">Анна Васильевна Кузьминых </strong>(в девичестве Шихова), мастерица дымковской игрушки, была наставницей  <a href=\"../2857-lyudmila-vereshchagina\">Людмилы Верещагиной</a>.<span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></p>\n\n<p><span class=\"T286Pc\">С 2005 года Заслуженный художник России, с 1977 член Союза художников России, активно участник выставок. </span></p>\n\n<p><span class=\"T286Pc\">Пришла в промысел в 1955 году после окончания средней школы. Её учителями были легендарные старейшие мастерицы — <strong class=\"Yjhzub\">Е. И. Косс-Деньшина</strong> и <strong class=\"Yjhzub\">О. И. Коновалова</strong>.</span><span class=\"uJ19be notranslate\"><span class=\"vKEkVd\"> </span></span></p>\n\n<div class=\"otQkpb\"><span class=\"T286Pc\">Анна Васильевна считается связующим звеном между старым поколением «дымковчанок» и современными мастерами. </span></div>','','',''),
(6297,'','','',''),
(6298,'','','',''),
(6308,'','','',''),
(6310,'','','',''),
(6311,'','','',''),
(6312,'','','',''),
(6313,'','','',''),
(6314,'','','',''),
(6315,'','','',''),
(6316,'','','',''),
(6317,'<h3><em>From The Hermès Spring-Summer 2009 Seasonal Scarf Booklet:</em></h3>\n\n<p>Over the centuries, the indian in Brazil has mingled his feathers with his past, with his rituals and with his festivals: sumptuous headdresses and finery, jewellery ornaments and musical instruments - sheer bursts of colour!</p>\n\n<p>The art of the feather has evolved in a green and sombre environment where the plume of the birds surpasses that of the flowers.</p>\n\n<p>More than one thousand different species, some of which are unique in the world, offer an incredible array of colours and shapes.</p>\n\n<p>Furthermore, of the 350,000 Indians living in Brazil, 60% reside in the tropical forest where isolated tribes still live today, completely cut off from the rest of the world.</p>\n\n<h3><em>From The Hermès Fall-Winter 1988/89 Seasonal Scarf Booklet:</em></h3>\n\n<p>Primitive man dreamed of flying and since he could not, he adorned himself with beautiful birds\' feathers hoping to rise above his terrestrial fate.</p>\n\n<p>Today, the sons of Icarus fly in airplanes to surmount their pedestrian condition, but the fascination of feathers remains.</p>\n\n<p>In Brazil, they are everywhere: in fashion, head-dress, musical instruments, in celebration of rituals and tumult of festivities.</p>\n\n<p> </p>','<h3><em>Из буклета коллекции шарфов Hermès весна-лето 2009:</em></h3>\n\n<p>На протяжении веков индейцы в Бразилии смешивали свои перья со своим прошлым, со своими ритуалами и праздниками: роскошные головные уборы и наряды, украшения и музыкальные инструменты — сплошные всплески цвета!</p>\n\n<p>Искусство работы с перьями развивалось в зеленой и мрачной среде, где перья птиц превосходят перья цветов.</p>\n\n<p>Более тысячи различных видов, некоторые из которых уникальны в мире, предлагают невероятное разнообразие цветов и форм.</p>\n\n<p>Кроме того, из 350 000 индейцев, проживающих в Бразилии, 60% живут в тропических лесах, где до сих пор живут изолированные племена, полностью отрезанные от остального мира.</p>\n\n<h3><em>Из Буклетa осенне-зимней коллекции шарфов Hermès 1988/89: </em></h3>\n\n<p><em>Первобытный человек мечтал летать, и поскольку он не мог этого делать, он украшал себя прекрасными птичьими перьями, надеясь подняться над своей земной судьбой.</em></p>\n\n<p><em>Сегодня сыновья Икара летают на самолетах, чтобы преодолеть свою обыденность, но очарование перьев остается.</em></p>\n\n<p><em>В Бразилии они повсюду: в моде, головных уборах, музыкальных инструментах, в ритуалах и шуме праздников.</em></p>\n\n<p> </p>','<h3><em>Extrait du catalogue des foulards Hermès Printemps-Été 2009 :</em></h3>\n\n<p>Au fil des siècles, les Indiens du Brésil ont mêlé leurs plumes à leur passé, à leurs rituels et à leurs fêtes : coiffes somptueuses, parures, bijoux et instruments de musique – de véritables explosions de couleurs !</p>\n\n<p>L’art de la plume s’est développé dans un environnement verdoyant et sombre où le plumage des oiseaux surpasse celui des fleurs.</p>\n\n<p>Plus de mille espèces différentes, dont certaines sont uniques au monde, offrent une incroyable palette de couleurs et de formes.</p>\n\n<p>Par ailleurs, sur les 350 000 Indiens vivant au Brésil, 60 % résident dans la forêt tropicale où vivent encore aujourd’hui des tribus isolées, totalement coupées du reste du monde.</p>\n\n<h3><em>Extrait du catalogue Hermès Automne-Hiver Livret des carrés saisonniers 1988/89:</em></h3>\n\n<p>L’homme primitif rêvait de voler et, ne le pouvant, il se parait de magnifiques plumes d’oiseaux, espérant ainsi s’élever au-dessus de sa condition terrestre.</p>\n\n<p>Aujourd’hui, les fils d’Icare prennent l’avion pour échapper à leur condition terrestre, mais la fascination pour les plumes demeure.</p>\n\n<p>Au Brésil, elles sont omniprésentes : dans la mode, les coiffes, les instruments de musique, lors des rituels et des festivités.</p>\n\n<p> </p>',''),
(6318,'','<h3><em>Навеяно ИИ</em></h3>\n\n<p><strong>Трансформирующиеся экипажи</strong> — это конные повозки XIX века, чаще всего кареты или купе, которые можно было перестраивать под разные нужды или времена года. </p>\n\n<p>Для своего времени эти изящные и умные конструкции были очень продвинутыми — с открывающимися крышами и стёклами, которые двигались с помощью хитрых механизмов.</p>\n\n<p>Они отличались утончённым внешним видом, с деталями вроде плетёных вставок, и как правило использовались для красивых прогулок.</p>\n\n<h3> </h3>\n\n<h3><em>Из буклета осенне-зимней коллекции шарфов Hermès 2017/18:</em></h3>\n\n<p>Композиция платка вдохновлена величественными экипажaми из коллекции Hermès</p>\n\n<p>В середине XIX века французские и международные конструкции карет были особенно динамичными и изобретательными, сочетая эстетическую привлекательность и технические инновации.</p>\n\n<p>Например, на Всемирной выставке в Лондоне 1851 года парижская мастерская представила модульную карету и купе, защитный дождевой тент которого можно было поднимать или опускать нажатием кнопки.</p>\n\n<p>В то время во Франции были в моде кабриолеты, о чем свидетельствует представленный здесь автомобиль с мягкой крышей, центральная деталь которого — плетеная корзина, использовавшаяся для украшения кузовов карет.</p>','',''),
(6319,'','<h3><em>Навеяно ИИ</em></h3>\n\n<p><strong>Трансформирующиеся экипажи</strong> — это конные повозки XIX века, чаще всего кареты или купе, которые можно было перестраивать под разные нужды или времена года. </p>\n\n<p>Для своего времени эти изящные и умные конструкции были очень продвинутыми — с открывающимися крышами и стёклами, которые двигались с помощью хитрых механизмов.</p>\n\n<p>Они отличались утончённым внешним видом, с деталями вроде плетёных вставок, и как правило использовались для красивых прогулок.</p>\n\n<h3> </h3>\n\n<h3><em>Из буклета осенне-зимней коллекции шарфов Hermès 2017/18:</em></h3>\n\n<p>Композиция платка вдохновлена величественными экипажaми из коллекции Hermès</p>\n\n<p>В середине XIX века французские и международные конструкции карет были особенно динамичными и изобретательными, сочетая эстетическую привлекательность и технические инновации.</p>\n\n<p>Например, на Всемирной выставке в Лондоне 1851 года парижская мастерская представила модульную карету и купе, защитный дождевой тент которого можно было поднимать или опускать нажатием кнопки.</p>\n\n<p>В то время во Франции были в моде кабриолеты, о чем свидетельствует представленный здесь автомобиль с мягкой крышей, центральная деталь которого — плетеная корзина, использовавшаяся для украшения кузовов карет.</p>','',''),
(6320,'<h3><em>From The Hermès Fall-Winter 2011/12 Seasonal Scarf Booklet: </em></h3>\n\n<p>Cavalcadour, troubladore, rhyming words but worlds apart. While one employs his talents to delight ladies of the Court with his poems, the other reigns over the stables of kings and princes.</p>\n\n<p>Cavalcadour, on silk, is a cavalcade of bridles that swirl and intertwine like ribbons.</p>\n\n<p>Adorned with exquisitely crafted buckles of fleurs de lvs and the crown of France, these bridles are inspired by the tack of the horses of the Comte de Chambord, grandson of Charles X and son of the Duc de Berry, last of the ancient line of the Bourbons.</p>\n\n<p> Borrowing these bridles for the collection of Emile Hermes, the designer creates bits and spurs in a composition whispered in his ear by the cavalcadour equerry.</p>','<h3><em>Из буклета осенне-зимней коллекции шарфов Hermès 2011/12:</em></h3>\n\n<p>Cavalcadour, troubladore, рифмующиеся слова, но совершенно разные миры. В то время как один использует свой талант, чтобы радовать дам при дворе своими стихами, другой правит конюшнями королей и принцев.</p>\n\n<p>«Cavalcadour» на шёлке — это кавалькада уздечек, которые кружатся и переплетаются, словно ленты.</p>\n\n<p>Украшенные изысканно выполненными пряжками с геральдическими лилиями и короной Франции, эти уздечки вдохновлены конской сбруей графа де Шамбора, внука Карла X и сына герцога де Берри, последнего представителя древней династии Бурбонов.</p>\n\n<p>«Заимствуя эти уздечки для коллекции Эмиля Гермеса, дизайнер создает удила и шпоры в композиции, которую ему на ухо шепнул конюший кавалькадур».</p>','<h3><em>Extrait du catalogue des foulards saisonniers Hermès Automne-Hiver 2011/12 :</em></h3>\n\n<p>Cavalcadour, troubladore, des mots qui riment, mais des mondes à part.</p>\n\n<p>Tandis que l\'un met son talent au service des dames de la Cour pour les enchanter de ses poèmes, l\'autre règne sur les écuries des rois et des princes.</p>\n\n<p>Cavalcadour, sur soie, est une cavalcade de brides qui s\'entrelacent comme des rubans.</p>\n\n<p>Ornées de boucles finement ouvragées, ornées de fleurs d\'olivier et de la couronne de France, ces brides s\'inspirent du harnachement des chevaux du comte de Chambord, petit-fils de Charles X et fils du duc de Berry, dernier représentant de l\'ancienne lignée des Bourbons.</p>\n\n<p>Empruntant ces brides pour la collection d\'Émile Hermès, le créateur imagine mors et éperons selon une composition que lui souffle l\'écuyer cavalcadour.</p>',''),
(6321,'','','',''),
(6322,'','','',''),
(6323,'','','',''),
(6324,'','','',''),
(6325,'','','',''),
(6326,'<p>Il est un descendant des Hermès, famille fondatrice qui contrôle la société toujours, avec 70% du capital</p>\n\n<p>En 2003, à la demande de <a href=\"/sh/h_spot/h_persons/328-jean-louis-dumas/\">Jean-Louis Dumas</a>, et à la suite du décès de sa mère, Axel Dumas rejoint Hermès à la direction financière, puis en tant que directeur commercial France.</p>\n\n<p>En 2006, il est nommé <em>directeur général d’Hermès Bijouterie</em>, puis en 2008, <em>directeur général d’Hermès Maroquinerie Sellerie. </em>En 2011, Axel Dumas est nommé directeur général des opérations d’<em>Hermès International</em>. En 2013, il devient gérant d’<em>Hermès International</em>,</p>\n\n<p>Sa rémunération pour l\'année 2022 bénéficie de la seconde plus grande hausse par rapport à l\'année précédente parmi les dirigeants du <a class=\"mw-redirect\" href=\"https://fr.wikipedia.org/wiki/CAC40\" title=\"CAC40\">CAC40</a>.</p>\n\n<p><em>Wikipedia</em></p>','<p>6-e поколение семьи Hermès, по сей день контролирующей компанию и владеющей 70% капитала.</p>\n\n<p>В 2003 году по просьбе <a href=\"/sh/h_spot/h_persons/328-jean-louis-dumas/\">Jean-Louis Dumas</a> Axel присоединился к Hermès сначала в финансовом отделе, а затем в качестве директора по продажам во Франции.</p>\n\n<p>Через 3 года он был назначен генеральным директором <em>Hermès Jewelry</em>, а затем в 2008 году — генеральным директором <em>Hermès Leather Goods and Saddlery</em>. В 2011 году Axel был назначен операционным директором <em>Hermès International</em>, а в 2013 он стал ее управляющим директором.</p>\n\n<p>Его назначение дало за 2022 год  второй по величине рост доходов по списку CAC 40.</p>\n\n<p><em>По материалам Wikipedia</em></p>','',''),
(6337,'','','',''),
(6358,'<h3><em>From The Hermès Fall-Winter 2022/23 Seasonal Scarf Booklet</em>:</h3>\n\n<p>Spring has sprung and a horse rises up triumphant like an inspirational muse - Flora, goddess of flowers, are you there?</p>\n\n<p>Elevated to the rank of a deity of nature, the powerful animal rears up in the breeze to show off his colourful coat of flowers and leaves from the four corners of the world.</p>\n\n<p>The liberated blooms display their indomitable nature and fly out behind him, revealing his legendary body.</p>\n\n<p>Captured in the moment by Théo de Gueltzl, the horse is depicted on his hind legs, like a new ideal in equestrian art.</p>','<h3><em>Из буклета коллекции шарфов Hermès осень-зима 2022/23</em>:</h3>\n\n<p>Весна пришла, и лошадь триумфально поднимается, словно вдохновляющая муза — Флора, богиня цветов, ты здесь?</p>\n\n<p>Возведенное в ранг божества природы, могучее животное встает на дыбы, чтобы продемонстрировать свою шерсть из цветов и листьев со всех уголков мира.</p>\n\n<p>Раскрепощенные цветы показывают свою неукротимую природу и развеваются позади него, открывая его легендарное тело.</p>\n\n<p>Запечатленная в моменте <a href=\"http://localhost/sh/ru-home/search/?SPOT_id=h&amp;h_aw_person=6360&amp;sort=h_aw_person\">Théo de Gueltzl</a> , лошадь изображена на задних ногах, как новый идеал в конном искусстве.</p>','',''),
(6338,'','<p>Долгое время эта картина считалась работой Рембрандта. Картина полностью выполнена в стиле Рембрандта, и, более того, находилась рядом с «Философом» Рембрандта в Лувре, зал 31 вплоть до 1754 года.</p>\n\n<p>Коллекция герцога де Шуазеля (продажа 1772 года).</p>\n\n<p>Коллекция Людовика XVI, приобретенная на аукционе графа де Водрейля, Париж, 1784 год (как и картина Рембрандта).</p>','<p>Tableau d\'idée tout à fait rembranesque et mis du reste en pendant au XVIIIe siècle (déjà en 1754) avec le Philosophe de Rembrandt (Louvre,Paris,salle 31).</p>\n\n<p>Collection du duc de Choiseul (vente de 1772)</p>\n\n<p>Collection de Louis XVI, acquis à la vente du comte de Vaudreuil, Paris, 1784 (comme Rembrandt)</p>',''),
(6346,'<p>Jeff\'s collection <em>Hermes Scarf Guides (Мельбурн, Виктория, Австралия) </em>fragments. </p>\n\n<p>Just a few nice items...</p>','<p>Коллекция Джеффа <em>Hermes Scarf Guides (Мельбурн, Виктория, Австралия) </em>фрагменты. </p>\n\n<p>Несколько примеров...</p>','<p>Collection de Jeff <em>Guides des foulards Hermes (Мельбурн, Виктория, Австралия) </em>fragments. </p>\n\n<p>Juste quelques jolis objets...</p>',''),
(6347,'<p>Observed through Dimitri Rybaltchenko\'s telescope, this boat has an air of Faubourg about it, with its evenly paved stones visible on the bow and display windows where celebrations seem to be in full swing, under the slightly envious gaze of the Greek gods.</p>\n\n<p>As a truly legendary landmark, the great Hermès ship has been sailing the seas for a century, revealing its majestic sails to the rhythm of the wind blown by a thousand pegasuses.</p>\n\n<p><em>Hermes Scarf Guides</em></p>','<p>Обнаруженный в телескоп <a href=\"http://localhost/sh/ru-home/h_spot/h_persons/186-dimitri-rybaltchenko/\">Rybaltchenko</a>, этот корабль напоминает улицу Faubourg: ровная мощеная дорожка на носу и витрины, где, кажется, вовсю идут празднества под слегка завистливым взглядом греческих богов.</p>\n\n<p>Как поистине легендарная достопримечательность, великий корабль Hermès бороздит моря уже столетие, демонстрируя свои величественные паруса в ритме ветра, дующего в тысячах пегасов.</p>\n\n<p><em>Hermes Scarf Guides</em></p>','',''),
(6348,'','','',''),
(6349,'','','',''),
(6350,'','','',''),
(6351,'','','',''),
(6352,'','','',''),
(6353,'','','',''),
(6356,'','<p>Michelangelo Merisi, известный как Караваджо по названию родного города своей семьи, родился в Милане.</p>\n\n<p>В 1577 году семья Меризи переехала в Караваджо, ныне провинция Бергамо, чтобы избежать чумы. Однако эпидемия унесла жизнь его отца, и его мать с четырьмя детьми вернулись в Милан.</p>\n\n<p>Там молодой человек учился у миланского художника, пока, благодаря дружбе своего деда с Костанцей Колонной, маркизой Караваджо, не переехал в Рим в 1592 году. Он остановился у Пандольфо Пуччи, мецената собора Святого Петра, которого художник прозвал «монсеньором Салатом» из-за его скудной еды, состоявшей из салата.</p>\n\n<p>Через несколько месяцев, устав от обращения прелата, Караваджо нашел приют у трактирщика и начал работать в различных мастерских, создавая свои первые работы.</p>\n\n<p>В своих работах он уже продемонстрировал неприятие идеальной красоты, которую художники эпохи Возрождения стремились воспроизвести на своих полотнах, и проявил свою склонность к реализму и натурализму, используя в качестве моделей беспризорных детей.</p>\n\n<p><strong>.... Надо бы дописать</strong></p>\n\n<p><em>National Geographic</em></p>','',''),
(6357,'<div class=\"auto-width-content\" style=\"padding-top:0;max-width:100%;\">\n<p>Below is a structured art-historical explanation of how Caravaggio (the master) and Valentin de Boulogne (his follower rather than formal student) each created powerful versions of “The Cardsharps,” and why both paintings are considered outstanding examples of Baroque realism.</p>\n\n<p>Caravaggio was not a formal teacher to Valentin de Boulogne. Rather, Valentin was part of the Caravaggisti: painters who studied Caravaggio’s works closely in Rome and adopted, adapted, and extended his visual language. The relationship is therefore one of artistic lineage and influence, not workshop apprenticeship.</p>\n</div>\n\n<p> </p>\n\n<p> </p>\n\n<div class=\"auto-width-content\" style=\"padding-top:0;max-width:100%;\">\n<h1>Caravaggio:<br />\nThe Cardsharps (c. 1594)</h1>\n\n<p><img alt=\"The_Cardsharps\" src=\"https://upload.wikimedia.org/wikipedia/commons/8/8e/Caravaggio_%28Michelangelo_Merisi%29_-_The_Cardsharps_-_Google_Art_Project.jpg\" /></p>\n\n<h2>Caravaggio’s model</h2>\n\n<h3>Radical realism</h3>\n\n<p>This grounded the scene in everyday life, making the deception immediately believable.</p>\n\n<h3>Psychological storytelling</h3>\n\n<p>Caravaggio captures the exact moment before the con succeeds, engaging the viewer as a witness.</p>\n\n<h3>Light as a narrative tool</h3>\n\n<p>Although early in his career, Caravaggio already uses directional light to:</p>\n\n<ul>\n	<li> Emphasize faces and hands</li>\n	<li> Reveal hidden intentions</li>\n	<li> Separate innocence from deceit</li>\n</ul>\n\n<h3>Light is not decorative;</h3>\n\n<p>It clarifies the moral structure of the scene.</p>\n\n<h3>Compositional intimacy</h3>\n\n<p>Figures are cropped close to the picture plane, pulling the viewer into the space of the table. This was highly innovative and influential.</p>\n\n<div class=\"auto-width-placeholder\">\n<p> </p>\n\n<p> </p>\n\n<p> </p>\n\n<p> </p>\n\n<p> </p>\n</div>\n\n<h1>Valentin de Boulogne:<br />\nThe Cardsharps (c. 1629)</h1>\n\n<p><img alt=\"The Cardsharps\" src=\"https://www.pubhist.com/works/59/large/valentin_boulogne_card_sharps.jpg\" /></p>\n\n<h2>How Valentin expanded Caravaggio’s model</h2>\n\n<h3>Intensified chiaroscuro: Valentin pushes Caravaggio’s lighting further:</h3>\n\n<ul>\n	<li> Deeper shadows</li>\n	<li> Sharper contrasts</li>\n	<li> More dramatic spotlighting</li>\n	<li> The darkness feels heavier, more oppressive, heightening tension.</li>\n</ul>\n\n<h3>Emotional gravity</h3>\n\n<p>Where Caravaggio’s figures are alert and cunning, Valentin’s are:</p>\n\n<ul>\n	<li> More solemn</li>\n	<li> More introspective</li>\n	<li> Often morally ambiguous</li>\n	<li> His cardsharps feel trapped in their roles rather than playfully deceptive.</li>\n</ul>\n\n<h3>Greater complexity and density</h3>\n\n<p>Valentin often adds:</p>\n\n<ul>\n	<li> More figures</li>\n	<li> Richer textures</li>\n	<li> A tighter clustering of bodies</li>\n</ul>\n\n<p>This creates a sense of claustrophobia and inevitability, reinforcing themes of vice and fate.</p>\n\n<h3>French temperament, Roman language</h3>\n\n<p>Though working in Rome, Valentin brings a distinctly French seriousness:</p>\n\n<ul>\n	<li> Less theatrical flair</li>\n	<li> More moral weight</li>\n	<li> A quieter, darker mood</li>\n	<li>His painting feels less anecdotal and more existential.</li>\n</ul>\n</div>\n\n<div class=\"auto-width-single\">\n<h1>Why both paintings are “fantastic”</h1>\n</div>\n\n<div class=\"auto-width-content\" style=\"padding-top:0;max-width:100%;\">\n<table>\n	<thead>\n		<tr>\n			<th><em>Aspect</em></th>\n			<th>Caravaggio</th>\n			<th>Valentin de Boulogne</th>\n		</tr>\n	</thead>\n	<tbody>\n		<tr>\n			<td><em>Innovation:</em></td>\n			<td>Invents the genre scene as high art</td>\n			<td>Deepens and darkens the genre</td>\n		</tr>\n		<tr>\n			<td><em>Mood:</em></td>\n			<td>Lively, alert, cunning</td>\n			<td>Heavy, tense, morally somber</td>\n		</tr>\n		<tr>\n			<td><em>Light:</em></td>\n			<td>Clarifying, descriptive</td>\n			<td>Dramatic, oppressive</td>\n		</tr>\n		<tr>\n			<td><em>Viewer role:</em></td>\n			<td>Witness to a clever trick</td>\n			<td>Observer of moral decay</td>\n		</tr>\n	</tbody>\n</table>\n\n<p> </p>\n\n<p><strong>In summary:</strong><br />\nCaravaggio created The Cardsharps by inventing a new visual language of realism, immediacy, and psychological clarity. Valentin de Boulogne absorbed that language and transformed it into something darker, more emotionally complex, and more morally charged. Together, the two works demonstrate how a revolutionary idea can be both originated and profoundly evolved within a single artistic tradition.</p>\n\n<p><em>With help from AI</em></p>\n</div>','<div class=\"auto-width-content\" style=\"padding-top:0;max-width:100%;\">\n<p>Ниже приведено структурированное искусствоведческое объяснение того, как Караваджо (мастер) и Валентин де Булонь (его последователь, а не формальный ученик) создали мощные версии картины «Карточные шулеры», и почему обе картины считаются выдающимися образцами барочного реализма.</p>\n\n<p>Караваджо не был формальным учителем Валентина де Булоня. Скорее, Валентин был частью караваджистов: художников, которые внимательно изучали работы Караваджо в Риме и переняли, адаптировали и расширили его визуальный язык.</p>\n\n<p>Таким образом, эти отношения основаны на художественной преемственности и влиянии, а не на мастерском ученичестве.</p>\n</div>\n\n<div class=\"auto-width-content\" style=\"padding-top:0;max-width:100%;\">\n<h1>Караваджо:<br />\nКарточные шулеры (ок. 1594)</h1>\n<img alt=\"The_Cardsharps\" src=\"https://upload.wikimedia.org/wikipedia/commons/8/8e/Caravaggio_%28Michelangelo_Merisi%29_-_The_Cardsharps_-_Google_Art_Project.jpg\" />\n<h2>Модель Караваджо</h2>\n\n<h3>Радикальный реализм</h3>\n\n<p>Это придало сцене реалистичность, сделав обман сразу же правдоподобным.</p>\n\n<h3>Психологическое повествование</h3>\n\n<p>Караваджо запечатлел точный момент перед тем, как афера увенчалась успехом, вовлекая зрителя в качестве свидетеля.</p>\n\n<h3>Свет как повествовательный инструмент</h3>\n\n<p>Хотя Караваджо только начал свою карьеру, он уже использует направленный свет для:</p>\n\n<ul>\n	<li>Подчеркивания лиц и рук</li>\n	<li>Раскрытия скрытых намерений</li>\n	<li>Разделения невинности и обмана</li>\n</ul>\n\n<h3>Свет не является декоративным элементом;</h3>\n\n<p>Он проясняет моральную структуру сцены.</p>\n\n<h3>Композиционная интимность</h3>\n\n<p>Фигуры обрезаны близко к плоскость изображения, вовлекающая зрителя в пространство стола. Это было очень новаторским и влиятельным подходом.</p>\n\n<p> </p>\n\n<p> </p>\n\n<p> </p>\n\n<p> </p>\n\n<p> </p>\n\n<h1>Валентин де Булонь:<br />\nКарточные шулеры (ок. 1629)</h1>\n<img alt=\"Карточные шулеры\" src=\"https://www.pubhist.com/works/59/large/valentin_boulogne_card_sharps.jpg\" />\n<h2>Как Валентин расширил модель Караваджо</h2>\n\n<h3>Усиленная светотень: Валентин развивает освещение Караваджо дальше:</h3>\n\n<ul>\n	<li>Более глубокие тени</li>\n	<li>Более резкие контрасты</li>\n	<li>Более драматичное освещение</li>\n	<li>Темнота ощущается тяжелее, более гнетущей, усиливая напряжение.</li>\n</ul>\n\n<h3>Эмоциональная глубина</h3>\n\n<p>Если фигуры Караваджо бдительны и хитры, то фигуры Валентина:</p>\n\n<ul>\n	<li>Более торжественные</li>\n	<li>Более интроспективные</li>\n	<li>Часто морально неоднозначные</li>\n	<li>Его карточные шулеры кажутся запертыми в своих ролях, а не игриво обманчивыми.</li>\n</ul>\n\n<h3>Большая сложность и плотность</h3>\n\n<p>Валентин часто добавляет:</p>\n\n<ul>\n	<li>Больше фигур</li>\n	<li>Более богатая текстура</li>\n	<li>Более плотная скопление тел</li>\n</ul>\n\n<p>Это создает ощущение клаустрофобии и неизбежности, усиливая темы порока и судьбы.</p>\n\n<h3>Французский темперамент, римский язык</h3>\n\n<p>Хотя Валентин работает в Риме, он привносит отчетливо французскую серьезность:</p>\n\n<ul>\n	<li>Меньше театрального колорита</li>\n	<li>Больше морального веса</li>\n	<li>Более спокойное, мрачное настроение</li>\n	<li>Его живопись кажется менее анекдотической и более экзистенциальной.</li>\n</ul>\n</div>\n\n<div class=\"auto-width-600\" style=\"padding-top:2rem;\">\n<h1>Почему обе картины «фантастические»</h1>\n</div>\n\n<div class=\"auto-width-content\" style=\"padding-top:0;max-width:100%;\">\n<table>\n	<thead>\n		<tr>\n			<th><em>Аспект</em></th>\n			<th>Караваджо</th>\n			<th>Валентин де Булонь</th>\n		</tr>\n	</thead>\n	<tbody>\n		<tr>\n			<td><em>Инновация:</em></td>\n			<td>Изобретает жанровую сцену как высокое искусство</td>\n			<td>Углубляет и затемняет жанр</td>\n		</tr>\n		<tr>\n			<td><em>Настроение:</em></td>\n			<td>Живое, внимательное, хитрое</td>\n			<td>Тяжелое, напряженное, морально мрачное</td>\n		</tr>\n		<tr>\n			<td><em>Светлое:</em></td>\n			<td>Проясняющее, описательное</td>\n			<td>Драматичное, гнетущее</td>\n		</tr>\n		<tr>\n			<td><em>Роль зрителя:</em></td>\n			<td>Свидетель хитрого трюка</td>\n			<td>Наблюдатель морального разложения</td>\n		</tr>\n	</tbody>\n</table>\n\n<p><strong>Вкратце:</strong><br />\nКараваджо создал «Карточных шулеров», изобретя новый визуальный язык реализма, непосредственности и психологической ясности. Валентин де Булонь перенял этот язык и преобразовал его в нечто более мрачное, эмоционально сложное и морально заряженное. Вместе эти две работы демонстрируют, как революционная идея может зародиться и глубоко развиться в рамках одной художественной традиции.</p>\n\n<p><em>С помощью ИИ</em></p>\n</div>','<div class=\"auto-width-content\" style=\"padding-top:0;max-width:100%;\">\n<p>Vous trouverez ci-dessous une explication structurée, d\'un point de vue historico-artistique, de la manière dont Caravage (le maître) et Valentin de Boulogne (son disciple plutôt que son élève) ont chacun créé des versions saisissantes des « Tricheurs », et pourquoi ces deux tableaux sont considérés comme des exemples exceptionnels du réalisme baroque.</p>\n\n<p>Caravage n\'a pas été le maître de Valentin de Boulogne. Ce dernier appartenait plutôt au groupe des caravagesques : des peintres qui ont étudié de près l\'œuvre de Caravage à Rome et qui ont adopté, adapté et enrichi son langage visuel. La relation relève donc d\'une filiation et d\'une influence artistiques, et non d\'un apprentissage en atelier.</p>\n</div>\n\n<p> </p>\n\n<p> </p>\n\n<div class=\"auto-width-content\" style=\"padding-top:0;max-width:100%;\">\n<h1>Caravage :<br />\nLes Tricheurs (vers 1594)</h1>\n\n<p><img alt=\"The_Cardsharps\" src=\"https://upload.wikimedia.org/wikipedia/commons/8/8e/Caravaggio_%28Michelangelo_Merisi%29_-_The_Cardsharps_-_Google_Art_Project.jpg\" /></p>\n\n<h2>Le modèle de Caravage</h2>\n\n<h3>Réalisme radical</h3>\n\n<p>Ceci ancrait la scène dans la vie quotidienne, Rendre la supercherie immédiatement crédible.</p>\n\n<h3>Narration psychologique</h3>\n\n<p>Caravage saisit l\'instant précis qui précède la réussite de l\'escroquerie, faisant du spectateur un témoin privilégié.</p>\n\n<h3>La lumière comme outil narratif</h3>\n\n<p>Bien qu\'au début de sa carrière, Caravage utilise déjà la lumière directionnelle pour :</p>\n\n<ul>\n	<li> Mettre en valeur les visages et les mains</li>\n	<li> Révéler les intentions cachées</li>\n	<li> Distinguer l\'innocence de la tromperie</li>\n</ul>\n\n<h3>La lumière n\'est pas décorative ;</h3>\n\n<p>Elle clarifie la dimension morale de la scène.</p>\n\n<h3>Intimité de la composition</h3>\n\n<p>Les personnages sont cadrés au ras du cadre, plongeant le spectateur au cœur de l\'espace de la table.</p>\nC\'était une œuvre très novatrice et influente.\n\n<p> </p>\n\n<p> </p>\n\n<p> </p>\n\n<p> </p>\n\n<p> </p>\n\n<p> </p>\n\n<h1>Valentin de Boulogne :<br />\nLes Tricheurs (vers 1629)</h1>\n\n<p><img alt=\"Les Tricheurs\" src=\"https://www.pubhist.com/works/59/large/valentin_boulogne_card_sharps.jpg\" /></p>\n\n<h2>Comment Valentin a développé le modèle du Caravage</h2>\n\n<h3>Claire-obscur intensifié : Valentin pousse plus loin la lumière du Caravage :</h3>\n\n<ul>\n	<li>Ombres plus profondes</li>\n	<li>Contrastes plus marqués</li>\n	<li>Éclairage plus dramatique</li>\n	<li> L\'obscurité paraît plus pesante, plus oppressante, accentuant la tension.</li>\n</ul>\n\n<h3>Gravité émotionnelle</h3>\n\n<p>Là où les figures du Caravage sont alertes et rusées, celles de Valentin le sont :</p>\n\n<ul>\n	<li> Plus solennelles</li>\n	<li> Plus introspectives</li>\n	<li> Souvent moralement ambiguës</li>\n	<li> Ses tricheurs semblent prisonniers de leurs rôles plutôt que de jouer la carte de la tromperie.</li>\n</ul>\n\n<h3>Plus grande complexité et densité</h3>\n\n<p>Valentin ajoute souvent :</p>\n\n<ul>\n	<li> Plus de figures</li>\n	<li> Des textures plus riches</li>\n	<li> Un regroupement plus serré des corps</li>\n</ul>\n\n<p>Cela crée un sentiment de claustrophobie et d\'inéluctabilité, renforçant les thèmes du vice et Destin.</p>\n\n<h3>Tempérament français, langue romaine</h3>\n\n<p>Bien qu\'il travaille à Rome, Valentin apporte une gravité typiquement française :</p>\n\n<ul>\n	<li>Moins de théâtralité</li>\n	<li>Plus de profondeur morale</li>\n	<li>Une atmosphère plus sombre et plus calme</li>\n	<li>Sa peinture semble moins anecdotique et plus existentielle.</li>\n</ul>\n</div>\n\n<div class=\"auto-width-600\">\n<h1>Pourquoi ces deux tableaux sont « fantastiques »</h1>\n</div>\n\n<div class=\"auto-width-content\" style=\"padding-top:0;max-width:100%;\">\n<table>\n	<thead>\n		<tr>\n			<th><em>Aspect</em></th>\n			<th>Caravage</th>\n			<th>Valentin de Boulogne</th>\n		</tr>\n	</thead>\n	<tbody>\n		<tr>\n			<td><em>Innovation :</em></td>\n			<td>Invente la scène de genre comme un art majeur</td>\n			<td>Approfondit et assombrit le genre</td>\n		</tr>\n		<tr>\n			<td><em>Ambiance :</em></td>\n			<td>Vif, alerte, rusé</td>\n			<td>Lourd, tendu, moralement sombre</td>\n		</tr>\n		<tr>\n			<td><em>Lumière :</em></td>\n			<td>Clarifiant, descriptif</td>\n			<td>Dramatique, oppressant</td>\n		</tr>\n		<tr>\n			<td><em>Rôle du spectateur :</em></td>\n			<td>Témoin d\'une ruse ingénieuse</td>\n			<td>Observateur de la morale déclin</td>\n		</tr>\n	</tbody>\n</table>\n\n<p> </p>\n\n<p><strong>En résumé :</strong><br />\nCaravage a créé Les Tricheurs en inventant un nouveau langage visuel empreint de réalisme, d’immédiateté et de clarté psychologique. Valentin de Boulogne s’est approprié ce langage et l’a transformé en une œuvre plus sombre, plus complexe émotionnellement et plus chargée moralement. Ensemble, ces deux œuvres démontrent comment une idée révolutionnaire peut naître et évoluer profondément au sein d’une même tradition artistique.</p>\n\n<p><em>Avec l’aide de l’IA</em></p>\n</div>','');
/*!40000 ALTER TABLE `field_body` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_body2`
--

DROP TABLE IF EXISTS `field_body2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_body2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data5753` mediumtext DEFAULT NULL,
  `data5754` mediumtext DEFAULT NULL,
  `data5755` mediumtext DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_body2`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_body2` WRITE;
/*!40000 ALTER TABLE `field_body2` DISABLE KEYS */;
INSERT INTO `field_body2` VALUES
(6357,'<p> </p>\n\n<p>Caravaggists - this truly unique style of the Baroque era was named after <a href=\"../../a_persons/caravaggio\">Caravaggio</a>, a reformer artist, the founder of realism.</p>\n\n<p>Who remembers today that Caravaggio committed a murder in his youth?  Despite his life on the run, the artist managed to gather a circle of followers — caravaggists.</p>\n\n<p>The trend developed in Italy at the 16th — 17th centuries, as well as in Holland, Germany and Spain.</p>\n\n<p> </p>','<p>Караваджисты — этот поистине уникальный стиль эпохи барокко получил свое название в честь <a href=\"../../a_persons/caravaggio/\">Караваджо</a>, художника-реформатора, основателя реализма.</p>\n\n<p>Кто сегодня помнит, что в молодости Караваджо совершил убийство? Несмотря на жизнь в бегах, художнику удалось вдохновить круг последователей — караваджистов.</p>\n\n<p>Это направление развилось в Италии в XVI–XVII веках, а также в Голландии, Германии и Испании.</p>','','');
/*!40000 ALTER TABLE `field_body2` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_countries`
--

DROP TABLE IF EXISTS `field_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_countries` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_countries`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_countries` WRITE;
/*!40000 ALTER TABLE `field_countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_countries` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_country`
--

DROP TABLE IF EXISTS `field_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_country` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_country`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_country` WRITE;
/*!40000 ALTER TABLE `field_country` DISABLE KEYS */;
INSERT INTO `field_country` VALUES
(5792,6003,0),
(5793,6003,0),
(5795,6003,0),
(5797,6003,0),
(5798,6003,0),
(5799,6003,0),
(5800,6003,0),
(5802,6003,0),
(5803,6003,0),
(5805,6003,0),
(5807,6003,0),
(5808,6003,0),
(5811,6003,0),
(5812,6003,0),
(5813,6003,0),
(5814,6003,0),
(5815,6003,0),
(5819,6003,0),
(5820,6003,0),
(5821,6003,0),
(5822,6003,0),
(5823,6003,0),
(5824,6003,0),
(5825,6003,0),
(5826,6003,0),
(5835,6003,0),
(5904,6003,0),
(5967,6003,0),
(5973,6003,0),
(5996,6003,0),
(6006,6003,0),
(6015,6003,0),
(6018,6003,0),
(6021,6003,0),
(6022,6003,0),
(6023,6003,0),
(6090,6003,0),
(6106,6003,0),
(6108,6003,0),
(6109,6003,0),
(6111,6003,0),
(6113,6003,0),
(6116,6003,0),
(6138,6003,0),
(6177,6003,0),
(6326,6003,0),
(6360,6003,0),
(5794,6004,0),
(5836,6007,0),
(5968,6007,0),
(6008,6007,0),
(6161,6007,0),
(6356,6007,0),
(5837,6009,0),
(5801,6010,0),
(5871,6010,0),
(5796,6012,0),
(5869,6012,0),
(5878,6012,0),
(5879,6012,0),
(5959,6012,0),
(6288,6012,0),
(6140,6152,0),
(6087,6158,0),
(5818,6169,0),
(6131,6169,0),
(6168,6169,0),
(6123,6170,0),
(6145,6270,0),
(6019,6283,0),
(6119,6329,0),
(6129,6330,0),
(5806,6334,0),
(5877,6336,0),
(5900,6336,0);
/*!40000 ALTER TABLE `field_country` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_currency`
--

DROP TABLE IF EXISTS `field_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_currency` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_currency`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_currency` WRITE;
/*!40000 ALTER TABLE `field_currency` DISABLE KEYS */;
INSERT INTO `field_currency` VALUES
(6358,2,0),
(6120,2,0),
(5847,1,0),
(5974,1,0),
(6025,1,0),
(6027,1,0),
(6055,1,0),
(6069,1,0),
(6070,1,0),
(6080,1,0),
(6081,1,0),
(6084,1,0),
(6085,1,0),
(6093,1,0),
(6096,1,0),
(6101,1,0),
(6102,1,0),
(6103,1,0),
(6105,1,0),
(6107,1,0),
(6117,1,0),
(6121,1,0),
(6124,1,0),
(6139,1,0),
(6141,1,0),
(6142,1,0),
(6144,1,0),
(6147,1,0),
(6148,1,0),
(6149,1,0),
(6159,1,0),
(6179,1,0),
(6196,1,0),
(6222,1,0),
(6253,1,0),
(6258,1,0),
(6272,1,0),
(6276,1,0),
(6335,1,0),
(5844,2,0);
/*!40000 ALTER TABLE `field_currency` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_d_av_duty`
--

DROP TABLE IF EXISTS `field_d_av_duty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_d_av_duty` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_d_av_duty`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_d_av_duty` WRITE;
/*!40000 ALTER TABLE `field_d_av_duty` DISABLE KEYS */;
INSERT INTO `field_d_av_duty` VALUES
(5959,1,0),
(6288,1,0);
/*!40000 ALTER TABLE `field_d_av_duty` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_d_av_firstname`
--

DROP TABLE IF EXISTS `field_d_av_firstname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_d_av_firstname` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text DEFAULT NULL,
  `data5754` text DEFAULT NULL,
  `data5755` text DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_d_av_firstname`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_d_av_firstname` WRITE;
/*!40000 ALTER TABLE `field_d_av_firstname` DISABLE KEYS */;
INSERT INTO `field_d_av_firstname` VALUES
(5959,'Людмила Дмитриевна','Людмила','',''),
(6288,'Анна Васильевна','','','');
/*!40000 ALTER TABLE `field_d_av_firstname` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_d_av_lastname`
--

DROP TABLE IF EXISTS `field_d_av_lastname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_d_av_lastname` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text DEFAULT NULL,
  `data5754` text DEFAULT NULL,
  `data5755` text DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_d_av_lastname`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_d_av_lastname` WRITE;
/*!40000 ALTER TABLE `field_d_av_lastname` DISABLE KEYS */;
INSERT INTO `field_d_av_lastname` VALUES
(5959,'Верещагина','Верещагина','',''),
(6288,'Кузьминых','','','');
/*!40000 ALTER TABLE `field_d_av_lastname` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_d_av_url`
--

DROP TABLE IF EXISTS `field_d_av_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_d_av_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_d_av_url`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_d_av_url` WRITE;
/*!40000 ALTER TABLE `field_d_av_url` DISABLE KEYS */;
INSERT INTO `field_d_av_url` VALUES
(5959,'http://dymka.teploruk.ru/masters/vereshagina.html');
/*!40000 ALTER TABLE `field_d_av_url` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_d_aw_featured`
--

DROP TABLE IF EXISTS `field_d_aw_featured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_d_aw_featured` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_d_aw_featured`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_d_aw_featured` WRITE;
/*!40000 ALTER TABLE `field_d_aw_featured` DISABLE KEYS */;
INSERT INTO `field_d_aw_featured` VALUES
(5961,1),
(6297,1);
/*!40000 ALTER TABLE `field_d_aw_featured` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_d_aw_person`
--

DROP TABLE IF EXISTS `field_d_aw_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_d_aw_person` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_d_aw_person`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_d_aw_person` WRITE;
/*!40000 ALTER TABLE `field_d_aw_person` DISABLE KEYS */;
INSERT INTO `field_d_aw_person` VALUES
(5961,5959,0);
/*!40000 ALTER TABLE `field_d_aw_person` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_d_aw_size`
--

DROP TABLE IF EXISTS `field_d_aw_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_d_aw_size` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_d_aw_size`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_d_aw_size` WRITE;
/*!40000 ALTER TABLE `field_d_aw_size` DISABLE KEYS */;
INSERT INTO `field_d_aw_size` VALUES
(6297,4,0),
(6298,1,0);
/*!40000 ALTER TABLE `field_d_aw_size` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_d_aw_type`
--

DROP TABLE IF EXISTS `field_d_aw_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_d_aw_type` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_d_aw_type`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_d_aw_type` WRITE;
/*!40000 ALTER TABLE `field_d_aw_type` DISABLE KEYS */;
INSERT INTO `field_d_aw_type` VALUES
(5961,13,0),
(6297,15,0),
(6298,5,0),
(6298,7,1),
(6298,9,2);
/*!40000 ALTER TABLE `field_d_aw_type` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_email`
--

DROP TABLE IF EXISTS `field_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_email`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_email` WRITE;
/*!40000 ALTER TABLE `field_email` DISABLE KEYS */;
INSERT INTO `field_email` VALUES
(41,'iouri.belokopytov@gmail.com'),
(5972,'margarita.belokopytova@gmail.com'),
(6340,'belokotima@yandex.ru'),
(6341,'belokopytov.vanya@yandex.ru'),
(6342,'mikebelokopytov@yahoo.com'),
(6344,'7643259@gmail.com');
/*!40000 ALTER TABLE `field_email` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_figcaption`
--

DROP TABLE IF EXISTS `field_figcaption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_figcaption` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_figcaption`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_figcaption` WRITE;
/*!40000 ALTER TABLE `field_figcaption` DISABLE KEYS */;
INSERT INTO `field_figcaption` VALUES
(5986,'Photo from Wiki'),
(5987,'Photo from Wiki'),
(5988,'Photo from Wiki'),
(6094,'Photo from Wiki'),
(5991,'Photo from Wiki'),
(5993,'Photo from Wiki'),
(5995,'Photo from Wiki'),
(5994,'Photo from Wiki'),
(6098,'Photo from Wiki'),
(6099,'Photo from Wiki'),
(6000,'Photo from Wiki'),
(6001,'Photo from Wiki'),
(5850,'Photo from Wiki'),
(5851,'Photo from Wiki'),
(5977,'Photo from Wiki'),
(5985,'Photo from Wiki'),
(6002,'Photo from Wiki'),
(6044,'Photo from Wiki'),
(5989,'Photo from Wiki'),
(6039,'Photo from Wiki'),
(6040,'Photo from Wiki'),
(6041,'Photo from Wiki'),
(6045,'Photo from Wiki'),
(6047,'Photo from Wiki'),
(6051,'Photo from Wiki'),
(6056,'Photo from Wiki'),
(6058,'Photo from Wiki'),
(6063,'Photo from Wiki'),
(6066,'Photo from Wiki'),
(6068,'Photo from Wiki'),
(6117,'Photo from Wiki'),
(6120,'Photo from Wiki'),
(6125,'Photo from Wiki'),
(6138,'Pierre Péron, dans son appartement de la rive droite, et sa vue imprenable qui l\'a tant inspiré. ((Photo DR))'),
(6133,'Photo from Wiki'),
(6136,'Photo from Wiki'),
(6168,'Arrangement with match sticks and puzzle pieces'),
(6222,'Photo from Wiki'),
(5980,'Photo from Wiki'),
(5976,'Photo from Wiki'),
(6115,'Photo from Wiki'),
(6046,'Photo from Wiki'),
(6053,'Photo from Wiki'),
(6059,'Photo from Wiki'),
(6060,'Photo from Wiki'),
(6064,'Photo from Wiki'),
(6071,'Photo from Wiki'),
(6335,'Got as \"Voyage en Étoffes\"'),
(6091,'Photo from Wiki'),
(6104,'Photo from Wiki'),
(6132,'Photo from Wiki'),
(6126,'Photo from Wiki'),
(6128,'Photo from Wiki'),
(6332,'A. M. CASSANDRE pour Hermès Paris'),
(6137,'Photo from Wiki'),
(6282,'got it instead of \"\"'),
(6090,'Bienvenue à l’atelier');
/*!40000 ALTER TABLE `field_figcaption` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_av_date`
--

DROP TABLE IF EXISTS `field_h_av_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_av_date` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_av_date`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_av_date` WRITE;
/*!40000 ALTER TABLE `field_h_av_date` DISABLE KEYS */;
INSERT INTO `field_h_av_date` VALUES
(5797,'1939 - 2002'),
(5799,''),
(5800,'1934 - 2001'),
(5801,''),
(5802,''),
(5803,''),
(5804,''),
(5805,'Not publicly available'),
(5806,''),
(5807,'Born 1934'),
(5808,'1904-1987'),
(5809,'Not publicly available'),
(5810,''),
(5811,'1894-1975'),
(5812,''),
(5813,''),
(5814,''),
(5815,''),
(5816,''),
(5817,''),
(5818,'Born 1984'),
(5819,'Born 1954'),
(5820,''),
(5821,'1938 - 2010'),
(5822,'Born 1948 in Nice'),
(5823,'1801 - 1878'),
(5824,'1898 - 1978'),
(5825,'1871 - 1951'),
(5826,'1831 - 1916'),
(5967,''),
(5968,'1892 - 1976'),
(5973,'1923 - 2006'),
(5996,'1967 -'),
(6018,'1882 - 1969'),
(6019,''),
(6021,'Assumed she is still alive in 2025...'),
(6022,''),
(6023,''),
(6087,''),
(6090,''),
(6095,''),
(6097,''),
(6106,''),
(6108,''),
(6109,'1901 - 1968'),
(6111,'Born 1960'),
(6113,''),
(6116,'1903 - 1983'),
(6119,''),
(6123,''),
(6129,''),
(6131,''),
(6134,''),
(6138,'1905 - 1988'),
(6140,'1927-2020'),
(6145,''),
(5792,'Not publicly available'),
(6161,'1883 – 1970'),
(5798,'1907 - 1959'),
(6326,'Born 1970-07-03'),
(6177,'1943-2008'),
(6360,'Born 1993');
/*!40000 ALTER TABLE `field_h_av_date` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_av_duty`
--

DROP TABLE IF EXISTS `field_h_av_duty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_av_duty` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_av_duty`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_av_duty` WRITE;
/*!40000 ALTER TABLE `field_h_av_duty` DISABLE KEYS */;
INSERT INTO `field_h_av_duty` VALUES
(6326,6,0),
(5793,1,0),
(5794,1,0),
(5795,1,0),
(5796,2,0),
(5797,1,0),
(5798,1,0),
(5799,1,0),
(5800,1,0),
(5801,2,0),
(5802,1,0),
(5803,1,0),
(5804,1,0),
(5805,1,0),
(5806,1,0),
(5807,1,0),
(5808,1,0),
(5809,1,0),
(5810,1,0),
(5811,1,0),
(5812,1,0),
(5813,1,0),
(5814,1,0),
(5815,1,0),
(5816,1,0),
(5817,1,0),
(5818,1,0),
(5819,1,0),
(5820,6,0),
(5821,1,0),
(5822,1,0),
(5823,6,0),
(5824,6,0),
(5825,6,0),
(5826,6,0),
(5967,1,0),
(5973,1,0),
(5996,1,0),
(5968,1,0),
(5821,6,1),
(5812,4,1),
(6095,1,0),
(6018,1,0),
(6019,1,0),
(6106,1,0),
(6021,1,0),
(6022,1,0),
(6023,1,0),
(6134,1,0),
(6140,1,0),
(6087,1,0),
(6168,1,0),
(6097,1,0),
(6116,1,0),
(6108,1,0),
(6109,1,0),
(6131,1,0),
(6123,1,0),
(6090,1,0),
(6129,1,0),
(6111,1,0),
(6145,1,0),
(6113,1,0),
(6119,1,0),
(6138,1,0),
(5813,4,1),
(6161,1,0),
(6161,6,1),
(5792,1,0),
(6315,1,0),
(6312,1,0),
(6311,1,0),
(6177,1,0),
(6310,1,0),
(5807,4,1),
(6360,1,0);
/*!40000 ALTER TABLE `field_h_av_duty` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_av_firstname`
--

DROP TABLE IF EXISTS `field_h_av_firstname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_av_firstname` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text DEFAULT NULL,
  `data5754` text DEFAULT NULL,
  `data5755` text DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_av_firstname`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_av_firstname` WRITE;
/*!40000 ALTER TABLE `field_h_av_firstname` DISABLE KEYS */;
INSERT INTO `field_h_av_firstname` VALUES
(5792,'Christiane','Christiane','Christiane','Christiane'),
(5793,'Caty','Caty','Cathy','Cathy'),
(5794,'Evgenia','Евгения','Evgenia','Evgenia'),
(5795,'Dimitri','Дмитрий','Dimitri','Dimitri'),
(5796,'Aleksandr','Александр','Aleksandr','Aleksandr'),
(5797,'Vladimir','Vladimir','Vladimir','Vladimir'),
(5798,'Hugo','Hugo','Hugo','Hugo'),
(5799,'Philippe','Philippe','Philippe','Philippe'),
(5800,'Loic','Loic','Loïc','Loïc'),
(5801,'Margo','Margo','Margo','Margo'),
(5802,'Françoise','Françoise','Françoise','Françoise'),
(5803,'Michel','Michel','Michèle','Michel'),
(5804,'Cyrille','Cyrille','Cyrille','Cyrille'),
(5805,'Jean','Jean','Jean','Jean'),
(5806,'Julie','Julie','Julie','Julie'),
(5807,'Henri','Henri','Henri','Henri'),
(5808,'Henri','Henri','Henri','Henri'),
(5809,'Joachim','Joachim','Joachim','Joachim'),
(5810,'Daphne','Daphne','Daphne','Daphne'),
(5811,'Xavier','Xavier','Xavier','Xavier'),
(5812,'Bali','Bali','Bali','Bali'),
(5813,'Benoît-Pierre','Benoît-Pierre','Benoît-Pierre','Benoît-Pierre'),
(5814,'Marie-Françoise','','',''),
(5815,'Catherine','Catherine','Catherine','Catherine'),
(5816,'Laurence','Laurence','Laurence','Laurence'),
(5817,'Antoine','Antoine','Antoine','Antoine'),
(5818,'Alice','Alice','Alice','Alice'),
(5819,'Hubert','Hubert','Hubert','Hubert'),
(5820,'Pierre-Alexis','Pierre-Alexis','Pierre-Alexis','Pierre-Alexis'),
(5821,'Jean-Louis','Jean-Louis','Jean-Louis','Jean-Louis'),
(5822,'Annie','Annie','Annie','Annie'),
(5823,'Thierry','Thierry','Thierry','Thierry'),
(5824,'Robert','Robert','Robert','Robert'),
(5825,'Émile Maurice','Емиль Морис','Émile Maurice','Émile Maurice'),
(5826,'Charles-Émile','Шарль-Эмиль','Charles-Émile','Charles-Émile'),
(5967,'Marie-Françoise','','',''),
(5968,'Gabriella','','',''),
(5973,'Robert','Robert','',''),
(5996,'Florence','','',''),
(6018,'Charles-Jean','Charles-Jean','Charles-Jean','Charles-Jean'),
(6019,'Karin','Karin','Karin','Karin'),
(6021,'Aline','Aline','Aline','Aline'),
(6022,'Jacques','Jacques','Jacques','Jacques'),
(6023,'Christine','Christine','Christine','Christine'),
(6087,'Daiske','','',''),
(6090,'Virginie','','',''),
(6095,'Carine','','',''),
(6097,'Dominik','','',''),
(6106,'François','François','',''),
(6108,'Gianpaolo','','',''),
(6109,'A.M.','','',''),
(6111,'Sophie','','',''),
(6113,'Pierre Marie','','',''),
(6116,'Yves','','',''),
(6119,'Ibrahim Alamia','','',''),
(6123,'Filipe','','',''),
(6129,'Claudia','','',''),
(6131,'Jonathan','','',''),
(6134,'','','',''),
(6138,'Pierre','','',''),
(6140,'Leila','','',''),
(6145,'','','',''),
(6168,'Leigh','','',''),
(6161,'Nina','','',''),
(6326,'Axel','','',''),
(6315,'','Evgenia','',''),
(6312,'','Michèle','',''),
(6311,'','Jean','',''),
(6177,'Anne Marie','','',''),
(6310,'','Antoine','',''),
(6360,'Théo de','','','');
/*!40000 ALTER TABLE `field_h_av_firstname` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_av_lastname`
--

DROP TABLE IF EXISTS `field_h_av_lastname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_av_lastname` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text DEFAULT NULL,
  `data5754` text DEFAULT NULL,
  `data5755` text DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_av_lastname`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_av_lastname` WRITE;
/*!40000 ALTER TABLE `field_h_av_lastname` DISABLE KEYS */;
INSERT INTO `field_h_av_lastname` VALUES
(5792,'Vauzelles','Vauzelles','Vauzelles','Vauzelles'),
(5793,'Latham','Latham','Latham-Audibert','Latham-Audibert'),
(5794,'Miro (Miroshnichenko)','Мирошниченко (Miro)','Miro (Miroshnichenko)','Miro (Miroshnichenko)'),
(5795,'Rybaltchenko','Рыбальченко','Rybaltchenko','Rybaltchenko'),
(5796,'Zybin','Цыбин','Zybin','Zybin'),
(5797,'Rybaltchenko','Rybaltchenko','Rybaltchenko','Rybaltchenko'),
(5798,'Grygkar','Grygkar','Grygkar','Grygkar'),
(5799,'Ledoux','Ledoux','Ledoux','Ledoux'),
(5800,'Dubigeon','Dubigeon','Dubigeon','Dubigeon'),
(5801,'','','',''),
(5802,'de La Perrière','de La Perrière','de La Perrière','de La Perrière'),
(5803,'Duchêne','Duchêne','Duchêne','Duchêne'),
(5804,'Diatkine','Diatkine','Diatkine','Diatkine'),
(5805,'de Fougerolle','de Fougerolle','de Fougerolle','de Fougerolle'),
(5806,'Abadie','Abadie','Abadie','Abadie'),
(5807,'d\'Origny','d\'Origny','d\'Origny','d\'Origny'),
(5808,'de Linares','de Linares','de Linarès','de Linarès'),
(5809,'Metz','Metz','Metz','Metz'),
(5810,'Duchesne','Duchesne','Duchesne','Duchesne'),
(5811,'de Poret','de Poret','de Poret','de Poret'),
(5812,'Barret','Barret','Barret','Barret'),
(5813,'Emery','Emery','Emery','Emery'),
(5814,'Héron','','',''),
(5815,'Baschet','Baschet','Baschet','Baschet'),
(5816,'Bourthoumieux','Bourthoumieux','Bourthoumieux','Bourthoumieux'),
(5817,'de Jacquelot','de Jacquelot','de Jacquelot','de Jacquelot'),
(5818,'Shirley','Shirley','Shirley','Shirley'),
(5819,'de Watrigant','de Watrigant','de Watrigant','de Watrigant'),
(5820,'Dumas','Dumas','Dumas','Dumas'),
(5821,'Dumas','Dumas','Dumas','Dumas'),
(5822,'Faivre','Faivre','Faivre','Faivre'),
(5823,'Hermès','Hermès','Hermès','Hermès'),
(5824,'Dumas','Dumas','Dumas','Dumas'),
(5825,'Hermès','Hermès','Hermès','Hermès'),
(5826,'Hermès','Hermès','Hermès','Hermès'),
(5967,'Faconnet','','',''),
(5968,'La Torre','La Torre','La Torre','La Torre'),
(5973,'Dallet','','',''),
(5996,'Manlik','','',''),
(6161,'Ricci','','',''),
(6018,'Hallo','Hallo','Hallo','Hallo'),
(6019,'Swildens','Swildens','Swildens','Swildens'),
(6326,'Dumas','','',''),
(6315,'','Miro','',''),
(6021,'Honore','Honore','Honore','Honore'),
(6022,'Eudel','Eudel','Eudel','Eudel'),
(6023,'Henry','Henry','Henry','Henry'),
(6087,'Nomura','','',''),
(6090,'Jamin','','',''),
(6095,'Brancowitz','','',''),
(6097,'Jarlegant','','',''),
(6106,'Houtin','Houtin','',''),
(6108,'Pagni','','',''),
(6109,'Cassandre','','',''),
(6111,'Koechlin','','',''),
(6113,'Agin','','',''),
(6116,'Benoist Gironiere','','',''),
(6119,'Sefedin','','',''),
(6123,'Jardim','','',''),
(6129,'Stuhlhofer-Mayr','','',''),
(6131,'Burton','','',''),
(6134,'Archives Hermès','','',''),
(6138,'Péron','','',''),
(6140,'Menchari','','',''),
(6145,'Ardmore Artists','','',''),
(6168,'Cooke','','',''),
(6312,'','Duchêne','',''),
(6311,'','Fougerolle','',''),
(6177,'Cassandre','','',''),
(6310,'','de Jacquelot','',''),
(6360,'de Gueltzl','','','');
/*!40000 ALTER TABLE `field_h_av_lastname` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_av_url`
--

DROP TABLE IF EXISTS `field_h_av_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_av_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_av_url`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_av_url` WRITE;
/*!40000 ALTER TABLE `field_h_av_url` DISABLE KEYS */;
INSERT INTO `field_h_av_url` VALUES
(5794,'http://evgeniamiro.com/'),
(5800,'http://honesterotica.com/portfolios/550'),
(5817,'http://www.le-mouciau.fr/site/antoine-de-jacquelot'),
(5973,'https://www.robert-dallet.com/en/'),
(6108,'https://gianpaolopagni.com/'),
(5819,'https://www.facebook.com/hubert.dewatrigant'),
(6109,'https://en.wikipedia.org/wiki/Cassandre'),
(5799,'https://www.npg.org.uk/collections/search/portrait/mw01840/Sir-William-Reid-Dick'),
(5795,'https://www.linkedin.com/in/dimitrirybaltchenko/?locale=en_US'),
(6161,'https://en.wikipedia.org/wiki/Nina_Ricci_(designer)'),
(5968,'https://scarfsage.com/blog/2025-11-01_gabriella-la-torre-hermes-scarf-designer'),
(6095,'https://www.carinebrancowitz.com/'),
(6019,'http://www.karinswildens.com'),
(5996,'https://florencemanlik.com/category/a_propos'),
(6138,'https://www.letelegramme.fr/finistere/brest-29200/spanpierre-peronspan-toujours-inclassable-3266927.php');
/*!40000 ALTER TABLE `field_h_av_url` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_aw_base`
--

DROP TABLE IF EXISTS `field_h_aw_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_aw_base` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_base`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_aw_base` WRITE;
/*!40000 ALTER TABLE `field_h_aw_base` DISABLE KEYS */;
INSERT INTO `field_h_aw_base` VALUES
(5844,3,0),
(5845,3,0),
(5846,3,0),
(5847,3,0),
(5848,3,0),
(5849,3,0),
(5850,3,0),
(5851,3,0),
(5852,3,0),
(5986,3,0),
(5976,3,0),
(6030,3,0),
(5965,3,0),
(6092,3,0),
(6094,3,0),
(6068,3,0),
(6196,3,0),
(6081,3,0),
(6271,3,0),
(6272,3,0),
(6093,3,0),
(6085,3,0),
(6096,3,0),
(6103,3,0),
(6105,3,0),
(6316,3,0),
(6179,3,0),
(6069,3,0),
(6313,3,0),
(6124,3,0),
(6276,3,0),
(6139,3,0),
(6253,3,0),
(6141,3,0),
(6159,3,0),
(6027,3,0),
(6147,3,0),
(6282,3,0),
(6070,3,0),
(6025,3,0),
(6335,3,0),
(6034,3,0),
(6042,3,0);
/*!40000 ALTER TABLE `field_h_aw_base` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_aw_brand`
--

DROP TABLE IF EXISTS `field_h_aw_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_aw_brand` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_brand`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_aw_brand` WRITE;
/*!40000 ALTER TABLE `field_h_aw_brand` DISABLE KEYS */;
INSERT INTO `field_h_aw_brand` VALUES
(5844,5835,0),
(5845,5835,0),
(5846,5835,0),
(5847,5835,0),
(5849,5835,0),
(5850,5835,0),
(5851,5835,0),
(5852,5835,0),
(5965,5835,0),
(5966,5835,0),
(5969,5835,0),
(5974,5835,0),
(5975,5835,0),
(5976,5835,0),
(5977,5835,0),
(5979,5835,0),
(5980,5835,0),
(5981,5835,0),
(5982,5835,0),
(5984,5835,0),
(5985,5835,0),
(5986,5835,0),
(5987,5835,0),
(5988,5835,0),
(5989,5835,0),
(5990,5835,0),
(5991,5835,0),
(5993,5835,0),
(5994,5835,0),
(5995,5835,0),
(5998,5835,0),
(5999,5835,0),
(6000,5835,0),
(6001,5835,0),
(6002,5835,0),
(6005,5835,0),
(6024,5835,0),
(6025,5835,0),
(6026,5835,0),
(6027,5835,0),
(6028,5835,0),
(6029,5835,0),
(6030,5835,0),
(6031,5835,0),
(6033,5835,0),
(6034,5835,0),
(6035,5835,0),
(6036,5835,0),
(6037,5835,0),
(6038,5835,0),
(6039,5835,0),
(6040,5835,0),
(6041,5835,0),
(6042,5835,0),
(6043,5835,0),
(6044,5835,0),
(6045,5835,0),
(6046,5835,0),
(6047,5835,0),
(6048,5835,0),
(6049,5835,0),
(6050,5835,0),
(6051,5835,0),
(6052,5835,0),
(6053,5835,0),
(6054,5835,0),
(6055,5835,0),
(6056,5835,0),
(6057,5835,0),
(6058,5835,0),
(6059,5835,0),
(6060,5835,0),
(6061,5835,0),
(6062,5835,0),
(6063,5835,0),
(6064,5835,0),
(6065,5835,0),
(6066,5835,0),
(6068,5835,0),
(6069,5835,0),
(6070,5835,0),
(6071,5835,0),
(6072,5835,0),
(6073,5835,0),
(6079,5835,0),
(6080,5835,0),
(6081,5835,0),
(6082,5835,0),
(6084,5835,0),
(6085,5835,0),
(6086,5835,0),
(6088,5835,0),
(6089,5835,0),
(6091,5835,0),
(6092,5835,0),
(6093,5835,0),
(6094,5835,0),
(6096,5835,0),
(6098,5835,0),
(6099,5835,0),
(6101,5835,0),
(6102,5835,0),
(6103,5835,0),
(6104,5835,0),
(6105,5835,0),
(6107,5835,0),
(6112,5835,0),
(6114,5835,0),
(6115,5835,0),
(6117,5835,0),
(6118,5835,0),
(6120,5835,0),
(6121,5835,0),
(6122,5835,0),
(6124,5835,0),
(6125,5835,0),
(6126,5835,0),
(6127,5835,0),
(6128,5835,0),
(6130,5835,0),
(6132,5835,0),
(6133,5835,0),
(6135,5835,0),
(6136,5835,0),
(6137,5835,0),
(6139,5835,0),
(6141,5835,0),
(6142,5835,0),
(6143,5835,0),
(6144,5835,0),
(6147,5835,0),
(6148,5835,0),
(6149,5835,0),
(6159,5835,0),
(6179,5835,0),
(6196,5835,0),
(6271,5835,0),
(6272,5835,0),
(6276,5835,0),
(6277,5835,0),
(6282,5835,0),
(6308,5835,0),
(6313,5835,0),
(6314,5835,0),
(6316,5835,0),
(6317,5835,0),
(6318,5835,0),
(6319,5835,0),
(6320,5835,0),
(6321,5835,0),
(6322,5835,0),
(6323,5835,0),
(6324,5835,0),
(6325,5835,0),
(6332,5835,0),
(6333,5835,0),
(6335,5835,0),
(6347,5835,0),
(6348,5835,0),
(6349,5835,0),
(6350,5835,0),
(6358,5835,0),
(6014,5836,0),
(5848,5837,0),
(6013,5840,0),
(6222,5841,0),
(6016,6015,0),
(6258,6171,0),
(6253,6172,0);
/*!40000 ALTER TABLE `field_h_aw_brand` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_aw_collection`
--

DROP TABLE IF EXISTS `field_h_aw_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_aw_collection` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_collection`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_aw_collection` WRITE;
/*!40000 ALTER TABLE `field_h_aw_collection` DISABLE KEYS */;
INSERT INTO `field_h_aw_collection` VALUES
(5845,5842,0),
(5846,5842,0),
(5852,5842,0),
(6332,6331,0),
(6333,6331,0),
(6347,6346,0),
(6348,6346,0),
(6349,6346,0),
(6350,6346,0);
/*!40000 ALTER TABLE `field_h_aw_collection` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_aw_condition`
--

DROP TABLE IF EXISTS `field_h_aw_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_aw_condition` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_condition`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_aw_condition` WRITE;
/*!40000 ALTER TABLE `field_h_aw_condition` DISABLE KEYS */;
INSERT INTO `field_h_aw_condition` VALUES
(5844,'Brand new'),
(5845,''),
(5846,''),
(5847,''),
(5848,''),
(5849,''),
(5850,''),
(5851,''),
(5852,''),
(5965,''),
(5966,''),
(5969,''),
(5974,''),
(5975,''),
(5976,''),
(5977,''),
(5979,''),
(5980,''),
(5981,''),
(5982,''),
(5984,''),
(5985,''),
(5986,''),
(5987,''),
(5988,''),
(5989,''),
(5990,''),
(5991,''),
(5993,''),
(5994,''),
(5995,''),
(5998,''),
(5999,''),
(6000,''),
(6001,''),
(6002,''),
(6005,''),
(6013,''),
(6014,''),
(6016,''),
(6024,''),
(6025,''),
(6026,''),
(6027,''),
(6028,''),
(6029,''),
(6030,''),
(6031,''),
(6033,''),
(6034,''),
(6035,''),
(6036,''),
(6037,''),
(6038,''),
(6039,''),
(6040,''),
(6041,''),
(6042,''),
(6043,''),
(6044,''),
(6045,''),
(6046,''),
(6047,''),
(6048,''),
(6049,''),
(6050,''),
(6051,''),
(6052,''),
(6053,''),
(6054,''),
(6055,''),
(6056,''),
(6057,''),
(6058,''),
(6059,''),
(6060,''),
(6061,''),
(6062,''),
(6063,''),
(6064,''),
(6065,''),
(6066,''),
(6068,''),
(6069,''),
(6070,''),
(6071,''),
(6072,''),
(6073,''),
(6079,''),
(6080,''),
(6081,''),
(6082,''),
(6084,''),
(6085,''),
(6086,''),
(6088,''),
(6089,''),
(6091,''),
(6092,''),
(6093,''),
(6094,''),
(6096,''),
(6098,''),
(6099,''),
(6101,''),
(6102,''),
(6103,''),
(6104,''),
(6105,''),
(6107,''),
(6112,''),
(6114,''),
(6115,''),
(6117,''),
(6118,''),
(6120,''),
(6121,''),
(6122,''),
(6124,''),
(6125,''),
(6126,''),
(6127,''),
(6128,''),
(6130,''),
(6132,''),
(6133,''),
(6135,''),
(6136,''),
(6137,''),
(6139,''),
(6141,''),
(6142,''),
(6143,''),
(6144,''),
(6147,''),
(6148,''),
(6149,''),
(6159,'');
/*!40000 ALTER TABLE `field_h_aw_condition` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_aw_day0`
--

DROP TABLE IF EXISTS `field_h_aw_day0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_aw_day0` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_day0`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_aw_day0` WRITE;
/*!40000 ALTER TABLE `field_h_aw_day0` DISABLE KEYS */;
INSERT INTO `field_h_aw_day0` VALUES
(5844,'2010-05-04'),
(5851,'2017-10-25'),
(6159,'2025-10-10'),
(6079,'2022'),
(6080,'2023-11-16'),
(6196,'2025-11-08'),
(5974,'2018-09-11'),
(6081,'2021-09-11'),
(6082,'2022'),
(6093,'2024-11-09'),
(6072,'2010-02-02'),
(5981,'2009-11-09'),
(6085,'2023-04-11'),
(6086,'2023'),
(6088,'2024'),
(6089,'2022'),
(6092,'2022'),
(6222,'2019-10-21'),
(6096,'2024-07-22'),
(6098,'2022'),
(6101,'2023-12-02'),
(6102,'2023'),
(6358,'2026-02-02'),
(6179,'2022-12-09'),
(6112,'2023'),
(6114,'2025'),
(6117,'2024-05-26'),
(6120,'2025'),
(6124,'2022-09-09'),
(6127,'2023'),
(6130,'2022'),
(6047,'2017-05-05'),
(6139,'2024-06-15'),
(6253,'2020-01-31'),
(6258,'2022-04-02'),
(6313,'2021-07-22'),
(6335,'2022-12-09'),
(6030,'2013-02-14'),
(6271,'2021-05-04'),
(5975,'2004'),
(6272,'2024-06-01'),
(5976,'2008-03-06'),
(6084,'2025-01-07'),
(5984,'2003-10-02'),
(5991,'2017-05-15'),
(5993,'2012-09-28'),
(6099,'2022'),
(6103,'2025-03-07'),
(6001,'2008-03-12'),
(6105,'2021-08-20'),
(5999,'2009-11-09'),
(6069,'2020-01-17'),
(5847,'2018-04-18'),
(6061,'2013-04-04'),
(6005,'2022'),
(6121,'2022-07-08'),
(6308,'2022-11'),
(6122,'2022'),
(6126,'2022'),
(6276,'2022-04-09'),
(6043,'2012-11-01'),
(6044,'2005-05-05'),
(6128,'2023'),
(6133,'2022'),
(6050,'2016-04-30'),
(6277,'2023-09-18'),
(6136,'2025'),
(6137,'2022'),
(6141,'2021-10-09'),
(6142,'2024-02-16'),
(6143,'2025'),
(6144,'2023-08-14'),
(6027,'2021-03-17'),
(6147,'2024-01-04'),
(6148,'2023-09-18'),
(6107,'2021-07-22'),
(6282,'2022-12-09'),
(6070,'2020-02-14'),
(6055,'2019-10-21'),
(6149,'2019-10-21'),
(6025,'2021-05-04');
/*!40000 ALTER TABLE `field_h_aw_day0` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_aw_featured`
--

DROP TABLE IF EXISTS `field_h_aw_featured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_aw_featured` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_featured`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_aw_featured` WRITE;
/*!40000 ALTER TABLE `field_h_aw_featured` DISABLE KEYS */;
INSERT INTO `field_h_aw_featured` VALUES
(5975,1),
(5844,1),
(5976,1),
(6093,1),
(5982,1),
(5850,1),
(6038,1),
(5999,1),
(5847,1),
(5974,1),
(6079,1),
(5965,1);
/*!40000 ALTER TABLE `field_h_aw_featured` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_aw_more`
--

DROP TABLE IF EXISTS `field_h_aw_more`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_aw_more` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text DEFAULT NULL,
  `data5754` text DEFAULT NULL,
  `data5755` text DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_more`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_aw_more` WRITE;
/*!40000 ALTER TABLE `field_h_aw_more` DISABLE KEYS */;
INSERT INTO `field_h_aw_more` VALUES
(5850,'Hermès’s best-selling scarf of all time.',NULL,NULL,NULL),
(5851,'',NULL,NULL,NULL),
(5852,'',NULL,NULL,NULL),
(5965,'Подарок Юры','','',''),
(5966,'',NULL,NULL,NULL),
(5974,'',NULL,NULL,NULL),
(5975,'',NULL,NULL,NULL),
(5976,'','','',''),
(5977,'',NULL,NULL,NULL),
(5979,'',NULL,NULL,NULL),
(5980,'','МaxTwilly','',''),
(5981,'',NULL,NULL,NULL),
(5982,'',NULL,NULL,NULL),
(5984,'',NULL,NULL,NULL),
(5985,'',NULL,NULL,NULL),
(5986,'',NULL,NULL,NULL),
(5987,'',NULL,NULL,NULL),
(5988,'',NULL,NULL,NULL),
(5989,'Scarf/vintage','','',''),
(5990,'+(1)','','',''),
(5991,'',NULL,NULL,NULL),
(5993,'',NULL,NULL,NULL),
(5844,'Подарок М+A',NULL,NULL,NULL),
(5995,'',NULL,NULL,NULL),
(5998,'',NULL,NULL,NULL),
(5999,'',NULL,NULL,NULL),
(6000,'',NULL,NULL,NULL),
(6001,'','','',''),
(6002,'',NULL,NULL,NULL),
(6005,'',NULL,NULL,NULL),
(6013,'',NULL,NULL,NULL),
(6014,'',NULL,NULL,NULL),
(6016,'',NULL,NULL,NULL),
(6024,'',NULL,NULL,NULL),
(6025,'',NULL,NULL,NULL),
(6026,'',NULL,NULL,NULL),
(6027,'','','',''),
(6028,'',NULL,NULL,NULL),
(6029,'',NULL,NULL,NULL),
(6030,'',NULL,NULL,NULL),
(6031,'',NULL,NULL,NULL),
(6316,'','','',''),
(6033,'',NULL,NULL,NULL),
(6034,'',NULL,NULL,NULL),
(6035,'',NULL,NULL,NULL),
(6036,'',NULL,NULL,NULL),
(6037,'',NULL,NULL,NULL),
(6038,'',NULL,NULL,NULL),
(6039,'',NULL,NULL,NULL),
(6040,'',NULL,NULL,NULL),
(6041,'',NULL,NULL,NULL),
(6042,'',NULL,NULL,NULL),
(6043,'',NULL,NULL,NULL),
(6044,'',NULL,NULL,NULL),
(6045,'',NULL,NULL,NULL),
(6046,'',NULL,NULL,NULL),
(6047,'',NULL,NULL,NULL),
(6048,'',NULL,NULL,NULL),
(6049,'','','',''),
(6050,'',NULL,NULL,NULL),
(6051,'',NULL,NULL,NULL),
(6052,'',NULL,NULL,NULL),
(6053,'',NULL,NULL,NULL),
(6054,'',NULL,NULL,NULL),
(6055,'',NULL,NULL,NULL),
(6056,'',NULL,NULL,NULL),
(6057,'',NULL,NULL,NULL),
(6058,'',NULL,NULL,NULL),
(6059,'',NULL,NULL,NULL),
(6060,'',NULL,NULL,NULL),
(6061,'',NULL,NULL,NULL),
(6062,'',NULL,NULL,NULL),
(6063,'',NULL,NULL,NULL),
(6064,'',NULL,NULL,NULL),
(6065,'',NULL,NULL,NULL),
(6066,'',NULL,NULL,NULL),
(6068,'Scarf of 2009','Платок 2009 года','',''),
(6069,'',NULL,NULL,NULL),
(6070,'',NULL,NULL,NULL),
(6071,'',NULL,NULL,NULL),
(6072,'',NULL,NULL,NULL),
(6073,'',NULL,NULL,NULL),
(6079,'','','',''),
(6081,'',NULL,NULL,NULL),
(6082,'',NULL,NULL,NULL),
(6314,'','','',''),
(6084,'',NULL,NULL,NULL),
(6085,'',NULL,NULL,NULL),
(6086,'',NULL,NULL,NULL),
(6088,'','','',''),
(6089,'Подарок Мини','','',''),
(6091,'','','',''),
(6092,'','','',''),
(6093,'',NULL,NULL,NULL),
(6096,'',NULL,NULL,NULL),
(6098,'','','',''),
(6099,'',NULL,NULL,NULL),
(6101,'','','',''),
(6102,'Подарок Юры','','',''),
(6103,'',NULL,NULL,NULL),
(6104,'',NULL,NULL,NULL),
(6105,'',NULL,NULL,NULL),
(6107,'',NULL,NULL,NULL),
(6313,'','','',''),
(6112,'',NULL,NULL,NULL),
(6114,'','','',''),
(6115,'def 136/97','','',''),
(6117,'',NULL,NULL,NULL),
(6118,'',NULL,NULL,NULL),
(6120,'First and only known edition in 2002','','',''),
(6121,'',NULL,NULL,NULL),
(6122,'',NULL,NULL,NULL),
(6124,'',NULL,NULL,NULL),
(6125,'Aне',NULL,NULL,NULL),
(6126,'',NULL,NULL,NULL),
(6127,'','','',''),
(6128,'',NULL,NULL,NULL),
(6132,'Подарок Мини',NULL,NULL,NULL),
(6133,'',NULL,NULL,NULL),
(6135,'','','',''),
(6136,'',NULL,NULL,NULL),
(6137,'',NULL,NULL,NULL),
(6139,'',NULL,NULL,NULL),
(6141,'',NULL,NULL,NULL),
(6142,'',NULL,NULL,NULL),
(6143,'',NULL,NULL,NULL),
(6144,'',NULL,NULL,NULL),
(6147,'',NULL,NULL,NULL),
(6148,'',NULL,NULL,NULL),
(6149,'',NULL,NULL,NULL),
(5846,'','','',''),
(6159,'','','',''),
(6271,'','','',''),
(6272,'','','',''),
(6321,'','','',''),
(6222,'Dior','','',''),
(5849,'','','',''),
(6322,'','','',''),
(6276,'','','',''),
(6277,'','','',''),
(6333,'','','',''),
(6253,'RADO','','',''),
(6308,'','','',''),
(6258,'Omega','','',''),
(6332,'','','',''),
(6282,'','','',''),
(6335,'','','',''),
(6317,'','','',''),
(6318,'','','',''),
(6319,'','','',''),
(6320,'','','',''),
(6323,'','','',''),
(6324,'','','',''),
(6325,'','','',''),
(6347,'','','',''),
(6348,'','','',''),
(6349,'','','',''),
(6350,'','','',''),
(6358,'','','','');
/*!40000 ALTER TABLE `field_h_aw_more` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_aw_options`
--

DROP TABLE IF EXISTS `field_h_aw_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_aw_options` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_options`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_aw_options` WRITE;
/*!40000 ALTER TABLE `field_h_aw_options` DISABLE KEYS */;
INSERT INTO `field_h_aw_options` VALUES
(5994,2,0),
(5969,1,0),
(5846,4,0),
(6030,2,0),
(6068,5,0),
(6079,2,0),
(5989,3,0),
(6101,1,0),
(6127,1,0),
(6308,2,0),
(6120,2,0);
/*!40000 ALTER TABLE `field_h_aw_options` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_aw_person`
--

DROP TABLE IF EXISTS `field_h_aw_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_aw_person` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_person`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_aw_person` WRITE;
/*!40000 ALTER TABLE `field_h_aw_person` DISABLE KEYS */;
INSERT INTO `field_h_aw_person` VALUES
(5844,5792,0),
(6044,5792,0),
(6057,5792,0),
(6148,5792,0),
(5984,5793,0),
(5987,5793,0),
(5988,5793,0),
(6035,5793,0),
(6039,5793,0),
(6054,5793,0),
(6060,5793,0),
(6082,5793,0),
(6099,5793,0),
(6105,5793,0),
(6149,5793,0),
(6335,5793,0),
(6068,5794,0),
(6029,5795,0),
(6030,5795,0),
(6085,5795,0),
(6133,5795,0),
(6144,5795,0),
(6347,5795,0),
(6348,5795,0),
(6349,5795,0),
(6350,5795,0),
(6102,5797,0),
(5845,5798,0),
(5846,5798,0),
(5850,5798,0),
(5965,5798,0),
(5994,5798,0),
(6031,5798,1),
(6052,5798,0),
(5966,5799,0),
(5975,5799,0),
(5999,5799,0),
(6041,5799,0),
(6045,5799,0),
(6051,5799,0),
(6053,5799,0),
(6059,5799,0),
(6070,5799,0),
(6136,5799,0),
(5847,5800,0),
(6092,5800,0),
(5849,5802,0),
(5977,5802,0),
(5989,5802,0),
(5991,5802,0),
(5993,5802,0),
(6046,5802,0),
(6121,5802,0),
(6318,5802,0),
(6319,5802,0),
(6324,5802,0),
(6325,5802,0),
(5851,5803,0),
(6101,5803,0),
(5969,5804,1),
(6069,5804,0),
(5981,5805,0),
(5982,5805,0),
(5985,5806,0),
(6043,5806,0),
(6063,5806,0),
(6079,5806,0),
(6084,5806,0),
(6104,5806,0),
(6308,5806,0),
(5980,5807,0),
(5990,5807,0),
(5998,5807,0),
(6001,5807,0),
(6002,5807,0),
(6042,5807,0),
(6071,5807,0),
(6126,5807,0),
(6276,5807,0),
(6320,5807,0),
(6321,5807,0),
(6322,5807,0),
(6000,5808,0),
(6050,5808,0),
(6323,5808,0),
(6056,5809,0),
(6061,5809,0),
(6065,5809,0),
(6072,5809,0),
(6143,5809,0),
(6147,5809,0),
(6040,5810,0),
(6038,5811,0),
(6080,5811,0),
(6028,5812,0),
(6125,5812,0),
(6037,5813,0),
(6089,5813,0),
(6048,5814,0),
(6033,5815,0),
(6058,5815,0),
(6137,5815,0),
(5976,5816,0),
(6064,5816,0),
(6066,5816,0),
(6093,5816,0),
(6316,5816,0),
(6317,5816,0),
(5979,5817,0),
(6127,5818,0),
(6026,5819,0),
(6034,5819,0),
(5852,5821,0),
(6005,5822,0),
(6025,5822,0),
(6027,5822,0),
(6062,5822,0),
(6073,5822,0),
(6081,5822,0),
(6103,5822,1),
(6142,5822,0),
(6272,5822,0),
(6282,5822,0),
(6314,5822,0),
(5969,5967,0),
(5986,5968,0),
(6031,5968,0),
(5974,5973,0),
(6028,5973,1),
(6125,5973,1),
(5995,5996,0),
(6094,5996,0),
(6036,6018,0),
(6086,6018,0),
(6055,6019,0),
(6047,6021,0),
(6049,6022,0),
(6024,6023,0),
(6115,6023,0),
(6088,6087,0),
(6122,6087,0),
(6091,6090,0),
(6103,6090,0),
(6128,6090,0),
(6096,6095,0),
(6098,6097,0),
(6107,6106,0),
(6313,6106,0),
(5846,6108,1),
(6179,6109,0),
(6332,6109,0),
(6333,6109,0),
(6112,6111,0),
(6114,6113,0),
(6118,6113,0),
(6117,6116,0),
(6120,6119,0),
(6124,6123,0),
(6130,6129,0),
(6132,6131,0),
(6135,6134,0),
(6139,6138,0),
(6141,6140,0),
(6159,6145,0),
(6196,6168,0),
(5979,6310,1),
(5981,6311,1),
(5982,6311,1),
(5851,6312,1),
(6101,6312,1),
(6068,6315,1),
(6358,6360,0);
/*!40000 ALTER TABLE `field_h_aw_person` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_aw_popularity`
--

DROP TABLE IF EXISTS `field_h_aw_popularity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_aw_popularity` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_popularity`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_aw_popularity` WRITE;
/*!40000 ALTER TABLE `field_h_aw_popularity` DISABLE KEYS */;
INSERT INTO `field_h_aw_popularity` VALUES
(5844,2,0),
(5850,3,0),
(6148,2,0),
(6079,3,0),
(5974,3,0),
(6196,4,0),
(6081,3,0),
(5966,2,0),
(5965,2,0),
(6271,2,0),
(5969,3,0),
(6033,2,0),
(5975,2,0),
(6082,3,0),
(6272,3,0),
(5976,2,0),
(6093,2,0),
(6317,2,0),
(5977,2,0),
(6072,3,0),
(6084,2,0),
(5979,3,0),
(5980,2,0),
(6320,2,0),
(5981,2,0),
(5982,2,0),
(6085,3,0),
(6086,2,0),
(6089,3,0),
(5984,3,0),
(5985,2,0),
(6091,3,0),
(6092,3,0),
(5986,3,0),
(5987,3,0),
(5988,2,0),
(5989,2,0),
(6324,2,0),
(6325,2,0),
(6038,4,0),
(5990,2,0),
(6321,2,0),
(5991,2,0),
(6034,2,0),
(5993,2,0),
(5995,3,0),
(5994,3,0),
(6098,2,0),
(6035,3,0),
(6099,2,0),
(5998,2,0),
(6102,3,0),
(6103,3,0),
(6104,2,0),
(6000,2,0),
(6001,1,0),
(6322,2,0),
(6002,2,0),
(6036,2,0),
(6037,2,0),
(6105,2,0),
(6031,3,0),
(6107,3,0),
(6179,3,0),
(5999,2,0),
(6024,2,0),
(6025,2,0),
(6112,2,0),
(6335,3,0),
(6069,3,0),
(6071,2,0),
(6073,3,0),
(6120,3,0),
(6070,2,0),
(6005,3,0),
(6121,3,0),
(6030,2,0),
(6039,2,0),
(6029,3,0),
(6040,2,0),
(6041,2,0),
(6124,3,0),
(6028,3,0),
(6125,3,0),
(6276,2,0),
(6126,3,0),
(6042,2,0),
(6043,3,0),
(6044,3,0),
(6045,3,0),
(6046,2,0),
(6128,3,0),
(6130,3,0),
(6047,3,0),
(6048,2,0),
(6133,3,0),
(6049,2,0),
(6050,3,0),
(6323,3,0),
(6135,2,0),
(6051,3,0),
(6136,2,0),
(6137,2,0),
(6139,3,0),
(6052,2,0),
(6141,2,0),
(6142,2,0),
(6053,2,0),
(6054,2,0),
(6056,2,0),
(6143,2,0),
(6057,2,0),
(6144,3,0),
(6058,3,0),
(6059,2,0),
(6060,2,0),
(6061,2,0),
(6062,3,0),
(6147,3,0),
(6027,2,0),
(6159,2,0),
(6063,2,0),
(6064,2,0),
(6065,2,0),
(6066,2,0),
(6149,3,0),
(6068,3,0),
(5847,3,0),
(5849,3,0),
(5851,3,0),
(6080,3,0),
(6332,3,0),
(6055,2,0),
(6333,2,0);
/*!40000 ALTER TABLE `field_h_aw_popularity` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_aw_possession`
--

DROP TABLE IF EXISTS `field_h_aw_possession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_aw_possession` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_possession`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_aw_possession` WRITE;
/*!40000 ALTER TABLE `field_h_aw_possession` DISABLE KEYS */;
INSERT INTO `field_h_aw_possession` VALUES
(5844,5854,0),
(5847,5855,0),
(5851,5856,0);
/*!40000 ALTER TABLE `field_h_aw_possession` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_aw_price`
--

DROP TABLE IF EXISTS `field_h_aw_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_aw_price` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_price`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_aw_price` WRITE;
/*!40000 ALTER TABLE `field_h_aw_price` DISABLE KEYS */;
INSERT INTO `field_h_aw_price` VALUES
(6080,1501),
(6196,2690),
(6081,2090),
(6025,1850),
(6272,1970),
(6093,1730),
(6084,1800),
(6085,2450),
(6222,553),
(6096,2450),
(6101,1243),
(6102,2350),
(6103,1970),
(6105,1490),
(6313,1610),
(6179,2090),
(6070,1250),
(6069,1490),
(6117,1800),
(5847,2300),
(6124,2450),
(6276,2570),
(6277,850),
(6139,2210),
(6253,620),
(6141,2210),
(6142,1600),
(6055,553),
(6144,1975),
(6159,1970),
(6258,830),
(6027,1010),
(6147,2450),
(6282,2450),
(6149,553),
(6121,60),
(5974,80),
(6148,850),
(6107,1610),
(6335,2450),
(6358,290),
(6120,160);
/*!40000 ALTER TABLE `field_h_aw_price` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_aw_price_sek`
--

DROP TABLE IF EXISTS `field_h_aw_price_sek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_aw_price_sek` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_price_sek`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_aw_price_sek` WRITE;
/*!40000 ALTER TABLE `field_h_aw_price_sek` DISABLE KEYS */;
INSERT INTO `field_h_aw_price_sek` VALUES
(5847,2300),
(5974,80),
(6025,1850),
(6027,1010),
(6055,553),
(6069,1490),
(6070,1250),
(6080,1501),
(6081,2090),
(6084,1800),
(6085,2450),
(6093,1730),
(6096,2450),
(6101,1243),
(6102,2350),
(6103,1970),
(6105,1490),
(6107,1610),
(6117,1800),
(6120,1840),
(6121,60),
(6124,2450),
(6139,2210),
(6141,2210),
(6142,1600),
(6144,1975),
(6147,2450),
(6148,850),
(6149,553),
(6159,1970),
(6179,2090),
(6196,2690),
(6222,553),
(6253,620),
(6258,830),
(6272,1970),
(6276,2570),
(6335,2450),
(6358,3335);
/*!40000 ALTER TABLE `field_h_aw_price_sek` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_aw_rarity`
--

DROP TABLE IF EXISTS `field_h_aw_rarity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_aw_rarity` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_rarity`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_aw_rarity` WRITE;
/*!40000 ALTER TABLE `field_h_aw_rarity` DISABLE KEYS */;
INSERT INTO `field_h_aw_rarity` VALUES
(5850,4,0),
(5974,2,0),
(6038,4,0),
(5966,2,0),
(6026,3,0),
(6159,2,0),
(5847,2,0),
(5849,3,0),
(5851,2,0),
(5965,2,0),
(6058,3,0),
(6079,3,0),
(6120,2,0),
(6148,2,0),
(6196,2,0),
(6081,2,0),
(6271,2,0),
(5969,3,0),
(6033,2,0),
(5975,3,0),
(6082,2,0),
(6272,3,0),
(5976,2,0),
(6093,2,0),
(6317,2,0),
(5977,2,0),
(6072,2,0),
(6084,2,0),
(5979,2,0),
(5980,2,0),
(6320,2,0),
(5981,2,0),
(5982,2,0),
(6085,2,0),
(6086,2,0),
(6089,2,0),
(5984,2,0),
(5985,2,0),
(6091,2,0),
(6092,2,0),
(5986,3,0),
(5987,2,0),
(5988,2,0),
(5989,2,0),
(6324,2,0),
(6325,2,0),
(5990,2,0),
(6321,2,0),
(5991,2,0),
(6034,2,0),
(5993,2,0),
(5995,3,0),
(5994,2,0),
(6098,2,0),
(6035,3,0),
(6099,2,0),
(5998,2,0),
(6102,2,0),
(6103,3,0),
(6104,2,0),
(6000,2,0),
(6001,2,0),
(6322,2,0),
(6002,2,0),
(6036,2,0),
(6037,2,0),
(6105,2,0),
(6031,3,0),
(6107,3,0),
(6179,3,0),
(5999,3,0),
(6024,2,0),
(6025,2,0),
(6112,2,0),
(6335,2,0),
(6069,2,0),
(6071,2,0),
(6073,2,0),
(6070,2,0),
(6005,2,0),
(6121,2,0),
(6030,2,0),
(6039,2,0),
(6029,2,0),
(6040,2,0),
(6041,2,0),
(6124,2,0),
(6028,2,0),
(6125,2,0),
(6276,2,0),
(6126,3,0),
(6042,2,0),
(6043,2,0),
(6044,2,0),
(6045,2,0),
(6046,2,0),
(6128,3,0),
(6130,2,0),
(6047,3,0),
(6048,2,0),
(6133,3,0),
(6049,2,0),
(6050,2,0),
(6323,2,0),
(6135,2,0),
(6051,2,0),
(6136,2,0),
(6137,2,0),
(6139,3,0),
(6052,1,0),
(6141,2,0),
(6142,2,0),
(6053,2,0),
(6054,2,0),
(6056,2,0),
(6143,2,0),
(6057,2,0),
(6144,2,0),
(6059,2,0),
(6060,2,0),
(6061,2,0),
(6062,2,0),
(6147,2,0),
(6027,2,0),
(6063,2,0),
(6064,2,0),
(6065,2,0),
(6066,2,0),
(6149,3,0),
(6068,3,0),
(5844,2,0),
(6080,2,0),
(6332,4,0),
(6055,2,0),
(6333,2,0);
/*!40000 ALTER TABLE `field_h_aw_rarity` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_aw_seller`
--

DROP TABLE IF EXISTS `field_h_aw_seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_aw_seller` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_seller`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_aw_seller` WRITE;
/*!40000 ALTER TABLE `field_h_aw_seller` DISABLE KEYS */;
INSERT INTO `field_h_aw_seller` VALUES
(5847,5830,0),
(6084,5830,0),
(6117,5830,0),
(6332,5830,0),
(6080,5832,0),
(6101,5832,0),
(6142,5832,0),
(6025,6162,0),
(6027,6162,0),
(6069,6162,0),
(6070,6162,0),
(6081,6162,0),
(6085,6162,0),
(6093,6162,0),
(6096,6162,0),
(6103,6162,0),
(6105,6162,0),
(6107,6162,0),
(6124,6162,0),
(6139,6162,0),
(6141,6162,0),
(6147,6162,0),
(6159,6162,0),
(6179,6162,0),
(6196,6162,0),
(6253,6162,0),
(6258,6162,0),
(6271,6162,0),
(6272,6162,0),
(6276,6162,0),
(6282,6162,0),
(6313,6162,0),
(6335,6162,0),
(6121,6284,0),
(6055,6285,0),
(6102,6285,0),
(6144,6285,0),
(6148,6285,0),
(6149,6285,0),
(6222,6285,0),
(6277,6285,0),
(5974,6294,0),
(6120,6359,0),
(6358,6359,0);
/*!40000 ALTER TABLE `field_h_aw_seller` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_aw_size`
--

DROP TABLE IF EXISTS `field_h_aw_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_aw_size` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_size`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_aw_size` WRITE;
/*!40000 ALTER TABLE `field_h_aw_size` DISABLE KEYS */;
INSERT INTO `field_h_aw_size` VALUES
(6028,6187,0),
(6222,6187,0),
(5844,6188,0),
(5847,6188,0),
(5849,6188,0),
(5850,6188,0),
(5851,6188,0),
(5974,6188,0),
(5977,6188,0),
(5985,6188,0),
(6024,6188,0),
(6025,6188,0),
(6033,6188,0),
(6034,6188,0),
(6038,6188,0),
(6042,6188,0),
(6044,6188,0),
(6058,6188,0),
(6068,6188,0),
(6069,6188,0),
(6070,6188,0),
(6079,6188,0),
(6081,6188,0),
(6084,6188,0),
(6085,6188,0),
(6103,6188,0),
(6105,6188,0),
(6120,6188,0),
(6124,6188,0),
(6136,6188,0),
(6141,6188,0),
(6144,6188,0),
(6179,6188,0),
(6253,6188,0),
(6258,6188,0),
(6271,6188,0),
(6272,6188,0),
(6276,6188,0),
(6282,6188,0),
(6316,6188,0),
(6320,6188,0),
(6335,6188,0),
(6196,6197,0),
(6093,6207,0),
(6096,6225,0),
(6147,6225,0),
(6139,6251,0),
(6055,6259,0),
(6149,6259,0),
(6091,6266,0),
(6094,6266,0),
(6132,6266,0),
(5994,6267,0),
(6027,6267,0),
(6037,6267,0),
(6049,6267,0),
(6050,6267,0),
(6080,6267,0),
(6092,6267,0),
(6099,6267,0),
(6114,6267,0),
(6122,6267,0),
(6130,6267,0),
(6135,6267,0),
(6143,6267,0),
(6148,6278,0),
(6159,6278,0),
(6277,6278,0),
(6088,6293,0),
(6118,6293,0),
(5980,6303,0),
(6115,6327,0);
/*!40000 ALTER TABLE `field_h_aw_size` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_aw_sizes`
--

DROP TABLE IF EXISTS `field_h_aw_sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_aw_sizes` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_sizes`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_aw_sizes` WRITE;
/*!40000 ALTER TABLE `field_h_aw_sizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_h_aw_sizes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_aw_url`
--

DROP TABLE IF EXISTS `field_h_aw_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_aw_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_url`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_aw_url` WRITE;
/*!40000 ALTER TABLE `field_h_aw_url` DISABLE KEYS */;
INSERT INTO `field_h_aw_url` VALUES
(5847,'https://www.bukowskis.com/en/lots/1044067-hermes-scarf-les-folies-du-ciel'),
(6277,'https://www.metropol.se/auctions/detail.asp?og={9421ADB5-1605-4F6A-9C27-EF745DE6D959}'),
(6144,'https://www.metropol.se/auctions/detail.asp?og={14E976BF-1214-402E-9ED4-2E5498C2B7AC}'),
(6102,'https://www.metropol.se/auctions/detail.asp?og={ECFAFD13-0DF1-42A1-A507-7FC09290EF56}'),
(6222,'https://www.metropol.se/auctions/bildshow/default.asp?OG={46637C34-4C76-4A35-A074-9E9819C36E87}&extra={20639CCB-8C08-4C3B-84CA-0C8625C2406F}&extrapos=5'),
(6313,'https://www.kaplans.se/en/auktioner/3923/vara/1761308'),
(6148,'https://www.metropol.se/auctions/detail.asp?og={9421ADB5-1605-4F6A-9C27-EF745DE6D959}'),
(6080,'https://auctionet.com/en/my/won/3152053-nasduk-hermes-a-prapos-de-bottes-orange-botten-siden-med-ask'),
(6196,'https://www.kaplans.se/en/auktioner/4617/vara/2049773'),
(6081,'https://www.kaplans.se/en/auktioner/3963/vara/1770303'),
(6271,'https://www.kaplans.se/en/auktioner/3894/vara/1734562'),
(6272,'https://www.kaplans.se/en/auktioner/4392/vara/2000712'),
(6093,'https://www.kaplans.se/en/auktioner/4463/vara/2019718'),
(6084,'https://www.bukowskis.com/en/lots/1608792-hermes-scarf-helmets-and-plumes'),
(6085,'https://www.kaplans.se/en/auktioner/4230/vara/1920665'),
(6096,'https://www.kaplans.se/en/auktioner/4405/vara/2008341'),
(6101,'https://auctionet.com/en/my/won/3095781-hermes-feux-d-artifice-scarf-siden-design-michel-duchene-markt-med-designernamn'),
(6103,'https://www.kaplans.se/en/auktioner/4521/vara/2030702'),
(6105,'https://www.kaplans.se/en/auktioner/3924/vara/1768635'),
(6332,'https://www.bukowskis.com/en/auctions/S192/1027-scarf-hermes-perspective'),
(6179,'https://www.kaplans.se/en/auktioner/4171/vara/1895851'),
(6070,'https://www.kaplans.se/en/auktioner/3696/vara/1622195'),
(6069,'https://www.kaplans.se/en/auktioner/3680/vara/1616319'),
(6117,'https://www.bukowskis.com/en/auctions/E1084/lots/1567319-hermes-scarf-les-courses'),
(6124,'https://www.kaplans.se/en/auktioner/4125/vara/1863693'),
(6276,'https://www.kaplans.se/en/auktioner/4062/vara/1830363'),
(6139,'https://www.kaplans.se/en/auktioner/4391/vara/2005318'),
(6253,'https://www.kaplans.se/en/auktioner/3674/vara/1603887'),
(6141,'https://www.kaplans.se/en/auktioner/3973/vara/1778227'),
(6142,'https://auctionet.com/en/my/won/3320082-hermes-scarf-rencontre-oceane-siden-designad-av-annie-faivre-2001-motiv-med-fiskar-och-havsanemone-i-rott-mot-ockragul-botten-etikettmarkt-made-in-france-ask-medfoljer'),
(6159,'https://www.kaplans.se/en/auktioner/4601/vara/2048705'),
(6258,'https://www.kaplans.se/en/auktioner/4044/vara/1818388'),
(6027,'https://www.kaplans.se/en/auktioner/3872/vara/1725395'),
(6147,'https://www.kaplans.se/en/auktioner/4341/vara/1988429'),
(6282,'https://www.kaplans.se/en/auktioner/4171/vara/1883715'),
(6055,'https://www.metropol.se/auctions/bildshow/default.asp?OG={46637C34-4C76-4A35-A074-9E9819C36E87}&extra={C130B881-9205-4084-BACA-6D17EE193843}&extrapos=2'),
(6149,'https://www.metropol.se/auctions/bildshow/default.asp?OG={46637C34-4C76-4A35-A074-9E9819C36E87}&extra={88707ED3-B206-48B6-8908-E6CFE5172A6F}&ticket=141212'),
(6025,'https://www.kaplans.se/en/auktioner/3894/vara/1734562'),
(6333,'https://poupishop.com/products/hermes-2007-lilas-litterature-by-a-m-cassandre-twill-silk-90cm-mint?srsltid=AfmBOopeoNP0Jrpd_L4fzbwnb6IUTkfI_rIoxFLirSqAZ-SY0a-XxKpg'),
(6107,'https://www.kaplans.se/en/auktioner/3923/vara/1761308'),
(5842,'https://www.facebook.com/MaisonCarre/'),
(6335,'https://www.kaplans.se/en/auktioner/4171/vara/1883715'),
(6346,'https://www.facebook.com/Hermes.Scarf.Guides/');
/*!40000 ALTER TABLE `field_h_aw_url` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_aw_year`
--

DROP TABLE IF EXISTS `field_h_aw_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_aw_year` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_year`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_aw_year` WRITE;
/*!40000 ALTER TABLE `field_h_aw_year` DISABLE KEYS */;
INSERT INTO `field_h_aw_year` VALUES
(5845,'1938'),
(5846,'2018'),
(5847,'1984/1990'),
(5848,''),
(5849,'1965/1980'),
(5850,'1957/1967/2009'),
(5851,'1992'),
(5852,'1998'),
(5965,'1954/1992'),
(5966,'1970/1981'),
(5969,'2012'),
(5974,'1997'),
(5975,'1964'),
(5976,'1988/1991'),
(5977,'1970/1987'),
(5979,'1997'),
(5980,'1982/1992/2012'),
(5981,'1993'),
(5982,'1993'),
(5984,'1965/1980/2010'),
(5985,'1979/1997/2011'),
(5986,'1964'),
(5987,'1994'),
(5988,'1997'),
(5989,'1963'),
(5990,'1974/1989'),
(5991,'1969'),
(5993,'1964/1990'),
(5994,'1946/1998'),
(5995,'2017'),
(5998,'2013/2014'),
(5999,'1967'),
(6000,'1966/1991/1997'),
(6001,'1990/1993'),
(6002,'1985/1998'),
(6005,'2003'),
(6013,''),
(6014,''),
(6016,''),
(6024,'2004'),
(6025,'1991/1997/2000'),
(6026,'1993/1997'),
(6027,'1987/1990/2000'),
(6028,'2020'),
(6029,'2002'),
(6030,'2011'),
(6031,'1958'),
(6320,'1982/1992/2012'),
(6033,'1992'),
(5844,'2003'),
(6034,'1996/2000'),
(6035,'1977/1981'),
(6036,'1957'),
(6037,'2009/2012'),
(6038,'1957/1970/2002'),
(6039,'1973'),
(6040,'1981'),
(6041,'1984'),
(6042,'1970/1985'),
(6043,'1991'),
(6044,'1986'),
(6045,'1963/1985'),
(6046,'1965/1983'),
(6047,'2017'),
(6048,'1960/1981'),
(6049,'1974'),
(6050,'1953/1964'),
(6051,'1965/1970'),
(6052,'1953/1990'),
(6053,'1970/1993'),
(6054,'1991'),
(6055,'1978'),
(6056,'1984/2012'),
(6057,'1968/1989'),
(6058,'1996/2001'),
(6059,'1974/1981'),
(6060,'1979'),
(6061,'1989/1990'),
(6062,'1991'),
(6063,'1968/1990'),
(6064,'1987/1990'),
(6065,'1996'),
(6066,'1992/1995'),
(6068,'2009'),
(6069,'2016'),
(6070,'1969'),
(6071,'1986'),
(6072,'1994'),
(6073,'1996'),
(6094,'2020'),
(6079,'2005'),
(6080,'2008'),
(6081,'2005'),
(6082,'2007/2020'),
(6319,'1965/1980'),
(6084,'1989'),
(6085,'2007/2009'),
(6086,'1965'),
(6088,'2024'),
(6089,'2018'),
(6091,'2013'),
(6092,'2000'),
(6093,'2015'),
(6096,'2020'),
(6098,'2000'),
(6099,'1970'),
(6101,'1987'),
(6102,'1985'),
(6103,'2017'),
(6104,'2012'),
(6105,'2008'),
(6107,'2010'),
(6196,'2004'),
(6112,'2001'),
(6114,'2022'),
(6115,'2015'),
(6117,'2004/2013'),
(6118,'2021'),
(6120,'2002'),
(6121,'1963'),
(6122,'2022'),
(6124,'2016'),
(6125,'2013'),
(6126,'2019/2021'),
(6127,'2020'),
(6128,'2018'),
(6130,'2000'),
(6132,'2025'),
(6133,'2012'),
(6135,'2010'),
(6136,'1973'),
(6137,'1999'),
(6139,'2019'),
(6141,'1972/1977/2002'),
(6142,'2001'),
(6143,'1984'),
(6144,'1998'),
(6147,'2003'),
(6148,'1998'),
(6149,'1979/1981'),
(6159,'2016'),
(6179,'2018'),
(6314,'1991'),
(6272,'2018'),
(6318,'1965/1980'),
(6276,'1982/2017'),
(6348,'2024'),
(6308,'2005'),
(6282,'2009'),
(6347,'2024'),
(6317,'1988/1991'),
(6321,'1974/1989'),
(6322,'1990/1993'),
(6323,'1953/1964'),
(6324,'1963'),
(6325,'1963'),
(6333,'1952'),
(6332,'1970'),
(6335,'2007'),
(6349,'2024'),
(6350,'2024'),
(6358,'2022');
/*!40000 ALTER TABLE `field_h_aw_year` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_br_duty`
--

DROP TABLE IF EXISTS `field_h_br_duty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_br_duty` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_br_duty`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_br_duty` WRITE;
/*!40000 ALTER TABLE `field_h_br_duty` DISABLE KEYS */;
INSERT INTO `field_h_br_duty` VALUES
(5835,1,0),
(5836,1,0),
(5837,1,0),
(5838,1,0),
(5839,1,0),
(5840,1,0),
(5841,1,0),
(6006,1,0),
(6008,1,0),
(6011,1,0),
(6015,1,0),
(6172,1,0),
(6171,1,0);
/*!40000 ALTER TABLE `field_h_br_duty` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_br_url`
--

DROP TABLE IF EXISTS `field_h_br_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_br_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_br_url`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_br_url` WRITE;
/*!40000 ALTER TABLE `field_h_br_url` DISABLE KEYS */;
INSERT INTO `field_h_br_url` VALUES
(5835,'https://ru.wikipedia.org/wiki/Hermès'),
(5836,'https://www.ferragamo.com/shop/fra/fr/femmes/Accessoires/foulards'),
(5837,'http://www.tiffany.com/?siteid=1'),
(5838,'https://us.vestiairecollective.com/women-accessories/scarves/nina-ricci/'),
(5839,'http://www.baume-et-mercier.com/en/home.html'),
(6172,'https://www.rado.com/'),
(6171,'https://www.omegawatches.com/'),
(6011,'https://www.kenzo.com/'),
(6015,'https://www.ysl.com/'),
(6006,'https://www.chanel.com/'),
(6008,'https://www.gucci.com/'),
(5840,'https://eu.lanvin.com/'),
(5841,'https://www.dior.com/');
/*!40000 ALTER TABLE `field_h_br_url` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_c_person`
--

DROP TABLE IF EXISTS `field_h_c_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_c_person` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_c_person`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_c_person` WRITE;
/*!40000 ALTER TABLE `field_h_c_person` DISABLE KEYS */;
INSERT INTO `field_h_c_person` VALUES
(5842,5796,0),
(6331,6109,1),
(6331,6177,0);
/*!40000 ALTER TABLE `field_h_c_person` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_p_artwork`
--

DROP TABLE IF EXISTS `field_h_p_artwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_p_artwork` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_p_artwork`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_p_artwork` WRITE;
/*!40000 ALTER TABLE `field_h_p_artwork` DISABLE KEYS */;
INSERT INTO `field_h_p_artwork` VALUES
(5854,5844,0),
(5855,5847,0),
(5856,5851,0);
/*!40000 ALTER TABLE `field_h_p_artwork` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_p_currency`
--

DROP TABLE IF EXISTS `field_h_p_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_p_currency` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_p_currency`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_p_currency` WRITE;
/*!40000 ALTER TABLE `field_h_p_currency` DISABLE KEYS */;
INSERT INTO `field_h_p_currency` VALUES
(5854,1,0),
(5855,1,0),
(5856,1,0);
/*!40000 ALTER TABLE `field_h_p_currency` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_p_date`
--

DROP TABLE IF EXISTS `field_h_p_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_p_date` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_p_date`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_p_date` WRITE;
/*!40000 ALTER TABLE `field_h_p_date` DISABLE KEYS */;
INSERT INTO `field_h_p_date` VALUES
(5854,'2003-05-04 00:00:00'),
(5855,'2018-04-28 00:00:00'),
(5856,'2017-10-05 00:00:00');
/*!40000 ALTER TABLE `field_h_p_date` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_p_object_number`
--

DROP TABLE IF EXISTS `field_h_p_object_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_p_object_number` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_p_object_number`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_p_object_number` WRITE;
/*!40000 ALTER TABLE `field_h_p_object_number` DISABLE KEYS */;
INSERT INTO `field_h_p_object_number` VALUES
(5855,1044067),
(5856,486156);
/*!40000 ALTER TABLE `field_h_p_object_number` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_p_person`
--

DROP TABLE IF EXISTS `field_h_p_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_p_person` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_p_person`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_p_person` WRITE;
/*!40000 ALTER TABLE `field_h_p_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_h_p_person` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_p_price_final`
--

DROP TABLE IF EXISTS `field_h_p_price_final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_p_price_final` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_p_price_final`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_p_price_final` WRITE;
/*!40000 ALTER TABLE `field_h_p_price_final` DISABLE KEYS */;
INSERT INTO `field_h_p_price_final` VALUES
(5855,2300),
(5856,2000);
/*!40000 ALTER TABLE `field_h_p_price_final` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_p_price_start`
--

DROP TABLE IF EXISTS `field_h_p_price_start`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_p_price_start` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_p_price_start`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_p_price_start` WRITE;
/*!40000 ALTER TABLE `field_h_p_price_start` DISABLE KEYS */;
INSERT INTO `field_h_p_price_start` VALUES
(5855,2000),
(5856,1500);
/*!40000 ALTER TABLE `field_h_p_price_start` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_p_seller`
--

DROP TABLE IF EXISTS `field_h_p_seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_p_seller` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_p_seller`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_p_seller` WRITE;
/*!40000 ALTER TABLE `field_h_p_seller` DISABLE KEYS */;
INSERT INTO `field_h_p_seller` VALUES
(5854,5828,0),
(5855,5830,0),
(5856,5832,0);
/*!40000 ALTER TABLE `field_h_p_seller` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_s_address`
--

DROP TABLE IF EXISTS `field_h_s_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_s_address` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text DEFAULT NULL,
  `data5754` text DEFAULT NULL,
  `data5755` text DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_s_address`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_s_address` WRITE;
/*!40000 ALTER TABLE `field_h_s_address` DISABLE KEYS */;
INSERT INTO `field_h_s_address` VALUES
(5829,'','Genève','',''),
(5830,'Stockholm','Стокгольм','Stockholm','Stockholm'),
(5831,'','','',''),
(5832,'','','',''),
(5833,'','','',''),
(6162,'','','',''),
(6284,'','','',''),
(6285,'','','',''),
(6294,'','','',''),
(6359,'','','','');
/*!40000 ALTER TABLE `field_h_s_address` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_h_s_url`
--

DROP TABLE IF EXISTS `field_h_s_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_h_s_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_s_url`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_h_s_url` WRITE;
/*!40000 ALTER TABLE `field_h_s_url` DISABLE KEYS */;
INSERT INTO `field_h_s_url` VALUES
(5830,'https://www.bukowskis.com/'),
(5829,'https://www.geneve.ch/marche-plainpalais'),
(5832,'https://www.auktionsverket.com/en/'),
(5833,'https://www.stadsmissionen.se'),
(5831,'https://www.myrorna.se'),
(6162,'https://www.kaplans.se/'),
(6284,'https://www.beyondretro.com/pages/store-locator-zinken'),
(6285,'https://www.metropol.se/start/Default.asp'),
(6294,'https://www.popstockholm.se/'),
(6359,'https://hopcash.ch/');
/*!40000 ALTER TABLE `field_h_s_url` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_images`
--

DROP TABLE IF EXISTS `field_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ratio` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  KEY `width` (`width`),
  KEY `height` (`height`),
  KEY `ratio` (`ratio`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_images`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_images` WRITE;
/*!40000 ALTER TABLE `field_images` DISABLE KEYS */;
INSERT INTO `field_images` VALUES
(5900,'1457361855.jpg',0,'[\"\"]','2025-11-07 12:54:23','2025-11-07 12:54:23','',324021,41,41,1600,883,1.81),
(5795,'1731018441931.jpg',0,'[null]','2025-11-11 11:47:02','2025-11-11 11:47:02','',129525,41,41,800,800,1.00),
(6109,'portret_van_a__m__cassandre_in_rijksacademie_in_amsterdam-_1967.jpg',0,'[null]','2025-11-09 00:10:20','2025-11-09 00:10:20','{\"uploadName\":\"Portret_van_A._M._Cassandre_in_Rijksacademie_in_Amsterdam,_1967.jpg\"}',91857,41,41,500,680,0.74),
(6106,'image-asset.jpeg',0,'[\"\"]','2025-11-07 17:43:28','2025-11-07 17:43:28','',95101,41,41,1117,744,1.50),
(5988,'a7e011bb-52a6-4394-854d-1d06bfb242c5.jpg',0,'[\"\"]','2025-12-10 02:42:35','2025-12-10 02:42:35','',114203,41,41,610,610,1.00),
(5841,'dior.png',1,'[null]','2025-11-19 14:11:02','2025-11-19 14:11:02','',1680,41,41,149,148,1.01),
(5841,'christian_dior_1954.jpg',0,'[\"\"]','2025-11-08 09:13:39','2025-11-08 09:13:39','{\"uploadName\":\"Christian_Dior_1954.jpg\"}',709158,41,41,1280,1145,1.12),
(6286,'untitled-1.jpg',1,'[\"\"]','2025-12-17 16:40:00','2025-12-17 16:40:00','{\"uploadName\":\"Untitled.jpg\"}',2034809,41,41,2500,2498,1.00),
(5959,'images.jpg',2,'[\"\"]','2025-12-18 19:12:06','2025-12-18 19:12:06','',13223,41,41,180,280,0.64),
(5789,'v.jpg',2,'[\"\"]','2020-10-21 18:13:33','2020-10-21 18:13:33','',1137641,0,0,1817,572,3.18),
(5857,'a_spot-3.jpg',0,'[\"\"]','2020-10-19 11:43:11','2020-10-19 11:43:11','',1091526,0,0,2196,887,2.48),
(5792,'christiane_vauzelles.jpg',0,'[\"\"]','2020-09-13 15:20:42','2020-09-13 15:20:42','',NULL,0,0,NULL,NULL,NULL),
(5793,'cathy_latham-audibert.jpg',0,'[\"\"]','2020-09-13 15:20:42','2020-09-13 15:20:42','',NULL,0,0,NULL,NULL,NULL),
(5794,'evgeniia_miroshnichenko_miro.jpg',0,'[\"\"]','2020-09-13 15:20:43','2020-09-13 15:20:43','',NULL,0,0,NULL,NULL,NULL),
(6161,'nr.jpg',0,'[null]','2025-11-11 15:43:17','2025-11-11 15:43:17','{\"uploadName\":\"NR.jpg\"}',18623,41,41,336,441,0.76),
(5796,'aleksandr_tcybin.png',0,'[\"\"]','2020-09-13 15:20:44','2020-09-13 15:20:44','',NULL,0,0,NULL,NULL,NULL),
(5797,'vladimir_rybalchenko.jpg',0,'[\"\"]','2020-09-13 15:20:44','2020-09-13 15:20:44','',NULL,0,0,NULL,NULL,NULL),
(5798,'hugo_grygkar.png',0,'[\"\"]','2020-09-13 15:20:45','2020-09-13 15:20:45','',NULL,0,0,NULL,NULL,NULL),
(5799,'philippe_ledoux.png',0,'[\"\"]','2020-09-13 15:20:45','2020-09-13 15:20:45','',NULL,0,0,NULL,NULL,NULL),
(5800,'loic_dubigeon.jpg',0,'[\"\"]','2020-09-13 15:20:46','2020-09-13 15:20:46','',NULL,0,0,NULL,NULL,NULL),
(5801,'margo__.jpeg',0,'[\"\"]','2020-09-13 15:20:46','2020-09-13 15:20:46','',NULL,0,0,NULL,NULL,NULL),
(5803,'michel_duchene.jpg',0,'[\"\"]','2020-09-13 15:20:47','2020-09-13 15:20:47','',NULL,0,0,NULL,NULL,NULL),
(5804,'cyrille_diatkine.png',0,'[\"\"]','2020-09-13 15:20:47','2020-09-13 15:20:47','',NULL,0,0,NULL,NULL,NULL),
(6168,'8977-2048x1455.jpg',0,'[\"\"]','2026-01-15 16:21:54','2026-01-15 16:21:54','',170447,41,41,2048,1455,1.41),
(5811,'s-l1600.jpg',3,'[\"\"]','2020-09-14 11:39:10','2020-09-14 11:39:10','',291205,0,0,1416,900,1.57),
(5808,'henri_de_linares.png',0,'[\"\"]','2020-09-13 15:20:48','2020-09-13 15:20:48','',NULL,0,0,NULL,NULL,NULL),
(5809,'joachim_metz.jpg',0,'[\"\"]','2020-09-13 15:20:49','2020-09-13 15:20:49','',NULL,0,0,NULL,NULL,NULL),
(5810,'daphne_duchesne.jpg',0,'[\"\"]','2020-09-13 15:20:49','2020-09-13 15:20:49','',NULL,0,0,NULL,NULL,NULL),
(5812,'bali_barret.jpg',0,'[\"\"]','2020-09-13 15:20:50','2020-09-13 15:20:50','',NULL,0,0,NULL,NULL,NULL),
(5813,'benoit_pierre_emery.png',0,'[\"\"]','2020-09-13 15:20:50','2020-09-13 15:20:50','',NULL,0,0,NULL,NULL,NULL),
(5814,'francoise_heron.jpg',0,'[\"\"]','2020-09-13 15:20:51','2020-09-13 15:20:51','',NULL,0,0,NULL,NULL,NULL),
(5815,'catherine_baschet.jpg',0,'[\"\"]','2020-09-13 15:20:51','2020-09-13 15:20:51','',NULL,0,0,NULL,NULL,NULL),
(5816,'laurence_bourthoumieux.png',0,'[\"\"]','2020-09-13 15:20:51','2020-09-13 15:20:51','',NULL,0,0,NULL,NULL,NULL),
(5817,'antoine_de_jacquelot.jpg',0,'[\"\"]','2020-09-13 15:20:52','2020-09-13 15:20:52','',NULL,0,0,NULL,NULL,NULL),
(5818,'alice_shirley.jpg',0,'[\"\"]','2020-09-13 15:20:52','2020-09-13 15:20:52','',NULL,0,0,NULL,NULL,NULL),
(5805,'jean_de_fougerolle.jpg',1,'[\"\"]','2020-09-13 15:20:48','2020-09-13 15:20:48','',384883,0,0,900,900,1.00),
(5820,'pierre-alexis_dumas.png',0,'[\"\"]','2020-09-13 15:20:53','2020-09-13 15:20:53','',NULL,0,0,NULL,NULL,NULL),
(5822,'annie_faivre.jpg',0,'[\"\"]','2020-09-13 15:20:53','2020-09-13 15:20:53','',NULL,0,0,NULL,NULL,NULL),
(5823,'thierry_hermes.png',0,'[\"\"]','2020-09-13 15:20:54','2020-09-13 15:20:54','',NULL,0,0,NULL,NULL,NULL),
(5824,'robert_dumas.jpg',0,'[\"\"]','2020-09-13 15:20:54','2020-09-13 15:20:54','',NULL,0,0,NULL,NULL,NULL),
(5825,'emile_maurice_hermes.jpg',0,'[\"\"]','2020-09-13 15:20:54','2020-09-13 15:20:54','',NULL,0,0,NULL,NULL,NULL),
(5826,'charles-emile_hermes.png',0,'[\"\"]','2020-09-13 15:20:55','2020-09-13 15:20:55','',NULL,0,0,NULL,NULL,NULL),
(5828,'gifts.jpg',0,'[\"\"]','2020-09-13 15:20:55','2020-09-13 15:20:55','',NULL,0,0,NULL,NULL,NULL),
(5829,'marche_de_plainpalais.jpg',0,'[\"\"]','2020-09-13 15:20:55','2020-09-13 15:20:55','',NULL,0,0,NULL,NULL,NULL),
(5830,'bukowskis.gif',0,'[\"\"]','2020-09-13 15:20:56','2020-09-13 15:20:56','',NULL,0,0,NULL,NULL,NULL),
(5831,'myrorna.png',0,'[\"\"]','2020-09-13 15:20:56','2020-09-13 15:20:56','',NULL,0,0,NULL,NULL,NULL),
(5833,'stockholms_stadsmission.png',0,'[\"\"]','2020-09-13 15:20:56','2020-09-13 15:20:56','',NULL,0,0,NULL,NULL,NULL),
(5835,'hermes.png',0,'[\"\"]','2020-09-13 15:20:57','2020-09-13 15:20:57','',NULL,0,0,NULL,NULL,NULL),
(5836,'salvatore-ferragamo_102-profile.jpg',2,'[\"\"]','2020-09-23 19:54:19','2020-09-23 19:54:19','',NULL,0,0,NULL,NULL,NULL),
(5837,'tiffany.png',0,'[\"\"]','2020-09-13 15:20:57','2020-09-13 15:20:57','',NULL,0,0,NULL,NULL,NULL),
(5838,'nina_ricci.png',0,'[\"\"]','2020-09-13 15:20:58','2020-09-13 15:20:58','',NULL,0,0,NULL,NULL,NULL),
(5839,'paul_mercier_william_baume.jpg',1,'[\"\"]','2020-09-23 19:39:05','2020-09-23 19:39:05','',NULL,0,0,NULL,NULL,NULL),
(5840,'520px-dufau_portrait_de_jeanne_lanvin.jpg',1,'[\"\"]','2020-10-02 16:37:04','2020-10-02 16:37:04','',NULL,0,0,NULL,NULL,NULL),
(5842,'kollektciia_tcybinykh.jpg',0,'[\"\"]','2020-09-13 15:20:59','2020-09-13 15:20:59','',NULL,0,0,NULL,NULL,NULL),
(5844,'2edda09d-30e2-4383-a03d-e91d8c2d962a_1_201_a.jpeg',0,'[\"\"]','2020-09-14 19:36:51','2020-09-14 19:36:51','',NULL,0,0,NULL,NULL,NULL),
(5845,'astrologicheskii_atlas_zvezdnogo_neba_000201.jpg',0,'[\"\"]','2020-09-13 15:21:00','2020-09-13 15:21:00','',NULL,0,0,NULL,NULL,NULL),
(5846,'jeu_de_omnibus_et_dameblanche_000204.jpg',0,'[\"\"]','2020-09-13 15:21:00','2020-09-13 15:21:00','',NULL,0,0,NULL,NULL,NULL),
(5847,'les_folies_du_ciel_000230.jpg',1,'[\"\"]','2020-09-13 15:21:01','2020-09-13 15:21:01','',NULL,0,0,NULL,NULL,NULL),
(5847,'les_folies_du_ciel_000229.jpg',0,'[\"\"]','2020-09-13 15:21:01','2020-09-13 15:21:01','',NULL,0,0,NULL,NULL,NULL),
(5847,'les_folies_du_ciel_000231.jpg',2,'[\"\"]','2020-09-13 15:21:01','2020-09-13 15:21:01','',NULL,0,0,NULL,NULL,NULL),
(5848,'art_object_000275.jpg',0,'[\"\"]','2020-09-13 15:21:01','2020-09-13 15:21:01','',3530667,0,0,4000,3000,1.33),
(6005,'b4a1bc6a-be2a-4201-92ed-d4f0c33b6057.jpeg',0,'[null]','2020-09-18 17:54:55','2020-09-18 17:54:55','',NULL,0,0,NULL,NULL,NULL),
(5852,'art_object_002287.jpg',0,'[\"\"]','2020-09-13 15:21:03','2020-09-13 15:21:03','',NULL,0,0,NULL,NULL,NULL),
(5859,'rembrandt_.jpg',0,'[\"\"]','2020-09-13 15:21:09','2020-09-13 15:21:09','',NULL,0,0,NULL,NULL,NULL),
(5863,'jan_van_eyck.jpg',0,'[\"\"]','2020-09-13 15:21:10','2020-09-13 15:21:10','',NULL,0,0,NULL,NULL,NULL),
(5862,'gollandskaia_shkola.jpg',0,'[\"\"]','2020-09-13 15:21:10','2020-09-13 15:21:10','',NULL,0,0,NULL,NULL,NULL),
(5866,'valentin_de_boulogne.jpg',0,'[\"\"]','2020-09-13 15:21:11','2020-09-13 15:21:11','',NULL,0,0,NULL,NULL,NULL),
(5865,'flemish_school.jpg',0,'[\"\"]','2020-09-13 15:21:11','2020-09-13 15:21:11','',NULL,0,0,NULL,NULL,NULL),
(5867,'',0,'[\"\"]','2020-09-13 15:21:12','2020-09-13 15:21:12','',NULL,0,0,NULL,NULL,NULL),
(5868,'raffaele_frigerio.jpg',0,'[\"\"]','2020-09-13 15:21:12','2020-09-13 15:21:12','',NULL,0,0,NULL,NULL,NULL),
(5869,'viacheslav.jpg',0,'[\"\"]','2020-09-13 15:21:12','2020-09-13 15:21:12','',NULL,0,0,NULL,NULL,NULL),
(5875,'abrakham_stork.jpg',0,'[\"\"]','2020-09-13 15:21:15','2020-09-13 15:21:15','',NULL,0,0,NULL,NULL,NULL),
(5871,'christer_edwardson_schmiterlow.jpg',0,'[\"\"]','2020-09-13 15:21:13','2020-09-13 15:21:13','',NULL,0,0,NULL,NULL,NULL),
(5872,'a__collomb.jpg',0,'[\"\"]','2020-09-13 15:21:13','2020-09-13 15:21:13','',NULL,0,0,NULL,NULL,NULL),
(5873,'l__vilardi.jpg',0,'[\"\"]','2020-09-13 15:21:14','2020-09-13 15:21:14','',NULL,0,0,NULL,NULL,NULL),
(5874,'salomon_de_koninck.jpg',0,'[\"\"]','2020-09-13 15:21:14','2020-09-13 15:21:14','',NULL,0,0,NULL,NULL,NULL),
(5877,'peter_joseph_minjon.jpg',0,'[\"\"]','2020-09-13 15:21:16','2020-09-13 15:21:16','',NULL,0,0,NULL,NULL,NULL),
(5878,'untitled.png',0,'[\"\"]','2026-01-23 10:47:28','2026-01-23 10:47:28','{\"uploadName\":\"Untitled.png\"}',491723,41,41,493,457,1.08),
(5879,'basil_samoilov.png',0,'[\"\"]','2020-09-13 15:21:16','2020-09-13 15:21:16','',NULL,0,0,NULL,NULL,NULL),
(5880,'andries_vermeulen.png',0,'[\"\"]','2020-09-13 15:21:17','2020-09-13 15:21:17','',NULL,0,0,NULL,NULL,NULL),
(5882,'haik_mhitaryan.png',0,'[\"\"]','2020-09-13 15:21:18','2020-09-13 15:21:18','',NULL,0,0,NULL,NULL,NULL),
(5883,'abraham_teniers.png',0,'[\"\"]','2020-09-13 15:21:18','2020-09-13 15:21:18','',NULL,0,0,NULL,NULL,NULL),
(5885,'david_teniers_the_younger.png',0,'[\"\"]','2020-09-13 15:21:19','2020-09-13 15:21:19','',NULL,0,0,NULL,NULL,NULL),
(5887,'',0,'[\"\"]','2020-09-13 15:21:20','2020-09-13 15:21:20','',NULL,0,0,NULL,NULL,NULL),
(5892,'marcel_genay.jpg',0,'[\"\"]','2020-09-13 15:21:22','2020-09-13 15:21:22','',NULL,0,0,NULL,NULL,NULL),
(5889,'unknown_dutch_artist.png',0,'[\"\"]','2020-09-13 15:21:20','2020-09-13 15:21:20','',NULL,0,0,NULL,NULL,NULL),
(5891,'unknown_flemish_artist.png',0,'[\"\"]','2020-09-13 15:21:21','2020-09-13 15:21:21','',NULL,0,0,NULL,NULL,NULL),
(5894,'bukowski_auktioner.png',0,'[\"\"]','2020-09-13 15:21:22','2020-09-13 15:21:22','',NULL,0,0,NULL,NULL,NULL),
(5895,'metropol_auktioner.png',0,'[\"\"]','2020-09-13 15:21:22','2020-09-13 15:21:22','',NULL,0,0,NULL,NULL,NULL),
(5896,'own.png',0,'[\"\"]','2020-09-13 15:21:23','2020-09-13 15:21:23','',NULL,0,0,NULL,NULL,NULL),
(5897,'uppsala_auktionskammare.png',0,'[\"\"]','2020-09-13 15:21:23','2020-09-13 15:21:23','',NULL,0,0,NULL,NULL,NULL),
(5898,'stockholms_auktionsverk.png',0,'[\"\"]','2020-09-13 15:21:23','2020-09-13 15:21:23','',NULL,0,0,NULL,NULL,NULL),
(6162,'logo.gif',0,'[null]','2025-11-12 22:24:44','2025-11-12 22:24:44','',5580,41,41,474,184,2.58),
(5901,'unknown_collection.jpg',0,'[\"\"]','2020-09-13 15:21:24','2020-09-13 15:21:24','',NULL,0,0,NULL,NULL,NULL),
(5903,'',0,'[\"\"]','2020-09-13 15:21:25','2020-09-13 15:21:25','',NULL,0,0,NULL,NULL,NULL),
(5904,'louvre.jpg',0,'[\"\"]','2020-09-13 15:21:25','2020-09-13 15:21:25','',NULL,0,0,NULL,NULL,NULL),
(5905,'lost_auctions.jpg',0,'[\"\"]','2020-09-13 15:21:25','2020-09-13 15:21:25','',NULL,0,0,NULL,NULL,NULL),
(5907,'000022.jpg',0,'[\"\"]','2020-09-13 15:21:26','2020-09-13 15:21:26','',117750,0,0,1127,760,1.48),
(5908,'000025.jpg',0,'[\"\"]','2020-09-13 15:21:26','2020-09-13 15:21:26','',NULL,0,0,NULL,NULL,NULL),
(6358,'hermes-carre-90-robe-legere-2.jpg',1,'[\"\"]','2026-02-02 17:06:25','2026-02-02 17:06:25','',161351,41,41,800,800,1.00),
(5909,'untitled_2.png',3,'[\"\"]','2026-01-21 14:35:07','2026-01-21 14:35:07','{\"uploadName\":\"Untitled 2.png\"}',1998240,41,41,1250,730,1.71),
(5910,'card-sharpers_002932.jpg',0,'[\"\"]','2020-09-13 15:21:27','2020-09-13 15:21:27','',2411906,0,0,2000,1300,1.54),
(5910,'card-sharpers_002920.jpg',1,'[\"\"]','2020-09-13 15:21:27','2020-09-13 15:21:27','',8443150,0,0,3000,2587,1.16),
(5910,'card-sharpers_002921.jpg',2,'[\"\"]','2020-09-13 15:21:27','2020-09-13 15:21:27','',8187413,0,0,3000,2549,1.18),
(5911,'000043.jpg',2,'[\"\"]','2020-09-13 15:21:28','2020-09-13 15:21:28','',1005972,0,0,3000,2389,1.26),
(5911,'000044.jpg',3,'[\"\"]','2020-09-13 15:21:28','2020-09-13 15:21:28','',1376215,0,0,3000,2383,1.26),
(5912,'000050.jpg',1,'[\"\"]','2020-09-13 15:21:28','2020-09-13 15:21:28','',NULL,0,0,NULL,NULL,NULL),
(5912,'000049.jpg',0,'[\"\"]','2020-09-13 15:21:28','2020-09-13 15:21:28','',NULL,0,0,NULL,NULL,NULL),
(5912,'in_the_sea_1_002289.png',2,'[\"\"]','2020-09-13 15:21:28','2020-09-13 15:21:28','',NULL,0,0,NULL,NULL,NULL),
(5912,'in_the_sea_1_002290.png',3,'[\"\"]','2020-09-13 15:21:28','2020-09-13 15:21:28','',NULL,0,0,NULL,NULL,NULL),
(5913,'depo.jpg',3,'[\"\"]','2020-09-13 15:21:29','2020-09-13 15:21:29','',672822,0,0,1275,1650,0.77),
(5911,'000042.jpg',1,'[\"\"]','2020-09-13 15:21:28','2020-09-13 15:21:28','',1753482,0,0,3000,2454,1.22),
(5923,'philosopher_with_an_open_book_002937.jpg',0,'[\"\"]','2025-12-23 18:39:27','2025-12-23 18:39:27','',1981425,41,41,1419,1544,0.92),
(5914,'untitled-1.jpg',3,'[\"\"]','2026-01-09 13:12:59','2026-01-09 13:12:59','{\"uploadName\":\"Untitled.jpg\"}',11424,41,41,221,124,1.78),
(5915,'a_boor_playing_a_lute_002952.jpg',0,'[\"\"]','2020-09-13 15:21:30','2020-09-13 15:21:30','',NULL,0,0,NULL,NULL,NULL),
(5915,'a_boor_playing_a_lute_in_an_002954.jpg',1,'[\"\"]','2020-09-13 15:21:30','2020-09-13 15:21:30','',NULL,0,0,NULL,NULL,NULL),
(5916,'puteshestvie_v_iaponiiu_000146.jpg',1,'[\"\"]','2020-09-13 15:21:30','2020-09-13 15:21:30','',1087284,0,0,2519,3439,0.73),
(5916,'puteshestvie_v_iaponiiu_000145.jpg',0,'[\"\"]','2020-09-13 15:21:30','2020-09-13 15:21:30','',870242,0,0,1763,2655,0.66),
(5917,'juuls_bastion_000141.jpg',0,'[\"\"]','2020-09-13 15:21:31','2020-09-13 15:21:31','',NULL,0,0,NULL,NULL,NULL),
(5918,'000114.jpg',0,'[\"\"]','2020-09-13 15:21:31','2020-09-13 15:21:31','',NULL,0,0,NULL,NULL,NULL),
(5919,'000128.jpg',0,'[\"\"]','2020-09-13 15:21:31','2020-09-13 15:21:31','',NULL,0,0,NULL,NULL,NULL),
(5919,'000129.jpg',1,'[\"\"]','2020-09-13 15:21:31','2020-09-13 15:21:31','',NULL,0,0,NULL,NULL,NULL),
(5920,'000134.jpg',1,'[\"\"]','2020-09-13 15:21:32','2020-09-13 15:21:32','',NULL,0,0,NULL,NULL,NULL),
(5920,'000133.jpg',0,'[\"\"]','2020-09-13 15:21:32','2020-09-13 15:21:32','',NULL,0,0,NULL,NULL,NULL),
(5920,'000135.jpg',2,'[\"\"]','2020-09-13 15:21:32','2020-09-13 15:21:32','',NULL,0,0,NULL,NULL,NULL),
(5921,'butterfly_000150.png',0,'[\"\"]','2020-09-13 15:21:32','2020-09-13 15:21:32','',NULL,0,0,NULL,NULL,NULL),
(5921,'butterfly_000151.jpg',1,'[\"\"]','2020-09-13 15:21:32','2020-09-13 15:21:32','',NULL,0,0,NULL,NULL,NULL),
(5922,'the_philosopher_in_meditation_000154.jpg',0,'[\"\"]','2020-09-13 15:21:33','2020-09-13 15:21:33','',NULL,0,0,NULL,NULL,NULL),
(5916,'depo.jpg',2,'[\"\"]','2020-09-13 15:21:30','2020-09-13 15:21:30','',398040,0,0,1275,1650,0.77),
(5821,'384342.jpg',2,'[\"\"]','2025-12-25 00:14:05','2025-12-25 00:14:05','',53339,41,41,1250,834,1.50),
(6050,'img_8337.jpeg',0,'[\"\"]','2025-12-24 23:21:13','2025-12-24 23:21:13','{\"uploadName\":\"IMG_8337.jpeg\"}',1177914,41,41,2500,2500,1.00),
(6043,'img_7112.jpeg',0,'[\"\"]','2025-12-16 13:07:33','2025-12-16 13:07:33','{\"uploadName\":\"IMG_7112.jpeg\"}',2059269,41,41,2150,2150,1.00),
(6050,'img_8338.jpeg',1,'[\"\"]','2025-12-24 23:20:13','2025-12-24 23:20:13','{\"uploadName\":\"IMG_8338.jpeg\"}',1667115,41,41,2500,2500,1.00),
(5925,'pastoralnyi_peizazh_000194.jpg',2,'[\"\"]','2020-09-13 15:21:34','2020-09-13 15:21:34','',NULL,0,0,NULL,NULL,NULL),
(5925,'pastoralnyi_peizazh_000193.jpg',1,'[\"\"]','2020-09-13 15:21:34','2020-09-13 15:21:34','',NULL,0,0,NULL,NULL,NULL),
(5925,'pastoralt_landskap_000191.jpg',0,'[\"\"]','2020-09-13 15:21:34','2020-09-13 15:21:34','',NULL,0,0,NULL,NULL,NULL),
(5925,'pastoralnyi_peizazh_000195.jpg',3,'[\"\"]','2020-09-13 15:21:34','2020-09-13 15:21:34','',NULL,0,0,NULL,NULL,NULL),
(5926,'abraham_storck_000208.jpg',0,'[\"\"]','2020-09-13 15:21:35','2020-09-13 15:21:35','',NULL,0,0,NULL,NULL,NULL),
(5926,'abraham_storck_000209.jpg',1,'[\"\"]','2020-09-13 15:21:35','2020-09-13 15:21:35','',NULL,0,0,NULL,NULL,NULL),
(5927,'winter_000237.jpg',0,'[\"\"]','2020-09-13 15:21:35','2020-09-13 15:21:35','',NULL,0,0,NULL,NULL,NULL),
(5928,'summer_000240.jpg',0,'[\"\"]','2020-09-13 15:21:36','2020-09-13 15:21:36','',NULL,0,0,NULL,NULL,NULL),
(5929,'v_kabake_000267.jpg',0,'[\"\"]','2020-09-13 15:21:36','2020-09-13 15:21:36','',NULL,0,0,NULL,NULL,NULL),
(5929,'v_kabake_000270.jpg',1,'[\"\"]','2020-09-13 15:21:36','2020-09-13 15:21:36','',NULL,0,0,NULL,NULL,NULL),
(5930,'flemish_school.jpg',0,'[\"\"]','2020-09-13 15:21:37','2020-09-13 15:21:37','',NULL,0,0,NULL,NULL,NULL),
(5931,'paris_000279.jpg',0,'[\"\"]','2020-09-13 15:21:37','2020-09-13 15:21:37','',NULL,0,0,NULL,NULL,NULL),
(5932,'vodka_002943.jpg',1,'[\"\"]','2020-09-13 15:21:38','2020-09-13 15:21:38','',NULL,0,0,NULL,NULL,NULL),
(5932,'vodka_002942.jpg',0,'[\"\"]','2020-09-13 15:21:38','2020-09-13 15:21:38','',NULL,0,0,NULL,NULL,NULL),
(5932,'vodka_002944.jpg',2,'[\"\"]','2020-09-13 15:21:38','2020-09-13 15:21:38','',NULL,0,0,NULL,NULL,NULL),
(5933,'winter_002161.jpg',1,'[\"\"]','2020-09-13 15:21:38','2020-09-13 15:21:38','',NULL,0,0,NULL,NULL,NULL),
(5933,'winter_002160.jpg',0,'[\"\"]','2020-09-13 15:21:38','2020-09-13 15:21:38','',NULL,0,0,NULL,NULL,NULL),
(5933,'winter_scene_000296.jpg',2,'[\"\"]','2020-09-13 15:21:38','2020-09-13 15:21:38','',NULL,0,0,NULL,NULL,NULL),
(5934,'__001774.png',0,'[\"\"]','2020-09-13 15:21:39','2020-09-13 15:21:39','',NULL,0,0,NULL,NULL,NULL),
(5935,'in_the_sea_2_002295.jpg',2,'[\"\"]','2020-09-13 15:21:39','2020-09-13 15:21:39','',NULL,0,0,NULL,NULL,NULL),
(5935,'in_the_sea_2_002294.png',1,'[\"\"]','2020-09-13 15:21:39','2020-09-13 15:21:39','',NULL,0,0,NULL,NULL,NULL),
(5935,'in_the_sea_2_002293.jpg',0,'[\"\"]','2020-09-13 15:21:39','2020-09-13 15:21:39','',NULL,0,0,NULL,NULL,NULL),
(5935,'in_the_sea_2_002296.png',3,'[\"\"]','2020-09-13 15:21:39','2020-09-13 15:21:39','',NULL,0,0,NULL,NULL,NULL),
(5936,'cats_002304.jpg',1,'[\"\"]','2020-09-13 15:21:40','2020-09-13 15:21:40','',NULL,0,0,NULL,NULL,NULL),
(5936,'cats_002302.jpg',0,'[\"\"]','2020-09-13 15:21:40','2020-09-13 15:21:40','',NULL,0,0,NULL,NULL,NULL),
(5936,'cats_002305.jpg',2,'[\"\"]','2020-09-13 15:21:40','2020-09-13 15:21:40','',NULL,0,0,NULL,NULL,NULL),
(5937,'the_backgammon_players_002928.jpg',6,'[\"\"]','2020-09-13 15:21:41','2020-09-13 15:21:41','',NULL,0,0,NULL,NULL,NULL),
(5937,'the_backgammon_players_002927.jpg',5,'[\"\"]','2020-09-13 15:21:40','2020-09-13 15:21:40','',NULL,0,0,NULL,NULL,NULL),
(5937,'the_backgammon_players_002926.jpg',4,'[\"\"]','2020-09-13 15:21:40','2020-09-13 15:21:40','',NULL,0,0,NULL,NULL,NULL),
(5937,'the_backgammon_players_002925.jpg',3,'[\"\"]','2020-09-13 15:21:40','2020-09-13 15:21:40','',NULL,0,0,NULL,NULL,NULL),
(5937,'the_backgammon_players_002922.jpg',1,'[\"\"]','2020-09-13 15:21:40','2020-09-13 15:21:40','',NULL,0,0,NULL,NULL,NULL),
(5937,'the_backgammon_players_002923.jpg',2,'[\"\"]','2020-09-13 15:21:40','2020-09-13 15:21:40','',NULL,0,0,NULL,NULL,NULL),
(5937,'backgammonspelarna_002311.jpg',0,'[\"\"]','2020-09-13 15:21:40','2020-09-13 15:21:40','',NULL,0,0,NULL,NULL,NULL),
(5937,'the_backgammon_players_002929.jpg',7,'[\"\"]','2020-09-13 15:21:41','2020-09-13 15:21:41','',NULL,0,0,NULL,NULL,NULL),
(5937,'the_backgammon_players_002930.jpg',8,'[\"\"]','2020-09-13 15:21:41','2020-09-13 15:21:41','',NULL,0,0,NULL,NULL,NULL),
(5938,'the_tric-trac_players_002315.jpg',0,'[\"\"]','2020-09-13 15:21:41','2020-09-13 15:21:41','',NULL,0,0,NULL,NULL,NULL),
(5938,'the_tric-trac_players_002931.jpg',1,'[\"\"]','2020-09-13 15:21:41','2020-09-13 15:21:41','',NULL,0,0,NULL,NULL,NULL),
(5939,'party_002948.jpg',1,'[\"\"]','2020-09-13 15:21:42','2020-09-13 15:21:42','',NULL,0,0,NULL,NULL,NULL),
(5939,'party_002947.jpg',0,'[\"\"]','2020-09-13 15:21:42','2020-09-13 15:21:42','',NULL,0,0,NULL,NULL,NULL),
(5939,'party_002949.jpg',2,'[\"\"]','2020-09-13 15:21:42','2020-09-13 15:21:42','',NULL,0,0,NULL,NULL,NULL),
(5940,'a_boor_playing_a_lute_002952.jpg',0,'[\"\"]','2020-09-13 15:21:42','2020-09-13 15:21:42','',NULL,0,0,NULL,NULL,NULL),
(5940,'a_boor_playing_a_lute_in_an_002954.jpg',1,'[\"\"]','2020-09-13 15:21:42','2020-09-13 15:21:42','',NULL,0,0,NULL,NULL,NULL),
(5961,'shchuka_002867.png',0,'[\"\"]','2020-09-13 15:21:52','2020-09-13 15:21:52','',NULL,0,0,NULL,NULL,NULL),
(5961,'shchuka_002868.png',1,'[\"\"]','2020-09-13 15:21:52','2020-09-13 15:21:52','',NULL,0,0,NULL,NULL,NULL),
(5976,'6c921b097ed48c6803559ed34a819641.jpg',0,'[null]','2020-09-14 10:19:08','2020-09-14 10:19:08','',NULL,0,0,NULL,NULL,NULL),
(5811,'xavier_de_poret.jpg',0,'[\"\"]','2020-09-13 15:20:50','2020-09-13 15:20:50','',111916,0,0,407,528,0.77),
(5844,'25f21a31-5527-41a0-a805-d9cac3042a63_1_105_c.jpeg',1,'[\"\"]','2020-09-14 19:36:18','2020-09-14 19:36:18','',NULL,0,0,NULL,NULL,NULL),
(5851,'hermes_silk_scarf-36_1800x1800.jpg',0,'[\"\"]','2020-09-16 16:08:43','2020-09-16 16:08:43','',NULL,0,0,NULL,NULL,NULL),
(6006,'gabrielle_chanel_en_mariniere.jpg',1,'[\"\"]','2020-09-23 19:08:49','2020-09-23 19:08:49','',NULL,0,0,NULL,NULL,NULL),
(6005,'b4a1bc6a-be2a-4201-92ed-d4f0c33b6057-1.jpeg',1,'[\"\"]','2020-09-19 07:25:47','2020-09-19 07:25:47','',NULL,0,0,NULL,NULL,NULL),
(6006,'coco-chanellogo-suzanne-corbett.jpg',0,'[\"\"]','2020-09-23 19:08:49','2020-09-23 19:08:49','',NULL,0,0,NULL,NULL,NULL),
(5839,'baume-mercier-logo-2.jpg',0,'[\"\"]','2020-09-23 19:33:02','2020-09-23 19:33:02','',NULL,0,0,NULL,NULL,NULL),
(5836,'salvatore_ferrogamo.png',1,'[\"\"]','2020-09-13 15:20:57','2020-09-13 15:20:57','',NULL,0,0,NULL,NULL,NULL),
(5836,'images.png',0,'[\"\"]','2020-09-28 18:48:46','2020-09-28 18:48:46','',NULL,0,0,NULL,NULL,NULL),
(6008,'guccio_gucci_c_1940.jpg',1,'[\"\"]','2020-09-28 19:19:20','2020-09-28 19:19:20','',NULL,0,0,NULL,NULL,NULL),
(6008,'gucci-logo-98-prar-kulasekara.jpg',0,'[\"\"]','2020-09-28 19:20:30','2020-09-28 19:20:30','',NULL,0,0,NULL,NULL,NULL),
(5840,'lanvin.png',0,'[\"\"]','2020-09-13 15:20:58','2020-09-13 15:20:58','',NULL,0,0,NULL,NULL,NULL),
(6011,'kenzotakada2_1.jpg',2,'[\"\"]','2020-10-11 17:43:37','2020-10-11 17:43:37','',1117888,0,0,1656,2424,0.68),
(5957,'d_spot-2.jpg',1,'[\"\"]','2020-10-19 11:40:24','2020-10-19 11:40:24','',NULL,0,0,NULL,NULL,NULL),
(5957,'d.jpg',0,'[\"\"]','2020-10-08 09:21:26','2020-10-08 09:21:26','',NULL,0,0,NULL,NULL,NULL),
(5857,'a_spot-1.jpg',1,'[\"\"]','2020-10-19 11:43:11','2020-10-19 11:43:11','',1570871,0,0,2991,1022,2.93),
(6013,'2017-06-15_17_36_08.jpg',0,'[\"\"]','2020-11-01 17:02:51','2020-11-01 17:02:51','',NULL,0,0,NULL,NULL,NULL),
(6014,'2018-05-28_15_49_06.jpg',0,'[\"\"]','2020-11-01 17:05:26','2020-11-01 17:05:26','',NULL,0,0,NULL,NULL,NULL),
(6015,'untitled_3.jpg',1,'[\"\"]','2020-11-01 17:35:22','2020-11-01 17:35:22','',NULL,0,0,NULL,NULL,NULL),
(6015,'ysl.jpg',0,'[\"\"]','2020-11-01 17:25:46','2020-11-01 17:25:46','',NULL,0,0,NULL,NULL,NULL),
(6016,'2015-08-29_16_19_32.jpg',0,'[\"\"]','2020-11-01 17:46:07','2020-11-01 17:46:07','',NULL,0,0,NULL,NULL,NULL),
(5966,'2018-05-28_15_21_42.jpg',0,'[\"\"]','2020-11-01 19:27:23','2020-11-01 19:27:23','',NULL,0,0,NULL,NULL,NULL),
(5849,'5090282_fullsize.jpg',0,'[\"\"]','2021-07-04 19:33:50','2021-07-04 19:33:50','',1521933,41,41,2600,2600,1.00),
(5980,'cavaroyalpurple_1500x.png',0,'[\"\"]','2025-12-10 16:22:47','2025-12-10 16:22:47','{\"uploadName\":\"CavaRoyalPurple_1500x.png\"}',1192343,41,41,1500,1500,1.00),
(6080,'img_9228.jpeg',0,'[\"\"]','2025-11-04 09:55:11','2025-11-04 09:55:11','{\"uploadName\":\"IMG_9228.jpeg\"}',1934384,41,41,2742,2788,0.98),
(6143,'img_9212.jpeg',0,'[\"\"]','2025-11-04 10:08:58','2025-11-04 10:08:58','{\"uploadName\":\"IMG_9212.jpeg\"}',1968400,41,41,3024,3024,1.00),
(6092,'img_7511.jpeg',0,'[null]','2025-11-26 19:05:44','2025-11-26 19:05:44','{\"uploadName\":\"IMG_7511.jpeg\"}',1768998,41,41,1800,1796,1.00),
(6070,'img_8525_edited.jpeg',0,'[null]','2025-11-14 13:38:51','2025-11-14 13:38:51','{\"uploadName\":\"IMG_8525_edited.jpeg\"}',1757205,41,41,2721,2721,1.00),
(6087,'dn.jpg',0,'[\"\"]','2025-11-05 16:39:36','2025-11-05 16:39:36','',166911,41,41,1091,1102,0.99),
(5975,'untitled.jpg',0,'[\"\"]','2025-11-05 19:30:56','2025-11-05 19:30:56','{\"uploadName\":\"Untitled.jpg\"}',1957036,41,41,2394,2417,0.99),
(5850,'631013f7-21c5-41b1-9da0-1d74f1fc3c2b.jpg',0,'[\"\"]','2025-11-05 19:35:06','2025-11-05 19:35:06','',73840,41,41,584,610,0.96),
(6147,'img_7699.jpeg',0,'[null]','2025-11-13 18:32:48','2025-11-13 18:32:48','{\"uploadName\":\"IMG_7699.jpeg\"}',2078246,41,41,2126,2126,1.00),
(6024,'img_5346.jpeg',0,'[null]','2025-11-13 18:43:13','2025-11-13 18:43:13','{\"uploadName\":\"IMG_5346.jpeg\"}',1640483,41,41,2500,2500,1.00),
(6144,'cedre_du_liban_barouk_2005.jpg',1,'[\"\"]','2025-12-10 11:28:56','2025-12-10 11:28:56','{\"uploadName\":\"Ce\\u0300dre_du_Liban_Barouk_2005.jpg\"}',1444738,41,41,1600,1200,1.33),
(5999,'img_7667.jpeg',0,'[null]','2025-11-13 18:55:37','2025-11-13 18:55:37','{\"uploadName\":\"IMG_7667.jpeg\"}',1154216,41,41,2500,2622,0.95),
(5974,'img_7446.jpeg',1,'[null]','2025-11-13 19:02:43','2025-11-13 19:02:43','{\"uploadName\":\"IMG_7446.jpeg\"}',1184848,41,41,2500,2500,1.00),
(5974,'img_7441.jpeg',0,'[null]','2025-11-13 19:00:32','2025-11-13 19:00:32','{\"uploadName\":\"IMG_7441.jpeg\"}',1723237,41,41,2500,2500,1.00),
(6054,'img_8121.jpeg',0,'[null]','2025-11-13 19:51:23','2025-11-13 19:51:22','{\"uploadName\":\"IMG_8121.jpeg\"}',1447451,41,41,2500,2500,1.00),
(6086,'img_7116.jpeg',0,'[null]','2025-11-13 19:14:02','2025-11-13 19:14:02','{\"uploadName\":\"IMG_7116.jpeg\"}',1599076,41,41,2500,2500,1.00),
(6092,'img_7164.jpg',1,'[null]','2025-11-14 10:15:00','2025-11-14 10:15:00','{\"uploadName\":\"IMG_7164.JPG\"}',1934672,41,41,1984,1984,1.00),
(6034,'img_8903_edited.jpeg',0,'[null]','2025-11-14 17:38:27','2025-11-14 17:38:27','{\"uploadName\":\"IMG_8903_edited.jpeg\"}',1456233,41,41,2721,2721,1.00),
(6070,'img_8524_edited.jpeg',1,'[null]','2025-11-14 13:40:19','2025-11-14 13:40:19','{\"uploadName\":\"IMG_8524_edited.jpeg\"}',1683202,41,41,2721,2721,1.00),
(6335,'untitled.jpg',0,'[\"\"]','2026-01-02 16:32:42','2026-01-02 16:32:42','{\"uploadName\":\"Untitled.jpg\"}',496736,41,41,1132,1111,1.02),
(6061,'untitled-1.jpg',2,'[\"\"]','2026-01-02 15:00:46','2026-01-02 15:00:46','{\"uploadName\":\"Untitled.jpg\"}',1894780,41,41,2600,1638,1.59),
(6112,'img_6821.jpg',0,'[null]','2025-11-14 23:34:55','2025-11-14 23:34:55','{\"uploadName\":\"IMG_6821.JPG\"}',2548572,41,41,2721,2721,1.00),
(6062,'img_8460_edited.jpeg',1,'[null]','2025-11-14 22:20:35','2025-11-14 22:20:35','{\"uploadName\":\"IMG_8460_edited.jpeg\"}',1808685,41,41,2448,2448,1.00),
(6062,'img_8457_edited.jpeg',0,'[null]','2025-11-14 22:20:35','2025-11-14 22:20:35','{\"uploadName\":\"IMG_8457_edited.jpeg\"}',2075714,41,41,3024,3024,1.00),
(5802,'francoise-de-la-perriere-2.jpeg',0,'[null]','2025-11-16 21:51:36','2025-11-16 21:51:36','{\"uploadName\":\"Francoise-de-la-Perriere-2.jpeg\"}',1105313,41,41,1280,1489,0.86),
(6084,'helmetsandplumes.jpg',0,'[null]','2025-11-19 09:03:13','2025-11-19 09:03:13','{\"uploadName\":\"HelmetsAndPlumes.jpg\"}',339384,41,41,768,768,1.00),
(6171,'omega-logo.png',0,'[null]','2025-11-19 14:15:06','2025-11-19 14:15:06','{\"uploadName\":\"Omega-logo.png\"}',88546,41,41,1280,720,1.78),
(6172,'rado_logo_png1.png',0,'[null]','2025-11-19 14:16:34','2025-11-19 14:16:34','{\"uploadName\":\"Rado_logo_PNG1.png\"}',157367,41,41,5000,1583,3.16),
(5832,'sa.jpeg',1,'[null]','2025-11-19 18:31:25','2025-11-19 18:31:25','{\"uploadName\":\"SA.jpeg\"}',46952,41,41,299,342,0.87),
(5832,'stockholms_auktionsverk.png',0,'[\"\"]','2020-09-13 15:20:56','2020-09-13 15:20:56','',17474,0,0,249,129,1.93),
(5968,'image31.png',0,'[null]','2025-11-20 15:31:33','2025-11-20 15:31:33','',860131,41,41,509,672,0.76),
(6095,'13.png',0,'[null]','2025-11-22 01:26:03','2025-11-22 01:26:03','',171561,41,41,376,371,1.01),
(6179,'92532818-7603-4e92-b59c-257dd8d79bdf.jpg',0,'[null]','2025-11-22 09:56:33','2025-11-22 09:56:33','',574780,41,41,1680,1680,1.00),
(5965,'armesdeparis.jpg',0,'[null]','2025-11-22 15:35:54','2025-11-22 15:35:54','{\"uploadName\":\"ArmesDeParis.jpg\"}',712014,41,41,1920,1920,1.00),
(5969,'astrologienouvelle.jpg',0,'[null]','2025-11-22 15:41:23','2025-11-22 15:41:23','{\"uploadName\":\"AstrologieNouvelle.jpg\"}',172195,41,41,755,768,0.98),
(5994,'exlibris.jpg',0,'[null]','2025-11-22 15:43:49','2025-11-22 15:43:49','{\"uploadName\":\"ExLibris.jpg\"}',568526,41,41,1892,1920,0.99),
(6038,'levriers.jpg',0,'[null]','2025-11-22 16:36:33','2025-11-22 16:36:33','{\"uploadName\":\"Levriers.jpg\"}',503697,41,41,1909,1920,0.99),
(6030,'magickelly.jpg',0,'[null]','2025-11-22 18:09:29','2025-11-22 18:09:29','{\"uploadName\":\"MagicKelly.jpg\"}',1319640,41,41,1927,1927,1.00),
(6029,'marcheflottant.jpg',0,'[null]','2025-11-22 18:12:40','2025-11-22 18:12:40','{\"uploadName\":\"MarcheFlottant.jpg\"}',109979,41,41,631,610,1.03),
(6137,'9aafe7ae-d8c3-45a4-9be7-65f8a0d0eccb.jpg',0,'[\"\"]','2025-12-31 19:03:26','2025-12-31 19:03:26','',127276,41,41,664,610,1.09),
(5967,'f.png',0,'[\"\"]','2025-12-09 21:18:55','2025-12-09 21:18:55','',167770,41,41,300,300,1.00),
(5996,'bluedet01.jpg',1,'[\"\"]','2025-12-09 21:25:31','2025-12-09 21:25:31','',761531,41,41,1000,550,1.82),
(6018,'alo--charles-jean-hallo---french--1882-1-ej4cm-570.jpeg',0,'[\"\"]','2025-12-09 21:33:15','2025-12-09 21:33:15','{\"uploadName\":\"alo--charles-jean-hallo---french--1882-1-EJ4CM-570.Jpeg\"}',49004,41,41,357,570,0.63),
(6063,'5219fe0b-48a0-4ac7-a5ed-2c29530974b1.jpg',0,'[\"\"]','2025-12-09 22:17:28','2025-12-09 22:17:28','',292956,41,41,1080,1080,1.00),
(6066,'15157eec-fa54-4e57-9829-696214aa4b8f.jpg',0,'[\"\"]','2025-12-09 22:15:03','2025-12-09 22:15:03','',868691,41,41,1860,1920,0.97),
(6040,'0866e168-4d7f-451a-af33-19c9f9cf83fa.jpg',0,'[\"\"]','2025-12-09 22:19:45','2025-12-09 22:19:45','',90640,41,41,585,610,0.96),
(6041,'6783615c-fa80-4576-b456-71308e793a83.jpg',0,'[\"\"]','2025-12-09 22:22:10','2025-12-09 22:22:10','',567128,41,41,1920,2560,0.75),
(6039,'1de60733-26a2-4d9a-a81e-e8833a5c3856.jpg',0,'[\"\"]','2025-12-09 22:24:51','2025-12-09 22:24:51','',848065,41,41,1733,1920,0.90),
(6056,'875752f8-f2a9-4866-9083-e6df280cebea.jpg',0,'[\"\"]','2025-12-09 22:27:50','2025-12-09 22:27:50','',106201,41,41,610,610,1.00),
(6045,'13345cd0-fb43-4c3d-a30e-a189296ab088.jpg',0,'[\"\"]','2025-12-09 22:34:36','2025-12-09 22:34:36','',114413,41,41,610,610,1.00),
(6120,'cd5d9356-a281-4b3b-8745-065b28a4af95.jpg',0,'[\"\"]','2025-12-09 22:39:50','2025-12-09 22:39:50','',503628,41,41,1920,1757,1.09),
(6149,'03.jpg',0,'[\"\"]','2025-12-12 19:12:53','2025-12-12 19:12:53','',289787,41,41,893,900,0.99),
(6127,'69687581_2384204568283234_513120455817691136_n.jpg',0,'[\"\"]','2025-12-09 22:47:23','2025-12-09 22:47:23','',807577,41,41,1136,1127,1.01),
(6134,'untitled.jpg',0,'[\"\"]','2026-01-01 08:17:19','2026-01-01 08:17:19','{\"uploadName\":\"Untitled.jpg\"}',134800,41,41,505,629,0.80),
(6133,'11ae021d-f999-4eb8-922b-0acf3c7e6a05.jpg',0,'[\"\"]','2025-12-09 22:56:18','2025-12-09 22:56:18','',66662,41,41,610,610,1.00),
(6347,'482348388_1103246194935281_4192148335878541_n.jpg',0,'[\"\"]','2026-01-17 22:40:08','2026-01-17 22:40:08','',672571,41,41,1170,1163,1.01),
(6145,'s-l960.jpg',0,'[\"\"]','2025-12-10 02:11:49','2025-12-10 02:11:49','',93495,41,41,700,700,1.00),
(6000,'4a86ad3d-8ec1-4c8b-a829-f5b583dd22b9.jpg',0,'[\"\"]','2025-12-10 02:26:18','2025-12-10 02:26:18','',82737,41,41,596,610,0.98),
(5991,'25d82923-d645-4b09-b8bd-d2b1150b7a39.jpg',0,'[\"\"]','2025-12-10 02:46:16','2025-12-10 02:46:16','',84100,41,41,610,610,1.00),
(6130,'untitled-1.jpg',2,'[\"\"]','2026-01-04 19:05:49','2026-01-04 19:05:49','{\"uploadName\":\"Untitled.jpg\"}',1013816,41,41,2668,1258,2.12),
(6058,'d7ffdf92-340f-4d62-9a1a-1d84863bb825.jpg',0,'[\"\"]','2025-12-10 07:13:17','2025-12-10 07:13:17','',130266,41,41,652,610,1.07),
(6051,'2c711804-9890-45c9-90cb-c7d95647b3c6.jpg',0,'[\"\"]','2025-12-10 07:09:25','2025-12-10 07:09:25','',973776,41,41,1920,1920,1.00),
(6068,'5a92d5fd-4a56-498c-a056-836e453cf3b7.jpg',0,'[\"\"]','2025-12-10 07:50:45','2025-12-10 07:50:45','',882850,41,41,1920,1891,1.02),
(6136,'5d4131b6-94e0-4dc5-b818-adcfa6ecb6aa.jpg',0,'[\"\"]','2025-12-10 08:15:19','2025-12-10 08:15:19','',831264,41,41,1878,1920,0.98),
(5977,'a1c74386-c1a3-46a2-ac0a-2be10d936790.jpg',0,'[\"\"]','2025-12-10 08:33:33','2025-12-10 08:33:33','',114551,41,41,597,610,0.98),
(5986,'f348f1bb-1536-4c20-898e-a15df291e2b7.jpg',0,'[\"\"]','2025-12-10 08:47:35','2025-12-10 08:47:35','',65508,41,41,610,610,1.00),
(5987,'f41ad359-d900-4825-ab10-2cd1377d1ac9.jpg',0,'[\"\"]','2025-12-10 08:53:28','2025-12-10 08:53:28','',82786,41,41,653,610,1.07),
(6144,'untitled.jpg',0,'[null]','2025-11-13 18:50:01','2025-11-13 18:50:01','{\"uploadName\":\"Untitled.jpg\"}',1864534,41,41,1987,1973,1.01),
(6019,'copy_of_karin_swildens_2006.jpg',0,'[\"\"]','2025-12-10 18:01:41','2025-12-10 18:01:41','{\"uploadName\":\"Copy of Karin Swildens 2006.JPG\"}',10706,41,41,300,242,1.24),
(6028,'img_1932.jpeg',0,'[\"\"]','2025-12-10 20:54:47','2025-12-10 20:54:47','{\"uploadName\":\"IMG_1932.jpeg\"}',2060889,41,41,2207,2200,1.00),
(6085,'img_7604.jpeg',0,'[\"\"]','2025-12-10 21:05:54','2025-12-10 21:05:54','{\"uploadName\":\"IMG_7604.jpeg\"}',1516762,41,41,2500,2500,1.00),
(5981,'untitled.jpg',1,'[\"\"]','2025-12-30 16:16:00','2025-12-30 16:16:00','{\"uploadName\":\"Untitled.jpg\"}',1606744,41,41,1900,1837,1.03),
(6121,'img_6215.jpeg',0,'[\"\"]','2025-12-10 21:34:49','2025-12-10 21:34:49','{\"uploadName\":\"IMG_6215.jpeg\"}',1893946,41,41,2500,2500,1.00),
(6284,'br.png',0,'[\"\"]','2025-12-10 22:19:39','2025-12-10 22:19:39','',30276,41,41,420,105,4.00),
(6285,'metropol_auktioner_il.gif',0,'[\"\"]','2025-12-11 15:12:59','2025-12-11 15:12:59','',5112,41,41,323,130,2.48),
(6130,'untitled.jpg',1,'[\"\"]','2026-01-04 19:02:51','2026-01-04 19:02:51','{\"uploadName\":\"Untitled.jpg\"}',1893414,41,41,3019,1789,1.69),
(6055,'04.jpg',0,'[\"\"]','2025-12-10 18:15:57','2025-12-10 18:15:57','',323480,41,41,900,895,1.01),
(6118,'img_7476.jpeg',0,'[\"\"]','2025-12-14 10:23:49','2025-12-14 10:23:49','{\"uploadName\":\"IMG_7476.jpeg\"}',1953855,41,41,1743,1800,0.97),
(6272,'img_8145-1.jpeg',0,'[\"\"]','2025-12-14 16:19:02','2025-12-14 16:19:02','{\"uploadName\":\"IMG_8145.jpeg\"}',2052979,41,41,2100,2100,1.00),
(6081,'img_7484.jpeg',1,'[\"\"]','2025-12-30 17:48:52','2025-12-30 17:48:52','{\"uploadName\":\"IMG_7484.jpeg\"}',2087265,41,41,2500,2500,1.00),
(6271,'untitled.jpg',0,'[\"\"]','2025-12-14 19:18:02','2025-12-14 19:18:02','{\"uploadName\":\"Untitled.jpg\"}',320473,41,41,849,863,0.98),
(6093,'untitled.jpg',0,'[\"\"]','2025-12-14 19:20:14','2025-12-14 19:20:14','{\"uploadName\":\"Untitled.jpg\"}',484334,41,41,1024,989,1.04),
(5909,'untitled.png',2,'[\"\"]','2026-01-21 14:28:15','2026-01-21 14:28:15','{\"uploadName\":\"Untitled.png\"}',1947210,41,41,900,1115,0.81),
(5989,'ac618a64-0ef0-490b-b6ae-7b60d77ff732.jpg',0,'[\"\"]','2026-01-01 15:42:14','2026-01-01 15:42:14','',106888,41,41,618,610,1.01),
(6105,'untitled.jpg',0,'[\"\"]','2025-12-14 19:30:41','2025-12-14 19:30:41','{\"uploadName\":\"Untitled.jpg\"}',361328,41,41,939,927,1.01),
(6117,'1567319-13619666_fullscreen.png',0,'[\"\"]','2025-12-14 19:49:08','2025-12-14 19:49:08','',952454,41,41,768,768,1.00),
(6069,'untitled.jpg',0,'[\"\"]','2025-12-14 19:52:29','2025-12-14 19:52:29','{\"uploadName\":\"Untitled.jpg\"}',488023,41,41,960,960,1.00),
(6124,'untitled.jpg',0,'[\"\"]','2025-12-14 19:54:29','2025-12-14 19:54:29','{\"uploadName\":\"Untitled.jpg\"}',319388,41,41,866,858,1.01),
(6258,'untitled.jpg',0,'[\"\"]','2025-12-14 21:21:43','2025-12-14 21:21:43','{\"uploadName\":\"Untitled.jpg\"}',270818,41,41,974,969,1.01),
(6222,'20639ccb-8c08-4c3b-84ca-0c8625c2406f.jpg',0,'[\"\"]','2025-12-14 21:39:09','2025-12-14 21:39:09','{\"uploadName\":\"{20639CCB-8C08-4C3B-84CA-0C8625C2406F}.jpg\"}',337076,41,41,900,826,1.09),
(5909,'italian_portrait_of_the_man_002913.jpg',0,'[\"\"]','2020-09-13 15:21:26','2020-09-13 15:21:26','',442575,0,0,1747,2477,0.71),
(5909,'italian_portrait_of_the_man_002914.jpg',1,'[\"\"]','2020-09-13 15:21:26','2020-09-13 15:21:26','',3609653,0,0,1678,2073,0.81),
(5911,'1146_6344_oljemalning.jpg',0,'[\"\"]','2026-01-21 08:56:00','2026-01-21 08:56:00','',2047201,41,41,2250,1685,1.34),
(5913,'208919-4827843_fullscreen-1.jpg',0,'[\"\"]','2026-01-21 07:31:23','2026-01-21 07:31:23','{\"uploadName\":\"208919-4827843_fullscreen.jpg\"}',759975,41,41,761,768,0.99),
(5913,'208919-4827673_fullsize.jpg',1,'[\"\"]','2026-01-21 07:42:58','2026-01-21 07:42:58','',1854487,41,41,1800,1784,1.01),
(6353,'196144b0-41d7-4f5e-851c-76e4e3dd7928.jpg',0,'[\"\"]','2026-01-18 16:21:57','2026-01-18 16:21:57','{\"uploadName\":\"{196144B0-41D7-4F5E-851C-76E4E3DD7928}.jpg\"}',71229,41,41,900,675,1.33),
(6140,'untitled.jpg',0,'[\"\"]','2026-01-19 15:24:58','2026-01-19 15:24:58','{\"uploadName\":\"Untitled.jpg\"}',121097,41,41,976,716,1.36),
(6346,'304939587_538318848094688_1809905289951245887_n-1.png',0,'[\"\"]','2026-01-18 06:49:23','2026-01-18 06:49:23','{\"uploadName\":\"304939587_538318848094688_1809905289951245887_n.png\"}',210248,41,41,376,376,1.00),
(6350,'481675663_1103246041601963_6748264668260859727_n.jpg',0,'[\"\"]','2026-01-18 00:02:55','2026-01-18 00:02:55','',644831,41,41,1172,1151,1.02),
(6349,'481780549_1103246191601948_3706548414063030674_n.jpg',0,'[\"\"]','2026-01-17 23:46:12','2026-01-17 23:46:12','',656561,41,41,1160,1148,1.01),
(5973,'dallet.jpg',0,'[null]','2025-11-08 22:37:10','2025-11-08 22:37:10','',271520,41,41,1000,750,1.33),
(5973,'untitled.jpg',1,'[\"\"]','2026-01-18 08:13:37','2026-01-18 08:13:37','{\"uploadName\":\"Untitled.jpg\"}',391681,41,41,544,354,1.54),
(6348,'481272320_1103245794935321_4197638222621575543_n.jpg',0,'[\"\"]','2026-01-17 22:50:21','2026-01-17 22:50:21','',664926,41,41,1158,1160,1.00),
(6096,'untitled.jpg',0,'[\"\"]','2025-12-14 19:21:59','2025-12-14 19:21:59','{\"uploadName\":\"Untitled.jpg\"}',361572,41,41,941,925,1.02),
(6357,'untitled.png',0,'[\"\"]','2026-01-22 09:30:00','2026-01-22 09:30:00','{\"uploadName\":\"Untitled.png\"}',1435772,41,41,1009,1051,0.96),
(6131,'b864749149874e049d99ee8ff061f3fbcb639777-1060x1500.gif',0,'[\"\"]','2026-01-12 23:11:34','2026-01-12 23:11:34','',102982,41,41,800,1132,0.71),
(5913,'000094.jpg',2,'[\"\"]','2020-09-13 15:21:29','2020-09-13 15:21:29','',1472495,0,0,2857,2337,1.22),
(5819,'449281018_7448707945255672_8215220889388917155_n.jpg',0,'[\"\"]','2026-01-13 08:59:11','2026-01-13 08:59:11','',44046,41,41,480,480,1.00),
(6141,'reina.jpg',0,'[null]','2026-01-14 14:15:35','2026-01-14 14:15:35','{\"uploadName\":\"Reina.jpg\"}',337691,5972,5972,996,1038,0.96),
(6253,'0.png',0,'[null]','2026-01-14 12:04:14','2026-01-14 12:04:14','',904682,5972,5972,800,600,1.33),
(6141,'untitled.jpg',1,'[null]','2026-01-14 14:27:03','2026-01-14 14:27:03','{\"uploadName\":\"Untitled.jpg\"}',620497,5972,5972,2492,1169,2.13),
(6111,'untitled.jpg',0,'[\"\"]','2026-01-14 08:33:15','2026-01-14 08:33:15','{\"uploadName\":\"Untitled.jpg\"}',57970,41,41,392,409,0.96),
(6042,'img_5469.jpeg',0,'[null]','2026-02-24 18:22:41','2026-02-24 18:22:41','{\"uploadName\":\"IMG_5469.jpeg\"}',2022909,5972,5972,2000,2075,0.96),
(6042,'untitled-2.jpg',1,'[\"\"]','2026-01-14 10:07:45','2026-01-14 10:07:45','{\"uploadName\":\"Untitled.jpg\"}',995041,41,41,2899,713,4.07),
(5807,'henri_dorigny.jpg',0,'[\"\"]','2020-09-13 15:20:48','2020-09-13 15:20:48','',477071,0,0,762,889,0.86),
(5807,'henri_d_origny_240x240.gif',1,'[null]','2026-01-14 11:39:11','2026-01-14 11:39:11','{\"uploadName\":\"Henri_d_Origny_240x240.gif\"}',29096,5972,5972,240,185,1.30),
(5923,'philosopher_with_open_book_000163.jpg',1,'[\"\"]','2025-12-23 18:39:27','2025-12-23 18:39:27','',1733630,41,41,1800,1557,1.16),
(6142,'untitled-1.jpg',1,'[\"\"]','2026-01-12 10:13:06','2026-01-12 10:13:06','{\"uploadName\":\"Untitled.jpg\"}',310646,41,41,1001,711,1.41),
(6025,'untitled.jpg',0,'[\"\"]','2025-12-15 08:05:36','2025-12-15 08:05:36','{\"uploadName\":\"Untitled.jpg\"}',371680,41,41,945,955,0.99),
(6027,'untitled.jpg',0,'[\"\"]','2025-12-15 08:31:31','2025-12-15 08:31:31','{\"uploadName\":\"Untitled.jpg\"}',390338,41,41,981,984,1.00),
(6332,'s-l1600.jpg',1,'[\"\"]','2025-12-31 11:21:13','2025-12-31 11:21:13','',155811,41,41,1000,1335,0.75),
(6277,'untitled.jpg',0,'[\"\"]','2025-12-15 09:09:17','2025-12-15 09:09:17','{\"uploadName\":\"Untitled.jpg\"}',248922,41,41,711,578,1.23),
(6031,'img_8199.jpeg',0,'[\"\"]','2025-12-15 09:45:56','2025-12-15 09:45:56','{\"uploadName\":\"IMG_8199.jpeg\"}',1133870,41,41,2500,2500,1.00),
(6052,'untitled.jpg',0,'[\"\"]','2025-12-15 09:50:10','2025-12-15 09:50:09','{\"uploadName\":\"Untitled.jpg\"}',848593,41,41,1318,1404,0.94),
(6035,'untitled.jpg',0,'[\"\"]','2025-12-15 10:08:02','2025-12-15 10:08:02','{\"uploadName\":\"Untitled.jpg\"}',1904191,41,41,2288,2352,0.97),
(6082,'untitled.jpg',0,'[\"\"]','2025-12-15 10:17:29','2025-12-15 10:17:29','{\"uploadName\":\"Untitled.jpg\"}',2086787,41,41,1927,1900,1.01),
(6099,'0c019c53-fd07-4b39-9e63-de244b397e0f.jpg',0,'[\"\"]','2025-12-15 10:23:17','2025-12-15 10:23:17','',790177,41,41,1920,1910,1.01),
(6049,'img_7751.jpeg',0,'[\"\"]','2025-12-15 10:27:16','2025-12-15 10:27:16','{\"uploadName\":\"IMG_7751.jpeg\"}',1071192,41,41,2500,2567,0.97),
(6088,'untitled.jpg',0,'[\"\"]','2025-12-15 14:17:16','2025-12-15 14:17:16','{\"uploadName\":\"Untitled.jpg\"}',831307,41,41,1245,1249,1.00),
(5985,'b3c5a76a-0eeb-45d3-955c-f03141888bdd.jpg',0,'[\"\"]','2025-12-15 17:19:12','2025-12-15 17:19:12','',424906,41,41,1761,1800,0.98),
(6048,'untitled.jpg',0,'[\"\"]','2025-12-15 20:07:08','2025-12-15 20:07:08','{\"uploadName\":\"Untitled.jpg\"}',1773535,41,41,2331,2417,0.96),
(5821,'corpo_jld_1978_p_169.jpg',1,'[\"\"]','2025-12-25 00:14:05','2025-12-25 00:14:05','{\"uploadName\":\"CORPO_JLD_1978_P_169.jpg\"}',176613,41,41,1920,1080,1.78),
(6125,'56783027-4f83-4d21-8caa-649b799287dd.jpg',0,'[\"\"]','2025-12-16 19:02:54','2025-12-16 19:02:54','',96996,41,41,593,610,0.97),
(5995,'2be02f54-2988-4824-aa5b-ecec517df0c2.jpg',0,'[\"\"]','2025-12-16 19:18:26','2025-12-16 19:18:26','',871490,41,41,1920,1847,1.04),
(5998,'img_5098.jpeg',0,'[\"\"]','2025-12-16 19:15:31','2025-12-16 19:15:31','{\"uploadName\":\"IMG_5098.jpeg\"}',1777560,41,41,2200,2200,1.00),
(6047,'b55838d9-dbaf-4d52-9d65-ee8e1ab09052.jpg',0,'[\"\"]','2025-12-16 19:29:38','2025-12-16 19:29:38','',136809,41,41,624,610,1.02),
(6021,'couer.jpg',0,'[\"\"]','2025-12-16 19:41:24','2025-12-16 19:41:24','',23760,41,41,236,314,0.75),
(5993,'1d82c66c-c842-404d-975d-8477bdeeda36.jpg',0,'[\"\"]','2025-12-16 22:22:27','2025-12-16 22:22:27','',832684,41,41,1920,1920,1.00),
(5982,'img_7853-1.jpeg',0,'[\"\"]','2025-12-16 22:34:07','2025-12-16 22:34:07','{\"uploadName\":\"IMG_7853.jpeg\"}',1803527,41,41,2500,2500,1.00),
(6148,'untitled_200x0.jpg',1,'[\"\"]','2025-12-30 12:31:03','2025-12-30 12:31:03','{\"uploadName\":\"untitled.200x0.jpg\"}',248922,41,41,711,578,1.23),
(5789,'h_spot-2.jpg',0,'[\"\"]','2020-09-13 15:20:37','2020-09-13 15:20:37','',1824384,0,0,3597,1027,3.50),
(5789,'eb.jpg',1,'[\"\"]','2020-10-11 23:41:44','2020-10-11 23:41:44','',1512698,0,0,2982,863,3.46),
(6286,'h_spot.jpeg',0,'[\"\"]','2025-12-17 16:53:47','2025-12-17 16:53:47','',2035657,41,41,2200,2205,1.00),
(5857,'a_spot-2.jpg',2,'[\"\"]','2020-10-19 11:43:11','2020-10-19 11:43:11','',1341170,0,0,1995,600,3.33),
(6001,'72f2fe37-4a59-496c-9822-e8142dba5d51.jpg',0,'[\"\"]','2025-12-17 22:29:42','2025-12-17 22:29:42','',968075,41,41,2000,2000,1.00),
(6002,'599ec0be-e601-41c9-b1ce-b00a2ea49cf0.jpg',0,'[\"\"]','2025-12-17 22:39:11','2025-12-17 22:39:11','',428156,41,41,914,914,1.00),
(5959,'images-1.jpg',3,'[\"\"]','2025-12-18 19:12:06','2025-12-18 19:12:06','{\"uploadName\":\"images.jpg\"}',6291,41,41,191,264,0.72),
(5959,'images-2.jpg',1,'[\"\"]','2025-12-18 19:12:06','2025-12-18 19:12:06','{\"uploadName\":\"images.jpg\"}',8212,41,41,182,277,0.66),
(5959,'liudmila_vereshchagina.jpg',0,'[\"\"]','2020-09-13 15:21:51','2020-09-13 15:21:51','',108971,0,0,262,324,0.81),
(6089,'untitled.jpg',0,'[\"\"]','2025-12-20 08:33:44','2025-12-20 08:33:44','{\"uploadName\":\"Untitled.jpg\"}',2068417,41,41,2150,2079,1.03),
(6098,'b80d08fe-1512-414b-926c-822ca6a27931.jpg',0,'[\"\"]','2025-12-20 08:59:58','2025-12-20 08:59:58','',531836,41,41,1884,1820,1.04),
(6036,'untitled.jpg',0,'[\"\"]','2025-12-20 13:21:17','2025-12-20 13:21:17','{\"uploadName\":\"Untitled.jpg\"}',1827823,41,41,2500,2758,0.91),
(6297,'untitled-1.jpg',0,'[\"\"]','2025-12-22 10:41:10','2025-12-22 10:41:10','{\"uploadName\":\"Untitled.jpg\"}',1443408,41,41,2052,3422,0.60),
(6298,'untitled.jpg',0,'[\"\"]','2025-12-22 11:23:37','2025-12-22 11:23:37','{\"uploadName\":\"Untitled.jpg\"}',992298,41,41,2017,1745,1.16),
(6294,'untitled_2.jpg',0,'[\"\"]','2026-01-15 11:16:14','2026-01-15 11:16:14','{\"uploadName\":\"Untitled 2.jpg\"}',101657,41,41,755,466,1.62),
(6101,'img_7642.jpeg',1,'[\"\"]','2025-12-22 17:37:48','2025-12-22 17:37:48','{\"uploadName\":\"IMG_7642.jpeg\"}',1925900,41,41,2000,2000,1.00),
(6101,'img_7641.jpeg',0,'[\"\"]','2025-12-22 17:43:53','2025-12-22 17:43:53','{\"uploadName\":\"IMG_7641.jpeg\"}',2000279,41,41,2300,2300,1.00),
(5923,'untitled.jpg',2,'[\"\"]','2026-01-10 08:43:19','2026-01-10 08:43:19','{\"uploadName\":\"Untitled.jpg\"}',318256,41,41,931,905,1.03),
(5923,'philosopher_with_open_book_000162.jpg',3,'[\"\"]','2026-01-10 08:38:09','2026-01-10 08:38:09','',1894821,41,41,2400,2088,1.15),
(6338,'filosof_s_otkrytoi_knigoi_000232.jpg',2,'[\"\"]','2026-01-10 08:58:21','2026-01-10 08:58:21','',35288,41,41,768,672,1.14),
(5821,'jean-louis_dumas.jpg',0,'[\"\"]','2020-09-13 15:20:53','2020-09-13 15:20:53','',422681,0,0,678,639,1.06),
(6108,'gianpaolo-pagni.jpg',0,'[\"\"]','2025-12-25 08:59:38','2025-12-25 08:59:38','',87655,41,41,1090,560,1.95),
(6022,'untitled.jpg',0,'[\"\"]','2025-12-25 09:03:57','2025-12-25 09:03:57','{\"uploadName\":\"Untitled.jpg\"}',97983,41,41,580,419,1.38),
(6097,'untitled.jpg',0,'[\"\"]','2025-12-25 09:11:05','2025-12-25 09:11:05','{\"uploadName\":\"Untitled.jpg\"}',464170,41,41,1075,1173,0.92),
(6116,'284.jpg',0,'[\"\"]','2025-12-26 06:43:36','2025-12-26 06:43:36','',15448,41,41,303,400,0.76),
(6320,'img_5477.jpeg',0,'[null]','2026-02-24 18:49:30','2026-02-24 18:49:30','{\"uploadName\":\"IMG_5477.jpeg\"}',1505669,5972,5972,2593,2655,0.98),
(6023,'photo-christine-henry-presentation.png',0,'[\"\"]','2025-12-28 19:12:03','2025-12-28 19:12:03','',539632,41,41,870,650,1.34),
(6115,'315623e8-4405-42f7-be8d-be926f45dd54.jpg',0,'[\"\"]','2025-12-28 19:29:35','2025-12-28 19:29:35','',91923,41,41,415,415,1.00),
(6119,'untitled.jpg',0,'[\"\"]','2025-12-29 10:21:01','2025-12-29 10:21:00','{\"uploadName\":\"Untitled.jpg\"}',203713,41,41,561,611,0.92),
(6129,'untitled.jpg',0,'[\"\"]','2025-12-29 19:11:40','2025-12-29 19:11:40','{\"uploadName\":\"Untitled.jpg\"}',291157,41,41,672,715,0.94),
(6326,'untitled.jpg',0,'[\"\"]','2025-12-29 23:56:54','2025-12-29 23:56:54','{\"uploadName\":\"Untitled.jpg\"}',133890,41,41,1076,696,1.55),
(6026,'img_7378.jpeg',0,'[\"\"]','2025-12-29 19:23:58','2025-12-29 19:23:58','{\"uploadName\":\"IMG_7378.jpeg\"}',1281514,41,41,2500,2500,1.00),
(6033,'img_7199.jpeg',0,'[\"\"]','2025-12-29 19:29:58','2025-12-29 19:29:58','{\"uploadName\":\"IMG_7199.jpeg\"}',1611262,41,41,2500,2434,1.03),
(6122,'img_9223.jpeg',0,'[\"\"]','2025-12-30 11:19:10','2025-12-30 11:19:10','{\"uploadName\":\"IMG_9223.jpeg\"}',1808815,41,41,2000,2000,1.00),
(6072,'img_7070.jpeg',0,'[\"\"]','2025-12-30 12:20:06','2025-12-30 12:20:06','{\"uploadName\":\"IMG_7070.jpeg\"}',2002762,41,41,2050,2050,1.00),
(6148,'img_7757.jpeg',0,'[\"\"]','2025-12-17 09:25:03','2025-12-17 09:25:03','{\"uploadName\":\"IMG_7757.jpeg\"}',1568078,41,41,2500,2547,0.98),
(5981,'img_7501.jpeg',0,'[\"\"]','2025-12-10 21:20:50','2025-12-10 21:20:50','{\"uploadName\":\"IMG_7501.jpeg\"}',1659182,41,41,2834,2832,1.00),
(6356,'untitled_3.png',0,'[\"\"]','2026-01-22 07:12:38','2026-01-22 07:12:38','{\"uploadName\":\"Untitled 3.png\"}',1147345,41,41,727,782,0.93),
(6102,'img_7791.jpeg',0,'[\"\"]','2025-12-30 17:28:52','2025-12-30 17:28:52','{\"uploadName\":\"IMG_7791.jpeg\"}',1694454,41,41,2500,2500,1.00),
(6081,'untitled.jpg',0,'[\"\"]','2025-12-14 19:12:31','2025-12-14 19:12:31','{\"uploadName\":\"Untitled.jpg\"}',361529,41,41,1018,938,1.09),
(6044,'0f84589e-d8d0-4465-9761-47cec021d538.jpg',0,'[\"\"]','2025-12-30 18:33:19','2025-12-30 18:33:19','',760145,41,41,1920,1920,1.00),
(5979,'img_7771.jpeg',1,'[\"\"]','2025-12-30 18:04:04','2025-12-30 18:04:04','{\"uploadName\":\"IMG_7771.jpeg\"}',1523850,41,41,2500,2500,1.00),
(5979,'img_7770.jpeg',0,'[\"\"]','2025-12-30 18:04:04','2025-12-30 18:04:04','{\"uploadName\":\"IMG_7770.jpeg\"}',1449643,41,41,2500,2421,1.03),
(6046,'8c53d73d-9763-47a8-8c0d-f75251475a75.jpg',0,'[\"\"]','2025-12-30 18:35:53','2025-12-30 18:35:53','',608638,41,41,1806,1920,0.94),
(6053,'f961fc8c-16ec-4ee5-bdca-f7124876544a.jpg',0,'[\"\"]','2025-12-30 18:39:58','2025-12-30 18:39:58','',709841,41,41,1837,1920,0.96),
(6057,'img_7316.jpeg',0,'[\"\"]','2025-12-30 18:42:08','2025-12-30 18:42:08','{\"uploadName\":\"IMG_7316.jpeg\"}',1590258,41,41,2500,2500,1.00),
(6059,'d92e23cd-3f6d-4a8b-854f-7ff8a4b41957.jpg',0,'[\"\"]','2025-12-30 18:45:15','2025-12-30 18:45:15','',215712,41,41,1066,1080,0.99),
(6060,'s-l1600.jpg',0,'[\"\"]','2025-12-30 18:52:04','2025-12-30 18:52:04','',554904,41,41,1600,1449,1.10),
(6064,'75f55c20-5dfa-482c-b1f3-1b4cb8a01145.jpg',0,'[\"\"]','2025-12-30 18:54:30','2025-12-30 18:54:30','',104999,41,41,609,609,1.00),
(6071,'813c74aa-44ea-4712-9d80-5b4cf08e9113.jpg',0,'[\"\"]','2025-12-30 19:02:54','2025-12-30 19:02:54','',929563,41,41,1920,1881,1.02),
(6073,'img_7230-1.jpeg',0,'[\"\"]','2026-01-01 09:21:25','2026-01-01 09:21:25','{\"uploadName\":\"IMG_7230.jpeg\"}',2075950,41,41,2300,2300,1.00),
(6091,'d6f36636-9a4c-4ac4-bf19-7defa11a284f.jpg',0,'[\"\"]','2025-12-30 19:08:58','2025-12-30 19:08:58','',145366,41,41,610,610,1.00),
(6104,'09741048-6f84-4f11-8b15-994d597780f1.jpg',0,'[\"\"]','2025-12-30 19:12:01','2025-12-30 19:12:01','',748333,41,41,1920,1846,1.04),
(6107,'81c78226-05db-40e8-8940-2408da3dd244.jpg',0,'[\"\"]','2025-12-30 19:14:33','2025-12-30 19:14:33','',817950,41,41,1135,1100,1.03),
(6114,'img_9232.jpeg',0,'[\"\"]','2025-12-30 19:23:28','2025-12-30 19:23:28','{\"uploadName\":\"IMG_9232.jpeg\"}',2071011,41,41,2000,2000,1.00),
(6126,'untitled.jpg',0,'[\"\"]','2025-12-30 19:37:26','2025-12-30 19:37:26','{\"uploadName\":\"Untitled.jpg\"}',1049709,41,41,1502,1501,1.00),
(6128,'ac53c9bc-a87c-4bea-b575-8bbdb38d1b9b.jpg',0,'[\"\"]','2025-12-30 19:39:46','2025-12-30 19:39:46','',115038,41,41,583,610,0.96),
(6139,'untitled.jpg',0,'[\"\"]','2025-12-31 06:38:01','2025-12-31 06:38:01','{\"uploadName\":\"Untitled.jpg\"}',236940,41,41,866,839,1.03),
(6276,'canvas.png',0,'[\"\"]','2025-12-30 21:30:34','2025-12-30 21:30:34','',1919702,41,41,900,829,1.09),
(6333,'hermes-2007-lilas-litterature-by-a-m-cassandre-twill-silk-90cm-mint-432816_1000x971.jpeg',0,'[\"\"]','2025-12-31 07:49:19','2025-12-31 07:49:19','',660527,41,41,1000,971,1.03),
(6331,'136753-2360691_fullscreen.jpg',0,'[\"\"]','2025-12-31 07:53:24','2025-12-31 07:53:24','',103320,41,41,753,768,0.98),
(6332,'136753-2360691_fullscreen.jpg',0,'[\"\"]','2025-12-31 07:31:09','2025-12-31 07:31:09','',103320,41,41,753,768,0.98),
(5984,'img_8318.jpeg',0,'[\"\"]','2025-12-31 18:37:41','2025-12-31 18:37:41','{\"uploadName\":\"IMG_8318.jpeg\"}',1938581,41,41,2400,2421,0.99),
(6132,'untitled.jpg',1,'[\"\"]','2025-12-31 16:30:21','2025-12-31 16:30:21','{\"uploadName\":\"Untitled.jpg\"}',1234740,41,41,1583,1564,1.01),
(5805,'untitled.jpg',0,'[\"\"]','2026-01-15 16:07:28','2026-01-15 16:07:28','{\"uploadName\":\"Untitled.jpg\"}',515853,41,41,555,615,0.90),
(6282,'d69d6eaa-6997-46f3-83c6-43bebf5086ee.jpg',1,'[\"\"]','2026-01-01 21:57:00','2026-01-01 21:57:00','',491173,41,41,1060,1063,1.00),
(6073,'untitled-1.jpg',2,'[\"\"]','2026-01-02 14:41:26','2026-01-02 14:41:26','{\"uploadName\":\"Untitled.jpg\"}',1790800,41,41,2980,1552,1.92),
(6135,'img_6981.jpeg',0,'[\"\"]','2026-01-01 08:16:42','2026-01-01 08:16:42','{\"uploadName\":\"IMG_6981.jpeg\"}',2043631,41,41,2000,2049,0.98),
(6159,'untitled.jpg',0,'[\"\"]','2026-01-01 07:52:19','2026-01-01 07:52:19','{\"uploadName\":\"Untitled.jpg\"}',381727,41,41,859,882,0.97),
(6103,'flots.jpg',0,'[\"\"]','2026-01-01 11:19:20','2026-01-01 11:19:20','',282304,41,41,833,836,1.00),
(6065,'img_7737.jpeg',1,'[\"\"]','2026-01-01 09:08:41','2026-01-01 09:08:41','{\"uploadName\":\"IMG_7737.jpeg\"}',1093767,41,41,2500,2500,1.00),
(6065,'img_7735.jpeg',0,'[\"\"]','2026-01-01 09:08:41','2026-01-01 09:08:41','{\"uploadName\":\"IMG_7735.jpeg\"}',1215382,41,41,2500,2500,1.00),
(6282,'untitled.jpg',0,'[\"\"]','2025-12-31 19:10:31','2025-12-31 19:10:31','{\"uploadName\":\"Untitled.jpg\"}',366972,41,41,886,880,1.01),
(6037,'img_7756.png',0,'[\"\"]','2026-01-01 09:44:39','2026-01-01 09:44:39','{\"uploadName\":\"IMG_7756.png\"}',1959313,41,41,1000,1000,1.00),
(6073,'untitled.jpg',1,'[\"\"]','2026-01-02 14:24:56','2026-01-02 14:24:56','{\"uploadName\":\"Untitled.jpg\"}',750419,41,41,1680,917,1.83),
(6061,'untitled.jpg',1,'[\"\"]','2026-01-02 14:54:44','2026-01-02 14:54:44','{\"uploadName\":\"Untitled.jpg\"}',1713613,41,41,2600,1664,1.56),
(6061,'img_9178.jpeg',0,'[\"\"]','2026-01-02 15:00:46','2026-01-02 15:00:46','{\"uploadName\":\"IMG_9178.jpeg\"}',2087552,41,41,2450,2436,1.01),
(6132,'multicolour-silk-twilly-86-hermes-scarf-59659810-1_2.jpeg',0,'[\"\"]','2026-01-03 08:00:07','2026-01-03 08:00:06','',139997,41,41,1024,1024,1.00),
(6094,'untitled-1.jpg',1,'[\"\"]','2026-01-03 08:19:06','2026-01-03 08:19:06','{\"uploadName\":\"Untitled.jpg\"}',17687,41,41,160,119,1.34),
(6094,'drb.png',0,'[\"\"]','2025-12-01 14:51:16','2025-12-01 14:51:16','',174395,41,41,599,638,0.94),
(6196,'untitled.jpg',0,'[\"\"]','2026-01-04 08:57:58','2026-01-04 08:57:58','{\"uploadName\":\"Untitled.jpg\"}',353023,41,41,568,558,1.02),
(6130,'u_img_7508.jpeg',0,'[\"\"]','2026-01-04 19:02:51','2026-01-04 19:02:51','{\"uploadName\":\"U_IMG_7508.jpeg\"}',1602595,41,41,1700,1713,0.99),
(6011,'93047.jpg',0,'[\"\"]','2020-10-11 17:43:37','2020-10-11 17:43:37','',29318,0,0,665,665,1.00),
(6011,'apr-kenzo-takada-option-05-e1602006517997.jpg',1,'[\"\"]','2026-01-05 16:52:18','2026-01-05 16:52:18','{\"uploadName\":\"APR-Kenzo-Takada-Option-05-e1602006517997.jpg\"}',221362,41,41,1370,1034,1.32),
(5996,'choix.jpeg',0,'[\"\"]','2026-01-05 18:39:42','2026-01-05 18:39:42','',19388,41,41,240,240,1.00),
(6123,'portrait-5x7-filipe_jardim-marcio_simnch-apara-1024x1434.jpg',0,'[\"\"]','2026-01-07 19:22:07','2026-01-07 19:22:07','{\"uploadName\":\"Portrait-5x7-Filipe.Jardim-Marcio.Simnch-apara-1024x1434.jpg\"}',215418,41,41,1024,1434,0.71),
(6338,'philosopher_with_an_open_book_002936.jpg',1,'[\"\"]','2026-01-10 08:58:21','2026-01-10 08:58:21','',1260825,41,41,980,1033,0.95),
(5914,'untitled.jpg',0,'[\"\"]','2026-01-09 13:10:56','2026-01-09 13:10:56','{\"uploadName\":\"Untitled.jpg\"}',74767,41,41,538,464,1.16),
(5914,'146905-2476471_fullscreen.jpg',1,'[\"\"]','2026-01-09 13:04:16','2026-01-09 13:04:16','',558939,41,41,768,690,1.11),
(5914,'146905-2476479_fullscreen.jpg',2,'[\"\"]','2026-01-09 13:09:09','2026-01-09 13:09:09','',221796,41,41,768,688,1.12),
(6338,'philosopher_with_an_open_book_002935.jpg',0,'[\"\"]','2026-01-10 08:58:21','2026-01-10 08:58:21','',956364,41,41,2000,1713,1.17),
(5902,'filosof_s_otkrytoi_knigoi_000232.jpg',0,'[\"\"]','2026-01-10 10:28:29','2026-01-10 10:28:29','',35288,41,41,768,672,1.14),
(6113,'607046322_18552266935054770_3471242452979078045_n.jpg',1,'[\"\"]','2026-01-11 10:10:21','2026-01-11 10:10:21','',196743,41,41,1080,1080,1.00),
(6113,'untitled.jpg',0,'[\"\"]','2026-01-11 10:48:49','2026-01-11 10:48:49','{\"uploadName\":\"Untitled.jpg\"}',140683,41,41,820,820,1.00),
(6138,'63e130bf8c08904cb43ce0c7.jpeg',0,'[\"\"]','2026-01-11 15:37:36','2026-01-11 15:37:36','',714986,41,41,1200,750,1.60),
(6090,'untitled.jpg',0,'[\"\"]','2026-01-11 17:04:09','2026-01-11 17:04:09','{\"uploadName\":\"Untitled.jpg\"}',484218,41,41,890,682,1.30),
(6288,'untitled.jpg',0,'[\"\"]','2026-01-12 08:52:54','2026-01-12 08:52:54','{\"uploadName\":\"Untitled.jpg\"}',41371,41,41,278,296,0.94),
(6142,'untitled.jpg',0,'[\"\"]','2025-12-15 07:35:49','2025-12-15 07:35:49','{\"uploadName\":\"Untitled.jpg\"}',461045,41,41,927,956,0.97),
(6358,'hermes-carre-90-robe-legere-3.jpg',2,'[\"\"]','2026-02-02 17:06:25','2026-02-02 17:06:25','',169419,41,41,800,800,1.00),
(6358,'hermes-carre-90-robe-legere.jpg',0,'[\"\"]','2026-02-02 17:06:25','2026-02-02 17:06:25','',137539,41,41,800,800,1.00),
(6360,'8c2720d9ac531eec287579169a1996d5-pic.jpeg',0,'[\"\"]','2026-02-02 18:25:21','2026-02-02 18:25:21','',25077,41,41,300,300,1.00),
(6079,'img_5489-1.jpeg',3,'[null]','2026-02-23 16:44:30','2026-02-23 16:44:30','{\"uploadName\":\"IMG_5489.jpeg\"}',2055533,5972,5972,2575,2000,1.29),
(6079,'img_5491-1.jpeg',2,'[null]','2026-02-23 18:53:09','2026-02-23 18:53:09','{\"uploadName\":\"IMG_5491.jpeg\"}',1438502,5972,5972,1500,2000,0.75),
(6079,'img_5490.jpeg',1,'[null]','2026-02-23 16:44:30','2026-02-23 16:44:30','{\"uploadName\":\"IMG_5490.jpeg\"}',1405312,5972,5972,1500,2000,0.75),
(5806,'untitled-1.png',0,'[null]','2026-02-23 18:56:21','2026-02-23 18:56:21','{\"uploadName\":\"Untitled.png\"}',1651514,5972,5972,909,915,0.99),
(6079,'img_5483.jpeg',0,'[null]','2026-02-23 19:16:20','2026-02-23 19:16:20','{\"uploadName\":\"IMG_5483.jpeg\"}',1982977,5972,5972,1903,1900,1.00),
(5811,'vente.jpeg',1,'[null]','2026-02-23 22:09:48','2026-02-23 22:09:48','',140963,5972,5972,410,455,0.90),
(5811,'51lo4cfnfwl__ac_uf1000-1000_ql80.jpg',2,'[null]','2026-02-23 22:13:47','2026-02-23 22:13:47','{\"uploadName\":\"51Lo4cfNfwL._AC_UF1000,1000_QL80_.jpg\"}',99425,5972,5972,1000,726,1.38),
(5990,'img_5473.jpeg',1,'[null]','2026-02-24 18:41:36','2026-02-24 18:41:36','{\"uploadName\":\"IMG_5473.jpeg\"}',1468227,5972,5972,2721,2533,1.07),
(5990,'img_5471.jpeg',0,'[null]','2026-02-24 18:39:10','2026-02-24 18:39:10','{\"uploadName\":\"IMG_5471.jpeg\"}',950707,5972,5972,1999,2094,0.95),
(6320,'untitled.jpg',1,'[null]','2026-02-24 18:49:30','2026-02-24 18:49:30','{\"uploadName\":\"Untitled.jpg\"}',522098,5972,5972,1250,398,3.14);
/*!40000 ALTER TABLE `field_images` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_language`
--

DROP TABLE IF EXISTS `field_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_language` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_language`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_language` WRITE;
/*!40000 ALTER TABLE `field_language` DISABLE KEYS */;
INSERT INTO `field_language` VALUES
(41,5751,0),
(40,5753,0),
(6340,5753,0),
(6341,5753,0),
(6342,5753,0),
(6344,5753,0),
(5972,5754,0);
/*!40000 ALTER TABLE `field_language` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_language_files`
--

DROP TABLE IF EXISTS `field_language_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_language_files` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_language_files`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_language_files` WRITE;
/*!40000 ALTER TABLE `field_language_files` DISABLE KEYS */;
INSERT INTO `field_language_files` VALUES
(5753,'wire--modules--languagesupport--languagetranslator-php.json',1,'[\"\"]','2026-01-14 16:59:53','2026-01-14 16:59:53','',1917,41,41),
(5753,'wire--templates-admin--default-php.json',0,'[\"\"]','2026-01-14 16:57:32','2026-01-14 16:57:32','',258,41,41),
(5753,'wire--templates-admin--topnav-inc.json',2,'[\"\"]','2026-02-25 18:07:58','2026-02-25 18:07:58','',130,41,41);
/*!40000 ALTER TABLE `field_language_files` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_language_files_site`
--

DROP TABLE IF EXISTS `field_language_files_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_language_files_site` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_language_files_site`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_language_files_site` WRITE;
/*!40000 ALTER TABLE `field_language_files_site` DISABLE KEYS */;
INSERT INTO `field_language_files_site` VALUES
(5751,'site--templates--_func-php.json',2,'[\"\"]','2026-01-07 17:48:49','2026-01-07 17:48:49','',116,41,41),
(5751,'site--templates--a_collections-php.json',3,'[\"\"]','2026-01-10 21:23:02','2026-01-10 21:23:02','',132,41,41),
(5755,'site--templates--includes--object-page-php.json',9,'[\"\"]','2026-01-07 16:06:18','2026-01-07 16:06:18','',148,41,41),
(5755,'site--templates--_main-php.json',10,'[\"\"]','2026-01-17 06:05:47','2026-01-17 06:05:47','',258,41,41),
(5751,'site--templates--includes--object-page-php.json',1,'[\"\"]','2026-01-07 16:06:32','2026-01-07 16:06:32','',331,41,41),
(5755,'site--templates--h_sellers-php.json',8,'[\"\"]','2020-09-18 14:10:42','2020-09-18 14:10:42','',124,0,0),
(5755,'site--templates--h_seller-php.json',7,'[\"\"]','2020-09-18 14:10:42','2020-09-18 14:10:42','',225,0,0),
(5751,'site--templates--a_collection-php.json',4,'[\"\"]','2026-01-10 21:25:48','2026-01-10 21:25:48','',130,41,41),
(5751,'site--templates--_main-php.json',5,'[\"\"]','2026-01-17 06:00:39','2026-01-17 06:00:39','',116,41,41),
(5754,'site--templates--includes--sidebar-links-php.json',31,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',873,41,41),
(5754,'site--templates--includes--search_summary-php.json',30,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',270,41,41),
(5754,'site--templates--includes--search_form_short-php.json',29,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',431,41,41),
(5755,'site--templates--h_possession-php.json',6,'[\"\"]','2020-09-18 14:10:42','2020-09-18 14:10:42','',242,0,0),
(5755,'site--templates--h_persons-php.json',5,'[\"\"]','2020-09-18 14:10:42','2020-09-18 14:10:42','',124,0,0),
(5755,'site--templates--h_person-php.json',4,'[\"\"]','2020-09-18 14:10:42','2020-09-18 14:10:42','',225,0,0),
(5755,'site--templates--h_collection-php.json',3,'[\"\"]','2020-09-18 14:10:42','2020-09-18 14:10:42','',233,0,0),
(5755,'site--templates--h_brand-php.json',2,'[\"\"]','2020-09-18 14:10:42','2020-09-18 14:10:42','',223,0,0),
(5755,'site--templates--h_spot-php.json',0,'[\"\"]','2020-09-18 13:52:11','2020-09-18 13:52:11','',313,0,0),
(5755,'site--templates--h_artworks-php.json',1,'[\"\"]','2020-09-18 14:10:42','2020-09-18 14:10:42','',126,0,0),
(5753,'site--templates--includes--search_summary-php.json',31,'[\"\"]','2026-01-06 20:00:49','2026-01-06 20:00:49','',299,41,41),
(5753,'site--templates--includes--search_form-php.json',30,'[\"\"]','2026-01-06 20:00:49','2026-01-06 20:00:49','',262,41,41),
(5753,'site--templates--includes--object-page-php.json',29,'[\"\"]','2026-01-06 20:00:49','2026-01-06 20:00:49','',392,41,41),
(5753,'site--templates--h_size-php.json',28,'[\"\"]','2026-01-06 20:00:49','2026-01-06 20:00:49','',238,41,41),
(5753,'site--templates--h_collections-php.json',27,'[\"\"]','2026-01-06 20:00:49','2026-01-06 20:00:49','',270,41,41),
(5753,'site--templates--h_brands-php.json',26,'[\"\"]','2026-01-06 20:00:49','2026-01-06 20:00:49','',242,41,41),
(5753,'site--templates--country-php.json',25,'[\"\"]','2026-01-06 20:00:49','2026-01-06 20:00:49','',381,41,41),
(5753,'site--templates--a_spot-php.json',24,'[\"\"]','2026-01-06 20:00:49','2026-01-06 20:00:49','',299,41,41),
(5753,'site--templates--a_sellers-php.json',23,'[\"\"]','2026-01-06 20:00:49','2026-01-06 20:00:49','',256,41,41),
(5753,'site--templates--a_seller-php.json',22,'[\"\"]','2026-01-06 20:00:49','2026-01-06 20:00:49','',255,41,41),
(5753,'site--templates--a_possession-php.json',20,'[\"\"]','2026-01-06 20:00:49','2026-01-06 20:00:49','',256,41,41),
(5753,'site--templates--a_schools-php.json',21,'[\"\"]','2026-01-06 20:00:49','2026-01-06 20:00:49','',312,41,41),
(5753,'site--templates--a_persons-php.json',19,'[\"\"]','2026-01-06 20:00:49','2026-01-06 20:00:49','',268,41,41),
(5753,'site--templates--a_person-php.json',18,'[\"\"]','2026-01-06 20:00:49','2026-01-06 20:00:49','',242,41,41),
(5753,'site--templates--a_collections-php.json',17,'[\"\"]','2026-01-06 20:00:49','2026-01-06 20:00:49','',270,41,41),
(5753,'site--templates--includes--search_form_short-php.json',13,'[\"\"]','2020-09-18 10:01:15','2020-09-18 10:01:15','',507,0,0),
(5753,'site--templates--d_spot-php.json',14,'[\"\"]','2020-09-17 10:10:52','2020-09-17 10:10:52','',299,0,0),
(5753,'site--templates--_func-php.json',15,'[\"\"]','2026-01-06 20:00:49','2026-01-06 20:00:49','',8037,41,41),
(5753,'site--templates--a_collection-php.json',16,'[\"\"]','2026-01-06 20:00:49','2026-01-06 20:00:49','',250,41,41),
(5753,'site--templates--d_persons-php.json',12,'[\"\"]','2020-09-17 10:10:52','2020-09-17 10:10:52','',262,0,0),
(5753,'site--templates--h_artworks-php.json',9,'[\"\"]','2020-09-17 10:08:08','2020-09-17 10:08:08','',720,0,0),
(5753,'site--templates--d_artworks-php.json',10,'[\"\"]','2020-09-17 10:10:52','2020-09-17 10:10:52','',252,0,0),
(5753,'site--templates--d_person-php.json',11,'[\"\"]','2020-09-17 10:10:52','2020-09-17 10:10:52','',242,0,0),
(5753,'site--templates--h_sellers-php.json',7,'[\"\"]','2020-09-17 10:06:03','2020-09-17 10:06:03','',256,0,0),
(5753,'site--templates--h_spot-php.json',8,'[\"\"]','2020-09-17 10:06:03','2020-09-17 10:06:03','',293,0,0),
(5753,'site--templates--h_possession-php.json',6,'[\"\"]','2020-09-17 10:06:03','2020-09-17 10:06:03','',269,0,0),
(5753,'site--templates--h_persons-php.json',5,'[\"\"]','2020-09-17 10:06:03','2020-09-17 10:06:03','',268,0,0),
(5753,'site--templates--search-php.json',1,'[\"\"]','2020-06-19 15:41:08','2020-06-19 15:41:08','',297,0,0),
(5753,'site--templates--_main-php.json',2,'[\"\"]','2020-09-17 10:03:06','2020-09-17 10:03:06','',402,0,0),
(5753,'site--templates--h_collection-php.json',3,'[\"\"]','2020-09-17 10:06:03','2020-09-17 10:06:03','',268,0,0),
(5753,'site--templates--h_person-php.json',4,'[\"\"]','2020-09-17 10:06:03','2020-09-17 10:06:03','',242,0,0),
(5753,'site--templates--includes--sidebar-links-php.json',0,'[\"\"]','2020-06-16 13:11:08','2020-06-16 13:11:08','',2037,0,0),
(5754,'site--templates--includes--search_form-php.json',28,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',248,41,41),
(5754,'site--templates--includes--object-page-php.json',27,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',336,41,41),
(5754,'site--templates--h_size-php.json',26,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',213,41,41),
(5754,'site--templates--h_collections-php.json',25,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',227,41,41),
(5754,'site--templates--h_brands-php.json',24,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',217,41,41),
(5754,'site--templates--a_sellers-php.json',17,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',220,41,41),
(5754,'site--templates--a_spot-php.json',18,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',221,41,41),
(5754,'site--templates--country-php.json',19,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',304,41,41),
(5754,'site--templates--d_artworks-php.json',20,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',216,41,41),
(5754,'site--templates--d_person-php.json',21,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',220,41,41),
(5754,'site--templates--d_persons-php.json',22,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',216,41,41),
(5754,'site--templates--d_spot-php.json',23,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',217,41,41),
(5754,'site--templates--a_possession-php.json',14,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',233,41,41),
(5754,'site--templates--a_schools-php.json',15,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',223,41,41),
(5754,'site--templates--a_seller-php.json',16,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',226,41,41),
(5754,'site--templates--a_persons-php.json',13,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',217,41,41),
(5754,'site--templates--a_person-php.json',12,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',226,41,41),
(5754,'site--templates--a_collections-php.json',11,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',227,41,41),
(5754,'site--templates--a_collection-php.json',10,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',228,41,41),
(5754,'site--templates--_main-php.json',9,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',277,41,41),
(5754,'site--templates--_func-php.json',8,'[\"\"]','2026-01-06 22:31:11','2026-01-06 22:31:11','',3789,41,41),
(5754,'site--templates--search-php.json',7,'[\"\"]','2026-01-06 21:52:18','2026-01-06 21:52:18','',236,41,41),
(5754,'site--templates--h_sellers-php.json',6,'[\"\"]','2020-09-18 14:03:40','2020-09-18 14:03:40','',216,0,0),
(5754,'site--templates--h_possession-php.json',5,'[\"\"]','2020-09-18 14:03:40','2020-09-18 14:03:40','',238,0,0),
(5754,'site--templates--h_persons-php.json',4,'[\"\"]','2020-09-18 14:03:40','2020-09-18 14:03:40','',226,0,0),
(5754,'site--templates--h_person-php.json',3,'[\"\"]','2020-09-18 14:03:40','2020-09-18 14:03:40','',224,0,0),
(5754,'site--templates--h_artworks-php.json',1,'[\"\"]','2020-09-18 14:03:40','2020-09-18 14:03:40','',515,0,0),
(5754,'site--templates--h_collection-php.json',2,'[\"\"]','2020-09-18 14:03:40','2020-09-18 14:03:40','',234,0,0),
(5754,'site--templates--h_spot-php.json',0,'[\"\"]','2020-09-18 13:50:14','2020-09-18 13:50:14','',224,0,0),
(5751,'site--templates--h_spot-php.json',0,'[\"\"]','2020-10-11 17:22:07','2020-10-11 17:22:07','',118,0,0);
/*!40000 ALTER TABLE `field_language_files_site` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_pass`
--

DROP TABLE IF EXISTS `field_pass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii COLLATE=ascii_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_pass`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_pass` WRITE;
/*!40000 ALTER TABLE `field_pass` DISABLE KEYS */;
INSERT INTO `field_pass` VALUES
(41,'mAwZZtrHxx9tOS5H1ZQ2GQIKEivrD6W','$2y$11$GiX8d6qqBoYFz7YtNKw9c.'),
(40,'',''),
(5972,'DXADIi31y1RPO7sNqYwiwdmJ3ckZ0zy','$2y$11$z.4svgMiMd75noOrPAc8jO'),
(6341,'KHanZ8WnRK90.PnfG5suh5jS4Uf4I9C','$2y$11$ac7jfg613cP00lGvfAm9vO'),
(6340,'Af61IdcVV.b8Wy17LRwep1LcjeD4SB6','$2y$11$3VNVRibnY8mJTel32c/Abe'),
(6342,'a7XWPr.VZv7QoAx6rXgq6SaXVigks32','$2y$11$32x1Xnhuc3jDwct90cRBUO'),
(6344,'9vTSvjSJ7O997BVEHwQd/0A8HUibciS','$2y$11$iFguguwbsLb7GF.dwuuu9.');
/*!40000 ALTER TABLE `field_pass` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_permissions`
--

DROP TABLE IF EXISTS `field_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_permissions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_permissions` WRITE;
/*!40000 ALTER TABLE `field_permissions` DISABLE KEYS */;
INSERT INTO `field_permissions` VALUES
(38,32,1),
(5735,32,1),
(38,34,2),
(38,35,3),
(37,36,0),
(38,36,0),
(5735,36,0),
(6290,36,0),
(38,50,4),
(38,51,5),
(38,52,7),
(38,53,8),
(5735,53,2),
(38,54,6);
/*!40000 ALTER TABLE `field_permissions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_process`
--

DROP TABLE IF EXISTS `field_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT 0,
  `data` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_process`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_process` WRITE;
/*!40000 ALTER TABLE `field_process` DISABLE KEYS */;
INSERT INTO `field_process` VALUES
(6,17),
(3,12),
(8,12),
(9,14),
(10,7),
(11,47),
(16,48),
(300,104),
(21,50),
(29,66),
(23,10),
(304,138),
(31,136),
(22,76),
(30,68),
(303,129),
(2,87),
(302,121),
(301,109),
(28,76),
(5722,104),
(5,76),
(24,11),
(25,68),
(26,66),
(5733,129),
(2016,104),
(5731,121),
(5729,109),
(5739,161),
(5740,162),
(5742,164),
(5745,166),
(5750,177),
(5752,178),
(6268,197),
(6269,198);
/*!40000 ALTER TABLE `field_process` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_roles`
--

DROP TABLE IF EXISTS `field_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_roles`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_roles` WRITE;
/*!40000 ALTER TABLE `field_roles` DISABLE KEYS */;
INSERT INTO `field_roles` VALUES
(40,37,0),
(41,37,0),
(5972,37,0),
(6340,37,0),
(6341,37,0),
(6342,37,0),
(6344,37,0),
(41,38,1),
(41,5735,2),
(5972,5735,1),
(6342,5735,1),
(41,6290,3),
(5972,6290,2),
(6342,6290,2);
/*!40000 ALTER TABLE `field_roles` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `field_title`
--

DROP TABLE IF EXISTS `field_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text DEFAULT NULL,
  `data5754` text DEFAULT NULL,
  `data5755` text DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_title`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `field_title` WRITE;
/*!40000 ALTER TABLE `field_title` DISABLE KEYS */;
INSERT INTO `field_title` VALUES
(11,'Templates',NULL,NULL,NULL),
(16,'Fields',NULL,NULL,NULL),
(22,'Setup',NULL,NULL,NULL),
(3,'Pages',NULL,NULL,NULL),
(6,'Add Page',NULL,NULL,NULL),
(8,'Tree',NULL,NULL,NULL),
(9,'Save Sort',NULL,NULL,NULL),
(10,'Edit',NULL,NULL,NULL),
(21,'Modules',NULL,NULL,NULL),
(29,'Users',NULL,NULL,NULL),
(30,'Roles',NULL,NULL,NULL),
(2,'Admin',NULL,NULL,NULL),
(7,'Trash',NULL,NULL,NULL),
(27,'404 Page Not Found','404 Страница не найдена','404 La page est introuvable','404 Sidan hittades inte'),
(23,'Login',NULL,NULL,NULL),
(304,'Profile',NULL,NULL,NULL),
(6191,'45x45','','',''),
(28,'Access',NULL,NULL,NULL),
(31,'Permissions',NULL,NULL,NULL),
(32,'Edit pages',NULL,NULL,NULL),
(34,'Delete pages',NULL,NULL,NULL),
(35,'Move pages (change parent)',NULL,NULL,NULL),
(36,'View pages',NULL,NULL,NULL),
(50,'Sort child pages',NULL,NULL,NULL),
(51,'Change templates on pages',NULL,NULL,NULL),
(52,'Administer users',NULL,NULL,NULL),
(53,'User can update profile/password',NULL,NULL,NULL),
(54,'Lock or unlock a page',NULL,NULL,NULL),
(1,'Sweet Home','','',''),
(5731,'Insert Link',NULL,NULL,NULL),
(5729,'Empty Trash',NULL,NULL,NULL),
(6161,'Nina Ricci','Nina Ricci','',''),
(6162,'Kaplans Auktioner','Kaplans Auktioner','',''),
(6172,'RADO','','',''),
(6171,'Omega','','',''),
(6311,'','Jean Fougerolle','',''),
(6170,'Brasil','Бразилия','Brésil','Brasilien'),
(6169,'United Kingdom','Англия','',''),
(6168,'Leigh Cooke','','',''),
(6190,'42x42','','',''),
(6315,'','Evgenia Miro','',''),
(5722,'Search',NULL,NULL,NULL),
(5733,'Insert Image',NULL,NULL,NULL),
(5739,'Find',NULL,NULL,NULL),
(5740,'Recent',NULL,NULL,NULL),
(5741,'Can see recently edited pages',NULL,NULL,NULL),
(5742,'Logs',NULL,NULL,NULL),
(5743,'Can view system logs',NULL,NULL,NULL),
(5744,'Can manage system logs',NULL,NULL,NULL),
(5745,'Upgrades',NULL,NULL,NULL),
(5749,'Administer languages and static translation files',NULL,NULL,NULL),
(5750,'Languages',NULL,NULL,NULL),
(5751,'English',NULL,NULL,NULL),
(5752,'Language Translator',NULL,NULL,NULL),
(5753,'Русский',NULL,NULL,NULL),
(5754,'Français','','Français',''),
(5755,'Svenska',NULL,NULL,NULL),
(6196,'A Vos Crayons','','',''),
(6197,'86x88','','',''),
(6187,'70x70','','',''),
(5786,'Countries','Страны','Les Pays',''),
(5789,'Hermès etc...','Hermès и другие...','Hermès et des autres','Hermès och andra'),
(5791,'People','Персоналии','Personnalités','Människor'),
(5792,'Christiane Vauzelles','','',''),
(5793,'Caty Latham','','',''),
(5794,'Evgenia Miro (Miroshnichenko)','Евгения Мирошниченко (Miro)','',''),
(5795,'Dimitri Rybaltchenko','Dimitri Rybaltchenko','',''),
(5796,'Alexander Tsybin','Александр Цыбин','',''),
(5797,'Vladimir Rybaltchenko','Vladimir Rybaltchenko','',''),
(5798,'Hugo Grygkar','','',''),
(5799,'Philippe Ledoux','','',''),
(5800,'Loic Dubigeon','','',''),
(5801,'Margo','Марго','',''),
(5802,'Françoise de La Perrière','','',''),
(5803,'Michel Duchêne','','Michèle Duchêne',''),
(5804,'Cyrille Diatkine','','',''),
(5805,'Jean de Fougerolle','','',''),
(5806,'Julie Abadie','','',''),
(5807,'Henri d\'Origny','','',''),
(5808,'Henri de Linares','','',''),
(5809,'Joachim Metz','','',''),
(5810,'Daphne Duchesne','','',''),
(5811,'Xavier de Poret','','',''),
(5812,'Bali Barret','','',''),
(5813,'Benoît-Pierre Emery','','',''),
(5814,'Marie-Françoise Héron','','',''),
(5815,'Catherine Baschet','','',''),
(5816,'Laurence Bourthoumieux','','',''),
(5817,'Antoine de Jacquelot','','',''),
(5818,'Alice Shirley','','',''),
(5819,'Hubert de Watrigant','','',''),
(5820,'Pierre-Alexis Dumas','','',''),
(5821,'Jean-Louis Dumas','','',''),
(5822,'Annie Faivre','','',''),
(5823,'Thierry Hermès','','',''),
(5824,'Robert Dumas','','',''),
(5825,'Émile Maurice Hermès','','',''),
(5826,'Charles-Émile Hermès','','',''),
(5827,'Providers','Источники','Fournisseurs','Leverantörer'),
(5828,'Gifts','','',''),
(5829,'Marché de Plainpalais','','',''),
(5830,'Bukowskis','','',''),
(5831,'Myrorna','','',''),
(5832,'Stockholms Auktionsverk','Стокгольмский Аукцион','',''),
(5833,'Stockholms Stadsmission','','',''),
(5834,'Brands','Бренды','Marques','Märken'),
(5835,'Hermès','','',''),
(5836,'Salvatore Ferrogamo','','',''),
(5837,'Tiffany & Co.','','',''),
(5838,'Nina Ricci','','',''),
(5839,'Baume & Mercier','','',''),
(5840,'Lanvin','','',''),
(5841,'Dior','','',''),
(5842,'Maison Carré Foundation','','',''),
(5843,'Scarves','Carrés','Carrés','Halsdukar'),
(5844,'Cheval Turc','','',''),
(5845,'Hemisphaerium Coeli Boreale','','',''),
(5846,'Jeu de Omnibus et DameBlanche','','',''),
(5847,'Les Folies Du Ciel','','',''),
(5848,'Tiffany1','','',''),
(5849,'Les Voitures a Transformation','','',''),
(6350,'Hermès Flagship','','',''),
(5850,'Brides de Gala','Brides de Gala','',''),
(5851,'Grand Cortège a Moscou','Grand Cortège a Moscou','',''),
(5852,'Bolduc','','',''),
(5853,'Possessions','Бухгалтерия','Factures','Fakturor'),
(5854,'Purchase 2010-05-04','Покупка 2010-05-04','Achat 2010-05-04','Inköp 2010-05-04'),
(5855,'Purchase 2018-04-28','Покупка 2018-04-28','Achat 2018-04-28','Inköp 2018-04-28'),
(5856,'Purchase 2017-10-05','Покупка 2017-10-05','Achat 2017-10-05','Inköp 2017-10-05'),
(5857,'Paintings & Painters','Картины и Художники','Chefs-d\'œuvre et Artistes','Målningar och Konstnärer'),
(5858,'Painters','Персоналии','Les Artistes','Konstnärer'),
(5859,'Rembrandt van Rijn','','',''),
(5863,'Jan van Eyck','Ян ван Эйк','',''),
(5861,'Schools','Школы живописи','Écoles','Skolar'),
(5862,'Dutch School','Голландская школа','Dutch School','Dutch School'),
(5866,'Valentin de Boulogne','','',''),
(5865,'Flemish Painting School','Фламандская школа живописи','Flemish Painting School','Flemish Painting School'),
(5867,'Unknown Artist','','',''),
(5868,'Raffaele  Frigerio','','',''),
(5869,'Viacheslav Kalinin','Вячеслав Васильевич Калинин','',''),
(5875,'Abraham Storck','','',''),
(5871,'Christer Edwardson (Schmiterlöw)','','',''),
(5872,'A. Collomb','','',''),
(5873,'L. Vilardi','','',''),
(5874,'Salomon Koninck','','',''),
(5878,'Robert Falk','Роберт Фальк','',''),
(5877,'Peter Joseph Minjon','','',''),
(5879,'Basil Samoylov','Василий Васильевич Самойлов','',''),
(5880,'Andries Vermeulen','','',''),
(5883,'Abraham Teniers','','',''),
(5882,'Haik Mhitaryan','','',''),
(5885,'David Teniers II the Younger (Curcle of)','','',''),
(5887,'Vladimir Маковский','','',''),
(5892,'Marcel Genay','','',''),
(5889,'Unknown Dutch Artist','','',''),
(5893,'My art depositories','Мои источники','Les dépôts d\'art','Mina konstposter'),
(5891,'Unknown Flemish Artist','','',''),
(5894,'Bukowskis Auction','','',''),
(5895,'Metropol Auction','','',''),
(5896,'OWN Auktion','','',''),
(5897,'Uppsala Auktionskammare','','',''),
(5898,'Stockholms Auktionsverk','','',''),
(5899,'Collections','Коллекции','Collections','Samlingar'),
(5900,'Gemäldegalerie Old Masters','Галерея старых мастеров, Дрезден','',''),
(5901,'Unknown collection','Неизвестная коллекция','',''),
(5902,'Non-Leiden collection','','',''),
(5903,'Non-Leiden collection 2','','',''),
(5904,'Louvre','Лувр','',''),
(5905,'Lost auctions','Проигранные аукционы','',''),
(5906,'Paintings','Картины','Peintures','Målningar'),
(5907,'The Cardsharps','Карточные шулеры','',''),
(5908,'Italian portrait of the man','','',''),
(5909,'Portrait of italian man','','',''),
(5910,'The Cardsharps','Карточные шулеры','',''),
(5911,'Proud rider','','',''),
(5912,'In the sea 1','','',''),
(5913,'Street life','','',''),
(5914,'Musician and gamblers','','',''),
(5915,'A boor playing a lute in an interior with a woman drinking at his side, peasants playing cards beyond','','',''),
(5916,'Trip to Japan','Путешествие в Японию','',''),
(5917,'Juuls Bastion','Бастион Джуула','',''),
(5918,'Swedish Weather','','',''),
(5919,'Pub Scenes','','',''),
(5920,'House and Master','','',''),
(5921,'Knight and Butterfly','Рыцарь и бабочка','',''),
(5922,'Philosopher in Meditation','','',''),
(5923,'Philosopher with an Open Book','','',''),
(6303,'МaxTwilly','','',''),
(5925,'Pastoral landscape','','',''),
(5926,'Harbor','','',''),
(5927,'City in winter','','',''),
(5928,'City in summer','','',''),
(5929,'In the tavern','','',''),
(5930,'Flemish Painting School','Фламандская Школа живописи','Primitifs Flamands','Flamländsk Skola'),
(5931,'Paris','','',''),
(5932,'Friends','','',''),
(5933,'Winter','','',''),
(5934,'Andalusia','','',''),
(5935,'In the sea 2','','',''),
(5936,'A musical gathering of cats','','',''),
(5937,'The Backgammon Players','','',''),
(5938,'The Tric-Trac Players','','',''),
(5939,'Party','','',''),
(5940,'A boor playing a lute in an interior with a woman drinking at his side, peasants playing cards beyond','','',''),
(5941,'Possessions','Бухгалтерия','Factures d\'achat','Facturen'),
(5942,'Purchase 2017-01-16','Покупка 2017-01-16','Achat 2017-01-16','Inköp 2017-01-16'),
(5943,'Purchase 2018-02-13','Покупка 2018-02-13','Achat 2018-02-13','Inköp 2018-02-13'),
(5944,'Purchase 2017-11-11','Покупка 2017-11-11','Achat 2017-11-11','Inköp 2017-11-11'),
(5945,'Purchase 2016-08-29','Покупка 2016-08-29','Achat 2016-08-29','Inköp 2016-08-29'),
(5946,'Purchase 2010-12-26','Покупка 2010-12-26','Achat 2010-12-26','Inköp 2010-12-26'),
(5947,'Purchase 2010-04-11','Покупка 2010-04-11','Achat 2010-04-11','Inköp 2010-04-11'),
(5948,'Purchase 2010-12-11','Покупка 2010-12-11','Achat 2010-12-11','Inköp 2010-12-11'),
(5949,'Purchase 2001-01-26','Покупка 2001-01-26','Achat 2001-01-26','Inköp 2001-01-26'),
(5950,'Purchase 2001-01-26','Покупка 2001-01-26','Achat 2001-01-26','Inköp 2001-01-26'),
(5951,'Purchase 2017-07-31','Покупка 2017-07-31','Achat 2017-07-31','Inköp 2017-07-31'),
(5952,'Purchase 2010-12-11','Покупка 2010-12-11','Achat 2010-12-11','Inköp 2010-12-11'),
(5953,'Purchase 2018-02-19','Покупка 2018-02-19','Achat 2018-02-19','Inköp 2018-02-19'),
(5954,'Purchase 2018-04-24','Покупка 2018-04-24','Achat 2018-04-24','Inköp 2018-04-24'),
(5955,'Purchase 2010-03-12','Покупка 2010-03-12','Achat 2010-03-12','Inköp 2010-03-12'),
(5956,'Purchase 2018-06-17','Покупка 2018-06-17','Achat 2018-06-17','Inköp 2018-06-17'),
(5957,'Дымковская игрушка','Дымковская игрушка','Dymkovo jouets','Dymkovo leksaker'),
(5958,'People','Персоналии','Les gents',' '),
(5959,'Людмила Верещагина','','',''),
(5960,'Игрушки','Игрушки','d_artworks','d_artworks'),
(5961,'Щука','','',''),
(5973,'Robert Dallet','Robert Dallet','',''),
(5965,'Armes de Paris','Armes de Paris','',''),
(5966,'Armes de chasse','Armes de chasse','',''),
(5967,'Marie-Françoise Faconnet','','',''),
(5968,'Gabriella La Torre','La Torre','La Torre','La Torre'),
(5969,'Astrologie nouvelle','','',''),
(5975,'Avenue des acacias','Avenue des acacias','',''),
(6188,'90x90','','',''),
(5974,'Afrika','Afrika','',''),
(5976,'Brazil','','',''),
(5977,'Bride de cour','Bride de cour','',''),
(5979,'Casse-noisette','Casse-noisette','',''),
(5980,'Cavalcadour','Cavalcadour','',''),
(5981,'Cavaliers peuls','Cavaliers peuls','',''),
(5982,'Charreada','Charreada','',''),
(6267,'Gavroche','','',''),
(5984,'Clefs','','',''),
(5985,'Clic-clac','Clic-clac','',''),
(5986,'Les Coqs','Les Coqs','',''),
(5987,'Couvée d\'Hermès','','',''),
(5988,'Cuillers d\'Afrique','','',''),
(5989,'Cuivreries','','',''),
(5990,'Eperon d\'or','','',''),
(5991,'Equitation japonaise','','',''),
(6185,'Sizes','Sizes','',''),
(5993,'Etriers','Etriers','',''),
(5994,'Ex-libris','','',''),
(5995,'Etude pour une parure de Gala','Etude pour une parure','',''),
(5996,'Florence Manlik','','',''),
(5998,'Festival des amazones','','',''),
(5999,'La Flore','La Flore','',''),
(6000,'Gibiers','Gibiers','',''),
(6001,'Grand manege','','',''),
(6002,'Grand tenue','','',''),
(6003,'France','Франция','France','Frankrike'),
(6004,'Ukraine','Украина','Ukraine','Ukraina'),
(6005,'Libre comme l\'air','','',''),
(6006,'Chanel','','',''),
(6007,'Italie','Италия','',''),
(6008,'Gucci','','',''),
(6009,'USA','Соединенные штаты','Etats-Unis',''),
(6010,'Sweden','Швеция','Suede','Sverige'),
(6011,'Kenzo','','',''),
(6012,'Russia','Россия','Russie','Rysland'),
(6013,'Lanvin','','',''),
(6014,'Tiger','','',''),
(6015,'Yves Saint-Laurent','','',''),
(6016,'YSL1','','',''),
(6018,'Charles-Jean Hallo','','',''),
(6019,'Karin Swildens','','',''),
(6179,'Jeu De Cartes','','',''),
(6021,'Aline Honore','','',''),
(6022,'Jacques Eudel','','',''),
(6023,'Christine Henry','','',''),
(6024,'La mecanique des idees','','',''),
(6025,'Art des steppes','','',''),
(6026,'Le Carnaval de Venise','','',''),
(6027,'Torana','','',''),
(6028,'Monsieur et Madame','','',''),
(6029,'Marche Flottant du Lac Inle II','Marche Flottant du Lac Inle II','',''),
(6030,'Magic Kelly','','',''),
(6031,'Insectes','','',''),
(6033,'Azulejos','','',''),
(6034,'Real Escuela Andaluza Del Arte Ecuestre','','',''),
(6035,'Farandole','','',''),
(6036,'Grande venerie royale','','',''),
(6037,'Hermès-sellier','','',''),
(6038,'Levriers','','',''),
(6039,'Maillons','','',''),
(6040,'Mare aux canards','','',''),
(6041,'Marine et cavalerie','','',''),
(6042,'Le Mors \"A La Conétable\"','','',''),
(6043,'Mozart','','',''),
(6044,'Les Muserolles','','',''),
(6045,'Napoleon','','',''),
(6046,'Palefroi','','',''),
(6047,'Parures de Samouraïs','','',''),
(6048,'Passementerie','','',''),
(6049,'Petits chevaux','','',''),
(6050,'Plumes','','',''),
(6051,'Promenade de Longchamp','','',''),
(6052,'La Reale','','',''),
(6053,'Reprise','','',''),
(6054,'Reveries japonaises','','',''),
(6055,'Ritote','','',''),
(6056,'Rose de vents','','',''),
(6057,'Selles a housse','','',''),
(6058,'Splendeur des maharadjas','Splendeur des maharadjas','',''),
(6059,'Springs','','',''),
(6060,'Sulfures & presse-papiers','','',''),
(6061,'Les Tambours','','',''),
(6062,'Le Tarot','','',''),
(6063,'Tribord','','',''),
(6064,'Tropiques','','',''),
(6065,'Les Tuileries','','',''),
(6066,'Vive le vent','','',''),
(6313,'?','Jardins des metamorphose','',''),
(6068,'Zabavushka','','',''),
(6069,'Le saut H','Le saut H','',''),
(6070,'L\'Hiver','','',''),
(6071,'Sacre du printems','','',''),
(6072,'Carpe Diem','','',''),
(6073,'Le temps des marionnettes','','',''),
(6177,'Anne Marie Cassandre','Anne Marie Cassandre','',''),
(6330,'Austria','','',''),
(6079,'1821 - Hommage a l\'Amitié','','',''),
(6080,'A Propos de Bottes','','',''),
(6081,'Alliances du monde','Alliances du monde','',''),
(6082,'Bolduc au carre','','',''),
(6312,'','Michèle Duchêne','',''),
(6084,'Casques et Plumets','','',''),
(6085,'Cheval de Caractere','','',''),
(6086,'Chiens et Valets','','',''),
(6087,'Daiske Nomura','','',''),
(6088,'Chorus stellarium','','',''),
(6089,'Circuit FSH 24','','',''),
(6090,'Virginie Jamin','','',''),
(6091,'Collies de chiens','','',''),
(6092,'Confidents des coeur','','',''),
(6093,'Brazil II','','',''),
(6094,'Do Re Boucles','','',''),
(6095,'Carine Brancowitz','','',''),
(6096,'En Liberte','','',''),
(6097,'Dominik Jarlegant','','',''),
(6098,'Face au large','','',''),
(6099,'Ferronnerie','','',''),
(6101,'Feux d\'artifice','Feux d\'artifice','',''),
(6102,'Fleurs et Carlines','Fleurs et Carlines','',''),
(6103,'Flots Fleurs et Frontaux','','',''),
(6104,'Geometrie Cretoise','','',''),
(6105,'India','','',''),
(6106,'François Houtin','François Houtin','François Houtin',''),
(6107,'Jardins des métamorphoses','','',''),
(6108,'Gianpaolo Pagni','','',''),
(6109,'A.M. Cassandre','','',''),
(6111,'Sophie Koechlin','','',''),
(6112,'L\'art indien des plaines','','',''),
(6113,'Pierre Marie Agin','','',''),
(6114,'Le sacres d\'Hiver','','',''),
(6115,'Les Chemins Secrets','','',''),
(6116,'Yves Benoist Gironiere','','',''),
(6117,'Les Courses','','',''),
(6118,'Les Nouveaux Amoureux de Paris','','',''),
(6119,'Ibrahim Alamia Sefedin','','',''),
(6120,'Les Perles de Tourkana','','',''),
(6121,'Ludovicus Magnus','Ludovicus Magnus','',''),
(6122,'Mega chariot','','',''),
(6123,'Filipe Jardim','','',''),
(6124,'Modernisme Tropical','','',''),
(6125,'Monsieur et Madame ll','','',''),
(6126,'Mors a jouets chemise','','',''),
(6127,'Mountain Zebra','','',''),
(6128,'Panoplie Equestre','','',''),
(6129,'Claudia Stuhlhofer-Mayr','','',''),
(6130,'Paperoles','','',''),
(6131,'Jonathan Burton','','',''),
(6132,'Parade','','',''),
(6133,'Peinture fraiche','','',''),
(6134,'Archives Hermès','','',''),
(6135,'Printemps été 69 - automne hiver 70','Printemps été 69 - automne hiver 70','',''),
(6136,'Proues','Proues','',''),
(6137,'Qalamdan','','',''),
(6138,'Pierre Péron','','',''),
(6139,'Quadrige','','',''),
(6140,'Leila Menchari','','',''),
(6141,'Regina','','',''),
(6142,'Rencontre oceane','Rencontre oceane','',''),
(6143,'Sangles','','',''),
(6144,'Sous le Cédre','Sous le Cédre','',''),
(6145,'Ardmore Artists','','',''),
(6147,'Tresors du Nil','Tresors du Nil','',''),
(6148,'Tsubas','Tsubas','',''),
(6149,'Washington\'s carriage','Washington\'s carriage','',''),
(6152,'Tunisia','','',''),
(6158,'Japan','','',''),
(6159,'The Savana Dance','','',''),
(6207,'66x70','','',''),
(6266,'Twilly','','',''),
(6314,'','Tarot','',''),
(6222,'Dior','','',''),
(6225,'88x88','','',''),
(6310,'','Antoine de Jacquelot','',''),
(6251,'66x66','','',''),
(6253,'RADO','','',''),
(6258,'The sign of excellence','','',''),
(6259,'89x89','','',''),
(6328,'Судан','','',''),
(6268,'Adminer','','',''),
(6269,'Adminer Renderer','','',''),
(6270,'Republic of South Africa','Южно-Африканская Республика','République d\'Afrique du Sud',''),
(6271,'Art des steppes','','',''),
(6272,'Bracelets De Lumiere','','',''),
(6329,'Sudan','Судан','',''),
(6276,'Mors à Jouets','','',''),
(6277,'Tsubas','','',''),
(6278,'Gavroche 42x42','','',''),
(6308,'?','1821 Hommage a L\'Amite','',''),
(6306,'Collections','Коллекции','Collections','Samlingar'),
(6326,'Axel Dumas','','',''),
(6282,'Voyage en Etoffes','','',''),
(6283,'Netherlands','Нидерланды','',''),
(6284,'Beyond retro','','',''),
(6285,'Metropol','Metropol','',''),
(6286,'Реставрация как предчувствие','Реставрация как предчувствие','Restoration as a Premonition','Restoration as a Premonition'),
(6288,'Кузьминых Анна Васильевна','','',''),
(6291,'Can view full navigation menu, including finacial information','Может видеть полное меню, включая финансовые данные','',''),
(6297,'Барыня с собачкой','','',''),
(6296,'Can view H fields with tag \'restricted\'','','',''),
(6293,'Bandana','','',''),
(6294,'Pop','','',''),
(6298,'Козлята','','',''),
(5738,'Page lister','','',''),
(6302,'Search results','Результаты поиска','',''),
(6316,'Brazil','','',''),
(6317,'Brazil','','',''),
(6318,'Les Voitures a Transformation','','',''),
(6319,'Les Voitures a Transformation','','',''),
(6320,'Cavalcadour','','',''),
(6321,'Eperon d\'or','','',''),
(6322,'Grand manege','','',''),
(6323,'Plumes','','',''),
(6324,'Cuivreries','','',''),
(6325,'Cuivreries','','',''),
(6327,'140x140','','',''),
(6349,'Hermès Flagship','','',''),
(6347,'Hermès Flagship','','',''),
(6331,'Mystery of A.M.Cassandre','Мистерия А.М.Кассандры','',''),
(6332,'Perspective','','',''),
(6333,'Littérature','','',''),
(6334,'Greece','','',''),
(6345,'Can see the H object prices','','',''),
(6335,'Bolduc au carre','','',''),
(6348,'Hermès Flagship','','',''),
(6336,'Germany','','',''),
(6337,'A boor playing a lute in an interior with a woman drinking at his side, peasants playing cards beyond','','',''),
(6338,'Philosopher with an Open Book','','',''),
(6346,'Hermès Scarf Guides','','',''),
(6351,'Purchase 2018-02-19','Покупка 2018-02-19','',''),
(6352,'Purchase 2009-06-15','Покупка 2009-06-15','',''),
(6353,'Premier voyage aerien','','',''),
(6354,'Can see the A object prices','','',''),
(6355,'Can view A fields with tag \'restricted\'','','',''),
(6356,'Caravaggio','Караваджо','',''),
(6357,'Caravaggisti','Караваджисты','',''),
(6358,'Robe Légère','','',''),
(6359,'HopCash','','',''),
(6360,'Théo de Gueltzl','','','');
/*!40000 ALTER TABLE `field_title` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `fieldgroups`
--

DROP TABLE IF EXISTS `fieldgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldgroups`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `fieldgroups` WRITE;
/*!40000 ALTER TABLE `fieldgroups` DISABLE KEYS */;
INSERT INTO `fieldgroups` VALUES
(2,'admin'),
(3,'user'),
(4,'role'),
(5,'permission'),
(57,'home'),
(81,'basic-page'),
(80,'search'),
(149,'h_size'),
(98,'collections'),
(99,'language'),
(150,'h_sizes'),
(110,'countries'),
(111,'country'),
(113,'spot'),
(114,'h_artwork'),
(115,'h_spot'),
(151,'h_collections'),
(117,'h_collection'),
(118,'h_persons'),
(119,'h_sellers'),
(120,'h_brands'),
(121,'h_artworks'),
(122,'h_possessions'),
(123,'h_brand'),
(124,'h_person'),
(125,'h_seller'),
(126,'h_possession'),
(127,'a_school'),
(128,'a_person'),
(129,'a_collection'),
(130,'a_possession'),
(131,'a_artwork'),
(132,'a_seller'),
(133,'a_spot'),
(134,'a_collections'),
(135,'a_schools'),
(136,'a_persons'),
(137,'a_sellers'),
(138,'a_artworks'),
(139,'a_possessions'),
(141,'d_person'),
(142,'d_spot'),
(143,'d_persons'),
(144,'d_artworks'),
(146,'d_artwork');
/*!40000 ALTER TABLE `fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `fieldgroups_fields`
--

DROP TABLE IF EXISTS `fieldgroups_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `fields_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sort` int(11) unsigned NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldgroups_fields`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `fieldgroups_fields` WRITE;
/*!40000 ALTER TABLE `fieldgroups_fields` DISABLE KEYS */;
INSERT INTO `fieldgroups_fields` VALUES
(2,2,1,''),
(2,1,0,''),
(3,3,0,''),
(3,4,2,''),
(4,5,0,''),
(5,1,0,''),
(3,92,1,''),
(131,1,0,'{\"columnWidth\":40}'),
(81,1,0,''),
(124,133,5,'{\"columnWidth\":25}'),
(80,1,0,''),
(81,44,1,''),
(98,1,0,''),
(131,193,4,'{\"columnWidth\":20}'),
(99,1,0,NULL),
(99,100,1,NULL),
(3,99,3,NULL),
(123,44,4,'{\"columnWidth\":30}'),
(123,43,5,'{\"columnWidth\":70}'),
(99,101,2,NULL),
(3,102,4,NULL),
(110,126,1,'{\"columnWidth\":33}'),
(149,1,0,NULL),
(110,1,0,'{\"columnWidth\":33}'),
(111,1,0,NULL),
(123,149,3,'{\"columnWidth\":20}'),
(113,44,1,'{\"columnWidth\":50}'),
(110,43,2,'{\"columnWidth\":33}'),
(115,43,2,'{\"columnWidth\":50}'),
(115,1,0,'{\"columnWidth\":25}'),
(117,44,1,'{\"columnWidth\":20}'),
(118,1,0,NULL),
(118,43,1,NULL),
(119,1,0,NULL),
(119,43,1,NULL),
(120,1,0,NULL),
(120,43,1,NULL),
(121,1,0,NULL),
(121,43,1,NULL),
(122,1,0,NULL),
(122,43,1,NULL),
(125,159,3,'{\"columnWidth\":25}'),
(126,43,8,'{\"columnWidth\":20}'),
(123,1,0,'{\"columnWidth\":40}'),
(124,134,6,'{\"columnWidth\":25}'),
(124,243,7,'{\"columnWidth\":25,\"maxlength\":2048}'),
(124,44,8,'{\"columnWidth\":25}'),
(124,127,4,'{\"columnWidth\":25}'),
(124,132,2,'{\"columnWidth\":25}'),
(125,158,2,'{\"columnWidth\":25}'),
(125,1,0,'{\"columnWidth\":50}'),
(125,44,1,'{\"columnWidth\":50}'),
(123,148,1,'{\"columnWidth\":20}'),
(123,127,2,'{\"columnWidth\":20}'),
(117,43,4,'{\"columnWidth\":20}'),
(126,156,7,'{\"columnWidth\":20}'),
(126,1,0,'{\"columnWidth\":20}'),
(126,154,1,'{\"columnWidth\":20}'),
(126,153,2,'{\"columnWidth\":20}'),
(126,150,3,'{\"columnWidth\":20}'),
(126,152,4,'{\"columnWidth\":20,\"label\":\"Seller\",\"label5753\":\"\\u041f\\u0440\\u043e\\u0434\\u0430\\u0432\\u0435\\u0446\"}'),
(126,157,5,'{\"columnWidth\":20}'),
(126,155,6,'{\"columnWidth\":20}'),
(127,44,1,'{\"columnWidth\":20}'),
(132,43,4,NULL),
(133,44,2,NULL),
(134,1,0,NULL),
(134,43,1,NULL),
(135,1,0,NULL),
(135,43,1,NULL),
(136,1,0,NULL),
(136,43,1,NULL),
(137,1,0,NULL),
(137,43,1,NULL),
(138,1,0,NULL),
(138,43,1,NULL),
(139,1,0,NULL),
(139,43,1,NULL),
(117,137,3,'{\"columnWidth\":20}'),
(117,1,0,'{\"columnWidth\":20}'),
(113,1,0,'{\"columnWidth\":50}'),
(128,177,7,'{\"columnWidth\":20}'),
(128,43,8,'{\"columnWidth\":40}'),
(128,44,9,'{\"columnWidth\":20}'),
(128,243,10,'{\"columnWidth\":20}'),
(127,248,3,'{\"columnWidth\":20}'),
(141,219,5,'{\"columnWidth\":25}'),
(132,208,3,NULL),
(132,1,0,NULL),
(132,210,1,NULL),
(132,44,2,NULL),
(129,44,6,'{\"columnWidth\":25}'),
(129,43,5,'{\"columnWidth\":25}'),
(125,43,4,'{\"columnWidth\":50}'),
(130,201,7,'{\"columnWidth\":20}'),
(130,204,8,'{\"columnWidth\":20}'),
(142,1,0,NULL),
(143,1,0,NULL),
(143,43,1,NULL),
(144,1,0,NULL),
(144,43,1,NULL),
(117,147,2,'{\"columnWidth\":20}'),
(141,44,6,'{\"columnWidth\":25}'),
(141,43,7,'{\"columnWidth\":25}'),
(142,43,1,NULL),
(133,43,1,NULL),
(142,44,2,NULL),
(133,1,0,NULL),
(146,44,6,'{\"columnWidth\":40}'),
(127,43,2,'{\"columnWidth\":40}'),
(127,1,0,'{\"columnWidth\":20}'),
(131,191,5,'{\"columnWidth\":20}'),
(131,194,6,'{\"columnWidth\":20}'),
(131,192,7,'{\"columnWidth\":20}'),
(131,185,8,'{\"columnWidth\":20}'),
(131,188,9,'{\"columnWidth\":20}'),
(131,183,10,'{\"columnWidth\":20}'),
(131,190,11,'{\"columnWidth\":20}'),
(131,181,12,'{\"columnWidth\":20}'),
(131,187,13,'{\"columnWidth\":20}'),
(124,131,1,'{\"columnWidth\":25,\"maxlength\":2048}'),
(150,1,0,'{\"columnWidth\":25}'),
(150,230,1,'{\"columnWidth\":25}'),
(150,43,2,'{\"columnWidth\":25}'),
(114,243,20,'{\"columnWidth\":20,\"maxlength\":2048}'),
(114,44,21,'{\"columnWidth\":40}'),
(114,43,22,'{\"columnWidth\":40}'),
(57,1,0,''),
(146,1,0,'{\"columnWidth\":20}'),
(146,241,1,'{\"columnWidth\":20}'),
(128,178,1,'{\"columnWidth\":20}'),
(128,179,2,'{\"columnWidth\":20}'),
(131,235,14,'{\"columnWidth\":20}'),
(115,44,1,'{\"columnWidth\":25}'),
(141,217,1,'{\"columnWidth\":25}'),
(141,218,2,'{\"columnWidth\":25}'),
(141,216,3,'{\"columnWidth\":25}'),
(141,127,4,'{\"columnWidth\":25}'),
(141,1,0,'{\"columnWidth\":25}'),
(146,242,2,'{\"columnWidth\":20}'),
(146,221,3,'{\"columnWidth\":20,\"label\":\"\\u0425\\u0443\\u0434\\u043e\\u0436\\u043d\\u0438\\u043a\"}'),
(146,236,4,'{\"columnWidth\":20}'),
(146,43,5,'{\"columnWidth\":40}'),
(151,1,0,NULL),
(114,226,0,'{\"columnWidth\":20}'),
(114,1,1,'{\"columnWidth\":40}'),
(114,138,2,'{\"columnWidth\":20}'),
(114,142,3,'{\"columnWidth\":20}'),
(114,143,4,'{\"columnWidth\":20}'),
(114,135,5,'{\"columnWidth\":20}'),
(114,145,6,'{\"columnWidth\":20}'),
(114,229,7,'{\"columnWidth\":20}'),
(114,140,8,'{\"columnWidth\":20}'),
(114,141,9,'{\"columnWidth\":20}'),
(114,136,10,'{\"columnWidth\":20}'),
(114,225,11,'{\"columnWidth\":20}'),
(114,232,12,'{\"columnWidth\":20}'),
(114,146,13,'{\"columnWidth\":20}'),
(114,250,14,'{\"columnWidth\":20}'),
(114,233,15,'{\"columnWidth\":20}'),
(131,44,15,'{\"columnWidth\":40}'),
(131,43,16,'{\"columnWidth\":40}'),
(131,184,1,'{\"columnWidth\":20}'),
(131,189,2,'{\"columnWidth\":20}'),
(131,195,3,'{\"columnWidth\":20}'),
(128,176,5,'{\"columnWidth\":20}'),
(130,43,10,'{\"columnWidth\":20}'),
(130,44,11,'{\"columnWidth\":20}'),
(128,247,3,'{\"columnWidth\":20}'),
(128,180,4,'{\"columnWidth\":20}'),
(128,1,0,'{\"columnWidth\":20}'),
(130,1,9,'{\"columnWidth\":20}'),
(130,200,0,'{\"columnWidth\":20}'),
(130,202,1,'{\"columnWidth\":20}'),
(130,205,2,'{\"columnWidth\":20}'),
(130,206,3,'{\"columnWidth\":20}'),
(130,245,4,'{\"columnWidth\":20}'),
(130,203,5,'{\"columnWidth\":20}'),
(130,207,6,'{\"columnWidth\":20}'),
(129,198,1,'{\"columnWidth\":25}'),
(129,196,2,'{\"columnWidth\":25}'),
(129,199,3,'{\"columnWidth\":25}'),
(129,127,4,'{\"columnWidth\":25}'),
(129,1,0,'{\"columnWidth\":25}'),
(128,127,6,'{\"columnWidth\":20}'),
(124,43,9,'{\"columnWidth\":50}'),
(124,130,3,'{\"columnWidth\":25}'),
(124,1,0,'{\"columnWidth\":50}'),
(114,128,19,'{\"columnWidth\":20}'),
(114,249,16,'{\"columnWidth\":20}'),
(114,139,17,'{\"columnWidth\":20}'),
(114,137,18,'{\"columnWidth\":20}');
/*!40000 ALTER TABLE `fieldgroups_fields` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `label` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
INSERT INTO `fields` VALUES
(1,'FieldtypePageTitleLanguage','title',13,'Title','{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"label5753\":\"\\u0418\\u043c\\u044f\",\"minlength\":0,\"showCount\":0,\"langBlankInherit\":0,\"tags\":\"page\"}'),
(2,'FieldtypeModule','process',25,'Process','{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1,\"matchType\":\"verbose\",\"blankType\":\"null\"}'),
(3,'FieldtypePassword','pass',24,'Set Password','{\"collapsed\":1,\"size\":50,\"maxlength\":128,\"complexifyBanMode\":\"loose\",\"complexifyFactor\":0.7,\"minlength\":3,\"requireOld\":0,\"unmask\":0,\"requirements\":[\"letter\",\"digit\"]}'),
(5,'FieldtypePage','permissions',24,'Permissions','{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}'),
(4,'FieldtypePage','roles',24,'Roles','{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}'),
(92,'FieldtypeEmail','email',9,'E-Mail Address','{\"size\":70,\"maxlength\":255}'),
(43,'FieldtypeTextareaLanguage','body',1,'Body','{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":15,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,codemagic,|,fullscreen\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote\",\"plugins\":\"autosave,inlinepopups,safari,codemagic,media,paste,fullscreen\",\"valid_elements\":\"@[id|class],div[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],code\",\"contentType\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":0,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"langBlankInherit\":0,\"extraAllowedContent\":\"div[class]\"}'),
(44,'FieldtypeImage','images',0,'Images','{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"entityEncode\":1,\"unzip\":1,\"descriptionRows\":1,\"adminThumbs\":1,\"fileSchema\":270}'),
(229,'FieldtypePage','h_aw_size',0,'Size','{\"derefAsPage\":1,\"inputfield\":\"InputfieldSelect\",\"distinctAutojoin\":true,\"label5753\":\"\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440\",\"parent_id\":6185,\"labelFieldName\":\"title\",\"description\":\"Select size from menu. If missing, add it\",\"description5753\":\"\\u0412\\u044b\\u0431\\u0435\\u0440\\u0438 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440 \\u0438\\u0437 \\u043c\\u0435\\u043d\\u044e. \\u0415\\u0441\\u043b\\u0438 \\u0435\\u0433\\u043e \\u043d\\u0435\\u0442, \\u0442\\u043e \\u0441\\u043e\\u0437\\u0434\\u0430\\u0439.\",\"addable\":1,\"label5754\":\"Taille\",\"tags\":\"page\",\"template_id\":96}'),
(241,'FieldtypeOptions','d_aw_type',0,'Тип игрушки','{\"inputfieldClass\":\"InputfieldCheckboxes\",\"optionColumns\":0,\"tags\":\"page list\",\"label5753\":\"\\u0422\\u0438\\u043f \\u0438\\u0433\\u0440\\u0443\\u0448\\u043a\\u0438\"}'),
(242,'FieldtypeOptions','d_aw_size',0,'Размер','{\"label5753\":\"\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440\",\"inputfieldClass\":\"InputfieldRadios\",\"optionColumns\":0,\"tags\":\"page\"}'),
(230,'FieldtypePage','h_aw_sizes',0,'Sizes','{\"derefAsPage\":0,\"inputfield\":\"InputfieldPageAutocomplete\",\"distinctAutojoin\":true,\"parent_id\":6163,\"labelFieldName\":\"title\",\"description\":\"Start typing the size to select matches. If there is no match, hit enter to add the country as a new page. You may sort sizes.\",\"operator\":\"%=\",\"searchFields\":\"title\",\"addable\":1}'),
(99,'FieldtypeModule','admin_theme',8,'Admin Theme','{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}'),
(100,'FieldtypeFile','language_files_site',24,'Site Translation Files','{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for translations specific to your site (like files in \\/site\\/templates\\/ for example).\",\"descriptionRows\":0,\"fileSchema\":14}'),
(101,'FieldtypeFile','language_files',24,'Core Translation Files','{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for [language packs](http:\\/\\/modules.processwire.com\\/categories\\/language-pack\\/). To delete all files, double-click the trash can for any file, then save.\",\"descriptionRows\":0,\"fileSchema\":14}'),
(102,'FieldtypePage','language',24,'Language','{\"derefAsPage\":1,\"parent_id\":5750,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldRadios\",\"required\":1}'),
(126,'FieldtypePage','countries',0,'Countries','{\"parent_id\":\"\\/countries\\/\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldPageAutocomplete\",\"template_id\":\"country\",\"operator\":\"%=\",\"searchFields\":\"title\",\"addable\":1,\"description\":\"This is an auto-complete field. Start typing the country name to add and select matches. If there is no match, hit enter to add the country as a new page. You may drag to sort countries in the order you prefer.\"}'),
(226,'FieldtypeOptions','h_aw_options',0,'&nbsp;','{\"inputfieldClass\":\"InputfieldCheckboxes\",\"size\":10,\"optionColumns\":0,\"tags\":\"page\",\"label5753\":\"&nbsp;\",\"label5754\":\"&nbsp;\"}'),
(127,'FieldtypePage','country',0,'Country','{\"parent_id\":5786,\"parent_name\":\"countries\",\"template_id\":57,\"template_name\":\"country\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldSelect\",\"description\":\"Start typing the name to add, select matches. If no match, hit enter to add the name as a new page.\",\"description5753\":\"\\u041d\\u0430\\u0447\\u0438\\u043d\\u0430\\u0439 \\u043f\\u0435\\u0447\\u0430\\u0442\\u0430\\u0442\\u044c, \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u043e\\u0434\\u0441\\u043a\\u0430\\u0437\\u043a\\u0430. \\u0415\\u0441\\u043b\\u0438 \\u0441\\u043b\\u043e\\u0432\\u0430 \\u043d\\u0435\\u0442 \\u0432 \\u0441\\u043b\\u043e\\u0432\\u0430\\u0440\\u0435, \\u043d\\u0430\\u0436\\u043c\\u0438 \\\"enter\\\", \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430 \\u0437\\u0430\\u043f\\u043e\\u043c\\u043d\\u0438\\u0442 \\u0441\\u043b\\u043e\\u0432\\u043e.\",\"derefAsPage\":1,\"label5753\":\"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0430\",\"label5754\":\"Pays\",\"label5755\":\"Land\",\"columnWidth\":50,\"distinctAutojoin\":true,\"tags\":\"page\"}'),
(128,'FieldtypeCheckbox','h_aw_featured',0,'Is featured?','{\"columnWidth\":50}'),
(130,'FieldtypeOptions','h_av_duty',0,'Role','{\"columnWidth\":33,\"label5753\":\"\\u0420\\u043e\\u043b\\u044c\",\"label5755\":\"Role\",\"label5754\":\"Role\",\"inputfieldClass\":\"InputfieldCheckboxes\",\"required\":1,\"optionColumns\":0,\"tags\":\"caption page\",\"collapsed\":0}'),
(131,'FieldtypeTextLanguage','h_av_firstname',0,'First name','{\"columnWidth\":50,\"label5753\":\"\\u0418\\u043c\\u044f\",\"label5755\":\"F\\u00f6rnamn\",\"label5754\":\"Prenom\"}'),
(132,'FieldtypeTextLanguage','h_av_lastname',0,'Last name','{\"columnWidth\":50,\"label5753\":\"\\u0424\\u0430\\u043c\\u0438\\u043b\\u0438\\u044f\",\"label5755\":\"Efternamn\",\"label5754\":\"Nom\"}'),
(133,'FieldtypeURL','h_av_url',0,'WWW','{\"columnWidth\":50,\"label5753\":\"WWW\",\"label5755\":\"WWW\",\"label5754\":\"WWW\",\"textformatters\":[\"TextformatterEntities\"],\"tags\":\"page\"}'),
(134,'FieldtypeText','h_av_date',0,'Years of life','{\"columnWidth\":50,\"label5753\":\"\\u0413\\u043e\\u0434\\u044b \\u0436\\u0438\\u0437\\u043d\\u0438\",\"label5755\":\"Livs\\u00e5r\",\"label5754\":\"Des ann\\u00e9es de vie\",\"tags\":\"page\",\"langBlankInherit\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}'),
(135,'FieldtypePage','h_aw_brand',0,'Brand','{\"columnWidth\":33,\"label5753\":\"\\u0411\\u0440\\u0435\\u043d\\u0434\",\"label5755\":\"Varum\\u00e4rke\",\"label5754\":\"Maison\",\"tags\":\"caption page\",\"template_id\":69,\"template_name\":\"h_brand\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\",\"derefAsPage\":1,\"usePageEdit\":0,\"parent_id\":0,\"required\":1,\"distinctAutojoin\":true}'),
(136,'FieldtypeTextLanguage','h_aw_more',0,'Further Info','{\"columnWidth\":50,\"label5753\":\"\\u0414\\u043e\\u043f. \\u0418\\u043d\\u0444o\",\"label5755\":\"Vidare information\",\"label5754\":\"Info Suppl\\u00e9mentaires\",\"langBlankInherit\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"tags\":\"page\"}'),
(137,'FieldtypeURL','h_aw_url',0,'Provenance','{\"columnWidth\":50,\"label5753\":\"\\u041f\\u0440\\u043e\\u0432\\u0435\\u043d\\u0430\\u043d\\u0441\",\"label5755\":\"Ursprung\",\"label5754\":\"Provenance\",\"textformatters\":[\"TextformatterEntities\"],\"tags\":\"page prices\",\"noRelative\":0,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0}'),
(138,'FieldtypePage','h_aw_person',0,'Designer','{\"columnWidth\":33,\"label5753\":\"\\u0425\\u0443\\u0434\\u043e\\u0436\\u043d\\u0438\\u043a\",\"label5755\":\"Konstn\\u00e4r\",\"label5754\":\"Artiste\",\"template_id\":70,\"template_name\":\"h_person\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\",\"tags\":\"page\",\"distinctAutojoin\":true,\"derefAsPage\":0,\"usePageEdit\":0,\"parent_id\":0}'),
(139,'FieldtypePage','h_aw_possession',32,'Possession','{\"columnWidth\":33,\"template_id\":72,\"template_name\":\"h_possession\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\",\"distinctAutojoin\":true,\"derefAsPage\":0,\"usePageEdit\":0,\"parent_id\":0,\"tags\":\"restricted\",\"editRoles\":[5735],\"viewRoles\":[5735]}'),
(140,'FieldtypeOptions','h_aw_base',0,'Support','{\"columnWidth\":33,\"label5753\":\"\\u041e\\u0441\\u043d\\u043e\\u0432\\u0430\",\"label5755\":\"St\\u00f6d\",\"label5754\":\"Support\",\"tags\":\"page\",\"inputfieldClass\":\"InputfieldSelect\"}'),
(141,'FieldtypeText','h_aw_condition',0,'Condition report','{\"columnWidth\":50,\"label5753\":\"\\u0421\\u043e\\u0441\\u0442\\u043e\\u044f\\u043d\\u0438\\u0435\",\"label5755\":\"Konditionsrapport\",\"label5754\":\"Rapport de condition\",\"tags\":\"page\",\"langBlankInherit\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}'),
(142,'FieldtypeOptions','h_aw_popularity',0,'Popularity','{\"columnWidth\":33,\"label5753\":\"\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u043e\\u0441\\u0442\\u044c\",\"label5755\":\"Popularitet\",\"label5754\":\"Popularit\\u00e9\",\"tags\":\"list page\",\"inputfieldClass\":\"InputfieldSelect\"}'),
(143,'FieldtypeOptions','h_aw_rarity',0,'Rarity','{\"columnWidth\":33,\"label5753\":\"\\u0420\\u0435\\u0434\\u043a\\u043e\\u0441\\u0442\\u044c\",\"label5755\":\"S\\u00e4llsynthet\",\"label5754\":\"Raret\\u00e9\",\"tags\":\"list page\",\"inputfieldClass\":\"InputfieldSelect\"}'),
(145,'FieldtypeText','h_aw_year',0,'Year','{\"columnWidth\":33,\"label5753\":\"\\u0413\\u043e\\u0434\",\"label5755\":\"\\u00c5r\",\"label5754\":\"Ann\\u00e9e\",\"tags\":\"list page\",\"langBlankInherit\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}'),
(146,'FieldtypePage','h_aw_collection',0,'Collection','{\"columnWidth\":33,\"label5753\":\"\\u041a\\u043e\\u043b\\u043b\\u0435\\u043a\\u0446\\u0438\\u044f\",\"label5755\":\"Samling\",\"label5754\":\"Collection\",\"template_id\":63,\"template_name\":\"h_collection\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\",\"tags\":\"page restricted\"}'),
(147,'FieldtypePage','h_c_person',0,'Collector','{\"columnWidth\":33,\"template_id\":70,\"template_name\":\"h_person\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\",\"label5753\":\"\\u041a\\u043e\\u043b\\u043b\\u0435\\u043a\\u0446\\u0438\\u043e\\u043d\\u0435\\u0440\",\"label5754\":\"Collectionneur\",\"label5755\":\"Samlare\",\"derefAsPage\":0,\"usePageEdit\":0,\"parent_id\":0,\"tags\":\"page\"}'),
(148,'FieldtypeOptions','h_br_duty',0,'Brand type','{\"columnWidth\":33,\"label5753\":\"\\u0422\\u0438\\u043f \\u0431\\u0440\\u0435\\u043d\\u0434\\u0430\",\"label5755\":\"M\\u00e4rktyp\",\"label5754\":\"Type de marque\",\"inputfieldClass\":\"InputfieldSelect\",\"defaultValue\":1,\"tags\":\"page list\"}'),
(149,'FieldtypeURL','h_br_url',0,'WWW','{\"columnWidth\":50,\"label5753\":\"WWW\",\"label5755\":\"WWW\",\"label5754\":\"WWW\",\"textformatters\":[\"TextformatterEntities\"],\"tags\":\"page\"}'),
(150,'FieldtypePage','h_p_artwork',0,'Scarve','{\"columnWidth\":33,\"label5753\":\"\\u041f\\u043b\\u0430\\u0442\\u043e\\u043a\",\"label5755\":\"Halsduk\",\"label5754\":\"Foulard\",\"template_id\":60,\"template_name\":\"h_artwork\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\",\"tags\":\"prices\"}'),
(151,'FieldtypePage','h_p_person',0,'Seller','{\"columnWidth\":33,\"label5753\":\"\\u041f\\u0440\\u043e\\u0434\\u0430\\u0432\\u0435\\u0446\",\"label5755\":\"S\\u00e4ljare\",\"label5754\":\"Fournisseur\",\"template_id\":70,\"template_name\":\"h_person\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\",\"tags\":\"restricted prices\"}'),
(152,'FieldtypePage','h_p_seller',0,'Provider','{\"columnWidth\":33,\"label5753\":\"\\u0418\\u0441\\u0442\\u043e\\u0447\\u043d\\u0438\\u043a\",\"label5755\":\"Leverant\\u00f6r\",\"label5754\":\"Fournisseur\",\"template_id\":71,\"template_name\":\"h_seller\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\",\"tags\":\"restricted prices\"}'),
(153,'FieldtypeOptions','h_p_currency',0,'Currency','{\"columnWidth\":33,\"label5753\":\"\\u0412 \\u043a\\u0430\\u043a\\u043e\\u0439 \\u0432\\u0430\\u043b\\u044e\\u0442\\u0435\",\"label5755\":\"Valuta\",\"label5754\":\"Devise\",\"tags\":\"prices\"}'),
(154,'FieldtypeDatetime','h_p_date',0,'Date','{\"label5753\":\"\\u0414\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438\\u043e\\u0431\\u0440\\u0435\\u0442\\u0435\\u043d\\u0438\\u044f\",\"label5755\":\"Datum f\\u00f6r f\\u00f6rv\\u00e4rv\",\"label5754\":\"Date de l\'acquisition\",\"size\":25,\"datepicker\":3,\"timeInputSelect\":0,\"dateInputFormat\":\"Y-m-d\",\"tags\":\"restricted prices\"}'),
(155,'FieldtypeInteger','h_p_price_start',0,'Estimate','{\"columnWidth\":33,\"label5753\":\"\\u0417\\u0430\\u044f\\u0432\\u043b\\u0435\\u043d\\u043d\\u0430\\u044f \\u0446\\u0435\\u043d\\u0430\",\"label5755\":\"Utropspris\",\"label5754\":\"Prix estim\\u00e9\",\"tags\":\"prices\"}'),
(156,'FieldtypeInteger','h_p_price_final',0,'Hammer price','{\"columnWidth\":33,\"label5753\":\"\\u0417\\u0430\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"label5755\":\"Klubbad\",\"label5754\":\"Hammer price\",\"tags\":\"prices\"}'),
(157,'FieldtypeInteger','h_p_object_number',0,'Lot','{\"columnWidth\":33,\"label5753\":\"\\u041b\\u043e\\u0442\",\"label5755\":\"Lot\",\"label5754\":\"Lot\",\"tags\":\"restricted prices\"}'),
(158,'FieldtypeTextLanguage','h_s_address',0,'Address','{\"columnWidth\":50,\"label5753\":\"\\u0410\\u0434\\u0440\\u0435\\u0441\",\"label5755\":\"Adress\",\"label5754\":\"Adresse\",\"tags\":\"restricted prices\"}'),
(159,'FieldtypeURL','h_s_url',0,'WWW','{\"columnWidth\":50,\"label5753\":\"WWW\",\"label5755\":\"WWW\",\"label5754\":\"WWW\",\"textformatters\":[\"TextformatterEntities\"],\"tags\":\"page prices\"}'),
(176,'FieldtypePage','a_av_school',0,'Painting School','{\"columnWidth\":33,\"label5753\":\"\\u0428\\u043a\\u043e\\u043b\\u0430 \\u0436\\u0438\\u0432\\u043e\\u043f\\u0438\\u0441\\u0438\",\"label5755\":\"M\\u00e5lskola\",\"label5754\":\"\\u00c9cole de peinture\",\"template_id\":73,\"template_name\":\"a_school\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\",\"tags\":\"page\"}'),
(177,'FieldtypeTextLanguage','a_av_date',0,'Years of life','{\"columnWidth\":50,\"label5753\":\"\\u0413\\u043e\\u0434\\u044b \\u0436\\u0438\\u0437\\u043d\\u0438\",\"label5755\":\"Livs\\u00e5r\",\"label5754\":\"Des ann\\u00e9es de vie\",\"tags\":\"page\"}'),
(178,'FieldtypeTextLanguage','a_av_firstname',0,'First name','{\"columnWidth\":50,\"label5753\":\"\\u0418\\u043c\\u044f\",\"label5755\":\"F\\u00f6rnamn\",\"label5754\":\"Prenom\"}'),
(179,'FieldtypeTextLanguage','a_av_lastname',0,'Last name','{\"columnWidth\":50,\"label5753\":\"\\u0424\\u0430\\u043c\\u0438\\u043b\\u0438\\u044f\",\"label5755\":\"Efternamn\",\"label5754\":\"Nom\"}'),
(180,'FieldtypeURL','a_av_url',0,'WWW','{\"columnWidth\":50,\"label5753\":\"WWW\",\"label5755\":\"WWW\",\"label5754\":\"WWW\",\"textformatters\":[\"TextformatterEntities\"],\"tags\":\"page\"}'),
(181,'FieldtypeURL','a_aw_url',0,'Provenance','{\"columnWidth\":50,\"label5753\":\"\\u041f\\u0440\\u043e\\u0432\\u0435\\u043d\\u0430\\u043d\\u0441\",\"label5755\":\"WWW\",\"label5754\":\"Provenance\",\"textformatters\":[\"TextformatterEntities\"],\"tags\":\"page prices\",\"noRelative\":0,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0}'),
(183,'FieldtypeTextLanguage','a_aw_more',0,'Further information','{\"columnWidth\":50,\"label5753\":\"\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f\",\"label5755\":\"Vidare information\",\"label5754\":\"Informations suppl\\u00e9mentaires\"}'),
(184,'FieldtypePage','a_aw_person',0,'Painter','{\"columnWidth\":33,\"label5753\":\"\\u0425\\u0443\\u0434\\u043e\\u0436\\u043d\\u0438\\u043a\",\"label5755\":\"Konstn\\u00e4r\",\"label5754\":\"Artiste\",\"template_id\":74,\"template_name\":\"a_person\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\",\"tags\":\"page\"}'),
(185,'FieldtypePage','a_aw_collection',0,'Collection','{\"columnWidth\":33,\"label5753\":\"\\u041a\\u043e\\u043b\\u043b\\u0435\\u043a\\u0446\\u0438\\u044f\",\"label5755\":\"Samling\",\"label5754\":\"Collection\",\"template_id\":75,\"template_name\":\"a_collection\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\",\"tags\":\"page\"}'),
(186,'FieldtypeTextLanguage','a_aw_provenance',0,'Provenance','{\"columnWidth\":50,\"label5753\":\"\\u041f\\u0440\\u043e\\u0432\\u0435\\u043d\\u0430\\u043d\\u0441\",\"label5755\":\"Ursprung\",\"label5754\":\"Provenance\",\"tags\":\"page restricted\"}'),
(187,'FieldtypePage','a_aw_possession',0,'Possession','{\"columnWidth\":33,\"template_id\":76,\"template_name\":\"a_possession\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\",\"distinctAutojoin\":true,\"derefAsPage\":0,\"usePageEdit\":0,\"parent_id\":0,\"tags\":\"restricted page\",\"label5753\":\"\\u0421\\u0447\\u0451\\u0442\",\"collapsed\":0}'),
(188,'FieldtypeTextLanguage','a_aw_signature',0,'Сignature','{\"columnWidth\":50,\"label5753\":\"\\u041f\\u043e\\u0434\\u043f\\u0438\\u0441\",\"label5755\":\"\\u0423nderskrift\",\"label5754\":\"Signature\"}'),
(189,'FieldtypePage','a_aw_copy_artwork',32,'Posibly a copy of','{\"columnWidth\":33,\"label5753\":\"\\u041f\\u043e\\u0432\\u0442\\u043e\\u0440 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u044b\",\"label5755\":\"Tydligen en kopia av\",\"label5754\":\"Une copie de\",\"template_id\":77,\"template_name\":\"a_artwork\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\",\"distinctAutojoin\":true,\"derefAsPage\":0,\"usePageEdit\":0,\"parent_id\":0}'),
(190,'FieldtypeOptions','a_aw_link',0,'Relation to artist','{\"columnWidth\":33,\"label5753\":\"\\u041e\\u0442\\u043d\\u043e\\u0448\\u0435\\u043d\\u0438\\u0435 \\u043a \\u0445\\u0443\\u0434\\u043e\\u0436\\u043d\\u0438\\u043a\\u0443\",\"label5755\":\"F\\u00f6rh\\u00e5llande till konstn\\u00e4r\",\"label5754\":\"Relation \\u00e0 l\'artiste\",\"tags\":\"page\"}'),
(191,'FieldtypeOptions','a_aw_base',0,'Support','{\"columnWidth\":33,\"label5753\":\"\\u041e\\u0441\\u043d\\u043e\\u0432\\u0430\",\"label5755\":\"St\\u00f6d\",\"label5754\":\"Support\",\"tags\":\"page\"}'),
(192,'FieldtypeTextLanguage','a_aw_condition',0,'Condition report','{\"columnWidth\":50,\"label5753\":\"\\u0421\\u043e\\u0441\\u0442\\u043e\\u044f\\u043d\\u0438\\u0435\",\"label5755\":\"Konditionsrapport\",\"label5754\":\"Rapport de condition\",\"tags\":\"page\"}'),
(193,'FieldtypeTextLanguage','a_aw_size',0,'Size','{\"columnWidth\":25,\"label5753\":\"\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440\",\"label5755\":\"Storlek\",\"label5754\":\"Taille\",\"tags\":\"page\",\"langBlankInherit\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}'),
(194,'FieldtypeOptions','a_aw_technique',0,'Technique','{\"columnWidth\":33,\"label5753\":\"\\u0422\\u0435\\u0445\\u043d\\u0438\\u043a\\u0430\",\"label5755\":\"Utf\\u00f6randeknik\",\"label5754\":\"Technique\",\"tags\":\"page\",\"inputfieldClass\":\"InputfieldSelect\"}'),
(195,'FieldtypeText','a_aw_year',0,'Year','{\"columnWidth\":33,\"label5753\":\"\\u0413\\u043e\\u0434\",\"label5755\":\"\\u00c5r\",\"label5754\":\"Ann\\u00e9e\",\"tags\":\"page list\",\"langBlankInherit\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}'),
(196,'FieldtypeTextLanguage','a_c_address',0,'Address','{\"columnWidth\":50,\"label5753\":\"\\u0410\\u0434\\u0440\\u0435\\u0441\",\"label5755\":\"Adres\",\"label5754\":\"Adresse\"}'),
(197,'FieldtypePage','a_c_person',0,'','{\"columnWidth\":33,\"template_id\":74,\"template_name\":\"a_person\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\",\"tags\":\"page\"}'),
(198,'FieldtypeOptions','a_c_duty',0,'Collection type','{\"columnWidth\":33,\"label5753\":\"\\u0422\\u0438\\u043f \\u043a\\u043e\\u043b\\u043b\\u0435\\u043a\\u0446\\u0438\\u0438\",\"label5755\":\"Samlingstyp\",\"label5754\":\"Type de collection\",\"tags\":\"list page\"}'),
(199,'FieldtypeURL','a_c_url',0,'WWW','{\"columnWidth\":50,\"label5753\":\"WWW\",\"label5755\":\"WWW\",\"label5754\":\"WWW\",\"textformatters\":[\"TextformatterEntities\"],\"tags\":\"page\"}'),
(200,'FieldtypePage','a_p_artwork',0,'Painting','{\"columnWidth\":33,\"label5753\":\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u0430\",\"label5755\":\"M\\u00e5lare\",\"label5754\":\"Oeuvre\",\"template_id\":77,\"template_name\":\"a_artwork\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\",\"tags\":\"list page prices\"}'),
(201,'FieldtypePage','a_p_person',0,'Seller','{\"columnWidth\":33,\"label5753\":\"\\u041f\\u0440\\u043e\\u0434\\u0430\\u0432\\u0435\\u0446\",\"label5755\":\"S\\u00e4ljare\",\"label5754\":\"Fournisseur\",\"template_id\":74,\"template_name\":\"a_person\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\",\"tags\":\"restricted page prices\"}'),
(202,'FieldtypePage','a_p_seller',0,'Provider','{\"columnWidth\":33,\"label5753\":\"\\u0418\\u0441\\u0442\\u043e\\u0447\\u043d\\u0438\\u043a\",\"label5755\":\"Leverant\\u00f6r\",\"label5754\":\"Fournisseur\",\"template_id\":78,\"template_name\":\"a_seller\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\",\"tags\":\"restricted page\"}'),
(203,'FieldtypeOptions','a_p_currency',0,'Currency','{\"columnWidth\":33,\"label5753\":\"\\u0412 \\u043a\\u0430\\u043a\\u043e\\u0439 \\u0432\\u0430\\u043b\\u044e\\u0442\\u0435\",\"label5755\":\"Valuta\",\"label5754\":\"Devise\",\"tags\":\"prices\"}'),
(204,'FieldtypeDatetime','a_p_date',0,'Date','{\"label5753\":\"\\u0414\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438\\u043e\\u0431\\u0440\\u0435\\u0442\\u0435\\u043d\\u0438\\u044f\",\"label5755\":\"Datum f\\u00f6r f\\u00f6rv\\u00e4rv\",\"label5754\":\"Date de l\'acquisition\",\"size\":25,\"datepicker\":3,\"timeInputSelect\":0,\"dateInputFormat\":\"Y-m-d\",\"tags\":\"caption prices\"}'),
(205,'FieldtypeInteger','a_p_price_start',0,'Estimate','{\"columnWidth\":33,\"label5753\":\"\\u0417\\u0430\\u044f\\u0432\\u043b\\u0435\\u043d\\u043d\\u0430\\u044f \\u0446\\u0435\\u043d\\u0430\",\"label5755\":\"Utropspris\",\"label5754\":\"Prix estim\\u00e9\",\"tags\":\"page prices\"}'),
(206,'FieldtypeInteger','a_p_price_final',0,'Hammer price','{\"columnWidth\":33,\"label5753\":\"\\u041c\\u043e\\u043b\\u043e\\u0442\\u043e\\u0447\\u043d\\u0430\\u044f \\u0446\\u0435\\u043d\\u0430\",\"label5755\":\"Klubbad\",\"label5754\":\"Hammer price\",\"tags\":\"page prices\",\"zeroNotEmpty\":0,\"inputType\":\"text\",\"size\":10}'),
(207,'FieldtypeInteger','a_p_object_number',0,'Lot','{\"columnWidth\":33,\"label5753\":\"\\u041b\\u043e\\u0442\",\"label5755\":\"Lot\",\"label5754\":\"Lot\",\"tags\":\"page restricted prices\"}'),
(208,'FieldtypeTextLanguage','a_s_address',0,'Address','{\"columnWidth\":50,\"label5753\":\"\\u0410\\u0434\\u0440\\u0435\\u0441\",\"label5755\":\"Adress\",\"label5754\":\"Adresse\",\"tags\":\"restricted\"}'),
(210,'FieldtypeOptions','a_s_duty',0,'Provider type','{\"columnWidth\":33,\"label5753\":\"\\u0422\\u0438\\u043f \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u0449\\u0438\\u043a\\u0430\",\"label5755\":\"Leverant\\u00f6rstyp\",\"label5754\":\"Type de fournisseur\",\"tags\":\"page restricted\"}'),
(216,'FieldtypeOptions','d_av_duty',0,'Role','{\"columnWidth\":33,\"label5753\":\"\\u0420\\u043e\\u043b\\u044c\",\"label5755\":\"Role\",\"label5754\":\"Role\",\"tags\":\"caption list page\"}'),
(217,'FieldtypeTextLanguage','d_av_firstname',0,'First name','{\"columnWidth\":50,\"label5753\":\"\\u0418\\u043c\\u044f\",\"label5755\":\"F\\u00f6rnamn\",\"label5754\":\"Prenom\"}'),
(218,'FieldtypeTextLanguage','d_av_lastname',0,'Last name','{\"columnWidth\":50,\"label5753\":\"\\u0424\\u0430\\u043c\\u0438\\u043b\\u0438\\u044f\",\"label5755\":\"Efternamn\",\"label5754\":\"Nom\"}'),
(219,'FieldtypeURL','d_av_url',0,'WWW','{\"columnWidth\":50,\"label5753\":\"WWW\",\"label5755\":\"WWW\",\"label5754\":\"WWW\",\"textformatters\":[\"TextformatterEntities\"]}'),
(236,'FieldtypeCheckbox','d_aw_featured',0,'Is featured?',''),
(221,'FieldtypePage','d_aw_person',0,'Painter','{\"columnWidth\":33,\"label5753\":\"\\u0425\\u0443\\u0434\\u043e\\u0436\\u043d\\u0438\\u043a\",\"label5755\":\"Konstn\\u00e4r\",\"label5754\":\"Artiste\",\"template_id\":87,\"template_name\":\"d_person\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\",\"tags\":\"page\"}'),
(225,'FieldtypeText','h_aw_day0',0,'Arrival','{\"textformatters\":[\"TextformatterEntities\"],\"minlength\":0,\"maxlength\":20,\"showCount\":0,\"size\":20,\"tags\":\"page\",\"label5753\":\"\\u041f\\u043e\\u0441\\u0442\\u0443\\u043f\\u0438\\u043b\",\"label5754\":\"Arriv\\u00e9e\"}'),
(232,'FieldtypePage','h_aw_seller',0,'Seller','{\"derefAsPage\":0,\"inputfield\":\"InputfieldAsmSelect\",\"distinctAutojoin\":true,\"usePageEdit\":0,\"parent_id\":0,\"labelFieldName\":\"title\",\"columnWidth\":33,\"label5753\":\"\\u041f\\u0440\\u043e\\u0434\\u0430\\u0432\\u0435\\u0446\",\"label5754\":\"Vendeur\",\"label5755\":\"F\\u00f6rs\\u00e4ljare\",\"template_id\":71,\"template_name\":\"h_seller\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"tags\":\"page restricted\"}'),
(235,'FieldtypeCheckbox','a_aw_featured',0,'Is featured?',''),
(233,'FieldtypeInteger','h_aw_price',0,'Price','{\"zeroNotEmpty\":0,\"inputType\":\"text\",\"size\":10,\"tags\":\"page list prices\",\"label5753\":\"\\u0426\\u0435\\u043d\\u0430\"}'),
(243,'FieldtypeText','figcaption',0,'figcaption','{\"textformatters\":[\"TextformatterEntities\"]}'),
(247,'FieldtypeOptions','a_av_duty',0,'Role','{\"columnWidth\":33,\"label5753\":\"\\u0420\\u043e\\u043b\\u044c\",\"label5755\":\"Role\",\"label5754\":\"Role\",\"inputfieldClass\":\"InputfieldCheckboxes\",\"required\":1,\"optionColumns\":0,\"tags\":\"caption page\",\"collapsed\":0}'),
(245,'FieldtypeInteger','a_p_payed',0,'Total price','{\"label5753\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"zeroNotEmpty\":1,\"inputType\":\"text\",\"size\":10,\"tags\":\"page list prices\"}'),
(248,'FieldtypeTextareaLanguage','body2',1,'Body2','{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":15,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,codemagic,|,fullscreen\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote\",\"plugins\":\"autosave,inlinepopups,safari,codemagic,media,paste,fullscreen\",\"valid_elements\":\"@[id|class],div[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],code\",\"contentType\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":0,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"langBlankInherit\":0,\"extraAllowedContent\":\"div[class]\"}'),
(249,'FieldtypeOptions','currency',0,'Currency','{\"inputfieldClass\":\"InputfieldSelect\",\"defaultValue\":1,\"tags\":\"prices\"}'),
(250,'FieldtypeInteger','h_aw_price_SEK',0,'Price in SEK','{\"zeroNotEmpty\":0,\"inputType\":\"text\",\"size\":10,\"tags\":\"prices\",\"label5753\":\"\\u0426\\u0435\\u043d\\u0430\"}');
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `fieldtype_options`
--

DROP TABLE IF EXISTS `fieldtype_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fieldtype_options` (
  `fields_id` int(10) unsigned NOT NULL,
  `option_id` char(10) NOT NULL,
  `title` text DEFAULT NULL,
  `value` varchar(250) DEFAULT NULL,
  `sort` int(10) unsigned NOT NULL,
  `title5753` text DEFAULT NULL,
  `value5753` varchar(250) DEFAULT NULL,
  `title5754` text DEFAULT NULL,
  `value5754` varchar(250) DEFAULT NULL,
  `title5755` text DEFAULT NULL,
  `value5755` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`fields_id`,`option_id`),
  UNIQUE KEY `title` (`title`(250),`fields_id`),
  UNIQUE KEY `title5753` (`title5753`(250),`fields_id`),
  UNIQUE KEY `title5754` (`title5754`(250),`fields_id`),
  UNIQUE KEY `title5755` (`title5755`(250),`fields_id`),
  KEY `value` (`value`,`fields_id`),
  KEY `sort` (`sort`,`fields_id`),
  KEY `value5753` (`value5753`,`fields_id`),
  KEY `value5754` (`value5754`,`fields_id`),
  KEY `value5755` (`value5755`,`fields_id`),
  FULLTEXT KEY `title_value` (`title`,`value`),
  FULLTEXT KEY `title5753_value5753` (`title5753`,`value5753`),
  FULLTEXT KEY `title5754_value5754` (`title5754`,`value5754`),
  FULLTEXT KEY `title5755_value5755` (`title5755`,`value5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldtype_options`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `fieldtype_options` WRITE;
/*!40000 ALTER TABLE `fieldtype_options` DISABLE KEYS */;
INSERT INTO `fieldtype_options` VALUES
(226,'1','Special Edition','ES',0,'Спец. Выпуск','ES','Édition Spéciale','ES','Specialutgåva','ES'),
(226,'2','Limited Edition','EL',1,'Лимитированная серия','EL','Édition Limitée','EL','Begränsad Upplaga','EL'),
(226,'3','Color Variation','Variant',2,'Цветовая вариация','Variant','Variante','Variant','Variant','Variant'),
(226,'4','Remix','Remix',3,'Ремикс','Remix','Remix','Remix','Remix','Remix'),
(226,'5','Sold','Sold',4,'Продано','Sold','Vendu','Vendu','Såld','Såld'),
(140,'4','Cotton','cotton',3,'Хлопок','','Cotton','','Cotton','cotton'),
(130,'1','Designer','1',0,'Художник','1','Designer','1','Konstnärer','1'),
(130,'2','Collector','2',1,'Коллекционер','2','Collectioner','2','Samlare','2'),
(130,'3','Seller','3',2,'Продавец','3','Seller','3','Selare','3'),
(130,'4','Business person','4',3,'Бизнесман','4','Homme d\'affaires','4','Affärsman','4'),
(130,'5','Maecenas','5',4,'Меценат','5','Maecenas','5','Maecenas','5'),
(140,'3','Silk','silk',0,'Шелк','silk','Soie','silk','Silke','silk'),
(140,'1','Cashmere','cashmere',1,'Кашемир','cashmere','Cachemire','cashmere','Kaschmir','cashmere'),
(140,'2','Unknown support','unknown',2,'Неясно','unknown','Unconnu','unknown','Okänd','unknown'),
(142,'4','Very beloved','4',3,'Очень популярен','4',NULL,'4',NULL,'4'),
(142,'1','Common','1',0,'Обычный','1',NULL,'1',NULL,'1'),
(142,'2','Medium beloved','2',1,'Весьма популярен','2',NULL,'2',NULL,'2'),
(142,'3','Beloved','3',2,'Популярен','3',NULL,'3',NULL,'3'),
(143,'1','Not uncommon','1',0,'Обычный','1','Par très rare','1','',''),
(143,'2','Quite rare','2',1,'Весьма редкий','2','Assez rare','2',NULL,'2'),
(143,'3','Rare','3',2,'Редкий','3','Rare','3',NULL,'3'),
(143,'4','Very rare','4',3,'Очень редкий','4','Tres rare','4',NULL,'4'),
(148,'1','Manufacturers','1',0,'Производители','1','Fabricantes','1',NULL,NULL),
(153,'1','SEK','SEK',0,NULL,NULL,NULL,NULL,NULL,NULL),
(153,'2','USD','USD',1,NULL,NULL,NULL,NULL,NULL,NULL),
(247,'6','Actor','6',5,'Актёр','6',NULL,NULL,NULL,NULL),
(247,'5','Maecenas','5',4,'Меценат','5',NULL,NULL,NULL,NULL),
(247,'4','School','4',3,'Школа','4',NULL,NULL,NULL,NULL),
(247,'3','Seller','3',2,'Продавец','3',NULL,NULL,NULL,NULL),
(247,'2','Collector','2',1,'Коллекционер','2',NULL,NULL,NULL,NULL),
(190,'1','Author','author',0,NULL,NULL,NULL,NULL,NULL,NULL),
(190,'2','Copy','copy',1,NULL,NULL,NULL,NULL,NULL,NULL),
(190,'3','Attributed to','attr',2,NULL,NULL,NULL,NULL,NULL,NULL),
(190,'4','Followers of','circle',3,NULL,NULL,NULL,NULL,NULL,NULL),
(190,'5','Forgery','fake',4,NULL,NULL,NULL,NULL,NULL,NULL),
(190,'6','In the manner of','manner',5,NULL,NULL,NULL,NULL,NULL,NULL),
(191,'1','Canvas','canvas',0,NULL,NULL,NULL,NULL,NULL,NULL),
(191,'2','Copper','copper',1,NULL,NULL,NULL,NULL,NULL,NULL),
(191,'3','Panel','panel',2,NULL,NULL,NULL,NULL,NULL,NULL),
(191,'4','Paper','paper',3,NULL,NULL,NULL,NULL,NULL,NULL),
(191,'5','Unknown support','unknown',4,NULL,NULL,NULL,NULL,NULL,NULL),
(194,'1','Watercolor','akva',0,'Акварель','akva',NULL,NULL,NULL,NULL),
(194,'2','Oil painting','olja',1,'Масло','olja',NULL,NULL,NULL,NULL),
(194,'5','Gouache','gua',2,'Гуашь','gua',NULL,NULL,NULL,NULL),
(194,'3','Pencil','penc',3,'Карандаш','penc',NULL,NULL,NULL,NULL),
(194,'4','Mixed media','mix',4,'Смешанная техника','mix',NULL,NULL,NULL,NULL),
(198,'2','Museums','2',0,NULL,NULL,NULL,NULL,NULL,NULL),
(198,'3','Private collections','3',1,NULL,NULL,NULL,NULL,NULL,NULL),
(198,'4','Lost biddings','4',2,NULL,NULL,NULL,NULL,NULL,NULL),
(203,'1','SEK','SEK',0,NULL,NULL,NULL,NULL,NULL,NULL),
(203,'2','USD','USD',1,NULL,NULL,NULL,NULL,NULL,NULL),
(210,'1','Auctions','1',0,NULL,NULL,NULL,NULL,NULL,NULL),
(210,'4','Flea','4',1,NULL,NULL,NULL,NULL,NULL,NULL),
(210,'5','Gifts','5',2,NULL,NULL,NULL,NULL,NULL,NULL),
(216,'1','Artist','1',0,NULL,NULL,NULL,NULL,NULL,NULL),
(216,'2','Collector','2',1,NULL,NULL,NULL,NULL,NULL,NULL),
(216,'3','Seller','3',2,NULL,NULL,NULL,NULL,NULL,NULL),
(216,'4','Business person','4',3,NULL,NULL,NULL,NULL,NULL,NULL),
(216,'5','Maecenas','5',4,NULL,NULL,NULL,NULL,NULL,NULL),
(130,'6','Owner','6',5,'Владелец','6','Propriétér','6','Ägare','6'),
(241,'15','Барыни','0',0,NULL,NULL,NULL,NULL,NULL,NULL),
(241,'1','Всадники','1',1,NULL,NULL,NULL,NULL,NULL,NULL),
(241,'2','Гармонисты','2',2,NULL,NULL,NULL,NULL,NULL,NULL),
(241,'3','Индюки','3',3,NULL,NULL,NULL,NULL,NULL,NULL),
(241,'4','Карусели','4',4,NULL,NULL,NULL,NULL,NULL,NULL),
(241,'5','Козлики','5',5,NULL,NULL,NULL,NULL,NULL,NULL),
(241,'6','Колокольчики','6',6,NULL,NULL,NULL,NULL,NULL,NULL),
(241,'7','Лошадки','7',7,NULL,NULL,NULL,NULL,NULL,NULL),
(241,'8','Няньки','8',8,NULL,NULL,NULL,NULL,NULL,NULL),
(241,'9','Олени','9',9,NULL,NULL,NULL,NULL,NULL,NULL),
(241,'10','Офицеры','10',10,NULL,NULL,NULL,NULL,NULL,NULL),
(241,'11','Парочки','11',11,NULL,NULL,NULL,NULL,NULL,NULL),
(241,'12','Петухи','12',12,NULL,NULL,NULL,NULL,NULL,NULL),
(241,'13','Свистульки','13',13,NULL,NULL,NULL,NULL,NULL,NULL),
(241,'14','Чаепития','14',14,NULL,NULL,NULL,NULL,NULL,NULL),
(242,'1','Миниатюрные, ~5см','1',0,NULL,NULL,NULL,NULL,NULL,NULL),
(242,'2','Малые, < 8см','2',1,NULL,NULL,NULL,NULL,NULL,NULL),
(242,'3','Средние, < 25см','3',2,NULL,NULL,NULL,NULL,NULL,NULL),
(242,'4','Крупные, >30см','4',3,NULL,NULL,NULL,NULL,NULL,NULL),
(247,'1','Artist','1',0,'Художник','1',NULL,NULL,NULL,NULL),
(194,'6','Pastel','pas',5,'Пастель','pas',NULL,NULL,NULL,NULL),
(249,'1','SEK','',0,NULL,NULL,NULL,NULL,NULL,NULL),
(249,'2','CHF','',1,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `fieldtype_options` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `data` mediumtext NOT NULL,
  `created` timestamp NOT NULL DEFAULT '2017-02-04 22:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES
(1,'FieldtypeTextarea',1,'','2017-02-04 22:00:00'),
(193,'InputfieldTextTags',0,'','2025-11-06 16:04:57'),
(3,'FieldtypeText',1,'','2017-02-04 22:00:00'),
(4,'FieldtypePage',3,'','2017-02-04 22:00:00'),
(30,'InputfieldForm',0,'','2017-02-04 22:00:00'),
(6,'FieldtypeFile',1,'','2017-02-04 22:00:00'),
(7,'ProcessPageEdit',1,'','2017-02-04 22:00:00'),
(10,'ProcessLogin',0,'','2017-02-04 22:00:00'),
(12,'ProcessPageList',0,'{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}','2017-02-04 22:00:00'),
(121,'ProcessPageEditLink',1,'','2017-02-04 22:00:00'),
(14,'ProcessPageSort',0,'','2017-02-04 22:00:00'),
(15,'InputfieldPageListSelect',0,'','2017-02-04 22:00:00'),
(117,'JqueryUI',1,'','2017-02-04 22:00:00'),
(17,'ProcessPageAdd',0,'{\"shortcutSort\":[24,14,21],\"bookmarks\":{\"_0\":[]}}','2017-02-04 22:00:00'),
(125,'SessionLoginThrottle',11,'','2017-02-04 22:00:00'),
(122,'InputfieldPassword',0,'','2017-02-04 22:00:00'),
(25,'InputfieldAsmSelect',0,'','2017-02-04 22:00:00'),
(116,'JqueryCore',1,'','2017-02-04 22:00:00'),
(27,'FieldtypeModule',1,'','2017-02-04 22:00:00'),
(28,'FieldtypeDatetime',1,'','2017-02-04 22:00:00'),
(29,'FieldtypeEmail',1,'','2017-02-04 22:00:00'),
(108,'InputfieldURL',0,'','2017-02-04 22:00:00'),
(32,'InputfieldSubmit',0,'','2017-02-04 22:00:00'),
(34,'InputfieldText',0,'','2017-02-04 22:00:00'),
(35,'InputfieldTextarea',0,'','2017-02-04 22:00:00'),
(36,'InputfieldSelect',0,'','2017-02-04 22:00:00'),
(37,'InputfieldCheckbox',0,'','2017-02-04 22:00:00'),
(38,'InputfieldCheckboxes',0,'','2017-02-04 22:00:00'),
(39,'InputfieldRadios',0,'','2017-02-04 22:00:00'),
(40,'InputfieldHidden',0,'','2017-02-04 22:00:00'),
(41,'InputfieldName',0,'','2017-02-04 22:00:00'),
(43,'InputfieldSelectMultiple',0,'','2017-02-04 22:00:00'),
(45,'JqueryWireTabs',0,'','2017-02-04 22:00:00'),
(47,'ProcessTemplate',0,'','2017-02-04 22:00:00'),
(48,'ProcessField',32,'{\"collapsedTags\":[\"list\"]}','2017-02-04 22:00:00'),
(50,'ProcessModule',0,'','2017-02-04 22:00:00'),
(114,'PagePermissions',3,'','2017-02-04 22:00:00'),
(97,'FieldtypeCheckbox',1,'','2017-02-04 22:00:00'),
(115,'PageRender',3,'{\"clearCache\":1}','2017-02-04 22:00:00'),
(55,'InputfieldFile',0,'','2017-02-04 22:00:00'),
(56,'InputfieldImage',0,'','2017-02-04 22:00:00'),
(57,'FieldtypeImage',33,'','2017-02-04 22:00:00'),
(60,'InputfieldPage',0,'{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\"]}','2017-02-04 22:00:00'),
(61,'TextformatterEntities',0,'','2017-02-04 22:00:00'),
(66,'ProcessUser',0,'{\"showFields\":[\"name\",\"email\",\"roles\"]}','2017-02-04 22:00:00'),
(67,'MarkupAdminDataTable',0,'','2017-02-04 22:00:00'),
(68,'ProcessRole',0,'{\"showFields\":[\"name\"]}','2017-02-04 22:00:00'),
(76,'ProcessList',0,'','2017-02-04 22:00:00'),
(78,'InputfieldFieldset',0,'','2017-02-04 22:00:00'),
(79,'InputfieldMarkup',0,'','2017-02-04 22:00:00'),
(80,'InputfieldEmail',0,'','2017-02-04 22:00:00'),
(89,'FieldtypeFloat',1,'','2017-02-04 22:00:00'),
(83,'ProcessPageView',0,'','2017-02-04 22:00:00'),
(84,'FieldtypeInteger',1,'','2017-02-04 22:00:00'),
(85,'InputfieldInteger',0,'','2017-02-04 22:00:00'),
(86,'InputfieldPageName',0,'','2017-02-04 22:00:00'),
(87,'ProcessHome',0,'','2017-02-04 22:00:00'),
(90,'InputfieldFloat',0,'','2017-02-04 22:00:00'),
(94,'InputfieldDatetime',0,'','2017-02-04 22:00:00'),
(98,'MarkupPagerNav',0,'','2017-02-04 22:00:00'),
(129,'ProcessPageEditImageSelect',1,'','2017-02-04 22:00:00'),
(103,'JqueryTableSorter',1,'','2017-02-04 22:00:00'),
(104,'ProcessPageSearch',1,'{\"searchFields\":\"title\",\"displayField\":\"title path\"}','2017-02-04 22:00:00'),
(105,'FieldtypeFieldsetOpen',1,'','2017-02-04 22:00:00'),
(106,'FieldtypeFieldsetClose',1,'','2017-02-04 22:00:00'),
(107,'FieldtypeFieldsetTabOpen',1,'','2017-02-04 22:00:00'),
(109,'ProcessPageTrash',1,'','2017-02-04 22:00:00'),
(111,'FieldtypePageTitle',1,'','2017-02-04 22:00:00'),
(112,'InputfieldPageTitle',0,'','2017-02-04 22:00:00'),
(113,'MarkupPageArray',3,'','2017-02-04 22:00:00'),
(131,'InputfieldButton',0,'','2017-02-04 22:00:00'),
(133,'FieldtypePassword',1,'','2017-02-04 22:00:00'),
(134,'ProcessPageType',33,'{\"showFields\":[]}','2017-02-04 22:00:00'),
(135,'FieldtypeURL',1,'','2017-02-04 22:00:00'),
(136,'ProcessPermission',1,'{\"showFields\":[\"name\",\"title\"]}','2017-02-04 22:00:00'),
(137,'InputfieldPageListSelectMultiple',0,'','2017-02-04 22:00:00'),
(138,'ProcessProfile',1,'{\"profileFields\":[\"pass\",\"email\",\"admin_theme\",\"language\"]}','2017-02-04 22:00:00'),
(153,'SystemUpdater',1,'{\"systemVersion\":21,\"coreVersion\":\"3.0.254\"}','2017-02-04 22:00:00'),
(155,'InputfieldMapMarker',0,'','2017-02-04 22:00:00'),
(156,'InputfieldPageAutocomplete',0,'','2017-02-04 22:00:00'),
(159,'AdminThemeDefault',10,'{\"colors\":\"classic\"}','2017-02-04 22:00:00'),
(160,'InputfieldSelector',42,'','2017-02-04 22:00:00'),
(161,'ProcessPageLister',32,'','2017-02-04 22:00:00'),
(162,'ProcessRecentPages',1,'','2017-02-06 02:27:46'),
(163,'TextformatterMarkdownExtra',1,'','2017-02-06 02:27:47'),
(164,'ProcessLogger',1,'','2017-02-06 02:28:04'),
(165,'InputfieldIcon',0,'','2017-02-06 02:28:04'),
(166,'ProcessWireUpgrade',1,'','2017-02-06 02:29:11'),
(167,'ProcessWireUpgradeCheck',11,'{\"useLoginHook\":\"1\"}','2017-02-06 02:29:11'),
(168,'InputfieldCKEditor',0,'','2017-02-06 02:37:05'),
(169,'MarkupHTMLPurifier',0,'','2017-02-06 02:37:06'),
(170,'JqueryMagnific',1,'','2017-02-06 02:37:06'),
(172,'MarkupGoogleMap',0,'','2017-02-11 11:57:53'),
(175,'AdminThemeUikit',10,'','2020-06-11 06:27:54'),
(176,'LanguageSupport',35,'{\"languagesPageID\":5750,\"defaultLanguagePageID\":5751,\"otherLanguagePageIDs\":[5753,5754,5755],\"languageTranslatorPageID\":5752,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}','2020-06-11 06:38:48'),
(177,'ProcessLanguage',1,'','2020-06-11 06:38:48'),
(178,'ProcessLanguageTranslator',1,'','2020-06-11 06:38:48'),
(179,'LanguageSupportFields',3,'','2020-06-11 06:39:05'),
(180,'FieldtypeTextLanguage',1,'','2020-06-11 06:39:05'),
(181,'FieldtypePageTitleLanguage',1,'','2020-06-11 06:39:05'),
(182,'FieldtypeTextareaLanguage',1,'','2020-06-11 06:39:05'),
(183,'LanguageSupportPageNames',3,'{\"moduleVersion\":14,\"pageNumUrlPrefix5751\":\"page\",\"useHomeSegment\":\"0\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}','2020-06-11 06:39:39'),
(184,'LanguageTabs',11,'{\"tabField\":\"title\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}','2020-06-11 06:40:01'),
(187,'FieldtypeOptions',1,'','2020-06-16 13:01:54'),
(188,'.Modules.wire/modules/',8192,'FileValidatorZip.module\nPage/PageFrontEdit/PageFrontEdit.module\nLanguageSupport/FieldtypePageTitleLanguage.module\nLanguageSupport/LanguageSupportFields.module\nLanguageSupport/FieldtypeTextLanguage.module\nLanguageSupport/LanguageTabs.module\nLanguageSupport/FieldtypeTextareaLanguage.module\nLanguageSupport/LanguageSupport.module\nLanguageSupport/LanguageSupportPageNames.module\nLanguageSupport/ProcessLanguageTranslator.module\nLanguageSupport/ProcessLanguage.module\nTextformatter/TextformatterSmartypants/TextformatterSmartypants.module\nTextformatter/TextformatterMarkdownExtra/TextformatterMarkdownExtra.module\nTextformatter/TextformatterPstripper.module\nTextformatter/TextformatterStripTags.module\nTextformatter/TextformatterEntities.module\nTextformatter/TextformatterNewlineBR.module\nTextformatter/TextformatterNewlineUL.module\nPagePathHistory.module\nJquery/JqueryUI/JqueryUI.module\nJquery/JqueryTableSorter/JqueryTableSorter.module\nJquery/JqueryCore/JqueryCore.module\nJquery/JqueryWireTabs/JqueryWireTabs.module\nJquery/JqueryMagnific/JqueryMagnific.module\nLazyCron.module\nImage/ImageSizerEngineIMagick/ImageSizerEngineIMagick.module\nImage/ImageSizerEngineAnimatedGif/ImageSizerEngineAnimatedGif.module\nSystem/SystemUpdater/SystemUpdater.module\nSystem/SystemNotifications/SystemNotifications.module\nSystem/SystemNotifications/FieldtypeNotifications.module\nMarkup/MarkupCache.module\nMarkup/MarkupPageArray.module\nMarkup/MarkupHTMLPurifier/MarkupHTMLPurifier.module\nMarkup/MarkupPagerNav/MarkupPagerNav.module\nMarkup/MarkupPageFields.module\nMarkup/MarkupAdminDataTable/MarkupAdminDataTable.module\nMarkup/MarkupRSS.module\nPageRender.module\nFieldtype/FieldtypeImage/FieldtypeImage.module\nFieldtype/FieldtypeFieldsetOpen.module\nFieldtype/FieldtypeCache.module\nFieldtype/FieldtypeFile/FieldtypeFile.module\nFieldtype/FieldtypePage.module\nFieldtype/FieldtypeTextarea.module\nFieldtype/FieldtypePageTable.module\nFieldtype/FieldtypeModule.module\nFieldtype/FieldtypeRepeater/FieldtypeFieldsetPage.module\nFieldtype/FieldtypeRepeater/FieldtypeRepeater.module\nFieldtype/FieldtypeRepeater/InputfieldRepeater.module\nFieldtype/FieldtypePageTitle.module\nFieldtype/FieldtypeURL.module\nFieldtype/FieldtypeInteger.module\nFieldtype/FieldtypeDecimal.module\nFieldtype/FieldtypeFieldsetClose.module\nFieldtype/FieldtypeOptions/FieldtypeOptions.module\nFieldtype/FieldtypePassword.module\nFieldtype/FieldtypeCheckbox.module\nFieldtype/FieldtypeFloat.module\nFieldtype/FieldtypeSelector.module\nFieldtype/FieldtypeComments/FieldtypeComments.module\nFieldtype/FieldtypeComments/InputfieldCommentsAdmin.module\nFieldtype/FieldtypeComments/CommentFilterAkismet.module\nFieldtype/FieldtypeText.module\nFieldtype/FieldtypeFieldsetTabOpen.module\nFieldtype/FieldtypeToggle.module\nFieldtype/FieldtypeEmail.module\nFieldtype/FieldtypeDatetime.module\nAdminTheme/AdminThemeReno/AdminThemeReno.module\nAdminTheme/AdminThemeUikit/AdminThemeUikit.module\nAdminTheme/AdminThemeDefault/AdminThemeDefault.module\nPagePermissions.module\nInputfield/InputfieldInteger.module\nInputfield/InputfieldURL.module\nInputfield/InputfieldHidden.module\nInputfield/InputfieldPageTable/InputfieldPageTable.module\nInputfield/InputfieldFloat.module\nInputfield/InputfieldCheckboxes/InputfieldCheckboxes.module\nInputfield/InputfieldSelect.module\nInputfield/InputfieldFieldset.module\nInputfield/InputfieldImage/InputfieldImage.module\nInputfield/InputfieldTextarea.module\nInputfield/InputfieldFile/InputfieldFile.module\nInputfield/InputfieldToggle/InputfieldToggle.module\nInputfield/InputfieldButton.module\nInputfield/InputfieldAsmSelect/InputfieldAsmSelect.module\nInputfield/InputfieldPage/InputfieldPage.module\nInputfield/InputfieldEmail.module\nInputfield/InputfieldPageName/InputfieldPageName.module\nInputfield/InputfieldDatetime/InputfieldDatetime.module\nInputfield/InputfieldCKEditor/InputfieldCKEditor.module\nInputfield/InputfieldText/InputfieldText.module\nInputfield/InputfieldCheckbox/InputfieldCheckbox.module\nInputfield/InputfieldMarkup.module\nInputfield/InputfieldSelectMultiple.module\nInputfield/InputfieldIcon/InputfieldIcon.module\nInputfield/InputfieldRadios/InputfieldRadios.module\nInputfield/InputfieldPageTitle/InputfieldPageTitle.module\nInputfield/InputfieldPassword/InputfieldPassword.module\nInputfield/InputfieldPageAutocomplete/InputfieldPageAutocomplete.module\nInputfield/InputfieldSelector/InputfieldSelector.module\nInputfield/InputfieldSubmit/InputfieldSubmit.module\nInputfield/InputfieldTinyMCE/InputfieldTinyMCE.module.php\nInputfield/InputfieldTextTags/InputfieldTextTags.module\nInputfield/InputfieldForm.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelect.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelectMultiple.module\nInputfield/InputfieldName.module\nPages/PagesVersions/PagesVersions.module.php\nPagePaths.module\nFileCompilerTags.module\nProcess/ProcessModule/ProcessModule.module\nProcess/ProcessPageClone.module\nProcess/ProcessField/ProcessField.module\nProcess/ProcessPermission/ProcessPermission.module\nProcess/ProcessForgotPassword/ProcessForgotPassword.module\nProcess/ProcessPageEditLink/ProcessPageEditLink.module\nProcess/ProcessLogger/ProcessLogger.module\nProcess/ProcessPageLister/ProcessPageLister.module\nProcess/ProcessHome.module\nProcess/ProcessRole/ProcessRole.module\nProcess/ProcessPageView.module\nProcess/ProcessPageSearch/ProcessPageSearch.module\nProcess/ProcessPageList/ProcessPageList.module\nProcess/ProcessPageType/ProcessPageType.module\nProcess/ProcessPageEdit/ProcessPageEdit.module\nProcess/ProcessPageEditImageSelect/ProcessPageEditImageSelect.module\nProcess/ProcessCommentsManager/ProcessCommentsManager.module\nProcess/ProcessList.module\nProcess/ProcessPageSort.module\nProcess/ProcessUser/ProcessUser.module\nProcess/ProcessPagesExportImport/ProcessPagesExportImport.module\nProcess/ProcessLogin/ProcessLogin.module\nProcess/ProcessPageTrash.module\nProcess/ProcessRecentPages/ProcessRecentPages.module\nProcess/ProcessTemplate/ProcessTemplate.module\nProcess/ProcessPageAdd/ProcessPageAdd.module\nProcess/ProcessProfile/ProcessProfile.module\nSession/SessionLoginThrottle/SessionLoginThrottle.module\nSession/SessionHandlerDB/ProcessSessionDB.module\nSession/SessionHandlerDB/SessionHandlerDB.module','2017-02-04 22:00:00'),
(189,'.Modules.site/modules/',8192,'ProtectedMode/ProtectedMode.module\nFieldtypeMapMarker/FieldtypeMapMarker.module\nFieldtypeMapMarker/InputfieldMapMarker.module\nFieldtypeMapMarker/MarkupGoogleMap.module\nProcessWireUpgrade/ProcessWireUpgrade.module\nProcessWireUpgrade/ProcessWireUpgradeCheck.module\nSanitizerTransliterate/SanitizerTransliterate.module','2017-02-04 22:00:00'),
(190,'.Modules.info',8192,'{\"201\":{\"name\":\"FileValidatorZip\",\"title\":\"ZIP file validator\",\"version\":1,\"icon\":\"file-archive-o\",\"created\":1765282421,\"configurable\":4,\"validates\":[\"zip\"]},\"181\":{\"name\":\"FieldtypePageTitleLanguage\",\"title\":\"Page Title (Multi-Language)\",\"version\":100,\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0],\"FieldtypeTextLanguage\":[\">=\",0]},\"singular\":true,\"created\":1591857545},\"180\":{\"name\":\"FieldtypeTextLanguage\",\"title\":\"Text (Multi-language)\",\"version\":100,\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"singular\":true,\"created\":1591857545},\"182\":{\"name\":\"FieldtypeTextareaLanguage\",\"title\":\"Textarea (Multi-language)\",\"version\":100,\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"singular\":true,\"created\":1591857545},\"176\":{\"name\":\"LanguageSupport\",\"title\":\"Languages Support\",\"version\":104,\"installs\":[\"ProcessLanguage\",\"ProcessLanguageTranslator\"],\"autoload\":true,\"singular\":true,\"created\":1591857528,\"configurable\":3,\"addFlag\":32},\"179\":{\"name\":\"LanguageSupportFields\",\"title\":\"Languages Support - Fields\",\"version\":101,\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"installs\":[\"FieldtypePageTitleLanguage\",\"FieldtypeTextareaLanguage\",\"FieldtypeTextLanguage\"],\"autoload\":true,\"singular\":true,\"created\":1591857545},\"184\":{\"name\":\"LanguageTabs\",\"title\":\"Languages Support - Tabs\",\"version\":117,\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"autoload\":\"template=admin\",\"singular\":true,\"created\":1591857601,\"configurable\":4},\"183\":{\"name\":\"LanguageSupportPageNames\",\"title\":\"Languages Support - Page Names\",\"version\":14,\"requiresVersions\":{\"LanguageSupport\":[\">=\",0],\"LanguageSupportFields\":[\">=\",0]},\"autoload\":true,\"singular\":true,\"created\":1591857579,\"configurable\":4},\"178\":{\"name\":\"ProcessLanguageTranslator\",\"title\":\"Language Translator\",\"version\":103,\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"singular\":1,\"created\":1591857528,\"configurable\":4},\"177\":{\"name\":\"ProcessLanguage\",\"title\":\"Languages\",\"version\":103,\"icon\":\"language\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"singular\":1,\"created\":1591857528,\"configurable\":3,\"useNavJSON\":true},\"163\":{\"name\":\"TextformatterMarkdownExtra\",\"title\":\"Markdown\\/Parsedown Extra\",\"version\":180,\"singular\":1,\"created\":1486348067,\"configurable\":4},\"61\":{\"name\":\"TextformatterEntities\",\"title\":\"HTML Entity Encoder (htmlspecialchars)\",\"version\":100,\"created\":1486245600},\"117\":{\"name\":\"JqueryUI\",\"title\":\"jQuery UI\",\"version\":\"1.10.4\",\"singular\":true,\"created\":1486245600,\"permanent\":true},\"103\":{\"name\":\"JqueryTableSorter\",\"title\":\"jQuery Table Sorter Plugin\",\"version\":\"2.31.3\",\"singular\":1,\"created\":1486245600},\"116\":{\"name\":\"JqueryCore\",\"title\":\"jQuery Core\",\"version\":\"1.12.4\",\"singular\":true,\"created\":1486245600,\"permanent\":true},\"45\":{\"name\":\"JqueryWireTabs\",\"title\":\"jQuery Wire Tabs Plugin\",\"version\":110,\"created\":1486245600,\"configurable\":3,\"permanent\":true},\"170\":{\"name\":\"JqueryMagnific\",\"title\":\"jQuery Magnific Popup\",\"version\":\"1.1.0\",\"singular\":1,\"created\":1486348626},\"153\":{\"name\":\"SystemUpdater\",\"title\":\"System Updater\",\"version\":21,\"singular\":true,\"created\":1486245600,\"configurable\":3,\"permanent\":true},\"113\":{\"name\":\"MarkupPageArray\",\"title\":\"PageArray Markup\",\"version\":100,\"autoload\":true,\"singular\":true,\"created\":1486245600},\"169\":{\"name\":\"MarkupHTMLPurifier\",\"title\":\"HTML Purifier\",\"version\":497,\"created\":1486348626},\"98\":{\"name\":\"MarkupPagerNav\",\"title\":\"Pager (Pagination) Navigation\",\"version\":105,\"created\":1486245600},\"67\":{\"name\":\"MarkupAdminDataTable\",\"title\":\"Admin Data Table\",\"version\":108,\"created\":1486245600,\"permanent\":true},\"115\":{\"name\":\"PageRender\",\"title\":\"Page Render\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1486245600,\"configurable\":3,\"permanent\":true},\"57\":{\"name\":\"FieldtypeImage\",\"title\":\"Images\",\"version\":102,\"singular\":true,\"created\":1486245600,\"configurable\":4,\"permanent\":true},\"105\":{\"name\":\"FieldtypeFieldsetOpen\",\"title\":\"Fieldset (Open)\",\"version\":101,\"singular\":true,\"created\":1486245600,\"permanent\":true},\"6\":{\"name\":\"FieldtypeFile\",\"title\":\"Files\",\"version\":107,\"singular\":true,\"created\":1486245600,\"configurable\":4,\"permanent\":true},\"4\":{\"name\":\"FieldtypePage\",\"title\":\"Page Reference\",\"version\":107,\"autoload\":true,\"singular\":true,\"created\":1486245600,\"configurable\":3,\"permanent\":true},\"1\":{\"name\":\"FieldtypeTextarea\",\"title\":\"Textarea\",\"version\":107,\"singular\":true,\"created\":1486245600,\"permanent\":true},\"27\":{\"name\":\"FieldtypeModule\",\"title\":\"Module Reference\",\"version\":102,\"singular\":true,\"created\":1486245600,\"permanent\":true},\"111\":{\"name\":\"FieldtypePageTitle\",\"title\":\"Page Title\",\"version\":100,\"singular\":true,\"created\":1486245600,\"permanent\":true},\"135\":{\"name\":\"FieldtypeURL\",\"title\":\"URL\",\"version\":101,\"singular\":true,\"created\":1486245600,\"permanent\":true},\"84\":{\"name\":\"FieldtypeInteger\",\"title\":\"Integer\",\"version\":102,\"singular\":true,\"created\":1486245600,\"permanent\":true},\"106\":{\"name\":\"FieldtypeFieldsetClose\",\"title\":\"Fieldset (Close)\",\"version\":100,\"singular\":true,\"created\":1486245600,\"permanent\":true},\"187\":{\"name\":\"FieldtypeOptions\",\"title\":\"Select Options\",\"version\":2,\"singular\":true,\"created\":1592312514},\"133\":{\"name\":\"FieldtypePassword\",\"title\":\"Password\",\"version\":101,\"singular\":true,\"created\":1486245600,\"permanent\":true},\"97\":{\"name\":\"FieldtypeCheckbox\",\"title\":\"Checkbox\",\"version\":101,\"singular\":true,\"created\":1486245600,\"permanent\":true},\"89\":{\"name\":\"FieldtypeFloat\",\"title\":\"Float\",\"version\":108,\"singular\":true,\"created\":1486245600,\"permanent\":true},\"3\":{\"name\":\"FieldtypeText\",\"title\":\"Text\",\"version\":102,\"singular\":true,\"created\":1486245600,\"permanent\":true},\"107\":{\"name\":\"FieldtypeFieldsetTabOpen\",\"title\":\"Fieldset in Tab (Open)\",\"version\":100,\"singular\":true,\"created\":1486245600,\"permanent\":true},\"29\":{\"name\":\"FieldtypeEmail\",\"title\":\"E-Mail\",\"version\":101,\"singular\":true,\"created\":1486245600},\"28\":{\"name\":\"FieldtypeDatetime\",\"title\":\"Datetime\",\"version\":105,\"singular\":true,\"created\":1486245600},\"175\":{\"name\":\"AdminThemeUikit\",\"title\":\"Uikit\",\"version\":36,\"icon\":\"smile-o\",\"autoload\":\"template=admin\",\"created\":1591856874,\"configurable\":4},\"159\":{\"name\":\"AdminThemeDefault\",\"title\":\"Default\",\"version\":14,\"autoload\":\"template=admin\",\"created\":1486245600,\"configurable\":19},\"114\":{\"name\":\"PagePermissions\",\"title\":\"Page Permissions\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1486245600,\"permanent\":true},\"85\":{\"name\":\"InputfieldInteger\",\"title\":\"Integer\",\"version\":105,\"created\":1486245600,\"permanent\":true},\"108\":{\"name\":\"InputfieldURL\",\"title\":\"URL\",\"version\":103,\"created\":1486245600},\"40\":{\"name\":\"InputfieldHidden\",\"title\":\"Hidden\",\"version\":101,\"created\":1486245600,\"permanent\":true},\"90\":{\"name\":\"InputfieldFloat\",\"title\":\"Float\",\"version\":105,\"created\":1486245600,\"permanent\":true},\"38\":{\"name\":\"InputfieldCheckboxes\",\"title\":\"Checkboxes\",\"version\":108,\"created\":1486245600,\"permanent\":true},\"36\":{\"name\":\"InputfieldSelect\",\"title\":\"Select\",\"version\":103,\"created\":1486245600,\"permanent\":true},\"78\":{\"name\":\"InputfieldFieldset\",\"title\":\"Fieldset\",\"version\":101,\"created\":1486245600,\"permanent\":true},\"56\":{\"name\":\"InputfieldImage\",\"title\":\"Images\",\"version\":129,\"created\":1486245600,\"permanent\":true},\"35\":{\"name\":\"InputfieldTextarea\",\"title\":\"Textarea\",\"version\":103,\"created\":1486245600,\"permanent\":true},\"55\":{\"name\":\"InputfieldFile\",\"title\":\"Files\",\"version\":129,\"created\":1486245600,\"permanent\":true},\"207\":{\"name\":\"InputfieldToggle\",\"title\":\"Toggle\",\"version\":1,\"created\":1767887006},\"131\":{\"name\":\"InputfieldButton\",\"title\":\"Button\",\"version\":100,\"created\":1486245600,\"permanent\":true},\"25\":{\"name\":\"InputfieldAsmSelect\",\"title\":\"asmSelect\",\"version\":203,\"created\":1486245600,\"permanent\":true},\"60\":{\"name\":\"InputfieldPage\",\"title\":\"Page\",\"version\":109,\"created\":1486245600,\"configurable\":3,\"permanent\":true},\"80\":{\"name\":\"InputfieldEmail\",\"title\":\"Email\",\"version\":102,\"created\":1486245600},\"86\":{\"name\":\"InputfieldPageName\",\"title\":\"Page Name\",\"version\":106,\"created\":1486245600,\"configurable\":3,\"permanent\":true},\"94\":{\"name\":\"InputfieldDatetime\",\"title\":\"Datetime\",\"version\":108,\"created\":1486245600,\"permanent\":true},\"168\":{\"name\":\"InputfieldCKEditor\",\"title\":\"CKEditor\",\"version\":172,\"installs\":[\"MarkupHTMLPurifier\"],\"created\":1486348625},\"34\":{\"name\":\"InputfieldText\",\"title\":\"Text\",\"version\":106,\"created\":1486245600,\"permanent\":true},\"37\":{\"name\":\"InputfieldCheckbox\",\"title\":\"Checkbox\",\"version\":106,\"created\":1486245600,\"permanent\":true},\"79\":{\"name\":\"InputfieldMarkup\",\"title\":\"Markup\",\"version\":102,\"created\":1486245600,\"permanent\":true},\"43\":{\"name\":\"InputfieldSelectMultiple\",\"title\":\"Select Multiple\",\"version\":101,\"created\":1486245600,\"permanent\":true},\"165\":{\"name\":\"InputfieldIcon\",\"title\":\"Icon\",\"version\":3,\"created\":1486348084},\"39\":{\"name\":\"InputfieldRadios\",\"title\":\"Radio Buttons\",\"version\":106,\"created\":1486245600,\"permanent\":true},\"112\":{\"name\":\"InputfieldPageTitle\",\"title\":\"Page Title\",\"version\":102,\"created\":1486245600,\"permanent\":true},\"122\":{\"name\":\"InputfieldPassword\",\"title\":\"Password\",\"version\":102,\"created\":1486245600,\"permanent\":true},\"156\":{\"name\":\"InputfieldPageAutocomplete\",\"title\":\"Page Auto Complete\",\"version\":113,\"created\":1486245600},\"160\":{\"name\":\"InputfieldSelector\",\"title\":\"Selector\",\"version\":28,\"autoload\":\"template=admin\",\"created\":1486245600,\"configurable\":3,\"addFlag\":32},\"32\":{\"name\":\"InputfieldSubmit\",\"title\":\"Submit\",\"version\":103,\"created\":1486245600,\"permanent\":true},\"193\":{\"name\":\"InputfieldTextTags\",\"title\":\"Text Tags\",\"version\":7,\"icon\":\"tags\",\"created\":1762445097},\"30\":{\"name\":\"InputfieldForm\",\"title\":\"Form\",\"version\":107,\"created\":1486245600,\"permanent\":true},\"15\":{\"name\":\"InputfieldPageListSelect\",\"title\":\"Page List Select\",\"version\":101,\"created\":1486245600,\"permanent\":true},\"137\":{\"name\":\"InputfieldPageListSelectMultiple\",\"title\":\"Page List Select Multiple\",\"version\":103,\"created\":1486245600,\"permanent\":true},\"41\":{\"name\":\"InputfieldName\",\"title\":\"Name\",\"version\":100,\"created\":1486245600,\"permanent\":true},\"50\":{\"name\":\"ProcessModule\",\"title\":\"Modules\",\"version\":121,\"permission\":\"module-admin\",\"created\":1486245600,\"permanent\":true,\"useNavJSON\":true,\"nav\":[{\"url\":\"?site#tab_site_modules\",\"label\":\"Site\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?site=1\"},{\"url\":\"?core#tab_core_modules\",\"label\":\"Core\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?core=1\"},{\"url\":\"?configurable#tab_configurable_modules\",\"label\":\"Configure\",\"icon\":\"gear\",\"navJSON\":\"navJSON\\/?configurable=1\"},{\"url\":\"?install#tab_install_modules\",\"label\":\"Install\",\"icon\":\"sign-in\",\"navJSON\":\"navJSON\\/?install=1\"},{\"url\":\"?new#tab_new_modules\",\"label\":\"New\",\"icon\":\"plus\"},{\"url\":\"?reset=1\",\"label\":\"Refresh\",\"icon\":\"refresh\"}]},\"48\":{\"name\":\"ProcessField\",\"title\":\"Fields\",\"version\":114,\"icon\":\"cube\",\"permission\":\"field-admin\",\"created\":1486245600,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"136\":{\"name\":\"ProcessPermission\",\"title\":\"Permissions\",\"version\":101,\"icon\":\"gear\",\"permission\":\"permission-admin\",\"singular\":1,\"created\":1486245600,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true},\"121\":{\"name\":\"ProcessPageEditLink\",\"title\":\"Page Edit Link\",\"version\":112,\"icon\":\"link\",\"permission\":\"page-edit\",\"singular\":1,\"created\":1486245600,\"configurable\":4,\"permanent\":true},\"164\":{\"name\":\"ProcessLogger\",\"title\":\"Logs\",\"version\":2,\"icon\":\"tree\",\"permission\":\"logs-view\",\"singular\":1,\"created\":1486348084,\"useNavJSON\":true},\"161\":{\"name\":\"ProcessPageLister\",\"title\":\"Lister\",\"version\":26,\"icon\":\"search\",\"permission\":\"page-lister\",\"created\":1486245600,\"configurable\":true,\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"87\":{\"name\":\"ProcessHome\",\"title\":\"Admin Home\",\"version\":101,\"permission\":\"page-view\",\"created\":1486245600,\"permanent\":true},\"68\":{\"name\":\"ProcessRole\",\"title\":\"Roles\",\"version\":104,\"icon\":\"gears\",\"permission\":\"role-admin\",\"created\":1486245600,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true},\"83\":{\"name\":\"ProcessPageView\",\"title\":\"Page View\",\"version\":106,\"permission\":\"page-view\",\"created\":1486245600,\"permanent\":true},\"104\":{\"name\":\"ProcessPageSearch\",\"title\":\"Page Search\",\"version\":108,\"permission\":\"page-edit\",\"singular\":1,\"created\":1486245600,\"configurable\":3,\"permanent\":true},\"12\":{\"name\":\"ProcessPageList\",\"title\":\"Page List\",\"version\":124,\"icon\":\"sitemap\",\"permission\":\"page-edit\",\"created\":1486245600,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true},\"134\":{\"name\":\"ProcessPageType\",\"title\":\"Page Type\",\"version\":101,\"singular\":1,\"created\":1486245600,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"7\":{\"name\":\"ProcessPageEdit\",\"title\":\"Page Edit\",\"version\":112,\"icon\":\"edit\",\"permission\":\"page-edit\",\"singular\":1,\"created\":1486245600,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true},\"129\":{\"name\":\"ProcessPageEditImageSelect\",\"title\":\"Page Edit Image\",\"version\":121,\"permission\":\"page-edit\",\"singular\":1,\"created\":1486245600,\"configurable\":3,\"permanent\":true},\"76\":{\"name\":\"ProcessList\",\"title\":\"List\",\"version\":101,\"permission\":\"page-view\",\"created\":1486245600,\"permanent\":true},\"14\":{\"name\":\"ProcessPageSort\",\"title\":\"Page Sort and Move\",\"version\":101,\"permission\":\"page-edit\",\"created\":1486245600,\"permanent\":true},\"66\":{\"name\":\"ProcessUser\",\"title\":\"Users\",\"version\":107,\"icon\":\"group\",\"permission\":\"user-admin\",\"created\":1486245600,\"configurable\":\"ProcessUserConfig.php\",\"permanent\":true,\"useNavJSON\":true},\"10\":{\"name\":\"ProcessLogin\",\"title\":\"Login\",\"version\":109,\"permission\":\"page-view\",\"created\":1486245600,\"configurable\":4,\"permanent\":true},\"109\":{\"name\":\"ProcessPageTrash\",\"title\":\"Page Trash\",\"version\":103,\"singular\":1,\"created\":1486245600,\"permanent\":true},\"162\":{\"name\":\"ProcessRecentPages\",\"title\":\"Recent Pages\",\"version\":2,\"icon\":\"clock-o\",\"permission\":\"page-edit-recent\",\"singular\":1,\"created\":1486348066,\"useNavJSON\":true,\"nav\":[{\"url\":\"?edited=1\",\"label\":\"Edited\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?edited=1\"},{\"url\":\"?added=1\",\"label\":\"Created\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?added=1\"},{\"url\":\"?edited=1&me=1\",\"label\":\"Edited by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?edited=1&me=1\"},{\"url\":\"?added=1&me=1\",\"label\":\"Created by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?added=1&me=1\"},{\"url\":\"another\\/\",\"label\":\"Add another\",\"icon\":\"plus-circle\",\"navJSON\":\"anotherNavJSON\\/\"}]},\"47\":{\"name\":\"ProcessTemplate\",\"title\":\"Templates\",\"version\":114,\"icon\":\"cubes\",\"permission\":\"template-admin\",\"created\":1486245600,\"configurable\":4,\"permanent\":true,\"useNavJSON\":true},\"17\":{\"name\":\"ProcessPageAdd\",\"title\":\"Page Add\",\"version\":109,\"icon\":\"plus-circle\",\"permission\":\"page-edit\",\"created\":1486245600,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true},\"138\":{\"name\":\"ProcessProfile\",\"title\":\"User Profile\",\"version\":105,\"permission\":\"profile-edit\",\"singular\":1,\"created\":1486245600,\"configurable\":3,\"permanent\":true},\"125\":{\"name\":\"SessionLoginThrottle\",\"title\":\"Session Login Throttle\",\"version\":103,\"autoload\":\"function\",\"singular\":true,\"created\":1486245600,\"configurable\":3},\"208\":{\"name\":\"ProtectedMode\",\"title\":\"Protected \\/ Maintenance Mode\",\"version\":\"1.1.2\",\"icon\":\"key\",\"autoload\":true,\"singular\":true,\"created\":1768202527,\"configurable\":3},\"200\":{\"name\":\"FieldtypeMapMarker\",\"title\":\"Map Marker\",\"version\":300,\"icon\":\"map-marker\",\"installs\":[\"InputfieldMapMarker\"],\"singular\":true,\"created\":1765184845,\"configurable\":true},\"155\":{\"name\":\"InputfieldMapMarker\",\"title\":\"Map Marker\",\"version\":300,\"icon\":\"map-marker\",\"requiresVersions\":{\"FieldtypeMapMarker\":[\">=\",0]},\"created\":1486245600},\"172\":{\"name\":\"MarkupGoogleMap\",\"title\":\"Map Markup (Google Maps)\",\"version\":300,\"requiresVersions\":{\"FieldtypeMapMarker\":[\">=\",0]},\"created\":1486814273},\"166\":{\"name\":\"ProcessWireUpgrade\",\"title\":\"Upgrades\",\"version\":7,\"icon\":\"coffee\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"2.5.20\"]},\"installs\":[\"ProcessWireUpgradeCheck\"],\"singular\":1,\"created\":1486348151,\"namespace\":\"\\\\\"},\"167\":{\"name\":\"ProcessWireUpgradeCheck\",\"title\":\"Upgrades Checker\",\"version\":7,\"icon\":\"coffee\",\"autoload\":\"template=admin\",\"singular\":true,\"created\":1486348151,\"configurable\":\"ProcessWireUpgradeCheck.config.php\",\"namespace\":\"\\\\\"},\"195\":{\"name\":\"SanitizerTransliterate\",\"title\":\"Sanitizer Transliterate\",\"version\":\"0.1.1\",\"icon\":\"exchange\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.16\"]},\"autoload\":true,\"created\":1763923109,\"configurable\":4}}','2017-02-04 22:00:00'),
(191,'.ModulesVerbose.info',8192,'{\"201\":{\"summary\":\"Validates ZIP files with various configurable rules.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.0.1\"},\"181\":{\"summary\":\"Field that stores a page title in multiple languages. Use this only if you want title inputs created for ALL languages on ALL pages. Otherwise create separate languaged-named title fields, i.e. title_fr, title_es, title_fi, etc. \",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"1.0.0\"},\"180\":{\"summary\":\"Field that stores a single line of text in multiple languages\",\"core\":true,\"versionStr\":\"1.0.0\"},\"182\":{\"summary\":\"Field that stores a multiple lines of text in multiple languages\",\"core\":true,\"versionStr\":\"1.0.0\"},\"176\":{\"summary\":\"ProcessWire multi-language support.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"1.0.4\"},\"179\":{\"summary\":\"Required to use multi-language fields.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"1.0.1\"},\"184\":{\"summary\":\"Organizes multi-language fields into tabs for a cleaner easier to use interface.\",\"author\":\"adamspruijt, ryan, flipzoom\",\"core\":true,\"versionStr\":\"1.1.7\"},\"183\":{\"summary\":\"Required to use multi-language page names.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.1.4\"},\"178\":{\"summary\":\"Provides language translation capabilities for ProcessWire core and modules.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"1.0.3\"},\"177\":{\"summary\":\"Manage system languages\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"1.0.3\",\"permissions\":{\"lang-edit\":\"Administer languages and static translation files\"}},\"163\":{\"summary\":\"Markdown\\/Parsedown extra lightweight markup language by Emanuil Rusev. Based on Markdown by John Gruber.\",\"core\":true,\"versionStr\":\"1.8.0\"},\"61\":{\"summary\":\"Entity encode ampersands, quotes (single and double) and greater-than\\/less-than signs using htmlspecialchars(str, ENT_QUOTES). It is recommended that you use this on all text\\/textarea fields except those using a rich text editor or a markup language like Markdown.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"117\":{\"summary\":\"jQuery UI as required by ProcessWire and plugins\",\"href\":\"https:\\/\\/ui.jquery.com\",\"core\":true,\"versionStr\":\"1.10.4\"},\"103\":{\"summary\":\"Provides a jQuery plugin for sorting tables.\",\"href\":\"https:\\/\\/mottie.github.io\\/tablesorter\\/\",\"core\":true,\"versionStr\":\"2.31.3\"},\"116\":{\"summary\":\"jQuery Core as required by ProcessWire Admin and plugins\",\"href\":\"https:\\/\\/jquery.com\",\"core\":true,\"versionStr\":\"1.12.4\"},\"45\":{\"summary\":\"Provides a jQuery plugin for generating tabs in ProcessWire.\",\"core\":true,\"versionStr\":\"1.1.0\"},\"170\":{\"summary\":\"Provides lightbox capability for image galleries. Replacement for FancyBox. Uses Magnific Popup by @dimsemenov.\",\"href\":\"https:\\/\\/github.com\\/dimsemenov\\/Magnific-Popup\\/\",\"core\":true,\"versionStr\":\"1.1.0\"},\"153\":{\"summary\":\"Manages system versions and upgrades.\",\"core\":true,\"versionStr\":\"0.2.1\"},\"113\":{\"summary\":\"Adds renderPager() method to all PaginatedArray types, for easy pagination output. Plus a render() method to PageArray instances.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"169\":{\"summary\":\"Front-end to the HTML Purifier library.\",\"core\":true,\"versionStr\":\"4.9.7\"},\"98\":{\"summary\":\"Generates markup for pagination navigation\",\"core\":true,\"versionStr\":\"1.0.5\"},\"67\":{\"summary\":\"Generates markup for data tables used by ProcessWire admin\",\"core\":true,\"versionStr\":\"1.0.8\"},\"115\":{\"summary\":\"Adds a render method to Page and caches page output.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"57\":{\"summary\":\"Field that stores one or more GIF, JPG, or PNG images\",\"core\":true,\"versionStr\":\"1.0.2\"},\"105\":{\"summary\":\"Open a fieldset to group fields. Should be followed by a Fieldset (Close) after one or more fields.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"6\":{\"summary\":\"Field that stores one or more files\",\"core\":true,\"versionStr\":\"1.0.7\"},\"4\":{\"summary\":\"Field that stores one or more references to ProcessWire pages\",\"core\":true,\"versionStr\":\"1.0.7\"},\"1\":{\"summary\":\"Field that stores multiple lines of text\",\"core\":true,\"versionStr\":\"1.0.7\"},\"27\":{\"summary\":\"Field that stores a reference to another module\",\"core\":true,\"versionStr\":\"1.0.2\"},\"111\":{\"summary\":\"Field that stores a page title\",\"core\":true,\"versionStr\":\"1.0.0\"},\"135\":{\"summary\":\"Field that stores a URL\",\"core\":true,\"versionStr\":\"1.0.1\"},\"84\":{\"summary\":\"Field that stores an integer\",\"core\":true,\"versionStr\":\"1.0.2\"},\"106\":{\"summary\":\"Close a fieldset opened by FieldsetOpen. \",\"core\":true,\"versionStr\":\"1.0.0\"},\"187\":{\"summary\":\"Field that stores single and multi select options.\",\"core\":true,\"versionStr\":\"0.0.2\"},\"133\":{\"summary\":\"Field that stores a hashed and salted password\",\"core\":true,\"versionStr\":\"1.0.1\"},\"97\":{\"summary\":\"This Fieldtype stores an ON\\/OFF toggle via a single checkbox. The ON value is 1 and OFF value is 0.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"89\":{\"summary\":\"Field that stores a floating point number\",\"core\":true,\"versionStr\":\"1.0.8\"},\"3\":{\"summary\":\"Field that stores a single line of text\",\"core\":true,\"versionStr\":\"1.0.2\"},\"107\":{\"summary\":\"Open a fieldset to group fields. Same as Fieldset (Open) except that it displays in a tab instead.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"29\":{\"summary\":\"Field that stores an e-mail address\",\"core\":true,\"versionStr\":\"1.0.1\"},\"28\":{\"summary\":\"Field that stores a date and optionally time\",\"core\":true,\"versionStr\":\"1.0.5\"},\"175\":{\"summary\":\"Uikit v3 admin theme\",\"core\":true,\"versionStr\":\"0.3.6\"},\"159\":{\"summary\":\"Minimal admin theme that supports all ProcessWire features.\",\"core\":true,\"versionStr\":\"0.1.4\"},\"114\":{\"summary\":\"Adds various permission methods to Page objects that are used by Process modules.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"85\":{\"summary\":\"Integer (positive or negative)\",\"core\":true,\"versionStr\":\"1.0.5\"},\"108\":{\"summary\":\"URL in valid format\",\"core\":true,\"versionStr\":\"1.0.3\"},\"40\":{\"summary\":\"Hidden input in a form\",\"core\":true,\"versionStr\":\"1.0.1\"},\"90\":{\"summary\":\"Floating point number with precision\",\"core\":true,\"versionStr\":\"1.0.5\"},\"38\":{\"summary\":\"Multiple checkbox toggles\",\"core\":true,\"versionStr\":\"1.0.8\"},\"36\":{\"summary\":\"Selection of a single value from a select pulldown\",\"core\":true,\"versionStr\":\"1.0.3\"},\"78\":{\"summary\":\"Groups one or more fields together in a container\",\"core\":true,\"versionStr\":\"1.0.1\"},\"56\":{\"summary\":\"One or more image uploads (sortable)\",\"core\":true,\"versionStr\":\"1.2.9\"},\"35\":{\"summary\":\"Multiple lines of text\",\"core\":true,\"versionStr\":\"1.0.3\"},\"55\":{\"summary\":\"One or more file uploads (sortable)\",\"core\":true,\"versionStr\":\"1.2.9\"},\"207\":{\"summary\":\"A toggle providing similar input capability to a checkbox but much more configurable.\",\"core\":true,\"versionStr\":\"0.0.1\"},\"131\":{\"summary\":\"Form button element that you can optionally pass an href attribute to.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"25\":{\"summary\":\"Multiple selection, progressive enhancement to select multiple\",\"core\":true,\"versionStr\":\"2.0.3\"},\"60\":{\"summary\":\"Select one or more pages\",\"core\":true,\"versionStr\":\"1.0.9\"},\"80\":{\"summary\":\"E-Mail address in valid format\",\"core\":true,\"versionStr\":\"1.0.2\"},\"86\":{\"summary\":\"Text input validated as a ProcessWire Page name field\",\"core\":true,\"versionStr\":\"1.0.6\"},\"94\":{\"summary\":\"Inputfield that accepts date and optionally time\",\"core\":true,\"versionStr\":\"1.0.8\"},\"168\":{\"summary\":\"CKEditor textarea rich text editor.\",\"core\":true,\"versionStr\":\"1.7.2\"},\"34\":{\"summary\":\"Single line of text\",\"core\":true,\"versionStr\":\"1.0.6\"},\"37\":{\"summary\":\"Single checkbox toggle\",\"core\":true,\"versionStr\":\"1.0.6\"},\"79\":{\"summary\":\"Contains any other markup and optionally child Inputfields\",\"core\":true,\"versionStr\":\"1.0.2\"},\"43\":{\"summary\":\"Select multiple items from a list\",\"core\":true,\"versionStr\":\"1.0.1\"},\"165\":{\"summary\":\"Select an icon\",\"core\":true,\"versionStr\":\"0.0.3\"},\"39\":{\"summary\":\"Radio buttons for selection of a single item\",\"core\":true,\"versionStr\":\"1.0.6\"},\"112\":{\"summary\":\"Handles input of Page Title and auto-generation of Page Name (when name is blank)\",\"core\":true,\"versionStr\":\"1.0.2\"},\"122\":{\"summary\":\"Password input with confirmation field.\",\"core\":true,\"versionStr\":\"1.0.2\"},\"156\":{\"summary\":\"Multiple Page selection using auto completion and sorting capability. Intended for use as an input field for Page reference fields.\",\"core\":true,\"versionStr\":\"1.1.3\"},\"160\":{\"summary\":\"Build a page finding selector visually.\",\"author\":\"Avoine + ProcessWire\",\"core\":true,\"versionStr\":\"0.2.8\"},\"32\":{\"summary\":\"Form submit button\",\"core\":true,\"versionStr\":\"1.0.3\"},\"193\":{\"summary\":\"Enables input of user entered tags or selection of predefined tags.\",\"core\":true,\"versionStr\":\"0.0.7\"},\"30\":{\"summary\":\"Contains one or more fields in a form\",\"core\":true,\"versionStr\":\"1.0.7\"},\"15\":{\"summary\":\"Selection of a single page from a ProcessWire page tree list\",\"core\":true,\"versionStr\":\"1.0.1\"},\"137\":{\"summary\":\"Selection of multiple pages from a ProcessWire page tree list\",\"core\":true,\"versionStr\":\"1.0.3\"},\"41\":{\"summary\":\"Text input validated as a ProcessWire name field\",\"core\":true,\"versionStr\":\"1.0.0\"},\"50\":{\"summary\":\"List, edit or install\\/uninstall modules\",\"core\":true,\"versionStr\":\"1.2.1\"},\"48\":{\"summary\":\"Edit individual fields that hold page data\",\"core\":true,\"versionStr\":\"1.1.4\",\"searchable\":\"fields\"},\"136\":{\"summary\":\"Manage system permissions\",\"core\":true,\"versionStr\":\"1.0.1\"},\"121\":{\"summary\":\"Provides a link capability as used by some Fieldtype modules (like rich text editors).\",\"core\":true,\"versionStr\":\"1.1.2\"},\"164\":{\"summary\":\"View and manage system logs.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.0.2\",\"permissions\":{\"logs-view\":\"Can view system logs\",\"logs-edit\":\"Can manage system logs\"},\"page\":{\"name\":\"logs\",\"parent\":\"setup\",\"title\":\"Logs\"}},\"161\":{\"summary\":\"Admin tool for finding and listing pages by any property.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.2.6\",\"permissions\":{\"page-lister\":\"Use Page Lister\"}},\"87\":{\"summary\":\"Acts as a placeholder Process for the admin root. Ensures proper flow control after login.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"68\":{\"summary\":\"Manage user roles and what permissions are attached\",\"core\":true,\"versionStr\":\"1.0.4\"},\"83\":{\"summary\":\"All page views are routed through this Process\",\"core\":true,\"versionStr\":\"1.0.6\"},\"104\":{\"summary\":\"Provides a page search engine for admin use.\",\"core\":true,\"versionStr\":\"1.0.8\"},\"12\":{\"summary\":\"List pages in a hierarchical tree structure\",\"core\":true,\"versionStr\":\"1.2.4\"},\"134\":{\"summary\":\"List, Edit and Add pages of a specific type\",\"core\":true,\"versionStr\":\"1.0.1\"},\"7\":{\"summary\":\"Edit a Page\",\"core\":true,\"versionStr\":\"1.1.2\"},\"129\":{\"summary\":\"Provides image manipulation functions for image fields and rich text editors.\",\"core\":true,\"versionStr\":\"1.2.1\"},\"76\":{\"summary\":\"Lists the Process assigned to each child page of the current\",\"core\":true,\"versionStr\":\"1.0.1\"},\"14\":{\"summary\":\"Handles page sorting and moving for PageList\",\"core\":true,\"versionStr\":\"1.0.1\"},\"66\":{\"summary\":\"Manage system users\",\"core\":true,\"versionStr\":\"1.0.7\",\"searchable\":\"users\"},\"10\":{\"summary\":\"Login to ProcessWire\",\"core\":true,\"versionStr\":\"1.0.9\"},\"109\":{\"summary\":\"Handles emptying of Page trash\",\"core\":true,\"versionStr\":\"1.0.3\"},\"162\":{\"summary\":\"Shows a list of recently edited pages in your admin.\",\"author\":\"Ryan Cramer\",\"href\":\"http:\\/\\/modules.processwire.com\\/\",\"core\":true,\"versionStr\":\"0.0.2\",\"permissions\":{\"page-edit-recent\":\"Can see recently edited pages\"},\"page\":{\"name\":\"recent-pages\",\"parent\":\"page\",\"title\":\"Recent\"}},\"47\":{\"summary\":\"List and edit the templates that control page output\",\"core\":true,\"versionStr\":\"1.1.4\",\"searchable\":\"templates\"},\"17\":{\"summary\":\"Add a new page\",\"core\":true,\"versionStr\":\"1.0.9\"},\"138\":{\"summary\":\"Enables user to change their password, email address and other settings that you define.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"125\":{\"summary\":\"Throttles login attempts to help prevent dictionary attacks.\",\"core\":true,\"versionStr\":\"1.0.3\"},\"208\":{\"summary\":\"Allows you to put your site into protected mode so that users must be logged in to access the front-end of the site.\",\"author\":\"Adrian Jones\",\"href\":\"http:\\/\\/modules.processwire.com\\/modules\\/protected-mode\\/\",\"versionStr\":\"1.1.2\"},\"200\":{\"summary\":\"Field that stores an address with latitude and longitude coordinates and has built-in geocoding capability with Google Maps API.\",\"versionStr\":\"3.0.0\"},\"155\":{\"summary\":\"Provides input for the MapMarker Fieldtype\",\"versionStr\":\"3.0.0\"},\"172\":{\"summary\":\"Renders Google Maps for the MapMarker Fieldtype\",\"versionStr\":\"3.0.0\"},\"166\":{\"summary\":\"Tool that helps you identify and install core and module upgrades.\",\"author\":\"Ryan Cramer\",\"versionStr\":\"0.0.7\"},\"167\":{\"summary\":\"Automatically checks for core and installed module upgrades at routine intervals.\",\"author\":\"Ryan Cramer\",\"versionStr\":\"0.0.7\"},\"195\":{\"summary\":\"Adds a transliterate method to $sanitizer that performs character replacements as defined in the module config.\",\"author\":\"Robin Sallis\",\"href\":\"https:\\/\\/github.com\\/Toutouwai\\/SanitizerTransliterate\",\"versionStr\":\"0.1.1\"}}','2017-02-04 22:00:00'),
(192,'.ModulesUninstalled.info',8192,'{\"PageFrontEdit\":{\"name\":\"PageFrontEdit\",\"title\":\"Front-End Page Editor\",\"version\":6,\"versionStr\":\"0.0.6\",\"author\":\"Ryan Cramer\",\"summary\":\"Enables front-end editing of page fields.\",\"icon\":\"cube\",\"permissions\":{\"page-edit-front\":\"Use the front-end page editor\"},\"autoload\":true,\"created\":1764970257,\"installed\":false,\"configurable\":\"PageFrontEditConfig.php\",\"core\":true,\"license\":\"MPL 2.0\"},\"TextformatterSmartypants\":{\"name\":\"TextformatterSmartypants\",\"title\":\"SmartyPants Typographer\",\"version\":171,\"versionStr\":\"1.7.1\",\"summary\":\"Smart typography for web sites, by Michel Fortin based on SmartyPants by John Gruber. If combined with Markdown, it should be applied AFTER Markdown.\",\"created\":1764970257,\"installed\":false,\"configurable\":4,\"core\":true,\"url\":\"https:\\/\\/github.com\\/michelf\\/php-smartypants\"},\"TextformatterPstripper\":{\"name\":\"TextformatterPstripper\",\"title\":\"Paragraph Stripper\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Strips paragraph <p> tags that may have been applied by other text formatters before it. \",\"created\":1764970257,\"installed\":false,\"core\":true},\"TextformatterStripTags\":{\"name\":\"TextformatterStripTags\",\"title\":\"Strip Markup Tags\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Strips HTML\\/XHTML Markup Tags\",\"created\":1764970257,\"installed\":false,\"configurable\":3,\"core\":true},\"TextformatterNewlineBR\":{\"name\":\"TextformatterNewlineBR\",\"title\":\"Newlines to XHTML Line Breaks\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Converts newlines to XHTML line break <br \\/> tags. \",\"created\":1764970257,\"installed\":false,\"core\":true},\"TextformatterNewlineUL\":{\"name\":\"TextformatterNewlineUL\",\"title\":\"Newlines to Unordered List\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Converts newlines to <li> list items and surrounds in an <ul> unordered list. \",\"created\":1764970257,\"installed\":false,\"core\":true},\"PagePathHistory\":{\"name\":\"PagePathHistory\",\"title\":\"Page Path History\",\"version\":8,\"versionStr\":\"0.0.8\",\"summary\":\"Keeps track of past URLs where pages have lived and automatically redirects (301 permanent) to the new location whenever the past URL is accessed.\",\"autoload\":true,\"singular\":true,\"created\":1764970257,\"installed\":false,\"configurable\":4,\"core\":true},\"LazyCron\":{\"name\":\"LazyCron\",\"title\":\"Lazy Cron\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides hooks that are automatically executed at various intervals. It is called \'lazy\' because it\'s triggered by a pageview, so the interval is guaranteed to be at least the time requested, rather than exactly the time requested. This is fine for most cases, but you can make it not lazy by connecting this to a real CRON job. See the module file for details. \",\"href\":\"https:\\/\\/processwire.com\\/api\\/modules\\/lazy-cron\\/\",\"autoload\":true,\"singular\":true,\"created\":1764970257,\"installed\":false,\"core\":true},\"ImageSizerEngineIMagick\":{\"name\":\"ImageSizerEngineIMagick\",\"title\":\"IMagick Image Sizer\",\"version\":3,\"versionStr\":\"0.0.3\",\"author\":\"Horst Nogajski\",\"summary\":\"Upgrades image manipulations to use PHP\'s ImageMagick library when possible.\",\"created\":1764970257,\"installed\":false,\"configurable\":4,\"core\":true},\"ImageSizerEngineAnimatedGif\":{\"name\":\"ImageSizerEngineAnimatedGif\",\"title\":\"Animated GIF Image Sizer\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"Horst Nogajski\",\"summary\":\"Upgrades image manipulations for animated GIFs.\",\"created\":1764970257,\"installed\":false,\"configurable\":4,\"core\":true},\"SystemNotifications\":{\"name\":\"SystemNotifications\",\"title\":\"System Notifications\",\"version\":12,\"versionStr\":\"0.1.2\",\"summary\":\"Adds support for notifications in ProcessWire (currently in development)\",\"icon\":\"bell\",\"installs\":[\"FieldtypeNotifications\"],\"autoload\":true,\"created\":1764970257,\"installed\":false,\"configurable\":\"SystemNotificationsConfig.php\",\"core\":true},\"FieldtypeNotifications\":{\"name\":\"FieldtypeNotifications\",\"title\":\"Notifications\",\"version\":4,\"versionStr\":\"0.0.4\",\"summary\":\"Field that stores user notifications.\",\"requiresVersions\":{\"SystemNotifications\":[\">=\",0]},\"created\":1764970257,\"installed\":false,\"core\":true},\"MarkupCache\":{\"name\":\"MarkupCache\",\"title\":\"Markup Cache\",\"version\":101,\"versionStr\":\"1.0.1\",\"summary\":\"A simple way to cache segments of markup in your templates. \",\"href\":\"https:\\/\\/processwire.com\\/api\\/modules\\/markupcache\\/\",\"autoload\":true,\"singular\":true,\"created\":1764970257,\"installed\":false,\"configurable\":3,\"core\":true},\"MarkupPageFields\":{\"name\":\"MarkupPageFields\",\"title\":\"Markup Page Fields\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Adds $page->renderFields() and $page->images->render() methods that return basic markup for output during development and debugging.\",\"autoload\":true,\"singular\":true,\"created\":1764970257,\"installed\":false,\"core\":true,\"permanent\":true},\"MarkupRSS\":{\"name\":\"MarkupRSS\",\"title\":\"Markup RSS Feed\",\"version\":105,\"versionStr\":\"1.0.5\",\"summary\":\"Renders an RSS feed. Given a PageArray, renders an RSS feed of them.\",\"icon\":\"rss-square\",\"created\":1764970257,\"installed\":false,\"configurable\":3,\"core\":true},\"FieldtypeCache\":{\"name\":\"FieldtypeCache\",\"title\":\"Cache\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Caches the values of other fields for fewer runtime queries. Can also be used to combine multiple text fields and have them all be searchable under the cached field name.\",\"created\":1764970257,\"installed\":false,\"core\":true},\"FieldtypePageTable\":{\"name\":\"FieldtypePageTable\",\"title\":\"ProFields: Page Table\",\"version\":8,\"versionStr\":\"0.0.8\",\"summary\":\"A fieldtype containing a group of editable pages.\",\"installs\":[\"InputfieldPageTable\"],\"autoload\":true,\"created\":1764970257,\"installed\":false,\"core\":true},\"FieldtypeFieldsetPage\":{\"name\":\"FieldtypeFieldsetPage\",\"title\":\"Fieldset (Page)\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Fieldset with fields isolated to separate namespace (page), enabling re-use of fields.\",\"requiresVersions\":{\"FieldtypeRepeater\":[\">=\",0]},\"autoload\":true,\"created\":1764970257,\"installed\":false,\"configurable\":3,\"core\":true},\"FieldtypeRepeater\":{\"name\":\"FieldtypeRepeater\",\"title\":\"Repeater\",\"version\":113,\"versionStr\":\"1.1.3\",\"summary\":\"Maintains a collection of fields that are repeated for any number of times.\",\"installs\":[\"InputfieldRepeater\"],\"autoload\":true,\"created\":1764970257,\"installed\":false,\"configurable\":3,\"core\":true},\"InputfieldRepeater\":{\"name\":\"InputfieldRepeater\",\"title\":\"Repeater\",\"version\":111,\"versionStr\":\"1.1.1\",\"summary\":\"Repeats fields from another template. Provides the input for FieldtypeRepeater.\",\"requiresVersions\":{\"FieldtypeRepeater\":[\">=\",0]},\"created\":1764970257,\"installed\":false,\"core\":true},\"FieldtypeDecimal\":{\"name\":\"FieldtypeDecimal\",\"title\":\"Decimal\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Field that stores a decimal number\",\"created\":1764970257,\"installed\":false,\"core\":true},\"FieldtypeSelector\":{\"name\":\"FieldtypeSelector\",\"title\":\"Selector\",\"version\":13,\"versionStr\":\"0.1.3\",\"author\":\"Avoine + ProcessWire\",\"summary\":\"Build a page finding selector visually.\",\"created\":1764970257,\"installed\":false,\"core\":true},\"FieldtypeComments\":{\"name\":\"FieldtypeComments\",\"title\":\"Comments\",\"version\":110,\"versionStr\":\"1.1.0\",\"summary\":\"Field that stores user posted comments for a single Page\",\"installs\":[\"InputfieldCommentsAdmin\"],\"created\":1764970257,\"installed\":false,\"core\":true},\"InputfieldCommentsAdmin\":{\"name\":\"InputfieldCommentsAdmin\",\"title\":\"Comments Admin\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides an administrative interface for working with comments\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"created\":1764970257,\"installed\":false,\"core\":true},\"CommentFilterAkismet\":{\"name\":\"CommentFilterAkismet\",\"title\":\"Comment Filter: Akismet\",\"version\":200,\"versionStr\":\"2.0.0\",\"summary\":\"Uses the Akismet service to identify comment spam. Module plugin for the Comments Fieldtype.\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"created\":1764970257,\"installed\":false,\"configurable\":3,\"core\":true},\"FieldtypeToggle\":{\"name\":\"FieldtypeToggle\",\"title\":\"Toggle (Yes\\/No)\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Configurable yes\\/no, on\\/off toggle alternative to a checkbox, plus optional \\u201cother\\u201d option.\",\"requiresVersions\":{\"InputfieldToggle\":[\">=\",0]},\"created\":1764970257,\"installed\":false,\"core\":true},\"AdminThemeReno\":{\"name\":\"AdminThemeReno\",\"title\":\"Reno\",\"version\":17,\"versionStr\":\"0.1.7\",\"author\":\"Tom Reno (Renobird)\",\"summary\":\"Admin theme for ProcessWire 2.5+ by Tom Reno (Renobird)\",\"requiresVersions\":{\"AdminThemeDefault\":[\">=\",0]},\"autoload\":\"template=admin\",\"created\":1764970257,\"installed\":false,\"configurable\":3,\"core\":true},\"InputfieldPageTable\":{\"name\":\"InputfieldPageTable\",\"title\":\"ProFields: Page Table\",\"version\":14,\"versionStr\":\"0.1.4\",\"summary\":\"Inputfield to accompany FieldtypePageTable\",\"requiresVersions\":{\"FieldtypePageTable\":[\">=\",0]},\"created\":1764970257,\"installed\":false,\"core\":true},\"InputfieldToggle\":{\"name\":\"InputfieldToggle\",\"title\":\"Toggle\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"A toggle providing similar input capability to a checkbox but much more configurable.\",\"created\":1764970257,\"installed\":false,\"core\":true},\"InputfieldTinyMCE\":{\"name\":\"InputfieldTinyMCE\",\"title\":\"TinyMCE\",\"version\":618,\"versionStr\":\"6.1.8\",\"summary\":\"TinyMCE rich text editor version 6.8.2.\",\"icon\":\"keyboard-o\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.200\"],\"MarkupHTMLPurifier\":[\">=\",0]},\"created\":1764970257,\"installed\":false,\"configurable\":4,\"core\":true},\"InputfieldTextTags\":{\"name\":\"InputfieldTextTags\",\"title\":\"Text Tags\",\"version\":7,\"versionStr\":\"0.0.7\",\"summary\":\"Enables input of user entered tags or selection of predefined tags.\",\"icon\":\"tags\",\"created\":1739545803,\"installed\":false,\"core\":true},\"PagesVersions\":{\"name\":\"PagesVersions\",\"title\":\"Pages Versions\",\"version\":2,\"versionStr\":\"0.0.2\",\"author\":\"Ryan Cramer\",\"summary\":\"Provides a version control API for pages in ProcessWire.\",\"icon\":\"code-fork\",\"autoload\":true,\"singular\":true,\"created\":1764970257,\"installed\":false,\"core\":true},\"PagePaths\":{\"name\":\"PagePaths\",\"title\":\"Page Paths\",\"version\":4,\"versionStr\":\"0.0.4\",\"summary\":\"Enables page paths\\/urls to be queryable by selectors. Also offers potential for improved load performance. Builds an index at install (may take time on a large site).\",\"autoload\":true,\"singular\":true,\"created\":1764970257,\"installed\":false,\"configurable\":4,\"core\":true},\"FileCompilerTags\":{\"name\":\"FileCompilerTags\",\"title\":\"Tags File Compiler\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Enables {var} or {var.property} variables in markup sections of a file. Can be used with any API variable.\",\"created\":1764970257,\"installed\":false,\"configurable\":4,\"core\":true},\"ProcessPageClone\":{\"name\":\"ProcessPageClone\",\"title\":\"Page Clone\",\"version\":106,\"versionStr\":\"1.0.6\",\"summary\":\"Provides ability to clone\\/copy\\/duplicate pages in the admin. Adds a &quot;copy&quot; option to all applicable pages in the PageList.\",\"permission\":\"page-clone\",\"permissions\":{\"page-clone\":\"Clone a page\",\"page-clone-tree\":\"Clone a tree of pages\"},\"autoload\":\"template=admin\",\"created\":1764970257,\"installed\":false,\"configurable\":4,\"core\":true,\"page\":{\"name\":\"clone\",\"title\":\"Clone\",\"parent\":\"page\",\"status\":1024}},\"ProcessForgotPassword\":{\"name\":\"ProcessForgotPassword\",\"title\":\"Forgot Password\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides password reset\\/email capability for the Login process.\",\"permission\":\"page-view\",\"created\":1764970257,\"installed\":false,\"configurable\":4,\"core\":true},\"ProcessCommentsManager\":{\"name\":\"ProcessCommentsManager\",\"title\":\"Comments\",\"version\":12,\"versionStr\":\"0.1.2\",\"author\":\"Ryan Cramer\",\"summary\":\"Manage comments in your site outside of the page editor.\",\"icon\":\"comments\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"permission\":\"comments-manager\",\"permissions\":{\"comments-manager\":\"Use the comments manager\"},\"created\":1764970257,\"installed\":false,\"searchable\":\"comments\",\"core\":true,\"page\":{\"name\":\"comments\",\"parent\":\"setup\",\"title\":\"Comments\"},\"nav\":[{\"url\":\"?go=approved\",\"label\":\"Approved\"},{\"url\":\"?go=pending\",\"label\":\"Pending\"},{\"url\":\"?go=spam\",\"label\":\"Spam\"},{\"url\":\"?go=all\",\"label\":\"All\"}]},\"ProcessPagesExportImport\":{\"name\":\"ProcessPagesExportImport\",\"title\":\"Pages Export\\/Import\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"Ryan Cramer\",\"summary\":\"Enables exporting and importing of pages. Development version, not yet recommended for production use.\",\"icon\":\"paper-plane-o\",\"permission\":\"page-edit-export\",\"created\":1764970257,\"installed\":false,\"core\":true,\"page\":{\"name\":\"export-import\",\"parent\":\"page\",\"title\":\"Export\\/Import\"}},\"ProcessSessionDB\":{\"name\":\"ProcessSessionDB\",\"title\":\"Sessions\",\"version\":5,\"versionStr\":\"0.0.5\",\"summary\":\"Enables you to browse active database sessions.\",\"icon\":\"dashboard\",\"requiresVersions\":{\"SessionHandlerDB\":[\">=\",0]},\"created\":1764970257,\"installed\":false,\"core\":true,\"page\":{\"name\":\"sessions-db\",\"parent\":\"access\",\"title\":\"Sessions\"}},\"SessionHandlerDB\":{\"name\":\"SessionHandlerDB\",\"title\":\"Session Handler Database\",\"version\":6,\"versionStr\":\"0.0.6\",\"summary\":\"Installing this module makes ProcessWire store sessions in the database rather than the file system. Note that this module will log you out after install or uninstall.\",\"installs\":[\"ProcessSessionDB\"],\"created\":1764970257,\"installed\":false,\"configurable\":3,\"core\":true},\"SanitizerTransliterate\":{\"name\":\"SanitizerTransliterate\",\"title\":\"Sanitizer Transliterate\",\"version\":\"0.1.1\",\"versionStr\":\"0.1.1\",\"author\":\"Robin Sallis\",\"summary\":\"Adds a transliterate method to $sanitizer that performs character replacements as defined in the module config.\",\"href\":\"https:\\/\\/github.com\\/Toutouwai\\/SanitizerTransliterate\",\"icon\":\"exchange\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.16\"]},\"autoload\":true,\"created\":1763923104,\"installed\":false,\"configurable\":4},\"TracyDebugger\":{\"name\":\"TracyDebugger\",\"title\":\"Tracy Debugger\",\"version\":\"4.27.3\",\"versionStr\":\"4.27.3\",\"author\":\"Adrian Jones\",\"summary\":\"Tracy debugger from Nette with many PW specific custom tools.\",\"href\":\"https:\\/\\/processwire.com\\/talk\\/forum\\/58-tracy-debugger\\/\",\"icon\":\"bug\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"2.7.2\"],\"PHP\":[\">=\",\"5.4.4\"]},\"installs\":[\"ProcessTracyAdminer\"],\"autoload\":100000,\"singular\":true,\"created\":1768510105,\"installed\":false,\"configurable\":3,\"namespace\":\"\\\\\"},\"FieldtypeMapMarker\":{\"name\":\"FieldtypeMapMarker\",\"title\":\"Map Marker\",\"version\":300,\"versionStr\":\"3.0.0\",\"summary\":\"Field that stores an address with latitude and longitude coordinates and has built-in geocoding capability with Google Maps API.\",\"icon\":\"map-marker\",\"installs\":[\"InputfieldMapMarker\"],\"created\":1765184842,\"installed\":false,\"configurable\":true},\"FileValidatorZip\":{\"name\":\"FileValidatorZip\",\"title\":\"ZIP file validator\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"Ryan Cramer\",\"summary\":\"Validates ZIP files with various configurable rules.\",\"icon\":\"file-archive-o\",\"created\":1764970257,\"installed\":false,\"configurable\":4,\"core\":true,\"validates\":[\"zip\"]},\"MarkupPwpswpGalleryFlex\":{\"name\":\"MarkupPwpswpGalleryFlex\",\"title\":\"Pwpswp Gallery: Flex\",\"version\":\"0.0.1\",\"versionStr\":\"0.0.1\",\"author\":\"Steffen Henschel\",\"summary\":\"Example gallery: Uses flexbox. Alias: &quot;flex&quot;\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.0\"],\"PHP\":[\">=\",\"5.6\"],\"MarkupPwpswpGallery\":[\">=\",0]},\"created\":1768539350,\"installed\":false},\"MarkupProcesswirePhotoswipe\":{\"name\":\"MarkupProcesswirePhotoswipe\",\"title\":\"Processwire Photoswipe\",\"version\":\"0.99.2\",\"versionStr\":\"0.99.2\",\"author\":\"Steffen Henschel\",\"summary\":\"Easily include Photoswipe by Dmitry Semenov. Comes with markup of a couple of gellery styles.\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.0\"],\"PHP\":[\">=\",\"5.6\"]},\"installs\":[\"MarkupPwpswpGallery\",\"MarkupPwpswpGalleryPetersburger\",\"MarkupPwpswpGalleryFlex\",\"MarkupPwpswpGalleryHorizontalScroller\",\"MarkupPwpswpGalleryHorizontalLegacy\"],\"autoload\":true,\"created\":1765630940,\"installed\":false,\"configurable\":true},\"MarkupPwpswpGallery\":{\"name\":\"MarkupPwpswpGallery\",\"title\":\"Pwpswp Gallery: Plain\",\"version\":\"0.0.1\",\"versionStr\":\"0.0.1\",\"author\":\"Steffen Henschel\",\"summary\":\"Basic gallery and base module for other MarkupPwpswpGallery extension modules. Alias: &quot;plain&quot;\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.0\"],\"PHP\":[\">=\",\"5.6\"]},\"created\":1768539417,\"installed\":false},\"MarkupPwpswpGalleryLegacy\":{\"name\":\"MarkupPwpswpGalleryLegacy\",\"title\":\"Pwpswp Gallery: Legacy\",\"version\":\"0.0.1\",\"versionStr\":\"0.0.1\",\"author\":\"Steffen Henschel\",\"summary\":\"Adapter to enable compatibility with previous themeing pattern. Not available in Processwire Photoswipe config.\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.0\"],\"PHP\":[\">=\",\"5.6\"]},\"created\":1585934080,\"installed\":false},\"MarkupPwpswpGalleryPetersburger\":{\"name\":\"MarkupPwpswpGalleryPetersburger\",\"title\":\"Pwpswp Gallery: Petersburger H\\u00e4ngung\",\"version\":\"0.0.1\",\"versionStr\":\"0.0.1\",\"author\":\"Steffen Henschel\",\"summary\":\"Gallery module for MarkupProcesswirePhotoswipe. A nice wall of pictures. Alias: &quot;petersburger&quot;\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.0\"],\"PHP\":[\">=\",\"5.6\"],\"MarkupPwpswpGallery\":[\">=\",0]},\"installs\":[\"MarkupPwpswpGallery\"],\"created\":1768510681,\"installed\":false,\"configurable\":true},\"MarkupPwpswpGalleryHorizontalScroller\":{\"name\":\"MarkupPwpswpGalleryHorizontalScroller\",\"title\":\"Pwpswp Gallery: Horizontal scroller\",\"version\":\"0.0.1\",\"versionStr\":\"0.0.1\",\"author\":\"Steffen Henschel\",\"summary\":\"Example gallery: A horizontally scrollable row of image items. Alias: &quot;h-scroller&quot;\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.0\"],\"PHP\":[\">=\",\"5.6\"],\"MarkupPwpswpGallery\":[\">=\",0]},\"created\":1768510698,\"installed\":false},\"ProcessTracyAdminer\":{\"name\":\"ProcessTracyAdminer\",\"title\":\"Process Tracy Adminer\",\"version\":\"2.0.3\",\"versionStr\":\"2.0.3\",\"author\":\"Adrian Jones\",\"summary\":\"Adminer page for TracyDebugger.\",\"href\":\"https:\\/\\/processwire.com\\/talk\\/topic\\/12208-tracy-debugger\\/\",\"icon\":\"database\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"2.7.2\"],\"PHP\":[\">=\",\"5.4.4\"],\"TracyDebugger\":[\">=\",0],\"ProcessTracyAdminerRenderer\":[\">=\",0]},\"installs\":[\"ProcessTracyAdminerRenderer\"],\"singular\":true,\"created\":1765184634,\"installed\":false,\"namespace\":\"\\\\\",\"page\":{\"name\":\"adminer\",\"parent\":\"setup\",\"title\":\"Adminer\"}},\"ProcessTracyAdminerRenderer\":{\"name\":\"ProcessTracyAdminerRenderer\",\"title\":\"Process Tracy Adminer Renderer\",\"version\":\"2.0.3\",\"versionStr\":\"2.0.3\",\"author\":\"Adrian Jones\",\"summary\":\"Adminer renderer for TracyDebugger.\",\"href\":\"https:\\/\\/processwire.com\\/talk\\/topic\\/12208-tracy-debugger\\/\",\"icon\":\"database\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"2.7.2\"],\"PHP\":[\">=\",\"5.4.4\"],\"TracyDebugger\":[\">=\",0]},\"singular\":true,\"created\":1768510088,\"installed\":false,\"namespace\":\"\\\\\",\"page\":{\"name\":\"adminer-renderer\",\"parent\":\"setup\",\"title\":\"Adminer Renderer\",\"status\":\"hidden\"}}}','2017-02-04 22:00:00'),
(194,'.ModulesVersions.info',8192,'[]','2017-02-04 22:00:00'),
(195,'SanitizerTransliterate',2,'{\"character_replacements\":{\"\\u00e0\":\"a\",\"\\u00c0\":\"A\",\"\\u0430\":\"a\",\"\\u0410\":\"A\",\"\\u00e2\":\"a\",\"\\u00c2\":\"A\",\"\\u00e1\":\"a\",\"\\u00c1\":\"A\",\"\\u00e5\":\"a\",\"\\u00c5\":\"A\",\"\\u0101\":\"a\",\"\\u0100\":\"A\",\"\\u0105\":\"a\",\"\\u0104\":\"A\",\"\\u00e3\":\"a\",\"\\u00c3\":\"A\",\"\\u00e4\":\"a\",\"\\u00c4\":\"A\",\"\\u00e6\":\"ae\",\"\\u00c6\":\"Ae\",\"\\u0431\":\"b\",\"\\u0411\":\"B\",\"\\u00c7\":\"C\",\"\\u0107\":\"c\",\"\\u0106\":\"C\",\"\\u010d\":\"c\",\"\\u010c\":\"C\",\"\\u00e7\":\"c\",\"\\u0447\":\"ch\",\"\\u0427\":\"Ch\",\"\\u0434\":\"d\",\"\\u0414\":\"D\",\"\\u010f\":\"d\",\"\\u010e\":\"D\",\"\\u0111\":\"dj\",\"\\u0110\":\"Dj\",\"\\u044d\":\"e\",\"\\u042d\":\"E\",\"\\u0119\":\"e\",\"\\u0118\":\"E\",\"\\u00e9\":\"e\",\"\\u00c9\":\"E\",\"\\u00eb\":\"e\",\"\\u00cb\":\"E\",\"\\u00ea\":\"e\",\"\\u00ca\":\"E\",\"\\u011b\":\"e\",\"\\u011a\":\"E\",\"\\u0113\":\"e\",\"\\u0112\":\"E\",\"\\u0435\":\"e\",\"\\u0415\":\"E\",\"\\u0451\":\"e\",\"\\u0401\":\"E\",\"\\u00e8\":\"e\",\"\\u00c8\":\"E\",\"\\u0444\":\"f\",\"\\u0424\":\"F\",\"\\u0433\":\"g\",\"\\u0413\":\"G\",\"\\u011f\":\"g\",\"\\u011e\":\"G\",\"\\u0130\":\"I\",\"\\u0439\":\"i\",\"\\u0419\":\"I\",\"\\u0438\":\"i\",\"\\u0418\":\"I\",\"\\u0131\":\"i\",\"\\u00ee\":\"i\",\"\\u00ce\":\"I\",\"\\u012b\":\"i\",\"\\u012a\":\"I\",\"\\u00ef\":\"i\",\"\\u00cf\":\"I\",\"\\u00ed\":\"i\",\"\\u00cd\":\"I\",\"\\u00ec\":\"i\",\"\\u00cc\":\"I\",\"\\u044f\":\"ia\",\"\\u042f\":\"Ia\",\"\\u044e\":\"iu\",\"\\u042e\":\"Iu\",\"\\u043a\":\"k\",\"\\u041a\":\"K\",\"\\u0445\":\"kh\",\"\\u0425\":\"Kh\",\"\\u043b\":\"l\",\"\\u041b\":\"L\",\"\\u013a\":\"l\",\"\\u0139\":\"L\",\"\\u013e\":\"l\",\"\\u013d\":\"L\",\"\\u0142\":\"l\",\"\\u0141\":\"L\",\"\\u043c\":\"m\",\"\\u041c\":\"M\",\"\\u043d\":\"n\",\"\\u041d\":\"N\",\"\\u0144\":\"n\",\"\\u0143\":\"N\",\"\\u00f1\":\"n\",\"\\u00d1\":\"N\",\"\\u0148\":\"n\",\"\\u0147\":\"N\",\"\\u00f8\":\"o\",\"\\u00d8\":\"O\",\"\\u00f4\":\"o\",\"\\u00d4\":\"O\",\"\\u043e\":\"o\",\"\\u041e\":\"O\",\"\\u00f6\":\"o\",\"\\u00d6\":\"O\",\"\\u00f5\":\"o\",\"\\u00d5\":\"O\",\"\\u00f2\":\"o\",\"\\u00d2\":\"O\",\"\\u00f3\":\"o\",\"\\u00d3\":\"O\",\"\\u014d\":\"o\",\"\\u014c\":\"O\",\"\\u043f\":\"p\",\"\\u041f\":\"P\",\"\\u0155\":\"r\",\"\\u0154\":\"R\",\"\\u0440\":\"r\",\"\\u0420\":\"R\",\"\\u0159\":\"r\",\"\\u0158\":\"R\",\"\\u015e\":\"S\",\"\\u0161\":\"s\",\"\\u0160\":\"S\",\"\\u015b\":\"s\",\"\\u015a\":\"S\",\"\\u0441\":\"s\",\"\\u0421\":\"S\",\"\\u015f\":\"s\",\"\\u0448\":\"sh\",\"\\u0428\":\"Sh\",\"\\u0449\":\"shch\",\"\\u0429\":\"Shch\",\"\\u1e9e\":\"Ss\",\"\\u00df\":\"ss\",\"\\u0442\":\"t\",\"\\u0422\":\"T\",\"\\u0165\":\"t\",\"\\u0164\":\"T\",\"\\u0446\":\"tc\",\"\\u0426\":\"Tc\",\"\\u0443\":\"u\",\"\\u0423\":\"U\",\"\\u00fc\":\"u\",\"\\u00dc\":\"U\",\"\\u016f\":\"u\",\"\\u016e\":\"U\",\"\\u00fb\":\"u\",\"\\u00db\":\"U\",\"\\u00fa\":\"u\",\"\\u00da\":\"U\",\"\\u00f9\":\"u\",\"\\u00d9\":\"U\",\"\\u016b\":\"u\",\"\\u016a\":\"U\",\"\\u0432\":\"v\",\"\\u0412\":\"V\",\"\\u044b\":\"y\",\"\\u042b\":\"Y\",\"\\u00fd\":\"y\",\"\\u00dd\":\"Y\",\"\\u0437\":\"z\",\"\\u0417\":\"Z\",\"\\u017e\":\"z\",\"\\u017d\":\"Z\",\"\\u017c\":\"z\",\"\\u017b\":\"Z\",\"\\u017a\":\"z\",\"\\u0179\":\"Z\",\"\\u0436\":\"zh\",\"\\u0416\":\"Zh\"},\"character_replacements_str\":\"\\u00e0=a\\n\\u00c0=A\\n\\u0430=a\\n\\u0410=A\\n\\u00e2=a\\n\\u00c2=A\\n\\u00e1=a\\n\\u00c1=A\\n\\u00e5=a\\n\\u00c5=A\\n\\u0101=a\\n\\u0100=A\\n\\u0105=a\\n\\u0104=A\\n\\u00e3=a\\n\\u00c3=A\\n\\u00e4=a\\n\\u00c4=A\\n\\u00e6=ae\\n\\u00c6=Ae\\n\\u0431=b\\n\\u0411=B\\n\\u00c7=C\\n\\u0107=c\\n\\u0106=C\\n\\u010d=c\\n\\u010c=C\\n\\u00e7=c\\n\\u0447=ch\\n\\u0427=Ch\\n\\u0434=d\\n\\u0414=D\\n\\u010f=d\\n\\u010e=D\\n\\u0111=dj\\n\\u0110=Dj\\n\\u044d=e\\n\\u042d=E\\n\\u0119=e\\n\\u0118=E\\n\\u00e9=e\\n\\u00c9=E\\n\\u00eb=e\\n\\u00cb=E\\n\\u00ea=e\\n\\u00ca=E\\n\\u011b=e\\n\\u011a=E\\n\\u0113=e\\n\\u0112=E\\n\\u0435=e\\n\\u0415=E\\n\\u0451=e\\n\\u0401=E\\n\\u00e8=e\\n\\u00c8=E\\n\\u0444=f\\n\\u0424=F\\n\\u0433=g\\n\\u0413=G\\n\\u011f=g\\n\\u011e=G\\n\\u0130=I\\n\\u0439=i\\n\\u0419=I\\n\\u0438=i\\n\\u0418=I\\n\\u0131=i\\n\\u00ee=i\\n\\u00ce=I\\n\\u012b=i\\n\\u012a=I\\n\\u00ef=i\\n\\u00cf=I\\n\\u00ed=i\\n\\u00cd=I\\n\\u00ec=i\\n\\u00cc=I\\n\\u044f=ia\\n\\u042f=Ia\\n\\u044e=iu\\n\\u042e=Iu\\n\\u043a=k\\n\\u041a=K\\n\\u0445=kh\\n\\u0425=Kh\\n\\u043b=l\\n\\u041b=L\\n\\u013a=l\\n\\u0139=L\\n\\u013e=l\\n\\u013d=L\\n\\u0142=l\\n\\u0141=L\\n\\u043c=m\\n\\u041c=M\\n\\u043d=n\\n\\u041d=N\\n\\u0144=n\\n\\u0143=N\\n\\u00f1=n\\n\\u00d1=N\\n\\u0148=n\\n\\u0147=N\\n\\u00f8=o\\n\\u00d8=O\\n\\u00f4=o\\n\\u00d4=O\\n\\u043e=o\\n\\u041e=O\\n\\u00f6=o\\n\\u00d6=O\\n\\u00f5=o\\n\\u00d5=O\\n\\u00f2=o\\n\\u00d2=O\\n\\u00f3=o\\n\\u00d3=O\\n\\u014d=o\\n\\u014c=O\\n\\u043f=p\\n\\u041f=P\\n\\u0155=r\\n\\u0154=R\\n\\u0440=r\\n\\u0420=R\\n\\u0159=r\\n\\u0158=R\\n\\u015e=S\\n\\u0161=s\\n\\u0160=S\\n\\u015b=s\\n\\u015a=S\\n\\u0441=s\\n\\u0421=S\\n\\u015f=s\\n\\u0448=sh\\n\\u0428=Sh\\n\\u0449=shch\\n\\u0429=Shch\\n\\u1e9e=Ss\\n\\u00df=ss\\n\\u0442=t\\n\\u0422=T\\n\\u0165=t\\n\\u0164=T\\n\\u0446=tc\\n\\u0426=Tc\\n\\u0443=u\\n\\u0423=U\\n\\u00fc=u\\n\\u00dc=U\\n\\u016f=u\\n\\u016e=U\\n\\u00fb=u\\n\\u00db=U\\n\\u00fa=u\\n\\u00da=U\\n\\u00f9=u\\n\\u00d9=U\\n\\u016b=u\\n\\u016a=U\\n\\u0432=v\\n\\u0412=V\\n\\u044b=y\\n\\u042b=Y\\n\\u00fd=y\\n\\u00dd=Y\\n\\u0437=z\\n\\u0417=Z\\n\\u017e=z\\n\\u017d=Z\\n\\u017c=z\\n\\u017b=Z\\n\\u017a=z\\n\\u0179=Z\\n\\u0436=zh\\n\\u0416=Zh\"}','2025-11-23 18:38:29'),
(200,'FieldtypeMapMarker',1,'','2025-12-08 09:07:25'),
(201,'FileValidatorZip',0,'','2025-12-09 12:13:41'),
(207,'InputfieldToggle',0,'','2026-01-08 15:43:26'),
(208,'ProtectedMode',3,'{\"protectedMode\":1,\"hideLogin\":\"\",\"roles\":[],\"send503header\":\"\",\"retryAfter\":1768202576,\"retryAfter_inputdate\":\"Y-m-d\",\"retryAfter_inputtime\":\"H:i\",\"retryAfter_autoIncrease\":60,\"message\":\"The site is currently in protected mode.<br>\\nYou must log in to view the site.\",\"message__5753\":\"\",\"message__5754\":\"\",\"message__5755\":\"\",\"prohibitedMessage\":\"Sorry, you do not have permission to view the site in protected mode.\",\"prohibitedMessage__5753\":\"\",\"prohibitedMessage__5754\":\"\",\"prohibitedMessage__5755\":\"\",\"usernamePlaceholder\":\"Username\",\"usernamePlaceholder__5753\":\"\",\"usernamePlaceholder__5754\":\"\",\"usernamePlaceholder__5755\":\"\",\"passwordPlaceholder\":\"Password\",\"passwordPlaceholder__5753\":\"\",\"passwordPlaceholder__5754\":\"\",\"passwordPlaceholder__5755\":\"\",\"loginButtonText\":\"Login\",\"loginButtonText__5753\":\"\",\"loginButtonText__5754\":\"\",\"loginButtonText__5755\":\"\",\"logincss\":\".protected-mode-container {\\n    width: 400px;\\n    max-width: calc(100vw - 20px);\\n    height: 150px;\\n    margin: auto;\\n    position: absolute;\\n    top: 0;\\n    left: 0;\\n    bottom: 0;\\n    right: 0;\\n}\\n\\np, legend {\\n    font-family: Arial, Helvetica, sans-serif;\\n    display: block;\\n    width: 100%;\\n    margin-bottom: 1rem;\\n    line-height: 1.4;\\n    color: #6F6F6F;\\n}\\n\\nbutton {\\n    font-family: Arial, Helvetica, sans-serif;\\n    font-size: 100%;\\n    padding: 0.5em 1em;\\n    background-color: #006DD3;\\n    color:#fff;\\n    text-decoration: none;\\n    border: 0 rgba(0,0,0,0);\\n    border-radius: 2px;\\n}\\nbutton:hover,\\nbutton:focus {\\n    background-color: #007DD2;\\n}\\nbutton:focus {\\n    outline: 0;\\n}\\n\\ninput[type=\'text\'],\\ninput[type=\'password\'] {\\n    font-size: 100%;\\n    padding: 0.5rem;\\n    display: inline-block;\\n    border: 1px solid #ccc;\\n    box-shadow: inset 0 1px 3px #ddd;\\n    border-radius: 4px;\\n    -webkit-box-sizing: border-box;\\n    -moz-box-sizing: border-box;\\n    box-sizing: border-box;\\n}\"}','2026-01-12 07:22:07');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT 0,
  `templates_id` int(11) unsigned NOT NULL DEFAULT 0,
  `name` varchar(128) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT 2,
  `created` timestamp NOT NULL DEFAULT '2017-02-04 22:00:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT 2,
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `name5753` varchar(128) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  `status5753` int(10) unsigned NOT NULL DEFAULT 1,
  `name5754` varchar(128) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  `status5754` int(10) unsigned NOT NULL DEFAULT 1,
  `name5755` varchar(128) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  `status5755` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  UNIQUE KEY `name5753_parent_id` (`name5753`,`parent_id`),
  UNIQUE KEY `name5754_parent_id` (`name5754`,`parent_id`),
  UNIQUE KEY `name5755_parent_id` (`name5755`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=6361 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES
(1,0,1,'home',1,'2026-02-25 17:02:25',41,'2017-02-04 22:00:00',41,'2017-02-05 00:00:00',0,'ru-home',1,'fr-home',1,'sv-home',0),
(2,1,2,'processwire',1035,'2020-07-24 07:35:00',40,'2017-02-04 22:00:00',41,'2017-02-05 00:00:00',5,NULL,1,NULL,1,NULL,1),
(3,2,2,'page',21,'2011-03-29 17:37:06',41,'2017-02-04 22:00:00',41,'2017-02-05 00:00:00',0,NULL,1,NULL,1,NULL,1),
(6,3,2,'add',21,'2017-02-06 02:28:37',40,'2017-02-04 22:00:00',41,'2017-02-05 00:00:00',1,NULL,1,NULL,1,NULL,1),
(7,1,2,'trash',1039,'2011-08-14 18:04:52',41,'2010-02-07 03:29:39',41,'2010-02-07 05:29:39',6,NULL,1,NULL,1,NULL,1),
(8,3,2,'list',21,'2020-06-11 06:27:54',40,'2017-02-04 22:00:00',41,'2017-02-05 00:00:00',0,NULL,1,NULL,1,NULL,1),
(9,3,2,'sort',1047,'2011-03-29 17:37:06',41,'2017-02-04 22:00:00',41,'2017-02-05 00:00:00',3,NULL,1,NULL,1,NULL,1),
(10,3,2,'edit',1045,'2017-02-06 02:28:42',41,'2017-02-04 22:00:00',41,'2017-02-05 00:00:00',4,NULL,1,NULL,1,NULL,1),
(11,22,2,'template',21,'2011-03-29 17:37:06',41,'2010-02-01 09:04:54',41,'2010-02-01 11:04:54',0,NULL,1,NULL,1,NULL,1),
(16,22,2,'field',21,'2011-03-29 17:37:06',41,'2010-02-01 10:44:07',41,'2010-02-01 12:44:07',2,NULL,1,NULL,1,NULL,1),
(21,2,2,'module',21,'2011-03-29 17:37:06',41,'2010-02-02 08:02:24',41,'2010-02-02 10:02:24',2,NULL,1,NULL,1,NULL,1),
(22,2,2,'setup',21,'2011-03-29 17:37:06',41,'2010-02-09 10:16:59',41,'2010-02-09 12:16:59',1,NULL,1,NULL,1,NULL,1),
(23,2,2,'login',1035,'2011-05-03 19:38:10',41,'2010-02-17 07:59:39',41,'2010-02-17 09:59:39',4,NULL,1,NULL,1,NULL,1),
(27,1,27,'http404',1027,'2026-01-20 12:47:35',41,'2010-06-02 14:53:03',3,'2010-06-02 18:53:03',6,NULL,1,NULL,1,NULL,0),
(28,2,2,'access',13,'2011-05-03 19:38:10',41,'2011-03-19 17:14:20',41,'2011-03-19 19:14:20',3,NULL,1,NULL,1,NULL,1),
(29,28,2,'users',29,'2011-04-04 20:39:08',41,'2011-03-19 17:15:29',41,'2011-03-19 19:15:29',0,NULL,1,NULL,1,NULL,1),
(30,28,2,'roles',29,'2011-04-04 20:38:39',41,'2011-03-19 17:15:45',41,'2011-03-19 19:15:45',1,NULL,1,NULL,1,NULL,1),
(31,28,2,'permissions',29,'2011-04-04 20:53:52',41,'2011-03-19 17:16:00',41,'2011-03-19 19:16:00',2,NULL,1,NULL,1,NULL,1),
(32,31,5,'page-edit',25,'2011-09-06 11:34:24',41,'2011-03-19 17:17:03',41,'2011-03-19 19:17:03',2,NULL,1,NULL,1,NULL,1),
(34,31,5,'page-delete',25,'2011-09-06 11:34:33',41,'2011-03-19 17:17:23',41,'2011-03-19 19:17:23',3,NULL,1,NULL,1,NULL,1),
(35,31,5,'page-move',25,'2011-09-06 11:34:48',41,'2011-03-19 17:17:41',41,'2011-03-19 19:17:41',4,NULL,1,NULL,1,NULL,1),
(36,31,5,'page-view',25,'2011-09-06 11:34:14',41,'2011-03-19 17:17:57',41,'2011-03-19 19:17:57',0,NULL,1,NULL,1,NULL,1),
(37,30,4,'guest',25,'2025-12-26 10:40:00',41,'2011-03-19 17:18:41',41,'2011-03-19 19:18:41',0,NULL,1,NULL,1,NULL,1),
(38,30,4,'superuser',25,'2011-08-17 10:34:39',41,'2011-03-19 17:18:55',41,'2011-03-19 19:18:55',1,NULL,1,NULL,1,NULL,1),
(41,29,3,'yb',1,'2025-12-26 11:02:42',41,'2011-03-19 17:41:26',41,'2011-03-19 19:41:26',0,NULL,1,NULL,1,NULL,1),
(40,29,3,'guest',25,'2025-12-20 06:50:38',41,'2011-03-20 15:31:59',41,'2011-03-20 17:31:59',1,NULL,1,NULL,1,NULL,1),
(50,31,5,'page-sort',25,'2011-09-06 11:34:58',41,'2011-03-26 20:04:50',41,'2011-03-26 22:04:50',5,NULL,1,NULL,1,NULL,1),
(51,31,5,'page-template',25,'2011-09-06 11:35:09',41,'2011-03-26 20:25:31',41,'2011-03-26 22:25:31',6,NULL,1,NULL,1,NULL,1),
(52,31,5,'user-admin',25,'2011-09-06 11:35:42',41,'2011-03-29 20:06:47',41,'2011-03-30 00:06:47',10,NULL,1,NULL,1,NULL,1),
(53,31,5,'profile-edit',1,'2011-08-16 18:32:48',41,'2011-04-25 20:02:22',41,'2011-04-26 00:02:22',13,NULL,1,NULL,1,NULL,1),
(54,31,5,'page-lock',1,'2011-08-15 13:48:12',41,'2011-08-15 13:45:48',41,'2011-08-15 17:45:48',8,NULL,1,NULL,1,NULL,1),
(5722,3,2,'search',1029,'2010-09-26 14:37:06',2,'2010-08-03 13:23:59',41,'2010-08-03 17:23:59',6,NULL,1,NULL,1,NULL,1),
(5729,3,2,'trash',1031,'2010-09-27 13:39:55',2,'2010-09-27 13:39:30',41,'2010-09-27 17:39:30',6,NULL,1,NULL,1,NULL,1),
(5731,3,2,'link',1025,'2010-09-30 13:05:31',2,'2010-09-30 13:03:56',41,'2010-09-30 17:03:56',7,NULL,1,NULL,1,NULL,1),
(5733,3,2,'image',1025,'2010-10-12 12:23:20',2,'2010-10-12 11:56:48',41,'2010-10-12 15:56:48',8,NULL,1,NULL,1,NULL,1),
(304,2,2,'profile',1025,'2011-05-03 19:38:10',41,'2011-04-25 19:57:18',41,'2011-04-25 23:57:18',5,NULL,1,NULL,1,NULL,1),
(6161,5791,70,'nina-ricci-designer',1,'2026-01-07 14:31:48',40,'2025-11-11 14:20:11',41,'2025-11-11 15:36:50',62,'nina-ricci',1,NULL,1,NULL,0),
(6162,5827,71,'kaplans',1,'2025-12-23 17:17:35',40,'2025-11-12 21:01:20',41,'2025-11-12 22:04:51',6,NULL,1,NULL,0,NULL,0),
(6190,6185,96,'42x42',1,'2026-01-07 14:31:48',40,'2025-11-29 14:24:01',40,'2025-11-29 15:24:01',2,NULL,1,NULL,1,NULL,0),
(6191,6185,96,'45x45',1,'2026-01-07 14:31:48',40,'2025-11-29 17:03:01',40,'2025-11-29 18:03:01',3,NULL,1,NULL,1,NULL,0),
(6185,1,97,'sizes-1',3104,'2026-01-11 09:16:29',41,'2025-11-27 10:10:22',40,'2025-11-27 11:57:02',9,NULL,1,NULL,1,NULL,1),
(6319,5843,60,'281-les-voitures-transformation-variations2',1,'2026-02-09 13:42:23',41,'2025-12-27 17:43:07',40,'2025-12-27 18:43:07',152,NULL,1,NULL,1,NULL,0),
(6177,5791,70,'anne-marie-cassandre',1057,'2026-01-11 16:43:29',41,'2025-11-22 08:39:14',41,'2025-11-22 09:47:32',68,NULL,1,NULL,1,NULL,0),
(6179,5843,60,'jeu-de-cartes',1,'2026-02-02 22:29:07',40,'2025-11-22 08:54:54',41,'2025-11-22 09:56:33',139,NULL,1,NULL,1,NULL,0),
(6188,6185,96,'90x90',1061,'2026-01-11 09:20:23',41,'2025-11-27 10:52:49',41,'2025-11-27 11:52:49',1,NULL,1,NULL,1,NULL,0),
(6187,6185,96,'70x70',1,'2026-01-07 14:31:48',40,'2025-11-27 10:15:09',40,'2025-11-27 11:15:09',0,NULL,1,NULL,1,NULL,0),
(6325,5843,60,'cuivreries-variant-variations2',1,'2026-01-07 14:31:47',40,'2025-12-27 18:28:59',40,'2025-12-27 19:28:59',158,NULL,1,NULL,1,NULL,0),
(6168,5791,70,'leigh-cooke',1,'2026-01-15 21:31:38',41,'2025-11-18 04:42:46',41,'2025-11-18 05:46:42',63,NULL,1,NULL,1,NULL,0),
(5735,30,4,'artwork-editor',1,'2026-02-18 12:11:19',41,'2011-09-24 06:23:39',41,'2011-09-24 10:23:39',2,NULL,1,NULL,1,NULL,1),
(5738,31,5,'page-lister',1,'2025-12-26 11:14:27',41,'2017-02-06 02:27:26',40,'2017-02-06 04:27:26',9,NULL,1,NULL,1,NULL,1),
(5739,3,2,'lister',1,'2017-02-06 02:27:26',40,'2017-02-06 02:27:26',40,'2017-02-06 04:27:26',9,NULL,1,NULL,1,NULL,1),
(5740,3,2,'recent-pages',1,'2017-02-06 02:27:46',40,'2017-02-06 02:27:46',40,'2017-02-06 04:27:46',10,NULL,1,NULL,1,NULL,1),
(5741,31,5,'page-edit-recent',1,'2017-02-06 02:27:46',40,'2017-02-06 02:27:46',40,'2017-02-06 04:27:46',10,NULL,1,NULL,1,NULL,1),
(5742,22,2,'logs',1,'2017-02-06 02:28:04',40,'2017-02-06 02:28:04',40,'2017-02-06 04:28:04',2,NULL,1,NULL,1,NULL,1),
(5743,31,5,'logs-view',1,'2017-02-06 02:28:04',40,'2017-02-06 02:28:04',40,'2017-02-06 04:28:04',11,NULL,1,NULL,1,NULL,1),
(5744,31,5,'logs-edit',1,'2017-02-06 02:28:04',40,'2017-02-06 02:28:04',40,'2017-02-06 04:28:04',12,NULL,1,NULL,1,NULL,1),
(5745,22,2,'upgrades',1,'2017-02-06 02:29:11',41,'2017-02-06 02:29:11',41,'2017-02-06 04:29:11',3,NULL,1,NULL,1,NULL,1),
(5749,31,5,'lang-edit',1,'2020-06-11 06:38:48',41,'2020-06-11 06:38:48',41,'2020-06-11 10:38:48',13,NULL,1,NULL,1,NULL,1),
(5750,22,2,'languages',16,'2020-06-11 06:38:48',41,'2020-06-11 06:38:48',41,'2020-06-11 10:38:48',4,NULL,1,NULL,1,NULL,1),
(5751,5750,45,'default',16,'2026-01-17 05:00:39',41,'2020-06-11 06:38:48',41,'2020-06-11 10:38:48',0,NULL,1,NULL,1,NULL,1),
(5752,22,2,'language-translator',1040,'2020-06-11 06:38:48',41,'2020-06-11 06:38:48',41,'2020-06-11 10:38:48',5,NULL,1,NULL,1,NULL,1),
(5753,5750,45,'russian',16,'2026-02-25 17:07:58',41,'2020-06-11 06:42:03',41,'2020-06-11 10:42:03',1,NULL,1,NULL,1,NULL,1),
(5754,5750,45,'french',16,'2026-01-23 18:31:57',41,'2020-06-11 06:50:10',41,'2020-06-11 10:50:10',2,NULL,1,NULL,1,NULL,1),
(5755,5750,45,'swedish',16,'2026-01-23 18:32:19',41,'2020-06-11 06:50:44',41,'2020-06-11 10:50:44',3,NULL,1,NULL,1,NULL,1),
(5786,1,56,'countries',2049,'2025-11-28 07:30:11',41,'2020-07-24 07:05:06',40,'2020-07-24 09:05:06',8,NULL,1,NULL,1,NULL,1),
(6171,5834,69,'omega',1,'2026-01-07 14:31:47',40,'2025-11-19 10:01:23',40,'2025-11-19 11:01:23',11,NULL,1,NULL,1,NULL,0),
(5789,1,61,'h_spot',32,'2026-03-04 06:35:00',41,'2020-09-13 13:20:37',40,'2020-09-13 15:20:37',6,NULL,1,NULL,1,NULL,0),
(5791,5789,64,'h_persons',1,'2026-01-07 17:42:01',41,'2020-09-13 13:20:42',40,'2020-09-13 15:20:42',1,NULL,1,NULL,1,NULL,0),
(5792,5791,70,'167-christiane-vauzelles',32,'2026-01-07 14:31:47',40,'2020-09-13 13:20:42',40,'2020-09-13 15:20:42',0,NULL,1,NULL,1,NULL,0),
(5793,5791,70,'168-cathy-latham-audibert',32,'2026-01-07 14:31:47',40,'2020-09-13 13:20:42',40,'2020-09-13 15:20:42',1,NULL,1,NULL,1,NULL,0),
(5794,5791,70,'171-evgenia-miro-miroshnichenko',32,'2026-01-07 14:31:47',40,'2020-09-13 13:20:43',40,'2020-09-13 15:20:43',2,NULL,1,NULL,1,NULL,0),
(5795,5791,70,'186-dimitri-rybaltchenko',32,'2026-01-07 17:44:11',41,'2020-09-13 13:20:43',40,'2020-09-13 15:20:43',3,NULL,1,NULL,1,NULL,0),
(5796,5791,70,'187-aleksandr-zybin',32,'2026-01-23 17:48:50',41,'2020-09-13 13:20:44',40,'2020-09-13 15:20:44',4,NULL,1,NULL,1,NULL,0),
(5797,5791,70,'188-vladimir-rybaltchenko',32,'2026-01-07 14:31:47',40,'2020-09-13 13:20:44',40,'2020-09-13 15:20:44',5,NULL,1,NULL,1,NULL,0),
(5798,5791,70,'199-hugo-grygkar',32,'2026-02-25 17:48:33',41,'2020-09-13 13:20:44',40,'2020-09-13 15:20:44',6,NULL,1,NULL,1,NULL,0),
(5799,5791,70,'224-philippe-ledoux',32,'2026-01-07 14:31:47',40,'2020-09-13 13:20:45',40,'2020-09-13 15:20:45',7,NULL,1,NULL,1,NULL,0),
(5800,5791,70,'226-loc-dubigeon',32,'2026-01-17 14:54:26',5972,'2020-09-13 13:20:45',40,'2020-09-13 15:20:45',8,NULL,1,NULL,1,NULL,0),
(5801,5791,70,'242-margo',32,'2026-01-07 14:31:47',40,'2020-09-13 13:20:46',40,'2020-09-13 15:20:46',9,NULL,1,NULL,1,NULL,0),
(5802,5791,70,'282-franoise-de-la-perrire',32,'2026-01-07 14:31:47',40,'2020-09-13 13:20:46',40,'2020-09-13 15:20:46',10,NULL,1,NULL,1,NULL,0),
(5803,5791,70,'301-michel-duchne',32,'2026-01-07 14:31:47',40,'2020-09-13 13:20:47',40,'2020-09-13 15:20:47',11,NULL,1,NULL,1,NULL,0),
(5804,5791,70,'309-cyrille-diatkine',32,'2026-02-09 20:45:58',41,'2020-09-13 13:20:47',40,'2020-09-13 15:20:47',12,NULL,1,NULL,1,NULL,0),
(5805,5791,70,'310-jean-de-fougerolle',32,'2026-01-15 15:13:15',41,'2020-09-13 13:20:47',40,'2020-09-13 15:20:47',13,NULL,1,NULL,1,NULL,0),
(5806,5791,70,'313-julia-abadie',32,'2026-02-23 20:53:25',5972,'2020-09-13 13:20:48',40,'2020-09-13 15:20:48',14,NULL,1,NULL,1,NULL,0),
(5807,5791,70,'314-henri-dorigny',32,'2026-01-18 21:21:06',41,'2020-09-13 13:20:48',40,'2020-09-13 15:20:48',15,NULL,1,NULL,1,NULL,0),
(5808,5791,70,'315-henri-de-linars',32,'2026-01-13 10:21:33',41,'2020-09-13 13:20:48',40,'2020-09-13 15:20:48',16,NULL,1,NULL,1,NULL,0),
(5809,5791,70,'316-joachim-metz',32,'2026-01-07 14:31:47',40,'2020-09-13 13:20:49',40,'2020-09-13 15:20:49',17,NULL,1,NULL,1,NULL,0),
(5810,5791,70,'317-daphne-duchesne',32,'2026-01-07 14:31:47',40,'2020-09-13 13:20:49',40,'2020-09-13 15:20:49',18,NULL,1,NULL,1,NULL,0),
(5811,5791,70,'318-xavier-de-poret',32,'2026-02-23 21:22:14',5972,'2020-09-13 13:20:49',40,'2020-09-13 15:20:49',19,NULL,1,NULL,1,NULL,0),
(5812,5791,70,'319-bali-barret',32,'2026-01-07 14:31:47',40,'2020-09-13 13:20:50',40,'2020-09-13 15:20:50',20,NULL,1,NULL,1,NULL,0),
(5813,5791,70,'320-benot-pierre-emery',32,'2026-01-07 14:31:47',40,'2020-09-13 13:20:50',40,'2020-09-13 15:20:50',21,NULL,1,NULL,1,NULL,0),
(5814,5791,70,'321-franoise-heron',32,'2026-01-12 12:36:51',41,'2020-09-13 13:20:51',40,'2020-09-13 15:20:51',22,NULL,1,NULL,1,NULL,0),
(5815,5791,70,'322-catherine-baschet',32,'2026-02-24 20:46:37',41,'2020-09-13 13:20:51',40,'2020-09-13 15:20:51',23,NULL,1,NULL,1,NULL,0),
(5816,5791,70,'323-laurence-bourthoumieux',32,'2026-01-07 14:31:47',40,'2020-09-13 13:20:51',40,'2020-09-13 15:20:51',24,NULL,1,NULL,1,NULL,0),
(5817,5791,70,'324-antoine-de-jacquelot',32,'2026-01-07 14:31:47',40,'2020-09-13 13:20:51',40,'2020-09-13 15:20:51',25,NULL,1,NULL,1,NULL,0),
(5818,5791,70,'325-alice-shirley',32,'2026-02-18 20:16:35',41,'2020-09-13 13:20:52',40,'2020-09-13 15:20:52',26,NULL,1,NULL,1,NULL,0),
(5819,5791,70,'326-hubert-de-watrigant',32,'2026-01-20 17:41:49',41,'2020-09-13 13:20:52',40,'2020-09-13 15:20:52',27,NULL,1,NULL,1,NULL,0),
(5820,5791,70,'327-pierre-alexis-dumas',32,'2026-01-07 14:31:47',40,'2020-09-13 13:20:52',40,'2020-09-13 15:20:52',28,NULL,1,NULL,1,NULL,0),
(5821,5791,70,'328-jean-louis-dumas',32,'2026-01-07 15:14:11',41,'2020-09-13 13:20:53',40,'2020-09-13 15:20:53',29,NULL,1,NULL,1,NULL,0),
(5822,5791,70,'329-annie-faivre',32,'2026-01-11 17:10:27',41,'2020-09-13 13:20:53',40,'2020-09-13 15:20:53',30,NULL,1,NULL,1,NULL,0),
(5823,5791,70,'330-thierry-herms',32,'2026-01-07 16:05:04',41,'2020-09-13 13:20:54',40,'2020-09-13 15:20:54',31,NULL,1,NULL,1,NULL,0),
(5824,5791,70,'2298-robert-dumas',32,'2026-01-14 09:15:51',41,'2020-09-13 13:20:54',40,'2020-09-13 15:20:54',32,NULL,1,NULL,1,NULL,0),
(5825,5791,70,'2307-mile-maurice-herms',32,'2026-01-11 12:58:36',41,'2020-09-13 13:20:54',40,'2020-09-13 15:20:54',33,NULL,1,NULL,1,NULL,0),
(5826,5791,70,'2308-charles-mile-herms',32,'2026-01-07 15:20:20',41,'2020-09-13 13:20:55',40,'2020-09-13 15:20:55',34,NULL,1,NULL,1,NULL,0),
(5827,5789,65,'h_sellers',1,'2025-12-23 17:17:35',40,'2020-09-13 13:20:55',40,'2020-09-13 15:20:55',2,NULL,1,NULL,0,NULL,0),
(5828,5827,71,'172-gifts',32,'2025-12-23 17:17:35',40,'2020-09-13 13:20:55',40,'2020-09-13 15:20:55',0,NULL,1,NULL,0,NULL,0),
(5829,5827,71,'174-march-de-plainpalais',32,'2025-12-23 17:17:35',40,'2020-09-13 13:20:55',40,'2020-09-13 15:20:55',1,NULL,1,NULL,0,NULL,0),
(5830,5827,71,'175-bukowskis',1,'2025-12-23 17:17:35',40,'2020-09-13 13:20:56',40,'2020-09-13 15:20:56',2,NULL,1,NULL,0,NULL,0),
(5831,5827,71,'178-myrorna',32,'2025-12-23 17:17:35',40,'2020-09-13 13:20:56',40,'2020-09-13 15:20:56',3,NULL,1,NULL,0,NULL,0),
(5832,5827,71,'179-stockholms-auktionsverk',32,'2025-12-23 17:17:35',40,'2020-09-13 13:20:56',40,'2020-09-13 15:20:56',4,NULL,1,NULL,0,NULL,0),
(5833,5827,71,'182-stockholms-stadsmission',32,'2025-12-23 17:17:35',40,'2020-09-13 13:20:56',40,'2020-09-13 15:20:56',5,NULL,1,NULL,0,NULL,0),
(5834,5789,66,'h_brands',1,'2026-01-07 14:31:47',40,'2020-09-13 13:20:57',40,'2020-09-13 15:20:57',3,NULL,1,NULL,1,NULL,0),
(5835,5834,69,'185-herms',1,'2026-01-07 14:31:47',40,'2020-09-13 13:20:57',40,'2020-09-13 15:20:57',0,NULL,1,NULL,1,NULL,0),
(5836,5834,69,'196-salvatore-ferrogamo',32,'2026-01-07 14:31:47',40,'2020-09-13 13:20:57',40,'2020-09-13 15:20:57',1,NULL,1,NULL,1,NULL,0),
(5837,5834,69,'243-tiffany-co',32,'2026-01-23 17:53:19',41,'2020-09-13 13:20:57',40,'2020-09-13 15:20:57',2,NULL,1,NULL,1,NULL,0),
(5838,5834,69,'246-nina-ricci',1,'2026-01-07 14:31:47',40,'2020-09-13 13:20:58',40,'2020-09-13 15:20:58',3,NULL,1,NULL,1,NULL,0),
(5839,5834,69,'280-baume-mercier',32,'2026-01-07 14:31:47',40,'2020-09-13 13:20:58',40,'2020-09-13 15:20:58',4,NULL,1,NULL,1,NULL,0),
(5840,5834,69,'2279-lanvin',32,'2026-01-07 14:31:47',40,'2020-09-13 13:20:58',40,'2020-09-13 15:20:58',5,NULL,1,NULL,1,NULL,0),
(5841,5834,69,'2297-christian-dior',32,'2026-01-07 14:31:47',40,'2020-09-13 13:20:58',40,'2020-09-13 15:20:58',6,NULL,1,NULL,1,NULL,0),
(5842,6306,63,'197-maison-carr-foundation',1,'2026-01-23 06:09:40',41,'2020-09-13 13:20:59',40,'2020-09-13 15:20:59',4,NULL,1,NULL,1,NULL,0),
(5843,5789,67,'h_artworks',1,'2026-01-07 14:31:47',40,'2020-09-13 13:20:59',40,'2020-09-13 15:20:59',5,NULL,1,NULL,1,NULL,0),
(5844,5843,60,'169-cheval-turc',32,'2026-02-02 21:58:15',41,'2020-09-13 13:20:59',40,'2020-09-13 15:20:59',0,NULL,1,NULL,1,NULL,0),
(5845,5842,60,'198-hemisphaerium-coeli-boreale',1,'2026-01-07 14:31:45',40,'2020-09-13 13:21:00',40,'2020-09-13 15:21:00',0,NULL,1,NULL,1,NULL,0),
(5846,5842,60,'202-jeu-de-omnibus-et-dameblanche',32,'2026-01-07 14:31:46',40,'2020-09-13 13:21:00',40,'2020-09-13 15:21:00',1,NULL,1,NULL,1,NULL,0),
(5847,5843,60,'227-les-folies-du-ciel',32,'2026-02-19 14:37:56',41,'2020-09-13 13:21:00',40,'2020-09-13 15:21:00',1,NULL,1,NULL,1,NULL,0),
(5848,5843,60,'244',32,'2026-01-07 14:31:46',40,'2020-09-13 13:21:01',40,'2020-09-13 15:21:01',2,NULL,1,NULL,1,NULL,0),
(5849,5843,60,'281-les-voitures-transformation',32,'2026-02-11 13:28:41',41,'2020-09-13 13:21:01',40,'2020-09-13 15:21:01',3,NULL,1,NULL,1,NULL,0),
(5850,5843,60,'284-brides-de-gala',32,'2026-02-23 15:24:56',5972,'2020-09-13 13:21:02',40,'2020-09-13 15:21:02',4,NULL,1,NULL,1,NULL,0),
(5851,5843,60,'298-grand-cortge-a-moscou',32,'2026-01-14 13:32:40',41,'2020-09-13 13:21:02',40,'2020-09-13 15:21:02',5,NULL,1,NULL,1,NULL,0),
(5852,5842,60,'2285-bolduc',1,'2026-01-07 14:31:46',40,'2020-09-13 13:21:03',40,'2020-09-13 15:21:03',2,NULL,1,NULL,1,NULL,0),
(5853,7,68,'5853.5789.6_possessions',8193,'2026-01-13 13:14:43',41,'2020-09-13 13:21:03',40,'2020-09-13 15:21:03',6,'5853.5789.6_pokupki',1,NULL,1,NULL,1),
(5854,7,72,'5854.5853._223-purchase-2010-05-04',8224,'2026-01-13 13:13:55',41,'2020-09-13 13:21:03',40,'2020-09-13 15:21:03',0,NULL,1,NULL,1,NULL,1),
(5855,7,72,'5855.5853.1_241-purchase-2018-04-28',8224,'2026-01-13 13:14:10',41,'2020-09-13 13:21:04',40,'2020-09-13 15:21:04',1,NULL,1,NULL,1,NULL,1),
(5856,7,72,'5856.5853.2_304-purchase-2017-10-05',8224,'2026-01-13 13:13:40',41,'2020-09-13 13:21:04',40,'2020-09-13 15:21:04',2,NULL,1,NULL,1,NULL,1),
(5857,1,79,'a_spot',1,'2026-01-10 21:45:45',41,'2020-09-13 13:21:09',40,'2020-09-13 15:21:09',7,NULL,1,NULL,1,NULL,0),
(5858,5857,82,'a_persons',1,'2026-01-07 14:31:45',40,'2020-09-13 13:21:09',40,'2020-09-13 15:21:09',0,NULL,1,NULL,1,NULL,0),
(5859,5858,74,'13-rembrandt-van-rijn',32,'2026-01-19 18:12:52',41,'2020-09-13 13:21:09',40,'2020-09-13 15:21:09',0,NULL,1,NULL,1,NULL,0),
(5863,5858,74,'14-jan-van-eyck',32,'2026-01-19 18:12:59',41,'2020-09-13 13:21:10',40,'2020-09-13 15:21:10',1,NULL,1,NULL,1,NULL,0),
(5861,5857,81,'a_schools',1,'2026-01-07 14:31:45',40,'2020-09-13 13:21:10',40,'2020-09-13 15:21:10',1,NULL,1,NULL,1,NULL,0),
(5862,5861,73,'dutch-school',1,'2026-01-07 14:31:45',40,'2020-09-13 13:21:10',40,'2020-09-13 15:21:10',0,NULL,1,NULL,1,NULL,0),
(5866,5858,74,'15-valentin-de-boulogne',32,'2026-01-21 17:40:10',41,'2020-09-13 13:21:11',40,'2020-09-13 15:21:11',2,NULL,1,NULL,1,NULL,0),
(5865,5861,73,'flemish-painting-school',1,'2026-01-07 14:31:45',40,'2020-09-13 13:21:11',40,'2020-09-13 15:21:11',1,NULL,1,NULL,1,NULL,0),
(5867,5858,74,'17-unknown-artist',32,'2026-01-19 18:13:13',41,'2020-09-13 13:21:12',40,'2020-09-13 15:21:12',3,NULL,1,NULL,1,NULL,0),
(5868,5858,74,'18-raffaele-frigerio',32,'2026-01-19 18:13:19',41,'2020-09-13 13:21:12',40,'2020-09-13 15:21:12',4,NULL,1,NULL,1,NULL,0),
(5869,5858,74,'55-viacheslav-kalinin',32,'2026-01-19 18:13:25',41,'2020-09-13 13:21:12',40,'2020-09-13 15:21:12',5,NULL,1,NULL,1,NULL,0),
(5875,5858,74,'206-abraham-storck',32,'2026-01-19 18:09:35',41,'2020-09-13 13:21:15',40,'2020-09-13 15:21:15',10,NULL,1,NULL,1,NULL,0),
(5871,5858,74,'73-christer-edwardson-schmiterlw',32,'2026-01-19 18:13:35',41,'2020-09-13 13:21:13',40,'2020-09-13 15:21:13',7,NULL,1,NULL,1,NULL,0),
(5872,5858,74,'74-a-collomb',32,'2026-01-19 18:09:11',41,'2020-09-13 13:21:13',40,'2020-09-13 15:21:13',8,NULL,1,NULL,1,NULL,0),
(5873,5858,74,'116-l-vilardi',32,'2026-01-19 18:09:20',41,'2020-09-13 13:21:14',40,'2020-09-13 15:21:14',9,NULL,1,NULL,1,NULL,0),
(5874,5858,74,'158-salomon-koninck',32,'2026-01-19 18:09:27',41,'2020-09-13 13:21:14',40,'2020-09-13 15:21:14',10,NULL,1,NULL,1,NULL,0),
(5878,5858,74,'276-robert-falk',32,'2026-01-23 09:47:48',41,'2020-09-13 13:21:16',40,'2020-09-13 15:21:16',12,NULL,1,NULL,1,NULL,0),
(5877,5858,74,'233-peter-joseph-minjon',32,'2026-01-19 18:09:45',41,'2020-09-13 13:21:15',40,'2020-09-13 15:21:15',11,NULL,1,NULL,1,NULL,0),
(5879,5858,74,'286-basil-samoylov',32,'2026-01-19 18:10:00',41,'2020-09-13 13:21:16',40,'2020-09-13 15:21:16',13,NULL,1,NULL,1,NULL,0),
(5880,5858,74,'293-andries-vermeulen',32,'2026-01-19 18:10:08',41,'2020-09-13 13:21:17',40,'2020-09-13 15:21:17',14,NULL,1,NULL,1,NULL,0),
(5883,5858,74,'2299-abraham-teniers',32,'2026-01-21 08:20:31',41,'2020-09-13 13:21:18',40,'2020-09-13 15:21:18',16,NULL,1,NULL,1,NULL,0),
(5882,5858,74,'2163-haik-mhitaryan',32,'2026-01-19 18:10:13',41,'2020-09-13 13:21:17',40,'2020-09-13 15:21:17',15,NULL,1,NULL,1,NULL,0),
(5885,5858,74,'2306-david-teniers-ii-the-younger',32,'2026-01-24 08:58:49',41,'2020-09-13 13:21:19',40,'2020-09-13 15:21:19',17,NULL,1,NULL,1,NULL,0),
(5887,5858,74,'2314-vladimir-makovskiy',1,'2026-01-19 18:10:36',41,'2020-09-13 13:21:20',40,'2020-09-13 15:21:20',18,NULL,1,NULL,1,NULL,0),
(5892,5858,74,'3410-marcel-genay',32,'2026-01-19 18:10:55',41,'2020-09-13 13:21:22',40,'2020-09-13 15:21:22',21,NULL,1,NULL,1,NULL,0),
(5889,5858,74,'2917-unknown-dutch-artist',32,'2026-01-19 18:10:47',41,'2020-09-13 13:21:20',40,'2020-09-13 15:21:20',20,NULL,1,NULL,1,NULL,0),
(5893,5857,83,'a_sellers',1,'2025-12-23 17:17:35',40,'2020-09-13 13:21:22',40,'2020-09-13 15:21:22',2,NULL,1,NULL,0,NULL,0),
(5891,5858,74,'2918-unknown-flemish-artist',32,'2026-01-19 18:11:09',41,'2020-09-13 13:21:21',40,'2020-09-13 15:21:21',21,NULL,1,NULL,1,NULL,0),
(5894,5893,78,'4-bukowskis-auction',1,'2025-12-23 17:17:35',40,'2020-09-13 13:21:22',40,'2020-09-13 15:21:22',0,NULL,1,NULL,0,NULL,0),
(5895,5893,78,'5-metropol-auction',1,'2025-12-23 17:17:35',40,'2020-09-13 13:21:22',40,'2020-09-13 15:21:22',1,NULL,1,NULL,0,NULL,0),
(5896,5893,78,'115-own-auktion',1,'2025-12-23 17:17:35',40,'2020-09-13 13:21:23',40,'2020-09-13 15:21:23',2,NULL,1,NULL,0,NULL,0),
(5897,5893,78,'130-uppsala-auktionskammare',1,'2026-01-18 15:38:21',41,'2020-09-13 13:21:23',40,'2020-09-13 15:21:23',3,NULL,1,NULL,0,NULL,0),
(5898,5893,78,'176-stockholms-auktionsverk',32,'2025-12-23 17:17:35',40,'2020-09-13 13:21:23',40,'2020-09-13 15:21:23',4,NULL,1,NULL,0,NULL,0),
(5899,5857,80,'a_collections',1,'2026-01-07 14:31:45',40,'2020-09-13 13:21:24',40,'2020-09-13 15:21:24',3,NULL,1,NULL,1,NULL,0),
(5900,5899,75,'121-gemldegalerie-old-masters',1,'2026-01-10 13:59:34',41,'2020-09-13 13:21:24',40,'2020-09-13 15:21:24',0,NULL,1,NULL,1,NULL,0),
(5901,5899,75,'122-unknown-collection',32,'2026-01-10 14:04:53',41,'2020-09-13 13:21:24',40,'2020-09-13 15:21:24',1,NULL,1,NULL,1,NULL,0),
(5902,5899,75,'123-non-leiden-collection',32,'2026-01-10 09:28:29',41,'2020-09-13 13:21:24',40,'2020-09-13 15:21:24',2,NULL,1,NULL,1,NULL,0),
(5903,7,75,'5903.5899.3_124-non-leiden-collection-2',8193,'2026-01-10 13:58:11',41,'2020-09-13 13:21:25',40,'2020-09-13 15:21:25',3,NULL,1,NULL,1,NULL,0),
(5904,5899,75,'166-louvre',1,'2026-01-10 14:06:22',41,'2020-09-13 13:21:25',40,'2020-09-13 15:21:25',4,NULL,1,NULL,1,NULL,0),
(5905,5899,75,'234-lost-auctions',1,'2026-01-10 14:08:02',41,'2020-09-13 13:21:25',40,'2020-09-13 15:21:25',5,NULL,1,NULL,1,NULL,0),
(5906,5857,84,'a_artworks',1,'2026-01-07 14:31:45',40,'2020-09-13 13:21:25',40,'2020-09-13 15:21:25',4,NULL,1,NULL,1,NULL,0),
(5907,5906,77,'29-card-sharpers-donor-of',1,'2026-01-22 10:41:28',41,'2020-09-13 13:21:26',40,'2020-09-13 15:21:26',0,NULL,1,NULL,1,NULL,0),
(5908,5906,77,'26-italian-portrait-of-the-man-donor-of',32,'2026-01-10 08:47:05',40,'2020-09-13 13:21:26',40,'2020-09-13 15:21:26',1,NULL,1,NULL,1,NULL,0),
(5909,5906,77,'26-italian-portrait-of-the-man',32,'2026-01-21 13:37:50',41,'2020-09-13 13:21:26',40,'2020-09-13 15:21:26',2,NULL,1,NULL,1,NULL,0),
(5910,5906,77,'29-card-sharpers',1,'2026-01-22 10:40:53',41,'2020-09-13 13:21:27',40,'2020-09-13 15:21:27',3,NULL,1,NULL,1,NULL,0),
(5911,5906,77,'39-proud-rider',1,'2026-01-21 08:05:55',41,'2020-09-13 13:21:28',40,'2020-09-13 15:21:28',4,NULL,1,NULL,1,NULL,0),
(5912,5906,77,'45-in-the-sea-1',1,'2026-01-10 08:47:05',40,'2020-09-13 13:21:28',40,'2020-09-13 15:21:28',5,NULL,1,NULL,1,NULL,0),
(5913,5906,77,'56-street-life',1,'2026-01-21 06:44:18',41,'2020-09-13 13:21:29',40,'2020-09-13 15:21:29',6,NULL,1,NULL,1,NULL,0),
(5914,5906,77,'62-musician-and-gamblers',1,'2026-01-10 08:47:05',40,'2020-09-13 13:21:29',40,'2020-09-13 15:21:29',7,NULL,1,NULL,1,NULL,0),
(5915,5906,77,'62-musician-and-gamblers-donor-of',1,'2026-01-10 08:47:05',40,'2020-09-13 13:21:30',40,'2020-09-13 15:21:30',8,NULL,1,NULL,1,NULL,0),
(5916,5906,77,'68-trip-to-japan',1,'2026-01-17 15:46:00',41,'2020-09-13 13:21:30',40,'2020-09-13 15:21:30',9,NULL,1,NULL,1,NULL,0),
(5917,5906,77,'109-juuls-bastion',1,'2026-01-10 08:47:05',40,'2020-09-13 13:21:30',40,'2020-09-13 15:21:30',10,NULL,1,NULL,1,NULL,0),
(5918,5906,77,'112-swedish-weather',1,'2026-01-10 08:47:05',40,'2020-09-13 13:21:31',40,'2020-09-13 15:21:31',11,NULL,1,NULL,1,NULL,0),
(5919,5906,77,'125-pub-scenes',1,'2026-01-10 08:47:05',40,'2020-09-13 13:21:31',40,'2020-09-13 15:21:31',12,NULL,1,NULL,1,NULL,0),
(5920,5906,77,'131-house-and-master',1,'2026-01-10 08:47:05',40,'2020-09-13 13:21:32',40,'2020-09-13 15:21:32',13,NULL,1,NULL,1,NULL,0),
(5921,5906,77,'147-butterfly',1,'2026-01-17 16:14:33',41,'2020-09-13 13:21:32',40,'2020-09-13 15:21:32',14,NULL,1,NULL,1,NULL,0),
(5922,5906,77,'152-philosopher-in-meditation',32,'2026-01-10 08:47:05',40,'2020-09-13 13:21:33',40,'2020-09-13 15:21:33',15,NULL,1,NULL,1,NULL,0),
(5923,5906,77,'155-philosopher-with-an-open-book',1,'2026-01-19 08:52:22',41,'2020-09-13 13:21:33',40,'2020-09-13 15:21:33',16,NULL,1,NULL,1,NULL,0),
(6303,6185,96,'maxtwilly',1061,'2026-01-11 09:18:54',41,'2025-12-25 13:56:03',41,'2025-12-25 14:56:03',13,NULL,1,NULL,1,NULL,0),
(5925,5906,77,'189-pastoral-landscape',1,'2026-01-10 08:47:05',40,'2020-09-13 13:21:34',40,'2020-09-13 15:21:34',18,NULL,1,NULL,1,NULL,0),
(5926,5906,77,'205-harbor',1,'2026-01-10 08:47:05',40,'2020-09-13 13:21:35',40,'2020-09-13 15:21:35',19,NULL,1,NULL,1,NULL,0),
(5927,5906,77,'235-city-in-winter',1,'2026-01-10 08:47:05',40,'2020-09-13 13:21:35',40,'2020-09-13 15:21:35',20,NULL,1,NULL,1,NULL,0),
(5928,5906,77,'238-city-in-summer',1,'2026-01-10 08:47:05',40,'2020-09-13 13:21:36',40,'2020-09-13 15:21:36',21,NULL,1,NULL,1,NULL,0),
(5929,5906,77,'248-in-the-tavern',1,'2026-01-10 08:47:05',40,'2020-09-13 13:21:36',40,'2020-09-13 15:21:36',22,NULL,1,NULL,1,NULL,0),
(5930,5858,74,'2911-flemish-painting-school',32,'2026-01-19 18:11:57',41,'2020-09-13 13:21:37',40,'2020-09-13 15:21:37',22,NULL,1,NULL,1,NULL,0),
(5931,5906,77,'277-paris',1,'2026-01-22 16:17:00',41,'2020-09-13 13:21:37',40,'2020-09-13 15:21:37',23,NULL,1,NULL,1,NULL,0),
(5932,5906,77,'287-friends',1,'2026-01-10 08:47:05',40,'2020-09-13 13:21:37',40,'2020-09-13 15:21:37',24,NULL,1,NULL,1,NULL,0),
(5933,5906,77,'294-winter',1,'2026-01-10 08:47:05',40,'2020-09-13 13:21:38',40,'2020-09-13 15:21:38',25,NULL,1,NULL,1,NULL,0),
(5934,5906,77,'1770-andalusia',1,'2026-01-10 08:47:05',40,'2020-09-13 13:21:39',40,'2020-09-13 15:21:39',26,NULL,1,NULL,1,NULL,0),
(5935,5906,77,'2291-in-the-sea-2',1,'2026-01-10 08:47:05',40,'2020-09-13 13:21:39',40,'2020-09-13 15:21:39',27,NULL,1,NULL,1,NULL,0),
(5936,5906,77,'2300-a-musical-gathering-of-cats',1,'2026-01-10 08:47:05',40,'2020-09-13 13:21:39',40,'2020-09-13 15:21:39',28,NULL,1,NULL,1,NULL,0),
(5937,5906,77,'2309-the-backgammon-players',1,'2026-01-18 08:46:48',41,'2020-09-13 13:21:40',40,'2020-09-13 15:21:40',29,NULL,1,NULL,1,NULL,0),
(5938,5906,77,'2309-the-backgammon-players-donor-of',32,'2026-01-19 13:32:51',41,'2020-09-13 13:21:41',40,'2020-09-13 15:21:41',30,NULL,1,NULL,1,NULL,0),
(5939,5906,77,'2945-party',1,'2026-01-10 08:47:05',40,'2020-09-13 13:21:42',40,'2020-09-13 15:21:42',31,NULL,1,NULL,1,NULL,0),
(5940,7,77,'5940.5906.32_2950-a-boor-playing-a-lute-in-an-1',8193,'2026-01-10 20:07:08',41,'2020-09-13 13:21:42',40,'2020-09-13 15:21:42',32,NULL,1,NULL,1,NULL,0),
(5941,5857,85,'a_possessions',1,'2020-09-13 13:21:42',40,'2020-09-13 13:21:42',40,'2020-09-13 15:21:42',5,NULL,1,NULL,1,NULL,1),
(5942,5941,76,'52-purchase-2017-01-16',0,'2026-01-20 12:01:38',41,'2020-09-13 13:21:42',40,'2020-09-13 15:21:42',0,NULL,1,NULL,1,NULL,1),
(5943,5941,76,'53-purchase-2018-02-13',0,'2026-01-20 12:01:49',41,'2020-09-13 13:21:43',40,'2020-09-13 15:21:43',1,NULL,1,NULL,1,NULL,1),
(5944,5941,76,'95-purchase-2017-11-11',32,'2026-01-20 12:02:05',41,'2020-09-13 13:21:43',40,'2020-09-13 15:21:43',2,NULL,1,NULL,1,NULL,1),
(5945,5941,76,'106-purchase-2016-08-29',32,'2026-01-20 12:02:20',41,'2020-09-13 13:21:44',40,'2020-09-13 15:21:44',3,NULL,1,NULL,1,NULL,1),
(5946,5941,76,'93-purchase-2010-12-26',32,'2026-01-20 12:02:31',41,'2020-09-13 13:21:44',40,'2020-09-13 15:21:44',4,NULL,1,NULL,1,NULL,1),
(5947,5941,76,'67-purchase-2010-04-11',0,'2026-01-20 12:02:44',41,'2020-09-13 13:21:45',40,'2020-09-13 15:21:45',5,NULL,1,NULL,1,NULL,1),
(5948,5941,76,'92-purchase-2010-12-11',0,'2026-01-20 12:02:53',41,'2020-09-13 13:21:45',40,'2020-09-13 15:21:45',6,NULL,1,NULL,1,NULL,1),
(5949,5941,76,'118-purchase-2001-01-26',32,'2026-01-20 12:03:04',41,'2020-09-13 13:21:45',40,'2020-09-13 15:21:45',7,NULL,1,NULL,1,NULL,1),
(5950,5941,76,'117-purchase-2001-01-26',0,'2026-01-20 12:03:24',41,'2020-09-13 13:21:46',40,'2020-09-13 15:21:46',8,NULL,1,NULL,1,NULL,1),
(5951,5941,76,'136-purchase-2017-07-31',0,'2026-01-20 12:03:44',41,'2020-09-13 13:21:46',40,'2020-09-13 15:21:46',9,NULL,1,NULL,1,NULL,1),
(5952,5941,76,'148-purchase-2010-12-11',0,'2026-01-20 12:03:56',41,'2020-09-13 13:21:46',40,'2020-09-13 15:21:46',10,NULL,1,NULL,1,NULL,1),
(5953,7,76,'5953.5941.11_165-purchase-2018-02-19',8192,'2026-01-19 11:53:00',41,'2020-09-13 13:21:47',40,'2020-09-13 15:21:47',11,NULL,1,NULL,1,NULL,1),
(5954,5941,76,'225-purchase-2018-04-24',0,'2026-01-20 12:04:13',41,'2020-09-13 13:21:47',40,'2020-09-13 15:21:47',12,NULL,1,NULL,1,NULL,1),
(5955,5941,76,'289-purchase-2010-03-12',32,'2026-01-20 12:04:30',41,'2020-09-13 13:21:48',40,'2020-09-13 15:21:48',13,NULL,1,NULL,1,NULL,1),
(5956,5941,76,'2870-purchase-2018-06-17',32,'2026-01-20 12:04:40',41,'2020-09-13 13:21:48',40,'2020-09-13 15:21:48',14,NULL,1,NULL,1,NULL,1),
(5957,1,88,'d_spot',1,'2026-01-07 14:31:45',40,'2020-09-13 13:21:51',40,'2020-09-13 15:21:51',8,NULL,1,NULL,1,NULL,0),
(5958,5957,89,'d_persons',1,'2026-01-07 14:31:45',40,'2020-09-13 13:21:51',40,'2020-09-13 15:21:51',0,NULL,1,NULL,1,NULL,0),
(5959,5958,87,'2857-lyudmila-vereshchagina',32,'2026-01-12 09:05:04',41,'2020-09-13 13:21:51',40,'2020-09-13 15:21:51',0,NULL,1,NULL,1,NULL,0),
(5960,5957,90,'d_artworks',32,'2026-01-07 14:31:45',40,'2020-09-13 13:21:51',40,'2020-09-13 15:21:51',1,NULL,1,NULL,1,NULL,0),
(5961,5960,92,'2865-shchuka',32,'2026-01-07 14:31:45',40,'2020-09-13 13:21:51',40,'2020-09-13 15:21:51',0,NULL,1,NULL,1,NULL,0),
(5972,29,3,'margo',1,'2026-02-19 17:28:13',5972,'2020-09-13 16:03:24',41,'2020-09-13 18:04:05',2,NULL,1,NULL,1,NULL,1),
(5974,5843,60,'afrika',32,'2026-02-11 14:07:52',41,'2020-09-13 16:59:12',5972,'2020-09-13 18:59:42',10,NULL,1,NULL,1,NULL,0),
(5965,5843,60,'armes-de-paris',32,'2026-02-25 16:48:57',5972,'2020-09-13 14:46:01',41,'2020-09-13 16:47:14',6,NULL,1,NULL,1,NULL,0),
(5966,5843,60,'armes-de-chasse',32,'2026-02-11 14:09:28',41,'2020-09-13 14:51:24',41,'2020-09-13 16:52:12',7,NULL,1,NULL,1,NULL,0),
(5967,5791,70,'marie-francoise-faconnet',32,'2026-02-09 18:28:19',41,'2020-09-13 15:00:34',41,'2020-09-13 17:00:49',35,NULL,1,NULL,1,NULL,0),
(5968,5791,70,'la-torre',32,'2026-01-15 10:08:45',41,'2020-09-13 15:09:36',41,'2020-09-13 17:10:02',36,NULL,1,NULL,1,NULL,0),
(5969,5843,60,'astrologie-nouvelle',32,'2026-02-09 18:26:16',41,'2020-09-13 15:13:19',41,'2020-09-13 17:13:23',8,NULL,1,NULL,1,NULL,0),
(5973,5791,70,'robert-dallet',32,'2026-01-18 07:18:41',41,'2020-09-13 16:55:19',5972,'2020-09-13 18:56:10',37,NULL,1,NULL,1,NULL,0),
(5975,5843,60,'avenue-des-acacias',32,'2026-02-25 17:33:04',41,'2020-09-13 17:07:50',5972,'2020-09-13 19:08:38',11,NULL,1,NULL,1,NULL,0),
(5976,5843,60,'brazil',0,'2026-02-26 13:52:56',41,'2020-09-14 08:17:38',5972,'2020-09-14 10:17:46',12,NULL,1,NULL,1,NULL,0),
(5977,5843,60,'bride-de-cour',32,'2026-02-27 05:09:13',41,'2020-09-14 14:14:07',5972,'2020-09-14 16:15:12',13,NULL,1,NULL,1,NULL,0),
(5979,5843,60,'casse-noisette',32,'2026-01-12 16:26:29',41,'2020-09-14 14:23:16',5972,'2020-09-14 16:24:31',15,NULL,1,NULL,1,NULL,0),
(5980,5843,60,'cavalcadur',32,'2026-01-12 16:26:33',41,'2020-09-14 14:26:16',5972,'2020-09-14 16:28:46',16,NULL,1,NULL,1,NULL,0),
(5981,5843,60,'cavaliers-peuls',32,'2026-02-19 20:24:53',41,'2020-09-14 14:39:47',5972,'2020-09-14 16:41:09',17,NULL,1,NULL,1,NULL,0),
(5982,5843,60,'charreada',32,'2026-02-19 20:29:33',41,'2020-09-14 14:42:35',5972,'2020-09-14 16:42:46',18,NULL,1,NULL,1,NULL,0),
(5984,5843,60,'clefs',32,'2026-01-12 16:26:47',41,'2020-09-14 14:47:34',5972,'2020-09-14 16:48:11',19,NULL,1,NULL,1,NULL,0),
(5985,5843,60,'clic-clac',32,'2026-01-12 16:26:51',41,'2020-09-14 14:49:22',5972,'2020-09-14 16:49:52',20,NULL,1,NULL,1,NULL,0),
(5986,5843,60,'coqs',32,'2026-01-12 16:26:56',41,'2020-09-14 14:51:11',5972,'2020-09-14 16:53:57',21,NULL,1,NULL,1,NULL,0),
(5987,5843,60,'couvee-d-hermes',32,'2026-01-12 16:27:04',41,'2020-09-14 14:56:24',5972,'2020-09-14 16:57:40',22,NULL,1,NULL,1,NULL,0),
(5988,5843,60,'cuillers-d-afrique',32,'2026-01-12 16:27:08',41,'2020-09-14 15:00:06',5972,'2020-09-14 17:01:06',23,NULL,1,NULL,1,NULL,0),
(5989,5843,60,'cuivreries-variant',32,'2026-02-27 05:33:28',41,'2020-09-14 15:05:15',5972,'2020-09-14 17:06:08',24,NULL,1,NULL,1,NULL,0),
(5990,5843,60,'eperon-d-or',32,'2026-02-24 17:44:55',5972,'2020-09-14 15:07:57',5972,'2020-09-14 17:08:57',25,NULL,1,NULL,1,NULL,0),
(5991,5843,60,'equitation-japonaise',32,'2026-01-12 16:27:20',41,'2020-09-14 15:11:01',5972,'2020-09-14 17:11:57',26,NULL,1,NULL,1,NULL,0),
(5993,5843,60,'etriers',32,'2026-01-12 16:27:25',41,'2020-09-14 15:15:31',5972,'2020-09-14 17:17:02',28,NULL,1,NULL,1,NULL,0),
(5994,5843,60,'ex-libris-gavroche',32,'2026-01-17 14:56:28',5972,'2020-09-14 15:19:11',5972,'2020-09-14 17:21:27',29,NULL,1,NULL,1,NULL,0),
(5995,5843,60,'etude-pour-une-parure',32,'2026-01-12 16:27:34',41,'2020-09-14 15:23:51',5972,'2020-09-14 17:26:53',30,NULL,1,NULL,1,NULL,0),
(5996,5791,70,'florence-manlik',32,'2026-01-19 14:17:14',41,'2020-09-14 15:29:29',5972,'2020-09-14 17:31:04',38,NULL,1,NULL,1,NULL,0),
(5998,5843,60,'festival-des-amazones',32,'2026-01-12 16:27:39',41,'2020-09-14 15:37:17',5972,'2020-09-14 17:38:09',32,NULL,1,NULL,1,NULL,0),
(5999,5843,60,'flore',32,'2026-02-25 05:21:48',41,'2020-09-14 15:39:13',5972,'2020-09-14 17:40:20',33,NULL,1,NULL,1,NULL,0),
(6000,5843,60,'gibiers',32,'2026-01-12 16:27:48',41,'2020-09-14 15:43:05',5972,'2020-09-14 17:43:55',34,NULL,1,NULL,1,NULL,0),
(6001,5843,60,'grand-manege',32,'2026-01-12 16:27:52',41,'2020-09-14 15:45:31',5972,'2020-09-14 17:46:41',35,NULL,1,NULL,1,NULL,0),
(6002,5843,60,'grand-tenue',32,'2026-01-12 16:27:56',41,'2020-09-14 15:47:51',5972,'2020-09-14 17:48:25',36,NULL,1,NULL,1,NULL,0),
(6003,5786,57,'france',1,'2026-01-07 14:31:45',40,'2020-09-17 14:00:49',41,'2020-09-17 16:00:49',0,NULL,1,NULL,1,NULL,0),
(6004,5786,57,'ukraine',1,'2026-01-07 14:31:45',40,'2020-09-17 14:06:28',41,'2020-09-17 16:07:07',1,'ukraina',1,NULL,1,'ukraina',0),
(6005,5843,60,'libre-comme-lair',32,'2026-02-18 11:50:25',40,'2020-09-18 15:50:38',41,'2020-09-18 17:50:57',37,NULL,1,NULL,1,NULL,0),
(6006,5834,69,'chanel',1,'2026-01-07 14:31:47',40,'2020-09-23 17:05:50',41,'2020-09-23 19:06:21',7,NULL,1,NULL,1,NULL,0),
(6007,5786,57,'italie',1,'2026-01-07 14:31:45',40,'2020-09-28 17:00:49',41,'2020-09-28 19:00:49',2,NULL,1,NULL,1,NULL,0),
(6008,5834,69,'gucci',1,'2026-01-07 14:31:47',40,'2020-09-28 17:13:30',41,'2020-09-28 19:13:36',8,NULL,1,NULL,1,NULL,0),
(6009,5786,57,'usa',1,'2026-01-07 14:31:45',40,'2020-10-01 18:46:25',41,'2020-10-01 20:46:25',3,NULL,1,NULL,1,NULL,0),
(6010,5786,57,'sweden',1,'2026-01-07 14:31:45',40,'2020-10-11 15:29:22',41,'2020-10-11 17:29:22',4,NULL,1,NULL,1,NULL,0),
(6011,5834,69,'kenzo',1,'2026-01-07 14:31:47',40,'2020-10-11 15:42:43',41,'2020-10-11 17:43:37',9,NULL,1,NULL,1,NULL,0),
(6012,5786,57,'russia',1,'2026-01-07 14:31:45',40,'2020-10-13 20:08:50',41,'2020-10-13 22:08:50',5,NULL,1,NULL,1,NULL,0),
(6013,5843,60,'lanvin',1,'2026-01-12 16:28:04',41,'2020-11-01 16:01:52',41,'2020-11-01 17:02:51',38,NULL,1,NULL,1,NULL,0),
(6014,5843,60,'tiger',1,'2026-01-12 16:28:09',41,'2020-11-01 16:04:56',41,'2020-11-01 17:05:26',39,NULL,1,NULL,1,NULL,0),
(6015,5834,69,'yves-saint-laurent',1,'2026-01-07 14:31:47',40,'2020-11-01 16:25:09',41,'2020-11-01 17:25:46',10,NULL,1,NULL,1,NULL,0),
(6016,5843,60,'ysl',1,'2026-01-12 16:28:14',41,'2020-11-01 16:43:38',41,'2020-11-01 17:46:07',40,NULL,1,NULL,1,NULL,0),
(6018,5791,70,'charles-jean-hallo',32,'2026-02-19 20:42:25',41,'2021-07-04 15:53:11',41,'2021-07-04 17:53:58',40,NULL,1,NULL,1,NULL,0),
(6019,5791,70,'karin-swildens',32,'2026-01-07 14:31:47',40,'2021-07-04 15:55:21',41,'2021-07-04 17:56:04',41,NULL,1,NULL,1,NULL,0),
(6021,5791,70,'aline-honore',32,'2026-02-18 20:24:12',41,'2021-07-04 16:40:54',41,'2021-07-04 18:42:32',42,NULL,1,NULL,1,NULL,0),
(6022,5791,70,'jacques-eudel',32,'2026-01-07 14:31:47',40,'2021-07-04 16:46:44',41,'2021-07-04 18:47:30',43,NULL,1,NULL,1,NULL,0),
(6023,5791,70,'christine-henry',32,'2026-01-19 14:15:03',41,'2021-07-04 16:49:30',41,'2021-07-04 18:50:10',44,NULL,1,NULL,1,NULL,0),
(6024,5843,60,'la-mecanique-des-idees',32,'2026-01-12 16:28:17',41,'2021-07-05 06:33:44',41,'2021-07-05 08:34:19',41,NULL,1,NULL,1,NULL,0),
(6025,5843,60,'lart-des-steppes',32,'2026-02-02 22:29:07',40,'2021-07-05 06:35:25',41,'2021-07-05 08:36:07',42,NULL,1,NULL,1,NULL,0),
(6026,5843,60,'le-carnaval-de-venise',32,'2026-01-12 16:28:25',41,'2021-07-05 06:37:13',41,'2021-07-05 08:38:09',43,NULL,1,NULL,1,NULL,0),
(6027,5843,60,'torana',32,'2026-02-09 16:01:19',41,'2021-07-05 06:40:18',41,'2021-07-05 08:41:31',44,NULL,1,NULL,1,NULL,0),
(6028,5843,60,'monsieur-et-madame',32,'2026-01-12 16:28:32',41,'2021-07-05 06:51:02',41,'2021-07-05 08:51:53',45,NULL,1,NULL,1,NULL,0),
(6029,5843,60,'marche-flottant-du-lac-inle-ii',32,'2026-01-12 16:28:38',41,'2021-07-05 07:03:09',41,'2021-07-05 09:03:30',46,NULL,1,NULL,1,NULL,0),
(6030,5843,60,'magic-kelly',32,'2026-01-12 16:28:43',41,'2021-07-05 07:05:23',41,'2021-07-05 09:06:13',47,NULL,1,NULL,1,NULL,0),
(6031,5843,60,'insectes',32,'2026-01-12 16:28:47',41,'2021-07-05 07:07:20',41,'2021-07-05 09:08:37',48,NULL,1,NULL,1,NULL,0),
(6322,5843,60,'grand-manege-variations1',1,'2026-01-07 14:31:47',40,'2025-12-27 18:28:58',40,'2025-12-27 19:28:58',155,NULL,1,NULL,1,NULL,0),
(6033,5843,60,'azuejos',32,'2026-02-09 14:14:23',41,'2021-07-05 08:19:32',40,'2021-07-05 10:19:32',50,NULL,1,NULL,1,NULL,0),
(6034,5843,60,'escuela-andaluza',32,'2026-01-13 08:07:20',41,'2021-07-05 08:21:36',40,'2021-07-05 10:21:36',51,NULL,1,NULL,1,NULL,0),
(6035,5843,60,'farandole',32,'2026-01-12 16:28:58',41,'2021-07-05 08:22:58',40,'2021-07-05 10:22:58',52,NULL,1,NULL,1,NULL,0),
(6036,5843,60,'grande-venerie-royale',32,'2026-01-12 16:29:04',41,'2021-07-05 08:23:15',40,'2021-07-05 10:23:15',53,NULL,1,NULL,1,NULL,0),
(6037,5843,60,'hermes-sellier',32,'2026-01-12 16:29:08',41,'2021-07-05 08:23:22',40,'2021-07-05 10:23:22',54,NULL,1,NULL,1,NULL,0),
(6038,5843,60,'levriers',32,'2026-01-12 16:29:19',41,'2021-07-05 08:23:25',40,'2021-07-05 10:23:25',55,NULL,1,NULL,1,NULL,0),
(6039,5843,60,'maillons',32,'2026-01-12 16:29:23',41,'2021-07-05 08:23:35',40,'2021-07-05 10:23:35',56,NULL,1,NULL,1,NULL,0),
(6040,5843,60,'mare-aux-canards',32,'2026-01-12 16:29:27',41,'2021-07-05 08:23:39',40,'2021-07-05 10:23:39',57,NULL,1,NULL,1,NULL,0),
(6041,5843,60,'marine-et-cavalerie',32,'2026-01-12 16:29:30',41,'2021-07-05 08:24:19',40,'2021-07-05 10:24:19',58,NULL,1,NULL,1,NULL,0),
(6042,5843,60,'mors-a-la-conetable',32,'2026-02-24 17:28:11',5972,'2021-07-05 08:24:19',40,'2021-07-05 10:24:19',59,NULL,1,NULL,1,NULL,0),
(6043,5843,60,'mozart',32,'2026-01-12 16:29:39',41,'2021-07-05 08:24:19',40,'2021-07-05 10:24:19',60,NULL,1,NULL,1,NULL,0),
(6044,5843,60,'muzerolles',32,'2026-01-12 16:29:43',41,'2021-07-05 08:24:19',40,'2021-07-05 10:24:19',61,NULL,1,NULL,1,NULL,0),
(6045,5843,60,'napoleon',32,'2026-01-12 16:29:47',41,'2021-07-05 08:24:19',40,'2021-07-05 10:24:19',62,NULL,1,NULL,1,NULL,0),
(6046,5843,60,'palefroi',32,'2026-01-12 16:29:51',41,'2021-07-05 08:24:19',40,'2021-07-05 10:24:19',63,NULL,1,NULL,1,NULL,0),
(6047,5843,60,'parures-de-samourais',32,'2026-01-12 16:29:54',41,'2021-07-05 08:24:19',40,'2021-07-05 10:24:19',64,NULL,1,NULL,1,NULL,0),
(6048,5843,60,'passementerie',32,'2026-01-12 16:29:59',41,'2021-07-05 08:24:19',40,'2021-07-05 10:24:19',65,NULL,1,NULL,1,NULL,0),
(6049,5843,60,'petits-chevaux',32,'2026-01-12 16:30:03',41,'2021-07-05 08:24:19',40,'2021-07-05 10:24:19',66,NULL,1,NULL,1,NULL,0),
(6050,5843,60,'plumes',1,'2026-01-12 16:30:11',41,'2021-07-05 08:24:19',40,'2021-07-05 10:24:19',67,NULL,1,NULL,1,NULL,0),
(6051,5843,60,'promenade-de-longchamp',32,'2026-01-12 16:30:15',41,'2021-07-05 08:24:20',40,'2021-07-05 10:24:20',68,NULL,1,NULL,1,NULL,0),
(6052,5843,60,'reale',32,'2026-01-12 16:30:23',41,'2021-07-05 08:24:20',40,'2021-07-05 10:24:20',69,NULL,1,NULL,1,NULL,0),
(6053,5843,60,'reprise',32,'2026-01-12 16:30:29',41,'2021-07-05 08:24:20',40,'2021-07-05 10:24:20',70,NULL,1,NULL,1,NULL,0),
(6054,5843,60,'reveries-japonaises',32,'2026-01-12 16:30:34',41,'2021-07-05 08:24:20',40,'2021-07-05 10:24:20',71,NULL,1,NULL,1,NULL,0),
(6055,5843,60,'ryton',32,'2026-02-02 22:29:07',40,'2021-07-05 08:24:20',40,'2021-07-05 10:24:20',72,NULL,1,NULL,1,NULL,0),
(6056,5843,60,'rose-de-vents',32,'2026-01-12 16:30:43',41,'2021-07-05 08:24:20',40,'2021-07-05 10:24:20',73,NULL,1,NULL,1,NULL,0),
(6057,5843,60,'selles-a-housse',32,'2026-01-12 16:30:51',41,'2021-07-05 08:24:20',40,'2021-07-05 10:24:20',74,NULL,1,NULL,1,NULL,0),
(6058,5843,60,'splendeur-des-maharadjas',32,'2026-02-09 14:19:59',41,'2021-07-05 08:24:20',40,'2021-07-05 10:24:20',75,NULL,1,NULL,1,NULL,0),
(6059,5843,60,'springs',32,'2026-02-09 15:39:55',41,'2021-07-05 08:24:20',40,'2021-07-05 10:24:20',76,NULL,1,NULL,1,NULL,0),
(6060,5843,60,'sulfures-presse-papiers',32,'2026-01-12 16:31:06',41,'2021-07-05 08:24:20',40,'2021-07-05 10:24:20',77,NULL,1,NULL,1,NULL,0),
(6061,5843,60,'tambours',32,'2026-02-09 15:50:16',41,'2021-07-05 08:24:20',40,'2021-07-05 10:24:20',78,NULL,1,NULL,1,NULL,0),
(6062,5843,60,'tarot',32,'2026-01-12 16:31:16',41,'2021-07-05 08:24:21',40,'2021-07-05 10:24:21',79,NULL,1,NULL,1,NULL,0),
(6063,5843,60,'tribord',32,'2026-01-12 16:31:20',41,'2021-07-05 08:24:21',40,'2021-07-05 10:24:21',80,NULL,1,NULL,1,NULL,0),
(6064,5843,60,'tropiques',32,'2026-02-09 16:40:20',41,'2021-07-05 08:24:21',40,'2021-07-05 10:24:21',81,NULL,1,NULL,1,NULL,0),
(6065,5843,60,'tuileries',32,'2026-01-12 16:31:29',41,'2021-07-05 08:24:21',40,'2021-07-05 10:24:21',82,NULL,1,NULL,1,NULL,0),
(6066,5843,60,'vive-le-vent',32,'2026-01-12 16:31:34',41,'2021-07-05 08:24:21',40,'2021-07-05 10:24:21',83,NULL,1,NULL,1,NULL,0),
(6068,5843,60,'zabavushka',32,'2026-01-20 06:05:26',41,'2021-07-05 08:24:21',40,'2021-07-05 10:24:21',85,NULL,1,NULL,1,NULL,0),
(6069,5843,60,'le-saut-h',32,'2026-02-02 22:29:07',40,'2021-07-05 08:24:21',40,'2021-07-05 10:24:21',86,NULL,1,NULL,1,NULL,0),
(6070,5843,60,'lhiver',32,'2026-02-02 22:29:07',40,'2021-07-05 08:24:21',40,'2021-07-05 10:24:21',87,NULL,1,NULL,1,NULL,0),
(6071,5843,60,'sacre-du-printems',32,'2026-01-12 16:32:02',41,'2021-07-05 08:24:21',40,'2021-07-05 10:24:21',88,NULL,1,NULL,1,NULL,0),
(6072,5843,60,'carpe-diem',32,'2026-01-12 16:32:07',41,'2021-07-05 08:24:21',40,'2021-07-05 10:24:21',89,NULL,1,NULL,1,NULL,0),
(6073,5843,60,'le-temps-des-marionnettes',32,'2026-01-12 16:32:17',41,'2021-07-05 08:24:22',40,'2021-07-05 10:24:22',90,NULL,1,NULL,1,NULL,0),
(6079,5843,60,'1821-hommage-a-lamite',32,'2026-02-23 20:51:35',5972,'2025-11-01 17:05:45',40,'2025-11-01 18:05:45',89,NULL,1,NULL,1,NULL,0),
(6080,5843,60,'a-propos-de-bottes',32,'2026-02-23 20:58:44',5972,'2025-11-01 17:10:52',40,'2025-11-01 18:10:52',90,NULL,1,NULL,1,NULL,0),
(6081,5843,60,'alliances-du-monde',1,'2026-02-11 13:47:17',41,'2025-11-01 17:11:49',40,'2025-11-01 18:11:49',91,NULL,1,NULL,1,NULL,0),
(6082,5843,60,'bolduc-au-carre',32,'2026-02-18 11:50:25',40,'2025-11-01 17:30:00',40,'2025-11-01 18:30:00',92,NULL,1,NULL,1,NULL,0),
(6317,5843,60,'brazil-variations1',1,'2026-02-26 13:53:21',41,'2025-12-27 17:31:27',40,'2025-12-27 18:31:27',4,NULL,1,NULL,1,NULL,0),
(6094,5843,60,'do-re-boucles',32,'2026-01-12 16:33:14',41,'2025-11-01 18:36:01',40,'2025-11-01 19:36:01',102,NULL,1,NULL,1,NULL,0),
(6084,5843,60,'casques-et-plumets',32,'2026-02-02 22:29:07',40,'2025-11-01 17:40:55',40,'2025-11-01 18:40:55',94,NULL,1,NULL,1,NULL,0),
(6085,5843,60,'cheval-de-caractaire',32,'2026-02-02 22:29:07',40,'2025-11-01 17:44:12',40,'2025-11-01 18:44:12',95,NULL,1,NULL,1,NULL,0),
(6086,5843,60,'chiens-et-valets',32,'2026-02-19 20:33:10',41,'2025-11-01 17:55:51',40,'2025-11-01 18:55:51',96,NULL,1,NULL,1,NULL,0),
(6087,5791,70,'daiske-nomura-4',32,'2026-01-14 09:17:43',41,'2025-11-01 18:19:04',40,'2025-11-01 19:19:04',48,NULL,1,NULL,1,NULL,0),
(6088,5843,60,'chorus-stellarium',32,'2026-02-18 11:50:25',40,'2025-11-01 18:19:04',40,'2025-11-01 19:19:04',97,NULL,1,NULL,1,NULL,0),
(6089,5843,60,'circuit-fsh-24',32,'2026-02-18 11:50:25',40,'2025-11-01 18:20:36',40,'2025-11-01 19:20:36',98,NULL,1,NULL,1,NULL,0),
(6090,5791,70,'virginie-jamin',32,'2026-01-14 08:17:05',41,'2025-11-01 18:22:54',40,'2025-11-01 19:22:54',49,NULL,1,NULL,1,NULL,0),
(6091,5843,60,'collies-de-chiens',32,'2026-01-12 16:33:00',41,'2025-11-01 18:22:54',40,'2025-11-01 19:22:54',99,NULL,1,NULL,1,NULL,0),
(6092,5843,60,'confidents-des-coeur',32,'2026-02-18 11:50:25',40,'2025-11-01 18:24:27',40,'2025-11-01 19:24:27',100,NULL,1,NULL,1,NULL,0),
(6093,5843,60,'brazil-ii',32,'2026-02-02 22:29:07',40,'2025-11-01 18:36:00',40,'2025-11-01 19:36:00',101,NULL,1,NULL,1,NULL,0),
(6095,5791,70,'carine-brancowitz',32,'2026-02-25 05:27:52',41,'2025-11-01 18:36:01',40,'2025-11-01 19:36:01',46,NULL,1,NULL,1,NULL,0),
(6096,5843,60,'en-liberte',32,'2026-02-02 22:29:07',40,'2025-11-01 18:36:01',40,'2025-11-01 19:36:01',103,NULL,1,NULL,1,NULL,0),
(6097,5791,70,'dominik-jarlegant',32,'2026-02-19 20:49:49',41,'2025-11-01 18:36:01',40,'2025-11-01 19:36:01',47,NULL,1,NULL,1,NULL,0),
(6098,5843,60,'face-au-large',32,'2026-02-18 11:50:25',40,'2025-11-01 18:36:01',40,'2025-11-01 19:36:01',104,NULL,1,NULL,1,NULL,0),
(6099,5843,60,'ferronnerie',32,'2026-02-18 11:50:25',40,'2025-11-01 18:36:01',40,'2025-11-01 19:36:01',105,NULL,1,NULL,1,NULL,0),
(6101,5843,60,'feux-dartifice',32,'2026-02-02 22:29:07',40,'2025-11-01 18:36:01',40,'2025-11-01 19:36:01',107,NULL,1,NULL,1,NULL,0),
(6102,5843,60,'fleurs-et-carlines',32,'2026-02-18 11:50:25',40,'2025-11-01 18:36:01',40,'2025-11-01 19:36:01',108,NULL,1,NULL,1,NULL,0),
(6103,5843,60,'flot-fleurs-et-frontaux',32,'2026-02-02 22:29:07',40,'2025-11-01 18:36:01',40,'2025-11-01 19:36:01',109,NULL,1,NULL,1,NULL,0),
(6104,5843,60,'geometrie-cretoise',32,'2026-01-12 16:36:58',41,'2025-11-01 18:36:01',40,'2025-11-01 19:36:01',110,NULL,1,NULL,1,NULL,0),
(6105,5843,60,'india',32,'2026-02-02 22:29:07',40,'2025-11-01 18:36:01',40,'2025-11-01 19:36:01',111,NULL,1,NULL,1,NULL,0),
(6106,5791,70,'francois-houtin',32,'2026-01-07 14:31:48',40,'2025-11-01 18:36:01',40,'2025-11-01 19:36:01',48,NULL,1,NULL,1,NULL,0),
(6107,5843,60,'jardins-des-metamorphoses',32,'2026-02-02 22:29:07',40,'2025-11-01 18:36:01',40,'2025-11-01 19:36:01',112,NULL,1,NULL,1,NULL,0),
(6108,5791,70,'gianpaolo-pagni',32,'2026-01-07 14:31:48',40,'2025-11-01 18:36:01',40,'2025-11-01 19:36:01',49,NULL,1,NULL,1,NULL,0),
(6109,5791,70,'cassandre',32,'2026-01-10 11:39:05',5972,'2025-11-01 18:36:01',40,'2025-11-01 19:36:01',50,NULL,1,NULL,1,NULL,0),
(6111,5791,70,'sophie-koechlin',32,'2026-01-14 07:50:05',41,'2025-11-01 18:36:01',40,'2025-11-01 19:36:01',51,NULL,1,NULL,1,NULL,0),
(6112,5843,60,'lart-indien-des-plaines',32,'2026-02-18 11:50:25',40,'2025-11-01 18:36:01',40,'2025-11-01 19:36:01',114,NULL,1,NULL,1,NULL,0),
(6113,5791,70,'marie-pierre',32,'2026-01-11 12:25:59',41,'2025-11-01 18:36:01',40,'2025-11-01 19:36:01',52,NULL,1,NULL,1,NULL,0),
(6114,5843,60,'le-sacres-dhiver',32,'2026-02-18 11:50:25',40,'2025-11-01 18:36:01',40,'2025-11-01 19:36:01',115,NULL,1,NULL,1,NULL,0),
(6115,5843,60,'les-chemins-secrets',32,'2026-01-12 16:37:30',41,'2025-11-01 18:36:01',40,'2025-11-01 19:36:01',116,NULL,1,NULL,1,NULL,0),
(6116,5791,70,'yves-benoist-gironiere',32,'2026-01-07 14:31:48',40,'2025-11-01 18:36:01',40,'2025-11-01 19:36:01',53,NULL,1,NULL,1,NULL,0),
(6117,5843,60,'les-courses',32,'2026-02-02 22:29:07',40,'2025-11-01 18:36:01',40,'2025-11-01 19:36:01',117,NULL,1,NULL,1,NULL,0),
(6118,5843,60,'les-nouveaux-amoureux-de-paris',32,'2026-01-12 16:37:39',41,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',118,NULL,1,NULL,1,NULL,0),
(6119,5791,70,'sefedin-ibrahim-alamin',32,'2026-01-07 14:31:48',40,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',54,NULL,1,NULL,1,NULL,0),
(6120,5843,60,'les-perles-de-tourkana',32,'2026-02-18 11:50:25',40,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',119,NULL,1,NULL,1,NULL,0),
(6121,5843,60,'ludovicus-magnus',32,'2026-02-02 22:29:07',40,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',120,NULL,1,NULL,1,NULL,0),
(6122,5843,60,'mega-chariot',32,'2026-02-18 11:50:25',40,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',121,NULL,1,NULL,1,NULL,0),
(6123,5791,70,'filipe-jardim',32,'2026-01-13 10:28:45',41,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',55,NULL,1,NULL,1,NULL,0),
(6124,5843,60,'modernisme-tropical',32,'2026-02-02 22:29:07',40,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',122,NULL,1,NULL,1,NULL,0),
(6125,5843,60,'monsieur-et-madame-ll',32,'2026-01-12 16:38:03',41,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',123,NULL,1,NULL,1,NULL,0),
(6126,5843,60,'mors-a-jouets-chemise',32,'2026-02-18 11:50:25',40,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',124,NULL,1,NULL,1,NULL,0),
(6127,5843,60,'mountain-zebra',32,'2026-02-18 11:50:25',40,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',125,NULL,1,NULL,1,NULL,0),
(6128,5843,60,'panoplie-equestre',32,'2026-02-18 11:50:25',40,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',126,NULL,1,NULL,1,NULL,0),
(6129,5791,70,'claudia-stuhlhofer-mayr',32,'2026-02-19 20:44:34',41,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',56,NULL,1,NULL,1,NULL,0),
(6130,5843,60,'paperoles',32,'2026-02-18 11:50:25',40,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',127,NULL,1,NULL,1,NULL,0),
(6131,5791,70,'jonathan-burton',32,'2026-01-19 14:19:38',41,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',57,NULL,1,NULL,1,NULL,0),
(6132,5843,60,'parade',32,'2026-02-09 12:43:07',41,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',128,NULL,1,NULL,1,NULL,0),
(6133,5843,60,'peinture-fraiche',32,'2026-02-18 11:50:25',40,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',129,NULL,1,NULL,1,NULL,0),
(6134,5791,70,'archives-hermes',32,'2026-01-21 05:39:14',41,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',58,NULL,1,NULL,1,NULL,0),
(6135,5843,60,'printemps-ete-69-a-h-70',32,'2026-01-12 16:38:35',41,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',130,NULL,1,NULL,1,NULL,0),
(6136,5843,60,'proues',32,'2026-02-18 11:50:25',40,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',131,NULL,1,NULL,1,NULL,0),
(6137,5843,60,'qalamdan',32,'2026-02-18 11:50:25',40,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',132,NULL,1,NULL,1,NULL,0),
(6138,5791,70,'pierre-peron',32,'2026-01-11 16:59:54',41,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',59,NULL,1,NULL,1,NULL,0),
(6139,5843,60,'quadrige',32,'2026-02-02 22:29:07',40,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',133,NULL,1,NULL,1,NULL,0),
(6140,5791,70,'leila-menchari',32,'2026-01-19 14:25:19',41,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',60,NULL,1,NULL,1,NULL,0),
(6141,5843,60,'regina',32,'2026-02-02 22:29:07',40,'2025-11-01 18:36:02',40,'2025-11-01 19:36:02',134,NULL,1,NULL,1,NULL,0),
(6142,5843,60,'rencontre-oceane',32,'2026-02-02 22:29:07',40,'2025-11-01 18:36:03',40,'2025-11-01 19:36:03',135,NULL,1,NULL,1,NULL,0),
(6143,5843,60,'sangles',32,'2026-02-18 11:50:25',40,'2025-11-01 18:36:03',40,'2025-11-01 19:36:03',136,NULL,1,NULL,1,NULL,0),
(6144,5843,60,'sous-le-cedre',32,'2026-02-02 22:29:07',40,'2025-11-01 18:36:03',40,'2025-11-01 19:36:03',137,NULL,1,NULL,1,NULL,0),
(6145,5791,70,'ardmore-artists',32,'2026-01-07 14:31:48',40,'2025-11-01 18:36:03',40,'2025-11-01 19:36:03',61,NULL,1,NULL,1,NULL,0),
(6147,5843,60,'tresors-du-nil',32,'2026-02-02 22:29:07',40,'2025-11-01 18:36:03',40,'2025-11-01 19:36:03',139,NULL,1,NULL,1,NULL,0),
(6148,5843,60,'tsubas',32,'2026-02-09 17:50:20',41,'2025-11-01 18:36:03',40,'2025-11-01 19:36:03',140,NULL,1,NULL,1,NULL,0),
(6149,5843,60,'washingtons-carriage',32,'2026-02-02 22:29:07',40,'2025-11-01 18:36:03',40,'2025-11-01 19:36:03',141,NULL,1,NULL,1,NULL,0),
(6152,5786,57,'tunisia',1,'2026-01-07 14:31:45',40,'2025-11-01 23:03:56',41,'2025-11-02 00:03:56',6,NULL,1,NULL,1,NULL,0),
(6158,5786,57,'japan',1,'2026-01-07 14:31:45',40,'2025-11-05 15:41:22',41,'2025-11-05 16:41:22',7,NULL,1,NULL,1,NULL,0),
(6159,5843,60,'the-savana-dance',32,'2026-02-09 15:54:14',41,'2025-11-06 12:53:59',40,'2025-11-06 13:53:59',138,NULL,1,NULL,1,NULL,0),
(6169,5786,57,'united-kingdom',1,'2026-01-07 14:31:45',40,'2025-11-18 04:44:47',41,'2025-11-18 05:44:47',8,NULL,1,NULL,1,NULL,0),
(6170,5786,57,'brasil',1,'2026-01-07 14:31:45',40,'2025-11-18 05:05:21',41,'2025-11-18 06:05:21',9,NULL,1,NULL,1,NULL,0),
(6172,5834,69,'rado',1,'2026-01-07 14:31:47',40,'2025-11-19 10:01:23',40,'2025-11-19 11:01:23',12,NULL,1,NULL,1,NULL,0),
(6321,5843,60,'eperon-d-or-variations1',1,'2026-01-07 14:31:47',40,'2025-12-27 18:28:58',40,'2025-12-27 19:28:58',154,NULL,1,NULL,1,NULL,0),
(6320,5843,60,'cavalcadur-variations1',1,'2026-02-24 17:58:25',5972,'2025-12-27 18:11:01',40,'2025-12-27 19:11:01',153,NULL,1,NULL,1,NULL,0),
(6196,5843,60,'a-vos-crayons',32,'2026-02-11 13:55:01',41,'2025-11-30 13:44:42',40,'2025-11-30 14:44:42',140,NULL,1,NULL,1,NULL,0),
(6197,6185,96,'86x88',1,'2026-01-07 14:31:48',40,'2025-11-30 13:44:43',40,'2025-11-30 14:44:43',4,NULL,1,NULL,1,NULL,0),
(6207,6185,96,'66x70',1,'2026-01-07 14:31:48',40,'2025-11-30 13:44:46',40,'2025-11-30 14:44:46',5,NULL,1,NULL,1,NULL,0),
(6267,6185,96,'gavroche',1061,'2026-01-11 09:19:41',41,'2025-12-07 08:18:25',40,'2025-12-07 09:18:25',10,NULL,1,NULL,1,NULL,0),
(6323,5843,60,'plumes-variations1',1,'2026-01-07 14:31:47',40,'2025-12-27 18:28:59',40,'2025-12-27 19:28:59',156,NULL,1,NULL,1,NULL,0),
(6266,6185,96,'twilly',1061,'2026-01-11 09:18:17',41,'2025-12-01 13:53:06',41,'2025-12-01 14:53:06',11,NULL,1,NULL,1,NULL,0),
(6222,5843,60,'dior',1,'2026-02-02 22:29:07',40,'2025-11-30 13:44:52',40,'2025-11-30 14:44:52',141,NULL,1,NULL,1,NULL,0),
(6225,6185,96,'88x88',1,'2026-01-07 14:31:48',40,'2025-11-30 13:44:53',40,'2025-11-30 14:44:53',6,NULL,1,NULL,1,NULL,0),
(6316,7,60,'6316.5843.3_brazil-5976-variations1',8193,'2025-12-28 06:40:09',41,'2025-12-27 15:02:59',40,'2025-12-27 16:02:59',3,NULL,1,NULL,0,NULL,0),
(6251,6185,96,'66x66',1,'2026-01-07 14:31:48',40,'2025-11-30 13:53:36',40,'2025-11-30 14:53:36',7,NULL,1,NULL,1,NULL,0),
(6253,5843,60,'rado',1,'2026-02-02 22:29:07',40,'2025-11-30 13:53:36',40,'2025-11-30 14:53:36',143,NULL,1,NULL,1,NULL,0),
(6258,5843,60,'the-sign-of-excellence',1,'2026-02-02 22:29:07',40,'2025-11-30 13:53:40',40,'2025-11-30 14:53:40',144,NULL,1,NULL,1,NULL,0),
(6259,6185,96,'89x89',1,'2026-01-07 14:31:48',40,'2025-11-30 13:53:42',40,'2025-11-30 14:53:42',8,NULL,1,NULL,1,NULL,0),
(6315,7,70,'6315.5791.68_evgenia-miro',8193,'2025-12-31 06:37:11',41,'2025-12-26 16:13:18',40,'2025-12-26 17:13:18',68,NULL,1,NULL,0,NULL,0),
(6312,7,70,'6312.5791.67_michele-duch-ene',8193,'2025-12-31 06:37:28',41,'2025-12-26 16:13:11',40,'2025-12-26 17:13:11',67,NULL,1,NULL,0,NULL,0),
(6313,7,60,'6313.5843.150_jardins-des-metamorphose',8193,'2025-12-31 14:24:26',41,'2025-12-26 16:13:12',40,'2025-12-26 17:13:12',150,NULL,1,NULL,0,NULL,0),
(6268,7,2,'6268.22.6_adminer',8193,'2026-01-15 20:45:25',41,'2025-12-07 18:07:02',41,'2025-12-07 19:07:02',6,NULL,0,NULL,0,NULL,0),
(6269,7,2,'6269.22.7_adminer-renderer',9216,'2026-01-15 20:45:48',41,'2025-12-07 18:07:02',41,'2025-12-07 19:07:02',7,NULL,0,NULL,0,NULL,0),
(6270,5786,57,'iuzhno-afrikanskaia-respublika',1,'2026-01-07 14:31:45',40,'2025-12-10 01:15:41',41,'2025-12-10 02:15:41',10,NULL,1,NULL,1,NULL,0),
(6271,7,60,'6271.5843.144_art-des-steppes',8193,'2026-01-02 09:51:56',41,'2025-12-10 11:27:18',40,'2025-12-10 12:27:18',144,NULL,1,NULL,0,NULL,0),
(6272,5843,60,'bracelets-de-lumiere',1,'2026-02-02 22:29:07',40,'2025-12-10 11:27:18',40,'2025-12-10 12:27:18',145,NULL,1,NULL,1,NULL,0),
(6318,5843,60,'281-les-voitures-transformation-variations1',1,'2026-02-09 13:41:49',41,'2025-12-27 17:43:07',40,'2025-12-27 18:43:07',151,NULL,1,NULL,1,NULL,0),
(6314,7,60,'6314.5843.151_tarot-1',8193,'2025-12-30 10:56:21',41,'2025-12-26 16:13:17',40,'2025-12-26 17:13:17',151,NULL,1,NULL,0,NULL,0),
(6311,7,70,'6311.5791.66_jean-fougerolle',8193,'2025-12-31 06:37:43',41,'2025-12-26 16:13:09',40,'2025-12-26 17:13:09',66,NULL,1,NULL,0,NULL,0),
(6276,5843,60,'mors-a-jouets',1,'2026-02-02 22:29:07',40,'2025-12-10 11:27:22',40,'2025-12-10 12:27:22',148,NULL,1,NULL,1,NULL,0),
(6277,7,60,'6277.5843.149_pochette-hermes',8193,'2025-12-30 14:56:08',41,'2025-12-10 11:27:22',40,'2025-12-10 12:27:22',149,NULL,1,NULL,0,NULL,0),
(6278,6185,96,'gavroche-42x42',1061,'2026-01-11 09:19:12',41,'2025-12-10 11:27:22',40,'2025-12-10 12:27:22',11,NULL,1,NULL,1,NULL,0),
(6306,5789,98,'h_collections',1,'2026-02-20 09:55:21',41,'2025-12-26 05:02:58',40,'2025-12-26 06:02:58',6,NULL,1,NULL,1,NULL,0),
(6327,6185,96,'140x140',1,'2026-01-07 14:31:48',40,'2025-12-28 18:26:43',41,'2025-12-28 19:26:43',14,NULL,1,NULL,1,NULL,0),
(6282,5843,60,'voyage-en-etoffes',1025,'2026-01-02 16:16:21',41,'2025-12-10 11:27:24',40,'2025-12-10 12:27:24',153,NULL,1,NULL,0,NULL,0),
(6283,5786,57,'netherlands',1,'2026-01-07 14:31:45',40,'2025-12-10 17:04:26',41,'2025-12-10 18:04:26',11,NULL,1,NULL,1,NULL,0),
(6284,5827,71,'beyond-retro',1,'2025-12-23 17:17:35',40,'2025-12-10 20:36:38',41,'2025-12-10 21:38:52',7,NULL,1,NULL,0,NULL,0),
(6285,5827,71,'metropol',1,'2025-12-23 17:17:35',40,'2025-12-11 14:10:47',41,'2025-12-11 15:13:27',8,NULL,1,NULL,0,NULL,0),
(6286,1,59,'restoration-as-a-premonition',1,'2025-12-19 14:04:38',41,'2025-12-17 10:08:21',41,'2025-12-17 11:08:21',8,NULL,1,NULL,0,NULL,0),
(6324,5843,60,'cuivreries-variant-variations1',1,'2026-01-07 14:31:47',40,'2025-12-27 18:28:59',40,'2025-12-27 19:28:59',157,NULL,1,NULL,1,NULL,0),
(6288,5958,87,'kuzminykh',1,'2026-01-12 07:52:54',41,'2025-12-18 18:22:05',41,'2025-12-18 19:23:20',0,NULL,1,NULL,1,NULL,0),
(6290,30,4,'family-member',1,'2025-12-20 06:39:38',41,'2025-12-20 06:32:14',40,'2025-12-20 07:32:14',3,NULL,1,NULL,1,NULL,1),
(6291,31,5,'see-full-menu',1,'2025-12-20 06:47:59',41,'2025-12-20 06:32:14',40,'2025-12-20 07:32:14',14,NULL,1,NULL,1,NULL,1),
(6296,31,5,'see-h-restricted',1,'2026-01-19 18:43:13',41,'2025-12-22 05:18:56',40,'2025-12-22 06:18:56',15,NULL,1,NULL,1,NULL,1),
(6293,6185,96,'bandana',1061,'2026-01-11 09:20:05',41,'2025-12-21 12:31:36',41,'2025-12-21 13:32:21',12,NULL,1,NULL,1,NULL,0),
(6294,5827,71,'pop',1,'2026-01-15 10:16:14',41,'2025-12-21 16:23:01',41,'2025-12-21 17:23:41',9,NULL,1,NULL,0,NULL,0),
(6330,5786,57,'austria',1,'2026-01-07 14:31:45',40,'2025-12-29 18:03:45',41,'2025-12-29 19:03:45',13,NULL,1,NULL,1,NULL,0),
(6297,5960,92,'barynia',1,'2026-01-07 14:31:45',40,'2025-12-22 09:40:23',41,'2025-12-22 10:41:10',1,NULL,1,NULL,1,NULL,0),
(6298,5960,92,'kozliata',1,'2026-01-07 14:31:45',40,'2025-12-22 10:22:34',41,'2025-12-22 11:23:53',2,NULL,1,NULL,1,NULL,0),
(6328,7,57,'6328.5786.12_sudan',8193,'2025-12-29 09:51:22',41,'2025-12-29 09:47:12',41,'2025-12-29 10:47:12',12,NULL,0,NULL,0,NULL,0),
(6310,7,70,'6310.5791.65_antoine-de-jacquelot',8193,'2025-12-31 06:37:56',41,'2025-12-26 16:13:08',40,'2025-12-26 17:13:08',65,NULL,1,NULL,0,NULL,0),
(6308,7,60,'6308.5843.148_1821-hommage-a-lamite-1',8193,'2025-12-31 14:26:34',41,'2025-12-26 16:13:06',40,'2025-12-26 17:13:06',148,NULL,1,NULL,0,NULL,0),
(6329,5786,57,'sudan-1',1,'2026-01-07 14:31:45',40,'2025-12-29 09:50:26',41,'2025-12-29 10:50:26',13,NULL,1,NULL,1,NULL,0),
(6302,1,26,'search',1024,'2026-01-17 14:51:32',41,'2025-12-23 12:58:53',40,'2026-01-17 15:51:32',9,NULL,1,NULL,1,NULL,0),
(6326,5791,70,'axel-dumas',1,'2026-01-07 14:31:48',40,'2025-12-28 07:05:07',41,'2025-12-28 08:07:10',69,NULL,1,NULL,1,NULL,0),
(6331,6306,63,'misterie-of-a.m.cassandre',1,'2026-01-07 14:31:47',40,'2025-12-31 06:14:12',41,'2025-12-31 07:24:17',1,NULL,1,NULL,1,NULL,0),
(6332,5843,60,'perspective',1,'2026-01-07 14:31:47',40,'2025-12-31 06:21:14',41,'2025-12-31 07:26:07',155,NULL,1,NULL,1,NULL,0),
(6333,5843,60,'litterature',1,'2026-01-07 14:31:47',40,'2025-12-31 06:47:32',41,'2025-12-31 07:48:38',156,NULL,1,NULL,1,NULL,0),
(6334,5786,57,'greece',1,'2026-01-07 14:31:45',40,'2026-01-01 12:46:51',41,'2026-01-01 13:46:51',14,NULL,1,NULL,1,NULL,0),
(6335,5843,60,'bolduc-au-carre-variations1',1,'2026-02-02 22:29:07',40,'2026-01-02 15:08:42',40,'2026-01-02 16:08:42',3,NULL,1,NULL,1,NULL,0),
(6336,5786,57,'germany',1,'2026-01-09 07:59:59',41,'2026-01-09 07:59:59',41,'2026-01-09 08:59:59',15,NULL,0,NULL,0,NULL,0),
(6337,7,77,'6337.5900._62-musician-and-gamblers-donor-of',8193,'2026-01-09 15:55:48',41,'2026-01-09 14:29:42',40,'2026-01-09 15:29:42',0,NULL,0,NULL,0,NULL,0),
(6338,5906,77,'155-philosopher-with-an-open-book-donor-of',1,'2026-01-10 14:46:59',41,'2026-01-10 07:52:30',40,'2026-01-10 08:52:30',0,NULL,1,NULL,1,NULL,0),
(6341,29,3,'ib',1,'2026-01-12 12:02:58',41,'2026-01-12 12:00:29',41,'2026-01-12 13:02:58',4,NULL,1,NULL,1,NULL,1),
(6340,29,3,'tb',1,'2026-01-12 11:59:58',41,'2026-01-12 11:27:01',41,'2026-01-12 12:59:58',4,NULL,1,NULL,1,NULL,1),
(6342,29,3,'mb',1,'2026-01-12 12:05:56',41,'2026-01-12 12:04:23',41,'2026-01-12 13:05:56',5,NULL,1,NULL,1,NULL,1),
(6345,31,5,'see-h-prices',1,'2026-01-19 18:30:45',41,'2026-01-12 17:34:24',41,'2026-01-12 18:35:00',16,NULL,1,NULL,1,NULL,1),
(6344,29,3,'ab',1,'2026-01-12 12:10:19',41,'2026-01-12 12:07:43',41,'2026-01-12 13:09:04',7,NULL,1,NULL,1,NULL,1),
(6346,6306,63,'hermes-scarf-guides',1,'2026-02-19 14:19:07',41,'2026-01-17 21:19:50',41,'2026-01-17 22:27:54',2,NULL,1,NULL,1,NULL,1),
(6347,5843,60,'hermes-flagship',1,'2026-01-19 11:27:26',41,'2026-01-17 21:26:11',41,'2026-01-17 22:38:44',155,NULL,1,NULL,1,NULL,1),
(6348,5843,60,'hermes-flagship-variations1',1,'2026-01-18 07:58:39',41,'2026-01-17 21:47:34',41,'2026-01-17 22:50:21',156,NULL,1,NULL,1,NULL,0),
(6349,5843,60,'hermes-flagship-variations2',1,'2026-01-18 07:56:30',41,'2026-01-17 22:43:12',41,'2026-01-17 23:45:39',157,NULL,1,NULL,1,NULL,0),
(6350,5843,60,'hermes-flagship-variations3',1,'2026-01-18 08:02:13',41,'2026-01-17 23:01:35',41,'2026-01-18 00:02:55',158,NULL,1,NULL,1,NULL,1),
(6351,5941,76,'purchase_2018-02-19',1,'2026-01-20 12:05:31',41,'2026-01-18 09:51:40',41,'2026-01-18 10:52:12',15,NULL,1,NULL,1,NULL,1),
(6352,5941,76,'purchase-2009-06-15',1,'2026-01-20 12:05:22',41,'2026-01-18 15:12:26',41,'2026-01-18 16:19:12',16,NULL,1,NULL,1,NULL,1),
(6353,5906,77,'9999-premier-voyage-aerien',1,'2026-01-21 06:53:14',40,'2026-01-18 15:16:00',41,'2026-01-18 16:18:40',32,NULL,1,NULL,1,NULL,0),
(6354,31,5,'see-a-prices',1,'2026-01-19 18:44:45',41,'2026-01-19 18:44:00',41,'2026-01-19 19:44:14',17,NULL,1,NULL,1,NULL,1),
(6355,31,5,'see-a-restricted',1,'2026-01-19 18:46:31',41,'2026-01-19 18:45:58',41,'2026-01-19 19:46:06',18,NULL,1,NULL,1,NULL,1),
(6356,5858,74,'caravaggio',1,'2026-01-22 12:49:21',41,'2026-01-20 09:53:18',41,'2026-01-20 10:55:06',23,NULL,1,NULL,1,NULL,0),
(6357,5861,73,'caravaggio-methodics',1,'2026-01-23 13:32:56',41,'2026-01-21 17:39:06',41,'2026-01-21 18:39:25',2,NULL,1,NULL,1,NULL,1),
(6358,5843,60,'robe-legere',1,'2026-02-09 12:57:31',41,'2026-02-02 16:02:01',41,'2026-02-02 17:06:31',159,NULL,1,NULL,1,NULL,0),
(6359,5827,71,'hopcash',1,'2026-02-02 16:11:34',41,'2026-02-02 16:09:49',41,'2026-02-02 17:10:34',10,NULL,1,NULL,0,NULL,0),
(6360,5791,70,'theo-de-gueltzl',1,'2026-02-02 22:44:51',41,'2026-02-02 16:46:04',41,'2026-02-02 17:46:50',66,NULL,1,NULL,1,NULL,0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `pages_access`
--

DROP TABLE IF EXISTS `pages_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_access`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `pages_access` WRITE;
/*!40000 ALTER TABLE `pages_access` DISABLE KEYS */;
INSERT INTO `pages_access` VALUES
(5751,2,'2026-01-13 17:06:52'),
(5753,2,'2026-01-13 17:06:52'),
(5754,2,'2026-01-13 17:06:52'),
(5755,2,'2026-01-13 17:06:52'),
(37,2,'2026-01-13 17:06:52'),
(38,2,'2026-01-13 17:06:52'),
(5735,2,'2026-01-13 17:06:52'),
(6290,2,'2026-01-13 17:06:52'),
(32,2,'2026-01-13 17:06:52'),
(34,2,'2026-01-13 17:06:52'),
(35,2,'2026-01-13 17:06:52'),
(36,2,'2026-01-13 17:06:52'),
(50,2,'2026-01-13 17:06:52'),
(51,2,'2026-01-13 17:06:52'),
(52,2,'2026-01-13 17:06:52'),
(53,2,'2026-01-13 17:06:52'),
(54,2,'2026-01-13 17:06:52'),
(5738,2,'2026-01-13 17:06:52'),
(5741,2,'2026-01-13 17:06:52'),
(5743,2,'2026-01-13 17:06:52'),
(5744,2,'2026-01-13 17:06:52'),
(5749,2,'2026-01-13 17:06:52'),
(6291,2,'2026-01-13 17:06:52'),
(6296,2,'2026-01-13 17:06:52'),
(6345,2,'2026-01-13 17:06:52'),
(5903,2,'2026-01-13 17:06:52'),
(5940,2,'2026-01-13 17:06:52'),
(6328,2,'2026-01-13 17:06:52'),
(6337,2,'2026-01-13 17:06:52'),
(5828,65,'2026-01-13 17:06:52'),
(5829,65,'2026-01-13 17:06:52'),
(5830,65,'2026-01-13 17:06:52'),
(5831,65,'2026-01-13 17:06:52'),
(5832,65,'2026-01-13 17:06:52'),
(5833,65,'2026-01-13 17:06:52'),
(6162,65,'2026-01-13 17:06:52'),
(6284,65,'2026-01-13 17:06:52'),
(6285,65,'2026-01-13 17:06:52'),
(6294,65,'2026-01-13 17:06:52'),
(5894,83,'2026-01-13 17:06:52'),
(5895,83,'2026-01-13 17:06:52'),
(5896,83,'2026-01-13 17:06:52'),
(5897,83,'2026-01-13 17:06:52'),
(5898,83,'2026-01-13 17:06:52'),
(5942,85,'2026-01-13 17:06:52'),
(5943,85,'2026-01-13 17:06:52'),
(5944,85,'2026-01-13 17:06:52'),
(5945,85,'2026-01-13 17:06:52'),
(5946,85,'2026-01-13 17:06:52'),
(5947,85,'2026-01-13 17:06:52'),
(5948,85,'2026-01-13 17:06:52'),
(5949,85,'2026-01-13 17:06:52'),
(5950,85,'2026-01-13 17:06:52'),
(5951,85,'2026-01-13 17:06:52'),
(5952,85,'2026-01-13 17:06:52'),
(5953,2,'2026-01-19 11:53:00'),
(5954,85,'2026-01-13 17:06:52'),
(5955,85,'2026-01-13 17:06:52'),
(5956,85,'2026-01-13 17:06:52'),
(6346,1,'2026-01-17 21:19:50'),
(6351,85,'2026-01-18 09:51:40'),
(6352,85,'2026-01-18 15:12:26'),
(6353,1,'2026-01-18 15:16:00'),
(6354,2,'2026-01-19 18:44:00'),
(6355,2,'2026-01-19 18:45:58'),
(6356,1,'2026-01-20 09:53:18'),
(6357,1,'2026-01-21 17:39:06'),
(6359,65,'2026-02-02 16:09:49');
/*!40000 ALTER TABLE `pages_access` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `pages_meta`
--

DROP TABLE IF EXISTS `pages_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_meta` (
  `source_id` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`source_id`,`name`),
  KEY `name` (`name`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_meta`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `pages_meta` WRITE;
/*!40000 ALTER TABLE `pages_meta` DISABLE KEYS */;
INSERT INTO `pages_meta` VALUES
(41,'adminDarkMode','0');
/*!40000 ALTER TABLE `pages_meta` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `pages_parents`
--

DROP TABLE IF EXISTS `pages_parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_parents`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `pages_parents` WRITE;
/*!40000 ALTER TABLE `pages_parents` DISABLE KEYS */;
INSERT INTO `pages_parents` VALUES
(3,2),
(22,2),
(28,2),
(29,2),
(29,28),
(30,2),
(30,28),
(31,2),
(31,28),
(5750,2),
(5750,22),
(5791,5789),
(5827,5789),
(5834,5789),
(5842,5789),
(5842,6306),
(5843,5789),
(5847,5789),
(5847,5843),
(5853,7),
(5854,7),
(5855,7),
(5856,7),
(5858,5857),
(5861,5857),
(5893,5857),
(5899,5857),
(5900,5857),
(5900,5899),
(5903,7),
(5906,5857),
(5940,7),
(5941,5857),
(5953,7),
(5958,5957),
(5959,5957),
(5959,5958),
(5960,5957),
(6268,7),
(6269,7),
(6271,7),
(6277,7),
(6288,5957),
(6288,5958),
(6306,5789),
(6308,7),
(6310,7),
(6311,7),
(6312,7),
(6313,7),
(6314,7),
(6315,7),
(6316,7),
(6317,5789),
(6317,5843),
(6328,7),
(6335,5789),
(6335,5843),
(6337,7),
(6338,5857),
(6338,5906);
/*!40000 ALTER TABLE `pages_parents` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `pages_sortfields`
--

DROP TABLE IF EXISTS `pages_sortfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_sortfields`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `pages_sortfields` WRITE;
/*!40000 ALTER TABLE `pages_sortfields` DISABLE KEYS */;
INSERT INTO `pages_sortfields` VALUES
(6185,'-name'),
(5791,'1');
/*!40000 ALTER TABLE `pages_sortfields` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `session_login_throttle`
--

DROP TABLE IF EXISTS `session_login_throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT 0,
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_login_throttle`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `session_login_throttle` WRITE;
/*!40000 ALTER TABLE `session_login_throttle` DISABLE KEYS */;
INSERT INTO `session_login_throttle` VALUES
('yb',1,1772657461);
/*!40000 ALTER TABLE `session_login_throttle` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `flags` int(11) NOT NULL DEFAULT 0,
  `cache_time` mediumint(9) NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES
(2,'admin',2,8,0,'{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1598014032,\"ns\":\"ProcessWire\"}'),
(3,'user',3,8,0,'{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),
(4,'role',4,8,0,'{\"noChildren\":1,\"parentTemplates\":[51],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"compile\":3,\"nameContentTab\":1,\"modified\":1592243099}'),
(5,'permission',5,8,0,'{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),
(1,'home',57,0,30,'{\"useRoles\":1,\"noParents\":1,\"childTemplates\":[79,56,88,61,59,26],\"slashUrls\":1,\"compile\":3,\"label\":\"Sweet home\",\"tags\":\"top\",\"modified\":1768068141,\"ns\":\"ProcessWire\",\"label5753\":\"Herm\\u00e8s \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0435\",\"label5755\":\"Herm\\u00e8s och andra\",\"label5754\":\"Herm\\u00e8s et des autres\",\"_lazy\":1,\"roles\":[37,5735,6290]}'),
(26,'search',80,0,0,'{\"noChildren\":1,\"noParents\":-1,\"parentTemplates\":[1],\"allowPageNum\":1,\"slashUrls\":1,\"noShortcut\":1,\"compile\":3,\"label\":\"Artwork Search Results\",\"tags\":\"a h d\",\"modified\":1769040991,\"ns\":\"ProcessWire\",\"_lazy\":1,\"label5753\":\"\\u0420\\u0435\\u0437\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u043f\\u043e\\u0438\\u0441\\u043a\\u0430\"}'),
(27,'basic-page',81,0,0,'{\"childTemplates\":[27],\"slashUrls\":1,\"compile\":2,\"label\":\"Basic Page\",\"modified\":1768931107,\"ns\":\"ProcessWire\",\"_lazy\":1}'),
(96,'h_size',149,0,0,'{\"parentTemplates\":[97],\"slashUrls\":1,\"compile\":3,\"label\":\"Size\",\"tags\":\"h\",\"modified\":1766754552,\"ns\":\"ProcessWire\",\"_lazy\":\"*\",\"label5753\":\"\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440\"}'),
(97,'h_sizes',150,0,0,'{\"childTemplates\":[96],\"parentTemplates\":[1],\"slashUrls\":1,\"compile\":3,\"label\":\"Sizes\",\"tags\":\"h\",\"modified\":1766754552,\"ns\":\"ProcessWire\",\"_lazy\":\"*\",\"label5753\":\"\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440\\u044b\"}'),
(45,'language',99,8,0,'{\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Language\",\"pageLabelField\":\"name\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noChangeTemplate\":1,\"noUnpublish\":1,\"compile\":3,\"nameContentTab\":1,\"modified\":1591864728}'),
(56,'countries',110,0,0,'{\"childTemplates\":[57],\"parentTemplates\":[1],\"slashUrls\":1,\"altFilename\":\"countries\",\"compile\":3,\"tags\":\"a h\",\"modified\":1766754552,\"ns\":\"ProcessWire\",\"_lazy\":\"*\"}'),
(57,'country',111,0,0,'{\"parentTemplates\":[56],\"slashUrls\":1,\"altFilename\":\"country\",\"compile\":3,\"tags\":\"a h\",\"modified\":1767773893,\"ns\":\"ProcessWire\",\"_lazy\":\"*\"}'),
(59,'spot',113,0,0,'{\"noChildren\":1,\"parentTemplates\":[1],\"slashUrls\":1,\"altFilename\":\"spot\",\"compile\":3,\"label\":\"Redirecting spot\",\"tags\":\"top\",\"modified\":1766754662,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041f\\u0440\\u0438\\u043c\\u0435\\u0440\",\"label5755\":\"Exempel\",\"label5754\":\"Exemple\",\"_lazy\":\"*\"}'),
(60,'h_artwork',114,0,0,'{\"useRoles\":1,\"editRoles\":[5735],\"createRoles\":[5735],\"noInherit\":1,\"parentTemplates\":[67,63],\"slashUrls\":1,\"altFilename\":\"h_artwork\",\"compile\":3,\"label\":\"Scarf\",\"tags\":\"h\",\"modified\":1772040721,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041f\\u043b\\u0430\\u0442\\u043e\\u043a\",\"label5754\":\"Carr\\u00e9\",\"_lazy\":1,\"roles\":[37,5735,6290]}'),
(61,'h_spot',115,0,0,'{\"childTemplates\":[67,66,64,68,65,98],\"parentTemplates\":[61],\"slashUrls\":1,\"altFilename\":\"h_spot\",\"compile\":3,\"label\":\"Herm\\u00e8s and other\",\"tags\":\"h\",\"modified\":1768926625,\"ns\":\"ProcessWire\",\"label5753\":\"Herm\\u00e8s \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0435\",\"label5755\":\"Herm\\u00e8s och andra\",\"label5754\":\"Herm\\u00e8s et des autres\",\"_lazy\":1}'),
(98,'h_collections',151,0,0,'{\"noParents\":-1,\"childTemplates\":[63],\"parentTemplates\":[61],\"slashUrls\":1,\"compile\":3,\"label\":\"Collections\",\"tags\":\"h\",\"modified\":1768929854,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041a\\u043e\\u043b\\u043b\\u0435\\u043a\\u0446\\u0438\\u0438\",\"label5755\":\"Samlingar\",\"label5754\":\"Collections\",\"_lazy\":1}'),
(63,'h_collection',117,0,0,'{\"sortfield\":221,\"childTemplates\":[60],\"parentTemplates\":[98],\"slashUrls\":1,\"altFilename\":\"h_collection\",\"compile\":3,\"label\":\"Collection\",\"tags\":\"h\",\"modified\":1768929773,\"ns\":\"ProcessWire\",\"_lazy\":1,\"label5753\":\"\\u041a\\u043e\\u043b\\u043b\\u0435\\u043a\\u0446\\u0438\\u044f\"}'),
(64,'h_persons',118,0,0,'{\"childTemplates\":[70],\"parentTemplates\":[61],\"slashUrls\":1,\"altFilename\":\"h_persons\",\"compile\":3,\"label\":\"People\",\"tags\":\"h\",\"modified\":1767864538,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041b\\u044e\\u0434\\u0438\",\"label5755\":\"M\\u00e4nniskor\",\"label5754\":\"Les gens\",\"_lazy\":1}'),
(65,'h_sellers',119,0,0,'{\"useRoles\":1,\"childTemplates\":[71],\"parentTemplates\":[61],\"slashUrls\":1,\"altFilename\":\"h_sellers\",\"compile\":3,\"label\":\"Providers\",\"tags\":\"h\",\"modified\":1771416647,\"ns\":\"ProcessWire\",\"label5753\":\"\\u0418\\u0441\\u0442\\u043e\\u0447\\u043d\\u0438\\u043a\\u0438\",\"label5755\":\"Leverant\\u00f6rer\",\"label5754\":\"Les fournisseurs\",\"_lazy\":\"*\",\"roles\":[6290]}'),
(66,'h_brands',120,0,0,'{\"childTemplates\":[69],\"parentTemplates\":[61],\"slashUrls\":1,\"altFilename\":\"h_brands\",\"compile\":3,\"label\":\"Brands\",\"tags\":\"h\",\"modified\":1767625323,\"ns\":\"ProcessWire\",\"label5753\":\"\\u0411\\u0440\\u0435\\u043d\\u0434\\u044b\",\"label5755\":\"M\\u00e4rken\",\"label5754\":\"Les marques\",\"_lazy\":1}'),
(67,'h_artworks',121,0,0,'{\"childTemplates\":[60],\"parentTemplates\":[61],\"slashUrls\":1,\"altFilename\":\"h_artworks\",\"compile\":3,\"label\":\"Scarves\",\"tags\":\"h\",\"modified\":1768381542,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041f\\u043b\\u0430\\u0442\\u043a\\u0438\",\"label5755\":\"Halsdukar\",\"label5754\":\"Carr\\u00e9s\",\"_lazy\":1}'),
(68,'h_possessions',122,0,0,'{\"useRoles\":1,\"childTemplates\":[72],\"parentTemplates\":[61],\"slashUrls\":1,\"altFilename\":\"h_possessions\",\"compile\":3,\"label\":\"Possessions\",\"tags\":\"h\",\"modified\":1766754552,\"ns\":\"ProcessWire\",\"label5753\":\"\\u0411\\u0443\\u0445\\u0433\\u0430\\u043b\\u0442\\u0435\\u0440\\u0438\\u044f\",\"label5755\":\"Fakturor\",\"label5754\":\"Les Factures\",\"_lazy\":\"*\",\"roles\":[6290]}'),
(69,'h_brand',123,0,0,'{\"useRoles\":1,\"parentTemplates\":[66],\"slashUrls\":1,\"altFilename\":\"h_brand\",\"compile\":3,\"label\":\"Brand\",\"tags\":\"h\",\"modified\":1771416647,\"ns\":\"ProcessWire\",\"_lazy\":\"*\",\"roles\":[37,5735,6290]}'),
(70,'h_person',124,0,0,'{\"useRoles\":1,\"editRoles\":[5735],\"createRoles\":[5735],\"noInherit\":1,\"parentTemplates\":[64],\"slashUrls\":1,\"altFilename\":\"h_person\",\"compile\":3,\"label\":\"Artist\",\"tags\":\"h\",\"modified\":1770669341,\"ns\":\"ProcessWire\",\"_lazy\":1,\"roles\":[37,5735,6290]}'),
(71,'h_seller',125,0,0,'{\"parentTemplates\":[65],\"slashUrls\":1,\"altFilename\":\"h_seller\",\"compile\":3,\"tags\":\"h\",\"modified\":1767776845,\"ns\":\"ProcessWire\",\"_lazy\":1}'),
(72,'h_possession',126,0,0,'{\"useRoles\":1,\"parentTemplates\":[68],\"slashUrls\":1,\"altFilename\":\"h_possession\",\"compile\":3,\"tags\":\"h\",\"modified\":1766754552,\"ns\":\"ProcessWire\",\"_lazy\":\"*\"}'),
(73,'a_school',127,0,0,'{\"slashUrls\":1,\"altFilename\":\"a_school\",\"compile\":3,\"label\":\"School\",\"tags\":\"a\",\"modified\":1769088017,\"ns\":\"ProcessWire\",\"_lazy\":1,\"label5753\":\"\\u0428\\u043a\\u043e\\u043b\\u0430\"}'),
(74,'a_person',128,0,0,'{\"slashUrls\":1,\"altFilename\":\"a_person\",\"compile\":3,\"tags\":\"a\",\"modified\":1768845630,\"ns\":\"ProcessWire\",\"_lazy\":1}'),
(75,'a_collection',129,0,0,'{\"childTemplates\":[77],\"parentTemplates\":[80,79],\"slashUrls\":1,\"altFilename\":\"a_collection\",\"compile\":3,\"tags\":\"a\",\"modified\":1768081985,\"ns\":\"ProcessWire\",\"_lazy\":1}'),
(76,'a_possession',130,0,60,'{\"sortfield\":204,\"parentTemplates\":[85],\"slashUrls\":1,\"altFilename\":\"a_possession\",\"compile\":3,\"label\":\"Possession\",\"tags\":\"a\",\"modified\":1768910465,\"ns\":\"ProcessWire\",\"_lazy\":1}'),
(77,'a_artwork',131,0,0,'{\"parentTemplates\":[84,75],\"slashUrls\":1,\"altFilename\":\"a_artwork\",\"compile\":3,\"label\":\"Painting\",\"tags\":\"a\",\"modified\":1769002983,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u0430\",\"_lazy\":1}'),
(78,'a_seller',132,0,0,'{\"slashUrls\":1,\"altFilename\":\"a_seller\",\"compile\":3,\"tags\":\"a\",\"modified\":1766754490,\"ns\":\"ProcessWire\",\"_lazy\":\"*\"}'),
(79,'a_spot',133,0,0,'{\"childTemplates\":[84,75,80,82,85,81,86,83],\"parentTemplates\":[1],\"slashUrls\":1,\"altFilename\":\"a_spot\",\"compile\":3,\"label\":\"Paintings & Painters\",\"tags\":\"a\",\"modified\":1768814738,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u044b \\u0438 \\u0425\\u0443\\u0434\\u043e\\u0436\\u043d\\u0438\\u043a\\u0438\",\"label5755\":\"M\\u00e5lningar och Konstn\\u00e4rer\",\"label5754\":\"Chefs-d\'\\u0153uvre et Artistes\",\"_lazy\":1}'),
(80,'a_collections',134,0,0,'{\"noParents\":-1,\"childTemplates\":[75],\"parentTemplates\":[79],\"slashUrls\":1,\"altFilename\":\"a_collections\",\"compile\":3,\"label\":\"Collections\",\"tags\":\"a\",\"modified\":1768037862,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041a\\u043e\\u043b\\u043b\\u0435\\u043a\\u0446\\u0438\\u0438\",\"label5755\":\"Samlingar\",\"label5754\":\"Collections\",\"_lazy\":1}'),
(81,'a_schools',135,0,0,'{\"childTemplates\":[73],\"parentTemplates\":[79],\"slashUrls\":1,\"altFilename\":\"a_schools\",\"compile\":3,\"label\":\"Schools\",\"tags\":\"a\",\"modified\":1769087130,\"ns\":\"ProcessWire\",\"label5753\":\"\\u0428\\u043a\\u043e\\u043b\\u044b \\u0436\\u0438\\u0432\\u043e\\u043f\\u0438\\u0441\\u0438\",\"label5755\":\"Skolar\",\"label5754\":\"\\u00c9coles\",\"_lazy\":1}'),
(82,'a_persons',136,0,0,'{\"childTemplates\":[74],\"parentTemplates\":[79],\"slashUrls\":1,\"altFilename\":\"a_persons\",\"compile\":3,\"label\":\"Painters\",\"tags\":\"a\",\"modified\":1767944662,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u0438\\u0438\",\"label5755\":\"Konstn\\u00e4rer\",\"label5754\":\"Les Artistes\",\"_lazy\":1}'),
(83,'a_sellers',137,0,0,'{\"useRoles\":1,\"childTemplates\":[78],\"parentTemplates\":[79],\"slashUrls\":1,\"altFilename\":\"a_sellers\",\"compile\":3,\"label\":\"My art depositories\",\"tags\":\"a\",\"modified\":1769102797,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041c\\u043e\\u0438 \\u0438\\u0441\\u0442\\u043e\\u0447\\u043d\\u0438\\u043a\\u0438\",\"label5755\":\"Mina konstposter\",\"label5754\":\"Les d\\u00e9p\\u00f4ts d\'art\",\"_lazy\":1,\"roles\":[6290]}'),
(84,'a_artworks',138,0,0,'{\"childTemplates\":[77],\"parentTemplates\":[79],\"slashUrls\":1,\"altFilename\":\"a_artworks\",\"compile\":3,\"label\":\"Paintings\",\"tags\":\"a\",\"modified\":1769080021,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u044b\",\"label5755\":\"M\\u00e5lningar\",\"label5754\":\"Peintures\",\"_lazy\":1}'),
(85,'a_possessions',139,0,0,'{\"useRoles\":1,\"childTemplates\":[76],\"parentTemplates\":[79],\"slashUrls\":1,\"altFilename\":\"a_possessions\",\"compile\":3,\"label\":\"Possessions\",\"tags\":\"a\",\"modified\":1771416647,\"ns\":\"ProcessWire\",\"label5753\":\"\\u0411\\u0443\\u0445\\u0433\\u0430\\u043b\\u0442\\u0435\\u0440\\u0438\\u044f\",\"label5755\":\"Facturen\",\"label5754\":\"Factures d\'achat\",\"_lazy\":\"*\",\"roles\":[6290]}'),
(87,'d_person',141,0,0,'{\"slashUrls\":1,\"altFilename\":\"d_person\",\"compile\":3,\"tags\":\"d\",\"modified\":1768203123,\"ns\":\"ProcessWire\",\"_lazy\":1}'),
(88,'d_spot',142,0,0,'{\"childTemplates\":[90,89,91],\"parentTemplates\":[1],\"slashUrls\":1,\"altFilename\":\"d_spot\",\"compile\":3,\"label\":\"Dymkovo toys\",\"tags\":\"d\",\"modified\":1766754413,\"ns\":\"ProcessWire\",\"label5753\":\"\\u0414\\u044b\\u043c\\u043a\\u043e\\u0432\\u0441\\u043a\\u0430\\u044f \\u0438\\u0433\\u0440\\u0443\\u0448\\u043a\\u0430\",\"label5755\":\"Dymkovo leksaker\",\"label5754\":\"Dymkovo jouets\",\"_lazy\":\"*\"}'),
(89,'d_persons',143,0,0,'{\"childTemplates\":[87],\"parentTemplates\":[88],\"slashUrls\":1,\"altFilename\":\"d_persons\",\"compile\":3,\"label\":\"People\",\"tags\":\"d\",\"modified\":1766754413,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u0438\\u0438\",\"label5754\":\"Les gents\",\"_lazy\":\"*\"}'),
(90,'d_artworks',144,0,0,'{\"childTemplates\":[92],\"parentTemplates\":[88],\"slashUrls\":1,\"altFilename\":\"d_artworks\",\"compile\":3,\"tags\":\"d\",\"modified\":1766754413,\"ns\":\"ProcessWire\",\"_lazy\":\"*\"}'),
(92,'d_artwork',146,0,0,'{\"parentTemplates\":[90],\"slashUrls\":1,\"altFilename\":\"d_artwork\",\"compile\":3,\"label\":\"\\u0418\\u0433\\u0440\\u0443\\u0448\\u043a\\u0430\",\"tags\":\"d\",\"modified\":1766754413,\"ns\":\"ProcessWire\",\"label5753\":\"\\u0418\\u0433\\u0440\\u0443\\u0448\\u043a\\u0430\",\"_lazy\":\"*\"}');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-03-04 23:28:29
