CREATE DATABASE  IF NOT EXISTS `trilinga` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trilinga`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: trilinga
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL,
  `content` varchar(150) NOT NULL,
  `is_true` tinyint(1) NOT NULL,
  `question_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_answer_question` (`question_id`),
  CONSTRAINT `fk_answer_question` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (1,'https://i.goopics.net/xvaqnq.png','Apple',1,1),(2,'https://i.goopics.net/x4b6ut.png','Strawberry',0,1),(3,'https://i.goopics.net/f1743o.png','Banana',0,1),(4,'https://i.goopics.net/xvaqnq.png','Manzana',1,2),(5,'https://i.goopics.net/x4b6ut.png','Fresa',0,2),(6,'https://i.goopics.net/f1743o.png','Plátano',0,2),(7,'https://i.goopics.net/xvaqnq.png','りんご',1,3),(8,'https://i.goopics.net/x4b6ut.png','いちご',0,3),(9,'https://i.goopics.net/f1743o.png','バナナ',0,3),(10,'https://i.goopics.net/hn0h9y.png','Water',1,10),(11,'https://i.goopics.net/uh4r7u.png','Fire',0,10),(12,'https://i.goopics.net/kxaz01.png','Sun',0,10),(13,'https://i.goopics.net/hn0h9y.png','Agua',1,11),(14,'https://i.goopics.net/uh4r7u.png','Fuego',0,11),(15,'https://i.goopics.net/kxaz01.png','Sol',0,11),(16,'https://i.goopics.net/hn0h9y.png','水',1,12),(17,'https://i.goopics.net/uh4r7u.png','火',0,12),(18,'https://i.goopics.net/kxaz01.png','太陽',0,12),(19,'https://i.goopics.net/tptjm9.png','Cat',1,13),(20,'https://i.goopics.net/57rqjk.png','Dog',0,13),(21,'https://i.goopics.net/l9q0v8.png','Bear',0,13),(22,'https://i.goopics.net/tptjm9.png','Gato',1,14),(23,'https://i.goopics.net/57rqjk.png','Perro',0,14),(24,'https://i.goopics.net/l9q0v8.png','Oso',0,14),(25,'https://i.goopics.net/tptjm9.png','猫',1,15),(26,'https://i.goopics.net/57rqjk.png','犬',0,15),(27,'https://i.goopics.net/l9q0v8.png','クマ',0,15),(28,NULL,'Star',1,4),(29,NULL,'Clock',0,4),(30,NULL,'Rabbit',0,4),(31,NULL,'Estrella',1,5),(32,NULL,'Reloj',0,5),(33,NULL,'Conejo',0,5),(34,NULL,'星',1,6),(35,NULL,'時計',0,6),(36,NULL,'うさぎ',0,6),(37,NULL,'Book',1,16),(38,NULL,'Table',0,16),(39,NULL,'Chair',0,16),(40,NULL,'Libro',1,17),(41,NULL,'Mesa',0,17),(42,NULL,'Silla',0,17),(43,NULL,'本',1,18),(44,NULL,'テーブル',0,18),(45,NULL,'椅子',0,18),(46,NULL,'Tree',1,19),(47,NULL,'Camel',0,19),(48,NULL,'Car',0,19),(49,NULL,'Árbol',1,20),(50,NULL,'Camello',0,20),(51,NULL,'Auto',0,20),(52,NULL,'木',1,21),(53,NULL,'キャメル',0,21),(54,NULL,'車',0,21),(55,NULL,'Love',1,22),(56,NULL,'Fish',0,22),(57,NULL,'Flower',0,22),(58,NULL,'Amor',1,23),(59,NULL,'Pez',0,23),(60,NULL,'Flor',0,23),(61,NULL,'愛',1,24),(62,NULL,'魚',0,24),(63,NULL,'花',0,24),(64,NULL,'School',1,25),(65,NULL,'House',0,25),(66,NULL,'Sheep',0,25),(67,NULL,'Escuela',1,26),(68,NULL,'Casa',0,26),(69,NULL,'Oveja',0,26),(70,NULL,'学校',1,27),(71,NULL,'家',0,27),(72,NULL,'羊',0,27),(73,NULL,'Red',0,28),(74,NULL,'Blue',0,28),(75,NULL,'Green',1,28),(76,NULL,'Rojo',0,29),(77,NULL,'Azul',0,29),(78,NULL,'Verde',1,29),(79,NULL,'赤い',0,30),(80,NULL,'青い',0,30),(81,NULL,'緑',1,30),(82,NULL,'Drink',0,31),(83,NULL,'Eat',1,31),(84,NULL,'Run',0,31),(85,NULL,'Beber',0,32),(86,NULL,'Comer',1,32),(87,NULL,'Correr',0,32),(88,NULL,'飲む',0,33),(89,NULL,'食べる',1,33),(90,NULL,'走る',0,33),(91,NULL,'Trip',1,34),(92,NULL,'Bike',0,34),(93,NULL,'Leaf',0,34),(94,NULL,'Viaje',1,35),(95,NULL,'Bicicleta',0,35),(96,NULL,'Hoja',0,35),(97,NULL,'旅行',1,36),(98,NULL,'自転車',0,36),(99,NULL,'葉',0,36),(100,NULL,'Hospital',1,37),(101,NULL,'Hairdresser',0,37),(102,NULL,'University',0,37),(103,NULL,'Hospital',1,38),(104,NULL,'Peluquero',0,38),(105,NULL,'Universidad',0,38),(106,NULL,'病院',1,39),(107,NULL,'美容院',0,39),(108,NULL,'大学',0,39),(109,NULL,'Train',1,40),(110,NULL,'Bus',0,40),(111,NULL,'Plane',0,40),(112,NULL,'Tren',1,41),(113,NULL,'Autobús',0,41),(114,NULL,'Avión',0,41),(115,NULL,'電車',1,42),(116,NULL,'バス',0,42),(117,NULL,'飛行機',0,42),(118,NULL,'Tomorrow I\'m going to the mountains',0,43),(119,NULL,'Tomorrow I\'m going to the beach',1,43),(120,NULL,'Tomorrow I\'m going to the cinema',0,43),(121,NULL,'Voy a la montaña mañana',0,44),(122,NULL,'Voy a la playa mañana',1,44),(123,NULL,'Voy a la cine mañana',0,44),(124,NULL,'明日は山に行きます',0,45),(125,NULL,'明日はビーチに行きます',1,45),(126,NULL,'明日は映画館に行きます',0,45),(127,NULL,'She dances well',1,7),(128,NULL,'She goes to the dance',0,7),(129,NULL,'She sees a dance show',0,7),(130,NULL,'Ella baila bien',1,8),(131,NULL,'ella va al baile',0,8),(132,NULL,'Ella ve un espectáculo de danza',0,8),(133,NULL,'彼女は上手に踊ります',1,9),(134,NULL,'彼女はダンスに行きます',0,9),(135,NULL,'彼女はダンスショーを見ます',0,9),(136,NULL,'She is smart',1,46),(137,NULL,'She is strong',0,46),(138,NULL,'She is funny',0,46),(139,NULL,'Ella es inteligente',1,47),(140,NULL,'Ella es fuerte',0,47),(141,NULL,'Ella es graciosa',0,47),(142,NULL,'彼女は頭が良いです',1,48),(143,NULL,'彼女は強いです',0,48),(144,NULL,'彼女は面白いです',0,48),(145,NULL,'She speaks two languages',0,49),(146,NULL,'She speaks three languages',1,49),(147,NULL,'She speaks four languages',0,49),(148,NULL,'Ella habla dos idiomas',0,50),(149,NULL,'Ella habla tres idiomas',1,50),(150,NULL,'Ella habla cuatro idiomas',0,50),(151,NULL,'彼女は二つ言語を話します',0,51),(152,NULL,'彼女は三つ言語を話します',1,51),(153,NULL,'彼女は四つ言語を話します',0,51),(154,NULL,'What is your phone number ?',0,52),(155,NULL,'What is your favorite food ?',0,52),(156,NULL,'What is your favorite color ?',1,52),(157,NULL,'Cuál es tu número de teléfono?',0,53),(158,NULL,'Cuál es tu comida favorita?',0,53),(159,NULL,'Cuál es tu color favorito?',1,53),(160,NULL,'電話番号は何ですか',0,54),(161,NULL,'好きな食べ物は何ですか',0,54),(162,NULL,'好きな色は何ですか',1,54),(163,NULL,'He is watching a movie',0,55),(164,NULL,'He is listening to music',1,55),(165,NULL,'He is reading a book',0,55),(166,NULL,'Él está viendo una pelicula',0,56),(167,NULL,'Él está escuchando música',1,56),(168,NULL,'Él está leyendo un libro',0,56),(169,NULL,'彼は映画を見ています',0,57),(170,NULL,'彼は音楽を聴いています',1,57),(171,NULL,'彼は本を読んでいます',0,57),(172,NULL,'I eat ramen',0,58),(173,NULL,'I eat bread',0,58),(174,NULL,'I eat rice',1,58),(175,NULL,'yo como ramen',0,59),(176,NULL,'yo como pan',0,59),(177,NULL,'yo como arroz',1,59),(178,NULL,'私はラーメンを食べますz',0,60),(179,NULL,'私はパンを食べます',0,60),(180,NULL,'私はごはんを食べます',1,60),(181,NULL,'He is very noisy',1,61),(182,NULL,'He is very lazy',0,61),(183,NULL,'He is very quiet',0,61),(184,NULL,'El es muy ruidoso',1,62),(185,NULL,'El es muy vago',0,62),(186,NULL,'El esta muy tranquilo',0,62),(187,NULL,'彼はとてもうるさいな人です',1,63),(188,NULL,'彼は怠け者です',0,63),(189,NULL,'彼はとても静かな人です',0,63),(190,NULL,'He speaks English fluently',1,64),(191,NULL,'He speaks French fluently',0,64),(192,NULL,'He speaks Spanish fluently',0,64),(193,NULL,'El habla inglés con fluidez',1,65),(194,NULL,'El habla francés con fluidez',0,65),(195,NULL,'El habla español con fluidez',0,65),(196,NULL,'彼は英語をペラペラに話します',1,66),(197,NULL,'彼はフランス語をペラペラに話します',0,66),(198,NULL,'彼はスペイン語をペラペラに話します',0,66),(199,NULL,'It\'s cold in summer',0,67),(200,NULL,'It’s hot in winter',0,67),(201,NULL,'It’s cold in winter',1,67),(202,NULL,'Hace frío en verano',0,68),(203,NULL,'Hace calor en invierno',0,68),(204,NULL,'Hace frío en invierno',1,68),(205,NULL,'夏は寒いです',0,69),(206,NULL,'冬は暖かいです',0,69),(207,NULL,'冬は寒いです',1,69),(208,NULL,'Where is the museum ?',1,70),(209,NULL,'Where is the library ?',0,70),(210,NULL,'Where is the supermarket ?',0,70),(211,NULL,'Dónde está el museo?',1,71),(212,NULL,'Dónde está la biblioteca ?',0,71),(213,NULL,'Dónde está el supermercado ?',0,71),(214,NULL,'博物館はどこですか？',1,72),(215,NULL,'図書館はどこですか？',0,72),(216,NULL,'スーパーはどこですか？',0,72),(217,'https://i.goopics.net/cmady9.png','Rabbit',0,73),(218,'https://i.goopics.net/7lw56t.png','Gorilla',1,73),(219,'https://i.goopics.net/xvei85.png','Orange',0,73),(220,'https://i.goopics.net/cmady9.png','Conejo',0,74),(221,'https://i.goopics.net/7lw56t.png','Gorila',1,74),(222,'https://i.goopics.net/xvei85.png','Naranja',0,74),(223,'https://i.goopics.net/cmady9.png','うさぎ',0,75),(224,'https://i.goopics.net/7lw56t.png','ゴリラ',1,75),(225,'https://i.goopics.net/xvei85.png','オレンジ',0,75),(226,'https://i.goopics.net/cmady9.png','Fish',0,76),(227,'https://i.goopics.net/j3tbbb.png','Duck',0,76),(228,'https://i.goopics.net/lrxqra.png','Frog',1,76),(229,'https://i.goopics.net/cmady9.png','Pez',0,77),(230,'https://i.goopics.net/j3tbbb.png','Pato',0,77),(231,'https://i.goopics.net/lrxqra.png','Rana',1,77),(232,'https://i.goopics.net/cmady9.png','魚',0,78),(233,'https://i.goopics.net/j3tbbb.png','アヒル',0,78),(234,'https://i.goopics.net/lrxqra.png','蛙',1,78),(235,'https://i.goopics.net/f3dh0s.png','Ant',0,79),(236,'https://i.goopics.net/6bdqev.png','Bird',1,79),(237,'https://i.goopics.net/vz5oap.png','Book',0,79),(238,'https://i.goopics.net/f3dh0s.png','Hormiga',0,80),(239,'https://i.goopics.net/6bdqev.png','Pájaro',1,80),(240,'https://i.goopics.net/vz5oap.png','Libro',0,80),(241,'https://i.goopics.net/f3dh0s.png','蟻',0,81),(242,'https://i.goopics.net/6bdqev.png','鳥',1,81),(243,'https://i.goopics.net/vz5oap.png','本',0,81),(244,'https://i.goopics.net/o1yhlz.png','Elephant',0,82),(245,'https://i.goopics.net/fimihd.png','Chicken',1,82),(246,'https://i.goopics.net/98i3ty.png','Monkey',0,82),(247,'https://i.goopics.net/o1yhlz.png','Elefante',0,83),(248,'https://i.goopics.net/fimihd.png','Pollo',1,83),(249,'https://i.goopics.net/98i3ty.png','Mono',0,83),(250,'https://i.goopics.net/o1yhlz.png','象',0,84),(251,'https://i.goopics.net/fimihd.png','チキン',1,84),(252,'https://i.goopics.net/98i3ty.png','猿',0,84),(253,'https://i.goopics.net/mdeg8r.png','Shark',1,85),(254,'https://i.goopics.net/utr2am.png','Turtule',0,85),(255,'https://i.goopics.net/lb1alw.png','Hamburger',0,85),(256,'https://i.goopics.net/mdeg8r.png','Tiburón',1,86),(257,'https://i.goopics.net/utr2am.png','Tortuga',0,86),(258,'https://i.goopics.net/lb1alw.png','Hamburguesa',0,86),(259,'https://i.goopics.net/mdeg8r.png','サメ',1,87),(260,'https://i.goopics.net/utr2am.png','カメ',0,87),(261,'https://i.goopics.net/lb1alw.png','ハンバーガー',0,87),(262,'https://i.goopics.net/j24emu.png','Astronaut',1,88),(263,'https://i.goopics.net/7q2tqr.png','Zombie',0,88),(264,'https://i.goopics.net/jpznlw.png','Hamburger',0,88),(265,'https://i.goopics.net/j24emu.png','Astronauta',1,89),(266,'https://i.goopics.net/7q2tqr.png','Zombi',0,89),(267,'https://i.goopics.net/jpznlw.png','Bailarín',0,89),(268,'https://i.goopics.net/j24emu.png','宇宙飛行士',1,90),(269,'https://i.goopics.net/7q2tqr.png','カメ',0,90),(270,'https://i.goopics.net/jpznlw.png','踊り子',0,90),(271,'https://i.goopics.net/jvmqxe.png','Monster',1,91),(272,'https://i.goopics.net/w6v13y.png','Sponge',0,91),(273,'https://i.goopics.net/72cird.png','Hero',0,91),(274,'https://i.goopics.net/jvmqxe.png','Monstruo',1,92),(275,'https://i.goopics.net/w6v13y.png','Esponja',0,92),(276,'https://i.goopics.net/72cird.png','Héroe',0,92),(277,'https://i.goopics.net/jvmqxe.png','モンスター',1,93),(278,'https://i.goopics.net/w6v13y.png','スポンジ',0,93),(279,'https://i.goopics.net/72cird.png','ヒーロー',0,93);
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `flag` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'anglais','https://i.goopics.net/ao8mpg.png'),(2,'espagnol','https://i.goopics.net/0cw58a.png'),(3,'japonais','https://i.goopics.net/tvefq9.png');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level`
--

