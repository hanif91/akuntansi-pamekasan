unit ulapneraca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  cxControls, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  DBAccess, MyAccess, frxClass, frxDBSet, MemDS, cxDropDownEdit, cxLabel,
  cxTextEdit, cxMaskEdit, cxCalendar, Vcl.StdCtrls, cxButtons, RzTabs,
  Vcl.ExtCtrls, RzPanel, cxProgressBar, frxDesgn, System.Actions, Vcl.ActnList,
  dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxActivityIndicator, dxSkinsDefaultPainters, scDevExStyleAdapter;

type
  Tfolapneraca = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxDateEdit1: TcxDateEdit;
    cxLabel3: TcxLabel;
    cxLabel1: TcxLabel;
    cxComboBox3: TcxComboBox;
    cxComboBox1: TcxComboBox;
    cxLabel2: TcxLabel;
    Qmaster: TMyQuery;
    Qneraca: TMyQuery;
    lapneraca: TfrxReport;
    lapneraca2: TfrxReport;
    dbner2: TfrxDBDataset;
    dbner: TfrxDBDataset;
    SaveDialog1: TSaveDialog;
    dneraca: TMyDataSource;
    Qneraca2: TMyQuery;
    dneraca2: TMyDataSource;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxComboBox2: TcxComboBox;
    ActionList1: TActionList;
    F7: TAction;
    frxDesigner1: TfrxDesigner;
    Qneraca2idx: TIntegerField;
    Qneraca2namasub1: TStringField;
    Qneraca2namasub2: TStringField;
    Qneraca2namasub3: TStringField;
    Qneraca2namasub4: TStringField;
    Qneraca2sub1: TStringField;
    Qneraca2sub2: TStringField;
    Qneraca2sub3: TStringField;
    Qneraca2sub4: TStringField;
    Qneraca2kode: TStringField;
    Qneraca2nama: TStringField;
    Qneraca2blnini: TFloatField;
    Qneraca2blnlalu: TFloatField;
    Qneraca2jumlah: TFloatField;
    Qneraca2persentase: TFloatField;
    Qneraca2nmuser: TStringField;
    Qneracaidx: TIntegerField;
    Qneracanamasub1: TStringField;
    Qneracanamasub2: TStringField;
    Qneracanamasub3: TStringField;
    Qneracanamasub4: TStringField;
    Qneracasub1: TStringField;
    Qneracasub2: TStringField;
    Qneracasub3: TStringField;
    Qneracasub4: TStringField;
    Qneracakode: TStringField;
    Qneracanama: TStringField;
    Qneracablnini: TFloatField;
    Qneracablnlalu: TFloatField;
    Qneracajumlah: TFloatField;
    Qneracapersentase: TFloatField;
    Qneracanmuser: TStringField;
    Qnrcrekap: TMyQuery;
    frxDBDataset1: TfrxDBDataset;
    Qnrcrekapidx: TIntegerField;
    Qnrcrekapnama: TStringField;
    Qnrcrekapblnini: TFloatField;
    Qnrcrekapblnlalu: TFloatField;
    Qnrcrekapid: TIntegerField;
    Qnrcrekapnmuser: TStringField;
    Qnrcrekapnama2: TStringField;
    Qnrcrekapblnini2: TFloatField;
    Qnrcrekapblnlalu2: TFloatField;
    Qnrcrekapno: TIntegerField;
    Qnrcrekapno2: TIntegerField;
    Qexpo: TMyQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField11: TStringField;
    Timer1: TTimer;
    dxActivityIndicator1: TdxActivityIndicator;
    Qnrcrekapflagbold: TIntegerField;
    Qnrcrekapflaggaris: TIntegerField;
    Qnrcrekapflagbold2: TIntegerField;
    Qnrcrekapflaggaris2: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure F7Execute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cxComboBox1PropertiesCloseUp(Sender: TObject);
  private
    lastdate : TDate;
    mythread : TThread;
    tglawaltahun,tglsdbulanini,tglsdbulanlalu : tdate;
    periode : string;
     flag,flagreport : byte;
    { Private declarations }
  public
    { Public declarations }
    procedure generatenerc;
    procedure generatelap;
    procedure exportnrc;
    procedure getakhirbulan(_periode : string);
  end;

var
  folapneraca: Tfolapneraca;

implementation
uses dateutils,strutils,cxGridExportLink;

{$R *.dfm}

procedure Tfolapneraca.getakhirbulan(_periode: string);
var
  jmlbln : integer;
