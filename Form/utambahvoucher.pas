unit utambahvoucher;

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
  cxDataControllerConditionalFormattingRulesManagerDialog, RzLabel,
  dxSkinsDefaultPainters, scDevExStyleAdapter;

type
  Tfotambahvoucher = class(TForm)
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
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    tanggal: TcxDateEdit;
    penjelasan: TcxMemo;
    cxGroupBox2: TcxGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxComboBox1: TcxComboBox;
    cxComboBox2: TcxComboBox;
    cxTextEdit1: TcxTextEdit;
    cxLabel7: TcxLabel;
    uraian: TcxTextEdit;
    dxMemData1flagpostand: TSmallintField;
    RzPanel2: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    dxMemData1kodeunit: TStringField;
    cxGrid1DBTableView1kodeunit: TcxGridDBColumn;
    cxLabel8: TcxLabel;
    cxComboBox3: TcxComboBox;
    cxComboBox4: TcxComboBox;
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
    procedure uraianKeyPress(Sender: TObject; var Key: Char);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure cxComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure uraianPropertiesChange(Sender: TObject);
    procedure penjelasanKeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tanggalPropertiesCloseUp(Sender: TObject);
    procedure cxComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure cxComboBox3PropertiesChange(Sender: TObject);
  private
    { Private declarations }
    flagisikode : byte;

  public
    flagpostand,flaghutang : byte;
    key : byte;
    idju : integer;
    notranst : string;
    periodelama : TDate;
    { Public declarations }
    procedure kosongkantext;
    procedure kondisiawal;
    procedure disableallbutton;
    procedure enableallbutton;
  end;

var
  fotambahvoucher: Tfotambahvoucher;

implementation

{$R *.dfm}

uses ucariunitkerja;

{ Tfotambahvoucher }

