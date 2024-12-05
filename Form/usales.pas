unit usales;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer, MemDS,
  DBAccess, MyAccess, cxLabel, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  RzButton, Vcl.ExtCtrls, RzPanel, RzTabs, utambahsales, Vcl.Menus,
  cxGridCustomPopupMenu, cxGridPopupMenu;

type
  Tfosalesanggota = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet2: TRzTabSheet;
    RzPanel6: TRzPanel;
    RzPanel7: TRzPanel;
    RzPanel9: TRzPanel;
    RzToolButton3: TRzToolButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1idkolektif: TcxGridDBColumn;
    cxGridDBTableView1kodekolektif: TcxGridDBColumn;
    cxGridDBTableView1namakolektif: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    RzPanel10: TRzPanel;
    cxLabel11: TcxLabel;
    Dsales: TMyDataSource;
    Qsales: TMyQuery;
    Qsalesidkolektif: TIntegerField;
    Qsaleskodekolektif: TStringField;
    Qsalesnamakolektif: TStringField;
    Qanggota: TMyQuery;
    Danggota: TMyDataSource;
    Qanggotakodeanggota: TStringField;
    Qanggotanamaanggota: TStringField;
    Qanggotaalamat: TStringField;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2kodeanggota: TcxGridDBColumn;
    cxGridDBTableView2namaanggota: TcxGridDBColumn;
    cxGridDBTableView2alamat: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    PopupMenu1: TPopupMenu;
    KoreksiData1: TMenuItem;
    HapusData1: TMenuItem;
    N1: TMenuItem;
    SetNonaktif1: TMenuItem;
    Qsalesaktif: TStringField;
    cxGridDBTableView1aktif: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure cxGridDBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure RzToolButton3Click(Sender: TObject);
    procedure KoreksiData1Click(Sender: TObject);
    procedure HapusData1Click(Sender: TObject);
    procedure SetNonaktif1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fosalesanggota: Tfosalesanggota;

implementation

{$R *.dfm}

procedure Tfosalesanggota.cxGridDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  cxLabel11.Caption := 'Daftar Anggota Yang dibawahi : '+Qsalesnamakolektif.Text;
  Qanggota.Close;
  Qanggota.SQL.Clear;
  Qanggota.SQL.Add(Qanggota.SQLRefresh.Text);
  Qanggota.ParamByName('idkolektif').AsInteger := Qsalesidkolektif.Value;
  Qanggota.Open;
end;

procedure Tfosalesanggota.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_f5 then
  begin
    Qsales.Close;
    Qsales.Open;
  end;
end;

procedure Tfosalesanggota.FormShow(Sender: TObject);
begin
  Qsales.Close;
  Qsales.Open;
end;

procedure Tfosalesanggota.HapusData1Click(Sender: TObject);
begin
  if Qsales.RecordCount > 0 then
  begin
    with dm do
    begin
      Qcek.Close;
      Qcek.SQL.Clear;
      Qcek.SQL.Add('Select * from anggota where idkolektif=:idkolektif');
      Qcek.ParamByName('idkolektif').AsInteger := Qsalesidkolektif.Value;
      Qcek.Open;
      if Qcek.RecordCount > 0 then
      begin
        MessageDlg('Sales Yang sudah mempunyai Anggota Tidak Bisa Dihapus..!',mtWarning,[mbok],0);
      end
      else
      begin
        if MessageDlg('Yakin Menghapus Sales "'+Qsalesnamakolektif.Text+'" ini ?',mtConfirmation,[mbyes,mbno],0)=mryes then
        begin
          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('delete from kolektif where idkolektif=:idkolektif');
          Qex.ParamByName('idkolektif').AsInteger := Qsalesidkolektif.Value;
          Qex.Execute;

          Qsales.Close;
          Qsales.Open;
        end;
      end;
    end;
  end;
end;

procedure Tfosalesanggota.KoreksiData1Click(Sender: TObject);
begin
  fotambahsales.mode :=1;
  fotambahsales.kodesales.Text := Qsaleskodekolektif.Text;
  fotambahsales.namasales.Text := Qsalesnamakolektif.Text;
  fotambahsales.idsales := Qsalesidkolektif.Value;
  fotambahsales.kodesaleslama := Qsaleskodekolektif.Text;
  if fotambahsales.ShowModal = mrok then
  begin
    Qsales.Close;
    Qsales.Open;
  end;
end;

procedure Tfosalesanggota.PopupMenu1Popup(Sender: TObject);
begin
  if Qsalesaktif.Text='AKTIF' then
  begin
    SetNonaktif1.Caption := 'Set Nonaktif';
  end
  else
  begin
    SetNonaktif1.Caption := 'Set Aktif';
  end;
end;

procedure Tfosalesanggota.RzToolButton3Click(Sender: TObject);
begin
  fotambahsales.mode :=0;
  if fotambahsales.ShowModal = mrok then
  begin
    Qsales.Refresh;
  end;
end;

procedure Tfosalesanggota.SetNonaktif1Click(Sender: TObject);
begin
  if Qsalesaktif.Text='AKTIF' then
  begin
    if MessageDlg('Yakin Menonaktifkan Sales "'+Qsalesnamakolektif.Text+'" ini ?',mtConfirmation,[mbyes,mbno],0)=mryes then
    begin
      with dm do
      begin
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('update kolektif set aktif=:aktif where idkolektif=:idkolektif');
        Qex.ParamByName('aktif').AsString := 'NONAKTIF';
        Qex.ParamByName('idkolektif').AsInteger := Qsalesidkolektif.Value;
        Qex.Execute;

        Qsales.Refresh;
      end;
    end;
  end
  else
  begin
    if MessageDlg('Yakin MengAktifkan Sales "'+Qsalesnamakolektif.Text+'" ini ?',mtConfirmation,[mbyes,mbno],0)=mryes then
    begin
      with dm do
      begin
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('update kolektif set aktif=:aktif where idkolektif=:idkolektif');
        Qex.ParamByName('aktif').AsString := 'AKTIF';
        Qex.ParamByName('idkolektif').AsInteger := Qsalesidkolektif.Value;
        Qex.Execute;

        Qsales.Refresh;
      end;
    end;
  end;
end;

end.
