-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: dkcc
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `dangkycungcap`
--

DROP TABLE IF EXISTS `dangkycungcap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dangkycungcap` (
  `MaDKCC` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `MaNhaCC` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `MaLoaiDV` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DongXe` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `MaMP` int DEFAULT NULL,
  `NgayBatDauCungCap` date DEFAULT NULL,
  `NgayKetThucCungCap` date DEFAULT NULL,
  `SoLuongXeDangKy` int DEFAULT NULL,
  PRIMARY KEY (`MaDKCC`),
  KEY `MaNhaCC` (`MaNhaCC`),
  KEY `MaLoaiDV` (`MaLoaiDV`),
  KEY `DongXe` (`DongXe`),
  KEY `MaMP` (`MaMP`),
  CONSTRAINT `dangkycungcap_ibfk_1` FOREIGN KEY (`MaNhaCC`) REFERENCES `nhacungcap` (`MaNhaCC`),
  CONSTRAINT `dangkycungcap_ibfk_2` FOREIGN KEY (`MaLoaiDV`) REFERENCES `loaidichvu` (`MaLoaiDV`),
  CONSTRAINT `dangkycungcap_ibfk_3` FOREIGN KEY (`DongXe`) REFERENCES `dongxe` (`DongXe`),
  CONSTRAINT `dangkycungcap_ibfk_4` FOREIGN KEY (`MaMP`) REFERENCES `mucphi` (`MaMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dangkycungcap`
--

LOCK TABLES `dangkycungcap` WRITE;
/*!40000 ALTER TABLE `dangkycungcap` DISABLE KEYS */;
INSERT INTO `dangkycungcap` VALUES ('01','CC01','DV01','Hiace',1,'2015-11-20','2016-12-20',10),('02','CC02','DV01','Cerato',1,'2015-11-20','2016-12-20',20),('03','CC01','DV01','Cerato',1,'2015-11-20','2016-12-20',10),('04','CC03','DV01','Ferrari',1,'2015-11-20','2016-12-20',10);
/*!40000 ALTER TABLE `dangkycungcap` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-22 11:58:57
