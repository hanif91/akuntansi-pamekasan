unit uanggaranpu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxPC, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLabel, Vcl.Menus, MemDS, DBAccess, MyAccess, System.Actions, Vcl.ActnList,
  dxDockControl, dxDockPanel, Vcl.ExtCtrls, RzPanel, RzTabs, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  dxSkinsDefaultPainters, scDevExStyleAdapter, Vcl.StdCtrls, Vcl.ComCtrls, RzDTP;

type
  Tfoanggaranpu = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1setorsimp: TRzPanel;
    RzPanel2: TRzPanel;
    dxDockSite1: TdxDockSite;
    dxDockPanel1: TdxDockPanel;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxDockPanel3: TdxDockPanel;
    dxLayoutDockSite3: TdxLayoutDockSite;
    Dkode: TMyDataSource;
    ActionList1: TActionList;
    enter: TAction;
    ins: TAction;
    del: TAction;
    esc: TAction;
    Qkode: TMyQuery;
    PopupMenu1: TPopupMenu;
    Bulanan1: TMenuItem;
    tahunan1: TMenuItem;
    Dang: TMyDataSource;
    Qang: TMyQuery;
    Qangperiode: TStringField;
    Qanganggaran: TFloatField;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1idcoa: TcxGridDBColumn;
    cxGridDBTableView1periode: TcxGridDBColumn;
    cxGridDBTableView1anggaran: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Qkodeid: TIntegerField;
    Qkodesub1: TStringField;
    Qkodesub2: TStringField;
    Qkodenamatipe: TStringField;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1sub1: TcxGridDBColumn;
    cxGrid1DBTableView1sub2: TcxGridDBColumn;
    cxGrid1DBTableView1namatipe: TcxGridDBColumn;
    Panel1: TPanel;
    RzDateTimePicker1: TRzDateTimePicker;
    Label1: TLabel;
    Qangidaruskas: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CanFocusRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure cxGrid1DBTableView1CanSelectRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure enterExecute(Sender: TObject);
    procedure cxComboBox1PropertiesCloseUp(Sender: TObject);
    procedure Bulanan1Click(Sender: TObject);
    procedure RzDateTimePicker1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  foanggaranpu: Tfoanggaranpu;

implementation
uses dateutils;

{$R *.dfm}

procedure Tfoanggaranpu.Bulanan1Click(Sender: TObject);
begin
  cxGrid1.SetFocus;
end;

procedure Tfoanggaranpu.cxComboBox1PropertiesCloseUp(Sender: TObject);
begin
  dm.focusgrid(cxGrid1,cxGrid1DBTableView1,1);
end;

procedure Tfoanggaranpu.cxGrid1DBTableView1CanFocusRecord(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  var AAllow: Boolean);
begin
  if ARecord is TcxGridGroupRow then
    AAllow := False
  else
    AAllow := True;
end;

procedure Tfoanggaranpu.cxGrid1DBTableView1CanSelectRecord(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  var AAllow: Boolean);
begin
  if ARecord is TcxGridGroupRow then
    AAllow := False
  else
    AAllow := True;
end;

procedure Tfoanggaranpu.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
    Qang.Close;
    Qang.SQL.Clear;
    Qang.sql.Add(Qang.SQLRefresh.Text);
    Qang.ParamByName('id').AsInteger := Qkodeid.Value;
    Qang.ParamByName('thn').AsInteger := YearOf(RzDateTimePicker1.Date);
    Qang.Open;
end;

procedure Tfoanggaranpu.enterExecute(Sender: TObject);
begin
    if cxGrid1DBTableView1.Focused then
    begin
      dm.focusgrid(cxGrid2,cxGridDBTableView1,0);
      cxGridDBTableView1.Columns[2].Selected := true;
    end
end;

procedure Tfoanggaranpu.FormShow(Sender: TObject);
begin
  Qang.Close;
  qkode.Close;
  Qkode.Open;
  cxGrid1.SetFocus;
  RzDateTimePicker1.Date := EncodeDate(YearOf(date),MonthOf(date),1);


end;

procedure Tfoanggaranpu.RzDateTimePicker1Change(Sender: TObject);
begin
  Qang.Close;
  Qang.SQL.Clear;
  Qang.sql.Add(Qang.SQLRefresh.Text);
  Qang.ParamByName('id').AsInteger := Qkodeid.Value;
  Qang.ParamByName('thn').AsInteger := YearOf(RzDateTimePicker1.Date);
  Qang.Open;
end;

end.
