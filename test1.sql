/*
SQLyog Ultimate v12.3.1 (64 bit)
MySQL - 5.7.23-log : Database - test1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test1` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `test1`;

/*Table structure for table `bill` */

DROP TABLE IF EXISTS `bill`;

CREATE TABLE `bill` (
  `bid` int(10) NOT NULL AUTO_INCREMENT,
  `bill_code` varchar(25) DEFAULT NULL,
  `bill_name` varchar(25) DEFAULT NULL,
  `bill_com` varchar(25) DEFAULT NULL,
  `bill_num` int(8) DEFAULT NULL,
  `money` double(8,2) DEFAULT NULL,
  `pay` int(2) DEFAULT NULL COMMENT '是否付款 0 未付款， 1已付款',
  `pid` int(10) DEFAULT NULL COMMENT '供应商id',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `bill` */

insert  into `bill`(`bid`,`bill_code`,`bill_name`,`bill_com`,`bill_num`,`money`,`pay`,`pid`,`create_date`) values 
(1,'B_001','ESC包年云服务','年',39,400000.00,1,1,'2018-11-17 15:22:03'),
(2,'b_002','ESC包月云服务','月',20,26000.00,1,3,'2028-11-12 11:58:00'),
(3,'b_003','com域名','年',33,15000.00,0,1,'2028-11-12 11:58:00'),
(4,'b_004','cn??...','??',10,7000.00,0,1,'2018-11-17 15:22:03'),
(5,'b_005','团购小程序','月',3,60000.00,1,4,'2028-11-12 11:58:00');

/*Table structure for table `provider` */

DROP TABLE IF EXISTS `provider`;

CREATE TABLE `provider` (
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `provider_code` varchar(25) DEFAULT NULL,
  `providerName` varchar(25) DEFAULT NULL,
  `people` varchar(25) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `describe` varchar(100) DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `provider` */

insert  into `provider`(`pid`,`provider_code`,`providerName`,`people`,`phone`,`address`,`fax`,`describe`,`create_date`) values 
(1,NULL,'A???????11','??1','1888888888','?????','020-123456','??ESC???','2019-04-24 14:14:29'),
(2,'P_222','B货域名供应商','小域','1888886666','北京朝阳区','020-112312123','专业提供域名','2018-11-17 12:14:53'),
(3,'P_333','B货小程序企鹅','小企鹅','1888666666','深圳南山区','020-123123','专业小程序提供','2028-11-12 11:52:17'),
(4,'P_444','其他渠道供应商','无名','1888999999','北京','010-1000','专业渠道来源','2018-11-12 12:07:02'),
(6,'P_555','梦学谷供应商111','小张','18888666981','深圳软件园','0911-0123456','品质Aaa','2018-11-17 12:23:12');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) DEFAULT NULL,
  `real_name` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `gender` int(1) DEFAULT NULL COMMENT '性别：1 女  2 男',
  `birthday` datetime DEFAULT NULL,
  `user_type` int(1) DEFAULT NULL COMMENT '1管理员  2经理  3普通用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`real_name`,`password`,`gender`,`birthday`,`user_type`) values 
(1,'root','系统管理员','123',1,'2003-11-12 00:00:00',1),
(2,'lisi','李四','123',2,'1983-11-12 00:00:00',2),
(3,'wangwu','王五','123',2,'1953-11-12 00:00:00',3),
(4,'zhangsan','张三','123',1,'1973-11-12 00:00:00',3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
