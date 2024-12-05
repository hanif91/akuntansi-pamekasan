unit uanggota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxContainer, DBAccess, MyAccess, MemDS, cxLabel, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, RzPanel, dxBarBuiltInMenu,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxMemo, cxTextEdit, cxCheckBox, cxPC,
  cxMaskEdit, cxDropDownEdit, utambahanggota, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, RzButton, RzTabs, ucetakbukusimp, cxScrollBox;

type
  Tfoanggota = class(TForm)
    Qanggota: TMyQuery;
    Danggota: TMyDataSource;
    Qanggotaidanggota: TIntegerField;
    Qanggotakodeanggota: TStringField;
    Qanggotanamaanggota: TStringField;
    Qanggotaalamat: TStringField;
    Qanggotaidkolektif: TIntegerField;
    Qanggotapekerjaan: TStringField;
    Qanggotaaktif: TStringField;
    Qanggotanamakolektif: TStringField;
    Qanggotanohp: TStringField;
    Qanggotajeniskelamin: TStringField;
    Qanggotatglgabung: TDateField;
    Qanggotatempat: TStringField;
    Qanggotatgllahir: TDateField;
    PopupMenu1: TPopupMenu;
    Koreksi1: TMenuItem;
    Hapus1: TMenuItem;
    cxGridPopupMenu1: TcxGridPopupMenu;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel2: TRzPanel;
    RzPanel5: TRzPanel;
    RzPanel3: TRzPanel;
    RzToolButton1: TRzToolButton;
    RzPanel4: TRzPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1idanggota: TcxGridDBColumn;
    cxGrid1DBTableView1aktif: TcxGridDBColumn;
    cxGrid1DBTableView1kodeanggota: TcxGridDBColumn;
    cxGrid1DBTableView1namaanggota: TcxGridDBColumn;
    cxGrid1DBTableView1tempat: TcxGridDBColumn;
    cxGrid1DBTableView1tgllahir: TcxGridDBColumn;
    cxGrid1DBTableView1alamat: TcxGridDBColumn;
    cxGrid1DBTableView1pekerjaan: TcxGridDBColumn;
    cxGrid1DBTableView1namakolektif: TcxGridDBColumn;
    cxGrid1DBTableView1nohp: TcxGridDBColumn;
    cxGrid1DBTableView1jeniskelamin: TcxGridDBColumn;
    cxGrid1DBTableView1tglgabung: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxScrollBox1: TcxScrollBox;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    cxLabel1: TcxLabel;
    txtkodeanggota: TcxTextEdit;
    nama: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    alamat: TcxMemo;
    cxLabel5: TcxLabel;
    kolektif: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    tempat: TcxTextEdit;
    tgllahir: TcxTextEdit;
    pekerjaan: TcxTextEdit;
    cxLabel8: TcxLabel;
    jeniskelamin: TcxTextEdit;
    cxLabel9: TcxLabel;
    nohp: TcxTextEdit;
    status: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxLabel2: TcxLabel;
    procedure RzToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Koreksi1Click(Sender: TObject);
    procedure Hapus1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RzToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  foanggota: Tfoanggota;

implementation

{$R *.dfm}

procedure Tfoanggota.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  txtkodeanggota.Text := Qanggotakodeanggota.Value;
  nama.Text := Qanggotanamaanggota.Value;
  tempat.Text := Qanggotatempat.Value;
  tgllahir.Text := Qanggotatgllahir.Text;
  jeniskelamin.Text := Qanggotajeniskelamin.Value;
  alamat.Text := Qanggotaalamat.Value;
  kolektif.Text := Qanggotanamakolektif.Value;
  pekerjaan.Text := Qanggotapekerjaan.Value;
  nohp.Text := Qanggotanohp.Value;
  status.Text := Qanggotaaktif.Value;
end;

procedure Tfoanggota.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_f5 then
  begin
    Qanggota.Close;
    Qanggota.Open;
  end;
end;

procedure Tfoanggota.FormShow(Sender: TObject);
begin
  Qanggota.Close;
  Qanggota.Open;
end;

procedure Tfoanggota.Hapus1Click(Sender: TObject);
begin
  if MessageDlg('Yakin Akan Menghapus Data Ini .. ?',mtWarning,[mbyes,mbno],0)=mryes then
  begin
    with dm do
    begin
      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('delete from anggota where idanggota=:idanggota');
      Qex.ParamByName('idanggota').AsInteger := Qanggotaidanggota.Value;
      Qex.Execute;

      Qanggota.Close;
      Qanggota.Open;
    end;
  end;
