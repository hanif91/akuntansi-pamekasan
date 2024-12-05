unit ukelaktiva;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, MemDS, DBAccess, MyAccess;

type
  Tfokelaktiva = class(TForm)
    MyDataSource1: TMyDataSource;
    MyQuery1: TMyQuery;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    MyQuery1idcoa: TIntegerField;
    MyQuery1kodeakun: TStringField;
    MyQuery1namaakun: TStringField;
    MyQuery1idtipe3: TIntegerField;
    MyQuery1idtipearuskas_l: TIntegerField;
    MyQuery1kodeetap: TStringField;
    MyQuery1kodebiayaetap: TStringField;
    cxGrid1DBTableView1idcoa: TcxGridDBColumn;
    cxGrid1DBTableView1kodeakun: TcxGridDBColumn;
    cxGrid1DBTableView1namaakun: TcxGridDBColumn;
    cxGrid1DBTableView1idtipe3: TcxGridDBColumn;
    cxGrid1DBTableView1kodeetap: TcxGridDBColumn;
    cxGrid1DBTableView1kodebiayaetap: TcxGridDBColumn;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fokelaktiva: Tfokelaktiva;

implementation

{$R *.dfm}

uses udm;

procedure Tfokelaktiva.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_escape then
  begin
    Self.Close;
  end;
end;

procedure Tfokelaktiva.FormShow(Sender: TObject);
begin
  MyQuery1.Close;
  MyQuery1.Open;
end;

end.
