unit uvocerbayar;

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
  MemDS, dxDockPanel, dxDockControl, Vcl.ExtCtrls, RzPanel, RzTabs,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarBuiltInMenu,
  cxImageComboBox, dxSkinsDefaultPainters, scDevExStyleAdapter;

type
  Tfovocerbayar = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1setorsimp: TRzPanel;
    RzPanel2: TRzPanel;
    dxDockSite1: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxDockPanel1: TdxDockPanel;
    dxDockPanel4: TdxDockPanel;
    dxLayoutDockSite4: TdxLayoutDockSite;
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
    cxGrid1DBTableView1notrans: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1uraian: TcxGridDBColumn;
    cxGrid1DBTableView1penjelasan: TcxGridDBColumn;
    cxGrid1DBTableView1jumlah: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxButton5: TcxButton;
    cxDateEdit2: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxCheckBox2: TcxCheckBox;
    cxTextEdit1: TcxTextEdit;
    cxCheckBox1: TcxCheckBox;
    cxGridPopupMenu1: TcxGridPopupMenu;
    PopupMenu1: TPopupMenu;
    Koreksi1: TMenuItem;
    Qjuidvoucher: TIntegerField;
    Qjunotrans: TStringField;
    Qjutanggal: TDateField;
    Qjubagian: TStringField;
    Qjutujuan: TStringField;
    Qjuuraian: TStringField;
    Qjuatasnama: TStringField;
    Qjupenjelasan: TMemoField;
    Qjujumlah: TFloatField;
    Qjutypebayar: TStringField;
    Qjuflaglunas: TStringField;
    Qjutglpost: TDateTimeField;
    cxGrid1DBTableView1bagian: TcxGridDBColumn;
    cxGrid1DBTableView1typebayar: TcxGridDBColumn;
    cxGrid1DBTableView1flaglunas: TcxGridDBColumn;
    cxCheckBox5: TcxCheckBox;
    cxTextEdit2: TcxTextEdit;
    RzToolButton1: TRzToolButton;
    Qdjunamabank: TStringField;
    Qdjutermin: TIntegerField;
    Qdjutglbayar: TDateField;
    Qdjujmlbayar: TFloatField;
    Qdjunotrans: TStringField;
    cxGridDBTableView1namabank: TcxGridDBColumn;
    cxGridDBTableView1termin: TcxGridDBColumn;
    cxGridDBTableView1tglbayar: TcxGridDBColumn;
    cxGridDBTableView1jmlbayar: TcxGridDBColumn;
    cxGridDBTableView1notrans: TcxGridDBColumn;
    MyQuery1: TMyQuery;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    MyDataSource1: TMyDataSource;
    Qjuflagusulan: TSmallintField;
    Qjutglusulan: TDateField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxCheckBox2Click(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure RzToolButton1Click(Sender: TObject);
    procedure Koreksi1Click(Sender: TObject);
    procedure cxCheckBox5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fovocerbayar: Tfovocerbayar;

implementation
uses strutils, upbayarvocer;

{$R *.dfm}

procedure Tfovocerbayar.cxButton5Click(Sender: TObject);
begin
  Qju.Close;
  Qju.SQL.Clear;
  Qju.SQL.Add(Qju.SQLRefresh.Text);
  if cxCheckBox1.Checked then
  begin
    Qju.SQL.Add('and notrans like :notrans ');
    Qju.ParamByName('notrans').AsString := '%'+cxTextEdit1.Text+'%';
  end;
  if cxCheckBox2.Checked then
  begin
    Qju.SQL.Add('and tanggal between :tgl1 and :tgl2 ');
    Qju.ParamByName('tgl1').AsDate := cxDateEdit1.Date;
    Qju.ParamByName('tgl2').AsDate := cxDateEdit2.Date;
  end;
  if cxCheckBox5.Checked then
  begin
    Qju.SQL.Add('and uraian like :uraian');
    Qju.ParamByName('uraian').AsString := '%'+cxTextEdit2.Text+'%';
  end;
  Qju.SQL.Add('order by notrans');
  Qju.Open;
  cxGrid1.SetFocus;
  cxGrid1DBTableView1.Controller.FocusedRowIndex := 0;
  cxGrid1DBTableView1.Controller.FocusedColumnIndex := 0;
end;

procedure Tfovocerbayar.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked then
  begin
    cxTextEdit1.Enabled := True;
    cxTextEdit1.SetFocus;
  end
  else
  begin
    cxTextEdit1.Enabled := False;
  end;
end;

procedure Tfovocerbayar.cxCheckBox2Click(Sender: TObject);
begin
  if cxCheckBox2.Checked then
  begin
    cxDateEdit1.Enabled := True;
    cxDateEdit2.Enabled := True;
    cxDateEdit1.SetFocus;
  end
  else
  begin
    cxDateEdit1.Enabled := false;
    cxDateEdit2.Enabled := false;
  end;
end;

procedure Tfovocerbayar.cxCheckBox5Click(Sender: TObject);
begin
  if cxCheckBox5.Checked then
  begin
    cxTextEdit2.Enabled := True;
    cxTextEdit2.SetFocus;
  end
  else
  begin
    cxTextEdit2.Enabled := false;
    cxTextEdit2.Enabled := false;
  end;
end;

procedure Tfovocerbayar.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Qdju.Close;
  Qdju.SQL.Clear;
  Qdju.SQL.Add(Qdju.SQLRefresh.Text);
  Qdju.ParamByName('notrans').AsString := Qjunotrans.Value;
  Qdju.Open;
end;

procedure Tfovocerbayar.FormCreate(Sender: TObject);
begin
  cxDateEdit1.Date := Date;
  cxDateEdit2.Date := Date;
end;

procedure Tfovocerbayar.FormShow(Sender: TObject);
begin
  cxButton5.Click;
end;

procedure Tfovocerbayar.Koreksi1Click(Sender: TObject);
begin
  fopbayarvocer.notrans.text := Qjunotrans.Value;

  fopbayarvocer.tanggal.Date := Qjutanggal.Value;
  fopbayarvocer.uraian.Text := Qjuuraian.Value;
  fopbayarvocer.RzNumericEdit1.Value := Qjujumlah.Value;
  fopbayarvocer.RzNumericEdit2.Value := Qjujumlah.Value;
  fopbayarvocer.RzNumericEdit3.Value := Qjujumlah.Value;
  if Qjutypebayar.Text='KREDIT' then
  begin
    fopbayarvocer.RzRadioGroup1.ItemIndex := 1;
    fopbayarvocer.RzRadioGroup1.Enabled := false;
    fopbayarvocer.cektermin;
    fopbayarvocer.onkliktermin;
  end
  else
  begin
    fopbayarvocer.RzRadioGroup1.ItemIndex := 0;
    fopbayarvocer.RzRadioGroup1.Enabled := true;
    fopbayarvocer.RzNumericEdit4.Value := 0;
  end;
  if fopbayarvocer.ShowModal=mrok then
  begin
    Qju.Refresh;
    Qdju.Refresh;
  end
  else
  begin
    Qju.Refresh;
    Qdju.Refresh;
  end;
end;

procedure Tfovocerbayar.RzToolButton1Click(Sender: TObject);
begin
  Koreksi1.Click;
end;

end.
