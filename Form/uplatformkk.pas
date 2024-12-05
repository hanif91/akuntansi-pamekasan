unit uplatformkk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.ExtCtrls, RzPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinsDefaultPainters, Vcl.StdCtrls, cxTextEdit, cxCurrencyEdit, cxDBEdit,
  Data.DB, DBAccess, MyAccess, MemDS, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, RzButton, cxImageComboBox,
  cxCheckBox, dxBarBuiltInMenu, Vcl.Menus, cxGridCustomPopupMenu,
  cxGridPopupMenu, scDevExStyleAdapter;

type
  Tfoplatformkk = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel2: TRzPanel;
    Qplat: TMyQuery;
    Dplat: TMyDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    Panel3: TPanel;
    RzToolButton1: TRzToolButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Qkas: TMyQuery;
    Dkas: TMyDataSource;
    Qkasid: TIntegerField;
    Qkastotal: TFloatField;
    Qkastanggal: TDateField;
    Qkasnovoucher: TStringField;
    Qkasflaglunas: TSmallintField;
    cxGrid1DBTableView1total: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1novoucher: TcxGridDBColumn;
    cxGrid1DBTableView1flaglunas: TcxGridDBColumn;
    Panel4: TPanel;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Panel5: TPanel;
    Label3: TLabel;
    Qdkas: TMyQuery;
    DDkas: TMyDataSource;
    Qdkasnotrans: TStringField;
    Qdkastanggal: TDateField;
    Qdkastotal: TFloatField;
    Qdkasnovoucher: TStringField;
    cxGrid2DBTableView1notrans: TcxGridDBColumn;
    cxGrid2DBTableView1tanggal: TcxGridDBColumn;
    cxGrid2DBTableView1total: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    PopupMenu1: TPopupMenu;
    Koreksi1: TMenuItem;
    Hapus1: TMenuItem;
    N1: TMenuItem;
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure RzToolButton1Click(Sender: TObject);
    procedure cxCheckBox2Click(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure Koreksi1Click(Sender: TObject);
    procedure Hapus1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure refreshdata;
  end;

var
  foplatformkk: Tfoplatformkk;

implementation

{$R *.dfm}

uses udm, utambahisivkk;

procedure Tfoplatformkk.cxCheckBox1Click(Sender: TObject);
begin
  refreshdata;
  Qplat.Close;
  Qplat.Open;
end;

procedure Tfoplatformkk.cxCheckBox2Click(Sender: TObject);
begin
  refreshdata;
  Qplat.Close;
  Qplat.Open;
end;

procedure Tfoplatformkk.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Qdkas.Close;
  Qdkas.SQL.Clear;
  Qdkas.SQL.Add(Qdkas.SQLRefresh.Text);
  Qdkas.ParamByName('novoucher').AsString := Qkasnovoucher.Value;
  Qdkas.Open;
end;

procedure Tfoplatformkk.FormShow(Sender: TObject);
begin
  refreshdata;
  Qplat.Close;
  Qplat.Open;
end;

procedure Tfoplatformkk.Hapus1Click(Sender: TObject);
var
  pos : tbookmark;
begin
  Qkas.DisableControls;
  pos := Qkas.GetBookmark;
  Qkas.Close;
  Qkas.Open;
  Qkas.GotoBookmark(pos);
  Qkas.EnableControls;
  if Qkasflaglunas.Value=1 then
  begin
    MessageDlg('Data Pengisian Kembali Sudah Diterima..!',mtWarning,[mbok],0);
    Exit;
  end;
  try
  with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('Select * from voucher where notrans=:notrans');
    Qcek.ParamByName('notrans').AsString := Qkasnovoucher.Value;
    Qcek.Open;
    if Qcek.RecordCount > 0 then
    begin

      if Qcek.FieldByName('flaglunas').AsString='1' then
      begin
        MessageDlg('Status Voucher sudah lunas..! Tidak Bisa dihapus!',mtWarning,[mbok],0);
      end
      else
      begin
        Conn1.StartTransaction;
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('delete from vkk_isi where novoucher=:novoucher');
        Qex.ParamByName('novoucher').AsString := Qkasnovoucher.Value;
        Qex.Execute;

        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('Update vkk set novoucher=NULL where novoucher=:novoucher');
        Qex.ParamByName('novoucher').AsString := Qkasnovoucher.Value;
        Qex.Execute;

        Conn1.Commit;

        Qkas.Close;
        Qkas.Open;
      end;

    end
    else
    begin
      Conn1.StartTransaction;
      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('delete from vkk_isi where novoucher=:novoucher');
      Qex.ParamByName('novoucher').AsString := Qkasnovoucher.Value;
      Qex.Execute;

      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('Update vkk set novoucher=NULL where novoucher=:novoucher');
      Qex.ParamByName('novoucher').AsString := Qkasnovoucher.Value;
      Qex.Execute;

      Conn1.Commit;

      Qkas.Close;
      Qkas.Open;
    end;
  end;
  Except
    on e:exception do
    begin
      MessageDlg('Terdapat Kesalahan..!'+#13+e.Message,mtWarning,[mbok],0);
    end;
  end;
end;

procedure Tfoplatformkk.Koreksi1Click(Sender: TObject);
var
  pos : tbookmark;
begin
  Qkas.DisableControls;
  pos := Qkas.GetBookmark;
  Qkas.Close;
  Qkas.Open;
  Qkas.GotoBookmark(pos);
  Qkas.EnableControls;
  if Qkasflaglunas.Value=1 then
  begin
    MessageDlg('Data Pengisian Kembali Sudah Diterima..!',mtWarning,[mbok],0);
    Exit;
  end;
  try
  with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('Select * from voucher where notrans=:notrans');
    Qcek.ParamByName('notrans').AsString := Qkasnovoucher.Value;
    Qcek.Open;
    if Qcek.RecordCount > 0 then
    begin
      if Qcek.FieldByName('flaglunas').AsString='1' then
      begin
        if Qcek.FieldByName('jumlah').AsCurrency=Qkastotal.Value then
        begin
          Conn1.StartTransaction;

          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('update vkk_isi set flaglunas="1" where novoucher=:novoucher');
          Qex.ParamByName('novoucher').AsString := Qkasnovoucher.Value;
          Qex.Execute;

          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('Update vkk_platform set sisa=sisa+:total');
          Qex.ParamByName('total').AsCurrency := Qkastotal.Value;
          Qex.Execute;

          Conn1.Commit;

          Qkas.DisableControls;
          pos := Qkas.GetBookmark;
          Qkas.Close;
          Qkas.Open;
          Qkas.GotoBookmark(pos);
          Qkas.EnableControls;
          Qplat.Close;
          Qplat.Open;
        end
        else
        begin
          MessageDlg('Total VKK dan Voucher Pengisisan Tidak Sama ! Harap Hubungi Administrator.!',mtError,[mbok],0);
        end;
      end
      else
      begin
        MessageDlg('Status Voucher masih Belum lunas..!',mtWarning,[mbok],0);
      end;

    end
    else
    begin
      MessageDlg('No Voucher Tidak terdaftar ...!',mtWarning,[mbok],0);
    end;
  end;
  Except
    on e:exception do
    begin
      MessageDlg('Terdapat Kesalahan..!'+#13+e.Message,mtWarning,[mbok],0);
    end;
  end;
end;

procedure Tfoplatformkk.refreshdata;
begin
  Qkas.Close;
  Qkas.SQL.Clear;
  Qkas.SQL.Add(Qkas.SQLRefresh.Text);
  if (cxCheckBox2.Checked) and (cxCheckBox1.Checked) then
  begin

  end
  else
  begin
    if (cxCheckBox2.Checked) and (cxCheckBox1.Checked=false) then
    begin
      Qkas.SQL.Add('WHERE flaglunas="1"');
    end
    else if (cxCheckBox2.Checked=false) and (cxCheckBox1.Checked) then
    begin
      Qkas.SQL.Add('WHERE flaglunas="0"');
    end;
  end;
  Qkas.sql.Add('ORDER BY tanggal');
  Qkas.Open;
end;

procedure Tfoplatformkk.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
 Close;
end;

procedure Tfoplatformkk.RzToolButton1Click(Sender: TObject);
begin

  try
    if fotambahisivkk=nil then
    begin
      fotambahisivkk := Tfotambahisivkk.Create(Application);
    end;
    fotambahisivkk.idcoakre := Qplat.FieldByName('idcoakre').AsInteger;
    fotambahisivkk.Qkas.Close;
    fotambahisivkk.Qkas.Open;
    if fotambahisivkk.Qkas.RecordCount > 0 then
    begin
      if fotambahisivkk.ShowModal = mrok then
      begin
        refreshdata;
        Qplat.Close;
        Qplat.Open;
      end;
    end
    else
    begin
      MessageDlg('Tidak ada data transaksi.!',mtWarning,[mbok],0);
    end;
  except
    on e:Exception do
    begin
      MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
    end;
  end;
end;

end.
