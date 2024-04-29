-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mentaltest
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `email_verification`
--

DROP TABLE IF EXISTS `email_verification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_verification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `verification_code` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `expired_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_verification`
--

LOCK TABLES `email_verification` WRITE;
/*!40000 ALTER TABLE `email_verification` DISABLE KEYS */;
INSERT INTO `email_verification` VALUES (1,'q@q.c','123456','2024-04-12 03:24:04','2025-12-30 03:29:04'),(2,'17623045044@163.com','379050','2024-04-12 03:35:53','2024-04-12 03:40:53'),(3,'17623045044@163.com','373258','2024-04-12 03:37:10','2024-04-12 03:42:10'),(4,'17623045044@163.com','491337','2024-04-12 06:22:57','2024-04-12 06:27:57'),(5,'17623045044@163.com','096378','2024-04-12 06:50:49','2024-04-12 06:55:49'),(6,'17623045044@163.com','190731','2024-04-12 07:08:47','2024-04-12 07:13:47'),(7,'17623045044@163.com','277651','2024-04-12 07:14:37','2024-04-12 07:19:37'),(8,'17623045044@163.com','000993','2024-04-12 09:03:41','2024-04-12 09:08:41'),(9,'17623045044@163.com','361214','2024-04-12 09:25:34','2024-04-12 09:30:34'),(10,'17623045044@163.com','304447','2024-04-12 09:33:53','2024-04-12 09:38:53'),(11,'17623045044@163.com','249125','2024-04-12 09:42:40','2024-04-12 09:47:40'),(12,'1@q.c','531232','2024-04-26 08:48:09','2024-04-26 08:53:09'),(13,'1@q.c','739295','2024-04-26 08:48:15','2024-04-26 08:53:15'),(14,'1@q.z','503887','2024-04-26 08:50:30','2024-04-26 08:55:30'),(15,'13114082899@163.com','493662','2024-04-28 03:27:58','2024-04-28 03:32:58'),(16,'13114082899@163.com','879140','2024-04-28 03:30:46','2024-04-28 03:35:46'),(17,'13114082899@163.com','649181','2024-04-28 06:58:04','2024-04-28 07:03:04'),(18,'13114082899@163.com','663058','2024-04-28 06:59:07','2024-04-28 07:04:07'),(19,'13114082899@163.com','506844','2024-04-28 07:08:17','2024-04-28 07:13:17'),(20,'13114082899@163.com','807075','2024-04-28 07:45:37','2024-04-28 07:50:37'),(21,'13114082899@163.com','462742','2024-04-28 07:46:37','2024-04-28 07:51:37');
/*!40000 ALTER TABLE `email_verification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `standard_option_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`),
  KEY `fk_standard_option_id` (`standard_option_id`),
  CONSTRAINT `fk_standard_option_id` FOREIGN KEY (`standard_option_id`) REFERENCES `standard_options` (`id`),
  CONSTRAINT `options_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (3,1,'2024-04-29 09:41:46','2024-04-29 09:41:46',1),(4,1,'2024-04-29 09:41:46','2024-04-29 09:41:46',2),(5,1,'2024-04-29 09:41:46','2024-04-29 09:41:46',3),(6,1,'2024-04-29 09:41:46','2024-04-29 09:41:46',4),(7,1,'2024-04-29 09:41:46','2024-04-29 09:41:46',5),(8,2,'2024-04-29 09:41:46','2024-04-29 09:41:46',1),(9,2,'2024-04-29 09:41:46','2024-04-29 09:41:46',2),(10,2,'2024-04-29 09:41:46','2024-04-29 09:41:46',3),(13,2,'2024-04-29 09:41:46','2024-04-29 09:41:46',4),(14,2,'2024-04-29 09:41:46','2024-04-29 09:41:46',5),(15,3,'2024-04-29 09:41:46','2024-04-29 09:41:46',1),(16,3,'2024-04-29 09:41:46','2024-04-29 09:41:46',2),(17,3,'2024-04-29 09:41:46','2024-04-29 09:41:46',3),(18,3,'2024-04-29 09:41:46','2024-04-29 09:41:46',4),(19,3,'2024-04-29 09:41:46','2024-04-29 09:41:46',5),(20,4,'2024-04-29 09:41:46','2024-04-29 09:41:46',1),(21,4,'2024-04-29 09:41:46','2024-04-29 09:41:46',2),(22,4,'2024-04-29 09:41:46','2024-04-29 09:41:46',3),(23,4,'2024-04-29 09:41:47','2024-04-29 09:41:47',4),(24,4,'2024-04-29 09:41:47','2024-04-29 09:41:47',5),(25,5,'2024-04-29 09:41:47','2024-04-29 09:41:47',1),(26,5,'2024-04-29 09:41:47','2024-04-29 09:41:47',2),(27,5,'2024-04-29 09:41:47','2024-04-29 09:41:47',3),(28,5,'2024-04-29 09:41:47','2024-04-29 09:41:47',4),(29,5,'2024-04-29 09:41:47','2024-04-29 09:41:47',5),(30,6,'2024-04-29 09:41:47','2024-04-29 09:41:47',1),(31,6,'2024-04-29 09:41:47','2024-04-29 09:41:47',2),(32,6,'2024-04-29 09:41:47','2024-04-29 09:41:47',3),(33,6,'2024-04-29 09:41:47','2024-04-29 09:41:47',4),(34,6,'2024-04-29 09:41:47','2024-04-29 09:41:47',5),(35,7,'2024-04-29 09:41:47','2024-04-29 09:41:47',1),(36,7,'2024-04-29 09:41:47','2024-04-29 09:41:47',2),(37,7,'2024-04-29 09:41:47','2024-04-29 09:41:47',3),(38,7,'2024-04-29 09:41:47','2024-04-29 09:41:47',4),(39,7,'2024-04-29 09:41:47','2024-04-29 09:41:47',5),(40,8,'2024-04-29 09:41:47','2024-04-29 09:41:47',1),(41,8,'2024-04-29 09:41:47','2024-04-29 09:41:47',2),(42,8,'2024-04-29 09:41:47','2024-04-29 09:41:47',3),(43,8,'2024-04-29 09:41:47','2024-04-29 09:41:47',4),(44,9,'2024-04-29 09:41:47','2024-04-29 09:41:47',5),(45,9,'2024-04-29 09:41:47','2024-04-29 09:41:47',1),(46,9,'2024-04-29 09:41:47','2024-04-29 09:41:47',2),(47,9,'2024-04-29 09:41:47','2024-04-29 09:41:47',3),(48,9,'2024-04-29 09:41:48','2024-04-29 09:41:48',4),(49,9,'2024-04-29 09:41:48','2024-04-29 09:41:48',5),(50,10,'2024-04-29 09:41:48','2024-04-29 09:41:48',1),(51,10,'2024-04-29 09:41:48','2024-04-29 09:41:48',2),(52,10,'2024-04-29 09:41:48','2024-04-29 09:41:48',3),(53,10,'2024-04-29 09:41:48','2024-04-29 09:41:48',4),(54,10,'2024-04-29 09:41:48','2024-04-29 09:41:48',5);
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_type_id` int NOT NULL,
  `question_text` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `test_type_id` (`test_type_id`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,1,'您是否有严重的心理负担或感觉无法承受生活压力？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(2,1,'您是否有集中注意力的困难？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(3,1,'您最近的饮食习惯是否有改变（比如食欲不振或暴饮暴食）？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(4,1,'您最近是否经常感到疲劳或没有活力？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(5,1,'您是否觉得自己的自尊心和自信心降低了？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(6,1,'您最近是否对平时喜欢的活动失去了兴趣？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(7,1,'您最近是否感觉到精力缺乏，活力减少？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(8,1,'您最近是否感到情绪低落、沮丧或无望？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(9,1,'您最近是否有睡眠问题，比如难以入睡、经常夜醒或早醒？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(10,1,'您最近是否经常感到焦虑或担心？','2024-04-28 17:55:28','2024-04-28 17:55:28');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `standard_options`
--

DROP TABLE IF EXISTS `standard_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `standard_options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `option_text` varchar(255) NOT NULL,
  `score` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `standard_options`
--

LOCK TABLES `standard_options` WRITE;
/*!40000 ALTER TABLE `standard_options` DISABLE KEYS */;
INSERT INTO `standard_options` VALUES (1,'从不',0),(2,'很少',1),(3,'有时',2),(4,'经常',3),(5,'总是',4);
/*!40000 ALTER TABLE `standard_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_results`
--

DROP TABLE IF EXISTS `test_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `test_type_id` int NOT NULL,
  `score` int NOT NULL,
  `result_text` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `test_type_id` (`test_type_id`),
  KEY `test_results_user_id_fk` (`user_id`),
  CONSTRAINT `test_results_ibfk_2` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`) ON DELETE CASCADE,
  CONSTRAINT `test_results_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_results`
--

LOCK TABLES `test_results` WRITE;
/*!40000 ALTER TABLE `test_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_types`
--

DROP TABLE IF EXISTS `test_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_types`
--

LOCK TABLES `test_types` WRITE;
/*!40000 ALTER TABLE `test_types` DISABLE KEYS */;
INSERT INTO `test_types` VALUES (1,'焦虑测试','测试个人的焦虑水平','2024-03-17 15:44:32','2024-03-17 15:44:32'),(2,'心理健康评估',NULL,'2024-04-28 17:02:06','2024-04-28 17:02:08');
/*!40000 ALTER TABLE `test_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(55) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `uid` mediumtext,
  `avatar` varchar(2083) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'The One','1','13114082899@163.com','1','https://img2.baidu.com/it/u=2213011263,92283710&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=500'),(2,'Jone','554646488','test1@baomidou.com','5628741','/static/1.jpg'),(3,'yuye','a1563741625','1563741625@qq.com','1563741625','/static/logo.png'),(4,'qwer','qwer','17623045044@163.com','13114082899','/static/1.jpg'),(5,'qwer','qwer','17623045044@163.com','13114082899','/static/1.jpg'),(6,'qwer','qwer','17623045044@163.com','13114082890','/static/1.jpg'),(7,'qwer','qwer','17623045044@163.com','13214082890','/static/1.jpg'),(8,'qwe','qwe','q@q.c','18526542515','/static/1.jpg'),(9,'qwe','qwe','q@q.c','15625487999','/static/1.jpg'),(10,'aaaq','aaaq','q@q.c','18995648547','/static/1.jpg'),(11,'qqew','123','q@q.c','13115489567','/static/1.jpg'),(12,'qwer','123','q@q.c','15623545225','/static/1.jpg'),(13,'q','q','q@q.c','13564856654','/static/1.jpg'),(14,'认为其二','qwe','q@q.c','17895484152','/static/1.jpg'),(15,'w','w','q@q.c','12331223123','/static/1.jpg'),(16,'rr','rr','q@q.c','77777777777','/static/1.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_answers`
--

DROP TABLE IF EXISTS `user_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_answers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `question_id` int NOT NULL,
  `option_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `option_id` (`option_id`),
  KEY `question_id` (`question_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_answers_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_answers_ibfk_3` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_answers_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_answers`
--

LOCK TABLES `user_answers` WRITE;
/*!40000 ALTER TABLE `user_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_answers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-29 20:40:51
