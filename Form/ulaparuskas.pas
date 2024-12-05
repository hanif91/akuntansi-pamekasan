unit ulaparuskas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  cxControls, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxDropDownEdit, cxLabel, cxTextEdit, cxMaskEdit, cxCalendar, Vcl.StdCtrls,
  cxButtons, RzTabs, Vcl.ExtCtrls, RzPanel, udm, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, DBAccess, MyAccess, frxClass, MemDS,
  frxDBSet, frxDesgn, System.Actions, Vcl.ActnList,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  dxSkinsDefaultPainters, dxActivityIndicator, scDevExStyleAdapter;

type
  Tfolaparuskas = class(TForm)
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
    cxComboBox2: TcxComboBox;
    dbaruskas2: TfrxDBDataset;
    dbaruskas1: TfrxDBDataset;
    Qlap2: TMyQuery;
    reparuskas: TfrxReport;
    SaveDialog1: TSaveDialog;
    Qaruskas: TMyQuery;
    Daruskas: TMyDataSource;
    Qex: TMyQuery;
    Qcek: TMyQuery;
    Qmaster: TMyQuery;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1namatipe: TcxGridDBColumn;
    cxGrid1DBTableView1saldo: TcxGridDBColumn;
    cxGrid1DBTableView1gr: TcxGridDBColumn;
    cxGrid1DBTableView1modtipe: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1tipe3: TcxGridDBColumn;
    cxGrid1DBTableView1selisih: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    frxReport1: TfrxReport;
    ActionList1: TActionList;
    F7: TAction;
    frxDesigner1: TfrxDesigner;
    dxActivityIndicator1: TdxActivityIndicator;
    Timer1: TTimer;
    Qlaruskas: TMyQuery;
    Qlaruskasawal: TMyQuery;
    dblaruskas: TfrxDBDataset;
    dblaruskasawal: TfrxDBDataset;
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
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
    procedure generate;
    procedure generatelap;
    procedure exportlap;
    procedure getakhirbulan(_periode : string);
  end;

var
  folaparuskas: Tfolaparuskas;

implementation
uses cxGridExportLink,dateutils,strutils;

{$R *.dfm}

procedure Tfolaparuskas.getakhirbulan(_periode: string);
var
  jmlbln : integer;
begin
  if Trim(_periode) <> '' then
  begin
  jmlbln := DaysInAMonth(StrToInt(LeftStr(_periode,4)),StrToInt(RightStr(_periode,2)));
  cxDateEdit1.Date := EncodeDate(StrToInt(LeftStr(_periode,4)),StrToInt(RightStr(_periode,2)),jmlbln);
  end;
end;

procedure Tfolaparuskas.cxButton1Click(Sender: TObject);
var
  i,j : integer;
  date2,date3 : tdate;
  tglakhir,tglakhir3  : byte;
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
  flagreport := 1;
  flag := 0;
  Timer1.Enabled := true;
  mythread := TThread.CreateAnonymousThread(generate);
  mythread.FreeOnTerminate := true;
  mythread.Start;

end;

procedure Tfolaparuskas.cxButton2Click(Sender: TObject);
var
  i,j : integer;
  date2,date3 : tdate;
  tglakhir,tglakhir3  : byte;
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
  mythread := TThread.CreateAnonymousThread(generate);
  mythread.FreeOnTerminate := true;
  mythread.Start;

end;

procedure Tfolaparuskas.cxComboBox1PropertiesChange(Sender: TObject);
begin
 Qaruskas.Close;
  cxComboBox2.ItemIndex:=cxComboBox1.ItemIndex;
end;

procedure Tfolaparuskas.cxComboBox1PropertiesCloseUp(Sender: TObject);
begin
  getakhirbulan(cxComboBox2.Text);
end;

procedure Tfolaparuskas.exportlap;
begin
  if cxComboBox3.ItemIndex=0 then
  begin
 {   if Qaruskas.RecordCount > 0 then
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
    end;  }
  end
  else
  begin
    if Qaruskas.RecordCount > 0 then
    begin
      SaveDialog1.Filter := 'XLS|*.xls';
      if SaveDialog1.Execute then
      begin
        try

          ExportGridToExcel(SaveDialog1.FileName,cxGrid2);
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
end;

procedure Tfolaparuskas.F7Execute(Sender: TObject);
begin
  if cxComboBox3.ItemIndex=0 then
  begin
    reparuskas.LoadFromFile(ExtractFilePath(Application.ExeName)+'report\pu1.fr3');
    frxDesigner1.OpenDir :=ExtractFilePath(Application.ExeName)+'report\';
    reparuskas.DesignReport;
  end
  else if cxComboBox1.ItemIndex=1 then
  begin
    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'report\pu2.fr3');
    frxDesigner1.OpenDir :=ExtractFilePath(Application.ExeName)+'report\';
    frxReport1.DesignReport;
  end;
