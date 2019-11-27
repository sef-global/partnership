CREATE DATABASE  IF NOT EXISTS `sef_partnership` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sef_partnership`;
-- MySQL dump 10.13  Distrib 8.0.14, for macos10.14 (x86_64)
--
-- Host: localhost    Database: sef_partnership
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `engagement`
--

DROP TABLE IF EXISTS `engagement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `engagement` (
                              `event_id` int(11) NOT NULL,
                              `interval_value` int(11) NOT NULL,
                              `society_id` int(11) NOT NULL,
                              `ip` varchar(39) NOT NULL,
                              `created_at` bigint(20) NOT NULL,
                              PRIMARY KEY (`event_id`,`interval_value`,`ip`),
                              KEY `FK2s9vwhgd1jo7e1445581i7hsn` (`society_id`),
                              CONSTRAINT `FK2s9vwhgd1jo7e1445581i7hsn` FOREIGN KEY (`society_id`) REFERENCES `society` (`id`),
                              CONSTRAINT `FKom1f1n6vcem0rnyhg8bfw1h8s` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `event` (
                         `id` int(11) NOT NULL AUTO_INCREMENT,
                         `created_at` bigint(20) NOT NULL,
                         `event_time` bigint(20) NOT NULL,
                         `url` varchar(512) NOT NULL,
                         `name` varchar(100) NOT NULL,
                         `status` varchar(10) NOT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `society`
--

DROP TABLE IF EXISTS `society`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `society` (
                           `id` int(11) NOT NULL AUTO_INCREMENT,
                           `image_url` varchar(512) DEFAULT NULL,
                           `name` varchar(255) DEFAULT NULL,
                           `status` varchar(10) DEFAULT NULL,
                           `university_id` int(11) NOT NULL,
                           `created_at` bigint(20) NOT NULL,
                           PRIMARY KEY (`id`),
                           KEY `FK57vix7ic8rb7sl6mn6hkbmj9a` (`university_id`),
                           CONSTRAINT `FK57vix7ic8rb7sl6mn6hkbmj9a` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `university`
--

DROP TABLE IF EXISTS `university`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `university` (
                              `id` int(11) NOT NULL AUTO_INCREMENT,
                              `ambassador_email` varchar(255) DEFAULT NULL,
                              `ambassador_name` varchar(255) DEFAULT NULL,
                              `image_url` varchar(512) DEFAULT NULL,
                              `name` varchar(255) DEFAULT NULL,
                              `status` varchar(10) DEFAULT NULL,
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-27 10:01:52
