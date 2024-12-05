unit upbayarvocer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxTextEdit,
  cxCurrencyEdit, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxCalendar, cxMemo,
  cxLabel, cxGroupBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, System.Actions,
  Vcl.ActnList, dxmdaset, DBAccess, MyAccess, MemDS, RzTabs, Vcl.ExtCtrls,
  RzPanel, ucaricoa, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, RzRadGrp, RzEdit,
  RzCmboBx, Vcl.Mask, dxSkinsDefaultPainters, scDevExStyleAdapter;

type
  Tfopbayarvocer = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    Qcek: TMyQuery;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    notrans: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    tanggal: TcxDateEdit;
    cxGroupBox2: TcxGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    uraian: TcxTextEdit;
    cxLabel6: TcxLabel;
    RzRadioGroup1: TRzRadioGroup;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    RzEdit1: TRzEdit;
    RzComboBox1: TRzComboBox;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzNumericEdit1: TRzNumericEdit;
    RzNumericEdit2: TRzNumericEdit;
    RzNumericEdit3: TRzNumericEdit;
    RzNumericEdit4: TRzNumericEdit;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure tanggalKeyPress(Sender: TObject; var Key: Char);
    procedure notransKeyPress(Sender: TObject; var Key: Char);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure RzRadioGroup1Click(Sender: TObject);
    procedure RzNumericEdit3Change(Sender: TObject);
  private
    { Private declarations }
    flagisikode : byte;
  public
    notranst : string;
    periodelama : TDate;
    { Public declarations }
    procedure kosongkantext;
    procedure kondisiawal;
    procedure disableallbutton;
    procedure enableallbutton;
    procedure hitungsisabayar;
    procedure cektermin;
    procedure onkliktermin;
  end;

var
  fopbayarvocer: Tfopbayarvocer;

implementation

{$R *.dfm}

{ Tfopbayarvocer }

procedure Tfopbayarvocer.cektermin;
begin
  Qcek.Close;
  Qcek.SQL.Clear;
  Qcek.SQL.Add('SELECT COALESCE(count(notrans),0) AS total FROM vcbayar WHERE notrans=:notrans');
  Qcek.ParamByName('notrans').AsString := notrans.Text;
  Qcek.Open;
  if Qcek.RecordCount>0 then
  begin
    RzNumericEdit4.Value := Qcek.FieldByName('total').AsCurrency+1;
  end
  else
  begin
    RzNumericEdit4.Value := 1;
  end;

end;

procedure Tfopbayarvocer.cxButton1Click(Sender: TObject);
var
  i: integer;
  sum1,sum2 : Currency;
