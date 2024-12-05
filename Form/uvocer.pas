unit uvocer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxPC, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxMemo, Vcl.Menus,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxTextEdit,
  cxCheckBox, cxLabel, cxMaskEdit, cxCalendar, Vcl.StdCtrls, cxButtons,
  RzButton, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, DBAccess, MyAccess,
  MemDS, dxDockPanel, dxDockControl, Vcl.ExtCtrls, RzPanel, RzTabs,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarBuiltInMenu,
  cxImageComboBox, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinsDefaultPainters, cxCurrencyEdit, scDevExStyleAdapter;

type
  Tfovocer = class(TForm)
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
    Qdjukodeakun: TStringField;
    Qdjunamaakun: TStringField;
    Qdjudebet: TFloatField;
    Qdjukredit: TFloatField;
    Qdjuidcoa: TIntegerField;
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
    RzToolButton1: TRzToolButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1kodeakun: TcxGridDBColumn;
    cxGridDBTableView1namaakun: TcxGridDBColumn;
    cxGridDBTableView1debet: TcxGridDBColumn;
    cxGridDBTableView1kredit: TcxGridDBColumn;
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
    Hapus1: TMenuItem;
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
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    cxCheckBox5: TcxCheckBox;
    cxTextEdit2: TcxTextEdit;
    cxComboBox1: TcxComboBox;
    cxComboBox2: TcxComboBox;
    Dbyr: TMyDataSource;
    Qbyr: TMyQuery;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    RzGroupBox1: TRzGroupBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView1notrans: TcxGridDBColumn;
    cxGridDBTableView1tglbayar: TcxGridDBColumn;
    cxGridDBTableView1namabank: TcxGridDBColumn;
    cxGridDBTableView1termin: TcxGridDBColumn;
    cxGridDBTableView1jmlbayar: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    PopupMenu2: TPopupMenu;
    MenuItem2: TMenuItem;
    cxGridPopupMenu2: TcxGridPopupMenu;
    Qbyrnomor: TStringField;
    RzPanel3: TRzPanel;
    cxButton1: TcxButton;
    Qjuflaghutang: TSmallintField;
    Qjuflagusulan: TSmallintField;
    Qjutglusulan: TDateField;
    cxComboBox3: TcxComboBox;
    cxCheckBox6: TcxCheckBox;
    cxCheckBox7: TcxCheckBox;
    cxDateEdit3: TcxDateEdit;
    cxGrid1DBTableView1flagusulan: TcxGridDBColumn;
    cxGrid1DBTableView1tglusulan: TcxGridDBColumn;
    cxCheckBox8: TcxCheckBox;
    cxDateEdit4: TcxDateEdit;
    SetUsulan1: TMenuItem;
    N1: TMenuItem;
    BatalkanUsulan1: TMenuItem;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Qdjukodeunit: TStringField;
    cxGridDBTableView1kodeunit: TcxGridDBColumn;
    Qjuidaruskas: TIntegerField;
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
    procedure Hapus1Click(Sender: TObject);
    procedure cxCheckBox3Click(Sender: TObject);
    procedure cxCheckBox4Click(Sender: TObject);
    procedure cxCheckBox5Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxCheckBox6Click(Sender: TObject);
    procedure cxCheckBox7Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure SetUsulan1Click(Sender: TObject);
    procedure cxCheckBox8Click(Sender: TObject);
    procedure BatalkanUsulan1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fovocer: Tfovocer;

implementation
uses strutils,utambahvoucher,dateutils;

{$R *.dfm}

procedure Tfovocer.BatalkanUsulan1Click(Sender: TObject);
var
  pos : tbookmark;
begin
  with dm do
  begin
    Qex.Close;
    Qex.SQL.Clear;
    Qex.SQL.Add('UPDATE voucher set flagusulan=0,tglusulan=null,groupusulan=0 where notrans=:notrans');
    Qex.ParamByName('notrans').AsString := Qjunotrans.Text;
    Qex.Execute;
  end;

  Qju.DisableControls;
  pos := Qju.GetBookmark;
  Qju.Close;
  Qju.Open;
  if Qju.RecordCount>0 then
  begin
    Qju.GotoBookmark(pos);
  end
  else
  begin
    Qdju.Close;
    Qbyr.Close;
  end;
  Qju.EnableControls;
