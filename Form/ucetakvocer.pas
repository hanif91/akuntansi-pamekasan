unit ucetakvocer;

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
  frxDesgn,frxDMPClass, frxDBSet, Vcl.Mask, RzEdit, RzDTP, frxDMPExport,
  dxSkinsDefaultPainters, scDevExStyleAdapter;

type
  Tfocetakvoucher = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    Qjra: TMyQuery;
    TabSheet1: TRzTabSheet;
    RzPanel1setorsimp: TRzPanel;
    cxLabel1: TcxLabel;
    cxButton2: TcxButton;
    frxDesigner1: TfrxDesigner;
    SaveDialog1: TSaveDialog;
    dbjra: TfrxDBDataset;
    RzEdit1: TRzEdit;
    RzEdit2: TRzEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    replr: TfrxReport;
    RzDateTimePicker1: TRzDateTimePicker;
    cxLabel4: TcxLabel;
    RzDateTimePicker2: TRzDateTimePicker;
    frxReport1: TfrxReport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    cxCheckBox1: TcxCheckBox;
    procedure FormShow(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
        lastdate : TDate;
  public
    { Public declarations }
    procedure viewjurnal;
    procedure exportexcel;
    procedure kondisi1;
    procedure kondisi2;
    procedure kondisiawal;

  end;

var
  focetakvoucher: Tfocetakvoucher;

implementation

{$R *.dfm}

uses udm,dateutils,strutils;

procedure Tfocetakvoucher.cxButton2Click(Sender: TObject);
begin
  viewjurnal;
end;

procedure Tfocetakvoucher.cxButton3Click(Sender: TObject);
begin
  exportexcel;
end;

procedure Tfocetakvoucher.exportexcel;
begin

end;

procedure Tfocetakvoucher.FormCreate(Sender: TObject);
begin
  RzDateTimePicker1.Date := date;
  RzDateTimePicker2.Date := date;
end;

procedure Tfocetakvoucher.FormShow(Sender: TObject);
begin

  kondisiawal;
  RzDateTimePicker1.SetFocus;
end;

procedure Tfocetakvoucher.kondisi1;
begin

end;

procedure Tfocetakvoucher.kondisi2;
begin
  cxButton2.Enabled := true;
end;


procedure Tfocetakvoucher.kondisiawal;
begin
  RzEdit1.Clear;
  RzEdit2.Clear;
end;



procedure Tfocetakvoucher.RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
begin
  close;
end;

procedure Tfocetakvoucher.viewjurnal;
var
  date2 : tdate;
  tglakhir : byte;
  dirlogo : string;
begin
  if ((RzEdit1.Text)='') and ((RzEdit2.Text)='') then
  begin
    Qjra.Close;
    Qjra.SQL.Clear;
    Qjra.SQL.Add(Qjra.SQLRefresh.Text);
    Qjra.ParamByName('tgl1').AsDate := RzDateTimePicker1.Date;
    Qjra.ParamByName('tgl2').AsDate := RzDateTimePicker2.Date;
    Qjra.Open;
  end
  else
  begin
    Qjra.Close;
    Qjra.SQL.Clear;
    Qjra.SQL.Add(Qjra.SQLLock.Text);
    Qjra.ParamByName('tgl1').AsDate := RzDateTimePicker1.Date;
    Qjra.ParamByName('tgl2').AsDate := RzDateTimePicker2.Date;
    Qjra.ParamByName('jml1').AsString := RzEdit1.Text;
    Qjra.ParamByName('jml2').AsString := RzEdit2.Text;
    Qjra.Open;
  end;

  if Qjra.RecordCount > 0 then
  begin
    dm.isidatattd('vc',userlogin);
    if cxCheckBox1.Checked then
    begin

      frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\voucherdot.fr3');

      dirlogo := ExtractFilePath(Application.ExeName)+'\logo\Kop Laporan.png';

   {   if FileExists(dirlogo) then
      begin
        //TfrxPictureView(replr.FindObject('Picture1')).Picture.LoadFromFile(dirlogo);
        //TfrxMemoView(lapkm.FindObject('header1')).Left := 3;
        //TfrxMemoView(lapkm.FindObject('header2')).Left := 3;
       // TfrxMemoView(lapkm.FindObject('alamat1')).Left := 3;
       // TfrxMemoView(lapkm.FindObject('alamat2')).Left := 3;

      end
      else
      begin
       // TfrxPictureView(replr.FindObject('Picture1')).Picture.Graphic := nil;
        TfrxMemoView(replr.FindObject('header1')).Left := 0;
        TfrxdmpMemoView(replr.FindObject('header2')).Left := 0;
        TfrxdmpMemoView(replr.FindObject('alamat1')).Left := 0;
        TfrxdmpMemoView(replr.FindObject('alamat2')).Left := 0;
      end;  }

      TfrxdmpMemoView(frxReport1.FindObject('header1')).Memo.Text:= headerlap1;
      TfrxdmpMemoView(frxReport1.FindObject('header2')).Memo.Text:= headerlap2;
      TfrxdmpMemoView(frxReport1.FindObject('alamat1')).Memo.Text:= alamat1 + ' ' + alamat2;

      //TfrxMemoView(replr.FindObject('periode')).Memo.Text:= 'Periode '+cxComboBox1.Text;
     // TfrxMemoView(replr.FindObject('footer2')).Memo.Text:= 'JRA '+cxComboBox1.Text;
     // TfrxMemoView(replr.FindObject('tanggalbawah')).Memo.Text:= footerkota+', '+FormatDateTime('dd mmmm yyyy',Qjra.FieldByName('tanggal').AsDateTime);
      frxReport1.ShowReport();
    end
    else
    begin
      replr.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\voucher.fr3');

      dirlogo := ExtractFilePath(Application.ExeName)+'\logo\Kop Laporan.png';

      if FileExists(dirlogo) then
      begin
        TfrxPictureView(replr.FindObject('Picture1')).Picture.LoadFromFile(dirlogo);
        TfrxMemoView(replr.FindObject('header1')).Left := 110;
        TfrxMemoView(replr.FindObject('header2')).Left := 110;
        TfrxMemoView(replr.FindObject('alamat1')).Left := 110;
        TfrxMemoView(replr.FindObject('alamat2')).Left := 110;
      end
      else
      begin
       // TfrxPictureView(replr.FindObject('Picture1')).Picture.Graphic := nil;
        TfrxMemoView(replr.FindObject('header1')).Left := 0.52;
        TfrxdmpMemoView(replr.FindObject('header2')).Left := 0.52;
        TfrxdmpMemoView(replr.FindObject('alamat1')).Left := 0.52;
        TfrxdmpMemoView(replr.FindObject('alamat2')).Left := 0.52;
      end;

      TfrxMemoView(replr.FindObject('header1')).Memo.Text:= headerlap1;
      TfrxMemoView(replr.FindObject('header2')).Memo.Text:= headerlap2;
      TfrxMemoView(replr.FindObject('alamat1')).Memo.Text:= alamat1 + ' ' + alamat2;

      //TfrxMemoView(replr.FindObject('periode')).Memo.Text:= 'Periode '+cxComboBox1.Text;
     // TfrxMemoView(replr.FindObject('footer2')).Memo.Text:= 'JRA '+cxComboBox1.Text;
     // TfrxMemoView(replr.FindObject('tanggalbawah')).Memo.Text:= footerkota+', '+FormatDateTime('dd mmmm yyyy',Qjra.FieldByName('tanggal').AsDateTime);
      replr.ShowReport();
    end;
  end
  else
  begin
    MessageDlg('Tidak ada data ..!',mtWarning,[mbok],0);
  end;
end;

end.
