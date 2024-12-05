unit ucaripinjaman;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxLabel, cxTextEdit, RzTabs, Vcl.ExtCtrls, RzPanel, DBAccess,
  MyAccess, MemDS, System.Actions, Vcl.ActnList;

type
  Tfocaripinjaman = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Qtag: TMyQuery;
    Ddtag: TMyDataSource;
    Qtagnopinjaman: TStringField;
    Qtagidanggota: TIntegerField;
    Qtagnamaanggota: TStringField;
    Qtagnamakolektif: TStringField;
    Qtagjumlahbulan: TFloatField;
    cxGrid1DBTableView1nopinjaman: TcxGridDBColumn;
    cxGrid1DBTableView1namaanggota: TcxGridDBColumn;
    cxGrid1DBTableView1namakolektif: TcxGridDBColumn;
    cxGrid1DBTableView1jumlahbulan: TcxGridDBColumn;
    ActionList1: TActionList;
    enter: TAction;
    esc: TAction;
    procedure FormShow(Sender: TObject);
    procedure enterExecute(Sender: TObject);
    procedure escExecute(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  focaripinjaman: Tfocaripinjaman;

implementation

{$R *.dfm}

procedure Tfocaripinjaman.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    ModalResult := mrOk;
end;

procedure Tfocaripinjaman.cxTextEdit1PropertiesChange(Sender: TObject);
begin
  if cxTextEdit1.Text <> '' then
  begin
    Qtag.Close;
    Qtag.SQL.Clear;
    Qtag.SQL.Add(Qtag.SQLRefresh.Text);
    Qtag.SQL.Add('AND c.namaanggota like :nama');
    Qtag.ParamByName('nama').AsString :='%' + cxTextEdit1.Text + '%';
    Qtag.sql.Add('ORDER BY nopinjaman');
    Qtag.Open;
  end
  else
  begin
    Qtag.Close;
    Qtag.SQL.Clear;
    Qtag.SQL.Add(Qtag.SQLRefresh.Text);
    Qtag.sql.Add('ORDER BY nopinjaman');
    Qtag.Open;
  end;
end;

procedure Tfocaripinjaman.enterExecute(Sender: TObject);
begin
  if cxTextEdit1.Focused then
  begin
    cxGrid1.SetFocus;
  end
  else if cxGrid1DBTableView1.Focused then
  begin
    ModalResult := mrOk;
  end;
end;

procedure Tfocaripinjaman.escExecute(Sender: TObject);
begin
  Close;
end;

procedure Tfocaripinjaman.FormShow(Sender: TObject);
begin
  cxTextEdit1.Text := '';
  Qtag.Close;
  Qtag.SQL.Clear;
  Qtag.SQL.Add(Qtag.SQLRefresh.Text);
  Qtag.sql.Add('ORDER BY nopinjaman');
  Qtag.Open;
  cxTextEdit1.SetFocus;
end;

end.
