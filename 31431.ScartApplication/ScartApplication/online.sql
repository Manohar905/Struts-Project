/*
SQLyog Community Edition- MySQL GUI v5.22a
Host - 5.0.45 : Database - scart
*********************************************************************
Server version : 5.0.45
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `scart`;

USE `scart`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `adminuser` */

DROP TABLE IF EXISTS `adminuser`;

CREATE TABLE `adminuser` (
  `id` int(11) NOT NULL auto_increment,
  `userid` varchar(40) NOT NULL default '',
  `password` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `adminuser` */

insert  into `adminuser`(`id`,`userid`,`password`) values (1,'admin','password'),(2,'1','1');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL auto_increment,
  `categoryname` varchar(60) default NULL,
  PRIMARY KEY  (`categoryid`)
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`categoryid`,`categoryname`) values (104,'Television Bharat'),(126,'Automobile'),(138,'Mobile'),(174,'Computer');

/*Table structure for table `cities` */

DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
  `cityId` int(11) NOT NULL auto_increment,
  `cityName` varchar(50) NOT NULL,
  `charges` int(11) NOT NULL,
  PRIMARY KEY  (`cityId`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Data for the table `cities` */

insert  into `cities`(`cityId`,`cityName`,`charges`) values (1,'Jammu & Kashmir',1000),(2,'Himachal Pradesh',2000),(3,'Punjab',3000),(4,'Uttaranchal',4000),(5,'Haryana',5000),(6,'Delhi',6000),(7,'Arunachal Pradesh',7000),(8,'Uttar Pradesh',8000),(10,'Rajsthan',10000),(11,'Assam',11000),(12,'Nagaland',12000),(13,'Bihar',13000),(14,'Meghalaya',14000),(15,'Manipur',15000),(16,'Pune',16000),(17,'Gujrat',17000),(18,'Madhya Pradesh',18000),(19,'Jharkhand',19000),(20,'Mijoram',20000),(21,'Weast Bangal',21000),(22,'Chhattis Garh',22000),(23,'Orissa',23000),(24,'Maharashtra',24000),(25,'Andhra Pradesh',25000),(26,'Goa',26000),(27,'Karnataka',27000),(28,'Tamilnadu',28000),(29,'Kerala',29000);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` int(11) NOT NULL auto_increment,
  `storename` varchar(50) NOT NULL default '',
  `storeurl` varchar(50) NOT NULL default '',
  `ordernoticeemail` varchar(50) NOT NULL default '',
  `cursymbol` varchar(6) NOT NULL default '',
  `curcode` varchar(6) NOT NULL default '',
  `aboutustext` varchar(200) NOT NULL,
  `shipdeltext` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=177 DEFAULT CHARSET=latin1;

/*Data for the table `config` */

insert  into `config`(`id`,`storename`,`storeurl`,`ordernoticeemail`,`cursymbol`,`curcode`,`aboutustext`,`shipdeltext`) values (9,'Gyan Store','http:/mydomain.net','vinay@gmail.com','$','Dollar','This is Vinay','This is Vinay'),(10,'Gyan Store','http:/mydomain.net','vinay@gmail.com','$','Dollar','This is Vinay','This is Vinay'),(11,'Roseindia','http://roseindia.net','vinay@roseindia.net','#','$','This is Vinay','This is Vinay');

/*Table structure for table `orderitems` */

DROP TABLE IF EXISTS `orderitems`;

CREATE TABLE `orderitems` (
  `orderid` int(5) NOT NULL auto_increment,
  `productid` int(11) default NULL,
  `name` varchar(255) default NULL,
  `price` float default NULL,
  `quantity` int(11) default NULL,
  PRIMARY KEY  (`orderid`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

/*Data for the table `orderitems` */

insert  into `orderitems`(`orderid`,`productid`,`name`,`price`,`quantity`) values (49,159,'iPhone 3G',38500,1),(50,159,'iPhone 3G',38500,1);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL auto_increment,
  `ordertime` datetime default NULL,
  `custfirstname` varchar(30) default NULL,
  `custlastname` varchar(30) default NULL,
  `custemail` varchar(30) default NULL,
  `custcountry` varchar(30) default NULL,
  `custzip` varchar(30) default NULL,
  `custstate` varchar(30) default NULL,
  `custcity` varchar(30) default NULL,
  `custaddress` varchar(30) default NULL,
  `custphone` varchar(30) default NULL,
  `custfax` int(11) default NULL,
  PRIMARY KEY  (`orderid`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

/*Data for the table `orders` */

insert  into `orders`(`orderid`,`ordertime`,`custfirstname`,`custlastname`,`custemail`,`custcountry`,`custzip`,`custstate`,`custcity`,`custaddress`,`custphone`,`custfax`) values (49,'2011-03-29 16:22:14','Gyan','singh','ksjhkfdj.jg@vj','india','77887','U P','Bareley','Bareley','7698798798',89779788),(50,'2011-03-29 17:16:20','Gyan','singh','ksjhkfdj.jg@vj','india','77887','U P','Bareley','Bareley','7698798798',89779788);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `productid` int(11) NOT NULL auto_increment,
  `categoryname` varchar(50) default NULL,
  `productname` varchar(60) default NULL,
  `productprice` int(40) default NULL,
  `listprice` int(20) default NULL,
  `userImage` varchar(60) default NULL,
  `quantity` varchar(11) default NULL,
  `description` varchar(80) default NULL,
  `briefdisc` text,
  PRIMARY KEY  (`productid`)
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`productid`,`categoryname`,`productname`,`productprice`,`listprice`,`userImage`,`quantity`,`description`,`briefdisc`) values (159,'Mobile','iPhone 3G',39000,38500,'55iPhone.gif','2','On screen keyboard ','Apples iPhone 3G and its new iPhone 2.0 software');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `userid` varchar(30) NOT NULL,
  `password` varchar(30) default NULL,
  `firstname` varchar(30) default NULL,
  `lastname` varchar(30) default NULL,
  `email` varchar(30) default NULL,
  `country` varchar(30) default NULL,
  `zip` varchar(30) default NULL,
  `state` varchar(30) default NULL,
  `city` varchar(30) default NULL,
  `address` varchar(30) default NULL,
  `phone` varchar(30) default NULL,
  `fax` int(11) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`userid`,`password`,`firstname`,`lastname`,`email`,`country`,`zip`,`state`,`city`,`address`,`phone`,`fax`) values (28,'abc','abc','Gyan','singh','ksjhkfdj.jg@vj','india','77887','U P','Bareley','Bareley','7698798798',89779788);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
