unit userakses;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, dxSkinsCore, dxSkinBlueprint,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxPC, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCheckBox, Vcl.Menus, dxBarBuiltInMenu, cxGridCustomPopupMenu,
  cxGridPopupMenu, MemDS, DBAccess, MyAccess, Vcl.StdCtrls, cxButtons,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, RzButton, dxDockPanel, dxDockControl,
  RzTabs, Vcl.ExtCtrls, RzPanel, utambahuser, uedithakakses, dxSkinFoggy,
  dxSkiniMaginary, dxSkinsDefaultPainters;

type
  Tfouserakses = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    dxDockSite1: TdxDockSite;
    dxLayoutDockSite3: TdxLayoutDockSite;
    dxLayoutDockSite2: TdxLayoutDockSite;
    dxDockPanel2: TdxDockPanel;
    RzPanel1: TRzPanel;
    RzToolButton1: TRzToolButton;
    dxDockPanel3: TdxDockPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1username: TcxGridDBColumn;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1jabatan: TcxGridDBColumn;
    cxGrid1DBTableView1alamat: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxButton1: TcxButton;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1iddm: TcxGridDBColumn;
    cxGrid2DBTableView1idmu: TcxGridDBColumn;
    cxGrid2DBTableView1namadm: TcxGridDBColumn;
    cxGrid2DBTableView1iduser: TcxGridDBColumn;
    cxGrid2DBTableView1flag: TcxGridDBColumn;
    cxGrid2DBTableView1group1: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    Duser: TMyDataSource;
    Quser: TMyQuery;
    Quserid: TIntegerField;
    Quserusername: TStringField;
    Qusernama: TStringField;
    Qusernik: TStringField;
    Quserpass: TStringField;
    Quseralamat: TStringField;
    cxGridPopupMenu1: TcxGridPopupMenu;
    PopupMenu1: TPopupMenu;
    Koreksi1: TMenuItem;
    Hapus1: TMenuItem;
    N1: TMenuItem;
    ResetPassword1: TMenuItem;
    cxGrid1DBTableView1nik: TcxGridDBColumn;
    Dhakakses: TMyDataSource;
    Qhakakses: TMyQuery;
    Qhakaksesiddm: TIntegerField;
    Qhakaksesidmu: TIntegerField;
    Qhakaksesnamadm: TStringField;
    Qhakaksesnamamu: TStringField;
    Qhakaksesiduser: TIntegerField;
    Qhakaksesflag: TLargeintField;
    Qhakaksesgroup1: TStringField;
    Quserjabatan: TStringField;
    procedure FormShow(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure Koreksi1Click(Sender: TObject);
    procedure Hapus1Click(Sender: TObject);
    procedure ResetPassword1Click(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  fouserakses: Tfouserakses;

implementation
uses math;

{$R *.dfm}

procedure Tfouserakses.cxButton1Click(Sender: TObject);
var
  i : integer;
begin
  with foedithakakses do
  begin
    dxMemdata1.Close;
    dxMemdata1.Open;
    Qhakakses.DisableControls;
    Qhakakses.First;
    for i := 1 to Qhakakses.RecordCount do
    begin
      dxMemdata1.Append;
      dxMemdata1iddm.Value := Qhakaksesiddm.Value;
      dxMemdata1idmu.Value := Qhakaksesidmu.Value;
      dxMemdata1namadm.Value := Qhakaksesnamadm.Value;
      dxMemdata1iduser.Value := Qhakaksesiduser.Value;
      dxMemdata1flag.Value := Qhakaksesflag.Value;
      dxMemdata1group1.Value := Qhakaksesgroup1.Value;
      dxMemdata1.Post;

      Qhakakses.Next;
      Application.ProcessMessages;
    end;
    Qhakakses.First;
    Qhakakses.EnableControls;
    if ShowModal=mrok then
    begin
      with dm do
      begin
        conn1.StartTransaction;

        Qex.close;
        Qex.SQL.Clear;
        Qex.SQL.Add('delete from hakakses where iduser=:iduser');
        Qex.ParamByName('iduser').AsInteger := Quserid.Value;
        Qex.Execute;
        dxMemdata1.First;
        dxMemdata1.DisableControls;
        for i := 1 to dxMemdata1.RecordCount do
        begin
          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('Insert into hakakses values (:iduser,:iddm)');
          Qex.ParamByName('iduser').AsInteger := Quserid.Value;
          Qex.ParamByName('iddm').AsInteger := dxMemdata1iddm.Value;
          if dxMemdata1flag.Value=1 then
            Qex.Execute;

          dxMemdata1.Next;
          Application.ProcessMessages;
        end;
        dxMemdata1.First;
        dxMemdata1.EnableControls;

        conn1.Commit;
      end;
      Qhakakses.Close;
      Qhakakses.Open;
    end;
  end;
end;

procedure Tfouserakses.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if Quser.RecordCount > 0 then
  begin
    Qhakakses.Close;
    Qhakakses.sql.Clear;
    qhakakses.sql.Add(Qhakakses.SQLRefresh.Text);
    Qhakakses.ParamByName('iduser').AsInteger := Quserid.Value;
    Qhakakses.Open;
  end
  else
  begin
      Qhakakses.Close;
  end;
end;

procedure Tfouserakses.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  self.FormStyle := fsNormal;
  Self.Visible := false;
end;

procedure Tfouserakses.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_Return then
  begin
    Quser.Close;
    Quser.Open;
  end;
end;

procedure Tfouserakses.FormShow(Sender: TObject);
begin
  Quser.Close;
  Quser.Open;
end;

procedure Tfouserakses.Hapus1Click(Sender: TObject);
begin
  if MessageDlg('Yakin Mengahpus Username ini "'+Quserusername.Value+'" ini ?',mtWarning,[mbyes,mbNo],0)=mryes then
  begin
    with dm do
    begin
      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('delete from userakses where id=:id;');
      Qex.sql.Add('delete from hakakses where iduser=:id;');
      Qex.ParamByName('id').AsInteger := Quserid.Value;
      Qex.Execute;

      Self.Quser.Close;
      Self.Quser.Open;
    end;
  end;
end;

procedure Tfouserakses.Koreksi1Click(Sender: TObject);
begin
  fotambahuser.mode := 1;
  fotambahuser.id := Quserid.Value;
  fotambahuser.user := Quserusername.Value;
  fotambahuser.txtnama.Text := Qusernama.Value;
  fotambahuser.txtalamat.Text := Quseralamat.Value;

  fotambahuser.cxTextEdit1.Text := Quserjabatan.Text;
  fotambahuser.txtnik.Text := Qusernik.Value;
  fotambahuser.txtuser.Text := Quserusername.Value;
  fotambahuser.txtpass.Text := 'admin';
  if fotambahuser.ShowModal=mrok then
  begin
    Quser.close;
    quser.Open;
  end;
end;

procedure Tfouserakses.ResetPassword1Click(Sender: TObject);
var
  i : integer;
begin
  if MessageDlg('Yakin Reset Password user "'+Quserusername.Value+'" ini ?',mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    i := RandomRange(1001,9999);
    with dm do
    begin
      Qex.Close;
      Qex.SQL.Clear;
      Qex.sql.Add('Update userakses set pass=MD5(:pass) where id=:id');
      Qex.ParamByName('id').AsInteger := Quserid.Value;
      Qex.ParamByName('pass').AsString := IntToStr(i);
      Qex.Execute;

      Quser.Refresh;
      MessageDlg('Pasword berhasil di reset'+#13+'Password Baru anda : '+IntToStr(i),mtInformation,[mbok],0);
    end;
  end;
end;

procedure Tfouserakses.RzToolButton1Click(Sender: TObject);
begin
  fotambahuser.mode := 0;
  if fotambahuser.ShowModal=mrok then
  begin
    Quser.close;
    quser.Open;
  end;
end;

end.
