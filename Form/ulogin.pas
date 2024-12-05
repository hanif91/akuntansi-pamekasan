unit ulogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinFoggy, dxSkiniMaginary,
  cxControls, cxContainer, cxEdit, cxLabel, cxTextEdit, Vcl.StdCtrls, cxButtons,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, Vcl.ExtCtrls, RzPanel, RzTabs,
  cxMaskEdit, cxDropDownEdit, dxSkinsDefaultPainters, scDevExStyleAdapter,
  scControls, scGPImages;

type
  Tfologin = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    txtpass: TcxTextEdit;
    txtuser: TcxTextEdit;
    RzPanel4: TRzPanel;
    scGPImage2: TscGPImage;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtuserKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure cxComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtpassKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fologin: Tfologin;

implementation

{$R *.dfm}

uses udm, umain,strutils;

procedure Tfologin.cxButton1Click(Sender: TObject);
begin
  try

  {  dm.Conn1.Close;
    dm.Conn1.Username := dm.user;
    dm.Conn1.Password := dm.pass;
    dm.Conn1.Server := dm.host;
    dm.Conn1.Port := StrToInt(dm.port);
    dm.Conn1.Database := 'akuntansi'+cxComboBox1.Text;
    dm.Conn1.Connect;         }


    dm.Qcek.Close;
    dm.Qcek.SQL.Clear;
    dm.Qcek.SQL.Add('Select CURRENT_DATE as tgl');
    dm.Qcek.Open;
    tglserver := dm.Qcek.FieldByName('tgl').AsDateTime;
  except
    on e: exception do
    begin
      MessageDlg('Terdapat Kesalahan ..!'+e.Message,mtError,[mbok],0);
      Exit;
    end;
  end;

  dm.Qcek.Close;
  dm.Qcek.SQL.Clear;
  dm.Qcek.SQL.Add('SELECT * FROM userakses where username=:username and pass=MD5(:pass)');
  dm.Qcek.ParamByName('username').AsString := LowerCase(txtuser.Text);
  dm.Qcek.ParamByName('pass').AsString := txtpass.Text;
  dm.Qcek.Open;
  if dm.Qcek.RecordCount > 0 then
  begin
    namauserlogin := dm.Qcek.FieldByName('nama').AsString;
    iduser :=   dm.Qcek.FieldByName('id').AsString;
    userlogin := LowerCase(txtuser.Text);
    fomain.dxRibbonStatusBar1.Panels[2].Text := 'Selamat Datang : '+namauserlogin;
    //fomain.dxRibbonStatusBar1.Panels[4].Text := 'Tahun Buku '+cxComboBox1.Text;
    if fomain.cekhakakses=true then
    begin
      ModalResult := mrOk;
    end
    else
    begin
      MessageDlg('Maaf Anda Belum Mempunyai Hak Akses Menu Pada aplikasi ini.!'+#13+'Harap Hubungi Operator.!',mtWarning,[mbok],0);
    end;
  end
  else
  begin
    MessageDlg('User Atau Password Tidak Terdaftar..!',mtConfirmation,[mbok],0);
  end;

end;

procedure Tfologin.cxButton3Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tfologin.cxComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_RETURN then
  cxButton1.Click;
end;

procedure Tfologin.FormShow(Sender: TObject);
var
  txt : variant;
begin
  txtpass.Clear;
  txtuser.Clear;
 
  txtuser.SetFocus;
end;

procedure Tfologin.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  ModalResult := mrCancel;
end;

procedure Tfologin.txtpassKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_RETURN then
  cxButton1.Click;
end;

procedure Tfologin.txtuserKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_RETURN then
  txtpass.SetFocus;
end;

end.