procedure Tfotambahvoucher.cxButton1Click(Sender: TObject);
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
        MessageDlg('Periode "'+FormatDateTime('yyyymm',tanggal.Date)+'" sudah dikunci / Belum dibuat !'+#13+'Harap Hubungi Bagian Akuntansi..!',mtWarning,[mbok],0);
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
    if trim(uraian.Text)='' then
    begin
      MessageDlg('Uraian Masih Kosong..!',mtWarning,[mbok],0);
      uraian.SetFocus;
      Exit;
    end;
    if trim(Penjelasan.Text)='' then
    begin
      MessageDlg('Notransaksi Masih Kosong..!',mtWarning,[mbok],0);
      penjelasan.SetFocus;
      Exit;
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
    if trim(cxTextEdit1.Text)='' then
    begin
      MessageDlg('Atas Nama Masih Kosong..!',mtWarning,[mbok],0);
      cxComboBox1.SetFocus;
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
      if cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0] <> cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1] then
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
        notrans.Text := dm.noautovoucher(tanggal.Date);

        dm.Conn1.StartTransaction;

        dm.Qcek.Close;
        dm.Qcek.SQL.Clear;
        dm.Qcek.SQL.Add('select cariidvoucher() as nomor');
        dm.Qcek.Open;
        idju := dm.Qcek.fieldbyname('nomor').AsInteger;

        with dm do
        begin
          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('INSERT INTO voucher (idvoucher,notrans,tanggal,bagian,tujuan,uraian,atasnama,penjelasan,jumlah,flaghutang,idaruskas) value ');
          Qex.SQL.Add('(cariidvoucher(),:notrans,:tanggal,:bagian,:tujuan,:uraian,:atasnama,:penjelasan,:jumlah,:flaghutang,:idaruskas)');
         // Qex.ParamByName('idvoucher').Value := idju;
          Qex.ParamByName('notrans').Value := notrans.Text;
          Qex.ParamByName('tanggal').Value := tanggal.Date;
          Qex.ParamByName('bagian').Value := cxComboBox1.Text;
          Qex.ParamByName('tujuan').Value := cxComboBox2.Text;
          Qex.ParamByName('uraian').Value := uraian.Text;
          Qex.ParamByName('atasnama').Value := cxTextEdit1.Text;
          Qex.ParamByName('penjelasan').Value := penjelasan.Text;
          Qex.ParamByName('jumlah').Value := sum1;
          Qex.ParamByName('flaghutang').Value := flaghutang;
          Qex.ParamByName('idaruskas').AsInteger := StrToIntDef(cxComboBox4.Text,9);

          Qex.Execute;
        end;
        for i:=1 to dxMemData1.RecordCount do
        begin

          with dm do
          begin
            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('Insert into voucher_ (idcoa,notrans,tanggal,jenis,debet,kredit,kodeunit) value (:idcoa,:notrans,:tanggal,:jenis,:debet,:kredit,:kodeunit)');
            Qex.ParamByName('idcoa').AsInteger := dxMemData1idcoa.Value;
            Qex.ParamByName('notrans').AsString := notrans.Text;
            Qex.ParamByName('tanggal').AsDate := tanggal.Date;
            Qex.ParamByName('jenis').AsString := '';
            Qex.ParamByName('debet').AsCurrency := dxMemData1debet.Value;
            Qex.ParamByName('kredit').AsCurrency := dxMemData1kredit.Value;
            Qex.ParamByName('kodeunit').AsString := dxMemData1kodeunit.Value;
            Qex.Execute;
          end;
          dxMemData1.Next;
          Application.ProcessMessages;
        end;
        dxMemData1.First;
        dxMemData1.EnableControls;
        dm.Conn1.Commit;

        MessageDlg('Data Berhasil Disimpan..',mtInformation,[mbok],0);

        kondisiawal;
        notrans.Text := dm.noautovoucher(tanggal.Date);
        tanggal.SetFocus;
      end
      else          // Koreksiiii
      begin
        dxMemData1.First;
        dxMemData1.DisableControls;

        dm.Conn1.StartTransaction;

        dm.Qex.Close;
        dm.Qex.SQL.Clear;
        dm.Qex.SQL.Add('delete from voucher_ where notrans=:notrans');
        dm.Qex.ParamByName('notrans').AsString := notranst;
        dm.Qex.Execute;

        dm.Qex.Close;
        dm.Qex.SQL.Clear;
        dm.Qex.SQL.Add('Update voucher set flaghutang=:flaghutang,uraian=:uraian,penjelasan=:penjelasan,jumlah=:jumlah,tanggal=:tanggal,bagian=:bagian,tujuan=:tujuan,atasnama=:atasnama,idaruskas=:idaruskas where notrans=:notrans');
        dm.Qex.ParamByName('uraian').AsString := uraian.Text;
        dm.Qex.ParamByName('penjelasan').AsString := penjelasan.Text;
        dm.Qex.ParamByName('jumlah').AsCurrency := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
        dm.Qex.ParamByName('tanggal').AsDate := tanggal.Date;
        dm.Qex.ParamByName('bagian').Value := cxComboBox1.Text;
        dm.Qex.ParamByName('tujuan').Value := cxComboBox2.Text;
        dm.Qex.ParamByName('atasnama').Value := cxTextEdit1.Text;
        dm.Qex.ParamByName('notrans').AsString := notranst;
        dm.Qex.ParamByName('flaghutang').Value := flaghutang;
        dm.Qex.ParamByName('idaruskas').AsInteger := StrToIntDef(cxComboBox4.Text,9);
        dm.Qex.Execute;
        for i:=1 to dxMemData1.RecordCount do
        begin
          dm.Qex.Close;
          dm.Qex.SQL.Clear;
          dm.Qex.SQL.Add('Insert into voucher_ (idcoa,notrans,tanggal,jenis,debet,kredit,kodeunit) value (:idcoa,:notrans,:tanggal,:jenis,:debet,:kredit,:kodeunit)');
          dm.Qex.ParamByName('idcoa').AsInteger := dxMemData1idcoa.Value;
          dm.Qex.ParamByName('notrans').AsString := notranst;
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

        MessageDlg('Data Berhasil Disimpan..',mtInformation,[mbok],0);

        ModalResult :=mrOk;

      end;

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

