unit usetorsimpanan;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinsdxDockControlPainter,
  cxPC, dxDockControl, dxDockPanel, cxClasses, cxLabel, Vcl.ExtCtrls, RzPanel,
  RzTabs, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, RzButton, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, udm, DBAccess, MyAccess, MemDS, utambahsetor, cxGridCustomPopupMenu,
  cxGridPopupMenu, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar,
  cxTextEdit, cxCheckBox;

type
  Tfosetorsimpanan = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1setorsimp: TRzPanel;
    RzPanel4: TRzPanel;
    cxLabel2: TcxLabel;
    dxDockingManager1: TdxDockingManager;
    dxDockSite1: TdxDockSite;
    RzPanel2: TRzPanel;
    dxDockPanel1: TdxDockPanel;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxDockPanel2: TdxDockPanel;
    dxLayoutDockSite2: TdxLayoutDockSite;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Qsimpanan: TMyQuery;
    Dsimpanan: TMyDataSource;
    Qsimpanannotrans: TStringField;
    Qsimpanantglmutasi: TDateField;
    Qsimpananidanggota: TIntegerField;
    Qsimpanankasdebet: TStringField;
    Qsimpanankaskredit: TStringField;
    Qsimpanantglinput: TDateTimeField;
    Qsimpananketerangan: TStringField;
    Qsimpanannamaanggota: TStringField;
    Qsimpanantotal: TFloatField;
    cxGrid1DBTableView1notrans: TcxGridDBColumn;
    cxGrid1DBTableView1tglmutasi: TcxGridDBColumn;
    cxGrid1DBTableView1idanggota: TcxGridDBColumn;
    cxGrid1DBTableView1kasdebet: TcxGridDBColumn;
    cxGrid1DBTableView1tglinput: TcxGridDBColumn;
    cxGrid1DBTableView1keterangan: TcxGridDBColumn;
    cxGrid1DBTableView1namaanggota: TcxGridDBColumn;
    cxGrid1DBTableView1total: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    RzPanel3: TRzPanel;
    RzToolButton1: TRzToolButton;
    QDetail: TMyQuery;
    Ddetail: TMyDataSource;
    QDetailkredit: TFloatField;
    cxGrid2DBTableView1kredit: TcxGridDBColumn;
    QDetailnamasimpanan: TStringField;
    cxGrid2DBTableView1namasimpanan: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    Koreksi1: TMenuItem;
    Hapus1: TMenuItem;
    cxGridPopupMenu1: TcxGridPopupMenu;
    QDetailidsimpanan: TIntegerField;
    N1: TMenuItem;
    CetakKwitansi1: TMenuItem;
    cxCheckBox1: TcxCheckBox;
    cxTextEdit1: TcxTextEdit;
    cxCheckBox2: TcxCheckBox;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxCheckBox3: TcxCheckBox;
    cxDateEdit3: TcxDateEdit;
    cxDateEdit4: TcxDateEdit;
    cxLabel3: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxCheckBox4: TcxCheckBox;
    RzToolButton2: TRzToolButton;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged
      (Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure RzToolButton1Click(Sender: TObject);
    procedure Koreksi1Click(Sender: TObject);
    procedure Hapus1Click(Sender: TObject);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxCheckBox4Click(Sender: TObject);
    procedure cxCheckBox2Click(Sender: TObject);
    procedure cxCheckBox3Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var fosetorsimpanan: Tfosetorsimpanan;

implementation

{$R *.dfm}

procedure Tfosetorsimpanan.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked then
  begin
    cxTextEdit1.Enabled := true;
    cxTextEdit1.SetFocus;
  end
  else
  begin
    cxTextEdit1.Enabled := false;
  end;
end;

procedure Tfosetorsimpanan.cxCheckBox2Click(Sender: TObject);
begin
  if cxCheckBox2.Checked then
  begin
    cxDateEdit1.Enabled := true;
    cxDateEdit2.Enabled := true;
  end
  else
  begin
    cxDateEdit1.Enabled := false;
    cxDateEdit2.Enabled := false;
  end;
end;

procedure Tfosetorsimpanan.cxCheckBox3Click(Sender: TObject);
begin
  if cxCheckBox3.Checked then
  begin
    cxDateEdit3.Enabled := true;
    cxDateEdit4.Enabled := true;
  end
  else
  begin
    cxDateEdit3.Enabled := false;
    cxDateEdit4.Enabled := false;
  end;
end;

procedure Tfosetorsimpanan.cxCheckBox4Click(Sender: TObject);
begin
  if cxCheckBox4.Checked then
  begin
    cxDBLookupComboBox1.Enabled := true;
    cxDBLookupComboBox1.SetFocus;
  end
  else
  begin
    cxDBLookupComboBox1.Enabled := false;
  end;
end;

procedure Tfosetorsimpanan.cxGrid1DBTableView1FocusedRecordChanged
  (Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord
  : TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  cxLabel2.Caption := 'Detail Setoran Simpanan No. ' + Qsimpanannotrans.Text;
  QDetail.Close;
  QDetail.SQL.Clear;
  QDetail.SQL.Add(QDetail.SQLRefresh.Text);
  QDetail.ParamByName('notrans').AsString := Qsimpanannotrans.Text;
  QDetail.Open;
end;

procedure Tfosetorsimpanan.cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    RzToolButton2.Click;
  end;
end;

procedure Tfosetorsimpanan.FormShow(Sender: TObject);
begin
  Qsimpanan.Close;
  Qsimpanan.SQL.Clear;
  Qsimpanan.SQL.Add(Qsimpanan.SQLRefresh.Text);
  Qsimpanan.SQL.Add('order by notrans,tglmutasi');
  Qsimpanan.Open;
  DM.Qanggota_dbl.Close;
  DM.Qanggota_dbl.Open;
  DM.Qlist_anggota.Close;
  DM.Qlist_anggota.Open;
  cxDateEdit1.Date := date;
  cxDateEdit2.Date := date;
  cxDateEdit3.Date := date;
  cxDateEdit4.Date := date;
end;

procedure Tfosetorsimpanan.Hapus1Click(Sender: TObject);
begin
  if MessageDlg('Yakin Menghapus Setoran Notrans. "'+Qsimpanannotrans.Value+'" ini ?',mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    with dm do
    begin
      try
        Conn1.StartTransaction;
        qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('delete from d_simp_anggota where notrans=:notrans');
        Qex.ParamByName('notrans').AsString := Qsimpanannotrans.Value;
        Qex.Execute;

        qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('delete from simp_anggota where notrans=:notrans');
        Qex.ParamByName('notrans').AsString := Qsimpanannotrans.Value;
        Qex.Execute;
        Conn1.Commit;

        Qsimpanan.Close;
        Qsimpanan.Open;

      except
        on e: Exception do
        begin
          Conn1.Rollback;
          MessageDlg('Terdapat Kesalahan..!'+#13+e.Message,mtError,[mbok],0);
        end;
      end;
    end;
  end;
end;

procedure Tfosetorsimpanan.Koreksi1Click(Sender: TObject);
var i, j: byte;
begin
  with fotambahsetor do
  begin
    mode := 1;
    Qa1.Close;
    Qa1.Open;
    kosongkantext;
    isimemdata;
    dxMemData1.First;
    cxButton1.Click;
    dm.isicombo1('akunkas', cxComboBox1);
    cxComboBox1.ItemIndex := cxComboBox1.Properties.Items.IndexOf(Qsimpanankasdebet.Text);
    cxDateEdit1.Date := Qsimpanantglmutasi.Value;
    cxTextEdit1.Text := Qsimpanannotrans.Value;
    QDetail.First;
    for i := 1 to QDetail.RecordCount do
    begin
      if dxMemData1.Locate('idsimpanan', QDetailidsimpanan.Value, [loPartialKey])then
      begin
        dxMemData1.Edit;
        dxMemData1setor.Value := QDetailkredit.Value;
        dxMemData1.Post;
      end;
      QDetail.Next;
    end;
    QDetail.First;
    dxMemData1.First;
    periodelama := Qsimpanantglmutasi.Value;
    Qa1.Locate('idanggota', IntToStr(Qsimpananidanggota.Value), [loPartialKey]);
    if fotambahsetor.ShowModal = mrok then
    begin
      Qsimpanan.Refresh;
    end;
  end;
end;

procedure Tfosetorsimpanan.RzToolButton1Click(Sender: TObject);
begin
  fotambahsetor.mode := 0;
  if fotambahsetor.ShowModal = mrok then
  begin
    Qsimpanan.Close;
    Qsimpanan.Open;
  end;
end;

procedure Tfosetorsimpanan.RzToolButton2Click(Sender: TObject);
begin
  Qsimpanan.Close;
  Qsimpanan.SQL.Clear;
  Qsimpanan.SQL.Add(Qsimpanan.SQLRefresh.Text);
  if cxCheckBox1.Checked then
  begin
    Qsimpanan.SQL.Add('AND a.notrans=:notrans');
    Qsimpanan.ParamByName('notrans').AsString := cxTextEdit1.Text;
  end;
  if cxCheckBox4.Checked then
  begin
    Qsimpanan.SQL.Add('AND a.idanggota=:idanggota');
    Qsimpanan.ParamByName('idanggota').Value :=cxDBLookupComboBox1.EditValue;
  end;
  if cxCheckBox2.Checked then
  begin
    Qsimpanan.SQL.Add('AND a.tglmutasi between :tgl1 AND :tgl2');
    Qsimpanan.ParamByName('tgl1').AsDate := cxDateEdit1.Date;
    Qsimpanan.ParamByName('tgl2').AsDate := cxDateEdit2.Date;
  end;
  if cxCheckBox3.Checked then
  begin
    Qsimpanan.SQL.Add('AND date(a.tglinput) between :tgl3 AND :tgl4');
    Qsimpanan.ParamByName('tgl3').AsDate := cxDateEdit3.Date;
    Qsimpanan.ParamByName('tgl4').AsDate := cxDateEdit4.Date;
  end;
  Qsimpanan.SQL.Add('order by notrans,tglmutasi');
  Qsimpanan.Open;
end;

end.
