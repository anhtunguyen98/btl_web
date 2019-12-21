-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: baitaplon
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `street_address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid_idx` (`userid`),
  CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,'Tú','Nguyễn','trần phú','Hà Nội','0362796565','',1),(2,'Tú','Nguyễn','trần phú','Hà Nội','0362796565','',1),(3,'linh','Nguyễn','ba vì','Hà Nội','0362796565','',1),(4,'Nguyen','Dat','Donganh','Hanoi','0987654321','',8),(5,'AA','B','ABC','Ha Noi','123456','',9),(6,'Hiền','Lê','PTIT','New York','1234567890','Giao cho Tú',10),(7,'A','B','HN','HN','12245','',9),(8,'Tú','Nguyễn','trần phú','Hà Nội','0362796565','',1);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) DEFAULT NULL,
  `billid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productid_idx` (`productid`),
  KEY `billid_idx` (`billid`),
  CONSTRAINT `billid` FOREIGN KEY (`billid`) REFERENCES `bill` (`id`),
  CONSTRAINT `productid` FOREIGN KEY (`productid`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (2,1,1,3),(3,2,1,3),(4,1,2,3),(5,2,3,3),(6,7,3,3),(7,1,4,1),(8,2,4,2),(9,1,5,1),(10,4,6,1),(11,2,7,3),(12,24,7,5),(13,4,8,2);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `phukien` varchar(1000) DEFAULT NULL,
  `baohanh` varchar(1000) DEFAULT NULL,
  `thongtin` varchar(1000) DEFAULT NULL,
  `gia` int(11) DEFAULT NULL,
  `linkimg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Macbook Air 12 inch 2017 – Like new','Phụ kiện: Theo máy có sạc zin 60W','Bảo hành: Bảo hành toàn bộ máy: 12 tháng','CPU: Intel, Core i5 Broadwell, 5257U, 2.70 GHz',24000000,'./img/hang11.jpg;./img/hang21.jpg;./img/hang13.jpg;./img/hang24.jpg;./img/hang22.jpg'),(2,'Macbook Air 15 inch 2017 – Like new','Phụ kiện: Theo máy có sạc zin 60W','Bảo hành: Bảo hành toàn bộ máy: 12 tháng','CPU: Intel, Core i5 Broadwell, 5257U, 2.70 GHz',24000000,'./img/hang12.jpg;./img/hang21.jpg;./img/hang13.jpg;./img/hang24.jpg;./img/hang22.jpg'),(3,'Macbook Air 15 inch 2016- Like new','Phụ kiện: Theo máy có sạc zin 60W','Bảo hành: Bảo hành toàn bộ máy: 12 tháng','CPU: Intel, Core i5 Broadwell, 5257U, 2.70 GHz',24000000,'./img/hang13.jpg;./img/hang21.jpg;./img/hang13.jpg;./img/hang24.jpg;./img/hang22.jpg'),(4,'Macbook Air 15 inch 2016- Like new','Phụ kiện: Theo máy có sạc zin 60W','Bảo hành: Bảo hành toàn bộ máy: 12 tháng','CPU: Intel, Core i5 Broadwell, 5257U, 2.70 GHz',24000000,'./img/hang14.jpg;./img/hang21.jpg;./img/hang13.jpg;./img/hang24.jpg;./img/hang22.jpg'),(5,'Macbook Air 15 inch 2016- Like new','Phụ kiện: Theo máy có sạc zin 60W','Bảo hành: Bảo hành toàn bộ máy: 12 tháng','CPU: Intel, Core i5 Broadwell, 5257U, 2.70 GHz',24000000,'./img/hang21.jpg;./img/hang21.jpg;./img/hang13.jpg;./img/hang24.jpg;./img/hang22.jpg'),(6,'Macbook Air 15 inch 2016- Like new','Phụ kiện: Theo máy có sạc zin 60W','Bảo hành: Bảo hành toàn bộ máy: 12 tháng','CPU: Intel, Core i5 Broadwell, 5257U, 2.70 GHz',24000000,'./img/hang22.jpg;./img/hang21.jpg;./img/hang13.jpg;./img/hang24.jpg;./img/hang22.jpg'),(7,'Macbook Air 15 inch 2016- Like new','Phụ kiện: Theo máy có sạc zin 60W','Bảo hành: Bảo hành toàn bộ máy: 12 tháng','CPU: Intel, Core i5 Broadwell, 5257U, 2.70 GHz',24000000,'./img/hang23.jpg;./img/hang21.jpg;./img/hang13.jpg;./img/hang24.jpg;./img/hang22.jpg'),(8,'Macbook Air 15 inch 2016- Like new','Phụ kiện: Theo máy có sạc zin 60W','Bảo hành: Bảo hành toàn bộ máy: 12 tháng','CPU: Intel, Core i5 Broadwell, 5257U, 2.70 GHz',24000000,'./img/hang24.jpg;./img/hang21.jpg;./img/hang13.jpg;./img/hang24.jpg;./img/hang22.jpg'),(22,'Macbook Pro 2019','Sạc dự phòng 10000 ma','1 năm','ssd 256g, gpu 1080ti, ram 16g',24000000,'./img/hang24.jpg;./img/hang11.jpg;./img/hang12.jpg;./img/hang23.jpg'),(23,'Macbook Air 15 inch 2019','Phụ kiện: Theo máy có sạc zin 60W','1 năm','CPU: Intel, Core i5 Broadwell, 5257U, 2.70 GHz',24000000,'./img/hang13.jpg;./img/hang24.jpg;./img/hang22.jpg;./img/hang12.jpg'),(24,'Macbook Pro 2019 15 inch','Phụ kiện: Theo máy có sạc zin 60W','6 tháng','CPU: Intel, Core i5 Broadwell, 5257U, 2.70 GHz',24000000,'./img/hang12.jpg;./img/hang13.jpg;./img/hang11.jpg;./img/hang24.jpg'),(25,'Macbook Air  2019','Sạc dự phòng 10000 ma','6 tháng','ssd 256g, gpu 1080ti, ram 16g',24000000,'./img/hang14.jpg;./img/hang22.jpg;./img/hang21.jpg;./img/hang23.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(1000) DEFAULT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'anhtu','anhtu98@','Nguyễn Anh Tú','anhtu446@gmail.com','0964692796'),(2,NULL,NULL,'Nguyễn Anh Tú',NULL,NULL),(3,'natcs','anhtu98@',' Nguyen anh Tu','tu@gmail.com','0123569'),(4,'tu98','anhtu98@','ahihi','admin@gmail.com','0964692796'),(5,'tu98','anhtu98@','Nguyen Anh Tú','anhtunguyen446@gmail.com','0964692796'),(6,'anhtu1','anhtu98@','Nguyen Anh Tú','anhtunguyen446@gmail.com','0964692796'),(7,'admin','anhtu98@','Nguyen Anh Tú','anhtunguyen446@gmail.com','0964692796'),(8,'admin321','admin@123','Nguyen Datt','nguyendat@gmail.com','0987654321'),(9,'ABC','123@','LOng','abc@gmail.com','0123456789'),(10,'hien123','123456@','Hiền','hien123@gmail.com','0123456789'),(11,'ahihi','anhtu98@','linh Nguyễn','admin@gmail.com','0362796565'),(12,'natcs99','anhtu98@','Tú Nguyễn','anhtunguyen446@gmail.com','0362796565'),(13,'natcs97','anhtu98@','Tú Nguyễn','anhtunguyen446@gmail.com','0362796565');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useradmin`
--

DROP TABLE IF EXISTS `useradmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `useradmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useradmin`
--

LOCK TABLES `useradmin` WRITE;
/*!40000 ALTER TABLE `useradmin` DISABLE KEYS */;
INSERT INTO `useradmin` VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `useradmin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-21 17:13:25
