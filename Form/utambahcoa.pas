unit utambahcoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxLabel, cxMaskEdit, cxDropDownEdit, RzTabs,
  Vcl.ExtCtrls, RzPanel, RzButton, Vcl.Mask, RzEdit, dxSkinsDefaultPainters;

type
  Tfotambahcoa = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    combsk11: TcxComboBox;
    combs11: TcxComboBox;
    combsk21: TcxComboBox;
    combs21: TcxComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxComboBox1: TcxComboBox;
    combid1: TcxComboBox;
    combid2: TcxComboBox;
    cxComboBox2: TcxComboBox;
    ActionList1: TActionList;
    enter: TAction;
    esc: TAction;
    del: TAction;
    RzToolButton2: TRzToolButton;
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure enterExecute(Sender: TObject);
    procedure escExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combsk21PropertiesCloseUp(Sender: TObject);
    procedure combs21PropertiesCloseUp(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure combsk11PropertiesChange(Sender: TObject);
    procedure combs11PropertiesChange(Sender: TObject);
    procedure combsk21PropertiesChange(Sender: TObject);
    procedure combs21PropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
   flageditchange,flagclear : byte;
    { Private declarations }
  public
    { Public declarations }
    mode : byte;
    oldtext1,oldtext2,oldtext3,oldtext4,oldtext5 : string;
    procedure kosongkantext;
    procedure kondisiawal;
    procedure isikodetahap;
    procedure isikodetahap2(id : integer; combo1,combo2,combo3 : TcxComboBox);
    function generatekodeakun(idtipe3 : integer): string;
  end;

var
  fotambahcoa: Tfotambahcoa;

implementation
uses strutils,dateutils;

{$R *.dfm}

procedure Tfotambahcoa.combs11PropertiesChange(Sender: TObject);
begin
  combsk11.ItemIndex := combs11.ItemIndex;
  combid1.ItemIndex := combs11.ItemIndex;
  if flagclear=0 then
  begin
    try
      isikodetahap2(StrToInt(combid1.Text),combs21,combsk21,combid2);
    except
      on e:exception do
      begin
        MessageDlg('Terdapat Kesalahan..!'+e.Message,mtError,[mbok],0);
      end
    end;
  end;
end;

procedure Tfotambahcoa.combs21PropertiesChange(Sender: TObject);
begin
  combsk21.ItemIndex := combs21.ItemIndex;
  combid2.ItemIndex := combs21.ItemIndex;
  if flagclear=0 then
  begin
    try
      cxTextEdit1.Text := combsk21.Text+'.'+generatekodeakun(StrToInt(combid2.Text));
    except
      on e:exception do
      begin
        MessageDlg('Terdapat Kesalahan..!'+e.Message,mtError,[mbok],0);
      end;
    end;
  end;
end;

procedure Tfotambahcoa.combs21PropertiesCloseUp(Sender: TObject);
begin

  cxTextEdit2.SetFocus;
end;

procedure Tfotambahcoa.combsk11PropertiesChange(Sender: TObject);
begin
  combs11.ItemIndex := combsk11.ItemIndex;
  combid1.ItemIndex := combs11.ItemIndex;
  if flagclear=0 then
  begin
    try
      isikodetahap2(StrToInt(combid1.Text),combs21,combsk21,combid2);
    except
      on e:exception do
      begin
        MessageDlg('Terdapat Kesalahan..!'+e.Message,mtError,[mbok],0);
      end
    end;
  end;
end;

procedure Tfotambahcoa.combsk21PropertiesChange(Sender: TObject);
begin
  combs21.ItemIndex := combsk21.ItemIndex;
  combid2.ItemIndex := combsk21.ItemIndex;
  if flagclear=0 then
  begin
    try
      cxTextEdit1.Text := combsk21.Text+'.'+generatekodeakun(StrToInt(combid2.Text));
    except
      on e:exception do
      begin
        MessageDlg('Terdapat Kesalahan..!'+e.Message,mtError,[mbok],0);
      end;
    end;
  end;
end;

procedure Tfotambahcoa.combsk21PropertiesCloseUp(Sender: TObject);
begin

  cxTextEdit2.SetFocus;
end;

procedure Tfotambahcoa.cxComboBox1PropertiesChange(Sender: TObject);
begin
  cxComboBox2.ItemIndex := cxComboBox1.ItemIndex;
end;

procedure Tfotambahcoa.enterExecute(Sender: TObject);
begin
  if (combsk11.Focused) or (combs11.Focused) then
  begin
    combsk21.SetFocus;
  end
  else if (combsk21.Focused) or (combs21.Focused) then
  begin
    cxTextEdit2.SetFocus;
  end
  else if cxTextEdit1.Focused then
  begin
    cxTextEdit2.SetFocus;
  end
  else if cxTextEdit2.Focused then
  begin
    cxComboBox1.SetFocus
  end
  else if cxComboBox1.Focused then
  begin
    RzToolButton2.Click;
  end;
end;

procedure Tfotambahcoa.escExecute(Sender: TObject);
begin
  if (combsk11.Focused) or (combs11.Focused) then
  begin
    close;
  end
  else if (combsk21.Focused) or (combs21.Focused) then
  begin
    combsk11.SetFocus;
  end
  else if cxTextEdit1.Focused then
  begin
    combsk21.SetFocus;
  end
  else if cxTextEdit2.Focused then
  begin
    combsk21.SetFocus
  end
  else if cxComboBox1.Focused then
  begin
    cxTextEdit2.SetFocus;
  end;
end;

procedure Tfotambahcoa.FormCreate(Sender: TObject);
begin
  kondisiawal;
end;

procedure Tfotambahcoa.FormShow(Sender: TObject);
begin

  if mode=1 then
  begin
    combsk11.Properties.ReadOnly := true;
    combsk21.Properties.ReadOnly := true;
    combs11.Properties.ReadOnly := true;
    combs21.Properties.ReadOnly := true;
  end
  else
  begin
    isikodetahap;
    dm.isicombo2('tipepudm',cxComboBox1,cxComboBox2);
    combsk11.Properties.ReadOnly := false;
    combsk21.Properties.ReadOnly :=false;
    combs11.Properties.ReadOnly := false;
    combs21.Properties.ReadOnly := false;
  end;
  combsk11.SetFocus;
end;

function Tfotambahcoa.generatekodeakun(idtipe3: integer): string;
begin
  with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('CALL generatekodeakun(:idtipe3)');
    qcek.ParamByName('idtipe3').AsInteger := idtipe3;
    Qcek.Open;

    Result := qcek.fieldbyname('kode').AsString;
  end;
end;

procedure Tfotambahcoa.isikodetahap;
begin
  dm.Qcek.Close;
  dm.Qcek.SQL.Clear;
  dm.Qcek.SQL.Add('Select * from tipe2 order by kodeakun');
  dm.Qcek.open;
  flagclear := 1;
  combs11.Properties.Items.Clear;
  combsk11.Properties.Items.Clear;
  combsk21.Properties.Items.Clear;
  combs21.Properties.Items.Clear;
  combid1.Properties.Items.Clear;
  combid2.Properties.Items.Clear;
  flagclear := 0;
  while not dm.Qcek.Eof do
  begin
    combs11.Properties.Items.Add(dm.Qcek['tipe2']);
    combsk11.Properties.Items.Add(dm.Qcek['kodeakun']);
    combid1.Properties.items.Add(dm.Qcek['idtipe2']);
    dm.Qcek.Next;
  end;
end;

procedure Tfotambahcoa.isikodetahap2(id: integer; combo1, combo2,
  combo3: TcxComboBox);
begin
  dm.Qcek.Close;
  dm.Qcek.SQL.Clear;
  dm.Qcek.SQL.Add('Select * from tipe3 where idtipe2=:id order by kodeakun');
  dm.Qcek.ParamByName('id').AsInteger := id;
  dm.Qcek.open;
  flagclear := 1;
  combo1.Properties.Items.Clear;
  combo2.Properties.Items.Clear;
  combo3.Properties.Items.Clear;
  cxTextEdit1.Text :='';
  flagclear := 0;
  while not dm.Qcek.Eof do
  begin
    combo1.Properties.Items.Add(dm.Qcek['tipe3']);
    combo2.Properties.Items.Add(dm.Qcek['kodeakun']);
    combo3.Properties.Items.Add(dm.Qcek['idtipe3']);
    dm.Qcek.Next;
  end;
end;

procedure Tfotambahcoa.kondisiawal;
begin
  kosongkantext;

end;

procedure Tfotambahcoa.kosongkantext;
begin
  cxComboBox2.ItemIndex := -1;
  cxComboBox1.ItemIndex := -1;
  combsk11.ItemIndex := -1;
  combs11.ItemIndex := -1;
  combsk21.ItemIndex :=-1;
  combs21.ItemIndex := -1;
  cxTextEdit1.Clear;
  cxTextEdit2.Clear;
end;

procedure Tfotambahcoa.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  self.Close;
end;

procedure Tfotambahcoa.RzToolButton2Click(Sender: TObject);
var
  i : byte;
begin
    if (trim(combsk11.Text)='') or (trim(combs11.Text)='') then
    begin
      MessageDlg('Group 2 Masih Kosong..!',mtWarning,[mbok],0);
      combsk11.SetFocus;
      Exit;
    end;
    if (trim(combsk21.Text)='') or (trim(combs21.Text)='') then
    begin
      MessageDlg('Group 3 Masih Kosong..!',mtWarning,[mbok],0);
      combsk21.SetFocus;
      Exit;
    end;
    if (cxTextEdit1.Text='') then
    begin
      MessageDlg('Kode Akun Masih Kosong..!',mtWarning,[mbok],0);
      cxTextEdit1.SetFocus;
      Exit;
    end;
    if (cxTextEdit2.Text='') then
    begin
      MessageDlg('Nama Akun Masih Kosong..!',mtWarning,[mbok],0);
      cxTextEdit2.SetFocus;
      Exit;
    end;
    if mode=0 then
    begin
      try
        with dm do
        begin

          Qcek.Close;
          Qcek.SQL.Clear;
          qcek.SQL.Add('select * from coa where kodeakun=:kodeakun');
          Qcek.ParamByName('kodeakun').AsString := cxTextEdit1.Text;
          Qcek.Open;
          if Qcek.RecordCount > 0 then
          begin
            MessageDlg('Kode akun sudah terdaftar..!',mtWarning,[mbok],0);
            cxTextEdit1.SetFocus;
            Exit;
          end
          else
          begin
            conn1.StartTransaction;
            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('INSERT INTO COA (kodeakun,namaakun,idtipe3,idtipearuskas_l) values (:kodeakun,:namaakun,:idtipe3,:idtipearuskas_l)');
            Qex.ParamByName('kodeakun').AsString := cxTextEdit1.Text;
            Qex.ParamByName('namaakun').AsString := cxTextEdit2.Text;
            Qex.ParamByName('idtipe3').AsString := combid2.text;
            Qex.ParamByName('idtipearuskas_l').AsString := cxComboBox2.Text;
            Qex.Execute;

            if (StrToInt(leftstr(cxTextEdit1.Text,2))>10) and (StrToInt(leftstr(cxTextEdit1.Text,2))<=70) then
            begin
              Qex.Close;
              Qex.SQL.Clear;
              Qex.SQL.Add('INSERT INTO saldoawal (idcoa,tahun) SELECT idcoa,:tahun from coa where kodeakun=:kodeakun') ;
              Qex.ParamByName('kodeakun').AsString := cxTextEdit1.Text;
              Qex.ParamByName('tahun').AsInteger := YearOf(date);
              Qex.Execute;
            end;

            Conn1.Commit;

            flagclear :=1;
            ModalResult := mrOk;
            kosongkantext;
            flagclear := 0;
          end;
        end;
      except
        on e : exception do
        begin
          dm.Conn1.Rollback;
          messagedlg('Terdapat Kesalahan..!'+#13+e.Message,mtError,[mbok],0);
          Exit;
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
          Qex.SQL.Add('Update COA set namaakun=:namaakun,idtipearuskas_l=:idtipearuskas_l where kodeakun=:kodeakun');
          Qex.ParamByName('kodeakun').AsString := cxTextEdit1.Text;
          Qex.ParamByName('namaakun').AsString := cxTextEdit2.Text;
          Qex.ParamByName('idtipearuskas_l').AsString := cxComboBox2.Text;
          Qex.Execute;

          flagclear :=1;
          ModalResult := mrOk;
          kosongkantext;
          flagclear := 0;
        end;
      except
        on e : exception do
        begin
          messagedlg('Terdapat Kesalahan..!'+#13+e.Message,mtError,[mbok],0);
        end;
      end;
    end
end;

end.
