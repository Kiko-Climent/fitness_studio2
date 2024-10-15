-- MySQL dump 10.13  Distrib 8.3.0, for macos12.6 (x86_64)
--
-- Host: localhost    Database: fitness_db
-- ------------------------------------------------------
-- Server version	8.0.32

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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add Course',6,'add_course'),(22,'Can change Course',6,'change_course'),(23,'Can delete Course',6,'delete_course'),(24,'Can view Course',6,'view_course'),(25,'Can add user account',7,'add_useraccount'),(26,'Can change user account',7,'change_useraccount'),(27,'Can delete user account',7,'delete_useraccount'),(28,'Can view user account',7,'view_useraccount'),(29,'Can add association',8,'add_association'),(30,'Can change association',8,'change_association'),(31,'Can delete association',8,'delete_association'),(32,'Can view association',8,'view_association'),(33,'Can add code',9,'add_code'),(34,'Can change code',9,'change_code'),(35,'Can delete code',9,'delete_code'),(36,'Can view code',9,'view_code'),(37,'Can add nonce',10,'add_nonce'),(38,'Can change nonce',10,'change_nonce'),(39,'Can delete nonce',10,'delete_nonce'),(40,'Can view nonce',10,'view_nonce'),(41,'Can add user social auth',11,'add_usersocialauth'),(42,'Can change user social auth',11,'change_usersocialauth'),(43,'Can delete user social auth',11,'delete_usersocialauth'),(44,'Can view user social auth',11,'view_usersocialauth'),(45,'Can add partial',12,'add_partial'),(46,'Can change partial',12,'change_partial'),(47,'Can delete partial',12,'delete_partial'),(48,'Can view partial',12,'view_partial'),(49,'Can add blacklisted token',13,'add_blacklistedtoken'),(50,'Can change blacklisted token',13,'change_blacklistedtoken'),(51,'Can delete blacklisted token',13,'delete_blacklistedtoken'),(52,'Can view blacklisted token',13,'view_blacklistedtoken'),(53,'Can add outstanding token',14,'add_outstandingtoken'),(54,'Can change outstanding token',14,'change_outstandingtoken'),(55,'Can delete outstanding token',14,'delete_outstandingtoken'),(56,'Can view outstanding token',14,'view_outstandingtoken'),(57,'Can add Category',15,'add_category'),(58,'Can change Category',15,'change_category'),(59,'Can delete Category',15,'delete_category'),(60,'Can view Category',15,'view_category'),(61,'Can add user profile',16,'add_userprofile'),(62,'Can change user profile',16,'change_userprofile'),(63,'Can delete user profile',16,'delete_userprofile'),(64,'Can view user profile',16,'view_userprofile');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_category`
--

DROP TABLE IF EXISTS `category_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category_category_parent_id_bce0763d_fk_category_category_id` (`parent_id`),
  CONSTRAINT `category_category_parent_id_bce0763d_fk_category_category_id` FOREIGN KEY (`parent_id`) REFERENCES `category_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_category`
--

