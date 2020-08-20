-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist` (
  `email` varchar(45) NOT NULL,
  `a_name` varchar(45) DEFAULT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  `wallet` decimal(10,0) DEFAULT NULL,
  `count` int DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES ('aalu@gmail.com','aalu','aalu123',0,0),('kalyan@gmail.com','kalyan',NULL,NULL,NULL),('new@gmail.com','new',NULL,NULL,NULL),('raj@gmail.com','raj',NULL,NULL,NULL),('ram@gmail.com','ram',NULL,NULL,NULL),('sara@gmail.com','sarath',NULL,NULL,NULL),('shiv@gmail.com','Shivani Singh',NULL,NULL,NULL),('shiva@gmail.com','sjd',NULL,NULL,NULL),('siri@gmail.com','Siri',NULL,NULL,NULL),('vidya@gmail.com','vidya',NULL,NULL,NULL),('wert@gmail.com','sdfs',NULL,NULL,NULL);
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bought_by`
--

DROP TABLE IF EXISTS `bought_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bought_by` (
  `url` varchar(1000) DEFAULT NULL,
  `c_email` varchar(45) DEFAULT NULL,
  KEY `fk_url_bought_idx` (`url`),
  KEY `fk_email_customer_idx` (`c_email`),
  CONSTRAINT `fk_email_customer` FOREIGN KEY (`c_email`) REFERENCES `customer` (`c_email`),
  CONSTRAINT `fk_url_bought` FOREIGN KEY (`url`) REFERENCES `painting` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bought_by`
--

LOCK TABLES `bought_by` WRITE;
/*!40000 ALTER TABLE `bought_by` DISABLE KEYS */;
/*!40000 ALTER TABLE `bought_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `c_name` varchar(45) DEFAULT NULL,
  `c_email` varchar(45) NOT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`c_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery` (
  `g_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`g_name`),
  KEY `fk_email_idx` (`email`),
  CONSTRAINT `fk_email` FOREIGN KEY (`email`) REFERENCES `artist` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` VALUES ('aalu1','aalu@gmail.com');
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `url` varchar(1000) DEFAULT NULL,
  `c_email` varchar(45) DEFAULT NULL,
  `count` int DEFAULT NULL,
  KEY `fk_url_idx` (`url`),
  KEY `fk_email_idx` (`c_email`),
  CONSTRAINT `fk_email_likes` FOREIGN KEY (`c_email`) REFERENCES `customer` (`c_email`),
  CONSTRAINT `fk_url` FOREIGN KEY (`url`) REFERENCES `painting` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `email` varchar(45) NOT NULL,
  `usertype` int DEFAULT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('abhisign@gmail.com',2,'singup'),('chandra@gmail.com',2,'chandra'),('cust@gmail.com',2,'1234'),('kalyan@gmail.com',1,'kalyan123'),('new@gmail.com',1,'1234'),('ram@gmail.com',1,'ram'),('sara@gmail.com',1,'sara123'),('shiv123@gmail.com',2,'11223'),('shiv@gmail.com',1,'2345'),('siri@gmail.com',1,'1234'),('vidya@gmail.com',1,'34567'),('wert@gmail.com',1,'1234');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `painting`
--

DROP TABLE IF EXISTS `painting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `painting` (
  `url` varchar(1000) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `g_name` varchar(45) DEFAULT NULL,
  `cost` decimal(5,0) DEFAULT NULL,
  PRIMARY KEY (`url`),
  KEY `fk_g_name_idx` (`g_name`),
  CONSTRAINT `fk_g_name` FOREIGN KEY (`g_name`) REFERENCES `gallery` (`g_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `painting`
--

LOCK TABLES `painting` WRITE;
/*!40000 ALTER TABLE `painting` DISABLE KEYS */;
INSERT INTO `painting` VALUES ('www.google.com','rose','2020','aalu1',NULL),('www.google.comfjdfjhjkff','jasmine','2020','aalu1',NULL),('www.google.comfjdfjhjkfgghff','jasmine123','2020','aalu1',NULL);
/*!40000 ALTER TABLE `painting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-20 17:57:49
