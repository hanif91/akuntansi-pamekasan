unit utambahisivkk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.ExtCtrls, RzPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, Vcl.Menus, cxContainer, cxTextEdit, cxCurrencyEdit, RzButton,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBAccess, MyAccess,
  MemDS, Vcl.StdCtrls, cxButtons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Vcl.ComCtrls, dxCore, cxDateUtils, cxLabel, cxMaskEdit,
  cxDropDownEdit, cxCalendar, scDevExStyleAdapter;

type
  Tfotambahisivkk = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    Panel1: TPanel;
    Label1: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxButton1: TcxButton;
    Qkas: TMyQuery;
    Dkas: TMyDataSource;
    btnsimpan: TRzToolButton;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label2: TLabel;
    tanggal: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxComboBox1: TcxComboBox;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxComboBox2: TcxComboBox;
    cxTextEdit1: TcxTextEdit;
    cxLabel7: TcxLabel;
    Qkasjumlah: TFloatField;
    Qkaskodeakun: TStringField;
    Qkasnamaakun: TStringField;
    cxGrid1DBTableView1jumlah: TcxGridDBColumn;
    cxGrid1DBTableView1kodeakun: TcxGridDBColumn;
    cxGrid1DBTableView1namaakun: TcxGridDBColumn;
    Qkasidcoa: TIntegerField;
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idcoakre : integer;
  end;

var
  fotambahisivkk: Tfotambahisivkk;

implementation

{$R *.dfm}

uses udm;

procedure Tfotambahisivkk.btnsimpanClick(Sender: TObject);
var
 idju,i : integer;
 novoucher : string;
 keterangan : string;
begin
  if tanggal.Text<>'' then
  begin
    if dm.cekstatusaktifperiodeposting(FormatDateTime('yyyymm',tanggal.Date))=0 then
    begin
      MessageDlg('Periode Posting "'+UpperCase(FormatDateTime('mmmm yyyy',tanggal.Date))+'" Sudah Terkunci ..!',mtWarning,[mbok],0);
      tanggal.Text := '';
      tanggal.SetFocus;
      Exit;
    end;
  end;
  if trim(cxComboBox1.Text)='' then
  begin
    MessageDlg('Dibebankan Kepada Masih Kosong..!',mtWarning,[mbok],0);
    cxComboBox1.SetFocus;
    Exit;
  end;
  if trim(cxComboBox2.Text)='' then
  begin
    MessageDlg('Dibayarkan Kepada Masih Kosong..!',mtWarning,[mbok],0);
    cxComboBox1.SetFocus;
    Exit;
  end;
  cxButton1.Click;
  if cxCurrencyEdit1.Value=0 then
  begin
    MessageDlg('Total masih Kosong',mtWarning,[mbok],0);
    Exit;
  end;
  try
    with dm do
    begin
      Conn1.StartTransaction;

      Qcek.Close;
      Qcek.SQL.Clear;
      Qcek.SQL.Add('select cariidvoucher() as nomor');
      Qcek.Open;
      idju := dm.Qcek.fieldbyname('nomor').AsInteger;

      novoucher := dm.noautovoucher(tanggal.Date);

      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('INSERT INTO voucher (idvoucher,notrans,tanggal,bagian,tujuan,uraian,atasnama,penjelasan,jumlah,flaghutang) value ');
      Qex.SQL.Add('(cariidvoucher(),:notrans,:tanggal,:bagian,:tujuan,:uraian,:atasnama,:penjelasan,:jumlah,:flaghutang)');
     // Qex.ParamByName('idvoucher').Value := idju;
      Qex.ParamByName('notrans').Value := novoucher;
      Qex.ParamByName('tanggal').Value := tanggal.Date;
      Qex.ParamByName('bagian').Value := cxComboBox1.Text;
      Qex.ParamByName('tujuan').Value := cxComboBox2.Text;
      Qex.ParamByName('uraian').Value := 'PENGELUARAN KAS KECIL DATA TERLAMPIR';
      Qex.ParamByName('atasnama').Value := cxTextEdit1.Text;
      Qex.ParamByName('penjelasan').Value := 'PENGELUARAN KAS KECIL DATA TERLAMPIR';
      Qex.ParamByName('jumlah').Value := cxCurrencyEdit1.Value;
      Qex.ParamByName('flaghutang').Value := 1;
      Qex.Execute;
    end;
    Qkas.First;
    for i:=1 to Qkas.RecordCount do
    begin

      with dm do
      begin
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('Insert into voucher_ (idcoa,notrans,tanggal,jenis,debet,kredit) value (:idcoa,:notrans,:tanggal,:jenis,:debet,:kredit)');
        Qex.ParamByName('idcoa').AsInteger := Qkasidcoa.Value;
        Qex.ParamByName('notrans').AsString := novoucher;
        Qex.ParamByName('tanggal').AsDate := tanggal.Date;
        Qex.ParamByName('jenis').AsString := '';
        Qex.ParamByName('debet').AsCurrency := Qkasjumlah.Value;
        Qex.ParamByName('kredit').AsCurrency := 0;
        Qex.Execute;
      end;
      Qkas.Next;
      Application.ProcessMessages;
    end;
    dm.Qex.Close;
    dm.Qex.SQL.Clear;
    dm.Qex.SQL.Add('Insert into voucher_ (idcoa,notrans,tanggal,jenis,debet,kredit) value (:idcoa,:notrans,:tanggal,:jenis,:debet,:kredit)');
    dm.Qex.ParamByName('idcoa').AsInteger := idcoakre;
    dm.Qex.ParamByName('notrans').AsString := novoucher;
    dm.Qex.ParamByName('tanggal').AsDate := tanggal.Date;
    dm.Qex.ParamByName('jenis').AsString := '';
    dm.Qex.ParamByName('debet').AsCurrency := 0;
    dm.Qex.ParamByName('kredit').AsCurrency := cxCurrencyEdit1.Value;
    dm.Qex.Execute;

    dm.Qex.Close;
    dm.Qex.SQL.Clear;
    dm.Qex.SQL.Add('Insert into vkk_isi (total,tanggal,novoucher) value (:total,:tanggal,:novoucher)');
    dm.Qex.ParamByName('novoucher').AsString := novoucher;
    dm.Qex.ParamByName('tanggal').AsDate := tanggal.Date;
    dm.Qex.ParamByName('total').AsCurrency := cxCurrencyEdit1.Value;
    dm.Qex.Execute;

    dm.Qex.Close;
    dm.Qex.SQL.Clear;
    dm.Qex.SQL.Add('update vkk set novoucher=:novoucher where ISNULL(novoucher)');
    dm.Qex.ParamByName('novoucher').AsString := novoucher;
    dm.Qex.Execute;

    dm.Conn1.Commit;

    MessageDlg('Data Berhasil Disimpan..',mtInformation,[mbok],0);

    ModalResult :=mrOk;
  except
    on e:exception do
    begin
      MessageDlg(e.Message,mtError,[mbok],0);
    end;
  end;

end;

procedure Tfotambahisivkk.cxButton1Click(Sender: TObject);
begin
  Qkas.Close;
  Qkas.Open;
  cxCurrencyEdit1.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
end;

procedure Tfotambahisivkk.FormShow(Sender: TObject);
begin
  cxButton1.Click;
  tanggal.Date := date;
  dm.isicombo1('ketvoucher1',cxComboBox1);
  dm.isicombo1('ketvoucher2',cxComboBox2);
  cxTextEdit1.Text := '';
end;

procedure Tfotambahisivkk.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
close;
end;

end.
