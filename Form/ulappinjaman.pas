unit ulappinjaman;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, frxDesgn, System.Actions, Vcl.ActnList, frxClass,
  frxDBSet, Data.DB, MemDS, DBAccess, MyAccess, Vcl.ComCtrls, RzDTP, cxLabel,
  RzButton, RzTabs, Vcl.ExtCtrls, RzPanel;

type
  Tfolappinjaman = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    btnsimpan: TRzToolButton;
    cxLabel2: TcxLabel;
    RzDateTimePicker1: TRzDateTimePicker;
    RzDateTimePicker2: TRzDateTimePicker;
    cxLabel3: TcxLabel;
    Qsetor: TMyQuery;
    lapkm: TfrxReport;
    Dbsetor: TfrxDBDataset;
    ActionList1: TActionList;
    F7: TAction;
    frxDesigner1: TfrxDesigner;
    procedure btnsimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure F7Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  folappinjaman: Tfolappinjaman;

implementation
uses dateutils;

{$R *.dfm}

procedure Tfolappinjaman.btnsimpanClick(Sender: TObject);
var
  dirlogo : string;
begin
  Qsetor.Close;
  Qsetor.SQL.Clear;
  Qsetor.SQL.Add(Qsetor.SQLRefresh.Text);
  Qsetor.ParamByName('periode').AsString := FormatDateTime('yyyymm',RzDateTimePicker1.Date);
  Qsetor.Open;
  if Qsetor.RecordCount > 0 then
  begin
    dm.isidatattd('pinj',userlogin);
    lapkm.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\lappinjaman.fr3');

    dirlogo := ExtractFilePath(Application.ExeName)+'\logo\Kop Laporan.png';
    if FileExists(dirlogo) then
    begin
      TfrxPictureView(lapkm.FindObject('Picture1')).Picture.LoadFromFile(dirlogo);
      //TfrxMemoView(lapkm.FindObject('header1')).Left := 3;
      //TfrxMemoView(lapkm.FindObject('header2')).Left := 3;
     // TfrxMemoView(lapkm.FindObject('alamat1')).Left := 3;
     // TfrxMemoView(lapkm.FindObject('alamat2')).Left := 3;

    end
    else
    begin
      TfrxPictureView(lapkm.FindObject('Picture1')).Picture.Graphic := nil;
      TfrxMemoView(lapkm.FindObject('header1')).Left := 0;
      TfrxMemoView(lapkm.FindObject('header2')).Left := 0;
      TfrxMemoView(lapkm.FindObject('alamat1')).Left := 0;
      TfrxMemoView(lapkm.FindObject('alamat2')).Left := 0;
    end;
    TfrxMemoView(lapkm.FindObject('header1')).Memo.Text:= headerlap1;
    TfrxMemoView(lapkm.FindObject('header2')).Memo.Text:= headerlap2;
    TfrxMemoView(lapkm.FindObject('alamat1')).Memo.Text:= alamat1;
    TfrxMemoView(lapkm.FindObject('alamat2')).Memo.Text:= alamat2;
    TfrxMemoView(lapkm.FindObject('periode')).Memo.Text:= UpperCase(FormatDateTime('mmmm yyyy',RzDateTimePicker1.Date));
    TfrxMemoView(lapkm.FindObject('tanggalbawah')).Memo.Text:= footerkota+', '+FormatDateTime('dd mmmm yyyy',RzDateTimePicker2.Date);
    lapkm.ShowReport(true);
  end
  else
  begin
    MessageDlg('Tidak Ada Data .!',mtInformation,[mbok],0);
  end;
end;

procedure Tfolappinjaman.F7Execute(Sender: TObject);
begin
  lapkm.LoadFromFile(ExtractFilePath(Application.ExeName)+'report\lappinjaman.fr3');
  frxDesigner1.OpenDir :=ExtractFilePath(Application.ExeName)+'report\';
  lapkm.DesignReport;
end;

procedure Tfolappinjaman.FormShow(Sender: TObject);
begin
  RzDateTimePicker1.Date := EncodeDate(YearOf(date),MonthOf(date),1);
  RzDateTimePicker2.Date := date;
end;

procedure Tfolappinjaman.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  self.Close;
end;

end.
