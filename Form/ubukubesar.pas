unit ubukubesar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxPC, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxCheckBox, cxLabel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, RzButton, dxDockPanel, dxDockControl,
  Vcl.ExtCtrls, RzPanel, RzTabs, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  dxSkinsDefaultPainters;

type
  Tfobukubesar = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1setorsimp: TRzPanel;
    RzPanel2: TRzPanel;
    dxDockSite1: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxLayoutDockSite3: TdxLayoutDockSite;
    dxDockPanel2: TdxDockPanel;
    RzPanel1: TRzPanel;
    RzToolButton1: TRzToolButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1idcoa: TcxGridDBColumn;
    cxGrid1DBTableView1idju: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1uraian: TcxGridDBColumn;
    cxGrid1DBTableView1kodeakun: TcxGridDBColumn;
    cxGrid1DBTableView1namaakun2: TcxGridDBColumn;
    cxGrid1DBTableView1noju: TcxGridDBColumn;
    cxGrid1DBTableView1debet: TcxGridDBColumn;
    cxGrid1DBTableView1kredit: TcxGridDBColumn;
    cxGrid1DBTableView1saldo: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    dxDockPanel1: TdxDockPanel;
    RzPanel3: TRzPanel;
    cxLabel8: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    cxCheckBox1: TcxCheckBox;
    combsk22: TcxComboBox;
    combsk21: TcxComboBox;
    combsk12: TcxComboBox;
    combsk11: TcxComboBox;
    combs22: TcxComboBox;
    combs21: TcxComboBox;
    combs12: TcxComboBox;
    combs11: TcxComboBox;
    cxLabel11: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel1: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    cxDateEdit1: TcxDateEdit;
    cxComboBox2: TcxComboBox;
    cxComboBox1: TcxComboBox;
    cxCheckBox2: TcxCheckBox;
    cxButton1: TcxButton;
    combid5: TcxComboBox;
    combid4: TcxComboBox;
    combid2: TcxComboBox;
    combid1: TcxComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    flageditchange,flagclear : byte;
    tgllastchange1,tgllastchange2 : TDate;
    { Private declarations }
  public
    { Public declarations }
    procedure isikodetahap;
    procedure isikodetahap2(id : integer; combo1,combo2,combo4,combo5: TcxComboBox);
    procedure isikodetahap3(id : integer; combo1,combo2 : TcxComboBox);
  end;

var
  fobukubesar: Tfobukubesar;

implementation

{$R *.dfm}

procedure Tfobukubesar.FormCreate(Sender: TObject);
begin
  flageditchange := 1;
  cxDateEdit1.Date := Date;
  cxDateEdit2.Date := Date;
  flageditchange := 0;
end;

procedure Tfobukubesar.FormShow(Sender: TObject);
begin
  flagclear := 1;
  dm.isicombo2('periodeposting',cxComboBox1,cxComboBox2);
  flagclear := 0;
  isikodetahap;
end;

procedure Tfobukubesar.isikodetahap;
begin
  dm.Qcek.Close;
  dm.Qcek.SQL.Clear;
  dm.Qcek.SQL.Add('Select * from tipe2 order by kodeakun');
  dm.Qcek.open;
  flagclear := 1;
  combs11.Properties.Items.Clear;
  combsk11.Properties.Items.Clear;
  combsk21.Properties.Items.Clear;
  combs21.Properties.Items.Clear;
  combs21.Properties.Items.Clear;
  combsk21.Properties.Items.Clear;
  combsk22.Properties.Items.Clear;
  combs22.Properties.Items.Clear;
  combid1.Properties.Items.Clear;
  combid2.Properties.Items.Clear;
  combid4.Properties.Items.Clear;
  combid5.Properties.Items.Clear;
  flagclear := 0;
  while not dm.Qcek.Eof do
  begin
    combs11.Properties.Items.Add(dm.Qcek['tipe2']);
    combsk11.Properties.Items.Add(dm.Qcek['kodeakun']);
    combs12.Properties.Items.Add(dm.Qcek['tipe2']);
    combsk12.Properties.Items.Add(dm.Qcek['kodeakun']);
    combid1.Properties.items.Add(dm.Qcek['idtipe2']);
    combid4.Properties.Items.Add(dm.Qcek['idtipe2']);
    dm.Qcek.Next;
  end;
end;


procedure Tfobukubesar.isikodetahap2(id: integer; combo1, combo2, combo4,
  combo5: TcxComboBox);
begin
  dm.Qcek.Close;
  dm.Qcek.SQL.Clear;
  dm.Qcek.SQL.Add('Select * from tipe3 where idtipe2=:id order by kodeakun');
  dm.Qcek.ParamByName('id').AsInteger := id;
  dm.Qcek.open;
  flagclear := 1;
  combo1.Properties.Items.Clear;
  combo2.Properties.Items.Clear;
  combo4.Properties.Items.Clear;
  combo5.Properties.Items.Clear;
  flagclear := 0;
  while not dm.Qcek.Eof do
  begin
    combo1.Properties.Items.Add(dm.Qcek['tipe3']);
    combo2.Properties.Items.Add(dm.Qcek['kodeakun']);
    dm.Qcek.Next;
  end;
end;

procedure Tfobukubesar.isikodetahap3(id: integer; combo1, combo2: TcxComboBox);
begin
  dm.Qcek.Close;
  dm.Qcek.SQL.Clear;
  dm.Qcek.SQL.Add('Select * from coa where idtipe3=:id order by kodeakun');
  dm.Qcek.ParamByName('id').AsInteger := id;
  dm.Qcek.open;
  flagclear := 1;
  combo1.Properties.Items.Clear;
  combo2.Properties.Items.Clear;
  flagclear := 0;
  while not dm.Qcek.Eof do
  begin
    combo1.Properties.Items.Add(dm.Qcek['namaakun']);
    combo2.Properties.Items.Add(dm.Qcek['kodeakun']);
    dm.Qcek.Next;
  end;
end;

end.
