unit utambahvkk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.ExtCtrls, RzPanel, udm,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, cxControls, cxContainer, cxEdit, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCurrencyEdit, RzButton, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxMemo, cxDropDownEdit, cxMaskEdit, cxCalendar,
  cxLabel, cxTextEdit, Vcl.StdCtrls, cxButtons, DBAccess, MyAccess, dxmdaset,
  MemDS, cxGroupBox, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxSkinsDefaultPainters, frxClass, frxDBSet, scDevExStyleAdapter;

type
  Tfotambahvkk = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    TabSheet2: TRzTabSheet;
    RzPanel2: TRzPanel;
    dxMemData1: TdxMemData;
    dxMemData1ket: TStringField;
    dxMemData1jumlah: TCurrencyField;
    MyDataSource1: TMyDataSource;
    cxButton1: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxMemo1: TcxMemo;
    cxLabel3: TcxLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1RecId: TcxGridDBColumn;
    cxGrid1DBTableView1ket: TcxGridDBColumn;
    cxGrid1DBTableView1jumlah: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxLabel7: TcxLabel;
    btnnext: TRzToolButton;
    Qket: TMyQuery;
    Qlistket: TMyQuery;
    D_ket: TMyDataSource;
    D_kistket: TMyDataSource;
    btnsimpan: TRzToolButton;
    btnkembali: TRzToolButton;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    btnadd: TRzToolButton;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxMaskEdit1: TcxMaskEdit;
    cxTextEdit2: TcxTextEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    dxMemData1idcoa: TCurrencyField;
    Qjra: TMyQuery;
    dbjra: TfrxDBDataset;
    replr: TfrxReport;
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure btnaddClick(Sender: TObject);
    procedure cxDBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxCurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnnextClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnkembaliClick(Sender: TObject);
    procedure cxDateEdit1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure btnsimpanClick(Sender: TObject);
    procedure cxMaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    mode,flagkosong2 : byte;
    periodelama : TDate;
    totallama : Currency;
    procedure kondisiawal1;
    procedure kondisiawal2;
    procedure kosongkantext1;
    procedure kosongkantext2;
    procedure cetakvoucher(novkk : string);
    function cekisiankosong : Boolean;
  end;

var
  fotambahvkk: Tfotambahvkk;

implementation

{$R *.dfm}

uses ucaricoa;

procedure Tfotambahvkk.btnaddClick(Sender: TObject);
begin
  if cxMaskEdit1.Enabled=false then
  begin
    if cxCurrencyEdit1.Value>0 then
    begin
      if dxMemData1.locate('idcoa',cxCurrencyEdit2.Value,[loPartialKey]) then
      begin
        MessageDlg('Perkiraan "'+cxMaskEdit1.Text+'" Sudah ada didaftar..!',mtWarning,[mbok],0);
        cxTextEdit2.Text := '';
        cxCurrencyEdit2.Value := 0;
        cxMaskEdit1.Enabled := true;
        cxMaskEdit1.SetFocus;
      end
      else
      begin
        dxMemData1.Append;
        dxMemData1ket.Value := cxTextEdit2.Text;
        dxMemData1idcoa.Value := cxCurrencyEdit2.Value;
        dxMemData1jumlah.Value := cxCurrencyEdit1.Value;
        dxMemData1.Post;
        cxTextEdit2.Text := '';
        cxCurrencyEdit2.Value := 0;
        cxMaskEdit1.Clear;
        cxMaskEdit1.Enabled := true;
        cxMaskEdit1.SetFocus;
        cxCurrencyEdit1.Clear;
      end;
    end
    else
    begin
      MessageDlg('Jumlah Masih Kosong..!',mtWarning,[mbok],0);
    end;
  end
  else
  begin
    MessageDlg('Kode Perkiraan Belum Tervalidasi..!',mtWarning,[mbok],0);
    cxMaskEdit1.Enabled := true;
    cxMaskEdit1.SetFocus;
  end;

end;

procedure Tfotambahvkk.btnkembaliClick(Sender: TObject);
begin
  kondisiawal1;
end;

