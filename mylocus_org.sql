/*
SQLyog Community v11.52 (64 bit)
MySQL - 5.6.21 : Database - mylocus
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mylocus` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mylocus`;

/*Table structure for table `child` */

DROP TABLE IF EXISTS `child`;

CREATE TABLE `child` (
  `cID` int(16) NOT NULL,
  `cName` varchar(64) DEFAULT NULL,
  `tID` int(10) DEFAULT NULL,
  KEY `cID` (`cID`),
  KEY `tID` (`tID`),
  CONSTRAINT `child_ibfk_1` FOREIGN KEY (`tID`) REFERENCES `trackerdevice` (`tID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `child` */

insert  into `child`(`cID`,`cName`,`tID`) values (1,'Gunjan',1),(2,'Himanshi',2),(3,'child',3),(4,'childtest',4),(5,'childtest',5);

/*Table structure for table `child_safezone` */

DROP TABLE IF EXISTS `child_safezone`;

CREATE TABLE `child_safezone` (
  `cID` varchar(16) DEFAULT NULL,
  `Lat` double DEFAULT NULL,
  `Lon` double DEFAULT NULL,
  `Radius` int(11) DEFAULT NULL,
  `stTS` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `enTS` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `child_safezone` */

insert  into `child_safezone`(`cID`,`Lat`,`Lon`,`Radius`,`stTS`,`enTS`) values ('1',13.036541,77.576727,500,'2015-04-10 10:57:23','2016-02-05 23:59:59'),('2',12.927121,77.540905,100,'2015-03-12 10:57:25','2016-02-05 23:59:59'),('1',12.964624,77.523682,100,'2015-07-17 14:40:56','2016-03-26 23:12:50'),('2',13.036541,77.576727,100,'2015-04-10 12:19:56','2016-03-31 10:42:12');

/*Table structure for table `incomplete_data` */

DROP TABLE IF EXISTS `incomplete_data`;

CREATE TABLE `incomplete_data` (
  `trID` bigint(20) NOT NULL AUTO_INCREMENT,
  `tID` int(10) unsigned DEFAULT NULL,
  `TS` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Lat` double DEFAULT NULL,
  `Lon` double DEFAULT NULL,
  `Direction` varchar(64) DEFAULT NULL,
  `Speed` float DEFAULT NULL,
  `LocName` varchar(64) DEFAULT NULL,
  `Comments` varchar(256) DEFAULT NULL,
  `Battery` float DEFAULT NULL,
  PRIMARY KEY (`trID`),
  UNIQUE KEY `tID` (`tID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `incomplete_data` */

insert  into `incomplete_data`(`trID`,`tID`,`TS`,`Lat`,`Lon`,`Direction`,`Speed`,`LocName`,`Comments`,`Battery`) values (1,1,'2015-07-17 12:18:12',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `login_info` */

DROP TABLE IF EXISTS `login_info`;

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
  `PWD_ChangedON` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Comments` varchar(64) DEFAULT NULL,
  `PIN_ChangedON` timestamp NULL DEFAULT NULL,
  `PWD_ChangedFrom` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`lID`),
  KEY `userID` (`userID`),
  CONSTRAINT `login_info_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `parent_info` (`pID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `login_info` */

insert  into `login_info`(`lID`,`MobileNum`,`PWD`,`userID`,`utype`,`SecurityQ1`,`SecurityQ2`,`SecurityA1`,`securityA2`,`PIN`,`DEF_PIN`,`PWD_ChangedON`,`Comments`,`PIN_ChangedON`,`PWD_ChangedFrom`) values (1,'9901400004','111',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-10 12:10:49',NULL,'0000-00-00 00:00:00',NULL),(2,'77777','111',2,'parent',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `parent_child` */

DROP TABLE IF EXISTS `parent_child`;

CREATE TABLE `parent_child` (
  `pcID` int(11) NOT NULL AUTO_INCREMENT,
  `pID` int(16) DEFAULT NULL,
  `cID` int(16) DEFAULT NULL,
  PRIMARY KEY (`pcID`),
  UNIQUE KEY `cID` (`cID`),
  KEY `pID` (`pID`),
  CONSTRAINT `parent_child_ibfk_1` FOREIGN KEY (`pID`) REFERENCES `parent_info` (`pID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `parent_child` */

insert  into `parent_child`(`pcID`,`pID`,`cID`) values (1,1,1),(2,1,2),(3,2,3),(4,1,5);

/*Table structure for table `parent_info` */

DROP TABLE IF EXISTS `parent_info`;

CREATE TABLE `parent_info` (
  `pID` int(6) NOT NULL AUTO_INCREMENT,
  `pName1` varchar(25) DEFAULT NULL,
  `pMobile1` varchar(16) DEFAULT NULL,
  `pName2` varchar(25) DEFAULT NULL,
  `pMobile2` varchar(16) DEFAULT NULL,
  `pName3` varchar(25) DEFAULT NULL,
  `pMobile3` varchar(16) DEFAULT NULL,
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
  KEY `pID` (`pID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `parent_info` */

insert  into `parent_info`(`pID`,`pName1`,`pMobile1`,`pName2`,`pMobile2`,`pName3`,`pMobile3`,`pEmail1`,`pEmail2`,`pPhoto`,`pScanIdentityCard`,`pAddress`,`pCity`,`pState`,`pCode`,`pAddrLat`,`pAddrLon`) values (1,'Ritesh','9901400004',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'amrutha','77777','nitin','77777','swetha','888888',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `trackerdevice` */

DROP TABLE IF EXISTS `trackerdevice`;

CREATE TABLE `trackerdevice` (
  `tID` int(10) NOT NULL AUTO_INCREMENT,
  `tName` varchar(16) DEFAULT NULL,
  `tIMEI` varchar(32) DEFAULT NULL,
  `tMobileNumber` varchar(16) DEFAULT NULL,
  `tOperator` varchar(32) DEFAULT NULL,
  `tCircle` varchar(32) DEFAULT NULL,
  `tSIMNumber` varchar(16) DEFAULT NULL,
  `tCountry` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`tID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `trackerdevice` */

insert  into `trackerdevice`(`tID`,`tName`,`tIMEI`,`tMobileNumber`,`tOperator`,`tCircle`,`tSIMNumber`,`tCountry`) values (1,'t1','863071018134228','7879707660',NULL,NULL,NULL,NULL),(2,'t2','863071018132966','7879707685',NULL,NULL,NULL,NULL),(3,NULL,'111111111111111','1111111','airtel',NULL,NULL,NULL),(4,NULL,'112233445566778','1111111','airtel',NULL,NULL,NULL),(5,NULL,'111112222233333','1111111','airtel',NULL,NULL,NULL);

/*Table structure for table `trackerlocation` */

DROP TABLE IF EXISTS `trackerlocation`;

CREATE TABLE `trackerlocation` (
  `trID` bigint(20) NOT NULL AUTO_INCREMENT,
  `tID` int(10) DEFAULT NULL,
  `TS` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Lat` double DEFAULT NULL,
  `Lon` double DEFAULT NULL,
  `Direction` varchar(64) DEFAULT NULL,
  `Speed` float DEFAULT NULL,
  `LocName` varchar(64) DEFAULT NULL,
  `Comments` varchar(256) DEFAULT NULL,
  `Battery` float DEFAULT NULL,
  PRIMARY KEY (`trID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `trackerlocation` */

insert  into `trackerlocation`(`trID`,`tID`,`TS`,`Lat`,`Lon`,`Direction`,`Speed`,`LocName`,`Comments`,`Battery`) values (1,1,'2015-04-15 16:54:17',12.964624,77.523682,'NE',17.2048,'','',100),(2,1,'2015-04-16 15:34:18',12.95566,77.518976,'NE',23.2238,'','',100),(3,1,'2015-04-17 12:08:12',12.67555,77.818776,'NE',37.6694,'','',100),(4,1,'2015-04-17 15:34:20',12.964624,77.523682,'NE',20.9273,'','',99),(5,1,'2015-07-17 12:16:08',12.964624,77.523682,NULL,NULL,NULL,NULL,NULL);

/* Procedure structure for procedure `addChild` */

/*!50003 DROP PROCEDURE IF EXISTS  `addChild` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `addChild`(IN imei VARCHAR(25),
IN trackermobile VARCHAR(25),IN mobile1 VARCHAR(25),IN childName VARCHAR(15),IN operator VARCHAR(50),
OUT response VARCHAR(255),OUT usermobile VARCHAR(50))
BEGIN
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
     IF trno > 0 THEN 
     BEGIN
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
	INSERT INTO child(cid,cname,tid) VALUES(childId+1,childName,trackerID);
	SELECT pid INTO parent_ID FROM parent_info WHERE pmobile1 = mobile1;
	INSERT INTO parent_child(pid,cid) VALUES(parent_ID,childId+1);	
	END IF;	
	END;
	ELSE
	SET response = 'imei does not exists';
	END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `addUser` */

/*!50003 DROP PROCEDURE IF EXISTS  `addUser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `addUser`(in imei varchar(25),
IN trackermobile VARCHAR(25),IN mobile1 VARCHAR(25),IN name1 VARCHAR(50),
IN mobile2 VARCHAR(25),IN name2 VARCHAR(50),IN mobile3 VARCHAR(25),IN name3 VARCHAR(50),
IN pass VARCHAR(25),IN childName VARCHAR(15),IN operator VARCHAR(50),
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
	INSERT INTO child(cid,cname,tid) VALUES(childId+1,childName,trackerID);
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
end */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
