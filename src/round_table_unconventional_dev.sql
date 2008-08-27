-- MySQL dump 10.11
--
-- Host: localhost    Database: round_table_unconventional_dev
-- ------------------------------------------------------
-- Server version	5.0.45

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
-- Table structure for table `castle`
--

DROP TABLE IF EXISTS `castle`;
CREATE TABLE `castle` (
  `id` bigint(20) NOT NULL auto_increment,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `knight_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKAE7CB4F889B7B6BA` (`knight_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `castle`
--

LOCK TABLES `castle` WRITE;
/*!40000 ALTER TABLE `castle` DISABLE KEYS */;
INSERT INTO `castle` VALUES (1,0,'Camelot','Far, Far Away',1);
/*!40000 ALTER TABLE `castle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knights`
--

DROP TABLE IF EXISTS `knights`;
CREATE TABLE `knights` (
  `knight_id` bigint(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dragon_count` bigint(20) NOT NULL,
  PRIMARY KEY  (`knight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `knights`
--

LOCK TABLES `knights` WRITE;
/*!40000 ALTER TABLE `knights` DISABLE KEYS */;
INSERT INTO `knights` VALUES (1,'King Arthur',247),(2,'Sir Lancelot',0);
/*!40000 ALTER TABLE `knights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sword_inventory`
--

DROP TABLE IF EXISTS `sword_inventory`;
CREATE TABLE `sword_inventory` (
  `serial_number` bigint(20) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `assignee` bigint(11) default NULL,
  PRIMARY KEY  (`serial_number`),
  KEY `assignee` (`assignee`),
  CONSTRAINT `sword_inventory_ibfk_1` FOREIGN KEY (`assignee`) REFERENCES `knights` (`knight_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sword_inventory`
--

LOCK TABLES `sword_inventory` WRITE;
/*!40000 ALTER TABLE `sword_inventory` DISABLE KEYS */;
INSERT INTO `sword_inventory` VALUES ('20416734','Ginsu',2),('90000000001','Wolfgang Puck',2),('320000000000','Excalibur Limited',1);
/*!40000 ALTER TABLE `sword_inventory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2008-02-10 17:29:17