procedure Tfotambahvkk.btnnextClick(Sender: TObject);
begin

  if dxMemData1.RecordCount > 0 then
  begin
    with dm do
    begin
      if mode=0 then
      begin
        Qcek.Close;
        Qcek.SQL.Clear;
        Qcek.SQL.Add('select * from vkk_platform');
        Qcek.Open;

        if cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0] > Qcek.FieldByName('sisa').AsCurrency then
        begin
          MessageDlg('Pengeluaran Kas Melebih Sisa Platform ..!'+#13+'Harap Mengisi Kembali Platform Kas Kecil Dahulu.!',mtError,[mbok],0);
          Exit;
        end;
      end
      else
      begin
        Qcek.Close;
        Qcek.SQL.Clear;
        Qcek.SQL.Add('select * from vkk_platform');
        Qcek.Open;

        if cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0] > (Qcek.FieldByName('sisa').AsCurrency+totallama) then
        begin
          MessageDlg('Pengeluaran Kas Melebih Sisa Platform ..!'+#13+'Harap Mengisi Kembali Platform Kas Kecil Dahulu.!',mtError,[mbok],0);
          Exit;
        end;
      end;
    end;
    dxMemData1.Last;
    dxMemData1.First;
    cxButton1.Click;
    kondisiawal2;
    flagkosong2 := 1;
  end
  else
  begin
    MessageDlg('Harap Menambahkan Daftar Keterangan Kas Keluar Terlebih Dahulu.!',mtWarning,[mbok],0);
  end;
end;

procedure Tfotambahvkk.btnsimpanClick(Sender: TObject);
var
  i : byte;
begin
  if dm.cekstatusaktifperiodeposting(FormatDateTime('yyyymm',cxDateEdit1.Date))=0 then
  begin
    MessageDlg('Tidak Bisa Koreksi!'+#13+'Periode Posting "'+FormatDateTime('mmmm yyyy',cxDateEdit1.Date)+'" Sudah Terkunci / Belum dibuat!'+#13+'Harap Hubungi Bagian Akuntansi..!',mtWarning,[mbok],0);
    Exit;
  end;

  if cekisiankosong then
  begin
    with dm do
    begin
      if mode=0 then
      begin
        Qcek.Close;
        Qcek.SQL.Clear;
        Qcek.SQL.Add('select * from vkk_platform');
        Qcek.Open;
        if cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0]>Qcek.FieldByName('sisa').AsCurrency then
        begin
          MessageDlg('Pengeluaran Kas Melebih Sisa Platform ..!'+#13+'Harap Mengisi Kembali Platform Kas Kecil Dahulu.!',mtError,[mbok],0);
          Exit;
        end;

        try
          Conn1.StartTransaction;

          dxMemData1.First;
          dxMemData1.DisableControls;
          for I := 1 to dxMemData1.RecordCount do
          begin
            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('insert into vkk_ (notrans,idcoa,jumlah) value ((Select noautovkk(:tgl)),:idcoa,:jumlah)');
            Qex.ParamByName('idcoa').AsCurrency := dxMemData1idcoa.Value;
            Qex.ParamByName('jumlah').AsCurrency := dxMemData1jumlah.Value;
            Qex.ParamByName('tgl').AsDate := cxDateEdit1.Date;
            Qex.Execute;

            dxMemData1.Next;
            Application.ProcessMessages;
          end;
          dxMemData1.EnableControls;

          cxButton1.Click;

          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('insert into vkk (notrans,tanggal,keterangan,total,kas,waktuinput,userinput) value ((Select noautovkk(:tgl)),:tgl,:keterangan,:total,:kas,NOW(),:userinput)');
          Qex.ParamByName('kas').AsString := 'KAS KECIL';
          Qex.ParamByName('tgl').AsDate := cxDateEdit1.Date;
          Qex.ParamByName('keterangan').AsString := cxMemo1.Text;
          Qex.ParamByName('total').value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
          Qex.ParamByName('userinput').AsString :=namauserlogin;
          Qex.Execute;

          Conn1.Commit;

          MessageDlg('Tambah Transaksi Kas Keluar Berhasil!',mtInformation,[mbok],0);

          cetakvoucher(cxTextEdit1.Text);
          ModalResult := mrok;

        except
          on e: Exception do
          begin
            Conn1.Rollback;
            MessageDlg('Terdapat Kesalahan..!'+#13+e.Message,mtError,[mbok],0);
          end;
        end;
      end
      else
      begin
        if FormatDateTime('yyyymm',periodelama)=FormatDateTime('yyyymm',cxDateEdit1.Date) then
        begin
          Qcek.Close;
          Qcek.SQL.Clear;
          Qcek.SQL.Add('select * from vkk_platform');
          Qcek.Open;
          if cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0]>(Qcek.FieldByName('sisa').AsCurrency+totallama) then
          begin
            MessageDlg('Pengeluaran Kas Melebih Sisa Platform ..!'+#13+'Harap Mengisi Kembali Platform Kas Kecil Dahulu.!',mtError,[mbok],0);
            Exit;
          end;
          if MessageDlg('Yakin Koreksi Kas Keluar Dengan Total "'+cxLabel9.Caption+'" ini ?',mtConfirmation,[mbyes,mbno],0)=mryes then
          begin
            try
              Conn1.StartTransaction;
              Qex.Close;
              Qex.SQL.Clear;
              Qex.SQL.Add('delete from vkk_ where notrans=:notrans');
              Qex.ParamByName('notrans').AsString := cxTextEdit1.Text;
              Qex.Execute;
              dxMemData1.First;
              dxMemData1.DisableControls;
              for i := 1 to dxMemData1.RecordCount do
              begin
                Qex.Close;
                Qex.SQL.Clear;
                Qex.SQL.Add('insert into vkk_ (notrans,idcoa,jumlah) value (:notrans,:idcoa,:jumlah)');
                Qex.ParamByName('idcoa').AsCurrency := dxMemData1idcoa.Value;
                Qex.ParamByName('jumlah').AsCurrency := dxMemData1jumlah.Value;
                Qex.ParamByName('notrans').AsString := cxTextEdit1.Text;
                Qex.Execute;

                dxMemData1.Next;
              end;


              Qex.Close;
              Qex.SQL.Clear;
              Qex.SQL.Add('update vkk set tanggal=:tanggal,keterangan=:keterangan,total=:total,kas=:kas,waktuinput=now(),userinput=:userinput where notrans=:notrans');
              Qex.ParamByName('kas').AsString := 'KAS KECIL';
              Qex.ParamByName('tanggal').AsDate := cxDateEdit1.Date;
              Qex.ParamByName('keterangan').AsString := cxMemo1.Text;
              Qex.ParamByName('total').value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
              Qex.ParamByName('userinput').AsString :=namauserlogin;
              Qex.ParamByName('notrans').AsString := cxTextEdit1.Text;
              Qex.Execute;

              dxMemData1.First;
              dxMemData1.EnableControls;

              Conn1.Commit;

              cetakvoucher(cxTextEdit1.Text);

              ModalResult := mrok;

            except
              on e: Exception do
              begin
                Conn1.Rollback;
                MessageDlg('Terdapat Kesalahan..!'+#13+e.Message,mtError,[mbok],0);
                dxMemData1.First;
                dxMemData1.EnableControls;
              end;
            end;
          end;
        end
        else
        begin
          MessageDlg('Tanggal Periode Tidak Boleh Berbeda dengan Bulan Sebelumnya.!',mtWarning,[mbok],0);
        end;
      end;
    end;
  end
  else
  begin
    MessageDlg('Isian "'+namaisian+'" Masih Kosong..!',mtWarning,[mbok],0);
  end;

end;

function Tfotambahvkk.cekisiankosong: Boolean;
begin
  if trim(cxTextEdit1.Text)='' then
  begin
    namaisian := 'No. Transaksi';
    cxTextEdit1.SetFocus;
    Result := false;
    Exit;
  end;
  if trim(cxDateEdit1.Text)='' then
  begin
    namaisian := 'Tanggal';
    cxDateEdit1.SetFocus;
    Result := false;
    Exit;
  end;

  if trim(cxMemo1.Text)='' then
  begin
    namaisian := 'Penjelasan';
    cxMemo1.SetFocus;
    Result := false;
    Exit;
  end;
  result := true;
end;

procedure Tfotambahvkk.cetakvoucher(novkk: string);
begin
  Qjra.Close;
  Qjra.SQL.Clear;
  Qjra.SQL.Add(Qjra.SQLRefresh.Text);
  Qjra.ParamByName('notrans').AsString := novkk;
  Qjra.Open;
  if Qjra.RecordCount > 0 then
  begin
    dm.isidatattd('vc2',userlogin);
    replr.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\vkk.fr3');

    TfrxMemoView(replr.FindObject('header1')).Memo.Text:= headerlap1;
    TfrxMemoView(replr.FindObject('header2')).Memo.Text:= headerlap2;
    TfrxMemoView(replr.FindObject('alamat1')).Memo.Text:= alamat1 + ' ' + alamat2;

    //TfrxMemoView(replr.FindObject('periode')).Memo.Text:= 'Periode '+cxComboBox1.Text;
   // TfrxMemoView(replr.FindObject('footer2')).Memo.Text:= 'JRA '+cxComboBox1.Text;
   // TfrxMemoView(replr.FindObject('tanggalbawah')).Memo.Text:= footerkota+', '+FormatDateTime('dd mmmm yyyy',Qjra.FieldByName('tanggal').AsDateTime);
    replr.ShowReport();
  end
  else
  begin
    MessageDlg('Tidak ada data ..!',mtWarning,[mbok],0);
  end;
end;

procedure Tfotambahvkk.cxButton1Click(Sender: TObject);
var
  periode : tdate;
begin
  if mode=0 then
  begin
    if cxDateEdit1.Text='' then
      periode := date
    else
      periode := cxDateEdit1.Date;

    with dm do
    begin
      Qcek.Close;
      Qcek.SQL.Clear;
      Qcek.SQL.Add('select noautovkk(:tgl)');
      Qcek.ParamByName('tgl').AsDate := periode;
      Qcek.Open;
      cxTextEdit1.Text := Qcek.Fields[0].AsString;
    end;
  end

end;

procedure Tfotambahvkk.cxCurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=vk_return then
  btnadd.Click;
  if key=VK_ESCAPE then
  begin
    cxMaskEdit1.Enabled := true;
    cxMaskEdit1.SetFocus;
  end;
end;

procedure Tfotambahvkk.cxDateEdit1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  cxButton1.Click;
end;

procedure Tfotambahvkk.cxDBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=vk_return then
  cxCurrencyEdit1.SetFocus;
end;

procedure Tfotambahvkk.cxMaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_RETURN then
  begin
    with dm do
    begin
      Qcek.Close;
      Qcek.SQL.Clear;
      Qcek.SQL.Add('select * from coa where kodeakun=:kodeakun');
      Qcek.ParamByName('kodeakun').AsString := cxMaskEdit1.Text;
      Qcek.Open;
      if Qcek.RecordCount > 0 then
      begin
        cxTextEdit2.Text := Qcek.fieldbyname('namaakun').AsString;
        cxCurrencyEdit2.Value := Qcek.fieldbyname('idcoa').AsCurrency;
        cxMaskEdit1.Enabled := false;
        cxCurrencyEdit1.SetFocus;
      end
      else
      begin
        focaricoa.mode := 1;
        if focaricoa.ShowModal = mrok then
        begin
          cxTextEdit2.Text := focaricoa.Qcoa.fieldbyname('namaakun').AsString;
          cxCurrencyEdit2.Value := focaricoa.Qcoa.fieldbyname('idcoa').AsCurrency;
          cxMaskEdit1.Text :=  focaricoa.Qcoa.fieldbyname('kodeakun').AsString;
          cxMaskEdit1.Enabled := false;
          cxCurrencyEdit1.SetFocus;
        end
        else
        begin
          cxTextEdit2.Text := '';
          cxCurrencyEdit2.Value := 0;
          cxMaskEdit1.Enabled := true;
          cxMaskEdit1.SetFocus;
        end;
      end;
    end;
  end;
end;

procedure Tfotambahvkk.FormShow(Sender: TObject);
begin

  if mode=0 then
  begin
    flagkosong2 := 0;
    kondisiawal1;
  end;
  cxMaskEdit1.Clear;
  cxMaskEdit1.Enabled := true;
  cxMaskEdit1.SetFocus;
end;

procedure Tfotambahvkk.kondisiawal1;
begin
  TabSheet1.TabVisible := true;
  TabSheet2.TabVisible := false;
  RzPageControl1.ActivePage := TabSheet1;
  Self.Height := 453;
  self.Width := 316;
  kosongkantext1;
end;

procedure Tfotambahvkk.kondisiawal2;
begin
  cxLabel9.Caption := cxGrid1DBTableView1.DataController.Summary.FooterSummaryTexts[0];
  TabSheet1.TabVisible := false;
  TabSheet2.TabVisible := true;
  RzPageControl1.ActivePage := TabSheet2;
  Self.Height := 294;
  self.Width := 316;
  kosongkantext2;
end;

procedure Tfotambahvkk.kosongkantext1;
begin
  if flagkosong2=0 then
  begin
    dxMemData1.Close;
    dxMemData1.Open;
    Qket.Close;
    Qlistket.Close;
    Qket.Open;
    Qlistket.Open;
    cxCurrencyEdit1.Clear;
  end;
end;

procedure Tfotambahvkk.kosongkantext2;
begin
  if mode=0 then
  begin
    if flagkosong2=0 then
    begin
      cxDateEdit1.Clear;
      cxMemo1.Clear;
    end;
  end;
end;

procedure Tfotambahvkk.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  Self.Close;
end;

end.
