unit ukodeakun;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxPC, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  cxTextEdit, cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, DBAccess, MyAccess,
  MemDS, RzButton, dxDockPanel, dxDockControl, Vcl.ExtCtrls, RzPanel, RzTabs,
  utambahcoa, Vcl.Menus, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarBuiltInMenu,
  dxSkinsDefaultPainters, scDevExStyleAdapter;

type
  Tfokodeakun = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1setorsimp: TRzPanel;
    RzPanel2: TRzPanel;
    dxDockSite1: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxLayoutDockSite2: TdxLayoutDockSite;
    dxDockPanel2: TdxDockPanel;
    RzPanel3: TRzPanel;
    RzToolButton1: TRzToolButton;
    dxDockPanel1: TdxDockPanel;
    RzToolButton2: TRzToolButton;
    Qkode: TMyQuery;
    dkode: TMyDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit1: TcxTextEdit;
    cxGridPopupMenu1: TcxGridPopupMenu;
    PopupMenu1: TPopupMenu;
    Koreksi1: TMenuItem;
    Hapus1: TMenuItem;
    RzToolButton3: TRzToolButton;
    Qkodeidcoa: TIntegerField;
    Qkodekodeakun: TStringField;
    Qkodenamaakun: TStringField;
    Qkodetipe3: TStringField;
    Qkodetipe1: TStringField;
    Qkodetipe2: TStringField;
    cxGrid1DBTableView1idcoa: TcxGridDBColumn;
    cxGrid1DBTableView1kodeakun: TcxGridDBColumn;
    cxGrid1DBTableView1namaakun: TcxGridDBColumn;
    cxGrid1DBTableView1tipe3: TcxGridDBColumn;
    cxGrid1DBTableView1tipe1: TcxGridDBColumn;
    cxGrid1DBTableView1tipe2: TcxGridDBColumn;
    SaveDialog1: TSaveDialog;
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxCheckBox2Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure Koreksi1Click(Sender: TObject);
    procedure Hapus1Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fokodeakun: Tfokodeakun;

implementation
uses cxGridExportLink;

{$R *.dfm}

procedure Tfokodeakun.cxCheckBox1Click(Sender: TObject);
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

procedure Tfokodeakun.cxCheckBox2Click(Sender: TObject);
begin
  if cxCheckBox2.Checked then
  begin
    cxTextEdit2.Enabled := true;
    cxTextEdit2.SetFocus;
  end
  else
  begin
    cxTextEdit2.Enabled := false;
  end;
end;

procedure Tfokodeakun.FormShow(Sender: TObject);
begin
  RzToolButton2.Click;
end;

procedure Tfokodeakun.Hapus1Click(Sender: TObject);
begin
  MessageDlg('Hapus Kode Akun sementara hanya bisa melalui Administrator..!',mtInformation,[mbok],0);
{  if MessageDlg('Yakin akan menghapus kode akun "'+Qkodekodeakun.Value+'" ini ?',mtWarning,[mbyes,mbno],0)=mryes then
  begin
    try
      try
        with dm do
        begin

          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('Delete from coa where kodeakun=:kodeakun');
          Qex.ParamByName('kodeakun').AsString := Qkodekodeakun.Value;
          Qex.Execute;


        end;
      finally
        dm.unlocktabel;
      end;
      Qkode.Refresh;
    except
      on e:exception do
      begin
        MessageDlg('Terdapat Kesalahan..!'+#13+e.Message,mtError,[mbok],0);
        exit;
      end;
    end;
  end;     }
end;

procedure Tfokodeakun.Koreksi1Click(Sender: TObject);
begin
  MessageDlg('Koreksi Kode Akun sementara hanya bisa melalui Administrator..!',mtInformation,[mbok],0);
{  fotambahcoa.mode := 1;
  fotambahcoa.isikodetahap;
  fotambahcoa.combsk11.SelText := Qkodekodeakun2.Value;
  fotambahcoa.combsk21.SelText := Qkodekodeakun3.Value;
  fotambahcoa.cxTextEdit1.Text := Qkodekodeakun.Value;
  fotambahcoa.cxTextEdit2.Text := Qkodenamaakun.Value;
  fotambahcoa.cxComboBox1.SelText := Qkodenamatipe.Value;
  if fotambahcoa.ShowModal=mrok then
  begin
    Qkode.Refresh;
  end;        }
end;

procedure Tfokodeakun.RzToolButton1Click(Sender: TObject);
begin
  MessageDlg('Penambahan Kode Akun hanya bisa melalui Administrator..!',mtInformation,[mbok],0);
{  fotambahcoa.mode := 0;
  fotambahcoa.oldtext1 := fotambahcoa.combsk11.Text;
  fotambahcoa.oldtext2 := fotambahcoa.combsk21.Text;
  fotambahcoa.oldtext3 := fotambahcoa.cxTextEdit1.Text;
  fotambahcoa.oldtext4 := fotambahcoa.cxTextEdit2.Text;
  fotambahcoa.oldtext5 := fotambahcoa.cxComboBox1.Text;
  fotambahcoa.isikodetahap;
  fotambahcoa.combsk11.SelText := fotambahcoa.oldtext1;
  fotambahcoa.combsk21.SelText := fotambahcoa.oldtext2;
  fotambahcoa.cxTextEdit1.Text := fotambahcoa.oldtext3;
  fotambahcoa.cxTextEdit2.Text := fotambahcoa.oldtext4;
  fotambahcoa.cxComboBox1.SelText := fotambahcoa.oldtext5;
  if fotambahcoa.ShowModal=mrok then
  begin
    Qkode.Refresh;
  end;         }
end;

procedure Tfokodeakun.RzToolButton2Click(Sender: TObject);
begin
  Qkode.Close;
  Qkode.SQL.Clear;
  Qkode.SQL.Add(Qkode.SQLRefresh.Text);
  if cxCheckBox1.Checked then
  begin
    Qkode.SQL.Add('where b.kodeakun=:kodeakun');
    Qkode.ParamByName('kodeakun').AsString := cxTextEdit1.Text;
  end
  else
  begin
    Qkode.SQL.Add('where b.idcoa>-2');
  end;
  if cxCheckBox2.Checked then
  begin
    Qkode.SQL.Add('and b.namaakun like :namaakun');
    Qkode.ParamByName('namaakun').AsString := '%'+cxTextEdit2.Text+'%';
  end;
  Qkode.SQL.Add('order by kodeakun');
  Qkode.Open;
end;

procedure Tfokodeakun.RzToolButton3Click(Sender: TObject);
begin
  if Qkode.RecordCount > 0 then
  begin
    SaveDialog1.Filter := 'XLS|*.xls';
    if SaveDialog1.Execute then
    begin
      try

        ExportGridToExcel(SaveDialog1.FileName,cxGrid1);
        MessageDlg('Export Berhasil..',mtInformation,[mbok],0);
      except
        on e:exception do
        begin
          MessageDlg('Terdapat kesalahan..!'+#13+e.Message,mtError,[mbok],0);
        end;
      end;
    end;
  end;
end;

end.