begin
  try

    disableallbutton;
    if tanggal.Text<>'' then
    begin
      if dm.cekstatusaktifperiodeposting(FormatDateTime('yyyymm',tanggal.Date))=0 then
      begin
        MessageDlg('Periode Posting "'+UpperCase(FormatDateTime('mmmm yyyy',tanggal.Date))+'" Sudah Terkunci / Belum dibuat!',mtWarning,[mbok],0);
        tanggal.Text := '';
        tanggal.SetFocus;
        Exit;
      end;
    end;
    if trim(notrans.Text)='' then
    begin
      MessageDlg('Notransaksi Masih Kosong..!',mtWarning,[mbok],0);
      notrans.SetFocus;
      Exit;
    end;
    if trim(RzComboBox1.Text)='' then
    begin
      MessageDlg('Nama Bank Masih Kosong..!',mtWarning,[mbok],0);
      RzComboBox1.SetFocus;
      Exit;
    end;

    if RzNumericEdit3.Value=0 then
    begin
      MessageDlg('Jumlah Bayar Masih Kosong . !',mtWarning,[mbok],0);
      RzNumericEdit3.SetFocus;
      Exit;
    end;
    if RzNumericEdit3.Value>RzNumericEdit2.Value then
    begin
      MessageDlg('Jumlah Bayar Lebih besar dari sisa bayar! ',mtWarning,[mbok],0);
      RzNumericEdit3.SetFocus;
      Exit;
    end;
    try
        dm.Conn1.StartTransaction;

        with dm do
        begin
          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('INSERT INTO vcbayar (notrans,tanggal,uraian,termin,namabank,nomor,jmlbayar,tglbayar) value ');
          Qex.SQL.Add('(:notrans,:tanggal,:uraian,:termin,:namabank,:nomor,:jmlbayar,:tglbayar)');
          Qex.ParamByName('notrans').Value := notrans.Text;
          Qex.ParamByName('tanggal').Value := tanggal.Date;
          Qex.ParamByName('uraian').Value := uraian.Text;
          if RzRadioGroup1.ItemIndex=0 then
            Qex.ParamByName('termin').Value := 0
          else
            Qex.ParamByName('termin').Value := RzNumericEdit4.Value;
          Qex.ParamByName('namabank').AsString := RzComboBox1.Text;
          Qex.ParamByName('nomor').AsString := RzEdit1.Text;
          Qex.ParamByName('jmlbayar').AsCurrency := RzNumericEdit3.Value;
          Qex.ParamByName('tglbayar').AsDate := RzDateTimeEdit1.Date;
          Qex.Execute;

          Qex.Close;
          qex.SQL.Clear;
          Qex.SQL.Add('update voucher set flaglunas=:flaglunas,typebayar=:typebayar where notrans=:notrans');
          if RzNumericEdit2.Value=RzNumericEdit3.Value then
            Qex.ParamByName('flaglunas').AsString := '1'
          else
            Qex.ParamByName('flaglunas').AsString := '0';

          Qex.ParamByName('typebayar').AsString := RzRadioGroup1.Items[RzRadioGroup1.ItemIndex];
          Qex.ParamByName('notrans').AsString := notrans.Text;
          Qex.Execute;
        end;

        dm.Conn1.Commit;
        MessageDlg('Data Berhasil Disimpan..',mtInformation,[mbok],0);

        ModalResult := mrok;

    except
      on e:exception do
      begin
        MessageDlg('Terdapat Kesalahan..!'+#13+e.Message+#13+'Harap Hubungi Operator..!',mtError,[mbok],0);
      //  dm.unlocktabel;
      end;
    end;
  finally
    enableallbutton;
  end;
end;

procedure Tfopbayarvocer.cxButton2Click(Sender: TObject);
begin
  Self.Close;
end;

procedure Tfopbayarvocer.disableallbutton;
begin
  cxButton1.Enabled := False;
  cxButton2.Enabled := False;
end;

procedure Tfopbayarvocer.enableallbutton;
begin
  cxButton1.Enabled := true;
  cxButton2.Enabled := True;
end;

procedure Tfopbayarvocer.FormCreate(Sender: TObject);
begin
  RzDateTimeEdit1.Date := Date;
  kondisiawal;
end;

procedure Tfopbayarvocer.FormShow(Sender: TObject);
begin
  with dm do
  begin
    qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select * from akunkas order by indek');
    Qcek.Open;
    RzComboBox1.Items.Clear;
    while not Qcek.Eof do
    begin
      RzComboBox1.Items.Add(Qcek['namakas']);
      Qcek.Next;
    end;
  end;
  kondisiawal;
  RzComboBox1.SetFocus;
end;

procedure Tfopbayarvocer.hitungsisabayar;
var
  jmlsudahbyr : Currency;
begin
  Qcek.Close;
  Qcek.SQL.Clear;
  Qcek.SQL.Add('SELECT COALESCE(SUM(jmlbayar),0) AS total FROM vcbayar WHERE notrans=:notrans');
  Qcek.ParamByName('notrans').AsString := notrans.Text;
  Qcek.Open;
  if Qcek.RecordCount>0 then
  begin
    jmlsudahbyr := Qcek.FieldByName('total').AsCurrency;
  end
  else
  begin
    jmlsudahbyr := 0;
  end;
  RzNumericEdit2.Value := RzNumericEdit1.Value-jmlsudahbyr;
end;

procedure Tfopbayarvocer.kondisiawal;
begin
  kosongkantext;
end;

procedure Tfopbayarvocer.kosongkantext;
begin
  RzEdit1.Text := '';
end;

procedure Tfopbayarvocer.notransKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    uraian.SetFocus;
end;

procedure Tfopbayarvocer.onkliktermin;
begin
 if RzRadioGroup1.ItemIndex=0 then
  begin
    RzNumericEdit4.Value := 0;
    RzNumericEdit4.Enabled := false;
    RzNumericEdit3.Value := RzNumericEdit1.Value;
    RzNumericEdit2.Value := RzNumericEdit1.Value;
    RzNumericEdit3.ReadOnly := true;
  end
  else
  begin
    RzNumericEdit4.Value := 1;
    RzNumericEdit4.Enabled := false;
    RzNumericEdit3.Value := 0;
    RzNumericEdit3.ReadOnly := false;
    cektermin;
    hitungsisabayar;
  end;
end;

procedure Tfopbayarvocer.RzNumericEdit3Change(Sender: TObject);
begin
  RzNumericEdit3.Refresh;
end;

procedure Tfopbayarvocer.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  Self.Close;
end;

procedure Tfopbayarvocer.RzRadioGroup1Click(Sender: TObject);
begin
  onkliktermin;
end;

procedure Tfopbayarvocer.tanggalKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    notrans.SetFocus;
end;

end.
