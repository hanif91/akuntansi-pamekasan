unit ulapkas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, RzButton, Vcl.ComCtrls, RzDTP, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLabel, RzTabs, Vcl.ExtCtrls, RzPanel, frxClass, udm,
  Data.DB, MemDS, DBAccess, MyAccess, frxDBSet, frxDesgn, System.Actions,
  Vcl.ActnList;

type
  Tfolapkas = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    cxLabel1: TcxLabel;
    cxComboBox1: TcxComboBox;
    cxLabel2: TcxLabel;
    RzDateTimePicker1: TRzDateTimePicker;
    btnsimpan: TRzToolButton;
    lapkm: TfrxReport;
    dbkm: TfrxDBDataset;
    Qkm: TMyQuery;
    RzDateTimePicker2: TRzDateTimePicker;
    cxLabel3: TcxLabel;
    ActionList1: TActionList;
    F7: TAction;
    frxDesigner1: TfrxDesigner;
    lapkk: TfrxReport;
    dbkk: TfrxDBDataset;
    Qkk: TMyQuery;
    lapkt: TfrxReport;
    dbkt: TfrxDBDataset;
    Qkt: TMyQuery;
    procedure btnsimpanClick(Sender: TObject);
    procedure F7Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  folapkas: Tfolapkas;

implementation
uses dateutils;

{$R *.dfm}

procedure Tfolapkas.btnsimpanClick(Sender: TObject);
var
  dirlogo : string;