begin
  if Trim(_periode) <> '' then
  begin
    jmlbln := DaysInAMonth(StrToInt(LeftStr(_periode,4)),StrToInt(RightStr(_periode,2)));
    cxDateEdit1.Date := EncodeDate(StrToInt(LeftStr(_periode,4)),StrToInt(RightStr(_periode,2)),jmlbln);
  end;
end;

procedure Tfolapneraca.cxButton1Click(Sender: TObject);
var
  date2,date3 : tdate;
  tglakhir,tglakhir3 : byte;
  dirlogo : string;
begin
  if cxComboBox1.ItemIndex=-1 then
  begin
    MessageDlg('Periode Laporan belum Dipilih..!',mtWarning,[mbok],0);
    cxComboBox1.SetFocus;
    exit;
  end;
  date2 := EncodeDate(StrToInt(LeftStr(cxComboBox2.Text,4)),StrToInt(RightStr(cxComboBox2.Text,2)),1);
  tglakhir := DaysInMonth(date2);
  lastdate := EncodeDate(StrToInt(LeftStr(cxComboBox2.Text,4)),StrToInt(RightStr(cxComboBox2.Text,2)),tglakhir);
  periode := cxComboBox2.Text;
  tglsdbulanini := lastdate;
  tglawaltahun := EncodeDate(StrToInt(LeftStr(cxComboBox2.Text,4)),1,1);

  date3 := IncMonth(date2,-1);
  tglakhir3 := DaysInMonth(date3);
  tglsdbulanlalu := EncodeDate(yearof(date3),MonthOf(date3),tglakhir3);

  flagreport := 1;
  flag := 0;
  Timer1.Enabled := true;
  mythread := TThread.CreateAnonymousThread(generatenerc);
  mythread.FreeOnTerminate := true;
  mythread.Start;
end;

procedure Tfolapneraca.cxButton2Click(Sender: TObject);
var
  date2,date3 : tdate;
  tglakhir,tglakhir3 : byte;
  dirlogo : string;
begin
  if cxComboBox1.ItemIndex=-1 then
  begin
    MessageDlg('Periode Laporan belum Dipilih..!',mtWarning,[mbok],0);
    cxComboBox1.SetFocus;
    exit;
  end;
  date2 := EncodeDate(StrToInt(LeftStr(cxComboBox2.Text,4)),StrToInt(RightStr(cxComboBox2.Text,2)),1);
  tglakhir := DaysInMonth(date2);
  lastdate := EncodeDate(StrToInt(LeftStr(cxComboBox2.Text,4)),StrToInt(RightStr(cxComboBox2.Text,2)),tglakhir);
  periode := cxComboBox2.Text;
  tglsdbulanini := lastdate;

  date3 := IncMonth(date2,-1);
  tglakhir3 := DaysInMonth(date3);
  tglsdbulanlalu := EncodeDate(yearof(date3),MonthOf(date3),tglakhir3);



  tglawaltahun := EncodeDate(StrToInt(LeftStr(cxComboBox2.Text,4)),1,1);
  flagreport := 0;
  flag := 0;
  Timer1.Enabled := true;
  mythread := TThread.CreateAnonymousThread(generatenerc);
  mythread.FreeOnTerminate := true;
  mythread.Start;
end;

procedure Tfolapneraca.cxComboBox1PropertiesChange(Sender: TObject);
begin
  Qneraca.Close;
  Qneraca2.Close;
  Qnrcrekap.Close;
  Qexpo.Close;
  cxComboBox2.ItemIndex := cxComboBox1.ItemIndex;
end;

procedure Tfolapneraca.cxComboBox1PropertiesCloseUp(Sender: TObject);
begin
  getakhirbulan(cxComboBox2.Text);
end;

procedure Tfolapneraca.exportnrc;
begin
  if Qexpo.RecordCount > 0 then
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

procedure Tfolapneraca.F7Execute(Sender: TObject);
begin
  if cxComboBox3.ItemIndex=0 then
  begin
    lapneraca.LoadFromFile(ExtractFilePath(Application.ExeName)+'report\nrc1.fr3');
    frxDesigner1.OpenDir :=ExtractFilePath(Application.ExeName)+'report\';
    lapneraca.DesignReport;
  end
  else if cxComboBox1.ItemIndex=1 then
  begin
    lapneraca2.LoadFromFile(ExtractFilePath(Application.ExeName)+'report\nrc2.fr3');
    frxDesigner1.OpenDir :=ExtractFilePath(Application.ExeName)+'report\';
    lapneraca2.DesignReport;
  end;
