unit utambahuser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkiniMaginary, dxSkinMetropolisDark,
  Menus, StdCtrls, cxButtons, cxGroupBox, cxMemo, cxTextEdit, cxLabel,
  ActnList, dxSkinBlueprint, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, System.Actions, udm, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, RzButton, RzTabs,
  Vcl.ExtCtrls, RzPanel, cxCheckBox, dxSkinFoggy, dxSkinsDefaultPainters,
  scDevExStyleAdapter;

type
  Tfotambahuser = class(TForm)
    ActionList1: TActionList;
    enter: TAction;
    esc: TAction;
    del: TAction;
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    btnsimpan: TRzToolButton;
    cxButton1: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    txtuser: TcxTextEdit;
    txtpass: TcxTextEdit;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    txtalamat: TcxMemo;
    txtnama: TcxTextEdit;
    txtnik: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure enterExecute(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure escExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
  private
    { Private declarations }
  public
    id : integer;
    mode : byte;
    user : string;
    { Public declarations }
    procedure kosongkantext;

  end;

var
  fotambahuser: Tfotambahuser;

implementation

{$R *.dfm}

{ Tfotambahuser }

procedure Tfotambahuser.kosongkantext;
begin
  txtnama.Clear;
  txtalamat.Clear;
  cxTextEdit1.Clear;
  txtnik.Clear;
  txtuser.Clear;
  txtpass.Clear;
end;

procedure Tfotambahuser.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  close;
end;

procedure Tfotambahuser.FormCreate(Sender: TObject);
begin
  kosongkantext;
end;

procedure Tfotambahuser.enterExecute(Sender: TObject);
begin
  if txtnama.Focused then
  begin
    txtalamat.SetFocus;
  end
  else if txtalamat.Focused then
  begin
    txtnik.SetFocus;
  end
  else if txtnik.Focused then
  begin
    cxTextEdit1.SetFocus;
  end
  else if cxTextEdit1.Focused then
  begin
    txtuser.SetFocus;
  end
  else if txtuser.Focused then
  begin
    txtpass.SetFocus;
  end
  else if txtpass.Focused then
  begin
    cxButton1.Click;
  end;
end;

procedure Tfotambahuser.cxButton2Click(Sender: TObject);
begin
  if cxButton2.Caption='Perlihatkan' then
  begin
    cxButton2.Caption:='Sembunyikan';
    txtpass.Properties.EchoMode := eemNormal;
  end
  else
  begin
    cxButton2.Caption:='Perlihatkan';
    txtpass.Properties.EchoMode := eemPassword;
  end;
end;

procedure Tfotambahuser.escExecute(Sender: TObject);
begin
  if txtnama.Focused then
  begin
    Close;
  end
  else if txtalamat.Focused then
  begin
    txtnama.SetFocus;
  end
  else if txtnik.Focused then
  begin
    txtalamat.SetFocus;
  end
  else if cxTextEdit1.Focused then
  begin
    txtnik.SetFocus;
  end
  else if txtuser.Focused then
  begin
    cxTextEdit1.SetFocus;
  end
  else if txtpass.Focused then
  begin
    txtuser.SetFocus;
  end;
end;

procedure Tfotambahuser.FormShow(Sender: TObject);
begin

  txtnama.SetFocus;
  if mode=0 then
  begin
    txtpass.Properties.ReadOnly:=false;

  end
  else
  begin
    txtpass.Properties.ReadOnly:=true;
  end;
end;

procedure Tfotambahuser.cxButton1Click(Sender: TObject);
begin
  if trim(txtnama.Text)='' then
  begin
    MessageDlg('Nama masih Kosong.!',mtWarning,[mbok],0);
    txtnama.SetFocus;
    Exit;
  end;
  if trim(txtuser.Text)='' then
  begin
    MessageDlg('Username masih Kosong.!',mtWarning,[mbok],0);
    txtuser.SetFocus;
    Exit;
  end;
  if trim(txtpass.Text)='' then
  begin
    MessageDlg('password masih Kosong.!',mtWarning,[mbok],0);
    txtpass.SetFocus;
    Exit;
  end;
  if trim(cxTextEdit1.Text)='' then
  begin
    MessageDlg('jabatan masih Kosong.!',mtWarning,[mbok],0);
    cxTextEdit1.SetFocus;
    Exit;
  end;
  try
  with dm do
  begin
    if mode=0 then
    begin
      Qcek.Close;
      Qcek.SQL.Clear;
      Qcek.SQL.Add('select * from userakses where username=:username');
      Qcek.ParamByName('username').AsString := txtuser.Text;
      Qcek.Open;
      if Qcek.RecordCount > 0 then
      begin
        MessageDlg('Username Sudah terdaftar !',mtWarning,[mbok],0);
        txtuser.SetFocus;
        Exit;
      end
      else
      begin
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('INSERT INTO userakses (username,nama,jabatan,nik,pass,alamat) values (:username,:nama,:jabatan,:nik,MD5(:pass),:alamat)');
        Qex.ParamByName('username').AsString :=txtuser.Text;
        Qex.ParamByName('nama').AsString := txtnama.Text;
        Qex.ParamByName('jabatan').AsString := cxTextEdit1.Text;
        Qex.ParamByName('nik').AsString := txtnik.Text;
        Qex.ParamByName('pass').AsString := txtpass.Text;
        Qex.ParamByName('alamat').AsString := txtalamat.Text;
        Qex.Execute;

        kosongkantext;
        Self.ModalResult:= mrOk;
      end;

    end
    else
    begin
      Qcek.Close;
      Qcek.SQL.Clear;
      Qcek.SQL.Add('select * from userakses where username=:user1 and username<>:user2');
      Qcek.ParamByName('user1').AsString := txtuser.Text;
      Qcek.ParamByName('user2').AsString := user;
      Qcek.Open;
      if Qcek.RecordCount > 0 then
      begin
        MessageDlg('username sudah terdaftar..!',mtWarning,[mbok],0);
        txtuser.SetFocus;
        Exit;
      end
      else
      begin
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('update userakses set nama=:nama,username=:username,alamat=:alamat,jabatan=:jabatan,nik=:nik,admin=:admin where id=:id');
        Qex.ParamByName('username').AsString :=txtuser.Text;
        Qex.ParamByName('nama').AsString := txtnama.Text;
        Qex.ParamByName('jabatan').AsString := cxTextEdit1.Text;
        Qex.ParamByName('nik').AsString := txtnik.Text;
        Qex.ParamByName('alamat').AsString := txtalamat.Text;
        Qex.ParamByName('id').AsInteger := id;
        Qex.Execute;

        kosongkantext;
        Self.ModalResult:= mrOk;
      end;
    end;
  end;
  except
    on e:Exception do
    begin
      MessageDlg('Teradapat kesalaha..'+#13+e.Message,mtError,[mbok],0);
    end;
  end;
end;

procedure Tfotambahuser.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if mode=1 then
    kosongkantext;
end;

end.
