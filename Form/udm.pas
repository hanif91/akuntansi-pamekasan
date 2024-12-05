unit udm;

interface

uses
  System.SysUtils, System.Classes, dxSkinsCore,cxDropDownEdit, System.ImageList, Vcl.ImgList, Vcl.Controls, cxGraphics,
  MyEmbConnection, frxClass, frxDBSet,cxGrid,cxGridTableView, cxGridDBTableView,dialogs,forms,
  dxSkinTheBezier, cxImageList, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  Data.DB, DBAccess, MyAccess, MemDS, cxStyles, cxClasses, cxLookAndFeels,
  dxSkinsForm, dxSkinsDefaultPainters, scDevExStyleAdapter;

type
  Tdm = class(TDataModule)
    dxSkinController1: TdxSkinController;
    Conn1: TMyConnection;
    cxStyleRepository1: TcxStyleRepository;
    bold8: TcxStyle;
    Qcek: TMyQuery;
    Qex: TMyQuery;
    img24: TcxImageList;
    img36: TcxImageList;
    img48: TcxImageList;
    img16: TcxImageList;
    Qanggota_dbl: TMyQuery;
    Danggota_dbl: TMyDataSource;
    Qlist_anggota: TMyQuery;
    Dlist_anggota: TMyDataSource;
    Qanggota_dblidanggota: TIntegerField;
    Qlist_anggotaidanggota: TIntegerField;
    Qlist_anggotakodeanggota: TStringField;
    Qlist_anggotanamaanggota: TStringField;
    Dlist_sales: TMyDataSource;
    Qlist_sales: TMyQuery;
    Dsales_dbl: TMyDataSource;
    Qsales_dbl: TMyQuery;
    Qlist_salesidkolektif: TIntegerField;
    Qlist_salesnamakolektif: TStringField;
    Qsales_dblidkolektif: TIntegerField;
    Qkas_dbl: TMyQuery;
    Dkas_dbl: TMyDataSource;
    Qlist_kas: TMyQuery;
    Dlist_kas: TMyDataSource;
    Qkas_dblnamakas: TStringField;
    Qlist_kasnamakas: TStringField;
    Dkas_dbl2: TMyDataSource;
    Qkas_dbl2: TMyQuery;
    StringField1: TStringField;
    Dlist_kas2: TMyDataSource;
    Qlist_kas2: TMyQuery;
    StringField2: TStringField;
    Qttd: TMyQuery;
    dbttd: TfrxDBDataset;
    cxStyle1: TcxStyle;
    conn2: TMyConnection;
    Qisicombo: TMyQuery;
    Qcek2: TMyQuery;
    conngudang: TMyConnection;
    Qcekg: TMyQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    //user,pass,port,db,host : string;
  public
    user,pass,port,db,host : string;
    user2,pass2,port2,db2,host2 : string;
    user3,pass3,port3,db3,host3 : string;
    { Public declarations }
    procedure isicombo1(id : string ;combo1 : TcxComboBox);
    procedure isicombo2(id : string ;combo1,combo2 : TcxComboBox);
    procedure isicombo3(id : string ;combo1,combo2,combo3 : TcxComboBox);
    procedure isidatattd(namalap,username : string);
    procedure unlocktabel;
    procedure locktabel(id:string);
    function konekconnbilling : boolean;
    procedure committransaksi;
    procedure rollbacktransaksi;
    procedure starttransaksi;
    procedure cekpengaturan;
    procedure insertdataperiodeposting(periode,nama : string);
    function cekstatusaktifperiodeposting(periode:string) : byte;
    procedure focusgrid(grid : TcxGrid;dbviewe : TcxGridDBTableView;row : byte);
    function noautojurnal(tgl : TDate): string;
    function noautovoucher(tgl : TDate): string;
    procedure insertdatabukubesar(thn,periode,kodejurnal,uraian,noju : string; idcoa,idju,flagsa : integer; tanggal : TDate;debet,kredit,saldo : Currency);
    procedure insertdataju(notrans,uraian,penjelasan,tipejurnal : string; jumlah : Currency; tanggal:TDate; idju:Integer);
    procedure insertdataju_(icoa,idju : integer; tanggal:TDate; debet,kredit:Currency; kodeunit :string);
  end;

