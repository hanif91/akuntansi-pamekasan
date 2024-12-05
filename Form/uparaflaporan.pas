unit uparaflaporan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.ExtCtrls, RzPanel, udm,
  utambahlap, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, System.Actions, Vcl.ActnList, Vcl.Menus, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, MemDS, DBAccess,
  MyAccess, RzButton, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxBarBuiltInMenu, dxSkinsDefaultPainters, scDevExStyleAdapter;

type
  Tfoparaflaporan = class(TForm)
    Duser: TMyDataSource;
    Quser: TMyQuery;
    Quserkode: TStringField;
    Qusernamalap: TStringField;
    Qusernama1: TStringField;
    Quserjab1: TStringField;
    Qusernik1: TStringField;
    Qusernama2: TStringField;
    Quserjab2: TStringField;
    Qusernik2: TStringField;
    Qusernama3: TStringField;
    Quserjab3: TStringField;
    Qusernik3: TStringField;
    Quserid: TIntegerField;
    cxGridPopupMenu1: TcxGridPopupMenu;
    PopupMenu1: TPopupMenu;
    Koreksi1: TMenuItem;
    Hapus1: TMenuItem;
    ActionList1: TActionList;
    enter: TAction;
    ins: TAction;
    del: TAction;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzToolButton1: TRzToolButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1kode: TcxGridDBColumn;
    cxGrid1DBTableView1namalap: TcxGridDBColumn;
    cxGrid1DBTableView1nama1: TcxGridDBColumn;
    cxGrid1DBTableView1jab1: TcxGridDBColumn;
    cxGrid1DBTableView1nik1: TcxGridDBColumn;
    cxGrid1DBTableView1nama2: TcxGridDBColumn;
    cxGrid1DBTableView1jab2: TcxGridDBColumn;
    cxGrid1DBTableView1nik2: TcxGridDBColumn;
    cxGrid1DBTableView1nama3: TcxGridDBColumn;
    cxGrid1DBTableView1jab3: TcxGridDBColumn;
    cxGrid1DBTableView1nik3: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Quserheader1: TStringField;
    Quserheader2: TStringField;
    Quserheader3: TStringField;
    Quserheader4: TStringField;
    Qusernama4: TStringField;
    Quserjab4: TStringField;
    Qusernik4: TStringField;
    cxGrid1DBTableView1header1: TcxGridDBColumn;
    cxGrid1DBTableView1header2: TcxGridDBColumn;
    cxGrid1DBTableView1header3: TcxGridDBColumn;
    cxGrid1DBTableView1header4: TcxGridDBColumn;
    cxGrid1DBTableView1nama4: TcxGridDBColumn;
    N1: TMenuItem;
    Refresh1: TMenuItem;
    procedure RzToolButton1Click(Sender: TObject);
    procedure Koreksi1Click(Sender: TObject);
    procedure Hapus1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  foparaflaporan: Tfoparaflaporan;

implementation

{$R *.dfm}

procedure Tfoparaflaporan.FormShow(Sender: TObject);
begin
  Quser.Close;
  Quser.Open;
end;

procedure Tfoparaflaporan.Hapus1Click(Sender: TObject);
begin
  if MessageDlg('Yakin Mengahpus Laporan "'+Qusernamalap.Value+'" ini ?',mtWarning,[mbyes,mbNo],0)=mryes then
  begin
    with dm do
    begin
      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('delete from ttdlap where id=:id');
      Qex.ParamByName('id').AsInteger := Quserid.Value;
      Qex.Execute;

      Quser.Refresh;
    end;
  end;
end;

procedure Tfoparaflaporan.Koreksi1Click(Sender: TObject);
begin
  fotambahlap.mode := 1;
  fotambahlap.isicombo;
  fotambahlap.id := Quserid.Value;
  fotambahlap.kode := Quserkode.Value;
  fotambahlap.txtnama.Text := Qusernamalap.Value;
  fotambahlap.txtkode.Text := Quserkode.Value;
  fotambahlap.cxTextEdit4.Text := Quserheader1.Value;
  fotambahlap.cxTextEdit1.Text := Quserheader2.Value;
  fotambahlap.cxTextEdit2.Text := Quserheader3.Value;
  fotambahlap.cxTextEdit3.Text := Quserheader4.Value;
  fotambahlap.comb1.ItemIndex :=  fotambahlap.comb1.Properties.Items.IndexOf(Qusernama1.Value);
  fotambahlap.comb2.ItemIndex := fotambahlap.comb1.ItemIndex;
  fotambahlap.comb3.ItemIndex :=  fotambahlap.comb3.Properties.Items.IndexOf(Qusernama2.Value);
  fotambahlap.comb4.ItemIndex := fotambahlap.comb3.ItemIndex;
  fotambahlap.comb5.ItemIndex :=  fotambahlap.comb5.Properties.Items.IndexOf(Qusernama3.Value);
  fotambahlap.comb6.ItemIndex := fotambahlap.comb5.ItemIndex;
  fotambahlap.comb7.ItemIndex :=  fotambahlap.comb7.Properties.Items.IndexOf(Qusernama4.Value);
  fotambahlap.comb8.ItemIndex := fotambahlap.comb7.ItemIndex;
  if fotambahlap.ShowModal=mrok then
  begin
    Quser.Refresh;
  end;
end;

procedure Tfoparaflaporan.Refresh1Click(Sender: TObject);
begin
  Quser.Close;
  Quser.Open;
end;

procedure Tfoparaflaporan.RzToolButton1Click(Sender: TObject);
begin
  fotambahlap.mode := 0;
  fotambahlap.isicombo;
  if fotambahlap.ShowModal=mrok then
  begin
    Quser.Refresh;
  end;
end;

end.
