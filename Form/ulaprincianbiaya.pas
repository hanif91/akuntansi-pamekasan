unit ulaprincianbiaya;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, Vcl.Menus, Data.DB, DBAccess, MyAccess, MemDS, frxClass,
  frxDBSet, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLabel, RzTabs, Vcl.ExtCtrls, RzPanel, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxCalendar, System.Actions, Vcl.ActnList, frxDesgn,
  dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxProgressBar, dxActivityIndicator, dxSkinsDefaultPainters,
  scDevExStyleAdapter, RzLabel;

type
  Tfolaprincianbiaya = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    cxLabel1: TcxLabel;
    cxComboBox1: TcxComboBox;
    cxComboBox2: TcxComboBox;
    cxLabel2: TcxLabel;
    cxComboBox3: TcxComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    SaveDialog1: TSaveDialog;
    dblr: TfrxDBDataset;
    Qlrrekap: TMyQuery;
    dblrrekap: TfrxDBDataset;
    replrrekap: TfrxReport;
    Dlrrekap: TMyDataSource;
    Dlr: TMyDataSource;
    Qlr: TMyQuery;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column4: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column6: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column7: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column8: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column9: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column10: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxLabel3: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    replr: TfrxReport;
    ActionList1: TActionList;
    F7: TAction;
    frxDesigner1: TfrxDesigner;
    Qlridx: TIntegerField;
    Qlrnamasub2: TStringField;
    Qlrnamasub1: TStringField;
    Qlrkoderl: TStringField;
    Qlrnamarl: TStringField;
    Qlrsub0: TStringField;
    Qlrnamasub0: TStringField;
    Qlrtipesum: TStringField;
    Qlrkode: TStringField;
    Qlrsub2: TStringField;
    Qlrsub1: TStringField;
    Qlrblnrealisasi: TFloatField;
    Qlrblnanggaran: TFloatField;
    Qlrblnlebihkurang: TFloatField;
    Qlrblnpersentase: TFloatField;
    Qlrnama: TStringField;
    Qlrrealisasi: TFloatField;
    Qlranggaran: TFloatField;
    Qlrlebihkurang: TFloatField;
    Qlrpersentase: TFloatField;
    Qlrnmuser: TStringField;
    Qlrrealisasisum: TFloatField;
    Qlrblnrealisasisum: TFloatField;
    Qlrblnanggaransum: TFloatField;
    Qlranggaransum: TFloatField;
    cxGrid1DBBandedTableView1Column11: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column12: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column13: TcxGridDBBandedColumn;
    dxActivityIndicator1: TdxActivityIndicator;
    Timer1: TTimer;
    relretap: TfrxReport;
    dblretap: TfrxDBDataset;
    Qlretap: TMyQuery;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure FormCreate(Sender: TObject);
    procedure F7Execute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cxComboBox1PropertiesCloseUp(Sender: TObject);
  private
    lastdate : TDate;
    mythread : TThread;
    tglawaltahun,tglsdbulanini : tdate;
    periode : string;
     flag,flagreport : byte;
    { Private declarations }


  public
    procedure generatelr;
    procedure previewreport;
    procedure exportlr;
    procedure getakhirbulan(_periode : string);
  end;

var
  folaprincianbiaya: Tfolaprincianbiaya;

implementation
uses dateutils,strutils,cxGridExportLink, usettgllap;

{$R *.dfm}

{ Tfolaprincianbiaya }

procedure Tfolaprincianbiaya.getakhirbulan(_periode: string);
var
  jmlbln : integer;
begin
  if Trim(_periode) <> '' then
  begin
  jmlbln := DaysInAMonth(StrToInt(LeftStr(_periode,4)),StrToInt(RightStr(_periode,2)));
  cxDateEdit1.Date := EncodeDate(StrToInt(LeftStr(_periode,4)),StrToInt(RightStr(_periode,2)),jmlbln);
  end;
end;

procedure Tfolaprincianbiaya.cxButton1Click(Sender: TObject);
var
  date2 : tdate;
  tglakhir : byte;
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
  flagreport := 1;
  flag := 0;
  Timer1.Enabled := true;
  mythread := TThread.CreateAnonymousThread(generatelr);
  mythread.FreeOnTerminate := true;
  mythread.Start;
end;

procedure Tfolaprincianbiaya.cxButton2Click(Sender: TObject);
var
  date2 : tdate;
  tglakhir : byte;
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
  flagreport := 0;
  flag := 0;
  Timer1.Enabled := true;


  mythread := TThread.CreateAnonymousThread(generatelr);
  mythread.FreeOnTerminate := true;
  mythread.Start;
end;


procedure Tfolaprincianbiaya.cxComboBox1PropertiesChange(Sender: TObject);
var
  date3 : tdate;
