-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mentaltest
-- ------------------------------------------------------
-- Server version	8.0.30

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_verification`
--

LOCK TABLES `email_verification` WRITE;
/*!40000 ALTER TABLE `email_verification` DISABLE KEYS */;
INSERT INTO `email_verification` VALUES (1,'q@q.c','123456','2024-04-12 03:24:04','2025-12-30 03:29:04'),(2,'17623045044@163.com','379050','2024-04-12 03:35:53','2024-04-12 03:40:53'),(3,'17623045044@163.com','373258','2024-04-12 03:37:10','2024-04-12 03:42:10'),(4,'17623045044@163.com','491337','2024-04-12 06:22:57','2024-04-12 06:27:57'),(5,'17623045044@163.com','096378','2024-04-12 06:50:49','2024-04-12 06:55:49'),(6,'17623045044@163.com','190731','2024-04-12 07:08:47','2024-04-12 07:13:47'),(7,'17623045044@163.com','277651','2024-04-12 07:14:37','2024-04-12 07:19:37'),(8,'17623045044@163.com','000993','2024-04-12 09:03:41','2024-04-12 09:08:41'),(9,'17623045044@163.com','361214','2024-04-12 09:25:34','2024-04-12 09:30:34'),(10,'17623045044@163.com','304447','2024-04-12 09:33:53','2024-04-12 09:38:53'),(11,'17623045044@163.com','249125','2024-04-12 09:42:40','2024-04-12 09:47:40'),(12,'1@q.c','531232','2024-04-26 08:48:09','2024-04-26 08:53:09'),(13,'1@q.c','739295','2024-04-26 08:48:15','2024-04-26 08:53:15'),(14,'1@q.z','503887','2024-04-26 08:50:30','2024-04-26 08:55:30'),(15,'13114082899@163.com','493662','2024-04-28 03:27:58','2024-04-28 03:32:58'),(16,'13114082899@163.com','879140','2024-04-28 03:30:46','2024-04-28 03:35:46'),(17,'13114082899@163.com','649181','2024-04-28 06:58:04','2024-04-28 07:03:04'),(18,'13114082899@163.com','663058','2024-04-28 06:59:07','2024-04-28 07:04:07'),(19,'13114082899@163.com','506844','2024-04-28 07:08:17','2024-04-28 07:13:17'),(20,'13114082899@163.com','807075','2024-04-28 07:45:37','2024-04-28 07:50:37'),(21,'13114082899@163.com','462742','2024-04-28 07:46:37','2024-04-28 07:51:37'),(22,'17623045044@163.com','581764','2024-05-07 05:49:45','2024-05-07 05:54:45'),(23,'m17623045044@163.com','318063','2024-05-07 05:50:29','2024-05-07 05:55:29'),(24,'m17623045044@163.com','974421','2024-05-07 05:51:00','2024-05-07 05:56:00'),(25,'m17623045044@163.com','547502','2024-05-07 05:51:01','2024-05-07 05:56:01'),(26,'m17623045044@163.com','880301','2024-05-07 05:51:01','2024-05-07 05:56:01'),(27,'m17623045044@163.com','250063','2024-05-07 05:51:03','2024-05-07 05:56:03'),(28,'2973642778@qq.com','080327','2024-05-07 15:14:34','2024-05-07 15:19:34');
/*!40000 ALTER TABLE `email_verification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_post`
--

DROP TABLE IF EXISTS `forum_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `summary` text,
  `author_id` int DEFAULT NULL,
  `user_avatar` varchar(2555) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_post`
--

LOCK TABLES `forum_post` WRITE;
/*!40000 ALTER TABLE `forum_post` DISABLE KEYS */;
INSERT INTO `forum_post` VALUES (1,'新手问答','这是一个关于如何使用论坛的帖子，适合新手用户阅读。',1,'/static/1.jpg','2024-05-09'),(2,'周末游玩','今天在重庆洪崖洞游玩，非常好玩，但是人很多',2,'/static/1.jpg','2024-05-09'),(3,'1','1',NULL,'/static/1.jpg','2024-05-09'),(4,'武汉好玩','五一去武汉玩了。心情得到放松',NULL,'/static/1.jpg','2024-05-02'),(5,'学生证','这是我的学生证，笑死我了！！！',NULL,'/static/1.jpg','2024-05-03'),(6,'2','2',NULL,'/static/1.jpg','2024-05-04'),(7,'3','3',NULL,'/static/1.jpg','2024-05-09'),(8,'4','4',NULL,'https://img2.baidu.com/it/u=2213011263,92283710&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=500','2024-05-09'),(13,'4','4',NULL,'https://img2.baidu.com/it/u=2213011263,92283710&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=500','2024-05-10');
/*!40000 ALTER TABLE `forum_post` ENABLE KEYS */;
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
-- Table structure for table `post_image`
--

DROP TABLE IF EXISTS `post_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `image_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `post_image_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `forum_post` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_image`
--

LOCK TABLES `post_image` WRITE;
/*!40000 ALTER TABLE `post_image` DISABLE KEYS */;
INSERT INTO `post_image` VALUES (1,1,'https://cdn.uviewui.com/uview/album/1.jpg'),(2,1,'https://cdn.uviewui.com/uview/album/2.jpg'),(3,1,'https://cdn.uviewui.com/uview/album/3.jpg'),(4,1,'https://cdn.uviewui.com/uview/album/4.jpg'),(5,1,'https://cdn.uviewui.com/uview/album/5.jpg'),(6,1,'https://cdn.uviewui.com/uview/album/6.jpg'),(7,1,'https://cdn.uviewui.com/uview/album/7.jpg'),(8,1,'https://cdn.uviewui.com/uview/album/8.jpg'),(9,1,'https://cdn.uviewui.com/uview/album/9.jpg'),(10,1,'https://cdn.uviewui.com/uview/album/10.jpg'),(11,2,'https://cdn.uviewui.com/uview/album/1.jpg'),(12,3,'https://cdn.uviewui.com/uview/album/2.jpg'),(13,4,'https://cdn.uviewui.com/uview/album/3.jpg'),(14,5,'https://cdn.uviewui.com/uview/album/5.jpg'),(15,6,'https://cdn.uviewui.com/uview/album/5.jpg'),(16,7,'/static/1.jpg'),(17,8,'https://cdn.uviewui.com/uview/album/9.jpg'),(18,8,'https://cdn.uviewui.com/uview/album/10.jpg'),(20,13,'https://www.freeimg.cn/i/2024/05/10/663d13405b4d1.jpg');
/*!40000 ALTER TABLE `post_image` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,1,'您是否有严重的心理负担或感觉无法承受生活压力？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(2,1,'您是否有集中注意力的困难？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(3,1,'您最近的饮食习惯是否有改变（比如食欲不振或暴饮暴食）？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(4,1,'您最近是否经常感到疲劳或没有活力？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(5,1,'您是否觉得自己的自尊心和自信心降低了？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(6,1,'您最近是否对平时喜欢的活动失去了兴趣？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(7,1,'您最近是否感觉到精力缺乏，活力减少？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(8,1,'您最近是否感到情绪低落、沮丧或无望？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(9,1,'您最近是否有睡眠问题，比如难以入睡、经常夜醒或早醒？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(10,1,'您最近是否经常感到焦虑或担心？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(24,2,'你觉得自己悲伤或沮丧的频率如何？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(25,2,'你是否对平时喜欢的活动失去兴趣？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(26,2,'你是否感觉到疲劳或缺乏动力？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(27,2,'你是否有自责的想法，或觉得自己无价值？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(28,2,'你是否觉得集中注意力困难？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(29,2,'你对未来是否持悲观态度？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(30,2,'你的睡眠习惯有何变化（例如睡不着、过度睡眠）？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(31,2,'你的食欲或体重有何变化？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(32,2,'你是否感到焦虑或不安？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(33,2,'你是否有逃避社交活动的倾向？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(34,2,'你是否感到身体上的不适如头痛、胃痛？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(35,2,'你是否对死亡或自杀有频繁的思考？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(36,2,'你是否觉得自己情绪控制能力下降？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(37,2,'你是否经常感到无力改变当前状况？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(38,2,'你是否有责任感减少的感觉？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(39,2,'你是否觉得难以做出决定？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(40,2,'你是否经常担忧过去的事情？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(41,2,'你是否有需要通过某些行为来减轻内心不安的感觉？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(42,2,'你是否经常感到别人对你不满或有敌意？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(43,2,'你是否感到经常需要独处？','2024-04-28 17:55:28','2024-04-28 17:55:28'),(45,3,'感到神经紧张或焦虑','2024-04-28 17:55:28','2024-04-28 17:55:28'),(46,3,'无法停止或控制担心','2024-04-28 17:55:28','2024-04-28 17:55:28'),(47,3,'过分担忧不同的事情','2024-04-28 17:55:28','2024-04-28 17:55:28'),(48,3,'难以放松','2024-04-28 17:55:28','2024-04-28 17:55:28'),(49,3,'因为不安而难以静坐','2024-04-28 17:55:28','2024-04-28 17:55:28'),(50,3,'变得容易烦恼或急躁','2024-04-28 17:55:28','2024-04-28 17:55:28'),(51,3,'感觉似乎即将发生可怕的事情','2024-04-28 17:55:28','2024-04-28 17:55:28'),(52,3,'有麻木或刺痛的感觉','2024-04-28 17:55:28','2024-04-28 17:55:28'),(53,3,'呼吸加快','2024-04-28 17:55:28','2024-04-28 17:55:28'),(54,3,'出汗不止','2024-04-28 17:55:28','2024-04-28 17:55:28'),(55,3,'感到疲劳或没有活力','2024-04-28 17:55:28','2024-04-28 17:55:28'),(56,3,'有睡眠障碍（难以入睡或睡不安稳，或睡眠过多）','2024-04-28 17:55:28','2024-04-28 17:55:28');
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
  `test_type_id` int NOT NULL,
  `score` int NOT NULL,
  `result_text` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `test_type_id` (`test_type_id`),
  CONSTRAINT `test_results_ibfk_2` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_results`
