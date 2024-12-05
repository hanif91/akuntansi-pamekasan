/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 5.7.24 : Database - akuntansi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `set_jpbik` */

DROP TABLE IF EXISTS `set_jpbik`;

CREATE TABLE `set_jpbik` (
  `kodeunit` varchar(5) NOT NULL,
  `namaunit` varchar(50) DEFAULT NULL,
  `kodejenis` varchar(5) NOT NULL,
  `kodekep` varchar(50) NOT NULL,
  `idcoa_deb` int(3) DEFAULT NULL,
  `idcoa_kre` int(3) DEFAULT NULL,
  PRIMARY KEY (`kodeunit`,`kodejenis`,`kodekep`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `set_jpbik` */

insert  into `set_jpbik`(`kodeunit`,`namaunit`,`kodejenis`,`kodekep`,`idcoa_deb`,`idcoa_kre`) values ('01','PUSAT','101','A2',129,79),('01','PUSAT','101','A3',128,79),('01','PUSAT','101','B2',398,79),('01','PUSAT','101','B3',397,79),('01','PUSAT','101','B4',366,79),('01','PUSAT','102','A2',133,80),('01','PUSAT','102','A3',133,80),('01','PUSAT','102','B2',401,80),('01','PUSAT','102','B3',401,80),('01','PUSAT','201','B2',366,70),('01','PUSAT','201','B3',366,70),('01','PUSAT','201','B4',366,70),('01','PUSAT','201','B6',366,70),('01','PUSAT','202','B5',440,77),('01','PUSAT','202','B7',442,77),('01','PUSAT','202','B8',446,77),('01','PUSAT','202','B9',456,77);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
