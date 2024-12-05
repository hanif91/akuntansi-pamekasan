unit ugolaktiva;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBAccess, MyAccess,
  MemDS, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  Tfogolaktiva = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    MyQuery1: TMyQuery;
    MyDataSource1: TMyDataSource;
    MyQuery1golaktiva: TIntegerField;
    MyQuery1uraian: TStringField;
    MyQuery1jmltahun: TFloatField;
    MyQuery1jmlpersen: TFloatField;
    MyQuery1kodesusut: TStringField;
    cxGrid1DBTableView1golaktiva: TcxGridDBColumn;
    cxGrid1DBTableView1uraian: TcxGridDBColumn;
    cxGrid1DBTableView1jmltahun: TcxGridDBColumn;
    cxGrid1DBTableView1jmlpersen: TcxGridDBColumn;
    cxGrid1DBTableView1kodesusut: TcxGridDBColumn;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fogolaktiva: Tfogolaktiva;

implementation

{$R *.dfm}

uses udm;

procedure Tfogolaktiva.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_escape then
  begin
    Self.Close;
  end;
end;

procedure Tfogolaktiva.FormShow(Sender: TObject);
begin
  MyQuery1.Close;
  MyQuery1.Open;
end;

end.
