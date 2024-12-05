unit ukaskeluar;

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
  cxGrid, udm, DBAccess, MyAccess, MemDS, cxGridCustomPopupMenu,
  cxGridPopupMenu, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar,
  cxTextEdit, cxCheckBox, utambahks,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarBuiltInMenu,
  dxSkinsDefaultPainters, scDevExStyleAdapter;

type
  Tfokaskeluar = class(TForm)
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
    Qkas: TMyQuery;
    Dkas: TMyDataSource;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    RzPanel3: TRzPanel;
    RzToolButton1: TRzToolButton;
    QDetail: TMyQuery;
    Ddetail: TMyDataSource;
    PopupMenu1: TPopupMenu;
    Koreksi1: TMenuItem;
    Hapus1: TMenuItem;
    cxGridPopupMenu1: TcxGridPopupMenu;
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
    RzToolButton2: TRzToolButton;
    Qkasnotrans: TStringField;
    Qkastanggal: TDateField;
    Qkasketerangan: TMemoField;
    Qkastotal: TFloatField;
    Qkaswaktuinput: TDateTimeField;
    Qkasuserinput: TStringField;
    cxGrid1DBTableView1notrans: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1keterangan: TcxGridDBColumn;
    cxGrid1DBTableView1total: TcxGridDBColumn;
    cxGrid1DBTableView1waktuinput: TcxGridDBColumn;
    cxGrid1DBTableView1userinput: TcxGridDBColumn;
    Qkaskas: TStringField;
    cxGrid1DBTableView1kas: TcxGridDBColumn;
    QDetailnotrans: TStringField;
    QDetailnamaketkas: TStringField;
    QDetailjumlah: TFloatField;
    cxGrid2DBTableView1namaketkas: TcxGridDBColumn;
    cxGrid2DBTableView1jumlah: TcxGridDBColumn;
    cxGrid2DBTableView1namaakun: TcxGridDBColumn;
    QDetailnamaakun: TStringField;
    QDetailkodeakun: TStringField;
    cxGrid2DBTableView1kodeakun: TcxGridDBColumn;
    cxCheckBox4: TcxCheckBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxCheckBox5: TcxCheckBox;
    cxTextEdit2: TcxTextEdit;
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
    procedure cxCheckBox2Click(Sender: TObject);
    procedure cxCheckBox3Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure cxCheckBox4Click(Sender: TObject);
    procedure cxCheckBox5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var fokaskeluar: Tfokaskeluar;

implementation

{$R *.dfm}

procedure Tfokaskeluar.cxCheckBox1Click(Sender: TObject);
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

procedure Tfokaskeluar.cxCheckBox2Click(Sender: TObject);
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

procedure Tfokaskeluar.cxCheckBox3Click(Sender: TObject);
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

procedure Tfokaskeluar.cxCheckBox4Click(Sender: TObject);
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

procedure Tfokaskeluar.cxCheckBox5Click(Sender: TObject);
begin
  if cxCheckBox5.Checked then
  begin
    cxTextEdit2.Enabled := true;
    cxTextEdit2.SetFocus;
  end
  else
  begin
    cxTextEdit2.Enabled := false;
  end;
end;

