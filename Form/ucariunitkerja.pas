unit ucariunitkerja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxContainer, cxLabel, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, MemDS, DBAccess, MyAccess, System.Actions,
  Vcl.ActnList, RzTabs, Vcl.ExtCtrls, RzPanel, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  dxSkinsDefaultPainters;

type
  Tfocariuk = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    ActionList1: TActionList;
    enter: TAction;
    esc: TAction;
    Dcoa: TMyDataSource;
    Qcoa: TMyQuery;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Qcoaidunit: TIntegerField;
    Qcoakodeunit: TStringField;
    Qcoanamaunit: TStringField;
    cxGrid1DBTableView1idunit: TcxGridDBColumn;
    cxGrid1DBTableView1kodeunit: TcxGridDBColumn;
    cxGrid1DBTableView1namaunit: TcxGridDBColumn;
    procedure escExecute(Sender: TObject);
    procedure enterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    mode : byte;
  end;

var
  focariuk: Tfocariuk;

implementation

{$R *.dfm}

procedure Tfocariuk.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    ModalResult := mrOk;
end;

procedure Tfocariuk.enterExecute(Sender: TObject);
begin
  if cxGrid1DBTableView1.Focused then
  begin
    ModalResult := mrOk;
  end;
end;

procedure Tfocariuk.escExecute(Sender: TObject);
begin
  Close;
end;

procedure Tfocariuk.FormShow(Sender: TObject);
begin
  Qcoa.Close;
  Qcoa.SQL.Clear;
  Qcoa.SQL.Add('select * from unit_kerja order by kodeunit');
  Qcoa.Open;
  cxGrid1.SetFocus;
end;

procedure Tfocariuk.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  self.Close;
end;

end.