end;

procedure Tfoanggota.Koreksi1Click(Sender: TObject);
begin
  with fotambahanggota do
  begin
    fotambahanggota.mode :=1;
    fotambahanggota.flagubahcombo := 1;
      dm.isicombo3('kolektif',combkolektif,combkodekol,combidkol);
    fotambahanggota.flagubahcombo := 0;
  end;
  fotambahanggota.idanggota := Qanggotaidanggota.Value;
  fotambahanggota.flagubahcombo := 1;
  fotambahanggota.combkolektif.ItemIndex := fotambahanggota.combkolektif.Properties.Items.IndexOf(Qanggotanamakolektif.Text);
  fotambahanggota.combkodekol.ItemIndex := fotambahanggota.combkolektif.ItemIndex;
  fotambahanggota.combidkol.ItemIndex := fotambahanggota.combkolektif.ItemIndex;
  fotambahanggota.flagubahcombo := 0;

  fotambahanggota.kodeanggota.Text := Qanggotakodeanggota.Value;
  fotambahanggota.nama.Text := Qanggotanamaanggota.Value;
  fotambahanggota.tempat.Text := Qanggotatempat.Value;
  fotambahanggota.cxDateEdit1.Date := Qanggotatgllahir.Value;
  fotambahanggota.cxDateEdit2.Date := Qanggotatglgabung.Value;
  fotambahanggota.alamat.Text := Qanggotaalamat.Text;
  fotambahanggota.jeniskel.SelText := Qanggotajeniskelamin.Text;
  fotambahanggota.pekerjaan.Text := Qanggotapekerjaan.Text;
  fotambahanggota.nohp.Text := Qanggotanohp.Text;
  fotambahanggota.combaktif.SelText := Qanggotaaktif.Text;
  fotambahanggota.kodeanggotalama := Qanggotakodeanggota.Text;
  fotambahanggota.idkollama := Qanggotaidkolektif.Value;
  if fotambahanggota.ShowModal = mrok then
  begin
    Qanggota.Refresh;
  end;
end;

procedure Tfoanggota.RzToolButton1Click(Sender: TObject);
begin
  fotambahanggota.mode := 0;

  if fotambahanggota.ShowModal = mrok then
  begin
    Qanggota.Close;
    Qanggota.Open;
  end;

end;

procedure Tfoanggota.RzToolButton2Click(Sender: TObject);
var
  i : integer;
  hasilsisarow : integer;
begin
  with focetakbukusimp do
  begin
    dxMemData1.Close;
    dxMemData1.Open;
    Qlap.Close;
    Qlap.SQL.Clear;
    Qlap.SQL.Add(Qlap.SQLRefresh.Text);
    Qlap.ParamByName('id').AsInteger := Qanggotaidanggota.Value;
    Qlap.Open;
    if Qlap.RecordCount > 0 then
    begin
      dxMemData1.Edit;
      dxMemData1.ClearFields;
      dxMemData1.Post;
      dxMemData1.CreateFieldsFromDataSet(Qlap);
      dxMemData1.LoadFromDataSet(Qlap);
      if Qlap.RecordCount<18 then
      begin
        hasilsisarow := 18-Qlap.RecordCount;
      end
      else
      begin
        hasilsisarow := (Qlap.RecordCount div 18);
        hasilsisarow := hasilsisarow*18;
        if Qlap.RecordCount>hasilsisarow then
          hasilsisarow:=(hasilsisarow+18)-Qlap.RecordCount
        else
          hasilsisarow:=0;
      end;
      if hasilsisarow>0 then
      begin
        for I := 1 to hasilsisarow do
        begin
          dxMemData1.Append;
          dxMemData1.FieldByName('tgltrx').Value := '';
          dxMemData1.FieldByName('simppokok').Value :=0;
          dxMemData1.FieldByName('simpwajib').Value :=0;
          dxMemData1.FieldByName('simpmanasuka').Value :=0;
          dxMemData1.FieldByName('simphariraya').Value :=0;
          dxMemData1.FieldByName('simplain').Value :=0;
          dxMemData1.FieldByName('saldo').Value :=0;
          dxMemData1.Post;
        end;
      end;
      dxMemData1.First;
      Bukusimpanan.ShowReport();
    end
    else
    begin
      MessageDlg('Tidak Ada Transaksi Simpanan Untuk Anggota "'+Qanggotanamaanggota.Text+'" untuk anggota ini..?',mtWarning,[mbok],0);
    end;
  end;
end;

end.
