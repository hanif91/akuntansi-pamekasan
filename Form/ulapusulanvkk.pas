unit ulapusulanvkk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinsDefaultPainters,
  Vcl.Menus, Vcl.ComCtrls, RzDTP, Vcl.StdCtrls, cxButtons, cxLabel, RzTabs,
  Vcl.ExtCtrls, RzPanel, frxClass, frxDesgn, frxDBSet, Data.DB, MemDS, DBAccess,
  MyAccess, scDevExStyleAdapter;

type
  Tfolapusulanvkk = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1setorsimp: TRzPanel;
    cxLabel1: TcxLabel;
    cxButton2: TcxButton;
    cxLabel3: TcxLabel;
    RzDateTimePicker1: TRzDateTimePicker;
    RzDateTimePicker2: TRzDateTimePicker;
    Qjra: TMyQuery;
    dbjra: TfrxDBDataset;
    SaveDialog1: TSaveDialog;
    frxDesigner1: TfrxDesigner;
    replr: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Qjra_rekap: TMyQuery;
    dbjra2: TfrxDBDataset;
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure viewjurnal;
  end;

var
  folapusulanvkk: Tfolapusulanvkk;

implementation

{$R *.dfm}

uses udm;

procedure Tfolapusulanvkk.cxButton2Click(Sender: TObject);
begin
  viewjurnal;
end;

procedure Tfolapusulanvkk.FormCreate(Sender: TObject);
begin
  RzDateTimePicker1.Date := date;
  RzDateTimePicker2.Date := date;
end;

procedure Tfolapusulanvkk.FormShow(Sender: TObject);
begin
  RzDateTimePicker1.SetFocus;
end;

procedure Tfolapusulanvkk.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  close;
end;

procedure Tfolapusulanvkk.viewjurnal;
var
    dirlogo : string;
begin
  Qjra.Close;
  Qjra.SQL.Clear;
  Qjra.SQL.Add(Qjra.SQLRefresh.Text);
  Qjra.ParamByName('tgl1').AsDate := RzDateTimePicker1.Date;
  Qjra.ParamByName('tgl2').AsDate := RzDateTimePicker2.Date;
  Qjra.Open;

  Qjra_rekap.Close;
  Qjra_rekap.SQL.Clear;
  Qjra_rekap.SQL.Add(Qjra_rekap.SQLRefresh.Text);
  Qjra_rekap.ParamByName('tgl1').AsDate := RzDateTimePicker1.Date;
  Qjra_rekap.ParamByName('tgl2').AsDate := RzDateTimePicker2.Date;
  Qjra_rekap.Open;


  if Qjra.RecordCount > 0 then
  begin
    dm.isidatattd('usul2',userlogin);
    replr.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\lapusulvkk.fr3');

    dirlogo := ExtractFilePath(Application.ExeName)+'\logo\Kop Laporan.png';

    if FileExists(dirlogo) then
    begin
      TfrxPictureView(replr.FindObject('Picture1')).Picture.LoadFromFile(dirlogo);
      TfrxPictureView(replr.FindObject('Picture2')).Picture.LoadFromFile(dirlogo);
     { TfrxMemoView(replr.FindObject('header1')).Left := 100;
      TfrxMemoView(replr.FindObject('header2')).Left := 100;
      TfrxMemoView(replr.FindObject('alamat1')).Left := 100;
      TfrxMemoView(replr.FindObject('alamat2')).Left := 100;    }
    end
    else
    begin
     // TfrxPictureView(replr.FindObject('Picture1')).Picture.Graphic := nil;
      TfrxMemoView(replr.FindObject('header1')).Left := 0.52;
      TfrxMemoView(replr.FindObject('header2')).Left := 0.52;
      TfrxMemoView(replr.FindObject('alamat1')).Left := 0.52;
      TfrxMemoView(replr.FindObject('alamat2')).Left := 0.52;
    end;

    TfrxMemoView(replr.FindObject('header1')).Memo.Text:= headerlap1;
    TfrxMemoView(replr.FindObject('header2')).Memo.Text:= headerlap2;
    TfrxMemoView(replr.FindObject('alamat1')).Memo.Text:= alamat1 + ' ' + alamat2;
    TfrxMemoView(replr.FindObject('alamat2')).Memo.Text:= alamat2;
    TfrxMemoView(replr.FindObject('header11')).Memo.Text:= headerlap1;
    TfrxMemoView(replr.FindObject('header22')).Memo.Text:= headerlap2;
    TfrxMemoView(replr.FindObject('alamat11')).Memo.Text:= alamat1 + ' ' + alamat2;
    TfrxMemoView(replr.FindObject('alamat22')).Memo.Text:= alamat2;
    TfrxMemoView(replr.FindObject('periode')).Memo.Text:= FormatDateTime('dd mmmm yyyy',RzDateTimePicker1.Date)+ ' - '+FormatDateTime('dd mmmm yyyy',RzDateTimePicker2.Date);
    TfrxMemoView(replr.FindObject('periode2')).Memo.Text:= FormatDateTime('dd mmmm yyyy',RzDateTimePicker1.Date)+ ' - '+FormatDateTime('dd mmmm yyyy',RzDateTimePicker2.Date);
    //TfrxMemoView(replr.FindObject('periode')).Memo.Text:= 'Periode '+cxComboBox1.Text;
   // TfrxMemoView(replr.FindObject('footer2')).Memo.Text:= 'JRA '+cxComboBox1.Text;
    TfrxMemoView(replr.FindObject('tanggalbawah')).Memo.Text:= footerkota+', '+FormatDateTime('dd mmmm yyyy',RzDateTimePicker2.Date);
    replr.ShowReport();
  end
  else
  begin
    MessageDlg('Tidak ada data ..!',mtWarning,[mbok],0);
  end;
end;

end.
