/*
SQLyog Ultimate v8.32 
MySQL - 5.5.36 : Database - gitslms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gitslms` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `gitslms`;

/*Table structure for table `leaveapplication` */

DROP TABLE IF EXISTS `leaveapplication`;

CREATE TABLE `leaveapplication` (
  `leaveid` varchar(10) DEFAULT NULL,
  `appid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `leavetype` varchar(20) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `datefrom` date NOT NULL,
  `dateto` date NOT NULL,
  `substitution` varchar(200) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'confirming substitutes',
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`appid`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

/*Data for the table `leaveapplication` */

insert  into `leaveapplication`(`leaveid`,`appid`,`name`,`email`,`designation`,`leavetype`,`reason`,`datefrom`,`dateto`,`substitution`,`department`,`status`,`image`) values ('appid094',94,'girish ameta','girish@gmail.com','professor','SPL','Family Function','2017-01-26','2017-01-27',NULL,'CSE','substitutes confirmed','girishsir.JPG');

/*Table structure for table `notification_table` */

DROP TABLE IF EXISTS `notification_table`;

CREATE TABLE `notification_table` (
  `nid` int(10) NOT NULL AUTO_INCREMENT,
  `sender` varchar(100) NOT NULL,
  `receiver` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `notifyid` int(10) DEFAULT '0',
  `appsubid` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `notification_table` */

insert  into `notification_table`(`nid`,`sender`,`receiver`,`message`,`notifyid`,`appsubid`) values (14,'girish ameta','Himanshu Chauhan','Has applied for substitution',0,'subs6'),(15,'Himanshu Chauhan','girish ameta','Has accepted substitution',0,'subs6'),(16,'girish ameta','substitute','Has applied for substitution',0,'subs1'),(17,'girish ameta','substitute','Has applied for substitution',0,'subs2'),(18,'girish ameta','substitute','Has applied for substitution',0,'subs3'),(19,'girish ameta','substitute','Has applied for substitution',0,'subs4'),(20,'girish ameta','substitute','Has applied for substitution',0,'subs5'),(21,'girish ameta','substitute','Has applied for substitution',0,'subs0'),(22,'girish ameta','substitute','Has applied for substitution',0,'subs0'),(23,'girish ameta','piyush','Has applied for substitution',0,'subs0'),(24,'piyush','girish ameta','Has accepted substitution',0,'subs0');

/*Table structure for table `staff` */

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `eid` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `mobile` int(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `joiningdate` date NOT NULL,
  `dob` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `CL` int(10) DEFAULT '15',
  `PL` int(10) DEFAULT '15',
  `SPL` int(10) DEFAULT '15',
  `others` int(10) DEFAULT '15',
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `eid` (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `staff` */

insert  into `staff`(`eid`,`email`,`password`,`name`,`mobile`,`gender`,`address`,`city`,`state`,`designation`,`department`,`joiningdate`,`dob`,`category`,`CL`,`PL`,`SPL`,`others`,`image`) values (19,'admin@gmail.com','123456789','arvind',987654,'MALE','pratap nagar','udaipur','rajasthan','admin','admin','2017-01-31','01-01-2017','admin',15,15,15,15,NULL),(23,'director@gmail.com','123456789','Director',56454,'MALE','pratap nagar','udaipur','rajasthan','director','director','2017-05-06','31-02-2017','director',15,15,15,15,NULL),(20,'girish@gmail.com','123456789','girish ameta',9876544,'MALE','adarsh nagar','udaipur','rajasthan','professor','CSE','2017-01-31','10-01-2017','Faculty',12,14,14,14,'girishsir.JPG'),(22,'himanshu@gmail.com','123456789','Himanshu Chauhan',686545,'MALE','kanak marg','udaipur','rajasthan','professor','EE','2011-01-26','05-02-2017','Faculty',15,15,15,15,'himanshusir.JPG'),(24,'piyush@gmail.com','123456789','piyush',56454,'MALE','adarsh nagar','udaipur','rajastham','Associate Professor','EE','2017-01-21','15-02-2017','Faculty',15,15,15,15,NULL),(14,'raghuveersir@gmail.com','123456789','raghuveer sir',421315,'MALE','pratap nagar','udaipur','raj','HOD','CSE','0000-00-00','31-01-2017','HOD',13,15,15,15,NULL),(25,'ritesh@gmail.com','123456789','Ritesh Sir',789456,'MALE','pratap','uadaipur','raj','Professor','CSE','2017-02-01','31-01-2017','Faculty',15,15,15,15,'riteshsir.JPG'),(28,'shivira@gmail.com','123456789','Shivira Bapna',78945612,'FEMALE','pratap','udaipur','rajasthan','Associate Professor','CSE','2017-01-29','05-03-2017','Faculty',15,15,15,15,'IMG_3454.JPG');

/*Table structure for table `substitutetable` */

DROP TABLE IF EXISTS `substitutetable`;

CREATE TABLE `substitutetable` (
  `subsid` varchar(10) NOT NULL,
  `leaveid` varchar(10) NOT NULL,
  `applier` varchar(100) NOT NULL,
  `substitute` varchar(100) NOT NULL,
  `year` varchar(50) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `slot` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL,
  `decisiveid` int(10) DEFAULT '0',
  PRIMARY KEY (`subsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `substitutetable` */

insert  into `substitutetable`(`subsid`,`leaveid`,`applier`,`substitute`,`year`,`semester`,`slot`,`subject`,`date`,`decisiveid`) values ('subs0','appid094','girish ameta','piyush','year','semester','slot','subject','date',1);

/* Trigger structure for table `leaveapplication` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `auto_inc` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `auto_inc` BEFORE INSERT ON `leaveapplication` FOR EACH ROW BEGIN
    SET NEW.leaveid =CONCAT('appid',LPAD((SELECT AUTO_INCREMENT
    FROM information_schema.TABLES
    WHERE TABLE_SCHEMA = DATABASE() AND
    TABLE_NAME = 'leaveapplication'), 3, '0'));
    END */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
