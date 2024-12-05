unit ulapsetoran;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, Vcl.ComCtrls, RzDTP, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLabel, RzButton, RzTabs, Vcl.ExtCtrls, RzPanel, udm,
  frxClass, frxDBSet, Data.DB, MemDS, DBAccess, MyAccess, System.Actions,
  Vcl.ActnList, frxDesgn;

type
  Tfolapsetoran = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    btnsimpan: TRzToolButton;
    cxLabel1: TcxLabel;
    cxComboBox1: TcxComboBox;
    cxLabel2: TcxLabel;
    RzDateTimePicker1: TRzDateTimePicker;
    RzDateTimePicker2: TRzDateTimePicker;
    cxLabel3: TcxLabel;
    lapkm: TfrxReport;
    Qsetor: TMyQuery;
    Dbsetor: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    ActionList1: TActionList;
    F7: TAction;
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure F7Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  folapsetoran: Tfolapsetoran;

implementation
uses dateutils;

{$R *.dfm}

procedure Tfolapsetoran.btnsimpanClick(Sender: TObject);
var
  dirlogo : string;
begin
  if cxComboBox1.ItemIndex=0 then
  begin
    Qsetor.Close;
    Qsetor.SQL.Clear;
    Qsetor.SQL.Add(Qsetor.SQLRefresh.Text);
    Qsetor.ParamByName('periode').AsString := FormatDateTime('yyyymm',RzDateTimePicker1.Date);
    Qsetor.Open;
    if Qsetor.RecordCount > 0 then
    begin
      dm.isidatattd('setor',userlogin);
      lapkm.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\setoran.fr3');

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
  end
  else if cxComboBox1.ItemIndex=1 then
  begin
    Qsetor.Close;
    Qsetor.SQL.Clear;
    Qsetor.SQL.Add(Qsetor.SQLLock.Text);
    Qsetor.ParamByName('periode').AsString := FormatDateTime('yyyymm',RzDateTimePicker1.Date);
    Qsetor.Open;
    if Qsetor.RecordCount > 0 then
    begin
      dm.isidatattd('tarik',userlogin);
      lapkm.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\tarik.fr3');

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
  end
 { dm.isidatattd('work',username);
  reporderbul.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\work order bulanan.fr3');
  reporderbul.ShowReport(true);  }
end;

procedure Tfolapsetoran.F7Execute(Sender: TObject);
begin
  if cxComboBox1.ItemIndex=0 then
  begin
    lapkm.LoadFromFile(ExtractFilePath(Application.ExeName)+'report\setoran.fr3');
    frxDesigner1.OpenDir :=ExtractFilePath(Application.ExeName)+'report\';
    lapkm.DesignReport;
  end
  else if cxComboBox1.ItemIndex=1 then
  begin
    lapkm.LoadFromFile(ExtractFilePath(Application.ExeName)+'report\tarik.fr3');
    frxDesigner1.OpenDir :=ExtractFilePath(Application.ExeName)+'report\';
    lapkm.DesignReport;
  end
end;

procedure Tfolapsetoran.FormShow(Sender: TObject);
begin
  RzDateTimePicker1.Date := EncodeDate(YearOf(date),MonthOf(date),1);
  RzDateTimePicker2.Date := date;
end;

procedure Tfolapsetoran.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  self.Close;
end;

end.
