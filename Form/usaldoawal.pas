unit usaldoawal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxPC, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxCurrencyEdit, DBAccess, MyAccess, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel,
  dxDockPanel, dxDockControl, Vcl.ExtCtrls, RzPanel, RzTabs, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  dxSkinsDefaultPainters, scDevExStyleAdapter, Vcl.Mask, RzEdit, Vcl.ComCtrls,
  RzDTP;

type
  Tfosaldoawal = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1setorsimp: TRzPanel;
    RzPanel2: TRzPanel;
    dxDockSite1: TdxDockSite;
    dxLayoutDockSite2: TdxLayoutDockSite;
    dxDockPanel2: TdxDockPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1tipe3: TcxGridDBColumn;
    cxGrid1DBTableView1kodeakun: TcxGridDBColumn;
    cxGrid1DBTableView1namaakun: TcxGridDBColumn;
    cxGrid1DBTableView1bln12: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Qsa: TMyQuery;
    dsa: TMyDataSource;
    Qsaidcoa: TIntegerField;
    Qsakodeakun: TStringField;
    Qsanamaakun: TStringField;
    Qsablnini: TFloatField;
    Qsatipe3: TStringField;
    Qsatipe1: TStringField;
    cxGrid1DBTableView1tipe1: TcxGridDBColumn;
    Qsatipe2: TStringField;
    cxGrid1DBTableView1tipe2: TcxGridDBColumn;
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    RzDateTimePicker1: TRzDateTimePicker;
    Qsatahun: TIntegerField;
    cxGrid1DBTableView1tahun: TcxGridDBColumn;
    procedure cxButton5Click(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure cxGrid1DBTableView1CanFocusRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure cxGrid1DBTableView1CanSelectRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    kolomaktif : TcxGridColumn;
  public
    { Public declarations }
    procedure visiblecolom;
  end;

var
  fosaldoawal: Tfosaldoawal;

implementation
uses strutils,dateutils;

{$R *.dfm}


procedure Tfosaldoawal.Button1Click(Sender: TObject);
begin
  try
      Qsa.Close;
      Qsa.ParamByName('tahun').AsInteger := YearOf(RzDateTimePicker1.Date);
      Qsa.Open;
      cxGrid1.SetFocus;
      cxGrid1DBTableView1.Controller.FocusedRowIndex := 1;
      cxGrid1DBTableView1.Controller.FocusedColumn := cxGrid1DBTableView1bln12;
  finally
    //  kolomaktif.Free;
  end;  //dm.isicombo2('periodeposting',cxComboBox1,cxComboBox2);
end;

procedure Tfosaldoawal.cxButton5Click(Sender: TObject);
begin
  cxGrid1.SetFocus;
  cxGrid1DBTableView1.Controller.FocusedRowIndex := 1;
  cxGrid1DBTableView1.Controller.FocusedColumn := kolomaktif;
end;

procedure Tfosaldoawal.cxComboBox1PropertiesChange(Sender: TObject);
begin
  // cxComboBox2.ItemIndex := cxComboBox1.ItemIndex;
end;

procedure Tfosaldoawal.cxGrid1DBTableView1CanFocusRecord(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  var AAllow: Boolean);
begin
  if ARecord is TcxGridGroupRow then
    AAllow := False
  else
    AAllow := True;
end;

procedure Tfosaldoawal.cxGrid1DBTableView1CanSelectRecord(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  var AAllow: Boolean);
begin
  if ARecord is TcxGridGroupRow then
    AAllow := False
  else
    AAllow := True;
end;

procedure Tfosaldoawal.FormCreate(Sender: TObject);
begin
  RzDateTimePicker1.Date := Date;
end;

procedure Tfosaldoawal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_f5 then
  begin
     try
      Qsa.Close;
      Qsa.Open;
      cxGrid1.SetFocus;
      cxGrid1DBTableView1.Controller.FocusedRowIndex := 1;
      cxGrid1DBTableView1.Controller.FocusedColumn := cxGrid1DBTableView1bln12;
    finally
    //  kolomaktif.Free;
    end;
  end;
end;

procedure Tfosaldoawal.visiblecolom;
begin

end;

end.