begin
  Qlr.Close;
  cxComboBox2.ItemIndex:=cxComboBox1.ItemIndex;
  date3 := EncodeDate(StrToIntDef(LeftStr(cxComboBox2.Text,4),2022),StrToIntDef(RightStr(cxComboBox2.Text,2),8),1);
  cxDateEdit1.Date := EncodeDate(StrToIntdef(LeftStr(cxComboBox2.Text,4),2022),StrToIntdef(RightStr(cxComboBox2.Text,2),8),DaysInMonth(date3));
end;

procedure Tfolaprincianbiaya.cxComboBox1PropertiesCloseUp(Sender: TObject);
begin
  getakhirbulan(cxComboBox2.Text);
end;

procedure Tfolaprincianbiaya.cxGrid1DBBandedTableView1DataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
  procedure CalcFooterSummary;
  var
    V1, V2, AResult: Variant;
  begin
    V1 := ASender.FooterSummaryValues[ASender.FooterSummaryItems.IndexOfItemLink(cxGrid1DBBandedTableView1Column5)];
    V2 := ASender.FooterSummaryValues[ASender.FooterSummaryItems.IndexOfItemLink(cxGrid1DBBandedTableView1Column4)];
    AResult := 0;
    if (V2 > 0) then
      AResult :=  V1 / V2 * 100;
    ASender.FooterSummaryValues[
      ASender.FooterSummaryItems.IndexOfItemLink(cxGrid1DBBandedTableView1Column6)] := AResult;
  end;

  procedure CalcGropSummaries;

    function Groups: TcxDataControllerGroups;
    begin
      Result := cxGrid1DBBandedTableView1.DataController.Groups;
    end;

    procedure CalcGroupSummary(ADataGroupIndex: Integer);
    var
      V1, V2, AResult: Variant;
      ASummaryItems: TcxDataSummaryItems;
    begin
      ASummaryItems := ASender.GroupSummaryItems[Groups.Level[ADataGroupIndex]];
      V1 := ASender.GroupSummaryValues[ADataGroupIndex,
        ASummaryItems.IndexOfItemLink(cxGrid1DBBandedTableView1Column5)];
      V2 := ASender.GroupSummaryValues[ADataGroupIndex,
        ASummaryItems.IndexOfItemLink(cxGrid1DBBandedTableView1Column4)];
      AResult := 0;
      if (V2 > 0) then
        AResult :=  V1 / V2 * 100;
      ASender.GroupSummaryValues[ADataGroupIndex,
        ASummaryItems.IndexOfItemLink(cxGrid1DBBandedTableView1Column6)] := AResult;
    end;

    procedure CalcGroupSummariesByDataGroupIndex(ADataGroupIndex: Integer);
    var
      I: Integer;
    begin
      if Groups.Level[ADataGroupIndex] >= Groups.GroupingItemCount - 1 then
        Exit;
      for I := 0 to Groups.ChildCount[ADataGroupIndex] - 1 do
      begin
        CalcGroupSummary(Groups.ChildDataGroupIndex[ADataGroupIndex, I]);
        CalcGroupSummariesByDataGroupIndex(Groups.ChildDataGroupIndex[ADataGroupIndex, I]);
      end;
    end;

  begin
    CalcGroupSummariesByDataGroupIndex(-1);
  end;
begin
  if Qlr.Active then
  begin
    CalcFooterSummary;
    CalcGropSummaries;
  end;
end;

procedure Tfolaprincianbiaya.exportlr;
begin
 if Qlr.RecordCount > 0 then
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

procedure Tfolaprincianbiaya.F7Execute(Sender: TObject);
begin
  if cxComboBox3.ItemIndex=0 then
  begin
    replr.LoadFromFile(ExtractFilePath(Application.ExeName)+'report\biaya1.fr3');
    frxDesigner1.OpenDir :=ExtractFilePath(Application.ExeName)+'report\';
    replr.DesignReport;
  end
  else if cxComboBox1.ItemIndex=1 then
  begin
    replrrekap.LoadFromFile(ExtractFilePath(Application.ExeName)+'report\lr2.fr3');
    frxDesigner1.OpenDir :=ExtractFilePath(Application.ExeName)+'report\';
    replrrekap.DesignReport;
  end;
end;

procedure Tfolaprincianbiaya.FormCreate(Sender: TObject);
begin
  Self.Width := cxComboBox1.Left+cxComboBox1.Width+50;
  Self.Height := cxButton2.Top+cxButton2.Height+50;
    cxDateEdit1.Date := Date;
end;

procedure Tfolaprincianbiaya.FormShow(Sender: TObject);
begin
  dm.isicombo2('periodeposting',cxComboBox1,cxComboBox2);

end;