end;

procedure Tfolaparuskas.FormCreate(Sender: TObject);
begin
  Self.Width := cxComboBox1.Left+cxComboBox1.Width+50;
  Self.Height := cxButton2.Top+cxButton2.Height+50;
  cxDateEdit1.date := date;
end;

procedure Tfolaparuskas.FormShow(Sender: TObject);
begin
  dm.isicombo2('periodeposting',cxComboBox1,cxComboBox2);
end;

procedure Tfolaparuskas.generate;
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
      {  Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('CALL `insertalljurnaltahun`(:namauser,:thn)');
        Qex.ParamByName('thn').AsString := LeftStr(periode,4);
        Qex.ParamByName('namauser').AsString := userlogin;
        Qex.Execute;
                       }
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('CALL `ex_ak_detail`(:awaltahun,:tglbulanini,:tglbulanlalu,:namauser);');
        Qex.ParamByName('awaltahun').AsDate := tglawaltahun;
        Qex.ParamByName('tglbulanini').AsDate := tglsdbulanini;
        Qex.ParamByName('tglbulanlalu').AsDate := tglsdbulanlalu;
        Qex.ParamByName('namauser').AsString := userlogin;
        Qex.Execute;

      end;
      Qaruskas.Close;
      Qaruskas.ParamByName('nmuser').AsString := userlogin;
      Qaruskas.Open;
  {    Qlap1.Close;
      Qlap1.ParamByName('nmuser').AsString := userlogin;
      Qlap1.Open;

      Qlap2.Close;
      Qlap2.ParamByName('nmuser').AsString := userlogin;
      Qlap2.Open;  }

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

procedure Tfolaparuskas.generatelap;
var
  date2 : tdate;
  tglakhir : byte;
  dirlogo : string;
  thn,periodet : string;
