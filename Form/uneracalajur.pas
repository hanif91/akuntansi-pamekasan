unit uneracalajur;

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
  cxCurrencyEdit, dxSkinsDefaultPainters, scDevExStyleAdapter,
  cxGridBandedTableView, cxGridDBBandedTableView;

type
  Tfoneracalajur = class(TForm)
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
    cxButton1: TcxButton;
    SaveDialog1: TSaveDialog;
    dbb: TMyDataSource;
    Qbb: TMyQuery;
    repneracalajur: TfrxReport;
    db: TfrxDBDataset;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    ActionList1: TActionList;
    F7: TAction;
    frxDesigner1: TfrxDesigner;
    Timer1: TTimer;
    RzToolButton2: TRzToolButton;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn;
    Qbbkodeakun: TStringField;
    Qbbnamaakun: TStringField;
    Qbbtipetambah: TStringField;
    Qbburut: TIntegerField;
    Qbbsadebet: TFloatField;
    Qbbsakredit: TFloatField;
    Qbbmudebet: TFloatField;
    Qbbmukredit: TFloatField;
    Qbblrdebet: TFloatField;
    Qbblrkredit: TFloatField;
    Qbbakhirdebet: TFloatField;
    Qbbakhirkredit: TFloatField;
    cxGrid1DBBandedTableView1Column3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column4: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column6: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column7: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column8: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column9: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column10: TcxGridDBBandedColumn;
    cxComboBox2: TcxComboBox;
    cxComboBox1: TcxComboBox;
    dxActivityIndicator1: TdxActivityIndicator;
    cxDateEdit1: TcxDateEdit;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure F7Execute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
  private
    tgllastchange1,tgllastchange2 : TDate;
    periode : string;
    mythread : TThread;
    tglawaltahun,tglsdbulanini : tdate;
    flag,flagreport : byte;

    { Private declarations }
  public
    { Public declarations }
    procedure getakhirbulan (_periode : string);
    procedure generatelr;
    procedure previewreport;
  end;

var
  foneracalajur: Tfoneracalajur;

implementation
uses dateutils,strutils,cxGridExportLink;

{$R *.dfm}

procedure Tfoneracalajur.cxButton1Click(Sender: TObject);
var
  dirlogo : string;
begin
  if cxComboBox1.ItemIndex=-1 then
  begin
    MessageDlg('Periode Laporan belum Dipilih..!',mtWarning,[mbok],0);
    cxComboBox1.SetFocus;
    exit;
  end;

  periode := cxComboBox2.Text;
  flagreport := 0;
  flag := 0;
  Timer1.Enabled := true;
  mythread := TThread.CreateAnonymousThread(generatelr);
  mythread.FreeOnTerminate := true;
  mythread.Start;
end;

procedure Tfoneracalajur.cxComboBox1PropertiesChange(Sender: TObject);
begin
  Qbb.Close;
  cxComboBox2.ItemIndex := cxComboBox1.ItemIndex;
  getakhirbulan(cxComboBox2.Text);
end;

procedure Tfoneracalajur.F7Execute(Sender: TObject);
begin
{  repbukubesar.LoadFromFile(ExtractFilePath(Application.ExeName)+'report\lapsbb.fr3');
  frxDesigner1.OpenDir :=ExtractFilePath(Application.ExeName)+'report\';
  repbukubesar.DesignReport;    }
end;

procedure Tfoneracalajur.FormShow(Sender: TObject);
begin
  dm.isicombo2('periodeposting',cxComboBox1,cxComboBox2);
end;