end;

procedure Tfovocer.cxButton1Click(Sender: TObject);
begin
  MenuItem2.Click;
end;

procedure Tfovocer.cxButton5Click(Sender: TObject);
begin
  Qju.Close;
  Qju.SQL.Clear;
  Qju.SQL.Add(Qju.SQLRefresh.Text);
  if cxCheckBox1.Checked then
  begin
    Qju.SQL.Add('where notrans like :notrans ');
    Qju.ParamByName('notrans').AsString := '%'+cxTextEdit1.Text+'%';
  end
  else
    Qju.SQL.Add('where idvoucher > 0');
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
  if cxCheckBox3.Checked then
  begin
    Qju.SQL.Add('and typebayar = :typebayar');
    Qju.ParamByName('typebayar').AsString := cxComboBox1.Text;
  end;
  if cxCheckBox4.Checked then
  begin
    Qju.SQL.Add('and flaglunas = :flaglunas');
    Qju.ParamByName('flaglunas').AsInteger := cxComboBox2.ItemIndex;
  end;
  if cxCheckBox6.Checked then
  begin
    Qju.SQL.Add('and flagusulan = :flagusulan');
    Qju.ParamByName('flagusulan').AsInteger := cxComboBox3.ItemIndex;
  end;

  if cxCheckBox7.Checked then
  begin
    Qju.SQL.Add('and tglusulan = :tglusulan');
    Qju.ParamByName('tglusulan').AsDate := cxDateEdit3.Date;
  end;
  Qju.SQL.Add('order by tanggal desc,notrans');
  Qju.Open;
  cxGrid1.SetFocus;
  cxGrid1DBTableView1.Controller.FocusedRowIndex := 0;
  cxGrid1DBTableView1.Controller.FocusedColumnIndex := 0;
end;

procedure Tfovocer.cxCheckBox1Click(Sender: TObject);
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

procedure Tfovocer.cxCheckBox2Click(Sender: TObject);
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

procedure Tfovocer.cxCheckBox3Click(Sender: TObject);
begin
  if cxCheckBox3.Checked then
  begin
    cxComboBox1.Enabled := True;
    cxComboBox1.SetFocus;
  end
  else
  begin
    cxComboBox1.Enabled := false;
    cxComboBox1.Enabled := false;
  end;
end;

procedure Tfovocer.cxCheckBox4Click(Sender: TObject);
begin
  if cxCheckBox4.Checked then
  begin
    cxComboBox2.Enabled := True;
    cxComboBox2.SetFocus;
  end
  else
  begin
    cxComboBox2.Enabled := false;
    cxComboBox2.Enabled := false;
  end;
end;

procedure Tfovocer.cxCheckBox5Click(Sender: TObject);
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

procedure Tfovocer.cxCheckBox6Click(Sender: TObject);
begin
  if cxCheckBox6.Checked then
  begin
    cxComboBox3.Enabled := True;
    cxComboBox3.SetFocus;
  end
  else
  begin
    cxComboBox3.Enabled := false;
  end;
end;

procedure Tfovocer.cxCheckBox7Click(Sender: TObject);
begin
  if cxCheckBox7.Checked then
  begin
    cxDateEdit3.Enabled := True;
    cxDateEdit3.SetFocus;
  end
  else
  begin
    cxDateEdit3.Enabled := false;
  end;
end;

procedure Tfovocer.cxCheckBox8Click(Sender: TObject);
begin
  if cxCheckBox8.Checked then
  begin
    cxDateEdit4.Enabled := True;
    cxCurrencyEdit1.Enabled := true;
    cxDateEdit4.SetFocus;
  end
  else
  begin
    cxDateEdit4.Enabled := false;
    cxCurrencyEdit1.Enabled := false;
  end;
end;

