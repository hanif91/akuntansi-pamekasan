unit ujenissimpanan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxPC, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxCurrencyEdit, dxWheelPicker,
  cxCheckBox, dxToggleSwitch, cxLabel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, DBAccess, MyAccess, MemDS, dxDockControl, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, RzButton, dxDockPanel, Vcl.ExtCtrls,
  RzPanel, RzTabs, ugantikodeakun, utamjenissimp, cxGridCustomPopupMenu,
  cxGridPopupMenu;

type
  Tfojenissimpanan = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1setorsimp: TRzPanel;
    RzPanel2: TRzPanel;
    dxDockSite1: TdxDockSite;
    Qjenis: TMyQuery;
    Djenis: TMyDataSource;
    Qjenisidsimpanan: TIntegerField;
    Qjenisnamasimpanan: TStringField;
    Qjenisminimsetor: TFloatField;
    Qjenisflagmodal: TStringField;
    Qjenisindek: TSmallintField;
    Qjenisflagsetor: TStringField;
    Qjenisidcoa: TIntegerField;
    Qjeniskodeakun: TStringField;
    Qjenisnamaakun: TStringField;
    dxDockPanel1: TdxDockPanel;
    cxLabel1: TcxLabel;
    dxToggleSwitch1: TdxToggleSwitch;
    cxLabel2: TcxLabel;
    dxToggleSwitch2: TdxToggleSwitch;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxLabel5: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxButton1: TcxButton;
    cxTextEdit2: TcxTextEdit;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxDockPanel2: TdxDockPanel;
    RzPanel3: TRzPanel;
    RzToolButton1: TRzToolButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1idsimpanan: TcxGridDBColumn;
    cxGrid1DBTableView1namasimpanan: TcxGridDBColumn;
    cxGrid1DBTableView1minimsetor: TcxGridDBColumn;
    cxGrid1DBTableView1flagmodal: TcxGridDBColumn;
    cxGrid1DBTableView1indek: TcxGridDBColumn;
    cxGrid1DBTableView1flagsetor: TcxGridDBColumn;
    cxGrid1DBTableView1idcoa: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    dxLayoutDockSite2: TdxLayoutDockSite;
    PopupMenu1: TPopupMenu;
    cxGridPopupMenu1: TcxGridPopupMenu;
    HapusData1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure dxToggleSwitch1Click(Sender: TObject);
    procedure dxToggleSwitch2Click(Sender: TObject);
    procedure cxCurrencyEdit1PropertiesChange(Sender: TObject);
    procedure cxCurrencyEdit1FocusChanged(Sender: TObject);
    procedure cxCurrencyEdit2PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure HapusData1Click(Sender: TObject);
  private
    { Private declarations }
    flagedit : byte;
  public
    { Public declarations }
  end;

var
  fojenissimpanan: Tfojenissimpanan;

implementation

{$R *.dfm}

