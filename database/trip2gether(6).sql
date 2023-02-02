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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'que pasa',2,3,'2022-12-13 13:10:10'),(2,'lo que sea',5,12,'2022-12-13 13:26:33'),(16,'test de las 12:21',27,18,'2022-12-16 12:21:51'),(17,'test de las 12:48',27,18,'2022-12-16 12:48:15'),(18,'test 13:07',27,18,'2022-12-16 13:07:54'),(19,'test 13:07',27,18,'2022-12-16 13:08:11'),(20,'test 13:09',27,18,'2022-12-16 13:09:28'),(21,'comentario de viaje',27,18,'2022-12-16 13:17:23'),(22,'Hola',27,21,'2022-12-16 13:20:30'),(23,'fua que bien lo vamos a pasar',27,21,'2022-12-16 13:23:55'),(39,'hola',25,18,'2022-12-16 17:03:52'),(46,'hi',30,18,'2022-12-17 17:27:10'),(47,'Leire eres un poco pesadita',29,18,'2022-12-18 16:23:11'),(48,'Y tanto, no calla',29,20,'2022-12-18 16:52:06'),(49,'¡Hey Leire!',30,18,'2022-12-19 15:02:55'),(50,'es muy fuerte lod e esta chica',29,22,'2022-12-19 15:54:19');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itinerary`
--

DROP TABLE IF EXISTS `itinerary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itinerary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `it_description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `it_date_begin` datetime NOT NULL,
  `it_date_end` datetime NOT NULL,
  `trip_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itinerary`
--

LOCK TABLES `itinerary` WRITE;
/*!40000 ALTER TABLE `itinerary` DISABLE KEYS */;
INSERT INTO `itinerary` VALUES (2,'paseo por el retiro','2022-11-15 00:00:00','2022-11-17 00:00:00',27),(3,'Paseo por Hyde Park','2022-12-17 00:00:00','2022-12-19 00:00:00',29),(4,'asdasd','2022-12-19 00:00:00','2022-12-21 00:00:00',NULL),(5,'asdasd','2022-12-19 00:00:00','2022-12-21 00:00:00',NULL),(6,'asdasd','2022-12-19 00:00:00','2022-12-21 00:00:00',NULL),(7,'asd','2022-12-19 00:00:00','2022-12-21 00:00:00',NULL),(8,'asdasd','2022-12-19 00:00:00','2022-12-21 00:00:00',NULL),(9,'asdasd','2022-12-20 00:00:00','2022-12-29 00:00:00',NULL),(10,'asdasd','2022-12-20 00:00:00','2022-12-29 00:00:00',NULL),(11,'asdasd','2022-12-20 00:00:00','2022-12-29 00:00:00',NULL),(12,'dfgdfg','2022-12-22 00:00:00','2022-12-23 00:00:00',NULL),(13,'asas','2022-12-20 00:00:00','2022-12-21 00:00:00',29),(14,'hola Gabi','2022-12-21 00:00:00','2022-12-22 00:00:00',-1),(15,'prueba','2022-12-20 00:00:00','2022-12-21 00:00:00',29),(16,'Visita Museo','2022-12-28 00:00:00','2022-12-29 00:00:00',29);
/*!40000 ALTER TABLE `itinerary` ENABLE KEYS */;
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
  `lat` decimal(11,8) DEFAULT NULL,
  `lng` decimal(11,8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trips`
--

