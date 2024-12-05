unit ujrna;

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
  Tfojrna = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    Qjrna: TMyQuery;
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
    dbjrna: TfrxDBDataset;
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
  fojrna: Tfojrna;

implementation

{$R *.dfm}

uses udm,dateutils,strutils;

procedure Tfojrna.cxButton1Click(Sender: TObject);
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
    kondisi4;
  end;
end;

procedure Tfojrna.cxButton2Click(Sender: TObject);
begin
  viewjurnal;
end;

procedure Tfojrna.cxButton3Click(Sender: TObject);
begin
  exportexcel;
end;

procedure Tfojrna.cxComboBox1PropertiesChange(Sender: TObject);
begin
  cxComboBox2.ItemIndex := cxComboBox1.ItemIndex;
  with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    qcek.SQL.Add('select id from jrna where periode=:periode limit 1');
    Qcek.ParamByName('periode').AsString := cxComboBox2.Text;
    Qcek.Open;
    if Qcek.RecordCount > 0 then
      kondisi2
    else
      kondisi1;
  end;
end;

procedure Tfojrna.exportexcel;
begin

end;

procedure Tfojrna.FormCreate(Sender: TObject);
begin
  Self.Width := cxButton3.Left+cxButton3.Width+50;
  Self.Height := cxButton3.Top+cxButton3.Height+50;
end;

procedure Tfojrna.FormShow(Sender: TObject);
begin
  dm.isicombo2('periodeposting',cxComboBox1,cxComboBox2);
  dm.isicombo2('periodeposting',cxComboBox1,cxComboBox2);
  cxProgressBar1.Position := 0;
  kondisiawal;
end;

procedure Tfojrna.kondisi1;
begin
  RzLabel2.Caption := 'Belum Di Proses';
  cxButton2.Enabled := false;
  cxButton3.Enabled := false;
  cxButton1.Enabled := true;
  cxButton1.Caption := 'Proses';
end;

procedure Tfojrna.kondisi2;
begin
  RzLabel2.Caption := 'Sudah Di Proses';
  cxButton2.Enabled := true;
  cxButton3.Enabled := true;
  cxButton1.Enabled := true;
  cxButton1.Caption := 'Proses Ulang';
end;

procedure Tfojrna.kondisi3;
begin
  cxProgressBar1.Visible := true;
  cxProgressBar1.BringToFront;
end;

procedure Tfojrna.kondisi4;
begin
  cxProgressBar1.Visible := false;
  cxProgressBar1.SendToBack;
end;

procedure Tfojrna.kondisiawal;
begin
  kondisi1;
  kondisi4;
end;

procedure Tfojrna.prosesjurnal;
var
  periode : string;
  i : integer;
  date2 : tdate;
  tglakhir : byte;
