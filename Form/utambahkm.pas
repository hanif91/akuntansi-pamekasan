unit utambahkm;

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
  dxSkinsDefaultPainters, scDevExStyleAdapter;

type
  Tfotambahkasmasuk = class(TForm)
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
    cxComboBox1: TcxComboBox;
    cxLabel6: TcxLabel;
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
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
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
  private
    { Private declarations }
  public
    { Public declarations }
    mode,flagkosong2 : byte;
    periodelama : TDate;
    kaslama : string;
    procedure kondisiawal1;
    procedure kondisiawal2;
    procedure kosongkantext1;
    procedure kosongkantext2;
    function cekisiankosong : Boolean;
  end;

var
  fotambahkasmasuk: Tfotambahkasmasuk;

implementation

{$R *.dfm}

procedure Tfotambahkasmasuk.btnaddClick(Sender: TObject);
begin
  if VarToStr(cxDBLookupComboBox1.EditText)<>'' then
  begin
    if cxCurrencyEdit1.Value>0 then
    begin
      if dxMemData1.locate('ket',VarToStr(cxDBLookupComboBox1.EditValue),[loPartialKey]) then
      begin
        MessageDlg('Keterangan "'+VarToStr(cxDBLookupComboBox1.EditValue)+'" Sudah ada didaftar..!',mtWarning,[mbok],0);
        cxDBLookupComboBox1.SetFocus;
      end
      else
      begin
        dxMemData1.Append;
        dxMemData1ket.Value := VarToStr(cxDBLookupComboBox1.EditValue);
        dxMemData1jumlah.Value := cxCurrencyEdit1.Value;
        dxMemData1.Post;
        cxDBLookupComboBox1.SetFocus;
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
      MessageDlg('Keterangan Belum Dipilih..!',mtWarning,[mbok],0);
      cxDBLookupComboBox1.SetFocus;
  end;


end;

procedure Tfotambahkasmasuk.btnkembaliClick(Sender: TObject);
begin
  kondisiawal1;
end;

procedure Tfotambahkasmasuk.btnnextClick(Sender: TObject);
begin
  if dxMemData1.RecordCount > 0 then
  begin
    dxMemData1.Last;
    dxMemData1.First;
    cxButton1.Click;
    kondisiawal2;
    flagkosong2 := 1;
  end
  else
  begin
    MessageDlg('Harap Menambahkan Daftar Keterangan Kas Masuk Terlebih Dahulu.!',mtWarning,[mbok],0);
  end;
end;

procedure Tfotambahkasmasuk.btnsimpanClick(Sender: TObject);
var
  i : byte;
