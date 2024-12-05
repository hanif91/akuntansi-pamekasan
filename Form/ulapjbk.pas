unit ulapjbk;

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
  Tfolapjbk = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    Qjra: TMyQuery;
    TabSheet1: TRzTabSheet;
    RzPanel1setorsimp: TRzPanel;
    cxComboBox2: TcxComboBox;
    cxComboBox1: TcxComboBox;
    cxLabel1: TcxLabel;
    RzLabel1: TRzLabel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    frxDesigner1: TfrxDesigner;
    SaveDialog1: TSaveDialog;
    dbjra: TfrxDBDataset;
    replr: TfrxReport;
    procedure RzToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
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
    procedure kondisiawal;
  end;

var
  folapjbk: Tfolapjbk;

implementation

{$R *.dfm}

uses udm,dateutils,strutils;

procedure Tfolapjbk.cxButton2Click(Sender: TObject);
begin
  viewjurnal;
end;

procedure Tfolapjbk.cxButton3Click(Sender: TObject);
begin
  exportexcel;
end;

procedure Tfolapjbk.cxComboBox1PropertiesChange(Sender: TObject);
begin
  cxComboBox2.ItemIndex := cxComboBox1.ItemIndex;
  kondisi2;
end;

procedure Tfolapjbk.exportexcel;
begin

end;

procedure Tfolapjbk.FormCreate(Sender: TObject);
begin
  Self.Width := cxComboBox1.Left+cxComboBox1.Width+50;
  Self.Height := cxButton3.Top+cxButton3.Height+50;
end;

procedure Tfolapjbk.FormShow(Sender: TObject);
begin
  dm.isicombo2('periodeposting',cxComboBox1,cxComboBox2);
  dm.isicombo2('periodeposting',cxComboBox1,cxComboBox2);
  kondisiawal;
end;

procedure Tfolapjbk.kondisi1;
begin
  cxButton2.Enabled := false;
  cxButton3.Enabled := false;
end;

procedure Tfolapjbk.kondisi2;
begin
  cxButton2.Enabled := true;
  cxButton3.Enabled := true;
end;



procedure Tfolapjbk.kondisiawal;
begin
  kondisi1;
end;

procedure Tfolapjbk.prosesjurnal;
begin
end;

procedure Tfolapjbk.RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
begin
  close;
end;

procedure Tfolapjbk.RzToolButton1Click(Sender: TObject);
begin
  if (trim(cxComboBox2.Text)='') or ((trim(cxComboBox1.Text)='')) then
  begin
    MessageDlg('Periode Harus diisi !',mtWarning,[mbok],0);
    cxComboBox1.SetFocus;
    Exit;
  end;
end;

procedure Tfolapjbk.viewjurnal;
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
    dm.isidatattd('jbk',userlogin);

    replr.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\jbk.fr3');

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
    TfrxMemoView(replr.FindObject('footer2')).Memo.Text:= 'JBK '+cxComboBox1.Text;
    TfrxMemoView(replr.FindObject('tanggalbawah')).Memo.Text:= footerkota+', '+FormatDateTime('dd mmmm yyyy',lastdate);
    replr.ShowReport();
  end
  else
  begin
    MessageDlg('Tidak ada data ..!',mtWarning,[mbok],0);
  end;
end;

end.