procedure Tfotambahvoucher.cxButton2Click(Sender: TObject);
begin
  Self.Close;
end;

procedure Tfotambahvoucher.cxComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
  begin
    cxComboBox2.SetFocus;
  end;
end;

procedure Tfotambahvoucher.cxComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
  begin
    cxComboBox3.SetFocus;
  end;
end;

procedure Tfotambahvoucher.cxComboBox3KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
  begin
    cxTextEdit1.SetFocus;
  end;
end;

procedure Tfotambahvoucher.cxComboBox3PropertiesChange(Sender: TObject);
begin
  cxComboBox4.ItemIndex := cxComboBox3.ItemIndex;
end;

procedure Tfotambahvoucher.cxGrid1DBTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
var
  sum1 : Currency;
begin
  if key=vk_return then
  begin
      if cxGrid1DBTableView1kodeakun.Focused then
      begin
        if flagpostand=0 then
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
            focaricoa.mode := 1;
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
        else
        begin
          MessageDlg('Tidak Bisa di edit sudah di pos tandingan!',mtWarning,[mbok],0);
        end;
      end
      else if cxGrid1DBTableView1debet.Focused then
      begin
        if flagpostand=0 then
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
        else
        begin
          MessageDlg('Tidak Bisa di edit sudah di pos tandingan!',mtWarning,[mbok],0);
        end;
      end
      {else if cxGrid1DBTableView1kredit.Focused then
      begin
        if AItem.Index=cxGrid1DBTableView1kredit.Index then
        begin
          if Sender.Controller.EditingController.Edit.EditingValue > 0 then
          begin
            dxMemData1.Append;
            dxMemData1kodeakun.FocusControl;
          end;
        end;
      end;            }

  end;
{  if key=vk_delete then
  begin
    if dxMemData1flagpostand.Value=1 then
    begin
      flagpostand := 0;
      dxMemData1.Delete;
    end
    else
    begin
      MessageDlg('Tidak Bisa hapus sudah di pos tandingan!',mtWarning,[mbok],0);
    end;
  end;    }
  if key=vk_f9 then
  begin
    if flagpostand=0 then
    begin
      if cxGrid1DBTableView1kodeakun.Focused then
      begin
        if dxMemData1debet.Value=0 then
        begin
          sum1 := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
          if sum1>0 then
          begin
            if MessageDlg('Anda Akan Membuat Pos Tandingan HUTANG NON USAHA yakin ?',mtConfirmation,[mbyes,mbno],0)=mryes then
            begin
              with dm do
              begin
                Qcek.Close;
                Qcek.SQL.Clear;
                Qcek.SQL.Add('Select * from coa where idcoa=(Select idcoahutangnh from pengaturan where idx="1")');
                Qcek.Open;
              end;
              dxMemData1.Edit;
              dxMemData1namaakun.Value := dm.Qcek.fieldbyname('namaakun').AsString;
              dxMemData1kodeakun.Value := dm.Qcek.fieldbyname('kodeakun').AsString;
              dxMemData1idcoa.Value := dm.Qcek.fieldbyname('idcoa').AsInteger;
              dxMemData1kodeunit.Value := '00';
              dxMemData1flagpostand.Value := 1;
              dxMemData1kredit.Value := sum1;
              dxMemData1.Post;
              flaghutang := 1;
              flagpostand :=1;
            end;
          end
          else
          begin
            MessageDlg('Jumlah debet belum terisi.!',mtWarning,[mbok],0);
          end;
        end
      end;
    end
    else
    begin
       MessageDlg('Tidak Bisa hapus sudah di pos tandingan!',mtWarning,[mbok],0);
    end;
  end;
  if key=vk_f8 then
  begin
    if flagpostand=0 then
    begin
      if cxGrid1DBTableView1kodeakun.Focused then
      begin
        if dxMemData1debet.Value=0 then
        begin
          sum1 := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
          if sum1>0 then
          begin
            if MessageDlg('Anda Akan Membuat Pos Tandingan HUTANG USAHA yakin ?',mtConfirmation,[mbyes,mbno],0)=mryes then
            begin
              with dm do
              begin
                Qcek.Close;
                Qcek.SQL.Clear;
                Qcek.SQL.Add('Select * from coa where idcoa=(Select idcoahutangh from pengaturan where idx="1")');
                Qcek.Open;
              end;
              dxMemData1.Edit;
              dxMemData1namaakun.Value := dm.Qcek.fieldbyname('namaakun').AsString;
              dxMemData1kodeakun.Value := dm.Qcek.fieldbyname('kodeakun').AsString;
              dxMemData1idcoa.Value := dm.Qcek.fieldbyname('idcoa').AsInteger;
              dxMemData1kodeunit.Value := '00';
              dxMemData1flagpostand.Value := 1;
              dxMemData1kredit.Value := sum1;
              dxMemData1.Post;
              flaghutang := 0;
              flagpostand :=1;
            end;
          end
          else
          begin
            MessageDlg('Jumlah debet belum terisi.!',mtWarning,[mbok],0);
          end;
        end
      end;
    end
    else
    begin
       MessageDlg('Tidak Bisa hapus sudah di pos tandingan!',mtWarning,[mbok],0);
    end;
  end;
