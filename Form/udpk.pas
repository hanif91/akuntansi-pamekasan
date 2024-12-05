unit udpk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxPC, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxMemo, Vcl.Menus,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxTextEdit,
  cxCheckBox, cxLabel, cxMaskEdit, cxCalendar, Vcl.StdCtrls, cxButtons,
  RzButton, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, DBAccess, MyAccess,
  MemDS, dxDockPanel, dxDockControl, Vcl.ExtCtrls, RzPanel, RzTabs, utambahju,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarBuiltInMenu,
  cxCurrencyEdit, dxSkinsDefaultPainters;

type
  Tfodpk = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1setorsimp: TRzPanel;
    RzPanel2: TRzPanel;
    dxDockSite1: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxDockPanel1: TdxDockPanel;
    dxDockPanel2: TdxDockPanel;
    dxLayoutDockSite3: TdxLayoutDockSite;
    RzPanel1: TRzPanel;
    Qdju: TMyQuery;
    ddju: TMyDataSource;
    Dju: TMyDataSource;
    Qju: TMyQuery;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1idju: TcxGridDBColumn;
    cxGrid1DBTableView1tipejurnal: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1penjelasan: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    RzToolButton1: TRzToolButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1namaakun: TcxGridDBColumn;
    cxGridDBTableView1kredit: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxComboBox1: TcxComboBox;
    cxComboBox2: TcxComboBox;
    cxLabel1: TcxLabel;
    Qjutanggal: TDateField;
    Qjujumlahtunai: TFloatField;
    Qjujumlahnontunai: TFloatField;
    Qjujumlahsetor: TFloatField;
    Qjusisabelumsetor: TFloatField;
    cxGrid1DBTableView1jumlahtunai: TcxGridDBColumn;
    cxGrid1DBTableView1jumlahnontunai: TcxGridDBColumn;
    cxGrid1DBTableView1jumlahsetor: TcxGridDBColumn;
    cxGrid1DBTableView1sisabelumsetor: TcxGridDBColumn;
    Qjujumlah: TFloatField;
    cxGrid1DBTableView1jumlah: TcxGridDBColumn;
    Qdjuketerangan: TStringField;
    Qdjujumlah: TFloatField;
    PopupMenu1: TPopupMenu;
    HapusDataPenerimaan1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure RzToolButton1Click(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure HapusDataPenerimaan1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fodpk: Tfodpk;

implementation
uses strutils;

{$R *.dfm}

procedure Tfodpk.cxComboBox1PropertiesChange(Sender: TObject);
begin
  cxComboBox2.ItemIndex := cxComboBox1.ItemIndex;
end;

procedure Tfodpk.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Qdju.Close;
  Qdju.SQL.Clear;
  Qdju.SQL.Add(Qdju.SQLRefresh.Text);
  Qdju.ParamByName('tanggal').AsDate := Qjutanggal.Value;
  Qdju.Open;
end;

procedure Tfodpk.FormShow(Sender: TObject);
begin
  dm.isicombo2('periodeposting',cxComboBox1,cxComboBox2);
end;

procedure Tfodpk.HapusDataPenerimaan1Click(Sender: TObject);
begin
  if MessageDlg('Menghapus data penerimaan mengakibatkan juga akan menghapus data setoran kas.!'+#13+
  'Yakin Akan menghapus data penerimaan tanggal : "'+Qjutanggal.Text+'" ini ?',mtWarning,[mbNo,mbYes],0)=mrYes then
  begin
    try
      with dm do
      begin
        Conn1.StartTransaction;

        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('DELETE FROM dpk WHERE tanggal=:tgl;');
        Qex.SQL.Add('DELETE FROM setorkas WHERE tanggal=:tgl;');
        Qex.ParamByName('tgl').AsDate := Qjutanggal.Value;
        Qex.Execute;

        Conn1.Commit;
      end;

      Qju.Close;
      Qju.Open;
    except
      on e:exception do
      begin
        dm.Conn1.Rollback;
      end;

    end;
  end;

end;

procedure Tfodpk.RzToolButton1Click(Sender: TObject);
begin
  Qju.Close;
  Qju.SQL.Clear;
  Qju.SQL.Add(Qju.SQLRefresh.Text);
  Qju.ParamByName('periode').AsString := cxComboBox2.Text;
  Qju.Open;
end;

end.
