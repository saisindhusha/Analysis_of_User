/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - userbehaviour
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`userbehaviour` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `userbehaviour`;

/*Table structure for table `accountdetails` */

DROP TABLE IF EXISTS `accountdetails`;

CREATE TABLE `accountdetails` (
  `username` varchar(50) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `accountdetails` */

insert  into `accountdetails`(`username`,`branch`,`email`,`address`,`mobile`,`amount`) values ('ramu','ameerpet','ramu@gmail.com','Ameerpet','9052016340',68000),('shiva','ameerpet','shiva@gmail.com','hyd','9875641230',35000),('chinna','sbi','chinna@gmail.com','hyd','8639966858',480000),('chinnu','sbi','chinnu@gmail.com','hyd','8639966858',480000);

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`) values ('admin','admin');

/*Table structure for table `analyst` */

DROP TABLE IF EXISTS `analyst`;

CREATE TABLE `analyst` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `analyst` */

insert  into `analyst`(`username`,`password`) values ('analyst','analyst');

/*Table structure for table `cancelledproducts` */

DROP TABLE IF EXISTS `cancelledproducts`;

CREATE TABLE `cancelledproducts` (
  `username` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cancelledproducts` */

insert  into `cancelledproducts`(`username`,`category`,`productname`,`price`,`image`) values ('ramu','Laptops','dell laptop',25000,'dell.jpeg'),('chinnu','dell','dell new',10000,'dell.jpeg');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `username` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cart` */

insert  into `cart`(`username`,`category`,`productname`,`price`,`image`) values ('chinna','Honda','maruthi 500',20000,'dell.jpeg'),('chinnu','dell','dell new',10000,'dell.jpeg');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`id`,`category`) values (1,'Sports'),(2,'Mobiles'),(3,'Laptops'),(4,'Benz'),(5,'Honda'),(6,'dell');

/*Table structure for table `filters` */

DROP TABLE IF EXISTS `filters`;

CREATE TABLE `filters` (
  `words` varchar(100) DEFAULT NULL,
  `Value` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `filters` */

insert  into `filters`(`words`,`Value`) values ('wonderful',1),('good',1),('supportive',1),('inspiring',1),('amazing',1),('motivative',1),('helpful',1),('beautiful',1),('friendly',1),('excellent',1),('awesome',1),('unbelieviable',1),('super',1),('tarrific',1),('well done',1),('delightful',1),('super',1),('fantastic',1),('brilliant',1),('beautiful',1),('nice',1),('verynice',1),('verygood',1),('bad',3),('verybad',3),('worst',3),('disappointing',3),('irritating',3),('ugly',3),('useless',3),('weak',3),('unwilling',3),('unintersted',3),('refusing',3),('sad',3),('awful',3),('poor',3),('cool',1),('kill you',2),('fool',2),('stupid',2),('idot',2),('bleady',2);

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(40) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `products` */

insert  into `products`(`id`,`category`,`productname`,`description`,`price`,`brand`,`image`) values (4,'Honda','maruthi 500','good car in speed',20000,'honda','dell.jpeg'),(5,'dell','dell new','good',10000,'dell','dell.jpeg');

/*Table structure for table `purchasedproducts` */

DROP TABLE IF EXISTS `purchasedproducts`;

CREATE TABLE `purchasedproducts` (
  `username` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `dt` text,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `purchasedproducts` */

insert  into `purchasedproducts`(`username`,`category`,`productname`,`price`,`dt`,`image`) values ('ramu','Mobiles','Samsung J7',6000,'2018:23:21 12:23:30','hp lap.jpeg'),('ramu','Mobiles','Samsung J7',6000,'2018:29:21 01:29:04','hp lap.jpeg'),('shiva','Laptops','dell laptop',25000,'2018:55:21 02:55:19','dell.jpeg'),('ramu','Mobiles','Samsung J7',6000,'2018:01:21 03:01:49','hp lap.jpeg'),('chinna','Honda','maruthi 500',20000,'24/03/2023 12:05:30','dell.jpeg'),('chinnu','dell','dell new',10000,'23/07/2023 19:12:01','dell.jpeg'),('chinnu','dell','dell new',10000,'23/07/2023 19:30:09','dell.jpeg');

/*Table structure for table `recommends` */

DROP TABLE IF EXISTS `recommends`;

CREATE TABLE `recommends` (
  `username` varchar(40) DEFAULT NULL,
  `productname` varchar(40) DEFAULT NULL,
  `recommendto` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `recommends` */

insert  into `recommends`(`username`,`productname`,`recommendto`) values ('ramu','Samsung J7','shiva'),('chinnu','dell new','chintu');

/*Table structure for table `reviews` */

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
  `username` varchar(100) DEFAULT NULL,
  `productname` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `review` varchar(100) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `sentiment` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reviews` */

insert  into `reviews`(`username`,`productname`,`category`,`review`,`rating`,`sentiment`) values ('chinna','maruthi 500','Honda','good','5','positive'),('munna','maruthi 500','Honda','good','5','positive'),('chinnu','dell new','dell','good','5',NULL);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`email`,`dob`,`gender`,`address`,`mobile`,`status`) values (2,'ramu','ramu','ramu@gmail.com','1994-10-10','MALE','Ameerpet','9052016340','Accepted'),(3,'shiva','shiva','shiva@gmail.com','1993-10-10','MALE','Ameerpet','9876541230','Accepted'),(4,'chinna','chinna','chinna@gmail.com','2000-08-25','MALE','hyd','8639966858','Accepted'),(5,'chinnu','chinnu','chinnu@gmail.com','2023-07-02','MALE','hyd','8639966858','Accepted'),(6,'chintu','chintu','chintu@gmail.com','2023-07-17','MALE','hyd','8639966858','Accepted');

/*Table structure for table `userintention` */

DROP TABLE IF EXISTS `userintention`;

CREATE TABLE `userintention` (
  `username` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `productname` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userintention` */

insert  into `userintention`(`username`,`category`,`productname`,`status`) values ('ramu','Mobiles','Samsung J7','Canceled'),('ramu','Mobiles','Mi','Canceled'),('shiva','Laptops','dell laptop','No'),('shiva','Laptops','dell laptop','Added'),('shiva','Laptops','dell laptop','Purchased'),('ramu','Mobiles','Samsung J7','No'),('ramu','Mobiles','Samsung J7','Added'),('ramu','Mobiles','Samsung J7','Purchased'),('ramu','Mobiles','Samsung J7','No'),('ramu','Mobiles','Samsung J7','No'),('ramu','Mobiles','Samsung J7','No'),('ramu','Mobiles','Samsung J7','No'),('chinnu','dell','dell new','Purchased'),('chinnu','dell','dell new','Canceled');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
