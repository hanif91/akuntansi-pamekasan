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

insert  into `akunkas`(`namakas`,`idcoa`,`indek`) values ('BANG BCA',-1,2);
insert  into `akunkas`(`namakas`,`idcoa`,`indek`) values ('KAS TUNAI',-1,1);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `anggota` */

insert  into `anggota`(`idanggota`,`kodeanggota`,`namaanggota`,`alamat`,`idkolektif`,`pekerjaan`,`nohp`,`jeniskelamin`,`tglgabung`,`tempat`,`tgllahir`,`aktif`) values (1,'ND0001','TITOK PROYOGO','PROBOLINGGO',3,'SWASTA','08113452565','LAKI - LAKI','2018-04-07','PROBOLINGGO','1990-08-02','AKTIF');
insert  into `anggota`(`idanggota`,`kodeanggota`,`namaanggota`,`alamat`,`idkolektif`,`pekerjaan`,`nohp`,`jeniskelamin`,`tglgabung`,`tempat`,`tgllahir`,`aktif`) values (2,'ND0002','HANIF KURNIAWAN','PROBOLINGGO',3,'SWASTA','08113452565','LAKI - LAKI','2018-04-07','PROBOLINGGO','1990-08-02','AKTIF');

/*Table structure for table `d_simp_anggota` */

DROP TABLE IF EXISTS `d_simp_anggota`;

CREATE TABLE `d_simp_anggota` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `notrans` varchar(25) DEFAULT NULL,
  `idsimpanan` int(5) DEFAULT NULL,
  `debet` decimal(15,2) DEFAULT NULL,
  `kredit` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `d_simp_anggota` */

insert  into `d_simp_anggota`(`id`,`notrans`,`idsimpanan`,`debet`,`kredit`) values (1,'SM18040001',1,0.00,50000.00);
insert  into `d_simp_anggota`(`id`,`notrans`,`idsimpanan`,`debet`,`kredit`) values (2,'SM18040001',2,0.00,25000.00);
insert  into `d_simp_anggota`(`id`,`notrans`,`idsimpanan`,`debet`,`kredit`) values (3,'SM18040001',3,0.00,5000.00);
insert  into `d_simp_anggota`(`id`,`notrans`,`idsimpanan`,`debet`,`kredit`) values (4,'SM18040002',1,0.00,50000.00);
insert  into `d_simp_anggota`(`id`,`notrans`,`idsimpanan`,`debet`,`kredit`) values (5,'SM18040002',2,0.00,25000.00);
insert  into `d_simp_anggota`(`id`,`notrans`,`idsimpanan`,`debet`,`kredit`) values (6,'SM18040002',3,0.00,5000.00);
insert  into `d_simp_anggota`(`id`,`notrans`,`idsimpanan`,`debet`,`kredit`) values (9,'SM18040004',2,0.00,25000.00);
insert  into `d_simp_anggota`(`id`,`notrans`,`idsimpanan`,`debet`,`kredit`) values (10,'SM18040004',3,0.00,5000.00);
insert  into `d_simp_anggota`(`id`,`notrans`,`idsimpanan`,`debet`,`kredit`) values (11,'SM18040005',2,0.00,25000.00);
insert  into `d_simp_anggota`(`id`,`notrans`,`idsimpanan`,`debet`,`kredit`) values (12,'SM18040005',3,0.00,5000.00);
insert  into `d_simp_anggota`(`id`,`notrans`,`idsimpanan`,`debet`,`kredit`) values (13,'SM18040006',2,0.00,35000.00);
insert  into `d_simp_anggota`(`id`,`notrans`,`idsimpanan`,`debet`,`kredit`) values (14,'SM18040006',3,0.00,5000.00);
insert  into `d_simp_anggota`(`id`,`notrans`,`idsimpanan`,`debet`,`kredit`) values (15,'SM18040007',2,0.00,25000.00);
insert  into `d_simp_anggota`(`id`,`notrans`,`idsimpanan`,`debet`,`kredit`) values (16,'SM18040007',3,0.00,5000.00);
insert  into `d_simp_anggota`(`id`,`notrans`,`idsimpanan`,`debet`,`kredit`) values (17,'SM18040008',2,0.00,25000.00);
insert  into `d_simp_anggota`(`id`,`notrans`,`idsimpanan`,`debet`,`kredit`) values (18,'SM18040008',3,0.00,5000.00);
insert  into `d_simp_anggota`(`id`,`notrans`,`idsimpanan`,`debet`,`kredit`) values (19,'SM18040009',2,0.00,35000.00);
insert  into `d_simp_anggota`(`id`,`notrans`,`idsimpanan`,`debet`,`kredit`) values (20,'SM18040009',3,0.00,5000.00);
insert  into `d_simp_anggota`(`id`,`notrans`,`idsimpanan`,`debet`,`kredit`) values (22,'SM18040010',3,5000.00,0.00);
insert  into `d_simp_anggota`(`id`,`notrans`,`idsimpanan`,`debet`,`kredit`) values (23,'SM18040011',3,7000.00,0.00);

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

