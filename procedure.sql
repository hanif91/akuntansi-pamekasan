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
USE `koperasi`;

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

/* Procedure structure for procedure `generatekodeakun` */

/*!50003 DROP PROCEDURE IF EXISTS  `generatekodeakun` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `generatekodeakun`(_idtipe3 int(5))
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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
