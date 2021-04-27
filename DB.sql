CREATE DATABASE  IF NOT EXISTS `inmuebles` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `inmuebles`;
-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: inmuebles
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `amenidades`
--

DROP TABLE IF EXISTS `amenidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenidades` (
  `id_amenidades` int NOT NULL AUTO_INCREMENT,
  `amenidades_list` varchar(45) NOT NULL,
  `fk_amenidades` int NOT NULL,
  PRIMARY KEY (`id_amenidades`),
  KEY `fk_amenidades_idx` (`fk_amenidades`),
  CONSTRAINT `fk_amenidades` FOREIGN KEY (`fk_amenidades`) REFERENCES `inmueble` (`id_inmueble`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenidades`
--

LOCK TABLES `amenidades` WRITE;
/*!40000 ALTER TABLE `amenidades` DISABLE KEYS */;
INSERT INTO `amenidades` VALUES (1,'asdsad8',0);
/*!40000 ALTER TABLE `amenidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descripcion`
--

DROP TABLE IF EXISTS `descripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `descripcion` (
  `id_desc_inmueble_bas` int NOT NULL AUTO_INCREMENT,
  `tamaño` int NOT NULL,
  `tamaño_patio` int NOT NULL,
  `recamaras` varchar(45) NOT NULL,
  `baños` varchar(45) NOT NULL,
  `estacionamientos` varchar(45) NOT NULL,
  `mascotas` varchar(45) NOT NULL,
  `desc_inmueble_bascol` varchar(45) NOT NULL,
  `fk_descripcion` int NOT NULL,
  PRIMARY KEY (`id_desc_inmueble_bas`),
  KEY `fk_descripcion_idx` (`fk_descripcion`),
  CONSTRAINT `fk_descripcion` FOREIGN KEY (`fk_descripcion`) REFERENCES `inmueble` (`id_inmueble`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descripcion`
--

LOCK TABLES `descripcion` WRITE;
/*!40000 ALTER TABLE `descripcion` DISABLE KEYS */;
INSERT INTO `descripcion` VALUES (1,324,234,'324','234','234','3','sdfsd',0);
/*!40000 ALTER TABLE `descripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle`
--

DROP TABLE IF EXISTS `detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle` (
  `id_detalle` int NOT NULL AUTO_INCREMENT,
  `detalle_list` varchar(45) NOT NULL,
  `fk_detalle` int NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `fk_detalle_idx` (`fk_detalle`),
  CONSTRAINT `fk_detalle` FOREIGN KEY (`fk_detalle`) REFERENCES `inmueble` (`id_inmueble`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle`
--

LOCK TABLES `detalle` WRITE;
/*!40000 ALTER TABLE `detalle` DISABLE KEYS */;
INSERT INTO `detalle` VALUES (1,'sdfsdf',0);
/*!40000 ALTER TABLE `detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagenes`
--

DROP TABLE IF EXISTS `imagenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagenes` (
  `id_imagenes` int NOT NULL AUTO_INCREMENT,
  `list_img` varchar(45) NOT NULL,
  `fk_imagenes` int NOT NULL,
  PRIMARY KEY (`id_imagenes`),
  KEY `fk_imagenes_idx` (`fk_imagenes`),
  CONSTRAINT `fk_imagenes` FOREIGN KEY (`fk_imagenes`) REFERENCES `inmueble` (`id_inmueble`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagenes`
--

LOCK TABLES `imagenes` WRITE;
/*!40000 ALTER TABLE `imagenes` DISABLE KEYS */;
INSERT INTO `imagenes` VALUES (1,'asdsad',0);
/*!40000 ALTER TABLE `imagenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inmueble`
--

DROP TABLE IF EXISTS `inmueble`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inmueble` (
  `id_inmueble` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) NOT NULL,
  `codigo_porpiedad` varchar(45) NOT NULL,
  `costo` int NOT NULL,
  `img_principal` varchar(45) NOT NULL,
  `ubicacion` varchar(45) NOT NULL,
  `imagenes` varchar(45) NOT NULL,
  `mantenimiento` varchar(45) NOT NULL,
  `detalle` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `amenidades` varchar(45) NOT NULL,
  PRIMARY KEY (`id_inmueble`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inmueble`
--

LOCK TABLES `inmueble` WRITE;
/*!40000 ALTER TABLE `inmueble` DISABLE KEYS */;
INSERT INTO `inmueble` VALUES (1,'asd','asd',234,'8','1','1','1','1','1','1'),(2,'','dfghh',445,'4','','','','','',''),(3,'','',0,'4','','','','','','');
/*!40000 ALTER TABLE `inmueble` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantenimiento`
--

DROP TABLE IF EXISTS `mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantenimiento` (
  `id_mantenimiento` int NOT NULL AUTO_INCREMENT,
  `tipo_mantenimiento` varchar(45) NOT NULL,
  `cuota_incluida` varchar(45) NOT NULL,
  `precio` int NOT NULL,
  `fk_mantenimiento` int NOT NULL,
  PRIMARY KEY (`id_mantenimiento`),
  KEY `fk_mantenimiento_idx` (`fk_mantenimiento`),
  CONSTRAINT `fk_mantenimiento` FOREIGN KEY (`fk_mantenimiento`) REFERENCES `inmueble` (`id_inmueble`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantenimiento`
--

LOCK TABLES `mantenimiento` WRITE;
/*!40000 ALTER TABLE `mantenimiento` DISABLE KEYS */;
INSERT INTO `mantenimiento` VALUES (1,'asd','asd',234,0);
/*!40000 ALTER TABLE `mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubicacion`
--

DROP TABLE IF EXISTS `ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ubicacion` (
  `id_ubicacion` int NOT NULL AUTO_INCREMENT,
  `latitud` varchar(45) NOT NULL,
  `longitud` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `alcaldia` varchar(45) NOT NULL,
  `colonia` varchar(45) NOT NULL,
  `codigo_postal` varchar(45) NOT NULL,
  `num_puerta` varchar(45) NOT NULL,
  `fk_ubicacion` int NOT NULL,
  PRIMARY KEY (`id_ubicacion`),
  KEY `fk_ubicacion_idx` (`fk_ubicacion`),
  CONSTRAINT `fk_ubicacion` FOREIGN KEY (`fk_ubicacion`) REFERENCES `inmueble` (`id_inmueble`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubicacion`
--

LOCK TABLES `ubicacion` WRITE;
/*!40000 ALTER TABLE `ubicacion` DISABLE KEYS */;
INSERT INTO `ubicacion` VALUES (1,'324','234','asdf','asd','asd','324','234',0);
/*!40000 ALTER TABLE `ubicacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-27 17:35:24
