unit uju;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxPC, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxMemo, Vcl.Menus,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxTextEdit,
  cxCheckBox, cxLabel, cxMaskEdit, cxCalendar, Vcl.StdCtrls, cxButtons,
  RzButton, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, DBAccess, MyAccess,
  MemDS, dxDockPanel, dxDockControl, Vcl.ExtCtrls, RzPanel, RzTabs, utambahju,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarBuiltInMenu,
  dxSkinsDefaultPainters, scDevExStyleAdapter;

type
  Tfoju = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1setorsimp: TRzPanel;
    RzPanel2: TRzPanel;
    dxDockSite1: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxDockPanel1: TdxDockPanel;
    dxDockPanel4: TdxDockPanel;
    dxLayoutDockSite4: TdxLayoutDockSite;
    dxDockPanel2: TdxDockPanel;
    dxLayoutDockSite3: TdxLayoutDockSite;
    RzPanel1: TRzPanel;
    Qdju: TMyQuery;
    Qdjukodeakun: TStringField;
    Qdjunamaakun: TStringField;
    Qdjudebet: TFloatField;
    Qdjukredit: TFloatField;
    Qdjuidcoa: TIntegerField;
    ddju: TMyDataSource;
    Dju: TMyDataSource;
    Qju: TMyQuery;
    Qjuidju: TIntegerField;
    Qjunotrans: TStringField;
    Qjuuraian: TStringField;
    Qjupenjelasan: TMemoField;
    Qjujumlah: TFloatField;
    Qjutanggal: TDateField;
    Qjutipejurnal: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1idju: TcxGridDBColumn;
    cxGrid1DBTableView1tipejurnal: TcxGridDBColumn;
    cxGrid1DBTableView1notrans: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1uraian: TcxGridDBColumn;
    cxGrid1DBTableView1penjelasan: TcxGridDBColumn;
    cxGrid1DBTableView1jumlah: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    RzToolButton1: TRzToolButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1kodeakun: TcxGridDBColumn;
    cxGridDBTableView1namaakun: TcxGridDBColumn;
    cxGridDBTableView1debet: TcxGridDBColumn;
    cxGridDBTableView1kredit: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxButton5: TcxButton;
    cxDateEdit2: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxCheckBox2: TcxCheckBox;
    cxTextEdit1: TcxTextEdit;
    cxCheckBox1: TcxCheckBox;
    cxGridPopupMenu1: TcxGridPopupMenu;
    PopupMenu1: TPopupMenu;
    Koreksi1: TMenuItem;
    Hapus1: TMenuItem;
    Qdjukodeunit: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxCheckBox2Click(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure RzToolButton1Click(Sender: TObject);
    procedure Koreksi1Click(Sender: TObject);
    procedure Hapus1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  foju: Tfoju;

implementation
uses strutils;

{$R *.dfm}

procedure Tfoju.cxButton5Click(Sender: TObject);
begin
  Qju.Close;
  Qju.SQL.Clear;
  Qju.SQL.Add(Qju.SQLRefresh.Text);
  if cxCheckBox1.Checked then
  begin
    Qju.SQL.Add('where notrans like :notrans ');
    Qju.ParamByName('notrans').AsString := '%'+cxTextEdit1.Text+'%';
  end
  else
    Qju.SQL.Add('where idju > 0');
  if cxCheckBox2.Checked then
  begin
    Qju.SQL.Add('and tanggal between :tgl1 and :tgl2 ');
    Qju.ParamByName('tgl1').AsDate := cxDateEdit1.Date;
    Qju.ParamByName('tgl2').AsDate := cxDateEdit2.Date;
  end;
  Qju.SQL.Add('order by idju');
  Qju.Open;
  cxGrid1.SetFocus;
  cxGrid1DBTableView1.Controller.FocusedRowIndex := 0;
  cxGrid1DBTableView1.Controller.FocusedColumnIndex := 0;
end;

procedure Tfoju.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked then
  begin
    cxTextEdit1.Enabled := True;
    cxTextEdit1.SetFocus;
  end
  else
  begin
    cxTextEdit1.Enabled := False;
  end;
end;

procedure Tfoju.cxCheckBox2Click(Sender: TObject);
begin
  if cxCheckBox2.Checked then
  begin
    cxDateEdit1.Enabled := True;
    cxDateEdit2.Enabled := True;
    cxDateEdit1.SetFocus;
  end
  else
  begin
    cxDateEdit1.Enabled := false;
    cxDateEdit2.Enabled := false;
  end;
end;

procedure Tfoju.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Qdju.Close;
  Qdju.SQL.Clear;
  Qdju.SQL.Add(Qdju.SQLRefresh.Text);
  Qdju.ParamByName('idju').AsInteger := Qjuidju.Value;
  Qdju.Open;
end;

procedure Tfoju.FormCreate(Sender: TObject);
begin
  cxDateEdit1.Date := Date;
  cxDateEdit2.Date := Date;
end;

procedure Tfoju.FormShow(Sender: TObject);
begin
  cxButton5.Click;
end;

procedure Tfoju.Hapus1Click(Sender: TObject);
begin
  if dm.cekstatusaktifperiodeposting(FormatDateTime('yyyymm',Qjutanggal.Value))=0 then
  begin
    MessageDlg('Periode Posting "'+UpperCase(FormatDateTime('mmmm yyyy',Qjutanggal.Value))+'" Sudah Terkunci ..!',mtWarning,[mbok],0);
    Exit;
  end;
  if LeftStr(Qjunotrans.Value,2)='JP' then
  begin
    MessageDlg('Jurnal Penutup Tidak Bisa Dihapus Secara Manual..!',mtWarning,[mbok],0);
    Exit;
  end;
  if Qjutipejurnal.Text='JURNAL PENYUSUTAN' then
  begin
    MessageDlg('Jurnal Penyusutan Tidak Bisa di hapus dalam menu ini..!',mtWarning,[mbok],0);
    Exit;
  end;
  if MessageDlg('Yakin Menghapus Data JU'+#13+'No TRansaksi : '+Qjunotrans.Value+#13+'Tanggal : '+
     FormatDateTime('dd mmm yyyy',Qjutanggal.Value)+#13+'Ini .. ?',mtWarning,[mbyes,mbno],0)=mryes then
  begin
    try

      dm.Conn1.StartTransaction;
      dm.Qex.Close;
      dm.Qex.SQL.Clear;
      dm.Qex.SQL.Add('delete from ju where idju=:idju;');
      dm.Qex.SQL.Add('delete from ju_ where idju=:idju;');
      dm.Qex.ParamByName('idju').AsInteger := Qjuidju.Value;
      dm.Qex.Execute;

      dm.Conn1.Commit;

      Qju.Refresh;
    except
      on e:exception do
      begin
        dm.Conn1.Rollback;
        MessageDlg('Terdapat Keslahan Mengahus Data JU..!'+#13+e.Message+#13+'Harap Hubungi Operator..!',mtError,[mbok],0);
      end;
    end;

  end;
end;

procedure Tfoju.Koreksi1Click(Sender: TObject);
var
  i : byte;
begin
  if dm.cekstatusaktifperiodeposting(FormatDateTime('yyyymm',Qjutanggal.Value))=0 then
  begin
    MessageDlg('Periode Posting "'+UpperCase(FormatDateTime('mmmm yyyy',Qjutanggal.Value))+'" Sudah Terkunci ..!',mtWarning,[mbok],0);
    Exit;
  end;
  if LeftStr(Qjunotrans.Value,2)='JP' then
  begin
    MessageDlg('Jurnal Penutup Tidak Bisa Dikoreksi',mtWarning,[mbok],0);
    Exit;
  end;
  if Qjutipejurnal.Text='JURNAL PENYUSUTAN' then
  begin
    MessageDlg('Jurnal Penyusutan Tidak Bisa di koreksi dalam menu ini..!',mtWarning,[mbok],0);
    Exit;
  end;
  fotambahju.key:=1;
  fotambahju.periodelama :=Qjutanggal.Value;
  fotambahju.tanggal.Date := Qjutanggal.Value;
  fotambahju.uraian.Text := Qjuuraian.Value;
  fotambahju.penjelasan.Text := Qjupenjelasan.Value;
  fotambahju.dxMemData1.Close;
  fotambahju.dxMemData1.Open;
  fotambahju.idju := Qjuidju.Value;
  fotambahju.notrans.Text := Qjunotrans.Value;
  Qdju.First;
  Qdju.DisableControls;
  for  i := 1 to Qdju.RecordCount do
  begin
    fotambahju.dxMemData1.Append;
    fotambahju.dxMemData1idcoa.Value := Qdjuidcoa.Value;
    fotambahju.dxMemData1namaakun.Value := Qdjunamaakun.Value;
    fotambahju.dxMemData1kodeakun.Value := Qdjukodeakun.Value;
    fotambahju.dxMemData1jenis.Value := '';
    fotambahju.dxMemData1kredit.Value := Qdjukredit.Value;
    fotambahju.dxMemData1debet.Value := Qdjudebet.Value;
    fotambahju.dxMemData1kodeunit.Value := Qdjukodeunit.Value;
    fotambahju.dxMemData1.Post;

    Qdju.Next;
    Application.ProcessMessages;
  end;
  Qdju.First;
  Qdju.EnableControls;
  if fotambahju.ShowModal=mrok then
  begin
    Qju.Refresh;
  end
  else
  begin
    Qju.Refresh;
  end;
end;

procedure Tfoju.RzToolButton1Click(Sender: TObject);
begin
  fotambahju.key:=0;
  if fotambahju.ShowModal=mrok then
  begin
    Qju.Refresh;
  end
  else
  begin
    Qju.Refresh;
  end;
end;

end.