end;

procedure Tfotambahvoucher.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  sum1: currency;
begin
 if key=vk_delete then
  begin
    if dxMemData1flagpostand.Value=1 then
    begin
      dxMemData1.Delete;
      flagpostand := 0;
    end
    else
    begin
      if flagpostand = 1 then
      begin
        MessageDlg('Tidak Bisa hapus sudah di pos tandingan!',mtWarning,[mbok],0);
      end
      else
      begin
        dxMemData1.Delete;
        flagpostand := 0;
      end;

    end;
  end;
  if key=vk_f9 then
  begin
    if flagpostand=0 then
    begin
      if cxGrid1DBTableView1kodeakun.Focused then
      begin
        if dxMemData1debet.Value=0 then
        begin
          sum1 := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
          if sum1>0 then
          begin
            if MessageDlg('Anda Akan Membuat Pos Tandingan HUTANG NON USAHA yakin ?',mtConfirmation,[mbyes,mbno],0)=mryes then
            begin
              with dm do
              begin
                Qcek.Close;
                Qcek.SQL.Clear;
                Qcek.SQL.Add('Select * from coa where idcoa=(Select idcoahutangnh from pengaturan where idx="1")');
                Qcek.Open;
              end;
              dxMemData1.Edit;
              dxMemData1namaakun.Value := dm.Qcek.fieldbyname('namaakun').AsString;
              dxMemData1kodeakun.Value := dm.Qcek.fieldbyname('kodeakun').AsString;
              dxMemData1idcoa.Value := dm.Qcek.fieldbyname('idcoa').AsInteger;
              dxMemData1flagpostand.Value := 1;
              dxMemData1kodeunit.Value := '00';
              dxMemData1kredit.Value := sum1;
              dxMemData1.Post;
              flaghutang := 1;
              flagpostand :=1;
            end;
          end
          else
          begin
            MessageDlg('Jumlah debet belum terisi.!',mtWarning,[mbok],0);
          end;
        end
      end;
    end
    else
    begin
       MessageDlg('Tidak Bisa hapus sudah di pos tandingan!',mtWarning,[mbok],0);
    end;
  end;
  if key=vk_f8 then
  begin
    if flagpostand=0 then
    begin
      if cxGrid1DBTableView1kodeakun.Focused then
      begin
        if dxMemData1debet.Value=0 then
        begin
          sum1 := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
          if sum1>0 then
          begin
            if MessageDlg('Anda Akan Membuat Pos Tandingan HUTANG USAHA yakin ?',mtConfirmation,[mbyes,mbno],0)=mryes then
            begin
              with dm do
              begin
                Qcek.Close;
                Qcek.SQL.Clear;
                Qcek.SQL.Add('Select * from coa where idcoa=(Select idcoahutangh from pengaturan where idx="1")');
                Qcek.Open;
              end;
              dxMemData1.Edit;
              dxMemData1namaakun.Value := dm.Qcek.fieldbyname('namaakun').AsString;
              dxMemData1kodeakun.Value := dm.Qcek.fieldbyname('kodeakun').AsString;
              dxMemData1idcoa.Value := dm.Qcek.fieldbyname('idcoa').AsInteger;
              dxMemData1flagpostand.Value := 1;
              dxMemData1kodeunit.Value := '00';
              dxMemData1kredit.Value := sum1;
              dxMemData1.Post;
              flaghutang := 0;
              flagpostand :=1;
            end;
          end
          else
          begin
            MessageDlg('Jumlah debet belum terisi.!',mtWarning,[mbok],0);
          end;
        end
      end;
    end
    else
    begin
       MessageDlg('Tidak Bisa hapus sudah di pos tandingan!',mtWarning,[mbok],0);
    end;
  end;