procedure Tfokaskeluar.cxGrid1DBTableView1FocusedRecordChanged
  (Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord
  : TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  cxLabel2.Caption := 'Detail Kas Keluar No Transaksi : ' + Qkasnotrans.Text;
  QDetail.Close;
  QDetail.SQL.Clear;
  QDetail.SQL.Add(QDetail.SQLRefresh.Text);
  QDetail.ParamByName('notrans').AsString := Qkasnotrans.Text;
  QDetail.Open;
end;

procedure Tfokaskeluar.cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    RzToolButton2.Click;
  end;
end;

procedure Tfokaskeluar.FormShow(Sender: TObject);
begin
  Qkas.Close;
  Qkas.SQL.Clear;
  Qkas.SQL.Add(Qkas.SQLRefresh.Text);
  Qkas.SQL.Add('order by notrans,tanggal');
  Qkas.Open;
  DM.Qkas_dbl.Close;
  DM.Qkas_dbl.Open;
  DM.Qlist_kas.Close;
  DM.Qlist_kas.Open;
  cxDateEdit1.Date := date;
  cxDateEdit2.Date := date;
  cxDateEdit3.Date := date;
  cxDateEdit4.Date := date;
end;

procedure Tfokaskeluar.Hapus1Click(Sender: TObject);
begin
  if dm.cekstatusaktifperiodeposting(FormatDateTime('yyyymm',Qkastanggal.Value))=0 then
  begin
    MessageDlg('Periode "'+FormatDateTime('yyyymm',Qkastanggal.Value)+'" sudah dikunci / Belum dibuat !'+#13+'Harap Hubungi Bagian Akuntansi..!',mtWarning,[mbok],0);
    Exit;
  end;
  if MessageDlg('Yakin Menghapus Transaksi Kas Keluar "'+Qkasnotrans.Value+'" ini ?',mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    with dm do
    begin
      try
        Conn1.StartTransaction;
        qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('delete from d_kaskeluar where notrans=:notrans');
        Qex.ParamByName('notrans').AsString := Qkasnotrans.Value;
        Qex.Execute;

        qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('delete from m_kaskeluar where notrans=:notrans');
        Qex.ParamByName('notrans').AsString := Qkasnotrans.Value;
        Qex.Execute;
        Conn1.Commit;

        Qkas.Close;
        Qkas.Open;

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

procedure Tfokaskeluar.Koreksi1Click(Sender: TObject);
var i, j: byte;
begin
  if dm.cekstatusaktifperiodeposting(FormatDateTime('yyyymm',Qkastanggal.Value))=0 then
  begin
    MessageDlg('Periode "'+FormatDateTime('yyyymm',Qkastanggal.Value)+'" sudah dikunci / Belum dibuat !'+#13+'Harap Hubungi Bagian Akuntansi..!',mtWarning,[mbok],0);
    Exit;
  end;

  with fotambahkaskeluar do
  begin
    mode := 1;
    dm.isicombo1('akunkas', cxComboBox1);
    cxComboBox1.ItemIndex := cxComboBox1.Properties.Items.IndexOf(Qkaskas.Text);
    flagkosong2 := 0;
    kondisiawal1;
    cxDateEdit1.Date := Qkastanggal.Value;
    cxTextEdit1.Text := Qkasnotrans.Value;
    cxMemo1.Text := Qkasketerangan.Value;
    QDetail.First;
    for i := 1 to QDetail.RecordCount do
    begin
      dxMemData1.Append;
      dxMemData1ket.Value := QDetailnamaketkas.Value;
      dxMemData1jumlah.Value := QDetailjumlah.Value;
      dxMemData1.Post;

      QDetail.Next;
    end;
    QDetail.First;
    dxMemData1.First;
    periodelama := Qkastanggal.Value;

    if fotambahkaskeluar.ShowModal = mrok then
    begin
      Qkas.Refresh;
    end;
  end;
end;

procedure Tfokaskeluar.RzToolButton1Click(Sender: TObject);
begin
  fotambahkaskeluar.mode := 0;
  if fotambahkaskeluar.ShowModal = mrok then
  begin
    Qkas.Close;
    Qkas.Open;
  end;
end;

procedure Tfokaskeluar.RzToolButton2Click(Sender: TObject);
begin
  Qkas.Close;
  Qkas.SQL.Clear;
  Qkas.SQL.Add(Qkas.SQLRefresh.Text);
  if cxCheckBox1.Checked then
  begin
    Qkas.SQL.Add('where notrans=:notrans');
    Qkas.ParamByName('notrans').AsString := cxTextEdit1.Text;
  end
  else
  begin
    Qkas.SQL.Add('where isnull(notrans)=false');
  end;
  if cxCheckBox4.Checked then
  begin
    Qkas.SQL.Add('AND kas=:kas');
    Qkas.ParamByName('kas').value := cxDBLookupComboBox1.EditValue;
  end;
  if cxCheckBox2.Checked then
  begin
    Qkas.SQL.Add('AND tanggal between :tgl1 AND :tgl2');
    Qkas.ParamByName('tgl1').AsDate := cxDateEdit1.Date;
    Qkas.ParamByName('tgl2').AsDate := cxDateEdit2.Date;
  end;
  if cxCheckBox5.Checked then
  begin
    Qkas.SQL.Add('AND keterangan like :ket');
    Qkas.ParamByName('ket').AsString := '%'+cxTextEdit2.Text+'%';
  end;
  if cxCheckBox3.Checked then
  begin
    Qkas.SQL.Add('AND date(waktuinput) between :tgl3 AND :tgl4');
    Qkas.ParamByName('tgl3').AsDate := cxDateEdit3.Date;
    Qkas.ParamByName('tgl4').AsDate := cxDateEdit4.Date;
  end;
  Qkas.SQL.Add('order by notrans,tanggal');
  Qkas.Open;
end;

end.
