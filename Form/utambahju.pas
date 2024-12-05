unit utambahju;

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
  cxDataControllerConditionalFormattingRulesManagerDialog,
  dxSkinsDefaultPainters, scDevExStyleAdapter;

type
  Tfotambahju = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    Qcek: TMyQuery;
    MyDataSource1: TMyDataSource;
    dxMemData1: TdxMemData;
    dxMemData1kodeakun: TStringField;
    dxMemData1namaakun: TStringField;
    dxMemData1jenis: TStringField;
    dxMemData1kredit: TCurrencyField;
    dxMemData1debet: TCurrencyField;
    dxMemData1idcoa: TIntegerField;
    ActionList1: TActionList;
    esc: TAction;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1RecId: TcxGridDBColumn;
    cxGrid1DBTableView1kodeakun: TcxGridDBColumn;
    cxGrid1DBTableView1namaakun: TcxGridDBColumn;
    cxGrid1DBTableView1jenis: TcxGridDBColumn;
    cxGrid1DBTableView1debet: TcxGridDBColumn;
    cxGrid1DBTableView1kredit: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    notrans: TcxTextEdit;
    cxLabel2: TcxLabel;
    uraian: TcxMemo;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    tanggal: TcxDateEdit;
    penjelasan: TcxMemo;
    cxGroupBox2: TcxGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    dxMemData1kodeunit: TStringField;
    cxGrid1DBTableView1kodeunit: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure escExecute(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tanggalPropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure tanggalKeyPress(Sender: TObject; var Key: Char);
    procedure notransKeyPress(Sender: TObject; var Key: Char);
    procedure penjelasanKeyPress(Sender: TObject; var Key: Char);
    procedure uraianKeyPress(Sender: TObject; var Key: Char);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
  private
    { Private declarations }
    flagisikode : byte;
  public
    key : byte;
    idju : integer;
    periodelama : TDate;
    { Public declarations }
    procedure kosongkantext;
    procedure kondisiawal;
    procedure disableallbutton;
    procedure enableallbutton;
  end;

var
  fotambahju: Tfotambahju;

implementation

{$R *.dfm}

uses ucariunitkerja;

{ Tfotambahju }

procedure Tfotambahju.cxButton1Click(Sender: TObject);
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
        MessageDlg('Periode Posting "'+UpperCase(FormatDateTime('mmmm yyyy',tanggal.Date))+'" Sudah Terkunci ..!',mtWarning,[mbok],0);
        tanggal.Text := '';
        tanggal.SetFocus;
        Exit;
      end;
    end;
    if trim(notrans.Text)='' then
    begin
      MessageDlg('Notransaksi Maish Kosong..!',mtWarning,[mbok],0);
      notrans.SetFocus;
      Exit;
    end;
    if trim(uraian.Text)='' then
    begin
      MessageDlg('Uraian Masih Kosong..!',mtWarning,[mbok],0);
      uraian.SetFocus;
      Exit;
    end;
    if trim(Penjelasan.Text)='' then
    begin
      MessageDlg('Notransaksi Maish Kosong..!',mtWarning,[mbok],0);
      penjelasan.SetFocus;
      Exit;
    end;
    if dxMemData1.RecordCount<=0 then
    begin
      MessageDlg('Data Kode Akun Belum Diinput ..!',mtWarning,[mbok],0);
      penjelasan.SetFocus;
      Exit;
    end
    else
    begin
      sum1 := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
      sum2 := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
      if sum1 <> sum2 then
      begin
        MessageDlg('Debet Dan Kredit Tidak Balance..!',mtWarning,[mbok],0);
        Exit;
      end;
    end;
    dxMemData1.First;
    dxMemData1.DisableControls;
    for i:=1 to dxMemData1.RecordCount do
    begin
      dm.Qcek.Close;
      dm.Qcek.SQL.Clear;
      dm.Qcek.SQL.Add('Select * from coa where kodeakun=:kodeakun');
      dm.Qcek.ParamByName('kodeakun').AsString := dxMemData1kodeakun.Value;
      dm.Qcek.Open;

      if dm.Qcek.RecordCount = 0 then
      begin
        MessageDlg('Terdapat Kode Akun Yang Tidak valid ..!'+#13+'Harap Di cek Kembali Inputan Anda..!',mtWarning,[mbok],0);
        dxMemData1.EnableControls;
        Exit;
      end;
      dxMemData1.Next;
    end;
    dxMemData1.First;
    dxMemData1.EnableControls;
    try
      if key=0 then
      begin
        dxMemData1.First;
        dxMemData1.DisableControls;
        notrans.Text := dm.noautojurnal(tanggal.Date);
        dm.locktabel('ju');

        dm.Conn1.StartTransaction;

        dm.Qcek.Close;
        dm.Qcek.SQL.Clear;
        dm.Qcek.SQL.Add('select cariidjurnal() as nomor');
        dm.Qcek.Open;
        idju := dm.Qcek.fieldbyname('nomor').AsInteger;

        dm.insertdataju(
        notrans.Text,
        uraian.Text,
        penjelasan.Text,
        'JURNAL UMUM',
        cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0],
        tanggal.Date,
        idju);
        for i:=1 to dxMemData1.RecordCount do
        begin

          dm.insertdataju_(
          dxMemData1idcoa.Value,
          idju,
          tanggal.Date,
          dxMemData1debet.Value,
          dxMemData1kredit.Value,
          dxMemData1kodeunit.Value);


          dxMemData1.Next;
          Application.ProcessMessages;
        end;
        dxMemData1.First;
        dxMemData1.EnableControls;
        dm.Conn1.Commit;
        dm.unlocktabel;

        MessageDlg('Data Berhasil Disimpan..',mtInformation,[mbok],0);

        kondisiawal;
        tanggal.SetFocus;
      end
      else          // Koreksiiii
      begin
        dxMemData1.First;
        dxMemData1.DisableControls;
        dm.locktabel('ju');

        dm.Conn1.StartTransaction;

        dm.Qex.Close;
        dm.Qex.SQL.Clear;
        dm.Qex.SQL.Add('delete from ju_ where idju=:idju');
        dm.Qex.ParamByName('idju').AsInteger := idju;
        dm.Qex.Execute;

        dm.Qex.Close;
        dm.Qex.SQL.Clear;
        dm.Qex.SQL.Add('Update ju set uraian=:uraian,penjelasan=:penjelasan,jumlah=:jumlah,tanggal=:tanggal,tipejurnal=:tipejurnal where idju=:idju');
        dm.Qex.ParamByName('uraian').AsString := uraian.Text;
        dm.Qex.ParamByName('penjelasan').AsString := penjelasan.Text;
        dm.Qex.ParamByName('jumlah').AsCurrency := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
        dm.Qex.ParamByName('tanggal').AsDate := tanggal.Date;
        dm.Qex.ParamByName('tipejurnal').AsString := 'JURNAL UMUM';
        dm.Qex.ParamByName('idju').AsInteger := idju;
        dm.Qex.Execute;
        for i:=1 to dxMemData1.RecordCount do
        begin
          dm.Qex.Close;
          dm.Qex.SQL.Clear;
          dm.Qex.SQL.Add('Insert into ju_ (idcoa,idju,tanggal,jenis,debet,kredit,kodeunit) value (:idcoa,:idju,:tanggal,:jenis,:debet,:kredit,:kodeunit)');
          dm.Qex.ParamByName('idcoa').AsInteger := dxMemData1idcoa.value;
          dm.Qex.ParamByName('idju').AsInteger := idju;
          dm.Qex.ParamByName('tanggal').AsDate := tanggal.Date;
          dm.Qex.ParamByName('jenis').AsString := '';
          dm.Qex.ParamByName('debet').AsCurrency := dxMemData1debet.Value;
          dm.Qex.ParamByName('kredit').AsCurrency := dxMemData1kredit.Value;
          dm.Qex.ParamByName('kodeunit').AsString := dxMemData1kodeunit.Value;
          dm.Qex.Execute;

          dxMemData1.Next;
          Application.ProcessMessages;
        end;
        dxMemData1.First;
        dxMemData1.EnableControls;
        dm.Conn1.Commit;

        dm.unlocktabel;
        MessageDlg('Data Berhasil Disimpan..',mtInformation,[mbok],0);

        ModalResult :=mrOk;

      end;

    except
      on e:exception do
      begin
        MessageDlg('Terdapat Kesalahan..!'+#13+e.Message+#13+'Harap Hubungi Operator..!',mtError,[mbok],0);
        dm.unlocktabel;
      end;
    end;
  finally
    enableallbutton;
  end;
end;

procedure Tfotambahju.cxButton2Click(Sender: TObject);
begin
  Self.Close;
end;

procedure Tfotambahju.cxGrid1DBTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  if key=vk_return then
  begin
    if cxGrid1DBTableView1kodeakun.Focused then
    begin
      dxMemData1.Edit;
      dxMemData1.Post;
      Qcek.Close;
      Qcek.SQL.Clear;
      Qcek.SQL.Add('select * from coa where kodeakun=:kodeakun');
      Qcek.ParamByName('kodeakun').AsString := dxMemData1kodeakun.Value;
      Qcek.Open;
      if Qcek.RecordCount > 0 then
      begin
        if Qcek.FieldByName('flagunit').AsInteger=1 then
        begin
          if focariuk.ShowModal=mrok then
          begin
            kodeunitinput := focariuk.Qcoakodeunit.Value;
            dxMemData1.Edit;
            cxGrid1DBTableView1debet.Selected := true;
            dxMemData1kodeunit.Value := kodeunitinput;
            dxMemData1namaakun.Value := Qcek.fieldbyname('namaakun').AsString;
            dxMemData1idcoa.Value := Qcek.fieldbyname('idcoa').AsInteger;
            dxMemData1.Post;
            dxMemData1debet.FocusControl;
          end
          else
          begin
            dxMemData1kodeakun.FocusControl;
          end;

        end
        else
        begin
          kodeunitinput := '00';
          dxMemData1.Edit;
          cxGrid1DBTableView1debet.Selected := true;
          dxMemData1kodeunit.Value := kodeunitinput;
          dxMemData1namaakun.Value := Qcek.fieldbyname('namaakun').AsString;
          dxMemData1idcoa.Value := Qcek.fieldbyname('idcoa').AsInteger;
          dxMemData1.Post;
          dxMemData1debet.FocusControl;
        end;
      end
      else
      begin
        focaricoa.mode := 0;
        if focaricoa.ShowModal = mrok then
        begin
          dxMemData1.Edit;
          cxGrid1DBTableView1debet.Selected := true;
          dxMemData1kodeunit.Value := kodeunitinput;
          dxMemData1namaakun.Value := focaricoa.Qcoa.fieldbyname('namaakun').AsString;
          dxMemData1kodeakun.Value := focaricoa.Qcoa.fieldbyname('kodeakun').AsString;
          dxMemData1idcoa.Value := focaricoa.Qcoa.fieldbyname('idcoa').AsInteger;
          dxMemData1.Post;
          dxMemData1debet.FocusControl;
        end
        else
        begin
          dxMemData1kodeakun.FocusControl;
        end;
      end;
    end
    else if cxGrid1DBTableView1debet.Focused then
    begin
      if AItem.Index=cxGrid1DBTableView1debet.Index then
      begin
        if Sender.Controller.EditingController.Edit.EditingValue > 0 then
        begin
          dxMemData1.Append;
          dxMemData1kodeakun.FocusControl;
        end;
      end;
    end
    else if cxGrid1DBTableView1kredit.Focused then
    begin
      if AItem.Index=cxGrid1DBTableView1kredit.Index then
      begin
        if Sender.Controller.EditingController.Edit.EditingValue > 0 then
        begin
          dxMemData1.Append;
          dxMemData1kodeakun.FocusControl;
        end;
      end;
    end;
  end;
end;

procedure Tfotambahju.disableallbutton;
begin
  cxButton1.Enabled := False;
  cxButton2.Enabled := False;
end;

procedure Tfotambahju.enableallbutton;
begin
  cxButton1.Enabled := true;
  cxButton2.Enabled := True;
end;

procedure Tfotambahju.escExecute(Sender: TObject);
begin
  if tanggal.Focused then
  begin
    Close;
  end
  else if notrans.Focused then
  begin
    tanggal.SetFocus;
  end
  else if uraian.Focused then
  begin
    notrans.SetFocus;
  end
  else if penjelasan.Focused then
  begin
    uraian.SetFocus;
  end
end;

procedure Tfotambahju.FormCreate(Sender: TObject);
begin
  key:=2;
  tanggal.Date := Date;
  kondisiawal;
  flagisikode :=0;
end;

procedure Tfotambahju.FormShow(Sender: TObject);
begin
  if key=0 then
  begin
    kondisiawal;
     if tanggal.Text<>'' then
    begin
      notrans.Text := dm.noautojurnal(tanggal.Date);
    end
    else
    begin
      notrans.Text := dm.noautojurnal(date);
    end;
  end;
  tanggal.SetFocus;
end;

procedure Tfotambahju.kondisiawal;
begin
  kosongkantext;
 
  dxMemData1.Close;
  dxMemData1.Open;
end;

procedure Tfotambahju.kosongkantext;
begin
  uraian.Text := '';
  penjelasan.Text := '';
end;

procedure Tfotambahju.notransKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    uraian.SetFocus;
end;

procedure Tfotambahju.penjelasanKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    if dxMemData1.RecordCount > 0 then
    begin
      cxGrid1.SetFocus;
    end
    else
    begin
      dxMemData1.Insert;
      dxMemData1.Post;
      cxGrid1.SetFocus;
      cxGrid1DBTableView1kodeakun.Selected := true;
    end;
  end;
end;

procedure Tfotambahju.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  Self.Close;
end;

procedure Tfotambahju.tanggalKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    notrans.SetFocus;
end;

procedure Tfotambahju.tanggalPropertiesChange(Sender: TObject);
begin
  if key=0 then
  begin
    if tanggal.Text<>'' then
    begin
      if dm.cekstatusaktifperiodeposting(FormatDateTime('yyyymm',tanggal.Date))=0 then
      begin
        MessageDlg('Periode Posting "'+FormatDateTime('mmmm yyyy',tanggal.Date)+'" Sudah Terkunci ..!',mtWarning,[mbok],0);
        tanggal.Text := '';
        tanggal.SetFocus;
        Exit;
      end;
    end;
    notrans.Text := dm.noautojurnal(tanggal.Date);
  end
  else if key=1 then
  begin
    if FormatDateTime('yyyymm',tanggal.Date)<>FormatDateTime('yyyymm',periodelama) then
    begin
      MessageDlg('Periode Bulan Tidak Boleh Berbeda Dengan Periode Bulan Sebelumnya ..!',mtInformation,[mbok],0);
      tanggal.Date := periodelama;
    end
  end;
end;

procedure Tfotambahju.uraianKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    penjelasan.SetFocus;
end;

end.