procedure Tfolaprincianbiaya.generatelr;
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
        Qex.Execute;   }

        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('CALL `ex_lr_detail`(:awaltahun,:tglbulanini,:periodeini,:namauser);');
        Qex.ParamByName('awaltahun').AsDate := tglawaltahun;
        Qex.ParamByName('tglbulanini').AsDate := tglsdbulanini;
        Qex.ParamByName('periodeini').AsString := periode;
        Qex.ParamByName('namauser').AsString := userlogin;
        Qex.Execute;

        qlr.Close;
        Qlr.ParamByName('namauser').AsString := userlogin;
        Qlr.Open;

        Qlretap.Close;
        Qlretap.SQL.Clear;
        Qlretap.SQL.Add(Qlretap.SQLRefresh.Text);
        Qlretap.ParamByName('namauser').AsString := userlogin;
        Qlretap.Open;


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

procedure Tfolaprincianbiaya.previewreport;
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

        if Qlretap.RecordCount > 0 then
        begin
          dm.isidatattd('lr1',userlogin);

          relretap.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\biaya1.fr3');

          dirlogo := ExtractFilePath(Application.ExeName)+'\logo\Kop Laporan.png';

          if FileExists(dirlogo) then
          begin
            TfrxPictureView(relretap.FindObject('Picture1')).Picture.LoadFromFile(dirlogo);
            //TfrxMemoView(lapkm.FindObject('header1')).Left := 3;
            //TfrxMemoView(lapkm.FindObject('header2')).Left := 3;
           // TfrxMemoView(lapkm.FindObject('alamat1')).Left := 3;
           // TfrxMemoView(lapkm.FindObject('alamat2')).Left := 3;

          end
          else
          begin
            TfrxPictureView(relretap.FindObject('Picture1')).Picture.Graphic := nil;
            TfrxMemoView(relretap.FindObject('header1')).Left := 0;
            TfrxMemoView(relretap.FindObject('header2')).Left := 0;
            TfrxMemoView(relretap.FindObject('alamat1')).Left := 0;
            TfrxMemoView(relretap.FindObject('alamat2')).Left := 0;
          end;

          TfrxMemoView(relretap.FindObject('header1')).Memo.Text:= headerlap1;
          TfrxMemoView(relretap.FindObject('header2')).Memo.Text:= headerlap2;
          TfrxMemoView(relretap.FindObject('alamat1')).Memo.Text:= alamat1;
          TfrxMemoView(relretap.FindObject('alamat2')).Memo.Text:= alamat2;

          TfrxMemoView(relretap.FindObject('periode')).Memo.Text:= 'Per '+FormatDateTime('dd mmmm yyyy',tglsdbulanini);
          TfrxMemoView(relretap.FindObject('footer2')).Memo.Text:= 'Laporan Laba Rugi '+FormatDateTime('dd mmmm yyyy',tglsdbulanini);
          TfrxMemoView(relretap.FindObject('tanggalbawah')).Memo.Text:= footerkota+', '+FormatDateTime('dd mmmm yyyy',cxDateEdit1.Date);
          relretap.ShowReport();
        end
        else
        begin
          MessageDlg('Tidak ada data ..!',mtWarning,[mbok],0);
        end;

      except
        on e:exception do
        begin
          MessageDlg('Terdapatt Kesalahan..!!'+#13+e.Message,mtError,[mbok],0);

        end;
      end;
    end
    else if  cxComboBox3.ItemIndex=1 then
    begin
      MessageDlg('laporan Belum tersedia',mtWarning,[mbok],0);
      exit;
      if Qlr.RecordCount > 0 then
      begin
        dm.isidatattd('lr1',userlogin);
        replr.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\lr1.fr3');

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

        TfrxMemoView(replr.FindObject('periode')).Memo.Text:= 'Per '+FormatDateTime('dd mmmm yyyy',tglsdbulanini);
        TfrxMemoView(replr.FindObject('footer2')).Memo.Text:= 'Laporan Laba Rugi '+FormatDateTime('dd mmmm yyyy',tglsdbulanini);
        TfrxMemoView(replr.FindObject('tanggalbawah')).Memo.Text:= footerkota+', '+FormatDateTime('dd mmmm yyyy',cxDateEdit1.Date);

       // TfrxMemoView(replr.FindObject('foottd')).Memo.Text:= dm.Qatur.fieldbyname('footerlap').AsString+', '+FormatDateTime('dd mmmm yyyy',lastdate);
        replr.ShowReport();
      end
      else
      begin
        MessageDlg('Tidak ada data ..!',mtWarning,[mbok],0);
      end;

    end;
  end
  else
  begin
    MessageDlg('Opsi Laporan belum dipilih..!',mtWarning,[mbok],0);
  end;
end;

procedure Tfolaprincianbiaya.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  self.Close;
end;

procedure Tfolaprincianbiaya.Timer1Timer(Sender: TObject);
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
    previewreport
    else
      exportlr;
  end;

end;

end.
