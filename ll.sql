﻿# Host: localhost  (Version: 5.6.42-log)
# Date: 2018-12-29 04:35:53
# Generator: MySQL-Front 5.3  (Build 1.27)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

#
# Source for table "admin"
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Username` varchar(10) NOT NULL DEFAULT '' COMMENT '管理员工号为6位 由系统指定',
  `password` varchar(6) DEFAULT NULL COMMENT '管理员密码统一为123456',
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "admin"
#

INSERT INTO `admin` VALUES ('000001','123456'),('000002','123456');

#
# Source for table "note"
#

DROP TABLE IF EXISTS `note`;
CREATE TABLE `note` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `reply` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

#
# Data for table "note"
#


#
# Source for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名不得重复',
  `Email` varchar(30) NOT NULL DEFAULT '' COMMENT '邮箱需为有效格式',
  `Password` varchar(16) NOT NULL DEFAULT '' COMMENT '密码由字母或数字开头，大小写字母及数字混合，长度9位以上16位以下',
  `name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES ('105022222222','22@qq.com','ywj980822','舅妈'),('105032016082','1352720853@qq.com','wohaoleia','在座各位都是巨巨！'),('105032016090','1352720853@qq.com','hahahahaha','鱼丸子'),('105032016140','1214556789@qq.com','zyc980822','章鱼'),('105032016158','111@qq.com','wohaoleia','yanwenjun'),('105032016666','222@qq.com','123456789','22'),('105032016777','11@qq.com','12345678910','好好好'),('123456789012','1872241743@qq.com','1234567890','嘻嘻');

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
