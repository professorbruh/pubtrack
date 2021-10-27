-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: pubtrack
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `Ref_ID` varchar(5) NOT NULL,
  `Rev_ID` varchar(5) NOT NULL,
  `comments` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Ref_ID`,`Rev_ID`),
  KEY `Rev_ID` (`Rev_ID`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`Ref_ID`) REFERENCES `paper` (`Ref_ID`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`Rev_ID`) REFERENCES `reviewer` (`Rev_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES ('M0001','R0001','The paper was legible and new in the field.'),('M0002','R0001','The paper was refreshing and the concept was understandable');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editor`
--

DROP TABLE IF EXISTS `editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editor` (
  `Pub_ID` varchar(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `type` varchar(15) NOT NULL,
  `pub_name` varchar(50) NOT NULL,
  `scopus_index` varchar(5) NOT NULL,
  `subscription_type` varchar(15) DEFAULT NULL,
  `Domain` varchar(25) NOT NULL,
  `place` varchar(50) DEFAULT NULL,
  `conf_date` date DEFAULT NULL,
  PRIMARY KEY (`Pub_ID`),
  KEY `editor_ibfk_1` (`email`),
  CONSTRAINT `editor_ibfk_1` FOREIGN KEY (`email`) REFERENCES `login` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editor`
--

LOCK TABLES `editor` WRITE;
/*!40000 ALTER TABLE `editor` DISABLE KEYS */;
INSERT INTO `editor` VALUES ('P0001','indianjournalcst@gmail.com','Journal','Indian Journal of Computer Science and Technology','true','bianually','Computer Science',NULL,NULL);
/*!40000 ALTER TABLE `editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inprogress`
--

DROP TABLE IF EXISTS `inprogress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inprogress` (
  `Ref_ID` varchar(5) NOT NULL,
  `stage` decimal(1,0) DEFAULT NULL,
  PRIMARY KEY (`Ref_ID`),
  CONSTRAINT `inprogress_ibfk_1` FOREIGN KEY (`Ref_ID`) REFERENCES `paper` (`Ref_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inprogress`
--

LOCK TABLES `inprogress` WRITE;
/*!40000 ALTER TABLE `inprogress` DISABLE KEYS */;
INSERT INTO `inprogress` VALUES ('M0001',1);
/*!40000 ALTER TABLE `inprogress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `user_type` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pswd` varchar(20) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('publisher','aisociety@gmail.com','aisociety'),('publisher','indianjournalcst@gmail.com','Saladfox@123'),('reviewer','sandhyashankar@gmail.com','Saladfox@789'),('student','sivasininetrasa@gmail.com','Saladfox@456');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paper`
--

DROP TABLE IF EXISTS `paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paper` (
  `Ref_ID` varchar(5) NOT NULL,
  `Pub_ID` varchar(5) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `domain` varchar(25) DEFAULT NULL,
  `date_of_submission` date DEFAULT NULL,
  `plag_percent` decimal(2,0) DEFAULT NULL,
  `manuscript` varchar(250) DEFAULT NULL,
  `plag_report` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`Ref_ID`),
  KEY `Pub_ID` (`Pub_ID`),
  CONSTRAINT `paper_ibfk_1` FOREIGN KEY (`Pub_ID`) REFERENCES `editor` (`Pub_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paper`
--

LOCK TABLES `paper` WRITE;
/*!40000 ALTER TABLE `paper` DISABLE KEYS */;
INSERT INTO `paper` VALUES ('M0001','P0001','Behaviour analysis of driver using OBD data','Computer Science','2021-09-11',12,NULL,NULL),('M0002','P0001','Intelligent Fleet Management','Machine Learning','2021-01-05',16,NULL,NULL);
/*!40000 ALTER TABLE `paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paper_author`
--

DROP TABLE IF EXISTS `paper_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paper_author` (
  `Ref_ID` varchar(5) NOT NULL,
  `Stud_ID` varchar(5) NOT NULL,
  PRIMARY KEY (`Ref_ID`,`Stud_ID`),
  KEY `Stud_ID` (`Stud_ID`),
  CONSTRAINT `paper_author_ibfk_1` FOREIGN KEY (`Ref_ID`) REFERENCES `paper` (`Ref_ID`),
  CONSTRAINT `paper_author_ibfk_2` FOREIGN KEY (`Stud_ID`) REFERENCES `student` (`Stud_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paper_author`
--

LOCK TABLES `paper_author` WRITE;
/*!40000 ALTER TABLE `paper_author` DISABLE KEYS */;
INSERT INTO `paper_author` VALUES ('M0001','S0001'),('M0002','S0001');
/*!40000 ALTER TABLE `paper_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `published`
--

DROP TABLE IF EXISTS `published`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `published` (
  `ISBN` decimal(12,0) NOT NULL,
  `Ref_ID` varchar(5) DEFAULT NULL,
  `Date_of_pub` date DEFAULT NULL,
  PRIMARY KEY (`ISBN`),
  KEY `Ref_ID` (`Ref_ID`),
  CONSTRAINT `published_ibfk_1` FOREIGN KEY (`Ref_ID`) REFERENCES `paper` (`Ref_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `published`
--

LOCK TABLES `published` WRITE;
/*!40000 ALTER TABLE `published` DISABLE KEYS */;
INSERT INTO `published` VALUES (123456789012,'M0002','2021-04-04');
/*!40000 ALTER TABLE `published` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewer`
--

DROP TABLE IF EXISTS `reviewer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviewer` (
  `Rev_ID` varchar(5) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `rev_name` varchar(20) DEFAULT NULL,
  `Domain` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Rev_ID`),
  KEY `email` (`email`),
  CONSTRAINT `reviewer_ibfk_1` FOREIGN KEY (`email`) REFERENCES `login` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewer`
--

LOCK TABLES `reviewer` WRITE;
/*!40000 ALTER TABLE `reviewer` DISABLE KEYS */;
INSERT INTO `reviewer` VALUES ('R0001','sandhyashankar@gmail.com','Sandhya Shankar','Computer Science');
/*!40000 ALTER TABLE `reviewer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `Stud_ID` varchar(5) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `Stud_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Stud_ID`),
  KEY `email` (`email`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`email`) REFERENCES `login` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('S0001','sivasininetrasa@gmail.com','Sivasini Netra ');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-27 18:27:44