end;

procedure Tfolapneraca.FormCreate(Sender: TObject);
begin
  Self.Width := cxComboBox1.Left+cxComboBox1.Width+50;
  Self.Height := cxButton2.Top+cxButton2.Height+50;
  cxDateEdit1.date := date;
end;

procedure Tfolapneraca.FormShow(Sender: TObject);
begin
  dm.isicombo2('periodeposting',cxComboBox1,cxComboBox2);
  Qneraca.Close;
  Qneraca2.Close;
  Qnrcrekap.Close;
  Qexpo.Close;
end;

procedure Tfolapneraca.generatelap;
var
  date2 : tdate;
  tglakhir : byte;
  dirlogo : string;
begin
 if cxComboBox1.Text<>'' then
  begin
    date2 := EncodeDate(StrToInt(LeftStr(cxComboBox2.Text,4)),StrToInt(RightStr(cxComboBox2.Text,2)),1);
    tglakhir := DaysInMonth(date2);
    lastdate := EncodeDate(StrToInt(LeftStr(cxComboBox2.Text,4)),StrToInt(RightStr(cxComboBox2.Text,2)),tglakhir);

    if cxComboBox3.ItemIndex=0 then
    begin
      try
        with dm do
        begin
          if Qneraca.RecordCount > 0 then
          begin
            dm.isidatattd('nrc1',userlogin);
            lapneraca.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\nrc1.fr3');

            dirlogo := ExtractFilePath(Application.ExeName)+'\logo\Kop Laporan.png';

            if FileExists(dirlogo) then
            begin
              TfrxPictureView(lapneraca.FindObject('Picture1')).Picture.LoadFromFile(dirlogo);
              //TfrxMemoView(lapkm.FindObject('header1')).Left := 3;
              //TfrxMemoView(lapkm.FindObject('header2')).Left := 3;
             // TfrxMemoView(lapkm.FindObject('alamat1')).Left := 3;
             // TfrxMemoView(lapkm.FindObject('alamat2')).Left := 3;

            end
            else
            begin
              TfrxPictureView(lapneraca.FindObject('Picture1')).Picture.Graphic := nil;
              TfrxMemoView(lapneraca.FindObject('header1')).Left := 0;
              TfrxMemoView(lapneraca.FindObject('header2')).Left := 0;
              TfrxMemoView(lapneraca.FindObject('alamat1')).Left := 0;
              TfrxMemoView(lapneraca.FindObject('alamat2')).Left := 0;
            end;
            TfrxMemoView(lapneraca.FindObject('header1')).Memo.Text:= headerlap1;
            TfrxMemoView(lapneraca.FindObject('header2')).Memo.Text:= headerlap2;
            TfrxMemoView(lapneraca.FindObject('alamat1')).Memo.Text:= alamat1;
            TfrxMemoView(lapneraca.FindObject('alamat2')).Memo.Text:= alamat2;

            TfrxMemoView(lapneraca.FindObject('periode')).Memo.Text:= 'Per '+FormatDateTime('dd mmmm yyyy',tglsdbulanini);
            TfrxMemoView(lapneraca.FindObject('footer2')).Memo.Text:= 'Laporan Neraca '+FormatDateTime('dd mmmm yyyy',tglsdbulanini);
            TfrxMemoView(lapneraca.FindObject('tanggalbawah')).Memo.Text:= footerkota+', '+FormatDateTime('dd mmmm yyyy',cxDateEdit1.Date);

           // TfrxMemoView(replr.FindObject('foottd')).Memo.Text:= dm.Qatur.fieldbyname('footerlap').AsString+', '+FormatDateTime('dd mmmm yyyy',lastdate);
            lapneraca.ShowReport();
          end
          else
          begin
            MessageDlg('Tidak ada data ..!',mtWarning,[mbok],0);
          end;
        end;
      except
        on e:exception do
        begin
          MessageDlg('Terdapatt Kesalahan..!!'+#13+e.Message,mtError,[mbok],0);

        end;
      end;
    end
    else
    begin
      if Qnrcrekap.RecordCount > 0 then
      begin
        dm.isidatattd('nrc2',userlogin);

        lapneraca2.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\nrc2.fr3');

        dirlogo := ExtractFilePath(Application.ExeName)+'\logo\Kop Laporan.png';

        if FileExists(dirlogo) then
        begin
          TfrxPictureView(lapneraca2.FindObject('Picture1')).Picture.LoadFromFile(dirlogo);
          //TfrxMemoView(lapkm.FindObject('header1')).Left := 3;
          //TfrxMemoView(lapkm.FindObject('header2')).Left := 3;
         // TfrxMemoView(lapkm.FindObject('alamat1')).Left := 3;
         // TfrxMemoView(lapkm.FindObject('alamat2')).Left := 3;
        end
        else
        begin
          TfrxPictureView(lapneraca2.FindObject('Picture1')).Picture.Graphic := nil;
          TfrxMemoView(lapneraca2.FindObject('header1')).Left := 0;
          TfrxMemoView(lapneraca2.FindObject('header2')).Left := 0;
          TfrxMemoView(lapneraca2.FindObject('alamat1')).Left := 0;
          TfrxMemoView(lapneraca2.FindObject('alamat2')).Left := 0;
        end;

        TfrxMemoView(lapneraca2.FindObject('header1')).Memo.Text:= headerlap1;
        TfrxMemoView(lapneraca2.FindObject('header2')).Memo.Text:= headerlap2;
        TfrxMemoView(lapneraca2.FindObject('alamat1')).Memo.Text:= alamat1;
        TfrxMemoView(lapneraca2.FindObject('alamat2')).Memo.Text:= alamat2;

        TfrxMemoView(lapneraca2.FindObject('periode')).Memo.Text:= 'Per '+FormatDateTime('dd mmmm yyyy',tglsdbulanini);
        TfrxMemoView(lapneraca2.FindObject('footer2')).Memo.Text:= 'Laporan Neraca '+FormatDateTime('dd mmmm yyyy',tglsdbulanini);
        TfrxMemoView(lapneraca2.FindObject('tanggalbawah')).Memo.Text:= footerkota+', '+FormatDateTime('dd mmmm yyyy',cxDateEdit1.Date);
        lapneraca2.ShowReport();
      end
      else
      begin
        MessageDlg('Tidak ada data ..!',mtWarning,[mbok],0);
      end;
    end;
  end;
end;

procedure Tfolapneraca.generatenerc;
begin
  try
    TThread.Synchronize (TThread.CurrentThread,
    procedure ()
    begin
      cxButton1.Enabled := false;
      cxButton1.Visible := false;
      cxButton2.Enabled := false;
      cxButton2.Visible := false;
      dxActivityIndicator1.Active := true;
    end);

    try
      with dm do
      begin
    {    Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('CALL `insertalljurnaltahun`(:namauser,:thn)');
        Qex.ParamByName('thn').AsString := LeftStr(periode,4);
        Qex.ParamByName('namauser').AsString := userlogin;
        Qex.Execute;    }

        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('CALL `ex_nrc_detail`(:awaltahun,:tglbulanini,:tglbulanlalu,:namauser);');
        Qex.ParamByName('awaltahun').AsDate := tglawaltahun;
        Qex.ParamByName('tglbulanini').AsDate := tglsdbulanini;
        Qex.ParamByName('tglbulanlalu').AsDate := tglsdbulanlalu;
        Qex.ParamByName('namauser').AsString := userlogin;
        Qex.Execute;                                       /// klo update , ingat update juga di update saldoawal.

      end;
      Qneraca.Close;
      Qneraca.ParamByName('nmuser').AsString := userlogin;
      Qneraca.Open;
      Qneraca2.Close;
      Qneraca2.ParamByName('nmuser').AsString := userlogin;
      Qneraca2.Open;

      Qnrcrekap.Close;
      Qnrcrekap.ParamByName('nmuser').AsString := userlogin;
      Qnrcrekap.Open;

      Qexpo.Close;
      Qexpo.ParamByName('nmuser').AsString := userlogin;
      Qexpo.Open;
    except
      on e:exception do
      begin

        MessageDlg(e.Message+#13+'Harap Hubungi Operator..!',mtError,[mbok],0);
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



procedure Tfolapneraca.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  self.Close;
end;

procedure Tfolapneraca.Timer1Timer(Sender: TObject);
begin
 if flag=1 then
  begin
    Timer1.Enabled := false;
    cxButton1.Enabled := true;
    cxButton1.Visible := true;
    dxActivityIndicator1.Active := false;
    cxButton2.Enabled := true;
    cxButton2.Visible := true;
    dxActivityIndicator1.Active := false;
    flag:=0;
    if flagreport=0 then
      generatelap
    else
      exportnrc;
  end;

end;

end.
