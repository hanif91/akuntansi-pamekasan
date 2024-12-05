/*
SQLyog Ultimate v10.42 
MySQL - 5.5.5-10.1.25-MariaDB : Database - koperasi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`koperasi` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `koperasi`;

/*Table structure for table `akunkas` */

DROP TABLE IF EXISTS `akunkas`;

CREATE TABLE `akunkas` (
  `namakas` varchar(15) NOT NULL,
  `idcoa` int(15) DEFAULT NULL,
  `indek` smallint(2) DEFAULT NULL,
  PRIMARY KEY (`namakas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `akunkas` */

insert  into `akunkas`(`namakas`,`idcoa`,`indek`) values ('BANK BCA',2,2);
insert  into `akunkas`(`namakas`,`idcoa`,`indek`) values ('KAS TUNAI',1,1);

/*Table structure for table `anggaranlr` */

DROP TABLE IF EXISTS `anggaranlr`;

CREATE TABLE `anggaranlr` (
  `idcoa` int(15) NOT NULL,
  `periode` char(6) NOT NULL,
  `anggaran` decimal(25,10) DEFAULT '0.0000000000',
  PRIMARY KEY (`idcoa`,`periode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `anggaranlr` */

insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (1,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (1,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (1,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (1,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (1,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (1,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (1,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (1,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (1,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (1,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (1,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (1,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (2,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (2,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (2,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (2,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (2,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (2,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (2,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (2,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (2,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (2,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (2,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (2,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (3,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (3,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (3,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (3,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (3,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (3,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (3,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (3,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (3,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (3,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (3,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (3,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (4,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (4,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (4,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (4,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (4,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (4,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (4,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (4,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (4,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (4,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (4,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (4,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (5,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (5,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (5,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (5,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (5,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (5,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (5,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (5,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (5,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (5,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (5,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (5,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (6,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (6,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (6,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (6,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (6,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (6,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (6,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (6,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (6,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (6,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (6,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (6,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (8,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (8,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (8,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (8,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (8,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (8,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (8,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (8,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (8,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (8,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (8,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (8,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (9,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (9,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (9,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (9,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (9,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (9,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (9,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (9,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (9,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (9,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (9,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (9,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (10,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (10,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (10,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (10,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (10,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (10,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (10,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (10,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (10,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (10,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (10,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (10,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (11,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (11,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (11,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (11,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (11,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (11,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (11,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (11,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (11,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (11,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (11,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (11,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (12,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (12,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (12,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (12,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (12,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (12,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (12,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (12,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (12,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (12,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (12,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (12,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (13,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (13,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (13,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (13,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (13,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (13,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (13,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (13,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (13,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (13,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (13,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (13,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (14,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (14,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (14,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (14,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (14,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (14,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (14,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (14,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (14,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (14,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (14,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (14,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (15,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (15,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (15,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (15,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (15,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (15,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (15,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (15,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (15,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (15,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (15,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (15,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (16,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (16,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (16,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (16,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (16,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (16,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (16,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (16,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (16,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (16,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (16,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (16,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (17,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (17,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (17,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (17,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (17,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (17,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (17,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (17,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (17,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (17,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (17,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (17,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (18,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (18,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (18,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (18,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (18,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (18,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (18,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (18,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (18,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (18,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (18,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (18,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (19,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (19,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (19,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (19,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (19,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (19,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (19,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (19,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (19,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (19,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (19,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (19,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (21,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (21,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (21,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (21,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (21,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (21,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (21,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (21,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (21,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (21,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (21,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (21,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (22,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (22,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (22,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (22,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (22,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (22,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (22,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (22,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (22,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (22,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (22,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (22,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (23,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (23,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (23,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (23,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (23,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (23,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (23,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (23,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (23,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (23,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (23,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (23,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (24,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (24,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (24,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (24,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (24,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (24,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (24,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (24,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (24,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (24,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (24,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (24,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (25,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (25,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (25,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (25,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (25,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (25,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (25,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (25,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (25,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (25,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (25,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (25,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (26,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (26,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (26,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (26,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (26,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (26,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (26,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (26,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (26,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (26,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (26,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (26,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (27,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (27,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (27,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (27,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (27,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (27,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (27,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (27,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (27,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (27,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (27,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (27,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (28,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (28,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (28,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (28,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (28,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (28,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (28,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (28,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (28,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (28,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (28,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (28,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (29,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (29,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (29,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (29,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (29,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (29,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (29,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (29,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (29,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (29,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (29,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (29,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (30,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (30,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (30,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (30,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (30,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (30,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (30,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (30,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (30,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (30,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (30,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (30,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (31,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (31,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (31,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (31,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (31,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (31,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (31,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (31,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (31,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (31,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (31,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (31,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (32,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (32,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (32,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (32,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (32,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (32,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (32,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (32,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (32,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (32,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (32,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (32,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (33,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (33,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (33,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (33,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (33,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (33,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (33,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (33,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (33,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (33,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (33,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (33,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (34,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (34,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (34,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (34,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (34,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (34,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (34,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (34,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (34,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (34,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (34,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (34,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (35,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (35,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (35,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (35,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (35,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (35,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (35,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (35,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (35,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (35,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (35,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (35,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (36,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (36,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (36,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (36,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (36,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (36,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (36,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (36,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (36,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (36,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (36,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (36,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (37,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (37,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (37,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (37,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (37,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (37,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (37,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (37,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (37,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (37,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (37,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (37,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (38,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (38,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (38,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (38,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (38,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (38,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (38,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (38,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (38,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (38,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (38,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (38,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (39,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (39,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (39,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (39,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (39,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (39,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (39,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (39,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (39,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (39,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (39,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (39,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (40,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (40,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (40,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (40,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (40,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (40,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (40,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (40,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (40,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (40,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (40,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (40,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (41,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (41,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (41,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (41,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (41,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (41,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (41,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (41,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (41,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (41,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (41,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (41,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (42,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (42,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (42,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (42,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (42,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (42,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (42,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (42,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (42,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (42,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (42,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (42,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (43,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (43,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (43,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (43,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (43,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (43,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (43,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (43,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (43,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (43,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (43,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (43,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (44,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (44,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (44,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (44,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (44,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (44,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (44,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (44,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (44,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (44,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (44,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (44,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (45,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (45,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (45,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (45,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (45,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (45,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (45,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (45,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (45,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (45,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (45,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (45,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (46,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (46,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (46,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (46,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (46,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (46,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (46,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (46,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (46,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (46,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (46,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (46,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (47,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (47,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (47,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (47,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (47,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (47,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (47,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (47,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (47,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (47,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (47,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (47,'201812',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (48,'201801',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (48,'201802',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (48,'201803',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (48,'201804',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (48,'201805',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (48,'201806',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (48,'201807',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (48,'201808',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (48,'201809',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (48,'201810',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (48,'201811',0.0000000000);
insert  into `anggaranlr`(`idcoa`,`periode`,`anggaran`) values (48,'201812',0.0000000000);

/*Table structure for table `anggaranpu` */

DROP TABLE IF EXISTS `anggaranpu`;

CREATE TABLE `anggaranpu` (
  `idcoa` int(15) NOT NULL,
  `tahun` year(4) NOT NULL,
  `bln01` decimal(25,10) DEFAULT '0.0000000000',
  `bln02` decimal(25,10) DEFAULT '0.0000000000',
  `bln03` decimal(25,10) DEFAULT '0.0000000000',
  `bln04` decimal(25,10) DEFAULT '0.0000000000',
  `bln05` decimal(25,10) DEFAULT '0.0000000000',
  `bln06` decimal(25,10) DEFAULT '0.0000000000',
  `bln07` decimal(25,10) DEFAULT '0.0000000000',
  `bln08` decimal(25,10) DEFAULT '0.0000000000',
  `bln09` decimal(25,10) DEFAULT '0.0000000000',
  `bln10` decimal(25,10) DEFAULT '0.0000000000',
  `bln11` decimal(25,10) DEFAULT '0.0000000000',
  `bln12` decimal(25,10) DEFAULT '0.0000000000',
  PRIMARY KEY (`idcoa`,`tahun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `anggaranpu` */

insert  into `anggaranpu`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (-1,2017,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `anggaranpu`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (0,2017,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `anggaranpu`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (1,2017,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `anggaranpu`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (2,2017,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `anggaranpu`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (3,2017,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `anggaranpu`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (4,2017,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `anggaranpu`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (5,2017,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `anggaranpu`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (7,2017,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `anggaranpu`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (8,2017,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `anggaranpu`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (9,2017,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `anggaranpu`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (10,2017,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `anggaranpu`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (11,2017,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `anggaranpu`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (12,2017,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `anggaranpu`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (13,2017,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `anggaranpu`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (14,2017,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `anggaranpu`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (15,2017,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `anggaranpu`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (16,2017,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `anggaranpu`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (17,2017,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `anggaranpu`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (18,2017,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `anggaranpu`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (20,2017,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `anggaranpu`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (21,2017,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);

/*Table structure for table `anggota` */

DROP TABLE IF EXISTS `anggota`;

CREATE TABLE `anggota` (
  `idanggota` int(15) NOT NULL AUTO_INCREMENT,
  `kodeanggota` varchar(10) DEFAULT NULL,
  `namaanggota` varchar(75) DEFAULT NULL,
  `alamat` varchar(125) DEFAULT NULL,
  `idkolektif` int(6) DEFAULT NULL,
  `pekerjaan` varchar(45) DEFAULT NULL,
  `nohp` varchar(15) DEFAULT NULL,
  `jeniskelamin` enum('LAKI - LAKI','PEREMPUAN') DEFAULT NULL,
  `tglgabung` date DEFAULT NULL,
  `tempat` varchar(20) DEFAULT NULL,
  `tgllahir` date DEFAULT NULL,
  `aktif` enum('AKTIF','NONAKTIF') DEFAULT 'AKTIF',
  PRIMARY KEY (`idanggota`),
  UNIQUE KEY `UNIQUE` (`kodeanggota`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `anggota` */

insert  into `anggota`(`idanggota`,`kodeanggota`,`namaanggota`,`alamat`,`idkolektif`,`pekerjaan`,`nohp`,`jeniskelamin`,`tglgabung`,`tempat`,`tgllahir`,`aktif`) values (1,'ND0001','TITOK PROYOGO','PROBOLINGGO',3,'SWASTA','08113452565','LAKI - LAKI','2018-01-01','PROBOLINGGO','1990-08-02','AKTIF');
insert  into `anggota`(`idanggota`,`kodeanggota`,`namaanggota`,`alamat`,`idkolektif`,`pekerjaan`,`nohp`,`jeniskelamin`,`tglgabung`,`tempat`,`tgllahir`,`aktif`) values (2,'ND0002','HANIF KURNIAWAN','PROBOLINGGO',3,'SWASTA','08113452565','LAKI - LAKI','2018-01-31','PROBOLINGGO','1990-08-02','AKTIF');
insert  into `anggota`(`idanggota`,`kodeanggota`,`namaanggota`,`alamat`,`idkolektif`,`pekerjaan`,`nohp`,`jeniskelamin`,`tglgabung`,`tempat`,`tgllahir`,`aktif`) values (3,'SL0001','ROHAN SAPUTRA','PROBOLINGGO 1 MAYANGAN',5,'WIRASWASTA','081125445865','LAKI - LAKI','2018-01-31','PROBOLINGGO','1991-10-02','AKTIF');
insert  into `anggota`(`idanggota`,`kodeanggota`,`namaanggota`,`alamat`,`idkolektif`,`pekerjaan`,`nohp`,`jeniskelamin`,`tglgabung`,`tempat`,`tgllahir`,`aktif`) values (4,'SL0002','SAFITRI DIAH','PROBOLINGGO, SUKABUMI',5,'SWASTA','0815653675','PEREMPUAN','2018-01-31','NEGARA','1992-12-18','AKTIF');

/*Table structure for table `aruskas` */

DROP TABLE IF EXISTS `aruskas`;

CREATE TABLE `aruskas` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `idcoa` int(5) DEFAULT NULL,
  `saldo` decimal(25,10) DEFAULT NULL,
  `saldo2` decimal(25,10) DEFAULT NULL,
  `tipekas` enum('Z','M','K') DEFAULT NULL,
  `idju` int(10) DEFAULT NULL,
  `periode` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `aruskas` */

/*Table structure for table `batal_angsuran` */

DROP TABLE IF EXISTS `batal_angsuran`;

CREATE TABLE `batal_angsuran` (
  `id` int(10) NOT NULL,
  `nopinjaman` varchar(15) DEFAULT NULL,
  `periode` varchar(6) DEFAULT NULL,
  `nopelunasan` varchar(15) DEFAULT NULL,
  `namauser` varchar(15) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `tglbayar` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `batal_angsuran` */

/*Table structure for table `bukubesar` */

DROP TABLE IF EXISTS `bukubesar`;

CREATE TABLE `bukubesar` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `idcoa` int(15) DEFAULT NULL,
  `idju` int(15) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `periode` varchar(6) DEFAULT NULL,
  `jenis` char(1) DEFAULT NULL,
  `debet` decimal(25,10) DEFAULT '0.0000000000',
  `kredit` decimal(25,10) DEFAULT '0.0000000000',
  `saldo` decimal(25,10) DEFAULT '0.0000000000',
  `flagsa` smallint(2) DEFAULT '0',
  `kodejurnal` varchar(15) DEFAULT NULL,
  `uraian` varchar(200) DEFAULT NULL,
  `noju` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bukubesar` */

/*Table structure for table `bukubesar2018` */

DROP TABLE IF EXISTS `bukubesar2018`;

CREATE TABLE `bukubesar2018` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `idcoa` int(15) DEFAULT NULL,
  `idju` int(15) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `periode` varchar(6) DEFAULT NULL,
  `jenis` char(1) DEFAULT NULL,
  `debet` decimal(25,10) DEFAULT '0.0000000000',
  `kredit` decimal(25,10) DEFAULT '0.0000000000',
  `saldo` decimal(25,10) DEFAULT '0.0000000000',
  `flagsa` smallint(2) DEFAULT '0',
  `kodejurnal` varchar(15) DEFAULT NULL,
  `uraian` varchar(200) DEFAULT NULL,
  `noju` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=latin1;

/*Data for the table `bukubesar2018` */

insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (24,1,25,'2018-05-02','201805','',0.0000000000,709867.0000000000,-709867.0000000000,0,'JBK','560000','0001/JBK/V/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (25,1,54,'2018-05-04','201805','',300000.0000000000,0.0000000000,-409867.0000000000,0,'JPK','PEMBAYARAN ANGSURAN PERIODE : 201805 DENGAN NO : LA18050001','0001/JPK/V/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (26,1,55,'2018-05-04','201805','',110000.0000000000,0.0000000000,-299867.0000000000,0,'JPK','PEMBAYARAN ANGSURAN PERIODE : 201805 DENGAN NO : LA18050002','0002/JPK/V/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (27,1,56,'2018-05-09','201805','',0.0000000000,250000.0000000000,-549867.0000000000,0,'JPK','sadada','0003/JPK/V/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (28,1,57,'2018-05-16','201805','',560000.0000000000,0.0000000000,10133.0000000000,0,'JPK','PENERIMAAN PENJUALAN TOKO 5','0004/JPK/V/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (29,1,58,'2018-05-17','201805','',500000.0000000000,0.0000000000,510133.0000000000,0,'JPK','dgfghfhf','0005/JPK/V/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (30,2,56,'2018-05-09','201805','',250000.0000000000,0.0000000000,250000.0000000000,0,'JPK','sadada','0003/JPK/V/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (31,2,58,'2018-05-17','201805','',0.0000000000,500000.0000000000,-250000.0000000000,0,'JPK','dgfghfhf','0005/JPK/V/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (32,2,26,'2018-05-26','201805','',0.0000000000,6165766.0000000000,-6415766.0000000000,0,'JBK','jkolk','0002/JBK/V/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (33,3,54,'2018-05-04','201805','',0.0000000000,250000.0000000000,-250000.0000000000,0,'JPK','PEMBAYARAN ANGSURAN PERIODE : 201805 DENGAN NO : LA18050001','0001/JPK/V/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (34,3,55,'2018-05-04','201805','',0.0000000000,100000.0000000000,-350000.0000000000,0,'JPK','PEMBAYARAN ANGSURAN PERIODE : 201805 DENGAN NO : LA18050002','0002/JPK/V/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (35,22,54,'2018-05-04','201805','',0.0000000000,50000.0000000000,50000.0000000000,0,'JPK','PEMBAYARAN ANGSURAN PERIODE : 201805 DENGAN NO : LA18050001','0001/JPK/V/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (36,22,55,'2018-05-04','201805','',0.0000000000,10000.0000000000,60000.0000000000,0,'JPK','PEMBAYARAN ANGSURAN PERIODE : 201805 DENGAN NO : LA18050002','0002/JPK/V/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (37,26,57,'2018-05-16','201805','',0.0000000000,500000.0000000000,500000.0000000000,0,'JPK','PENERIMAAN PENJUALAN TOKO 5','0004/JPK/V/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (38,26,57,'2018-05-16','201805','',0.0000000000,60000.0000000000,560000.0000000000,0,'JPK','PENERIMAAN PENJUALAN TOKO 5','0004/JPK/V/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (39,29,26,'2018-05-26','201805','',65222.0000000000,0.0000000000,65222.0000000000,0,'JBK','jkolk','0002/JBK/V/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (40,31,25,'2018-05-02','201805','',357867.0000000000,0.0000000000,357867.0000000000,0,'JBK','560000','0001/JBK/V/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (41,35,25,'2018-05-02','201805','',352000.0000000000,0.0000000000,352000.0000000000,0,'JBK','560000','0001/JBK/V/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (42,35,26,'2018-05-26','201805','',6100544.0000000000,0.0000000000,6452544.0000000000,0,'JBK','jkolk','0002/JBK/V/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (43,16,2,'2018-05-31','201805','',6875633.0000000000,0.0000000000,-6875633.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201805');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (44,29,2,'2018-05-31','201805','',0.0000000000,65222.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201805');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (45,31,2,'2018-05-31','201805','',0.0000000000,357867.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201805');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (46,35,2,'2018-05-31','201805','',0.0000000000,6452544.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201805');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (47,22,3,'2018-05-31','201805','',60000.0000000000,0.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/PENDAPATAN/201805');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (48,26,3,'2018-05-31','201805','',560000.0000000000,0.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/PENDAPATAN/201805');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (49,16,3,'2018-05-31','201805','',0.0000000000,620000.0000000000,-6255633.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/PENDAPATAN/201805');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (50,16,2,'2018-05-31','201805','',6875633.0000000000,0.0000000000,-6875633.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201805');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (51,29,2,'2018-05-31','201805','',0.0000000000,65222.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201805');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (52,31,2,'2018-05-31','201805','',0.0000000000,357867.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201805');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (53,35,2,'2018-05-31','201805','',0.0000000000,6452544.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201805');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (54,22,3,'2018-05-31','201805','',0.0000000000,0.0000000000,60000.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/PENDAPATAN/201805');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (55,26,3,'2018-05-31','201805','',0.0000000000,0.0000000000,560000.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/PENDAPATAN/201805');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (56,16,3,'2018-05-31','201805','',0.0000000000,0.0000000000,-6875633.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/PENDAPATAN/201805');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (57,1,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (58,1,1,'2018-01-02','201801','',50005000.0000000000,0.0000000000,50005000.0000000000,0,'JPK','SETOR SIMPANAN : SIMPANAN WAJIB,SIMPANAN MANASUKA','0001/JPK/I/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (59,1,2,'2018-01-18','201801','',30000.0000000000,0.0000000000,50035000.0000000000,0,'JPK','SETOR SIMPANAN : SIMPANAN WAJIB,SIMPANAN MANASUKA','0002/JPK/I/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (60,1,3,'2018-01-24','201801','',100000.0000000000,0.0000000000,50135000.0000000000,0,'JPK','PEND. BIAYA ADMINISTRASI NO PINJAMAN : PJ18010001','0003/JPK/I/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (61,1,27,'2018-01-24','201801','',0.0000000000,10000000.0000000000,40135000.0000000000,0,'JBK','PINJAMAN ANGGOTA NO PINJAMAN : PJ18010001','0001/JBK/I/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (62,1,4,'2018-01-26','201801','',150000.0000000000,0.0000000000,40285000.0000000000,0,'JPK','PEND. BIAYA ADMINISTRASI NO PINJAMAN : PJ18010002','0004/JPK/I/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (63,1,28,'2018-01-26','201801','',0.0000000000,15000000.0000000000,25285000.0000000000,0,'JBK','PINJAMAN ANGGOTA NO PINJAMAN : PJ18010002','0002/JBK/I/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (64,1,5,'2018-01-30','201801','',250000.0000000000,0.0000000000,25535000.0000000000,0,'JPK','PEND. BIAYA ADMINISTRASI NO PINJAMAN : PJ18010003','0005/JPK/I/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (65,1,29,'2018-01-30','201801','',0.0000000000,25000000.0000000000,535000.0000000000,0,'JBK','PINJAMAN ANGGOTA NO PINJAMAN : PJ18010003','0003/JBK/I/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (66,1,30,'2018-01-31','201801','',0.0000000000,161000.0000000000,374000.0000000000,0,'JBK','SEWA KANTOR ,PEMBAYARAN LISTRIK DAN GAJI PEGAWAI','0004/JBK/I/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (67,2,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (68,3,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (69,3,27,'2018-01-24','201801','',10000000.0000000000,0.0000000000,10000000.0000000000,0,'JBK','PINJAMAN ANGGOTA NO PINJAMAN : PJ18010001','0001/JBK/I/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (70,3,28,'2018-01-26','201801','',15000000.0000000000,0.0000000000,25000000.0000000000,0,'JBK','PINJAMAN ANGGOTA NO PINJAMAN : PJ18010002','0002/JBK/I/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (71,3,29,'2018-01-30','201801','',25000000.0000000000,0.0000000000,50000000.0000000000,0,'JBK','PINJAMAN ANGGOTA NO PINJAMAN : PJ18010003','0003/JBK/I/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (72,4,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (73,5,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (74,6,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (75,8,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (76,9,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (77,10,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (78,10,1,'2018-01-02','201801','',0.0000000000,5000.0000000000,5000.0000000000,0,'JPK','SETOR SIMPANAN : SIMPANAN WAJIB,SIMPANAN MANASUKA','0001/JPK/I/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (79,10,2,'2018-01-18','201801','',0.0000000000,5000.0000000000,10000.0000000000,0,'JPK','SETOR SIMPANAN : SIMPANAN WAJIB,SIMPANAN MANASUKA','0002/JPK/I/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (80,11,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (81,12,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (82,13,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (83,13,1,'2018-01-02','201801','',0.0000000000,50000000.0000000000,50000000.0000000000,0,'JPK','SETOR SIMPANAN : SIMPANAN WAJIB,SIMPANAN MANASUKA','0001/JPK/I/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (84,13,2,'2018-01-18','201801','',0.0000000000,25000.0000000000,50025000.0000000000,0,'JPK','SETOR SIMPANAN : SIMPANAN WAJIB,SIMPANAN MANASUKA','0002/JPK/I/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (85,14,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (86,15,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (87,16,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (88,17,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (89,18,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (90,19,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (91,21,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (92,22,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (93,23,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (94,24,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (95,24,3,'2018-01-24','201801','',0.0000000000,100000.0000000000,100000.0000000000,0,'JPK','PEND. BIAYA ADMINISTRASI NO PINJAMAN : PJ18010001','0003/JPK/I/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (96,24,4,'2018-01-26','201801','',0.0000000000,150000.0000000000,250000.0000000000,0,'JPK','PEND. BIAYA ADMINISTRASI NO PINJAMAN : PJ18010002','0004/JPK/I/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (97,24,5,'2018-01-30','201801','',0.0000000000,250000.0000000000,500000.0000000000,0,'JPK','PEND. BIAYA ADMINISTRASI NO PINJAMAN : PJ18010003','0005/JPK/I/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (98,25,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (99,26,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (100,27,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (101,28,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (102,29,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (103,29,30,'2018-01-31','201801','',75000.0000000000,0.0000000000,75000.0000000000,0,'JBK','SEWA KANTOR ,PEMBAYARAN LISTRIK DAN GAJI PEGAWAI','0004/JBK/I/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (104,30,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (105,31,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (106,31,30,'2018-01-31','201801','',36000.0000000000,0.0000000000,36000.0000000000,0,'JBK','SEWA KANTOR ,PEMBAYARAN LISTRIK DAN GAJI PEGAWAI','0004/JBK/I/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (107,32,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (108,33,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (109,34,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (110,35,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (111,35,30,'2018-01-31','201801','',50000.0000000000,0.0000000000,50000.0000000000,0,'JBK','SEWA KANTOR ,PEMBAYARAN LISTRIK DAN GAJI PEGAWAI','0004/JBK/I/2018');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (112,36,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (113,37,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (114,38,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (115,39,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (116,40,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (117,41,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (118,42,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (119,43,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (120,44,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (121,45,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (122,46,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (123,47,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (124,48,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (125,49,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (126,16,4,'2018-01-31','201801','',161000.0000000000,0.0000000000,-161000.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201801');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (127,29,4,'2018-01-31','201801','',0.0000000000,75000.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201801');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (128,31,4,'2018-01-31','201801','',0.0000000000,36000.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201801');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (129,35,4,'2018-01-31','201801','',0.0000000000,50000.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201801');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (130,24,5,'2018-01-31','201801','',500000.0000000000,0.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/PENDAPATAN/201801');
insert  into `bukubesar2018`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (131,16,5,'2018-01-31','201801','',0.0000000000,500000.0000000000,339000.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/PENDAPATAN/201801');

/*Table structure for table `bukubesar201801` */

DROP TABLE IF EXISTS `bukubesar201801`;

CREATE TABLE `bukubesar201801` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `idcoa` int(15) DEFAULT NULL,
  `idju` int(15) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `periode` varchar(6) DEFAULT NULL,
  `jenis` char(1) DEFAULT NULL,
  `debet` decimal(25,10) DEFAULT '0.0000000000',
  `kredit` decimal(25,10) DEFAULT '0.0000000000',
  `saldo` decimal(25,10) DEFAULT '0.0000000000',
  `flagsa` smallint(2) DEFAULT '0',
  `kodejurnal` varchar(15) DEFAULT NULL,
  `uraian` varchar(200) DEFAULT NULL,
  `noju` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

/*Data for the table `bukubesar201801` */

insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (1,1,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (2,1,1,'2018-01-02','201801','',50005000.0000000000,0.0000000000,50005000.0000000000,0,'JPK','SETOR SIMPANAN : SIMPANAN WAJIB,SIMPANAN MANASUKA','0001/JPK/I/2018');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (3,1,2,'2018-01-18','201801','',30000.0000000000,0.0000000000,50035000.0000000000,0,'JPK','SETOR SIMPANAN : SIMPANAN WAJIB,SIMPANAN MANASUKA','0002/JPK/I/2018');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (4,1,3,'2018-01-24','201801','',100000.0000000000,0.0000000000,50135000.0000000000,0,'JPK','PEND. BIAYA ADMINISTRASI NO PINJAMAN : PJ18010001','0003/JPK/I/2018');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (5,1,27,'2018-01-24','201801','',0.0000000000,10000000.0000000000,40135000.0000000000,0,'JBK','PINJAMAN ANGGOTA NO PINJAMAN : PJ18010001','0001/JBK/I/2018');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (6,1,4,'2018-01-26','201801','',150000.0000000000,0.0000000000,40285000.0000000000,0,'JPK','PEND. BIAYA ADMINISTRASI NO PINJAMAN : PJ18010002','0004/JPK/I/2018');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (7,1,28,'2018-01-26','201801','',0.0000000000,15000000.0000000000,25285000.0000000000,0,'JBK','PINJAMAN ANGGOTA NO PINJAMAN : PJ18010002','0002/JBK/I/2018');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (8,1,5,'2018-01-30','201801','',250000.0000000000,0.0000000000,25535000.0000000000,0,'JPK','PEND. BIAYA ADMINISTRASI NO PINJAMAN : PJ18010003','0005/JPK/I/2018');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (9,1,29,'2018-01-30','201801','',0.0000000000,25000000.0000000000,535000.0000000000,0,'JBK','PINJAMAN ANGGOTA NO PINJAMAN : PJ18010003','0003/JBK/I/2018');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (10,1,30,'2018-01-31','201801','',0.0000000000,161000.0000000000,374000.0000000000,-1,'JBK','SEWA KANTOR ,PEMBAYARAN LISTRIK DAN GAJI PEGAWAI','0004/JBK/I/2018');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (11,2,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (12,3,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (13,3,27,'2018-01-24','201801','',10000000.0000000000,0.0000000000,10000000.0000000000,0,'JBK','PINJAMAN ANGGOTA NO PINJAMAN : PJ18010001','0001/JBK/I/2018');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (14,3,28,'2018-01-26','201801','',15000000.0000000000,0.0000000000,25000000.0000000000,0,'JBK','PINJAMAN ANGGOTA NO PINJAMAN : PJ18010002','0002/JBK/I/2018');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (15,3,29,'2018-01-30','201801','',25000000.0000000000,0.0000000000,50000000.0000000000,-1,'JBK','PINJAMAN ANGGOTA NO PINJAMAN : PJ18010003','0003/JBK/I/2018');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (16,4,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (17,5,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (18,6,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (19,8,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (20,9,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (21,10,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (22,10,1,'2018-01-02','201801','',0.0000000000,5000.0000000000,5000.0000000000,0,'JPK','SETOR SIMPANAN : SIMPANAN WAJIB,SIMPANAN MANASUKA','0001/JPK/I/2018');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (23,10,2,'2018-01-18','201801','',0.0000000000,5000.0000000000,10000.0000000000,-1,'JPK','SETOR SIMPANAN : SIMPANAN WAJIB,SIMPANAN MANASUKA','0002/JPK/I/2018');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (24,11,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (25,12,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (26,13,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (27,13,1,'2018-01-02','201801','',0.0000000000,50000000.0000000000,50000000.0000000000,0,'JPK','SETOR SIMPANAN : SIMPANAN WAJIB,SIMPANAN MANASUKA','0001/JPK/I/2018');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (28,13,2,'2018-01-18','201801','',0.0000000000,25000.0000000000,50025000.0000000000,-1,'JPK','SETOR SIMPANAN : SIMPANAN WAJIB,SIMPANAN MANASUKA','0002/JPK/I/2018');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (29,14,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (30,15,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (31,16,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (32,17,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (33,18,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (34,19,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (35,21,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (36,22,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (37,23,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (38,24,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (39,24,3,'2018-01-24','201801','',0.0000000000,100000.0000000000,100000.0000000000,0,'JPK','PEND. BIAYA ADMINISTRASI NO PINJAMAN : PJ18010001','0003/JPK/I/2018');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (40,24,4,'2018-01-26','201801','',0.0000000000,150000.0000000000,250000.0000000000,0,'JPK','PEND. BIAYA ADMINISTRASI NO PINJAMAN : PJ18010002','0004/JPK/I/2018');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (41,24,5,'2018-01-30','201801','',0.0000000000,250000.0000000000,500000.0000000000,-1,'JPK','PEND. BIAYA ADMINISTRASI NO PINJAMAN : PJ18010003','0005/JPK/I/2018');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (42,25,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (43,26,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (44,27,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (45,28,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (46,29,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (47,29,30,'2018-01-31','201801','',75000.0000000000,0.0000000000,75000.0000000000,-1,'JBK','SEWA KANTOR ,PEMBAYARAN LISTRIK DAN GAJI PEGAWAI','0004/JBK/I/2018');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (48,30,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (49,31,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (50,31,30,'2018-01-31','201801','',36000.0000000000,0.0000000000,36000.0000000000,-1,'JBK','SEWA KANTOR ,PEMBAYARAN LISTRIK DAN GAJI PEGAWAI','0004/JBK/I/2018');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (51,32,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (52,33,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (53,34,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (54,35,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (55,35,30,'2018-01-31','201801','',50000.0000000000,0.0000000000,50000.0000000000,-1,'JBK','SEWA KANTOR ,PEMBAYARAN LISTRIK DAN GAJI PEGAWAI','0004/JBK/I/2018');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (56,36,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (57,37,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (58,38,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (59,39,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (60,40,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (61,41,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (62,42,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (63,43,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (64,44,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (65,45,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (66,46,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (67,47,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (68,48,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (69,49,-1,'2018-01-01','201801','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (70,16,4,'2018-01-31','201801','',161000.0000000000,0.0000000000,-161000.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201801');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (71,29,4,'2018-01-31','201801','',0.0000000000,75000.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201801');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (72,31,4,'2018-01-31','201801','',0.0000000000,36000.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201801');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (73,35,4,'2018-01-31','201801','',0.0000000000,50000.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201801');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (74,24,5,'2018-01-31','201801','',500000.0000000000,0.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/PENDAPATAN/201801');
insert  into `bukubesar201801`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (75,16,5,'2018-01-31','201801','',0.0000000000,500000.0000000000,339000.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/PENDAPATAN/201801');

/*Table structure for table `bukubesar201802` */

DROP TABLE IF EXISTS `bukubesar201802`;

CREATE TABLE `bukubesar201802` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `idcoa` int(15) DEFAULT NULL,
  `idju` int(15) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `periode` varchar(6) DEFAULT NULL,
  `jenis` char(1) DEFAULT NULL,
  `debet` decimal(25,10) DEFAULT '0.0000000000',
  `kredit` decimal(25,10) DEFAULT '0.0000000000',
  `saldo` decimal(25,10) DEFAULT '0.0000000000',
  `flagsa` smallint(2) DEFAULT '0',
  `kodejurnal` varchar(15) DEFAULT NULL,
  `uraian` varchar(200) DEFAULT NULL,
  `noju` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bukubesar201802` */

/*Table structure for table `bukubesar201803` */

DROP TABLE IF EXISTS `bukubesar201803`;

CREATE TABLE `bukubesar201803` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `idcoa` int(15) DEFAULT NULL,
  `idju` int(15) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `periode` varchar(6) DEFAULT NULL,
  `jenis` char(1) DEFAULT NULL,
  `debet` decimal(25,10) DEFAULT '0.0000000000',
  `kredit` decimal(25,10) DEFAULT '0.0000000000',
  `saldo` decimal(25,10) DEFAULT '0.0000000000',
  `flagsa` smallint(2) DEFAULT '0',
  `kodejurnal` varchar(15) DEFAULT NULL,
  `uraian` varchar(200) DEFAULT NULL,
  `noju` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bukubesar201803` */

/*Table structure for table `bukubesar201804` */

DROP TABLE IF EXISTS `bukubesar201804`;

CREATE TABLE `bukubesar201804` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `idcoa` int(15) DEFAULT NULL,
  `idju` int(15) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `periode` varchar(6) DEFAULT NULL,
  `jenis` char(1) DEFAULT NULL,
  `debet` decimal(25,10) DEFAULT '0.0000000000',
  `kredit` decimal(25,10) DEFAULT '0.0000000000',
  `saldo` decimal(25,10) DEFAULT '0.0000000000',
  `flagsa` smallint(2) DEFAULT '0',
  `kodejurnal` varchar(15) DEFAULT NULL,
  `uraian` varchar(200) DEFAULT NULL,
  `noju` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bukubesar201804` */

/*Table structure for table `bukubesar201805` */

DROP TABLE IF EXISTS `bukubesar201805`;

CREATE TABLE `bukubesar201805` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `idcoa` int(15) DEFAULT NULL,
  `idju` int(15) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `periode` varchar(6) DEFAULT NULL,
  `jenis` char(1) DEFAULT NULL,
  `debet` decimal(25,10) DEFAULT '0.0000000000',
  `kredit` decimal(25,10) DEFAULT '0.0000000000',
  `saldo` decimal(25,10) DEFAULT '0.0000000000',
  `flagsa` smallint(2) DEFAULT '0',
  `kodejurnal` varchar(15) DEFAULT NULL,
  `uraian` varchar(200) DEFAULT NULL,
  `noju` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

/*Data for the table `bukubesar201805` */

insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (1,1,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (2,1,25,'2018-05-02','201805','',0.0000000000,709867.0000000000,-709867.0000000000,0,'JBK','560000','0001/JBK/V/2018');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (3,1,54,'2018-05-04','201805','',300000.0000000000,0.0000000000,-409867.0000000000,0,'JPK','PEMBAYARAN ANGSURAN PERIODE : 201805 DENGAN NO : LA18050001','0001/JPK/V/2018');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (4,1,55,'2018-05-04','201805','',110000.0000000000,0.0000000000,-299867.0000000000,0,'JPK','PEMBAYARAN ANGSURAN PERIODE : 201805 DENGAN NO : LA18050002','0002/JPK/V/2018');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (5,1,56,'2018-05-09','201805','',0.0000000000,250000.0000000000,-549867.0000000000,0,'JPK','sadada','0003/JPK/V/2018');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (6,1,57,'2018-05-16','201805','',560000.0000000000,0.0000000000,10133.0000000000,0,'JPK','PENERIMAAN PENJUALAN TOKO 5','0004/JPK/V/2018');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (7,1,58,'2018-05-17','201805','',500000.0000000000,0.0000000000,510133.0000000000,-1,'JPK','dgfghfhf','0005/JPK/V/2018');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (8,2,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (9,2,56,'2018-05-09','201805','',250000.0000000000,0.0000000000,250000.0000000000,0,'JPK','sadada','0003/JPK/V/2018');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (10,2,58,'2018-05-17','201805','',0.0000000000,500000.0000000000,-250000.0000000000,0,'JPK','dgfghfhf','0005/JPK/V/2018');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (11,2,26,'2018-05-26','201805','',0.0000000000,6165766.0000000000,-6415766.0000000000,-1,'JBK','jkolk','0002/JBK/V/2018');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (12,3,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (13,3,54,'2018-05-04','201805','',0.0000000000,250000.0000000000,-250000.0000000000,0,'JPK','PEMBAYARAN ANGSURAN PERIODE : 201805 DENGAN NO : LA18050001','0001/JPK/V/2018');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (14,3,55,'2018-05-04','201805','',0.0000000000,100000.0000000000,-350000.0000000000,-1,'JPK','PEMBAYARAN ANGSURAN PERIODE : 201805 DENGAN NO : LA18050002','0002/JPK/V/2018');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (15,4,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (16,5,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (17,6,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (18,8,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (19,9,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (20,10,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (21,11,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (22,12,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (23,13,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (24,14,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (25,15,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (26,16,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (27,17,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (28,18,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (29,19,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (30,21,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (31,22,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (32,22,54,'2018-05-04','201805','',0.0000000000,50000.0000000000,50000.0000000000,0,'JPK','PEMBAYARAN ANGSURAN PERIODE : 201805 DENGAN NO : LA18050001','0001/JPK/V/2018');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (33,22,55,'2018-05-04','201805','',0.0000000000,10000.0000000000,60000.0000000000,-1,'JPK','PEMBAYARAN ANGSURAN PERIODE : 201805 DENGAN NO : LA18050002','0002/JPK/V/2018');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (34,23,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (35,24,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (36,25,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (37,26,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (38,26,57,'2018-05-16','201805','',0.0000000000,500000.0000000000,500000.0000000000,0,'JPK','PENERIMAAN PENJUALAN TOKO 5','0004/JPK/V/2018');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (39,26,57,'2018-05-16','201805','',0.0000000000,60000.0000000000,560000.0000000000,-1,'JPK','PENERIMAAN PENJUALAN TOKO 5','0004/JPK/V/2018');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (40,27,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (41,28,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (42,29,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (43,29,26,'2018-05-26','201805','',65222.0000000000,0.0000000000,65222.0000000000,-1,'JBK','jkolk','0002/JBK/V/2018');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (44,30,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (45,31,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (46,31,25,'2018-05-02','201805','',357867.0000000000,0.0000000000,357867.0000000000,-1,'JBK','560000','0001/JBK/V/2018');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (47,32,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (48,33,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (49,34,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (50,35,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,1,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (51,35,25,'2018-05-02','201805','',352000.0000000000,0.0000000000,352000.0000000000,0,'JBK','560000','0001/JBK/V/2018');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (52,35,26,'2018-05-26','201805','',6100544.0000000000,0.0000000000,6452544.0000000000,-1,'JBK','jkolk','0002/JBK/V/2018');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (53,36,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (54,37,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (55,38,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (56,39,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (57,40,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (58,41,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (59,42,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (60,43,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (61,44,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (62,45,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (63,46,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (64,47,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (65,48,-1,'2018-05-01','201805','',0.0000000000,0.0000000000,0.0000000000,2,'SA','SALDO AWAL','-');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (66,16,2,'2018-05-31','201805','',6875633.0000000000,0.0000000000,-6875633.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201805');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (67,29,2,'2018-05-31','201805','',0.0000000000,65222.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201805');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (68,31,2,'2018-05-31','201805','',0.0000000000,357867.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201805');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (69,35,2,'2018-05-31','201805','',0.0000000000,6452544.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201805');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (70,22,3,'2018-05-31','201805','',60000.0000000000,0.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/PENDAPATAN/201805');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (71,26,3,'2018-05-31','201805','',560000.0000000000,0.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/PENDAPATAN/201805');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (72,16,3,'2018-05-31','201805','',0.0000000000,620000.0000000000,-6255633.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/PENDAPATAN/201805');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (73,16,2,'2018-05-31','201805','',6875633.0000000000,0.0000000000,-6875633.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201805');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (74,29,2,'2018-05-31','201805','',0.0000000000,65222.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201805');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (75,31,2,'2018-05-31','201805','',0.0000000000,357867.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201805');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (76,35,2,'2018-05-31','201805','',0.0000000000,6452544.0000000000,0.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/201805');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (77,22,3,'2018-05-31','201805','',0.0000000000,0.0000000000,60000.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/PENDAPATAN/201805');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (78,26,3,'2018-05-31','201805','',0.0000000000,0.0000000000,560000.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/PENDAPATAN/201805');
insert  into `bukubesar201805`(`id`,`idcoa`,`idju`,`tanggal`,`periode`,`jenis`,`debet`,`kredit`,`saldo`,`flagsa`,`kodejurnal`,`uraian`,`noju`) values (79,16,3,'2018-05-31','201805','',0.0000000000,0.0000000000,-6875633.0000000000,-2,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/PENDAPATAN/201805');

/*Table structure for table `bukubesar201806` */

DROP TABLE IF EXISTS `bukubesar201806`;

CREATE TABLE `bukubesar201806` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `idcoa` int(15) DEFAULT NULL,
  `idju` int(15) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `periode` varchar(6) DEFAULT NULL,
  `jenis` char(1) DEFAULT NULL,
  `debet` decimal(25,10) DEFAULT '0.0000000000',
  `kredit` decimal(25,10) DEFAULT '0.0000000000',
  `saldo` decimal(25,10) DEFAULT '0.0000000000',
  `flagsa` smallint(2) DEFAULT '0',
  `kodejurnal` varchar(15) DEFAULT NULL,
  `uraian` varchar(200) DEFAULT NULL,
  `noju` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bukubesar201806` */

/*Table structure for table `bukubesar201807` */

DROP TABLE IF EXISTS `bukubesar201807`;

CREATE TABLE `bukubesar201807` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `idcoa` int(15) DEFAULT NULL,
  `idju` int(15) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `periode` varchar(6) DEFAULT NULL,
  `jenis` char(1) DEFAULT NULL,
  `debet` decimal(25,10) DEFAULT '0.0000000000',
  `kredit` decimal(25,10) DEFAULT '0.0000000000',
  `saldo` decimal(25,10) DEFAULT '0.0000000000',
  `flagsa` smallint(2) DEFAULT '0',
  `kodejurnal` varchar(15) DEFAULT NULL,
  `uraian` varchar(200) DEFAULT NULL,
  `noju` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bukubesar201807` */

/*Table structure for table `coa` */

DROP TABLE IF EXISTS `coa`;

CREATE TABLE `coa` (
  `idcoa` int(15) NOT NULL AUTO_INCREMENT,
  `kodeakun` varchar(9) NOT NULL,
  `namaakun` varchar(75) DEFAULT NULL,
  `idtipe3` int(5) DEFAULT NULL,
  `idtipearuskas_l` int(5) DEFAULT '0',
  PRIMARY KEY (`idcoa`),
  UNIQUE KEY `kodeakun` (`kodeakun`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

/*Data for the table `coa` */

insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (1,'11.10.01','KAS TUNAI',1,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (2,'11.10.02','BANK BCA',1,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (3,'11.20.01','PIUTANG PINJAMAN',2,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (4,'11.30.01','PERSEDIAAN BARANG',3,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (5,'14.10.01','TANAH',4,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (6,'14.10.02','GEDUNG KANTOR',4,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (8,'14.10.03','PERALATAN KANTOR',4,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (9,'14.20.01','AKUMULASI PENYUSUTAN',5,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (10,'21.10.01','SIMPANAN MANASUKA',6,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (11,'21.10.02','SIMPANAN HARI RAYA',6,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (12,'23.10.01','SIMPANAN POKOK',8,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (13,'23.10.02','SIMPANAN WAJIB',8,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (14,'22.10.01','HUTANG BANK JK. PANJANG',9,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (15,'21.20.01','HUTANG BANK JK. PENDEK',7,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (16,'24.10.01','SHU TAHUN INI',10,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (17,'24.10.02','SHU TAHUN LALU',10,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (18,'25.10.01','DANA SOSIAL',11,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (19,'23.10.03','MODAL AWAL',8,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (21,'25.10.02','DANA PENDIDIKAN',11,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (22,'41.10.01','PENDAPATAN BUNGA PINJAMAN ANGGOTA',12,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (23,'41.10.02','PENDAPATAN DENDA PINJAMAN ANGGOTA',12,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (24,'41.10.03','PENDAPATAN ADM PINJAMAN ANGGOTA',12,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (25,'42.90.01','PENDAPATAN BUNGA BANK',13,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (26,'42.90.02','PENDAPATAN LAIN - LAIN NON OPS',13,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (27,'51.10.01','BEBAN BUNGA BANK I',14,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (28,'51.10.02','BEBAN BUNGA BANK II',14,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (29,'51.20.01','BEBAN LISTRIK',15,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (30,'51.20.02','BEBAN AIR',15,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (31,'51.20.03','BEBAN SEWA KANTOR',15,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (32,'51.20.04','BEBAN TELPON',15,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (33,'51.20.05','BEBAN TRANSPORT',15,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (34,'51.20.06','BEBAN MAMIN RAPAT',15,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (35,'51.30.01','BEBAN GAJI KARYAWAN',16,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (36,'51.30.02','BEBAN GAJI PENGURUS',16,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (37,'51.30.03','BEBAN GAJI DEWAN PENGAWAS',16,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (38,'51.30.04','BEBAN GAJI PEMBINA',16,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (39,'55.10.01','BEBAN RAB TAHUN BUKU',17,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (40,'55.10.02','BEBAN RAT TAHUN BUKU',17,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (41,'55.20.01','BEBAN PENYUSUTAN TANAH',18,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (42,'55.20.02','BEBAN PENYUSUTAN GEDUNG KANTOR',18,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (43,'55.20.03','BEBAN PENYUSUTAN PERALATAN KANTOR\r\n',18,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (44,'55.90.01','BEBAN TUNJANGAN HARI RAYA',19,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (45,'55.90.02','BEBAN PEMBINAAN',19,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (46,'55.90.03','BEBAN PAJAK PENGHASILAN',19,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (47,'55.90.04','BEBAN ADMINISTRASI BANK',19,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (48,'55.90.05','BEBAN LAIN - LAIN NON OPS',19,0);
insert  into `coa`(`idcoa`,`kodeakun`,`namaakun`,`idtipe3`,`idtipearuskas_l`) values (49,'55.90.06','BEBAN PAJAK SHU',19,0);

/*Table structure for table `d_angsuran` */

DROP TABLE IF EXISTS `d_angsuran`;

CREATE TABLE `d_angsuran` (
  `nopinjaman` varchar(15) NOT NULL,
  `periode` varchar(6) NOT NULL,
  `tgljatuhtempo` date DEFAULT NULL,
  `pokok` decimal(15,2) DEFAULT '0.00',
  `bunga` decimal(15,2) DEFAULT '0.00',
  `denda` decimal(15,2) DEFAULT '0.00',
  `jumlah` decimal(15,2) DEFAULT '0.00',
  `flaglunas` char(1) DEFAULT '0',
  `tglbayar` date DEFAULT NULL,
  `userinput` varchar(35) DEFAULT NULL,
  `waktuupdate` datetime DEFAULT NULL,
  `nopelunasan` varchar(15) DEFAULT NULL,
  `noangsuran` smallint(3) DEFAULT NULL,
  `kasdebet` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`nopinjaman`,`periode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `d_angsuran` */

/*Table structure for table `d_kaskeluar` */

DROP TABLE IF EXISTS `d_kaskeluar`;

CREATE TABLE `d_kaskeluar` (
  `notrans` varchar(25) NOT NULL,
  `namaketkas` varchar(45) NOT NULL,
  `jumlah` decimal(14,2) DEFAULT NULL,
  PRIMARY KEY (`notrans`,`namaketkas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `d_kaskeluar` */

/*Table structure for table `d_kasmasuk` */

DROP TABLE IF EXISTS `d_kasmasuk`;

CREATE TABLE `d_kasmasuk` (
  `notrans` varchar(25) NOT NULL,
  `namaketkas` varchar(45) NOT NULL,
  `jumlah` decimal(14,2) DEFAULT NULL,
  PRIMARY KEY (`notrans`,`namaketkas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `d_kasmasuk` */

/*Table structure for table `d_simp_anggota` */

DROP TABLE IF EXISTS `d_simp_anggota`;

CREATE TABLE `d_simp_anggota` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(25) DEFAULT NULL,
  `idsimpanan` int(5) DEFAULT NULL,
  `debet` decimal(15,2) DEFAULT NULL,
  `kredit` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `d_simp_anggota` */

/*Table structure for table `dumpjbk` */

DROP TABLE IF EXISTS `dumpjbk`;

CREATE TABLE `dumpjbk` (
  `idju` int(15) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(30) DEFAULT NULL,
  `noref` varchar(55) DEFAULT NULL,
  `penjelasan` varchar(355) DEFAULT NULL,
  `jumlah` decimal(20,10) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `tipejurnal` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`idju`),
  UNIQUE KEY `notrans` (`notrans`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;

/*Data for the table `dumpjbk` */

/*Table structure for table `dumpjbk_` */

DROP TABLE IF EXISTS `dumpjbk_`;

CREATE TABLE `dumpjbk_` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `idcoa` int(15) DEFAULT NULL,
  `notrans` varchar(35) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jenis` char(1) DEFAULT NULL,
  `debet` decimal(25,10) DEFAULT NULL,
  `kredit` decimal(25,10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;

/*Data for the table `dumpjbk_` */

/*Table structure for table `dumpjpk` */

DROP TABLE IF EXISTS `dumpjpk`;

CREATE TABLE `dumpjpk` (
  `idju` int(15) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(30) DEFAULT NULL,
  `noref` varchar(55) DEFAULT NULL,
  `penjelasan` varchar(355) DEFAULT NULL,
  `jumlah` decimal(20,10) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `tipejurnal` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`idju`),
  UNIQUE KEY `notrans` (`notrans`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;

/*Data for the table `dumpjpk` */

/*Table structure for table `dumpjpk_` */

DROP TABLE IF EXISTS `dumpjpk_`;

CREATE TABLE `dumpjpk_` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `idcoa` int(15) DEFAULT NULL,
  `notrans` varchar(35) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jenis` char(1) DEFAULT NULL,
  `debet` decimal(25,10) DEFAULT NULL,
  `kredit` decimal(25,10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;

/*Data for the table `dumpjpk_` */

/*Table structure for table `history` */

DROP TABLE IF EXISTS `history`;

CREATE TABLE `history` (
  `hostid` int(11) DEFAULT NULL,
  `itemname` varchar(5) DEFAULT NULL,
  `itemvalue` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `history` */

insert  into `history`(`hostid`,`itemname`,`itemvalue`) values (1,'A',10);
insert  into `history`(`hostid`,`itemname`,`itemvalue`) values (1,'B',3);
insert  into `history`(`hostid`,`itemname`,`itemvalue`) values (2,'A',9);
insert  into `history`(`hostid`,`itemname`,`itemvalue`) values (2,'C',40);
insert  into `history`(`hostid`,`itemname`,`itemvalue`) values (2,'D',5);
insert  into `history`(`hostid`,`itemname`,`itemvalue`) values (3,'A',14);
insert  into `history`(`hostid`,`itemname`,`itemvalue`) values (3,'B',67);
insert  into `history`(`hostid`,`itemname`,`itemvalue`) values (3,'D',8);

/*Table structure for table `jbk` */

DROP TABLE IF EXISTS `jbk`;

CREATE TABLE `jbk` (
  `idju` int(15) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(30) DEFAULT NULL,
  `noref` varchar(55) DEFAULT NULL,
  `penjelasan` text,
  `jumlah` decimal(20,10) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `tipejurnal` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`idju`),
  UNIQUE KEY `notrans` (`notrans`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jbk` */

/*Table structure for table `jbk_` */

DROP TABLE IF EXISTS `jbk_`;

CREATE TABLE `jbk_` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `idcoa` int(15) DEFAULT NULL,
  `idju` int(15) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jenis` char(1) DEFAULT NULL,
  `debet` decimal(25,10) DEFAULT NULL,
  `kredit` decimal(25,10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jbk_` */

/*Table structure for table `jenis_simpanan` */

DROP TABLE IF EXISTS `jenis_simpanan`;

CREATE TABLE `jenis_simpanan` (
  `idsimpanan` int(5) NOT NULL AUTO_INCREMENT,
  `namasimpanan` varchar(50) DEFAULT NULL,
  `minimsetor` decimal(12,2) DEFAULT NULL,
  `flagmodal` char(1) DEFAULT NULL,
  `indek` smallint(2) DEFAULT NULL,
  `flagsetor` char(1) DEFAULT NULL,
  `idcoa` int(10) DEFAULT '-1',
  PRIMARY KEY (`idsimpanan`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `jenis_simpanan` */

insert  into `jenis_simpanan`(`idsimpanan`,`namasimpanan`,`minimsetor`,`flagmodal`,`indek`,`flagsetor`,`idcoa`) values (1,'SIMPANAN POKOK',50000.00,'1',1,'1',12);
insert  into `jenis_simpanan`(`idsimpanan`,`namasimpanan`,`minimsetor`,`flagmodal`,`indek`,`flagsetor`,`idcoa`) values (2,'SIMPANAN WAJIB',25000.00,'1',2,'1',13);
insert  into `jenis_simpanan`(`idsimpanan`,`namasimpanan`,`minimsetor`,`flagmodal`,`indek`,`flagsetor`,`idcoa`) values (3,'SIMPANAN MANASUKA',5000.00,'1',3,'1',10);
insert  into `jenis_simpanan`(`idsimpanan`,`namasimpanan`,`minimsetor`,`flagmodal`,`indek`,`flagsetor`,`idcoa`) values (4,'SIMPANAN HARI RAYA',0.00,'0',4,'1',11);
insert  into `jenis_simpanan`(`idsimpanan`,`namasimpanan`,`minimsetor`,`flagmodal`,`indek`,`flagsetor`,`idcoa`) values (5,'SIMPANAN LAIN - LAIN',0.00,'0',5,'1',10);

/*Table structure for table `jpk` */

DROP TABLE IF EXISTS `jpk`;

CREATE TABLE `jpk` (
  `idju` int(15) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(30) DEFAULT NULL,
  `noref` varchar(55) DEFAULT NULL,
  `penjelasan` text,
  `jumlah` decimal(20,10) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `tipejurnal` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`idju`),
  UNIQUE KEY `notrans` (`notrans`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jpk` */

/*Table structure for table `jpk_` */

DROP TABLE IF EXISTS `jpk_`;

CREATE TABLE `jpk_` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `idcoa` int(15) DEFAULT NULL,
  `idju` int(15) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jenis` char(1) DEFAULT NULL,
  `debet` decimal(25,10) DEFAULT NULL,
  `kredit` decimal(25,10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jpk_` */

/*Table structure for table `ju` */

DROP TABLE IF EXISTS `ju`;

CREATE TABLE `ju` (
  `idju` int(15) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(30) DEFAULT NULL,
  `uraian` varchar(155) DEFAULT NULL,
  `penjelasan` text,
  `jumlah` decimal(20,10) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `tipejurnal` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`idju`),
  UNIQUE KEY `notrans` (`notrans`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ju` */

/*Table structure for table `ju_` */

DROP TABLE IF EXISTS `ju_`;

CREATE TABLE `ju_` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `idcoa` int(15) DEFAULT NULL,
  `idju` int(15) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jenis` char(1) DEFAULT NULL,
  `debet` decimal(25,10) DEFAULT NULL,
  `kredit` decimal(25,10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ju_` */

/*Table structure for table `ketkas` */

DROP TABLE IF EXISTS `ketkas`;

CREATE TABLE `ketkas` (
  `namaketkas` varchar(45) NOT NULL,
  `idcoa` int(15) DEFAULT '-1',
  `tipe` enum('MASUK','KELUAR') NOT NULL DEFAULT 'MASUK',
  PRIMARY KEY (`namaketkas`,`tipe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ketkas` */

insert  into `ketkas`(`namaketkas`,`idcoa`,`tipe`) values ('BIAYA GAJI KARYAWAN',35,'KELUAR');
insert  into `ketkas`(`namaketkas`,`idcoa`,`tipe`) values ('BIAYA LISTRIK',29,'KELUAR');
insert  into `ketkas`(`namaketkas`,`idcoa`,`tipe`) values ('BIAYA SEWA KANTOR',31,'KELUAR');
insert  into `ketkas`(`namaketkas`,`idcoa`,`tipe`) values ('PENERIMAAN BUNGA BANK',25,'MASUK');
insert  into `ketkas`(`namaketkas`,`idcoa`,`tipe`) values ('PENJUALAN FOTO COPY',26,'MASUK');
insert  into `ketkas`(`namaketkas`,`idcoa`,`tipe`) values ('PENJUALAN TOKO',26,'MASUK');

/*Table structure for table `kolektif` */

DROP TABLE IF EXISTS `kolektif`;

CREATE TABLE `kolektif` (
  `idkolektif` int(5) NOT NULL AUTO_INCREMENT,
  `kodekolektif` varchar(2) DEFAULT NULL,
  `namakolektif` varchar(35) DEFAULT NULL,
  `aktif` enum('AKTIF','NONAKTIF') DEFAULT 'AKTIF',
  PRIMARY KEY (`idkolektif`),
  UNIQUE KEY `UNIQUE` (`kodekolektif`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `kolektif` */

insert  into `kolektif`(`idkolektif`,`kodekolektif`,`namakolektif`,`aktif`) values (2,'ZN','ZAINUL','AKTIF');
insert  into `kolektif`(`idkolektif`,`kodekolektif`,`namakolektif`,`aktif`) values (3,'ND','NIDAR','AKTIF');
insert  into `kolektif`(`idkolektif`,`kodekolektif`,`namakolektif`,`aktif`) values (4,'AG','AGUS','AKTIF');
insert  into `kolektif`(`idkolektif`,`kodekolektif`,`namakolektif`,`aktif`) values (5,'SL','SULI','AKTIF');

/*Table structure for table `labarugi` */

DROP TABLE IF EXISTS `labarugi`;

CREATE TABLE `labarugi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idcoa` int(5) DEFAULT NULL,
  `saldo` decimal(25,10) DEFAULT NULL,
  `saldolalu` decimal(25,10) DEFAULT NULL,
  `saldoagr` decimal(25,10) DEFAULT NULL,
  `saldoagrlalu` decimal(25,10) DEFAULT NULL,
  `periode` varchar(6) DEFAULT NULL,
  `saldo2` decimal(25,10) DEFAULT NULL,
  `saldolalu2` decimal(25,10) DEFAULT NULL,
  `saldoagr2` decimal(25,10) DEFAULT NULL,
  `saldoagrlalu2` decimal(25,10) DEFAULT NULL,
  `idgroup` smallint(1) DEFAULT NULL,
  `namagroup` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `labarugi` */

/*Table structure for table `m_kaskeluar` */

DROP TABLE IF EXISTS `m_kaskeluar`;

CREATE TABLE `m_kaskeluar` (
  `notrans` varchar(15) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` text,
  `total` decimal(13,2) DEFAULT NULL,
  `kas` varchar(15) DEFAULT NULL,
  `waktuinput` datetime DEFAULT NULL,
  `userinput` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`notrans`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_kaskeluar` */

/*Table structure for table `m_kasmasuk` */

DROP TABLE IF EXISTS `m_kasmasuk`;

CREATE TABLE `m_kasmasuk` (
  `notrans` varchar(15) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` text,
  `total` decimal(13,2) DEFAULT NULL,
  `kas` varchar(15) DEFAULT NULL,
  `waktuinput` datetime DEFAULT NULL,
  `userinput` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`notrans`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_kasmasuk` */

/*Table structure for table `m_kastransfer` */

DROP TABLE IF EXISTS `m_kastransfer`;

CREATE TABLE `m_kastransfer` (
  `notrans` varchar(15) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` text,
  `total` decimal(13,2) DEFAULT NULL,
  `kasdebet` varchar(15) DEFAULT NULL,
  `waktuinput` datetime DEFAULT NULL,
  `userinput` varchar(35) DEFAULT NULL,
  `kaskredit` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`notrans`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_kastransfer` */

/*Table structure for table `m_pinjaman` */

DROP TABLE IF EXISTS `m_pinjaman`;

CREATE TABLE `m_pinjaman` (
  `nopinjaman` varchar(15) NOT NULL,
  `idanggota` int(15) NOT NULL,
  `platform` decimal(15,2) DEFAULT '0.00',
  `tipeangsuran` enum('BULANAN','HARIAN') DEFAULT 'BULANAN',
  `byadmin` decimal(15,2) DEFAULT '0.00',
  `persentase` decimal(4,2) DEFAULT '0.00',
  `lamaangsuran` smallint(3) DEFAULT '0',
  `tglpinjam` date DEFAULT NULL,
  `pokokbulan` decimal(15,2) DEFAULT '0.00',
  `bungabulan` decimal(15,2) DEFAULT '0.00',
  `jumlahbulan` decimal(15,2) DEFAULT '0.00',
  `waktuinput` datetime DEFAULT NULL,
  `idparam` int(15) NOT NULL,
  `kaskredit` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`nopinjaman`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_pinjaman` */

/*Table structure for table `neraca` */

DROP TABLE IF EXISTS `neraca`;

CREATE TABLE `neraca` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idcoa` int(5) DEFAULT NULL,
  `saldo` decimal(25,10) DEFAULT NULL,
  `saldolalu` decimal(25,10) DEFAULT NULL,
  `periode` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `neraca` */

/*Table structure for table `paraf` */

DROP TABLE IF EXISTS `paraf`;

CREATE TABLE `paraf` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT '-',
  `nik` varchar(15) DEFAULT '-',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `paraf` */

insert  into `paraf`(`id`,`nama`,`jabatan`,`nik`) values (1,'ARIS SISWANTO','KABAG. ADM & KEUANGAN','');
insert  into `paraf`(`id`,`nama`,`jabatan`,`nik`) values (2,'Drs. Kadarisman','Kasubag Umum','');
insert  into `paraf`(`id`,`nama`,`jabatan`,`nik`) values (3,'H. BUDIANTO, SE','KABAG. TEKNIK','');
insert  into `paraf`(`id`,`nama`,`jabatan`,`nik`) values (4,'TEDDY','STAF BAGIAN UMUM','');
insert  into `paraf`(`id`,`nama`,`jabatan`,`nik`) values (5,'HJ. SALIMAH, SE','KABAG. HUB. PELANGGAN','');
insert  into `paraf`(`id`,`nama`,`jabatan`,`nik`) values (6,'ERANG BUDI TJAHYONO','KASUBAG. REKENING','');
insert  into `paraf`(`id`,`nama`,`jabatan`,`nik`) values (7,'SISWADI, SE.','DIREKTUR','');
insert  into `paraf`(`id`,`nama`,`jabatan`,`nik`) values (8,'ANDI AHMAD, ST.','KASUBAG. PEMELIHARAAN','');

/*Table structure for table `parampinjaman` */

DROP TABLE IF EXISTS `parampinjaman`;

CREATE TABLE `parampinjaman` (
  `idparam` int(3) NOT NULL AUTO_INCREMENT,
  `platformbawah` decimal(15,2) DEFAULT '0.00',
  `platformatas` decimal(15,2) DEFAULT '0.00',
  `byadmin` decimal(4,2) DEFAULT '0.00',
  `persenbunga` decimal(4,2) DEFAULT '0.00',
  `maxkaliangsur` int(2) DEFAULT '0',
  `persendenda` decimal(4,2) DEFAULT '0.00',
  `persendendadari` enum('POKOK PLATFORM PINJAMAN','POKOK ANGSURAN','POKOK & BUNGA ANGSURAN') DEFAULT 'POKOK ANGSURAN',
  `dendanominal` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`idparam`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `parampinjaman` */

insert  into `parampinjaman`(`idparam`,`platformbawah`,`platformatas`,`byadmin`,`persenbunga`,`maxkaliangsur`,`persendenda`,`persendendadari`,`dendanominal`) values (1,0.00,1000000.00,1.00,1.50,12,1.00,'POKOK ANGSURAN',0.00);
insert  into `parampinjaman`(`idparam`,`platformbawah`,`platformatas`,`byadmin`,`persenbunga`,`maxkaliangsur`,`persendenda`,`persendendadari`,`dendanominal`) values (2,1000000.00,10000000.00,1.00,1.00,48,1.00,'POKOK ANGSURAN',0.00);
insert  into `parampinjaman`(`idparam`,`platformbawah`,`platformatas`,`byadmin`,`persenbunga`,`maxkaliangsur`,`persendenda`,`persendendadari`,`dendanominal`) values (3,10000000.00,999999999999.00,1.00,1.00,60,1.00,'POKOK ANGSURAN',0.00);

/*Table structure for table `pengaturan` */

DROP TABLE IF EXISTS `pengaturan`;

CREATE TABLE `pengaturan` (
  `idx` smallint(1) NOT NULL,
  `mundurtglbyr` smallint(1) DEFAULT NULL,
  `headerlap1` varchar(55) DEFAULT NULL,
  `headerlap2` varchar(55) DEFAULT NULL,
  `alamat1` varchar(100) DEFAULT NULL,
  `alamat2` varchar(100) DEFAULT NULL,
  `footerkota` varchar(45) DEFAULT NULL,
  `idcoabyadm` int(10) DEFAULT '-1',
  `idcoabyrpokok` int(10) DEFAULT '-1',
  `idcoabunga` int(10) DEFAULT '-1',
  `idcoadenda` int(10) DEFAULT '-1',
  `idcoapinjaman` int(10) DEFAULT '-1',
  `idcoaselisihlr` int(10) DEFAULT '-1',
  `idcoapajaklr` int(10) DEFAULT '-1',
  `idtipe3kas` int(10) DEFAULT '-1',
  `mundurpembatalan` smallint(3) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pengaturan` */

insert  into `pengaturan`(`idx`,`mundurtglbyr`,`headerlap1`,`headerlap2`,`alamat1`,`alamat2`,`footerkota`,`idcoabyadm`,`idcoabyrpokok`,`idcoabunga`,`idcoadenda`,`idcoapinjaman`,`idcoaselisihlr`,`idcoapajaklr`,`idtipe3kas`,`mundurpembatalan`) values (1,5,'KOPERASI KARYAWAN \"TIRTHA DHARMA\"','KOTA PROBOLINGGO','Jalan Hayam Wuruk No. 5,Mangunharjo,Mayangan, Probolinggo 67217','Telp. (0335) 427272 / (0335) 422245, Email : pdam.probolinggokota@yahoo.co.','Probolinggo',24,3,22,23,3,16,49,1,NULL);

/*Table structure for table `periodeposting` */

DROP TABLE IF EXISTS `periodeposting`;

CREATE TABLE `periodeposting` (
  `periode` char(6) NOT NULL,
  `nama` varchar(35) DEFAULT NULL,
  `aktif` char(1) DEFAULT '1',
  PRIMARY KEY (`periode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `periodeposting` */

insert  into `periodeposting`(`periode`,`nama`,`aktif`) values ('201801','JANUARI 2018','0');
insert  into `periodeposting`(`periode`,`nama`,`aktif`) values ('201802','FEBRUARI 2018','1');
insert  into `periodeposting`(`periode`,`nama`,`aktif`) values ('201803','MARET 2018','1');
insert  into `periodeposting`(`periode`,`nama`,`aktif`) values ('201804','APRIL 2018','1');
insert  into `periodeposting`(`periode`,`nama`,`aktif`) values ('201805','MEI 2018','0');
insert  into `periodeposting`(`periode`,`nama`,`aktif`) values ('201806','JUNI 2018','1');

/*Table structure for table `saldoawal` */

DROP TABLE IF EXISTS `saldoawal`;

CREATE TABLE `saldoawal` (
  `idcoa` int(15) NOT NULL,
  `tahun` year(4) NOT NULL,
  `bln01` decimal(25,10) DEFAULT '0.0000000000',
  `bln02` decimal(25,10) DEFAULT '0.0000000000',
  `bln03` decimal(25,10) DEFAULT '0.0000000000',
  `bln04` decimal(25,10) DEFAULT '0.0000000000',
  `bln05` decimal(25,10) DEFAULT '0.0000000000',
  `bln06` decimal(25,10) DEFAULT '0.0000000000',
  `bln07` decimal(25,10) DEFAULT '0.0000000000',
  `bln08` decimal(25,10) DEFAULT '0.0000000000',
  `bln09` decimal(25,10) DEFAULT '0.0000000000',
  `bln10` decimal(25,10) DEFAULT '0.0000000000',
  `bln11` decimal(25,10) DEFAULT '0.0000000000',
  `bln12` decimal(25,10) DEFAULT '0.0000000000',
  PRIMARY KEY (`idcoa`,`tahun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `saldoawal` */

insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (1,2018,0.0000000000,374000.0000000000,0.0000000000,0.0000000000,0.0000000000,510133.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (2,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,-6415766.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (3,2018,0.0000000000,50000000.0000000000,0.0000000000,0.0000000000,0.0000000000,-350000.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (4,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (5,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (6,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (8,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (9,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (10,2018,0.0000000000,10000.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (11,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (12,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (13,2018,0.0000000000,50025000.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (14,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (15,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (16,2018,0.0000000000,339000.0000000000,0.0000000000,0.0000000000,0.0000000000,-6875633.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (17,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (18,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (19,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (21,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (22,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,60000.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (23,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (24,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (25,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (26,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,560000.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (27,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (28,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (29,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (30,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (31,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (32,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (33,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (34,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (35,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (36,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (37,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (38,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (39,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (40,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (41,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (42,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (43,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (44,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (45,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (46,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (47,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (48,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);
insert  into `saldoawal`(`idcoa`,`tahun`,`bln01`,`bln02`,`bln03`,`bln04`,`bln05`,`bln06`,`bln07`,`bln08`,`bln09`,`bln10`,`bln11`,`bln12`) values (49,2018,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000);

/*Table structure for table `simp_anggota` */

DROP TABLE IF EXISTS `simp_anggota`;

CREATE TABLE `simp_anggota` (
  `notrans` varchar(25) NOT NULL,
  `tglmutasi` date DEFAULT NULL,
  `idanggota` int(15) DEFAULT NULL,
  `kasdebet` varchar(15) DEFAULT NULL,
  `kaskredit` varchar(15) DEFAULT NULL,
  `tglinput` datetime DEFAULT NULL,
  `keterangan` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`notrans`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `simp_anggota` */

/*Table structure for table `statusposting` */

DROP TABLE IF EXISTS `statusposting`;

CREATE TABLE `statusposting` (
  `idx` smallint(1) NOT NULL,
  `postingjpk` smallint(1) DEFAULT '0',
  `postingjbk` smallint(1) DEFAULT '0',
  `postingbb` smallint(1) DEFAULT '0',
  `postingtutup` smallint(1) DEFAULT '0',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `statusposting` */

insert  into `statusposting`(`idx`,`postingjpk`,`postingjbk`,`postingbb`,`postingtutup`) values (1,0,1,0,0);

/*Table structure for table `tipe1` */

DROP TABLE IF EXISTS `tipe1`;

CREATE TABLE `tipe1` (
  `idtipe1` int(5) NOT NULL,
  `tipe1` varchar(15) DEFAULT NULL,
  `tipetambah` char(1) DEFAULT NULL,
  PRIMARY KEY (`idtipe1`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tipe1` */

insert  into `tipe1`(`idtipe1`,`tipe1`,`tipetambah`) values (1,'AKTIVA','D');
insert  into `tipe1`(`idtipe1`,`tipe1`,`tipetambah`) values (2,'PASIVA','K');
insert  into `tipe1`(`idtipe1`,`tipe1`,`tipetambah`) values (3,'PENDAPATAN','K');
insert  into `tipe1`(`idtipe1`,`tipe1`,`tipetambah`) values (4,'BIAYA','D');

/*Table structure for table `tipe2` */

DROP TABLE IF EXISTS `tipe2`;

CREATE TABLE `tipe2` (
  `idtipe2` int(5) NOT NULL AUTO_INCREMENT,
  `idtipe1` int(5) DEFAULT NULL,
  `tipe2` varchar(35) DEFAULT NULL,
  `kodeakun` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`idtipe2`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `tipe2` */

insert  into `tipe2`(`idtipe2`,`idtipe1`,`tipe2`,`kodeakun`) values (1,1,'AKTIVA LANCAR','11');
insert  into `tipe2`(`idtipe2`,`idtipe1`,`tipe2`,`kodeakun`) values (3,1,'AKTIVA TETAP','12');
insert  into `tipe2`(`idtipe2`,`idtipe1`,`tipe2`,`kodeakun`) values (4,2,'HUTANG LANCAR','21');
insert  into `tipe2`(`idtipe2`,`idtipe1`,`tipe2`,`kodeakun`) values (5,2,'HUTANG JK. PANJANG','22');
insert  into `tipe2`(`idtipe2`,`idtipe1`,`tipe2`,`kodeakun`) values (6,2,'MODAL DAN CADANGAN','23');
insert  into `tipe2`(`idtipe2`,`idtipe1`,`tipe2`,`kodeakun`) values (8,3,'PENDAPATAN OPERASIONAL','41');
insert  into `tipe2`(`idtipe2`,`idtipe1`,`tipe2`,`kodeakun`) values (9,4,'BEBAN OPERASIONAL','51');
insert  into `tipe2`(`idtipe2`,`idtipe1`,`tipe2`,`kodeakun`) values (11,3,'PENDAPATAN NON OPERASIONAL','42');
insert  into `tipe2`(`idtipe2`,`idtipe1`,`tipe2`,`kodeakun`) values (12,4,'BEBAN NON OPERASIONAL','55');

/*Table structure for table `tipe3` */

DROP TABLE IF EXISTS `tipe3`;

CREATE TABLE `tipe3` (
  `idtipe3` int(10) NOT NULL AUTO_INCREMENT,
  `idtipe2` int(10) DEFAULT NULL,
  `tipe3` varchar(45) DEFAULT NULL,
  `kodeakun` varchar(9) DEFAULT NULL,
  `idtipearuskas` int(5) DEFAULT NULL,
  PRIMARY KEY (`idtipe3`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `tipe3` */

insert  into `tipe3`(`idtipe3`,`idtipe2`,`tipe3`,`kodeakun`,`idtipearuskas`) values (1,1,'KAS DAN BANK','11.10',4);
insert  into `tipe3`(`idtipe3`,`idtipe2`,`tipe3`,`kodeakun`,`idtipearuskas`) values (2,1,'PIUTANG USAHA','11.20',1);
insert  into `tipe3`(`idtipe3`,`idtipe2`,`tipe3`,`kodeakun`,`idtipearuskas`) values (3,1,'PERSEDIAAN','11.30',1);
insert  into `tipe3`(`idtipe3`,`idtipe2`,`tipe3`,`kodeakun`,`idtipearuskas`) values (4,3,'NILAI PROLEHAN (AKTIVA TETAP)','14.10',2);
insert  into `tipe3`(`idtipe3`,`idtipe2`,`tipe3`,`kodeakun`,`idtipearuskas`) values (5,3,'AKUMULASI PENYUSUTAN','14.20',1);
insert  into `tipe3`(`idtipe3`,`idtipe2`,`tipe3`,`kodeakun`,`idtipearuskas`) values (6,4,'HUTANG USAHA','21.10',1);
insert  into `tipe3`(`idtipe3`,`idtipe2`,`tipe3`,`kodeakun`,`idtipearuskas`) values (7,4,'HUTANG BANK JANGKA PENDEK','21.20',1);
insert  into `tipe3`(`idtipe3`,`idtipe2`,`tipe3`,`kodeakun`,`idtipearuskas`) values (8,6,'DANA SIMPANAN','23.10',3);
insert  into `tipe3`(`idtipe3`,`idtipe2`,`tipe3`,`kodeakun`,`idtipearuskas`) values (9,5,'HUTANG BANK JANGKA PANJANG','22.10',1);
insert  into `tipe3`(`idtipe3`,`idtipe2`,`tipe3`,`kodeakun`,`idtipearuskas`) values (10,6,'SHU','24.10',3);
insert  into `tipe3`(`idtipe3`,`idtipe2`,`tipe3`,`kodeakun`,`idtipearuskas`) values (11,6,'DANA CADANGAN','25.10',1);
insert  into `tipe3`(`idtipe3`,`idtipe2`,`tipe3`,`kodeakun`,`idtipearuskas`) values (12,8,'PENDAPATAN PINJAMAN ANGGOTA','41.10',1);
insert  into `tipe3`(`idtipe3`,`idtipe2`,`tipe3`,`kodeakun`,`idtipearuskas`) values (13,11,'PENDAPATAN LAINNYA NON OPS','42.90',1);
insert  into `tipe3`(`idtipe3`,`idtipe2`,`tipe3`,`kodeakun`,`idtipearuskas`) values (14,9,'BEBAN BUNGA PINAJAMAN BANK','51.10',1);
insert  into `tipe3`(`idtipe3`,`idtipe2`,`tipe3`,`kodeakun`,`idtipearuskas`) values (15,9,'BEBAN OPERASIONAL KANTOR','51.20',1);
insert  into `tipe3`(`idtipe3`,`idtipe2`,`tipe3`,`kodeakun`,`idtipearuskas`) values (16,9,'BEBAN GAJI','51.30',1);
insert  into `tipe3`(`idtipe3`,`idtipe2`,`tipe3`,`kodeakun`,`idtipearuskas`) values (17,12,'BEBAN RAT & RAB','55.10',1);
insert  into `tipe3`(`idtipe3`,`idtipe2`,`tipe3`,`kodeakun`,`idtipearuskas`) values (18,12,'BEBAN PENYUSUTAN','55.20',1);
insert  into `tipe3`(`idtipe3`,`idtipe2`,`tipe3`,`kodeakun`,`idtipearuskas`) values (19,12,'BEBAN LAINNYA NON OPS','55.90',1);

/*Table structure for table `tipearuskas` */

DROP TABLE IF EXISTS `tipearuskas`;

CREATE TABLE `tipearuskas` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `namatipe` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tipearuskas` */

insert  into `tipearuskas`(`id`,`namatipe`) values (0,'-');
insert  into `tipearuskas`(`id`,`namatipe`) values (1,'AKTIVITAS OPERASIONAL');
insert  into `tipearuskas`(`id`,`namatipe`) values (2,'AKTIVITAS INVESTASI');
insert  into `tipearuskas`(`id`,`namatipe`) values (3,'AKTIVITAS PENDANAAN');
insert  into `tipearuskas`(`id`,`namatipe`) values (4,'SALDO KAS AWAL');

/*Table structure for table `tipearuskas_l` */

DROP TABLE IF EXISTS `tipearuskas_l`;

CREATE TABLE `tipearuskas_l` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `namatipe` varchar(65) DEFAULT NULL,
  `modtipe` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `tipearuskas_l` */

insert  into `tipearuskas_l`(`id`,`namatipe`,`modtipe`) values (-1,'SALDO AWAL','');
insert  into `tipearuskas_l`(`id`,`namatipe`,`modtipe`) values (0,'DILUAR USAHA','B - NON OPERASIONAL');
insert  into `tipearuskas_l`(`id`,`namatipe`,`modtipe`) values (1,'PENJUALAN TOKO','A - OPERASIONAL');
insert  into `tipearuskas_l`(`id`,`namatipe`,`modtipe`) values (2,'PIUTANG SP','A - OPERASIONAL');
insert  into `tipearuskas_l`(`id`,`namatipe`,`modtipe`) values (3,'USAHA PPOB','A - OPERASIONAL');
insert  into `tipearuskas_l`(`id`,`namatipe`,`modtipe`) values (4,'PERSEDIAAN HPP','A - OPERASIONAL');
insert  into `tipearuskas_l`(`id`,`namatipe`,`modtipe`) values (5,'PIUTANG LAINNYA','A - OPERASIONAL');
insert  into `tipearuskas_l`(`id`,`namatipe`,`modtipe`) values (7,'HUTANG PENJUALAN TOKO','A - OPERASIONAL');
insert  into `tipearuskas_l`(`id`,`namatipe`,`modtipe`) values (8,'HUTANG PEMBELIAN TOKO','A - OPERASIONAL');
insert  into `tipearuskas_l`(`id`,`namatipe`,`modtipe`) values (9,'INVESTASI','A - OPERASIONAL');
insert  into `tipearuskas_l`(`id`,`namatipe`,`modtipe`) values (10,'HUTANG PAJAK','B - NON OPERASIONAL');
insert  into `tipearuskas_l`(`id`,`namatipe`,`modtipe`) values (11,'TABUNGAN ANGGOTA','B - NON OPERASIONAL');
insert  into `tipearuskas_l`(`id`,`namatipe`,`modtipe`) values (12,'HUTANG PEMBAYARAN SHU','A - OPERASIONAL');
insert  into `tipearuskas_l`(`id`,`namatipe`,`modtipe`) values (13,'HUTANG USAHA LAINNYA','A - OPERASIONAL');
insert  into `tipearuskas_l`(`id`,`namatipe`,`modtipe`) values (14,'MODAL SIMPANAN','A - OPERASIONAL');
insert  into `tipearuskas_l`(`id`,`namatipe`,`modtipe`) values (15,'MODAL DANA CADANGAN','A - OPERASIONAL');
insert  into `tipearuskas_l`(`id`,`namatipe`,`modtipe`) values (16,'USAHA JASA LAINNYA','A - OPERASIONAL');
insert  into `tipearuskas_l`(`id`,`namatipe`,`modtipe`) values (17,'LAIN - LAIN','B - NON OPERASIONAL');
insert  into `tipearuskas_l`(`id`,`namatipe`,`modtipe`) values (18,'JASA BANK','B - NON OPERASIONAL');
insert  into `tipearuskas_l`(`id`,`namatipe`,`modtipe`) values (20,'TENAGA KERJA','A - OPERASIONAL');
insert  into `tipearuskas_l`(`id`,`namatipe`,`modtipe`) values (21,'USAHA MANAJEMEN','A - OPERASIONAL');

/*Table structure for table `tipejurnal` */

DROP TABLE IF EXISTS `tipejurnal`;

CREATE TABLE `tipejurnal` (
  `nama` varchar(35) NOT NULL,
  PRIMARY KEY (`nama`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tipejurnal` */

insert  into `tipejurnal`(`nama`) values ('JURNAL HPP');
insert  into `tipejurnal`(`nama`) values ('JURNAL PENJUALAN');
insert  into `tipejurnal`(`nama`) values ('JURNAL PENUTUP');
insert  into `tipejurnal`(`nama`) values ('JURNAL PENYESUAIAN');
insert  into `tipejurnal`(`nama`) values ('JURNAL UMUM');

/*Table structure for table `ttdlap` */

DROP TABLE IF EXISTS `ttdlap`;

CREATE TABLE `ttdlap` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `kode` varchar(5) DEFAULT NULL,
  `namalap` varchar(45) DEFAULT NULL,
  `id1` int(5) DEFAULT NULL,
  `id2` int(5) DEFAULT NULL,
  `id3` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`kode`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `ttdlap` */

insert  into `ttdlap`(`id`,`kode`,`namalap`,`id1`,`id2`,`id3`) values (1,'km','LAPORAN KAS MASUK',6,8,7);
insert  into `ttdlap`(`id`,`kode`,`namalap`,`id1`,`id2`,`id3`) values (2,'kk','LAPORAN KAS KELUAR',3,8,7);
insert  into `ttdlap`(`id`,`kode`,`namalap`,`id1`,`id2`,`id3`) values (3,'kt','LAPORAN KAS TRANSFER',3,8,7);
insert  into `ttdlap`(`id`,`kode`,`namalap`,`id1`,`id2`,`id3`) values (4,'jpk','JURNAL PENERIMAAN KAS',3,8,7);
insert  into `ttdlap`(`id`,`kode`,`namalap`,`id1`,`id2`,`id3`) values (5,'jbk','JURNAL BAYAR KAS',3,8,7);
insert  into `ttdlap`(`id`,`kode`,`namalap`,`id1`,`id2`,`id3`) values (6,'sbb','SUB BUKU BESAR',3,8,7);
insert  into `ttdlap`(`id`,`kode`,`namalap`,`id1`,`id2`,`id3`) values (7,'lr1','LABA RUGI DETAIL',3,8,7);
insert  into `ttdlap`(`id`,`kode`,`namalap`,`id1`,`id2`,`id3`) values (8,'lr2','LABA RUGI REKAP',3,8,7);
insert  into `ttdlap`(`id`,`kode`,`namalap`,`id1`,`id2`,`id3`) values (9,'nrc1','NERACA',3,8,7);
insert  into `ttdlap`(`id`,`kode`,`namalap`,`id1`,`id2`,`id3`) values (10,'nrc2','NERACA REKAP',3,8,7);
insert  into `ttdlap`(`id`,`kode`,`namalap`,`id1`,`id2`,`id3`) values (11,'pu1','ARUS KAS METODE LANGSUNG',3,8,7);
insert  into `ttdlap`(`id`,`kode`,`namalap`,`id1`,`id2`,`id3`) values (12,'pu2','ARUS KAS METODE TIDAK LANGSUNG',3,8,7);
insert  into `ttdlap`(`id`,`kode`,`namalap`,`id1`,`id2`,`id3`) values (13,'setor','LAPORAN DAFTAR SETORAN',3,8,7);
insert  into `ttdlap`(`id`,`kode`,`namalap`,`id1`,`id2`,`id3`) values (14,'tarik','LAPORAN DAFTAR PENARIKAN',3,8,7);
insert  into `ttdlap`(`id`,`kode`,`namalap`,`id1`,`id2`,`id3`) values (15,'tagih','LAPORAN DAFTAR TAGIHAN',3,8,7);
insert  into `ttdlap`(`id`,`kode`,`namalap`,`id1`,`id2`,`id3`) values (17,'bpinj','BUKU PINJAMAN ANGGOTA',3,8,7);
insert  into `ttdlap`(`id`,`kode`,`namalap`,`id1`,`id2`,`id3`) values (18,'pinj','LAPORAN DAFTAR PINJAMAN',3,8,7);
insert  into `ttdlap`(`id`,`kode`,`namalap`,`id1`,`id2`,`id3`) values (19,'bukus','BUKU SIMPANAN ANGGOTA',3,8,7);

/*Table structure for table `userakses` */

DROP TABLE IF EXISTS `userakses`;

CREATE TABLE `userakses` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) DEFAULT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `jabatan` char(35) DEFAULT NULL,
  `nik` char(15) DEFAULT NULL,
  `pass` varchar(55) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `userakses` */

insert  into `userakses`(`id`,`username`,`nama`,`jabatan`,`nik`,`pass`,`alamat`) values (4,'admin','HANIF KURNIAWAN','ADMINISTRATOR','00','21232f297a57a5a743894a0e4a801fc3','admin');
insert  into `userakses`(`id`,`username`,`nama`,`jabatan`,`nik`,`pass`,`alamat`) values (5,'rachma','RACHMAWATI','STAF SUB.BAG REKENING','-','81dc9bdb52d04dc20036dbd8313ed055','-');
insert  into `userakses`(`id`,`username`,`nama`,`jabatan`,`nik`,`pass`,`alamat`) values (6,'yusuf','YUSUP','STAF PEMELIHARAAN','-','81dc9bdb52d04dc20036dbd8313ed055','-');
insert  into `userakses`(`id`,`username`,`nama`,`jabatan`,`nik`,`pass`,`alamat`) values (7,'yayuk','SRI RAHAYU','STAF SUB.BAG REKENING','-','81dc9bdb52d04dc20036dbd8313ed055','-');
insert  into `userakses`(`id`,`username`,`nama`,`jabatan`,`nik`,`pass`,`alamat`) values (8,'andi','ANDI ACHMAD, ST','KASUBAG. PEMELIHARAAN','-','81dc9bdb52d04dc20036dbd8313ed055','-');
insert  into `userakses`(`id`,`username`,`nama`,`jabatan`,`nik`,`pass`,`alamat`) values (9,'poniman','PONIMAN','STAF PEMELIHARAAN','','81dc9bdb52d04dc20036dbd8313ed055','-');
insert  into `userakses`(`id`,`username`,`nama`,`jabatan`,`nik`,`pass`,`alamat`) values (10,'suharto','SUHARTO','STAF PEMELIHARAAN','','81dc9bdb52d04dc20036dbd8313ed055','-');
insert  into `userakses`(`id`,`username`,`nama`,`jabatan`,`nik`,`pass`,`alamat`) values (11,'bagus','BAGUS PRIYO SAMBODO','STAF SUB.BAG REKENING','','81dc9bdb52d04dc20036dbd8313ed055','-');

/* Function  structure for function  `cariidcoalr` */

/*!50003 DROP FUNCTION IF EXISTS `cariidcoalr` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `cariidcoalr`() RETURNS int(10)
BEGIN
	DECLARE nm INT(10);
	DECLARE nm2 INT(10);
	SELECT ifnull(idcoaselisihlr,-1) FROM `pengaturan` INTO nm;
	select ifnull(a.idcoa,-1) from (select idcoa from masterakun where idcoa=nm) a into nm2;
	RETURN nm2;
    END */$$
DELIMITER ;

/* Function  structure for function  `cariidjurnal` */

/*!50003 DROP FUNCTION IF EXISTS `cariidjurnal` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `cariidjurnal`() RETURNS int(15)
BEGIN
	DECLARE nm INT(15);
	SELECT IFNULL(MAX(idju)+1,1) FROM `ju` into nm;
	return nm;
    END */$$
DELIMITER ;

/* Function  structure for function  `noautoangsur` */

/*!50003 DROP FUNCTION IF EXISTS `noautoangsur` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `noautoangsur`(_periode DATE, _kode CHAR(1) ) RETURNS varchar(20) CHARSET latin1
BEGIN
	DECLARE nm VARCHAR(20);
        SELECT CONCAT("L",_kode,DATE_FORMAT(_periode,"%y%m"),LPAD(IFNULL(MAX(RIGHT(nopelunasan,4))+1,1),4,"0")) AS noauto FROM d_angsuran WHERE 
	DATE_FORMAT(tglbayar,"%y%m")=DATE_FORMAT(_periode,"%y%m") and isnull(`nopelunasan`)=false INTO nm;	
	RETURN nm;
END */$$
DELIMITER ;

/* Function  structure for function  `noautojbk` */

/*!50003 DROP FUNCTION IF EXISTS `noautojbk` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `noautojbk`(tgl date) RETURNS varchar(20) CHARSET latin1
BEGIN
	DECLARE nm VARCHAR(20);
	SELECT concat(LPAD(IFNULL(MAX(SUBSTRING_INDEX(notrans,"/",1))+1,1),4,"0"),"/JBK/",
	case month(tgl) when 1 then "I"
	when 2 then "II"
	when 3 then "III"
	when 4 then "IV"
	WHEN 5 THEN "V"
	WHEN 6 THEN "VI"
	WHEN 7 THEN "VII"
	WHEN 8 THEN "VIII"
	WHEN 9 THEN "IX"
	WHEN 10 THEN "X"
	WHEN 11 THEN "XI"
	else "XII" END
	,"/",year(tgl)
        )
	 AS nomor FROM jbk WHERE DATE_FORMAT(tanggal,"%Y%m")=DATE_FORMAT(tgl,"%Y%m") INTO nm;
	RETURN nm;
    END */$$
DELIMITER ;

/* Function  structure for function  `noautojpk` */

/*!50003 DROP FUNCTION IF EXISTS `noautojpk` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `noautojpk`(tgl date) RETURNS varchar(20) CHARSET latin1
BEGIN
	DECLARE nm VARCHAR(20);
	SELECT concat(LPAD(IFNULL(MAX(SUBSTRING_INDEX(notrans,"/",1))+1,1),4,"0"),"/JPK/",
	case month(tgl) when 1 then "I"
	when 2 then "II"
	when 3 then "III"
	when 4 then "IV"
	WHEN 5 THEN "V"
	WHEN 6 THEN "VI"
	WHEN 7 THEN "VII"
	WHEN 8 THEN "VIII"
	WHEN 9 THEN "IX"
	WHEN 10 THEN "X"
	WHEN 11 THEN "XI"
	else "XII" END
	,"/",year(tgl)
        )
	 AS nomor FROM jpk WHERE DATE_FORMAT(tanggal,"%Y%m")=DATE_FORMAT(tgl,"%Y%m") INTO nm;
	RETURN nm;
    END */$$
DELIMITER ;

/* Function  structure for function  `noautojurnal` */

/*!50003 DROP FUNCTION IF EXISTS `noautojurnal` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `noautojurnal`(tgl date) RETURNS varchar(20) CHARSET latin1
BEGIN
	DECLARE nm VARCHAR(20);
	SELECT concat(LPAD(IFNULL(MAX(SUBSTRING_INDEX(notrans,"/",1))+1,1),4,"0"),"/JU/",
	case month(tgl) when 1 then "I"
	when 2 then "II"
	when 3 then "III"
	when 4 then "IV"
	WHEN 5 THEN "V"
	WHEN 6 THEN "VI"
	WHEN 7 THEN "VII"
	WHEN 8 THEN "VIII"
	WHEN 9 THEN "IX"
	WHEN 10 THEN "X"
	WHEN 11 THEN "XI"
	else "XII" END
	,"/",year(tgl)
        )
	 AS nomor FROM ju WHERE DATE_FORMAT(tanggal,"%Y%m")=DATE_FORMAT(tgl,"%Y%m") INTO nm;
	RETURN nm;
    END */$$
DELIMITER ;

/* Function  structure for function  `noautokk` */

/*!50003 DROP FUNCTION IF EXISTS `noautokk` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `noautokk`(_periode DATE) RETURNS varchar(20) CHARSET latin1
BEGIN
	DECLARE nm VARCHAR(20);
        SELECT CONCAT("KK",DATE_FORMAT(_periode,"%y%m"),LPAD(IFNULL(MAX(RIGHT(notrans,3))+1,1),3,"0")) AS noauto FROM m_kaskeluar WHERE 
	DATE_FORMAT(tanggal,"%y%m")=DATE_FORMAT(_periode,"%y%m") INTO nm;	
	RETURN nm;
END */$$
DELIMITER ;

/* Function  structure for function  `noautokm` */

/*!50003 DROP FUNCTION IF EXISTS `noautokm` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `noautokm`(_periode DATE) RETURNS varchar(20) CHARSET latin1
BEGIN
	DECLARE nm VARCHAR(20);
        SELECT CONCAT("KM",DATE_FORMAT(_periode,"%y%m"),LPAD(IFNULL(MAX(RIGHT(notrans,3))+1,1),3,"0")) AS noauto FROM m_kasmasuk WHERE 
	DATE_FORMAT(tanggal,"%y%m")=DATE_FORMAT(_periode,"%y%m") INTO nm;	
	RETURN nm;
END */$$
DELIMITER ;

/* Function  structure for function  `noautokt` */

/*!50003 DROP FUNCTION IF EXISTS `noautokt` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `noautokt`(_periode DATE) RETURNS varchar(20) CHARSET latin1
BEGIN
	DECLARE nm VARCHAR(20);
        SELECT CONCAT("KT",DATE_FORMAT(_periode,"%y%m"),LPAD(IFNULL(MAX(RIGHT(notrans,3))+1,1),3,"0")) AS noauto FROM m_kastransfer WHERE 
	DATE_FORMAT(tanggal,"%y%m")=DATE_FORMAT(_periode,"%y%m") INTO nm;	
	RETURN nm;
END */$$
DELIMITER ;

/* Function  structure for function  `noautopinj` */

/*!50003 DROP FUNCTION IF EXISTS `noautopinj` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `noautopinj`(_periode DATE) RETURNS varchar(20) CHARSET latin1
BEGIN
	DECLARE nm VARCHAR(20);
        SELECT CONCAT("PJ",DATE_FORMAT(_periode,"%y%m"),LPAD(IFNULL(MAX(RIGHT(nopinjaman,4))+1,1),4,"0")) AS noauto FROM m_pinjaman WHERE 
	DATE_FORMAT(tglpinjam,"%y%m")=DATE_FORMAT(_periode,"%y%m") INTO nm;	
	RETURN nm;
END */$$
DELIMITER ;

/* Function  structure for function  `noautosimp` */

/*!50003 DROP FUNCTION IF EXISTS `noautosimp` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `noautosimp`(_periode date, _kode char(1) ) RETURNS varchar(20) CHARSET latin1
BEGIN
	DECLARE nm VARCHAR(20);
        SELECT CONCAT("S",_kode,DATE_FORMAT(_periode,"%y%m"),LPAD(IFNULL(MAX(RIGHT(notrans,4))+1,1),4,"0")) AS noauto FROM simp_anggota WHERE 
	DATE_FORMAT(tglmutasi,"%y%m")=DATE_FORMAT(_periode,"%y%m") INTO nm;	
	RETURN nm;
END */$$
DELIMITER ;

/* Procedure structure for procedure `bukupinjaman` */

/*!50003 DROP PROCEDURE IF EXISTS  `bukupinjaman` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `bukupinjaman`(_idanggota int(6))
BEGIN
	SELECT a.*,
	b.`sisabunga`,
	b.`sisapokokangsuran`,
	c.namaanggota,
	d.namakolektif FROM m_pinjaman a 
	LEFT JOIN v_sisa_angsuran b ON a.nopinjaman=b.nopinjaman
	LEFT JOIN anggota c ON a.idanggota=c.`idanggota`
	LEFT JOIN kolektif d ON c.idkolektif=d.`idkolektif`
	where a.`idanggota`=_idanggota and b.`sisapokokangsuran` > 0;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `bukupinjamanlap` */

/*!50003 DROP PROCEDURE IF EXISTS  `bukupinjamanlap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `bukupinjamanlap`(_nopinjaman varchar(35))
BEGIN
	SELECT a.nopinjaman,a.periode,a.pokok,a.bunga,a.denda,a.jumlah,
	a.flaglunas,a.tgljatuhtempo,a.noangsuran,b.platform,b.persentase,b.tipeangsuran,b.lamaangsuran,b.tglpinjam,
	c.kodeanggota,c.namaanggota,c.alamat,
	IF(flaglunas=0,"Belum Lunas",DATE_FORMAT(tglbayar,"%d/%m/%Y")) AS tglbayar FROM  d_angsuran a
	left join m_pinjaman b on a.nopinjaman=b.nopinjaman
	left join anggota c on b.idanggota=c.idanggota
	where a.nopinjaman=_nopinjaman
	order by noangsuran;
 END */$$
DELIMITER ;

/* Procedure structure for procedure `bukusimpanggota` */

/*!50003 DROP PROCEDURE IF EXISTS  `bukusimpanggota` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `bukusimpanggota`(_idanggota int(10))
BEGIN
	SELECT tt1.*,date_format(tglmutasi,"%d-%m-%y") as tgltrx,
	@saldo:=@saldo+simppokok+simpwajib+simpmanasuka+simphariraya+simplain AS saldo
	FROM(
	SELECT a.*,a1.namaanggota,a1.alamat,a1.kodeanggota,
	COALESCE(t1.kredit-t1.debet,0) AS simppokok,
	COALESCE(t2.kredit-t2.debet,0) AS simpwajib,
	COALESCE(t3.kredit-t3.debet,0) AS simpmanasuka,
	COALESCE(t4.kredit-t4.debet,0) AS simphariraya,
	COALESCE(t5.kredit-t5.debet,0) AS simplain
	FROM (SELECT notrans,idanggota,tglmutasi FROM simp_anggota WHERE idanggota=_idanggota) a 
	LEFT JOIN d_simp_anggota t1 ON a.notrans=t1.notrans AND t1.`idsimpanan`="1"  
	LEFT JOIN d_simp_anggota t2 ON a.notrans=t2.notrans AND t2.`idsimpanan`="2"  
	LEFT JOIN d_simp_anggota t3 ON a.notrans=t3.notrans AND t3.`idsimpanan`="3"  	
	LEFT JOIN d_simp_anggota t4 ON a.notrans=t4.notrans AND t4.`idsimpanan`="4"  
	LEFT JOIN (SELECT notrans,idsimpanan,SUM(debet) AS debet,SUM(kredit) AS kredit FROM d_simp_anggota WHERE idsimpanan>4 GROUP BY notrans) t5 ON a.notrans=t5.notrans
	left join anggota a1 on a.idanggota=a1.idanggota
	JOIN (SELECT @saldo:=0) tt2     
        ORDER BY a.tglmutasi ASC,a.notrans) AS tt1;
     END */$$
DELIMITER ;

/* Procedure structure for procedure `cekbayarangsuran` */

/*!50003 DROP PROCEDURE IF EXISTS  `cekbayarangsuran` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `cekbayarangsuran`(_periode varchar(6))
BEGIN
SELECT a.nopelunasan AS notrans,a.tglbayar AS tanggal,a.pokok,a.`denda`,a.`bunga`,
CONCAT("PEMBAYARAN ANGSURAN PERIODE : ",a.periode," DENGAN NO : ",a.nopelunasan) AS keterangan,
a.jumlah AS total,r.idcoabyrpokok AS idcoapokok,r.idcoabunga,r.idcoadenda,b.idcoa AS idcoadebet  FROM d_angsuran a
LEFT JOIN akunkas b ON a.kasdebet=b.namakas
JOIN pengaturan r 
WHERE a.flaglunas="1"
and date_format(a.tglbayar,"%Y%m")=_periode order by a.tglbayar,a.nopelunasan;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `cekbyadminpinjaman` */

/*!50003 DROP PROCEDURE IF EXISTS  `cekbyadminpinjaman` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `cekbyadminpinjaman`(_periode varchar(6))
BEGIN
SELECT a.nopinjaman AS notrans,a.tglpinjam AS tanggal,
CONCAT("PEND. BIAYA ADMINISTRASI NO PINJAMAN : ",a.nopinjaman) AS keterangan,a.byadmin AS total,r.idcoabyadm AS idcoa,b.idcoa as idcoakredit  FROM m_pinjaman a
left join akunkas b on a.kaskredit=b.namakas
JOIN pengaturan r  where date_format(a.tglpinjam,"%Y%m")=_periode order by a.tglpinjam,a.nopinjaman;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `cekkaskeluar` */

/*!50003 DROP PROCEDURE IF EXISTS  `cekkaskeluar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `cekkaskeluar`(_periode VARCHAR(6))
BEGIN
	SELECT a.notrans,a.tanggal,a.keterangan,a.total,b.idcoa FROM m_kaskeluar a LEFT JOIN akunkas b ON a.kas=b.`namakas`
	WHERE DATE_FORMAT(tanggal,"%Y%m")=_periode order by tanggal,notrans;
END */$$
DELIMITER ;

/* Procedure structure for procedure `cekkasmasuk` */

/*!50003 DROP PROCEDURE IF EXISTS  `cekkasmasuk` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `cekkasmasuk`(_periode varchar(6))
BEGIN
SELECT a.notrans,a.tanggal,a.keterangan,a.total,b.idcoa FROM m_kasmasuk a LEFT JOIN akunkas b ON a.kas=b.`namakas`
WHERE DATE_FORMAT(tanggal,"%Y%m")=_periode order by tanggal,notrans;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `cekkastransfer` */

/*!50003 DROP PROCEDURE IF EXISTS  `cekkastransfer` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `cekkastransfer`(_periode varchar(6))
BEGIN
	SELECT a.notrans,a.tanggal,a.keterangan,a.total,b.idcoa as idcoadebet,c.idcoa as idcoakredit FROM m_kastransfer a 
	LEFT JOIN akunkas b ON a.kasdebet=b.`namakas`
	LEFT JOIN akunkas c ON a.kaskredit=c.`namakas`
	WHERE DATE_FORMAT(tanggal,"%Y%m")=_periode order by tanggal,notrans;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `ceknoangsuran` */

/*!50003 DROP PROCEDURE IF EXISTS  `ceknoangsuran` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `ceknoangsuran`(_nopelunasan varchar(45))
BEGIN
	SELECT a.nopelunasan,a.nopinjaman,a.tglbayar,a.jumlah AS total,c.kodeanggota,c.namaanggota,a.periode,a.`noangsuran`  FROM d_angsuran a
	LEFT JOIN m_pinjaman b ON a.nopinjaman=b.nopinjaman
	LEFT JOIN anggota c ON b.`idanggota`=c.idanggota
	WHERE a.flaglunas="1"
	AND a.nopelunasan=_nopelunasan;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `ceknotrans` */

/*!50003 DROP PROCEDURE IF EXISTS  `ceknotrans` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `ceknotrans`(_notrans varchar(35))
BEGIN
	SET @kode := LEFT(_notrans,2);
	IF (@kode="KM") THEN
		SELECT a.notrans,a.tanggal,a.keterangan,a.total,b.idcoa,@kode as kode FROM m_kasmasuk a LEFT JOIN akunkas b ON a.kas=b.`namakas`
		WHERE notrans=_notrans;
	ELSEIF (@kode="KT") THEN 
		SELECT a.notrans,a.tanggal,a.keterangan,a.total,b.idcoa AS idcoadebet,c.idcoa AS idcoakredit,@kode AS kode FROM m_kastransfer a 
		LEFT JOIN akunkas b ON a.kasdebet=b.`namakas`
		LEFT JOIN akunkas c ON a.kaskredit=c.`namakas`
		WHERE a.notrans=_notrans;	
	ELSEIF (@kode="SM") THEN 
		SELECT a.notrans,a.tglmutasi AS tanggal,a.keterangan,c.total,d.idcoa,@kode as kode FROM simp_anggota a LEFT JOIN anggota b ON a.idanggota=b.idanggota
		LEFT JOIN (SELECT SUM(kredit) AS total,notrans FROM d_simp_anggota GROUP BY notrans) c ON a.notrans=c.notrans
		LEFT JOIN akunkas d ON a.`kasdebet`=d.namakas
		WHERE a.kaskredit="-" AND a.notrans=_notrans;
	ELSEIF (@kode="PJ") THEN
		SELECT a.nopinjaman AS notrans,a.tglpinjam AS tanggal,
		CONCAT("PEND. BIAYA ADMINISTRASI NO PINJAMAN : ",a.nopinjaman) AS keterangan,a.byadmin AS total,r.idcoabyadm AS idcoa,b.idcoa AS idcoakredit,
		@kode AS kode  FROM m_pinjaman a
		LEFT JOIN akunkas b ON a.kaskredit=b.namakas
		JOIN pengaturan r  WHERE a.nopinjaman=_notrans;
	ELSEIF (@kode="LA") THEN
		SELECT a.nopelunasan AS notrans,a.tglbayar AS tanggal,a.pokok,a.`denda`,a.`bunga`,		
		CONCAT("PEMBAYARAN ANGSURAN PERIODE : ",a.periode," DENGAN NO : ",a.nopelunasan) AS keterangan,
		a.jumlah AS total,r.idcoabyrpokok AS idcoapokok,r.idcoabunga,r.idcoadenda,b.idcoa AS idcoadebet,@kode AS kode  FROM d_angsuran a
		LEFT JOIN akunkas b ON a.kasdebet=b.namakas
		JOIN pengaturan r 
		WHERE a.flaglunas="1"
		AND a.nopelunasan=_notrans;
	ELSE
		SELECT -1;
	END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `ceknotransjbk` */

/*!50003 DROP PROCEDURE IF EXISTS  `ceknotransjbk` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `ceknotransjbk`(_notrans varchar(35))
BEGIN
	SET @kode := LEFT(_notrans,2);
	IF (@kode="KK") THEN
		SELECT a.notrans,a.tanggal,a.keterangan,a.total,b.idcoa,@kode as kode FROM m_kaskeluar a LEFT JOIN akunkas b ON a.kas=b.`namakas`
		WHERE notrans=_notrans;	
	ELSEIF (@kode="PJ") THEN
		SELECT a.nopinjaman AS notrans,a.tglpinjam AS tanggal,
		CONCAT("PINJAMAN ANGGOTA NO PINJAMAN : ",a.nopinjaman) AS keterangan,a.platform AS total,r.idcoapinjaman AS idcoa,b.idcoa AS idcoakredit,
		@kode AS kode FROM m_pinjaman a
		LEFT JOIN akunkas b ON a.kaskredit=b.namakas
		JOIN pengaturan r  WHERE a.nopinjaman=_notrans; 
	ELSE
		SELECT -1;
	END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `cekpinjaman` */

/*!50003 DROP PROCEDURE IF EXISTS  `cekpinjaman` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `cekpinjaman`(_periode varchar(6))
BEGIN
SELECT a.nopinjaman AS notrans,a.tglpinjam AS tanggal,
CONCAT("PINJAMAN ANGGOTA NO PINJAMAN : ",a.nopinjaman) AS keterangan,a.platform AS total,r.idcoapinjaman AS idcoa,b.idcoa AS idcoakredit  FROM m_pinjaman a
LEFT JOIN akunkas b ON a.kaskredit=b.namakas
JOIN pengaturan r  WHERE DATE_FORMAT(a.tglpinjam,"%Y%m")=_periode order by a.tglpinjam,a.nopinjaman;
END */$$
DELIMITER ;

/* Procedure structure for procedure `ceksetorsimpanan` */

/*!50003 DROP PROCEDURE IF EXISTS  `ceksetorsimpanan` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `ceksetorsimpanan`(_periode varchar(6))
BEGIN
SELECT a.notrans,a.tglmutasi AS tanggal,a.keterangan,c.total,d.idcoa FROM simp_anggota a LEFT JOIN anggota b ON a.idanggota=b.idanggota
LEFT JOIN (SELECT SUM(kredit) AS total,notrans FROM d_simp_anggota GROUP BY notrans) c ON a.notrans=c.notrans
LEFT JOIN akunkas d ON a.`kasdebet`=d.namakas
WHERE a.kaskredit="-" and date_format(a.tglmutasi,"%Y%m")=_periode order by a.tglmutasi,a.notrans;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `cektagihan` */

/*!50003 DROP PROCEDURE IF EXISTS  `cektagihan` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `cektagihan`(_nopinjaman varchar(25),_tglbayar date)
BEGIN
	SET @record = (SELECT COUNT(*) FROM m_pinjaman a LEFT JOIN v_sisa_angsuran b ON a.nopinjaman=b.nopinjaman WHERE b.sisapokokangsuran>0 and a.nopinjaman=_nopinjaman);
	IF @record > 0 THEN
           SELECT a.nopinjaman,a.periode,a.tgljatuhtempo,a.pokok,a.bunga,b.`tglpinjam`,a.noangsuran,d.`namaanggota`,e.`namakolektif`,
	    b.`persentase`,b.lamaangsuran,b.platform,
           IF(a.tgljatuhtempo<_tglbayar,IF(c.`persendenda`>0,
           CASE c.`persendendadari` 
           WHEN "POKOK ANGSURAN" THEN ROUND(a.pokok*c.`persendenda`/100)
           WHEN "POKOK & BUNGA ANGSURAN" THEN ROUND((a.pokok+a.bunga)*c.persendenda/100)
           ELSE ROUND(b.platform*c.persendenda/100) END,c.dendanominal),0
           ) AS denda,     
           (IF(a.tgljatuhtempo<_tglbayar,IF(c.`persendenda`>0,
           CASE c.`persendendadari` 
           WHEN "POKOK ANGSURAN" THEN ROUND(a.pokok*c.`persendenda`/100)
           WHEN "POKOK & BUNGA ANGSURAN" THEN ROUND((a.pokok+a.bunga)*c.persendenda/100)
           ELSE ROUND(b.platform*c.persendenda/100) END,c.dendanominal),0
           ))+a.pokok+a.bunga as jumlah 
	   FROM d_angsuran a LEFT JOIN m_pinjaman b ON a.`nopinjaman`=b.`nopinjaman`
	   LEFT JOIN parampinjaman c ON b.`idparam`=c.`idparam`
	   LEFT JOIN anggota d ON b.idanggota=d.`idanggota`
	   LEFT JOIN kolektif e ON d.idkolektif=e.`idkolektif`
	   WHERE a.flaglunas="0" AND a.nopinjaman=_nopinjaman and periode<=date_format(_tglbayar,"%Y%m")
	   ORDER BY noangsuran;	
	ELSE
		SELECT "-";
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `generatekodeakun` */

/*!50003 DROP PROCEDURE IF EXISTS  `generatekodeakun` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `generatekodeakun`(_idtipe3 int(5))
BEGIN
	SELECT IFNULL(IF(LENGTH(MAX(RIGHT(kodeakun,2))+1)=1,
	CONCAT("0",MAX(RIGHT(kodeakun,2))+1),
	MAX(RIGHT(kodeakun,2))+1),"01") AS kode  FROM masterakun WHERE idtipe3=_idtipe3;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `isidatattd` */

/*!50003 DROP PROCEDURE IF EXISTS  `isidatattd` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `isidatattd`(_namalap CHAR(25),_username CHAR(15))
BEGIN
	SELECT 
	a.nama AS nama1,
	a.jabatan AS jab1,
	a.nik AS nik1,
	b.nama AS nama2,
	b.jabatan AS jab2,
	b.nik AS nik2,
	c.nama AS nama3,
	c.jabatan AS jab3,
	c.nik AS nik3,
	d.nama AS nama4,
	d.jabatan AS jab4,
	d.nik AS nik4 
	FROM ttdlap t
	LEFT JOIN paraf a ON t.`id1`=a.`id`
	LEFT JOIN paraf b ON t.`id2`=b.`id`
	LEFT JOIN paraf c ON t.`id3`=c.`id`
	JOIN(SELECT nama,jabatan,nik FROM userakses WHERE username=_username) d
	WHERE t.`kode`=_namalap;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `noautoanggota` */

/*!50003 DROP PROCEDURE IF EXISTS  `noautoanggota` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `noautoanggota`(_idkol int(4))
BEGIN
	set @record = (select count(*) from kolektif where idkolektif=_idkol);
	if @record > 0 then
		SELECT LPAD(IFNULL(MAX(right(kodeanggota,4))+1,1),4,"0") as noauto from anggota where idkolektif=_idkol;
	else
		select "-";
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `cetakdaftartagihan` */

/*!50003 DROP PROCEDURE IF EXISTS  `cetakdaftartagihan` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `cetakdaftartagihan`(_periode varchar(6),_kode char(1))
BEGIN
	if _kode=0 then
		SELECT a.*,
		if(_periode>date_format(a.tglgabung,"%Y%m"),b.minimsetor,0) AS simpanan1,
		IF(_periode>DATE_FORMAT(a.tglgabung,"%Y%m"),c.minimsetor,0) AS simpanan2,
		IF(_periode>DATE_FORMAT(a.tglgabung,"%Y%m"),d.minimsetor,0) AS simpanan3,
		e.noangsuran,e.jumlah AS angsuran,f.namakolektif FROM anggota a LEFT JOIN 
		jenis_simpanan b ON b.idsimpanan=1 LEFT JOIN
		jenis_simpanan c ON c.idsimpanan=2 LEFT JOIN
		jenis_simpanan d ON d.idsimpanan=3 LEFT JOIN 
		kolektif f on a.idkolektif=f.idkolektif left join
		(SELECT a.noangsuran,a.jumlah,b.idanggota FROM d_angsuran a LEFT JOIN m_pinjaman b ON a.nopinjaman=b.nopinjaman WHERE a.flaglunas="0" AND a.periode=_periode) e ON a.`idanggota`=e.idanggota
		where a.aktif="AKTIF"
		order by namaanggota;
	else
		SELECT a.*,
		IF(_periode>DATE_FORMAT(a.tglgabung,"%Y%m"),b.minimsetor,0) AS simpanan1,
		IF(_periode>DATE_FORMAT(a.tglgabung,"%Y%m"),c.minimsetor,0) AS simpanan2,
		IF(_periode>DATE_FORMAT(a.tglgabung,"%Y%m"),d.minimsetor,0) AS simpanan3,
		e.noangsuran,e.jumlah AS angsuran,f.namakolektif FROM anggota a LEFT JOIN 
		jenis_simpanan b ON b.idsimpanan=1 LEFT JOIN
		jenis_simpanan c ON c.idsimpanan=2 LEFT JOIN
		jenis_simpanan d ON d.idsimpanan=3 LEFT JOIN 
		kolektif f ON a.idkolektif=f.idkolektif LEFT JOIN
		(SELECT a.noangsuran,a.jumlah,b.idanggota FROM d_angsuran a LEFT JOIN m_pinjaman b ON a.nopinjaman=b.nopinjaman WHERE a.flaglunas="0" AND a.periode=_periode) e ON a.`idanggota`=e.idanggota
		WHERE a.aktif="AKTIF"
		ORDER BY namakolektif,namaanggota;
	end if;			
    END */$$
DELIMITER ;

/* Procedure structure for procedure `noautoanggotakoreksi` */

/*!50003 DROP PROCEDURE IF EXISTS  `noautoanggotakoreksi` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `noautoanggotakoreksi`(_idkol INT(4),_idanggotalama int(5))
BEGIN
	SET @record = (SELECT COUNT(*) FROM kolektif WHERE idkolektif=_idkol);
	IF @record > 0 THEN
		SELECT LPAD(IFNULL(MAX(RIGHT(kodeanggota,4))+1,1),4,"0") AS noauto FROM anggota WHERE idkolektif=_idkol and idanggota<>_idanggotalama;
	ELSE
		SELECT "-";
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `posjurnalkebb` */

/*!50003 DROP PROCEDURE IF EXISTS  `posjurnalkebb` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `posjurnalkebb`(periode CHAR(6),idakun INT(10))
BEGIN
	SELECT a.*,b.kodeakun,b.namaakun ,b.`tipetambah`,j.notrans,"JU" AS kodejurnal,j.uraian as uraian FROM ju_ a 
	LEFT JOIN masterakun b ON a.idcoa=b.idcoa
	LEFT JOIN ju j ON a.idju=j.idju WHERE DATE_FORMAT(a.tanggal,"%Y%m")=periode AND a.idcoa=idakun
	union all
	SELECT a.*,b.kodeakun,b.namaakun ,b.`tipetambah`,j.notrans,"JPK" AS kodejurnal,j.penjelasan as uraian FROM jpk_ a 
	LEFT JOIN masterakun b ON a.idcoa=b.idcoa
	LEFT JOIN jpk j ON a.idju=j.idju WHERE DATE_FORMAT(a.tanggal,"%Y%m")=periode AND a.idcoa=idakun	
	union all 
	SELECT a.*,b.kodeakun,b.namaakun ,b.`tipetambah`,j.notrans,"JBK" AS kodejurnal,j.penjelasan as uraian FROM jbk_ a 
	LEFT JOIN masterakun b ON a.idcoa=b.idcoa
	LEFT JOIN jbk j ON a.idju=j.idju WHERE DATE_FORMAT(a.tanggal,"%Y%m")=periode AND a.idcoa=idakun		
	ORDER BY idcoa,tanggal,id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `q_lapkk` */

/*!50003 DROP PROCEDURE IF EXISTS  `q_lapkk` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `q_lapkk`(_periode VARCHAR(6))
BEGIN
	SELECT a.notrans,a.tglmutasi,a.kaskredit,a.keterangan,c.total FROM simp_anggota a LEFT JOIN anggota b ON a.idanggota=b.idanggota
	LEFT JOIN (SELECT SUM(debet) AS total,notrans FROM d_simp_anggota GROUP BY notrans) c ON a.notrans=c.notrans
	WHERE a.kasdebet="-" AND DATE_FORMAT(a.tglmutasi,"%Y%m")=_periode
	UNION ALL
	SELECT a.nopinjaman,a.tglpinjam,a.kaskredit,CONCAT("PENGAJUAN PINJAMAN ANGGOTA ",b.`namaanggota`) AS keterangan,a.platform FROM m_pinjaman a 
	LEFT JOIN anggota b ON a.`idanggota`=b.`idanggota`
	WHERE DATE_FORMAT(a.tglpinjam,"%Y%m")=_periode
	UNION ALL
	SELECT a.notrans,a.tanggal,a.kas,a.keterangan,a.total FROM m_kaskeluar a WHERE DATE_FORMAT(a.tanggal,"%Y%m")=_periode
	ORDER BY tglmutasi,notrans;
END */$$
DELIMITER ;

/* Procedure structure for procedure `q_lapkm` */

/*!50003 DROP PROCEDURE IF EXISTS  `q_lapkm` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `q_lapkm`(_periode varchar(6))
BEGIN
	SELECT a.notrans,a.tglmutasi,a.kasdebet,a.keterangan,c.total FROM simp_anggota a LEFT JOIN anggota b ON a.idanggota=b.idanggota
	LEFT JOIN (SELECT SUM(kredit) AS total,notrans FROM d_simp_anggota GROUP BY notrans) c ON a.notrans=c.notrans
	WHERE a.kaskredit="-" AND DATE_FORMAT(a.tglmutasi,"%Y%m")=_periode
	UNION ALL
	SELECT a.nopinjaman,a.tglpinjam,a.kaskredit,"PENDAPATAN BIAYA ADMINISTRASI PINJAMAN",a.byadmin FROM m_pinjaman a WHERE DATE_FORMAT(a.tglpinjam,"%Y%m")=_periode
	UNION ALL
	Select a.nopelunasan,a.tglbayar,a.kasdebet,Concat("PEMBAYARAN ANGSURAN KE ",a.noangsuran,", NOPINJAMAN : ",a.nopinjaman) as ket,a.jumlah from d_angsuran a where a.flaglunas="1" and  DATE_FORMAT(a.tglbayar,"%Y%m")=_periode
	union all 
	SELECT a.notrans,a.tanggal,a.kas,a.keterangan,a.total FROM m_kasmasuk a WHERE DATE_FORMAT(a.tanggal,"%Y%m")=_periode
	ORDER BY tglmutasi,notrans;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `q_lapkt` */

/*!50003 DROP PROCEDURE IF EXISTS  `q_lapkt` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `q_lapkt`(_periode VARCHAR(6))
BEGIN
	SELECT a.notrans,a.tanggal,a.kasdebet,a.kaskredit,a.keterangan,a.total FROM m_kastransfer a WHERE DATE_FORMAT(a.tanggal,"%Y%m")=_periode
	ORDER BY tanggal,notrans;
END */$$
DELIMITER ;

/*Table structure for table `d1_t1` */

DROP TABLE IF EXISTS `d1_t1`;

/*!50001 DROP VIEW IF EXISTS `d1_t1` */;
/*!50001 DROP TABLE IF EXISTS `d1_t1` */;

/*!50001 CREATE TABLE  `d1_t1`(
 `idcoa` int(15) ,
 `kodeakun` varchar(9) ,
 `namaakun` varchar(75) ,
 `debet` decimal(25,10) ,
 `kredit` decimal(25,10) ,
 `notrans` varchar(30) ,
 `noref` varchar(55) ,
 `tanggal` date ,
 `penjelasan` text 
)*/;

/*Table structure for table `idakunaktivapasiva` */

DROP TABLE IF EXISTS `idakunaktivapasiva`;

/*!50001 DROP VIEW IF EXISTS `idakunaktivapasiva` */;
/*!50001 DROP TABLE IF EXISTS `idakunaktivapasiva` */;

/*!50001 CREATE TABLE  `idakunaktivapasiva`(
 `idcoa` int(15) 
)*/;

/*Table structure for table `idakunbiayapend` */

DROP TABLE IF EXISTS `idakunbiayapend`;

/*!50001 DROP VIEW IF EXISTS `idakunbiayapend` */;
/*!50001 DROP TABLE IF EXISTS `idakunbiayapend` */;

/*!50001 CREATE TABLE  `idakunbiayapend`(
 `idcoa` int(15) 
)*/;

/*Table structure for table `masterakun` */

DROP TABLE IF EXISTS `masterakun`;

/*!50001 DROP VIEW IF EXISTS `masterakun` */;
/*!50001 DROP TABLE IF EXISTS `masterakun` */;

/*!50001 CREATE TABLE  `masterakun`(
 `idcoa` int(15) ,
 `kodeakun` varchar(9) ,
 `namaakun` varchar(75) ,
 `idtipe3` int(5) ,
 `idtipe2` int(10) ,
 `idtipe1` int(5) ,
 `tipe1` varchar(15) ,
 `tipe2` varchar(35) ,
 `tipe3` varchar(45) ,
 `tipetambah` char(1) ,
 `kodeakun2` varchar(9) ,
 `kodeakun3` varchar(9) ,
 `idtipearuskas` int(5) ,
 `idtipearuskas_l` int(5) 
)*/;

/*Table structure for table `masterakunaruskas` */

DROP TABLE IF EXISTS `masterakunaruskas`;

/*!50001 DROP VIEW IF EXISTS `masterakunaruskas` */;
/*!50001 DROP TABLE IF EXISTS `masterakunaruskas` */;

/*!50001 CREATE TABLE  `masterakunaruskas`(
 `idcoa` int(15) ,
 `kodeakun` varchar(9) ,
 `namaakun` varchar(75) ,
 `idtipe3` int(5) ,
 `idtipearuskas_l` int(5) ,
 `id` int(5) ,
 `namatipe` varchar(65) 
)*/;

/*Table structure for table `simpanan` */

DROP TABLE IF EXISTS `simpanan`;

/*!50001 DROP VIEW IF EXISTS `simpanan` */;
/*!50001 DROP TABLE IF EXISTS `simpanan` */;

/*!50001 CREATE TABLE  `simpanan`(
 `id` int(15) ,
 `notrans` varchar(25) ,
 `idsimpanan` int(5) ,
 `debet` decimal(15,2) ,
 `kredit` decimal(15,2) ,
 `idanggota` int(15) ,
 `namaanggota` varchar(75) ,
 `namasimpanan` varchar(50) 
)*/;

/*Table structure for table `tipeakun` */

DROP TABLE IF EXISTS `tipeakun`;

/*!50001 DROP VIEW IF EXISTS `tipeakun` */;
/*!50001 DROP TABLE IF EXISTS `tipeakun` */;

/*!50001 CREATE TABLE  `tipeakun`(
 `idtipe2` int(10) ,
 `kodeakun3` varchar(9) ,
 `idtipe1` int(5) ,
 `kodeakun2` varchar(9) ,
 `idtipe3` int(10) ,
 `tipe2` varchar(35) ,
 `tipe1` varchar(15) ,
 `tipetambah` char(1) ,
 `tipe3` varchar(45) ,
 `idtipearuskas` int(5) 
)*/;

/*Table structure for table `v_sisa_angsuran` */

DROP TABLE IF EXISTS `v_sisa_angsuran`;

/*!50001 DROP VIEW IF EXISTS `v_sisa_angsuran` */;
/*!50001 DROP TABLE IF EXISTS `v_sisa_angsuran` */;

/*!50001 CREATE TABLE  `v_sisa_angsuran`(
 `sisapokokangsuran` decimal(37,2) ,
 `sisabunga` decimal(37,2) ,
 `nopinjaman` varchar(15) 
)*/;

/*View structure for view d1_t1 */

/*!50001 DROP TABLE IF EXISTS `d1_t1` */;
/*!50001 DROP VIEW IF EXISTS `d1_t1` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `d1_t1` AS (select `a`.`idcoa` AS `idcoa`,`b`.`kodeakun` AS `kodeakun`,`b`.`namaakun` AS `namaakun`,`a`.`debet` AS `debet`,`a`.`kredit` AS `kredit`,`c`.`notrans` AS `notrans`,`c`.`noref` AS `noref`,`a`.`tanggal` AS `tanggal`,`c`.`penjelasan` AS `penjelasan` from ((`jpk_` `a` left join `coa` `b` on((`a`.`idcoa` = `b`.`idcoa`))) left join `jpk` `c` on((`a`.`idju` = `c`.`idju`))) order by `a`.`tanggal`,`c`.`notrans`,`a`.`id`) */;

/*View structure for view idakunaktivapasiva */

/*!50001 DROP TABLE IF EXISTS `idakunaktivapasiva` */;
/*!50001 DROP VIEW IF EXISTS `idakunaktivapasiva` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `idakunaktivapasiva` AS (select `masterakun`.`idcoa` AS `idcoa` from `masterakun` where (`masterakun`.`tipe1` in ('AKTIVA','PASIVA'))) */;

/*View structure for view idakunbiayapend */

/*!50001 DROP TABLE IF EXISTS `idakunbiayapend` */;
/*!50001 DROP VIEW IF EXISTS `idakunbiayapend` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `idakunbiayapend` AS (select `masterakun`.`idcoa` AS `idcoa` from `masterakun` where (`masterakun`.`tipe1` in ('PENDAPATAN','BIAYA'))) */;

/*View structure for view masterakun */

/*!50001 DROP TABLE IF EXISTS `masterakun` */;
/*!50001 DROP VIEW IF EXISTS `masterakun` */;

/*!50001 CREATE ALGORITHM=TEMPTABLE DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `masterakun` AS (select `a`.`idcoa` AS `idcoa`,`a`.`kodeakun` AS `kodeakun`,`a`.`namaakun` AS `namaakun`,`a`.`idtipe3` AS `idtipe3`,`b`.`idtipe2` AS `idtipe2`,`b`.`idtipe1` AS `idtipe1`,`b`.`tipe1` AS `tipe1`,`b`.`tipe2` AS `tipe2`,`b`.`tipe3` AS `tipe3`,`b`.`tipetambah` AS `tipetambah`,`b`.`kodeakun2` AS `kodeakun2`,`b`.`kodeakun3` AS `kodeakun3`,`b`.`idtipearuskas` AS `idtipearuskas`,`a`.`idtipearuskas_l` AS `idtipearuskas_l` from (`coa` `a` join `tipeakun` `b`) where (`a`.`idtipe3` = `b`.`idtipe3`)) */;

/*View structure for view masterakunaruskas */

/*!50001 DROP TABLE IF EXISTS `masterakunaruskas` */;
/*!50001 DROP VIEW IF EXISTS `masterakunaruskas` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `masterakunaruskas` AS (select `a`.`idcoa` AS `idcoa`,`a`.`kodeakun` AS `kodeakun`,`a`.`namaakun` AS `namaakun`,`a`.`idtipe3` AS `idtipe3`,`a`.`idtipearuskas_l` AS `idtipearuskas_l`,`b`.`id` AS `id`,`b`.`namatipe` AS `namatipe` from (`coa` `a` left join `tipearuskas_l` `b` on((`a`.`idtipearuskas_l` = `b`.`id`)))) */;

/*View structure for view simpanan */

/*!50001 DROP TABLE IF EXISTS `simpanan` */;
/*!50001 DROP VIEW IF EXISTS `simpanan` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `simpanan` AS (select `a`.`id` AS `id`,`a`.`notrans` AS `notrans`,`a`.`idsimpanan` AS `idsimpanan`,`a`.`debet` AS `debet`,`a`.`kredit` AS `kredit`,`b`.`idanggota` AS `idanggota`,`c`.`namaanggota` AS `namaanggota`,`d`.`namasimpanan` AS `namasimpanan` from (((`d_simp_anggota` `a` left join `simp_anggota` `b` on((`a`.`notrans` = `b`.`notrans`))) left join `anggota` `c` on((`b`.`idanggota` = `c`.`idanggota`))) left join `jenis_simpanan` `d` on((`a`.`idsimpanan` = `d`.`idsimpanan`)))) */;

/*View structure for view tipeakun */

/*!50001 DROP TABLE IF EXISTS `tipeakun` */;
/*!50001 DROP VIEW IF EXISTS `tipeakun` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `tipeakun` AS (select `a`.`idtipe2` AS `idtipe2`,`a`.`kodeakun` AS `kodeakun3`,`b`.`idtipe1` AS `idtipe1`,`b`.`kodeakun` AS `kodeakun2`,`a`.`idtipe3` AS `idtipe3`,`b`.`tipe2` AS `tipe2`,`c`.`tipe1` AS `tipe1`,`c`.`tipetambah` AS `tipetambah`,`a`.`tipe3` AS `tipe3`,`a`.`idtipearuskas` AS `idtipearuskas` from ((`tipe3` `a` join `tipe2` `b`) join `tipe1` `c`) where ((`a`.`idtipe2` = `b`.`idtipe2`) and (`b`.`idtipe1` = `c`.`idtipe1`))) */;

/*View structure for view v_sisa_angsuran */

/*!50001 DROP TABLE IF EXISTS `v_sisa_angsuran` */;
/*!50001 DROP VIEW IF EXISTS `v_sisa_angsuran` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_sisa_angsuran` AS (select sum(if((`d_angsuran`.`flaglunas` = 0),`d_angsuran`.`pokok`,0)) AS `sisapokokangsuran`,sum(if((`d_angsuran`.`flaglunas` = 0),`d_angsuran`.`bunga`,0)) AS `sisabunga`,`d_angsuran`.`nopinjaman` AS `nopinjaman` from `d_angsuran` group by `d_angsuran`.`nopinjaman`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