procedure Tfoneracalajur.generatelr;
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
        {Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('CALL `view_subbukubesar`(:namauser,:tgl1,:tgl2,:kode1,:kode2)');
        Qex.ParamByName('namauser').AsString := userlogin;
        Qex.ParamByName('tgl1').AsDate := tglawaltahun;
        Qex.ParamByName('tgl2').AsDate := tglsdbulanini;
        Qex.Execute;   }

        Qbb.Close;
        Qbb.SQL.Clear;
        Qbb.SQL.Add('CALL `view_neracalajur`(:namauser,:periode)');
        Qbb.ParamByName('namauser').AsString := userlogin;
        Qbb.ParamByName('periode').AsString := periode;
        Qbb.Open;

      end;
    except
      on e:exception do
      begin
        Qbb.EnableControls;
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



procedure Tfoneracalajur.getakhirbulan(_periode: string);
var
  jmlbln : integer;
begin
  jmlbln := DaysInAMonth(StrToInt(LeftStr(_periode,4)),StrToInt(RightStr(_periode,2)));
  cxDateEdit1.Date := EncodeDate(StrToInt(LeftStr(_periode,4)),StrToInt(RightStr(_periode,2)),jmlbln);

end;

procedure Tfoneracalajur.previewreport;
begin
  Qbb.EnableControls;
 { Qbb.Close;
  Qbb.SQL.Clear;
  Qbb.SQL.Add(Qbb.SQLRefresh.Text);
  Qbb.ParamByName('kode1').AsString := kode1;
  Qbb.ParamByName('kode2').AsString := kode2;
  Qbb.ParamByName('namauser').AsString := userlogin;
  Qbb.Open;     }
end;

procedure Tfoneracalajur.RzToolButton1Click(Sender: TObject);
var
  dirlogo,filter : string;
begin
  if Qbb.RecordCount > 0 then
  begin


    dm.isidatattd('nrcl',userlogin);
    repneracalajur.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\nrclajur.fr3');


    dirlogo := ExtractFilePath(Application.ExeName)+'\logo\Kop Laporan.png';
    if FileExists(dirlogo) then
    begin
      TfrxPictureView(repneracalajur.FindObject('Picture1')).Picture.LoadFromFile(dirlogo);
      //TfrxMemoView(lapkm.FindObject('header1')).Left := 3;
      //TfrxMemoView(lapkm.FindObject('header2')).Left := 3;
     // TfrxMemoView(lapkm.FindObject('alamat1')).Left := 3;
     // TfrxMemoView(lapkm.FindObject('alamat2')).Left := 3;

    end
    else
    begin
      TfrxPictureView(repneracalajur.FindObject('Picture1')).Picture.Graphic := nil;
      TfrxMemoView(repneracalajur.FindObject('header1')).Left := 0;
      TfrxMemoView(repneracalajur.FindObject('header2')).Left := 0;
      TfrxMemoView(repneracalajur.FindObject('alamat1')).Left := 0;
      TfrxMemoView(repneracalajur.FindObject('alamat2')).Left := 0;
    end;
    TfrxMemoView(repneracalajur.FindObject('header1')).Memo.Text:= headerlap1;
    TfrxMemoView(repneracalajur.FindObject('header2')).Memo.Text:= headerlap2;
    TfrxMemoView(repneracalajur.FindObject('alamat1')).Memo.Text:= alamat1;
    TfrxMemoView(repneracalajur.FindObject('alamat2')).Memo.Text:= alamat2;

    TfrxMemoView(repneracalajur.FindObject('periode')).Memo.Text:= cxComboBox1.Text;
    TfrxMemoView(repneracalajur.FindObject('footer2')).Memo.Text:= 'NERACA LAJUR PERIODE : '+cxComboBox1.Text;
    TfrxMemoView(repneracalajur.FindObject('tanggalbawah')).Memo.Text:= footerkota+', '+FormatDateTime('dd mmmm yyyy',cxDateEdit1.Date);
    repneracalajur.ShowReport(true);
  end
  else
  begin
    MessageDlg('Tidak Ada Yang Ingin Ditampilkan..!',mtWarning,[mbok],0);
  end;
end;

procedure Tfoneracalajur.RzToolButton2Click(Sender: TObject);
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

procedure Tfoneracalajur.Timer1Timer(Sender: TObject);
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
