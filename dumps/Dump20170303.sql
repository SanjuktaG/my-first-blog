-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: django
-- ------------------------------------------------------
-- Server version	5.7.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add post',7,'add_post'),(20,'Can change post',7,'change_post'),(21,'Can delete post',7,'delete_post');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$PYThDKERE91F$uIy0T74rTVktGcG55OBp9UQ6RZ0h4uxZdm4rDLTzhDk=','2017-02-26 11:37:55.711579',1,'fgamper','','','',1,1,'2017-02-26 07:56:44.875753');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-02-26 11:42:18.290013','1','TEST',1,'[{\"added\": {}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'testapp','post');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-02-26 07:55:28.520229'),(2,'auth','0001_initial','2017-02-26 07:55:28.952075'),(3,'admin','0001_initial','2017-02-26 07:55:29.067466'),(4,'admin','0002_logentry_remove_auto_add','2017-02-26 07:55:29.083092'),(5,'contenttypes','0002_remove_content_type_name','2017-02-26 07:55:29.183124'),(6,'auth','0002_alter_permission_name_max_length','2017-02-26 07:55:29.220901'),(7,'auth','0003_alter_user_email_max_length','2017-02-26 07:55:29.267779'),(8,'auth','0004_alter_user_username_opts','2017-02-26 07:55:29.283403'),(9,'auth','0005_alter_user_last_login_null','2017-02-26 07:55:29.321170'),(10,'auth','0006_require_contenttypes_0002','2017-02-26 07:55:29.321170'),(11,'auth','0007_alter_validators_add_error_messages','2017-02-26 07:55:29.336796'),(12,'auth','0008_alter_user_username_max_length','2017-02-26 07:55:29.378335'),(13,'sessions','0001_initial','2017-02-26 07:55:29.420876'),(14,'testapp','0001_initial','2017-02-26 08:37:09.291308');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5dowm0knfob4zi7ibb3rbsn0mi7clpr4','YTE5N2VlZDA0YmEzZjM3ZjFkYTJkMjNhMDRlNWEyNTk4OWZkNGI4MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1M2RmNjczNmU3NjliM2NmOWIxZGIzMDhlOTFkNThiMmQ4MTU4NjI5In0=','2017-03-12 11:37:55.711579');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample_table`
--

DROP TABLE IF EXISTS `sample_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_table` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_table`
--

LOCK TABLES `sample_table` WRITE;
/*!40000 ALTER TABLE `sample_table` DISABLE KEYS */;
INSERT INTO `sample_table` VALUES (1,'Ralph','et.ultrices.posuere@Nullatempor.co.uk','Gressan','4152'),(2,'Marsden','a.malesuada.id@imperdietdictum.edu','Chiavari','7499'),(3,'Brock','eu.turpis@vehiculaetrutrum.edu','Nacimiento','2777'),(4,'Kermit','non@dapibusrutrumjusto.com','Hull','1539'),(5,'Nissim','lobortis.quam.a@maurisrhoncusid.co.uk','Kavaratti','3342'),(6,'Elton','nec@sodalesMaurisblandit.ca','Harrisburg','4086'),(7,'Nash','euismod.mauris.eu@ut.co.uk','Kolmont','4480'),(8,'Vance','a@tinciduntvehicularisus.ca','Cognelee','2690'),(9,'Gabriel','arcu.Sed.et@euismodenim.edu','Guardia Perticara','8339'),(10,'Connor','Cras.dictum.ultricies@etultrices.ca','Salt Lake City','9451'),(11,'August','sit.amet.consectetuer@metusfacilisislorem.net','Nîmes','7059'),(12,'Jacob','ultrices.sit@egestasadui.net','Hannche','9322'),(13,'Harlan','magna.malesuada@nislelementum.com','Mesoraca','8126'),(14,'Berk','Suspendisse.eleifend@eget.co.uk','Cauquenes','8480'),(15,'Ahmed','nibh.vulputate.mauris@bibendumullamcorperDuis.org','Dunoon','2129'),(16,'Honorato','quis@eudui.org','Estevan','9331'),(17,'Orson','vestibulum.Mauris@viverra.org','Fort Resolution','5150'),(18,'Chadwick','congue.a@Duisrisusodio.co.uk','Oberhausen','1277'),(19,'Ali','dui.Suspendisse@et.org','Burlington','8846'),(20,'Isaiah','felis.ullamcorper@egestas.ca','Quillón','3929'),(21,'Justin','consectetuer.cursus@perinceptoshymenaeos.co.uk','Carluke','2562'),(22,'Kaseem','tempus.non@Morbiaccumsan.com','Portezuelo','5837'),(23,'Calvin','amet.ultricies.sem@vitae.co.uk','Ulloa (Barrial)','4855'),(24,'Alfonso','Suspendisse@Namconsequatdolor.org','Atlanta','1931'),(25,'Cyrus','ac.mi@cubiliaCuraePhasellus.ca','Gisborne','5981'),(26,'Herman','id.magna@ornaretortorat.net','Vilvoorde','9235'),(27,'Cain','porttitor@nonsapienmolestie.org','Bath','7070'),(28,'Gil','amet@massaInteger.co.uk','Lo Espejo','4236'),(29,'Kermit','Donec.consectetuer@ultrices.org','Montbliart','5104'),(30,'Alfonso','Donec@nasceturridiculusmus.net','CŽroux-Mousty','4816'),(31,'Kieran','varius@risusDuis.org','Saintes','8102'),(32,'Amal','risus.Nulla@vulputateveliteu.com','Bünyan','7381'),(33,'Yardley','convallis.dolor@Aliquamgravidamauris.net','Huara','2259'),(34,'Abbot','sit.amet@afacilisis.co.uk','Dreieich','7192'),(35,'Tarik','purus@egetipsumDonec.org','Rajahmundry','4439'),(36,'Clark','Curabitur.dictum.Phasellus@elitfermentumrisus.edu','Lac-Serent','2778'),(37,'Elijah','lectus@Innec.edu','Blankenfelde-Mahlow','5875'),(38,'Seth','et@augue.com','San Fabián','1535'),(39,'Carter','posuere.cubilia@dictum.ca','Arvier','1874'),(40,'Omar','luctus@Nam.net','Nocera Umbra','4537'),(41,'Kadeem','fermentum@utpharetrased.com','Stonehaven','4326'),(42,'Ferris','nibh@semPellentesque.edu','Santa Vittoria in Matenano','2051'),(43,'Tanner','In@condimentum.edu','Eugene','4968'),(44,'Lucius','nec.euismod@Fuscealiquetmagna.edu','Sedgewick','5167'),(45,'Harper','cursus@erat.net','Evere','3774'),(46,'Hunter','diam@quisdiam.co.uk','Veldegem','8578'),(47,'Judah','arcu.Vestibulum@atarcuVestibulum.net','Ararat','5560'),(48,'Drew','a.feugiat@lobortisrisusIn.co.uk','High Level','5572'),(49,'Nathan','sit.amet@velit.ca','Springfield','4215'),(50,'Graiden','porttitor@sagittisDuis.com','Iqaluit','7394'),(51,'Baxter','semper.cursus.Integer@necanteblandit.net','Rouvreux','8465'),(52,'Ulysses','commodo@morbitristiquesenectus.com','Kitchener','3685'),(53,'Emmanuel','mi@Cum.org','Rodengo/Rodeneck','7341'),(54,'Lucas','lobortis.quam.a@Nullatemporaugue.co.uk','Viggiano','1222'),(55,'Zeus','feugiat.Lorem.ipsum@Fusce.com','Vadodara','6514'),(56,'Josiah','In.faucibus.Morbi@congue.com','Nanded','7590'),(57,'Uriel','Lorem.ipsum@rhoncus.edu','Anthisnes','5860'),(58,'Brandon','elementum.dui.quis@sedsapienNunc.com','Sivry','5363'),(59,'Brady','blandit.enim@fermentumarcu.com','Sainte-Marie-sur-Semois','5711'),(60,'Hyatt','sagittis@Maecenasmi.edu','Windsor','8625'),(61,'Knox','at.risus.Nunc@Sednulla.edu','Etobicoke','6405'),(62,'Andrew','Nullam@aliquamenim.com','College','5182'),(63,'Dennis','Sed.nunc.est@auguescelerisque.com','Midlands','1391'),(64,'Norman','Proin.velit@varius.net','Castel Guelfo di Bologna','9029'),(65,'Benedict','scelerisque.scelerisque@nuncrisusvarius.com','Dorchester','1812'),(66,'Timothy','fringilla@utlacus.co.uk','Castor','7581'),(67,'Len','Morbi.accumsan@Incondimentum.edu','Morgex','8360'),(68,'Francis','eros@eget.org','Buggenhout','3653'),(69,'Mark','faucibus.ut@iaculisodio.net','Ashbourne','7770'),(70,'Gary','Pellentesque.tincidunt@dis.ca','Lavoir','8292'),(71,'Kyle','nunc@orciluctuset.net','Wellington','1774'),(72,'Len','Morbi.quis.urna@ornareegestas.co.uk','Rendsburg','9079'),(73,'Abraham','quam.a@diamDuismi.edu','Serralunga d\'Alba','6614'),(74,'Peter','eleifend@ac.org','Houston','5795'),(75,'Yoshio','massa@vitae.co.uk','Cossignano','9088'),(76,'Wing','convallis.dolor@neque.co.uk','Swindon','9756'),(77,'Graham','lacus.Quisque.purus@nequesedsem.ca','Ruoti','8704'),(78,'Drew','aliquam.arcu.Aliquam@estNunclaoreet.co.uk','Faridabad','3632'),(79,'Lars','Integer.vitae@ametconsectetueradipiscing.ca','Mango','7147'),(80,'Holmes','sit.amet@IncondimentumDonec.co.uk','Pepingen','4405'),(81,'Palmer','placerat@eteuismod.edu','Moulins','2719'),(82,'Wallace','feugiat.Lorem.ipsum@nibhPhasellus.co.uk','Rawalpindi','4738'),(83,'Tucker','dui.lectus.rutrum@faucibusidlibero.net','Mildura','6330'),(84,'Luke','laoreet.libero.et@laciniaorciconsectetuer.net','Colombes','8093'),(85,'Emery','nibh.Quisque.nonummy@metusInlorem.ca','Sonnino','2833'),(86,'Daquan','sodales@Maurisnulla.org','Karnal','3687'),(87,'Marshall','ornare.Fusce@natoque.ca','Meeuwen-Gruitrode','3832'),(88,'Paul','orci.lobortis.augue@anteiaculis.co.uk','Treglio','3933'),(89,'Roth','consectetuer@adipiscingelit.com','Paternopoli','2505'),(90,'Walter','purus@turpis.ca','Ingelheim','7400'),(91,'Jason','sed.pede@velesttempor.com','Emines','3607'),(92,'Hashim','enim.Etiam.imperdiet@dolor.ca','Butte','2453'),(93,'Xander','nisi.a.odio@nequevenenatis.co.uk','Turriaco','8426'),(94,'Jacob','semper.tellus@Maecenasmalesuadafringilla.ca','Sankt Wendel','6957'),(95,'Jerry','cursus.a@tellus.edu','Hollogne-sur-Geer','9182'),(96,'Lee','a@nequepellentesquemassa.com','Olmen','2920'),(97,'Callum','gravida.Praesent.eu@non.ca','La Estrella','1336'),(98,'Cole','felis@enim.org','Scarborough','2512'),(99,'Silas','vel.pede@at.edu','Nodebais','6950'),(100,'Abdul','facilisis.Suspendisse.commodo@velitSedmalesuada.co.uk','Soma','7858');
/*!40000 ALTER TABLE `sample_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testapp_post`
--

DROP TABLE IF EXISTS `testapp_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testapp_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` longtext NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `published_date` datetime(6) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `testapp_post_4f331e2f` (`author_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testapp_post`
--

LOCK TABLES `testapp_post` WRITE;
/*!40000 ALTER TABLE `testapp_post` DISABLE KEYS */;
INSERT INTO `testapp_post` VALUES (1,'TEST','fdsaf\r\nNo no no test\r\nThis was edited','2017-02-26 11:42:00.000000','2017-03-02 03:37:35.836642',1),(2,'Sample title','Test','2017-02-26 12:40:19.633266','2017-02-26 12:44:05.744010',1),(3,'BLALF FD test','HHAHAfd f\r\nfdasfio\r\n\r\ndd','2017-03-01 09:30:31.098376','2017-03-01 09:30:31.098376',1);
/*!40000 ALTER TABLE `testapp_post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-03 18:09:56
