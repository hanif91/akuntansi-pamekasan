unit utamjenissimp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, cxCurrencyEdit, cxTextEdit, cxCheckBox, dxToggleSwitch,
  cxLabel, cxMaskEdit, cxDropDownEdit, RzButton, RzTabs, Vcl.ExtCtrls, RzPanel;

type
  Tfotambjenissimp = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    RzToolButton1: TRzToolButton;
    combkode1: TcxComboBox;
    combkode2: TcxComboBox;
    cxLabel6: TcxLabel;
    combid3: TcxComboBox;
    dxToggleSwitch2: TdxToggleSwitch;
    dxToggleSwitch1: TdxToggleSwitch;
    cxLabel2: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    procedure FormShow(Sender: TObject);
    procedure dxToggleSwitch1Click(Sender: TObject);
    procedure combkode1PropertiesChange(Sender: TObject);
    procedure combkode2PropertiesChange(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure RzToolButton1Click(Sender: TObject);
  private
    { Private declarations }
flagclear : byte;
  public
    { Public declarations }
    procedure isikodetahap3(id : integer; combo1,combo2,combo3 : TcxComboBox);
    procedure kosongkantext;
  end;

var
  fotambjenissimp: Tfotambjenissimp;

implementation

{$R *.dfm}

{ Tfotambjenissimp }

procedure Tfotambjenissimp.combkode1PropertiesChange(Sender: TObject);
begin
  combkode2.ItemIndex := combkode1.ItemIndex;
  combid3.ItemIndex := combkode1.ItemIndex;
end;

procedure Tfotambjenissimp.combkode2PropertiesChange(Sender: TObject);
begin
  combkode1.ItemIndex := combkode2.ItemIndex;
  combid3.ItemIndex := combkode2.ItemIndex;
end;

procedure Tfotambjenissimp.dxToggleSwitch1Click(Sender: TObject);
begin
  if flagclear=0 then
  begin
    try
      isikodetahap3(-1,combkode2,combkode1,combid3);
    except
      on e:exception do
      begin
        MessageDlg('Terdapat Kesalahan..!'+e.Message,mtError,[mbok],0);
      end
    end;
  end;
  combkode1.SetFocus;
end;

procedure Tfotambjenissimp.FormShow(Sender: TObject);
begin
  kosongkantext;
  if flagclear=0 then
  begin
    try
      isikodetahap3(-1,combkode2,combkode1,combid3);
    except
      on e:exception do
      begin
        MessageDlg('Terdapat Kesalahan..!'+e.Message,mtError,[mbok],0);
      end
    end;
  end;

  combkode1.SetFocus;
end;

procedure Tfotambjenissimp.isikodetahap3(id: integer; combo1, combo2,
  combo3: TcxComboBox);
begin
  if dxToggleSwitch1.Checked then
  begin
    dm.Qcek.Close;
    dm.Qcek.SQL.Clear;
    dm.Qcek.SQL.Add('SELECT * FROM masterakun WHERE tipe1 IN ("AKTIVA","PASIVA") AND tipe2 REGEXP "MODAL|DANA"');
    dm.Qcek.open;
  end
  else
  begin
    dm.Qcek.Close;
    dm.Qcek.SQL.Clear;
    dm.Qcek.SQL.Add('SELECT * FROM masterakun WHERE tipe1 IN ("AKTIVA","PASIVA") AND tipe2 REGEXP "HUTANG|KEWAJIBAN"');
    dm.Qcek.open;
  end;
  flagclear := 1;
  combo1.Properties.Items.Clear;
  combo2.Properties.Items.Clear;
  combo3.Properties.Items.Clear;
  flagclear := 0;
  while not dm.Qcek.Eof do
  begin
    combo1.Properties.Items.Add(dm.Qcek['namaakun']);
    combo2.Properties.Items.Add(dm.Qcek['kodeakun']);
    combo3.Properties.Items.Add(dm.Qcek['idcoa']);
    dm.Qcek.Next;
  end;
end;

procedure Tfotambjenissimp.kosongkantext;
begin
  dxToggleSwitch1.Checked := true;
  dxToggleSwitch2.Checked := true;
  cxCurrencyEdit1.Clear;
  cxCurrencyEdit2.Clear;
  cxTextEdit1.Clear;
end;

procedure Tfotambjenissimp.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  self.Close;
end;

procedure Tfotambjenissimp.RzToolButton1Click(Sender: TObject);
begin
  if cxCurrencyEdit1.Text='' then
  begin
    MessageDlg('urutan Masih Kosong..!',mtWarning,[mbok],0);
    cxCurrencyEdit1.SetFocus;
    exit;
  end;
  if cxCurrencyEdit2.Text='' then
  begin
    MessageDlg('Minim Setor Masih Kosong..!',mtWarning,[mbok],0);
    cxCurrencyEdit2.SetFocus;
    exit;
  end;
  if trim(cxTextEdit1.Text)='' then
  begin
    MessageDlg('Nama Simpanan Masih Kosong..!',mtWarning,[mbok],0);
    cxTextEdit1.SetFocus;
    exit;
  end;
  if combkode1.Text='' then
  begin
    MessageDlg('Kode Akun Masih Kosong..!',mtWarning,[mbok],0);
    combkode1.SetFocus;
    exit;
  end;
  with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('Select * from jenis_simpanan where namasimpanan=:nama');
    Qcek.ParamByName('nama').AsString := Trim(cxTextEdit1.Text);
    Qcek.Open;
    if Qcek.RecordCount > 0 then
    begin
      MessageDlg('Nama Simpanan Sudah Terdaftar..!',mtWarning,[mbok],0);
      cxTextEdit1.SetFocus;
      exit;
    end
    else
    begin
      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('Insert into jenis_simpanan (namasimpanan,minimsetor,flagmodal,indek,flagsetor,idcoa) value (:namasimpanan,:minimsetor,:flagmodal,:indek,:flagsetor,:idcoa)');
      Qex.ParamByName('namasimpanan').AsString := cxTextEdit1.Text;
      Qex.ParamByName('minimsetor').AsCurrency := cxCurrencyEdit2.Value;
      if dxToggleSwitch1.Checked then
        Qex.ParamByName('flagmodal').AsInteger := 1
      else
        Qex.ParamByName('flagmodal').AsInteger := 0;
      if dxToggleSwitch2.Checked then
        Qex.ParamByName('flagsetor').AsInteger := 1
      else
        Qex.ParamByName('flagsetor').AsInteger := 0;


      Qex.ParamByName('indek').AsCurrency := cxCurrencyEdit1.Value;
      Qex.ParamByName('idcoa').AsString := combid3.Text;
      Qex.Execute;

      MessageDlg('jenis Simpanan Baru Berhasil Disimpan..!',mtInformation,[mbok],0);
      ModalResult := mrok;
      kosongkantext;
    end;
  end;
end;

end.
