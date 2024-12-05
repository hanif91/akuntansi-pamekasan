TYPE=VIEW
query=(select `a`.`id` AS `id`,`a`.`notrans` AS `notrans`,`a`.`idsimpanan` AS `idsimpanan`,`a`.`debet` AS `debet`,`a`.`kredit` AS `kredit`,`b`.`idanggota` AS `idanggota`,`c`.`namaanggota` AS `namaanggota`,`d`.`namasimpanan` AS `namasimpanan` from (((`koperasi`.`d_simp_anggota` `a` left join `koperasi`.`simp_anggota` `b` on((`a`.`notrans` = `b`.`notrans`))) left join `koperasi`.`anggota` `c` on((`b`.`idanggota` = `c`.`idanggota`))) left join `koperasi`.`jenis_simpanan` `d` on((`a`.`idsimpanan` = `d`.`idsimpanan`))))
md5=ebaf46c2e6793a160aa70d906a275748
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2018-04-11 02:42:18
create-version=2
source=(SELECT a.*,b.idanggota,c.namaanggota,d.namasimpanan FROM d_simp_anggota a left join simp_anggota b on a.notrans=b.notrans left join anggota c on b.idanggota=c.idanggota\nleft join jenis_simpanan d on a.idsimpanan=d.idsimpanan)
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=(select `a`.`id` AS `id`,`a`.`notrans` AS `notrans`,`a`.`idsimpanan` AS `idsimpanan`,`a`.`debet` AS `debet`,`a`.`kredit` AS `kredit`,`b`.`idanggota` AS `idanggota`,`c`.`namaanggota` AS `namaanggota`,`d`.`namasimpanan` AS `namasimpanan` from (((`koperasi`.`d_simp_anggota` `a` left join `koperasi`.`simp_anggota` `b` on((`a`.`notrans` = `b`.`notrans`))) left join `koperasi`.`anggota` `c` on((`b`.`idanggota` = `c`.`idanggota`))) left join `koperasi`.`jenis_simpanan` `d` on((`a`.`idsimpanan` = `d`.`idsimpanan`))))
mariadb-version=100125
