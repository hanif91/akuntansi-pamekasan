unit uedithakakses;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkiniMaginary, dxSkinMetropolisDark,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, DB, cxDBData, cxCheckBox, Menus, StdCtrls,
  cxButtons, DBAccess, MyAccess, dxmdaset, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxSkinBlueprint, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light,
  cxDataControllerConditionalFormattingRulesManagerDialog, udm, RzButton,
  RzTabs, Vcl.ExtCtrls, RzPanel, dxSkinFoggy;

type
  Tfoedithakakses = class(TForm)
    dxMemdata1: TdxMemData;
    dxMemdata1iddm: TIntegerField;
    dxMemdata1idmu: TIntegerField;
    dxMemdata1namadm: TStringField;
    dxMemdata1iduser: TIntegerField;
    dxMemdata1flag: TIntegerField;
    dxMemdata1group1: TStringField;
    MyDataSource1: TMyDataSource;
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    btnsimpan: TRzToolButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1iddm: TcxGridDBColumn;
    cxGrid1DBTableView1idmu: TcxGridDBColumn;
    cxGrid1DBTableView1namadm: TcxGridDBColumn;
    cxGrid1DBTableView1iduser: TcxGridDBColumn;
    cxGrid1DBTableView1flag: TcxGridDBColumn;
    cxGrid1DBTableView1group1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxButton1: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1flagPropertiesChange(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  foedithakakses: Tfoedithakakses;

implementation

{$R *.dfm}

procedure Tfoedithakakses.cxButton1Click(Sender: TObject);
begin
  ModalResult := mrok;
end;

procedure Tfoedithakakses.cxGrid1DBTableView1flagPropertiesChange(
  Sender: TObject);
begin
  cxGrid1.Refresh;
end;

procedure Tfoedithakakses.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  self.Close;
end;

end.