procedure Tfovocer.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Qdju.Close;
  Qdju.SQL.Clear;
  Qdju.SQL.Add(Qdju.SQLRefresh.Text);
  Qdju.ParamByName('notrans').AsString := Qjunotrans.Value;
  Qdju.Open;

  Qbyr.Close;
  Qbyr.SQL.Clear;
  Qbyr.SQL.Add(Qbyr.SQLRefresh.Text);
  Qbyr.ParamByName('notrans').AsString := Qjunotrans.Value;
  Qbyr.Open;
end;

procedure Tfovocer.FormCreate(Sender: TObject);
begin
  cxDateEdit1.Date := Date;
  cxDateEdit2.Date := Date;
end;

procedure Tfovocer.FormShow(Sender: TObject);
begin
  cxDateEdit1.Date := EncodeDate(YearOf(date),MonthOf(Date),1);
  cxDateEdit2.Date := date;
  cxDateEdit3.Date := date;
  cxDateEdit4.Date := Date;
  cxButton5.Click;
end;

procedure Tfovocer.Hapus1Click(Sender: TObject);
begin
  if dm.cekstatusaktifperiodeposting(FormatDateTime('yyyymm',Qjutanggal.Value))=0 then
  begin
    MessageDlg('Periode "'+FormatDateTime('yyyymm',Qjutanggal.Value)+'" sudah dikunci / Belum dibuat !'+#13+'Harap Hubungi Bagian Akuntansi..!',mtWarning,[mbok],0);
    Exit;
  end;
  if LeftStr(Qjunotrans.Value,2)='JP' then
  begin
    MessageDlg('Jurnal Penutup Tidak Bisa Dihapus Secara Manual..!',mtWarning,[mbok],0);
    Exit;
  end;

  if Qjuflaglunas.Value='1' then
  begin
    MessageDlg('Data Voucher Sudah Lunas..!',mtWarning,[mbok],0);
    Exit;
  end;

  if MessageDlg('Yakin Menghapus Data JU'+#13+'No TRansaksi : '+Qjunotrans.Value+#13+'Tanggal : '+
     FormatDateTime('dd mmm yyyy',Qjutanggal.Value)+#13+'Ini .. ?',mtWarning,[mbyes,mbno],0)=mryes then
  begin
    try

      dm.Conn1.StartTransaction;
      dm.Qex.Close;
      dm.Qex.SQL.Clear;
      dm.Qex.SQL.Add('delete from voucher where notrans=:notrans;');
      dm.Qex.SQL.Add('delete from voucher_ where notrans=:notrans;');
      dm.Qex.ParamByName('notrans').AsString := Qjunotrans.Value;
      dm.Qex.Execute;

      dm.Conn1.Commit;

      Qju.Refresh;
    except
      on e:exception do
      begin
        dm.Conn1.Rollback;
        MessageDlg('Terdapat Keslahan Mengahus Data JU..!'+#13+e.Message+#13+'Harap Hubungi Operator..!',mtError,[mbok],0);
      end;
    end;

  end;
end;

procedure Tfovocer.Koreksi1Click(Sender: TObject);
var
  i : byte;
  pos : tbookmark;
begin
  if dm.cekstatusaktifperiodeposting(FormatDateTime('yyyymm',Qjutanggal.Value))=0 then
  begin
    MessageDlg('Periode "'+FormatDateTime('yyyymm',Qjutanggal.Value)+'" sudah dikunci / Belum dibuat !'+#13+'Harap Hubungi Bagian Akuntansi..!',mtWarning,[mbok],0);
    Exit;
  end;


  fotambahvoucher.key:=1;
  fotambahvoucher.flaghutang := Qjuflaghutang.Value;
  fotambahvoucher.flagpostand := 1;
  fotambahvoucher.notrans.text := Qjunotrans.Value;
  dm.isicombo1('ketvoucher1',fotambahvoucher.cxComboBox1);
  dm.isicombo1('ketvoucher2',fotambahvoucher.cxComboBox2);
  dm.isicombo2('jenisvoucher',fotambahvoucher.cxComboBox3,fotambahvoucher.cxComboBox4);
  fotambahvoucher.periodelama :=Qjutanggal.Value;
  fotambahvoucher.tanggal.Date := Qjutanggal.Value;
  fotambahvoucher.uraian.Text := Qjuuraian.Value;
  fotambahvoucher.penjelasan.Text := Qjupenjelasan.Value;
  fotambahvoucher.cxComboBox1.ItemIndex := fotambahvoucher.cxComboBox1.Properties.Items.IndexOf(Qjubagian.Value);
  fotambahvoucher.cxComboBox2.ItemIndex := fotambahvoucher.cxComboBox2.Properties.Items.IndexOf(Qjutujuan.Value);
  fotambahvoucher.cxComboBox4.ItemIndex := fotambahvoucher.cxComboBox4.Properties.Items.IndexOf(IntToStr(Qjuidaruskas.Value));
  fotambahvoucher.cxComboBox3.ItemIndex := fotambahvoucher.cxComboBox4.ItemIndex;
  fotambahvoucher.dxMemData1.Close;
  fotambahvoucher.dxMemData1.Open;
  fotambahvoucher.idju := Qjuidvoucher.Value;
  fotambahvoucher.cxTextEdit1.Text := Qjuatasnama.Value;
  fotambahvoucher.notranst := Qjunotrans.Value;
  Qdju.First;
  Qdju.DisableControls;
  for  i := 1 to Qdju.RecordCount do
  begin
    fotambahvoucher.dxMemData1.Append;
    fotambahvoucher.dxMemData1idcoa.Value := Qdjuidcoa.Value;
    fotambahvoucher.dxMemData1namaakun.Value := Qdjunamaakun.Value;
    fotambahvoucher.dxMemData1kodeakun.Value := Qdjukodeakun.Value;
    fotambahvoucher.dxMemData1jenis.Value := '';
    fotambahvoucher.dxMemData1kredit.Value := Qdjukredit.Value;
    fotambahvoucher.dxMemData1kodeunit.Value := Qdjukodeunit.Value;
    if Qdjukredit.Value > 0 then
      fotambahvoucher.dxMemData1flagpostand.Value := 1
    else
     fotambahvoucher.dxMemData1flagpostand.Value := 0;

    fotambahvoucher.dxMemData1debet.Value := Qdjudebet.Value;
    fotambahvoucher.dxMemData1.Post;

    Qdju.Next;
    Application.ProcessMessages;
  end;
  Qdju.First;
  Qdju.EnableControls;

  if Qjuflaglunas.Value='1' then
  begin
    fotambahvoucher.cxGrid1DBTableView1.OptionsData.Appending := False;
      fotambahvoucher.cxGrid1DBTableView1.OptionsData.Editing := False;
        fotambahvoucher.cxGrid1DBTableView1.OptionsData.Inserting := False;
  end
  else
  begin
    fotambahvoucher.cxGrid1DBTableView1.OptionsData.Appending := true;
      fotambahvoucher.cxGrid1DBTableView1.OptionsData.Editing := true;
        fotambahvoucher.cxGrid1DBTableView1.OptionsData.Inserting := true;
  end;

  if fotambahvoucher.ShowModal=mrok then
  begin
    Qju.DisableControls;
    pos := Qju.GetBookmark;
    Qju.Close;
    Qju.Open;
    Qju.GotoBookmark(pos);
    Qju.EnableControls;
    Qdju.Close;
    Qdju.Open;
    Qbyr.Close;
    Qbyr.Open;
  end
  else
  begin
    Qju.DisableControls;
    pos := Qju.GetBookmark;
    Qju.Close;
    Qju.Open;
    Qju.GotoBookmark(pos);
    Qju.EnableControls;
    Qdju.Close;
    Qdju.Open;
    Qbyr.Close;
    Qbyr.Open;
  end;
end;

procedure Tfovocer.MenuItem2Click(Sender: TObject);
var
  pos : TBookmark;
begin
  if dm.cekstatusaktifperiodeposting(FormatDateTime('yyyymm',Qbyr.FieldByName('tglbayar').AsDateTime))=0 then
  begin
    MessageDlg('Tidak Bisa Membatalkan!'+#13+'Periode Posting "'+FormatDateTime('mmmm yyyy',Qbyr.FieldByName('tglbayar').AsDateTime)+'" Sudah Terkunci / Belum dibuat!'+#13+'Harap Hubungi Bagian Akuntansi..!',mtWarning,[mbok],0);
    Exit;
  end;
  Qbyr.Last;
  if MessageDlg('Yakin melakukan Pembatalan Pembayaran : '+#13+
  'No Vc : '+Qjunotrans.Value+#13+
  'Termin : '+Qbyr.FieldByName('termin').AsString +' ini ?',mtWarning,[mbyes,mbno],0)=mryes
   then
  begin
    with dm do
    begin
      Conn1.StartTransaction;

      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('delete from vcbayar where notrans=:notrans and nomor=:nomor and tglbayar=:tglbayar');
      Qex.ParamByName('notrans').AsString := Qjunotrans.Value;
      Qex.ParamByName('nomor').AsString := Qbyr.FieldByName('nomor').AsString;
      Qex.ParamByName('tglbayar').AsDate := Qbyr.FieldByName('tglbayar').AsDateTime;
      Qex.Execute;

      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('update voucher set flaglunas=0 where notrans=:notrans');
      Qex.ParamByName('notrans').AsString := Qjunotrans.Value;
      Qex.Execute;

      if Qbyr.FieldByName('termin').AsInteger < 2 then
      begin
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('update voucher set typebayar=null where notrans=:notrans');
        Qex.ParamByName('notrans').AsString := Qjunotrans.Value;
        Qex.Execute;
      end;

      Conn1.Commit;

      Qju.DisableControls;
      pos := Qju.GetBookmark;
      Qju.Close;
      Qju.Open;
      Qju.GotoBookmark(pos);
      Qju.EnableControls;
      Qdju.Close;
      Qdju.Open;
      Qbyr.Close;
      Qbyr.Open;
    end;
  end;

end;

procedure Tfovocer.PopupMenu1Popup(Sender: TObject);
begin
  if Qjuflaglunas.Value='0' then
  begin
    if Qjuflagusulan.Value=0 then
    begin
      SetUsulan1.Enabled := true;
      BatalkanUsulan1.Enabled := false;
    end
    else
    begin
      SetUsulan1.Enabled := false;
      BatalkanUsulan1.Enabled := true;
    end;
  end
  else
  begin
    SetUsulan1.Enabled := false;
    BatalkanUsulan1.Enabled := false;
  end;
end;

procedure Tfovocer.RzToolButton1Click(Sender: TObject);
begin
    fotambahvoucher.cxGrid1DBTableView1.OptionsData.Appending := true;
      fotambahvoucher.cxGrid1DBTableView1.OptionsData.Editing := true;
        fotambahvoucher.cxGrid1DBTableView1.OptionsData.Inserting := true;
  fotambahvoucher.key:=0;
  if fotambahvoucher.ShowModal=mrok then
  begin
    Qju.Refresh;
    Qdju.Refresh;
  end
  else
  begin
  //  Qju.Refresh;
//    Qdju.Refresh;
  end;
end;

procedure Tfovocer.SetUsulan1Click(Sender: TObject);
var
  pos : tbookmark;
begin
  if cxCheckBox8.Checked then
  begin
    with dm do
    begin
      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('UPDATE voucher set flagusulan=1,tglusulan=:tglusulan,groupusulan=:groupusulan where notrans=:notrans');
      Qex.ParamByName('tglusulan').AsDate := cxDateEdit4.Date;
      Qex.ParamByName('notrans').AsString := Qjunotrans.Text;
      Qex.ParamByName('groupusulan').Value := cxCurrencyEdit1.Value;
      Qex.Execute;
    end;

    Qju.DisableControls;
    pos := Qju.GetBookmark;
    Qju.Close;
    Qju.Open;
    if Qju.RecordCount>0 then
    begin
      Qju.GotoBookmark(pos);
    end
    else
    begin
      Qdju.Close;
      Qbyr.Close;
    end;
    Qju.EnableControls;
  end
  else
  begin
    MessageDlg('Tgl Usulan Belum di setting.!',mtWarning,[mbok],0);
  end;
end;

end.
