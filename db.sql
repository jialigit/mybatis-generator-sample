# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.22)
# Database: test
# Generation Time: 2018-08-23 15:17:40 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table t_card
# ------------------------------------------------------------
#install and start mysql
	## centos
	yum install MySQL
	service mysql start
	##mac
	brew install MySQL

	mysql.server start
#create database instance
create database test;

DROP TABLE IF EXISTS `t_card`;

#create a table first for sample
CREATE TABLE `t_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `todo_list_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_todo_list` (`todo_list_id`),
  CONSTRAINT `fk_todo_list` FOREIGN KEY (`todo_list_id`) REFERENCES `t_todo_list` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_card` WRITE;
/*!40000 ALTER TABLE `t_card` DISABLE KEYS */;

