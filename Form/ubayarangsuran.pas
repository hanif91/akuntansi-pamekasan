unit ubayarangsuran;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, RzButton, cxTextEdit, cxLabel, Vcl.ExtCtrls, RzPanel,
  RzTabs, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, MemDS, DBAccess, MyAccess, dxmdaset, System.Actions, Vcl.ActnList,
  cxCurrencyEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  ucaripinjaman;

type
  Tfobayarangsuran = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzToolButton1: TRzToolButton;
    cxLabel1: TcxLabel;
    nopinjaman: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    RzPageControl2: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    RzPanel3: TRzPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    RzPageControl3: TRzPageControl;
    RzTabSheet2: TRzTabSheet;
    RzPanel4: TRzPanel;
    RzPanel5: TRzPanel;
    RzToolButton2: TRzToolButton;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    RzToolButton3: TRzToolButton;
    tagihan: TdxMemData;
    Dtagihan: TMyDataSource;
    RzPanel6: TRzPanel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    lblnopinjaman: TcxLabel;
    lbltglpinjam: TcxLabel;
    lblnamaanggota: TcxLabel;
    lblsales: TcxLabel;
    lblplatform: TcxLabel;
    lbllamaangs: TcxLabel;
    lblbunga: TcxLabel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1noangsuran: TcxGridDBColumn;
    cxGrid2DBTableView1tgljatuhtempo: TcxGridDBColumn;
    cxGrid2DBTableView1pokok: TcxGridDBColumn;
    cxGrid2DBTableView1bunga: TcxGridDBColumn;
    cxGrid2DBTableView1denda: TcxGridDBColumn;
    cxGrid2DBTableView1jumlah: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    Qcekt: TMyQuery;
    bill: TdxMemData;
    Dbill: TMyDataSource;
    ActionList1: TActionList;
    enter: TAction;
    esc: TAction;
    billnopinjaman: TStringField;
    billanggota: TStringField;
    billangsuranke: TSmallintField;
    billpokok: TCurrencyField;
    billbunga: TCurrencyField;
    billdenda: TCurrencyField;
    billjumlah: TCurrencyField;
    cxGrid1DBTableView1RecId: TcxGridDBColumn;
    cxGrid1DBTableView1nopinjaman: TcxGridDBColumn;
    cxGrid1DBTableView1anggota: TcxGridDBColumn;
    cxGrid1DBTableView1angsuranke: TcxGridDBColumn;
    cxGrid1DBTableView1pokok: TcxGridDBColumn;
    cxGrid1DBTableView1bunga: TcxGridDBColumn;
    cxGrid1DBTableView1denda: TcxGridDBColumn;
    cxGrid1DBTableView1jumlah: TcxGridDBColumn;
    cxGrid1DBTableView1tgljatuhtempo: TcxGridDBColumn;
    billperiode: TStringField;
    billkode: TStringField;
    f5: TAction;
    billtgljatuhtempo: TDateField;
    RzPanel7: TRzPanel;
    RzToolButton4: TRzToolButton;
    cxLabel19: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    procedure cxDateEdit1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure cxDateEdit1PropertiesChange(Sender: TObject);
    procedure enterExecute(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure f5Execute(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid2DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure RzToolButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure firstrecordselected(grid : TcxGrid; dbview : TcxGridDBTableView);
    procedure kosongkantagihan;
  end;

var
  fobayarangsuran: Tfobayarangsuran;

implementation
uses dateutils;

{$R *.dfm}

procedure Tfobayarangsuran.cxDateEdit1PropertiesChange(Sender: TObject);
begin
  kosongkantagihan;
end;

procedure Tfobayarangsuran.cxDateEdit1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  var
    tglbatas : tdate;
begin
  dm.cekpengaturan;
  tglbatas := IncDay(tglserver,(mundurtglbayar*-1));


  if cxDateEdit1.Date > tglserver then
  begin
   // MessageDlg('Tanggal bayar tidak boleh lebih besar dari tanggal server "'+FormatDateTime('dd-mm-yyyy',tglserver)+'"',mtWarning,[mbok],0);
  //  cxDateEdit1.Date := tglserver;
   // Exit;

  end
  else
  begin
    if tglbatas > cxDateEdit1.Date then
    begin
      MessageDlg('Tanggal bayar tidak boleh lebih kecil dari "'+FormatDateTime('dd-mm-yyyy',tglbatas)+'"',mtWarning,[mbok],0);
      cxDateEdit1.Date := tglserver;
      cxDateEdit1.SetFocus;
      Exit;
    end;
  end;
end;

procedure Tfobayarangsuran.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  RzToolButton3.Click;
end;

procedure Tfobayarangsuran.cxGrid2DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  RzToolButton2.Click;
end;

procedure Tfobayarangsuran.enterExecute(Sender: TObject);
begin
  if nopinjaman.Focused then
  begin
    RzToolButton1.Click;
  end
  else if cxGrid2DBTableView1.Focused then
  begin
    RzToolButton2.Click;
  end
  else if cxGrid1DBTableView1.Focused then
  begin
    RzToolButton4.Click;
  end
end;

procedure Tfobayarangsuran.f5Execute(Sender: TObject);
begin
  kosongkantagihan;
  bill.Close;
  bill.Open;
  DM.Qkas_dbl.Close;
  DM.Qkas_dbl.Open;
  DM.Qlist_kas.Close;
  DM.Qlist_kas.Open;
  cxDateEdit1.Date := tglserver;
  nopinjaman.Clear;
  nopinjaman.SetFocus;
end;

procedure Tfobayarangsuran.firstrecordselected(grid: TcxGrid;
  dbview: TcxGridDBTableView);
begin
  grid.SetFocus;
  dbview.DataController.FocusedRowIndex := 0;
  dbview.Controller.TopRowIndex := cxGrid2DBTableView1.DataController.FocusedRowIndex;
end;

procedure Tfobayarangsuran.FormShow(Sender: TObject);
begin
  f5Execute(nil);
end;

procedure Tfobayarangsuran.kosongkantagihan;
begin
  lblnopinjaman.Caption := '';
  lbltglpinjam.Caption := '';
  lblnamaanggota.Caption := '';
  lblsales.Caption := '';
  lblbunga.Caption := '';
  lbllamaangs.Caption := '';
  lblplatform.Caption := '';
  tagihan.Close;
  tagihan.Open;
end;

procedure Tfobayarangsuran.RzToolButton1Click(Sender: TObject);
var
  i : integer;
begin
  if Trim(nopinjaman.Text)<>'' then
  begin

    Qcekt.Close;
    qcekt.SQL.Clear;
    qcekt.SQL.Add('CALL cektagihan(:nopinjaman,:tglbayar)');
    Qcekt.ParamByName('nopinjaman').AsString := nopinjaman.Text;
    Qcekt.ParamByName('tglbayar').AsDate := cxDateEdit1.Date;
    Qcekt.Open;
    if Qcekt.RecordCount > 0 then
    begin
      if qcekt.Fields[0].AsString='-' then
      begin
        MessageDlg('Tidak ada tagihan tersedia.!',mtConfirmation,[mbOK],0);
        kosongkantagihan;
        Exit;
      end
      else
      begin
        lblnopinjaman.Caption := Qcekt.FieldByName('nopinjaman').AsString;
        lbltglpinjam.Caption := Qcekt.FieldByName('tglpinjam').AsString;
        lblnamaanggota.Caption := qcekt.FieldByName('namaanggota').AsString;
        lblsales.Caption := Qcekt.FieldByName('namakolektif').AsString;
        lblbunga.Caption := Qcekt.FieldByName('persentase').AsString+' %';
        lbllamaangs.Caption := Qcekt.FieldByName('lamaangsuran').AsString+' X';
        lblplatform.Caption := FormatCurr('#,##0.##',Qcekt.FieldByName('platform').AsCurrency);
        tagihan.Close;
        tagihan.Open;
        tagihan.Edit;
        tagihan.ClearFields;
        tagihan.Post;

        tagihan.DisableControls;
        tagihan.CreateFieldsFromDataSet(Qcekt);
        tagihan.LoadFromDataSet(Qcekt);
    //    tagihan.Post;
        tagihan.First;
        for I := 1 to tagihan.RecordCount do
        begin
          if bill.Locate('kode',tagihan.FieldByName('nopinjaman').AsString+tagihan.FieldByName('periode').AsString,[loPartialKey]) then
          begin
            tagihan.Delete;
          end
          else
          begin
            tagihan.Next;
          end;
        end;
        tagihan.First;
        tagihan.EnableControls;


        firstrecordselected(cxGrid2,cxGrid2DBTableView1);

      end;
    end
    else
    begin

     MessageDlg('Tidak ada tagihan tersedia saat ini .!',mtConfirmation,[mbOK],0);
     kosongkantagihan;
     Exit;
    end;
  end
  else
  begin
     if focaripinjaman.ShowModal=mrok then
      begin
        nopinjaman.Text := focaripinjaman.Qtagnopinjaman.Text;
        RzToolButton1.Click;
      end

  end;
end;

procedure Tfobayarangsuran.RzToolButton2Click(Sender: TObject);
var
  rowindek : integer;
begin
  if tagihan.Active then
  begin
    if tagihan.RecordCount > 0 then
    begin
      rowindek := cxGrid2DBTableView1.DataController.FocusedRowIndex;
      if rowindek> 0 then
      begin
        MessageDlg('Maaf Anda Harus Memilih Membayaran No Angsuran Yang Terkecil Terlebih Dahulu..!',mtWarning,[mbok],0);
        firstrecordselected(cxGrid2,cxGrid2DBTableView1);
      end
      else
      begin
        if bill.Locate('kode',tagihan.FieldByName('nopinjaman').AsString+tagihan.FieldByName('periode').AsString,[loPartialKey])=false then
        begin
          bill.Append;
          billanggota.Value := tagihan.FieldByName('namaanggota').AsString;
          billangsuranke.Value := tagihan.FieldByName('noangsuran').AsInteger;
          billbunga.Value := tagihan.FieldByName('bunga').AsCurrency;
          billdenda.Value := tagihan.FieldByName('denda').AsCurrency;
          billjumlah.Value := tagihan.FieldByName('jumlah').AsCurrency;
          billnopinjaman.Value := tagihan.FieldByName('nopinjaman').AsString;
          billperiode.Value := tagihan.FieldByName('periode').AsString;
          billpokok.Value := tagihan.FieldByName('pokok').AsCurrency;
          billtgljatuhtempo.Value := tagihan.FieldByName('tgljatuhtempo').AsDateTime;
          billkode.Value := tagihan.FieldByName('nopinjaman').AsString+tagihan.FieldByName('periode').AsString;
          bill.Post;

          tagihan.Delete;
        end
        else
        begin
          tagihan.Delete;
        end;
        tagihan.First;
        if tagihan.RecordCount=0 then
        begin
          firstrecordselected(cxGrid1,cxGrid1DBTableView1);
        end
        else
        begin
          firstrecordselected(cxGrid2,cxGrid2DBTableView1);
        end;
      end;
    end;
  end;
end;

procedure Tfobayarangsuran.RzToolButton3Click(Sender: TObject);
var
  i : integer;
  nopinj : string;
begin
  if bill.RecordCount > 0 then
  begin
    nopinj := billnopinjaman.Text;
    bill.First;
    bill.DisableControls;
    for i := 1 to bill.RecordCount do
    begin
      if billnopinjaman.Text=nopinj then
      begin
        bill.Delete;
      end
      else
      begin
        bill.Next;
      end;
    end;
    bill.EnableControls;
  end;
end;

procedure Tfobayarangsuran.RzToolButton4Click(Sender: TObject);
var
  i : integer;
  flagcek : byte;
  nopinjpsan,periodepsn : string;
begin
  if bill.RecordCount > 0 then
  begin
    if MessageDlg('Proses Pembayaran Angsuran'+#13+
            'No Pinjaman : '+lblnopinjaman.Caption+#13+
            'Target Kas : '+VarToStr(cxDBLookupComboBox1.EditValue)+#13+
            'Total Pembayaran : '+cxGrid1DBTableView1.DataController.Summary.FooterSummaryTexts[0]+#13+#13+
            'Yakin Melakukan Pembayaran ini ?',mtConfirmation,[mbyes,mbNo],0)=mryes then
    begin
      with dm do
      begin
        bill.First;
        bill.DisableControls;
        flagcek := 0;
        nopinjpsan := '';
        periodepsn := '';
        for i := 1 to bill.RecordCount do
        begin
          Qcek.Close;
          Qcek.SQL.Clear;
          Qcek.SQL.Add('select * from d_angsuran where flaglunas="0" AND nopinjaman=:nopinjaman and periode=:periode');
          Qcek.ParamByName('nopinjaman').AsString := billnopinjaman.Text;
          Qcek.ParamByName('periode').AsString := billperiode.Text;
          Qcek.Open;
          if Qcek.RecordCount=0 then
          begin
            flagcek := 1;
            nopinjpsan := billnopinjaman.Text;
            periodepsn := billperiode.Text;
            Break;
          end
          else
          begin
            bill.Next;
          end;
        end;
        bill.First;
        bill.EnableControls;
        if flagcek=1 then
        begin
          MessageDlg('Pelunasan Gagal ..!'+#13+'No. Pinjaman : '+nopinjpsan+#13+'Periode : '+periodepsn+#13+'Sudah Terlunasi Di database!',mtWarning,[mbOK],0);
          Exit;
        end
        else
        begin
          bill.First;
          bill.DisableControls;
          try
            Conn1.StartTransaction;
            for i  := 1 to bill.RecordCount do
            begin
              Qex.Close;
              Qex.SQL.Clear;
              Qex.SQL.Add('Update d_angsuran set denda=:denda,jumlah=:jumlah,flaglunas="1",tglbayar=:tglbayar,waktuupdate=now(),nopelunasan=noautoangsur(:tglbayar,"A"),kasdebet=:kasdebet where nopinjaman=:nopinjaman and periode=:periode');
              Qex.ParamByName('denda').AsCurrency := billdenda.Value;
              Qex.ParamByName('jumlah').AsCurrency := billjumlah.Value;
              Qex.ParamByName('tglbayar').AsDate := cxDateEdit1.Date;
              Qex.ParamByName('nopinjaman').AsString := billnopinjaman.Text;
              Qex.ParamByName('periode').AsString := billperiode.Text;
              Qex.ParamByName('kasdebet').AsString := cxDBLookupComboBox1.EditingValue;
              Qex.Execute;

              bill.Next;
              Application.ProcessMessages;
            end;
            Conn1.Commit;
          except
            on e: Exception do
            begin
              Conn1.Rollback;
              MessageDlg('Terdapat Kesalahan..!'+#13+e.Message,mtError,[mbok],0);
            end;
          end;
          bill.First;
          bill.EnableControls;

          MessageDlg('Proses Pembayaran Berhasil Disimpan..!',mtInformation,[mbok],0);
          f5Execute(nil);
        end;
      end;

    end;
  end
  else
  begin
    MessageDlg('Tidak Ada Data Billing Pembayaran..!',mtWarning,[mbok],0);
  end;
end;

end.
