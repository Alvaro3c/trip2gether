-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: trip2gether
-- ------------------------------------------------------
-- Server version	8.0.31

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
  `id` int NOT NULL AUTO_INCREMENT,
  `message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trip_id` int NOT NULL,
  `user_id` int NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'que pasa',2,3,'2022-12-13 13:10:10'),(2,'lo que sea',5,12,'2022-12-13 13:26:33'),(3,'test',27,18,'2022-12-15 10:27:09'),(4,'test',27,18,'2022-12-15 11:39:27'),(5,'test',27,18,'2022-12-15 11:44:14'),(6,'test trip_id',27,18,'2022-12-15 11:58:16'),(7,'comment',27,18,'2022-12-15 12:16:17'),(8,'test console',27,18,'2022-12-15 12:30:18'),(9,'test',27,18,'2022-12-15 12:31:45'),(10,'test',27,18,'2022-12-15 13:43:04');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trips`
--

DROP TABLE IF EXISTS `trips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trips` (
  `id` int NOT NULL AUTO_INCREMENT,
  `destination` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_traveler` int NOT NULL,
  `max_traveler` int NOT NULL,
  `min_age` int NOT NULL,
  `max_age` int NOT NULL,
  `departure_date` date NOT NULL,
  `duration` int NOT NULL,
  `price` int NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('notstarted','inprogress','finished') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'notstarted',
  `flights` tinyint DEFAULT '0',
  `hotel` tinyint DEFAULT '0',
  `meals` tinyint DEFAULT '0',
  `excursions` tinyint DEFAULT '0',
  `rent_car` tinyint DEFAULT '0',
  `insurance` tinyint DEFAULT '0',
  `img_trip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trips`
--

LOCK TABLES `trips` WRITE;
/*!40000 ALTER TABLE `trips` DISABLE KEYS */;
INSERT INTO `trips` VALUES (24,'Creta',5,10,25,65,'2023-02-06',5,1725,'Conoceremos las maravillas arqueológicas de la isla y visitaremos los tesoros del Palacio de Knossos.','notstarted',1,1,0,1,0,0,'7ebbb01cd8b59f966b241032d5d77c0f.jpeg',22),(25,'Nueva York',4,8,20,35,'2023-05-01',10,2200,'Recorreremos la ciudad de los rascacielos y sus barrios más conocidos','notstarted',1,1,0,0,0,1,'aa253db9571d38a964260a4e6e2cf70a.jpeg',19),(26,'Liubliana',6,8,30,50,'2023-06-14',4,1300,'Descubramos la capital eslovena y disfrutemos de todos sus eventos culturales','notstarted',1,1,1,0,0,0,'f077f40bc014e0a498682a4818b357e7.jpeg',20),(27,'Roma',12,15,25,55,'2023-01-23',5,1200,'Roma es algo más que el coliseo y la Fontana di Trevi, ¡descubrámoslo!','notstarted',1,1,1,0,0,0,'ad09871f1b74f4481cd764b123f8761c.jpeg',20),(29,'Lisboa',4,8,22,45,'2022-11-15',5,1600,'Fados, gingijnha, pasteis de Belem, conozcamos a fondo la capital portuguesa.','finished',0,1,1,1,0,0,'90e8e37684e024fba6b6997f85ee00c9.jpeg',18),(30,'Camboya',10,15,25,50,'2022-12-12',20,1900,'Tranquilidad y espiritualidad. Meditemos juntos en Camboya.','inprogress',1,1,0,0,0,1,'ce69b7db5bf0517d9dce94870089246a.jpeg',19);
/*!40000 ALTER TABLE `trips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hobbies` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personality` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `rating` decimal(2,1) DEFAULT '0.0',
  `img_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (18,'Leire','Oyarzábal','leire87','leire87@gmail.com','$2a$08$gUVLvAVqOgrK3p.gKc6rjOXOB2AknOjBdJTf7QWGgxb5OWo97uRB.','666739317','Me gusta la historia, y me encanta pasar una tarde haciendo puzzles.','Soy extrovertida y muy abierta','1987-10-23',0.0,'0264f9a4a514907330ec2ab0e877f5b0.jpeg'),(19,'Marta','Gómez','mgomez','mgomez@gmail.com','$2a$08$ouwwxQTRk7drpTCyxR06K.X5fVBWtnuqB54NCqhugCdMlo4x08OF2','681090723','Me gusta visitar los museos de cada ciudad a la que viajo.','No tengo límites para conocer a gente y hacer amigos','1983-03-05',0.0,'717004415c2c7552b0f96f78006fb8e5.jpeg'),(20,'Michael','Branson','michael68','michael68@gmail.com','$2a$08$a1bnqGoISSKK8J.xxb58Y.yi39JOOkZkgYF2rFNe6dyZwebOl1.tu','672909801','Trabajo la madera como un carpintero profesional. No me separo de mis herramientas','Afable, carismático, o eso dicen mis amigos ☺️','1973-05-13',0.0,'1ff98f0f0f48e0ee78e368b9c090b67a.jpeg'),(21,'Pepito','Grillo','pepeg','pepito@gmail.com','$2a$08$EhyDgG/ITobbM2Rtuhm5JuW7vRX6d.yLgt3qlnMadkKMsuyi.UVXG','666666666','prueba','prueba','1980-10-23',0.0,'17c8bd14391e1ade7a10dba1b5bb0a5a.jpeg'),(22,'Marina','Lemos','marlemos','marlemos@gmail.com','$2a$08$R4fyObAwPeqRO36xKxcAjezy9mEhDSu.t.l/hLMpTyg08Mt2JILLG','639289237','Bailar, bailar y bailar','Mis amigos dicen que soy la persona más paciente del mundo.','1983-11-15',0.0,'944522c4448faebfcf7237912e099e91.jpeg'),(26,'Lucas','Paz','luqui01','luqui@gmail.com','$2a$08$ZQ1zu2TKWTNkSUVw365GV.fV/n2SyB5iMLxFzLS5pDUO3ewcmLvqa','666666666','prueba','prueba','1980-10-01',0.0,'bd88a1a31aebb5e487945057a4f8bc20.jpeg'),(28,'ROmulo','Paz','romi01','romi@gmail.com','$2a$08$nd/qxQUPtGFNW.6TcqBqmuk8zLMf5wbo02KGhZHmIq86A3PoYRIem','66666667','prueba','prueba','1980-10-23',0.0,'f1ad8cd885979c786789b2972c45efb1.webp');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_has_trips`
--

DROP TABLE IF EXISTS `users_has_trips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_has_trips` (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` int NOT NULL,
  `trips_id` int NOT NULL,
  `user_status` enum('accepted','pending','rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_users_has_trips_trips1_idx` (`trips_id`),
  KEY `fk_users_has_trips_users_idx` (`users_id`),
  CONSTRAINT `fk_users_has_trips_trips1` FOREIGN KEY (`trips_id`) REFERENCES `trips` (`id`),
  CONSTRAINT `fk_users_has_trips_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_has_trips`
--

LOCK TABLES `users_has_trips` WRITE;
/*!40000 ALTER TABLE `users_has_trips` DISABLE KEYS */;
INSERT INTO `users_has_trips` VALUES (3,18,25,'pending'),(4,18,26,'pending');
/*!40000 ALTER TABLE `users_has_trips` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-15 16:33:12
