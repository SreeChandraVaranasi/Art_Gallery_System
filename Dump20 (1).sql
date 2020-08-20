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
  `email` varchar(30) NOT NULL,
  `a_name` varchar(20) DEFAULT NULL,
  `phone` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES ('kalyan@gmail.com','kalyan',9441556781),('new@gmail.com','new',NULL),('ram@gmail.com','ram',9900886677),('sara@gmail.com','sarath',9998885563),('shiv@gmail.com','Shivani Singh',8765432123),('siri@gmail.com','Siri',9876543212),('vidya@gmail.com','vidya',9988776655),('wert@gmail.com','sdfs',9988776655);
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bought_by`
--

DROP TABLE IF EXISTS `bought_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bought_by` (
  `c_id` int DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `cost` int DEFAULT NULL,
  KEY `c_id` (`c_id`),
  CONSTRAINT `bought_by_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`)
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
  `c_id` int NOT NULL,
  `c_name` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
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
-- Table structure for table `exhibition`
--

DROP TABLE IF EXISTS `exhibition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exhibition` (
  `e_id` int NOT NULL,
  `e_name` varchar(10) DEFAULT NULL,
  `e_type` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibition`
--

LOCK TABLES `exhibition` WRITE;
/*!40000 ALTER TABLE `exhibition` DISABLE KEYS */;
INSERT INTO `exhibition` VALUES (123,'NAMPALLY',1,'2020-08-23','2020-08-25');
/*!40000 ALTER TABLE `exhibition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery` (
  `g_id` int NOT NULL,
  `g_name` varchar(20) DEFAULT NULL,
  `landmark` varchar(15) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`g_id`),
  KEY `gallery_ibfk_1` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `url` varchar(2000) DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `c_id` int DEFAULT NULL,
  `c_name` varchar(20) DEFAULT NULL,
  `count` int DEFAULT NULL,
  PRIMARY KEY (`title`)
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
  `email` varchar(50) NOT NULL,
  `usertype` int DEFAULT NULL,
  `pwd` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('abhisign@gmail.com',2,'singup'),('cust@gmail.com',2,'1234'),('kalyan@gmail.com',1,'kalyan123'),('new@gmail.com',1,'1234'),('ram@gmail.com',1,'ram'),('sara@gmail.com',1,'sara123'),('shiv123@gmail.com',2,'11223'),('shiv@gmail.com',1,'2345'),('siri@gmail.com',1,'1234'),('vidya@gmail.com',1,'34567'),('wert@gmail.com',1,'1234');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organise`
--

DROP TABLE IF EXISTS `organise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organise` (
  `g_id` int DEFAULT NULL,
  `e_id` int DEFAULT NULL,
  KEY `g_id` (`g_id`),
  KEY `e_id` (`e_id`),
  CONSTRAINT `organise_ibfk_1` FOREIGN KEY (`g_id`) REFERENCES `gallery` (`g_id`),
  CONSTRAINT `organise_ibfk_2` FOREIGN KEY (`e_id`) REFERENCES `exhibition` (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organise`
--

LOCK TABLES `organise` WRITE;
/*!40000 ALTER TABLE `organise` DISABLE KEYS */;
/*!40000 ALTER TABLE `organise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `painting`
--

DROP TABLE IF EXISTS `painting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `painting` (
  `title` varchar(50) NOT NULL,
  `id` varchar(50) DEFAULT NULL,
  `year` year DEFAULT NULL,
  `url` varchar(1000) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `painting`
--

LOCK TABLES `painting` WRITE;
/*!40000 ALTER TABLE `painting` DISABLE KEYS */;
INSERT INTO `painting` VALUES ('krishna','abc',2020,'https://d2qs8jo5daq3wi.cloudfront.net/photos/275625/full/IMG_20200310_140012.jpg?1584423571','Oil painting','kalyan@gmail.com'),('Ganesh','abc',2015,'https://images-na.ssl-images-amazon.com/images/I/51xTq3TuzAL._SY450_.jpg','Oil painting',NULL),('butterfly','abc',2018,'https://storage.googleapis.com/ehimages/2020/3/18/img_b40c24bec4e449a375b7c0c28168b553_1584542046663_processed_original.jpg','Oil painting','new@gmail.com');
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

-- Dump completed on 2020-08-20 15:25:19
