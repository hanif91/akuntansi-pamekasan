unit utambahlap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkiniMaginary, dxSkinMetropolisDark,
  Menus, StdCtrls, cxButtons, cxGroupBox, cxMemo, cxTextEdit, cxLabel,
  ActnList, cxMaskEdit, cxDropDownEdit, udm, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, RzTabs,
  Vcl.ExtCtrls, RzPanel, System.Actions, dxSkinsDefaultPainters,
  scDevExStyleAdapter;

type
  Tfotambahlap = class(TForm)
    ActionList1: TActionList;
    enter: TAction;
    esc: TAction;
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    comb1: TcxComboBox;
    comb2: TcxComboBox;
    comb3: TcxComboBox;
    comb4: TcxComboBox;
    comb5: TcxComboBox;
    comb6: TcxComboBox;
    cxButton1: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    txtkode: TcxTextEdit;
    txtnama: TcxTextEdit;
    cxLabel6: TcxLabel;
    comb7: TcxComboBox;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    comb8: TcxComboBox;
    procedure FormCreate(Sender: TObject);
    procedure enterExecute(Sender: TObject);
    procedure escExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure comb1PropertiesChange(Sender: TObject);
    procedure comb3PropertiesChange(Sender: TObject);
    procedure comb5PropertiesChange(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure comb7PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    id : integer;
    mode : byte;
    kode : string;
    { Public declarations }
    procedure kosongkantext;
    procedure isicombo;

  end;

var
  fotambahlap: Tfotambahlap;

implementation

{$R *.dfm}

{ Tfotambahlap }

procedure Tfotambahlap.kosongkantext;
begin
  txtnama.Clear;
  txtkode.Clear;
  comb1.ItemIndex := -1;
  comb2.ItemIndex := -1;
  comb3.ItemIndex := -1;
  comb4.ItemIndex := -1;
  comb5.ItemIndex := -1;
  comb6.ItemIndex := -1;
  comb7.ItemIndex := -1;
  comb8.ItemIndex := -1;
end;

procedure Tfotambahlap.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  self.Close;
end;

procedure Tfotambahlap.FormCreate(Sender: TObject);
begin
  kosongkantext;
end;

procedure Tfotambahlap.enterExecute(Sender: TObject);
begin
  if txtkode.Focused then
  begin
    txtnama.SetFocus;
  end
  else if txtnama.Focused then
  begin
    cxTextEdit4.SetFocus;
  end
  else if cxTextEdit4.Focused then
  begin
    comb1.SetFocus;
  end
  else if comb1.Focused then
  begin
    cxTextEdit1.SetFocus;
  end
  else if cxTextEdit1.Focused then
  begin
    comb3.SetFocus;
  end
  else if comb3.Focused then
  begin
    cxTextEdit2.SetFocus;
  end
  else if cxTextEdit2.Focused then
  begin
    comb5.SetFocus;
  end
  else if comb5.Focused then
  begin
    cxTextEdit3.SetFocus;
  end
  else if cxTextEdit3.Focused then
  begin
    comb7.SetFocus;
  end
  else if comb7.Focused then
  begin
    cxButton1.Click;
  end;
end;

procedure Tfotambahlap.escExecute(Sender: TObject);
begin
  if txtkode.Focused then
  begin
   close;
  end
  else if txtnama.Focused then
  begin
   txtkode.SetFocus;
  end
  else if cxTextEdit4.Focused then
  begin
    txtnama.SetFocus;
  end
  else if comb1.Focused then
  begin
    cxTextEdit4.SetFocus;
  end
  else if cxTextEdit1.Focused then
  begin
    comb1.SetFocus;
  end
  else if comb3.Focused then
  begin
    cxTextEdit1.SetFocus;
  end
  else if cxTextEdit2.Focused then
  begin
    comb3.SetFocus;
  end
  else if comb5.Focused then
  begin
    cxTextEdit2.SetFocus;
  end
  else if cxTextEdit3.Focused then
  begin
    comb5.SetFocus;
  end
  else if comb7.Focused then
  begin
    cxTextEdit3.SetFocus;
  end
  else if cxButton1.Focused then
  begin
    comb7.SetFocus;
  end;
end;

procedure Tfotambahlap.FormShow(Sender: TObject);
begin
  txtkode.SetFocus;
end;

procedure Tfotambahlap.cxButton1Click(Sender: TObject);
begin
  if trim(txtkode.Text)='' then
  begin
    MessageDlg('Kode Laporan Masih Kosong.!',mtWarning,[mbok],0);
    txtkode.SetFocus;
    Exit;
  end;
  if trim(txtnama.Text)='' then
  begin
    MessageDlg('Nama laporan masih Kosong.!',mtWarning,[mbok],0);
    txtnama.SetFocus;
    Exit;
  end;
  try
  with dm do
  begin
    if mode=0 then
    begin
      Qcek.Close;
      Qcek.SQL.Clear;
      Qcek.SQL.Add('select * from ttdlap where kode=:kode');
      Qcek.ParamByName('kode').AsString := txtkode.Text;
      Qcek.Open;
      if Qcek.RecordCount > 0 then
      begin
        MessageDlg('Kode Sudah terdaftar !',mtWarning,[mbok],0);
        txtkode.SetFocus;
        Exit;
      end
      else
      begin
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('INSERT INTO ttdlap (kode,namalap,id1,id2,id3) values (:kode,:namalap,:id1,:id2,:id3)');
        Qex.ParamByName('kode').AsString :=txtkode.Text;
        Qex.ParamByName('namalap').AsString := txtnama.Text;
        Qex.ParamByName('id1').AsInteger := StrToIntDef(comb2.Text,0);
        Qex.ParamByName('id2').AsInteger := StrToIntDef(comb4.Text,0);
        Qex.ParamByName('id3').AsInteger := StrToIntDef(comb6.Text,0);
        Qex.Execute;

        kosongkantext;
        Self.ModalResult:= mrOk;
      end;

    end
    else
    begin
      Qcek.Close;
      Qcek.SQL.Clear;
      Qcek.SQL.Add('select * from ttdlap where kode=:kode1 and kode<>:kode2');
      Qcek.ParamByName('kode1').AsString := txtkode.Text;
      Qcek.ParamByName('kode2').AsString := kode;
      Qcek.Open;
      if Qcek.RecordCount > 0 then
      begin
        MessageDlg('Kode Laporan sudah terdaftar..!',mtWarning,[mbok],0);
        txtkode.SetFocus;
        Exit;
      end
      else
      begin
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('update ttdlap set kode=:kode,namalap=:namalap,id1=:id1,id2=:id2,id3=:id3,id4=:id4,header1=:header1,header2=:header2,header3=:header3,header4=:header4 where id=:id');
        Qex.ParamByName('kode').AsString :=txtkode.Text;
        Qex.ParamByName('namalap').AsString := txtnama.Text;
        Qex.ParamByName('id1').AsInteger := StrToIntDef(comb2.Text,0);
        Qex.ParamByName('id2').AsInteger := StrToIntDef(comb4.Text,0);
        Qex.ParamByName('id3').AsInteger := StrToIntDef(comb6.Text,0);
        Qex.ParamByName('id4').AsInteger := StrToIntDef(comb8.Text,0);
        Qex.ParamByName('header1').AsString := cxTextEdit4.Text;
        Qex.ParamByName('header2').AsString := cxTextEdit1.Text;
        Qex.ParamByName('header3').AsString := cxTextEdit2.Text;
        Qex.ParamByName('header4').AsString := cxTextEdit3.Text;
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

procedure Tfotambahlap.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if mode=1 then
    kosongkantext;
end;


procedure Tfotambahlap.isicombo;
begin
  with dm do
  begin
    Qcek.Close;
    qcek.SQL.Clear;
    Qcek.sql.Add('select * from paraf order by id');
    Qcek.Open;
    comb1.Properties.Items.Clear;
    comb2.Properties.Items.Clear;
    comb3.Properties.Items.Clear;
    comb4.Properties.Items.Clear;
    comb5.Properties.Items.Clear;
    comb6.Properties.Items.Clear;
    while not Qcek.Eof do
    begin
      comb1.Properties.Items.Add(Qcek['nama']);
      comb2.Properties.Items.Add(Qcek['id']);
      Qcek.Next;
    end;
    comb3.Properties.Items := comb1.Properties.Items;
    comb4.Properties.Items := comb2.Properties.Items;
    comb5.Properties.Items := comb1.Properties.Items;
    comb6.Properties.Items := comb2.Properties.Items;
      comb7.Properties.Items := comb1.Properties.Items;
      comb8.Properties.Items := comb2.Properties.Items;
  end;
end;

procedure Tfotambahlap.comb1PropertiesChange(Sender: TObject);
begin
  comb2.ItemIndex := comb1.ItemIndex;
end;

procedure Tfotambahlap.comb3PropertiesChange(Sender: TObject);
begin
  comb4.ItemIndex := comb3.ItemIndex;
end;

procedure Tfotambahlap.comb5PropertiesChange(Sender: TObject);
begin
  comb6.ItemIndex := comb5.ItemIndex;
end;

procedure Tfotambahlap.comb7PropertiesChange(Sender: TObject);
begin
  comb8.ItemIndex := comb7.ItemIndex;
end;

end.
