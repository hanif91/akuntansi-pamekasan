unit uposbb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, cxMemo,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, RzTabs, Vcl.ExtCtrls, RzPanel,
  cxProgressBar, Data.DB, MemDS, DBAccess, MyAccess;

type
  Tfoposbb = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    cxComboBox2: TcxComboBox;
    cxComboBox1: TcxComboBox;
    cxMemo1: TcxMemo;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    Qcoa: TMyQuery;
    Qex: TMyQuery;
    Qcek: TMyQuery;
    cxProgressBar1: TcxProgressBar;
    procedure FormShow(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure kosongkantext;
  end;

var
  foposbb: Tfoposbb;

implementation
uses strutils;

{$R *.dfm}

{ Tfoposbb }

procedure Tfoposbb.cxButton1Click(Sender: TObject);
var
  thn,bln,periode : string;
  saldoawal,debet,kredit : Currency;
  i,j,flagsa : integer;
  blnint : byte;
begin
  try
    cxButton1.Visible := False;
    if (trim(cxComboBox2.Text)='') or ((trim(cxComboBox1.Text)='')) then
    begin
      MessageDlg('Periode Harus diisi !',mtWarning,[mbok],0);
      cxComboBox1.SetFocus;
      Exit;
    end;
    if dm.cekstatusaktifperiodeposting(cxComboBox2.Text)=0 then
    begin
      MessageDlg('Periode Posting "'+cxComboBox1.Text+'" Sudah Terkunci ..!',mtWarning,[mbok],0);
      Exit;
    end;

    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('Select * from statusposting');
    Qcek.Open;
    if Qcek.FieldByName('postingbb').AsInteger=1 then
    begin
      MessageDlg('Proses Posting Sedang Dilakukan Pada Sesi Yang Lain,'+#13+'Harap Menunggu Sesi Lain Selesai Melakukan Posting.!',mtWarning,[mbok],0);
      Exit;
    end;
    thn := LeftStr(cxComboBox2.Text,4);
    bln := 'bln'+RightStr(cxComboBox2.Text,2);
    blnint :=  StrToInt(RightStr(cxComboBox2.Text,2));
    periode := cxComboBox2.Text;
    cxMemo1.Lines.Clear;

    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('SHOW TABLES LIKE "bukubesar'+periode+'"');
    Qcek.Open;
    if Qcek.RecordCount = 0 then
    begin
      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('CREATE TABLE bukubesar'+periode+' like bukubesar');
      Qex.Execute;
    end;

    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('SHOW TABLES LIKE "bukubesar'+thn+'"');
    Qcek.Open;
    if Qcek.RecordCount = 0 then
    begin
      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('CREATE TABLE bukubesar'+thn+' like bukubesar');
      Qex.Execute;
    end;

  {  dm.locktabelposting('posbukubesarbulan','bukubesar'+periode);
    dm.locktabelposting('posbukubesartahun','bukubesar'+thn);  }


    Qex.Close;
    Qex.SQL.Clear;
    Qex.SQL.Add('UPDATE statusposting set postingbb="1";');
    Qex.Execute;

    dm.Conn1.StartTransaction;

    Qex.Close;
    Qex.SQL.Clear;
    Qex.SQL.Add('TRUNCATE bukubesar'+periode+';');
    Qex.SQL.Add('DELETE FROM bukubesar'+thn+' where periode=:periode;');
    Qex.ParamByName('periode').AsString := periode;
    Qex.Execute;

    Qcoa.Close;
    Qcoa.SQL.Clear;
    Qcoa.SQL.Add('select * from coa order by idcoa');
    Qcoa.Open;
    cxProgressBar1.Position := 0;
    cxProgressBar1.Properties.Max := Qcoa.RecordCount;
    try
      for i := 1 to Qcoa.RecordCount do
      begin
        Qcek.Close;
        Qcek.SQL.Clear;
        Qcek.SQL.Add('Select '+bln+' from saldoawal where tahun=:tahun and idcoa=:idcoa');
        Qcek.ParamByName('tahun').AsString := thn;
        Qcek.ParamByName('idcoa').AsInteger := Qcoa.fieldbyname('idcoa').AsInteger;
        Qcek.Open;
        if Qcek.RecordCount > 0 then
        begin
          saldoawal := Qcek.fieldbyname(''+bln+'').AsCurrency;
        end
        else
        begin
          saldoawal := 0;
        end;

        dm.insertdatabukubesar(periode,periode,'SA','SALDO AWAL','-',Qcoa.fieldbyname('idcoa').AsInteger,-1,1,EncodeDate(StrToInt(thn),blnint,1),0,0,saldoawal);
        if blnint=1 then
        begin
          dm.insertdatabukubesar(thn,periode,'SA','SALDO AWAL','-',Qcoa.fieldbyname('idcoa').AsInteger,-1,1,EncodeDate(StrToInt(thn),blnint,1),0,0,saldoawal);
        {  Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('INSERT INTO bukubesar'+thn+'');
          Qex.SQL.Add(Qex.SQLInsert.Text);
          Qex.ParamByName('idcoa').AsInteger := Qcoa.fieldbyname('idcoa').AsInteger;
          Qex.ParamByName('idju').AsInteger := -1;
          Qex.ParamByName('tanggal').AsDate := EncodeDate(StrToInt(thn),blnint,1);
          Qex.ParamByName('periode').AsString := periode;
          Qex.ParamByName('jenis').AsString := '';
          Qex.ParamByName('debet').AsCurrency := 0;
          Qex.ParamByName('kredit').AsCurrency := 0;
          Qex.ParamByName('saldo').AsCurrency := saldoawal;
          Qex.ParamByName('flagsa').AsInteger := 1;
          Qex.ParamByName('kodejurnal').AsString := 'SA';
          Qex.ParamByName('no')
          Qex.Execute; }
        end;
        cxMemo1.Lines.Add('POS SALDO AWAL KODE : '+Qcoa.fieldbyname('kodeakun').AsString);
        Qcek.Close;
        Qcek.SQL.Clear;
        Qcek.SQL.Add('CALL posjurnalkebb(:periode,:idcoa)');
        Qcek.ParamByName('periode').AsString := periode;
        Qcek.ParamByName('idcoa').AsInteger := Qcoa.fieldbyname('idcoa').AsInteger;
        Qcek.Open;
        if Qcek.RecordCount > 0 then
        begin
          for j:=1 to Qcek.RecordCount do
          begin
            if Qcek.fieldbyname('tipetambah').AsString='D' then
            begin
              debet := Qcek.fieldbyname('debet').AsCurrency;
              kredit := Qcek.fieldbyname('kredit').AsCurrency*-1;
            end
            else
            begin
              debet := Qcek.fieldbyname('debet').AsCurrency*-1;
              kredit := Qcek.fieldbyname('kredit').AsCurrency;
            end;
            if j=Qcek.RecordCount then flagsa :=-1 else flagsa :=0;
            dm.insertdatabukubesar(periode,periode,
            Qcek.fieldbyname('kodejurnal').AsString,
            Qcek.FieldByName('uraian').AsString,
            Qcek.FieldByName('notrans').AsString,
            Qcek.fieldbyname('idcoa').AsInteger,
            Qcek.fieldbyname('idju').AsInteger,
            flagsa,Qcek.fieldbyname('tanggal').AsDateTime,
            Qcek.fieldbyname('debet').AsCurrency,
            Qcek.fieldbyname('kredit').AsCurrency,
            saldoawal+debet+kredit);

            dm.insertdatabukubesar(thn,periode,
            Qcek.fieldbyname('kodejurnal').AsString,
            Qcek.FieldByName('uraian').AsString,
            Qcek.FieldByName('notrans').AsString,
            Qcek.fieldbyname('idcoa').AsInteger,
            Qcek.fieldbyname('idju').AsInteger,
            0,
            Qcek.fieldbyname('tanggal').AsDateTime,
            Qcek.fieldbyname('debet').AsCurrency,
            Qcek.fieldbyname('kredit').AsCurrency,
            saldoawal+debet+kredit);

            saldoawal := saldoawal+debet+kredit;
            cxMemo1.Lines.Add('PROSES TRANSAKSI JURNAL KODE : '+Qcoa.fieldbyname('kodeakun').AsString+' --> NO JURNAL : '+Qcek.fieldbyname('notrans').AsString);
            Qcek.Next;
            Application.ProcessMessages;
          end;
        end
        else
        begin
          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('UPDATE bukubesar'+periode+' set flagsa="2" where idcoa=:idcoa and flagsa="1"');
          Qex.ParamByName('idcoa').AsInteger := Qcoa.fieldbyname('idcoa').AsInteger;
          Qex.Execute;
        end;

        Application.ProcessMessages;
        cxProgressBar1.Position := cxProgressBar1.Position+1;
        Qcoa.Next;
      end;




      dm.Conn1.Commit;


      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('UPDATE statusposting set postingbb="0";');
      Qex.Execute;

      MessageDlg('Posting Buku Besar Berhasil Disimpan .',mtInformation,[mbOK],0);
      cxComboBox1.SetFocus;
      cxMemo1.Clear;
    except
      on e:exception do
      begin
        dm.Conn1.Rollback;
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('UPDATE statusposting set postingbb="0";');
        Qex.Execute;
        MessageDlg('Terdapat Kesalahan..!'+#13+e.Message+#13+'Harap Hubungi Operator..!',mtError,[mbok],0);
        cxMemo1.Lines.Add('ERROR : '+e.Message);
      end;
    end;
  finally
    cxButton1.Visible := true;
    dm.unlocktabel;
  end;
end;

procedure Tfoposbb.cxComboBox1PropertiesChange(Sender: TObject);
begin
  cxComboBox2.ItemIndex := cxComboBox1.ItemIndex;
end;

procedure Tfoposbb.FormShow(Sender: TObject);
begin
  dm.isicombo2('periodeposting',cxComboBox1,cxComboBox2);
  kosongkantext;
end;

procedure Tfoposbb.kosongkantext;
begin
  cxMemo1.Text :='';
  cxProgressBar1.Position := 0;
  cxComboBox1.Clear;
  cxComboBox2.Clear;
end;

procedure Tfoposbb.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
self.Close;
end;

end.
