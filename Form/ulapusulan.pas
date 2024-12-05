unit ulapusulan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinsDefaultPainters,
  Vcl.Menus, Vcl.ComCtrls, RzDTP, Vcl.StdCtrls, cxButtons, cxLabel, RzTabs,
  Vcl.ExtCtrls, RzPanel, frxClass, frxDesgn, frxDBSet, Data.DB, MemDS, DBAccess,
  MyAccess, cxTextEdit, cxCurrencyEdit, scDevExStyleAdapter, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid;

type
  Tfolapusulan = class(TForm)
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
    frxReport1: TfrxReport;
    MyQuery1: TMyQuery;
    frxDBDataset1: TfrxDBDataset;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxLabel2: TcxLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    MyDataSource1: TMyDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxButton1: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure viewjurnal;
  end;

var
  folapusulan: Tfolapusulan;

implementation

{$R *.dfm}

uses udm,cxgridexportlink;

procedure Tfolapusulan.cxButton1Click(Sender: TObject);
begin
  Qjra.Close;
  Qjra.SQL.Clear;
  Qjra.SQL.Add(Qjra.SQLRefresh.Text);
  Qjra.ParamByName('tgl1').AsDate := RzDateTimePicker1.Date;
  Qjra.ParamByName('tgl2').AsDate := RzDateTimePicker2.Date;
  Qjra.ParamByName('groupusulan').AsCurrency := cxCurrencyEdit1.Value;
  Qjra.Open;

  if Qjra.RecordCount > 0 then
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
  end
  else
  begin
    MessageDlg('Tidak Ada Data..!',mtWarning,[mbOK],0);
  end;
end;

procedure Tfolapusulan.cxButton2Click(Sender: TObject);
begin
  viewjurnal;
end;

procedure Tfolapusulan.FormCreate(Sender: TObject);
begin
  RzDateTimePicker1.Date := date;
  RzDateTimePicker2.Date := date;
end;

procedure Tfolapusulan.FormShow(Sender: TObject);
begin
  RzDateTimePicker1.SetFocus;
end;

procedure Tfolapusulan.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  close;
end;

procedure Tfolapusulan.viewjurnal;
var
    dirlogo : string;
begin
  Qjra.Close;
  Qjra.SQL.Clear;
  Qjra.SQL.Add(Qjra.SQLRefresh.Text);
  Qjra.ParamByName('tgl1').AsDate := RzDateTimePicker1.Date;
  Qjra.ParamByName('tgl2').AsDate := RzDateTimePicker2.Date;
  Qjra.ParamByName('groupusulan').AsCurrency := cxCurrencyEdit1.Value;
  Qjra.Open;

  if Qjra.RecordCount > 0 then
  begin
    dm.isidatattd('usul',userlogin);
    replr.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\lapusul.fr3');

    dirlogo := ExtractFilePath(Application.ExeName)+'\logo\Kop Laporan.png';

    if FileExists(dirlogo) then
    begin
      TfrxPictureView(replr.FindObject('Picture1')).Picture.LoadFromFile(dirlogo);
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
    TfrxMemoView(replr.FindObject('periode')).Memo.Text:= FormatDateTime('dd mmmm yyyy',RzDateTimePicker1.Date)+ ' - '+FormatDateTime('dd mmmm yyyy',RzDateTimePicker2.Date);

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
