unit ujra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.ExtCtrls, RzPanel,
  dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinTheBezier, cxPC,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  Vcl.Menus, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, MemDS, DBAccess,
  MyAccess, cxProgressBar, cxDropDownEdit, RzButton, cxTextEdit, cxCheckBox,
  cxLabel, cxMaskEdit, cxCalendar, Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxDockPanel, dxDockControl, RzLabel, frxClass,
  frxDesgn, frxDBSet, dxSkinsDefaultPainters, scDevExStyleAdapter;

type
  Tfojra = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    Qjra: TMyQuery;
    TabSheet1: TRzTabSheet;
    RzPanel1setorsimp: TRzPanel;
    cxComboBox2: TcxComboBox;
    cxComboBox1: TcxComboBox;
    cxButton1: TcxButton;
    cxLabel1: TcxLabel;
    RzLabel1: TRzLabel;
    cxProgressBar1: TcxProgressBar;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxLabel2: TcxLabel;
    RzLabel2: TRzLabel;
    frxDesigner1: TfrxDesigner;
    replr: TfrxReport;
    SaveDialog1: TSaveDialog;
    dbjra: TfrxDBDataset;
    Qbill: TMyQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    MyJra: TMyDataSource;
    cxGrid1DBTableView1periode: TcxGridDBColumn;
    cxGrid1DBTableView1kodegol: TcxGridDBColumn;
    cxGrid1DBTableView1golongan: TcxGridDBColumn;
    cxGrid1DBTableView1kodeunit: TcxGridDBColumn;
    cxGrid1DBTableView1namaunit: TcxGridDBColumn;
    cxGrid1DBTableView1kodeakun: TcxGridDBColumn;
    cxGrid1DBTableView1namaakun: TcxGridDBColumn;
    cxGrid1DBTableView1keterangan: TcxGridDBColumn;
    cxGrid1DBTableView1jmlrek: TcxGridDBColumn;
    cxGrid1DBTableView1jmlm3: TcxGridDBColumn;
    cxGrid1DBTableView1totaldebet: TcxGridDBColumn;
    cxGrid1DBTableView1biayaair: TcxGridDBColumn;
    cxGrid1DBTableView1administrasi: TcxGridDBColumn;
    cxGrid1DBTableView1pemeliharaan: TcxGridDBColumn;
    cxGrid1DBTableView1retribusi: TcxGridDBColumn;
    cxGrid1DBTableView1materai: TcxGridDBColumn;
    cxGrid1DBTableView1tangki: TcxGridDBColumn;
    cxGrid1DBTableView1totalkredit: TcxGridDBColumn;
    cxGrid1DBTableView1tglpost: TcxGridDBColumn;
    cxGrid1DBTableView1urut: TcxGridDBColumn;
    cxGrid1DBTableView1ket2: TcxGridDBColumn;
    procedure RzToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
        lastdate : TDate;
  public
    { Public declarations }
    procedure prosesjurnal;
    procedure viewjurnal;
    procedure exportexcel;
    procedure kondisi1;
    procedure kondisi2;
    procedure kondisi3;
    procedure kondisi4;
    procedure kondisiawal;
  end;

var
  fojra: Tfojra;

implementation

{$R *.dfm}

uses udm,dateutils,strutils,cxGridExportLink;

