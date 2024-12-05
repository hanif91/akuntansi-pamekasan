unit ugantikodeakun;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, RzButton, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, RzTabs, Vcl.ExtCtrls, RzPanel;

type
  Tfogantikodeakun = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    combkode1: TcxComboBox;
    combkode2: TcxComboBox;
    cxLabel6: TcxLabel;
    RzToolButton1: TRzToolButton;
    cxLabel1: TcxLabel;
    lblkodeakunlama: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    combid3: TcxComboBox;
    procedure FormShow(Sender: TObject);
    procedure combkode1PropertiesChange(Sender: TObject);
    procedure combkode2PropertiesChange(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
  private
    { Private declarations }
    flagclear : byte;
  public
    { Public declarations }
    flagmodal : byte;
    procedure isikodetahap3(id : integer; combo1,combo2,combo3 : TcxComboBox);
  end;

var
  fogantikodeakun: Tfogantikodeakun;

implementation

{$R *.dfm}

procedure Tfogantikodeakun.combkode1PropertiesChange(Sender: TObject);
begin
  combkode2.ItemIndex := combkode1.ItemIndex;
  combid3.ItemIndex := combkode1.ItemIndex;
end;

procedure Tfogantikodeakun.combkode2PropertiesChange(Sender: TObject);
begin
  combkode1.ItemIndex := combkode2.ItemIndex;
  combid3.ItemIndex := combkode2.ItemIndex;
end;

procedure Tfogantikodeakun.FormShow(Sender: TObject);
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

procedure Tfogantikodeakun.isikodetahap3(id: integer; combo1, combo2,
  combo3: TcxComboBox);
begin
  if flagmodal=1 then
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

procedure Tfogantikodeakun.RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
begin
  self.Close;
end;

procedure Tfogantikodeakun.RzToolButton1Click(Sender: TObject);
begin
  ModalResult := mrok;
end;

end.