var
  dm: Tdm;
  namaisian,userlogin,namauserlogin,headerlap1,headerlap2,alamat1,alamat2,footerkota,iduser,kodeunitinput : string;
  tglserver : tdate;
  mundurtglbayar,mundurpembatalan : byte;
implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm.cekpengaturan;
begin
  Qcek.Close;
  Qcek.SQL.Clear;
  Qcek.SQL.Add('Select * from pengaturan');
  Qcek.Open;
  mundurtglbayar := Qcek.FieldByName('mundurtglbyr').AsInteger;
  mundurpembatalan := Qcek.FieldByName('mundurpembatalan').AsInteger;
end;

function Tdm.cekstatusaktifperiodeposting(periode: string): byte;
begin
  Qcek.Close;
  Qcek.SQL.Clear;
  Qcek.SQL.Add('SELECT * FROM periodeposting WHERE periode=:periode');
  Qcek.ParamByName('periode').AsString := periode;
  Qcek.Open;
  if Qcek.RecordCount > 0 then
  begin
    Result := Qcek.fieldbyname('aktif').AsInteger;
  end
  else
  begin
    Result := 0;
  end;
end;

procedure Tdm.committransaksi;
begin
  Qex.Close;
  Qex.SQL.Clear;
  Qex.SQL.Add('START COMMIT;');
  Qex.Execute;
end;

procedure Tdm.DataModuleCreate(Sender: TObject);
var
  f : TextFile;
