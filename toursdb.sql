-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: toursdb
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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add blogs',6,'add_blogs'),(22,'Can change blogs',6,'change_blogs'),(23,'Can delete blogs',6,'delete_blogs'),(24,'Can view blogs',6,'view_blogs'),(25,'Can add staff',7,'add_staff'),(26,'Can change staff',7,'change_staff'),(27,'Can delete staff',7,'delete_staff'),(28,'Can view staff',7,'view_staff'),(29,'Can add tours',8,'add_tours'),(30,'Can change tours',8,'change_tours'),(31,'Can delete tours',8,'delete_tours'),(32,'Can view tours',8,'view_tours'),(33,'Can add user',9,'add_user'),(34,'Can change user',9,'change_user'),(35,'Can delete user',9,'delete_user'),(36,'Can view user',9,'view_user'),(37,'Can add blog',10,'add_blog'),(38,'Can change blog',10,'change_blog'),(39,'Can delete blog',10,'delete_blog'),(40,'Can view blog',10,'view_blog'),(41,'Can add tour',11,'add_tour'),(42,'Can change tour',11,'change_tour'),(43,'Can delete tour',11,'delete_tour'),(44,'Can view tour',11,'view_tour'),(45,'Can add category',12,'add_category'),(46,'Can change category',12,'change_category'),(47,'Can delete category',12,'delete_category'),(48,'Can view category',12,'view_category'),(49,'Can add comment',13,'add_comment'),(50,'Can change comment',13,'change_comment'),(51,'Can delete comment',13,'delete_comment'),(52,'Can view comment',13,'view_comment'),(53,'Can add rating',14,'add_rating'),(54,'Can change rating',14,'change_rating'),(55,'Can delete rating',14,'delete_rating'),(56,'Can view rating',14,'view_rating'),(57,'Can add tag',15,'add_tag'),(58,'Can change tag',15,'change_tag'),(59,'Can delete tag',15,'delete_tag'),(60,'Can view tag',15,'view_tag'),(61,'Can add application',16,'add_application'),(62,'Can change application',16,'change_application'),(63,'Can delete application',16,'delete_application'),(64,'Can view application',16,'view_application'),(65,'Can add access token',17,'add_accesstoken'),(66,'Can change access token',17,'change_accesstoken'),(67,'Can delete access token',17,'delete_accesstoken'),(68,'Can view access token',17,'view_accesstoken'),(69,'Can add grant',18,'add_grant'),(70,'Can change grant',18,'change_grant'),(71,'Can delete grant',18,'delete_grant'),(72,'Can view grant',18,'view_grant'),(73,'Can add refresh token',19,'add_refreshtoken'),(74,'Can change refresh token',19,'change_refreshtoken'),(75,'Can delete refresh token',19,'delete_refreshtoken'),(76,'Can view refresh token',19,'view_refreshtoken'),(77,'Can add id token',20,'add_idtoken'),(78,'Can change id token',20,'change_idtoken'),(79,'Can delete id token',20,'delete_idtoken'),(80,'Can view id token',20,'view_idtoken'),(81,'Can add bill',21,'add_bill'),(82,'Can change bill',21,'change_bill'),(83,'Can delete bill',21,'delete_bill'),(84,'Can view bill',21,'view_bill'),(85,'Can add action',22,'add_action'),(86,'Can change action',22,'change_action'),(87,'Can delete action',22,'delete_action'),(88,'Can view action',22,'view_action');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_tours_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_tours_user_id` FOREIGN KEY (`user_id`) REFERENCES `tours_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-08-23 15:21:23.982681','1','Tour object (1)',1,'[{\"added\": {}}]',11,2),(2,'2021-08-23 16:54:01.883640','1','Category object (1)',1,'[{\"added\": {}}]',12,2),(3,'2021-08-23 16:59:03.015111','1','Tour object (1)',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',11,2),(4,'2021-08-23 17:01:18.601763','1','Tour object (1)',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',11,2),(5,'2021-08-24 12:13:09.047052','1','Blog object (1)',1,'[{\"added\": {}}]',10,2),(6,'2021-08-24 12:14:12.523796','1','Staff object (1)',1,'[{\"added\": {}}]',7,2),(7,'2021-08-24 12:17:31.038743','1','Tour object (1)',2,'[]',11,2),(8,'2021-08-24 12:32:39.181286','1','Tour object (1)',2,'[]',11,2),(9,'2021-09-08 10:59:37.235786','2','ĐÀ NẴNG',1,'[{\"added\": {}}]',12,2),(10,'2021-09-08 11:02:03.149282','2','Tour object (2)',1,'[{\"added\": {}}]',11,2),(11,'2021-09-08 11:02:59.428226','2','Tour object (2)',2,'[]',11,2),(12,'2021-09-09 06:53:05.153354','2','Blog object (2)',1,'[{\"added\": {}}]',10,2),(13,'2021-09-10 09:05:36.072018','2','Blog object (2)',2,'[{\"added\": {\"name\": \"comment\", \"object\": \"Comment object (1)\"}}]',10,2),(14,'2021-09-10 09:05:55.288508','1','Tour object (1)',3,'',11,2),(15,'2021-09-10 09:06:10.637899','2','Blog object (2)',2,'[{\"deleted\": {\"name\": \"comment\", \"object\": \"Comment object (None)\"}}]',10,2),(16,'2021-09-10 09:06:33.824630','2','Blog object (2)',2,'[{\"added\": {\"name\": \"comment\", \"object\": \"Comment object (2)\"}}]',10,2),(17,'2021-09-10 09:07:52.459149','2','Blog object (2)',2,'[{\"deleted\": {\"name\": \"comment\", \"object\": \"Comment object (None)\"}}]',10,2),(18,'2021-09-10 09:19:17.018380','2','Blog object (2)',2,'[{\"added\": {\"name\": \"comment\", \"object\": \"Comment object (3)\"}}]',10,2),(19,'2021-09-10 09:19:30.611683','2','Blog object (2)',2,'[{\"deleted\": {\"name\": \"comment\", \"object\": \"Comment object (None)\"}}]',10,2),(20,'2021-09-10 09:19:47.930091','2','Blog object (2)',2,'[{\"added\": {\"name\": \"comment\", \"object\": \"Comment object (4)\"}}]',10,2),(21,'2021-09-10 12:14:03.570136','2','Tour object (2)',2,'[{\"changed\": {\"fields\": [\"Price adult\", \"Price child\"]}}]',11,2),(22,'2021-09-10 12:23:16.716015','3','Tour object (3)',1,'[{\"added\": {}}]',11,2),(23,'2021-09-10 12:23:35.791407','2','Tour object (2)',3,'',11,2),(24,'2021-09-10 12:24:56.578150','4','Tour object (4)',1,'[{\"added\": {}}]',11,2),(25,'2021-09-10 12:27:51.718891','2','Tour object (2)',2,'[]',11,2),(26,'2021-09-10 12:28:05.701111','2','Tour object (2)',2,'[{\"changed\": {\"fields\": [\"Price adult\", \"Price child\"]}}]',11,2),(27,'2021-09-10 12:28:16.611870','1','Tour object (1)',2,'[{\"changed\": {\"fields\": [\"Price adult\", \"Price child\"]}}]',11,2),(28,'2021-09-10 12:28:42.404970','1','Tour object (1)',2,'[{\"changed\": {\"fields\": [\"Departure\"]}}]',11,2),(29,'2021-12-22 09:09:57.381454','2','Tour object (2)',2,'[{\"changed\": {\"fields\": [\"Title\", \"Image\", \"description\", \"Note\"]}}]',11,2),(30,'2021-12-22 09:09:57.732558','2','Tour object (2)',2,'[{\"changed\": {\"fields\": [\"Title\", \"Image\", \"description\", \"Note\"]}}]',11,2),(31,'2021-12-22 09:10:19.627841','2','Tour object (2)',2,'[]',11,2),(32,'2021-12-22 09:11:53.836336','3','Vũng Tàu',1,'[{\"added\": {}}]',12,2),(33,'2021-12-22 13:41:19.363082','1','Du lịch',1,'[{\"added\": {}}]',15,2),(34,'2021-12-22 13:41:30.840983','2','Trải nghiệm',1,'[{\"added\": {}}]',15,2),(35,'2021-12-22 13:43:45.454687','3','Tour hot',1,'[{\"added\": {}}]',15,2),(36,'2021-12-22 13:56:42.221975','2','Tour object (2)',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',11,2),(37,'2021-12-22 13:59:11.320661','3','Blog object (3)',1,'[{\"added\": {}}]',10,2),(38,'2021-12-22 14:00:33.960371','4','Blog object (4)',1,'[{\"added\": {}}]',10,2),(39,'2021-12-22 14:04:08.527432','1','Tour object (1)',2,'[{\"changed\": {\"fields\": [\"description\", \"Note\", \"Tags\"]}}]',11,2),(40,'2021-12-22 14:05:54.129918','1','Tour object (1)',2,'[{\"changed\": {\"fields\": [\"Title\", \"Image\"]}}]',11,2),(41,'2021-12-22 14:08:40.067392','5','Tour object (5)',1,'[{\"added\": {}}]',11,2),(42,'2021-12-22 14:09:52.292358','1','Staff object (1)',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,2),(43,'2021-12-22 14:12:22.545760','6','Tour object (6)',1,'[{\"added\": {}}]',11,2),(44,'2021-12-22 14:12:48.026836','1','Du lịch khám phá',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',12,2),(45,'2021-12-22 14:13:01.773943','2','Tham quan',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',12,2),(46,'2021-12-22 14:13:15.415338','3','Bãi biển',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',12,2),(47,'2021-12-22 14:13:23.575223','4','Miền Bắc',1,'[{\"added\": {}}]',12,2),(48,'2021-12-22 14:13:30.185676','5','Miền Trung',1,'[{\"added\": {}}]',12,2),(49,'2021-12-22 14:13:37.539499','6','Miền Nam',1,'[{\"added\": {}}]',12,2),(50,'2021-12-22 14:14:04.806696','2','Staff object (2)',1,'[{\"added\": {}}]',7,2),(51,'2021-12-22 14:16:49.241642','7','Tour object (7)',1,'[{\"added\": {}}]',11,2),(52,'2021-12-23 07:49:04.547023','8','Tour object (8)',1,'[{\"added\": {}}]',11,2),(53,'2021-12-23 14:12:41.854600','5','Blog object (5)',1,'[{\"added\": {}}]',10,2),(54,'2021-12-23 14:17:43.724694','1','Staff object (1)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,2),(55,'2021-12-23 14:17:59.629855','2','Staff object (2)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,2),(56,'2021-12-23 16:10:00.214277','2','Tour object (2)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',11,2),(57,'2021-12-23 16:10:15.191722','7','Tour object (7)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',11,2),(58,'2021-12-23 16:13:43.421565','6','Blog object (6)',1,'[{\"added\": {}}]',10,2),(59,'2021-12-24 11:40:17.001994','3','ngan123',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',9,2),(60,'2021-12-24 11:42:44.091167','3','ngan123',2,'[{\"changed\": {\"fields\": [\"User permissions\", \"Email address\"]}}]',9,2),(61,'2021-12-24 11:43:04.874240','3','ngan123',2,'[]',9,2),(62,'2021-12-24 11:44:30.804555','3','ngan123',2,'[{\"changed\": {\"fields\": [\"Superuser status\"]}}]',9,2),(63,'2021-12-24 12:03:32.572320','3','ngan123',2,'[{\"changed\": {\"fields\": [\"User permissions\", \"Staff status\"]}}]',9,2),(64,'2021-12-24 12:03:40.994723','3','ngan123',2,'[]',9,2),(65,'2021-12-24 12:05:23.940187','3','ngan123',2,'[{\"changed\": {\"fields\": [\"Superuser status\", \"Number\", \"Address\"]}}]',9,2),(66,'2021-12-24 12:20:51.284796','4','ngan1234',2,'[{\"changed\": {\"fields\": [\"User permissions\", \"Email address\", \"Staff status\"]}}]',9,2),(67,'2021-12-24 12:25:11.159355','4','ngan1234',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,2),(68,'2021-12-24 13:02:30.861897','1','admin',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,2),(69,'2021-12-24 13:03:41.592224','1','admin',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',9,2),(70,'2021-12-24 13:03:51.430930','3','ngan123',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',9,2),(71,'2021-12-24 13:35:58.879722','1','trinh',2,'[{\"changed\": {\"fields\": [\"Superuser status\", \"Username\", \"Email address\"]}}]',9,2),(72,'2021-12-24 13:36:19.511953','2','admin1',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,2),(73,'2021-12-26 08:12:10.295325','10','Tour object (10)',1,'[{\"added\": {}}]',11,2),(74,'2021-12-26 08:15:34.746697','7','Blog object (7)',1,'[{\"added\": {}}]',10,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(17,'oauth2_provider','accesstoken'),(16,'oauth2_provider','application'),(18,'oauth2_provider','grant'),(20,'oauth2_provider','idtoken'),(19,'oauth2_provider','refreshtoken'),(5,'sessions','session'),(22,'tours','action'),(21,'tours','bill'),(10,'tours','blog'),(6,'tours','blogs'),(12,'tours','category'),(13,'tours','comment'),(14,'tours','rating'),(7,'tours','staff'),(15,'tours','tag'),(11,'tours','tour'),(8,'tours','tours'),(9,'tours','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-08-22 13:58:41.102688'),(2,'contenttypes','0002_remove_content_type_name','2021-08-22 13:58:44.650714'),(3,'auth','0001_initial','2021-08-22 13:58:58.718525'),(4,'auth','0002_alter_permission_name_max_length','2021-08-22 13:59:00.697753'),(5,'auth','0003_alter_user_email_max_length','2021-08-22 13:59:00.826419'),(6,'auth','0004_alter_user_username_opts','2021-08-22 13:59:01.056361'),(7,'auth','0005_alter_user_last_login_null','2021-08-22 13:59:01.279159'),(8,'auth','0006_require_contenttypes_0002','2021-08-22 13:59:01.372908'),(9,'auth','0007_alter_validators_add_error_messages','2021-08-22 13:59:01.466203'),(10,'auth','0008_alter_user_username_max_length','2021-08-22 13:59:01.585153'),(11,'auth','0009_alter_user_last_name_max_length','2021-08-22 13:59:01.672214'),(12,'auth','0010_alter_group_name_max_length','2021-08-22 13:59:02.153967'),(13,'auth','0011_update_proxy_permissions','2021-08-22 13:59:02.348446'),(14,'auth','0012_alter_user_first_name_max_length','2021-08-22 13:59:02.419821'),(15,'tours','0001_initial','2021-08-22 13:59:23.266892'),(16,'admin','0001_initial','2021-08-22 13:59:30.506490'),(17,'admin','0002_logentry_remove_auto_add','2021-08-22 13:59:30.779620'),(18,'admin','0003_logentry_add_action_flag_choices','2021-08-22 13:59:31.177831'),(19,'sessions','0001_initial','2021-08-22 13:59:35.565755'),(20,'tours','0002_auto_20210823_2141','2021-08-23 14:45:16.940998'),(21,'tours','0003_auto_20210823_2339','2021-08-23 16:40:14.527346'),(22,'tours','0004_alter_blog_image','2021-08-24 12:08:41.817692'),(23,'tours','0005_auto_20210909_1525','2021-09-09 08:28:47.662253'),(24,'tours','0006_rename_body_comment_description','2021-09-09 08:28:47.974695'),(25,'tours','0007_auto_20210909_1647','2021-09-09 09:49:37.882189'),(26,'tours','0008_alter_comment_author','2021-09-09 09:49:44.269946'),(27,'tours','0009_auto_20210910_1559','2021-09-10 09:00:03.589671'),(28,'tours','0010_remove_comment_tour','2021-09-10 09:11:32.916765'),(29,'tours','0011_auto_20210912_1634','2021-09-12 09:34:49.992007'),(30,'tours','0012_auto_20210914_1554','2021-09-14 08:54:33.315141'),(31,'tours','0013_auto_20211222_1540','2021-12-22 08:41:56.016917'),(32,'tours','0014_auto_20211222_2037','2021-12-22 13:37:38.839120'),(33,'tours','0015_auto_20211222_2048','2021-12-22 13:49:14.391194'),(34,'tours','0016_auto_20211222_2055','2021-12-22 13:55:52.660184'),(35,'tours','0017_remove_tour_address','2021-12-22 14:05:12.264581'),(36,'tours','0018_staff_image','2021-12-23 14:17:04.688304'),(37,'oauth2_provider','0001_initial','2021-12-24 07:01:37.867273'),(38,'oauth2_provider','0002_auto_20190406_1805','2021-12-24 07:01:41.597749'),(39,'oauth2_provider','0003_auto_20201211_1314','2021-12-24 07:01:45.140477'),(40,'oauth2_provider','0004_auto_20200902_2022','2021-12-24 07:02:09.799369'),(41,'tours','0019_auto_20211224_1836','2021-12-24 11:36:35.970987'),(42,'tours','0020_alter_user_image','2021-12-24 13:04:43.077482'),(43,'tours','0021_auto_20211225_1814','2021-12-25 11:14:42.908609'),(44,'tours','0022_auto_20211226_1351','2021-12-26 06:52:19.220445');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1v7wjklnkc6aiuelkmh25j3zcexf7sat','.eJxVjMsOwiAQRf-FtSHypi7d-w1kBgapGkhKuzL-uyXpQrfnnHvfLMC2lrB1WsKc2IVJdvplCPFJdYj0gHpvPLa6LjPykfDDdn5riV7Xo_07KNDLWMfktNcoIRqnbXaASIKM0i6TSmeZjAGykxLeTUL6LNUe0M6jk2iBfb76JDhg:1mI9SM:xRo_NtnOBYLjuPYoto4GlKbuL-CFQqenLcXh9P_z3f4','2021-09-06 12:53:38.370625'),('8kr4lvt4ekzc9orr1w13a4zyvmakfjbj','.eJxVjMsOwiAQRf-FtSHypi7d-w1kBgapGkhKuzL-uyXpQrfnnHvfLMC2lrB1WsKc2IVJdvplCPFJdYj0gHpvPLa6LjPykfDDdn5riV7Xo_07KNDLWMfktNcoIRqnbXaASIKM0i6TSmeZjAGykxLeTUL6LNUe0M6jk2iBfb76JDhg:1n11rC:vLlfEF6DAdDMrIkfSwxTdkKrzUY5oE0jHoT1PbBKR88','2022-01-08 07:52:46.545631'),('9l0m9nzwgb8jn2q1ski0yum58qzvzpd2','.eJxVjMsOwiAQRf-FtSHypi7d-w1kBgapGkhKuzL-uyXpQrfnnHvfLMC2lrB1WsKc2IVJdvplCPFJdYj0gHpvPLa6LjPykfDDdn5riV7Xo_07KNDLWMfktNcoIRqnbXaASIKM0i6TSmeZjAGykxLeTUL6LNUe0M6jk2iBfb76JDhg:1mPOle:8N6Rtgg4Y2lmN_Y-RxBI1BLIM9_S44XGEm5kxodNS2Q','2021-09-26 12:39:30.482483'),('zlj2ed6qa4fnvtde5qucdazc5nauoph1','.eJxVjMsOwiAQRf-FtSHypi7d-w1kBgapGkhKuzL-uyXpQrfnnHvfLMC2lrB1WsKc2IVJdvplCPFJdYj0gHpvPLa6LjPykfDDdn5riV7Xo_07KNDLWMfktNcoIRqnbXaASIKM0i6TSmeZjAGykxLeTUL6LNUe0M6jk2iBfb76JDhg:1mI9kg:6p8SDRai2PeyRQMe6cMZmM1KtoJFXcn3_LJoU78GSh8','2021-09-06 13:12:34.660598');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_accesstoken`
--

DROP TABLE IF EXISTS `oauth2_provider_accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_accesstoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `source_refresh_token_id` bigint DEFAULT NULL,
  `id_token_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  UNIQUE KEY `source_refresh_token_id` (`source_refresh_token_id`),
  UNIQUE KEY `id_token_id` (`id_token_id`),
  KEY `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_accesstoken_user_id_6e4c9a65_fk_tours_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_acce_id_token_id_85db651b_fk_oauth2_pr` FOREIGN KEY (`id_token_id`) REFERENCES `oauth2_provider_idtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr` FOREIGN KEY (`source_refresh_token_id`) REFERENCES `oauth2_provider_refreshtoken` (`id`),
  CONSTRAINT `oauth2_provider_accesstoken_user_id_6e4c9a65_fk_tours_user_id` FOREIGN KEY (`user_id`) REFERENCES `tours_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'Ky3grG7fPLfnp5UBABTMQMrXlJmgVu','2021-12-24 17:15:36.260995','read write',1,2,'2021-12-24 07:15:36.260995','2021-12-24 07:15:36.260995',NULL,NULL),(2,'uMU0kCBE6mGD6Vw2csgyIGEDX66AOm','2021-12-24 17:21:54.496819','read write',1,2,'2021-12-24 07:21:54.497784','2021-12-24 07:21:54.497784',NULL,NULL),(3,'lwRABzrgWXeZ7z1jDyN6B06SfOyHpw','2021-12-25 17:37:40.306506','read write',1,2,'2021-12-25 07:37:40.306506','2021-12-25 07:37:40.306506',NULL,NULL),(4,'92V7aQ7hEISJ9eyh7BvcU6fRS3xAy6','2021-12-25 17:40:09.430280','read write',1,2,'2021-12-25 07:40:09.431242','2021-12-25 07:40:09.431242',NULL,NULL),(5,'cs71QQNZKKxFKJkrCyLHxKRu0UxrZy','2021-12-25 17:45:47.484251','read write',1,2,'2021-12-25 07:45:47.485214','2021-12-25 07:45:47.485214',NULL,NULL),(6,'ufWJ5FPTim3DKwPyGQHjKG1FoeZJxW','2021-12-25 22:05:26.042974','read write',1,2,'2021-12-25 12:05:26.042974','2021-12-25 12:05:26.042974',NULL,NULL),(7,'qo777QgL0TIb1XFbV1xUbGeoPlKTKs','2021-12-26 17:22:43.863556','read write',1,2,'2021-12-26 07:22:43.864551','2021-12-26 07:22:43.864551',NULL,NULL);
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_application`
--

DROP TABLE IF EXISTS `oauth2_provider_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_application` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorization_grant_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `algorithm` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_application_user_id_79829054_fk_tours_user_id` (`user_id`),
  KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`),
  CONSTRAINT `oauth2_provider_application_user_id_79829054_fk_tours_user_id` FOREIGN KEY (`user_id`) REFERENCES `tours_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
INSERT INTO `oauth2_provider_application` VALUES (1,'REHMAdwZfGnNP6l6A5HrISzPTRfR3QqhyakXwJ4E','','confidential','password','xnbMsaKEPtsLP6EtnmJQgFLeXFoEBdqJSM2OODis5xb5JgAo6grRA2e6964iaKsCfaDcvUwiDXXcvSrWgTXcAKaGIsX4mOPN0z9pgYZpFDwQfnWSKBNIsnbUSqfJRvAm','EToursApp',2,0,'2021-12-24 07:07:09.178638','2021-12-24 07:07:09.178638','');
/*!40000 ALTER TABLE `oauth2_provider_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_grant`
--

DROP TABLE IF EXISTS `oauth2_provider_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_grant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `code_challenge` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_challenge_method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonce` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claims` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_grant_user_id_e8f62af8_fk_tours_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_grant_user_id_e8f62af8_fk_tours_user_id` FOREIGN KEY (`user_id`) REFERENCES `tours_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_grant`
--

LOCK TABLES `oauth2_provider_grant` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_idtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_idtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_idtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `jti` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jti` (`jti`),
  KEY `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_idtoken_user_id_dd512b59_fk_tours_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_idtoken_user_id_dd512b59_fk_tours_user_id` FOREIGN KEY (`user_id`) REFERENCES `tours_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_idtoken`
--

LOCK TABLES `oauth2_provider_idtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_refreshtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` bigint DEFAULT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `revoked` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token_id` (`access_token_id`),
  UNIQUE KEY `oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq` (`token`,`revoked`),
  KEY `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_refreshtoken_user_id_da837fce_fk_tours_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  CONSTRAINT `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_refreshtoken_user_id_da837fce_fk_tours_user_id` FOREIGN KEY (`user_id`) REFERENCES `tours_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'4jFIdde6h3VvbWWhXkfzXgHFCAMCty',1,1,2,'2021-12-24 07:15:36.553234','2021-12-24 07:15:36.553234',NULL),(2,'hpXMyzvm3BsO77m3d63zrHWZqTUYVe',2,1,2,'2021-12-24 07:21:54.515995','2021-12-24 07:21:54.515995',NULL),(3,'vxoV5c5emSNhUpqYiWcuVIOFE0UGw2',3,1,2,'2021-12-25 07:37:40.397000','2021-12-25 07:37:40.397000',NULL),(4,'GK6o4LB2RkB3xLRbIRVgG2XzO49Fpj',4,1,2,'2021-12-25 07:40:09.524761','2021-12-25 07:40:09.524761',NULL),(5,'AWh6b6zIE8aBLg8glKUbcQPvT8tCcC',5,1,2,'2021-12-25 07:45:47.499510','2021-12-25 07:45:47.499510',NULL),(6,'g2bq0oYctfk71sUFMoCPUXHIVpF5en',6,1,2,'2021-12-25 12:05:26.102037','2021-12-25 12:05:26.103044',NULL),(7,'TRbrctXnMZWU0OkYOuHHHi5dIsreUS',7,1,2,'2021-12-26 07:22:43.999342','2021-12-26 07:22:44.000373',NULL);
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours_action`
--

DROP TABLE IF EXISTS `tours_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tours_action` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `type` smallint unsigned NOT NULL,
  `author_id` bigint NOT NULL,
  `blog_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tours_action_author_id_ec6c768f_fk_tours_user_id` (`author_id`),
  KEY `tours_action_blog_id_d0192ca1_fk_tours_blog_id` (`blog_id`),
  CONSTRAINT `tours_action_author_id_ec6c768f_fk_tours_user_id` FOREIGN KEY (`author_id`) REFERENCES `tours_user` (`id`),
  CONSTRAINT `tours_action_blog_id_d0192ca1_fk_tours_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `tours_blog` (`id`),
  CONSTRAINT `tours_action_chk_1` CHECK ((`type` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours_action`
--

LOCK TABLES `tours_action` WRITE;
/*!40000 ALTER TABLE `tours_action` DISABLE KEYS */;
INSERT INTO `tours_action` VALUES (1,'2021-12-26 07:23:13.453754','2021-12-26 07:23:13.453754',0,2,1);
/*!40000 ALTER TABLE `tours_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours_bill`
--

DROP TABLE IF EXISTS `tours_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tours_bill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tour_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tours_bill_tour_id_31f62c45_fk_tours_tour_id` (`tour_id`),
  CONSTRAINT `tours_bill_tour_id_31f62c45_fk_tours_tour_id` FOREIGN KEY (`tour_id`) REFERENCES `tours_tour` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours_bill`
--

LOCK TABLES `tours_bill` WRITE;
/*!40000 ALTER TABLE `tours_bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `tours_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours_blog`
--

DROP TABLE IF EXISTS `tours_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tours_blog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tours_blog_title_f379a265_uniq` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours_blog`
--

LOCK TABLES `tours_blog` WRITE;
/*!40000 ALTER TABLE `tours_blog` DISABLE KEYS */;
INSERT INTO `tours_blog` VALUES (1,'Caravan Nam Trung Bộ- hành trình vượt biển xuyên rừng','blogs/2021/08/caravan-xuyen-rung-xuong-bien.jpg','2021-08-24 12:13:08.957101','2021-08-24 12:13:08.957101','Không chỉ nổi tiếng với hàng loạt bờ biển xinh đẹp nhất nước, vùng đất Nam Trung bộ còn sở hữu những cung đường biển tuyệt đẹp khiến ai cũng mê mẩn. Để khởi động một mùa hè đầy hứng khởi, hành trình caravan vượt biển xuyên rừng mang đến cho bạn nhiều trải nghiệm gần gũi về cung đường biển nên thơ cùng những giá trị làm nên nét đặc sắc của vùng đất Nam Trung bộ. Mãn nhãn với cung đường huyền thoại',1),(2,'Nét độc đáo trong bản sắc văn hoá dân tộc Hà Giang','blogs/2021/09/BlogsHG.jpg','2021-09-09 06:53:05.123180','2021-09-10 09:19:47.912069','<p>H&agrave; Giang l&agrave; v&ugrave;ng đất c&oacute; lịch sử văn h&oacute;a l&acirc;u đời, nơi hội tụ của 19 d&acirc;n tộc anh em với kh&aacute; nhiều d&acirc;n tộc thiểu số sinh sống. Mỗi d&acirc;n tộc mang đến cho H&agrave; Giang một n&eacute;t văn ho&aacute; độc đ&aacute;o ri&ecirc;ng. Nổi bật trong số đ&oacute; l&agrave; d&acirc;n tộc M&ocirc;ng, Dao v&agrave; T&agrave;y.</p>\r\n\r\n<p><img alt=\"Nét độc đáo trong bản sắc văn hóa dân tộc ở Hà Giang\" src=\"https://media.vietravel.com/Images/NewsPicture/shutterstock%20-%20Copy.jpg\" /></p>\r\n\r\n<p>Được biết, ở H&agrave; Giang d&acirc;n tộc M&ocirc;ng chiếm đa số với hai nh&oacute;m ch&iacute;nh l&agrave;: M&ocirc;ng trắng v&agrave; M&ocirc;ng hoa. Đ&acirc;y cũng l&agrave; một trong những d&acirc;n tộc &iacute;t bị mai một về văn h&oacute;a. Người M&ocirc;ng ở đ&acirc;y th&iacute;ch nghi với đời sống tr&ecirc;n c&aacute;c d&atilde;y n&uacute;i cao từ 800m đến 1.700m so với mặt nước biển, thế n&ecirc;n rất nổi tiếng với truyền thống canh t&aacute;c nương đ&aacute;, trồng l&uacute;a, ng&ocirc;. Họ c&ograve;n rất giỏi trong việc đan l&aacute;t, l&agrave;m gỗ, dệt vải lanh cho ra đời những trang phục truyền thống rất đẹp v&agrave; độc đ&aacute;o.<br />\r\n&nbsp;<br />\r\n<img alt=\"Nét độc đáo trong bản sắc văn hóa dân tộc ở Hà Giang\" src=\"https://media.vietravel.com/Images/NewsPicture/thu-hoach-ngo.JPG\" /><br />\r\nGắn liền với đời sống của họ l&agrave; nghệ thuật m&uacute;a kh&egrave;n. Người M&ocirc;ng thường m&uacute;a kh&egrave;n v&agrave;o những dịp sinh hoạt văn h&oacute;a, đ&aacute;m tang, đ&aacute;m giỗ hoặc khi c&oacute; lễ hội. Một trong những lễ hội quan trọng nhất của họ l&agrave; Lễ hội Gầu T&agrave;o &ndash; cầu ph&uacute;c. Du lịch H&agrave; Giang đến M&egrave;o Vạc, du kh&aacute;ch c&oacute; thể thưởng thức điệu m&uacute;a kh&egrave;n độc đ&aacute;o n&agrave;y tại c&aacute;c phi&ecirc;n chợ, đặc biệt l&agrave; ở phi&ecirc;n chợ t&igrave;nh Kh&acirc;u Vai.<br />\r\nKh&aacute;c với M&ocirc;ng, người Dao c&oacute; tập t&iacute;nh sống gần nguồn nước. V&igrave; thế họ sinh sống nhiều ở lưng n&uacute;i, chủ yếu bằng nghề n&ocirc;ng nghiệp tr&ecirc;n c&aacute;c ruộng bậc thang với c&aacute;c loại lương thực như l&uacute;a, ng&ocirc;, khoai, sắn, tam gi&aacute;c mạch,&hellip; B&ecirc;n cạnh đ&oacute;, nghề th&ecirc;u in hoa tr&ecirc;n vải bằng s&aacute;p ong của người Dao cũng v&ocirc; c&ugrave;ng nổi tiếng.<br />\r\n<img alt=\"Nét độc đáo trong bản sắc văn hóa dân tộc ở Hà Giang\" src=\"https://media.vietravel.com/Images/NewsPicture/Mu%CC%81a%20khe%CC%80n.JPG\" /><br />\r\nVăn h&oacute;a của người Dao cũng kh&aacute; phức tạp bởi gồm nhiều nh&oacute;m kh&aacute;c nhau thể hiện r&otilde; n&eacute;t qua &yacute; thức t&acirc;m linh cộng đồng, m&ecirc; t&iacute;n dị đoan, quan niệm sinh sống v&agrave; c&aacute;c h&igrave;nh thức nghi lễ cũng như trong văn h&oacute;a d&acirc;n gian. Lễ hội được đ&aacute;nh gi&aacute; l&agrave; đặc sắc nhất của người Dao ch&iacute;nh l&agrave; Lễ cấp Sắc d&agrave;nh cho nam giới. Du lịch H&agrave; Giang v&agrave;o những th&aacute;ng cuối năm (th&aacute;ng 11, 12 hoặc th&aacute;ng Gi&ecirc;ng), du kh&aacute;ch sẽ c&oacute; dịp được tham gia v&agrave;o lễ hội n&agrave;y v&agrave; chứng kiến rất nhiều n&eacute;t đặc sắc v&agrave; độc đ&aacute;o của văn h&oacute;a của người Dao.</p>',1),(3,'Top 4 quán trà chiều không thể bỏ qua khi du lịch Đà Lạt','blogs/2021/12/top-4-quan-tra-chieu-khong-the-bo-qua-khi-du-lich-da-lat.jpg','2021-12-22 13:59:11.177836','2021-12-22 13:59:11.177836','<p>Ngo&agrave;i thăm quan v&agrave; kh&aacute;m ph&aacute; những địa điểm du lịch đẹp như tranh ở th&agrave;nh phố sương m&ugrave;, th&igrave; du kh&aacute;ch c&ograve;n c&oacute; thể gh&eacute; qua những qu&aacute;n tr&agrave; chiều ở Đạt L&agrave; để ăn b&aacute;nh, uống tr&agrave; v&agrave; thưởng thức những vui tao nh&atilde; của những con người thương y&ecirc;u tại nơi đ&acirc;y. C&ugrave;ng điểm qua TOP 4 qu&aacute;n tr&agrave; chiều kh&ocirc;ng thể bỏ qua khi&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-lat\"><strong>du lịch Đ&agrave; Lạt</strong></a>&nbsp;th&ocirc;ng qua b&agrave;i viết sau đ&acirc;y!</p>\r\n\r\n<h2><strong>TOP 4 qu&aacute;n tr&agrave; chiều kh&ocirc;ng thể bỏ lỡ khi du lịch Đ&agrave; Lạt</strong></h2>\r\n\r\n<p>T&igrave;m kiếm một kh&ocirc;ng gian b&igrave;nh y&ecirc;n v&agrave; thưởng thức những t&aacute;ch tr&agrave; ấm n&oacute;ng v&agrave;o cuối chiều l&agrave; một trong những th&uacute; vui tao nh&atilde; được l&ograve;ng t&iacute;n đồ kh&aacute;ch du lịch Đ&agrave; Lạt. Khung cảnh ho&agrave;ng đồ đầy thơ mộng c&ugrave;ng với một ch&uacute;t se lạnh của th&agrave;nh phố sẽ khiến kh&aacute;ch&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-lat\"><strong>tour Đ&agrave; Lạt</strong></a>&nbsp;cảm thấy th&iacute;ch th&uacute;. Sau đ&acirc;y sẽ l&agrave; TOP 4 qu&aacute;n tr&agrave; chiều đầy Đ&agrave; Lạt l&atilde;ng m&agrave; bạn kh&ocirc;ng n&ecirc;n bỏ lỡ trong chuyến đi của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"Top 4 quán trà chiều không thể bỏ qua khi du lịch Đà Lạt\" src=\"https://dulichviet.com.vn/images/bandidau/top-4-quan-tra-chieu-khong-the-bo-qua-khi-du-lich-da-lat.jpg\" /></p>\r\n\r\n<p><em>Top 4 qu&aacute;n tr&agrave; chiều kh&ocirc;ng thể bỏ qua khi du lịch Đ&agrave; Lạt</em></p>\r\n\r\n<h3><strong>Dalat Palace</strong></h3>\r\n\r\n<p>Le Rabelais - Dalat Palace được xem l&agrave; một trong những qu&aacute;n tr&agrave; chiều Đ&agrave; Lạt được giới trẻ y&ecirc;u th&iacute;ch nhất. Kh&ocirc;ng gian được thiết kế sang trọng, cổ điển v&agrave; mang đậm chất phương T&acirc;y. Để c&oacute; được một buổi chiều nh&acirc;m nhi t&aacute;ch tr&agrave; b&aacute;nh l&atilde;ng mạn, th&igrave; bạn h&atilde;y l&ecirc;n kế hoạch gh&eacute; qua kh&aacute;ch sạn xinh đẹp n&agrave;y.</p>\r\n\r\n<ul>\r\n	<li>Địa chỉ: Đường số 2 Trần Ph&uacute; - Phường 3 - TP. Đ&agrave; Lạt</li>\r\n</ul>\r\n\r\n<p>C&oacute; hướng nh&igrave;n ra hồ Xu&acirc;n Hương, được thiết kế theo phong c&aacute;ch đầy tinh tế, l&atilde;ng mạn. Khi đến với nơi đ&acirc;y, du kh&aacute;ch sẽ được thưởng thức những t&aacute;ch tr&agrave; trong một kh&ocirc;ng gian ấm c&uacute;ng với &aacute;nh đ&egrave;n lung linh, b&agrave;n ghế được b&agrave;y tr&iacute; v&ocirc; c&ugrave;ng đẹp mắt, đ&uacute;ng phong c&aacute;ch của nh&agrave; h&agrave;ng Ph&aacute;p qu&yacute; tộc cổ điển. Đ&acirc;y được xem l&agrave; địa điểm uống tr&agrave;nh d&agrave;nh cho những t&iacute;n đồ ch&uacute; trọng về mặt kh&ocirc;ng gian, th&iacute;ch sự sang trọng v&agrave; tinh tế.</p>\r\n\r\n<p>Hiện tại nh&agrave; h&agrave;ng c&ograve;n phục vụ tới 20 loại b&aacute;nh ngọt kiểu &Aacute; v&agrave; kiểu &Acirc;u v&ocirc; c&ugrave;ng đặc sắc c&ugrave;ng với đ&oacute; l&agrave; rất nhiều loại tr&agrave; v&agrave; c&agrave; ph&ecirc; đủ để kh&aacute;ch&nbsp;<strong>du lịch Đ&agrave; Lạ</strong>t c&oacute; thể lựa chọn. Hiện tại, một set tr&agrave; chiều tại đ&acirc;y sẽ c&oacute; gi&aacute; khoảng 390.000 VNĐ/2 người. Du kh&aacute;ch sẽ được nh&acirc;m nhi với những m&oacute;n b&aacute;nh thơm ngon như: B&ocirc;ng lan, b&aacute;nh Chocolate, b&aacute;nh kem... được chế biến rất thơm ngon, m&agrave;u sắc hấp dẫn.</p>\r\n\r\n<h3><strong>Bach Du Tea Coffee House</strong></h3>\r\n\r\n<ul>\r\n	<li>Địa chỉ: 142 Yersin, Phường 9, TP. Đ&agrave; Lạt</li>\r\n</ul>\r\n\r\n<p>Đ&acirc;y cũng được xem l&agrave; một trong những qu&aacute;n tr&agrave; chiều Đ&agrave; Lạt được d&acirc;n t&igrave;nh y&ecirc;u th&iacute;ch hiện nay. Mang trong m&igrave;nh một phong c&aacute;ch ho&agrave;ng gia, thiết kế sang trọng, hứa hẹn sẽ mang lại cho du kh&aacute;ch nhiều trải nghiệm tr&agrave; th&uacute; vị. Điểm nhấn của Bach Du Tea Coffee House đ&oacute; ch&iacute;nh l&agrave; kh&ocirc;ng gian tinh tế, sử dụng gam m&agrave;u trắng v&agrave; m&agrave;u xanh da trời l&agrave;m chủ đạo.</p>\r\n\r\n<p><img alt=\"Bach Du Tea Coffee House\" src=\"https://dulichviet.com.vn/images/bandidau/bach-du-tea-coffee-house.jpg\" /></p>\r\n\r\n<p><em>Bach Du Tea Coffee House</em></p>\r\n\r\n<p>Khi bước v&agrave;o qu&aacute;n, du kh&aacute;ch sẽ cảm nhận được như đang du lịch ở trời &Acirc;u khi tất cả nội thất tại đ&acirc;u đều mang đậm sắc m&agrave;u phương T&acirc;y. Để tăng th&ecirc;m vẻ đẹp ngọt ng&agrave;o, th&igrave; nơi đ&acirc;y c&ograve;n kh&eacute;o l&eacute;o trang tr&iacute; th&ecirc;m những chậu hoa hồng, c&acirc;y xanh đầy l&atilde;ng mạn. Tất cả những dụng cụ ăn uống tại đ&acirc;y đều được l&agrave;m theo phong c&aacute;ch qu&yacute; tộc, nổi bật v&agrave; đầy ấn tượng. Ngo&agrave;i ra, th&igrave; khu&ocirc;n vi&ecirc;n b&ecirc;n trong qu&aacute;n c&ograve;n c&oacute; những chiếc tủ trang tr&iacute; ly t&aacute;ch, tủ để đựng b&aacute;nh, đựng tr&agrave; rất đặc biệt. Mỗi set tr&agrave; b&aacute;nh thường sẽ được phục vụ đặt tr&ecirc;n một chiếc khay 2 tầng như lồng chim, vừa độc đ&aacute;o lại vừa ấn tượng.</p>\r\n\r\n<p>Mỗi set tr&agrave; ở Bach Du Tea Coffee House sẽ giao động gi&aacute; từ 65 - 110.000 VNĐ. Trong khi đ&oacute;, c&aacute;c loại b&aacute;nh ngọt tại đ&acirc;y đều sẽ c&oacute; mức gi&aacute; từ 50.000 - 100.000 VNĐ. Hiện tại thời gian qu&aacute;n mở cửa sẽ l&agrave; từ 2 giờ chiều đến 10 giờ tối. Tuỳ lịch tr&igrave;nh đi&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-lat\"><strong>tour du lịch Đ&agrave; Lạt</strong></a>&nbsp;m&agrave; du kh&aacute;ch c&oacute; thể lựa chọn cho m&igrave;nh thời gian ph&ugrave; hợp nhất để gh&eacute; qu&aacute;n.</p>\r\n\r\n<h3><strong>Blue Coffee &amp; Tea</strong></h3>\r\n\r\n<ul>\r\n	<li>Địa chỉ: Số 21 đường Nguyễn Ch&iacute; Thanh, Phường 1, TP. Đ&agrave; Lạt</li>\r\n</ul>\r\n\r\n<p>Blue Coffee &amp; Tea được đ&aacute;nh gi&aacute; l&agrave; điểm dừng ch&acirc;n th&iacute;ch hợp nhất cho những t&iacute;n đồ th&iacute;ch uống tr&agrave; v&agrave; cảm nhận nhịp sống thư thả ngay tại th&agrave;nh phố Đ&agrave; Lạt. Qu&aacute;n được thiết kế theo phong c&aacute;ch Retro, nổi bật hơn hẳn so với những qu&aacute;n tr&agrave; chiều Đ&agrave; Lạt kh&aacute;c. Menu của qu&aacute;n kh&aacute; đa dạng v&agrave; đồ uống, b&aacute;nh ngọt đều được phục vụ trong chiếc t&ocirc; gỗ c&oacute; trang b&iacute; bắt mắt.</p>\r\n\r\n<p>Gam m&agrave;u chủ đạo của qu&aacute;n tr&agrave; chiều n&agrave;y đ&oacute; ch&iacute;nh l&agrave; m&agrave;u trắng của nệm ghế, m&agrave;u v&agrave;ng của gỗ v&agrave; m&agrave;u xanh l&aacute; c&acirc;y của c&acirc;y l&aacute;. Qu&aacute;n sử dụng rất nhiều những chậu c&acirc;y xanh lớn nhỏ đặt ở xung quanh 2 d&atilde;y b&agrave;n ghế v&agrave; cả lối đi, tạo th&agrave;nh một kh&ocirc;ng gian trong l&agrave;nh, tươi m&aacute;t cho c&aacute;c du kh&aacute;ch khi gh&eacute; thưởng thức tr&agrave;.</p>\r\n\r\n<h3><strong>Hai Ả Cafe</strong></h3>\r\n\r\n<ul>\r\n	<li>Địa chỉ: Số 77 S&agrave;o Nam, Phường 11, TP. Đ&agrave; Lạt</li>\r\n</ul>\r\n\r\n<p>Theo những chia sẻ của rất nhiều du kh&aacute;ch du lịch Đ&agrave; Lạt, th&igrave; qu&aacute;n nhỏ trong khu&ocirc;n vi&ecirc;n tại Hai Ả Homestay l&agrave; một trong nơi qu&aacute;n tr&agrave; chiều l&yacute; tưởng để bạn c&oacute; thể thưởng thức tr&agrave; v&agrave; ngắm cảnh ho&agrave;ng h&ocirc;n tuyệt đẹp ở Đ&agrave; Lạt. Nơi đ&acirc;y c&oacute; một kh&ocirc;ng gian kh&aacute; rộng v&agrave; tho&aacute;ng, khi đến nơi đ&acirc;y du kh&aacute;ch c&ograve;n c&oacute; thể nh&igrave;n được to&agrave;n bộ cảnh l&agrave;ng hoa Th&aacute;i Phi&ecirc;n v&agrave; cảnh đồi n&uacute;i của th&agrave;nh phố sương m&ugrave;. Nhờ nằm ở một vị tr&iacute; lưng chừng, n&ecirc;n nơi đ&acirc;y sở hữu một c&aacute;i view cực đẹp. Ngồi ở qu&aacute;n c&oacute; thể nh&igrave;n ra to&agrave;n cảnh của thung lũng b&ecirc;n dưới. Khi những n&ocirc;ng trại bắt đầu l&ecirc;n đ&egrave;n cũng l&agrave; thời khắc m&agrave; du kh&aacute;ch c&oacute; thể chụp lại loạt ảnh đẹp v&agrave; l&atilde;ng mạn nhất.</p>\r\n\r\n<p>Ngo&agrave;i ra th&igrave; ngồi ở Hai Ả, du kh&aacute;ch c&ograve;n c&oacute; thể ngắm cảnh ho&agrave;ng h&ocirc;n thơ mộng. Nơi đ&acirc;y phục vụ rất nhiều đồ ăn v&agrave; thức uống cho du kh&aacute;ch&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-lat\"><strong>du lịch Đ&agrave; Lạt</strong></a>&nbsp;chứ kh&ocirc;ng chỉ c&oacute; tr&agrave;. Đến đ&acirc;y, bạn c&oacute; thể thưởng thức cacao n&oacute;ng, c&agrave; ph&ecirc;, b&aacute;nh ngọt...</p>\r\n\r\n<p>Tuỳ thời điểm gh&eacute; qu&aacute;n m&agrave; bạn c&oacute; thể lựa chọn những m&oacute;n ph&ugrave; hợp nhất để vừa nh&acirc;m nhi vừa c&oacute; thể ngắm những cảnh đẹp Đ&agrave; Lạt. Ở Hai Ả set tr&agrave; sẽ giao động khoảng 70.000 VNĐ ở lại tuỳ thuộc v&agrave;o đồ ăn, thức uống. Nếu như chọn lưu tr&uacute; th&igrave; đ&acirc;y sẽ l&agrave; nơi l&yacute; tưởng để ăn s&aacute;ng, uống c&agrave; ph&ecirc; v&agrave; tận hưởng khoảnh khắc trong l&agrave;nh của Đ&agrave; Lạt v&agrave;o sớm mai.</p>\r\n\r\n<p>Đ&agrave; Lạt c&oacute; rất nhiều qu&aacute;n tr&agrave; chiều đẹp v&agrave; ngon m&agrave; du kh&aacute;ch c&oacute; thể thưởng thức. Tuỳ v&agrave;o phong c&aacute;ch y&ecirc;u th&iacute;ch của m&igrave;nh m&agrave; bạn c&oacute; thể lựa chọn 1 trong 4 qu&aacute;n tr&agrave; chiều Đ&agrave; Lạt được chia sẻ tr&ecirc;n. Mỗi qu&aacute;n đều mang một vẻ đẹp ri&ecirc;ng c&ugrave;ng với đ&oacute; l&agrave; thực đơn ri&ecirc;ng n&ecirc;n sẽ mang lại nhiều trải nghiệm hấp dẫn cho chuyến du lịch Đ&agrave; Lạt của bạn.</p>',1),(4,'Những địa điểm vui chơi buổi tối ở Sapa mà bạn không nên bỏ lỡ','blogs/2021/12/bgr-sa-pa.jpg','2021-12-22 14:00:33.887192','2021-12-22 14:00:33.887192','<p>Sapa từ l&acirc;u vốn l&agrave; địa điểm du lịch nổi tiếng tr&ecirc;n khắp cả nước bởi cảnh sắc thi&ecirc;n nhi&ecirc;n h&ugrave;ng vĩ c&ugrave;ng với đ&oacute; l&agrave; nhiều n&eacute;t đẹp m&agrave; kh&oacute; nơi đ&acirc;u c&oacute; được. Nếu bạn nghĩ rằng chuyến&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-sapa\"><strong>du lịch Sapa</strong></a>&nbsp;th&igrave; bạn chỉ c&oacute; thể vui chơi v&agrave;o ban ng&agrave;y c&ograve;n ban đ&ecirc;m do l&agrave; thị trấn nhỏ ở v&ugrave;ng T&acirc;y Bắc sẽ rất hoang vu n&ecirc;n bạn chỉ c&oacute; thể ở lại kh&aacute;ch sạn, nh&agrave; nghỉ th&igrave; bạn đ&atilde; lầm. Sapa về đ&ecirc;m kh&aacute; th&uacute; vị c&ugrave;ng những n&eacute;t văn h&oacute;a v&agrave; những n&eacute;t đẹp trong l&agrave;n sương mờ ảo. H&atilde;y c&ugrave;ng&nbsp;<a href=\"https://dulichviet.com.vn/\"><strong>Du Lịch Việt</strong></a>&nbsp;điểm qua những điểm vui chơi buổi tối ở Sapa kh&ocirc;ng n&ecirc;n bỏ lỡ khi đ&atilde; đến đ&acirc;y.</p>\r\n\r\n<p><img alt=\"Những địa điểm vui chơi buổi tối ở Sapa mà bạn không nên bỏ lỡ\" src=\"https://dulichviet.com.vn/images/bandidau/nhung-dia-diem-vui-choi-buoi-toi-o-sapa-ma-ban-khong-nen-bo-lo.jpg\" /></p>\r\n\r\n<p><em>Những địa điểm vui chơi buổi tối ở Sapa m&agrave; bạn kh&ocirc;ng n&ecirc;n bỏ lỡ</em></p>\r\n\r\n<h2><strong>M&aacute;ch bạn những địa điểm cực k&igrave; th&uacute; vị tại Sapa v&agrave;o buổi tối</strong></h2>\r\n\r\n<p>Nếu như bạn đến Sapa m&agrave; chưa biết đến địa điểm n&agrave;o v&agrave;o buổi tối, th&igrave;&nbsp;<strong>Du Lịch Việt</strong>&nbsp;sẽ m&aacute;ch cho bạn những địa điểm v&agrave;o buổi tối tại Sapa cực k&igrave; th&uacute; vị.</p>\r\n\r\n<h3><strong>Chợ t&igrave;nh Sapa</strong></h3>\r\n\r\n<p>Nếu như bạn đến&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-sapa\"><strong>tour du lịch Sapa</strong></a>&nbsp;v&agrave;o dịp cuối tuần thứ 7 chủ nhật, th&igrave; buổi tối tại Sapa chắc hẳn l&agrave; kh&ocirc;ng thể bỏ qua phi&ecirc;n chợ t&igrave;nh Sapa. Ng&agrave;y xưa chợ t&igrave;nh Sapa chỉ tổ chức một năm một lần, tuy nhi&ecirc;n ng&agrave;y nay nhằm đ&aacute;p ứng v&agrave; phục vụ kh&aacute;ch du lịch Sapa m&agrave; chợ t&igrave;nh Sapa được diễn ra v&agrave;o mỗi thứ 7 v&agrave; chủ nhật h&agrave;ng tuần. Chợ thường diễn ra v&agrave;o chiều tối khoảng 6 7h tối, v&agrave;o thời điểm n&agrave;y c&oacute; rất đ&ocirc;ng kh&aacute;ch tham quan du lịch tụ tập lại để kh&aacute;m ph&aacute; phi&ecirc;n chợ t&igrave;nh nổi tiếng tại Sapa n&agrave;y.<br />\r\n<br />\r\nTại phi&ecirc;n chợ t&igrave;nh n&agrave;y c&aacute;c nam thanh nữ t&uacute; ở nhiều bản l&agrave;ng kh&aacute;c nhau sẽ tụ tập lại phi&ecirc;n chợ t&igrave;nh n&agrave;y. Họ sẽ diện những bộ trang phục d&acirc;n tộc truyền thống lộng lẫy nhất tụ tập về một địa điểm. C&ugrave;ng nhau gặp gỡ, chuyện tr&ograve; với nhau b&ecirc;n cạnh đ&oacute; l&agrave; những hoạt động văn nghệ h&aacute;t giao duy&ecirc;n, thổi k&egrave;n l&aacute; được diễn ra hết sức th&uacute; vị.</p>\r\n\r\n<h3><strong>Hồ Sapa</strong></h3>\r\n\r\n<p>Với những người y&ecirc;u th&iacute;ch kh&ocirc;ng gian y&ecirc;n tĩnh c&ugrave;ng với một khung cảnh thơ mộng b&igrave;nh y&ecirc;n th&igrave; hồ Sapa sẽ l&agrave; lựa chọn ph&ugrave; hợp với bạn. Nằm ngay tại thị trấn Sapa, hồ Sapa l&agrave; địa điểm kh&aacute; thu h&uacute;t du kh&aacute;ch bởi kh&ocirc;ng gian tĩnh lặng, n&ecirc;n thơ với khung cảnh cực k&igrave; l&atilde;ng mạn. Kh&aacute;c hẳn với khung cảnh tấp nập nhộn nhịp v&agrave;o ban ng&agrave;y th&igrave; buổi tối hồ Sapa y&ecirc;n tĩnh đến lạ kỳ.<br />\r\n<br />\r\nC&ograve;n điều g&igrave; tuyệt vời hơn khi buổi tối ở Sapa c&ugrave;ng bạn b&egrave;, người y&ecirc;u m&igrave;nh dạo quanh bờ thờ rồi c&ugrave;ng lựa cho m&igrave;nh một qu&aacute;n c&agrave; ph&ecirc; để ngồi chuyện tr&ograve;. C&ugrave;ng nhau c&oacute; những ph&uacute;t gi&acirc;y thư gi&atilde;n thả hồn v&agrave;o kh&ocirc;ng gian thơ mộng trong l&agrave;n sương mờ. Đ&oacute; chắc hẳn l&agrave; những gi&acirc;y ph&uacute;t bạn v&agrave; người y&ecirc;u, bạn b&egrave; sẽ c&ograve;n nhắc m&atilde;i sau chuyến&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-sapa\"><strong>du lịch Sapa</strong></a>&nbsp;n&agrave;y.</p>\r\n\r\n<h3><strong>Kh&aacute;m ph&aacute; ẩm thực Sapa</strong></h3>\r\n\r\n<p>Với thời tiết se lạnh v&agrave;o buổi tối sau khi đ&atilde; dạo chơi th&igrave; c&ugrave;ng nhau kh&aacute;m ph&aacute; ẩm thực đ&ecirc;m tại Sapa. Một số m&oacute;n ngon m&agrave; bạn c&oacute; thể lựa chọn để thưởng thức như: khoai lang, khoai t&acirc;y, cơm lam, c&aacute; hồi, thịt tr&acirc;u g&aacute;c bếp,... c&ugrave;ng thưởng thức với 1 ly rượu t&aacute;o m&egrave;o ấm dạ trong thời tiết buổi tối se lạnh tại Sapa sẽ v&ocirc; c&ugrave;ng hấp dẫn.</p>\r\n\r\n<p><img alt=\"Khám phá nền ẩm thực đa dạng ở Sapa\" src=\"https://dulichviet.com.vn/images/bandidau/kham-pha-nen-am-thuc-vo-cung-da-dang-o-sapa.jpg\" /></p>\r\n\r\n<p><em>Kh&aacute;m ph&aacute; nền ẩm thực đa dạng ở Sapa</em></p>\r\n\r\n<p>Ngo&agrave;i ra, thưởng thức đồ nướng c&oacute; lẽ l&agrave; loại đồ ăn kh&ocirc;ng thể n&agrave;o bỏ qua trong một bầu kh&ocirc;ng kh&iacute; se lạnh như tại Sapa. Tại Sapa v&agrave;o buổi tối bạn c&oacute; thể t&igrave;m được đồ nướng tại c&aacute;c khu vực b&aacute;n đồ nướng sầm uất nhất phải kể đến đ&oacute; l&agrave; bờ hồ gần kh&aacute;ch sạn Sapa hoặc khu Sao Phương Bắc. Ngay cả chợ đ&ecirc;m tại Sapa cũng kh&ocirc;ng thể hơn được 2 khu vực n&agrave;y được. C&ograve;n điều g&igrave; tuyệt vời hơn khi c&ugrave;ng ngồi qu&acirc;y quần c&ugrave;ng bạn b&egrave; trong kh&ocirc;ng kh&iacute; se lạnh, sương d&agrave;y đặc v&agrave; thưởng thức c&aacute;c m&oacute;n nướng n&oacute;ng hổi. C&ugrave;ng n&oacute;i đ&ugrave;a kể cho nhau những c&acirc;u chuyện vui đ&oacute; c&oacute; lẽ l&agrave; kỉ niệm đ&aacute;ng nhớ trong chuyến du lịch Sapa của bạn.</p>\r\n\r\n<h3><strong>Chợ đ&ecirc;m Sapa</strong></h3>\r\n\r\n<p>Tất nhi&ecirc;n l&agrave; trong chuyến đi&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-sapa\"><strong>tour Sapa</strong></a>&nbsp;th&igrave; kh&ocirc;ng n&ecirc;n bỏ lỡ chợ đ&ecirc;m tại Sapa v&agrave;o buổi tối. Nơi đ&acirc;y l&agrave; nơi tập trung đ&ocirc;ng đ&uacute;c c&aacute;c gian h&agrave;ng của người H&rsquo;M&ocirc;ng v&agrave; Dao đỏ. Tại đ&acirc;y b&agrave;y b&aacute;n rất nhiều c&aacute;c sản phẩm th&uacute; vị của người d&acirc;n tộc. C&aacute;c mặt h&agrave;ng được b&agrave;y b&aacute;n như: Thổ cẩm, trống da d&ecirc;, kh&egrave;n, s&aacute;o,....Nếu bạn c&oacute; &yacute; định mua qu&agrave; về tặng sau chuyến đi c&oacute; thể lựa chọn những m&oacute;n đồ d&acirc;n tộc tại đ&acirc;y. Với những m&oacute;n đồ lưu niệm độc lạ v&agrave; th&uacute; vị của người d&acirc;n tộc chắc hẳn sẽ l&agrave; m&oacute;n qu&agrave; tuyệt vời cho bạn b&egrave;, người th&acirc;n của bạn sau chuyến du lịch Sapa.<br />\r\n<br />\r\nVới những địa điểm m&agrave;&nbsp;<strong>Du Lịch Việt</strong>&nbsp;cung cấp, chắc hẳn sẽ giải đ&aacute;p phần n&agrave;o về chuyến&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-sapa\"><strong>du lịch Sapa</strong></a>&nbsp;sắp tới của bạn v&agrave;o buổi tối kh&ocirc;ng biết đi đ&acirc;u. Sapa chắc hẳn sẽ l&agrave; điểm đến du lịch m&agrave; bạn kh&oacute; l&ograve;ng c&oacute; thể qu&ecirc;n được. Với những trải nghiệm v&ocirc; v&agrave;n th&uacute; vị kể cả ng&agrave;y hay đ&ecirc;m. Từ những m&oacute;n ăn độc đ&aacute;o của người d&acirc;n tộc, thời tiết tại Sapa c&ugrave;ng với đ&oacute; l&agrave; những mặt h&agrave;ng h&oacute;a của lạ mắt của người d&acirc;n nơi đ&acirc;y. Chắc hẳn những điều đ&oacute; sẽ tạo n&ecirc;n một chuyến du lịch Sapa sẽ c&ograve;n ghi nhớ m&atilde;i trong kỉ niệm của bạn.</p>',1),(5,'Check in danh sách 4 quán cafe đẹp ở Phú Quốc nhất định phải ghé qua','blogs/2021/12/blog-pq.jpg','2021-12-23 14:12:41.651400','2021-12-23 14:12:41.651400','<p>Để gi&uacute;p du kh&aacute;ch c&oacute; th&ecirc;m được những trải nghiệm tuyệt vời tại h&ograve;n đảo xinh đẹp n&agrave;y, Du Lịch Việt sẽ gợi &yacute; 4 qu&aacute;n cafe đẹp ở Ph&uacute; Quốc m&agrave; nhất định phải gh&eacute; qua một lần nh&eacute;!</p>\r\n\r\n<p>Ph&uacute; Quốc l&agrave;m say đắm mọi du kh&aacute;ch thập phương kh&ocirc;ng chỉ bởi b&atilde;i c&aacute;t v&agrave;ng hay biển trong xanh. M&agrave; đảo ngọc n&agrave;y c&ograve;n khiến du kh&aacute;ch&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-phu-quoc\"><strong>du lịch Ph&uacute; Quốc</strong></a>&nbsp;đứng ngồi kh&ocirc;ng y&ecirc;n bởi những qu&aacute;n c&agrave; ph&ecirc; c&oacute; view cực k&igrave; xịn x&ograve;. Đ&acirc;y cũng l&agrave; địa điểm ho&agrave;n hảo để du kh&aacute;ch c&oacute; thể ngắm nh&igrave;n &aacute;nh ho&agrave;ng h&ocirc;n bu&ocirc;ng xuống v&agrave; thưởng thức một loại nước uống thơm ngon với hương vị kh&oacute; qu&ecirc;n. Để gi&uacute;p du kh&aacute;ch c&oacute; th&ecirc;m được những trải nghiệm tuyệt vời tại h&ograve;n đảo xinh đẹp n&agrave;y, <span style=\"color:#3498db\"><u><strong>Memories Travel</strong></u></span>&nbsp;sẽ gợi &yacute; 4 qu&aacute;n cafe đẹp ở Ph&uacute; Quốc m&agrave; nhất định phải gh&eacute; qua một lần nh&eacute;!</p>\r\n\r\n<p><img alt=\"Check in danh sách 4 quán cafe đẹp ở Phú Quốc nhất định phải ghé qua\" src=\"https://dulichviet.com.vn/images/bandidau/check-in-danh-sach-4-quan-cafe-dep-o-phu-quoc-nhat-dinh-phai-ghe-qua.jpg\" /></p>\r\n\r\n<p><em>Check in danh s&aacute;ch 4 qu&aacute;n cafe đẹp ở Ph&uacute; Quốc nhất định phải gh&eacute; qua</em></p>\r\n\r\n<h2><strong>Check in danh s&aacute;ch 4 qu&aacute;n cafe đẹp ở Ph&uacute; Quốc nhất định phải gh&eacute; qua</strong></h2>\r\n\r\n<h3><strong>1. Aroi Dessert Caf&eacute;</strong></h3>\r\n\r\n<ul>\r\n	<li>Địa chỉ: 24 Trần Hưng Đạo, Thị trấn Dương Đ&ocirc;ng, Ph&uacute; Quốc</li>\r\n</ul>\r\n\r\n<p>Aroi Dessert Cafe l&agrave; một c&aacute;i t&ecirc;n cực k&igrave; quen thuộc lu&ocirc;n c&oacute; mặt trong top c&aacute;c qu&aacute;n cafe đẹp ở Ph&uacute; Quốc. Qu&aacute;n mang một phong c&aacute;ch rất dễ thương v&agrave; xinh xắn, được x&acirc;y dựng cạnh biển n&ecirc;n chỉ cần bước v&agrave;i bước, du đ&atilde; c&oacute; thể tận hưởng gi&oacute; biển lồng lộng, h&iacute;t kh&ocirc;ng kh&iacute; trong l&agrave;nh v&agrave; ngắm nh&igrave;n khung cảnh thi&ecirc;n nhi&ecirc;n trong trẻo rất đỗi b&igrave;nh y&ecirc;n, mộc mạc, c&ograve;n khi ho&agrave;ng h&ocirc;n bu&ocirc;ng xuống cũng ch&iacute;nh l&agrave; l&uacute;c những &aacute;nh đ&egrave;n v&agrave;ng dần được thắp l&ecirc;n một c&aacute;ch đầy lung linh huyền ảo chiếu rọi xuống cả mặt c&aacute;t v&agrave; mặt biển, ngay lập tức du kh&aacute;ch sẽ tưởng tượng đến ngay đ&egrave;n hoa đăng đang tr&ocirc;i bồng bềnh tr&ecirc;n s&ocirc;ng, m&agrave; cũng ch&iacute;nh nhờ &aacute;nh đ&egrave;n v&agrave;ng h&atilde;o huyền m&agrave; kh&ocirc;ng gian ở đ&acirc;y mỗi l&uacute;c chiều t&agrave; trở n&ecirc;n l&atilde;ng mạn v&agrave; b&igrave;nh y&ecirc;n đến lạ thường.<br />\r\n<br />\r\nB&ecirc;n cạnh view ấn tượng v&agrave; kh&ocirc;ng gian tho&aacute;ng m&aacute;t, Aroi Dessert Cafe c&ograve;n mang đến cho thực kh&aacute;ch một thực đơn v&ocirc; c&ugrave;ng đa dạng v&agrave; phong ph&uacute;. Đến đ&acirc;y, du kh&aacute;ch đi&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-phu-quoc\"><strong>tour Ph&uacute; Quốc</strong></a>&nbsp;sẽ được thoải m&aacute;i lựa chọn những m&oacute;n đồ uống y&ecirc;u th&iacute;ch, nhiều m&oacute;n ăn tr&aacute;ng miệng, đặc biệt nhất l&agrave; những loại b&aacute;nh rất đẹp v&agrave; thơm ngon.</p>\r\n\r\n<h3><strong>2. Chuồn Chuồn Bistro &amp; Skybar</strong></h3>\r\n\r\n<ul>\r\n	<li>Địa chỉ: Đồi Sao Mai, 69 Trần Hưng Đạo, Khu 1, Thị trấn Dương Đ&ocirc;ng, Ph&uacute; Quốc</li>\r\n</ul>\r\n\r\n<p>Đối với những ai y&ecirc;u th&iacute;ch c&aacute;c qu&aacute;n c&agrave; ph&ecirc; c&oacute; view tr&ecirc;n cao để ngắm cảnh biển th&igrave; nhất định phải một lần gh&eacute; qua Chuồn Chuồn Bistro &amp; Skybar khi du lịch C&ocirc;n Đảo. Kh&ocirc;ng gian qu&aacute;n l&agrave; một sự kết hợp h&agrave;i h&ograve;a giữa n&eacute;t trầm lắng, nhẹ nh&agrave;ng v&agrave; sự năng động, đầy trẻ trung. Do vậy, n&ecirc;n khi đặt ch&acirc;n đến đ&acirc;y, du kh&aacute;ch sẽ được cảm nhận v&agrave; trải nghiệm những n&eacute;t độc đ&aacute;o, th&uacute; vị m&agrave; &iacute;t qu&aacute;n cafe c&oacute; được. Nếu du kh&aacute;ch l&agrave; người y&ecirc;u th&iacute;ch sự nhẹ nh&agrave;ng, l&atilde;ng mạn th&igrave; n&ecirc;n check in qu&aacute;n v&agrave;o những buổi s&aacute;ng, l&uacute;c mặt trời vừa tỉnh giấc l&uacute;c mặt trời vừa chiếu những tia nắng ấm &aacute;p để đ&oacute;n ch&agrave;o ng&agrave;y mới. C&ograve;n đối với những ai y&ecirc;u th&iacute;ch sự n&aacute;o nhiệt, kh&ocirc;ng gian năng động th&igrave; n&ecirc;n lựa chọn những buổi tối, l&uacute;c &aacute;nh đ&egrave;n bắt đầu thắp s&aacute;ng.</p>\r\n\r\n<p><img alt=\"Chuồn Chuồn Bistro &amp; Skybar\" src=\"https://dulichviet.com.vn/images/bandidau/chuon-chuon-bistro-skybar.jpg\" /></p>\r\n\r\n<p><em>Chuồn Chuồn Bistro &amp; Skybar</em></p>\r\n\r\n<p>Chuồn Chuồn Bistro &amp; Sky Bar kh&ocirc;ng chỉ g&acirc;y ấn tượng bởi kh&ocirc;ng gian tuyệt đẹp c&ograve;n chiếm trọn tr&aacute;i tim du kh&aacute;ch bằng những loại đồ uống v&agrave; thức ăn nhẹ thơm ngon, đa dạng. Khoảng sau 3 giờ chiều mỗi ng&agrave;y, lượng kh&aacute;ch kh&aacute; đ&ocirc;ng, n&ecirc;n nếu c&oacute; &yacute; định đi v&agrave;o khoảng thời gian n&agrave;y du kh&aacute;ch cũng cần đến sớm để lựa được chỗ ngồi ưng &yacute; nhất v&agrave; cc&oacute; thể bắt được khoảnh khắc ho&agrave;ng h&ocirc;n tr&ecirc;n biển, tạo v&agrave;i kiểu d&aacute;ng để c&oacute; được những tấm h&igrave;nh thật lung linh nh&eacute;!</p>\r\n\r\n<h3><strong>3. OCSEN Beach Bar &amp; Club</strong></h3>\r\n\r\n<ul>\r\n	<li>Địa chỉ: 118 Đường Trần Hưng Đạo, Thị trấn Dương Đ&ocirc;ng, Ph&uacute; Quốc</li>\r\n</ul>\r\n\r\n<p>Th&ecirc;m một qu&aacute;n cafe đẹp ở Ph&uacute; Quốc m&agrave; du lịch nhất định kh&ocirc;ng thể n&agrave;o bỏ lỡ đ&oacute; ch&iacute;nh l&agrave; OCSEN Beach Bar. Tại đ&acirc;y, du kh&aacute;ch sẽ được đắm ch&igrave;m v&agrave;o kh&ocirc;ng khi s&ocirc;i động đậm chất của biển cả, c&ugrave;ng ngồi thưởng thức những loại nước uống v&ocirc; c&ugrave;ng thơm ngon. Đặc biệt, phong c&aacute;ch qu&aacute;n được b&agrave;i tr&iacute; kh&aacute; độc đ&aacute;o với những chiếc ghế đệm m&agrave;u cam đượt đặt ngay tr&ecirc;n nền c&aacute;t l&agrave;m cho to&agrave;n bộ kh&ocirc;ng gian qu&aacute;n mang một ch&uacute;t hơi hướng cổ điển h&ograve;a quyện v&agrave;o c&ugrave;ng &aacute;nh ho&agrave;ng h&ocirc;n l&uacute;c chiều t&agrave;.<br />\r\n<br />\r\nV&agrave;o buổi tối OCSEN Beach Bar, sẽ c&oacute; rất nhiều hoạt động v&ocirc; c&ugrave;ng hấp dẫn, nổi bật l&agrave; tr&igrave;nh diễn nhạc Acoustic, xiếc lửa, đốt lửa trại. Chương tr&igrave;nh Acoustic c&oacute; sự tham gia của rất nhiều ca sĩ v&agrave; nh&oacute;m nhạc bắt đầu từ khoảng 5:30 chiều. Nhưng những du kh&aacute;ch đi&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-phu-quoc\"><strong>tour du lịch Ph&uacute; Quốc</strong></a>&nbsp;cần phải đến sớm hơn so với dự định để c&oacute; thể chọn cho m&igrave;nh một chỗ ngồi ưng &yacute;, tr&aacute;nh t&igrave;nh trạng hết ghế ngồi. Một buổi tối thật tuyệt vời sẽ tiếp nối trải nghiệm ngắm ho&agrave;ng h&ocirc;n của du kh&aacute;ch.</p>\r\n\r\n<h3><strong>4. Rock Sunset Island</strong></h3>\r\n\r\n<ul>\r\n	<li>Địa chỉ qu&aacute;n: H&ograve;n M&oacute;ng Tay, huyện Đảo Ph&uacute; Quốc</li>\r\n</ul>\r\n\r\n<p>Đ&acirc;y l&agrave; một trong những qu&aacute;n cafe được đ&aacute;nh gi&aacute; l&agrave; c&oacute; vị tr&iacute; v&agrave; view đẹp nhất nh&igrave; tại Ph&uacute; Quốc. Qu&aacute;n được x&acirc;y dựng tr&ecirc;n đảo đ&aacute;, kh&ocirc;ng gian xung quanh l&uacute;c n&agrave;o cũng c&oacute; tiếng s&oacute;ng vỗ r&igrave; r&agrave;o. Đến với qu&aacute;n cafe n&agrave;y khi đi&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-phu-quoc\"><strong>du lịch Ph&uacute; Quốc</strong></a>&nbsp;th&igrave;&nbsp;du kh&aacute;ch c&oacute; thể lựa chọn bất k&igrave; vị tr&iacute; n&agrave;o cũng đều ngắm nh&igrave;n được cảnh biển m&ecirc;nh m&ocirc;ng trải d&agrave;i c&ugrave;ng với với bầu trời bao la, rộng lớn. Tuy nhi&ecirc;n, do kh&ocirc;ng nằm trực thuộc tr&ecirc;n đảo ngọc n&ecirc;n du kh&aacute;ch muốn đến đ&acirc;y cần phải di chuyển bằng t&agrave;u của resort Nam Nghi. Cũng ch&iacute;nh v&igrave; điều n&agrave;y m&agrave; gi&aacute; cả ở đ&acirc;y cũng kh&aacute; cao so với mặt bằng chung, do t&iacute;nh tổng chi ph&iacute; cả nước uống v&agrave; đi lại. Tuy nhi&ecirc;n, khi đ&atilde; đến được đ&acirc;y du kh&aacute;ch chắc hẳn kh&ocirc;ng bị thất vọng bởi kh&ocirc;ng gian v&agrave; cảnh đẹp tuyệt vời của Rock Sunset Island.<br />\r\n<br />\r\nGhế sofa th&igrave; được đan bằng m&acirc;y với gối đệm trắng v&agrave; xanh tạo cho cảm ta gi&aacute;c m&aacute;t mẻ cực, rất hợp với kh&ocirc;ng gian biển hay những bộ b&agrave;n ghế bar với t&ocirc;ng trắng đầy tinh khiết. Ngồi từ đ&acirc;y vừa thoải m&aacute;i vừa thư gi&atilde;n để ngắm ho&agrave;ng h&ocirc;n tr&ecirc;n biển v&agrave; chưa dừng lại ở đ&oacute; khi mặt trời đ&atilde; tắt nắng cũng ch&iacute;nh l&agrave; l&uacute;c Rock Sunset Island Bar l&ecirc;n đ&egrave;n c&ugrave;ng với c&aacute;c DJ nổi tiếng h&agrave;ng đầu sẽ khuấy động kh&ocirc;ng gian ở nơi đ&acirc;y.<br />\r\n<br />\r\nKh&ocirc;ng những thế, Rock Sunset Island Bar c&ograve;n hấp dẫn c&aacute;c du kh&aacute;ch bằng những loại nước uống được pha chế cực độc đ&aacute;o v&agrave; v&ocirc; c&ugrave;ng lạ miệng do ch&iacute;nh tay những batender chuy&ecirc;n nghiệp pha chế. Chắc chắn rằng, Rock Sunset Island sẽ l&agrave; kỉ niệm đẹp kh&oacute; phai khiến cho du kh&aacute;ch phải lưu luyến v&agrave; nhớ m&atilde;i về h&ograve;n đảo quyến rũ n&agrave;y.<br />\r\n<br />\r\nĐến&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-phu-quoc\"><strong>du lịch Ph&uacute; Quốc</strong></a>&nbsp;để tận hưởng kh&ocirc;ng gian trong l&agrave;nh với thi&ecirc;n nhi&ecirc;n tươi đẹp v&agrave; cũng đừng qu&ecirc;n gh&eacute; qua 4 qu&aacute;n cafe đẹp m&agrave;&nbsp;<span style=\"color:#3498db\"><strong>Memories Trave</strong><u><strong>l</strong></u></span>&nbsp;giới thiệu đến bạn, nơi đ&acirc;y hứa hẹn sẽ l&agrave; điểm dừng ch&acirc;n l&yacute; tưởng cho bạn sau một ng&agrave;y d&agrave;i tham quan kh&aacute;m ph&aacute; tại Ph&uacute; Quốc đấy.</p>',1),(6,'Đi tour du lịch côn đảo giá rẻ cần chuẩn bị mang theo những gì?','blogs/2021/12/con-dao.jpg','2021-12-23 16:13:43.360334','2021-12-23 16:13:43.360334','<p>Khi đến với C&ocirc;n Đảo, du kh&aacute;ch c&ograve;n c&oacute; cơ hội kh&aacute;m ph&aacute; th&ecirc;m nhiều địa danh tuyệt đẹp v&agrave; tham gia c&aacute;c hoạt động tr&ecirc;n đảo. Tuy nhi&ecirc;n, trong bất cứ chuyến du lịch n&agrave;o, th&igrave; kh&acirc;u chuẩn bị lu&ocirc;n l&agrave; kh&acirc;u quan trọng nhất.&nbsp;Vậy n&ecirc;n,&nbsp;<strong>Du Lịch Việt</strong>&nbsp;xin chia sẻ một số lưu &yacute;, những kinh nghiệm khi đặt ch&acirc;n đến h&ograve;n đảo n&agrave;y.</p>\r\n\r\n<p>C&ocirc;n Đảo thuộc địa phận tỉnh B&agrave; Rịa &ndash; Vũng T&agrave;u, l&agrave; nơi ghi lại những dấu ấn lịch sử của cuộc chiến tranh năm xưa, đồng thời cũng l&agrave; điểm đến đầy th&uacute; vị hấp dẫn mọi du kh&aacute;ch khi đến&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-con-dao\"><strong>du lịch C&ocirc;n Đảo</strong></a>&nbsp;bởi vẻ đẹp hoang sơ, chưa được khai th&aacute;c nhiều với những b&atilde;i biển trong vắt trải d&agrave;i tuyệt đẹp. B&ecirc;n cạnh đ&oacute;, khi đến với C&ocirc;n Đảo, du kh&aacute;ch c&ograve;n c&oacute; cơ hội kh&aacute;m ph&aacute; th&ecirc;m nhiều địa danh tuyệt đẹp v&agrave; tham gia c&aacute;c hoạt động tr&ecirc;n đảo. Tuy nhi&ecirc;n, trong bất cứ chuyến du lịch n&agrave;o, th&igrave; kh&acirc;u chuẩn bị lu&ocirc;n l&agrave; kh&acirc;u quan trọng nhất. Vậy n&ecirc;n,&nbsp;<a href=\"https://dulichviet.com.vn/\"><strong>Du Lịch Việt</strong></a>&nbsp;xin chia sẻ một số lưu &yacute;, những kinh nghiệm khi đặt ch&acirc;n đến h&ograve;n đảo n&agrave;y.</p>\r\n\r\n<p><img alt=\"Đi tour du lịch côn đảo giá rẻ cần chuẩn bị mang theo những gì?\" src=\"https://dulichviet.com.vn/images/bandidau/di-tour-du-lich-con-dao-gia-re-can-chuan-bi-mang-theo-nhung-gi.jpg\" /></p>\r\n\r\n<p><em>Đi tour du lịch c&ocirc;n đảo gi&aacute; rẻ cần chuẩn bị mang theo những g&igrave;?</em></p>\r\n\r\n<h2><strong>Đi tour du lịch c&ocirc;n đảo gi&aacute; rẻ cần chuẩn bị mang theo những g&igrave;?</strong></h2>\r\n\r\n<p>C&oacute; rất nhiều thứ m&agrave; c&aacute;c du kh&aacute;ch cần phải chuẩn bị khi đi&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-con-dao\"><strong>tour du lịch C&ocirc;n Đảo</strong></a>&nbsp;gi&aacute; rẻ, ch&iacute;nh v&igrave; thế ch&uacute;ng t&ocirc;i sẽ chia sẻ đến bạn một v&agrave;i đồ d&ugrave;ng cần thiết m&agrave; bạn n&ecirc;n mang theo nh&eacute;!</p>\r\n\r\n<h3><strong>Giấy tờ t&ugrave;y th&acirc;n &ndash; Điều đầu ti&ecirc;n cần phải nhớ</strong></h3>\r\n\r\n<p>Giấy tờ t&ugrave;y th&acirc;n lu&ocirc;n l&agrave; những đồ vật rất cần thiết m&agrave; du kh&aacute;ch cần mang theo mỗi khi đi du lịch ở bất cứ đ&acirc;u v&agrave; khi đặt v&eacute; m&aacute;y bay đi&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-con-dao\"><strong>du lịch C&ocirc;n Đảo</strong></a>&nbsp;gi&aacute; rẻ th&igrave; đ&acirc;y chắc chắn sẽ l&agrave; vật bất ly th&acirc;n rồi.<br />\r\n<br />\r\nĐối với những du kh&aacute;ch l&agrave; người Việt Nam, th&igrave; phải cần mang theo một số giấy tờ sau: CMND hoặc CCCD (kh&ocirc;ng qu&aacute; 15 năm), hộ chiếu, giấy x&aacute;c nhận nh&acirc;n th&acirc;n của kh&aacute;ch (c&oacute; ảnh đ&oacute;ng dấu gi&aacute;p lai của địa phương) để l&agrave;m c&aacute;c thủ tục m&aacute;y bay, t&agrave;u cao tốc hoặc khi nhận ph&ograve;ng.<br />\r\n<br />\r\nC&ograve;n đối với trẻ em dưới 14 tuổi, người lớn cần phải chuẩn bị cho c&aacute;c b&eacute; giấy khai sinh bản gốc hoặc bản sao nhưng phải c&oacute; chứng thực của địa phương (kh&aacute;c với c&ocirc;ng chứng) để c&aacute;c b&eacute; được l&agrave;m những thủ tục c&ugrave;ng với người lớn.<br />\r\n<br />\r\nĐối với những du kh&aacute;ch nước ngo&agrave;i&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-con-dao\"><strong>tour C&ocirc;n Đảo</strong></a>&nbsp;phải cần lưu &yacute; chuẩn bị c&aacute;c giấy tờ sau: Hộ chiếu c&ograve;n hiệu lực, visa rời, giấy th&ocirc;ng h&agrave;nh, thị thực, thẻ thường tr&uacute;, tạm tr&uacute; phải c&oacute; x&aacute;c nhận của c&ocirc;ng an phường,...</p>\r\n\r\n<h3><strong>Những vật dụng cần thiết khi đi du lịch C&ocirc;n Đảo</strong></h3>\r\n\r\n<p>Khi du kh&aacute;ch đi du lịch C&ocirc;n Đảo, đến bất cứ nh&agrave; nghỉ hay kh&aacute;ch sạn n&agrave;o cũng sẽ đều chuẩn bị đầy đủ khăn tắm, kem đ&aacute;nh răng, b&agrave;n chải v&agrave; x&agrave; b&ocirc;ng, tuy nhi&ecirc;n chất lượng của những thứ n&agrave;y sẽ kh&ocirc;ng được tốt lắm, n&ecirc;n cần phải chuẩn bị cho ri&ecirc;ng m&igrave;nh.<br />\r\n<br />\r\nNhớ đem theo những loại kem chống nắng v&agrave; c&aacute;c kem b&ocirc;i chống c&ocirc;n tr&ugrave;ng, để c&oacute; thể bảo vệ bạn khi tắm biển hoặc v&agrave;o rừng tham quan, sẽ tr&aacute;nh kh&ocirc;ng l&agrave;m cho da kh&ocirc;ng bị đen sạm nhanh l&atilde;o h&oacute;a khi đi đi dưới &aacute;nh nắng hay lo sợ bị muỗi đốt hoặc c&ocirc;n tr&ugrave;ng cắn. Những loại kem n&agrave;y rất dễ d&agrave;ng để c&oacute; thể mua được, bạn c&oacute; thể mua ch&uacute;ng ở c&aacute;c cửa h&agrave;ng b&aacute;n h&agrave;ng mỹ phẩm hoặc cửa h&agrave;ng b&aacute;n dụng cụ đồ du lịch.</p>\r\n\r\n<p><img alt=\"Những vật dụng cần thiết khi đi du lịch Côn Đảo\" src=\"https://dulichviet.com.vn/images/bandidau/nhung-vat-dung-can-thiet-khi-di-du-lich-con-dao.jpg\" /></p>\r\n\r\n<p><em>Những vật dụng cần thiết khi đi du lịch C&ocirc;n Đảo</em></p>\r\n\r\n<p>N&ecirc;n chuẩn bị cho m&igrave;nh một đ&ocirc;i gi&agrave;y thể thao v&igrave; rất c&oacute; thể bạn sẽ phải đi bộ nhiều, nếu mang giầy cao g&oacute;t hoặc đi d&eacute;p sẽ bị đau ch&acirc;n v&agrave; kh&ocirc;ng thể n&agrave;o di chuyển với qu&atilde;ng đường xa hoặc đường rừng.<br />\r\n<br />\r\nCũng đừng qu&ecirc;n đem cho m&igrave;nh một chiếc m&aacute;y ảnh du lịch gọn nhẹ ch&uacute;ng để gi&uacute;p bạn lưu lại những khoảng khắc đ&aacute;ng nhớ b&ecirc;n gia đ&igrave;nh, bạn b&egrave;, bạn cũng c&oacute; thể chụp rất nhiều ảnh về c&aacute;c lo&agrave;i động thực vật qu&yacute; hiếm c&oacute; tại đ&acirc;y cho mọi người ở nh&agrave; xem, bạn cũng sẽ thật vui khi được xem lại ch&uacute;ng đấy.</p>\r\n\r\n<h3><strong>Tiền mặt &ndash; Vật bất li th&acirc;n kh&ocirc;ng thể thiếu trong mỗi chuyến du lịch</strong></h3>\r\n\r\n<p>Tiền mặt v&ocirc; c&ugrave;ng quan trọng khi đặt ch&acirc;n đến với C&ocirc;n Đảo, bởi ở đ&acirc;y rất &iacute;t nơi c&oacute; thể thanh to&aacute;n bằng thẻ. Hiện nay, tại thị trấn C&ocirc;n Đảo chỉ c&oacute; duy nhất 2 c&acirc;y ATM, đ&oacute; l&agrave; ATM Vietinbank thuộc đường L&ecirc; Duẩn v&agrave; ATM Agribank nằm tr&ecirc;n đường Phạm Văn Đồng. Do vậy, du kh&aacute;ch n&ecirc;n mang nhiều tiền mặt một ch&uacute;t. Lưu &yacute; nếu mang theo tiền th&igrave; kh&ocirc;ng n&ecirc;n để 1 sấp nhiều tiền tại một nơi m&agrave; h&atilde;y chia ra nhiều nơi để cất giữ cẩn thận nh&eacute;.</p>\r\n\r\n<h3><strong>Một số lưu &yacute; nhỏ khi chuẩn bị h&agrave;nh l&yacute; khi đi du lịch C&ocirc;n Đảo</strong></h3>\r\n\r\n<p>Khi đi&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-con-dao\"><strong>du lịch C&ocirc;n Đảo</strong></a>&nbsp;hoặc đến bất cứ đ&acirc;u, du kh&aacute;ch h&atilde;y lu&ocirc;n lưu &yacute; khi chuẩn bị h&agrave;nh l&yacute; như sau::</p>\r\n\r\n<ul>\r\n	<li>L&ecirc;n danh s&aacute;ch những m&oacute;n đồ nhất định phải mang theo để kh&ocirc;ng bỏ qu&ecirc;n bất kỳ thứ n&agrave;o ở nh&agrave;.</li>\r\n	<li>Lựa chọn những m&oacute;n đồ nhẹ để h&agrave;nh l&yacute; của bạn sẽ kh&ocirc;ng bị qu&aacute; cồng kềnh v&agrave; c&ograve;n tiết kiệm được một ch&uacute;t tiền mua h&agrave;nh l&yacute; k&yacute; gửi nữa đấy.</li>\r\n	<li>Đọc thật kỹ những quy định khi mang h&agrave;nh l&yacute; x&aacute;ch tay l&ecirc;n m&aacute;y bay để tr&aacute;nh xảy ra sự cố khi đi qua cửa hải quan.</li>\r\n</ul>\r\n\r\n<p>Hy vọng qua những chia sẻ tr&ecirc;n đ&acirc;y của&nbsp;<strong>Du Lịch Việt</strong>, c&aacute;c bạn sẽ c&oacute; th&ecirc;m nhiều th&ocirc;ng tin hữu &iacute;ch cho m&igrave;nh v&agrave; h&atilde;y một lần du lịch C&ocirc;n Đảo để kh&aacute;m ph&aacute; trọn vẹn được hết h&ograve;n đảo xinh đẹp nổi tiếng n&agrave;y v&agrave; cảm nhận vẻ đẹp trong vắt nơi đ&acirc;y nh&eacute;</p>',1),(7,'Cốm làng Vòng - Hương vị đặc trưng của mùa thu Hà Nội','blogs/2021/12/com-lang-vong-huong-vi-dac-trung-cua-mua-thu-ha-noi.jpg','2021-12-26 08:15:33.280080','2021-12-26 08:15:33.280080','<p>Với h&igrave;nh vu&ocirc;ng tượng trưng cho đất, m&agrave;u xanh tượng trưng cho hương vị của đồng nội v&agrave; ngọt ng&agrave;o của những hạt cốm l&agrave;ng V&ograve;ng như t&igrave;nh cảm của người d&acirc;n H&agrave; Nội gửi đến mọi du kh&aacute;ch.</p>\r\n\r\n<p>Khi c&oacute; dịp&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-ha-noi\"><strong>du lịch H&agrave; Nội</strong></a>&nbsp;v&agrave;o m&ugrave;a thu, chắc chắn du kh&aacute;ch sẽ kh&ocirc;ng bao giờ qu&ecirc;n được hương vị thơm ngọt, dịu nhẹ của cốm l&agrave;ng V&ograve;ng, tuy d&acirc;n d&atilde; m&agrave; đầy thanh tao gắn liền với nhiều thế hệ người d&acirc;n nơi Thủ đ&ocirc;. Cốm xanh đượm m&ugrave;i của l&uacute;a non, g&oacute;i m&igrave;nh v&agrave;o trong chiếc l&aacute; sen đ&atilde; tạo n&ecirc;n một n&eacute;t văn h&oacute;a ẩm thực rất đặc trưng cho m&ugrave;a thu đất H&agrave; Th&agrave;nh. H&atilde;y c&ugrave;ng <span style=\"color:#3498db\"><u><strong>Memories Travel</strong></u></span>&nbsp;t&igrave;m hiểu về đặc sản cốm l&agrave;ng V&ograve;ng khiến ai đ&atilde; một lần nếm qua cũng đều gật g&ugrave; xao xuyến.</p>\r\n\r\n<p><img alt=\"Cốm làng Vòng - Hương vị đặc trưng của mùa thu Hà Nội\" src=\"https://dulichviet.com.vn/images/bandidau/com-lang-vong-huong-vi-dac-trung-cua-mua-thu-ha-noi.jpg\" /></p>\r\n\r\n<p><em>Cốm l&agrave;ng V&ograve;ng - Hương vị đặc trưng của m&ugrave;a thu H&agrave; Nội</em></p>\r\n\r\n<h2><strong>Cốm l&agrave;ng V&ograve;ng &ndash; Thức qu&agrave; d&acirc;n d&atilde; v&agrave; thanh cao</strong></h2>\r\n\r\n<p>H&agrave; Nội khi v&agrave;o thu l&agrave; h&igrave;nh ảnh những g&aacute;nh cốm tr&ecirc;n đ&ocirc;i vai của c&aacute;c b&agrave;, c&aacute;c mẹ len v&agrave;o từng hẻm, một hương vị rất đỗi d&acirc;n d&atilde; giữa l&ograve;ng th&agrave;nh phố nhộn nhịp. Những hạt cốm xanh tuy rất mỏng manh nhưng lại thơm ngọt, dẻo, cho v&agrave;o miệng ăn th&igrave; lại c&oacute; vị ngọt nhẹ v&agrave; thơm m&ugrave;i sữa của l&uacute;a nếp non, để rồi mỗi khi du kh&aacute;ch đi&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-ha-noi\"><strong>tour H&agrave; Nội</strong></a>&nbsp;thưởng thức qua đều cảm thấy quyến luyến v&agrave; nhớ thương.</p>\r\n\r\n<h2><strong>C&aacute;ch chế biến cốm v&ocirc; c&ugrave;ng tỉ mỉ v&agrave; c&ocirc;ng phu</strong></h2>\r\n\r\n<p>V&agrave; chỉ khi du kh&aacute;ch&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-ha-noi\"><strong>du lịch H&agrave; Nội</strong></a>&nbsp;đến đ&acirc;y, tận mắt nh&igrave;n thấy quy tr&igrave;nh tạo ra được những hạt cốm thơm dẻo hấp dẫn v&agrave; chinh phục được người ăn th&igrave; phải rất trải qua nhiều c&ocirc;ng đoạn c&ocirc;ng phu v&agrave; tỉ mỉ. Phải lựa chọn đ&uacute;ng thời điểm khi những c&acirc;y l&uacute;a vừa bắt đầu hoe v&agrave;ng, đ&acirc;y l&agrave; kh&acirc;u quan trọng nhất để nguy&ecirc;n liệu l&agrave;m cốm sẽ kh&ocirc;ng qu&aacute; gi&agrave; v&agrave; cũng kh&ocirc;ng qu&aacute; non, đảm bảo cho sản phẩm ra đời ho&agrave;n hảo. Nếu để đến l&uacute;a gi&agrave; th&igrave; hạt cốm sẽ kh&ocirc;ng c&ograve;n xanh, cứng, rất dễ g&atilde;y n&aacute;t v&agrave; h&igrave;nh thức kh&ocirc;ng bắt mắt ăn mất ngon. C&ograve;n ngược lại, khi để l&uacute;a qu&aacute; non sẽ tạo th&agrave;nh hạt cốm bết v&agrave;o vỏ trấu, nh&atilde;o v&agrave; ho&agrave;n to&agrave;n kh&ocirc;ng c&oacute; m&ugrave;i vị.<br />\r\n<br />\r\nKhi thu hoạch xong phải đem rang v&agrave; gi&atilde; lu&ocirc;n h&ocirc;m đấy, kh&ocirc;ng được để hạt l&uacute;a bị kh&ocirc; mất nước. Khi rang l&uacute;a để lửa vừa phải, hạt cốm đạt độ ch&iacute;n nhất định sẽ gi&ograve;n v&agrave; tr&oacute;c trấu. Đ&acirc;y l&agrave; c&ocirc;ng đoạn quan trọng n&ecirc;n đ&ograve;i hỏi người c&oacute; kinh nghiệm l&acirc;u năm. Tiếp theo thực hiện gi&atilde; phải c&oacute; dụng cụ ph&ugrave; hợp v&agrave; nhịp ch&agrave;y hơi nh&egrave; nhẹ để hạt kh&ocirc;ng bị dập n&aacute;t, như vậy cốm mới mịn, dẻo v&agrave; kh&ocirc;ng bị v&oacute;n cục hoặc hạt n&aacute;t hạt kh&ocirc;ng.<br />\r\n<br />\r\nCuối c&ugrave;ng g&oacute;i cốm được g&oacute;i v&agrave;o hai lớp l&aacute; với c&ocirc;ng dụng kh&aacute;c nhau. Lớp trong l&agrave; l&aacute; r&aacute;y xanh, giữ cho cốm đạt độ ẩm ổn định v&agrave; cũng l&agrave; để giữ m&agrave;u xanh đặc trưng của cốm. Lớp ngo&agrave;i l&agrave; l&aacute; sen, tạo cho cốm c&oacute; hương thơm hơi thoang thoảng hấp dẫn người ăn.</p>\r\n\r\n<p><img alt=\"Cách chế biến cốm vô cùng tỉ mỉ và công phu\" src=\"https://dulichviet.com.vn/images/bandidau/cach-che-bien-com-vo-cung-ti-mi-va-cong-phu.jpg\" /></p>\r\n\r\n<p><em>C&aacute;ch chế biến cốm v&ocirc; c&ugrave;ng tỉ mỉ v&agrave; c&ocirc;ng phu</em></p>\r\n\r\n<h2><strong>Sự tinh tế trong thưởng thức cốm l&agrave;ng V&ograve;ng</strong></h2>\r\n\r\n<p>B&ecirc;n cạnh sự kỹ c&agrave;ng, chỉnh chu trong c&aacute;ch chế biến th&igrave; thưởng thức cốm cũng cầu kỳ kh&ocirc;ng k&eacute;m cạnh. Cốm kh&ocirc;ng phải l&agrave; m&oacute;n ăn để no, n&ecirc;n chỉ cần một g&oacute;i nho nhỏ, ngồi nh&acirc;m nhi thưởng thức b&ecirc;n ch&eacute;n tr&agrave; xanh, ngắm phố phường v&agrave; h&agrave;n huy&ecirc;n c&ugrave;ng bạn b&egrave; th&igrave; kh&ocirc;ng c&ograve;n g&igrave; th&uacute; vị bằng.<br />\r\n<br />\r\nC&oacute; thể thưởng thức cốm bằng rất nhiều c&aacute;ch, đ&ocirc;i khi l&agrave; nh&oacute;m v&agrave;i hạt ăn chơi, hay ăn cốm k&egrave;m với chuối ti&ecirc;u ch&iacute;n. Sự kết hợp h&agrave;i h&ograve;a giữa vị ngọt, thơm của chuối, dẻo mềm của cốm mang đến cho thực kh&aacute;ch một hương vị m&ugrave;a thu thật sự. Ngo&agrave;i ra, cốm l&agrave;ng V&ograve;ng H&agrave; Nội c&ograve;n c&oacute; thể chế biến được th&agrave;nh nhiều m&oacute;n kh&aacute;c nhau đem đến những hương vị ri&ecirc;ng biệt như x&ocirc;i cốm, cốm x&agrave;o, ch&egrave; cốm,&hellip;</p>\r\n\r\n<h2><strong>Địa chỉ mua cốm chuẩn hương vị truyền thống H&agrave; Nội</strong></h2>\r\n\r\n<p>Để c&oacute; thể thưởng thức trọn vẹn chuẩn n&eacute;t hương vị ẩm thực H&agrave; Nội n&agrave;y, du kh&aacute;ch cần phải chọn được địa chỉ qu&aacute;n uy t&iacute;n để mua. Sau đ&acirc;y l&agrave; một v&agrave;i địa chỉ mua cốm l&agrave;ng V&ograve;ng chuẩn vị truyền thống.<br />\r\n<br />\r\nCốm Huy Linh gia truyền: Tại đ&acirc;y c&oacute; b&aacute;n đủ c&aacute;c loại cốm cho du kh&aacute;ch lựa chọn. Từ cốm tươi, cốm kh&ocirc;, b&aacute;nh cốm, x&ocirc;i cốm cho đến chả cốm. Những hạt cốm đ&uacute;ng chất, đ&uacute;ng vị sẽ được lựa chọn v&agrave; sơ chế rất kỹ lưỡng, để đảm bảo vệ sinh an to&agrave;n thực phẩm v&agrave; giữ được hương thơm vốn c&oacute; của từng hạt cốm H&agrave; Nội.<br />\r\n<br />\r\nCốm Mộc Mễ Tr&igrave;: Đ&uacute;ng như c&aacute;i t&ecirc;n của n&oacute;, cốm Mộc được l&agrave;m ho&agrave;n to&agrave;n từ tự nhi&ecirc;n, kh&ocirc;ng pha phẩm m&agrave;u hay chứa c&aacute;c chất bảo quản. Gi&aacute; cốm ở đ&acirc;y kh&aacute; hợp l&yacute;, dao động từ khoảng 250.000đ/kg.<br />\r\n<br />\r\nCốm Kh&aacute;nh Huyền: Nhiều m&oacute;n ăn đầy hấp dẫn như cốm dẻo trộn sữa dừa, kem cốm dẻo ,cốm dẻo đồ x&ocirc;i, b&aacute;nh r&aacute;n, chả cốm,&hellip; c&oacute; thể lựa chọn theo &yacute; th&iacute;ch của bản th&acirc;n. Ăn cốm l&agrave;ng V&ograve;ng ch&iacute;nh gốc, du kh&aacute;ch sẽ chẳng bao giờ thất vọng cả. Cốm tươi tại đ&acirc;y c&oacute; gi&aacute; từ khoảng 260.000đ &ndash; 280.000đ/kg<br />\r\n<br />\r\nHy vọng với những chia sẻ của&nbsp;<strong>Du Lịch Việt</strong>&nbsp;sẽ gi&uacute;p bạn hiểu th&ecirc;m về m&oacute;n đặc sản l&agrave;m n&ecirc;n hương vị m&ugrave;a thu H&agrave; Nội. Với h&igrave;nh vu&ocirc;ng tượng trưng cho đất, m&agrave;u xanh tượng trưng cho hương vị của đồng nội v&agrave; ngọt ng&agrave;o của những hạt cốm l&agrave;ng V&ograve;ng như t&igrave;nh cảm của người d&acirc;n H&agrave; Nội gửi đến mọi du kh&aacute;ch. Nếu c&oacute; dịp đi&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-ha-noi\"><strong>tour du lịch H&agrave; Nội</strong></a>&nbsp;v&agrave;o m&ugrave;a n&agrave;y, bạn nhất định đừng bỏ lỡ qua thức qu&agrave; qu&ecirc; đầy tinh tế n&agrave;y nh&eacute;.</p>',1);
/*!40000 ALTER TABLE `tours_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours_category`
--

DROP TABLE IF EXISTS `tours_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tours_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours_category`
--

LOCK TABLES `tours_category` WRITE;
/*!40000 ALTER TABLE `tours_category` DISABLE KEYS */;
INSERT INTO `tours_category` VALUES (1,'Du lịch khám phá',1),(2,'Tham quan',1),(3,'Bãi biển',1),(4,'Miền Bắc',1),(5,'Miền Trung',1),(6,'Miền Nam',1);
/*!40000 ALTER TABLE `tours_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours_comment`
--

DROP TABLE IF EXISTS `tours_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tours_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `author_id` bigint DEFAULT NULL,
  `blog_id` bigint DEFAULT NULL,
  `update_date` datetime(6) NOT NULL,
  `tour_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tours_comment_blog_id_029b5627_fk_tours_blog_id` (`blog_id`),
  KEY `tours_comment_author_id_939abce0_fk_tours_user_id` (`author_id`),
  KEY `tours_comment_tour_id_e33ec683_fk_tours_tour_id` (`tour_id`),
  CONSTRAINT `tours_comment_author_id_939abce0_fk_tours_user_id` FOREIGN KEY (`author_id`) REFERENCES `tours_user` (`id`),
  CONSTRAINT `tours_comment_blog_id_029b5627_fk_tours_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `tours_blog` (`id`),
  CONSTRAINT `tours_comment_tour_id_e33ec683_fk_tours_tour_id` FOREIGN KEY (`tour_id`) REFERENCES `tours_tour` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours_comment`
--

LOCK TABLES `tours_comment` WRITE;
/*!40000 ALTER TABLE `tours_comment` DISABLE KEYS */;
INSERT INTO `tours_comment` VALUES (4,'bài viết tuyệt vời','2021-09-10 09:19:47.920180',1,2,'2021-12-22 08:41:51.847770',NULL),(6,'chuyến đi thật nai xừ','2021-12-25 11:40:50.047498',2,NULL,'2021-12-25 11:40:50.048373',1),(7,'chuyến đi thật nai xừ','2021-12-25 11:41:34.260684',2,NULL,'2021-12-25 11:41:34.260684',1),(8,'chuyến đi thật nai xừ','2021-12-25 11:42:03.190789',2,NULL,'2021-12-25 11:42:03.190789',1),(9,'chuyến đi thật nai xừ','2021-12-25 11:45:03.019436',2,NULL,'2021-12-25 11:45:03.019436',1),(10,'chuyến đi thật nai xừ','2021-12-25 11:51:08.824934',2,NULL,'2021-12-25 11:51:08.824934',1),(11,'chuyến đi thật nai xừ','2021-12-25 12:03:13.615896',2,NULL,'2021-12-25 12:03:13.615896',1),(12,'chuyen di that nai xu','2021-12-25 12:06:33.942951',2,NULL,'2021-12-25 12:06:33.942951',1),(13,'chuyen di that nai xu','2021-12-25 12:12:20.249888',2,NULL,'2021-12-25 12:12:20.249888',1),(14,'chuyen di that nai xu','2021-12-25 12:15:19.565106',2,NULL,'2021-12-25 12:15:19.565106',1);
/*!40000 ALTER TABLE `tours_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours_rating`
--

DROP TABLE IF EXISTS `tours_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tours_rating` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `rate` smallint unsigned NOT NULL,
  `author_id` bigint NOT NULL,
  `tour_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tours_rating_author_id_c2c8d61a_fk_tours_user_id` (`author_id`),
  KEY `tours_rating_tour_id_d7a8d329_fk_tours_tour_id` (`tour_id`),
  CONSTRAINT `tours_rating_author_id_c2c8d61a_fk_tours_user_id` FOREIGN KEY (`author_id`) REFERENCES `tours_user` (`id`),
  CONSTRAINT `tours_rating_tour_id_d7a8d329_fk_tours_tour_id` FOREIGN KEY (`tour_id`) REFERENCES `tours_tour` (`id`),
  CONSTRAINT `tours_rating_chk_1` CHECK ((`rate` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours_rating`
--

LOCK TABLES `tours_rating` WRITE;
/*!40000 ALTER TABLE `tours_rating` DISABLE KEYS */;
INSERT INTO `tours_rating` VALUES (1,'2021-12-26 07:27:08.733698','2021-12-26 07:27:08.733698',5,2,1);
/*!40000 ALTER TABLE `tours_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours_staff`
--

DROP TABLE IF EXISTS `tours_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tours_staff` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours_staff`
--

LOCK TABLES `tours_staff` WRITE;
/*!40000 ALTER TABLE `tours_staff` DISABLE KEYS */;
INSERT INTO `tours_staff` VALUES (1,'Hồ Thị Kiều Trinh','Quản lý Tour',1,'staffs/2021/12/z2684420475534_8428bed27b31c6087be8b3eefe24c88a.jpg'),(2,'Trúc Ngân','Quản lý admin',1,'staffs/2021/12/avt1.PNG');
/*!40000 ALTER TABLE `tours_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours_tag`
--

DROP TABLE IF EXISTS `tours_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tours_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours_tag`
--

LOCK TABLES `tours_tag` WRITE;
/*!40000 ALTER TABLE `tours_tag` DISABLE KEYS */;
INSERT INTO `tours_tag` VALUES (1,1,'2021-12-22 13:41:19.309385','2021-12-22 13:41:19.309385','Du lịch'),(2,1,'2021-12-22 13:41:30.812868','2021-12-22 13:41:30.812868','Trải nghiệm'),(3,1,'2021-12-22 13:43:45.257956','2021-12-22 13:43:45.257956','Tour hot');
/*!40000 ALTER TABLE `tours_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours_tour`
--

DROP TABLE IF EXISTS `tours_tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tours_tour` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure` datetime(6) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `price_adult` int DEFAULT NULL,
  `price_child` int DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `tags_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tours_tour_title_eff1a419_uniq` (`title`),
  KEY `tours_tour_category_id_ab730f30_fk_tours_category_id` (`category_id`),
  KEY `tours_tour_tags_id_cd38be5e_fk_tours_tag_id` (`tags_id`),
  CONSTRAINT `tours_tour_category_id_ab730f30_fk_tours_category_id` FOREIGN KEY (`category_id`) REFERENCES `tours_category` (`id`),
  CONSTRAINT `tours_tour_tags_id_cd38be5e_fk_tours_tag_id` FOREIGN KEY (`tags_id`) REFERENCES `tours_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours_tour`
--

LOCK TABLES `tours_tour` WRITE;
/*!40000 ALTER TABLE `tours_tour` DISABLE KEYS */;
INSERT INTO `tours_tour` VALUES (1,'SAPA','tours/2021/12/san-bay-sapa-1-101204.jpg','2021-09-10 12:23:16.611545','2021-12-22 14:05:54.116956','4N3Đ','2021-10-05 12:20:59.000000','<p><span style=\"color:#e74c3c\"><strong>NG&Agrave;Y 1 |&nbsp;TP.HCM &ndash; H&Agrave; NỘI &ndash; L&Agrave;O CAI &ndash; SAPA (Ăn trưa, chiều)</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;&nbsp; &nbsp;Qu&yacute; kh&aacute;ch c&oacute; mặt tại ga quốc nội, s&acirc;n bay T&acirc;n Sơn Nhất trước giờ bay &iacute;t nhất ba tiếng.</strong></p>\r\n\r\n<ul>\r\n	<li>&nbsp; &nbsp;Đại diện c&ocirc;ng ty Du Lịch Việt đ&oacute;n v&agrave; hỗ trợ Qu&yacute; Kh&aacute;ch l&agrave;m thủ tục đ&oacute;n chuyến bay đi H&agrave; Nội. &nbsp;&nbsp; &nbsp;Đến s&acirc;n bay Nội B&agrave;i, Hướng dẫn vi&ecirc;n đ&oacute;n đo&agrave;n khởi h&agrave;nh đến L&agrave;o Cai tr&ecirc;n con đường cao tốc d&agrave;i nhất Việt Nam - mạch nối liền giữa H&agrave; Nội v&agrave; c&aacute;c tỉnh T&acirc;y Bắc.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;&nbsp; &nbsp;D&ugrave;ng bữa trưa.</strong></p>\r\n\r\n<ul>\r\n	<li>&nbsp;&nbsp; &nbsp;Đo&agrave;n tiếp tục đến thị trấn v&ugrave;ng cao Sapa, tận hưởng cảnh sắc n&uacute;i rừng như tranh vẽ v&agrave; kh&aacute;m ph&aacute; cuộc sống của đồng b&agrave;o d&acirc;n tộc &iacute;t người miền T&acirc;y Bắc.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chiều:&nbsp;&nbsp; &nbsp;D&ugrave;ng bữa chiều. Nghỉ đ&ecirc;m tại Sapa.</strong></p>\r\n\r\n<ul>\r\n	<li>&nbsp; &nbsp;Tự do dạo phố, tham quan nh&agrave; thờ đ&aacute; Sapa, tham dự đ&ecirc;m chợ T&igrave;nh (nếu đi v&agrave;o tối thứ 7).&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"color:#e74c3c\">NG&Agrave;Y 2 |&nbsp;SAPA &ndash; FANSIPAN &ndash; BẢN C&Aacute;T C&Aacute;T (Ăn s&aacute;ng, trưa, chiều)&nbsp;</span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;&nbsp; &nbsp;D&ugrave;ng buffet s&aacute;ng tại kh&aacute;ch sạn.</strong></p>\r\n\r\n<ul>\r\n	<li>Đo&agrave;n khởi h&agrave;nh tham quan chinh phục Fansipan, ngọn n&uacute;i cao nhất Việt Nam (3.143 m) thuộc d&atilde;y n&uacute;i Ho&agrave;ng Li&ecirc;n Sơn, c&aacute;ch thị trấn Sa Pa khoảng 9 km về ph&iacute;a t&acirc;y nam. Du kh&aacute;ch chinh phục &quot;N&oacute;c nh&agrave; Đ&ocirc;ng Dương&quot; với hệ thống c&aacute;p treo Fansipan Sa Pa d&agrave;i 6,2km đạt 2 kỷ lục Guinness thế giới: C&aacute;p treo ba d&acirc;y c&oacute; độ ch&ecirc;nh giữa ga đi v&agrave; ga đến lớn nhất thế giới: 1410m v&agrave; C&aacute;p treo ba d&acirc;y d&agrave;i nhất thế giới: 6292.5m. Từ tuyến c&aacute;p treo, du kh&aacute;ch c&oacute; thể cảm nhận được thi&ecirc;n nhi&ecirc;n h&ugrave;ng vĩ, chi&ecirc;m ngưỡng khung cảnh thung lũng Mường Hoa v&agrave; rừng quốc gia Ho&agrave;ng Li&ecirc;n từ tr&ecirc;n cao. Ngo&agrave;i ra, du kh&aacute;ch c&ograve;n c&oacute; thể đến h&agrave;nh hương tại Khu du lịch t&acirc;m linh &ndash; Ch&ugrave;a Tr&igrave;nh, Ch&ugrave;a Hạ tại ga đến (chi ph&iacute; c&aacute;p treo tự t&uacute;c).</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;&nbsp; &nbsp;D&ugrave;ng bữa trưa.</strong></p>\r\n\r\n<ul>\r\n	<li>Thăm bản C&aacute;t C&aacute;t, t&igrave;m hiểu nghề dệt nhuộm của d&acirc;n tộc H&rsquo;M&ocirc;ng v&agrave; trạm thủy điện C&aacute;t C&aacute;t thời Ph&aacute;p &ndash; nơi c&oacute; 3 d&ograve;ng nước hợp nhau th&agrave;nh d&ograve;ng suối Mường Hoa.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chiều:&nbsp;&nbsp; &nbsp;D&ugrave;ng bữa chiều. Nghỉ đ&ecirc;m tại Sapa.</strong></p>\r\n\r\n<ul>\r\n	<li>Qu&yacute; kh&aacute;ch c&oacute; thể dạo phố đ&ecirc;m Sapa, thưởng thức đặc sản v&ugrave;ng cao như: thịt lợn cấp n&aacute;ch nướng, trứng nướng, rượu t&aacute;o m&egrave;o, giao lưu với người d&acirc;n tộc v&ugrave;ng cao.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#e74c3c\"><strong>NG&Agrave;Y 3 |&nbsp;SAPA &ndash; H&Agrave; NỘI &ndash; TP.HCM (Ăn s&aacute;ng, trưa)&nbsp;</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;&nbsp; &nbsp;D&ugrave;ng buffet s&aacute;ng tại kh&aacute;ch sạn.</strong></p>\r\n\r\n<ul>\r\n	<li>Qu&yacute; kh&aacute;ch tự do nghỉ ngơi tại kh&aacute;ch sạn hoặc mua sắm đặc sản địa phương về l&agrave;m qu&agrave; cho gia đ&igrave;nh, người th&acirc;n.Trưa:&nbsp;&nbsp; &nbsp;D&ugrave;ng bữa trưa.</li>\r\n	<li>Đo&agrave;n khởi h&agrave;nh về H&agrave; Nội.</li>\r\n	<li>Hướng dẫn vi&ecirc;n tiễn đo&agrave;n ra s&acirc;n bay Nội B&agrave;i đ&oacute;n chuyến bay về &nbsp;TP.HCM.</li>\r\n	<li>Kết th&uacute;c chương tr&igrave;nh tham quan, chia tay v&agrave; hẹn gặp lại.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;&nbsp; &nbsp;D&ugrave;ng bữa trưa.</strong></p>\r\n\r\n<ul>\r\n	<li>Đo&agrave;n khởi h&agrave;nh về H&agrave; Nội.</li>\r\n	<li>Hướng dẫn vi&ecirc;n tiễn đo&agrave;n ra s&acirc;n bay Nội B&agrave;i đ&oacute;n chuyến bay về &nbsp;TP.HCM.</li>\r\n	<li>Kết th&uacute;c chương tr&igrave;nh tham quan, chia tay v&agrave; hẹn gặp lại.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#e74c3c\"><strong>NG&Agrave;Y 4 |&nbsp;H&Agrave; NỘI &ndash; TP.HCM (Ăn s&aacute;ng, trưa)</strong></span>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng: D&ugrave;ng buffet s&aacute;ng tại kh&aacute;ch sạn.</strong></p>\r\n\r\n<ul>\r\n	<li>Tham quan thủ đ&ocirc; H&agrave; Nội với: Phủ Chủ Tịch, ao c&aacute;, nh&agrave; s&agrave;n B&aacute;c Hồ, Ch&ugrave;a Một Cột, Bảo T&agrave;ng Hồ Ch&iacute; Minh</li>\r\n	<li>Tham quan Văn Miếu &ndash; Quốc Tử Gi&aacute;m.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa: D&ugrave;ng bữa trưa.</strong></p>\r\n\r\n<ul>\r\n	<li>Đo&agrave;n tự do đi chợ, mua sắm đặc sản về l&agrave;m qu&agrave; cho người th&acirc;n, gia đ&igrave;nh.&nbsp;</li>\r\n	<li>Hướng dẫn vi&ecirc;n tiễn đo&agrave;n ra s&acirc;n bay Nội B&agrave;i đ&oacute;n chuyến bay về &nbsp;TP.HCM.</li>\r\n	<li>Kết th&uacute;c chương tr&igrave;nh tham quan, chia tay v&agrave; hẹn gặp lại.</li>\r\n</ul>',1,1,4000000,1200000,'<ul>\r\n	<li>Khi đăng k&yacute; tour kh&aacute;ch h&agrave;ng bắt buộc phải gởi giấy tờ t&ugrave;y th&acirc;n cho đơn vị du lịch để v&agrave;o t&ecirc;n xuất v&eacute; v&agrave; mua bảo hiểm du lịch. Những giấy tờ c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng (CMND hoặc Passport) thuộc về tr&aacute;ch nhiệm của kh&aacute;ch h&agrave;ng. Mọi vấn đề như h&igrave;nh ảnh, th&ocirc;ng tin giấy tờ trong bản gốc bị mờ, kh&ocirc;ng r&otilde; r&agrave;ng; Passport, CMND hết hạn,&hellip; kh&ocirc;ng đ&uacute;ng quy định của ph&aacute;p luật Việt Nam, Du Lịch Việt sẽ kh&ocirc;ng chịu tr&aacute;ch nhiệm v&agrave; sẽ kh&ocirc;ng ho&agrave;n trả bất cứ chi ph&iacute; ph&aacute;t sinh n&agrave;o.</li>\r\n	<li>Đối với kh&aacute;ch Nước ngo&agrave;i/Việt Kiều: Khi đi tour phải mang theo đầy đủ Passport (Hộ Chiếu), Visa Việt Nam bản ch&iacute;nh c&ograve;n hạn sử dụng l&agrave;m thủ tục l&ecirc;n m&aacute;y bay theo qui định h&agrave;ng kh&ocirc;ng. &nbsp;</li>\r\n	<li>Trẻ em (dưới 12 tuổi) khi đi du lịch mang theo giấy khai sinh (bản ch&iacute;nh hoặc sao y c&oacute; thị thực c&ograve;n hạn sử dụng) để &nbsp;l&agrave;m thủ tục h&agrave;ng kh&ocirc;ng.&nbsp;</li>\r\n	<li>Qu&yacute; kh&aacute;ch từ 14 tuổi bắt buộc phải c&oacute; CMND hoặc Passport (c&ograve;n hạn sử dụng), KH&Ocirc;NG SỬ DỤNG GIẤY KHAI SINH. Nếu Qu&yacute; kh&aacute;ch từ 14 tuổi chưa c&oacute; CMND hoặc Passport bắt buộc phải c&oacute; Giấy x&aacute;c nhận nh&acirc;n th&acirc;n (C&oacute; x&aacute;c nhận ch&iacute;nh quyền (c&ograve;n hạn sử dụng)) + Giấy khai sinh.&nbsp;</li>\r\n	<li>Một số thứ tự, chi tiết trong chương tr&igrave;nh; giờ bay; giờ xe lửa; giờ t&agrave;u cao tốc c&oacute; thể thay đổi để ph&ugrave; hợp với t&igrave;nh h&igrave;nh thực tế của chuyến đi (thời tiết, giao th&ocirc;ng&hellip;)</li>\r\n	<li>Qui định nhận &amp; trả ph&ograve;ng tại c&aacute;c kh&aacute;ch sạn/resort: nhận ph&ograve;ng sau 14H00 v&agrave; trả ph&ograve;ng trước 12H00 .</li>\r\n	<li>H&agrave;nh l&yacute; v&agrave; tư trang du kh&aacute;ch tự bảo quản trong qu&aacute; tr&igrave;nh du lịch .</li>\r\n	<li>V&igrave; l&yacute; do sức khỏe v&agrave; an to&agrave;n vệ sinh thực phẩm, Qu&yacute; Kh&aacute;ch vui l&ograve;ng kh&ocirc;ng mang thực phẩm từ b&ecirc;n ngo&agrave;i v&agrave;o nh&agrave; h&agrave;ng, kh&aacute;ch sạn. Đối với thức uống khi mang v&agrave;o phải c&oacute; sự đồng &yacute; của nh&agrave; h&agrave;ng, kh&aacute;ch sạn v&agrave; bị t&iacute;nh ph&iacute; nếu c&oacute;.</li>\r\n	<li>&nbsp;</li>\r\n</ul>',3),(2,'ĐÀ NĂNG - BÀ NÀ- HỘI AN','tours/2021/12/avt-đn.PNG','2021-09-10 12:24:56.548231','2021-12-23 16:10:00.188456','3N2Đ','2021-10-01 18:00:00.000000','<p><span style=\"color:#e74c3c\"><strong>NG&Agrave;Y 1 |&nbsp;TP.HCM &ndash; Đ&Agrave; NẴNG &ndash; HỘI AN (ăn trưa, chiều)</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>S&aacute;ng: Qu&yacute; kh&aacute;ch c&oacute; mặt tại ga quốc nội, s&acirc;n bay T&acirc;n Sơn Nhất trước giờ bay &iacute;t nhất ba tiếng.</p>\r\n\r\n<ul>\r\n	<li>Đại diện c&ocirc;ng ty Du Lịch Việt đ&oacute;n v&agrave; hỗ trợ Qu&yacute; Kh&aacute;ch l&agrave;m thủ tục đ&oacute;n chuyến bay đi Đ&agrave; Nẵng.</li>\r\n	<li>Đến s&acirc;n bay, Hướng dẫn vi&ecirc;n đ&oacute;n đo&agrave;n Tham quan Ngũ H&agrave;nh Sơn - được v&iacute; như h&ograve;n non bộ khổng lồ giữa l&ograve;ng th&agrave;nh phố Đ&agrave; Nẵng với Động Huyền Kh&ocirc;ng, Ch&ugrave;a Linh Ứng, Ch&ugrave;a Tam Thai, Vọng Hải Đ&agrave;i, &hellip;mua sắm qu&agrave; lưu niệm tại l&agrave;ng nghề đi&ecirc;u khắc đ&aacute; Non Nước.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trưa: D&ugrave;ng cơm trưa.</p>\r\n\r\n<ul>\r\n	<li>Đến Hội An, tham quan Phố Cổ Hội An - di sản văn ho&aacute; thế giới với Ch&ugrave;a Cầu Nhật Bản, Hội Qu&aacute;n Ph&uacute;c Kiến, Nh&agrave; Cổ Ph&ugrave;ng Hưng&hellip;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Chiều: &nbsp;D&ugrave;ng cơm chiều.</p>\r\n\r\n<ul>\r\n	<li>Trải nghiệm Show diễn &ldquo;K&yacute; Ức Hội An&rdquo;, chương tr&igrave;nh văn h&oacute;a nghệ thuật ngo&agrave;i trời độc đ&aacute;o, với sự tổng h&ograve;a tinh tế của &acirc;m nhạc, thơ ca, &aacute;nh s&aacute;ng, nghệ thuật tr&igrave;nh diễn 3D, tạo h&igrave;nh, m&uacute;a&hellip; Vở diễn l&agrave; c&acirc;u chuyện t&aacute;i hiện lại những n&eacute;t văn h&oacute;a đặc trưng của Hội An 400 năm lịch sử với cuộc sống th&ocirc;n qu&ecirc; b&igrave;nh dị, tới những n&eacute;t ho&agrave;ng kim của một thương cảng sầm uất một thời. (chi ph&iacute; tự t&uacute;c)&nbsp;&nbsp; &nbsp;</li>\r\n	<li>Đo&agrave;n trở về, nghỉ đ&ecirc;m tại Đ&agrave; Nẵng.&nbsp; &nbsp; &nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#e74c3c\"><strong>NG&Agrave;Y 2 |&nbsp;Đ&Agrave; NẴNG &ndash; CAO NGUY&Ecirc;N B&Agrave; N&Agrave; (ăn s&aacute;ng, chiều) (ăn trưa tự t&uacute;c)&nbsp;</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>S&aacute;ng: D&ugrave;ng buffet s&aacute;ng tại kh&aacute;ch sạn.</p>\r\n\r\n<ul>\r\n	<li>Khởi h&agrave;nh đến với cao nguy&ecirc;n B&agrave; N&agrave; nơi c&oacute; kh&iacute; hậu Ch&acirc;u &Acirc;u độc đ&aacute;o v&agrave; nổi tiếng với tuyến c&aacute;p treo kỷ lục mới của thế giới - Ngắm to&agrave;n cảnh th&agrave;nh phố Đ&agrave; Nẵng từ tr&ecirc;n c&aacute;p treo (chi ph&iacute; c&aacute;p treo tự t&uacute;c).</li>\r\n	<li>Qu&yacute; kh&aacute;ch tự do tham quan, vui chơi giải tr&iacute; tại B&agrave; N&agrave; với C&ocirc;ng Vi&ecirc;n Fantasy, Rạp chiếu phim 3D Mega 360 độ với c&ocirc;ng nghệ hiện đại nhất v&agrave; duy nhất c&oacute; ở Vi&ecirc;t Nam, Hai rạp chiếu phim 4D v&agrave; 5Di, Xe Trượt Ống, Hầm rượu, Vườn hoa t&igrave;nh y&ecirc;u, Bảo T&agrave;ng S&aacute;p, tự do chụp h&igrave;nh tại Cầu V&agrave;ng điểm tham quan mới si&ecirc;u hot tại B&agrave; N&agrave;.</li>\r\n	<li>Qu&yacute; kh&aacute;ch tự t&uacute;c bữa ăn trưa.</li>\r\n	<li>Du kh&aacute;ch c&oacute; thể t&igrave;m thấy những biểu tượng mang t&iacute;nh t&acirc;m linh như ch&ugrave;a chiền, đền đ&agrave;i hay tượng c&aacute;c đức Phật. Chắc hẳn sẽ l&agrave; điểm dừng ch&acirc;n cho những ai mong cầu b&igrave;nh an v&agrave; sức khỏe cho gia đ&igrave;nh: Ch&ugrave;a Linh Ứng, Đền Lĩnh Ch&uacute;a Linh Từ, Th&aacute;p Linh Phong Tự, Tượng Th&iacute;ch Ca M&acirc;u Ni, Lầu Chu&ocirc;ng, Nh&agrave; Bia, Miếu B&agrave;, Tr&uacute; Vũ Tr&agrave; Qu&aacute;n.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Chiều: &nbsp;D&ugrave;ng cơm chiều. Nghỉ đ&ecirc;m tại Đ&agrave; Nẵng. &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Qu&yacute; kh&aacute;ch tự do dạo phố, ngắm c&aacute;c c&acirc;y cầu nổi tiếng của th&agrave;nh phố Đ&agrave; Nẵng: cầu Rồng, cầu S&ocirc;ng H&agrave;n, cầu Trần Thị L&yacute;, cầu Thuận Phước...</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"color:#e74c3c\">NG&Agrave;Y 3 |&nbsp;Đ&Agrave; NẴNG &ndash; TP.HCM (ăn s&aacute;ng, trưa)&nbsp;</span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>S&aacute;ng: D&ugrave;ng buffet s&aacute;ng tại kh&aacute;ch sạn.</p>\r\n\r\n<ul>\r\n	<li>Đo&agrave;n tự do tắm biển Mỹ Kh&ecirc; hoặc đi chợ mua sắm đặc sản về l&agrave;m qu&agrave; cho gia đ&igrave;nh.</li>\r\n	<li>Tham quan một v&ograve;ng b&aacute;n đảo Sơn Tr&agrave;&hellip;viếng Linh Ứng Tự v&agrave; thưởng ngoạn vẻ đẹp của biển Mỹ Kh&ecirc; (được đ&aacute;nh gi&aacute; l&agrave; một trong những b&atilde;i biển quyến rũ nhất h&agrave;nh tinh).</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trưa: D&ugrave;ng cơm trưa.</p>\r\n\r\n<ul>\r\n	<li>Hướng dẫn vi&ecirc;n tiễn đo&agrave;n ra s&acirc;n bay Đ&agrave; Nẵng, đ&oacute;n chuyến bay về TP.HCM.</li>\r\n	<li>Kết th&uacute;c chương tr&igrave;nh tham quan, chia tay v&agrave; hẹn gặp lại.</li>\r\n</ul>',1,2,5000000,1700000,'<p><strong>Gi&aacute; tour bao gồm:</strong><br />\r\n-&nbsp;&nbsp; &nbsp;V&eacute; m&aacute;y bay khứ hồi TP.HCM &ndash; Đ&Agrave; NẴNG &ndash; TP.HCM (Vietjet Air, VietNamAirlines&hellip;)<br />\r\n-&nbsp;&nbsp; &nbsp;Xe tham quan (xe 16 chỗ, 29 chỗ, 35 chỗ, 45 chỗ) t&ugrave;y theo số lượng kh&aacute;ch thực tế tr&ecirc;n chuyến đi.<br />\r\n-&nbsp;&nbsp; &nbsp;Kh&aacute;ch sạn ti&ecirc;u chuẩn đầy đủ tiện nghi 2 kh&aacute;ch người lớn/ ph&ograve;ng. Nếu lẻ người thứ 3, đ&oacute;ng phụ ph&iacute; ph&ograve;ng đơn hoặc ngủ gh&eacute;p ph&ograve;ng 3 kh&aacute;ch.<br />\r\n+ Kh&aacute;ch sạn 3 sao tại Đ&agrave; Nẵng: H&ugrave;ng Anh, &hellip;hoặc tương đương.<br />\r\n+ Kh&aacute;ch sạn 4 sao tại Đ&agrave; Nẵng: Aria, Gold Đ&agrave; Nẵng, &hellip;hoặc tương đương.<br />\r\n-&nbsp;&nbsp; &nbsp;Ăn uống theo chương tr&igrave;nh:&nbsp;<br />\r\n+ Ăn phụ: 2 bữa buffet s&aacute;ng tại kh&aacute;ch sạn.&nbsp;<br />\r\n+ Ăn ch&iacute;nh: 4 bữa ch&iacute;nh ti&ecirc;u chuẩn 120.000đ/bữa.<br />\r\n-&nbsp;&nbsp; &nbsp;V&eacute; tham quan theo chương tr&igrave;nh.&nbsp;<br />\r\n-&nbsp;&nbsp; &nbsp;Hướng dẫn vi&ecirc;n tiếng Việt vui vẻ nhiệt t&igrave;nh suốt chuyến đi.<br />\r\n-&nbsp;&nbsp; &nbsp;Bảo hiểm với mức bồi thường tối đa 100.000.000 đồng/trường hợp. Kh&ocirc;ng &aacute;p dụng cho kh&aacute;ch từ 80 tuổi trở l&ecirc;n.<br />\r\n-&nbsp;&nbsp; &nbsp;Qu&agrave; tặng: n&oacute;n du lịch Việt, nước, khăn lạnh.<br />\r\n<strong>Kh&ocirc;ng bao gồm:</strong><br />\r\n-&nbsp;&nbsp; &nbsp;Bia hay nước ngọt trong c&aacute;c bữa ăn.<br />\r\n-&nbsp;&nbsp; &nbsp;Tham quan ngo&agrave;i chương tr&igrave;nh.<br />\r\n-&nbsp;&nbsp; &nbsp;Chi ph&iacute; c&aacute; nh&acirc;n: điện thoại, giặt ủi&hellip;<br />\r\n-&nbsp;&nbsp; &nbsp;V&eacute; c&aacute;p treo đi B&agrave; N&agrave;, c&ocirc;ng vi&ecirc;n Ch&acirc;u &Aacute;, C&ocirc;ng vi&ecirc;n Suối kho&aacute;ng n&oacute;ng N&uacute;i Thần T&agrave;i, Show K&yacute; ức Hội An &hellip;<br />\r\n-&nbsp;&nbsp; &nbsp;1 bữa ăn trưa ng&agrave;y thứ 2 tham quan B&agrave; N&agrave;.<br />\r\n-&nbsp;&nbsp; &nbsp;Chi ph&iacute; b&atilde;i biển: d&ugrave;, v&otilde;ng, tắm nước ngọt&hellip;<br />\r\n-&nbsp;&nbsp; &nbsp;Thuế VAT.</p>',3),(5,'Vũng Tàu','tours/2021/12/avt-vungtau.PNG','2021-12-22 14:08:39.967414','2021-12-22 14:08:39.967414','2N1Đ','2021-12-31 19:30:00.000000','<p><span style=\"color:#e74c3c\"><strong>NG&Agrave;Y 01: TP. HỒ CH&Iacute; MINH - VŨNG T&Agrave;U &quot;BIỂN H&Aacute;T&quot; (Ăn s&aacute;ng, trưa, tối)</strong></span></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch tập trung tại Memories Travel ( 371 Nguyễn Kiệm, Phường 03, Quận G&ograve; Vấp) khởi h&agrave;nh đi B&agrave; Rịa - Vũng T&agrave;u theo tuyến đường cao tốc TP.Hồ Ch&iacute; Minh- Long Th&agrave;nh đến TP.Vũng T&agrave;u, đo&agrave;n tham quan:</p>\r\n\r\n<p>- Nh&agrave; &Uacute;p Ngược: c&oacute; 7 ph&ograve;ng chụp ảnh cực chất, được trang tr&iacute; với m&agrave;u sắc bắt mắt v&agrave; nội thất trong nh&agrave; đều đảo ngược từ b&agrave;n ghế, đồ ăn, xe cộ, giường ngủ đến bồn rửa mặt, m&aacute;y giặt...</p>\r\n\r\n<p>- Bảo t&agrave;ng B&agrave; Rịa - Vũng T&agrave;u: một c&ocirc;ng tr&igrave;nh rộng được thiết kế bởi kiến tr&uacute;c sư Đỗ Anh Dũng gồm 4 tầng ch&iacute;nh v&agrave; 3 tầng th&aacute;p, nh&igrave;n từ xa như một con t&agrave;u trắnng đang vươn m&igrave;nh ra đại dương. Mỗi gian ph&ograve;ng hiện ra như một trang lịch sử từ thời Tiền- Sơ sử đến ng&agrave;y nay.</p>\r\n\r\n<p>Đo&agrave;n nhận ph&ograve;ng Kh&aacute;ch sạn theo ti&ecirc;u chuẩn 4 sao để nghỉ ngơi: buổi chiểu, qu&yacute; kh&aacute;ch c&oacute; thể đi tắm biển.</p>\r\n\r\n<p>Buổi tối. qu&yacute; kh&aacute;ch tự do thưởng thức những m&oacute;n hải sản phong ph&uacute;, tươi ngon.</p>\r\n\r\n<p>Nghỉ đ&ecirc;m tại Vũng T&agrave;u.</p>\r\n\r\n<p><span style=\"color:#e74c3c\"><strong>NG&Agrave;Y 02: VŨNG T&Agrave;U - TP.HỒ CH&Iacute; MINH (Ăn s&aacute;ng, trưa)</strong></span></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch tự do tắm biển hoặc nghỉ ngơi thư gi&atilde;n tại kh&aacute;ch sạn.</p>\r\n\r\n<p>Sau khi trả ph&ograve;ng v&agrave; d&ugrave;ng bữa trưa, đo&agrave;n khởi h&agrave;nh về TP.Hồ Ch&iacute; Minh tr&ecirc;n đường dừng ch&acirc;n tham quan:</p>\r\n\r\n<p>- Chợ B&agrave; Rịa: mua sắm c&aacute;c loại đặc sản v&ugrave;ng biển về l&agrave;m qu&agrave; cho người h&acirc;n.</p>\r\n\r\n<p>- Vạn Phật Quang Đại T&ograve;ng L&acirc;m Tự: một ng&ocirc;i đại tự bao gồm nhiều qu&acirc;n thể kiến tr&uacute;c quy m&ocirc; như tịnh thất v&agrave; trường Phật học. Ch&ugrave;a c&ograve;n sở hữu những kỷ lục như Ng&ocirc;i ch&ugrave;a c&oacute; tượng Di Lặc Bồ T&aacute;t nguy&ecirc;n khối bằng đ&aacute; hoa cương lớn nhất; Ng&ocirc;i ch&ugrave;a c&oacute; nhiều tượng Phật nhiều nhất...</p>\r\n\r\n<p>Xe đưa đo&agrave;n về điểm đến ban đầu, kết th&uacute;c chuyến du lịch.</p>',1,3,2500000,1000000,'<ul>\r\n	<li>Khi đăng k&yacute; tour kh&aacute;ch h&agrave;ng bắt buộc phải gởi giấy tờ t&ugrave;y th&acirc;n cho đơn vị du lịch để v&agrave;o t&ecirc;n xuất v&eacute; v&agrave; mua bảo hiểm du lịch. Những giấy tờ c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng (CMND hoặc Passport) thuộc về tr&aacute;ch nhiệm của kh&aacute;ch h&agrave;ng. Mọi vấn đề như h&igrave;nh ảnh, th&ocirc;ng tin giấy tờ trong bản gốc bị mờ, kh&ocirc;ng r&otilde; r&agrave;ng; Passport, CMND hết hạn,&hellip; kh&ocirc;ng đ&uacute;ng quy định của ph&aacute;p luật Việt Nam, Du Lịch Việt sẽ kh&ocirc;ng chịu tr&aacute;ch nhiệm v&agrave; sẽ kh&ocirc;ng ho&agrave;n trả bất cứ chi ph&iacute; ph&aacute;t sinh n&agrave;o.</li>\r\n	<li>Đối với kh&aacute;ch Nước ngo&agrave;i/Việt Kiều: Khi đi tour phải mang theo đầy đủ Passport (Hộ Chiếu), Visa Việt Nam bản ch&iacute;nh c&ograve;n hạn sử dụng l&agrave;m thủ tục l&ecirc;n m&aacute;y bay theo qui định h&agrave;ng kh&ocirc;ng. &nbsp;</li>\r\n	<li>Trẻ em (dưới 12 tuổi) khi đi du lịch mang theo giấy khai sinh (bản ch&iacute;nh hoặc sao y c&oacute; thị thực c&ograve;n hạn sử dụng) để &nbsp;l&agrave;m thủ tục h&agrave;ng kh&ocirc;ng.&nbsp;</li>\r\n	<li>Qu&yacute; kh&aacute;ch từ 14 tuổi bắt buộc phải c&oacute; CMND hoặc Passport (c&ograve;n hạn sử dụng), KH&Ocirc;NG SỬ DỤNG GIẤY KHAI SINH. Nếu Qu&yacute; kh&aacute;ch từ 14 tuổi chưa c&oacute; CMND hoặc Passport bắt buộc phải c&oacute; Giấy x&aacute;c nhận nh&acirc;n th&acirc;n (C&oacute; x&aacute;c nhận ch&iacute;nh quyền (c&ograve;n hạn sử dụng)) + Giấy khai sinh.&nbsp;</li>\r\n	<li>Một số thứ tự, chi tiết trong chương tr&igrave;nh; giờ bay; giờ xe lửa; giờ t&agrave;u cao tốc c&oacute; thể thay đổi để ph&ugrave; hợp với t&igrave;nh h&igrave;nh thực tế của chuyến đi (thời tiết, giao th&ocirc;ng&hellip;)</li>\r\n	<li>Qui định nhận &amp; trả ph&ograve;ng tại c&aacute;c kh&aacute;ch sạn/resort: nhận ph&ograve;ng sau 14H00 v&agrave; trả ph&ograve;ng trước 12H00 .</li>\r\n	<li>H&agrave;nh l&yacute; v&agrave; tư trang du kh&aacute;ch tự bảo quản trong qu&aacute; tr&igrave;nh du lịch .</li>\r\n	<li>V&igrave; l&yacute; do sức khỏe v&agrave; an to&agrave;n vệ sinh thực phẩm, Qu&yacute; Kh&aacute;ch vui l&ograve;ng kh&ocirc;ng mang thực phẩm từ b&ecirc;n ngo&agrave;i v&agrave;o nh&agrave; h&agrave;ng, kh&aacute;ch sạn. Đối với thức uống khi mang v&agrave;o phải c&oacute; sự đồng &yacute; của nh&agrave; h&agrave;ng, kh&aacute;ch sạn v&agrave; bị t&iacute;nh ph&iacute; nếu c&oacute;.</li>\r\n	<li>&nbsp;</li>\r\n</ul>',3),(6,'Đà Lạt','tours/2021/12/avt-dl.PNG','2021-12-22 14:12:20.428448','2021-12-22 14:12:20.428448','2N1Đ','2021-12-30 18:00:00.000000','<h3><span style=\"color:#e74c3c\"><strong>Săn M&acirc;y Tại Thung Lũng Đạ Sar</strong></span></h3>\r\n\r\n<p>Cắm trại l&agrave; một trong hoạt động được c&aacute;c du kh&aacute;ch v&ocirc; c&ugrave;ng y&ecirc;u th&iacute;ch khi đến du lịch ở thung lũng Dasar. C&oacute; lẽ vẻ đẹp mộng mơ của nơi nay đ&atilde; khiến con người ta muốn được gần gũi muốn được h&ograve;a m&igrave;nh với mẹ thi&ecirc;n nhi&ecirc;n tươi đẹp. C&ugrave;ng iVIVU kh&aacute;m ph&aacute; ngay h&ocirc;m nay!&nbsp;</p>\r\n\r\n<h3>Những trải nghiệm th&uacute; vị trong chương tr&igrave;nh</h3>\r\n\r\n<p>Niềm vui đ&ocirc;i khi thật đơn giản nhưng kh&ocirc;ng phải l&uacute;c n&agrave;o cũng c&oacute; được, nếu bạn c&oacute; cơ hội được đến với Dasar xinh đẹp h&atilde;y c&ugrave;ng nhau cắm trại qua đ&ecirc;m ở ngo&agrave;i trời v&agrave; tận hưởng những gi&acirc;y ph&uacute;t vui vẻ:</p>\r\n\r\n<p>- C&ugrave;ng nhau dựng trại, người nh&oacute;m lửa, người th&igrave; l&agrave;m b&aacute;nh, người th&igrave; nướng thịt...tại Đạ Sar.</p>\r\n\r\n<p>- Mọi người c&ugrave;ng nhau đốt lửa, ăn uống v&agrave; ca h&aacute;t giữa khoảng kh&ocirc;ng gian m&ecirc;nh m&ocirc;ng đất trời thật th&uacute; vị.</p>\r\n\r\n<p>- Khoảng khắc s&aacute;ng sớm mai thấy một biển m&acirc;y hiện l&ecirc;n trước mắt, một cảm gi&aacute;c thật tuyệt vời.&nbsp;</p>\r\n\r\n<h3>Chương tr&igrave;nh tour</h3>\r\n\r\n<h3><strong><span style=\"color:#e74c3c\">CHIỀU NG&Agrave;Y 1: Đ&Agrave; LẠT - THUNG LŨNG ĐẠ SAR ( ĂN TỐI)</span></strong></h3>\r\n\r\n<p>15:00: Q&uacute;y kh&aacute;ch tập trung tại Kh&aacute;ch sạn&nbsp;<strong>Dala Hotel</strong>&nbsp;địa chỉ số&nbsp;<strong>158 B&ugrave;i thị Xu&acirc;n, Phường 2, TP Đ&agrave; Lạt</strong>&nbsp;hoặc xe của&nbsp;c&ocirc;ng ty&nbsp;sẽ đón quý khách trực ti&ecirc;́p tại đi&ecirc;̉m hẹn. Sau đó di chuy&ecirc;̉n đ&ecirc;́n nơi cắm trại.</p>\r\n\r\n<p>C&aacute;c cung đường đ&oacute;n kh&aacute;ch:&nbsp;B&ugrave;i Thị Xu&acirc;n, Phan Bội Ch&acirc;u, Ph&ugrave; Đổng Thi&ecirc;n Vương,&nbsp;Phan Đ&igrave;nh Ph&ugrave;ng, Hai B&agrave; Trưng, Nam Kỳ Khởi Nghĩa, Trần Ph&uacute;, khu vực chợ Đ&agrave; Lạt.&nbsp;</p>\r\n\r\n<p>16:00: Tham gia chương tr&igrave;nh cắm trại:</p>\r\n\r\n<p>- C&ugrave;ng nhau trải nghiệm dựng lều trại.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Kiếm những c&agrave;nh củi kh&ocirc; v&agrave; chuẩn bị thịt nướng cho bữa tối.</p>\r\n\r\n<p>- Đồ ăn nhẹ cho bữa chiều: B&aacute;nh m&igrave;, bơ, đường.</p>\r\n\r\n<p>18:30: Mọi người c&ugrave;ng nhau thưởng thức bữa tối c&ugrave;ng với nhau:</p>\r\n\r\n<p>- Đồ ăn BBQ ( Thịt g&agrave; nướng mọi, Thịt heo sả ớt, T&ocirc;m sa tế, Rau salad trộn dầu dấm, Tr&aacute;i c&acirc;y tr&aacute;ng miệng).</p>\r\n\r\n<p>- Thưởng thức rượu Cần hoặc rượu Vang Dalat trong thời tiết se se lạnh của n&uacute;i rừng&nbsp;<strong>T&acirc;y Nguy&ecirc;n</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>20:00: C&ugrave;ng nhau tham gia đốt lửa trại c&ugrave;ng nhau nướng khoai v&agrave; bắp tr&ograve; truyện b&ecirc;n bếp lữa. Ngồi ngắm sao rơi tại đồi cỏ thật tuyệt kh&ocirc;ng c&ograve;n g&igrave; bằng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>22:00: Mọi người đi ngủ sớm để buổi s&aacute;ng thức dậy ở một nơi xa.</p>\r\n\r\n<h3><span style=\"color:#e74c3c\"><strong>NG&Agrave;Y 2: SĂN M&Acirc;Y - Đ&Agrave; LẠT ( ĂN S&Aacute;NG)</strong></span></h3>\r\n\r\n<p>5:00: C&ugrave;ng nhau thức dậy: Vệ sinh c&aacute; nh&acirc;n. C&ugrave;ng nhau đ&oacute;n b&igrave;nh minh nơi phố vắng.</p>\r\n\r\n<p>6:30: Tập trung về địa điểm cắm trại. Ăn s&aacute;ng nhẹ với mỳ g&oacute;i hoặc B&aacute;nh m&igrave;, bơ, đường.</p>\r\n\r\n<p>7:00: Thưởng thức cafe s&aacute;ng hoặc tr&agrave; n&oacute;ng b&ecirc;n người th&acirc;n. Thu gom lều trại, thu gom r&aacute;c v&agrave; c&ugrave;ng nhau xuống n&uacute;i.</p>\r\n\r\n<p>Kết th&uacute;c một trải nghiệm mới đầy th&uacute;c vị v&agrave; nhiều điều mới tại<strong>&nbsp;Đ&agrave; Lạt</strong>&nbsp;với nhiều trải nghiệm mới tại&nbsp;c&ocirc;ng ty.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>',1,2,2500000,1500000,'',2),(7,'Bình Thuận - PhanThiết','tours/2021/12/avt-binhthuan_eBaUXdy.jpg','2021-12-22 14:16:49.221485','2021-12-23 16:10:15.175735','2N1Đ','2021-12-31 08:00:00.000000','<p><span style=\"color:#e74c3c\"><strong>NG&Agrave;Y 1 |&nbsp;TP.HCM &ndash; PHAN THIẾT&nbsp;(Ăn s&aacute;ng, trưa, chiều)</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:</strong>&nbsp;Xe v&agrave; Hướng Dẫn Vi&ecirc;n C&ocirc;ng Ty Du Lịch Việt &nbsp;đ&oacute;n Qu&yacute; kh&aacute;ch tại điểm hẹn, khởi h&agrave;nh đi Phan Thiết.&nbsp;Dừng ch&acirc;n d&ugrave;ng bữa s&aacute;ng tại Ng&atilde; Ba Dầu D&acirc;y. Tiếp tục lộ tr&igrave;nh gh&eacute; tham quan N&uacute;i T&agrave;Kou: Du kh&aacute;ch c&oacute; thể leo n&uacute;i hay đi C&aacute;p treo (chi ph&iacute; tự t&uacute;c), tham quan Ch&ugrave;a Linh Sơn Trường Thọ với tượng Phật nằm d&agrave;i 49m.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;</strong>D&ugrave;ng cơm trưa tại nh&agrave; h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chiều:&nbsp;</strong>Khởi h&agrave;nh v&agrave;o Khu Du Lịch H&ograve;n Rơm, tr&ecirc;n đuuờng đi thưởng ngoạn quần thể danh lam, thắng cảnh nổi tiếng của Phan Thiết như: Th&aacute;p Ch&agrave;m Poshanu, Lầu &Ocirc;ng Ho&agrave;ng, Bĩa Đ&aacute; &Ocirc;ng Địa, Bầu Trắng, rặng dừ H&agrave;m Tiến. Tự do tắm biển v&agrave; thưởng thức hải sản tươi sống tại b&atilde;i biển (chi ph&iacute; tự t&uacute;c).</p>\r\n\r\n<ul>\r\n	<li>Tiếp tục chinh phục Đồi C&aacute;t V&agrave;ng Bay, ngắm cảnh, chụp h&igrave;nh lưu niệm, chi&ecirc;m ngưỡng ho&agrave;ng h&ocirc;n tr&ecirc;n biển Phan Thiết.</li>\r\n	<li>D&ugrave;ng cơm tối. Nghỉ đ&ecirc;m tại Phan Thiết.</li>\r\n	<li>Qu&yacute; kh&aacute;ch c&oacute; thể tham gia Chương tr&igrave;nh biểu diễn ca m&uacute;a nhạc kịch tr&ecirc;n nền s&acirc;n khấu nhạc nước tại s&acirc;n khấu L&agrave;ng Ch&agrave;i (chi ph&iacute; v&agrave; phương tiện vận chuyển tự t&uacute;c)</li>\r\n	<li>Địa chỉ: Nguyễn Th&ocirc;ng &ndash; Ph&uacute; H&agrave;i &ndash; Phan Thiết &ndash; B&igrave;nh Thuận.&nbsp;</li>\r\n	<li>Fishermen Show - Show Huyền Thoại L&agrave;ng Ch&agrave;i tr&ecirc;n s&acirc;n khấu nhạc nước biểu diễn h&agrave;ng đ&ecirc;m li&ecirc;n tục từ thứ tư đến chủ nhật, chương tr&igrave;nh bao gồm:</li>\r\n	<li>*19h30: tham quan s&acirc;n khấu L&agrave;ng Ch&agrave;i, chụp ảnh nghệ thuật đường phố, chụp ảnh với nh&acirc;n tượng d&acirc;n ch&agrave;i v&agrave; l&agrave;ng ch&agrave;i về đ&ecirc;m.&nbsp;</li>\r\n	<li>*20h00: thưởng thức Fishermen Show, Huyền Thoại L&agrave;ng Ch&agrave;i.</li>\r\n	<li>Đ&acirc;y l&agrave; show diễn về l&agrave;ng ch&agrave;i tr&ecirc;n s&acirc;n khấu nhạc nước đầu ti&ecirc;n v&agrave; duy nhất tại Việt Nam, được d&agrave;n dựng tr&ecirc;n s&acirc;n khấu nhạc nước lập tr&igrave;nh t&aacute;i tạo cảnh biển cả v&agrave; l&agrave;ng ch&agrave;i với h&agrave;ng trăm ống phun nước kỹ thuật số c&ocirc;ng nghệ 2D v&agrave; 3D mới nhất hiện nay, được đẩy &aacute;p lực cao bởi c&aacute;c bơm ch&igrave;m c&ocirc;ng suất lớn v&agrave; tạo m&agrave;u bằng h&agrave;ng ng&agrave;n đ&egrave;n LED 256 m&agrave;u.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"color:#e74c3c\">NG&Agrave;Y 2 |&nbsp;PHAN THIẾT &ndash; L&Acirc;U Đ&Agrave;I RƯỢU VANG - TP.HCM (Ăn s&aacute;ng, trưa)</span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>D&ugrave;ng bữa s&aacute;ng tại kh&aacute;ch sạn.</p>\r\n\r\n<ul>\r\n	<li>Tự do tắm biển, tắm hồ bơi.&nbsp;</li>\r\n	<li>Tham quan L&acirc;u đ&agrave;i Rượu Vang RD, với h&igrave;nh ảnh cung điện cổ k&iacute;nh, lộng lẫy v&agrave; nguy nga ở Ch&acirc;u &Acirc;u. Đo&agrave;n tự do chi&ecirc;m ngưỡng phong c&aacute;ch kiến tr&uacute;c đẹp m&ecirc; hồn v&agrave; thưởng thức những ly rượu vang hảo hạng tại hầm rượu quy m&ocirc; ẩn s&acirc;u dưới l&ograve;ng đất.&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:</strong>&nbsp;D&ugrave;ng cơm trưa tại nh&agrave; h&agrave;ng.</p>\r\n\r\n<ul>\r\n	<li>Khởi h&agrave;nh về lại TP.HCM, tham quan v&agrave; mua đặc sản tại Cơ sở sản xuất nước mắm hoặc gh&eacute; chợ Phan Thiết.</li>\r\n	<li>Về đến TP.HCM, đưa kh&aacute;ch về điểm đ&oacute;n ban đầu. Chia tay Qu&yacute; kh&aacute;ch v&agrave; hẹn gặp lại.</li>\r\n</ul>',1,3,4500000,3000000,'<ul>\r\n	<li>Khi đăng k&yacute; tour kh&aacute;ch h&agrave;ng bắt buộc phải gởi giấy tờ t&ugrave;y th&acirc;n cho đơn vị du lịch để v&agrave;o t&ecirc;n xuất v&eacute; v&agrave; mua bảo hiểm du lịch. Những giấy tờ c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng (CMND hoặc Passport) thuộc về tr&aacute;ch nhiệm của kh&aacute;ch h&agrave;ng. Mọi vấn đề như h&igrave;nh ảnh, th&ocirc;ng tin giấy tờ trong bản gốc bị mờ, kh&ocirc;ng r&otilde; r&agrave;ng; Passport, CMND hết hạn,&hellip; kh&ocirc;ng đ&uacute;ng quy định của ph&aacute;p luật Việt Nam, Du Lịch Việt sẽ kh&ocirc;ng chịu tr&aacute;ch nhiệm v&agrave; sẽ kh&ocirc;ng ho&agrave;n trả bất cứ chi ph&iacute; ph&aacute;t sinh n&agrave;o.</li>\r\n	<li>Đối với kh&aacute;ch Nước ngo&agrave;i/Việt Kiều: Khi đi tour phải mang theo đầy đủ Passport (Hộ Chiếu), Visa Việt Nam bản ch&iacute;nh c&ograve;n hạn sử dụng l&agrave;m thủ tục l&ecirc;n m&aacute;y bay theo qui định h&agrave;ng kh&ocirc;ng. &nbsp;</li>\r\n	<li>Trẻ em (dưới 12 tuổi) khi đi du lịch mang theo giấy khai sinh (bản ch&iacute;nh hoặc sao y c&oacute; thị thực c&ograve;n hạn sử dụng) để &nbsp;l&agrave;m thủ tục h&agrave;ng kh&ocirc;ng.&nbsp;</li>\r\n	<li>Qu&yacute; kh&aacute;ch từ 14 tuổi bắt buộc phải c&oacute; CMND hoặc Passport (c&ograve;n hạn sử dụng), KH&Ocirc;NG SỬ DỤNG GIẤY KHAI SINH. Nếu Qu&yacute; kh&aacute;ch từ 14 tuổi chưa c&oacute; CMND hoặc Passport bắt buộc phải c&oacute; Giấy x&aacute;c nhận nh&acirc;n th&acirc;n (C&oacute; x&aacute;c nhận ch&iacute;nh quyền (c&ograve;n hạn sử dụng)) + Giấy khai sinh.&nbsp;</li>\r\n	<li>Một số thứ tự, chi tiết trong chương tr&igrave;nh; giờ bay; giờ xe lửa; giờ t&agrave;u cao tốc c&oacute; thể thay đổi để ph&ugrave; hợp với t&igrave;nh h&igrave;nh thực tế của chuyến đi (thời tiết, giao th&ocirc;ng&hellip;)</li>\r\n	<li>Qui định nhận &amp; trả ph&ograve;ng tại c&aacute;c kh&aacute;ch sạn/resort: nhận ph&ograve;ng sau 14H00 v&agrave; trả ph&ograve;ng trước 12H00 .</li>\r\n	<li>H&agrave;nh l&yacute; v&agrave; tư trang du kh&aacute;ch tự bảo quản trong qu&aacute; tr&igrave;nh du lịch .</li>\r\n	<li>V&igrave; l&yacute; do sức khỏe v&agrave; an to&agrave;n vệ sinh thực phẩm, Qu&yacute; Kh&aacute;ch vui l&ograve;ng kh&ocirc;ng mang thực phẩm từ b&ecirc;n ngo&agrave;i v&agrave;o nh&agrave; h&agrave;ng, kh&aacute;ch sạn. Đối với thức uống khi mang v&agrave;o phải c&oacute; sự đồng &yacute; của nh&agrave; h&agrave;ng, kh&aacute;ch sạn v&agrave; bị t&iacute;nh ph&iacute; nếu c&oacute;.</li>\r\n	<li>&nbsp;</li>\r\n</ul>',2),(8,'Hà Giang -  Quản Bạ - Đồng Văn - Lũng Cú - Sông Nho Quế','tours/2021/12/hagiang3.jpg','2021-12-23 07:49:03.787538','2021-12-23 07:49:03.787538','4N3Đ','2021-12-31 07:00:00.000000','<p><span style=\"color:#e74c3c\"><strong>NG&Agrave;Y 1 |&nbsp;TP.HCM &ndash; H&Agrave; NỘI &ndash; PH&Uacute; THỌ &ndash; H&Agrave; GIANG (Ăn trưa, chiều)</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp; Qu&yacute; kh&aacute;ch c&oacute; mặt tại ga quốc nội, s&acirc;n bay T&acirc;n Sơn Nhất trước giờ bay &iacute;t nhất ba tiếng.</strong></p>\r\n\r\n<ul>\r\n	<li>Đại diện c&ocirc;ng ty Du Lịch Việt đ&oacute;n v&agrave; hỗ trợ Qu&yacute; kh&aacute;ch l&agrave;m thủ tục đ&oacute;n chuyến bay đi H&agrave; Nội.</li>\r\n	<li>Đến s&acirc;n bay Nội B&agrave;i, Hướng dẫn vi&ecirc;n đ&oacute;n Qu&yacute; kh&aacute;ch khởi h&agrave;nh đến H&agrave; Giang.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa: Tr&ecirc;n đường dừng ch&acirc;n, d&ugrave;ng cơm trưa.</strong></p>\r\n\r\n<ul>\r\n	<li>Đo&agrave;n tiếp tục khởi h&agrave;nh đến H&agrave; Giang &ndash; nơi c&oacute; những con đường đ&egrave;o, cứ nối nhau quanh co uốn lượn, nơi c&oacute; những con người d&acirc;n tộc ch&acirc;n chất, mặc d&ugrave; cuộc sống ngh&egrave;o khổ nhưng tr&ecirc;n m&ocirc;i lu&ocirc;n nở nụ cười.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối: D&ugrave;ng cơm tối.&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Nghỉ đ&ecirc;m H&agrave; Giang.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#e74c3c\"><strong>NG&Agrave;Y 2 |&nbsp;H&Agrave; GIANG &ndash; Y&Ecirc;N MINH &ndash; ĐỒNG VĂN (Ăn s&aacute;ng, trưa, chiều)&nbsp;</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng: D&ugrave;ng bữa s&aacute;ng.</strong></p>\r\n\r\n<ul>\r\n	<li>Rời th&agrave;nh phố H&agrave; Giang, đường l&ecirc;n Quản Bạ mở ra giữa hai b&ecirc;n v&aacute;ch n&uacute;i cao chất ngất, vượt v&ograve;ng cua kh&uacute;c khuỷu, đi l&ecirc;n đ&egrave;o Pắc Sum. Đo&agrave;n dừng ch&acirc;n ngắm cảnh v&agrave; chụp ảnh tại dốc Bắc Sum.&nbsp;</li>\r\n	<li>L&ecirc;n đến Cổng Trời Quảng Bạ, Qu&yacute; kh&aacute;ch c&oacute; thể ngắm nh&igrave;n thị trấn Tam Sơn thơ mộng.&nbsp;</li>\r\n	<li>N&uacute;i đ&ocirc;i Quản Bạ hiện l&ecirc;n giữa những n&uacute;i đ&aacute; tr&ugrave;ng điệp v&agrave; ruộng bậc thang với h&igrave;nh d&aacute;ng, thế đứng ngồ ngộ khiến du kh&aacute;ch kh&ocirc;ng khỏi ngỡ ng&agrave;ng trước vẻ đẹp kỳ vĩ của tạo ho&aacute;. Hai tr&aacute;i n&uacute;i gắn với truyền thuyết &ldquo;N&uacute;i C&ocirc; Ti&ecirc;n&rdquo; rất thi vị.&nbsp;</li>\r\n	<li>Đến thăm L&agrave;ng dệt thổ cẩm truyền thống L&ugrave;ng T&aacute;m, nơi sinh sống của đồng b&agrave;o H&rsquo;M&ocirc;ng với nghề dệt thổ cẩm l&acirc;u đời.&nbsp;</li>\r\n	<li>Đo&agrave;n khởi h&agrave;nh đi Y&ecirc;n Minh.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp; D&ugrave;ng cơm trưa.</strong></p>\r\n\r\n<ul>\r\n	<li>Gh&eacute; thăm Phố C&aacute;o, với những ng&ocirc;i nh&agrave; tường m&agrave;u đất v&agrave;ng đặc trưng, cổng gỗ nằm trong h&agrave;ng r&agrave;o đ&aacute; &ndash; n&eacute;t đặc trưng của v&ugrave;ng cao nguy&ecirc;n đ&aacute; với bốn d&acirc;n tộc M&ocirc;ng, H&aacute;n, Dao, Pu P&eacute;o.</li>\r\n	<li>Từ hướng Y&ecirc;n Minh l&ecirc;n thị trấn Đồng Văn, đến ng&atilde; ba Ph&oacute; Bảng, khi đến đỉnh đ&egrave;o nơi ng&atilde; ba đi về Ph&oacute; Bảng, du kh&aacute;ch c&oacute; thể nh&igrave;n thấy to&agrave;n cảnh Sủng L&agrave; ph&iacute;a dưới thung lũng. Từ tr&ecirc;n con đường vắt vẻo lưng chừng trời nh&igrave;n xuống, qu&yacute; kh&aacute;ch được dịp chi&ecirc;m ngưỡng một bức tranh thi&ecirc;n nhi&ecirc;n thanh b&igrave;nh, xinh đẹp.</li>\r\n	<li>Đến Sủng L&agrave; thăm nh&agrave; cổ H&rsquo;mong nơi quay bộ phim &quot;Chuyện của Pao&quot;.</li>\r\n	<li>Đo&agrave;n đến khu di t&iacute;ch nh&agrave; vua m&egrave;o Vương Ch&iacute; S&igrave;nh một dinh thự của bậc đế vương xưa, l&agrave; một c&ocirc;ng tr&igrave;nh c&oacute; kiến tr&uacute;c đẹp, hiếm c&oacute; v&agrave; rất độc đ&aacute;o của H&agrave; Giang.</li>\r\n	<li>Qu&yacute; kh&aacute;ch đến tham quan cột cờ Lũng C&uacute;, mảnh đất địa đầu Tổ quốc. Đứng tr&ecirc;n đỉnh cột cờ, Qu&yacute; kh&aacute;ch sẽ thấy to&agrave;n bộ l&agrave;ng văn h&oacute;a L&ocirc; L&ocirc;, ph&oacute;ng xa tầm mắt sẽ thấy những con đường nhỏ x&iacute;u, uốn lượn quanh những c&aacute;nh đồng l&uacute;a, những ng&ocirc;i nh&agrave; nh&agrave; lọt thỏm giữa m&agrave;u xanh của c&acirc;y cối.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:&nbsp; D&ugrave;ng cơm tối.&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Nghỉ đ&ecirc;m tại Đồng Văn.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#e74c3c\"><strong>NG&Agrave;Y 3 |&nbsp;ĐỒNG VĂN &ndash; LŨNG C&Uacute; &ndash; M&Egrave;O VẠC &ndash; H&Agrave; GIANG (Ăn s&aacute;ng, trưa, chiều)&nbsp;</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng: &nbsp;D&ugrave;ng bữa s&aacute;ng.</strong></p>\r\n\r\n<ul>\r\n	<li>Đo&agrave;n tiếp tục khởi h&agrave;nh đến M&egrave;o Vạc, tr&ecirc;n đường dừng ch&acirc;n ngắm cảnh đ&egrave;o M&atilde; Ph&igrave; L&egrave;ng, một trong &quot;tứ đại đỉnh đ&egrave;o&quot; tại v&ugrave;ng n&uacute;i ph&iacute;a Bắc Việt Nam, M&atilde; Ph&igrave; L&egrave;ng nằm giữa cao nguy&ecirc;n đ&aacute; Đồng Văn, một b&ecirc;n l&agrave; v&aacute;ch n&uacute;i M&atilde; P&iacute; L&egrave;ng cao dựng đứng v&agrave; một b&ecirc;n l&agrave; s&ocirc;ng Nho Quế thơ mộng. &nbsp;</li>\r\n	<li>Đo&agrave;n l&ecirc;n thuyền, du thuyền tr&ecirc;n Hẻm Tu sản &ndash; S&ocirc;ng Nho Quế. S&ocirc;ng Nho Quế chảy v&agrave;o Việt Nam từ địa phận th&ocirc;n S&eacute;o Lủng, x&atilde; Lũng C&uacute;, huyện Đồng Văn đi qua Hẻm n&uacute;i Tu Sản rồi chảy dọc đ&egrave;o M&atilde; P&igrave; L&egrave;ng, khi đến M&egrave;o Vạc th&igrave; chảy theo hướng Đ&ocirc;ng v&agrave;o địa phận Cao Bằng rồi đổ v&agrave;o S&ocirc;ng G&acirc;m.&nbsp;</li>\r\n	<li>Hẻm vực Tu Sản được coi l&agrave; hẻm vực s&acirc;u nhất Đ&ocirc;ng Nam &Aacute; v&agrave; nằm trong thung lũng c&oacute; kiến tạo địa chất độc nhất v&ocirc; nhị ở Việt Nam. Hẻm vực mang vẻ đẹp n&ecirc;n thơ, kỳ b&iacute; như sợi chỉ m&agrave;u ngọc b&iacute;ch huyền ảo, ẩn hiện giữa n&uacute;i rừng Đ&ocirc;ng Bắc hiểm trở. (chi ph&iacute; xe &ocirc;m tự t&uacute;c).</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa: D&ugrave;ng cơm trưa.</strong></p>\r\n\r\n<ul>\r\n	<li>Đến thị trấn M&egrave;o Vạc, nếu v&agrave;o đ&uacute;ng dịp chợ phi&ecirc;n (được mở v&agrave;o chủ nhật h&agrave;ng tuần), l&agrave; nơi hội tụ tinh hoa văn ho&aacute; của c&aacute;c d&acirc;n tộc thiểu số v&ugrave;ng cao nguy&ecirc;n đ&aacute; của H&agrave; Giang, chợ phi&ecirc;n M&egrave;o Vạc ẩn chứa trong đ&oacute; những n&eacute;t độc đ&aacute;o kh&oacute; trộn lẫn với bất cứ chợ n&agrave;o. Ngo&agrave;i ra, M&egrave;o Vạc c&ograve;n hấp dẫn du kh&aacute;ch nhờ những m&oacute;n đặc sản như: thịt b&ograve; kh&ocirc;, đậu xi, ch&egrave; xanh T&aacute;t Ng&agrave;, rượu ng&ocirc; Ha &Iacute;a v&agrave; c&aacute;c loại thuốc d&acirc;n gian truyền thống c&aacute;c d&acirc;n tộc.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:&nbsp; Đo&agrave;n trở về H&agrave; Giang, d&ugrave;ng cơm tối.</strong></p>\r\n\r\n<ul>\r\n	<li>Nghỉ đ&ecirc;m tại H&agrave; Giang.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#e74c3c\"><strong>NG&Agrave;Y 4 |&nbsp;H&Agrave; GIANG &ndash; ĐỀN H&Ugrave;NG &ndash; H&Agrave; NỘI &ndash; TP.HCM (Ăn s&aacute;ng, trưa)&nbsp;</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp; D&ugrave;ng bữa s&aacute;ng.</strong></p>\r\n\r\n<ul>\r\n	<li>Đo&agrave;n khởi h&agrave;nh đến Ph&uacute; Thọ.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp; D&ugrave;ng cơm trưa.</strong></p>\r\n\r\n<ul>\r\n	<li>Tham quan khu di t&iacute;ch lịch sử đền H&ugrave;ng bao gồm bốn đền ch&iacute;nh l&agrave; đền Hạ, đền Trung, đền Thượng v&agrave; đền Giếng. Từ những bậc đầu ti&ecirc;n dưới ch&acirc;n n&uacute;i, du kh&aacute;ch sẽ qua c&aacute;nh cổng, bước nhiều bậc đ&aacute; l&ecirc;n thắp hương v&agrave; thăm th&uacute; c&aacute;c đền, kết th&uacute;c tại đền Thượng tr&ecirc;n đỉnh Nghĩa Lĩnh, nơi c&oacute; lăng mộ vua H&ugrave;ng thứ 6.</li>\r\n	<li>Hướng dẫn vi&ecirc;n tiễn đo&agrave;n ra s&acirc;n bay Nội B&agrave;i đ&oacute;n chuyến bay về TP.HCM.</li>\r\n	<li>Kết th&uacute;c chuyến tham quan, chia tay đo&agrave;n v&agrave; hẹn gặp lại</li>\r\n</ul>',1,2,7000000,3500000,'<p><strong>Gi&aacute; tour bao gồm:</strong><br />\r\n-&nbsp;&nbsp; &nbsp;V&eacute; m&aacute;y bay khứ hồi TPHCM &ndash; H&Agrave; NỘI &ndash; TP.HCM (Vietjet Air)<br />\r\n-&nbsp;&nbsp; &nbsp;Xe tham quan (xe 16 chỗ, 29 chỗ, 35 chỗ, 45 chỗ) t&ugrave;y theo số lượng kh&aacute;ch thực tế tr&ecirc;n chuyến đi.<br />\r\n-&nbsp;&nbsp; &nbsp;Kh&aacute;ch sạn ti&ecirc;u chuẩn tương đương 2 sao, 3 sao đầy đủ tiện nghi 2/kh&aacute;ch người lớn/ ph&ograve;ng. &nbsp;&nbsp; &nbsp;Nếu lẻ người thứ 3, đ&oacute;ng phụ ph&iacute; ph&ograve;ng đơn hoặc ngủ gh&eacute;p ph&ograve;ng 3 kh&aacute;ch.<br />\r\n-&nbsp;&nbsp; &nbsp;Ăn uống theo chương tr&igrave;nh:&nbsp;<br />\r\n+ Ăn phụ: 03 bữa s&aacute;ng.<br />\r\n+ Ăn ch&iacute;nh: 07 bữa ch&iacute;nh.<br />\r\n-&nbsp;&nbsp; &nbsp;V&eacute; tham quan theo chương tr&igrave;nh.&nbsp;<br />\r\n-&nbsp;&nbsp; &nbsp;Hướng dẫn vi&ecirc;n tiếng Việt vui vẻ nhiệt t&igrave;nh suốt chuyến đi.<br />\r\n-&nbsp;&nbsp; &nbsp;Bảo hiểm với mức bồi thường tối đa 100.000.000 đồng/trường hợp. Kh&ocirc;ng &aacute;p dụng cho kh&aacute;ch từ 80 tuổi trở l&ecirc;n.<br />\r\n-&nbsp;&nbsp; &nbsp;Qu&agrave; tặng: n&oacute;n du lịch Việt, nước, khăn lạnh.<br />\r\n<strong>Kh&ocirc;ng bao gồm:</strong><br />\r\n-&nbsp;&nbsp; &nbsp;Bia hay nước ngọt trong c&aacute;c bữa ăn.<br />\r\n-&nbsp;&nbsp; &nbsp;Xe điện tại Đền H&ugrave;ng.<br />\r\n-&nbsp;&nbsp; &nbsp;Chi ph&iacute; c&aacute; nh&acirc;n: điện thoại, giặt ủi&hellip;<br />\r\n-&nbsp;&nbsp; &nbsp;C&aacute;c chi ph&iacute; kh&ocirc;ng c&oacute; trong mục chi ph&iacute; bao gồm.<br />\r\n-&nbsp;&nbsp; &nbsp;Ph&iacute; v&agrave;o ruộng hoa tam gi&aacute;c mạch,&hellip;<br />\r\n-&nbsp;&nbsp; &nbsp;Thuế VAT.</p>',1),(10,'Nha Trang - Cam Ranh - Đảo Bình Ba','tours/2021/12/avt-camranh.jpg','2021-12-26 08:12:10.274410','2021-12-26 08:12:10.274410','2N2Đ','2021-12-31 08:00:00.000000','<p><span style=\"color:#e74c3c\"><strong>TP.HCM &ndash; CAM RANH</strong></span></p>\r\n\r\n<p><strong>Tối:&nbsp;</strong>Đo&agrave;n khởi h&agrave;nh đi Cam Ranh, bắt đầu h&agrave;nh tr&igrave;nh<strong>&nbsp;tour du lịch đảo B&igrave;nh Ba</strong>&nbsp;&ndash; Nghỉ ngơi tr&ecirc;n xe.</p>\r\n\r\n<p><span style=\"color:#e74c3c\"><strong>NG&Agrave;Y 1 |&nbsp;CAM RANH &ndash; ĐẢO B&Igrave;NH BA (Ăn s&aacute;ng, trưa, chiều)</strong></span>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>06H00: Qu&yacute; kh&aacute;ch d&ugrave;ng bữa s&aacute;ng tại Cam Ranh. Sau đ&oacute;, Xe đưa qu&yacute; kh&aacute;ch đến cảng c&aacute; Ba Ng&ograve;i đ&oacute;n chuyến t&agrave;u khởi h&agrave;nh từ cảng Ba Ng&ograve;i đi&nbsp;<strong>du lịch đảo B&igrave;nh Ba</strong>.&nbsp; Đến B&igrave;nh Ba, Qu&yacute; kh&aacute;ch nhận ph&ograve;ng nghỉ ngơi.</p>\r\n\r\n<p><strong>Trưa:</strong>&nbsp;Sau khi d&ugrave;ng cơm trưa. Du kh&aacute;ch l&ecirc;n thuyền bắt đầu<strong>&nbsp;tour đảo B&igrave;nh Ba</strong><strong>&nbsp;</strong>với h&agrave;nh tr&igrave;nh&nbsp;thăm quan những b&atilde;i tắm hoang sơ với c&aacute;t trắng mịn v&agrave; nước trong xanh tuyệt đẹp quanh đảo như: B&atilde;i Bồ Đề, B&atilde;i Nh&agrave; Củ.<br />\r\nThuyền tiếp tục đến b&atilde;i biển Sa Huỳnh hoặc B&atilde;i Nh&agrave; Củ kh&aacute;m ph&aacute; đ&aacute;y biển v&agrave; những rặng san h&ocirc;. Tại đ&acirc;y, Qu&yacute; kh&aacute;ch c&oacute; thể ng&acirc;m m&igrave;nh trong l&agrave;n nước trong xanh tuyệt đẹp của<strong>&nbsp;tour du lịch&nbsp;đảo B&igrave;nh Ba</strong>, ngắm những rặng san h&ocirc; tuyệt đẹp với những đ&agrave;n c&aacute;c bơi lội tung tăng, Qu&yacute; kh&aacute;ch cũng c&oacute; thể bắt những con ốc với nhiều m&agrave;u sắc v&agrave; h&igrave;nh dạng kh&aacute;c nhau.</p>\r\n\r\n<p><strong>Tối:&nbsp;</strong>D&ugrave;ng cơm tối, nghỉ đ&ecirc;m tại B&igrave;nh Ba.</p>\r\n\r\n<p><span style=\"color:#e74c3c\"><strong>NG&Agrave;Y 2 |&nbsp;ĐẢO B&Igrave;NH BA &ndash; TP.HCM (Ăn s&aacute;ng, trưa)</strong></span></p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>Qu&yacute; kh&aacute;ch d&ugrave;ng bữa t&acirc;m s&aacute;ng với m&oacute;n b&aacute;nh canh c&aacute;, đặc sản của d&acirc;n đảo B&igrave;nh Ba. Tiếp theo chương tr&igrave;nh&nbsp;<strong>tour du lịch đảo B&igrave;nh Ba</strong>, Qu&yacute; kh&aacute;ch tiếp tục kh&aacute;m ph&aacute; đảo bằng xe m&aacute;y (chi ph&iacute; tự t&uacute;c). L&ecirc;n đỉnh n&uacute;i ngắm to&agrave;n bộ cảnh biển tuyệt đẹp tại Vịnh Cam Ranh. Ph&iacute;a xa xa l&agrave; th&aacute;p l&ocirc; cốt của người Ph&aacute;p x&acirc;y dựng từ cuối thế kỷ 19 m&agrave; người d&acirc;n nơi đ&acirc;y quen gọi l&agrave; Lầu &Ocirc;ng Ho&agrave;ng 2. Tham quan c&aacute;c bệ đỡ s&uacute;ng thần c&ocirc;ng v&agrave; l&agrave; nơi tiếp gi&aacute;p duy nhất giữa biển v&agrave; đất liền.&nbsp;<br />\r\nTham quan những ng&ocirc;i ch&ugrave;a độc đ&aacute;o tr&ecirc;n đảo như: Tịnh Thất Ngọc Gia Hương hay Điện Đạ Tạng, đ&acirc;y l&agrave; những di t&iacute;ch lịch sử tr&ecirc;n đảo (chi ph&iacute; thu&ecirc; xe m&aacute;y tự t&uacute;c ) hoặc qu&yacute; kh&aacute;ch c&oacute; thể tự do tắm biển ở B&atilde;i Nồm.</p>\r\n\r\n<p><strong>Trưa:&nbsp;</strong>D&ugrave;ng cơm trưa tại nh&agrave; d&acirc;n hoặc tr&ecirc;n nh&agrave; h&agrave;ng nổi với những m&oacute;n ăn đậm chất miền biển, nghỉ ngơi thư gi&atilde;n.<br />\r\nQu&yacute; kh&aacute;ch đ&oacute;n chuyến t&agrave;u trở về cảng Ba Ng&ograve;i.</p>\r\n\r\n<ul>\r\n	<li>Đo&agrave;n tiếp tục khởi h&agrave;nh về TP.HCM, kết th&uacute;c chương tr&igrave;nh&nbsp;<strong>tour du lịch đảo B&igrave;nh Ba</strong>, chia tay v&agrave; hẹn gặp lại!</li>\r\n</ul>',1,2,3000000,1500000,'<p><strong>Gi&aacute; tour bao gồm:</strong></p>\r\n\r\n<ul>\r\n	<li>Xe tham quan (xe 16 chỗ, 29 chỗ, 35 chỗ, 45 chỗ) t&ugrave;y theo số lượng kh&aacute;ch thực tế tr&ecirc;n chuyến đi.</li>\r\n	<li>Kh&aacute;ch sạn 2 sao&nbsp; hoặc homestay - ph&ograve;ng 4 (4 kh&aacute;ch/ ph&ograve;ng).</li>\r\n	<li>Ph&ograve;ng 4: (4 kh&aacute;ch/ ph&ograve;ng).\r\n	<ul>\r\n		<li>Ph&ograve;ng 4 nếu ở 3 kh&aacute;ch/ ph&ograve;ng, phụ thu th&ecirc;m 100.000đ/ kh&aacute;ch.</li>\r\n		<li>Ph&ograve;ng 4 nếu ở 2 kh&aacute;ch/ ph&ograve;ng, phụ thu th&ecirc;m 200.000đ/ kh&aacute;ch.</li>\r\n		<li>Ph&ograve;ng 4 nếu ở 1 kh&aacute;ch/ ph&ograve;ng, phụ thu th&ecirc;m 400.000đ/ kh&aacute;ch.</li>\r\n		<li>Ph&ograve;ng 2 nếu ở 2 kh&aacute;ch/ ph&ograve;ng, phụ thu th&ecirc;m 100.000đ/ kh&aacute;ch.</li>\r\n		<li>Ph&ograve;ng 2 nếu ở 1 kh&aacute;ch/ ph&ograve;ng, phụ thu th&ecirc;m 150.000đ/ kh&aacute;ch.</li>\r\n	</ul>\r\n	</li>\r\n	<li>Ăn uống: 02 bữa s&aacute;ng, 02 bữa trưa, 01 bữa tối.</li>\r\n	<li>V&eacute; tham quan theo chương tr&igrave;nh.</li>\r\n	<li>T&agrave;u Cam Ranh &ndash; Đảo B&igrave;nh Ba &ndash; Cam Ranh, t&agrave;u tham quan quanh đảo.</li>\r\n	<li>Hướng dẫn vi&ecirc;n tiếng Việt vui vẻ nhiệt t&igrave;nh suốt chuyến đi.</li>\r\n	<li>Bảo hiểm trọn tour mức bồi thường cao nhất 100,000,000đ/trường hợp. Kh&ocirc;ng &aacute;p dụng cho kh&aacute;ch từ 80 tuổi trở l&ecirc;n.</li>\r\n	<li>Qu&agrave; tặng: n&oacute;n du lịch Việt, nước, khăn lạnh.</li>\r\n</ul>\r\n\r\n<p><strong>Kh&ocirc;ng bao gồm:</strong></p>\r\n\r\n<ul>\r\n	<li>Bia hay nước ngọt trong c&aacute;c bữa ăn.</li>\r\n	<li>Tham quan ngo&agrave;i chương tr&igrave;nh.</li>\r\n	<li>Chi ph&iacute; xe m&aacute;y, xe điện tham quan quanh đảo.</li>\r\n	<li>Chi ph&iacute; ăn ngo&agrave;i chương tr&igrave;nh.</li>\r\n	<li>Chi ph&iacute; c&aacute; nh&acirc;n: điện thoại, giặt ủi&hellip;</li>\r\n	<li>Chi ph&iacute; b&atilde;i biển: d&ugrave;, v&otilde;ng, tắm nước ngọt&hellip;</li>\r\n	<li>Thuế VAT.</li>\r\n</ul>',3);
/*!40000 ALTER TABLE `tours_tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours_user`
--

DROP TABLE IF EXISTS `tours_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tours_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours_user`
--

LOCK TABLES `tours_user` WRITE;
/*!40000 ALTER TABLE `tours_user` DISABLE KEYS */;
INSERT INTO `tours_user` VALUES (1,'pbkdf2_sha256$260000$izBolKNnOIzyOcEcY0jaFz$TTfrz6qYemgbl0d1m4SzzfC7zwPfJ9vaJRPnK1C1sGw=',NULL,0,'trinh','','','trinh@gmail.com',0,1,'2021-08-23 12:43:15.000000','users/2021/12/237350781_1350981808675078_3753745739687624741_n.jpg',NULL,NULL),(2,'pbkdf2_sha256$260000$47szv9l2aNI6VBpz8b4scm$TCtpHSToDVad+NSdjc22DS2mL2Ki0QPRTJdKgEqYvfc=','2021-12-25 07:52:46.283708',1,'admin1','','','1851050092ngan@ou.edu.vn',1,1,'2021-08-23 12:52:23.000000','users/2021/12/avt1.PNG',NULL,NULL),(3,'123456',NULL,0,'ngan123','ngan','truc','ngan@gmail.com',0,1,'2021-12-24 08:11:23.000000','uploads/2021/12/237350781_1350981808675078_3753745739687624741_n.jpg','Cát Cát - Hàm rồng',934892199),(4,'pbkdf2_sha256$260000$xR06sUMSqRogo34cZsCw7x$CiEvkXWH0j1tKcrc9tRNDG1PnVUIy2oH9qjoMdDd1vM=','2021-12-24 12:21:23.000000',0,'ngan1234','ngan2','truc2','ngan2@gmail.com',1,1,'2021-12-24 08:18:37.000000','users/2021/12/z2684420475534_8428bed27b31c6087be8b3eefe24c88a.jpg',NULL,NULL);
/*!40000 ALTER TABLE `tours_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours_user_groups`
--

DROP TABLE IF EXISTS `tours_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tours_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tours_user_groups_user_id_group_id_76280a67_uniq` (`user_id`,`group_id`),
  KEY `tours_user_groups_group_id_2365fd14_fk_auth_group_id` (`group_id`),
  CONSTRAINT `tours_user_groups_group_id_2365fd14_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `tours_user_groups_user_id_577fd1a7_fk_tours_user_id` FOREIGN KEY (`user_id`) REFERENCES `tours_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours_user_groups`
--

LOCK TABLES `tours_user_groups` WRITE;
/*!40000 ALTER TABLE `tours_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tours_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours_user_user_permissions`
--

DROP TABLE IF EXISTS `tours_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tours_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tours_user_user_permissions_user_id_permission_id_9f30e23f_uniq` (`user_id`,`permission_id`),
  KEY `tours_user_user_perm_permission_id_cedf3ba3_fk_auth_perm` (`permission_id`),
  CONSTRAINT `tours_user_user_perm_permission_id_cedf3ba3_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `tours_user_user_permissions_user_id_62eefd44_fk_tours_user_id` FOREIGN KEY (`user_id`) REFERENCES `tours_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours_user_user_permissions`
--

LOCK TABLES `tours_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `tours_user_user_permissions` DISABLE KEYS */;
INSERT INTO `tours_user_user_permissions` VALUES (3,3,29),(4,3,30),(5,3,31),(2,3,32),(1,3,44),(6,4,25),(7,4,26),(8,4,27),(9,4,28);
/*!40000 ALTER TABLE `tours_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-28 15:49:10
