/*
SQLyog Community v13.0.1 (32 bit)
MySQL - 8.0.30 : Database - stores
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`stores` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `stores`;

/*Table structure for table `hw` */

DROP TABLE IF EXISTS `hw`;

CREATE TABLE `hw` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `number` int DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `gy` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `sj` int DEFAULT NULL,
  `sh` int DEFAULT NULL,
  `zrr` varchar(255) DEFAULT NULL,
  `t5` varchar(255) DEFAULT NULL,
  `t6` varchar(255) DEFAULT NULL,
  `jg` int DEFAULT NULL,
  `lr` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;

/*Data for the table `hw` */

insert  into `hw`(`id`,`name`,`number`,`money`,`phone`,`gy`,`date`,`sj`,`sh`,`zrr`,`t5`,`t6`,`jg`,`lr`) values 
(10,'电视机',92,'3269','13989895959 ','LTC','2018-10-24',1,1,'admin',NULL,NULL,NULL,NULL),
(11,'笔记本电脑',91,'4999','13918621985','联想','2018-10-24',1,1,'admin',NULL,NULL,NULL,NULL),
(12,'洗衣机 ',53,'2698','13656565666 ','康佳 ','2018-10-24',1,1,'admin',NULL,NULL,NULL,NULL),
(13,'空调',53,'2998','13556562656','格力','2018-10-24',1,1,'admin',NULL,NULL,NULL,NULL),
(14,'抽油烟机',26,'1998','18888888888','格力','2018-10-24',0,1,'admin',NULL,NULL,NULL,NULL),
(15,'小米手机',161,'998','13918621985','小米科技','2018-10-24',1,1,'admin',NULL,NULL,NULL,NULL),
(16,'苹果手机iPhone99',111,'9998','18888888888','苹果公司','2018-10-24',0,0,'admin',NULL,NULL,NULL,NULL),
(17,'测试商品',56,'26','13656565666','阿里巴巴','2018-10-24',0,0,'admin',NULL,NULL,NULL,NULL);

/*Table structure for table `instore` */

DROP TABLE IF EXISTS `instore`;

CREATE TABLE `instore` (
  `inId` varchar(15) NOT NULL,
  `inDate` datetime DEFAULT NULL,
  `inMan` varchar(10) DEFAULT NULL,
  `pId` varchar(10) DEFAULT NULL,
  `inNum` int DEFAULT NULL,
  PRIMARY KEY (`inId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `instore` */

/*Table structure for table `outstore` */

DROP TABLE IF EXISTS `outstore`;

CREATE TABLE `outstore` (
  `outId` varchar(15) NOT NULL,
  `outDate` datetime DEFAULT NULL,
  `outMan` varchar(10) DEFAULT NULL,
  `pId` varchar(10) DEFAULT NULL,
  `outNum` int DEFAULT NULL,
  PRIMARY KEY (`outId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `outstore` */

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `pId` varchar(10) NOT NULL,
  `pName` varchar(50) DEFAULT NULL,
  `pSort` varchar(20) DEFAULT NULL,
  `pDesc` varchar(500) DEFAULT NULL,
  `pStorage` int DEFAULT NULL,
  PRIMARY KEY (`pId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `products` */

/*Table structure for table `sh` */

DROP TABLE IF EXISTS `sh`;

CREATE TABLE `sh` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hw` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `money` float(11,2) DEFAULT NULL,
  `jg` float(11,2) DEFAULT NULL,
  `lr` float(11,2) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `sh` int DEFAULT NULL,
  `date` date NOT NULL,
  `sl` int DEFAULT NULL,
  `zrr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;

/*Data for the table `sh` */

insert  into `sh`(`id`,`hw`,`name`,`money`,`jg`,`lr`,`phone`,`sh`,`date`,`sl`,`zrr`) values 
(29,'电视机','马云',3269.00,4399.00,1130.00,'18888888888',1,'2018-10-24',1,'admin'),
(30,'笔记本电脑','电信集团',4999.00,5999.00,9000.00,'15265652656',1,'2018-10-24',9,'admin'),
(31,'洗衣机 ','范冰冰',2698.00,3298.00,1800.00,'13656565666',1,'2018-10-24',3,'admin'),
(32,'空调','小朱',2998.00,3369.00,1855.00,'13656565666',1,'2018-10-24',5,'admin'),
(33,'小米手机','刹马镇手机专卖店',998.00,1399.00,2005.00,'02512125656',1,'2018-10-24',5,'admin'),
(34,'电视机','刹马镇电器专卖店',3269.00,3999.00,4380.00,'02565658989',1,'2018-10-24',6,'admin'),
(35,'洗衣机 ','张三',2698.00,3489.00,2373.00,'18888888888',0,'2018-10-24',3,'admin'),
(36,'小米手机','刹马镇手机专卖店',998.00,1198.00,4600.00,'18888888888',0,'2018-10-24',23,'admin');

/*Table structure for table `test1` */

DROP TABLE IF EXISTS `test1`;

CREATE TABLE `test1` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `q` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `test1` */

insert  into `test1`(`id`,`name`,`q`) values 
(1,'liu','1');

/*Table structure for table `test2` */

DROP TABLE IF EXISTS `test2`;

CREATE TABLE `test2` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `x` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `test2` */

insert  into `test2`(`id`,`name`,`x`) values 
(1,'liu','1');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `Uid` varchar(10) NOT NULL,
  `Password` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`Uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `user` */

insert  into `user`(`Uid`,`Password`) values 
('ttt','111'),
('yyy','222'),
('zzz','333');

/*Table structure for table `user1` */

DROP TABLE IF EXISTS `user1`;

CREATE TABLE `user1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` int DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `t1` int DEFAULT NULL,
  `t2` int DEFAULT NULL,
  `t3` varchar(255) DEFAULT NULL,
  `t4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;

/*Data for the table `user1` */

insert  into `user1`(`id`,`name`,`password`,`sex`,`year`,`date`,`phone`,`t1`,`t2`,`t3`,`t4`) values 
(1,'admin','123',0,'27','2018-10-23','13918621282',0,0,NULL,NULL),
(11,'张三','123',0,'26','2018-10-24','13565656888',1,1,NULL,NULL),
(13,'马云','123',0,'35','2018-10-24','18888888888',2,0,NULL,NULL),
(14,'采购员张君宝','123',1,'26','2018-10-24','13656565666',3,0,NULL,NULL),
(15,'test','123',0,'22','2018-10-24','18888888888',2,0,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