begin
  if cxComboBox1.ItemIndex=0 then
  begin
    Qkm.Close;
    Qkm.SQL.Clear;
    Qkm.SQL.Add(Qkm.SQLRefresh.Text);
    Qkm.ParamByName('periode').AsString := FormatDateTime('yyyymm',RzDateTimePicker1.Date);
    Qkm.Open;
    if Qkm.RecordCount > 0 then
    begin
      dm.isidatattd('km',userlogin);
      lapkm.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\lapkm.fr3');


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
    Qkk.Close;
    Qkk.SQL.Clear;
    Qkk.SQL.Add(Qkk.SQLRefresh.Text);
    Qkk.ParamByName('periode').AsString := FormatDateTime('yyyymm',RzDateTimePicker1.Date);
    Qkk.Open;
    if Qkk.RecordCount > 0 then
    begin
      dm.isidatattd('kk',userlogin);
      lapkk.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\lapkk.fr3');


      dirlogo := ExtractFilePath(Application.ExeName)+'\logo\Kop Laporan.png';
      if FileExists(dirlogo) then
      begin
        TfrxPictureView(lapkk.FindObject('Picture1')).Picture.LoadFromFile(dirlogo);
        //TfrxMemoView(lapkm.FindObject('header1')).Left := 3;
        //TfrxMemoView(lapkm.FindObject('header2')).Left := 3;
       // TfrxMemoView(lapkm.FindObject('alamat1')).Left := 3;
       // TfrxMemoView(lapkm.FindObject('alamat2')).Left := 3;

      end
      else
      begin
        TfrxPictureView(lapkk.FindObject('Picture1')).Picture.Graphic := nil;
        TfrxMemoView(lapkk.FindObject('header1')).Left := 0;
        TfrxMemoView(lapkk.FindObject('header2')).Left := 0;
        TfrxMemoView(lapkk.FindObject('alamat1')).Left := 0;
        TfrxMemoView(lapkk.FindObject('alamat2')).Left := 0;
      end;
      TfrxMemoView(lapkk.FindObject('header1')).Memo.Text:= headerlap1;
      TfrxMemoView(lapkk.FindObject('header2')).Memo.Text:= headerlap2;
      TfrxMemoView(lapkk.FindObject('alamat1')).Memo.Text:= alamat1;
      TfrxMemoView(lapkk.FindObject('alamat2')).Memo.Text:= alamat2;
      TfrxMemoView(lapkk.FindObject('periode')).Memo.Text:= UpperCase(FormatDateTime('mmmm yyyy',RzDateTimePicker1.Date));
      TfrxMemoView(lapkk.FindObject('tanggalbawah')).Memo.Text:= footerkota+', '+FormatDateTime('dd mmmm yyyy',RzDateTimePicker2.Date);
      lapkk.ShowReport(true);
    end
    else
    begin
      MessageDlg('Tidak Ada Data .!',mtInformation,[mbok],0);
    end;
  end
  else
  begin
    Qkt.Close;
    Qkt.SQL.Clear;
    Qkt.SQL.Add(Qkt.SQLRefresh.Text);
    Qkt.ParamByName('periode').AsString := FormatDateTime('yyyymm',RzDateTimePicker1.Date);
    Qkt.Open;
    if Qkt.RecordCount>0 then
    begin
      dm.isidatattd('kt',userlogin);
      lapkt.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\lapkt.fr3');


      dirlogo := ExtractFilePath(Application.ExeName)+'\logo\Kop Laporan.png';
      if FileExists(dirlogo) then
      begin
        TfrxPictureView(lapkt.FindObject('Picture1')).Picture.LoadFromFile(dirlogo);
        //TfrxMemoView(lapkm.FindObject('header1')).Left := 3;
        //TfrxMemoView(lapkm.FindObject('header2')).Left := 3;
       // TfrxMemoView(lapkm.FindObject('alamat1')).Left := 3;
       // TfrxMemoView(lapkm.FindObject('alamat2')).Left := 3;

      end
      else
      begin
        TfrxPictureView(lapkt.FindObject('Picture1')).Picture.Graphic := nil;
        TfrxMemoView(lapkt.FindObject('header1')).Left := 0;
        TfrxMemoView(lapkt.FindObject('header2')).Left := 0;
        TfrxMemoView(lapkt.FindObject('alamat1')).Left := 0;
        TfrxMemoView(lapkt.FindObject('alamat2')).Left := 0;
      end;
      TfrxMemoView(lapkt.FindObject('header1')).Memo.Text:= headerlap1;
      TfrxMemoView(lapkt.FindObject('header2')).Memo.Text:= headerlap2;
      TfrxMemoView(lapkt.FindObject('alamat1')).Memo.Text:= alamat1;
      TfrxMemoView(lapkt.FindObject('alamat2')).Memo.Text:= alamat2;
      TfrxMemoView(lapkt.FindObject('periode')).Memo.Text:= UpperCase(FormatDateTime('mmmm yyyy',RzDateTimePicker1.Date));
      TfrxMemoView(lapkt.FindObject('tanggalbawah')).Memo.Text:= footerkota+', '+FormatDateTime('dd mmmm yyyy',RzDateTimePicker2.Date);
      lapkt.ShowReport(true);

    end
    else
    begin
      MessageDlg('Tidak Ada Data .!',mtInformation,[mbok],0);
    end;
  end;
 { dm.isidatattd('work',username);
  reporderbul.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\work order bulanan.fr3');
  reporderbul.ShowReport(true);  }
end;

procedure Tfolapkas.F7Execute(Sender: TObject);
begin
  if cxComboBox1.ItemIndex=0 then
  begin
    lapkm.LoadFromFile(ExtractFilePath(Application.ExeName)+'report\lapkm.fr3');
    frxDesigner1.OpenDir :=ExtractFilePath(Application.ExeName)+'report\';
    lapkm.DesignReport;
  end
  else if cxComboBox1.ItemIndex=1 then
  begin
    lapkk.LoadFromFile(ExtractFilePath(Application.ExeName)+'report\lapkk.fr3');
    frxDesigner1.OpenDir :=ExtractFilePath(Application.ExeName)+'report\';
    lapkk.DesignReport;
  end
  else if cxComboBox1.ItemIndex=2 then
  begin
    lapkt.LoadFromFile(ExtractFilePath(Application.ExeName)+'report\lapkt.fr3');
    frxDesigner1.OpenDir :=ExtractFilePath(Application.ExeName)+'report\';
    lapkt.DesignReport;
  end;
end;

procedure Tfolapkas.FormShow(Sender: TObject);
begin
  RzDateTimePicker1.Date := EncodeDate(YearOf(date),MonthOf(date),1);
  RzDateTimePicker2.Date := date;
end;

procedure Tfolapkas.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  self.Close;
end;

end.
