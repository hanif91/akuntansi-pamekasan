program koperasi;

uses
  Vcl.Forms,
  udm in 'Form\udm.pas' {dm: TDataModule},
  uformcontoh in 'Form\uformcontoh.pas' {foformcontoh},
  ukodeakun in 'Form\ukodeakun.pas' {fokodeakun},
  utambahcoa in 'Form\utambahcoa.pas' {fotambahcoa},
  usaldoawal in 'Form\usaldoawal.pas' {fosaldoawal},
  uanggaranlr in 'Form\uanggaranlr.pas' {foanggaranlr},
  uju in 'Form\uju.pas' {foju},
  utambahju in 'Form\utambahju.pas' {fotambahju},
  ucaricoa in 'Form\ucaricoa.pas' {focaricoa},
  usettgllap in 'Form\usettgllap.pas' {fosettgllap},
  usubbukubesar in 'Form\usubbukubesar.pas' {fosubbukubesar},
  ulaplabarugi in 'Form\ulaplabarugi.pas' {folaplabarugi},
  ulapneraca in 'Form\ulapneraca.pas' {folapneraca},
  ulaparuskas in 'Form\ulaparuskas.pas' {folaparuskas},
  uperiodeposting in 'Form\uperiodeposting.pas' {foperiodeposting},
  utambahperiodepost in 'Form\utambahperiodepost.pas' {fotambahperiodepost},
  ugantikodeakun in 'Form\ugantikodeakun.pas' {fogantikodeakun},
  uuserparaf in 'Form\uuserparaf.pas' {fouserparaf},
  uparaflaporan in 'Form\uparaflaporan.pas' {foparaflaporan},
  utambahlap in 'Form\utambahlap.pas' {fotambahlap},
  ubukubesar in 'Form\ubukubesar.pas' {fobukubesar},
  ujra in 'Form\ujra.pas' {fojra},
  ujrna in 'Form\ujrna.pas' {fojrna},
  updpk in 'Form\updpk.pas' {fopdpk},
  usetorkas in 'Form\usetorkas.pas' {fosetorkas},
  uvocer in 'Form\uvocer.pas' {fovocer},
  utambahvoucher in 'Form\utambahvoucher.pas' {fotambahvoucher},
  uvocerbayar in 'Form\uvocerbayar.pas' {fovocerbayar},
  upbayarvocer in 'Form\upbayarvocer.pas' {fopbayarvocer},
  ucetakvocer in 'Form\ucetakvocer.pas' {focetakvoucher},
  ulapjbk in 'Form\ulapjbk.pas' {folapjbk},
  ujpk in 'Form\ujpk.pas' {fojpk},
  udhhd in 'Form\udhhd.pas' {fodhhd},
  udpk in 'Form\udpk.pas' {fodpk},
  ulogin in 'Form\ulogin.pas' {fologin},
  userakses in 'Form\userakses.pas' {fouserakses},
  utambahuser in 'Form\utambahuser.pas' {fotambahuser},
  uedithakakses in 'Form\uedithakakses.pas' {foedithakakses},
  ugantipass in 'Form\ugantipass.pas' {fogantipass},
  uparaf in 'Form\uparaf.pas' {foparaf},
  ukaskeluar in 'Form\ukaskeluar.pas' {fokaskeluar},
  utambahks in 'Form\utambahks.pas' {fotambahkaskeluar},
  umain in 'Form\umain.pas' {fomain},
  ukasmasuk in 'Form\ukasmasuk.pas' {fokasmasuk},
  utambahkm in 'Form\utambahkm.pas' {fotambahkasmasuk},
  ulaplhk in 'Form\ulaplhk.pas' {folaplhk},
  ujpbik in 'Form\ujpbik.pas' {fojpbik},
  ulapusulan in 'Form\ulapusulan.pas' {folapusulan},
  uvkk in 'Form\uvkk.pas' {fovkk},
  utambahvkk in 'Form\utambahvkk.pas' {fotambahvkk},
  uplatformkk in 'Form\uplatformkk.pas' {foplatformkk},
  utambahisivkk in 'Form\utambahisivkk.pas' {fotambahisivkk},
  ulapusulanvkk in 'Form\ulapusulanvkk.pas' {folapusulanvkk},
  ulaprincianbiaya in 'Form\ulaprincianbiaya.pas' {folaprincianbiaya},
  ugolaktiva in 'Form\ugolaktiva.pas' {fogolaktiva},
  ukelaktiva in 'Form\ukelaktiva.pas' {fokelaktiva},
  uasset in 'Form\uasset.pas' {foasset},
  utambahasset in 'Form\utambahasset.pas' {fotambahasset},
  utambahsusut in 'Form\utambahsusut.pas' {fotambahsusut},
  uhapussusut in 'Form\uhapussusut.pas' {fohpspenyusutan},
  uakunkelaktiva in 'Form\uakunkelaktiva.pas' {foakunkelaktiva},
  ukoreksiaktiva in 'Form\ukoreksiaktiva.pas' {fokoreksiaktiva},
  ulockjurnal in 'Form\ulockjurnal.pas' {folockjurnal},
  ulapdph in 'Form\ulapdph.pas' {folapdph},
  ucariunitkerja in 'Form\ucariunitkerja.pas' {focariuk},
  uanggaranpu in 'Form\uanggaranpu.pas' {foanggaranpu},
  upostingawaltahun in 'Form\upostingawaltahun.pas' {fopostingawaltahun},
  uupdatesaldoawal in 'Form\uupdatesaldoawal.pas' {foupdatesaldoawal},
  uneracalajur in 'Form\uneracalajur.pas' {foneracalajur},
  udspk in 'Form\udspk.pas' {fodspk};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tfomain, fomain);
  Application.CreateForm(Tfologin, fologin);
  Application.CreateForm(Tfotambahcoa, fotambahcoa);
  Application.CreateForm(Tfoformcontoh, foformcontoh);
  Application.CreateForm(Tfoanggaranlr, foanggaranlr);
  Application.CreateForm(Tfotambahju, fotambahju);
  Application.CreateForm(Tfocaricoa, focaricoa);
  Application.CreateForm(Tfosettgllap, fosettgllap);
  Application.CreateForm(Tfotambahperiodepost, fotambahperiodepost);
  Application.CreateForm(Tfogantikodeakun, fogantikodeakun);
  Application.CreateForm(Tfouserparaf, fouserparaf);
  Application.CreateForm(Tfotambahlap, fotambahlap);
  Application.CreateForm(Tfobukubesar, fobukubesar);
  Application.CreateForm(Tfotambahvoucher, fotambahvoucher);
  Application.CreateForm(Tfopbayarvocer, fopbayarvocer);
  Application.CreateForm(Tfotambahuser, fotambahuser);
  Application.CreateForm(Tfoedithakakses, foedithakakses);
  Application.CreateForm(Tfogantipass, fogantipass);
  Application.CreateForm(Tfotambahkaskeluar, fotambahkaskeluar);
  Application.CreateForm(Tfomain, fomain);
  Application.CreateForm(Tfotambahkasmasuk, fotambahkasmasuk);
  Application.CreateForm(Tfotambahsusut, fotambahsusut);
  Application.CreateForm(Tfohpspenyusutan, fohpspenyusutan);
  Application.CreateForm(Tfoakunkelaktiva, foakunkelaktiva);
  Application.CreateForm(Tfokoreksiaktiva, fokoreksiaktiva);
  Application.CreateForm(Tfolockjurnal, folockjurnal);
  Application.CreateForm(Tfocariuk, focariuk);
  Application.CreateForm(Tfoanggaranpu, foanggaranpu);
  Application.CreateForm(Tfopostingawaltahun, fopostingawaltahun);
  Application.CreateForm(Tfoupdatesaldoawal, foupdatesaldoawal);
  Application.Run;
end.
