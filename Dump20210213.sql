-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: test2
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
-- Table structure for table `locatie_fabrica`
--

DROP TABLE IF EXISTS `locatie_fabrica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locatie_fabrica` (
  `idLocatie_Fabrica` bigint unsigned NOT NULL AUTO_INCREMENT,
  `Adresa` varchar(45) DEFAULT NULL,
  `CodPostal` int DEFAULT NULL,
  `Coordonate` int DEFAULT NULL,
  PRIMARY KEY (`idLocatie_Fabrica`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locatie_fabrica`
--

LOCK TABLES `locatie_fabrica` WRITE;
/*!40000 ALTER TABLE `locatie_fabrica` DISABLE KEYS */;
INSERT INTO `locatie_fabrica` VALUES (9,'Bucuresti',78421,442249),(10,'Ilfov',322573,127457);
/*!40000 ALTER TABLE `locatie_fabrica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masini`
--

DROP TABLE IF EXISTS `masini`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masini` (
  `idMasina` bigint unsigned NOT NULL AUTO_INCREMENT,
  `Marca` varchar(45) DEFAULT NULL,
  `Model` varchar(45) DEFAULT NULL,
  `AnulFabricatiei` int DEFAULT NULL,
  `Pret` int DEFAULT NULL,
  `Combustibil` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMasina`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masini`
--

LOCK TABLES `masini` WRITE;
/*!40000 ALTER TABLE `masini` DISABLE KEYS */;
INSERT INTO `masini` VALUES (18,'Mercedes','Sprinter',2006,10000,'benzina'),(19,'Audi','A6',2017,18000,'motorina'),(20,'Renault','Clio',2005,7000,'benzina');
/*!40000 ALTER TABLE `masini` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producatori`
--

DROP TABLE IF EXISTS `producatori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producatori` (
  `idProducator` bigint unsigned NOT NULL AUTO_INCREMENT,
  `idMasina` bigint unsigned DEFAULT NULL,
  `idLocatie_Fabrica` bigint unsigned DEFAULT NULL,
  `NumeProducator` varchar(45) DEFAULT NULL,
  `CifraDeAfaceri` int DEFAULT NULL,
  `CotaDePiata` int DEFAULT NULL,
  PRIMARY KEY (`idProducator`),
  KEY `fk_producatori_1_idx` (`idMasina`),
  KEY `fk_producatori_2_idx` (`idLocatie_Fabrica`),
  CONSTRAINT `fk_producatori_1` FOREIGN KEY (`idMasina`) REFERENCES `masini` (`idMasina`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_producatori_2` FOREIGN KEY (`idLocatie_Fabrica`) REFERENCES `locatie_fabrica` (`idLocatie_Fabrica`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producatori`
--

LOCK TABLES `producatori` WRITE;
/*!40000 ALTER TABLE `producatori` DISABLE KEYS */;
INSERT INTO `producatori` VALUES (7,18,9,'Mercedes',323643,49),(8,19,10,'Audi',214642,33);
/*!40000 ALTER TABLE `producatori` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-13 17:06:21