begin
  if cekisiankosong then
  begin
    if dm.cekstatusaktifperiodeposting(FormatDateTime('yyyymm',cxDateEdit1.Date))=0 then
    begin
      MessageDlg('Periode "'+FormatDateTime('yyyymm',cxDateEdit1.Date)+'" sudah dikunci / Belum dibuat !'+#13+'Harap Hubungi Bagian Akuntansi..!',mtWarning,[mbok],0);
      Exit;
    end;

    with dm do
    begin
      if mode=0 then
      begin
        try
          Conn1.StartTransaction;

          dxMemData1.First;
          dxMemData1.DisableControls;
          for I := 1 to dxMemData1.RecordCount do
          begin
            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('insert into d_kasmasuk (notrans,namaketkas,jumlah) value ((Select noautokm(:tgl)),:namaketkas,:jumlah)');
            Qex.ParamByName('namaketkas').AsString := dxMemData1ket.Text;
            Qex.ParamByName('jumlah').AsCurrency := dxMemData1jumlah.Value;
            Qex.ParamByName('tgl').AsDate := cxDateEdit1.Date;
            Qex.Execute;

            dxMemData1.Next;
            Application.ProcessMessages;
          end;
          dxMemData1.EnableControls;

          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('insert into m_kasmasuk (notrans,tanggal,keterangan,total,kas,waktuinput,userinput) value ((Select noautokm(:tgl)),:tgl,:keterangan,:total,:kas,NOW(),:userinput)');
          Qex.ParamByName('kas').AsString := cxComboBox1.Text;
          Qex.ParamByName('tgl').AsDate := cxDateEdit1.Date;
          Qex.ParamByName('keterangan').AsString := cxMemo1.Text;
          Qex.ParamByName('total').value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
          Qex.ParamByName('userinput').AsString :=namauserlogin;
          Qex.Execute;

          Conn1.Commit;

          MessageDlg('Tambah Transaksi Kas Masuk Berhasil!',mtInformation,[mbok],0);
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
          if MessageDlg('Yakin Koreksi Kas Masuk Dengan Total "'+cxLabel9.Caption+'" ini ?',mtConfirmation,[mbyes,mbno],0)=mryes then
          begin
            try
              Conn1.StartTransaction;
              Qex.Close;
              Qex.SQL.Clear;
              Qex.SQL.Add('delete from d_kasmasuk where notrans=:notrans');
              Qex.ParamByName('notrans').AsString := cxTextEdit1.Text;
              Qex.Execute;

              if kaslama='KAS TUNAI' then
              begin
                qex.Close;
                Qex.SQL.Clear;
                Qex.SQL.Add('DELETE FROM setorkas WHERE tanggal=:tanggal;');
                Qex.ParamByName('tanggal').AsDate := periodelama;

                Qex.Execute;
              end;

              dxMemData1.First;
              dxMemData1.DisableControls;
              for i := 1 to dxMemData1.RecordCount do
              begin
                Qex.Close;
                Qex.SQL.Clear;
                Qex.SQL.Add('insert into d_kasmasuk (notrans,namaketkas,jumlah) value (:notrans,:namaketkas,:jumlah)');
                Qex.ParamByName('namaketkas').AsString := dxMemData1ket.Text;
                Qex.ParamByName('jumlah').AsCurrency := dxMemData1jumlah.Value;
                Qex.ParamByName('notrans').AsString := cxTextEdit1.Text;
                Qex.Execute;

                dxMemData1.Next;
              end;


              Qex.Close;
              Qex.SQL.Clear;
              Qex.SQL.Add('update m_kasmasuk set tanggal=:tanggal,keterangan=:keterangan,total=:total,kas=:kas,waktuinput=now(),userinput=:userinput where notrans=:notrans');
              Qex.ParamByName('kas').AsString := cxComboBox1.Text;
              Qex.ParamByName('tanggal').AsDate := cxDateEdit1.Date;
              Qex.ParamByName('keterangan').AsString := cxMemo1.Text;
              Qex.ParamByName('total').value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
              Qex.ParamByName('userinput').AsString :=namauserlogin;
              Qex.ParamByName('notrans').AsString := cxTextEdit1.Text;
              Qex.Execute;

              dxMemData1.First;
              dxMemData1.EnableControls;

              Conn1.Commit;

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

function Tfotambahkasmasuk.cekisiankosong: Boolean;
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

  if trim(cxComboBox1.Text)='' then
  begin
    namaisian := 'Jenis Kas';
    cxComboBox1.SetFocus;
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

procedure Tfotambahkasmasuk.cxButton1Click(Sender: TObject);
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
      Qcek.SQL.Add('select noautokm(:tgl)');
      Qcek.ParamByName('tgl').AsDate := periode;
      Qcek.Open;
      cxTextEdit1.Text := Qcek.Fields[0].AsString;
    end;
  end

end;

procedure Tfotambahkasmasuk.cxCurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=vk_return then
  btnadd.Click;
end;

procedure Tfotambahkasmasuk.cxDateEdit1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  cxButton1.Click;
end;

procedure Tfotambahkasmasuk.cxDBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=vk_return then
  cxCurrencyEdit1.SetFocus;
end;

procedure Tfotambahkasmasuk.FormShow(Sender: TObject);
begin

  if mode=0 then
  begin
    dm.isicombo1('akunkas',cxComboBox1);
    flagkosong2 := 0;
    kondisiawal1;

  end;
  cxDBLookupComboBox1.SetFocus;
end;

procedure Tfotambahkasmasuk.kondisiawal1;
begin
  TabSheet1.TabVisible := true;
  TabSheet2.TabVisible := false;
  RzPageControl1.ActivePage := TabSheet1;
  Self.Height := 453;
  self.Width := 286;
  kosongkantext1;
end;

procedure Tfotambahkasmasuk.kondisiawal2;
begin
  cxLabel9.Caption := cxGrid1DBTableView1.DataController.Summary.FooterSummaryTexts[0];
  TabSheet1.TabVisible := false;
  TabSheet2.TabVisible := true;
  RzPageControl1.ActivePage := TabSheet2;
  Self.Height := 334;
  self.Width := 322;
  kosongkantext2;
end;

procedure Tfotambahkasmasuk.kosongkantext1;
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

procedure Tfotambahkasmasuk.kosongkantext2;
begin
  if mode=0 then
  begin
    if flagkosong2=0 then
    begin
      cxDateEdit1.Clear;
      cxComboBox1.ItemIndex := -1;
      cxMemo1.Clear;
    end;
  end;
end;

procedure Tfotambahkasmasuk.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  Self.Close;
end;

end.
