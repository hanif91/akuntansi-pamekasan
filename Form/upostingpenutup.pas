unit upostingpenutup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, RzTabs, udm,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxLabel, cxProgressBar, cxMemo, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, Data.DB, MemDS, DBAccess, MyAccess, dxSkinTheBezier;

type
  Tfopostingpenutup = class(TForm)
    Qcek2: TMyQuery;
    Qcek: TMyQuery;
    Qmaster: TMyQuery;
    Qex: TMyQuery;
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    cxComboBox2: TcxComboBox;
    cxMemo1: TcxMemo;
    cxProgressBar1: TcxProgressBar;
    cxLabel2: TcxLabel;
    cxComboBox1: TcxComboBox;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fopostingpenutup: Tfopostingpenutup;

implementation
uses strutils,dateutils;

{$R *.dfm}

procedure Tfopostingpenutup.cxButton1Click(Sender: TObject);
var
  periode,thn,bln,periodelalu,namagroup : string;
  periodeplus,thnplus,blnplus,flagadabiaya : string;
  idcoalr,idju,i,j,idgroup,saldoint : integer;
  saldoawallr,saldo,saldolalu,saldoagr,saldoagrlalu,saldo2,saldolalu2,saldoagr2,saldoagrlalu2 : Currency;
  tanggalakhir : TDate;