--

LOCK TABLES `test_results` WRITE;
/*!40000 ALTER TABLE `test_results` DISABLE KEYS */;
INSERT INTO `test_results` VALUES (1,1,8,'您的心理状况看起来相当健康。继续保持当前的生活方式，并注意适当的休息与放松。','2024-05-03 23:40:00','2024-05-03 23:40:00'),(2,1,16,'您可能有轻微的心理压力，建议您留意情绪变化，并尝试进行放松练习和适当的社交活动。','2024-05-03 23:40:00','2024-05-03 23:40:00'),(3,1,24,'您显示出中度的心理负担。建议寻找心理支持，如与朋友谈话或咨询专业的心理咨询师。','2024-05-03 23:40:00','2024-05-03 23:40:00'),(4,1,32,'您可能正在经历严重的心理压力或情绪困扰。强烈建议寻求专业的心理帮助，并考虑定期的心理咨询。','2024-05-03 23:40:00','2024-05-03 23:40:00'),(5,1,40,'您的心理压力非常重，可能处于心理健康的危险状态。紧急建议寻求专业的医疗和心理干预。','2024-05-03 23:40:00','2024-05-03 23:40:00'),(6,2,10,'您显示出极少或没有抑郁症状。这表明您当前的心理状态相对健康，建议继续维持健康的生活方式并保持积极的社交活动。尽管您的抑郁症状很轻微，但也请注意自己的情绪变化，并寻求支持如果您感到需要。','2024-05-03 23:40:00','2024-05-03 23:40:00'),(7,2,20,'你可能正在经历一些抑郁症状，但程度相对较轻，仍然能够进行日常活动。以下是一些建议，可以帮助你管理轻度抑郁症：寻求支持：与家人、朋友或其他信任的人分享你的感受。他们的支持和理解可以帮助你感到更加安慰和支持。\n保持活动：尽量保持规律的作息时间，参与一些你喜欢的活动，无论是锻炼、艺术、阅读还是其他爱好。这些活动可以分散你的注意力，帮助你感到更加积极和愉悦。\n建立健康的生活习惯：保持良好的饮食习惯、规律的运动和充足的睡眠对改善心理健康至关重要。尽量避免过度消费咖啡因和酒精，因为它们可能会加重抑郁症状。\n寻求专业帮助：即使是轻度抑郁症，也建议你寻求专业的心理咨询。心理治疗可以帮助你学会应对负面情绪和思维模式，以及提供支持和指导。\n探索自助技巧：学习一些应对抑郁症状的自助技巧，如放松技巧、呼吸练习、正向思考等。这些技巧可以帮助你在日常生活中更好地管理情绪。\n避免孤立：尽量避免孤立自己，与他人保持联系并寻求社交支持。参加支持群体或线上社区也是一个好的选择，与其他人分享经验和支持。                                                      \n记住，即使是轻度抑郁症，也应该认真对待，并积极寻求帮助和支持。重要的是要意识到自己的情况，并采取积极的步骤来改善心理健康。','2024-05-03 23:40:00','2024-05-03 23:40:00'),(8,2,30,'您可能正在经历中度抑郁症，处理需要更为积极和系统的干预，因为其症状通常更严重，可能对日常生活和工作造成显著影响。以下是应对中度抑郁症的一些策略：\n专业心理治疗：对于中度抑郁症，心理治疗是非常重要的治疗手段。认知行为疗法（CBT）和人际疗法（IPT）是两种经常用于治疗抑郁症的有效心理治疗方法。这些方法通过改变负面思维模式和改善人际关系来帮助缓解抑郁症状。\n药物治疗：对于中度至重度抑郁症，抗抑郁药物可能非常有帮助。这些药物可以调整大脑中的化学物质，从而改善情绪和抑郁症状。通常需要与医生密切合作，找到最适合你的药物类型和剂量。\n结构化的日程安排：建立固定的日程安排，确保有规律的饮食、睡眠和身体活动。这有助于增加日常生活的可预测性和控制感，从而减少抑郁情绪。\n社交支持：积极寻求家人和朋友的支持，参加支持小组或社交活动。分享你的感受和经历可以帮助减轻孤独感和无助感。\n健康生活方式：均衡饮食，规律运动和充足的睡眠对于心理健康至关重要。适度的体育活动尤其能够促进身体释放内啡肽，这是一种自然的情绪提升物质。\n学习应对策略：了解和实践各种减压技巧，如冥想、深呼吸、瑜伽等，这些可以帮助管理压力和提升情绪。\n定期评估和调整治疗方案：与你的心理医生或治疗师定期会面，评估你的进展并调整治疗计划。治疗抑郁症是一个动态过程，需要根据个人的反应进行调整。\n中度抑郁症的治疗是一个多方面的过程，需要结合心理治疗、药物治疗以及生活方式的改变。始终保持与治疗团队的密切沟通，并对治疗保持耐心和积极的态度是非常重要的。如果你正在经历中度抑郁症，请尽快寻求专业的帮助。','2024-05-03 23:40:00','2024-05-03 23:40:00'),(9,2,40,'显示重度抑郁症状，强烈建议寻求专业心理咨询，并考虑医疗干预。重视自我关怀，避免独处过长时间。与专业人士进行持续的治疗和咨询可能是您走出抑郁情绪的关键。','2024-05-03 23:40:00','2024-05-03 23:40:00'),(10,2,60,'这是一种严重的心理健康问题，但请放心，你并不孤单，我会尽力帮助你。首先，重要的是要知道你不是唯一一个面对这种情况的人，而且有许多有效的治疗方法可供选择。我建议你采取以下步骤：\n寻求专业帮助：首先，我强烈建议你寻求心理咨询师或临床心理学家的帮助。他们有专业的知识和经验，可以帮助你理解和处理抑郁症。他们可以提供支持、指导和治疗，帮助你逐渐克服抑郁的困扰。\n接受心理评估：专业的心理咨询师或临床心理学家可能会进行心理评估，以帮助确定你的抑郁症严重程度以及最适合你的治疗方法。这可以确保你得到个性化的治疗方案。\n接受治疗：治疗抑郁症的方法有很多种，包括心理治疗、药物治疗或二者结合。心理治疗可以帮助你了解和解决导致抑郁的根源，改变消极的思维模式和行为习惯。药物治疗可以帮助缓解抑郁症状，提高心理治疗的效果。\n寻求支持：除了专业帮助外，也很重要找到身边的支持系统，如家人、朋友或支持群体。他们可以给予你情感上的支持和鼓励，让你感到不那么孤单。\n自我照顾：在治疗抑郁症的过程中，不要忽视自己的身体健康。保持良好的饮食习惯、规律的运动和充足的睡眠对改善心理健康非常重要。\n最重要的是，不要独自面对抑郁症。寻求帮助是迈出克服困境的第一步，你值得拥有一个更健康、更快乐的生活。','2024-05-03 23:40:00','2024-05-03 23:40:00'),(11,2,80,'极度严重的抑郁状态，需要立即的专业干预。建议立即与专业医疗机构联系，实施全面的治疗计划，并有可能住院治疗。在此期间，家庭和朋友的支持是非常关键的。记住，您并不孤单，许多人都会经历类似的情绪困扰，但寻求帮助是您迈向康复的第一步。','2024-05-03 23:40:00','2024-05-03 23:40:00'),(12,3,9,'焦虑水平较低，通常不需要过多担心，但可以考虑一些放松和情绪调节的方法来维持心理健康。','2024-05-03 23:40:00','2024-05-03 23:40:00'),(13,3,19,'轻度至中度焦虑，可能在某些情况下感到焦虑或紧张，但一般不会严重干扰日常生活。可以尝试一些自我管理的技巧，如放松练习、运动等来减轻症状。','2024-05-03 23:40:00','2024-05-03 23:40:00'),(14,3,29,'中度至重度焦虑，焦虑症状已经对日常生活产生了较大影响，可能需要专业心理咨询师的帮助来更好地理解和应对焦虑。','2024-05-03 23:40:00','2024-05-03 23:40:00'),(15,3,48,'重度焦虑，焦虑症状严重且持续，已经明显影响到日常生活、工作和人际关系。强烈建议尽快寻求专业心理健康服务，包括心理咨询或治疗，以便得到更全面的评估和治疗。','2024-05-03 23:40:00','2024-05-03 23:40:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_types`
--

LOCK TABLES `test_types` WRITE;
/*!40000 ALTER TABLE `test_types` DISABLE KEYS */;
INSERT INTO `test_types` VALUES (1,'焦虑测试','测试个人的焦虑水平','2024-03-17 15:44:32','2024-03-17 15:44:32'),(2,'心理健康评估',NULL,'2024-04-28 17:02:06','2024-04-28 17:02:08'),(3,'焦虑状态评估',NULL,'2024-04-28 17:02:06','2024-04-28 17:02:06');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'The One','1','13114082899@163.com','1','https://img2.baidu.com/it/u=2213011263,92283710&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=500'),(2,'Jone','554646488','test1@baomidou.com','5628741','/static/1.jpg'),(3,'yuye','a1563741625','1563741625@qq.com','1563741625','/static/logo.png'),(4,'qwer','qwer','17623045044@163.com','13114082899','/static/1.jpg'),(6,'qwer','qwer','17623045044@163.com','13114082890','/static/1.jpg'),(7,'qwer','qwer','17623045044@163.com','13214082890','/static/1.jpg'),(8,'qwe','qwe','q@q.c','18526542515','/static/1.jpg'),(9,'qwe','qwe','q@q.c','15625487999','/static/1.jpg'),(10,'aaaq','aaaq','q@q.c','18995648547','/static/1.jpg'),(11,'qqew','123','q@q.c','13115489567','/static/1.jpg'),(12,'qwer','123','q@q.c','15623545225','/static/1.jpg'),(13,'q','q','q@q.c','13564856654','/static/1.jpg'),(14,'认为其二','qwe','q@q.c','17895484152','/static/1.jpg'),(15,'w','w','q@q.c','12331223123','/static/1.jpg'),(16,'rr','rr','q@q.c','77777777777','/static/1.jpg'),(17,'213123','123','2973642778@qq.com','13222222222','/static/1.jpg');
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
  `test_types_id` int NOT NULL,
  `test_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `test_result` varchar(2550) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `foreign_key_name` (`test_types_id`),
  CONSTRAINT `foreign_key_name` FOREIGN KEY (`test_types_id`) REFERENCES `test_types` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_answers_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_answers`
--

LOCK TABLES `user_answers` WRITE;
/*!40000 ALTER TABLE `user_answers` DISABLE KEYS */;
INSERT INTO `user_answers` VALUES (1,1,1,'焦虑测试','2024-05-08 12:18:57','您的心理压力非常重，可能处于心理健康的危险状态。紧急建议寻求专业的医疗和心理干预。');
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

-- Dump completed on 2024-05-10  2:21:12