procedure Tfojra.cxButton1Click(Sender: TObject);
begin
  if RzLabel2.Caption = 'Sudah Di Proses' then
  begin
    if MessageDlg('Anda Akan Melakukan PROSES ULANG Jurnal Periode '+cxComboBox1.Text+' ..!'+#13+'Tekan "Yes" Jika Yakin Untuk Melanjutkan!',mtConfirmation,[mbyes,mbno],0)=mrno then
    exit;
  end
  else
  begin
    if MessageDlg('Anda Akan Melakukan PROSES Jurnal Periode '+cxComboBox1.Text+' ..!'+#13+'Tekan "Yes" Jika Yakin Untuk Melanjutkan!',mtConfirmation,[mbyes,mbno],0)=mrno then
    exit;
  end;

{  with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('SELECT * FROM `information_schema`.`TABLES` WHERE table_name=:periode AND table_schema="rekening"') ;
    Qcek.ParamByName('periode').AsString := cxComboBox2.Text+'_laporan';
    Qcek.Open;
    if Qcek.RecordCount=0 then
    begin
      MessageDlg('Laporan drd "'+cxComboBox1.Text+'" Belum di Posting ..! Harap Hubungi Bagian Rekening..!',mtWarning,[mbok],0);
      Exit;
    end;
  end; }
  if dm.cekstatusaktifperiodeposting(cxComboBox2.Text)=0 then
  begin
    MessageDlg('Periode Posting "'+UpperCase(cxComboBox1.Text)+'" Sudah Terkunci / Belum Dibuat ..!',mtWarning,[mbok],0);
    Exit;
  end;
  try
    kondisi3;
    prosesjurnal;
    kondisi4;
  except
    on e:exception do
    begin
      MessageDlg(e.Message,mtError,[mbok],0);
      kondisi4;
    end;
  end;
end;

procedure Tfojra.cxButton2Click(Sender: TObject);
begin
  viewjurnal;
end;

procedure Tfojra.cxButton3Click(Sender: TObject);
begin
  exportexcel;
end;

procedure Tfojra.cxComboBox1PropertiesChange(Sender: TObject);
begin
  cxComboBox2.ItemIndex := cxComboBox1.ItemIndex;
  with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    qcek.SQL.Add('select id from jra where periode=:periode limit 1');
    Qcek.ParamByName('periode').AsString := cxComboBox2.Text;
    Qcek.Open;
    if Qcek.RecordCount > 0 then
      kondisi2
    else
      kondisi1;
  end;
end;

procedure Tfojra.exportexcel;
begin
  Qjra.Close;
  Qjra.SQL.Clear;
  Qjra.SQL.Add(Qjra.SQLRefresh.Text);
  Qjra.ParamByName('periode').AsString := cxComboBox2.Text;
  Qjra.Open;
  if Qjra.RecordCount > 0 then
  begin
    SaveDialog1.Filter := 'XLS|*.xls';
    if SaveDialog1.Execute then
    begin
      try
        ExportGridToExcel(SaveDialog1.FileName,cxGrid1);
        MessageDlg('Export Berhasil..',mtInformation,[mbok],0);
      except
        on e:exception do
        begin
          MessageDlg('Terdapat kesalahan..!'+#13+e.Message,mtError,[mbok],0);
        end;
      end;
    end;
  end;
end;

procedure Tfojra.FormCreate(Sender: TObject);
begin
  Self.Width := cxButton3.Left+cxButton3.Width+50;
  Self.Height := cxButton3.Top+cxButton3.Height+50;
end;

procedure Tfojra.FormShow(Sender: TObject);
begin
  dm.isicombo2('periodeposting',cxComboBox1,cxComboBox2);
  dm.isicombo2('periodeposting',cxComboBox1,cxComboBox2);
  cxProgressBar1.Position := 0;
  kondisiawal;
end;

procedure Tfojra.kondisi1;
begin
  RzLabel2.Caption := 'Belum Di Proses';
  cxButton2.Enabled := false;
  cxButton3.Enabled := false;
  cxButton1.Enabled := true;
  cxButton1.Caption := 'Proses';
end;

procedure Tfojra.kondisi2;
begin
  RzLabel2.Caption := 'Sudah Di Proses';
  cxButton2.Enabled := true;
  cxButton3.Enabled := true;
  cxButton1.Enabled := true;
  cxButton1.Caption := 'Proses Ulang';
end;

procedure Tfojra.kondisi3;
begin
  cxProgressBar1.Visible := true;
  cxProgressBar1.BringToFront;
end;

procedure Tfojra.kondisi4;
begin
  cxProgressBar1.Visible := false;
  cxProgressBar1.SendToBack;
end;

procedure Tfojra.kondisiawal;
begin
  kondisi1;
  kondisi4;
end;

procedure Tfojra.prosesjurnal;
var
  periode : string;
  i : integer;
  date2 : tdate;
  tglakhir : byte;
begin
  periode :=  cxComboBox2.Text;
  date2 := EncodeDate(StrToInt(LeftStr(cxComboBox2.Text,4)),StrToInt(RightStr(cxComboBox2.Text,2)),1);
  tglakhir := DaysInMonth(date2);
  lastdate := EncodeDate(StrToInt(LeftStr(cxComboBox2.Text,4)),StrToInt(RightStr(cxComboBox2.Text,2)),tglakhir);
  with dm do
  begin
    // ambil data dari Billing;
    if konekconnbilling=false then
    begin
      Exit;
    end;
    Qbill.Close;
    Qbill.SQL.Clear;
    Qbill.SQL.Add(Qbill.SQLRefresh.Text);
    Qbill.ParamByName('periode').AsString := periode;
    Qbill.Open;
    if Qbill.RecordCount > 0 then
    begin
      cxProgressBar1.Position := 0;
      cxProgressBar1.Properties.Max := Qcek.RecordCount;
      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQl.Add('TRUNCATE dump_sumjra;');
      Qex.Execute;
      for i := 1 to Qbill.RecordCount do
      begin
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('INSERT INTO dump_sumjra values (:kodeunit,:namaunit,:kodegol,:golongan,:rekair,:biayaair,:adm,:pml,:mat,:pak,:rek,:periode)');
        Qex.ParamByName('kodeunit').AsString := Qbill.FieldByName('kodeunit').AsString;
        Qex.ParamByName('namaunit').AsString := '-';
        Qex.ParamByName('kodegol').AsString := Qbill.FieldByName('kodegol').AsString;
        Qex.ParamByName('golongan').AsString := '-';
        Qex.ParamByName('rekair').AsCurrency := Qbill.FieldByName('rekair').AsCurrency;
        Qex.ParamByName('biayaair').AsCurrency := Qbill.FieldByName('biayaair').AsCurrency;
        Qex.ParamByName('adm').AsCurrency := Qbill.FieldByName('adm').AsCurrency;
        Qex.ParamByName('pml').AsCurrency := Qbill.FieldByName('pml').AsCurrency;
        Qex.ParamByName('mat').AsCurrency := Qbill.FieldByName('mat').AsCurrency;
        Qex.ParamByName('pak').AsCurrency := Qbill.FieldByName('pk').AsCurrency;
        Qex.ParamByName('rek').AsCurrency := Qbill.FieldByName('rek').AsCurrency;
        Qex.ParamByName('periode').AsString := periode;
        Qex.Execute;

        Qbill.Next;
        cxProgressBar1.Position:=cxProgressBar1.Position+1;
        Application.ProcessMessages;
      end;

    end
    else
    begin
      MessageDlg('Tidak Ada Data Yang di billing pada periode : "'+periode,mtWarning,[mbok],0);
      Exit;
    end;



    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('Call gen_jra(:periode,:namauser)');
    Qcek.ParamByName('periode').AsString := periode;
    Qcek.ParamByName('namauser').AsString := userlogin;
    Qcek.Open;
    if Qcek.RecordCount > 0 then
    begin
      Conn1.StartTransaction;

      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('delete from jra where periode=:periode');
      Qex.ParamByName('periode').AsString := periode;
      Qex.Execute;


      cxProgressBar1.Position := 0;
      cxProgressBar1.Properties.Max := Qcek.RecordCount;
      for i := 1 to Qcek.RecordCount do
      begin
        //isi debet
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('INSERT INTO jra (periode,kodegol,golongan,kodeunit,namaunit,kodeakun,namaakun,keterangan,jmlrek,jmlm3,totaldebet,urut,ket2,tanggal)');
        Qex.SQL.Add('Value (:periode,:kodegol,:golongan,:kodeunit,:namaunit,:kodeakun,:namaakun,:keterangan,:jmlrek,:jmlm3,:totaldebet,:urut,:ket2,:tanggal)');
        Qex.ParamByName('periode').Value := periode;
        Qex.ParamByName('kodegol').Value := Qcek.FieldByName('kodegol').AsString;
        Qex.ParamByName('golongan').Value := Qcek.FieldByName('golongan').AsString;
        Qex.ParamByName('kodeunit').Value := Qcek.FieldByName('kodeunit').AsString;
        Qex.ParamByName('namaunit').Value := Qcek.FieldByName('namaunit').AsString;
        Qex.ParamByName('kodeakun').Value := Qcek.FieldByName('d_1').AsString;
        Qex.ParamByName('namaakun').Value := Qcek.FieldByName('dn_1').AsString;
        Qex.ParamByName('keterangan').Value := 'PENDAPATAN PENJUALAN AIR PERIODE : '+periode;
        Qex.ParamByName('jmlrek').Value := Qcek.FieldByName('jmlrek').AsCurrency;
        Qex.ParamByName('jmlm3').Value :=  Qcek.FieldByName('pakaim3').AsCurrency;
        Qex.ParamByName('totaldebet').Value := Qcek.FieldByName('j_dn_1').AsCurrency;
        Qex.ParamByName('ket2').AsString := Qcek.FieldByName('d_1').AsString+' - '+Qcek.FieldByName('dn_1').AsString;
        Qex.ParamByName('tanggal').AsDate := lastdate;
        Qex.ParamByName('urut').AsInteger := i;
        Qex.Execute;

        //isi kredit byair
        if Qcek.FieldByName('k_1').AsString<>'0' then
        begin
          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('INSERT INTO jra (periode,kodegol,golongan,kodeunit,namaunit,kodeakun,namaakun,keterangan,biayaair,urut,ket2,tanggal)');
          Qex.SQL.Add('Value (:periode,:kodegol,:golongan,:kodeunit,:namaunit,:kodeakun,:namaakun,:keterangan,:biayaair,:urut,:ket2,:tanggal)');
          Qex.ParamByName('periode').Value := periode;
          Qex.ParamByName('kodegol').Value := Qcek.FieldByName('kodegol').AsString;
          Qex.ParamByName('golongan').Value := Qcek.FieldByName('golongan').AsString;
          Qex.ParamByName('kodeunit').Value := Qcek.FieldByName('kodeunit').AsString;
          Qex.ParamByName('namaunit').Value := Qcek.FieldByName('namaunit').AsString;
          Qex.ParamByName('kodeakun').Value := Qcek.FieldByName('k_1').AsString;
          Qex.ParamByName('namaakun').Value := Qcek.FieldByName('kn_1').AsString;
          Qex.ParamByName('keterangan').Value := 'PENDAPATAN PENJUALAN AIR PERIODE : '+periode;
          Qex.ParamByName('biayaair').Value := Qcek.FieldByName('j_kn_1').AsCurrency;
          Qex.ParamByName('ket2').AsString := '        '+Qcek.FieldByName('k_1').AsString+' - '+Qcek.FieldByName('kn_1').AsString;
          Qex.ParamByName('urut').AsInteger := i;
          Qex.ParamByName('tanggal').AsDate := lastdate;
          Qex.Execute;
        end;

        //isi kredit adm
        if Qcek.FieldByName('k_2').AsString<>'0' then
        begin
          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('INSERT INTO jra (periode,kodegol,golongan,kodeunit,namaunit,kodeakun,namaakun,keterangan,administrasi,urut,ket2,tanggal)');
          Qex.SQL.Add('Value (:periode,:kodegol,:golongan,:kodeunit,:namaunit,:kodeakun,:namaakun,:keterangan,:administrasi,:urut,:ket2,:tanggal)');
          Qex.ParamByName('periode').Value := periode;
          Qex.ParamByName('kodegol').Value := Qcek.FieldByName('kodegol').AsString;
          Qex.ParamByName('golongan').Value := Qcek.FieldByName('golongan').AsString;
          Qex.ParamByName('kodeunit').Value := Qcek.FieldByName('kodeunit').AsString;
          Qex.ParamByName('namaunit').Value := Qcek.FieldByName('namaunit').AsString;
          Qex.ParamByName('kodeakun').Value := Qcek.FieldByName('k_2').AsString;
          Qex.ParamByName('namaakun').Value := Qcek.FieldByName('kn_2').AsString;
          Qex.ParamByName('keterangan').Value := 'PENDAPATAN PENJUALAN AIR PERIODE : '+periode;
          Qex.ParamByName('administrasi').Value := Qcek.FieldByName('j_kn_2').AsCurrency;
          Qex.ParamByName('ket2').AsString := '        '+Qcek.FieldByName('k_2').AsString+' - '+Qcek.FieldByName('kn_2').AsString;
          Qex.ParamByName('urut').AsInteger := i;
          Qex.ParamByName('tanggal').AsDate := lastdate;
          Qex.Execute;
        end;

        //isi kredit pemel
        if Qcek.FieldByName('k_3').AsString<>'0' then
        begin
          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('INSERT INTO jra (periode,kodegol,golongan,kodeunit,namaunit,kodeakun,namaakun,keterangan,pemeliharaan,urut,ket2,tanggal)');
          Qex.SQL.Add('Value (:periode,:kodegol,:golongan,:kodeunit,:namaunit,:kodeakun,:namaakun,:keterangan,:pemeliharaan,:urut,:ket2,:tanggal)');
          Qex.ParamByName('periode').Value := periode;
          Qex.ParamByName('kodegol').Value := Qcek.FieldByName('kodegol').AsString;
          Qex.ParamByName('golongan').Value := Qcek.FieldByName('golongan').AsString;
          Qex.ParamByName('kodeunit').Value := Qcek.FieldByName('kodeunit').AsString;
          Qex.ParamByName('namaunit').Value := Qcek.FieldByName('namaunit').AsString;
          Qex.ParamByName('kodeakun').Value := Qcek.FieldByName('k_3').AsString;
          Qex.ParamByName('namaakun').Value := Qcek.FieldByName('kn_3').AsString;
          Qex.ParamByName('keterangan').Value := 'PENDAPATAN PENJUALAN AIR PERIODE : '+periode;
          Qex.ParamByName('pemeliharaan').Value := Qcek.FieldByName('j_kn_3').AsCurrency;
          Qex.ParamByName('ket2').AsString := '        '+Qcek.FieldByName('k_3').AsString+' - '+Qcek.FieldByName('kn_3').AsString;
          Qex.ParamByName('urut').AsInteger := i;
          Qex.ParamByName('tanggal').AsDate := lastdate;
          Qex.Execute;
        end;

        //isi kredit retribus
        if Qcek.FieldByName('k_4').AsString<>'0' then
        begin
          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('INSERT INTO jra (periode,kodegol,golongan,kodeunit,namaunit,kodeakun,namaakun,keterangan,retribusi,urut,ket2,tanggal)');
          Qex.SQL.Add('Value (:periode,:kodegol,:golongan,:kodeunit,:namaunit,:kodeakun,:namaakun,:keterangan,:retribusi,:urut,:ket2,:tanggal)');
          Qex.ParamByName('periode').Value := periode;
          Qex.ParamByName('kodegol').Value := Qcek.FieldByName('kodegol').AsString;
          Qex.ParamByName('golongan').Value := Qcek.FieldByName('golongan').AsString;
          Qex.ParamByName('kodeunit').Value := Qcek.FieldByName('kodeunit').AsString;
          Qex.ParamByName('namaunit').Value := Qcek.FieldByName('namaunit').AsString;
          Qex.ParamByName('kodeakun').Value := Qcek.FieldByName('k_4').AsString;
          Qex.ParamByName('namaakun').Value := Qcek.FieldByName('kn_4').AsString;
          Qex.ParamByName('keterangan').Value := 'PENDAPATAN PENJUALAN AIR PERIODE : '+periode;
          Qex.ParamByName('retribusi').Value := Qcek.FieldByName('j_kn_4').AsCurrency;
          Qex.ParamByName('ket2').AsString := '        '+Qcek.FieldByName('k_4').AsString+' - '+Qcek.FieldByName('kn_4').AsString;
          Qex.ParamByName('urut').AsInteger := i;
          Qex.ParamByName('tanggal').AsDate := lastdate;
          Qex.Execute;
        end;

        //isi kredit materai
        if Qcek.FieldByName('k_5').AsString<>'0' then
        begin
          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('INSERT INTO jra (periode,kodegol,golongan,kodeunit,namaunit,kodeakun,namaakun,keterangan,materai,urut,ket2,tanggal)');
          Qex.SQL.Add('Value (:periode,:kodegol,:golongan,:kodeunit,:namaunit,:kodeakun,:namaakun,:keterangan,:materai,:urut,:ket2,:tanggal)');
          Qex.ParamByName('periode').Value := periode;
          Qex.ParamByName('kodegol').Value := Qcek.FieldByName('kodegol').AsString;
          Qex.ParamByName('golongan').Value := Qcek.FieldByName('golongan').AsString;
          Qex.ParamByName('kodeunit').Value := Qcek.FieldByName('kodeunit').AsString;
          Qex.ParamByName('namaunit').Value := Qcek.FieldByName('namaunit').AsString;
          Qex.ParamByName('kodeakun').Value := Qcek.FieldByName('k_5').AsString;
          Qex.ParamByName('namaakun').Value := Qcek.FieldByName('kn_5').AsString;
          Qex.ParamByName('keterangan').Value := 'PENDAPATAN PENJUALAN AIR PERIODE : '+periode;
          Qex.ParamByName('materei').Value := Qcek.FieldByName('j_kn_5').AsCurrency;
          Qex.ParamByName('ket2').AsString := '        '+Qcek.FieldByName('k_5').AsString+' - '+Qcek.FieldByName('kn_5').AsString;
          Qex.ParamByName('urut').AsInteger := i;
          Qex.ParamByName('tanggal').AsDate := lastdate;
          Qex.Execute;
        end;

        if Qcek.FieldByName('k_6').AsString<>'0' then
        begin
          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('INSERT INTO jra (periode,kodegol,golongan,kodeunit,namaunit,kodeakun,namaakun,keterangan,tangki,urut,ket2,tanggal)');
          Qex.SQL.Add('Value (:periode,:kodegol,:golongan,:kodeunit,:namaunit,:kodeakun,:namaakun,:keterangan,:tangki,:urut,:ket2,:tanggal)');
          Qex.ParamByName('periode').Value := periode;
          Qex.ParamByName('kodegol').Value := Qcek.FieldByName('kodegol').AsString;
          Qex.ParamByName('golongan').Value := Qcek.FieldByName('golongan').AsString;
          Qex.ParamByName('kodeunit').Value := Qcek.FieldByName('kodeunit').AsString;
          Qex.ParamByName('namaunit').Value := Qcek.FieldByName('namaunit').AsString;
          Qex.ParamByName('kodeakun').Value := Qcek.FieldByName('k_6').AsString;
          Qex.ParamByName('namaakun').Value := Qcek.FieldByName('kn_6').AsString;
          Qex.ParamByName('keterangan').Value := 'PENDAPATAN PENJUALAN AIR PERIODE : '+periode;
          Qex.ParamByName('tangki').Value := Qcek.FieldByName('j_kn_6').AsCurrency;
          Qex.ParamByName('ket2').AsString := '        '+Qcek.FieldByName('k_6').AsString+' - '+Qcek.FieldByName('kn_6').AsString;
          Qex.ParamByName('urut').AsInteger := i;
          Qex.ParamByName('tanggal').AsDate := lastdate;
          Qex.Execute;
        end;

        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('INSERT INTO jra (periode,kodegol,golongan,kodeunit,namaunit,kodeakun,namaakun,keterangan,totalkredit,urut,ket2,tanggal)');
        Qex.SQL.Add('Value (:periode,:kodegol,:golongan,:kodeunit,:namaunit,:kodeakun,:namaakun,:keterangan,:totalkredit,:urut,:ket2,:tanggal)');
        Qex.ParamByName('periode').Value := periode;
        Qex.ParamByName('kodegol').Value := Qcek.FieldByName('kodegol').AsString;
        Qex.ParamByName('golongan').Value := Qcek.FieldByName('golongan').AsString;
        Qex.ParamByName('kodeunit').Value := Qcek.FieldByName('kodeunit').AsString;
        Qex.ParamByName('namaunit').Value := Qcek.FieldByName('namaunit').AsString;
        Qex.ParamByName('keterangan').Value := 'PENDAPATAN PENJUALAN AIR PERIODE : '+periode;
        Qex.ParamByName('totalkredit').Value := Qcek.FieldByName('ttlkredit').AsCurrency;
        Qex.ParamByName('ket2').AsString := '';
        Qex.ParamByName('urut').AsInteger := i;
        Qex.ParamByName('tanggal').AsDate := lastdate;
        Qex.Execute;



        Qcek.Next;
        cxProgressBar1.Position := cxProgressBar1.Position+1;
        Application.ProcessMessages;
      end;
      Conn1.Commit;
      viewjurnal;
    end
    else
    begin
      MessageDlg('Tidak Ada Data Yang akan di proses pada periode : "'+periode,mtWarning,[mbok],0);
    end;
  end;
end;

procedure Tfojra.RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
begin
  close;
end;

procedure Tfojra.RzToolButton1Click(Sender: TObject);
begin
  if (trim(cxComboBox2.Text)='') or ((trim(cxComboBox1.Text)='')) then
  begin
    MessageDlg('Periode Harus diisi !',mtWarning,[mbok],0);
    cxComboBox1.SetFocus;
    Exit;
  end;
end;

procedure Tfojra.viewjurnal;
var
  date2 : tdate;
  tglakhir : byte;
  dirlogo : string;
begin
  Qjra.Close;
  Qjra.SQL.Clear;
  Qjra.SQL.Add(Qjra.SQLRefresh.Text);
  Qjra.ParamByName('periode').AsString := cxComboBox2.Text;
  Qjra.Open;

  date2 := EncodeDate(StrToInt(LeftStr(cxComboBox2.Text,4)),StrToInt(RightStr(cxComboBox2.Text,2)),1);
  tglakhir := DaysInMonth(date2);
  lastdate := EncodeDate(StrToInt(LeftStr(cxComboBox2.Text,4)),StrToInt(RightStr(cxComboBox2.Text,2)),tglakhir);
  if Qjra.RecordCount > 0 then
  begin
    dm.isidatattd('jra',userlogin);

    replr.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\jra.fr3');

    dirlogo := ExtractFilePath(Application.ExeName)+'\logo\Kop Laporan.png';

    if FileExists(dirlogo) then
    begin
      TfrxPictureView(replr.FindObject('Picture1')).Picture.LoadFromFile(dirlogo);
      //TfrxMemoView(lapkm.FindObject('header1')).Left := 3;
      //TfrxMemoView(lapkm.FindObject('header2')).Left := 3;
     // TfrxMemoView(lapkm.FindObject('alamat1')).Left := 3;
     // TfrxMemoView(lapkm.FindObject('alamat2')).Left := 3;

    end
    else
    begin
      TfrxPictureView(replr.FindObject('Picture1')).Picture.Graphic := nil;
      TfrxMemoView(replr.FindObject('header1')).Left := 0;
      TfrxMemoView(replr.FindObject('header2')).Left := 0;
      TfrxMemoView(replr.FindObject('alamat1')).Left := 0;
      TfrxMemoView(replr.FindObject('alamat2')).Left := 0;
    end;

    TfrxMemoView(replr.FindObject('header1')).Memo.Text:= headerlap1;
    TfrxMemoView(replr.FindObject('header2')).Memo.Text:= headerlap2;
    TfrxMemoView(replr.FindObject('alamat1')).Memo.Text:= alamat1;
    TfrxMemoView(replr.FindObject('alamat2')).Memo.Text:= alamat2;

    TfrxMemoView(replr.FindObject('periode')).Memo.Text:= 'Periode '+cxComboBox1.Text;
    TfrxMemoView(replr.FindObject('footer2')).Memo.Text:= 'JRA '+cxComboBox1.Text;
    TfrxMemoView(replr.FindObject('tanggalbawah')).Memo.Text:= footerkota+', '+FormatDateTime('dd mmmm yyyy',lastdate);
    replr.ShowReport();
  end
  else
  begin
    MessageDlg('Tidak ada data ..!',mtWarning,[mbok],0);
  end;
end;

end.
