CREATE DATABASE  IF NOT EXISTS `mylocus` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `mylocus`;
-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: mylocus
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alarms`
--

DROP TABLE IF EXISTS `alarms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `alarms` (
  `aId` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT NULL,
  `timei` varchar(20) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `alarmtype` varchar(50) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `informed` int(11) DEFAULT NULL,
  PRIMARY KEY (`aId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alarms`
--

LOCK TABLES `alarms` WRITE;
/*!40000 ALTER TABLE `alarms` DISABLE KEYS */;
/*!40000 ALTER TABLE `alarms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_photos`
--

DROP TABLE IF EXISTS `album_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `album_photos` (
  `photoId` int(11) NOT NULL AUTO_INCREMENT,
  `albumId` int(11) DEFAULT NULL,
  `masterlink` varchar(256) DEFAULT NULL,
  `show` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `deletedTS` timestamp NULL DEFAULT NULL,
  `uploadTs` timestamp NULL DEFAULT NULL,
  `uploaded_userId` varchar(50) DEFAULT NULL,
  `Uploaded_utype` varchar(50) DEFAULT NULL,
  `deletedBy` varchar(50) DEFAULT NULL,
  `lastupdatedTS` timestamp NULL DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`photoId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_photos`
--

LOCK TABLES `album_photos` WRITE;
/*!40000 ALTER TABLE `album_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `album_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_videos`
--

DROP TABLE IF EXISTS `album_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `album_videos` (
  `videoId` int(11) NOT NULL AUTO_INCREMENT,
  `albumId` int(11) DEFAULT NULL,
  `masterlink` varchar(256) DEFAULT NULL,
  `show` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `deletedTS` timestamp NULL DEFAULT NULL,
  `uploadTs` timestamp NULL DEFAULT NULL,
  `uploaded_userId` varchar(50) DEFAULT NULL,
  `Uploaded_utype` varchar(50) DEFAULT NULL,
  `deletedBy` varchar(50) DEFAULT NULL,
  `lastupdatedTS` timestamp NULL DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`videoId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_videos`
--

LOCK TABLES `album_videos` WRITE;
/*!40000 ALTER TABLE `album_videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `album_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `albums` (
  `albumId` int(11) NOT NULL AUTO_INCREMENT,
  `albumName` varchar(256) DEFAULT NULL,
  `createdTS` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_userId` varchar(50) DEFAULT NULL,
  `created_utype` varchar(50) DEFAULT NULL,
  `showImage` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `deletedBy` varchar(50) DEFAULT NULL,
  `noOfPhotos` int(11) DEFAULT NULL,
  `lastupdatedTS` timestamp NULL DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `schoolId` int(11) DEFAULT NULL,
  PRIMARY KEY (`albumId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apn`
--

DROP TABLE IF EXISTS `apn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `apn` (
  `country` varchar(25) DEFAULT NULL,
  `operator` varchar(25) DEFAULT NULL,
  `apn` varchar(500) DEFAULT NULL,
  KEY `country` (`country`),
  KEY `operator` (`operator`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apn`
--

LOCK TABLES `apn` WRITE;
/*!40000 ALTER TABLE `apn` DISABLE KEYS */;
INSERT INTO `apn` VALUES ('INDIA','IDEA - KARNATAKA','internet');
/*!40000 ALTER TABLE `apn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `attendance` (
  `aId` int(11) NOT NULL AUTO_INCREMENT,
  `sId` int(11) DEFAULT NULL,
  `csId` int(11) DEFAULT NULL,
  `cId` int(11) DEFAULT NULL,
  `presentON` date DEFAULT NULL,
  `first_IN` time DEFAULT NULL,
  `last_OUT` time DEFAULT NULL,
  PRIMARY KEY (`aId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `battery_notification`
--

DROP TABLE IF EXISTS `battery_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `battery_notification` (
  `tID` int(10) DEFAULT NULL,
  `level1` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `level2` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `level3` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `level4` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `battery_notification`
--

LOCK TABLES `battery_notification` WRITE;
/*!40000 ALTER TABLE `battery_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `battery_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child`
--

DROP TABLE IF EXISTS `child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `child` (
  `cID` int(16) NOT NULL,
  `cName` varchar(64) DEFAULT NULL,
  `tID` bigint(20) DEFAULT NULL,
  `regID` varchar(150) DEFAULT NULL,
  `os` varchar(15) DEFAULT NULL,
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child`
--

LOCK TABLES `child` WRITE;
/*!40000 ALTER TABLE `child` DISABLE KEYS */;
INSERT INTO `child` VALUES (1,'test',1,NULL,NULL),(2,'ziac',4,'APA91bGmOufut7eLfG4GThbXiBbXhmgB-AGolkpz0KMRLmU-T3PGRIjBkdp5XdYEIgXIZJ-aWh8aU7GhK-UpajUW_APa5usgMGf3GYY4kb5cwZZPbjABe-rplRwfITkLzWz03GnFwj0Q','Android'),(3,'ziac',4,'APA91bGmOufut7eLfG4GThbXiBbXhmgB-AGolkpz0KMRLmU-T3PGRIjBkdp5XdYEIgXIZJ-aWh8aU7GhK-UpajUW_APa5usgMGf3GYY4kb5cwZZPbjABe-rplRwfITkLzWz03GnFwj0Q','Android');
/*!40000 ALTER TABLE `child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_photos`
--

DROP TABLE IF EXISTS `child_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `child_photos` (
  `child_photoID` int(11) NOT NULL AUTO_INCREMENT,
  `photoId` int(11) DEFAULT NULL,
  `childID` int(10) DEFAULT NULL,
  `albumID` int(11) DEFAULT '0',
  `TS` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image_url` varchar(500) DEFAULT NULL,
  `Message` varchar(500) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `showImage` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`child_photoID`),
  KEY `childID` (`childID`),
  KEY `TS` (`TS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_photos`
--

LOCK TABLES `child_photos` WRITE;
/*!40000 ALTER TABLE `child_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `child_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_safezone`
--

DROP TABLE IF EXISTS `child_safezone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `child_safezone` (
  `zoneId` int(11) NOT NULL AUTO_INCREMENT,
  `cID` varchar(16) DEFAULT NULL,
  `Lat` double DEFAULT NULL,
  `Lon` double DEFAULT NULL,
  `Radius` float DEFAULT NULL,
  `stTS` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `enTS` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `safezonename` varchar(500) DEFAULT NULL,
  KEY `zoneId` (`zoneId`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_safezone`
--

LOCK TABLES `child_safezone` WRITE;
/*!40000 ALTER TABLE `child_safezone` DISABLE KEYS */;
/*!40000 ALTER TABLE `child_safezone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_school`
--

DROP TABLE IF EXISTS `child_school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `child_school` (
  `cID` int(16) NOT NULL,
  `sID` int(10) DEFAULT NULL,
  `cs_Class` varchar(8) DEFAULT NULL,
  `cs_Section` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `sID` (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_school`
--

LOCK TABLES `child_school` WRITE;
/*!40000 ALTER TABLE `child_school` DISABLE KEYS */;
/*!40000 ALTER TABLE `child_school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_tracker`
--

DROP TABLE IF EXISTS `child_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `child_tracker` (
  `ctID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(16) DEFAULT NULL,
  `tID` int(10) DEFAULT NULL,
  `csID` int(16) DEFAULT NULL,
  PRIMARY KEY (`ctID`),
  KEY `cID` (`cID`),
  KEY `tID` (`tID`),
  KEY `csID` (`csID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_tracker`
--

LOCK TABLES `child_tracker` WRITE;
/*!40000 ALTER TABLE `child_tracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `child_tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_videos`
--

DROP TABLE IF EXISTS `child_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `child_videos` (
  `child_videoID` int(11) NOT NULL AUTO_INCREMENT,
  `videoId` int(11) DEFAULT NULL,
  `childID` int(10) DEFAULT NULL,
  `albumID` int(11) DEFAULT '0',
  `TS` timestamp NULL DEFAULT NULL,
  `video_url` varchar(500) DEFAULT NULL,
  `Message` varchar(500) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `showVideo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`child_videoID`),
  KEY `childID` (`childID`),
  KEY `TS` (`TS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_videos`
--

LOCK TABLES `child_videos` WRITE;
/*!40000 ALTER TABLE `child_videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `child_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `class` (
  `csID` int(16) NOT NULL AUTO_INCREMENT,
  `csClass` varchar(64) DEFAULT NULL,
  `section` varchar(16) DEFAULT NULL,
  `tchID` int(16) DEFAULT NULL,
  `sID` int(16) DEFAULT NULL,
  PRIMARY KEY (`csID`),
  KEY `cID` (`csID`),
  KEY `tchID` (`tchID`),
  KEY `csClass` (`csClass`),
  KEY `section` (`section`),
  KEY `sID` (`sID`),
  KEY `sID_2` (`sID`),
  KEY `csClass_2` (`csClass`),
  KEY `section_2` (`section`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_alert`
--

DROP TABLE IF EXISTS `device_alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `device_alert` (
  `alert_uID` int(16) NOT NULL AUTO_INCREMENT,
  `tID` int(10) DEFAULT NULL,
  `cID` int(10) DEFAULT NULL,
  `alert_type` int(10) DEFAULT NULL,
  `alert_TS` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `alert_msg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`alert_uID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_alert`
--

LOCK TABLES `device_alert` WRITE;
/*!40000 ALTER TABLE `device_alert` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deviceparameters`
--

DROP TABLE IF EXISTS `deviceparameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `deviceparameters` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tIMEI` varchar(16) DEFAULT NULL,
  `tID` int(11) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `sos1` varchar(16) DEFAULT NULL,
  `sos2` varchar(16) DEFAULT NULL,
  `sos3` varchar(16) DEFAULT NULL,
  `GPS_Interval` time DEFAULT NULL,
  `LBS_Interval` time DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `FN1` varchar(16) DEFAULT NULL,
  `FN1_Name` varchar(100) DEFAULT NULL,
  `FN2` varchar(16) DEFAULT NULL,
  `FN2_Name` varchar(100) DEFAULT NULL,
  `FN3` varchar(16) DEFAULT NULL,
  `FN3_Name` varchar(100) DEFAULT NULL,
  `GTIMER` int(11) DEFAULT NULL,
  `TIMER` int(11) DEFAULT NULL,
  `PWRLIMIT` int(11) DEFAULT NULL,
  `RING` int(11) DEFAULT NULL,
  `CALLMODE` int(11) DEFAULT NULL,
  `SIMALM` int(11) DEFAULT NULL,
  `BATALM` int(11) DEFAULT NULL,
  `PWRONALM` int(11) DEFAULT NULL,
  `PWROFFALM` int(11) DEFAULT NULL,
  `BLINDALM` int(11) DEFAULT NULL,
  `SOSALM` int(11) DEFAULT NULL,
  `lastUpdated` timestamp NULL DEFAULT NULL,
  `lastUpdatedBy` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deviceparameters`
--

LOCK TABLES `deviceparameters` WRITE;
/*!40000 ALTER TABLE `deviceparameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `deviceparameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incomplete_data`
--

DROP TABLE IF EXISTS `incomplete_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `incomplete_data` (
  `trID` bigint(20) NOT NULL AUTO_INCREMENT,
  `tID` int(10) unsigned DEFAULT NULL,
  `TS` timestamp NULL DEFAULT NULL,
  `Lat` double DEFAULT NULL,
  `Lon` double DEFAULT NULL,
  `Direction` varchar(64) DEFAULT NULL,
  `Speed` float DEFAULT NULL,
  `LocName` varchar(64) DEFAULT NULL,
  `Comments` varchar(256) DEFAULT NULL,
  `Battery` float DEFAULT NULL,
  `gps_lbs` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`trID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incomplete_data`
--

LOCK TABLES `incomplete_data` WRITE;
/*!40000 ALTER TABLE `incomplete_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `incomplete_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_info`
--

DROP TABLE IF EXISTS `login_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `login_info` (
  `lID` int(11) NOT NULL AUTO_INCREMENT,
  `MobileNum` varchar(16) DEFAULT NULL,
  `PWD` varchar(16) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `utype` varchar(16) DEFAULT NULL,
  `SecurityQ1` varchar(64) DEFAULT NULL,
  `SecurityQ2` varchar(64) DEFAULT NULL,
  `SecurityA1` varchar(64) DEFAULT NULL,
  `securityA2` varchar(64) DEFAULT NULL,
  `PIN` int(11) DEFAULT NULL,
  `DEF_PIN` int(11) DEFAULT NULL,
  `PWD_ChangedON` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Comments` varchar(64) DEFAULT NULL,
  `PIN_ChangedON` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PWD_ChangedFrom` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`lID`),
  KEY `MobileNum` (`MobileNum`),
  KEY `MobileNum_2` (`MobileNum`),
  KEY `PWD` (`PWD`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_info`
--

LOCK TABLES `login_info` WRITE;
/*!40000 ALTER TABLE `login_info` DISABLE KEYS */;
INSERT INTO `login_info` VALUES (1,'9972595464','qwer',1,'parent',NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-13 14:54:55',NULL,'0000-00-00 00:00:00',NULL),(2,'9972595464','qwer',2,'parent',NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-13 15:06:36',NULL,'0000-00-00 00:00:00',NULL),(3,'9845258746','1234',3,'parent',NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-16 11:30:25',NULL,'0000-00-00 00:00:00',NULL),(4,'9845258746','1234',4,'parent',NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-16 11:30:25',NULL,'0000-00-00 00:00:00',NULL);
/*!40000 ALTER TABLE `login_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logintrack`
--

DROP TABLE IF EXISTS `logintrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `logintrack` (
  `TrID` bigint(20) NOT NULL AUTO_INCREMENT,
  `trTimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `trLoginID` int(11) DEFAULT NULL,
  `trLoginTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `trLogoutTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `trLogoutReason` varchar(32) DEFAULT NULL,
  `trLoginDevice` varchar(32) DEFAULT NULL,
  `trLoginIP` varchar(32) DEFAULT NULL,
  `trLoginMobileNum` varchar(32) DEFAULT NULL,
  `trBrowserInfo` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`TrID`),
  KEY `TrID` (`TrID`),
  KEY `trLoginID` (`trLoginID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logintrack`
--

LOCK TABLES `logintrack` WRITE;
/*!40000 ALTER TABLE `logintrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `logintrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_details`
--

DROP TABLE IF EXISTS `notification_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `notification_details` (
  `nID` int(16) NOT NULL AUTO_INCREMENT,
  `Notification_ID` int(16) DEFAULT NULL,
  `Receiver_mobile` varchar(16) DEFAULT NULL,
  `Receiver_type` varchar(16) DEFAULT NULL,
  `Message` varchar(564) DEFAULT NULL,
  `Processed` tinyint(1) DEFAULT NULL,
  `SubmissionTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ProcessedTime` timestamp NULL DEFAULT NULL,
  `class` varchar(16) DEFAULT NULL,
  `section` varchar(16) DEFAULT NULL,
  `schoolID` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`nID`),
  KEY `Notification_ID` (`Notification_ID`),
  KEY `Notification_ID_2` (`Notification_ID`),
  KEY `Processed` (`Processed`),
  KEY `Receiver_mobile` (`Receiver_mobile`),
  KEY `SubmissionTime` (`SubmissionTime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_details`
--

LOCK TABLES `notification_details` WRITE;
/*!40000 ALTER TABLE `notification_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_master`
--

DROP TABLE IF EXISTS `notification_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `notification_master` (
  `Notification_ID` int(20) NOT NULL AUTO_INCREMENT,
  `Sender_mobile` varchar(16) DEFAULT NULL,
  `Sender_type` varchar(16) DEFAULT NULL,
  `Message` varchar(564) DEFAULT NULL,
  `Received` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Processed` tinyint(1) DEFAULT NULL,
  `ProcessedTS` timestamp NULL DEFAULT NULL,
  `class` varchar(16) DEFAULT NULL,
  `section` varchar(16) DEFAULT NULL,
  `schoolID` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`Notification_ID`),
  KEY `Sender_mobile` (`Sender_mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_master`
--

LOCK TABLES `notification_master` WRITE;
/*!40000 ALTER TABLE `notification_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `parent` (
  `pID` int(6) NOT NULL AUTO_INCREMENT,
  `pName1` varchar(15) DEFAULT NULL,
  `pMobile1` varchar(16) DEFAULT NULL,
  `pName2` varchar(15) DEFAULT NULL,
  `pMobile2` varchar(16) DEFAULT NULL,
  `pName3` varchar(15) DEFAULT NULL,
  `pMobile3` varchar(16) DEFAULT NULL,
  `regId` blob,
  `os` varchar(50) DEFAULT NULL,
  `pEmail1` varchar(64) DEFAULT NULL,
  `pEmail2` varchar(64) DEFAULT NULL,
  `pPhoto` varchar(256) DEFAULT NULL,
  `pScanIdentityCard` varchar(256) DEFAULT NULL,
  `pAddress` varchar(256) DEFAULT NULL,
  `pCity` varchar(64) DEFAULT NULL,
  `pState` varchar(64) DEFAULT NULL,
  `pCode` varchar(16) DEFAULT NULL,
  `pAddrLat` varchar(11) DEFAULT NULL,
  `pAddrLon` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`pID`),
  KEY `pID` (`pID`),
  KEY `pMobile1` (`pMobile1`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent`
--

LOCK TABLES `parent` WRITE;
/*!40000 ALTER TABLE `parent` DISABLE KEYS */;
/*!40000 ALTER TABLE `parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent_child`
--

DROP TABLE IF EXISTS `parent_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `parent_child` (
  `pcID` int(11) NOT NULL AUTO_INCREMENT,
  `pID` int(16) DEFAULT NULL,
  `cID` int(16) DEFAULT NULL,
  PRIMARY KEY (`pcID`),
  KEY `pID` (`pID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent_child`
--

LOCK TABLES `parent_child` WRITE;
/*!40000 ALTER TABLE `parent_child` DISABLE KEYS */;
INSERT INTO `parent_child` VALUES (5,4,3);
/*!40000 ALTER TABLE `parent_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent_info`
--

DROP TABLE IF EXISTS `parent_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `parent_info` (
  `pID` int(6) NOT NULL AUTO_INCREMENT,
  `pName1` varchar(15) DEFAULT NULL,
  `pMobile1` varchar(16) DEFAULT NULL,
  `pName2` varchar(15) DEFAULT NULL,
  `pMobile2` varchar(16) DEFAULT NULL,
  `pName3` varchar(15) DEFAULT NULL,
  `pMobile3` varchar(16) DEFAULT NULL,
  `regId` blob,
  `os` varchar(50) DEFAULT NULL,
  `pEmail1` varchar(64) DEFAULT NULL,
  `pEmail2` varchar(64) DEFAULT NULL,
  `pPhoto` varchar(256) DEFAULT NULL,
  `pScanIdentityCard` varchar(256) DEFAULT NULL,
  `pAddress` varchar(256) DEFAULT NULL,
  `pCity` varchar(64) DEFAULT NULL,
  `pState` varchar(64) DEFAULT NULL,
  `pCode` varchar(16) DEFAULT NULL,
  `pAddrLat` varchar(11) DEFAULT NULL,
  `pAddrLon` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`pID`),
  KEY `pID` (`pID`),
  KEY `pMobile1` (`pMobile1`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent_info`
--

LOCK TABLES `parent_info` WRITE;
/*!40000 ALTER TABLE `parent_info` DISABLE KEYS */;
INSERT INTO `parent_info` VALUES (4,'ramesh','9845258746','cug','9008098108','cug2','9008098101',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `parent_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `principals`
--

DROP TABLE IF EXISTS `principals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `principals` (
  `spID` int(16) NOT NULL AUTO_INCREMENT,
  `spName` varchar(64) DEFAULT NULL,
  `spMobile1` varchar(16) DEFAULT NULL,
  `spMobile2` varchar(16) DEFAULT NULL,
  `spPIN` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`spID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `principals`
--

LOCK TABLES `principals` WRITE;
/*!40000 ALTER TABLE `principals` DISABLE KEYS */;
/*!40000 ALTER TABLE `principals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `safe_zone`
--

DROP TABLE IF EXISTS `safe_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `safe_zone` (
  `zoneId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zoneName` varchar(500) DEFAULT NULL,
  `childId` int(10) unsigned DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `radius` float DEFAULT NULL,
  `Sunday` tinyint(4) DEFAULT NULL,
  `sun_sttime` time DEFAULT NULL,
  `sun_entime` time DEFAULT NULL,
  `Monday` tinyint(4) DEFAULT NULL,
  `mon_sttime` time DEFAULT NULL,
  `mon_entime` time DEFAULT NULL,
  `Tuesday` tinyint(4) DEFAULT NULL,
  `tue_sttime` time DEFAULT NULL,
  `tue_entime` time DEFAULT NULL,
  `Wednesday` tinyint(4) DEFAULT NULL,
  `wed_sttime` time DEFAULT NULL,
  `wed_entime` time DEFAULT NULL,
  `Thursday` tinyint(4) DEFAULT NULL,
  `thur_sttime` time DEFAULT NULL,
  `thur_entime` time DEFAULT NULL,
  `Friday` tinyint(4) DEFAULT NULL,
  `fri_sttime` time DEFAULT NULL,
  `fri_entime` time DEFAULT NULL,
  `Saturday` tinyint(4) DEFAULT NULL,
  `sat_sttime` time DEFAULT NULL,
  `sat_entime` time DEFAULT NULL,
  PRIMARY KEY (`zoneId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safe_zone`
--

LOCK TABLES `safe_zone` WRITE;
/*!40000 ALTER TABLE `safe_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `safe_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `school` (
  `sID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sName` varchar(64) DEFAULT NULL,
  `sLat` varchar(16) DEFAULT NULL,
  `sLon` varchar(16) DEFAULT NULL,
  `sModifiedBy` varchar(32) DEFAULT NULL,
  `sModifiedOn` timestamp NULL DEFAULT NULL,
  `sAddress` varchar(256) DEFAULT NULL,
  `sCity` varchar(16) DEFAULT NULL,
  `sState` varchar(16) DEFAULT NULL,
  `sEmail1` varchar(32) DEFAULT NULL,
  `sEmail2` varchar(32) DEFAULT NULL,
  `OfficeNo` varchar(16) DEFAULT NULL,
  `MobileNo` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_event`
--

DROP TABLE IF EXISTS `school_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `school_event` (
  `eventId` int(11) NOT NULL AUTO_INCREMENT,
  `sID` int(16) DEFAULT NULL,
  `stDate` date DEFAULT NULL,
  `enDate` date DEFAULT NULL,
  `eventName` varchar(256) DEFAULT NULL,
  `holiday` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_event`
--

LOCK TABLES `school_event` WRITE;
/*!40000 ALTER TABLE `school_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_principal`
--

DROP TABLE IF EXISTS `school_principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `school_principal` (
  `sID` int(10) DEFAULT NULL,
  `spID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_principal`
--

LOCK TABLES `school_principal` WRITE;
/*!40000 ALTER TABLE `school_principal` DISABLE KEYS */;
INSERT INTO `school_principal` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `school_principal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_safezone`
--

DROP TABLE IF EXISTS `school_safezone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `school_safezone` (
  `csId` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `tchId` int(11) DEFAULT NULL,
  `cls` varchar(64) DEFAULT NULL,
  `section` varchar(64) DEFAULT NULL,
  `safe_lat` double DEFAULT NULL,
  `safe_lon` double DEFAULT NULL,
  `radius` float DEFAULT NULL,
  `stTS` timestamp NULL DEFAULT NULL,
  `enTS` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`csId`),
  KEY `sid` (`sid`),
  KEY `tchId` (`tchId`),
  KEY `cls` (`cls`),
  KEY `section` (`section`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_safezone`
--

LOCK TABLES `school_safezone` WRITE;
/*!40000 ALTER TABLE `school_safezone` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_safezone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `special_time`
--

DROP TABLE IF EXISTS `special_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `special_time` (
  `spId` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` date NOT NULL,
  `start_time` time NOT NULL DEFAULT '00:00:00',
  `end_time` time NOT NULL DEFAULT '00:00:00',
  `ID` int(16) NOT NULL,
  `type` varchar(64) DEFAULT NULL,
  `school` varchar(34) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `section` varchar(20) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`spId`),
  KEY `school` (`school`),
  KEY `class` (`class`),
  KEY `section` (`section`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `special_time`
--

LOCK TABLES `special_time` WRITE;
/*!40000 ALTER TABLE `special_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `special_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teacher` (
  `tchID` int(16) NOT NULL AUTO_INCREMENT,
  `tchName` varchar(64) DEFAULT NULL,
  `tchMobile1` varchar(16) DEFAULT NULL,
  `tchMobile2` varchar(16) DEFAULT NULL,
  `sID` int(10) unsigned DEFAULT NULL,
  `className` varchar(16) DEFAULT NULL,
  `section` varchar(16) DEFAULT NULL,
  `stTS` timestamp NULL DEFAULT NULL,
  `enTS` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`tchID`),
  KEY `className` (`className`),
  KEY `section` (`section`),
  KEY `sID` (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT NULL,
  `stlat` double DEFAULT NULL,
  `enlat` double DEFAULT NULL,
  `stlon` double DEFAULT NULL,
  `enlon` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable`
--

DROP TABLE IF EXISTS `timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `timetable` (
  `school` varchar(34) DEFAULT NULL,
  `Class` varchar(20) DEFAULT NULL,
  `section` varchar(20) DEFAULT NULL,
  `day` varchar(20) DEFAULT NULL,
  `starttime` time DEFAULT NULL,
  `endtime` time DEFAULT NULL,
  `subject` varchar(34) DEFAULT NULL,
  `tchid` int(16) DEFAULT NULL,
  `tchname` varchar(34) DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable`
--

LOCK TABLES `timetable` WRITE;
/*!40000 ALTER TABLE `timetable` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackerdevice`
--

DROP TABLE IF EXISTS `trackerdevice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trackerdevice` (
  `tID` bigint(20) NOT NULL,
  `tName` varchar(16) DEFAULT NULL,
  `tIMEI` varchar(32) DEFAULT NULL,
  `tMobileNumber` varchar(16) DEFAULT NULL,
  `tOperator` varchar(32) DEFAULT NULL,
  `tCircle` varchar(32) DEFAULT NULL,
  `tSIMNumber` varchar(16) DEFAULT NULL,
  `tCountry` varchar(32) DEFAULT NULL,
  `tapn` varchar(50) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `sos1` varchar(16) DEFAULT NULL,
  `sos2` varchar(16) DEFAULT NULL,
  `sos3` varchar(16) DEFAULT NULL,
  `GPS_Interval` time DEFAULT NULL,
  `LBS_Interval` time DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `FN1` varchar(16) DEFAULT NULL,
  `FN1_Name` varchar(100) DEFAULT NULL,
  `FN2` varchar(16) DEFAULT NULL,
  `FN2_Name` varchar(100) DEFAULT NULL,
  `FN3` varchar(16) DEFAULT NULL,
  `FN3_Name` varchar(100) DEFAULT NULL,
  `GTIMER` int(11) DEFAULT NULL,
  `TIMER` int(11) DEFAULT NULL,
  `PWRLIMIT` int(11) DEFAULT NULL,
  `RING` int(11) DEFAULT NULL,
  `CALLMODE` int(11) DEFAULT NULL,
  `SIMALM` int(11) DEFAULT NULL,
  `BATALM` int(11) DEFAULT NULL,
  `PWRONALM` int(11) DEFAULT NULL,
  `PWROFFALM` int(11) DEFAULT NULL,
  `BLINDALM` int(11) DEFAULT NULL,
  `SOSALM` int(11) DEFAULT NULL,
  `lastUpdated` timestamp NULL DEFAULT NULL,
  `lastUpdatedBy` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`tID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackerdevice`
--

LOCK TABLES `trackerdevice` WRITE;
/*!40000 ALTER TABLE `trackerdevice` DISABLE KEYS */;
INSERT INTO `trackerdevice` VALUES (1,'t1','863071018134228','7879707660',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'t2','863071018132966','7879707685',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,'111111111111111','1111111','airtel',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,'867597010706015','9008033966','IDEA - KARNATAKA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,'111112222233333','1111111','airtel',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `trackerdevice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackerlocation`
--

DROP TABLE IF EXISTS `trackerlocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trackerlocation` (
  `trID` bigint(20) NOT NULL AUTO_INCREMENT,
  `tID` int(10) unsigned DEFAULT NULL,
  `TS` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Lat` double DEFAULT NULL,
  `Lon` double DEFAULT NULL,
  `Direction` varchar(64) DEFAULT NULL,
  `Speed` float DEFAULT NULL,
  `LocName` varchar(64) DEFAULT NULL,
  `Comments` varchar(256) DEFAULT NULL,
  `Battery` float DEFAULT NULL,
  `gps_lbs` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`trID`),
  KEY `tID` (`tID`),
  KEY `Battery` (`Battery`),
  KEY `TS` (`TS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackerlocation`
--

LOCK TABLES `trackerlocation` WRITE;
/*!40000 ALTER TABLE `trackerlocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `trackerlocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videoalbums`
--

DROP TABLE IF EXISTS `videoalbums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `videoalbums` (
  `albumId` int(11) NOT NULL AUTO_INCREMENT,
  `albumName` varchar(256) DEFAULT NULL,
  `createdTS` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_userId` varchar(50) DEFAULT NULL,
  `created_utype` varchar(50) DEFAULT NULL,
  `showVideo` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `deletedBy` varchar(50) DEFAULT NULL,
  `noOfVideos` int(11) DEFAULT NULL,
  `lastupdatedTS` timestamp NULL DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`albumId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videoalbums`
--

LOCK TABLES `videoalbums` WRITE;
/*!40000 ALTER TABLE `videoalbums` DISABLE KEYS */;
/*!40000 ALTER TABLE `videoalbums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone_notification`
--

DROP TABLE IF EXISTS `zone_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `zone_notification` (
  `zone_notificationId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zoneId` int(11) DEFAULT NULL,
  `zoneName` varchar(100) DEFAULT NULL,
  `childId` int(10) unsigned DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `ts` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`zone_notificationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone_notification`
--

LOCK TABLES `zone_notification` WRITE;
/*!40000 ALTER TABLE `zone_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `zone_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mylocus'
--

--
-- Dumping routines for database 'mylocus'
--
/*!50003 DROP PROCEDURE IF EXISTS `addUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addUser`(in imei varchar(25),
IN trackermobile VARCHAR(25),IN mobile1 VARCHAR(25),IN name1 VARCHAR(50),
IN mobile2 VARCHAR(25),IN name2 VARCHAR(50),IN mobile3 VARCHAR(25),IN name3 VARCHAR(50),
IN pass VARCHAR(25),IN childName VARCHAR(15),IN operator VARCHAR(50),
IN regid varchar(150), IN os varchar(15),
OUT response VARCHAR(255),OUT usermobile VARCHAR(15))
begin
 DECLARE trno INT;
   DECLARE tmob INT;
   DECLARE childId INT;
   DECLARE trackerId INT;
   DECLARE parent_child INT;
   DECLARE parentid INT;
   DECLARE child_Id INT;
   DECLARE count_parent INT;
   DECLARE parent_ID INT;
   DECLARE mobilenum VARCHAR(15);
   DECLARE tracker_Id INT;
   DECLARE chId INT;
   DECLARE par_Id INT;
   DECLARE count_no INT;
   DECLARE p1 VARCHAR(15);
   DECLARE p2 VARCHAR(15);
   DECLARE p3 VARCHAR(15);
   
	SELECT COUNT(*) INTO trno FROM trackerdevice WHERE timei = imei;
	if trno > 0 then 
		begin
			SELECT tmobilenumber INTO tmob FROM trackerdevice WHERE timei = imei;
				IF tmob IS NOT NULL  THEN 
					SELECT tid INTO tracker_Id FROM trackerdevice WHERE timei = imei;
					SELECT cid INTO chId FROM child WHERE tid= tracker_Id;
					SELECT pid INTO par_Id FROM parent_child WHERE cid= chId;
					SELECT pmobile1,pmobile2,pmobile3 INTO p1,p2,p3 FROM parent_info WHERE pid = par_Id;
					IF p1 = mobile1 || p2 = mobile1 || p3 = mobile1 THEN 
						SET response = 'mapped already';
						SET usermobile = p1;
					ELSE 
						SET response = 'mapped already to some other no.';
					END IF;
				ELSE
					SET response = 'mapping no.';
					UPDATE trackerdevice SET tmobilenumber = trackermobile,tOperator = operator WHERE timei = imei;
					SELECT tid INTO trackerID FROM trackerdevice WHERE timei = imei;
					SELECT MAX(cid) INTO childId FROM child;
					INSERT INTO child(cid,cname,tid,regid,os) VALUES(childId+1,childName,trackerID,regid,os);
					SELECT COUNT(*) INTO count_parent FROM parent_info WHERE pmobile1 = mobile1;
					IF count_parent > 0 THEN 
						SELECT pid INTO parent_ID FROM parent_info WHERE pmobile1 = mobile1;
						INSERT INTO parent_child(pid,cid) VALUES(parent_ID,childId+1);
					ELSE	
						INSERT INTO parent_info(pname1,pmobile1,pname2,pmobile2,pname3,pmobile3) VALUES(name1,mobile1,name2,mobile2,name3,mobile3);
						SELECT MAX(pid) INTO parentid FROM parent_info;
						INSERT INTO parent_child(pid,cid) VALUES(parentid,childId+1);
						INSERT INTO login_info(mobilenum,pwd,userid,utype) VALUES(mobile1,pass,parentid,'parent');
					end if;
				end if;
		end;
     else
		set response = 'imei does not exists';
     end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-22 18:39:03
