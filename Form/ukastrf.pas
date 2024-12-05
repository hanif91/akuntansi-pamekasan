unit ukastrf;

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
  cxTextEdit, cxCheckBox, utambahkt;

type
  Tfokastrf = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1setorsimp: TRzPanel;
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
    RzPanel3: TRzPanel;
    RzToolButton1: TRzToolButton;
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
    cxGrid1DBTableView1kas: TcxGridDBColumn;
    cxCheckBox4: TcxCheckBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxCheckBox5: TcxCheckBox;
    cxTextEdit2: TcxTextEdit;
    Qkaskasdebet: TStringField;
    Qkaskaskredit: TStringField;
    cxGrid1DBTableView1kaskredit: TcxGridDBColumn;
    cxCheckBox6: TcxCheckBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    procedure FormShow(Sender: TObject);
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
    procedure cxCheckBox6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var fokastrf: Tfokastrf;

implementation

{$R *.dfm}

procedure Tfokastrf.cxCheckBox1Click(Sender: TObject);
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

procedure Tfokastrf.cxCheckBox2Click(Sender: TObject);
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

procedure Tfokastrf.cxCheckBox3Click(Sender: TObject);
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

procedure Tfokastrf.cxCheckBox4Click(Sender: TObject);
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

procedure Tfokastrf.cxCheckBox5Click(Sender: TObject);
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

procedure Tfokastrf.cxCheckBox6Click(Sender: TObject);
begin
  if cxCheckBox6.Checked then
  begin
    cxDBLookupComboBox2.Enabled := true;
    cxDBLookupComboBox2.SetFocus;
  end
  else
  begin
    cxDBLookupComboBox2.Enabled := false;
  end;
end;

procedure Tfokastrf.cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    RzToolButton2.Click;
  end;
end;

procedure Tfokastrf.FormShow(Sender: TObject);
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
  DM.Qkas_dbl2.Close;
  DM.Qkas_dbl2.Open;
  DM.Qlist_kas2.Close;
  DM.Qlist_kas2.Open;
  cxDateEdit1.Date := date;
  cxDateEdit2.Date := date;
  cxDateEdit3.Date := date;
  cxDateEdit4.Date := date;
end;

procedure Tfokastrf.Hapus1Click(Sender: TObject);
begin
  if MessageDlg('Yakin Menghapus Transaksi Kas Transfer "'+Qkasnotrans.Value+'" ini ?',mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    with dm do
    begin
      try
        Conn1.StartTransaction;

        qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('delete from m_kastransfer where notrans=:notrans');
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

procedure Tfokastrf.Koreksi1Click(Sender: TObject);
var i, j: byte;
begin
  with fotambahkastrf do
  begin
    mode := 1;
    dm.isicombo1('akunkas', cxComboBox1);
    dm.isicombo1('akunkas', cxComboBox2);
    cxComboBox1.ItemIndex := cxComboBox1.Properties.Items.IndexOf(Qkaskasdebet.Text);
    cxComboBox2.ItemIndex := cxComboBox1.Properties.Items.IndexOf(Qkaskaskredit.Text);
    flagkosong2 := 0;
    kondisiawal2;
    cxDateEdit1.Date := Qkastanggal.Value;
    cxTextEdit1.Text := Qkasnotrans.Value;
    cxMemo1.Text := Qkasketerangan.Value;
    periodelama := Qkastanggal.Value;

    if fotambahkastrf.ShowModal = mrok then
    begin
      Qkas.Refresh;
    end;
  end;
end;

procedure Tfokastrf.RzToolButton1Click(Sender: TObject);
begin
  fotambahkastrf.mode := 0;
  if fotambahkastrf.ShowModal = mrok then
  begin
    Qkas.Close;
    Qkas.Open;
  end;
end;

procedure Tfokastrf.RzToolButton2Click(Sender: TObject);
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
    Qkas.SQL.Add('AND kasdebet=:kasdebet');
    Qkas.ParamByName('kasdebet').value := cxDBLookupComboBox1.EditValue;
  end;
  if cxCheckBox6.Checked then
  begin
    Qkas.SQL.Add('AND kaskredit=:kaskredit');
    Qkas.ParamByName('kaskredit').value := cxDBLookupComboBox2.EditValue;
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