DROP TABLE IF EXISTS `level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `level` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level`
--

LOCK TABLES `level` WRITE;
/*!40000 ALTER TABLE `level` DISABLE KEYS */;
INSERT INTO `level` VALUES (1,'débutant'),(2,'intermédiaire'),(3,'avancé');
/*!40000 ALTER TABLE `level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entitled` varchar(150) NOT NULL,
  `language_id` int DEFAULT NULL,
  `level_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_question_language` (`language_id`),
  KEY `fk_question_level` (`level_id`),
  CONSTRAINT `fk_question_language` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `fk_question_level` FOREIGN KEY (`level_id`) REFERENCES `level` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'Comment dit-on \" pomme\" ?',1,1),(2,'Comment dit-on \"pomme\" ?',2,1),(3,'Comment dit-on \"pomme\" ?',3,1),(4,'Comment dit-on \"étoile\" ?',1,2),(5,'Comment dit-on \"étoile\" ?',2,2),(6,'Comment dit-on \"étoile\" ?',3,2),(7,'Comment dit-on \"elle danse bien\" ?',1,3),(8,'Comment dit-on \"elle danse bien\" ?',2,3),(9,'Comment dit-on \"elle danse bien\" ?',3,3),(10,'Comment dit-on \"eau\" ?',1,1),(11,'Comment dit-on \"eau\" ?',2,1),(12,'Comment dit-on \"eau\" ?',3,1),(13,'Comment dit-on \"chat\" ?',1,1),(14,'Comment dit-on \"chat\" ?',2,1),(15,'Comment dit-on \"chat\" ?',3,1),(16,'Comment dit-on \"livre\" ?',1,2),(17,'Comment dit-on \"livre\" ?',2,2),(18,'Comment dit-on \"livre\" ?',3,2),(19,'Comment dit-on \"arbre\" ?',1,2),(20,'Comment dit-on \"arbre\" ?',2,2),(21,'Comment dit-on \"arbre\" ?',3,2),(22,'Comment dit-on \"amour\" ?',1,2),(23,'Comment dit-on \"amour\" ?',2,2),(24,'Comment dit-on \"amour\" ?',3,2),(25,'Comment dit-on \"école\" ?',1,2),(26,'Comment dit-on \"école\" ?',2,2),(27,'Comment dit-on \"école\" ?',3,2),(28,'Comment dit-on \"vert\" ?',1,2),(29,'Comment dit-on \"vert\" ?',2,2),(30,'Comment dit-on \"vert\" ?',3,2),(31,'Comment dit-on \"manger\" ?',1,2),(32,'Comment dit-on \"mange\" ?',2,2),(33,'Comment dit-on \"manger\" ?',3,2),(34,'Comment dit-on \"voyage\" ?',1,2),(35,'Comment dit-on \"voyage\" ?',2,2),(36,'Comment dit-on \"voyage\" ?',3,2),(37,'Comment dit-on \"hôpital\" ?',1,2),(38,'Comment dit-on \"hôpital\" ?',2,2),(39,'Comment dit-on \"hôpital\" ?',3,2),(40,'Comment dit-on \"train\" ?',1,2),(41,'Comment dit-on \"train\" ?',2,2),(42,'Comment dit-on \"train\" ?',3,2),(43,'Comment dit-on \"Je vais à la plage demain\" ?',1,3),(44,'Comment dit-on \"Je vais à la plage demain\" ?',2,3),(45,'Comment dit-on \"Je vais à la plage demain\" ?',3,3),(46,'Comment dit-on \"Elle est intelligente\" ?',1,3),(47,'Comment dit-on \"Elle est intelligente\" ?',2,3),(48,'Comment dit-on \"Elle est intelligente\" ?',3,3),(49,'Comment dit-on \"Elle parle trois langues\" ?',1,3),(50,'Comment dit-on \"Elle parle trois langues\" ?',2,3),(51,'Comment dit-on \"Elle parle trois langues\" ?',3,3),(52,'Comment dit-on \"Quelle est ta couleur préférée ?\" ?',1,3),(53,'Comment dit-on \"Quelle est ta couleur préférée ?\" ?',2,3),(54,'Comment dit-on \"Quelle est ta couleur préférée ?\" ?',3,3),(55,'Comment dit-on \"Il écoute de la musique\" ?',1,3),(56,'Comment dit-on \"Il écoute de la musique\" ?',2,3),(57,'Comment dit-on \"Il écoute de la musique\" ?',3,3),(58,'Comment dit-on \"Je mange du riz\" ?',1,3),(59,'Comment dit-on \"Je mange du riz\" ?',2,3),(60,'Comment dit-on \"Je mange du riz\" ?',3,3),(61,'Comment dit-on \"Il est très bruyant\" ?',1,3),(62,'Comment dit-on \"Il est très bruyant\" ?',2,3),(63,'Comment dit-on \"Il est très bruyant\" ?',3,3),(64,'Comment dit-on \"Il parle anglais couramment\" ?',1,3),(65,'Comment dit-on \"Il parle anglais couramment\" ?',2,3),(66,'Comment dit-on \"Il parle anglais couramment\" ?',3,3),(67,'Comment dit-on \"Il fait froid en hiver\" ?',1,3),(68,'Comment dit-on \"Il fait froid en hiver\" ?',2,3),(69,'Comment dit-on \"Il fait froid en hiver\" ?',3,3),(70,'Comment dit-on \"Où est le musée ?\" ?',1,3),(71,'Comment dit-on \"Où est le musée ?\" ?',2,3),(72,'Comment dit-on \"Où est le musée ?\" ?',3,3),(73,'Comment dit-on \"Gorille\" ?',1,1),(74,'Comment dit-on \"Gorille\" ?',2,1),(75,'Comment dit-on \"Gorille\" ?',3,1),(76,'Comment dit-on \"Grenouille\" ?',1,1),(77,'Comment dit-on \"Grenouille\" ?',2,1),(78,'Comment dit-on \"Grenouille\" ?',3,1),(79,'Comment dit-on \"Oiseau\" ?',1,1),(80,'Comment dit-on \"Oiseau\" ?',2,1),(81,'Comment dit-on \"Oiseau\" ?',3,1),(82,'Comment dit-on \"Poulet\" ?',1,1),(83,'Comment dit-on \"Poulet\" ?',2,1),(84,'Comment dit-on \"Poulet\" ?',3,1),(85,'Comment dit-on \"Requin\" ?',1,1),(86,'Comment dit-on \"Requin\" ?',2,1),(87,'Comment dit-on \"Requin\" ?',3,1),(88,'Comment dit-on \"Astronaute\" ?',1,1),(89,'Comment dit-on \"Astronaute\" ?',2,1),(90,'Comment dit-on \"Astronaute\" ?',3,1),(91,'Comment dit-on \"Monstre\" ?',1,1),(92,'Comment dit-on \"Monstre\" ?',2,1),(93,'Comment dit-on \"Monstre\" ?',3,1);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin@trilinga.fr','$2y$10$HCBRHIKpe.2cKYEeiswS8u6WLoLP5AIrk/Rro91W.GoffXsIng5dS');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'trilinga'
--

--
-- Dumping routines for database 'trilinga'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-14 17:32:34

