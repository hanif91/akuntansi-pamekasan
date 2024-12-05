unit upinjaman;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.ExtCtrls, RzPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, cxContainer, cxEdit, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, RzButton, cxLabel, cxScrollBox,
  utambahpinjaman, udm, dxSkinsdxDockControlPainter, cxPC, Vcl.ComCtrls, dxCore,
  cxDateUtils, DBAccess, MyAccess, MemDS, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxTextEdit,
  cxCheckBox, dxDockPanel, dxDockControl, cxCurrencyEdit, cxGridCustomPopupMenu,
  cxGridPopupMenu, Vcl.Menus;

type
  Tfopinjaman = class(TForm)
    dxDockingManager1: TdxDockingManager;
    Qpinjaman: TMyQuery;
    Dpinjaman: TMyDataSource;
    Qpinjamannopinjaman: TStringField;
    Qpinjamanidanggota: TIntegerField;
    Qpinjamanplatform: TFloatField;
    Qpinjamantipeangsuran: TStringField;
    Qpinjamanbyadmin: TFloatField;
    Qpinjamanpersentase: TFloatField;
    Qpinjamanlamaangsuran: TSmallintField;
    Qpinjamantglpinjam: TDateField;
    Qpinjamanpokokbulan: TFloatField;
    Qpinjamanbungabulan: TFloatField;
    Qpinjamanjumlahbulan: TFloatField;
    Qpinjamanwaktuinput: TDateTimeField;
    Qpinjamanidparam: TIntegerField;
    Qpinjamansisabunga: TFloatField;
    Qpinjamansisapokokangsuran: TFloatField;
    Qpinjamannamaanggota: TStringField;
    Qpinjamannamakolektif: TStringField;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1setorsimp: TRzPanel;
    RzPanel2: TRzPanel;
    dxDockSite1: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxLayoutDockSite2: TdxLayoutDockSite;
    dxDockPanel2: TdxDockPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1nopinjaman: TcxGridDBColumn;
    cxGrid1DBTableView1idanggota: TcxGridDBColumn;
    cxGrid1DBTableView1tglpinjam: TcxGridDBColumn;
    cxGrid1DBTableView1pokokbulan: TcxGridDBColumn;
    cxGrid1DBTableView1bungabulan: TcxGridDBColumn;
    cxGrid1DBTableView1jumlahbulan: TcxGridDBColumn;
    cxGrid1DBTableView1namaanggota: TcxGridDBColumn;
    cxGrid1DBTableView1namakolektif: TcxGridDBColumn;
    cxGrid1DBTableView1persentase: TcxGridDBColumn;
    cxGrid1DBTableView1byadmin: TcxGridDBColumn;
    cxGrid1DBTableView1platform: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    RzPanel3: TRzPanel;
    RzToolButton1: TRzToolButton;
    dxDockPanel1: TdxDockPanel;
    RzToolButton2: TRzToolButton;
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
    cxScrollBox1: TcxScrollBox;
    cxLabel2: TcxLabel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    RzPanel5: TRzPanel;
    cxLabel15: TcxLabel;
    cxLabel9: TcxLabel;
    sisaangsuranpokok: TcxCurrencyEdit;
    sisaangsuranbunga: TcxCurrencyEdit;
    RzPanel1: TRzPanel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    jmlangsuran: TcxCurrencyEdit;
    angsuranbunga: TcxCurrencyEdit;
    angsuranpokok: TcxCurrencyEdit;
    tipeangsuran: TcxTextEdit;
    lamaangs: TcxCurrencyEdit;
    cxLabel11: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel12: TcxLabel;
    Qdetail: TMyQuery;
    Ddetail: TMyDataSource;
    Qdetailnopinjaman: TStringField;
    Qdetailperiode: TStringField;
    Qdetailpokok: TFloatField;
    Qdetailbunga: TFloatField;
    Qdetaildenda: TFloatField;
    Qdetailjumlah: TFloatField;
    Qdetailflaglunas: TStringField;
    Qdetailtglbayar: TStringField;
    cxGrid2DBTableView1pokok: TcxGridDBColumn;
    cxGrid2DBTableView1bunga: TcxGridDBColumn;
    cxGrid2DBTableView1denda: TcxGridDBColumn;
    cxGrid2DBTableView1jumlah: TcxGridDBColumn;
    cxGrid2DBTableView1tglbayar: TcxGridDBColumn;
    Qdetailtgljatuhtempo: TDateField;
    cxGrid2DBTableView1tgljatuhtempo: TcxGridDBColumn;
    cxLabel13: TcxLabel;
    sisaangsuran: TcxCurrencyEdit;
    Qdetailnoangsuran: TSmallintField;
    cxGrid2DBTableView1noangsuran: TcxGridDBColumn;
    cxCheckBox5: TcxCheckBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxCheckBox6: TcxCheckBox;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxLabel14: TcxLabel;
    cxCheckBox7: TcxCheckBox;
    cxComboBox1: TcxComboBox;
    PopupMenu1: TPopupMenu;
    Koreksi1: TMenuItem;
    Hapus1: TMenuItem;
    cxGridPopupMenu1: TcxGridPopupMenu;
    Qpinjamankaskredit: TStringField;
    procedure RzToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxCheckBox4Click(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxCheckBox5Click(Sender: TObject);
    procedure cxCheckBox2Click(Sender: TObject);
    procedure cxCheckBox3Click(Sender: TObject);
    procedure cxCheckBox6Click(Sender: TObject);
    procedure cxCheckBox7Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Koreksi1Click(Sender: TObject);
    procedure Hapus1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fopinjaman: Tfopinjaman;

implementation

{$R *.dfm}

procedure Tfopinjaman.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked then
  begin
    cxTextEdit1.Enabled := true;
    cxTextEdit1.SetFocus;
  end
  else
  begin
    cxTextEdit1.Enabled := true;
    cxTextEdit1.SetFocus;
  end;
end;

procedure Tfopinjaman.cxCheckBox2Click(Sender: TObject);
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

procedure Tfopinjaman.cxCheckBox3Click(Sender: TObject);
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

procedure Tfopinjaman.cxCheckBox4Click(Sender: TObject);
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

procedure Tfopinjaman.cxCheckBox5Click(Sender: TObject);
begin
  if cxCheckBox5.Checked then
  begin
    cxDBLookupComboBox2.Enabled := true;
    cxDBLookupComboBox2.SetFocus;
  end
  else
  begin
    cxDBLookupComboBox2.Enabled := false;
  end;
end;

procedure Tfopinjaman.cxCheckBox6Click(Sender: TObject);
begin
  if cxCheckBox6.Checked then
  begin
    cxCurrencyEdit1.Enabled := true;
    cxCurrencyEdit2.Enabled := true;
  end
  else
  begin
    cxCurrencyEdit1.Enabled := false;
    cxCurrencyEdit2.Enabled := false;
  end;
end;

procedure Tfopinjaman.cxCheckBox7Click(Sender: TObject);
begin
  if cxCheckBox7.Checked then
  begin
    cxComboBox1.Enabled := true;
    cxComboBox1.SetFocus;
  end
  else
  begin
    cxComboBox1.Enabled := false;
  end;
end;

procedure Tfopinjaman.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  tipeangsuran.Text := Qpinjamantipeangsuran.Text;
  lamaangs.Value := Qpinjamanlamaangsuran.Value;
  angsuranpokok.Value := Qpinjamanpokokbulan.Value;
  angsuranbunga.Value := Qpinjamanbungabulan.Value;
  jmlangsuran.Value := Qpinjamanjumlahbulan.Value;
  sisaangsuranbunga.Value := Qpinjamansisabunga.Value;
  sisaangsuranpokok.Value := Qpinjamansisapokokangsuran.Value;
  sisaangsuran.Value := sisaangsuranpokok.Value+sisaangsuranbunga.Value;
  Qdetail.Close;
  Qdetail.SQL.Clear;
  Qdetail.SQL.Add(Qdetail.SQLRefresh.Text);
  Qdetail.ParamByName('nopinjaman').AsString := Qpinjamannopinjaman.Text;
  Qdetail.Open;
end;

procedure Tfopinjaman.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
  RzToolButton2.Click;
end;

procedure Tfopinjaman.FormShow(Sender: TObject);
begin
  Qpinjaman.close;
  Qpinjaman.Open;
  DM.Qanggota_dbl.Close;
  DM.Qanggota_dbl.Open;
  DM.Qlist_anggota.Close;
  DM.Qlist_anggota.Open;
  DM.Qsales_dbl.Close;
  DM.Qsales_dbl.Open;
  DM.Qlist_sales.Close;
  DM.Qlist_sales.Open;
end;

procedure Tfopinjaman.Hapus1Click(Sender: TObject);
begin
  DM.Qcek.Close;
  DM.Qcek.SQL.Clear;
  dm.Qcek.SQL.Add('select * from v_sisa_angsuran where nopinjaman=:nopinjaman');
  dm.Qcek.ParamByName('nopinjaman').AsString := Qpinjamannopinjaman.Text;
  DM.Qcek.Open;
  if dm.Qcek.FieldByName('sisapokokangsuran').AsCurrency<>Qpinjamanplatform.Value then
  begin
    MessageDlg('Pinjaman Yang Sudah Melakukan Pembayaran Angsuran Tidak Bisa Dikoreksi..!',mtWarning,[mbok],0);
    exit;
  end;

  if MessageDlg('Yakin akan Menghapus Pinjaman dengan no : '+Qpinjamannopinjaman.Value+' ini ?',mtWarning,[mbyes,mbno],0)=mryes then
  begin
    with dm do
    begin
      Conn1.StartTransaction;

      Qex.Close;
      qex.SQL.Clear;
      Qex.SQL.Add('delete from d_angsuran where nopinjaman=:nopinjaman');
      Qex.ParamByName('nopinjaman').AsString := Qpinjamannopinjaman.Text;
      Qex.Execute;

      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('delete from m_pinjaman where nopinjaman=:nopinjaman');
      Qex.ParamByName('nopinjaman').AsString := Qpinjamannopinjaman.Text;
      Qex.Execute;

      Conn1.Commit;

      Qpinjaman.Close;
      Qpinjaman.Open;

    end;
  end;
end;

procedure Tfopinjaman.Koreksi1Click(Sender: TObject);
begin
  DM.Qcek.Close;
  DM.Qcek.SQL.Clear;
  dm.Qcek.SQL.Add('select * from v_sisa_angsuran where nopinjaman=:nopinjaman');
  dm.Qcek.ParamByName('nopinjaman').AsString := Qpinjamannopinjaman.Text;
  DM.Qcek.Open;
  if dm.Qcek.FieldByName('sisapokokangsuran').AsCurrency<>Qpinjamanplatform.Value then
  begin
    MessageDlg('Pinjaman Yang Sudah Melakukan Pembayaran Angsuran Tidak Bisa Dikoreksi..!',mtWarning,[mbok],0);
    exit;
  end;

  with fotambahpinjaman do
  begin
    mode := 1;
    idanggotalama := Qpinjamanidanggota.Value;
    Qa1.Close;
    Qa1.Open;
    kosongkantext;
    isimemdata;
    cxButton1.Click;
    dm.isicombo1('akunkas', cxComboBox1);
    idanggotalama := Qpinjamanidanggota.Value;
    fotambahpinjaman.cxComboBox1.ItemIndex := cxComboBox1.Properties.Items.IndexOf(Qpinjamankaskredit.Text);
    cxDateEdit1.Date := Qpinjamantglpinjam.Value;
    cxTextEdit1.Text := Qpinjamannopinjaman.Value;
    periodelama := Qpinjamantglpinjam.Value;
    fotambahpinjaman.cxComboBox2.ItemIndex := fotambahpinjaman.cxComboBox2.Properties.Items.IndexOf(Qpinjamantipeangsuran.Text);
    flagc1 := 1;
    flagc2 := 1;
    lamaangs.Value := Qpinjamanlamaangsuran.Value;
    platformpinj.Value := Qpinjamanplatform.Value;
    flagc1 := 0;
    flagc2 := 0;
    lamaangs.Value := Qpinjamanlamaangsuran.Value;
    Qa1.Locate('idanggota', IntToStr(Qpinjamanidanggota.Value), [loPartialKey]);

    if fotambahpinjaman.ShowModal = mrok then
    begin
      Qpinjaman.Refresh;
    end;
  end;
end;

procedure Tfopinjaman.RzToolButton1Click(Sender: TObject);
begin
  fotambahpinjaman.mode:=0;
  if fotambahpinjaman.ShowModal=mrok then
  begin
    Qpinjaman.Close;
    Qpinjaman.Open;
  end;
end;

procedure Tfopinjaman.RzToolButton2Click(Sender: TObject);
begin
  Qpinjaman.Close;
  Qpinjaman.SQL.Clear;
  Qpinjaman.SQL.Add(Qpinjaman.SQLRefresh.Text);
  if cxCheckBox1.Checked then
  begin
    Qpinjaman.SQL.Add('Where a.nopinjaman=:nopinjaman');
    Qpinjaman.ParamByName('nopinjaman').AsString := cxTextEdit1.Text
  end
  else
  begin
    Qpinjaman.SQL.Add('Where ISNULL(a.nopinjaman)=FALSE');
  end;

  if cxCheckBox4.Checked then
  begin
    Qpinjaman.SQL.Add('AND a.idanggota=:idanggota');
    Qpinjaman.ParamByName('idanggota').Value := cxDBLookupComboBox1.EditValue;
  end;

  if cxCheckBox5.Checked then
  begin
    Qpinjaman.SQL.Add('AND c.idkolektif=:idkolektif');
    Qpinjaman.ParamByName('idkolektif').Value := cxDBLookupComboBox2.EditingValue;
  end;

  if cxCheckBox2.Checked then
  begin
    Qpinjaman.SQL.Add('AND a.tglpinjam between :tgl1 and :tgl2');
    Qpinjaman.ParamByName('tgl1').AsDate := cxDateEdit1.Date;
    Qpinjaman.ParamByName('tgl2').AsDate := cxDateEdit2.Date;
  end;

  if cxCheckBox3.Checked then
  begin
    Qpinjaman.SQL.Add('AND DATE(a.waktuinput) between :tgl3 and :tgl4');
    Qpinjaman.ParamByName('tgl3').AsDate := cxDateEdit3.Date;
    Qpinjaman.ParamByName('tgl4').AsDate := cxDateEdit4.Date;
  end;
  if cxCheckBox6.Checked then
  begin
    Qpinjaman.SQL.Add('AND a.platform between :jml1 and :jml2');
    Qpinjaman.ParamByName('jml1').AsCurrency := cxCurrencyEdit1.Value;
    Qpinjaman.ParamByName('jml2').AsCurrency := cxCurrencyEdit2.Value;
  end;
  if cxCheckBox7.Checked then
  begin
    if cxComboBox1.ItemIndex=0 then
    begin

      Qpinjaman.SQL.Add('AND b.sisapokokangsuran > 0');
    end;
    if cxComboBox1.ItemIndex=1 then
    begin

      Qpinjaman.SQL.Add('AND b.sisapokokangsuran = 0');
    end;
  end;
  Qpinjaman.SQL.Add('ORDER BY nopinjaman');
  Qpinjaman.Open;
end;

end.
