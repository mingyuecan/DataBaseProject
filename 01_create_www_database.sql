CREATE DATABASE  IF NOT EXISTS `www` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `www`;
-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: localhost    Database: www
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `can_guide`
--

DROP TABLE IF EXISTS `can_guide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `can_guide` (
  `employee_id` int(11) NOT NULL,
  `trip_type_code` int(11) NOT NULL,
  PRIMARY KEY (`employee_id`,`trip_type_code`),
  KEY `fk_can_guide_employee_idx` (`employee_id`),
  KEY `fk_can_guide_trip_type_idx` (`trip_type_code`),
  CONSTRAINT `fk_can_guide_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_can_guide_trip_type` FOREIGN KEY (`trip_type_code`) REFERENCES `trip_type` (`trip_type_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `can_guide`
--

LOCK TABLES `can_guide` WRITE;
/*!40000 ALTER TABLE `can_guide` DISABLE KEYS */;
INSERT INTO `can_guide` VALUES (1,1),(1,2),(2,1),(2,2),(3,1),(4,2),(7,2);
/*!40000 ALTER TABLE `can_guide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destination`
--

DROP TABLE IF EXISTS `destination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destination` (
  `destination_code` int(11) NOT NULL,
  `destination_name` varchar(45) NOT NULL,
  PRIMARY KEY (`destination_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destination`
--

LOCK TABLES `destination` WRITE;
/*!40000 ALTER TABLE `destination` DISABLE KEYS */;
INSERT INTO `destination` VALUES (1,'Lower Wisconsin River'),(2,'Upper Wisconsin River'),(3,'Wolf River');
/*!40000 ALTER TABLE `destination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `nickname` varchar(45) NOT NULL,
  `mobile_phone` varchar(20) DEFAULT NULL,
  `home_phone` varchar(20) DEFAULT NULL,
  `availability_notes` varchar(255) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Wilma C.','Carson','Wilma','414-555-1234','414-555-9876','Year round, full-time'),(2,'Walter C.','Carson','Bud','414-555-1235','414-555-9876','Year round, full-time, except for deer hunting season'),(3,'Anne B.','Schultz','Annie','414-555-1266','414-555-2121','Year round, full-time, except for August vacation'),(4,'Joshua','Green','Josh','414-555-1268',NULL,'Summers, full-time'),(5,'William R.','Wagner  III','Billy','414-555-1271','414-555-3259','Summers, full-time, returns to school on August 19th'),(6,'Constance','Simms','Summer','414-555-1288',NULL,'Year round, part-time, as needed'),(7,'Blair Q.','McArthur','Blinky','414-555-1289','414-555-2121','Year round, full-time, except for May vacation');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience`
--

DROP TABLE IF EXISTS `experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experience` (
  `experience_code` int(11) NOT NULL,
  `experience_name` varchar(45) NOT NULL,
  PRIMARY KEY (`experience_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience`
--

LOCK TABLES `experience` WRITE;
/*!40000 ALTER TABLE `experience` DISABLE KEYS */;
INSERT INTO `experience` VALUES (1,'None'),(2,'Novice'),(3,'Expert'),(4,'Intermediate');
/*!40000 ALTER TABLE `experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gathering_point`
--

DROP TABLE IF EXISTS `gathering_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gathering_point` (
  `gathering_point_id` int(11) NOT NULL,
  `gathering_point_description` varchar(255) NOT NULL,
  PRIMARY KEY (`gathering_point_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gathering_point`
--

LOCK TABLES `gathering_point` WRITE;
/*!40000 ALTER TABLE `gathering_point` DISABLE KEYS */;
INSERT INTO `gathering_point` VALUES (1,'River Valley High School (Parking Lot); 660 Varsity Blvd; Spring Green; WI 53588'),(2,'Omar\'s Live Bait and Bridal Salon; 3421 Highway KZ; Casino Springs; WI 54776'),(3,'VFW #95001; 200 W. Main Street; Littleton; WI 55884');
/*!40000 ALTER TABLE `gathering_point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest` (
  `guest_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `isSwimmer` tinyint(1) NOT NULL,
  `mobile_phone` varchar(20) DEFAULT NULL,
  `experience_code` int(11) NOT NULL,
  PRIMARY KEY (`guest_id`),
  KEY `fk_guest_experience_idx` (`experience_code`),
  CONSTRAINT `fk_guest_experience` FOREIGN KEY (`experience_code`) REFERENCES `experience` (`experience_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES (1,'Margie','Samuels',31,130,1,'847-555-5201',2),(2,'Bart','Samuels',44,195,1,NULL,2),(3,'Lilly','Samuels',18,101,1,NULL,2),(4,'Bart Jr.','Samuels',6,60,0,NULL,1),(5,'George','Fogerty',28,160,1,'414-555-7654',3),(6,'Bruce','Simmons',5,150,1,NULL,3),(9,'Marion','Glaston',61,135,1,'815-555-4453',2),(10,'Marie','Glaston',61,135,1,NULL,2),(11,'Lamar','Lincoln',25,175,0,'414-555-9988',1),(12,'Fizza','Smith',25,115,1,'414-555-9876',3),(13,'Kara','Dilworth',23,110,0,'312-555-9876',2),(14,'Tyler','Worth',24,145,1,'217-555-6776',4),(15,'Timmy','Zodah',30,150,1,NULL,1),(16,'Marie','Mickelson',22,100,0,'217-555-1500',2),(17,'David','Sills',61,180,1,'414-555-0002',4),(18,'Daniel','Divine',21,150,1,'414-555-3223',1),(19,'Madison','Ahern',31,120,0,NULL,1),(20,'Lacey','Sills',35,125,1,NULL,2);
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plays_role`
--

DROP TABLE IF EXISTS `plays_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plays_role` (
  `employee_id` int(11) NOT NULL,
  `role_code` int(11) NOT NULL,
  PRIMARY KEY (`employee_id`,`role_code`),
  KEY `fk_plays_role_employee_idx` (`employee_id`),
  KEY `fk_plays_role_role_idx` (`role_code`),
  CONSTRAINT `fk_plays_role_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_plays_role_role` FOREIGN KEY (`role_code`) REFERENCES `role` (`role_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plays_role`
--

LOCK TABLES `plays_role` WRITE;
/*!40000 ALTER TABLE `plays_role` DISABLE KEYS */;
INSERT INTO `plays_role` VALUES (1,1),(1,2),(1,3),(2,2),(2,3),(3,1),(3,2),(3,3),(4,2),(4,3),(5,3),(6,1),(6,3),(7,2),(7,3);
/*!40000 ALTER TABLE `plays_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation` (
  `trip_number` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL,
  PRIMARY KEY (`trip_number`,`guest_id`),
  KEY `fk_reservation_trip_idx` (`trip_number`),
  KEY `fk_reservation_guest_id_idx` (`guest_id`),
  CONSTRAINT `fk_reservation_guest_id` FOREIGN KEY (`guest_id`) REFERENCES `guest` (`guest_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_reservation_trip` FOREIGN KEY (`trip_number`) REFERENCES `trip` (`trip_number`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (561,11),(561,12),(561,13),(561,14),(561,15),(561,16),(561,17),(561,18),(561,19),(561,20),(562,1),(562,2),(562,3),(562,4),(562,5),(562,6),(562,9),(562,10),(562,11),(563,1),(563,3),(563,5),(563,9),(563,10),(563,11),(563,13),(563,15),(564,10),(564,12),(564,14),(564,16),(564,18),(564,20),(565,14),(565,15),(565,16),(565,17),(565,18),(565,19),(566,6),(566,11),(566,12),(566,19),(567,2),(567,12),(569,11),(569,12),(569,13),(569,14),(570,6),(571,11),(571,12),(571,13),(571,14),(571,15),(571,16),(571,17),(572,14),(572,15),(572,16),(572,17),(572,18),(572,19),(572,20),(573,9),(573,10),(573,11),(574,10),(574,17),(575,4),(575,6),(576,11),(576,12),(576,13),(576,14),(576,15),(576,16),(576,17),(576,18),(577,1),(577,2),(577,3),(577,4),(577,5),(577,11),(577,12),(577,13),(577,14),(577,15),(578,13),(578,14),(578,15),(578,16),(578,17),(578,18),(579,10),(579,11),(579,12),(579,13),(579,14),(579,15),(579,16),(579,19),(579,20),(580,5),(580,15),(581,2),(581,3),(581,16),(581,17),(581,18),(582,2),(582,3),(582,4),(582,5),(582,12),(582,20),(583,1),(583,2),(583,3),(583,4),(583,5),(583,6),(583,17),(584,18);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `role_code` int(11) NOT NULL,
  `role_name` varchar(45) NOT NULL,
  PRIMARY KEY (`role_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Reservations'),(2,'Guide'),(3,'Gear');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip`
--

DROP TABLE IF EXISTS `trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trip` (
  `trip_number` int(11) NOT NULL,
  `trip_date` date NOT NULL,
  `capacity` int(11) NOT NULL,
  `latest_guest_arrival_time` time NOT NULL,
  `departure_time` time NOT NULL,
  `estimated_return_time` time DEFAULT NULL,
  `destination_code` int(11) NOT NULL,
  `trip_type_code` int(11) NOT NULL,
  `guide_employee_id` int(11) NOT NULL,
  `gear_employee_id` int(11) DEFAULT NULL,
  `gathering_point_id` int(11) NOT NULL,
  PRIMARY KEY (`trip_number`),
  KEY `fk_trip_destination_idx` (`destination_code`),
  KEY `fk_trip_type_idx` (`trip_type_code`),
  KEY `fk_trip_employee_idx` (`guide_employee_id`),
  KEY `fk_trip_employee1_idx` (`gear_employee_id`),
  KEY `fk_trip_gathering_point_idx` (`gathering_point_id`),
  CONSTRAINT `fk_trip_destination` FOREIGN KEY (`destination_code`) REFERENCES `destination` (`destination_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_trip_employee` FOREIGN KEY (`guide_employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_trip_employee1` FOREIGN KEY (`gear_employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_trip_gathering_point` FOREIGN KEY (`gathering_point_id`) REFERENCES `gathering_point` (`gathering_point_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_trip_trip_type` FOREIGN KEY (`trip_type_code`) REFERENCES `trip_type` (`trip_type_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip`
--

LOCK TABLES `trip` WRITE;
/*!40000 ALTER TABLE `trip` DISABLE KEYS */;
INSERT INTO `trip` VALUES (561,'2014-08-02',10,'07:30:00','08:15:00','16:00:00',1,2,4,NULL,1),(562,'2014-08-02',10,'07:30:00','08:15:00','16:00:00',1,1,3,NULL,1),(563,'2014-08-09',10,'07:30:00','08:15:00','16:00:00',1,2,4,NULL,1),(564,'2014-08-09',10,'07:30:00','08:15:00','16:00:00',1,1,3,NULL,1),(565,'2014-08-16',10,'07:30:00','08:15:00','16:00:00',1,2,4,NULL,1),(566,'2014-08-16',10,'07:30:00','08:15:00','16:00:00',1,1,3,NULL,1),(567,'2014-08-23',10,'07:30:00','08:15:00','16:00:00',1,2,4,NULL,1),(568,'2014-08-23',10,'07:30:00','08:15:00','16:00:00',1,1,3,NULL,1),(569,'2014-08-30',10,'07:30:00','08:15:00','16:00:00',1,2,4,NULL,1),(570,'2014-08-30',10,'07:30:00','08:15:00','16:00:00',1,1,3,NULL,1),(571,'2014-08-02',7,'07:30:00','08:15:00','16:00:00',2,1,2,NULL,2),(572,'2014-08-09',7,'07:30:00','08:15:00','16:00:00',2,1,2,NULL,2),(573,'2014-08-16',7,'07:30:00','08:15:00','16:00:00',2,1,2,NULL,2),(574,'2014-08-23',7,'07:30:00','08:15:00','16:00:00',2,1,2,NULL,2),(575,'2014-08-30',7,'07:30:00','08:15:00','16:00:00',2,1,2,NULL,2),(576,'2014-08-02',10,'07:30:00','08:15:00','16:00:00',3,1,1,NULL,3),(577,'2014-08-02',10,'07:30:00','08:15:00','16:00:00',3,2,7,NULL,3),(578,'2014-08-09',10,'07:30:00','08:15:00','16:00:00',3,1,1,NULL,3),(579,'2014-08-09',10,'07:30:00','08:15:00','16:00:00',3,2,7,NULL,3),(580,'2014-08-16',10,'07:30:00','08:15:00','16:00:00',3,1,1,NULL,3),(581,'2014-08-16',10,'07:30:00','08:15:00','16:00:00',3,2,7,NULL,3),(582,'2014-08-23',10,'07:30:00','08:15:00','16:00:00',3,1,1,NULL,3),(583,'2014-08-23',10,'07:30:00','08:15:00','16:00:00',3,2,7,NULL,3),(584,'2014-08-30',10,'07:30:00','08:15:00','16:00:00',3,1,1,NULL,3),(585,'2014-08-30',10,'07:30:00','08:15:00','16:00:00',3,2,7,NULL,3);
/*!40000 ALTER TABLE `trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip_type`
--

DROP TABLE IF EXISTS `trip_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trip_type` (
  `trip_type_code` int(11) NOT NULL,
  `trip_type_name` varchar(45) NOT NULL,
  PRIMARY KEY (`trip_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip_type`
--

LOCK TABLES `trip_type` WRITE;
/*!40000 ALTER TABLE `trip_type` DISABLE KEYS */;
INSERT INTO `trip_type` VALUES (1,'Kayak'),(2,'Canoe'),(3,'Raft');
/*!40000 ALTER TABLE `trip_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-09 10:04:30