procedure Tfojenissimpanan.cxButton1Click(Sender: TObject);
begin
  fogantikodeakun.lblkodeakunlama.Caption := cxTextEdit1.Text+'-'+cxTextEdit2.Text;
  if dxToggleSwitch1.Checked then
    fogantikodeakun.flagmodal := 1
  else
    fogantikodeakun.flagmodal := 0;
  if fogantikodeakun.ShowModal = mrok then
  begin
    try
      with dm do
      begin
        Qex.Close;
        qex.SQL.Clear;
        Qex.SQL.Add('Update jenis_simpanan set idcoa=:idcoa where idsimpanan=:idsimpanan ');
        Qex.ParamByName('idsimpanan').AsInteger := Qjenisidsimpanan.Value;
        Qex.ParamByName('idcoa').AsInteger := StrToIntDef(fogantikodeakun.combid3.Text,0);
        Qex.Execute;

        Qjenis.Refresh;
      end;
    except
      on e: exception do
      begin
        MessageDlg('Terdapat Kesalahan..!'+#13+e.Message+#13+'Harap Hubungi Operator..!',mtError,[mbok],0);
      end;
    end;
  end

end;

procedure Tfojenissimpanan.cxCurrencyEdit1FocusChanged(Sender: TObject);
begin
  Qjenis.Refresh;
end;

procedure Tfojenissimpanan.cxCurrencyEdit1PropertiesChange(Sender: TObject);
begin
  try
    if flagedit=0 then
    begin
      with dm do
      begin
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('Update jenis_simpanan set indek=:indek where idsimpanan=:idsimpanan');
        Qex.ParamByName('idsimpanan').AsInteger := Qjenisidsimpanan.Value;
        Qex.ParamByName('indek').AsCurrency := cxCurrencyEdit1.Value;
        Qex.Execute;

        Qjenis.Refresh;
      end;
    end;
  except
    on e: exception do
    begin
      MessageDlg('Terdapat Kesalahan..!'+#13+e.Message+#13+'Harap Hubungi Operator..!',mtError,[mbok],0);
      cxCurrencyEdit1.Value := Qjenisindek.Value;
      flagedit := 0;
    end;
  end;
end;

procedure Tfojenissimpanan.cxCurrencyEdit2PropertiesChange(Sender: TObject);
begin
  try
    if flagedit=0 then
    begin
      with dm do
      begin
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('Update jenis_simpanan set minimsetor=:minimsetor where idsimpanan=:idsimpanan');
        Qex.ParamByName('idsimpanan').AsInteger := Qjenisidsimpanan.Value;
        Qex.ParamByName('minimsetor').AsCurrency := cxCurrencyEdit2.Value;
        Qex.Execute;

        Qjenis.Refresh;
      end;
    end;
  except
    on e: exception do
    begin
      MessageDlg('Terdapat Kesalahan..!'+#13+e.Message+#13+'Harap Hubungi Operator..!',mtError,[mbok],0);
      cxCurrencyEdit1.Value := Qjenisindek.Value;
      flagedit := 0;
    end;
  end;
end;

procedure Tfojenissimpanan.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  flagedit := 1;
  if Qjenisflagmodal.Value='1' then
  begin
    dxToggleSwitch1.Checked := true
  end
  else
  begin
    dxToggleSwitch1.Checked := false
  end;

  if Qjenisflagsetor.Value='1' then
  begin
    dxToggleSwitch2.Checked := true
  end
  else
  begin
    dxToggleSwitch2.Checked := false
  end;
  cxCurrencyEdit1.Value := Qjenisindek.Value;
  cxCurrencyEdit2.Value := Qjenisminimsetor.Value;
  cxTextEdit1.Text := Qjeniskodeakun.Value;
  cxTextEdit2.Text := Qjenisnamaakun.Value;
  flagedit :=0;
end;

procedure Tfojenissimpanan.dxToggleSwitch1Click(Sender: TObject);
begin
  if dxToggleSwitch1.Checked then
  begin
    try
      with dm do
      begin
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('Update jenis_simpanan set flagmodal=1 where idsimpanan=:idsimpanan');
        Qex.ParamByName('idsimpanan').AsInteger := Qjenisidsimpanan.Value;
        Qex.Execute;
      end;
    except
      on e: exception do
      begin
        MessageDlg('Terdapat Kesalahan..!'+#13+e.Message+#13+'Harap Hubungi Operator..!',mtError,[mbok],0);
        dxToggleSwitch1.Checked := false;
      end;
    end;
  end
  else
  begin
    try
      with dm do
      begin
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('Update jenis_simpanan set flagmodal=0 where idsimpanan=:idsimpanan');
        Qex.ParamByName('idsimpanan').AsInteger := Qjenisidsimpanan.Value;
        Qex.Execute;
      end;
    except
      on e: exception do
      begin
        MessageDlg('Terdapat Kesalahan..!'+#13+e.Message+#13+'Harap Hubungi Operator..!',mtError,[mbok],0);
        dxToggleSwitch1.Checked := true;
      end;
    end;
  end;
end;

procedure Tfojenissimpanan.dxToggleSwitch2Click(Sender: TObject);
begin
  if dxToggleSwitch2.Checked then
  begin
    try
      with dm do
      begin
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('Update jenis_simpanan set flagsetor=1 where idsimpanan=:idsimpanan');
        Qex.ParamByName('idsimpanan').AsInteger := Qjenisidsimpanan.Value;
        Qex.Execute;
      end;
    except
      on e: exception do
      begin
        MessageDlg('Terdapat Kesalahan..!'+#13+e.Message+#13+'Harap Hubungi Operator..!',mtError,[mbok],0);
        dxToggleSwitch1.Checked := false;
      end;
    end;
  end
  else
  begin
    try
      with dm do
      begin
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('Update jenis_simpanan set flagsetor=0 where idsimpanan=:idsimpanan');
        Qex.ParamByName('idsimpanan').AsInteger := Qjenisidsimpanan.Value;
        Qex.Execute;
      end;
    except
      on e: exception do
      begin
        MessageDlg('Terdapat Kesalahan..!'+#13+e.Message+#13+'Harap Hubungi Operator..!',mtError,[mbok],0);
        dxToggleSwitch1.Checked := true;
      end;
    end;
  end;
end;

procedure Tfojenissimpanan.FormShow(Sender: TObject);
begin
  Qjenis.Close;
  Qjenis.Open;
end;

procedure Tfojenissimpanan.HapusData1Click(Sender: TObject);
begin
  if MessageDlg('Yakin menghapus Jenis Simpanan "'+Qjenisnamasimpanan.Text+'" ini ?',mtWarning,[mbyes,mbno],0)=mryes then
  begin
    with dm do
    begin
      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('Delete from jenis_simpanan where idsimpanan=:idsimpanan');
      Qex.ParamByName('idsimpanan').AsInteger := Qjenisidsimpanan.Value;
      Qex.Execute;

      Qjenis.Refresh;
    end;
  end;
end;

procedure Tfojenissimpanan.RzToolButton1Click(Sender: TObject);
begin
  if fotambjenissimp.ShowModal=mrok then
  Qjenis.Refresh;
end;

end.
