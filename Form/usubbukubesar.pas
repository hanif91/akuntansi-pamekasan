unit usubbukubesar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxPC, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxMemo, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, RzButton, dxDockPanel, dxDockControl, Vcl.ExtCtrls,
  RzPanel, RzTabs, Vcl.Menus, DBAccess, MyAccess, MemDS, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, frxClass,
  frxDBSet, Vcl.StdCtrls, cxButtons, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxMaskEdit, cxCheckBox, cxLabel, usettgllap, System.Actions, Vcl.ActnList,
  frxDesgn, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxActivityIndicator,
  cxCurrencyEdit, dxSkinsDefaultPainters;

type
  Tfosubbukubesar = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1setorsimp: TRzPanel;
    RzPanel2: TRzPanel;
    dxDockSite1: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxLayoutDockSite3: TdxLayoutDockSite;
    dxDockPanel2: TdxDockPanel;
    RzPanel1: TRzPanel;
    RzToolButton1: TRzToolButton;
    dxDockPanel1: TdxDockPanel;
    RzPanel3: TRzPanel;
    cxLabel9: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    cxCheckBox1: TcxCheckBox;
    combsk22: TcxComboBox;
    combsk21: TcxComboBox;
    combsk12: TcxComboBox;
    combsk11: TcxComboBox;
    combs22: TcxComboBox;
    combs21: TcxComboBox;
    combs12: TcxComboBox;
    combs11: TcxComboBox;
    combkode22: TcxComboBox;
    combkode2: TcxComboBox;
    combkode12: TcxComboBox;
    combkode1: TcxComboBox;
    cxLabel11: TcxLabel;
    cxLabel10: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    cxDateEdit1: TcxDateEdit;
    cxComboBox2: TcxComboBox;
    cxButton1: TcxButton;
    combid6: TcxComboBox;
    combid5: TcxComboBox;
    combid4: TcxComboBox;
    combid3: TcxComboBox;
    combid2: TcxComboBox;
    combid1: TcxComboBox;
    SaveDialog1: TSaveDialog;
    dbb: TMyDataSource;
    Qbb: TMyQuery;
    repbukubesar: TfrxReport;
    db: TfrxDBDataset;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1idcoa: TcxGridDBColumn;
    cxGrid1DBTableView1idju: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1uraian: TcxGridDBColumn;
    cxGrid1DBTableView1kodeakun: TcxGridDBColumn;
    cxGrid1DBTableView1namaakun2: TcxGridDBColumn;
    cxGrid1DBTableView1noju: TcxGridDBColumn;
    cxGrid1DBTableView1debet: TcxGridDBColumn;
    cxGrid1DBTableView1kredit: TcxGridDBColumn;
    cxGrid1DBTableView1saldo: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    ActionList1: TActionList;
    F7: TAction;
    frxDesigner1: TfrxDesigner;
    cxLabel1: TcxLabel;
    Timer1: TTimer;
    dxActivityIndicator1: TdxActivityIndicator;
    RzToolButton2: TRzToolButton;
    cxCheckBox2: TcxCheckBox;
    CombKodeunit: TcxComboBox;
    Combnamaunit: TcxComboBox;
    cxGrid1DBTableView1kodeunit: TcxGridDBColumn;
    Qbbidcoa: TIntegerField;
    Qbbtanggal: TDateField;
    Qbbkodeakun: TStringField;
    Qbbnama2: TStringField;
    Qbbnamaakun: TStringField;
    Qbburaian: TStringField;
    Qbbref: TStringField;
    Qbbdebet: TFloatField;
    Qbbkredit: TFloatField;
    Qbbak2: TStringField;
    Qbbkodeakun1: TStringField;
    Qbbnamaakun1: TStringField;
    Qbbkodenamaakun: TStringField;
    Qbbsaldo: TFloatField;
    Qbbkodeunit: TStringField;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure combsk11PropertiesChange(Sender: TObject);
    procedure combs11PropertiesChange(Sender: TObject);
    procedure combsk21PropertiesChange(Sender: TObject);
    procedure combs21PropertiesChange(Sender: TObject);
    procedure combkode1PropertiesChange(Sender: TObject);
    procedure combkode2PropertiesChange(Sender: TObject);
    procedure combsk12PropertiesChange(Sender: TObject);
    procedure combs12PropertiesChange(Sender: TObject);
    procedure combsk22PropertiesChange(Sender: TObject);
    procedure combs22PropertiesChange(Sender: TObject);
    procedure combkode12PropertiesChange(Sender: TObject);
    procedure combkode22PropertiesChange(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure F7Execute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure cxCheckBox2Click(Sender: TObject);
    procedure CombKodeunitPropertiesChange(Sender: TObject);
    procedure CombnamaunitPropertiesChange(Sender: TObject);
  private
    flageditchange,flagclear : byte;
    tgllastchange1,tgllastchange2 : TDate;
    lastdate : TDate;
    mythread : TThread;
    tglawaltahun,tglsdbulanini : tdate;
    flag,flagreport : byte;
    kode1,kode2,_kodeunit : string;
    { Private declarations }
  public
    { Public declarations }
    procedure isikodetahap;
    procedure isikodetahap2(id : integer; combo1,combo2,combo3,combo4,combo5,combo6 : TcxComboBox);
    procedure isikodetahap3(id : integer; combo1,combo2,combo3 : TcxComboBox);
    procedure generatelr;
    procedure previewreport;
  end;

var
  fosubbukubesar: Tfosubbukubesar;

implementation
uses dateutils,strutils,cxGridExportLink;

{$R *.dfm}

procedure Tfosubbukubesar.combkode12PropertiesChange(Sender: TObject);
begin
  combkode22.ItemIndex := combkode12.ItemIndex;
  combid6.ItemIndex := combkode12.ItemIndex;
end;

procedure Tfosubbukubesar.combkode1PropertiesChange(Sender: TObject);
begin
  combkode2.ItemIndex := combkode1.ItemIndex;
  combid3.ItemIndex := combkode1.ItemIndex;
end;

procedure Tfosubbukubesar.combkode22PropertiesChange(Sender: TObject);
begin
  combkode12.ItemIndex := combkode22.ItemIndex;
  combid6.ItemIndex := combkode22.ItemIndex;
end;

procedure Tfosubbukubesar.combkode2PropertiesChange(Sender: TObject);
begin
  combkode1.ItemIndex := combkode2.ItemIndex;
  combid3.ItemIndex := combkode2.ItemIndex;
end;

procedure Tfosubbukubesar.CombKodeunitPropertiesChange(Sender: TObject);
begin
  Combnamaunit.ItemIndex := CombKodeunit.ItemIndex;
end;

procedure Tfosubbukubesar.CombnamaunitPropertiesChange(Sender: TObject);
begin
  CombKodeunit.ItemIndex := Combnamaunit.ItemIndex;
end;

procedure Tfosubbukubesar.combs11PropertiesChange(Sender: TObject);
begin
    combsk11.ItemIndex := combs11.ItemIndex;
    combid1.ItemIndex := combs11.ItemIndex;
  if flagclear=0 then
  begin
    try
      isikodetahap2(StrToInt(combid1.Text),combs21,combsk21,combid2,combkode1,combkode2,combid3);
    except
      on e:exception do
      begin
        MessageDlg('Terdapat Kesalahan..!'+e.Message,mtError,[mbok],0);
      end
    end;
  end;
end;

procedure Tfosubbukubesar.combs12PropertiesChange(Sender: TObject);
begin
  combsk12.ItemIndex := combs12.ItemIndex;
  combid4.ItemIndex := combs12.ItemIndex;
  if flagclear=0 then
  begin
  try
    isikodetahap2(StrToInt(combid4.Text),combs22,combsk22,combid5,combkode12,combkode22,combid6);
  except
    on e:exception do
    begin
      MessageDlg('Terdapat Kesalahan..!'+e.Message,mtError,[mbok],0);
    end
  end;
  end;
end;

procedure Tfosubbukubesar.combs21PropertiesChange(Sender: TObject);
begin
    combsk21.ItemIndex := combs21.ItemIndex;
    combid2.ItemIndex := combs21.ItemIndex;
  if flagclear=0 then
  begin
    try
      isikodetahap3(StrToInt(combid2.Text),combkode2,combkode1,combid3);
    except
      on e:exception do
      begin
        MessageDlg('Terdapat Kesalahan..!'+e.Message,mtError,[mbok],0);
      end
    end;
  end;
end;

procedure Tfosubbukubesar.combs22PropertiesChange(Sender: TObject);
begin
  combsk22.ItemIndex := combs22.ItemIndex;
  combid5.ItemIndex := combs22.ItemIndex;
  if flagclear=0 then
  begin
  try
    isikodetahap3(StrToInt(combid5.Text),combkode22,combkode12,combid6);
  except
    on e:exception do
    begin
      MessageDlg('Terdapat Kesalahan..!'+e.Message,mtError,[mbok],0);
    end
  end;
  end;
end;

procedure Tfosubbukubesar.combsk11PropertiesChange(Sender: TObject);
begin
  combs11.ItemIndex := combsk11.ItemIndex;
  combid1.ItemIndex := combsk11.ItemIndex;
  if flagclear=0 then
  begin
  try
    isikodetahap2(StrToInt(combid1.Text),combs21,combsk21,combid2,combkode1,combkode2,combid3);
  except
    on e:exception do
    begin
      MessageDlg('Terdapat Kesalahan..!'+e.Message,mtInformation,[mbok],0);
    end;
  end;
  end;
end;

procedure Tfosubbukubesar.combsk12PropertiesChange(Sender: TObject);
begin
  combs12.ItemIndex := combsk12.ItemIndex;
  combid4.ItemIndex := combsk12.ItemIndex;
  if flagclear=0 then
  begin
  try
    isikodetahap2(StrToInt(combid4.Text),combs22,combsk22,combid5,combkode12,combkode22,combid6);
  except
    on e:exception do
    begin
      MessageDlg('Terdapat Kesalahan..!'+e.Message,mtError,[mbok],0);
    end;
  end;
  end;
end;

procedure Tfosubbukubesar.combsk21PropertiesChange(Sender: TObject);
begin
    combs21.ItemIndex := combsk21.ItemIndex;
    combid2.ItemIndex := combsk21.ItemIndex;
  if flagclear=0 then
  begin
    try
      isikodetahap3(StrToInt(combid2.Text),combkode2,combkode1,combid3);
    except
      on e:exception do
      begin
        MessageDlg('Terdapat Kesalahan..!'+e.Message,mtError,[mbok],0);
      end
    end;
  end;
end;

procedure Tfosubbukubesar.combsk22PropertiesChange(Sender: TObject);
begin
  combs22.ItemIndex := combsk22.ItemIndex;
  combid5.ItemIndex := combsk22.ItemIndex;
  if flagclear=0 then
  begin
  try
    isikodetahap3(StrToInt(combid5.Text),combkode22,combkode12,combid6);
  except
    on e:exception do
    begin
      MessageDlg('Terdapat Kesalahan..!'+e.Message,mtError,[mbok],0);
    end
  end;
  end;
end;

procedure Tfosubbukubesar.cxButton1Click(Sender: TObject);
var
  date2 : tdate;
  tglakhir : byte;
  dirlogo : string;
begin
  if YearOf(cxDateEdit1.Date)<>YearOf(cxDateEdit2.Date) then
  begin
    MessageDlg('Tahun Periode Tanggal Tidak Boleh Berbeda..!',mtWarning,[mbok],0);
    cxDateEdit2.SetFocus;
    Exit;
  end;

  if combkode1.Text='' then
  begin
    MessageDlg('Kode akun belum dipilih..!',mtInformation,[mbok],0);
    Exit;
  end;
  if cxCheckBox1.Checked then
  begin
    if combkode12.Text='' then
    begin
      MessageDlg('Kode akun ke 2 belum dipilih..!',mtInformation,[mbok],0);
      Exit;
    end;
  end;

  if cxCheckBox1.Checked then
  begin
    kode1 := combkode1.Text;
    kode2 := combkode12.Text;
  end
  else
  begin
    kode1 := combkode1.Text;
    kode2 := combkode1.Text;
  end;

  tglsdbulanini := cxDateEdit2.Date;
  tglawaltahun := cxDateEdit1.Date;
  if cxCheckBox2.Checked then
  _kodeunit := CombKodeunit.Text
  else
  _kodeunit := '00';
  flagreport := 0;
  flag := 0;
  Timer1.Enabled := true;


  mythread := TThread.CreateAnonymousThread(generatelr);
  mythread.FreeOnTerminate := true;
  mythread.Start;
end;

procedure Tfosubbukubesar.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked then
  begin
    combs12.Enabled := True;
    combs22.Enabled := True;
    combsk12.Enabled := true;
    combsk22.Enabled := True;
    combkode12.Enabled := true;
    combkode22.Enabled := true;
  end
  else
  begin
    combs12.Enabled := false;
    combs22.Enabled := false;
    combsk12.Enabled := false;
    combsk22.Enabled := false;
    combkode12.Enabled := False;
    combkode22.Enabled := false;
  end;
end;

procedure Tfosubbukubesar.cxCheckBox2Click(Sender: TObject);
begin
  if cxCheckBox2.Checked then
  begin
    CombKodeunit.Enabled := True;
    Combnamaunit.Enabled := True;
    if CombKodeunit.ItemIndex = -1 then
    begin
      CombKodeunit.ItemIndex := 0;
      Combnamaunit.ItemIndex := 0;
    end;
  end
  else
  begin
    CombKodeunit.Enabled := false;
    Combnamaunit.Enabled := false;
  end;
end;

procedure Tfosubbukubesar.cxComboBox1PropertiesChange(Sender: TObject);
var
  date2 : tdate;
  tglakhir : byte;
begin

end;

procedure Tfosubbukubesar.F7Execute(Sender: TObject);
begin
  repbukubesar.LoadFromFile(ExtractFilePath(Application.ExeName)+'report\lapsbb.fr3');
  frxDesigner1.OpenDir :=ExtractFilePath(Application.ExeName)+'report\';
  repbukubesar.DesignReport;
end;

procedure Tfosubbukubesar.FormCreate(Sender: TObject);
begin
  flageditchange := 1;
  cxDateEdit1.Date := Date;
  cxDateEdit2.Date := Date;
  flageditchange := 0;
end;

procedure Tfosubbukubesar.FormShow(Sender: TObject);
begin
  flagclear := 1;
  cxDateEdit1.Date := date;
  cxDateEdit2.Date := date;
  flagclear := 0;
  isikodetahap;
  dm.isicombo2('unitkerja',CombKodeunit,Combnamaunit);
end;

procedure Tfosubbukubesar.generatelr;
begin
try

    TThread.Synchronize (TThread.CurrentThread,
    procedure ()
    begin
      cxButton1.Enabled := false;
      cxButton1.Visible := false;
      dxActivityIndicator1.Active := true;
    end);

    try
      Qbb.DisableControls;
      with dm do
      begin
    {    Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('CALL `insertalljurnaltahun_bb`(:namauser,:tgl1,:tgl2)');
        Qex.ParamByName('namauser').AsString := userlogin;
        Qex.ParamByName('tgl1').AsDate := tglawaltahun;
        Qex.ParamByName('tgl2').AsDate := tglsdbulanini;
        Qex.Execute;        }


        Qbb.Close;
        Qbb.SQL.Clear;
        Qbb.SQL.Add('CALL `view_subbukubesar`(:tgl1,:tgl2,:kode1,:kode2,:kodeunit)');
        Qbb.ParamByName('kode1').AsString := kode1;
        Qbb.ParamByName('kode2').AsString := kode2;
       // Qbb.ParamByName('namauser').AsString := userlogin;
        Qbb.ParamByName('tgl1').AsDate := tglawaltahun;
        Qbb.ParamByName('tgl2').AsDate := tglsdbulanini;
        Qbb.ParamByName('kodeunit').AsString := _kodeunit;
        Qbb.Open;


      end;
    except
      on e:exception do
      begin
        MessageDlg(e.Message,mtError,[mbok],0);
        flag:=1;
      end;
    end;

    TThread.Synchronize (TThread.CurrentThread,
    procedure ()
    begin
      flag:=1;
    end);
  except
    flag:=1;
  end;
end;

procedure Tfosubbukubesar.isikodetahap;
begin
  dm.Qcek.Close;
  dm.Qcek.SQL.Clear;
  dm.Qcek.SQL.Add('Select * from tipe2 order by kodeakun');
  dm.Qcek.open;
  flagclear := 1;
  combs11.Properties.Items.Clear;
  combsk11.Properties.Items.Clear;
  combsk21.Properties.Items.Clear;
  combs21.Properties.Items.Clear;
  combkode1.Properties.Items.Clear;
  combkode2.Properties.Items.Clear;
  combs21.Properties.Items.Clear;
  combsk21.Properties.Items.Clear;
  combsk22.Properties.Items.Clear;
  combs22.Properties.Items.Clear;
  combkode12.Properties.Items.Clear;
  combkode22.Properties.Items.Clear;
  combid1.Properties.Items.Clear;
  combid2.Properties.Items.Clear;
  combid3.Properties.Items.Clear;
  combid4.Properties.Items.Clear;
  combid5.Properties.Items.Clear;
  combid6.Properties.Items.Clear;
  flagclear := 0;
  while not dm.Qcek.Eof do
  begin
    combs11.Properties.Items.Add(dm.Qcek['tipe2']);
    combsk11.Properties.Items.Add(dm.Qcek['kodeakun']);
    combs12.Properties.Items.Add(dm.Qcek['tipe2']);
    combsk12.Properties.Items.Add(dm.Qcek['kodeakun']);
    combid1.Properties.items.Add(dm.Qcek['idtipe2']);
    combid4.Properties.Items.Add(dm.Qcek['idtipe2']);
    dm.Qcek.Next;
  end;
end;

procedure Tfosubbukubesar.isikodetahap2(id: integer; combo1, combo2, combo3,
  combo4, combo5, combo6: TcxComboBox);
begin
  dm.Qcek.Close;
  dm.Qcek.SQL.Clear;
  dm.Qcek.SQL.Add('Select * from tipe3 where idtipe2=:id order by kodeakun');
  dm.Qcek.ParamByName('id').AsInteger := id;
  dm.Qcek.open;
  flagclear := 1;
  combo1.Properties.Items.Clear;
  combo2.Properties.Items.Clear;
  combo3.Properties.Items.Clear;
  combo4.Properties.Items.Clear;
  combo5.Properties.Items.Clear;
  combo6.Properties.Items.Clear;
  flagclear := 0;
  while not dm.Qcek.Eof do
  begin
    combo1.Properties.Items.Add(dm.Qcek['tipe3']);
    combo2.Properties.Items.Add(dm.Qcek['kodeakun']);
    combo3.Properties.Items.Add(dm.Qcek['idtipe3']);
    dm.Qcek.Next;
  end;
end;

procedure Tfosubbukubesar.isikodetahap3(id: integer; combo1, combo2,
  combo3: TcxComboBox);
begin
  dm.Qcek.Close;
  dm.Qcek.SQL.Clear;
  dm.Qcek.SQL.Add('Select * from coa where idtipe3=:id order by kodeakun');
  dm.Qcek.ParamByName('id').AsInteger := id;
  dm.Qcek.open;
  flagclear := 1;
  combo1.Properties.Items.Clear;
  combo2.Properties.Items.Clear;
  combo3.Properties.Items.Clear;
  flagclear := 0;
  while not dm.Qcek.Eof do
  begin
    combo1.Properties.Items.Add(dm.Qcek['namaakun']);
    combo2.Properties.Items.Add(dm.Qcek['kodeakun']);
    combo3.Properties.Items.Add(dm.Qcek['idcoa']);
    dm.Qcek.Next;
  end;
end;

procedure Tfosubbukubesar.previewreport;
begin
  Qbb.EnableControls;
{  if cxCheckBox2.Checked then
  begin
    Qbb.Close;
    Qbb.SQL.Clear;
    Qbb.SQL.Add(Qbb.SQLLock.Text);
    Qbb.ParamByName('kode1').AsString := kode1;
    Qbb.ParamByName('kode2').AsString := kode2;
    Qbb.ParamByName('namauser').AsString := userlogin;
    Qbb.ParamByName('kodeunit').AsString := CombKodeunit.Text;
    Qbb.Open;
  end
  else
  begin
    Qbb.Close;
    Qbb.SQL.Clear;
    Qbb.SQL.Add(Qbb.SQLRefresh.Text);
    Qbb.ParamByName('kode1').AsString := kode1;
    Qbb.ParamByName('kode2').AsString := kode2;
    Qbb.ParamByName('namauser').AsString := userlogin;
    Qbb.Open;
  end;    }
end;

procedure Tfosubbukubesar.RzToolButton1Click(Sender: TObject);
var
  dirlogo,filter : string;
begin
  if Qbb.RecordCount > 0 then
  begin

    if fosettgllap.ShowModal=mrok then
    begin
      dm.isidatattd('sbb',userlogin);
      repbukubesar.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\lapsbb.fr3');


      dirlogo := ExtractFilePath(Application.ExeName)+'\logo\Kop Laporan.png';
      if FileExists(dirlogo) then
      begin
        TfrxPictureView(repbukubesar.FindObject('Picture1')).Picture.LoadFromFile(dirlogo);
        //TfrxMemoView(lapkm.FindObject('header1')).Left := 3;
        //TfrxMemoView(lapkm.FindObject('header2')).Left := 3;
       // TfrxMemoView(lapkm.FindObject('alamat1')).Left := 3;
       // TfrxMemoView(lapkm.FindObject('alamat2')).Left := 3;

      end
      else
      begin
        TfrxPictureView(repbukubesar.FindObject('Picture1')).Picture.Graphic := nil;
        TfrxMemoView(repbukubesar.FindObject('header1')).Left := 0;
        TfrxMemoView(repbukubesar.FindObject('header2')).Left := 0;
        TfrxMemoView(repbukubesar.FindObject('alamat1')).Left := 0;
        TfrxMemoView(repbukubesar.FindObject('alamat2')).Left := 0;
      end;
      TfrxMemoView(repbukubesar.FindObject('header1')).Memo.Text:= headerlap1;
      TfrxMemoView(repbukubesar.FindObject('header2')).Memo.Text:= headerlap2;
      TfrxMemoView(repbukubesar.FindObject('alamat1')).Memo.Text:= alamat1;
      TfrxMemoView(repbukubesar.FindObject('alamat2')).Memo.Text:= alamat2;

      TfrxMemoView(repbukubesar.FindObject('periode')).Memo.Text:= '';
      if filter<>'' then
      begin
        filter := 'Filter Data : '+filter;
      end;
      TfrxMemoView(repbukubesar.FindObject('footer2')).Memo.Text:= filter;
      TfrxMemoView(repbukubesar.FindObject('tanggalbawah')).Memo.Text:= footerkota+', '+FormatDateTime('dd mmmm yyyy',fosettgllap.cxDateEdit1.Date);
      repbukubesar.ShowReport(true);
    end;
  end
  else
  begin
    MessageDlg('Tidak Ada Yang Ingin Ditampilkan..!',mtWarning,[mbok],0);
  end;
end;

procedure Tfosubbukubesar.RzToolButton2Click(Sender: TObject);
begin
  if Qbb.RecordCount > 0 then
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

procedure Tfosubbukubesar.Timer1Timer(Sender: TObject);
begin
 if flag=1 then
  begin
    Timer1.Enabled := false;
    cxButton1.Enabled := true;
    cxButton1.Visible := true;
    dxActivityIndicator1.Active := false;
    dxActivityIndicator1.Active := false;
    flag:=0;
    if flagreport=0 then
      previewreport;
  end;

end;

end.