/*Table structure for table `jenis_simpanan` */

DROP TABLE IF EXISTS `jenis_simpanan`;

CREATE TABLE `jenis_simpanan` (
  `idsimpanan` int(5) NOT NULL AUTO_INCREMENT,
  `namasimpanan` varchar(50) DEFAULT NULL,
  `minimsetor` decimal(12,2) DEFAULT NULL,
  `flagmodal` char(1) DEFAULT NULL,
  `indek` smallint(2) DEFAULT NULL,
  `flagsetor` char(1) DEFAULT NULL,
  PRIMARY KEY (`idsimpanan`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `jenis_simpanan` */

insert  into `jenis_simpanan`(`idsimpanan`,`namasimpanan`,`minimsetor`,`flagmodal`,`indek`,`flagsetor`) values (1,'SIMPANAN POKOK',50000.00,'1',1,'0');
insert  into `jenis_simpanan`(`idsimpanan`,`namasimpanan`,`minimsetor`,`flagmodal`,`indek`,`flagsetor`) values (2,'SIMPANAN WAJIB',25000.00,'1',2,'1');
insert  into `jenis_simpanan`(`idsimpanan`,`namasimpanan`,`minimsetor`,`flagmodal`,`indek`,`flagsetor`) values (3,'SIMPANAN MANASUKA',5000.00,'1',3,'1');
insert  into `jenis_simpanan`(`idsimpanan`,`namasimpanan`,`minimsetor`,`flagmodal`,`indek`,`flagsetor`) values (4,'SIMPANAN HARI RAYA',0.00,'0',4,'1');
insert  into `jenis_simpanan`(`idsimpanan`,`namasimpanan`,`minimsetor`,`flagmodal`,`indek`,`flagsetor`) values (5,'SIMPANAN LAIN - LAIN',0.00,'0',5,'1');

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

/*Table structure for table `m_simpanan` */

DROP TABLE IF EXISTS `m_simpanan`;

CREATE TABLE `m_simpanan` (
  `nosimpanan` varchar(15) NOT NULL,
  `idanggota` int(15) NOT NULL,
  `platform` decimal(15,2) DEFAULT '0.00',
  `tipeangsuran` enum('BULANAN','HARIAN') DEFAULT 'BULANAN',
  `byadmin` decimal(15,2) DEFAULT '0.00',
  `persentase` decimal(4,2) DEFAULT '0.00',
  `lamaanguran` smallint(3) DEFAULT '0',
  `tglpinjam` date DEFAULT NULL,
  `pokokbulan` decimal(15,2) DEFAULT '0.00',
  `bungabulan` decimal(15,2) DEFAULT '0.00',
  `jumlahbulan` decimal(15,2) DEFAULT '0.00',
  `waktuinput` datetime DEFAULT NULL,
  `idparam` int(15) NOT NULL,
  PRIMARY KEY (`nosimpanan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_simpanan` */

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

insert  into `simp_anggota`(`notrans`,`tglmutasi`,`idanggota`,`kasdebet`,`kaskredit`,`tglinput`,`keterangan`) values ('SM18040001','2018-04-07',1,'KAS TUNAI','-','2018-04-07 23:15:11','SETOR SIMPANAN AWAL : SIMPANAN POKOK,SIMPANAN WAJIB,SIMPANAN MANASUKA');
insert  into `simp_anggota`(`notrans`,`tglmutasi`,`idanggota`,`kasdebet`,`kaskredit`,`tglinput`,`keterangan`) values ('SM18040002','2018-04-07',2,'KAS TUNAI','-','2018-04-07 23:16:23','SETOR SIMPANAN AWAL : SIMPANAN POKOK,SIMPANAN WAJIB,SIMPANAN MANASUKA');
insert  into `simp_anggota`(`notrans`,`tglmutasi`,`idanggota`,`kasdebet`,`kaskredit`,`tglinput`,`keterangan`) values ('SM18040004','2018-04-18',2,'KAS TUNAI','-','2018-04-10 10:47:22','SETOR SIMPANAN : SIMPANAN WAJIB,SIMPANAN MANASUKA');
insert  into `simp_anggota`(`notrans`,`tglmutasi`,`idanggota`,`kasdebet`,`kaskredit`,`tglinput`,`keterangan`) values ('SM18040005','2018-04-26',2,'KAS TUNAI','-','2018-04-10 10:47:50','SETOR SIMPANAN : SIMPANAN WAJIB,SIMPANAN MANASUKA');
insert  into `simp_anggota`(`notrans`,`tglmutasi`,`idanggota`,`kasdebet`,`kaskredit`,`tglinput`,`keterangan`) values ('SM18040006','2018-04-19',2,'KAS TUNAI','-','2018-04-10 10:48:07','SETOR SIMPANAN : SIMPANAN WAJIB,SIMPANAN MANASUKA');
insert  into `simp_anggota`(`notrans`,`tglmutasi`,`idanggota`,`kasdebet`,`kaskredit`,`tglinput`,`keterangan`) values ('SM18040007','2018-04-12',1,'KAS TUNAI','-','2018-04-10 10:59:47','SETOR SIMPANAN : SIMPANAN WAJIB,SIMPANAN MANASUKA');
insert  into `simp_anggota`(`notrans`,`tglmutasi`,`idanggota`,`kasdebet`,`kaskredit`,`tglinput`,`keterangan`) values ('SM18040008','2018-04-18',1,'BANG BCA','-','2018-04-10 11:00:16','SETOR SIMPANAN : SIMPANAN WAJIB,SIMPANAN MANASUKA');
insert  into `simp_anggota`(`notrans`,`tglmutasi`,`idanggota`,`kasdebet`,`kaskredit`,`tglinput`,`keterangan`) values ('SM18040009','2018-04-04',1,'BANG BCA','-','2018-04-10 11:02:09','SETOR SIMPANAN : SIMPANAN WAJIB,SIMPANAN MANASUKA');
insert  into `simp_anggota`(`notrans`,`tglmutasi`,`idanggota`,`kasdebet`,`kaskredit`,`tglinput`,`keterangan`) values ('SM18040010','2018-04-10',1,'-','KAS TUNAI','2018-04-10 22:30:54','PENARIKAN SIMPANAN : SIMPANAN MANASUKA');
insert  into `simp_anggota`(`notrans`,`tglmutasi`,`idanggota`,`kasdebet`,`kaskredit`,`tglinput`,`keterangan`) values ('SM18040011','2018-04-10',2,'-','KAS TUNAI','2018-04-10 22:31:18','PENARIKAN SIMPANAN : SIMPANAN MANASUKA');

/* Function  structure for function  `noautosimp` */

/*!50003 DROP FUNCTION IF EXISTS `noautosimp` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `noautosimp`(_periode date) RETURNS varchar(20) CHARSET latin1
BEGIN
	DECLARE nm VARCHAR(20);
        SELECT CONCAT("SM",DATE_FORMAT(_periode,"%y%m"),LPAD(IFNULL(MAX(RIGHT(notrans,4))+1,1),4,"0")) AS noauto FROM simp_anggota WHERE 
	DATE_FORMAT(tglmutasi,"%y%m")=DATE_FORMAT(_periode,"%y%m") INTO nm;	
	RETURN nm;
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

/*View structure for view simpanan */

/*!50001 DROP TABLE IF EXISTS `simpanan` */;
/*!50001 DROP VIEW IF EXISTS `simpanan` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `simpanan` AS (select `a`.`id` AS `id`,`a`.`notrans` AS `notrans`,`a`.`idsimpanan` AS `idsimpanan`,`a`.`debet` AS `debet`,`a`.`kredit` AS `kredit`,`b`.`idanggota` AS `idanggota`,`c`.`namaanggota` AS `namaanggota`,`d`.`namasimpanan` AS `namasimpanan` from (((`d_simp_anggota` `a` left join `simp_anggota` `b` on((`a`.`notrans` = `b`.`notrans`))) left join `anggota` `c` on((`b`.`idanggota` = `c`.`idanggota`))) left join `jenis_simpanan` `d` on((`a`.`idsimpanan` = `d`.`idsimpanan`)))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