begin
 if cxComboBox1.Text<>'' then
  begin
    if cxComboBox3.ItemIndex=0 then
    begin
      try
        date2 := EncodeDate(StrToInt(LeftStr(cxComboBox2.Text,4)),StrToInt(RightStr(cxComboBox2.Text,2)),1);
        tglakhir := DaysInMonth(date2);
        lastdate := EncodeDate(StrToInt(LeftStr(cxComboBox2.Text,4)),StrToInt(RightStr(cxComboBox2.Text,2)),tglakhir);
        thn := LeftStr(cxComboBox2.Text,4);
        periodet := cxComboBox2.Text;

        Qlaruskas.Close;
        Qlaruskas.SQL.Clear;
        Qlaruskas.SQL.Add(Qlaruskas.SQLRefresh.Text);
      //  Qlaruskas.ParamByName('thn').AsString := thn;
        Qlaruskas.ParamByName('periode').AsString := periodet;
        Qlaruskas.Open;

        Qlaruskasawal.Close;
        Qlaruskasawal.SQL.Clear;
        Qlaruskasawal.SQL.Add(Qlaruskasawal.SQLRefresh.Text);
        //Qlaruskasawal.ParamByName('thn').AsString := thn;
        Qlaruskasawal.ParamByName('periode').AsString := periodet;
        Qlaruskasawal.Open;

        if Qaruskas.RecordCount > 0 then
        begin
          dm.isidatattd('pu1',userlogin);
          reparuskas.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\pu1.fr3');
          dirlogo := ExtractFilePath(Application.ExeName)+'\logo\Kop Laporan.png';
          if FileExists(dirlogo) then
          begin
            TfrxPictureView(reparuskas.FindObject('Picture1')).Picture.LoadFromFile(dirlogo);
            //TfrxMemoView(lapkm.FindObject('header1')).Left := 3;
            //TfrxMemoView(lapkm.FindObject('header2')).Left := 3;
           // TfrxMemoView(lapkm.FindObject('alamat1')).Left := 3;
           // TfrxMemoView(lapkm.FindObject('alamat2')).Left := 3;

          end
          else
          begin
            TfrxPictureView(reparuskas.FindObject('Picture1')).Picture.Graphic := nil;
            TfrxMemoView(reparuskas.FindObject('header1')).Left := 0;
            TfrxMemoView(reparuskas.FindObject('header2')).Left := 0;
            TfrxMemoView(reparuskas.FindObject('alamat1')).Left := 0;
            TfrxMemoView(reparuskas.FindObject('alamat2')).Left := 0;
          end;
          TfrxMemoView(reparuskas.FindObject('header1')).Memo.Text:= headerlap1;
          TfrxMemoView(reparuskas.FindObject('header2')).Memo.Text:= headerlap2;
          TfrxMemoView(reparuskas.FindObject('alamat1')).Memo.Text:= alamat1;
          TfrxMemoView(reparuskas.FindObject('alamat2')).Memo.Text:= alamat2;

          TfrxMemoView(reparuskas.FindObject('periode')).Memo.Text:= 'Per '+FormatDateTime('dd mmmm yyyy',lastdate);
         // TfrxMemoView(reparuskas.FindObject('footer2')).Memo.Text:= 'Laporan Arus Kas Metode Langsung '+FormatDateTime('dd mmmm yyyy',lastdate);
          TfrxMemoView(reparuskas.FindObject('tanggalbawah')).Memo.Text:= footerkota+', '+FormatDateTime('dd mmmm yyyy',cxDateEdit1.Date);


          reparuskas.ShowReport();
        end
        else
        begin
          MessageDlg('Tidak ada data ..!',mtWarning,[mbok],0);
        end;


      except
        on e:exception do
        begin
          MessageDlg('Terdapat Kesalahan..!'+#13+e.Message,mtError,[mbok],0);
        end;
      end;
    end
    else
    begin
      try
        date2 := EncodeDate(StrToInt(LeftStr(cxComboBox2.Text,4)),StrToInt(RightStr(cxComboBox2.Text,2)),1);
        tglakhir := DaysInMonth(date2);
        lastdate := EncodeDate(StrToInt(LeftStr(cxComboBox2.Text,4)),StrToInt(RightStr(cxComboBox2.Text,2)),tglakhir);

        if Qaruskas.RecordCount > 0 then
        begin
          dm.isidatattd('pu2',userlogin);
          frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\pu2.fr3');
          dirlogo := ExtractFilePath(Application.ExeName)+'\logo\Kop Laporan.png';
          if FileExists(dirlogo) then
          begin
            TfrxPictureView(frxReport1.FindObject('Picture1')).Picture.LoadFromFile(dirlogo);
            //TfrxMemoView(lapkm.FindObject('header1')).Left := 3;
            //TfrxMemoView(lapkm.FindObject('header2')).Left := 3;
           // TfrxMemoView(lapkm.FindObject('alamat1')).Left := 3;
           // TfrxMemoView(lapkm.FindObject('alamat2')).Left := 3;

          end
          else
          begin
            TfrxPictureView(frxReport1.FindObject('Picture1')).Picture.Graphic := nil;
            TfrxMemoView(frxReport1.FindObject('header1')).Left := 0;
            TfrxMemoView(frxReport1.FindObject('header2')).Left := 0;
            TfrxMemoView(frxReport1.FindObject('alamat1')).Left := 0;
            TfrxMemoView(frxReport1.FindObject('alamat2')).Left := 0;
          end;
          TfrxMemoView(frxReport1.FindObject('header1')).Memo.Text:= headerlap1;
          TfrxMemoView(frxReport1.FindObject('header2')).Memo.Text:= headerlap2;
          TfrxMemoView(frxReport1.FindObject('alamat1')).Memo.Text:= alamat1;
          TfrxMemoView(frxReport1.FindObject('alamat2')).Memo.Text:= alamat2;

          TfrxMemoView(frxReport1.FindObject('periode')).Memo.Text:= 'Per '+FormatDateTime('dd mmmm yyyy',lastdate);
         // TfrxMemoView(reparuskas.FindObject('footer2')).Memo.Text:= 'Laporan Arus Kas Metode Langsung '+FormatDateTime('dd mmmm yyyy',lastdate);
          TfrxMemoView(frxReport1.FindObject('tanggalbawah')).Memo.Text:= footerkota+', '+FormatDateTime('dd mmmm yyyy',cxDateEdit1.Date);


          frxReport1.ShowReport();
        end
        else
        begin
          MessageDlg('Tidak ada data ..!',mtWarning,[mbok],0);
        end;


      except
        on e:exception do
        begin
          MessageDlg('Terdapat Kesalahan..!'+#13+e.Message,mtError,[mbok],0);
        end;
      end;
    end;
  end
  else
  begin
    MessageDlg('Periode Laporan Belum Di Isi..!',mtWarning,[mbok],0);
  end;
end;

procedure Tfolaparuskas.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  self.Close;
end;

procedure Tfolaparuskas.Timer1Timer(Sender: TObject);
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
      exportlap;
  end;
end;

end.
