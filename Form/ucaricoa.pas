unit ucaricoa;

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
  Tfocaricoa = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    ActionList1: TActionList;
    enter: TAction;
    esc: TAction;
    Dcoa: TMyDataSource;
    Qcoa: TMyQuery;
    Qcoaidcoa: TIntegerField;
    Qcoakodeakun: TStringField;
    Qcoanamaakun: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1kodeakun: TcxGridDBColumn;
    cxGrid1DBTableView1namaakun: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    Qcoaflagunit: TSmallintField;
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
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
  focaricoa: Tfocaricoa;

implementation
uses udm, ucariunitkerja;

{$R *.dfm}

procedure Tfocaricoa.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if Qcoa.FieldByName('flagunit').AsInteger=1 then
  begin
    if focariuk.ShowModal=mrok then
    begin
      kodeunitinput := focariuk.Qcoakodeunit.Value;
      ModalResult := mrOk;
    end;

  end
  else
  begin
    kodeunitinput := '00';
    ModalResult := mrOk;
  end;
end;

procedure Tfocaricoa.cxTextEdit1PropertiesChange(Sender: TObject);
begin
  if mode=0 then
  begin
    if cxTextEdit1.Text <> '' then
    begin
      Qcoa.Close;
      Qcoa.SQL.Clear;
      Qcoa.SQL.Add('select * from masterakun where namaakun like :namaakun order by kodeakun');
      Qcoa.ParamByName('namaakun').AsString := '%'+cxTextEdit1.Text+'%';
      Qcoa.Open;
    end
    else
    begin
      Qcoa.Close;
      Qcoa.SQL.Clear;
      Qcoa.SQL.Add('select * from masterakun order by kodeakun');
      Qcoa.Open;
    end;
  end
  else if mode=1 then
  begin
    if cxTextEdit1.Text <> '' then
    begin
      Qcoa.Close;
      Qcoa.SQL.Clear;
      Qcoa.SQL.Add('select * from masterakun where namaakun like :namaakun and tipe1<>"PENDAPATAN"  order by kodeakun');
      Qcoa.ParamByName('namaakun').AsString := '%'+cxTextEdit1.Text+'%';
      Qcoa.Open;
    end
    else
    begin
      Qcoa.Close;
      Qcoa.SQL.Clear;
      Qcoa.SQL.Add('select * from masterakun where tipe1<>"PENDAPATAN" order by kodeakun');
      Qcoa.Open;
    end;
  end;
end;

procedure Tfocaricoa.enterExecute(Sender: TObject);
begin
  if cxTextEdit1.Focused then
  begin
    cxGrid1.SetFocus;
  end
  else if cxGrid1DBTableView1.Focused then
  begin
    if Qcoa.FieldByName('flagunit').AsInteger=1 then
    begin
      if focariuk.ShowModal=mrok then
      begin
        kodeunitinput := focariuk.Qcoakodeunit.Value;
        ModalResult := mrOk;
      end;

    end
    else
    begin
      kodeunitinput := '00';
      ModalResult := mrOk;
    end;

  end;
end;

procedure Tfocaricoa.escExecute(Sender: TObject);
begin
Close;
end;

procedure Tfocaricoa.FormShow(Sender: TObject);
begin
  if mode=0 then
  begin
      Qcoa.Close;
      Qcoa.SQL.Clear;
      Qcoa.SQL.Add('select * from masterakun order by kodeakun');
      Qcoa.Open;
  end
  else if mode=1 then
  begin
      Qcoa.Close;
      Qcoa.SQL.Clear;
      Qcoa.SQL.Add('select * from masterakun where tipe1<>"PENDAPATAN" order by kodeakun');
      Qcoa.Open;
  end;
  cxTextEdit1.clear;
  cxTextEdit1.SetFocus;
end;

procedure Tfocaricoa.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  self.Close;
end;

end.
