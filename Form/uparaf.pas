unit uparaf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinFoggy, dxSkiniMaginary,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, DBAccess, MyAccess, MemDS,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinsDefaultPainters;

type
  Tfoparaf = class(TForm)
    Qttd: TMyQuery;
    Qttdid: TIntegerField;
    Qttdnama: TStringField;
    Qttdjabatan: TStringField;
    Qttdnik: TStringField;
    Dttd: TMyDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1jabatan: TcxGridDBColumn;
    cxGrid1DBTableView1nik: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  foparaf: Tfoparaf;

implementation

{$R *.dfm}

uses udm;

procedure Tfoparaf.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_escape then
  begin
    Self.Close;
  end;
end;

procedure Tfoparaf.FormShow(Sender: TObject);
begin
  Qttd.Close;
  Qttd.Open;
end;

end.
