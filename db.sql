/*
SQLyog - Free MySQL GUI v5.19
Host - 5.5.17 : Database - db_biometric_blockchain
*********************************************************************
Server version : 5.5.17
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `db_biometric_blockchain`;

USE `db_biometric_blockchain`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `m_admin` */

DROP TABLE IF EXISTS `m_admin`;

CREATE TABLE `m_admin` (
  `admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `phone no` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `m_admin` */

insert into `m_admin` (`admin_id`,`userid`,`password`,`username`,`phone no`,`address`,`email`) values (1,'admin','admin','admin','9876787678','btm','admin@gmail.com');

/*Table structure for table `m_request` */

DROP TABLE IF EXISTS `m_request`;

CREATE TABLE `m_request` (
  `s_no` int(20) NOT NULL AUTO_INCREMENT,
  `adhar_no` varchar(50) DEFAULT NULL,
  `adharimg_feature` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `m_request` */

insert into `m_request` (`s_no`,`adhar_no`,`adharimg_feature`) values (4,'543267897654','47~77');

/*Table structure for table `m_user` */

DROP TABLE IF EXISTS `m_user`;

CREATE TABLE `m_user` (
  `sno` int(50) NOT NULL AUTO_INCREMENT,
  `author_no` varchar(13) DEFAULT NULL,
  `u_name` varchar(30) DEFAULT NULL,
  `u_pass` varchar(50) DEFAULT NULL,
  `f_name` varchar(30) DEFAULT NULL,
  `m_name` varchar(30) DEFAULT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `hosue_no` varchar(50) DEFAULT NULL,
  `village` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL,
  `pin` decimal(10,0) DEFAULT NULL,
  `phone` decimal(50,0) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `u_image` varchar(50) DEFAULT NULL,
  `u_fingerprint` varchar(50) DEFAULT NULL,
  `encrypted_features` varchar(600) DEFAULT NULL,
  `previous_shatg` varchar(300) DEFAULT NULL,
  `shatag` varchar(300) DEFAULT NULL,
  `timestamps` varchar(80) DEFAULT NULL,
  `nonce` int(60) DEFAULT NULL,
  `blkid` varchar(70) DEFAULT NULL,
  `status` varchar(300) DEFAULT 'unverified',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `m_user` */

insert into `m_user` (`sno`,`author_no`,`u_name`,`u_pass`,`f_name`,`m_name`,`dob`,`gender`,`hosue_no`,`village`,`district`,`state`,`pin`,`phone`,`email`,`u_image`,`u_fingerprint`,`encrypted_features`,`previous_shatg`,`shatag`,`timestamps`,`nonce`,`blkid`,`status`) values (1,'123456789012','dhs','6518','cvs','fcs','09-05-2022','male','11','taa','btm','ka','500006','9876543210','jothi@dhsinformatics.com','dhs.png','dhs.jpg','29~86','','5abff8aeb46030ed446602431f8d3bef9196a7b31fcb62ddd039789650f88477','09-05-2022  18:00:13',668,'B1.zip','verified');
insert into `m_user` (`sno`,`author_no`,`u_name`,`u_pass`,`f_name`,`m_name`,`dob`,`gender`,`hosue_no`,`village`,`district`,`state`,`pin`,`phone`,`email`,`u_image`,`u_fingerprint`,`encrypted_features`,`previous_shatg`,`shatag`,`timestamps`,`nonce`,`blkid`,`status`) values (2,'875678364748','nisha','3777','kumar','rama','06-03-2002','female','65','blr','blr','karnataka','560010','7760433598','namanabl13@gmail.com','download.png','3.jpg','101~309','5abff8aeb46030ed446602431f8d3bef9196a7b31fcb62ddd039789650f88477','71640ed52283d4c2217d311d32ebf809f4bdd5975474ac7f7b31aa00d054f053','25-05-2022  10:59:10',175,'B2.zip','verified');
insert into `m_user` (`sno`,`author_no`,`u_name`,`u_pass`,`f_name`,`m_name`,`dob`,`gender`,`hosue_no`,`village`,`district`,`state`,`pin`,`phone`,`email`,`u_image`,`u_fingerprint`,`encrypted_features`,`previous_shatg`,`shatag`,`timestamps`,`nonce`,`blkid`,`status`) values (3,'677456789456','netra','7169','kumar','siya','02-06-2000','female','67','blr','blr','karnataka','560010','7760433598','namanabl13@gmail.com','download.png','4.jpg','3~39','71640ed52283d4c2217d311d32ebf809f4bdd5975474ac7f7b31aa00d054f053','e7a4d0552041548ad63f8220cbdedfedd891fac12418ff1dbec7f3e952fe4a0d','03-06-2022  11:40:05',754,'B3.zip','verified');
insert into `m_user` (`sno`,`author_no`,`u_name`,`u_pass`,`f_name`,`m_name`,`dob`,`gender`,`hosue_no`,`village`,`district`,`state`,`pin`,`phone`,`email`,`u_image`,`u_fingerprint`,`encrypted_features`,`previous_shatg`,`shatag`,`timestamps`,`nonce`,`blkid`,`status`) values (4,'43267897654','Baskera','921','Raj','Sita','01-06-2000','male','34','blr','blr','karnataka','560010','7760433598','namanabl13@gmail.com','images.jpg','7.jpg','6~19','e7a4d0552041548ad63f8220cbdedfedd891fac12418ff1dbec7f3e952fe4a0d','c8bdf0b9202c86fe7d302d0fb0769e79846f20ec5b086548e186720a90d62393','06-06-2022  14:52:31',410,'B4.zip','verified');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