LOCK TABLES `trips` WRITE;
/*!40000 ALTER TABLE `trips` DISABLE KEYS */;
INSERT INTO `trips` VALUES (24,'Creta',5,10,25,65,'2023-02-06',5,1725,'Conoceremos las maravillas arqueológicas de la isla y visitaremos los tesoros del Palacio de Knossos.','notstarted',1,1,0,1,0,0,'7ebbb01cd8b59f966b241032d5d77c0f.jpeg',22,35.34498380,24.81280500),(25,'Nueva York',4,8,20,35,'2023-05-01',10,2200,'Recorreremos la ciudad de los rascacielos y sus barrios más conocidos','notstarted',1,1,0,0,0,1,'aa253db9571d38a964260a4e6e2cf70a.jpeg',19,40.71068348,-73.99482300),(26,'Liubliana',6,8,30,50,'2023-06-14',4,1300,'Descubramos la capital eslovena y disfrutemos de todos sus eventos culturales','notstarted',1,1,1,0,0,0,'f077f40bc014e0a498682a4818b357e7.jpeg',20,46.06087825,14.51360210),(27,'Roma',12,15,25,55,'2023-01-23',5,1200,'Roma es algo más que el coliseo y la Fontana di Trevi, ¡descubrámoslo!','notstarted',1,1,1,0,0,0,'ad09871f1b74f4481cd764b123f8761c.jpeg',20,41.90290390,12.49781280),(29,'Lisboa',4,8,22,45,'2022-11-15',5,1600,'Fados, gingijnha, pasteis de Belem, conozcamos a fondo la capital portuguesa.','finished',0,1,1,1,0,0,'90e8e37684e024fba6b6997f85ee00c9.jpeg',18,38.71483768,-9.13907644),(30,'Camboya',10,15,25,50,'2022-12-12',20,1900,'Tranquilidad y espiritualidad. Meditemos juntos en Camboya.','inprogress',1,1,0,0,0,1,'ce69b7db5bf0517d9dce94870089246a.jpeg',19,12.71223830,104.88809400),(32,'Praga',5,12,18,45,'2023-05-08',5,1350,'La capital de la región de Bohemia tiene infinidades de cosas por ver. Visitemos sus castillos, paseemos por el río Moldava y conozcamos su historia.','notstarted',1,1,1,0,0,0,'aab7a908256dcf0769aa1dd6dd8c8ef0.jpeg',22,50.07541635,14.43673220),(33,'Islandia',6,8,30,40,'2023-06-19',11,3100,'La naturaleza en estado puro, eso es Islandia. Alquilemos una caravana, y viajemos por sus carreteras en búsqueda de las cataratas más bonitas de la isla.','notstarted',1,1,0,0,1,1,'9e71f9724883a058a3607706ed3fff0a.jpeg',34,64.99730756,-18.57421620),(34,'California',5,8,25,50,'2023-06-05',15,3400,'El estado de California es enorme, todo el mundo conoce Los Angeles. Pero...¿qué os parece si nos olvidamos de la gran ciudad y nos dejamos llevar por el Death Valley y Joshua Tree?','notstarted',0,1,0,0,1,1,'db233f318a8b988752455875d50f2a3c.jpeg',35,36.53195390,-119.61830300);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (18,'Leire','Oyarzábal','leire87','leire87@gmail.com','$2a$08$gUVLvAVqOgrK3p.gKc6rjOXOB2AknOjBdJTf7QWGgxb5OWo97uRB.','666739317','Me gusta la historia, y me encanta pasar una tarde haciendo puzzles.','Soy extrovertida y muy abierta','1987-10-23',4.7,'0264f9a4a514907330ec2ab0e877f5b0.jpeg'),(19,'Marta','Gómez','mgomez','mgomez@gmail.com','$2a$08$ouwwxQTRk7drpTCyxR06K.X5fVBWtnuqB54NCqhugCdMlo4x08OF2','681090723','Me gusta visitar los museos de cada ciudad a la que viajo.','No tengo límites para conocer a gente y hacer amigos','1983-03-05',3.5,'717004415c2c7552b0f96f78006fb8e5.jpeg'),(20,'Michael','Branson','michael68','michael68@gmail.com','$2a$08$a1bnqGoISSKK8J.xxb58Y.yi39JOOkZkgYF2rFNe6dyZwebOl1.tu','672909801','Trabajo la madera como un carpintero profesional. No me separo de mis herramientas','Afable, carismático, o eso dicen mis amigos ☺️','1973-05-13',4.0,'1ff98f0f0f48e0ee78e368b9c090b67a.jpeg'),(21,'admin','admin','admin','admin@gmail.com','$2a$08$EhyDgG/ITobbM2Rtuhm5JuW7vRX6d.yLgt3qlnMadkKMsuyi.UVXG','999999999','prueba','prueba','1212-12-12',4.3,'17c8bd14391e1ade7a10dba1b5bb0a5a.jpeg'),(22,'Marina','Lemos','marlemos','marlemos@gmail.com','$2a$08$R4fyObAwPeqRO36xKxcAjezy9mEhDSu.t.l/hLMpTyg08Mt2JILLG','639289237','Bailar, bailar y bailar','Mis amigos dicen que soy la persona más paciente del mundo.','1983-11-15',3.5,'944522c4448faebfcf7237912e099e91.jpeg'),(34,'Emilio','Álvarez','alvemi','alvemi@gmail.com','$2a$08$owt1vISYIDHTLhuOLUYTd.n2FlHUO2hbGCcTwHIM4Rs30IJ39TSIq','628981267','Me encanta pasar tiempo en la montaña. Escalar, alpinismo...','Hago amigos fácilmente. ','1978-04-12',4.1,'0588bc7db4437b288187c32cf8587949.jpeg'),(35,'Sara','Seoane','sariss','seoane@gmail.com','$2a$08$7HuBLtNQPAIB9UEAS/ybvu04skGMhGAQ0b0Yc43AlnyhMr7kf3DAm','617091281','Me siento más a gusto en el agua que en la tierra. Hago surf, piragüismo, y mi sueño es tener un pequeño barco.','¡glup, glup!','1989-07-05',2.0,'7f2c8152cb63fc86a5bffe5df50b27eb.jpeg');
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
  `user_status` enum('aceptada','pendiente','rechazada') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pendiente',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_users_has_trips_trips1_idx` (`trips_id`),
  KEY `fk_users_has_trips_users_idx` (`users_id`),
  CONSTRAINT `fk_users_has_trips_trips1` FOREIGN KEY (`trips_id`) REFERENCES `trips` (`id`),
  CONSTRAINT `fk_users_has_trips_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_has_trips`
--

LOCK TABLES `users_has_trips` WRITE;
/*!40000 ALTER TABLE `users_has_trips` DISABLE KEYS */;
INSERT INTO `users_has_trips` VALUES (1,18,25,'pendiente'),(2,18,26,'pendiente'),(3,21,27,'pendiente'),(8,18,30,'pendiente'),(9,18,29,'rechazada'),(10,18,24,'rechazada'),(11,34,27,'pendiente'),(12,34,29,'pendiente'),(13,22,33,'pendiente'),(14,22,25,'pendiente'),(15,35,24,'pendiente'),(16,35,32,'pendiente'),(17,19,34,'pendiente'),(18,19,27,'pendiente'),(19,18,29,'pendiente'),(20,18,29,'pendiente'),(21,18,29,'pendiente'),(22,18,29,'pendiente'),(23,18,29,'pendiente'),(24,18,29,'pendiente'),(25,18,29,'pendiente'),(26,18,29,'pendiente'),(27,18,29,'pendiente'),(28,18,29,'pendiente'),(29,18,29,'pendiente'),(30,18,29,'pendiente'),(31,18,29,'pendiente'),(32,18,29,'pendiente'),(33,18,29,'pendiente'),(34,18,29,'pendiente');
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

-- Dump completed on 2022-12-20 10:53:11