LOCK TABLES `category_category` WRITE;
/*!40000 ALTER TABLE `category_category` DISABLE KEYS */;
INSERT INTO `category_category` VALUES (1,'Contracts',NULL),(2,'Gold',1),(4,'Silver',1),(5,'Bronze',1);
/*!40000 ALTER TABLE `category_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_course`
--

DROP TABLE IF EXISTS `courses_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_course` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` bigint NOT NULL,
  `capacity` int unsigned NOT NULL,
  `schedule` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructor_id` bigint DEFAULT NULL,
  `image_url` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`),
  KEY `courses_course_instructor_id_5b0643dc_fk_user_useraccount_id` (`instructor_id`),
  CONSTRAINT `courses_course_instructor_id_5b0643dc_fk_user_useraccount_id` FOREIGN KEY (`instructor_id`) REFERENCES `user_useraccount` (`id`),
  CONSTRAINT `courses_course_chk_1` CHECK ((`capacity` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_course`
--

LOCK TABLES `courses_course` WRITE;
/*!40000 ALTER TABLE `courses_course` DISABLE KEYS */;
INSERT INTO `courses_course` VALUES (1,'pilates','pilates','Improve flexibility, strength, and body awareness without the need to increase muscle mass',60000000,20,'Mon-Friday at 10am',NULL,'https://res.cloudinary.com/dzlveh6fi/image/upload/v1717612858/pilates_jykkfq.jpg'),(2,'yoga','yoga','Whether you are a beginner or an experienced yogi, our sessions offer a supportive environment to deepen your practice.',60000000,15,'Mon-Sat at 9am',NULL,'https://res.cloudinary.com/dzlveh6fi/image/upload/v1717612858/yoga2_u7bila.jpg'),(3,'crossfit','crossfit','Push your limits and build functional strength. Combining high-intensity interval training, weightlifting, and bodyweight movements, this class delivers a full-body workout that improves endurance, power, and agility.',50000000,15,'Mon-Wed-Fri at 12am',NULL,'https://res.cloudinary.com/dzlveh6fi/image/upload/v1718102596/crossfit_lg_es84zr.jpg'),(4,'bodypump','bodypump','Set to motivating music, BodyPump is perfect for anyone looking to tone and strengthen their body while boosting their fitness levels.',50000000,15,'Mon-Friday at 17am',NULL,'https://res.cloudinary.com/dzlveh6fi/image/upload/v1718114697/bodypump2_yjclsk.jpg');
/*!40000 ALTER TABLE `courses_course` ENABLE KEYS */;
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
  KEY `django_admin_log_user_id_c564eba6_fk_user_useraccount_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_useraccount_id` FOREIGN KEY (`user_id`) REFERENCES `user_useraccount` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-07-06 21:48:35.391999','1','Contracts',1,'[{\"added\": {}}]',15,4),(2,'2024-07-06 21:48:52.380154','2','Gold',1,'[{\"added\": {}}]',15,4),(3,'2024-07-06 21:48:58.854239','3','Silver',1,'[{\"added\": {}}]',15,4),(4,'2024-07-06 21:49:20.661368','3','Silver',3,'',15,4),(5,'2024-07-06 21:49:38.193143','4','Silver',1,'[{\"added\": {}}]',15,4),(6,'2024-07-06 21:50:21.426857','5','Bronze',1,'[{\"added\": {}}]',15,4),(7,'2024-07-10 13:32:06.115075','1','Pilates',1,'[{\"added\": {}}]',6,4),(8,'2024-09-09 20:58:36.015453','3','otto.climent@gmail.com',1,'[{\"added\": {}}]',16,4),(9,'2024-09-09 20:59:53.257828','2','otto.climent@gmail.com',2,'[{\"changed\": {\"fields\": [\"Password\"]}}]',7,4),(10,'2024-09-09 21:03:12.372064','4','pulp@gmail.com',1,'[{\"added\": {}}]',16,4),(11,'2024-09-09 21:15:40.594756','6','pepe@gmail.com',1,'[{\"added\": {}}]',16,4),(12,'2024-09-09 21:16:13.891288','6','pepe@gmail.com',3,'',16,4),(13,'2024-09-10 11:04:59.745654','2','Yoga',1,'[{\"added\": {}}]',6,4),(14,'2024-09-10 11:36:36.885492','1','Pilates',2,'[{\"changed\": {\"fields\": [\"Image url\"]}}]',6,4),(15,'2024-09-10 11:37:46.349053','2','Yoga',2,'[{\"changed\": {\"fields\": [\"Image url\"]}}]',6,4),(16,'2024-09-10 11:38:49.217747','2','Yoga',2,'[{\"changed\": {\"fields\": [\"Image url\"]}}]',6,4),(17,'2024-09-10 11:39:36.890171','2','Yoga',2,'[{\"changed\": {\"fields\": [\"Image url\"]}}]',6,4),(18,'2024-09-10 11:40:29.082463','2','Yoga',2,'[{\"changed\": {\"fields\": [\"Image url\"]}}]',6,4),(19,'2024-09-10 11:43:11.910078','3','Crossfit',1,'[{\"added\": {}}]',6,4),(20,'2024-09-10 11:49:32.970781','4','Bodypump',1,'[{\"added\": {}}]',6,4),(21,'2024-09-10 12:13:02.415100','4','bodypump',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',6,4),(22,'2024-09-10 12:13:08.870350','3','crossfit',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',6,4),(23,'2024-09-10 12:13:16.169024','1','pilates',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',6,4),(24,'2024-09-10 12:13:23.323567','2','yoga',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',6,4),(25,'2024-09-14 20:52:59.932350','10','jude5@gmail.com',2,'[{\"changed\": {\"fields\": [\"Address\", \"City\", \"Zipcode\", \"Phone\"]}}]',16,4),(26,'2024-09-14 21:47:44.662114','10','jude5@gmail.com',2,'[{\"changed\": {\"fields\": [\"Address\", \"City\", \"Zipcode\", \"Phone\"]}}]',16,4),(27,'2024-09-14 22:22:08.651178','10','jude5@gmail.com',2,'[{\"changed\": {\"fields\": [\"Zipcode\"]}}]',16,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(15,'category','category'),(4,'contenttypes','contenttype'),(6,'courses','course'),(5,'sessions','session'),(8,'social_django','association'),(9,'social_django','code'),(10,'social_django','nonce'),(12,'social_django','partial'),(11,'social_django','usersocialauth'),(13,'token_blacklist','blacklistedtoken'),(14,'token_blacklist','outstandingtoken'),(7,'user','useraccount'),(16,'user_profile','userprofile');
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-07-02 15:56:16.268381'),(2,'contenttypes','0002_remove_content_type_name','2024-07-02 15:56:16.432503'),(3,'auth','0001_initial','2024-07-02 15:56:16.720192'),(4,'auth','0002_alter_permission_name_max_length','2024-07-02 15:56:16.787504'),(5,'auth','0003_alter_user_email_max_length','2024-07-02 15:56:16.797187'),(6,'auth','0004_alter_user_username_opts','2024-07-02 15:56:16.806594'),(7,'auth','0005_alter_user_last_login_null','2024-07-02 15:56:16.822986'),(8,'auth','0006_require_contenttypes_0002','2024-07-02 15:56:16.830408'),(9,'auth','0007_alter_validators_add_error_messages','2024-07-02 15:56:16.843880'),(10,'auth','0008_alter_user_username_max_length','2024-07-02 15:56:16.856777'),(11,'auth','0009_alter_user_last_name_max_length','2024-07-02 15:56:16.865269'),(12,'auth','0010_alter_group_name_max_length','2024-07-02 15:56:16.886927'),(13,'auth','0011_update_proxy_permissions','2024-07-02 15:56:16.897315'),(14,'auth','0012_alter_user_first_name_max_length','2024-07-02 15:56:16.905983'),(15,'user','0001_initial','2024-07-02 15:56:17.170441'),(16,'admin','0001_initial','2024-07-02 15:56:17.299672'),(17,'admin','0002_logentry_remove_auto_add','2024-07-02 15:56:17.310200'),(18,'admin','0003_logentry_add_action_flag_choices','2024-07-02 15:56:17.322566'),(19,'courses','0001_initial','2024-07-02 15:56:17.412736'),(20,'sessions','0001_initial','2024-07-02 15:56:17.455478'),(21,'default','0001_initial','2024-07-02 15:56:17.633271'),(22,'social_auth','0001_initial','2024-07-02 15:56:17.637367'),(23,'default','0002_add_related_name','2024-07-02 15:56:17.649891'),(24,'social_auth','0002_add_related_name','2024-07-02 15:56:17.653665'),(25,'default','0003_alter_email_max_length','2024-07-02 15:56:17.667642'),(26,'social_auth','0003_alter_email_max_length','2024-07-02 15:56:17.671149'),(27,'default','0004_auto_20160423_0400','2024-07-02 15:56:17.682870'),(28,'social_auth','0004_auto_20160423_0400','2024-07-02 15:56:17.686825'),(29,'social_auth','0005_auto_20160727_2333','2024-07-02 15:56:17.715519'),(30,'social_django','0006_partial','2024-07-02 15:56:17.754160'),(31,'social_django','0007_code_timestamp','2024-07-02 15:56:17.797026'),(32,'social_django','0008_partial_timestamp','2024-07-02 15:56:17.844480'),(33,'social_django','0009_auto_20191118_0520','2024-07-02 15:56:17.923186'),(34,'social_django','0010_uid_db_index','2024-07-02 15:56:17.948530'),(35,'social_django','0011_alter_id_fields','2024-07-02 15:56:18.227958'),(36,'social_django','0012_usersocialauth_extra_data_new','2024-07-02 15:56:18.332485'),(37,'social_django','0013_migrate_extra_data','2024-07-02 15:56:18.350765'),(38,'social_django','0014_remove_usersocialauth_extra_data','2024-07-02 15:56:18.386800'),(39,'social_django','0015_rename_extra_data_new_usersocialauth_extra_data','2024-07-02 15:56:18.427881'),(40,'token_blacklist','0001_initial','2024-07-02 15:56:18.585620'),(41,'token_blacklist','0002_outstandingtoken_jti_hex','2024-07-02 15:56:18.617157'),(42,'token_blacklist','0003_auto_20171017_2007','2024-07-02 15:56:18.640957'),(43,'token_blacklist','0004_auto_20171017_2013','2024-07-02 15:56:18.768706'),(44,'token_blacklist','0005_remove_outstandingtoken_jti','2024-07-02 15:56:18.812943'),(45,'token_blacklist','0006_auto_20171017_2113','2024-07-02 15:56:18.847260'),(46,'token_blacklist','0007_auto_20171017_2214','2024-07-02 15:56:19.055508'),(47,'token_blacklist','0008_migrate_to_bigautofield','2024-07-02 15:56:19.244712'),(48,'token_blacklist','0010_fix_migrate_to_bigautofield','2024-07-02 15:56:19.265692'),(49,'token_blacklist','0011_linearizes_history','2024-07-02 15:56:19.269799'),(50,'token_blacklist','0012_alter_outstandingtoken_user','2024-07-02 15:56:19.318042'),(51,'user','0002_alter_useraccount_is_staff_and_more','2024-07-02 15:56:19.339303'),(52,'social_django','0001_initial','2024-07-02 15:56:19.351954'),(53,'social_django','0005_auto_20160727_2333','2024-07-02 15:56:19.356065'),(54,'social_django','0002_add_related_name','2024-07-02 15:56:19.359902'),(55,'social_django','0003_alter_email_max_length','2024-07-02 15:56:19.365481'),(56,'social_django','0004_auto_20160423_0400','2024-07-02 15:56:19.369232'),(57,'category','0001_initial','2024-07-04 14:14:57.023641'),(58,'courses','0002_course_image_url','2024-07-08 22:07:59.750400'),(59,'user_profile','0001_initial','2024-09-06 08:32:08.481701');
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
INSERT INTO `django_session` VALUES ('nb3my9o45mhn6u5lhbsk9cckz87e22ss','.eJxVjMsOwiAQRf-FtSEtj4G6dO83kBkGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhZnYcTpdyOMj1R3wHestyZjq-syk9wVedAur43T83K4fwcFe_nWzg3sMoNV2gAOeiRw3iOgtX5iMORBxcTaqTwhxoQMCclCJBiz9ka8P9UGOBQ:1sqxMo:37b6uxpMe4TX3OXbYfMQt3CGVh1KO6DEGBVA5x0Hcos','2024-10-02 16:17:22.142692'),('o97um8dyly4mmqa8ldzf7yb94lgclds9','.eJxVjMsOwiAQRf-FtSEtj4G6dO83kBkGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhZnYcTpdyOMj1R3wHestyZjq-syk9wVedAur43T83K4fwcFe_nWzg3sMoNV2gAOeiRw3iOgtX5iMORBxcTaqTwhxoQMCclCJBiz9ka8P9UGOBQ:1sxu5v:6NVe-VYw13tGaBPR9bNBScdgd5i_owPeGzaEzUwzxS0','2024-10-21 20:12:39.666208'),('pb8ioefb0ayzxhtcln4zkk7i5sfoplvj','.eJxVjMsOwiAQRf-FtSEtj4G6dO83kBkGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhZnYcTpdyOMj1R3wHestyZjq-syk9wVedAur43T83K4fwcFe_nWzg3sMoNV2gAOeiRw3iOgtX5iMORBxcTaqTwhxoQMCclCJBiz9ka8P9UGOBQ:1slcPT:5sEHslbgHXnQyJXDvguj_niOTkzxvX_NgFzZPjN9IFE','2024-09-17 22:54:03.909426'),('quak0gm71ykfia2zx4p1vaduzz40yvfx','.eJxVjMsOwiAQRf-FtSEtj4G6dO83kBkGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhZnYcTpdyOMj1R3wHestyZjq-syk9wVedAur43T83K4fwcFe_nWzg3sMoNV2gAOeiRw3iOgtX5iMORBxcTaqTwhxoQMCclCJBiz9ka8P9UGOBQ:1sp2lw:GNJBv0dpBHoLeV92ovRV_Sy7z5pK5hYHrBwQX_OUTsk','2024-09-27 09:39:24.429476'),('wth4v1x571dt8q5dadysy3obekuz46se','.eJxVjMsOwiAQRf-FtSEtj4G6dO83kBkGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhZnYcTpdyOMj1R3wHestyZjq-syk9wVedAur43T83K4fwcFe_nWzg3sMoNV2gAOeiRw3iOgtX5iMORBxcTaqTwhxoQMCclCJBiz9ka8P9UGOBQ:1sQD8H:KqSRv7jqC1umCPafpI1wuYkD_DRsXhcqp8xDim1PBF4','2024-07-20 21:39:49.419920');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_association`
--

DROP TABLE IF EXISTS `social_auth_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_association` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issued` int NOT NULL,
  `lifetime` int NOT NULL,
  `assoc_type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_association`
--

LOCK TABLES `social_auth_association` WRITE;
/*!40000 ALTER TABLE `social_auth_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_code`
--

DROP TABLE IF EXISTS `social_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_code` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  KEY `social_auth_code_code_a2393167` (`code`),
  KEY `social_auth_code_timestamp_176b341f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_code`
--

LOCK TABLES `social_auth_code` WRITE;
/*!40000 ALTER TABLE `social_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_nonce`
--

DROP TABLE IF EXISTS `social_auth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_nonce` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` int NOT NULL,
  `salt` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_nonce`
--

LOCK TABLES `social_auth_nonce` WRITE;
/*!40000 ALTER TABLE `social_auth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_partial`
--

DROP TABLE IF EXISTS `social_auth_partial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_partial` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `next_step` smallint unsigned NOT NULL,
  `backend` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `data` json NOT NULL DEFAULT (_utf8mb3'{}'),
  PRIMARY KEY (`id`),
  KEY `social_auth_partial_token_3017fea3` (`token`),
  KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`),
  CONSTRAINT `social_auth_partial_chk_1` CHECK ((`next_step` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_partial`
--

LOCK TABLES `social_auth_partial` WRITE;
/*!40000 ALTER TABLE `social_auth_partial` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_partial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_usersocialauth`
--

DROP TABLE IF EXISTS `social_auth_usersocialauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_usersocialauth` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `extra_data` json NOT NULL DEFAULT (_utf8mb3'{}'),
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  KEY `social_auth_usersoci_user_id_17d28448_fk_user_user` (`user_id`),
  KEY `social_auth_usersocialauth_uid_796e51dc` (`uid`),
  CONSTRAINT `social_auth_usersoci_user_id_17d28448_fk_user_user` FOREIGN KEY (`user_id`) REFERENCES `user_useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_usersocialauth`
--

LOCK TABLES `social_auth_usersocialauth` WRITE;
/*!40000 ALTER TABLE `social_auth_usersocialauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_usersocialauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_blacklistedtoken`
--

DROP TABLE IF EXISTS `token_blacklist_blacklistedtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_blacklistedtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_id` (`token_id`),
  CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_blacklistedtoken`
--

LOCK TABLES `token_blacklist_blacklistedtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` DISABLE KEYS */;
INSERT INTO `token_blacklist_blacklistedtoken` VALUES (1,'2024-07-02 18:27:47.871835',1),(3,'2024-07-02 18:29:42.650752',2),(5,'2024-07-02 21:30:29.031370',3),(7,'2024-07-02 21:37:20.672280',6),(8,'2024-07-02 22:24:36.648797',7),(10,'2024-07-02 22:26:12.144083',8),(12,'2024-07-03 08:55:08.134609',9),(13,'2024-07-03 08:59:23.418687',10),(14,'2024-07-03 09:00:59.456508',11),(15,'2024-07-03 09:01:48.622775',12),(17,'2024-07-03 09:02:44.164193',13),(19,'2024-07-03 09:09:54.712166',15),(21,'2024-07-03 09:23:03.642801',16),(23,'2024-07-03 10:40:56.407869',17),(25,'2024-07-03 10:50:37.376045',18),(27,'2024-07-03 11:02:44.425941',19),(29,'2024-07-03 11:03:39.975720',20),(30,'2024-07-03 11:03:52.703383',21),(33,'2024-07-03 11:06:25.066155',22),(34,'2024-07-03 12:05:27.826696',23),(35,'2024-07-03 12:08:27.664099',24),(37,'2024-07-03 12:12:32.002836',25),(39,'2024-07-03 12:15:30.612970',26),(41,'2024-07-03 12:17:04.280596',27),(43,'2024-07-03 12:20:30.585574',29),(45,'2024-07-03 13:03:26.196440',32),(48,'2024-07-07 21:17:19.846898',36),(49,'2024-07-07 21:17:53.404018',37),(52,'2024-07-09 10:15:32.838089',41),(53,'2024-07-09 10:17:02.493224',42),(55,'2024-07-15 17:07:23.907368',43),(57,'2024-09-03 23:13:37.543227',46),(59,'2024-09-09 11:16:16.778408',48),(61,'2024-09-09 11:19:41.485732',49),(62,'2024-09-09 11:36:17.735284',50),(64,'2024-09-09 14:05:12.643812',51),(65,'2024-09-09 14:27:51.973812',52),(66,'2024-09-09 14:29:44.250817',53),(68,'2024-09-09 14:33:41.377047',54),(70,'2024-09-09 14:48:36.887630',55),(71,'2024-09-09 14:49:23.044364',57),(73,'2024-09-09 14:49:45.561864',58),(75,'2024-09-09 14:58:32.687200',59),(76,'2024-09-09 15:33:55.682980',60),(77,'2024-09-09 15:34:45.498550',61),(78,'2024-09-09 15:36:35.861226',62),(80,'2024-09-09 15:39:04.349888',63),(82,'2024-09-09 15:49:12.192793',64),(84,'2024-09-09 15:50:39.537900',65),(85,'2024-09-09 15:53:33.796128',66),(86,'2024-09-09 15:54:37.291598',67),(88,'2024-09-09 15:59:40.967476',68),(90,'2024-09-09 19:55:23.120827',69),(91,'2024-09-09 20:05:03.146072',70),(92,'2024-09-09 20:07:12.335979',71),(94,'2024-09-09 20:17:37.983724',72),(96,'2024-09-09 20:19:29.193330',73),(97,'2024-09-09 20:21:26.674131',74),(99,'2024-09-09 20:29:34.646151',75),(100,'2024-09-09 20:35:12.279932',76),(101,'2024-09-09 20:44:30.443771',77),(102,'2024-09-09 20:47:20.973925',78),(104,'2024-09-09 20:49:00.687689',79),(106,'2024-09-09 21:04:16.137899',80),(107,'2024-09-09 21:11:30.974230',82),(109,'2024-09-09 21:19:58.379369',83),(110,'2024-09-09 21:31:20.306486',84),(111,'2024-09-09 21:54:29.644773',85),(113,'2024-09-10 07:00:31.122829',86),(114,'2024-09-11 12:43:08.270790',87),(115,'2024-09-11 12:44:23.545325',88),(117,'2024-09-11 16:58:46.206156',89),(119,'2024-09-13 08:49:59.686457',90),(121,'2024-09-13 09:04:37.296198',91),(122,'2024-09-13 09:06:30.236934',92),(123,'2024-09-13 09:25:50.962595',93),(125,'2024-09-13 10:10:09.294867',94),(127,'2024-09-13 10:28:03.767443',95),(128,'2024-09-13 12:44:26.810467',96),(130,'2024-09-13 13:00:08.776832',97),(132,'2024-09-13 13:02:53.172948',98),(133,'2024-09-13 20:23:37.488669',99),(134,'2024-09-13 20:29:17.233029',100),(136,'2024-09-13 20:33:10.875216',101),(138,'2024-09-13 20:50:36.932929',102),(140,'2024-09-13 20:53:40.801857',103),(141,'2024-09-13 20:58:13.691434',104),(143,'2024-09-13 21:03:23.414175',105),(145,'2024-09-13 21:20:38.985577',106),(147,'2024-09-13 21:21:24.888525',107),(149,'2024-09-13 21:34:32.966910',108),(150,'2024-09-13 21:35:18.485089',109),(152,'2024-09-13 21:43:48.293426',110),(153,'2024-09-13 21:49:28.674285',111),(155,'2024-09-14 16:13:21.924930',112),(157,'2024-09-14 16:19:15.768942',113),(158,'2024-09-14 16:23:52.802095',114),(160,'2024-09-14 16:25:50.356819',115),(162,'2024-09-14 16:27:04.312128',116),(163,'2024-09-14 16:30:27.065943',117),(165,'2024-09-14 16:33:29.562163',118),(167,'2024-09-14 16:43:56.053875',119),(168,'2024-09-14 16:57:08.353487',120),(169,'2024-09-14 17:09:24.824880',121),(171,'2024-09-14 18:35:17.365012',122),(173,'2024-09-14 18:35:55.969061',123),(175,'2024-09-14 20:56:30.511422',125),(176,'2024-09-14 21:23:54.627782',126),(177,'2024-09-14 21:27:13.986114',127),(179,'2024-09-14 21:32:12.255733',128),(181,'2024-09-14 21:48:41.354697',129),(183,'2024-09-14 22:09:54.032566',130),(185,'2024-09-14 22:17:56.611655',131),(187,'2024-09-14 22:20:40.902081',132),(189,'2024-09-14 22:24:45.535172',133),(191,'2024-09-15 21:17:24.986068',134),(193,'2024-09-15 21:18:22.262736',135),(194,'2024-09-15 21:25:27.074028',138),(195,'2024-09-15 21:26:04.288632',139),(197,'2024-09-15 23:04:55.051834',140),(199,'2024-09-16 16:31:18.641765',141),(201,'2024-09-16 21:11:29.142817',142),(202,'2024-09-17 08:26:16.809089',143),(204,'2024-09-24 21:18:18.090901',144),(205,'2024-10-02 12:46:10.702941',145),(207,'2024-10-02 12:56:12.993474',146),(208,'2024-10-02 12:56:53.432849',147),(210,'2024-10-02 12:58:18.133231',148),(212,'2024-10-02 13:22:07.764171',149),(214,'2024-10-02 13:30:20.329228',150),(216,'2024-10-02 13:31:02.982667',151),(218,'2024-10-02 13:31:23.789150',152),(219,'2024-10-02 13:32:09.587194',153),(221,'2024-10-02 13:33:37.047997',154),(223,'2024-10-02 13:36:34.072191',155),(224,'2024-10-02 13:37:44.963025',156),(225,'2024-10-02 13:38:05.111389',157),(226,'2024-10-02 21:01:53.175441',158),(228,'2024-10-02 21:05:02.504370',159),(230,'2024-10-02 21:15:03.837926',160),(231,'2024-10-02 21:18:33.412583',161),(233,'2024-10-02 21:37:43.253694',162),(235,'2024-10-02 21:51:35.097391',163),(237,'2024-10-02 22:01:10.073340',164),(239,'2024-10-02 22:09:57.984371',165),(241,'2024-10-04 18:50:39.218248',166),(243,'2024-10-04 18:51:55.537473',167),(245,'2024-10-04 18:52:51.447475',168),(247,'2024-10-04 18:59:52.335615',169);
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_outstandingtoken`
--

DROP TABLE IF EXISTS `token_blacklist_outstandingtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_outstandingtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `jti` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  KEY `token_blacklist_outs_user_id_83bc629a_fk_user_user` (`user_id`),
  CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_user_user` FOREIGN KEY (`user_id`) REFERENCES `user_useraccount` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_outstandingtoken`
--

LOCK TABLES `token_blacklist_outstandingtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` DISABLE KEYS */;
INSERT INTO `token_blacklist_outstandingtoken` VALUES (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjUzNjg1OCwiaWF0IjoxNzE5OTQ0ODU4LCJqdGkiOiI0MTc0MzM2NDIzZWI0Mjc0OGE1M2VjMTViZGQxMDczNCIsInVzZXJfaWQiOjF9.iK5EJESPp2MTa2MBkeJl_xkuwCkyAGCm0hatZxklpA8','2024-07-02 18:27:38.698086','2024-08-01 18:27:38.000000',1,'4174336423eb42748a53ec15bdd10734'),(2,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjUzNjkyOSwiaWF0IjoxNzE5OTQ0OTI5LCJqdGkiOiI4MjI1ZWVlYTIwNzc0YzkxYjBjN2Y2N2I5MmFkMDM5YyIsInVzZXJfaWQiOjF9._Vg6jBc7cLkbl33Rn_NeSsXwq6L9Bm7d5JSimwDIGHE','2024-07-02 18:28:49.811798','2024-08-01 18:28:49.000000',1,'8225eeea20774c91b0c7f67b92ad039c'),(3,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU0NzgyMCwiaWF0IjoxNzE5OTU1ODIwLCJqdGkiOiIwNzA5Y2VjMTRiMDk0ODAyYjQzYTA1ZGY4NGU2ZTNmNyIsInVzZXJfaWQiOjF9.DwMUL9hGuJz5NhjCv93lIQs8apT9rSZeZTYY7hx1oIA','2024-07-02 21:30:20.295760','2024-08-01 21:30:20.000000',1,'0709cec14b094802b43a05df84e6e3f7'),(4,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU0NzkzMiwiaWF0IjoxNzE5OTU1OTMyLCJqdGkiOiI4NjZjNjE0MGE4NDE0ODhkYjQ0YmJmNDUzMDBkZjBhYyIsInVzZXJfaWQiOjF9.-iq1lByvUKKGO_mC9we8pyXO9hpHJAqc24vn6P33yN0','2024-07-02 21:32:12.764624','2024-08-01 21:32:12.000000',1,'866c6140a841488db44bbf45300df0ac'),(5,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU0Nzk2NSwiaWF0IjoxNzE5OTU1OTY1LCJqdGkiOiIxOTQ5MTFhZjVjYTc0NzY2OTQ2OTVhYjhjMzVmNmFhYiIsInVzZXJfaWQiOjF9.EjUrm6uDA5ezqNdfPBh9EZMXXIUoGXFebeaGzD0MYbU','2024-07-02 21:32:45.602047','2024-08-01 21:32:45.000000',1,'194911af5ca7476694695ab8c35f6aab'),(6,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU0ODE3OSwiaWF0IjoxNzE5OTU2MTc5LCJqdGkiOiI2YjY3NDFjOTQ0NTE0ODU4OGFkYTQ1YmVlZjlkMWU0NSIsInVzZXJfaWQiOjJ9.rpF2NTsv_2s0TSDN7zvrIr_shRGDG5RCxj3aZ6-uVks','2024-07-02 21:36:19.733363','2024-08-01 21:36:19.000000',2,'6b6741c9445148588ada45beef9d1e45'),(7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU1MTA1NiwiaWF0IjoxNzE5OTU5MDU2LCJqdGkiOiJmMTgxMzU2YjYxZDk0MGJlYjRmYzMxYWJjNzkyYzE2OCIsInVzZXJfaWQiOjF9.1_QlTmr_nq1PmlUp7UAZ2127kQxWxOP5JkPfljfCDSg','2024-07-02 22:24:16.039907','2024-08-01 22:24:16.000000',1,'f181356b61d940beb4fc31abc792c168'),(8,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU1MTE1NiwiaWF0IjoxNzE5OTU5MTU2LCJqdGkiOiIzN2QzY2FjNDE0ZWQ0ZWExYmU1MDM4NDQxZmEwZDQ0OSIsInVzZXJfaWQiOjJ9.DjnaASXUKzCWW1NoMROFvh1jmsqPC0PL6R3AevW-dPs','2024-07-02 22:25:56.426356','2024-08-01 22:25:56.000000',2,'37d3cac414ed4ea1be5038441fa0d449'),(9,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU4ODkwMSwiaWF0IjoxNzE5OTk2OTAxLCJqdGkiOiI2YWNlZGU3ZGZhOGE0YmRkYjhiOWJkOWZkYjQwYjNjMiIsInVzZXJfaWQiOjF9.zDiVPWVtc1wnk2E88En16e5tDFF0GVrwzGKKPx_5YWQ','2024-07-03 08:55:01.054361','2024-08-02 08:55:01.000000',1,'6acede7dfa8a4bddb8b9bd9fdb40b3c2'),(10,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU4OTEzMCwiaWF0IjoxNzE5OTk3MTMwLCJqdGkiOiJiMjk4ODY3NDkxNTI0ODRkYjg2NWIzZDY2OWZjODJjMCIsInVzZXJfaWQiOjN9.5CfDb9ndJx25lQZ6boq2g40s0c6HT49cvEWJhMdUpMs','2024-07-03 08:58:50.149895','2024-08-02 08:58:50.000000',3,'b29886749152484db865b3d669fc82c0'),(11,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU4OTI0OCwiaWF0IjoxNzE5OTk3MjQ4LCJqdGkiOiIyMmI1ZjQ4NGNhZmY0ZTNjOTczYzM5NWUwNzU3M2NkMiIsInVzZXJfaWQiOjN9.rxIK-dcl2bSmKnG7WchrUPVm6oNSQrwaCI5boOeJYug','2024-07-03 09:00:48.805414','2024-08-02 09:00:48.000000',3,'22b5f484caff4e3c973c395e07573cd2'),(12,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU4OTI5OSwiaWF0IjoxNzE5OTk3Mjk5LCJqdGkiOiJlMGYwODgxOWJjZDI0ZWU2ODk1ZDg3MmY0ZGY1MmViMiIsInVzZXJfaWQiOjF9.xRh86zO9ZWTNdJXlrdccrdMWvEtq0BfbP_P_FggIROQ','2024-07-03 09:01:39.967337','2024-08-02 09:01:39.000000',1,'e0f08819bcd24ee6895d872f4df52eb2'),(13,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU4OTM1MCwiaWF0IjoxNzE5OTk3MzUwLCJqdGkiOiJhZGQ1MzIxMTBhODU0OTg2ODRjMDRmY2FmYzZmNDJjNSIsInVzZXJfaWQiOjN9.5ldSutPZOqRcIP15jRbN0EiJiPOS5mebwTCSIbqIfwo','2024-07-03 09:02:30.910724','2024-08-02 09:02:30.000000',3,'add532110a85498684c04fcafc6f42c5'),(14,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU4OTczMCwiaWF0IjoxNzE5OTk3NzMwLCJqdGkiOiI0MGE3Mzc5YjNjZWE0MzJhOTQ5NGFlMjA1OWNjNzExNyIsInVzZXJfaWQiOjF9.EUtWFG47Ji-yA3CBgin40d9MY5Jxh8QEb6mDb73AkFY','2024-07-03 09:08:50.466986','2024-08-02 09:08:50.000000',1,'40a7379b3cea432a9494ae2059cc7117'),(15,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU4OTc4MiwiaWF0IjoxNzE5OTk3NzgyLCJqdGkiOiJmOTI2MWUzMzhkNjQ0ZTc4ODU4MjJiZDUzZTNiOWM4YiIsInVzZXJfaWQiOjF9.OORC4WMLm-CtUuK9jOQzmvwFU1oic_5k1Tm3_o-xwKw','2024-07-03 09:09:42.804050','2024-08-02 09:09:42.000000',1,'f9261e338d644e7885822bd53e3b9c8b'),(16,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU5MDIyMSwiaWF0IjoxNzE5OTk4MjIxLCJqdGkiOiIxZTVkMmJjNGUxZjQ0NDYxOGZkNThkOGM0NTIxODU0ZSIsInVzZXJfaWQiOjF9.qcjRg6T7a9cgO6LZ7V4WZmuqRRJOP6yyiz6efknNArw','2024-07-03 09:17:01.757068','2024-08-02 09:17:01.000000',1,'1e5d2bc4e1f444618fd58d8c4521854e'),(17,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU5NTIzNSwiaWF0IjoxNzIwMDAzMjM1LCJqdGkiOiI4OGYyNDBlMjI4NDY0M2QwOGFhZDRiYTYwMDc3YTQwZiIsInVzZXJfaWQiOjF9.1F0qAKOqFiD0Z3nZjgOMy4fLi5t6kK7yZI_nroHSEEU','2024-07-03 10:40:35.463233','2024-08-02 10:40:35.000000',1,'88f240e2284643d08aad4ba60077a40f'),(18,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU5NTgwOSwiaWF0IjoxNzIwMDAzODA5LCJqdGkiOiIzZTU5NjBlYzUzZWE0MDhiYWQ3YmQyZGFmOTY0Y2VjMCIsInVzZXJfaWQiOjF9.UiWW5jNORfW7WsOARgsHIyK5nJdUYIxwoARsxS8BSf0','2024-07-03 10:50:09.176364','2024-08-02 10:50:09.000000',1,'3e5960ec53ea408bad7bd2daf964cec0'),(19,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU5NjUyNywiaWF0IjoxNzIwMDA0NTI3LCJqdGkiOiJmOGZkYzJhNTE0MGE0NWFkYjk1ODlhNTNmYmM1NjY3YyIsInVzZXJfaWQiOjF9.xkvl4QYWY7sVOjAMnKaJYK_tx2rQoq1Ed5S9vnZaDvw','2024-07-03 11:02:07.376735','2024-08-02 11:02:07.000000',1,'f8fdc2a5140a45adb9589a53fbc5667c'),(20,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU5NjU4NSwiaWF0IjoxNzIwMDA0NTg1LCJqdGkiOiJmMWQ0M2NmMGMwYzM0ZTNmOTk5ZWM2MzEwNzkzNmU4NCIsInVzZXJfaWQiOjF9.Kn54k7MWJXXJjJmQpthIgLNNd5PCMHBFaKKzJm1NEy4','2024-07-03 11:03:05.433749','2024-08-02 11:03:05.000000',1,'f1d43cf0c0c34e3f999ec63107936e84'),(21,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU5NjYyOCwiaWF0IjoxNzIwMDA0NjI4LCJqdGkiOiI5OThmNjFhYjExOWI0ODZlODRjMmMzM2MxOGQ2MDBjNSIsInVzZXJfaWQiOjF9.iE4hM7xHGEHTWjVSlhuUC3_h_7N__-RkIaZ8qVOYcp4','2024-07-03 11:03:48.836096','2024-08-02 11:03:48.000000',1,'998f61ab119b486e84c2c33c18d600c5'),(22,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU5Njc2MCwiaWF0IjoxNzIwMDA0NzYwLCJqdGkiOiJlMWQ3MmFjY2QxYzY0ZGE3ODMwYzJjNDU3N2JiMjcwMSIsInVzZXJfaWQiOjF9.GnmRBLnA2mCxI1VKCz3GeE_OyOGvbP6xj7T75H_t5yM','2024-07-03 11:06:00.246584','2024-08-02 11:06:00.000000',1,'e1d72accd1c64da7830c2c4577bb2701'),(23,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjYwMDMxNiwiaWF0IjoxNzIwMDA4MzE2LCJqdGkiOiJkNDU1MTc0YjlkOTI0Y2JmOWJmYTBhOWVhYjg0NmE3ZiIsInVzZXJfaWQiOjF9.YueRUD3fFNgUePGM_h68HK31L19CgTv-_cUjNi6Zynw','2024-07-03 12:05:16.596890','2024-08-02 12:05:16.000000',1,'d455174b9d924cbf9bfa0a9eab846a7f'),(24,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjYwMDM5NywiaWF0IjoxNzIwMDA4Mzk3LCJqdGkiOiI3MWUxMGZmYjFiNzc0MmQ3YjZmMGI5NmM2M2ZhMjMzZiIsInVzZXJfaWQiOjF9.36V-i-EyzDD1HnSrFXuEA4mP7F9NlYXjPB6LW_vLXkk','2024-07-03 12:06:37.983243','2024-08-02 12:06:37.000000',1,'71e10ffb1b7742d7b6f0b96c63fa233f'),(25,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjYwMDUxOCwiaWF0IjoxNzIwMDA4NTE4LCJqdGkiOiIyYmY1NDkzMWFjMGE0Nzk5OTllNGZkMzA2NmUwZDk3MyIsInVzZXJfaWQiOjF9.bpgxIYiKk23qiNpEG9ZWZoI0vNMI1YGfNNw0ufOlnSg','2024-07-03 12:08:38.421820','2024-08-02 12:08:38.000000',1,'2bf54931ac0a479999e4fd3066e0d973'),(26,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjYwMDc4MiwiaWF0IjoxNzIwMDA4NzgyLCJqdGkiOiJjMjZkZmRjZjNjZmE0NzU4YjFhZGYzYzBkZDA4ZDUxMCIsInVzZXJfaWQiOjF9.8LoZoz7m9u2SQeT63NJuIVQhsFr_N3dW_NfVA1gnQqY','2024-07-03 12:13:02.938882','2024-08-02 12:13:02.000000',1,'c26dfdcf3cfa4758b1adf3c0dd08d510'),(27,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjYwMDk0MCwiaWF0IjoxNzIwMDA4OTQwLCJqdGkiOiIwMmYyY2RjNTBmODA0Y2MyYmI5YTg3YzMzNWEyMzA4OCIsInVzZXJfaWQiOjF9.TPoGeZoGv2qGDCtjXu7ZiHhOkKPGVgkSTFN8k3h_bM4','2024-07-03 12:15:40.693335','2024-08-02 12:15:40.000000',1,'02f2cdc50f804cc2bb9a87c335a23088'),(28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjYwMTAzOSwiaWF0IjoxNzIwMDA5MDM5LCJqdGkiOiIxMjlhMDM1OGUzZGY0NTA1YTNiM2E1YTIxYTE1OTEzYSIsInVzZXJfaWQiOjF9.RKnZhWfYUg1uaxmHdphnS-kIW5iHjI2ID_TbN6rhNcg','2024-07-03 12:17:19.886545','2024-08-02 12:17:19.000000',1,'129a0358e3df4505a3b3a5a21a15913a'),(29,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjYwMTIwNywiaWF0IjoxNzIwMDA5MjA3LCJqdGkiOiJkMzRmNDU1MjM0YjI0ZjAzYmUwN2RkZWQ5NGUyOGRjNiIsInVzZXJfaWQiOjF9.C1oIsgC8UGktt5jT8mGKBz-5Fyt_MutpgIKnFxcl4kc','2024-07-03 12:20:07.595969','2024-08-02 12:20:07.000000',1,'d34f455234b24f03be07dded94e28dc6'),(30,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjYwMTI1NiwiaWF0IjoxNzIwMDA5MjU2LCJqdGkiOiIzNTUwMDg2OTk0Mzg0MDRiYmQxNGU5NmM3ZWVlZGE3MSIsInVzZXJfaWQiOjF9.vwzCJ-lBwK46CAn4-wUEZlVPg_gvCzj-v-LlCe9YKc0','2024-07-03 12:20:56.867497','2024-08-02 12:20:56.000000',1,'355008699438404bbd14e96c7eeeda71'),(31,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjYwMTU5NCwiaWF0IjoxNzIwMDA5NTk0LCJqdGkiOiIxMDBhYTUyMzNlNDQ0ZmZjYWEzZTE5ZWQ4ZTVkYjM5ZiIsInVzZXJfaWQiOjF9.dyTZO5ZiXJCH3wcOp_klA7d0Fh1iluzWbrUWNEKjPuY','2024-07-03 12:26:34.595526','2024-08-02 12:26:34.000000',1,'100aa5233e444ffcaa3e19ed8e5db39f'),(32,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjYwMzU0OSwiaWF0IjoxNzIwMDExNTQ5LCJqdGkiOiIwOGJjYjBjZDRhYjY0MzczODI1MWYyMzk2ZjJhMjIwMCIsInVzZXJfaWQiOjF9.nZbhlsjbhOZUA_2W8ts6_z5Ix7XHSRpIdSPRy95pqLQ','2024-07-03 12:59:09.252398','2024-08-02 12:59:09.000000',1,'08bcb0cd4ab643738251f2396f2a2200'),(33,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjYwNDExMywiaWF0IjoxNzIwMDEyMTEzLCJqdGkiOiJkMjEwNDg3YWY5ZWY0ZTBhYjU2NDU2YzM0NzIyYTI2MyIsInVzZXJfaWQiOjF9.cmJCWfSR_OSZHqHHldVIOx2WNRfWgE-jhxsnvhxCBW0','2024-07-03 13:08:33.381714','2024-08-02 13:08:33.000000',1,'d210487af9ef4e0ab56456c34722a263'),(34,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjYwNDI1MSwiaWF0IjoxNzIwMDEyMjUxLCJqdGkiOiIwZjRlM2RkMDRlMzU0MmUxYjIwMDljNDM5NjA5Y2MzNCIsInVzZXJfaWQiOjF9.bd85273pVXi320FNmQFqGirJOGqpT-qvmNZPSPscz8w','2024-07-03 13:10:51.618650','2024-08-02 13:10:51.000000',1,'0f4e3dd04e3542e1b2009c439609cc34'),(35,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjYwNDMyNiwiaWF0IjoxNzIwMDEyMzI2LCJqdGkiOiI0Yjk5YWFjMDdlNzc0ODYxYTkzYzZlYTAyYzU1MGQxZCIsInVzZXJfaWQiOjF9.TP9jC-E4sS07Nb25KsyFjqhNLpcpvUEyjuiUwDLWFKk','2024-07-03 13:12:06.499078','2024-08-02 13:12:06.000000',1,'4b99aac07e774861a93c6ea02c550d1d'),(36,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjk3OTAxMiwiaWF0IjoxNzIwMzg3MDEyLCJqdGkiOiI5NTMwOTk3N2Y5NDY0ZDdkYmM4ZDE1N2M1YTE0ZWFjZSIsInVzZXJfaWQiOjF9.Gq7LI2Rgiobk20tnlgIC83eH-e4EFpUbRzxA7QYweaA','2024-07-07 21:16:52.902017','2024-08-06 21:16:52.000000',1,'95309977f9464d7dbc8d157c5a14eace'),(37,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjk3OTA2MiwiaWF0IjoxNzIwMzg3MDYyLCJqdGkiOiI3NGIxMGVkZDc2NTM0MjE5YTY0YTdlODI5N2VkNGFiOCIsInVzZXJfaWQiOjF9.vXrbwH-Q4k_zpHXBp367S9BFsM-9Ycm_U0Ft6c-LxW0','2024-07-07 21:17:42.070634','2024-08-06 21:17:42.000000',1,'74b10edd76534219a64a7e8297ed4ab8'),(38,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjk3OTA5NywiaWF0IjoxNzIwMzg3MDk3LCJqdGkiOiIxNDUyZDY1NjQzYjE0NzAzOTkxMzZiZWJmOTA5NGQ1ZCIsInVzZXJfaWQiOjF9.gSfkNJHJr-kEFY9jceKZUeuEvhurZaTyl4m3QbxrT4g','2024-07-07 21:18:17.795912','2024-08-06 21:18:17.000000',1,'1452d65643b1470399136bebf9094d5d'),(39,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMzA0MjQ4MSwiaWF0IjoxNzIwNDUwNDgxLCJqdGkiOiIzODk5MDNhZTBhMTU0YmY3YWYxNDQ1MzE4Y2Q5NWZhNiIsInVzZXJfaWQiOjF9.-LdFgcNp5l1QLTkX1A4eEye-UzL7jm-XlviPD83LwNk','2024-07-08 14:54:41.356381','2024-08-07 14:54:41.000000',1,'389903ae0a154bf7af1445318cd95fa6'),(40,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMzExMjA4MSwiaWF0IjoxNzIwNTIwMDgxLCJqdGkiOiI1YzM2MzkxZmM4MzI0NTQ0OTQxZmZjMWQwNDljZjkyOSIsInVzZXJfaWQiOjF9.a43kBTxtc2ZrmpVkXFw_00QgS3KOV14d9K5g3fh0unk','2024-07-09 10:14:41.585595','2024-08-08 10:14:41.000000',1,'5c36391fc8324544941ffc1d049cf929'),(41,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMzExMjExNiwiaWF0IjoxNzIwNTIwMTE2LCJqdGkiOiI4MTVkOGYzZGY2YTU0OTU2YjZiOGM5ODJhZTVhNGRjZiIsInVzZXJfaWQiOjF9.XnQQrWy7XdTSGiIY9K2saCzFMMsDKCKIY1OFbSm7Zzs','2024-07-09 10:15:16.599606','2024-08-08 10:15:16.000000',1,'815d8f3df6a54956b6b8c982ae5a4dcf'),(42,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMzExMjE5NSwiaWF0IjoxNzIwNTIwMTk1LCJqdGkiOiIyYTMyMTVlNzE1ZTk0YTU2OWIyMTAxMDU4NGUzOGQ1ZSIsInVzZXJfaWQiOjF9.yGd2e4rQDMp3Te5SfEF3w-GlCJFNryuICKRhqfSZB8I','2024-07-09 10:16:35.608086','2024-08-08 10:16:35.000000',1,'2a3215e715e94a569b21010584e38d5e'),(43,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMzY1NTIxNSwiaWF0IjoxNzIxMDYzMjE1LCJqdGkiOiI2YjgzMTQxOWQzOWE0Y2Y0ODFiMjJiMDg4ODdmMGE2YiIsInVzZXJfaWQiOjF9.pbb5zY6K-btDbDNykQZUgZqvPi-DiYK57VFkm003J60','2024-07-15 17:06:55.473253','2024-08-14 17:06:55.000000',1,'6b831419d39a4cf481b22b08887f0a6b'),(44,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMzY1NTI2MSwiaWF0IjoxNzIxMDYzMjYxLCJqdGkiOiJiMWI1Mzg3NmZiMWY0OTdhODRkZjg2OWRhOTA3OWZkMiIsInVzZXJfaWQiOjF9.U0PTiGmq2cyJX_eMFZ3PkgLb4lcXYo9EflUqZ1maR0w','2024-07-15 17:07:41.933427','2024-08-14 17:07:41.000000',1,'b1b53876fb1f497a84df869da9079fd2'),(45,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMzcyMzU2MCwiaWF0IjoxNzIxMTMxNTYwLCJqdGkiOiI4Nzk5MzExMTc4NWI0YmZjOThhODhiN2Q4YWVkODEyOCIsInVzZXJfaWQiOjF9.RlKtxqKCnM70Q3cVvBE9tIlOuxjgMhAMPeNnUxKSCLE','2024-07-16 12:06:00.012960','2024-08-15 12:06:00.000000',1,'87993111785b4bfc98a88b7d8aed8128'),(46,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyNzk5NzE5OSwiaWF0IjoxNzI1NDA1MTk5LCJqdGkiOiJmMzFhMjI2Nzc4NTg0MzFmYjMxMTNkN2I4MGU0NzVmOCIsInVzZXJfaWQiOjF9.X-0FRdUVw67E7hsqM5gvAXEbv0hH_BNYdG57Katx_Fw','2024-09-03 23:13:19.131527','2024-10-03 23:13:19.000000',1,'f31a22677858431fb3113d7b80e475f8'),(47,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODQ3MDY5MiwiaWF0IjoxNzI1ODc4NjkyLCJqdGkiOiIyOWNmZDQ3OGQ5NTI0NWNiOTA2ZjU1ZDRlMjRhNTdiYiIsInVzZXJfaWQiOjV9.x3Pgy0azg-3hHUIrtJfK9JI4J-GOuBkTBGgQ0OY_h1Y','2024-09-09 10:44:52.026077','2024-10-09 10:44:52.000000',5,'29cfd478d95245cb906f55d4e24a57bb'),(48,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODQ3MjU1MSwiaWF0IjoxNzI1ODgwNTUxLCJqdGkiOiJjNzMyNWFiYTdmNGM0YTA5YTBlOTk3YjRiOGE1OWFmZSIsInVzZXJfaWQiOjV9.KPt66jBoAsfFP7skezBDBUIbr3UbORY-5q5mALF9N9c','2024-09-09 11:15:51.530370','2024-10-09 11:15:51.000000',5,'c7325aba7f4c4a09a0e997b4b8a59afe'),(49,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODQ3MjYwMCwiaWF0IjoxNzI1ODgwNjAwLCJqdGkiOiIwMTU4OGYxZDljYTc0NjhiYmFlNTliMTY0ZDkzYWVhMSIsInVzZXJfaWQiOjV9.KgPMvy1R3TUPd4orqk_tXXbEW97eHynqDw81oLdNNYs','2024-09-09 11:16:40.319593','2024-10-09 11:16:40.000000',5,'01588f1d9ca7468bbae59b164d93aea1'),(50,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODQ3Mjg5MSwiaWF0IjoxNzI1ODgwODkxLCJqdGkiOiIwYzc5YzExZWQ3NTc0NGI3YTUzMzc2YmNjOWE4M2EzZiIsInVzZXJfaWQiOjV9.eW00flhdVOuOiAOQEzyAWQDzxcn0v0Gf0m04H7yrO3A','2024-09-09 11:21:31.254536','2024-10-09 11:21:31.000000',5,'0c79c11ed75744b7a53376bcc9a83a3f'),(51,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODQ4MjUzNiwiaWF0IjoxNzI1ODkwNTM2LCJqdGkiOiI4ZjE1NjIxMDg4YmM0M2UzOGY4ZjQ2ZDU3YWYzNmM0YSIsInVzZXJfaWQiOjV9.c13kXro0Rgj7IbLmgssXiX_kqVAJyQMa0R8T9J9Wfjk','2024-09-09 14:02:16.962835','2024-10-09 14:02:16.000000',5,'8f15621088bc43e38f8f46d57af36c4a'),(52,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODQ4NDAyOCwiaWF0IjoxNzI1ODkyMDI4LCJqdGkiOiI0OTExOTM2YjllOWI0ZDVmYjVlNjk2OWU0OWFhNjJkNCIsInVzZXJfaWQiOjV9.Uva_0L-2ZkW7HgL-DNhSYSS_9NtjL1KfvDs3WV3-EWk','2024-09-09 14:27:08.546519','2024-10-09 14:27:08.000000',5,'4911936b9e9b4d5fb5e6969e49aa62d4'),(53,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODQ4NDEzNiwiaWF0IjoxNzI1ODkyMTM2LCJqdGkiOiI5YzViMzgyODcxYmM0OGU5ODU1Mzg1ODczM2ZjMWNkOCIsInVzZXJfaWQiOjV9.5ajfWXwEkjkU1ToJ1-z4vWoeG1-w2cnO371skXZ5FjY','2024-09-09 14:28:56.679231','2024-10-09 14:28:56.000000',5,'9c5b382871bc48e98553858733fc1cd8'),(54,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODQ4NDQwOSwiaWF0IjoxNzI1ODkyNDA5LCJqdGkiOiIwNjQ2Y2Y1ZDQ1MDU0MzE5OGM3YWMzZGYxYjJhNTE0MSIsInVzZXJfaWQiOjV9.Iu2YRbCqCMdZfgRn43eHc_2LtG8mJ27SpPxAiuwyOBw','2024-09-09 14:33:29.206016','2024-10-09 14:33:29.000000',5,'0646cf5d450543198c7ac3df1b2a5141'),(55,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODQ4NDc5NiwiaWF0IjoxNzI1ODkyNzk2LCJqdGkiOiJmM2QyNDEwMGQ5Mzk0MTAwOGJmMmMzM2VjYmU0NzRkMyIsInVzZXJfaWQiOjF9.7jWjxElyimVvnPO5rQZfs7TFgt5iRrjuru18jD0VYio','2024-09-09 14:39:56.780967','2024-10-09 14:39:56.000000',1,'f3d24100d93941008bf2c33ecbe474d3'),(56,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODQ4NTM1NSwiaWF0IjoxNzI1ODkzMzU1LCJqdGkiOiI2M2RjZTM3MWFhNmU0NWRhODU1ZmMzOWVjMWM3ZWMwNSIsInVzZXJfaWQiOjF9.i3becY9DZ4t2kP2G5KJbSf-QO3QZR-ijYrcOHE40rKs','2024-09-09 14:49:15.943345','2024-10-09 14:49:15.000000',1,'63dce371aa6e45da855fc39ec1c7ec05'),(57,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODQ4NTM1OSwiaWF0IjoxNzI1ODkzMzU5LCJqdGkiOiIzNTg0NDU4MTZmNTg0N2RjODZmMGU1YzQ0OWI4NjRlMSIsInVzZXJfaWQiOjF9.zer9Mva2GJwavnw70sil6-3Yi2mnjta2KHCHVEtuP64','2024-09-09 14:49:19.607330','2024-10-09 14:49:19.000000',1,'358445816f5847dc86f0e5c449b864e1'),(58,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODQ4NTM4MSwiaWF0IjoxNzI1ODkzMzgxLCJqdGkiOiI2OThlZmFlMjk5MTE0YWI4YWQ5MDk3MmEzYWVmNjVhZiIsInVzZXJfaWQiOjF9.ZZvVzFkC8wyodKzc5XSs_F8Yfb3WgpL0U-e1zphoUyw','2024-09-09 14:49:41.470417','2024-10-09 14:49:41.000000',1,'698efae299114ab8ad90972a3aef65af'),(59,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODQ4NTg5MiwiaWF0IjoxNzI1ODkzODkyLCJqdGkiOiI0NGJjMjllNGRmMzY0YTJjYmM4MThmZTE4NzEwMjFiOSIsInVzZXJfaWQiOjF9.ixVrxk7VjkjVRvpnQU3vFw5hvuwsNWmhmejj4oE9ZL8','2024-09-09 14:58:12.603561','2024-10-09 14:58:12.000000',1,'44bc29e4df364a2cbc818fe1871021b9'),(60,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODQ4NzY3MywiaWF0IjoxNzI1ODk1NjczLCJqdGkiOiI3NjYzMDU2YTFhMGY0MzUxOThkMzFmZTFmZjJlYjUzYyIsInVzZXJfaWQiOjF9.9IWvY9FpzAFv71JR8Atj6VlfIm7acvSBYPHCtCCQbPA','2024-09-09 15:27:53.334275','2024-10-09 15:27:53.000000',1,'7663056a1a0f435198d31fe1ff2eb53c'),(61,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODQ4ODA1NywiaWF0IjoxNzI1ODk2MDU3LCJqdGkiOiJhNTVkMWYwZTVkZWU0MWQwOWUxN2Y3ZDAwYmIxNDM5ZCIsInVzZXJfaWQiOjF9.-TnEWW4IFk_Z5-SHY9p_vOUk434RC2eSORQeXew0WKc','2024-09-09 15:34:17.301328','2024-10-09 15:34:17.000000',1,'a55d1f0e5dee41d09e17f7d00bb1439d'),(62,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODQ4ODE5NSwiaWF0IjoxNzI1ODk2MTk1LCJqdGkiOiJiZjQxNjY0ZDVlYjc0MDZjYmQwNGY0MGQzOGVhYTM1NSIsInVzZXJfaWQiOjF9.bUxte6exrMmZIXcW0MXVrPGwIo7huzVNRdyBVOte5_M','2024-09-09 15:36:35.715448','2024-10-09 15:36:35.000000',1,'bf41664d5eb7406cbd04f40d38eaa355'),(63,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODQ4ODIyOSwiaWF0IjoxNzI1ODk2MjI5LCJqdGkiOiJhODA4OWJmNDViN2Y0MWJiOWU2NjJjZjg3ZWUwN2MzYiIsInVzZXJfaWQiOjF9.ynzATI9hdx0866kWbUOpjhPhVs8eG6xsoYpRHBdMxqw','2024-09-09 15:37:09.132240','2024-10-09 15:37:09.000000',1,'a8089bf45b7f41bb9e662cf87ee07c3b'),(64,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODQ4ODk0NywiaWF0IjoxNzI1ODk2OTQ3LCJqdGkiOiJlYzgxNGVhMWQ1NTA0YWVjOTk5MzUxNzA3ZDY3ZDc1ZSIsInVzZXJfaWQiOjF9.6lS0e3onaY0JTUrFcUgYpXBtHVbR4YE8jYJci70Z5eI','2024-09-09 15:49:07.571032','2024-10-09 15:49:07.000000',1,'ec814ea1d5504aec999351707d67d75e'),(65,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODQ4OTAyMywiaWF0IjoxNzI1ODk3MDIzLCJqdGkiOiI5YTM4MjIwODliZWY0NmYyODhlMGZhYzg4NTBkYmIzMSIsInVzZXJfaWQiOjF9.Od-ISqEpnFAs6ldxrzSmTOHgMjG76s_7XuLiP8Y0BLw','2024-09-09 15:50:23.894647','2024-10-09 15:50:23.000000',1,'9a3822089bef46f288e0fac8850dbb31'),(66,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODQ4OTE5MywiaWF0IjoxNzI1ODk3MTkzLCJqdGkiOiI1NjQ3OTRmOGI5NWU0YmRlYjg2ZmYzMmQ0ZDI0NmE4OSIsInVzZXJfaWQiOjF9.vkkq_k_JJIIEympcfcSRdf-wMBpxZH7yE-JdWxqadI4','2024-09-09 15:53:13.910862','2024-10-09 15:53:13.000000',1,'564794f8b95e4bdeb86ff32d4d246a89'),(67,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODQ4OTI3MCwiaWF0IjoxNzI1ODk3MjcwLCJqdGkiOiI0NzE3NTdjNDY2ODU0NWU1YmMwOWE5MDVlZmVhNTU0MCIsInVzZXJfaWQiOjF9.41cMrdrSZ-Z0NYNLSI3mBdLWxJeL_XKIevEDcmbfKvk','2024-09-09 15:54:30.438374','2024-10-09 15:54:30.000000',1,'471757c4668545e5bc09a905efea5540'),(68,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODQ4OTU3NSwiaWF0IjoxNzI1ODk3NTc1LCJqdGkiOiJkOWU0ZjlmNDExY2U0ZTUxYWIxN2NiZTNkZWQ4ZGRmZSIsInVzZXJfaWQiOjF9.1ikcr-2vQShGphelE8uxJ8nZawQ9gfkOdgXYlkj8QTI','2024-09-09 15:59:35.713989','2024-10-09 15:59:35.000000',1,'d9e4f9f411ce4e51ab17cbe3ded8ddfe'),(69,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODUwMzcxOCwiaWF0IjoxNzI1OTExNzE4LCJqdGkiOiI1Y2FiMzI0Yjc5ZTA0MzdhODAwMzY4MDg1OTE4NDVjMiIsInVzZXJfaWQiOjF9.QVbdkA6Qlpxs0ggWXRd29ucFxi8xIdHE32FiAJg8G9I','2024-09-09 19:55:18.237064','2024-10-09 19:55:18.000000',1,'5cab324b79e0437a80036808591845c2'),(70,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODUwNDI4OCwiaWF0IjoxNzI1OTEyMjg4LCJqdGkiOiJjNDExYjc1Y2U1NzI0YTQ2YjNjNWIwOGM5MWNmN2MwMCIsInVzZXJfaWQiOjF9.2e4q_LzEhP9VbSIjbs3kbRGycfeuHZY5cxkAgv99BEg','2024-09-09 20:04:48.072106','2024-10-09 20:04:48.000000',1,'c411b75ce5724a46b3c5b08c91cf7c00'),(71,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODUwNDQyMCwiaWF0IjoxNzI1OTEyNDIwLCJqdGkiOiI4MDlhYTVjMmNiNjU0ZmI3OTYwNzAxOWM0N2VkNjEwOSIsInVzZXJfaWQiOjV9._CsZI3p9AX1nFf0gRLZzeTi87A0AdREEqOREPpD5M6s','2024-09-09 20:07:00.163865','2024-10-09 20:07:00.000000',5,'809aa5c2cb654fb79607019c47ed6109'),(72,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODUwNTA1NSwiaWF0IjoxNzI1OTEzMDU1LCJqdGkiOiI3NTU1NzAwNTY4MmU0OWQ1ODg1YWRjZTg2OWJkYzczZSIsInVzZXJfaWQiOjF9.Hsx3w0dzIZIXh8lDzZuKP1MacGXjq95R9Q2oRYjWfIw','2024-09-09 20:17:35.056547','2024-10-09 20:17:35.000000',1,'75557005682e49d5885adce869bdc73e'),(73,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODUwNTE1MCwiaWF0IjoxNzI1OTEzMTUwLCJqdGkiOiI0NzQwOTY4NWQ0MzE0MDEzOThjMTU2MjExZjY2NmY5MSIsInVzZXJfaWQiOjV9.B-NCDkw58Iai8OGzqhkUW14eKKVT4fn_M95T_wiA5Ak','2024-09-09 20:19:10.979806','2024-10-09 20:19:10.000000',5,'47409685d431401398c156211f666f91'),(74,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODUwNTI3NCwiaWF0IjoxNzI1OTEzMjc0LCJqdGkiOiI5NGEyNjY0NjVjMjU0ZWRlYTY4YTVlNDYxMmYwZDkwNCIsInVzZXJfaWQiOjF9.Tzi6WBTzJXCi95HmRY0ElIx-g8aUyTLF6R5DNjdqCPY','2024-09-09 20:21:14.301843','2024-10-09 20:21:14.000000',1,'94a266465c254edea68a5e4612f0d904'),(75,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODUwNTczMSwiaWF0IjoxNzI1OTEzNzMxLCJqdGkiOiJhMTZmMzZhOWZjMWI0MTViOWNlMWZkZjIyODgxNjQyMSIsInVzZXJfaWQiOjV9.HsZPPIKKIDLRFJXZOa-d6j9BpaSGKANvn7kaBIYRafA','2024-09-09 20:28:51.994378','2024-10-09 20:28:51.000000',5,'a16f36a9fc1b415b9ce1fdf228816421'),(76,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODUwNjA5NCwiaWF0IjoxNzI1OTE0MDk0LCJqdGkiOiIwMzNhZTQ1MWE2MzA0ZjY5YmY0ZTM3NDc5Mjk1NzVjYyIsInVzZXJfaWQiOjF9.sXhD_-VQZ5qA_D-D9Boxq4PW5NbOIFs_sFrnp3beQZs','2024-09-09 20:34:54.223478','2024-10-09 20:34:54.000000',1,'033ae451a6304f69bf4e3747929575cc'),(77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODUwNjYzOCwiaWF0IjoxNzI1OTE0NjM4LCJqdGkiOiJmMTk1NTBkYjc1MGU0MmU0ODIxN2VmYzY1M2UzNWZiOSIsInVzZXJfaWQiOjV9.bYWIm6Gc90qFfdJySyOu8FnQj92OQc0-GFh8Sl3YdiE','2024-09-09 20:43:58.117165','2024-10-09 20:43:58.000000',5,'f19550db750e42e48217efc653e35fb9'),(78,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODUwNjgzMSwiaWF0IjoxNzI1OTE0ODMxLCJqdGkiOiIwMmFmNmI5OGEzOTA0YjliYmZmNzUxMzFlMTQ2MjEzYiIsInVzZXJfaWQiOjV9.n2nKqfpUTFuj82roI3H3Mbj6woi2TgZfvlgzMM0euMs','2024-09-09 20:47:11.007005','2024-10-09 20:47:11.000000',5,'02af6b98a3904b9bbff75131e146213b'),(79,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODUwNjkyOCwiaWF0IjoxNzI1OTE0OTI4LCJqdGkiOiI0Njk5OTdhZDVhYmE0ODBiYmRlZGM3M2U1ZTE0MjVmZCIsInVzZXJfaWQiOjF9.BOVpPPvFV-fJ8G08yocepQv7fx_-7oP1HMrrcIEen6o','2024-09-09 20:48:48.690706','2024-10-09 20:48:48.000000',1,'469997ad5aba480bbdedc73e5e1425fd'),(80,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODUwNzgxOCwiaWF0IjoxNzI1OTE1ODE4LCJqdGkiOiI0NDI1NTc2OTcwNWY0OThkOGM5NzA5OTVlY2FlM2U3NCIsInVzZXJfaWQiOjF9.w5wC-W9okQqj7rNpTHjuPXrI1eRy34XO6BTYgcPhQ0Q','2024-09-09 21:03:38.785412','2024-10-09 21:03:38.000000',1,'44255769705f498d8c970995ecae3e74'),(81,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODUwODIwMCwiaWF0IjoxNzI1OTE2MjAwLCJqdGkiOiI2MDQwOGYyZmEyOWI0NzNmODI1ZDM4NTI5MGIyMzY5NSIsInVzZXJfaWQiOjZ9.UQXCcltGM0buobJf8U5Mu2Admq94G7Tk4XKhFufan5o','2024-09-09 21:10:00.279142','2024-10-09 21:10:00.000000',6,'60408f2fa29b473f825d385290b23695'),(82,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODUwODI2MywiaWF0IjoxNzI1OTE2MjYzLCJqdGkiOiJhNzZjYzg4ZmFjOTQ0YzQyOGEyNjEyZTE2Mzk0ZDgxOCIsInVzZXJfaWQiOjZ9.c2u3RqZFrkJWaPMzo7UtDNYnP2reirOd8_gfLmPA_z4','2024-09-09 21:11:03.848363','2024-10-09 21:11:03.000000',6,'a76cc88fac944c428a2612e16394d818'),(83,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODUwODc3MywiaWF0IjoxNzI1OTE2NzczLCJqdGkiOiJhYzlkZGM0NTU5MTg0MjA5OWUyYzAzZDVhYTIxMDdiMSIsInVzZXJfaWQiOjd9.iJjsllxBxBUaz1ySOSOe2a5zoPy7GtIVpdFzHC9aWAU','2024-09-09 21:19:33.186117','2024-10-09 21:19:33.000000',7,'ac9ddc45591842099e2c03d5aa2107b1'),(84,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODUwOTQzMCwiaWF0IjoxNzI1OTE3NDMwLCJqdGkiOiJhZjEzZjQyNjFlZDg0N2Q4OWM3ZDE4MzJlNWY1YTQ3MSIsInVzZXJfaWQiOjh9.JRafMwyC-U_Tb74LkhofX2ZE3X3hnDJITqu6XeTIBdw','2024-09-09 21:30:30.830005','2024-10-09 21:30:30.000000',8,'af13f4261ed847d89c7d1832e5f5a471'),(85,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODUwOTUzNCwiaWF0IjoxNzI1OTE3NTM0LCJqdGkiOiI5ZGI0ODc1ZmVkMjg0NzEzOGJhYzA1YTczMzQ1NTMzNCIsInVzZXJfaWQiOjh9.GNz_Pwx2ZbeYOCrSRzD5jRpV1gHXYlcW9DW5QzThyZU','2024-09-09 21:32:14.937563','2024-10-09 21:32:14.000000',8,'9db4875fed2847138bac05a733455334'),(86,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODU0MzYxMywiaWF0IjoxNzI1OTUxNjEzLCJqdGkiOiI1Mjc1YWJkYmY2OTI0M2VlYWZhOWVmM2NlOTQwY2ViNiIsInVzZXJfaWQiOjh9.yUj8-tEclja4PQxd2ixnVkB4a5iYLvwEcvQ-hWUXfHI','2024-09-10 07:00:13.168440','2024-10-10 07:00:13.000000',8,'5275abdbf69243eeafa9ef3ce940ceb6'),(87,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODY1MDU0MCwiaWF0IjoxNzI2MDU4NTQwLCJqdGkiOiIyNjIwZjc3MTk0MmM0MGM3YTU3MjE2OGZhZGU4OWMzNCIsInVzZXJfaWQiOjh9.w_G6Tje9rnBD59uWXDSXGgFXdftXQC3yOYJNalDop7o','2024-09-11 12:42:20.924963','2024-10-11 12:42:20.000000',8,'2620f771942c40c7a572168fade89c34'),(88,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODY1MDY0MCwiaWF0IjoxNzI2MDU4NjQwLCJqdGkiOiIwMzU2ODhjYWFkMmU0MTQyODZiOWFiMjIwOGI5YTU1ZSIsInVzZXJfaWQiOjF9.ADi5tmhnygj_HX9rqtnDJn5mrwdNT9ezHT_9wy2cAIQ','2024-09-11 12:44:00.519911','2024-10-11 12:44:00.000000',1,'035688caad2e414286b9ab2208b9a55e'),(89,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODY1MjczMiwiaWF0IjoxNzI2MDYwNzMyLCJqdGkiOiI2OWFhZDJlYzQ2NTc0OTVmYTE1M2Y0OWY4NTNhOWEzMCIsInVzZXJfaWQiOjF9.wzxzg4zBew4a4DYLnTr9usBzNeCDAe6pk-g5OsagmJo','2024-09-11 13:18:52.859268','2024-10-11 13:18:52.000000',1,'69aad2ec4657495fa153f49f853a9a30'),(90,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODgwOTM4OCwiaWF0IjoxNzI2MjE3Mzg4LCJqdGkiOiIxZTI5ZjI0ZWY0MDk0YzU5YTEwMDE2MThhY2M2ZWZjOSIsInVzZXJfaWQiOjF9.ZLQtNZhn6kvePeNH33JwGwFaCLEPiebLR3ESpxTiYD4','2024-09-13 08:49:48.438029','2024-10-13 08:49:48.000000',1,'1e29f24ef4094c59a1001618acc6efc9'),(91,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODgwOTY4OSwiaWF0IjoxNzI2MjE3Njg5LCJqdGkiOiJlMzMzMjJhNWJiNTQ0NjkzODk1Y2FmYmNhMzM5YzRiOCIsInVzZXJfaWQiOjl9.rBc-TVjMVO53d11Emc4AtcacuwPFQ9v4LFvK8f7vsIw','2024-09-13 08:54:49.767984','2024-10-13 08:54:49.000000',9,'e33322a5bb544693895cafbca339c4b8'),(92,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODgxMDI5OCwiaWF0IjoxNzI2MjE4Mjk4LCJqdGkiOiIzNWU1MWYwNzJkMTE0MDFiOTQ3MGQ1NDIyZjgwOGE2YyIsInVzZXJfaWQiOjl9.v38dxuENcGIGKpKjTbx2nomGkJNPxy9oB1rEEC8lh9o','2024-09-13 09:04:58.958007','2024-10-13 09:04:58.000000',9,'35e51f072d11401b9470d5422f808a6c'),(93,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODgxMDQ0MywiaWF0IjoxNzI2MjE4NDQzLCJqdGkiOiJmYjU5ZTliNjM3MTY0ZmM4ODMxMmM5YmY5ZWQ5NWIwMCIsInVzZXJfaWQiOjl9.kjO6C1RsWvI1DHzCiWem2aFCVHdkR77-7zvwy5skAj8','2024-09-13 09:07:23.217969','2024-10-13 09:07:23.000000',9,'fb59e9b637164fc88312c9bf9ed95b00'),(94,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODgxMjU4MywiaWF0IjoxNzI2MjIwNTgzLCJqdGkiOiJjZmIwYzA0MjlkMjc0N2E1YTc4Y2Y3YjE3NTRiY2JiMiIsInVzZXJfaWQiOjEwfQ.vGiVaM8oG0hTbRb-cnWGQtIeBv4bTZ4kQ0qRo1aaDpY','2024-09-13 09:43:03.894152','2024-10-13 09:43:03.000000',10,'cfb0c0429d2747a5a78cf7b1754bcbb2'),(95,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODgxNDg0MywiaWF0IjoxNzI2MjIyODQzLCJqdGkiOiI3Nzg5MDFiMzA1ZDA0OTY0OTZjNjg0YTk3MWY5MTY0MSIsInVzZXJfaWQiOjEwfQ.tdHdVyaroMcxHVp_blD10jdbSWPUBQ_uSEpSWCippH4','2024-09-13 10:20:43.793530','2024-10-13 10:20:43.000000',10,'778901b305d0496496c684a971f91641'),(96,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODgxNTQ0OCwiaWF0IjoxNzI2MjIzNDQ4LCJqdGkiOiI3YjgxN2JmMDY5MGQ0ZjFlOWM3ZDRiMTAxOTA2MDk0NSIsInVzZXJfaWQiOjEwfQ._EbISFObEgrUDOpKPa2XcQ41pu6cNrW7A7Ry6t68L_A','2024-09-13 10:30:48.208676','2024-10-13 10:30:48.000000',10,'7b817bf0690d4f1e9c7d4b1019060945'),(97,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODgyMzQ4NSwiaWF0IjoxNzI2MjMxNDg1LCJqdGkiOiJjZDg1MGVjMDk2ZWI0NDMyYmViNDlhYjNiNjYxNmI2ZCIsInVzZXJfaWQiOjEwfQ.KBufJmRmTf3M97n_Nyeom1EI5cO2au4iijddo12X120','2024-09-13 12:44:45.885667','2024-10-13 12:44:45.000000',10,'cd850ec096eb4432beb49ab3b6616b6d'),(98,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODgyNDQzOSwiaWF0IjoxNzI2MjMyNDM5LCJqdGkiOiI4OWMzNDYyMTU5YjI0YzIxYmUwZDgxMTgwOTk0NDgyZiIsInVzZXJfaWQiOjEwfQ.7u2FcICujTP_pkZS6M0kUBjzKCbMc2Tv0cSsenhkGCw','2024-09-13 13:00:39.888429','2024-10-13 13:00:39.000000',10,'89c3462159b24c21be0d81180994482f'),(99,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODgyNDY0NiwiaWF0IjoxNzI2MjMyNjQ2LCJqdGkiOiJlOWIwNDk0ZmQ4ZDI0MDhiODVkODQ2M2IzZGIyOGMzNSIsInVzZXJfaWQiOjEwfQ.JeBq8XsqKpdC25Dq0DO64VDOaP-88KjP3ctQfJ-qW-8','2024-09-13 13:04:06.970031','2024-10-13 13:04:06.000000',10,'e9b0494fd8d2408b85d8463b3db28c35'),(100,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODg1MTA3NiwiaWF0IjoxNzI2MjU5MDc2LCJqdGkiOiJkZTgwNmZkNWM3YzA0MGEwYmQ3NjNiZjI3MmE1NjMwMiIsInVzZXJfaWQiOjEwfQ.rEAigeMaRSZXE05xvFotM6o3shRWmw-SP98dygebADA','2024-09-13 20:24:36.612209','2024-10-13 20:24:36.000000',10,'de806fd5c7c040a0bd763bf272a56302'),(101,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODg1MTM3NywiaWF0IjoxNzI2MjU5Mzc3LCJqdGkiOiJkNzEyZDdmZDhjODM0M2QyOGZkNDk4OTVjMzY5MTQ2ZSIsInVzZXJfaWQiOjEwfQ.aMv7IcwHKUaMCFagPD6rD4HDt-Da9y1w95GO4lfb61I','2024-09-13 20:29:37.248964','2024-10-13 20:29:37.000000',10,'d712d7fd8c8343d28fd49895c369146e'),(102,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODg1MTYwNSwiaWF0IjoxNzI2MjU5NjA1LCJqdGkiOiI0NWU0ZDllOWFmMzA0NGY5OTdjNzdmY2RlZjI0ZmE1YyIsInVzZXJfaWQiOjEwfQ.rZqUdN4J-D31HSJJCvwaKhHYskq-NgNUoS1-sZh7iM8','2024-09-13 20:33:25.921668','2024-10-13 20:33:25.000000',10,'45e4d9e9af3044f997c77fcdef24fa5c'),(103,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODg1MjY2MCwiaWF0IjoxNzI2MjYwNjYwLCJqdGkiOiIxNTliMTk5MDc4NDg0ZWQ5OGJhOWIwMTU3YTExNGQwYyIsInVzZXJfaWQiOjEwfQ.j__mf3pGdCYC1UvnQSZ62Kn4omDNlHhdOkJKYu-9-Go','2024-09-13 20:51:00.949973','2024-10-13 20:51:00.000000',10,'159b199078484ed98ba9b0157a114d0c'),(104,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODg1Mjg0MCwiaWF0IjoxNzI2MjYwODQwLCJqdGkiOiIzNmJjMTM1Yjk5OTE0OWM1OTkwMmRhM2U0ZGFjYzU4ZSIsInVzZXJfaWQiOjEwfQ.3gl5bhnbHJzX3ZVXe-6PogTQV5JGFWZ43Hj9iGyWkXM','2024-09-13 20:54:00.461495','2024-10-13 20:54:00.000000',10,'36bc135b999149c59902da3e4dacc58e'),(105,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODg1MzExMiwiaWF0IjoxNzI2MjYxMTEyLCJqdGkiOiJhOWZjMzBmZDVlNDE0ZTJiOGVmMmY1MDRjY2QxYWExYyIsInVzZXJfaWQiOjEwfQ.G7k1TCSagZw4d2a_zIxomsUAkHzoVuw8ljEhy1BKaPs','2024-09-13 20:58:32.630566','2024-10-13 20:58:32.000000',10,'a9fc30fd5e414e2b8ef2f504ccd1aa1c'),(106,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODg1MzQyMiwiaWF0IjoxNzI2MjYxNDIyLCJqdGkiOiJhMWNlZDE0ZDFjZjI0YTAzOTBjZTQ5NDExOTc2MTAyNCIsInVzZXJfaWQiOjEwfQ.vJetUPHAZdv9ERUS60TqhnBp4dyrv2caAOWN27rqGNk','2024-09-13 21:03:42.857848','2024-10-13 21:03:42.000000',10,'a1ced14d1cf24a0390ce494119761024'),(107,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODg1NDQ2NywiaWF0IjoxNzI2MjYyNDY3LCJqdGkiOiI5NTgyOTYwOTU1ZTU0ZmRmOGMzMzk5ZmVjMmJjMjUyNiIsInVzZXJfaWQiOjEwfQ.YNj7TzsH8OF6yJiQxdbdSSJUok6A7VYm5DzX6RF4N8g','2024-09-13 21:21:07.761601','2024-10-13 21:21:07.000000',10,'9582960955e54fdf8c3399fec2bc2526'),(108,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODg1NDg2NSwiaWF0IjoxNzI2MjYyODY1LCJqdGkiOiJjY2U3NzZmZmU5MjA0MjJhOWE4Mzg3ZDg4MDFiNzc2OSIsInVzZXJfaWQiOjEwfQ.DalJkP0ONSOGfqjqyhbJAFKFPHRPX4GejB2AwUsRvSY','2024-09-13 21:27:45.678731','2024-10-13 21:27:45.000000',10,'cce776ffe920422a9a8387d8801b7769'),(109,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODg1NTMwOCwiaWF0IjoxNzI2MjYzMzA4LCJqdGkiOiJlNGE4ZTM0OGI4ZDQ0MDM3ODU2ODFkOWVjODY4ZDVhOCIsInVzZXJfaWQiOjEwfQ.rVbv_Z6GZrrycUiP-1yHW1bh8UVbK3kLiKJlThYEYgk','2024-09-13 21:35:08.146870','2024-10-13 21:35:08.000000',10,'e4a8e348b8d4403785681d9ec868d5a8'),(110,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODg1NTgxOSwiaWF0IjoxNzI2MjYzODE5LCJqdGkiOiI2NTEyMzdjZTg0NjQ0YWE1YWZlNGE5ZDg3MGY5OGZlNSIsInVzZXJfaWQiOjEwfQ.5MTN0HQ8uomSILajXk-wt_TBkHEtpx2kO6ohwXSHrI8','2024-09-13 21:43:39.387719','2024-10-13 21:43:39.000000',10,'651237ce84644aa5afe4a9d870f98fe5'),(111,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODg1NjE1NywiaWF0IjoxNzI2MjY0MTU3LCJqdGkiOiIyOWM3NTJmMjIyNjM0MmI5OGZlYjNiMDZjZjZiMTZkOSIsInVzZXJfaWQiOjEwfQ.kd0rXC6edEfln4J2sGEphnbirPZ1B6G0jIgXaayh1BU','2024-09-13 21:49:17.164728','2024-10-13 21:49:17.000000',10,'29c752f2226342b98feb3b06cf6b16d9'),(112,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODg1NjIyMiwiaWF0IjoxNzI2MjY0MjIyLCJqdGkiOiIyY2VmZjJiYmM2ODg0NTE2YmFjMGYyZjkxNzcxMzQyMSIsInVzZXJfaWQiOjEwfQ.krOuj8YdFW_On9g1frnVyj-EO0B8Dxn_tj2j9L5Rndg','2024-09-13 21:50:22.660519','2024-10-13 21:50:22.000000',10,'2ceff2bbc6884516bac0f2f917713421'),(113,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODkyMjc1MiwiaWF0IjoxNzI2MzMwNzUyLCJqdGkiOiJjYWRmMmM1ODJjYzM0OWM3YjFhZWNlN2ZjMjViNmRkNiIsInVzZXJfaWQiOjEwfQ.DzUSmmyOicWNKUULavM8vgHkta4k6nvgDNVvupJ1Uz0','2024-09-14 16:19:12.861885','2024-10-14 16:19:12.000000',10,'cadf2c582cc349c7b1aece7fc25b6dd6'),(114,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODkyMjg4MSwiaWF0IjoxNzI2MzMwODgxLCJqdGkiOiI1YWEwODIzYmJhYmY0MTM4ODI4NDBlYTA3ZGFkMDgxNSIsInVzZXJfaWQiOjEwfQ.nT1eYtgUHUrw5AXX2y_QKjY_TwzyM20mF6SBAtHg_rI','2024-09-14 16:21:21.259913','2024-10-14 16:21:21.000000',10,'5aa0823bbabf413882840ea07dad0815'),(115,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODkyMzA1MCwiaWF0IjoxNzI2MzMxMDUwLCJqdGkiOiIwMDU5YWU2ZGE4YTQ0YWYzOWI2ZmRmZTdkZDkxYzQwNyIsInVzZXJfaWQiOjEwfQ.-AzGlp-g4qgEYk_VqFQEuwYvs8or_QPE46YCeR8bWKI','2024-09-14 16:24:10.025688','2024-10-14 16:24:10.000000',10,'0059ae6da8a44af39b6fdfe7dd91c407'),(116,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODkyMzE2NCwiaWF0IjoxNzI2MzMxMTY0LCJqdGkiOiI5ZDdkMzFlYWU5Y2M0NmVmYmU1NjQ5OGNiYWQ5ZWRjZSIsInVzZXJfaWQiOjEwfQ.bLNbmUu6trxnA3csSCPEs5WL2UVZQJpQ0DFhVFzZ-7I','2024-09-14 16:26:04.978134','2024-10-14 16:26:04.000000',10,'9d7d31eae9cc46efbe56498cbad9edce'),(117,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODkyMzMyNywiaWF0IjoxNzI2MzMxMzI3LCJqdGkiOiI4ZGVhYTQzYWIxNWM0N2RjODgwODI4ZTEwNDA5ZjkxNyIsInVzZXJfaWQiOjEwfQ.lVF6P9eg3wQUUBcGpEp6md1vH5s-HWslTOgJpxsnX7s','2024-09-14 16:28:47.351346','2024-10-14 16:28:47.000000',10,'8deaa43ab15c47dc880828e10409f917'),(118,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODkyMzQ0MSwiaWF0IjoxNzI2MzMxNDQxLCJqdGkiOiIzNzNkOWU3YzdhZmU0YTJiYjQ1YTdlMWEzYjA5ZjZhZCIsInVzZXJfaWQiOjEwfQ.KEy2zTfaryXIJjN-w73jNs7GOOEph0Z9RZXmiafPNmc','2024-09-14 16:30:41.993159','2024-10-14 16:30:41.000000',10,'373d9e7c7afe4a2bb45a7e1a3b09f6ad'),(119,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODkyMzYzNywiaWF0IjoxNzI2MzMxNjM3LCJqdGkiOiIyNjdiNzI3YTFiNjg0OWE0YTY2ZDVkZGYyNWI4MjdkZCIsInVzZXJfaWQiOjEwfQ.pmrs5fXRmAxP6iBrRxfdVBpz3aPuxJ7fP8MrmDLrSDs','2024-09-14 16:33:57.386352','2024-10-14 16:33:57.000000',10,'267b727a1b6849a4a66d5ddf25b827dd'),(120,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODkyNDI1MCwiaWF0IjoxNzI2MzMyMjUwLCJqdGkiOiIyNDBhYWY4YzVhOGQ0OTUyOWRjYjEzMDUyOWI1ZTJjOSIsInVzZXJfaWQiOjEwfQ.VTjhq09R0n3gx8G8qpEKqbpJQP1p3_rqFX7G1Gww6V4','2024-09-14 16:44:10.358537','2024-10-14 16:44:10.000000',10,'240aaf8c5a8d49529dcb130529b5e2c9'),(121,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODkyNTA0OSwiaWF0IjoxNzI2MzMzMDQ5LCJqdGkiOiJiMzkwNzVlZjllYTk0ZTdlYmJjNTk5ZTM3NWZiNGM5ZSIsInVzZXJfaWQiOjEwfQ.xEq5UuY_h_OXJ1WTphEb4QxAwIOqhGxPWiHjQajJZT4','2024-09-14 16:57:29.268975','2024-10-14 16:57:29.000000',10,'b39075ef9ea94e7ebbc599e375fb4c9e'),(122,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODkzMDkxNCwiaWF0IjoxNzI2MzM4OTE0LCJqdGkiOiJjMTg4OGU0NDZmZmQ0YjhlYTcyMWJkOWY0NDkyZTBkMSIsInVzZXJfaWQiOjEwfQ.SgG3DDF1F-QUn1rGIbxuhH-pfLLd6diCbggHVAztQZA','2024-09-14 18:35:14.301595','2024-10-14 18:35:14.000000',10,'c1888e446ffd4b8ea721bd9f4492e0d1'),(123,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODkzMDk1MywiaWF0IjoxNzI2MzM4OTUzLCJqdGkiOiI0YTJiNjgzNzFiYjc0ZjI4OWZkNTBjMzgwODFhZmM2MyIsInVzZXJfaWQiOjEwfQ.kW1Vrhq89puaJXAY_rfxeMv23a6U-oPidhQ5ePgHnMM','2024-09-14 18:35:53.174299','2024-10-14 18:35:53.000000',10,'4a2b68371bb74f289fd50c38081afc63'),(124,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODkzOTI4NiwiaWF0IjoxNzI2MzQ3Mjg2LCJqdGkiOiI3ZWM5ZDZjODM5N2I0ZTNkYjYzNzRiMTdlNWQ2YjZjYSIsInVzZXJfaWQiOjEwfQ.fkDgXIxDzH4Tyld0SOtgSFWxJnXtqjRRyU9oyYAzkyY','2024-09-14 20:54:46.394164','2024-10-14 20:54:46.000000',10,'7ec9d6c8397b4e3db6374b17e5d6b6ca'),(125,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODkzOTMzOCwiaWF0IjoxNzI2MzQ3MzM4LCJqdGkiOiJmNmZiYjMzZjZjYzU0YjQ4OTRhNDExMTQ1MWE0YTAxMSIsInVzZXJfaWQiOjEwfQ.jHLxbyCDrIbG8IZ7BXQLgEEJeuySUK38oaVEhNYwD_0','2024-09-14 20:55:38.456322','2024-10-14 20:55:38.000000',10,'f6fbb33f6cc54b4894a4111451a4a011'),(126,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODk0MDk2MCwiaWF0IjoxNzI2MzQ4OTYwLCJqdGkiOiI1ZDM3ZDgxZmNkZjY0MzQ3OGVhMmRkNmZhNzJkOGMwNyIsInVzZXJfaWQiOjEwfQ.KEBkTXVAiLF0cVeR_VX0PQ5Yo9AlOsWB-83Oi7d7uSE','2024-09-14 21:22:40.127624','2024-10-14 21:22:40.000000',10,'5d37d81fcdf643478ea2dd6fa72d8c07'),(127,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODk0MTA1MSwiaWF0IjoxNzI2MzQ5MDUxLCJqdGkiOiIyMzM2NzdiOGI3Y2M0NDExYjkwNTgxYmRiNWU0NWNhZiIsInVzZXJfaWQiOjEwfQ.2_sDnZJXJinLNev6IL5P5SzRjl5XWXTq5FGOIVAHOpM','2024-09-14 21:24:11.411292','2024-10-14 21:24:11.000000',10,'233677b8b7cc4411b90581bdb5e45caf'),(128,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODk0MTI0NSwiaWF0IjoxNzI2MzQ5MjQ1LCJqdGkiOiI2YzBkYjlmZWMyNWE0NjIwYTllMzhmODgxYmViNmQ4OCIsInVzZXJfaWQiOjEwfQ.59nN53SRnLgLaa3M3HCuBIoQyRXmE4vzcKttHGcGHio','2024-09-14 21:27:25.530550','2024-10-14 21:27:25.000000',10,'6c0db9fec25a4620a9e38f881beb6d88'),(129,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODk0MTk0NCwiaWF0IjoxNzI2MzQ5OTQ0LCJqdGkiOiI2YjY3NzZmYmNlZTY0YjhkODg4ZDY4ZmZkMWMwYzk0ZiIsInVzZXJfaWQiOjEwfQ.jqAt-oUxJG07IHdqAU2lj-hEZchkGpj6nvBo265c5Ws','2024-09-14 21:39:04.466391','2024-10-14 21:39:04.000000',10,'6b6776fbcee64b8d888d68ffd1c0c94f'),(130,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODk0MzEyMiwiaWF0IjoxNzI2MzUxMTIyLCJqdGkiOiJkMGE0YjBhYzlhYWI0OTkyOWU5YzhlNzcwNTVmYWUxNSIsInVzZXJfaWQiOjEwfQ.AcZDiuXQtBjrWLrb27_sP-lTZJ92MhZi2znglluUvA0','2024-09-14 21:58:42.891205','2024-10-14 21:58:42.000000',10,'d0a4b0ac9aab49929e9c8e77055fae15'),(131,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODk0MzgxNiwiaWF0IjoxNzI2MzUxODE2LCJqdGkiOiIwYTE3OWY4ZGMyNTQ0NTFmODk0ODQ0Y2NmMzkwZmMyMCIsInVzZXJfaWQiOjEwfQ.-5IukVgIeA6KojR4M7e6Dz-L8KkMeRexLHubdbuhspQ','2024-09-14 22:10:16.562215','2024-10-14 22:10:16.000000',10,'0a179f8dc254451f894844ccf390fc20'),(132,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODk0NDI5MywiaWF0IjoxNzI2MzUyMjkzLCJqdGkiOiJhNWJiYzJjY2VlZGU0MjM5OGMwMmNmMWI2YTIyZTNhYyIsInVzZXJfaWQiOjEwfQ.3DyHUunCJaE_P1whwiOO0bC_sFRj7yh8NInKp8HC4NE','2024-09-14 22:18:13.393352','2024-10-14 22:18:13.000000',10,'a5bbc2cceede42398c02cf1b6a22e3ac'),(133,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyODk0NDQ4MCwiaWF0IjoxNzI2MzUyNDgwLCJqdGkiOiI0NzNhYzhlYTkzNDc0YmU5YjNiMGNjOWI3MjA3N2Q2ZCIsInVzZXJfaWQiOjEwfQ.T-WsStYCmFbkdukWVoe0DQ42OJVcYj9bHY2yJExBLE4','2024-09-14 22:21:20.085593','2024-10-14 22:21:20.000000',10,'473ac8ea93474be9b3b0cc9b72077d6d'),(134,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyOTAyNzAwNiwiaWF0IjoxNzI2NDM1MDA2LCJqdGkiOiJlMTBiZDdmNGNhMjE0MmIzYTVkZjEwYjAwYWJiZDQwMyIsInVzZXJfaWQiOjEwfQ.botrlCfdHuWoC090UL-yAV822n-1BofnRLalPCV5Nkw','2024-09-15 21:16:46.475242','2024-10-15 21:16:46.000000',10,'e10bd7f4ca2142b3a5df10b00abbd403'),(135,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyOTAyNzA1NiwiaWF0IjoxNzI2NDM1MDU2LCJqdGkiOiI5NGUzYTFhYzc1MjI0NzkwOTlmOTkyZTg0MjI3YTZhOCIsInVzZXJfaWQiOjEwfQ.Yj7H1o0BJCzEke2wkJBcu4IjsgUdXb2Oa7Z6LJbGPmc','2024-09-15 21:17:36.065566','2024-10-15 21:17:36.000000',10,'94e3a1ac7522479099f992e84227a6a8'),(136,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyOTAyNzQ5OCwiaWF0IjoxNzI2NDM1NDk4LCJqdGkiOiJiZWZiZGQ5MTY3OTM0OWNhYTJmZDNhZDJiNjMyZWNlNiIsInVzZXJfaWQiOjEwfQ.FW5T2TU9N1NRi8Y0Ud75OqLwetGAV_ryePUbyGWiKCs','2024-09-15 21:24:58.929663','2024-10-15 21:24:58.000000',10,'befbdd91679349caa2fd3ad2b632ece6'),(137,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyOTAyNzUwNywiaWF0IjoxNzI2NDM1NTA3LCJqdGkiOiIwNjc1ZWZiYjM2YWU0YzZhODI1ZmVkMzBlYzIyOGZhNCIsInVzZXJfaWQiOjEwfQ.NwRhhLmUzxFUgf8bKw2WcOufeT49bsAJRfdK5t_lqOo','2024-09-15 21:25:07.402561','2024-10-15 21:25:07.000000',10,'0675efbb36ae4c6a825fed30ec228fa4'),(138,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyOTAyNzUwNywiaWF0IjoxNzI2NDM1NTA3LCJqdGkiOiJmNjk5NmJkMzQ1YzE0ZjIwYjhjZjExZDY2ZDdmY2YxNiIsInVzZXJfaWQiOjEwfQ.XmVocngwSmZuheFxC9Wp9UvrFdSCTH7dijvrO7mRBCc','2024-09-15 21:25:07.871611','2024-10-15 21:25:07.000000',10,'f6996bd345c14f20b8cf11d66d7fcf16'),(139,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyOTAyNzU1MywiaWF0IjoxNzI2NDM1NTUzLCJqdGkiOiIzNzMwOWEyMDcwMWQ0NGQ2YjBjNGZiYTQxMTJjNmRmMCIsInVzZXJfaWQiOjEwfQ.38VMI-7KyQaQh-l7ciwI6XEocNcDBxJQt46VLQcVnqQ','2024-09-15 21:25:53.337499','2024-10-15 21:25:53.000000',10,'37309a20701d44d6b0c4fba4112c6df0'),(140,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyOTAzMzQ1NywiaWF0IjoxNzI2NDQxNDU3LCJqdGkiOiIwZjY4YTFlMDk5ZjU0YmJlYmU0OGM1Y2EzYTcwNGQwZSIsInVzZXJfaWQiOjEwfQ.UqNw_yunb50h5AXqvCmI0m7qZk_sOY2l4A67Io-L5nY','2024-09-15 23:04:17.285993','2024-10-15 23:04:17.000000',10,'0f68a1e099f54bbebe48c5ca3a704d0e'),(141,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyOTA5NjI0OSwiaWF0IjoxNzI2NTA0MjQ5LCJqdGkiOiI5YzM5ZGI4NGIzYTE0MTVmOGUyYjRiNzZiNTg2MWNjMiIsInVzZXJfaWQiOjEwfQ.jQLNNDmyKZ1WehlG07cufhf3T67tx_LQo4U1631UeSY','2024-09-16 16:30:49.219475','2024-10-16 16:30:49.000000',10,'9c39db84b3a1415f8e2b4b76b5861cc2'),(142,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyOTExMzA4MCwiaWF0IjoxNzI2NTIxMDgwLCJqdGkiOiIwYjdmYTczYTZlZWY0MzMzYTM2MDk5ZjFkNGZlNWI3OCIsInVzZXJfaWQiOjEwfQ.3hiHgI9rqqXuhNmy3fQR-yljQPwfj24kftyxaV5ud30','2024-09-16 21:11:20.560962','2024-10-16 21:11:20.000000',10,'0b7fa73a6eef4333a36099f1d4fe5b78'),(143,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyOTE1MzU1NiwiaWF0IjoxNzI2NTYxNTU2LCJqdGkiOiI3MDg3ODczNjAwZDY0MzFlYjNlOWQ2ZWI5ZDIyNjkyZCIsInVzZXJfaWQiOjEwfQ.IlRpMfVlX3KyTFc9Lw7c5n8aIeOdCmvEJrQSnkPtNrU','2024-09-17 08:25:56.761713','2024-10-17 08:25:56.000000',10,'7087873600d6431eb3e9d6eb9d22692d'),(144,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyOTgwNDY2MiwiaWF0IjoxNzI3MjEyNjYyLCJqdGkiOiIzZWI1M2MxOTFjODk0ZGE4YTM1ZGY3ZGYyMWU5NTRjMCIsInVzZXJfaWQiOjEwfQ.5j9udKxhvcS01-VVpD9N5emFVtRjZxdHtiVDcV_foR8','2024-09-24 21:17:42.165845','2024-10-24 21:17:42.000000',10,'3eb53c191c894da8a35df7df21e954c0'),(145,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMDQ2NDg5MCwiaWF0IjoxNzI3ODcyODkwLCJqdGkiOiJjNjZlMzdhMWE5MDM0MTRmOTFkN2RhYzUyNzEyMjE4YiIsInVzZXJfaWQiOjEwfQ.g-EcwMkucaNJVqnKymeYO7QOn6xfNACXq5w3LEEgCrI','2024-10-02 12:41:30.280059','2024-11-01 12:41:30.000000',10,'c66e37a1a903414f91d7dac52712218b'),(146,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMDQ2NTc3MCwiaWF0IjoxNzI3ODczNzcwLCJqdGkiOiIwZjRhYzNmYWM3NDc0MTg5YTRlMjE3ZDY4NDNjOWQxOCIsInVzZXJfaWQiOjEwfQ.vpU8btGrG8kgZi0E4kZ7b7x0ZsYOzK1e5kfckBYGshM','2024-10-02 12:56:10.926028','2024-11-01 12:56:10.000000',10,'0f4ac3fac7474189a4e217d6843c9d18'),(147,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMDQ2NTgwOCwiaWF0IjoxNzI3ODczODA4LCJqdGkiOiIyZmUyNzM4YWIyMjI0ZmM1YWQ2YjZhZTI4YTkzNGJkYyIsInVzZXJfaWQiOjEwfQ.gUTC4SkijBQvIeDz0scgoZTE_YOYZPVF64q4R1jpRTY','2024-10-02 12:56:48.676114','2024-11-01 12:56:48.000000',10,'2fe2738ab2224fc5ad6b6ae28a934bdc'),(148,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMDQ2NTg5MSwiaWF0IjoxNzI3ODczODkxLCJqdGkiOiJkMDQ1MDVkMTE4MTQ0YWVlOWE4Y2I5ZWZhMjJmODk1ZCIsInVzZXJfaWQiOjEwfQ.sT8gxnM39THshHrfgC1iSW6H2XvkxVcoUCGlxiPqKtg','2024-10-02 12:58:11.645955','2024-11-01 12:58:11.000000',10,'d04505d118144aee9a8cb9efa22f895d'),(149,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMDQ2NzMyNSwiaWF0IjoxNzI3ODc1MzI1LCJqdGkiOiI0NmNiMGRkNzdiOTM0NDZiYjQzZTZlM2QxN2Q1M2I5MSIsInVzZXJfaWQiOjEwfQ.jaAmMSBSSTACOLmycLeMu7d_seDhK0duY5gZYAETVTQ','2024-10-02 13:22:05.380947','2024-11-01 13:22:05.000000',10,'46cb0dd77b93446bb43e6e3d17d53b91'),(150,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMDQ2NzgxNywiaWF0IjoxNzI3ODc1ODE3LCJqdGkiOiJhZGM0NTE4MTI1OGE0NWFkOWM2MjA2MmU4NjU2ZWE5YyIsInVzZXJfaWQiOjEwfQ.xQ5v1SxS8r-3Z21cgbFlarPWkGWNpzC63QSk2Ujx14g','2024-10-02 13:30:17.138406','2024-11-01 13:30:17.000000',10,'adc45181258a45ad9c62062e8656ea9c'),(151,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMDQ2Nzg1MiwiaWF0IjoxNzI3ODc1ODUyLCJqdGkiOiJjMGY3MzQ3MzMzZjY0NDI5OTIyMWIzY2Q4MzEyY2QyZiIsInVzZXJfaWQiOjEwfQ.bMVSVZBF-8YOQpLD_dNYzaV_7mxZuZuFsHozxSIjGCs','2024-10-02 13:30:52.852186','2024-11-01 13:30:52.000000',10,'c0f7347333f644299221b3cd8312cd2f'),(152,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMDQ2Nzg4MCwiaWF0IjoxNzI3ODc1ODgwLCJqdGkiOiIzMjZjYzRmMmYyMmU0MmNhOGQ0YzM5OGIzODJiMTc3ZSIsInVzZXJfaWQiOjEwfQ.acLdkI72HrbGOYVbs6M19yjUKO5HgIDKXCvqKXenVqI','2024-10-02 13:31:20.416516','2024-11-01 13:31:20.000000',10,'326cc4f2f22e42ca8d4c398b382b177e'),(153,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMDQ2NzkyNywiaWF0IjoxNzI3ODc1OTI3LCJqdGkiOiJkMDQ5MmVkOGJlYzg0ZTYxODZkZjI4ZmY0NDIyODExNCIsInVzZXJfaWQiOjEwfQ.585cM86n7NkcojahXkORBx--X914wueO-C2ZsVMvwt4','2024-10-02 13:32:07.260830','2024-11-01 13:32:07.000000',10,'d0492ed8bec84e6186df28ff44228114'),(154,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMDQ2ODAxMCwiaWF0IjoxNzI3ODc2MDEwLCJqdGkiOiI1ODc0MWFjZTdkMDQ0Yzc0OGQ5OTZmZjQ3OTY0OTYwNSIsInVzZXJfaWQiOjEwfQ.0TqcseLBYzkdxq5GCci-PaWJqqziLU8mC9keGpkvb14','2024-10-02 13:33:30.332377','2024-11-01 13:33:30.000000',10,'58741ace7d044c748d996ff479649605'),(155,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMDQ2ODE3MiwiaWF0IjoxNzI3ODc2MTcyLCJqdGkiOiJhMGQ4NDA5MWJmYTc0ZjY5OWIyY2VjNjlkODExMTE0NCIsInVzZXJfaWQiOjEwfQ.jmVXS4CmG1MpX_9quWb0qyGLzCLLYp_RGWjkitXLols','2024-10-02 13:36:12.797819','2024-11-01 13:36:12.000000',10,'a0d84091bfa74f699b2cec69d8111144'),(156,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMDQ2ODI2MCwiaWF0IjoxNzI3ODc2MjYwLCJqdGkiOiJiZTYzNzMxMTM5MzU0NzI0YjgwMTA0YjdlZTBjOWYzMyIsInVzZXJfaWQiOjEwfQ.9p1mkwxS1g03SVeRGqoDK8Q2DD20LcMSQDDugkKLd8s','2024-10-02 13:37:40.088261','2024-11-01 13:37:40.000000',10,'be63731139354724b80104b7ee0c9f33'),(157,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMDQ2ODI4NCwiaWF0IjoxNzI3ODc2Mjg0LCJqdGkiOiJjNWJmYTM4YTA0OTQ0MmZjYjEzYTViOGE0M2RlZWM5YiIsInVzZXJfaWQiOjEwfQ.ge6niPr4md-Fp5qB31Y-a_QYUvcbLuyNMb02vpKHyXI','2024-10-02 13:38:04.018714','2024-11-01 13:38:04.000000',10,'c5bfa38a049442fcb13a5b8a43deec9b'),(158,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMDQ5NDkwOSwiaWF0IjoxNzI3OTAyOTA5LCJqdGkiOiI1ODhlODQ4ZDdhMGI0YTMxODkzODVjYTJjMWRiZTE1YiIsInVzZXJfaWQiOjExfQ.7hgE4RNLX_62OlWT09cC05OpRrp3tzJ5AKxr0LLYfMs','2024-10-02 21:01:49.413993','2024-11-01 21:01:49.000000',11,'588e848d7a0b4a3189385ca2c1dbe15b'),(159,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMDQ5NTA4NSwiaWF0IjoxNzI3OTAzMDg1LCJqdGkiOiI4NjBiMDc1ZDc2Yzk0ZjdjYmQ3ODY3YjU0ZTU4ZmZhYyIsInVzZXJfaWQiOjExfQ.iuTjMZw2ZuKBCz7ihZmTPMTxfVpuGSyk86RUc7sRBWk','2024-10-02 21:04:45.851985','2024-11-01 21:04:45.000000',11,'860b075d76c94f7cbd7867b54e58ffac'),(160,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyNzk5MDA5MCwiaWF0IjoxNzI3OTAzNjkwLCJqdGkiOiIwMDU4YTY5MjQzZGQ0Mzg0YjhlNWFlNzQzZjVlMjg1MyIsInVzZXJfaWQiOjExfQ.zSQTMg87Lo0reg5txFNrwfmB3zfJUgyNbqhmQ-K1X2M','2024-10-02 21:14:50.293350','2024-10-03 21:14:50.000000',11,'0058a69243dd4384b8e5ae743f5e2853'),(161,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyNzk5MDI4MCwiaWF0IjoxNzI3OTAzODgwLCJqdGkiOiJhN2Y1YjFiNzQ5YjU0ZTYxOTcxNWRkYzE1NzMyZmZmNSIsInVzZXJfaWQiOjExfQ.HYEvwFt3L95aC_ft7g__WuSPmOe8Dt7neFQ1QOohETc','2024-10-02 21:18:00.622185','2024-10-03 21:18:00.000000',11,'a7f5b1b749b54e619715ddc15732fff5'),(162,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjIyNTAzNiwiaWF0IjoxNzI3OTA1MDM2LCJqdGkiOiJlNzYyZGQxYTNhNDc0OGFjYWYyNTI5ZDFjOTU0YWRiZSIsInVzZXJfaWQiOjExfQ.ihZbrgVWlVwDjGjUiTnndIHJfhtPQUVPB-A4II_Qq1o','2024-10-02 21:37:16.963430','2024-11-21 21:37:16.000000',11,'e762dd1a3a4748acaf2529d1c954adbe'),(163,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjIyNTg4MywiaWF0IjoxNzI3OTA1ODgzLCJqdGkiOiIzM2U2ZmNlMWNmNjE0ZjIxODA5YzViODU5MGFmNzQwZCIsInVzZXJfaWQiOjExfQ.8B2stitO-bZqjhusNR5j06bcJNVi6ahD2q_ZtnF_cH4','2024-10-02 21:51:23.452552','2024-11-21 21:51:23.000000',11,'33e6fce1cf614f21809c5b8590af740d'),(164,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjIyNjQ1NCwiaWF0IjoxNzI3OTA2NDU0LCJqdGkiOiJlYjk2MjMwYmExOGY0NWY0YmEyNzNlZmY4YjA5MWQwMCIsInVzZXJfaWQiOjExfQ.Slkj-ukmTG-YkJfcgp5_U3VgIuUoTG7WeYKqDrkBw70','2024-10-02 22:00:54.599069','2024-11-21 22:00:54.000000',11,'eb96230ba18f45f4ba273eff8b091d00'),(165,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjIyNjk3NywiaWF0IjoxNzI3OTA2OTc3LCJqdGkiOiIyNjdiNjFlMzllN2U0MGZjODliYjBjMjllOWY0NDg3NyIsInVzZXJfaWQiOjExfQ._AKoVXwfXpPHS6FXpaHQJPbMlIC2LoVlngJiALU9Tos','2024-10-02 22:09:37.735331','2024-11-21 22:09:37.000000',11,'267b61e39e7e40fc89bb0c29e9f44877'),(166,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjM4NzgzNSwiaWF0IjoxNzI4MDY3ODM1LCJqdGkiOiJiM2NjNzA3ZWRiZjI0ZTZkYWZlNTYyOTVkOWMzNjY1OCIsInVzZXJfaWQiOjExfQ.jcfrVaSgixCGKJ8BpovZdBiP-ZQzaVh3RpyY-beOxW0','2024-10-04 18:50:35.210882','2024-11-23 18:50:35.000000',11,'b3cc707edbf24e6dafe56295d9c36658'),(167,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjM4NzkxMSwiaWF0IjoxNzI4MDY3OTExLCJqdGkiOiIzMzI1MGQ2NDNhYjE0YzgzYjU2ZjM5MDQ3YTVkMDAxMyIsInVzZXJfaWQiOjExfQ.JAxXIKSBcesOIaYQ-dur6NLyvqUL-9Po8Gub9bZ6oAk','2024-10-04 18:51:51.421547','2024-11-23 18:51:51.000000',11,'33250d643ab14c83b56f39047a5d0013'),(168,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjM4Nzk2OSwiaWF0IjoxNzI4MDY3OTY5LCJqdGkiOiIzMDk3ODMzMjEyNzY0YmZjOTk5NGEwMDQ5OWMwYzc5ZiIsInVzZXJfaWQiOjExfQ.NWPa-f8Er8-acoiH9FHoqXsdw9StexZjkTeSz8X5H_E','2024-10-04 18:52:49.080960','2024-11-23 18:52:49.000000',11,'3097833212764bfc9994a00499c0c79f'),(169,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjM4ODM5MCwiaWF0IjoxNzI4MDY4MzkwLCJqdGkiOiIxNWI4Mjc0MjM3OTE0OWMyOTNkOTJmMTJiODFhNmRiMCIsInVzZXJfaWQiOjExfQ.g9Pp_awUuXNi1mu7sNDEgTcI31S66DHek0JuOLE3gyA','2024-10-04 18:59:50.121399','2024-11-23 18:59:50.000000',11,'15b82742379149c293d92f12b81a6db0'),(170,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjM4ODUzNiwiaWF0IjoxNzI4MDY4NTM2LCJqdGkiOiJjNmU0OGIyYjE1ZDc0ZDM3YTZjZjg3NjlmZDdhODg4MyIsInVzZXJfaWQiOjExfQ.tnX_0UanMT5dANvaPSFrxvK2mihXPwHOPe5DMTv1lfA','2024-10-04 19:02:16.693277','2024-11-23 19:02:16.000000',11,'c6e48b2b15d74d37a6cf8769fd7a8883'),(171,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjM5NDI4MCwiaWF0IjoxNzI4MDc0MjgwLCJqdGkiOiJlOTM5YjU0NTlmNWM0MmY1YjkzNmUxYWYyYjQ3ZWMwYiIsInVzZXJfaWQiOjExfQ.JaOpEibKq8gTx1KyZZyO-zKw6d5fDYk5xHIgUdB9DOc','2024-10-04 20:38:00.863397','2024-11-23 20:38:00.000000',11,'e939b5459f5c42f5b936e1af2b47ec0b'),(172,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjY1MDExOCwiaWF0IjoxNzI4MzMwMTE4LCJqdGkiOiJkNGUyYTgwYzM2YmE0OGE5YTc1MjZlZGQzOGVkN2VmYSIsInVzZXJfaWQiOjExfQ.6_hFtbhrr3sDjf3-Y7FunGOzHiviR3acOtxNIH5rjPk','2024-10-07 19:41:58.373195','2024-11-26 19:41:58.000000',11,'d4e2a80c36ba48a9a7526edd38ed7efa'),(173,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjY1MTA5MiwiaWF0IjoxNzI4MzMxMDkyLCJqdGkiOiJjMDA1ZGRiZDVmNDY0ODU1YjBiNjk0MWE4MzJkMzk0OSIsInVzZXJfaWQiOjExfQ.HPDJ8sItuOcz3cNICkieZ_XzfiYpU-1XABzuDbWNOd8','2024-10-07 19:58:12.074113','2024-11-26 19:58:12.000000',11,'c005ddbd5f464855b0b6941a832d3949'),(174,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjY1MjM0MiwiaWF0IjoxNzI4MzMyMzQyLCJqdGkiOiI5MWNkMDVkOWFjNGM0YzFmYTdmOTU3N2U3MDJjMDE3OCIsInVzZXJfaWQiOjEyfQ.kCe0LhsFKUuCR2HSjV1RiiyEH6b0V91MFSmgkKy5HyU','2024-10-07 20:19:02.760069','2024-11-26 20:19:02.000000',12,'91cd05d9ac4c4c1fa7f9577e702c0178'),(175,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjY1NTY5OSwiaWF0IjoxNzI4MzM1Njk5LCJqdGkiOiJiYjI3YzVjNjNhZWY0ODBiOTAxNjgwMjc3YmI3MTUwYSIsInVzZXJfaWQiOjEzfQ.2BlxLBl2QyF7pByNExIiRXyZo2NA_oJtzoAJIUv3B0E','2024-10-07 21:14:59.885990','2024-11-26 21:14:59.000000',13,'bb27c5c63aef480b901680277bb7150a'),(176,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjcxMTkzOCwiaWF0IjoxNzI4MzkxOTM4LCJqdGkiOiI0MWJkMTc5OTY0Yjc0MjI0ODM0YWZjODAzMmViOTIzMiIsInVzZXJfaWQiOjEwfQ.EBIusXzgbiz5QRHvYObSqz4IuipjWyLs2TPrJ6DXI6k','2024-10-08 12:52:18.183047','2024-11-27 12:52:18.000000',10,'41bd179964b74224834afc8032eb9232'),(177,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjczMjg2NSwiaWF0IjoxNzI4NDEyODY1LCJqdGkiOiJhZWJkMmI1Y2YwNDI0OWRhOWQ5MjZhMWI2YmM2NzRkNyIsInVzZXJfaWQiOjEwfQ.Ca58rG7A4CAvo_GyqPqHdYTth9TKCdLwsT7Ls0LPpUY','2024-10-08 18:41:05.078295','2024-11-27 18:41:05.000000',10,'aebd2b5cf04249da9d926a1b6bc674d7'),(178,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjgyNjY0MywiaWF0IjoxNzI4NTA2NjQzLCJqdGkiOiIwMWI1YzY1YjM1ZTY0NTFhYWMwODg1MzEzNDE0MjJmNyIsInVzZXJfaWQiOjEwfQ.hJAHB9Q_8Xt-Z_r30A1lDy07-trQ9auQAP0BAU9WKYE','2024-10-09 20:44:03.877052','2024-11-28 20:44:03.000000',10,'01b5c65b35e6451aac088531341422f7'),(179,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjk2MTg0OSwiaWF0IjoxNzI4NjQxODQ5LCJqdGkiOiI5M2IzN2FkMDQ3Nzk0ZTBjOTBmMjljYjliNWNkOGMwMCIsInVzZXJfaWQiOjEwfQ.cVOVVLGdXBLrQbRoR9gXPDbWamL_MLnJdYTZOOjHrEg','2024-10-11 10:17:29.110318','2024-11-30 10:17:29.000000',10,'93b37ad047794e0c90f29cb9b5cd8c00'),(180,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjk2ODUyMCwiaWF0IjoxNzI4NjQ4NTIwLCJqdGkiOiIzMWRmOGQxNTNmYTA0ZGY2YTE4ZGJjMDgyYjI2ZGFkNSIsInVzZXJfaWQiOjExfQ.X2DUcC0VD2Q86Qpwgv5ZM3BLDvgPq9Ls3Xi2zk5srtM','2024-10-11 12:08:40.545469','2024-11-30 12:08:40.000000',11,'31df8d153fa04df6a18dbc082b26dad5'),(181,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjk5NDAxMSwiaWF0IjoxNzI4Njc0MDExLCJqdGkiOiI3ZjNhYTYwODcxYjQ0YTFkODAyOTkwMzk3MWZiMzFjNCIsInVzZXJfaWQiOjEwfQ.5aeMdDpg3NHrNYIBedSMTFxgGa2zdFKs9Pz_QOI04Lc','2024-10-11 19:13:31.956591','2024-11-30 19:13:31.000000',10,'7f3aa60871b44a1d8029903971fb31c4'),(182,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjk5NTEwNCwiaWF0IjoxNzI4Njc1MTA0LCJqdGkiOiI4NzdhNjI3MjI2OWQ0YTQ4OTYwNDdmYTZlM2ZkYTFlYiIsInVzZXJfaWQiOjEwfQ.j8R6FFmRzFF5zAhGolce3Qgar-TgrPj3ghgF0cXsSEI','2024-10-11 19:31:44.349707','2024-11-30 19:31:44.000000',10,'877a6272269d4a4896047fa6e3fda1eb'),(183,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMzAwMzg4MiwiaWF0IjoxNzI4NjgzODgyLCJqdGkiOiJhNDlhYzhjMzVjN2U0ZjFlYjhhNzQzYTNmNjdlOTg0NCIsInVzZXJfaWQiOjEwfQ.KgGjUsuAl5x0T4jePdo4KhksV_W_TmHpSSbeFKDFT_w','2024-10-11 21:58:02.507749','2024-11-30 21:58:02.000000',10,'a49ac8c35c7e4f1eb8a743a3f67e9844'),(184,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMzAwMzkwNCwiaWF0IjoxNzI4NjgzOTA0LCJqdGkiOiIzYTEyNTAxYjc5NjU0ODJkOGYwYWVkMTc3YWJiYjBhNyIsInVzZXJfaWQiOjExfQ.YMAPowUPpDD00eRsYM5fCfYlva4GoGfo5B2Yraqc21c','2024-10-11 21:58:24.668621','2024-11-30 21:58:24.000000',11,'3a12501b7965482d8f0aed177abbb0a7');
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile_userprofile`
--

DROP TABLE IF EXISTS `user_profile_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile_userprofile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_profile_userprofile_user_id_84fd5b2a_fk_user_useraccount_id` FOREIGN KEY (`user_id`) REFERENCES `user_useraccount` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile_userprofile`
--

LOCK TABLES `user_profile_userprofile` WRITE;
/*!40000 ALTER TABLE `user_profile_userprofile` DISABLE KEYS */;
INSERT INTO `user_profile_userprofile` VALUES (1,'','','','',5),(3,'ottostr.22','Ottoland','07700','077007700770',2),(4,'commonstr.11','London','12345','777777777',1),(5,'','','','',6),(7,'','','','',7),(8,'','','','',8),(9,'','','','',9),(10,'bellingham str.5','Madrid','Madrid','55555555555',10),(11,'c/ concha espina 15','Leganes','Leganes','+34 677615151515',11),(12,'','','','',12),(13,'','','','',13),(14,'','','','',14),(15,'','','','',15),(17,'','','','',17),(18,'','','','',18);
/*!40000 ALTER TABLE `user_profile_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_useraccount`
--

DROP TABLE IF EXISTS `user_useraccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_useraccount` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_trainer` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_useraccount`
--

LOCK TABLES `user_useraccount` WRITE;
/*!40000 ALTER TABLE `user_useraccount` DISABLE KEYS */;
INSERT INTO `user_useraccount` VALUES (1,'argon2$argon2id$v=19$m=102400,t=2,p=8$VnFuNHpwS3NWQ1d5Wkt0NHZQSlB2Zw$AZhlYYDEWJdHZ2htFt9YNak+CVV2RV/sxUcLeMN1L9U',NULL,0,'pulp@gmail.com','jarvis','cocker',1,0,0),(2,'ottoelpiloto2016','2024-07-04 11:54:23.000000',0,'otto.climent@gmail.com','otto','climent',1,0,0),(3,'argon2$argon2id$v=19$m=102400,t=2,p=8$U3RsYzh6SmQzVVdIVmUxQWdaZ3ZycA$3QzvhapqK9uzYteBvfQUP/vfz7xAYc/dZFB67AlyVRI',NULL,0,'pepe@gmail.com','Pepe','Climent',1,0,0),(4,'argon2$argon2id$v=19$m=102400,t=2,p=8$SzlmMHM1T0F1Ym1qNE1IS0lFSHBBNA$tmJLfWXQEyeAix3uEFxhaoVs9xNFIJMPTTTAuNoJGtI','2024-10-07 20:12:39.659448',1,'admin@gmail.com','admin','admin',1,1,0),(5,'argon2$argon2id$v=19$m=102400,t=2,p=8$QUFHYVE3N1BqejdnRENwYWNqRjVzTg$BeJeZGGluxiWSpr6aCm2REnkVcCx5UwfdI8UYH/ItJo',NULL,0,'test3@gmail.com','Test3','test3',1,0,0),(6,'argon2$argon2id$v=19$m=102400,t=2,p=8$ellYZGlGVFF5eFpGVld3NkN4TXoyTA$og4ScEurdJRp85Ix2zubQr+cGIYNdyk1c4wgzAqsQG4',NULL,0,'test4@gmail.com','Test4','Test4',1,0,0),(7,'argon2$argon2id$v=19$m=102400,t=2,p=8$eE8yck1vbE1zWksyb2ltT1RYVHRIOA$XbE/e0uyVsSQKkEOEFPrdsTq3p+HPXB6kzoij1xgkZ8',NULL,0,'berto@gmail.com','Roberto','Fresnedoso',1,0,0),(8,'argon2$argon2id$v=19$m=102400,t=2,p=8$U1c4Znd4S1FteW5BbWxXbDFWVEJ5Yw$i1Rog4sKioeNuqIwpEAGcbisPJalL4NlVLcUTwnqrhk',NULL,0,'test5@gmail.com','Test5','Test5',1,0,0),(9,'argon2$argon2id$v=19$m=102400,t=2,p=8$ZFNlRjRidkw4dk1MVW9zUlZVc2tQNA$ctjVkJGOWRuWf4pbkPMo6dkgIJi7w61Q0jUQK0ffO5I',NULL,0,'test77@gmail.com','Test77','Test77',1,0,0),(10,'argon2$argon2id$v=19$m=102400,t=2,p=8$dTNtMHlhcDhsMlhwdnRqOWNXOHc4ZQ$WBTy6umSJyHSsKb08MPaDv7tRTaRE43zy1d6MjbxIag',NULL,0,'jude5@gmail.com','Jude','Bellingham',1,0,0),(11,'argon2$argon2id$v=19$m=102400,t=2,p=8$SFc5N0FNSTloMFFmSFdSeTZJcW55QQ$8IR0lQPs70EtlbRWLO8Kqo2NjmSvr6nchB3gWSGwyok',NULL,0,'arda@gmail.com','arda','guler',1,0,0),(12,'argon2$argon2id$v=19$m=102400,t=2,p=8$YVlXd3hySUZlRVJvVFB3WkJvWFN2cg$Nv7sjgJ5/sw/fHYGEKvir5HjYWb6VRxlwpTcoesdRx8',NULL,0,'climent.kiko@gmail.com','kiko','climent',1,0,0),(13,'argon2$argon2id$v=19$m=102400,t=2,p=8$bDB1dzNCSG01YkdIRThVVHdYR0ZZaw$sGILUuvYTshzwLGQV8unmJ9pu5Ctk7WtgwsI4nz6vIg',NULL,0,'carvajal2@gmail.com','dani','carvajal',1,0,0),(14,'argon2$argon2id$v=19$m=102400,t=2,p=8$Ykp1SjNGcnpyYVpBSk5KemRKR2dlSg$q7JgfkISh9As270N3dwjP4HOPUDBvgJs9W5I5BXJ54k',NULL,0,'militao3@gmail.com','eder','militao',1,0,0),(15,'argon2$argon2id$v=19$m=102400,t=2,p=8$RThwZnBXMXFPc2ZrMW42OTUxOEJ4Rg$8Tw6ZKRKB0tM/xjojvRrFO3LaAjmJsabRlljciv2utY',NULL,0,'carleto55@gmail.com','carlo','ancelotti',0,0,0),(17,'argon2$argon2id$v=19$m=102400,t=2,p=8$cEgyNTJSUW1SRWhGU2lzZGRZdHVnZw$GMEX8FDrjKmV6Xfi6jlKc4INR6mF7w3xeebLhgYTXzc',NULL,0,'mauro123@gmail.com','mauro','torres',0,0,0),(18,'argon2$argon2id$v=19$m=102400,t=2,p=8$ejRsNE9McDI2SnR0U2J4eEwzSVlrNw$xh19XaaWV7QWn35YXvhPIo9iJYMpiHrcE1RDRyy0u20',NULL,0,'moonandmann@gmail.com','moon','mann',1,0,0);
/*!40000 ALTER TABLE `user_useraccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_useraccount_groups`
--

DROP TABLE IF EXISTS `user_useraccount_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_useraccount_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `useraccount_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_useraccount_groups_useraccount_id_group_id_ba2d9637_uniq` (`useraccount_id`,`group_id`),
  KEY `user_useraccount_groups_group_id_4ce6c571_fk_auth_group_id` (`group_id`),
  CONSTRAINT `user_useraccount_gro_useraccount_id_9784fa3e_fk_user_user` FOREIGN KEY (`useraccount_id`) REFERENCES `user_useraccount` (`id`),
  CONSTRAINT `user_useraccount_groups_group_id_4ce6c571_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_useraccount_groups`
--

LOCK TABLES `user_useraccount_groups` WRITE;
/*!40000 ALTER TABLE `user_useraccount_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_useraccount_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_useraccount_user_permissions`
--

DROP TABLE IF EXISTS `user_useraccount_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_useraccount_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `useraccount_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_useraccount_user_pe_useraccount_id_permissio_ba82c04f_uniq` (`useraccount_id`,`permission_id`),
  KEY `user_useraccount_use_permission_id_24370196_fk_auth_perm` (`permission_id`),
  CONSTRAINT `user_useraccount_use_permission_id_24370196_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_useraccount_use_useraccount_id_8f039e10_fk_user_user` FOREIGN KEY (`useraccount_id`) REFERENCES `user_useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_useraccount_user_permissions`
--

LOCK TABLES `user_useraccount_user_permissions` WRITE;
/*!40000 ALTER TABLE `user_useraccount_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_useraccount_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-13 19:58:45