begin
  if FileExists(ExtractFilePath(Application.ExeName)+'config.ini')then
  begin
    assignFile(f,ExtractFilePath(Application.ExeName)+'config.ini');
    Reset(f);
    ReadLn(f,user);
    ReadLn(f,user);
    ReadLn(f,pass);
    ReadLn(f,host);
    ReadLn(f,port);
    ReadLn(f,db);
    ReadLn(f,user2);
    ReadLn(f,user2);
    ReadLn(f,pass2);
    ReadLn(f,host2);
    ReadLn(f,port2);
    ReadLn(f,db2);
    ReadLn(f,user3);
    ReadLn(f,user3);
    ReadLn(f,pass3);
    ReadLn(f,host3);
    ReadLn(f,port3);
    ReadLn(f,db3);
    CloseFile(f);

    dm.Conn1.Close;
    dm.Conn1.Username := dm.user;
    dm.Conn1.Password := dm.pass;
    dm.Conn1.Server := dm.host;
    dm.Conn1.Port := StrToInt(dm.port);
    dm.Conn1.Database := db;
    dm.Conn1.Connect;
  end
  else
  begin
    MessageDlg('APLIKASI TIDAK BISA DIJALANKAN..!'+#13+'File Config Tidak Tersedia..!',mtError,[mbok],0);
    Application.Terminate;
  end;
  userlogin := 'ADMIN';
  namauserlogin := 'ADMINISTRATOR';
  kodeunitinput := '00';
end;

procedure Tdm.focusgrid(grid: TcxGrid; dbviewe: TcxGridDBTableView; row: byte);
begin
  grid.SetFocus;
  dbviewe.DataController.GotoNext;
  dbviewe.Controller.FocusRecord(row,True)
end;

procedure Tdm.insertdatabukubesar(thn, periode,kodejurnal,uraian,noju : string; idcoa, idju,
  flagsa: integer; tanggal: TDate; debet, kredit, saldo: Currency);
begin
  Qex.Close;
  Qex.SQL.Clear;
  Qex.SQL.Add('INSERT INTO bukubesar'+thn+'');
  Qex.SQL.Add(Qex.SQLInsert.Text);
  Qex.ParamByName('idcoa').AsInteger := idcoa;
  Qex.ParamByName('idju').AsInteger := idju;
  Qex.ParamByName('tanggal').AsDate := tanggal;
  Qex.ParamByName('periode').AsString := periode;
  Qex.ParamByName('jenis').AsString := '';
  Qex.ParamByName('debet').AsCurrency := debet;
  Qex.ParamByName('kredit').AsCurrency := kredit;
  Qex.ParamByName('saldo').AsCurrency := saldo;
  Qex.ParamByName('flagsa').AsInteger := flagsa;
  Qex.ParamByName('kodejurnal').AsString := kodejurnal;
  Qex.ParamByName('uraian').AsString := uraian;
  Qex.ParamByName('noju').AsString := noju;
  Qex.Execute;
end;

procedure Tdm.insertdataju(notrans, uraian, penjelasan, tipejurnal: string;
  jumlah: Currency; tanggal: TDate; idju: Integer);
begin
 Qex.Close;
 Qex.SQL.Clear;
 Qex.SQL.Add('Insert into ju (idju,notrans,uraian,penjelasan,jumlah,tanggal,tipejurnal) value (:idju,:notrans,:uraian,:penjelasan,:jumlah,:tanggal,:tipejurnal)');
 Qex.ParamByName('notrans').AsString := notrans;
 Qex.ParamByName('uraian').AsString := uraian;
 Qex.ParamByName('penjelasan').AsString := penjelasan;
 Qex.ParamByName('jumlah').AsCurrency := jumlah;
 Qex.ParamByName('tanggal').AsDate := tanggal;
 Qex.ParamByName('tipejurnal').AsString := tipejurnal;
 Qex.ParamByName('idju').AsInteger := idju;
 Qex.Execute;
end;

procedure Tdm.insertdataju_(icoa, idju: integer; tanggal: TDate; debet,
  kredit: Currency; kodeunit :string);
begin
  Qex.Close;
  Qex.SQL.Clear;
  Qex.SQL.Add('Insert into ju_ (idcoa,idju,tanggal,jenis,debet,kredit,kodeunit) value (:idcoa,:idju,:tanggal,:jenis,:debet,:kredit,:kodeunit)');
  Qex.ParamByName('idcoa').AsInteger := icoa;
  Qex.ParamByName('idju').AsInteger := idju;
  Qex.ParamByName('tanggal').AsDate := tanggal;
  Qex.ParamByName('jenis').AsString := '';
  Qex.ParamByName('debet').AsCurrency := debet;
  Qex.ParamByName('kredit').AsCurrency := kredit;
  Qex.ParamByName('kodeunit').AsString := kodeunit;
  Qex.Execute;
end;

procedure Tdm.insertdataperiodeposting(periode, nama: string);
begin
  Qex.Close;
  Qex.SQL.Clear;
  Qex.SQL.Add('INSERT INTO periodeposting (periode,nama) value (:periode,:nama)');
  Qex.ParamByName('periode').AsString := periode;
  Qex.ParamByName('nama').AsString := nama;
  Qex.Execute;
end;

procedure Tdm.isicombo1(id: string; combo1: TcxComboBox);
begin
  if id='tipejurnal' then
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.add('Select nama from tipejurnal order by nama');
    Qcek.Open;
    combo1.Properties.Items.Clear;
    while not Qcek.Eof do
    begin
      combo1.Properties.Items.Add(Qcek['nama']);
      Qcek.Next;
    end;
  end;
  if id='ketvoucher1' then
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.add('Select ket1 from ketvoucher order by id');
    Qcek.Open;
    combo1.Properties.Items.Clear;
    while not Qcek.Eof do
    begin
      combo1.Properties.Items.Add(Qcek['ket1']);
      Qcek.Next;
    end;
  end;
  if id='ketvoucher2' then
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.add('Select ket2 from ketvoucher order by id');
    Qcek.Open;
    combo1.Properties.Items.Clear;
    while not Qcek.Eof do
    begin
      combo1.Properties.Items.Add(Qcek['ket2']);
      Qcek.Next;
    end;
  end;
  if id='akunkas' then
  begin
    qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select * from akunkas order by indek');
    Qcek.Open;
    combo1.Properties.Items.Clear;
    while not Qcek.Eof do
    begin
      combo1.Properties.Items.Add(Qcek['namakas']);
      Qcek.Next;
    end;
  end;
  if id='akunkasbank' then
  begin
    qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select * from akunkas where flagbank=1 order by indek');
    Qcek.Open;
    combo1.Properties.Items.Clear;
    while not Qcek.Eof do
    begin
      combo1.Properties.Items.Add(Qcek['namakas']);
      Qcek.Next;
    end;
  end;
  if id='tahun' then
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.add('SELECT DISTINCT(LEFT(periode,4)) AS tahun FROM periodeposting ORDER BY periode DESC');
    Qcek.Open;
    combo1.Properties.Items.Clear;
    while not Qcek.Eof do
    begin
      combo1.Properties.Items.Add(Qcek['tahun']);
      Qisicombo.Next;
    end;
  end;
end;

procedure Tdm.isicombo2(id: string; combo1, combo2: TcxComboBox);
begin
  if id='periodeposting' then
  begin
    Qisicombo.Close;
    Qisicombo.SQL.Clear;
    Qisicombo.SQL.add('Select nama,periode from periodeposting where arsip=0 order by periode desc');
    Qisicombo.Open;
    combo1.Properties.Items.Clear;
    combo2.Properties.Items.Clear;
    while not Qisicombo.Eof do
    begin
      combo1.Properties.Items.Add(Qisicombo['nama']);
      combo2.Properties.Items.Add(Qisicombo['periode']);
      Qisicombo.Next;
    end;
  end;
  if id='tipepudm' then
  begin
    Qisicombo.Close;
    Qisicombo.SQL.Clear;
    Qisicombo.SQL.add('select * from tipearuskas_l order by namatipe');
    Qisicombo.Open;
    combo1.Properties.Items.Clear;
    combo2.Properties.Items.Clear;
    while not Qisicombo.Eof do
    begin
      combo1.Properties.Items.Add(Qisicombo['namatipe']);
      combo2.Properties.Items.Add(Qisicombo['id']);
      Qisicombo.Next;
    end;
  end;
  if id='unitkerja' then
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select * from unit_kerja where kodeunit<>"00"');
    Qcek.Open;
    combo1.Properties.Items.Clear;
    combo2.Properties.Items.Clear;
    while not Qcek.Eof do
    begin
      combo1.Properties.Items.Add(Qcek['kodeunit']);
      combo2.Properties.Items.Add(Qcek['namaunit']);
      Qcek.Next;
    end;
  end;

  if id='loket' then
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select kodeloket,namaloket from unit_kerja where kodeunit<>"00" group by kodeloket order by kodeloket');
    Qcek.Open;
    combo1.Properties.Items.Clear;
    combo2.Properties.Items.Clear;
    while not Qcek.Eof do
    begin
      combo1.Properties.Items.Add(Qcek['kodeloket']);
      combo2.Properties.Items.Add(Qcek['namaloket']);
      Qcek.Next;
    end;
  end;

  if id='loket2' then
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select kodeloket,namaloket from unit_kerja group by kodeloket order by kodeloket');
    Qcek.Open;
    combo1.Properties.Items.Clear;
    combo2.Properties.Items.Clear;
    while not Qcek.Eof do
    begin
      combo1.Properties.Items.Add(Qcek['kodeloket']);
      combo2.Properties.Items.Add(Qcek['namaloket']);
      Qcek.Next;
    end;
  end;

  if id='unitkerja2' then
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select * from unit_kerja order by kodeunit');
    Qcek.Open;
    combo1.Properties.Items.Clear;
    combo2.Properties.Items.Clear;
    while not Qcek.Eof do
    begin
      combo1.Properties.Items.Add(Qcek['kodeunit']);
      combo2.Properties.Items.Add(Qcek['namaunit']);
      Qcek.Next;
    end;
  end;
  if id='jenisvoucher' then
  begin
    Qisicombo.Close;
    Qisicombo.SQL.Clear;
    Qisicombo.SQL.add('Select id,namatipe from tipearuskas_l where tipe="pengeluaran" order by id');
    Qisicombo.Open;
    combo1.Properties.Items.Clear;
    combo2.Properties.Items.Clear;
    while not Qisicombo.Eof do
    begin
      combo1.Properties.Items.Add(Qisicombo['namatipe']);
      combo2.Properties.Items.Add(Qisicombo['id']);
      Qisicombo.Next;
    end;
  end;
end;

procedure Tdm.isicombo3(id: string; combo1, combo2, combo3: TcxComboBox);
begin
   if id='kolektif' then
  begin
    Qisicombo.Close;
    Qisicombo.SQL.Clear;
    Qisicombo.SQL.Add('select * from kolektif order by namakolektif');
    Qisicombo.Open;
    combo1.Properties.Items.Clear;
    combo2.Properties.Items.Clear;
    combo3.Properties.Items.Clear;
    while not Qisicombo.Eof do
    begin
      combo1.Properties.Items.Add(Qisicombo['namakolektif']);
      combo2.Properties.Items.Add(Qisicombo['kodekolektif']);
      combo3.Properties.Items.Add(Qisicombo['idkolektif']);
      Qisicombo.Next;
    end;
  end;

end;

procedure Tdm.isidatattd(namalap, username: string);
begin
  Qcek.Close;
  Qcek.SQL.Clear;
  Qcek.SQL.Add('Select headerlap1,headerlap2,alamat1,alamat2,footerkota from pengaturan where idx=1');
  Qcek.Open;
  headerlap1 := Qcek.FieldByName('headerlap1').AsString;
  headerlap2 := Qcek.FieldByName('headerlap2').AsString;
  alamat1 := Qcek.FieldByName('alamat1').AsString;
  alamat2 := Qcek.FieldByName('alamat2').AsString;
  footerkota := Qcek.FieldByName('footerkota').AsString;

  Qcek.Open;
  Qttd.Close;
  Qttd.SQL.Clear;
  Qttd.SQL.Add('CALL isidatattd(:namalap,:username)');
  Qttd.ParamByName('username').AsString := username;
  Qttd.ParamByName('namalap').AsString := namalap;
  Qttd.Open;
end;

function Tdm.konekconnbilling: boolean;
begin
  try
    dm.Conn2.Close;
    dm.Conn2.Username := dm.user2;
    dm.Conn2.Password := dm.pass2;
    dm.Conn2.Server := dm.host2;
    dm.Conn2.Port := StrToInt(dm.port2);
    dm.Conn2.Database := dm.db2;
    dm.Conn2.Connect;

    Result := true;

  except
    on e:Exception do
    begin
      MessageDlg('Terdapat Kesalahan Konek Billing..!'+#13+e.Message,mtError,[mbOK],0);
      Result := false;
    end;

  end;
end;

procedure Tdm.locktabel(id: string);
begin
  if id='simp_anggota' then
  begin
    Qex.Close;
    Qex.SQL.Clear;
    Qex.SQL.Add('SET wait_timeout = 90;');
    Qex.SQL.Add('LOCK TABLE simp_anggota write;');
    Qex.Execute;
  end;
  if id='anggota' then
  begin
    Qex.Close;
    Qex.SQL.Clear;
    Qex.SQL.Add('SET wait_timeout = 90;');
    Qex.SQL.Add('LOCK TABLE anggota write;');
    Qex.Execute;
  end;

  if id='tambahanggota' then
  begin
    Qex.Close;
    Qex.SQL.Clear;
    //Qex.SQL.Add('SET wait_timeout = 90;');
    Qex.SQL.Add('LOCK TABLE anggota read;');
    Qex.Execute;
  end;
end;

function Tdm.noautojurnal(tgl: TDate): string;
begin
  Qcek.Close;
  Qcek.SQL.Clear;
  Qcek.SQL.Add('SELECT noautojurnal(:tgl) AS nomor');
  Qcek.ParamByName('tgl').AsDate := tgl;
  Qcek.Open;

  Result := Qcek.fieldbyname('nomor').AsString;
end;

function Tdm.noautovoucher(tgl: TDate): string;
begin
  Qcek.Close;
  Qcek.SQL.Clear;
  Qcek.SQL.Add('SELECT noautovoucher(:tgl) AS nomor');
  Qcek.ParamByName('tgl').AsDate := tgl;
  Qcek.Open;

  Result := Qcek.fieldbyname('nomor').AsString;
end;

procedure Tdm.rollbacktransaksi;
begin
  Qex.Close;
  Qex.SQL.Clear;
  Qex.SQL.Add('ROLLBACK;');
  Qex.Execute;
end;

procedure Tdm.starttransaksi;
begin
  Qex.Close;
  Qex.SQL.Clear;
  Qex.SQL.Add('START TRANSACTION;');
  Qex.Execute;
end;

procedure Tdm.unlocktabel;
begin
   Qex.Close;
   Qex.SQL.Clear;
   Qex.SQL.Add('UNLOCK TABLES;');
   Qex.Execute;
end;

end.
