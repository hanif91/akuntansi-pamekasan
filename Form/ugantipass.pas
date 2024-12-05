unit ugantipass;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlueprint,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxLabel, udm, Data.DB, MemDS, DBAccess,
  MyAccess, dxSkinFoggy, dxSkiniMaginary;

type
  Tfogantipass = class(TForm)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    txtpass: TcxTextEdit;
    txtpass2: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    Qex: TMyQuery;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtpassKeyPress(Sender: TObject; var Key: Char);
    procedure txtpass2KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fogantipass: Tfogantipass;

implementation

{$R *.dfm}

procedure Tfogantipass.cxButton1Click(Sender: TObject);
begin
  if trim(txtpass.Text)='' then
  begin
    MessageDlg('Password Lama masih kosong..!',mtWarning,[mbok],0);
    txtpass.SetFocus;
    Exit;

  end;
  if trim(txtpass2.Text)='' then
  begin
    MessageDlg('Password Baru masih kosong..!',mtWarning,[mbok],0);
    txtpass2.SetFocus;
    Exit;
  end;
  dm.Qcek.Close;
  dm.Qcek.SQL.Clear;
  dm.Qcek.SQL.Add('SELECT * FROM userakses where id=:iduser');
  dm.Qcek.ParamByName('iduser').AsString := iduser;
  dm.Qcek.Open;
  if dm.Qcek.RecordCount > 0 then
  begin
    dm.Qcek.Close;
    dm.Qcek.SQL.Clear;
    dm.Qcek.SQL.Add('SELECT * FROM userakses where id=:iduser and pass=MD5(:pass)');
    dm.Qcek.ParamByName('iduser').AsString := iduser;
    dm.Qcek.ParamByName('pass').AsString := txtpass.Text;
    dm.Qcek.Open;
    if dm.Qcek.RecordCount > 0 then
    begin
      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('Update userakses set pass=MD5(:pass) where id=:id');
      Qex.ParamByName('id').AsString := iduser;
      Qex.ParamByName('pass').AsString := txtpass2.Text;
      Qex.Execute;

      MessageDlg('Ganti Password Berhasil.!',mtInformation,[mbok],0);
      ModalResult := mrok;
    end
    else
    begin
      MessageDlg('Password Lama Tidak Valid..!',mtWarning,[mbok],0);
    end;


  end
  else
  begin
    MessageDlg('User Sudah tidak terdaftar..!',mtConfirmation,[mbok],0);
  end;
end;

procedure Tfogantipass.cxButton2Click(Sender: TObject);
begin
  if cxButton2.Caption='Perlihatkan' then
  begin
    cxButton2.Caption:='Sembunyikan';
    txtpass2.Style.Font.Name := 'Noto Sans';
    txtpass2.Style.Font.Charset := ANSI_CHARSET;
    txtpass2.Properties.EchoMode := eemNormal;
  end
  else
  begin
    cxButton2.Caption:='Perlihatkan';
    txtpass2.Style.Font.Name := 'Wingdings';
    txtpass2.Style.Font.Charset := SYMBOL_CHARSET;
    txtpass2.Properties.EchoMode := eemPassword;
  end;
end;

procedure Tfogantipass.cxButton3Click(Sender: TObject);
begin
  if cxButton3.Caption='Perlihatkan' then
  begin
    cxButton3.Caption:='Sembunyikan';
    txtpass.Style.Font.Name := 'Noto Sans';
    txtpass.Style.Font.Charset := ANSI_CHARSET;
    txtpass.Properties.EchoMode := eemNormal;
  end
  else
  begin
    cxButton3.Caption:='Perlihatkan';
    txtpass.Style.Font.Name := 'Wingdings';
    txtpass.Style.Font.Charset := SYMBOL_CHARSET;
    txtpass.Properties.EchoMode := eemPassword;
  end;
end;

procedure Tfogantipass.FormShow(Sender: TObject);
begin
  txtpass.Clear;
  txtpass2.Clear;
  txtpass.SetFocus;
end;

procedure Tfogantipass.txtpass2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  cxButton1.Click;
end;

procedure Tfogantipass.txtpassKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  txtpass2.SetFocus;
end;

end.