begin
  try

    if (trim(cxComboBox2.Text)='') or ((trim(cxComboBox1.Text)='')) then
    begin
      MessageDlg('Periode Harus diisi !',mtWarning,[mbok],0);
      cxComboBox1.SetFocus;
      Exit;
    end;
    cxButton1.Enabled := False;
    cxComboBox1.Enabled := False;
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select cariidcoalr() as nomor');
    Qcek.Open;
    if Qcek.RecordCount > 0 then
    begin
      idcoalr := Qcek.fieldbyname('nomor').AsInteger;
    end
    else
    begin
      MessageDlg('Id COA Ikhitsar Laba Rugi Belum di Setting / Tidak valid..!',mtWarning,[mbok],0);
      Exit;
    end;
    If dm.cekstatusaktifperiodeposting(cxComboBox2.Text)=0 then
    begin
      MessageDlg('Periode Posting "'+cxComboBox1.Text+'" Sudah Terkunci..!',mtWarning,[mbok],0);
      Exit;
    end;

    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('Select * from statusposting');
    Qcek.Open;
    if Qcek.FieldByName('postingtutup').AsInteger=1 then
    begin
      MessageDlg('Proses Posting Sedang Dilakukan Pada Sesi Yang Lain,'+#13+'Harap Menunggu Sesi Lain Selesai Melakukan Posting.!',mtWarning,[mbok],0);
      Exit;
    end;

    periode := cxComboBox2.Text;
    thn := LeftStr(cxComboBox2.Text,4);
    bln := RightStr(cxComboBox2.Text,2);
    tanggalakhir := EndOfAMonth(StrToInt(thn),StrToInt(bln));
    thnplus := FormatDateTime('yyyy',IncMonth(tanggalakhir,1));
    blnplus := FormatDateTime('mm',IncMonth(tanggalakhir,1));
    periodeplus := FormatDateTime('yyyymm',IncMonth(tanggalakhir,1));

    dm.Conn1.StartTransaction;

    dm.Qcek.Close;
    dm.Qcek.SQL.Clear;
    dm.Qcek.SQL.Add('select cariidjurnal() as nomor');
    dm.Qcek.Open;
    idju := dm.Qcek.fieldbyname('nomor').AsInteger;
    cxLabel2.Caption :='(1 of 4) JURNAL PENUTUP BIAYA ... ';

    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Text :=
      'SELECT a.idcoa,'
      +#13+'IF(b.tipetambah="K",SUM(a.kredit-a.debet),SUM(a.debet-a.kredit)) AS saldo,'
      +#13+'b.tipe1,b.tipetambah,c.saldo AS saldoakhir,d.saldoall,e.saldoakhirlr'
      +#13+'FROM bukubesar'+periode+' a'
      +#13+'LEFT JOIN masterakun b ON a.`idcoa`=b.`idcoa`'
      +#13+'LEFT JOIN (SELECT * FROM bukubesar'+periode+' WHERE idcoa IN (SELECT * FROM idakunbiayapend) AND flagsa IN ("-1","2")) c ON a.`idcoa`=c.`idcoa`'
      +#13+'LEFT JOIN (SELECT IF(b.tipetambah="K",SUM(a.kredit-a.debet),SUM(a.debet-a.kredit)) AS saldoall,b.`tipetambah` FROM bukubesar'+periode+' a '
      +#13+'LEFT JOIN masterakun b ON a.idcoa=b.idcoa WHERE a.idcoa IN (SELECT * FROM idakunbiayapend) AND a.flagsa NOT IN("1","2","-2") GROUP BY tipetambah)'
      +#13+'d ON b.`tipetambah`=d.`tipetambah`'
      +#13+'JOIN(SELECT saldo AS saldoakhirlr,idcoa FROM bukubesar'+periode+' WHERE idcoa=:idcoalr AND flagsa IN ("-1","2")) e'
      +#13+'WHERE a.flagsa NOT IN ("1","2","-2")'
      +#13+'AND b.tipe1 ="BIAYA"'
      +#13+'GROUP BY idcoa ORDER BY tipetambah,idcoa';
    Qcek.ParamByName('idcoalr').AsInteger := idcoalr;
    Qcek.Open;

    flagadabiaya := '0';
    if qcek.RecordCount>0 then
    begin
      flagadabiaya := '1';
      dm.insertdataju('JP/BIAYA/'+periode,'JURNAL PENUTUP AKUN NOMINAL','JURNAL PENUTUP AKUN NOMINAL','JURNAL PENUTUP',Qcek.fieldbyname('saldoall').AsCurrency,tanggalakhir,idju);

      cxProgressBar1.Position :=0;
      cxProgressBar1.Properties.Max := Qcek.RecordCount;
      dm.insertdataju_(idcoalr,idju,tanggalakhir,Qcek.fieldbyname('saldoall').AsCurrency,0);
      saldoawallr := Qcek.fieldbyname('saldoakhirlr').AsCurrency;
      saldoawallr := saldoawallr-Qcek.fieldbyname('saldoall').AsCurrency;
      dm.insertdatabukubesar(periode,periode,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/'+periode,idcoalr,idju,-2,tanggalakhir,Qcek.fieldbyname('saldoall').AsCurrency,0,saldoawallr);
      dm.insertdatabukubesar(thn,periode,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/'+periode,idcoalr,idju,-2,tanggalakhir,Qcek.fieldbyname('saldoall').AsCurrency,0,saldoawallr);
      for i := 1 to Qcek.RecordCount do
      begin
        dm.insertdataju_(Qcek.fieldbyname('idcoa').AsInteger,idju,tanggalakhir,0,Qcek.fieldbyname('saldo').AsCurrency);
        dm.insertdatabukubesar(periode,periode,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/'+periode,Qcek.fieldbyname('idcoa').AsInteger,idju,-2,tanggalakhir,0,Qcek.fieldbyname('saldo').AsCurrency,Qcek.fieldbyname('saldoakhir').AsCurrency-Qcek.fieldbyname('saldo').AsCurrency);
        dm.insertdatabukubesar(thn,periode,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/BIAYA/'+periode,Qcek.fieldbyname('idcoa').AsInteger,idju,-2,tanggalakhir,0,Qcek.fieldbyname('saldo').AsCurrency,Qcek.fieldbyname('saldoakhir').AsCurrency-Qcek.fieldbyname('saldo').AsCurrency);

        cxMemo1.Lines.Add('JP ID COA : '+IntToStr(Qcek.fieldbyname('idcoa').AsInteger));
        cxProgressBar1.Position := cxProgressBar1.Position+1;
        Qcek.Next;
        Application.ProcessMessages;
      end;
    end
    else
    begin
      Qcek.Close;
      Qcek.SQL.Clear;
      Qcek.SQL.Add('SELECT saldo AS saldoakhirlr,idcoa FROM bukubesar'+periode+' WHERE idcoa=:idcoalr AND flagsa IN ("-1","2")');
      Qcek.ParamByName('idcoalr').AsInteger := idcoalr;
      Qcek.Open;

      saldoawallr := Qcek.fieldbyname('saldoakhirlr').AsCurrency;
    end;

    dm.Qcek.Close;
    dm.Qcek.SQL.Clear;
    dm.Qcek.SQL.Add('select cariidjurnal() as nomor');
    dm.Qcek.Open;
    idju := dm.Qcek.fieldbyname('nomor').AsInteger;
    cxLabel2.Caption :='(2 of 4) JURNAL PENUTUP PENDAPATAN ... ';

    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Text :=
      'SELECT a.idcoa,'
      +#13+'IF(b.tipetambah="K",SUM(a.kredit-a.debet),SUM(a.debet-a.kredit)) AS saldo,'
      +#13+'b.tipe1,b.tipetambah,c.saldo AS saldoakhir,d.saldoall,e.saldoakhirlr'
      +#13+'FROM bukubesar'+periode+' a'
      +#13+'LEFT JOIN masterakun b ON a.`idcoa`=b.`idcoa`'
      +#13+'LEFT JOIN (SELECT * FROM bukubesar'+periode+' WHERE idcoa IN (SELECT * FROM idakunbiayapend) AND flagsa IN ("-1","2")) c ON a.`idcoa`=c.`idcoa`'
      +#13+'LEFT JOIN (SELECT IF(b.tipetambah="K",SUM(a.kredit-a.debet),SUM(a.debet-a.kredit)) AS saldoall,b.`tipetambah` FROM bukubesar'+periode+' a'
      +#13+'LEFT JOIN masterakun b ON a.idcoa=b.idcoa WHERE a.idcoa IN (SELECT * FROM idakunbiayapend) AND a.flagsa NOT IN("1","2") GROUP BY tipetambah)'
      +#13+'d ON b.`tipetambah`=d.`tipetambah`'
      +#13+'JOIN(SELECT saldo AS saldoakhirlr,idcoa FROM bukubesar'+periode+' WHERE idcoa=:idcoalr AND flagsa IN ("-1","2")) e'
      +#13+'WHERE a.flagsa NOT IN ("1","2")'
      +#13+'AND b.tipe1 ="PENDAPATAN"'
      +#13+'GROUP BY idcoa ORDER BY tipetambah,idcoa';
    Qcek.ParamByName('idcoalr').AsInteger := idcoalr;
    Qcek.Open;

    if qcek.RecordCount > 0 then
    begin
      dm.insertdataju('JP/PENDAPATAN/'+periode,'JURNAL PENUTUP AKUN NOMINAL','JURNAL PENUTUP AKUN NOMINAL','JURNAL PENUTUP',Qcek.fieldbyname('saldoall').AsCurrency,tanggalakhir,idju);

      cxProgressBar1.Position :=0;
      cxProgressBar1.Properties.Max := Qcek.RecordCount;
      for i := 1 to Qcek.RecordCount do
      begin
        dm.insertdataju_(Qcek.fieldbyname('idcoa').AsInteger,idju,tanggalakhir,Qcek.fieldbyname('saldoakhir').AsCurrency,0);
        dm.insertdatabukubesar(periode,periode,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/PENDAPATAN/'+periode,Qcek.fieldbyname('idcoa').AsInteger,idju,-2,tanggalakhir,Qcek.fieldbyname('saldo').AsCurrency,0,Qcek.fieldbyname('saldoakhir').AsCurrency-Qcek.fieldbyname('saldo').AsCurrency);
        dm.insertdatabukubesar(thn,periode,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/PENDAPATAN/'+periode,Qcek.fieldbyname('idcoa').AsInteger,idju,-2,tanggalakhir,Qcek.fieldbyname('saldo').AsCurrency,0,Qcek.fieldbyname('saldoakhir').AsCurrency-Qcek.fieldbyname('saldo').AsCurrency);
        cxMemo1.Lines.Add('JP ID COA : '+IntToStr(Qcek.fieldbyname('idcoa').AsInteger));
        cxProgressBar1.Position := cxProgressBar1.Position+1;
        Qcek.Next;
        Application.ProcessMessages;
      end;
      dm.insertdataju_(idcoalr,idju,tanggalakhir,0,Qcek.fieldbyname('saldoall').AsCurrency);
      saldoawallr := saldoawallr+Qcek.fieldbyname('saldoall').AsCurrency;
      dm.insertdatabukubesar(periode,periode,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/PENDAPATAN/'+periode,idcoalr,idju,-2,tanggalakhir,0,Qcek.fieldbyname('saldoall').AsCurrency,saldoawallr);
      dm.insertdatabukubesar(thn,periode,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/PENDAPATAN/'+periode,idcoalr,idju,-2,tanggalakhir,0,Qcek.fieldbyname('saldoall').AsCurrency,saldoawallr);
    end
    else
    begin
      if flagadabiaya='0' then
      begin
        dm.insertdatabukubesar(periode,periode,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/PENDAPATAN/'+periode,idcoalr,idju,-2,tanggalakhir,0,saldoawallr,saldoawallr);
        dm.insertdatabukubesar(thn,periode,'JU','JURNAL PENUTUP AKUN NOMINAL','JP/PENDAPATAN/'+periode,idcoalr,idju,-2,tanggalakhir,0,saldoawallr,saldoawallr);
      end;
    end;
    Qex.Close;
    Qex.SQL.Clear;
    Qex.SQL.Add('UPDATE periodeposting set aktif="0" where periode=:periode');
    Qex.ParamByName('periode').AsString := periode;
    Qex.Execute;

    dm.Conn1.Commit;

    try
      Qcek.Close;
      Qcek.SQL.Clear;
      Qcek.SQL.Add('select * from masterakun order by idcoa');
      Qcek.Open;
      cxProgressBar1.Position :=0;
      cxProgressBar1.Properties.Max := Qcek.RecordCount;
      cxLabel2.Caption :='(3 of 4) PENYESUAIAN SALDO AWAL BULAN DEPAN ... ';
      for i:=1 to Qcek.RecordCount do
      begin
        dm.Qcek.Close;
        dm.Qcek.SQL.Clear;
        dm.Qcek.SQL.Add('SELECT * from saldoawal where tahun=:thn and idcoa=:idcoa');
        dm.Qcek.ParamByName('idcoa').AsInteger := Qcek.fieldbyname('idcoa').AsInteger;
        dm.Qcek.ParamByName('thn').AsString := thnplus;
        dm.Qcek.Open;
        if dm.Qcek.RecordCount = 0 then
        begin
          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('INSERT INTO saldoawal (idcoa,tahun) value (:idcoa,:tahun) ');
          Qex.ParamByName('idcoa').AsInteger := Qcek.fieldbyname('idcoa').AsInteger;
          Qex.ParamByName('tahun').AsString := thnplus;
          Qex.Execute;
        end;

        dm.Qcek.Close;
        dm.Qcek.SQL.Clear;
        dm.Qcek.SQL.Add('SELECT * FROM bukubesar'+periode+' WHERE idcoa=:idcoa ORDER BY flagsa DESC');
        dm.Qcek.ParamByName('idcoa').AsInteger := Qcek.fieldbyname('idcoa').AsInteger;
        dm.Qcek.Open;
        if dm.Qcek.RecordCount > 0 then
        begin
          dm.Qcek.Last;

          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('UPDATE saldoawal set bln'+blnplus+'=:saldo where tahun=:thn and idcoa=:idcoa');
          Qex.ParamByName('saldo').AsCurrency := dm.Qcek.fieldbyname('saldo').AsCurrency;
          Qex.ParamByName('thn').AsString := thnplus;
          Qex.ParamByName('idcoa').AsInteger := Qcek.fieldbyname('idcoa').AsInteger;
          Qex.Execute;
        end
        else
        begin
          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('UPDATE saldoawal set bln'+blnplus+'=:saldo where tahun=:thn and idcoa=:idcoa');
          Qex.ParamByName('saldo').AsCurrency := 0;
          Qex.ParamByName('thn').AsString := thnplus;
          Qex.ParamByName('idcoa').AsInteger := Qcek.fieldbyname('idcoa').AsInteger;
          Qex.Execute;
        end;

        Qcek.Next;
        cxProgressBar1.Position := cxProgressBar1.Position+1;
        cxMemo1.Lines.Add('PROSES SA : '+IntToStr(Qcek.fieldbyname('idcoa').AsInteger));
        Application.ProcessMessages;
      end;
      Qcek.Close;
      Qcek.SQL.Clear;
      Qcek.SQL.Add('select * from periodeposting where periode=:periode');
      Qcek.ParamByName('periode').AsString := periodeplus;
      Qcek.Open;
      if Qcek.RecordCount=0 then
      begin
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('CREATE TABLE IF NOT EXISTS bukubesar'+periodeplus+' LIKE bukubesar;');
        Qex.Execute;

        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('CREATE TABLE IF NOT EXISTS bukubesar'+thnplus+' LIKE bukubesar;');
        Qex.Execute;

        dm.insertdataperiodeposting(periodeplus,UpperCase(FormatDateTime('mmmm yyyy',IncMonth(tanggalakhir,1))));
      end;

      cxLabel2.Caption :='(4 of 4) PEMBUATAN LAPORAN KEUANGAN ... ';
      // PEMBUATAN LAPORAN NERACA

      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('delete from neraca where periode=:periode');
      Qex.ParamByName('periode').AsString := periode;
      Qex.Execute;


      Qmaster.Close;
      Qmaster.SQL.Clear;
      Qmaster.SQL.Add('Select * from idakunaktivapasiva');
      Qmaster.Open;
      cxProgressBar1.Position :=0;
      cxProgressBar1.Properties.Max := Qmaster.RecordCount;
      cxMemo1.Lines.Add('Laporan Neraca .. ');
      Application.ProcessMessages;
      for i := 1 to Qmaster.RecordCount do
      begin
        Qcek.Close;
        Qcek.SQL.Clear;
        Qcek.SQL.Add('SELECT * FROM bukubesar'+cxComboBox2.Text+' WHERE idcoa=:idcoa ORDER BY flagsa ASC,id DESC LIMIT 1');
        Qcek.ParamByName('idcoa').AsInteger := Qmaster.fieldbyname('idcoa').AsInteger;
        Qcek.Open;
        if Qcek.RecordCount > 0 then
          saldo := Qcek.fieldbyname('saldo').AsCurrency
        else
          saldo := 0;


        cxComboBox1.ItemIndex := cxComboBox1.ItemIndex+1;
        cxComboBox2.ItemIndex := cxComboBox1.ItemIndex;
        if cxComboBox2.Text <> '' then
        begin
          periodelalu := cxComboBox2.Text;
          Qcek.Close;
          Qcek.SQL.Clear;
          Qcek.SQL.Add('SHOW TABLES LIKE "bukubesar'+periodelalu+'"');
          Qcek.Open;
          if Qcek.RecordCount > 0 then
          begin
            Qcek.Close;
            Qcek.SQL.Clear;
            Qcek.SQL.Add('SELECT * FROM bukubesar'+periodelalu+' WHERE idcoa=:idcoa ORDER BY flagsa ASC,id DESC LIMIT 1');
            Qcek.ParamByName('idcoa').AsInteger := Qmaster.fieldbyname('idcoa').AsInteger;
            Qcek.Open;
            if Qcek.RecordCount > 0 then
              saldolalu := Qcek.fieldbyname('saldo').AsCurrency
            else
              saldolalu := 0;
          end
          else
          begin
            saldolalu := 0;
          end;
        end
        else
        begin
          saldolalu := 0;
        end;
        cxComboBox1.ItemIndex := cxComboBox1.ItemIndex-1;
        cxComboBox2.ItemIndex := cxComboBox1.ItemIndex;

        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('Insert into neraca values (0,:idcoa,:saldo,:saldolalu,:periode)');
        Qex.ParamByName('idcoa').AsInteger := Qmaster.fieldbyname('idcoa').AsInteger;
        Qex.ParamByName('saldo').AsCurrency := saldo;
        Qex.ParamByName('saldolalu').AsCurrency := saldolalu;
        Qex.ParamByName('periode').AsString := periode;
        Qex.Execute;

        Qmaster.Next;
        Application.ProcessMessages;
        cxProgressBar1.Position :=cxProgressBar1.Position+1;
      end;

      // LAPORAN LABA RUGI

      qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('delete from labarugi where periode=:periode');
      Qex.ParamByName('periode').AsString := periode;
      Qex.Execute;


      Qmaster.Close;
      Qmaster.SQL.Clear;
      Qmaster.SQL.Add('SELECT a.idcoa,b.`tipetambah` FROM idakunbiayapend a LEFT JOIN masterakun b ON a.`idcoa`=b.`idcoa`');
      Qmaster.Open;
      cxMemo1.Lines.Add('Laporan Laba Rugi .. ');
      cxProgressBar1.Position := 0;
      cxProgressBar1.Properties.Max := qmaster.RecordCount;
      Application.ProcessMessages;
      for i := 1 to Qmaster.RecordCount do
      begin
        Qcek.Close;
        Qcek.SQL.Clear;
        Qcek.SQL.Add('select idcoapajaklr from pengaturan where idx="1"');
        qcek.Open;
        if Qcek.FieldByName('idcoapajaklr').AsInteger=Qmaster.FieldByName('idcoa').AsInteger then
        begin
          idgroup:=2;
          namagroup := 'LABA RUGI SETELAH PAJAK';
        end
        else
        begin
          idgroup:=1;
          namagroup := 'LABA RUGI SEBELUM PAJAK';
        end;

        Qcek.Close;
        Qcek.SQL.Clear;
        Qcek.SQL.Add('SELECT * FROM bukubesar'+periode+' WHERE idcoa=:idcoa and flagsa<>"-2" ORDER BY flagsa ASC,id DESC LIMIT 1');
        Qcek.ParamByName('idcoa').AsInteger := Qmaster.fieldbyname('idcoa').AsInteger;
        Qcek.Open;
        if Qcek.RecordCount > 0 then
        begin
          saldo := Qcek.fieldbyname('saldo').AsCurrency;
          if Qmaster.FieldByName('tipetambah').AsString='K' then
            saldo2 := Qcek.fieldbyname('saldo').AsCurrency
          else
            saldo2 := Qcek.fieldbyname('saldo').AsCurrency*-1;
        end
        else
        begin
          saldo := 0;
          saldo2 := 0;
        end;

        Qcek.Close;
        Qcek.SQL.Clear;
        Qcek.SQL.Add('SELECT * FROM anggaranlr where periode="'+periode+'" and idcoa=:idcoa');
        Qcek.ParamByName('idcoa').AsInteger := Qmaster.fieldbyname('idcoa').AsInteger;
        Qcek.Open;
        if Qcek.RecordCount > 0 then
        begin
          saldoagr := Qcek.fieldbyname('anggaran').AsCurrency;
          if Qmaster.FieldByName('tipetambah').AsString='K' then
          saldoagr2 := Qcek.fieldbyname('anggaran').AsCurrency
          else
          saldoagr2 := Qcek.fieldbyname('anggaran').AsCurrency*-1;
        end
        else
        begin
          saldoagr := 0;
          saldoagr2 := 0;
        end;


        Qcek2.Close;
        Qcek2.SQL.Clear;
        Qcek2.SQL.Add('SELECT * FROM periodeposting WHERE LEFT(periode,4)=:tahun AND periode <="'+cxComboBox2.Text+'" ORDER BY periode');
        Qcek2.ParamByName('tahun').AsString := LeftStr(periode,4);
        Qcek2.Open;
        saldolalu := 0;
        saldoagrlalu :=0;
        saldolalu2 := 0;
        saldoagrlalu2 :=0;
        for j:=1 to Qcek2.RecordCount do
        begin
          Qcek.Close;
          Qcek.SQL.Clear;
          Qcek.SQL.Add('SHOW TABLES LIKE "bukubesar'+qcek2.fieldbyname('periode').AsString+'"');
          Qcek.Open;
          if qcek.RecordCount = 0 then
          begin
            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('CREATE TABLE IF NOT EXISTS bukubesar'+qcek2.fieldbyname('periode').AsString+' LIKE bukubesar;');
            Qex.Execute;

            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('CREATE TABLE IF NOT EXISTS bukubesar'+LeftStr(qcek2.fieldbyname('periode').AsString,4)+' LIKE bukubesar;');
            Qex.Execute;
          end;
          Qcek.Close;
          Qcek.SQL.Clear;
          Qcek.SQL.Add('SELECT * FROM bukubesar'+qcek2.fieldbyname('periode').AsString+' WHERE idcoa=:idcoa and flagsa<>"-2" ORDER BY flagsa ASC,id DESC LIMIT 1');
          Qcek.ParamByName('idcoa').AsInteger := Qmaster.fieldbyname('idcoa').AsInteger;
          Qcek.Open;
          if Qcek.RecordCount > 0 then
          begin
            saldolalu := saldolalu+Qcek.fieldbyname('saldo').AsCurrency;
            if Qmaster.FieldByName('tipetambah').AsString='K' then
              saldolalu2 := saldolalu2+Qcek.fieldbyname('saldo').AsCurrency
            else
              saldolalu2 := saldolalu2+(Qcek.fieldbyname('saldo').AsCurrency*-1);
          end
          else
          begin
            saldolalu := saldolalu+0;
            saldolalu2 := saldolalu2+0;
          end;

          Qcek.Close;
          Qcek.SQL.Clear;
          Qcek.SQL.Add('SELECT * FROM anggaranlr where periode="'+qcek2.fieldbyname('periode').AsString+'" and idcoa=:idcoa');
          Qcek.ParamByName('idcoa').AsInteger := Qmaster.fieldbyname('idcoa').AsInteger;
          Qcek.Open;
          if Qcek.RecordCount > 0 then
          begin
            saldoagrlalu := saldoagrlalu+Qcek.fieldbyname('anggaran').AsCurrency;
            if Qmaster.FieldByName('tipetambah').AsString='K' then
              saldoagrlalu2 := saldoagrlalu2+Qcek.fieldbyname('anggaran').AsCurrency
            else
              saldoagrlalu2 := saldoagrlalu2+(Qcek.fieldbyname('anggaran').AsCurrency*-1);
          end
          else
          begin
            saldoagrlalu := saldoagrlalu+0;
            saldoagrlalu2 := saldoagrlalu2+0;
          end;

          Qcek2.Next;
          Application.ProcessMessages;
        end;

        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('Insert into labarugi values (0,:idcoa,:saldo,:saldolalu,:saldoagr,:saldoagrlalu,:periode,:saldo2,:saldolalu2,:saldoagr2,:saldoagrlalu2,:idgroup,:namagroup)');
        Qex.ParamByName('idcoa').AsInteger := Qmaster.fieldbyname('idcoa').AsInteger;
        Qex.ParamByName('saldo').AsCurrency := saldo;
        Qex.ParamByName('saldolalu').AsCurrency := saldolalu;
        Qex.ParamByName('periode').AsString := periode;
        qex.ParamByName('saldoagr').AsCurrency := saldoagr;
        qex.ParamByName('saldoagrlalu').AsCurrency := saldoagrlalu;
        Qex.ParamByName('saldo2').AsCurrency := saldo2;
        Qex.ParamByName('saldolalu2').AsCurrency := saldolalu2;
        qex.ParamByName('saldoagr2').AsCurrency := saldoagr2;
        qex.ParamByName('saldoagrlalu2').AsCurrency := saldoagrlalu2;
        Qex.ParamByName('idgroup').AsInteger := idgroup;
        Qex.ParamByName('namagroup').AsString := namagroup;
        Qex.Execute;

        Qmaster.Next;
        Application.ProcessMessages;
        cxProgressBar1.Position :=cxProgressBar1.Position+1;
      end;

      //LAPORAN ARUS KAS..

      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('DELETE FROM aruskas where periode=:periode');
      Qex.ParamByName('periode').AsString := periode;
      Qex.Execute;

      cxProgressBar1.Position := 0;
      cxMemo1.Lines.Add('Laporan Arus Kas .. ');
      Application.ProcessMessages;
      Qmaster.Close;
      Qmaster.SQL.Clear;
      Qmaster.SQL.Add('SELECT a.idcoa,a.idju,b.namaakun,a.tanggal,IF(a.flagsa="1","SALDO AWAL",IF(a.flagsa="2","SALDO AWAL",c.`uraian`)) AS uraian,');
      Qmaster.SQL.Add('b.`kodeakun`,b.`namaakun`,CONCAT(b.kodeakun,CAST(" - " AS CHAR CHARACTER SET latin1),b.`namaakun`) AS namaakun2,');
      Qmaster.SQL.Add('c.`notrans` AS noju, b.`tipetambah`,a.debet,a.`kredit`,');
      Qmaster.SQL.Add('IF(a.debet>0,a.debet*-1,a.kredit)AS saldosum,');
      Qmaster.SQL.Add('IF(a.debet>0,a.debet,a.kredit) AS saldo,');
      Qmaster.SQL.Add('IF(a.debet>0,"K","M")AS tipesum');
      Qmaster.SQL.Add('FROM bukubesar'+cxComboBox2.Text+' a');
      Qmaster.SQL.Add('LEFT JOIN masterakun b ON a.`idcoa`=b.`idcoa`');
      Qmaster.SQL.Add('LEFT JOIN ju c ON a.`idju`=c.`idju`');
      Qmaster.SQL.Add('WHERE a.idju IN (');
      Qmaster.SQL.Add('SELECT idju FROM bukubesar'+cxComboBox2.Text+' a');
      Qmaster.SQL.Add('WHERE a.idcoa');
      Qmaster.SQL.Add('IN (SELECT idcoa FROM masterakun WHERE idtipe3=(SELECT idtipe3kas FROM pengaturan)) AND flagsa NOT IN ("1","2")');
      Qmaster.SQL.Add(') AND b.`idtipe3`<>(SELECT idtipe3kas FROM pengaturan)');
      Qmaster.SQL.Add('ORDER BY b.kodeakun,tanggal');
      Qmaster.Open;
      cxProgressBar1.Properties.Max := qmaster.RecordCount;
      Application.ProcessMessages;

      for i := 1 to Qmaster.RecordCount do
      begin
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('INSERT INTO aruskas values (0,:idcoa,:saldo,:saldo2,:tipekas,:idju,:periode)');
        Qex.ParamByName('idcoa').AsInteger := Qmaster.fieldbyname('idcoa').AsInteger;
        Qex.ParamByName('saldo').AsCurrency := Qmaster.fieldbyname('saldo').AsCurrency;
        Qex.ParamByName('saldo2').AsCurrency := Qmaster.fieldbyname('saldosum').AsCurrency;
        Qex.ParamByName('tipekas').AsString := Qmaster.fieldbyname('tipesum').AsString;
        Qex.ParamByName('idju').AsInteger := Qmaster.fieldbyname('idju').AsInteger;
        Qex.ParamByName('periode').AsString := periode;
        qex.Execute;

        Qmaster.Next;
        Application.ProcessMessages;
        cxProgressBar1.Position :=cxProgressBar1.Position+1;
      end;

      cxMemo1.Lines.Add('Selesai..');
      MessageDlg('Posting Penutup Sukses..!',mtInformation,[mbOK],0);
      ModalResult := mrOk;
    except
      on e:exception do
      begin
        MessageDlg('Terdapat Kesalahan Pada Proses Pembuatan SALDO AWAL dan PEMBUATAN LAPORAN..!'+#13+e.Message+#13+'Harap Hubungi Operator..!',mtError,[mbok],0);
      end;
    end;

  finally
    cxButton1.Enabled := true;
    cxComboBox1.Enabled := true;
    dm.unlocktabel;
  end;
end;

procedure Tfopostingpenutup.cxComboBox1PropertiesChange(Sender: TObject);
begin
  cxComboBox2.ItemIndex := cxComboBox1.ItemIndex;
end;

procedure Tfopostingpenutup.FormShow(Sender: TObject);
begin
  dm.isicombo2('periodeposting',cxComboBox1,cxComboBox2);
  cxProgressBar1.Position := 0;
  cxMemo1.Lines.Clear;
end;

procedure Tfopostingpenutup.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  Self.Close;
end;

end.