end;

procedure Tfotambahvoucher.cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
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

procedure Tfotambahvoucher.disableallbutton;
begin
  cxButton1.Enabled := False;
  cxButton2.Enabled := False;
end;

procedure Tfotambahvoucher.enableallbutton;
begin
  cxButton1.Enabled := true;
  cxButton2.Enabled := True;
end;

procedure Tfotambahvoucher.escExecute(Sender: TObject);
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

procedure Tfotambahvoucher.FormCreate(Sender: TObject);
begin
  key:=2;
  tanggal.Date := Date;
  kondisiawal;
  flagisikode :=0;
end;

procedure Tfotambahvoucher.FormShow(Sender: TObject);
begin

  if key=0 then
  begin
    dm.isicombo1('ketvoucher1',cxComboBox1);
    dm.isicombo1('ketvoucher2',cxComboBox2);
    dm.isicombo2('jenisvoucher',cxComboBox3,cxComboBox4);
    kondisiawal;
    if tanggal.Text<>'' then
    begin
      notrans.Text := dm.noautovoucher(tanggal.Date);
    end
    else
    begin
      notrans.Text := dm.noautovoucher(date);
    end;
  end;
  tanggal.SetFocus;
end;

procedure Tfotambahvoucher.kondisiawal;
begin
  kosongkantext;

  dxMemData1.Close;
  dxMemData1.Open;
end;

procedure Tfotambahvoucher.kosongkantext;
begin
  uraian.Text := '';
  penjelasan.Text := '';
  cxComboBox1.ItemIndex := -1;
  cxComboBox2.ItemIndex := -1;
  cxTextEdit1.Text := '';
  flagpostand := 0;
end;

procedure Tfotambahvoucher.notransKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    uraian.SetFocus;
end;

procedure Tfotambahvoucher.penjelasanKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    cxComboBox1.SetFocus;
end;

procedure Tfotambahvoucher.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  Self.Close;
end;

procedure Tfotambahvoucher.tanggalKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    notrans.SetFocus;
end;

procedure Tfotambahvoucher.tanggalPropertiesChange(Sender: TObject);
begin
  if key=0 then
  begin
    notrans.Text := dm.noautovoucher(tanggal.Date);
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

procedure Tfotambahvoucher.tanggalPropertiesCloseUp(Sender: TObject);
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
end;

procedure Tfotambahvoucher.uraianKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    penjelasan.SetFocus;
end;

procedure Tfotambahvoucher.uraianPropertiesChange(Sender: TObject);
begin
  if uraian.Text <> '' then

  penjelasan.Text := 'PEMBAYARAN '+uraian.Text
  else
    penjelasan.text := '';
end;

end.