begin
  periode :=  cxComboBox2.Text;
  date2 := EncodeDate(StrToInt(LeftStr(cxComboBox2.Text,4)),StrToInt(RightStr(cxComboBox2.Text,2)),1);
  tglakhir := 1;
  lastdate := EncodeDate(StrToInt(LeftStr(cxComboBox2.Text,4)),StrToInt(RightStr(cxComboBox2.Text,2)),tglakhir);
  with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('Call gen_jrna(:periode)');
    Qcek.ParamByName('periode').AsString := periode;
    Qcek.Open;
    if Qcek.RecordCount > 0 then
    begin
      Conn1.StartTransaction;

      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('delete from jrna where periode=:periode');
      Qex.ParamByName('periode').AsString := periode;
      Qex.Execute;


      cxProgressBar1.Position := 0;
      cxProgressBar1.Properties.Max := Qcek.RecordCount;
      for i := 1 to Qcek.RecordCount do
      begin
        //isi debet
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('INSERT INTO jrna (periode,kodegol,golongan,kodeunit,namaunit,kodeakun,namaakun,keterangan,totaldebet,urut,ket2,tanggal,namaurut)');
        Qex.SQL.Add('Value (:periode,:kodegol,:golongan,:kodeunit,:namaunit,:kodeakun,:namaakun,:keterangan,:totaldebet,:urut,:ket2,:tanggal,:namaurut)');
        Qex.ParamByName('periode').Value := periode;
        Qex.ParamByName('kodegol').Value := Qcek.FieldByName('kodegol').AsString;
        Qex.ParamByName('golongan').Value := Qcek.FieldByName('golongan').AsString;
        Qex.ParamByName('kodeunit').Value := Qcek.FieldByName('kodeunit').AsString;
        Qex.ParamByName('namaunit').Value := Qcek.FieldByName('namaunit').AsString;
        Qex.ParamByName('kodeakun').Value := Qcek.FieldByName('d_1').AsString;
        Qex.ParamByName('namaakun').Value := Qcek.FieldByName('dn_1').AsString;
        Qex.ParamByName('keterangan').Value := 'JRNA PERIODE : '+periode +' - '+Qcek.FieldByName('golongan').AsString;
        Qex.ParamByName('totaldebet').Value := Qcek.FieldByName('j_dn_1').AsCurrency;
        Qex.ParamByName('ket2').AsString := Qcek.FieldByName('d_1').AsString+' - '+Qcek.FieldByName('dn_1').AsString;
        Qex.ParamByName('urut').AsInteger := Qcek.FieldByName('group1').AsInteger;
        Qex.ParamByName('tanggal').AsDate := lastdate;
        Qex.ParamByName('namaurut').AsString := Qcek.FieldByName('namagroup1').AsString;
        Qex.Execute;

        //isi kredit byair
        if Qcek.FieldByName('k_1').AsString<>'0' then
        begin
          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('INSERT INTO jrna (periode,kodegol,golongan,kodeunit,namaunit,kodeakun,namaakun,keterangan,totalkredit,urut,ket2,tanggal,namaurut)');
          Qex.SQL.Add('Value (:periode,:kodegol,:golongan,:kodeunit,:namaunit,:kodeakun,:namaakun,:keterangan,:totalkredit,:urut,:ket2,:tanggal,:namaurut)');
          Qex.ParamByName('periode').Value := periode;
          Qex.ParamByName('kodegol').Value := Qcek.FieldByName('kodegol').AsString;
          Qex.ParamByName('golongan').Value := Qcek.FieldByName('golongan').AsString;
          Qex.ParamByName('kodeunit').Value := Qcek.FieldByName('kodeunit').AsString;
          Qex.ParamByName('namaunit').Value := Qcek.FieldByName('namaunit').AsString;
          Qex.ParamByName('kodeakun').Value := Qcek.FieldByName('k_1').AsString;
          Qex.ParamByName('namaakun').Value := Qcek.FieldByName('kn_1').AsString;
          Qex.ParamByName('keterangan').Value := 'JRNA PERIODE : '+periode +' - '+Qcek.FieldByName('golongan').AsString;
          Qex.ParamByName('totalkredit').Value := Qcek.FieldByName('j_kn_1').AsCurrency;
          Qex.ParamByName('ket2').AsString := '        '+Qcek.FieldByName('k_1').AsString+' - '+Qcek.FieldByName('kn_1').AsString;
          Qex.ParamByName('urut').AsInteger := Qcek.FieldByName('group1').AsInteger;
          Qex.ParamByName('namaurut').AsString := Qcek.FieldByName('namagroup1').AsString;
          Qex.ParamByName('tanggal').AsDate := lastdate;
          Qex.Execute;
        end;

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

procedure Tfojrna.RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
begin
  close;
end;

procedure Tfojrna.RzToolButton1Click(Sender: TObject);
begin
  if (trim(cxComboBox2.Text)='') or ((trim(cxComboBox1.Text)='')) then
  begin
    MessageDlg('Periode Harus diisi !',mtWarning,[mbok],0);
    cxComboBox1.SetFocus;
    Exit;
  end;
end;

procedure Tfojrna.viewjurnal;
var
  date2 : tdate;
  tglakhir : byte;
  dirlogo : string;
begin
  Qjrna.Close;
  Qjrna.SQL.Clear;
  Qjrna.SQL.Add(Qjrna.SQLRefresh.Text);
  Qjrna.ParamByName('periode').AsString := cxComboBox2.Text;
  Qjrna.Open;

  date2 := EncodeDate(StrToInt(LeftStr(cxComboBox2.Text,4)),StrToInt(RightStr(cxComboBox2.Text,2)),1);
  tglakhir := DaysInMonth(date2);
  lastdate := EncodeDate(StrToInt(LeftStr(cxComboBox2.Text,4)),StrToInt(RightStr(cxComboBox2.Text,2)),tglakhir);
  if Qjrna.RecordCount > 0 then
  begin
    dm.isidatattd('jrna',userlogin);

    replr.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\jrna.fr3');

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
    TfrxMemoView(replr.FindObject('footer2')).Memo.Text:= 'JRNA '+cxComboBox1.Text;
    TfrxMemoView(replr.FindObject('tanggalbawah')).Memo.Text:= footerkota+', '+FormatDateTime('dd mmmm yyyy',lastdate);
    replr.ShowReport();
  end
  else
  begin
    MessageDlg('Tidak ada data ..!',mtWarning,[mbok],0);
  end;
end;

end.
