unit uakunkelaktiva;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBAccess, MyAccess,
  MemDS, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, RzTabs, Vcl.ExtCtrls,
  RzPanel;

type
  Tfoakunkelaktiva = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    MyQuery1: TMyQuery;
    MyDataSource1: TMyDataSource;
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
    cxGrid1DBTableView1kodeetap: TcxGridDBColumn;
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  foakunkelaktiva: Tfoakunkelaktiva;

implementation

{$R *.dfm}

uses udm;

procedure Tfoakunkelaktiva.FormShow(Sender: TObject);
begin
  MyQuery1.Close;
  MyQuery1.Open;
end;

procedure Tfoakunkelaktiva.RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
begin
  Self.Close;
end;

end.
