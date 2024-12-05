unit utambahjpk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.ExtCtrls, RzPanel, udm,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, RzButton, cxProgressBar,
  Vcl.StdCtrls, RzLabel, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxMemo,
  Data.DB, MemDS, DBAccess, MyAccess;

type
  Tfotambahjpk = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    cxComboBox2: TcxComboBox;
    cxComboBox1: TcxComboBox;
    CxLabel1: TcxLabel;
    RzLabel1: TRzLabel;
    RzPanel2: TRzPanel;
    cxMemo1: TcxMemo;
    cxProgressBar1: TcxProgressBar;
    RzPanel3: TRzPanel;
    RzToolButton2: TRzToolButton;
    Qcekkm: TMyQuery;
    Qceksetor: TMyQuery;
    Qcekbyadm: TMyQuery;
    Qcekang: TMyQuery;
    Qdetail: TMyQuery;
    Qcekkt: TMyQuery;
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure RzToolButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure kondisi1;
    procedure kondisi2;
  end;

var
  fotambahjpk: Tfotambahjpk;

implementation

{$R *.dfm}

procedure Tfotambahjpk.cxComboBox1PropertiesChange(Sender: TObject);
begin
  cxComboBox2.ItemIndex := cxComboBox1.ItemIndex;
  kondisi1;
end;

procedure Tfotambahjpk.FormShow(Sender: TObject);
begin
  kondisi1;
  dm.isicombo2('periodeposting',cxComboBox1,cxComboBox2);
end;
                                                    
procedure Tfotambahjpk.kondisi1;
begin
  RzPanel2.Visible := false;
  RzPanel3.Visible := true;
  Self.Height := 226;
  cxMemo1.Clear;
end;

procedure Tfotambahjpk.kondisi2;
begin
  RzPanel2.Visible := true;
  RzPanel3.Visible := false;
  Self.Height := 377;
  cxMemo1.Text := 'Proses Pembuatan Jurnal : ';
end;

procedure Tfotambahjpk.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  self.Close;
end;

procedure Tfotambahjpk.RzToolButton2Click(Sender: TObject);
var
  i,j,idju : integer;
  periode : string;
begin
  if cxComboBox1.Text = '' then
  begin
    MessageDlg('Periode Belum Dipilih..!',mtConfirmation,[mbok],0);
    cxComboBox1.SetFocus;
    exit;
  end;
  with dm do
  begin
    try
      if dm.cekstatusaktifperiodeposting(cxComboBox2.Text)=0 then
      begin
        MessageDlg('Periode Posting "'+UpperCase(cxComboBox1.Text)+'" Sudah Terkunci ..!',mtWarning,[mbok],0);
        cxComboBox1.Text;
        cxComboBox1.SetFocus;
        Exit;
      end;

      Qcek.Close;
      Qcek.SQL.Clear;
      Qcek.SQL.Add('Select * from statusposting');
      Qcek.Open;
      if Qcek.FieldByName('postingjpk').AsInteger=1 then
      begin
        MessageDlg('Proses Posting Sedang Dilakukan Pada Sesi Yang Lain,'+#13+'Harap Menunggu Sesi Lain Selesai Melakukan Posting.!',mtWarning,[mbok],0);
        Exit;
      end;


      kondisi2;
      periode := cxComboBox2.Text;

      Qcekkm.Close;
      Qcekkm.SQL.Clear;
      Qcekkm.SQL.Add('CALL cekkasmasuk(:periode)');
      Qcekkm.ParamByName('periode').AsString := periode;
      Qcekkm.Open;

      Qceksetor.Close;
      Qceksetor.SQL.Clear;
      Qceksetor.SQL.Add('CALL ceksetorsimpanan(:periode)');
      Qceksetor.ParamByName('periode').AsString := periode;
      Qceksetor.Open;
      
      Qcekbyadm.Close;
      Qcekbyadm.SQL.Clear;
      Qcekbyadm.SQL.Add('CALL cekbyadminpinjaman(:periode)');
      Qcekbyadm.ParamByName('periode').AsString := periode;
      Qcekbyadm.Open;

      Qcekkt.Close;
      Qcekkt.SQL.Clear;
      Qcekkt.SQL.Add('CALL cekkastransfer(:periode)');
      Qcekkt.ParamByName('periode').AsString := periode;
      Qcekkt.Open;

      Qcekang.Close;
      Qcekang.SQL.Clear;
      Qcekang.SQL.Add('CALL cekbayarangsuran(:periode)');
      Qcekang.ParamByName('periode').AsString := periode;
      Qcekang.Open;      

      Conn1.StartTransaction;    
        
      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('UPDATE statusposting set postingjpk="1";');
      Qex.SQL.Add('TRUNCATE dumpjpk;');
      Qex.SQL.Add('TRUNCATE dumpjpk_;');
      Qex.Execute;

      Conn1.Commit;
      
      
      cxMemo1.Lines.Add('   -> Proses Jurnal Transaksi Kas Masuk..');
      cxProgressBar1.Position := 0;
      cxProgressBar1.Properties.Max := Qcekkm.RecordCount;
      for I := 1 to Qcekkm.RecordCount do
      begin
        Qcek.Close;
        Qcek.SQL.Clear;
        Qcek.SQL.Add('SELECT a.*,b.`idcoa` FROM d_kasmasuk a LEFT JOIN ketkas b ON a.namaketkas=b.namaketkas where a.notrans=:notrans');
        Qcek.ParamByName('notrans').AsString :=Qcekkm.FieldByName('notrans').AsString;
        Qcek.Open;
        if qcek.RecordCount > 0 then
        begin
          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('Insert into dumpjpk (notrans,noref,penjelasan,jumlah,tanggal,tipejurnal) value (:notrans,:noref,:penjelasan,:jumlah,:tanggal,:tipejurnal)');
          Qex.ParamByName('notrans').AsString := 'KM'+IntToStr(i);
          Qex.ParamByName('noref').AsString := Qcekkm.FieldByName('notrans').AsString;
          Qex.ParamByName('penjelasan').AsString := Qcekkm.FieldByName('keterangan').AsString;
          Qex.ParamByName('jumlah').AsCurrency := Qcekkm.FieldByName('total').AsCurrency;
          Qex.ParamByName('tanggal').AsDate := Qcekkm.FieldByName('tanggal').AsDateTime;
          Qex.ParamByName('tipejurnal').AsString := 'JURNAL PENERIMAAN KAS';
          Qex.Execute;

          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('Insert into dumpjpk_ (idcoa,notrans,tanggal,jenis,debet,kredit) value (:idcoa,:notrans,:tanggal,:jenis,:debet,:kredit)');
          Qex.ParamByName('idcoa').AsInteger := Qcekkm.FieldByName('idcoa').AsInteger;
          Qex.ParamByName('notrans').AsString := 'KM'+IntToStr(i);
          Qex.ParamByName('tanggal').AsDate := Qcekkm.FieldByName('tanggal').AsDateTime;
          Qex.ParamByName('jenis').AsString := '';
          Qex.ParamByName('debet').AsCurrency := Qcekkm.FieldByName('total').AsCurrency;
          Qex.ParamByName('kredit').AsCurrency := 0;
          Qex.Execute;        
          for j := 1 to Qcek.RecordCount do
          begin
            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('Insert into dumpjpk_ (idcoa,notrans,tanggal,jenis,debet,kredit) value (:idcoa,:notrans,:tanggal,:jenis,:debet,:kredit)');
            Qex.ParamByName('idcoa').AsInteger := Qcek.FieldByName('idcoa').AsInteger;
            Qex.ParamByName('notrans').AsString := 'KM'+IntToStr(i);
            Qex.ParamByName('tanggal').AsDate := Qcekkm.FieldByName('tanggal').AsDateTime;
            Qex.ParamByName('jenis').AsString := '';
            Qex.ParamByName('debet').AsCurrency := 0;
            Qex.ParamByName('kredit').AsCurrency := Qcek.FieldByName('jumlah').AsCurrency;
            Qex.Execute;

            Qcek.Next;
            Application.ProcessMessages;
          end;
        end;

        Qcekkm.Next;
        cxProgressBar1.Position := cxProgressBar1.Position+1;
        Application.ProcessMessages;
      end;


      cxMemo1.Lines.Add('   -> Proses Jurnal Transaksi Setor Simpanan..');
      cxProgressBar1.Position := 0;
      cxProgressBar1.Properties.Max := Qceksetor.RecordCount;
      for I := 1 to Qceksetor.RecordCount do
      begin
        Qcek.Close;
        Qcek.SQL.Clear;
        Qcek.SQL.Add('SELECT a.*,b.`idcoa` FROM d_simp_anggota a LEFT JOIN jenis_simpanan b ON a.idsimpanan=b.idsimpanan WHERE a.notrans=:notrans');
        Qcek.ParamByName('notrans').AsString := Qceksetor.FieldByName('notrans').AsString;
        Qcek.Open;
        if qcek.RecordCount > 0 then
        begin
          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('Insert into dumpjpk (notrans,noref,penjelasan,jumlah,tanggal,tipejurnal) value (:notrans,:noref,:penjelasan,:jumlah,:tanggal,:tipejurnal)');
          Qex.ParamByName('notrans').AsString := 'SS'+IntToStr(i);
          Qex.ParamByName('noref').AsString := Qceksetor.FieldByName('notrans').AsString;
          Qex.ParamByName('penjelasan').AsString := Qceksetor.FieldByName('keterangan').AsString;
          Qex.ParamByName('jumlah').AsCurrency := Qceksetor.FieldByName('total').AsCurrency;
          Qex.ParamByName('tanggal').AsDate := Qceksetor.FieldByName('tanggal').AsDateTime;
          Qex.ParamByName('tipejurnal').AsString := 'JURNAL PENERIMAAN KAS';
          Qex.Execute;

          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('Insert into dumpjpk_ (idcoa,notrans,tanggal,jenis,debet,kredit) value (:idcoa,:notrans,:tanggal,:jenis,:debet,:kredit)');
          Qex.ParamByName('idcoa').AsInteger := Qceksetor.FieldByName('idcoa').AsInteger;
          Qex.ParamByName('notrans').AsString := 'SS'+IntToStr(i);
          Qex.ParamByName('tanggal').AsDate := Qceksetor.FieldByName('tanggal').AsDateTime;
          Qex.ParamByName('jenis').AsString := '';
          Qex.ParamByName('debet').AsCurrency := Qceksetor.FieldByName('total').AsCurrency;
          Qex.ParamByName('kredit').AsCurrency := 0;
          Qex.Execute;        
          for j := 1 to Qcek.RecordCount do
          begin
            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('Insert into dumpjpk_ (idcoa,notrans,tanggal,jenis,debet,kredit) value (:idcoa,:notrans,:tanggal,:jenis,:debet,:kredit)');
            Qex.ParamByName('idcoa').AsInteger := Qcek.FieldByName('idcoa').AsInteger;
            Qex.ParamByName('notrans').AsString := 'SS'+IntToStr(i);
            Qex.ParamByName('tanggal').AsDate := Qceksetor.FieldByName('tanggal').AsDateTime;
            Qex.ParamByName('jenis').AsString := '';
            Qex.ParamByName('debet').AsCurrency := 0;
            Qex.ParamByName('kredit').AsCurrency := Qcek.FieldByName('kredit').AsCurrency;
            Qex.Execute;

            Qcek.Next;
            Application.ProcessMessages;
          end;
        end;

        Qceksetor.Next;
        cxProgressBar1.Position := cxProgressBar1.Position+1;
        Application.ProcessMessages;
      end;

      cxMemo1.Lines.Add('   -> Proses Jurnal Biaya Administrasi Pinjaman Anggota..');
      cxProgressBar1.Position := 0;
      cxProgressBar1.Properties.Max := Qcekbyadm.RecordCount;
      for I := 1 to Qcekbyadm.RecordCount do
      begin
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('Insert into dumpjpk (notrans,noref,penjelasan,jumlah,tanggal,tipejurnal) value (:notrans,:noref,:penjelasan,:jumlah,:tanggal,:tipejurnal)');
        Qex.ParamByName('notrans').AsString := 'ADM'+IntToStr(i);
        Qex.ParamByName('noref').AsString := Qcekbyadm.FieldByName('notrans').AsString;
        Qex.ParamByName('penjelasan').AsString := Qcekbyadm.FieldByName('keterangan').AsString;
        Qex.ParamByName('jumlah').AsCurrency := Qcekbyadm.FieldByName('total').AsCurrency;
        Qex.ParamByName('tanggal').AsDate := Qcekbyadm.FieldByName('tanggal').AsDateTime;
        Qex.ParamByName('tipejurnal').AsString := 'JURNAL PENERIMAAN KAS';
        Qex.Execute;

        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('Insert into dumpjpk_ (idcoa,notrans,tanggal,jenis,debet,kredit) value (:idcoa,:notrans,:tanggal,:jenis,:debet,:kredit)');
        Qex.ParamByName('idcoa').AsInteger := Qcekbyadm.FieldByName('idcoakredit').AsInteger;
        Qex.ParamByName('notrans').AsString := 'ADM'+IntToStr(i);
        Qex.ParamByName('tanggal').AsDate := Qcekbyadm.FieldByName('tanggal').AsDateTime;
        Qex.ParamByName('jenis').AsString := '';
        Qex.ParamByName('debet').AsCurrency := Qcekbyadm.FieldByName('total').AsCurrency;
        Qex.ParamByName('kredit').AsCurrency := 0;
        Qex.Execute;        
   
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('Insert into dumpjpk_ (idcoa,notrans,tanggal,jenis,debet,kredit) value (:idcoa,:notrans,:tanggal,:jenis,:debet,:kredit)');
        Qex.ParamByName('idcoa').AsInteger := Qcekbyadm.FieldByName('idcoa').AsInteger;
        Qex.ParamByName('notrans').AsString := 'ADM'+IntToStr(i);
        Qex.ParamByName('tanggal').AsDate := Qcekbyadm.FieldByName('tanggal').AsDateTime;
        Qex.ParamByName('jenis').AsString := '';
        Qex.ParamByName('debet').AsCurrency := 0;
        Qex.ParamByName('kredit').AsCurrency := Qcekbyadm.FieldByName('total').AsCurrency;
        Qex.Execute;

        Qcekbyadm.Next;
        cxProgressBar1.Position := cxProgressBar1.Position+1;
        Application.ProcessMessages;
      end;

      cxMemo1.Lines.Add('   -> Proses Jurnal Transaksi Kas Transfer..');
      cxProgressBar1.Position := 0;
      cxProgressBar1.Properties.Max := Qcekkt.RecordCount;
      for I := 1 to Qcekkt.RecordCount do
      begin
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('Insert into dumpjpk (notrans,noref,penjelasan,jumlah,tanggal,tipejurnal) value (:notrans,:noref,:penjelasan,:jumlah,:tanggal,:tipejurnal)');
        Qex.ParamByName('notrans').AsString := 'KT'+IntToStr(i);
        Qex.ParamByName('noref').AsString := Qcekkt.FieldByName('notrans').AsString;
        Qex.ParamByName('penjelasan').AsString := Qcekkt.FieldByName('keterangan').AsString;
        Qex.ParamByName('jumlah').AsCurrency := Qcekkt.FieldByName('total').AsCurrency;
        Qex.ParamByName('tanggal').AsDate := Qcekkt.FieldByName('tanggal').AsDateTime;
        Qex.ParamByName('tipejurnal').AsString := 'JURNAL PENERIMAAN KAS';
        Qex.Execute;

        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('Insert into dumpjpk_ (idcoa,notrans,tanggal,jenis,debet,kredit) value (:idcoa,:notrans,:tanggal,:jenis,:debet,:kredit)');
        Qex.ParamByName('idcoa').AsInteger := Qcekkt.FieldByName('idcoadebet').AsInteger;
        Qex.ParamByName('notrans').AsString := 'KT'+IntToStr(i);
        Qex.ParamByName('tanggal').AsDate := Qcekkt.FieldByName('tanggal').AsDateTime;
        Qex.ParamByName('jenis').AsString := '';
        Qex.ParamByName('debet').AsCurrency := Qcekkt.FieldByName('total').AsCurrency;
        Qex.ParamByName('kredit').AsCurrency := 0;
        Qex.Execute;

        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('Insert into dumpjpk_ (idcoa,notrans,tanggal,jenis,debet,kredit) value (:idcoa,:notrans,:tanggal,:jenis,:debet,:kredit)');
        Qex.ParamByName('idcoa').AsInteger := Qcekkt.FieldByName('idcoakredit').AsInteger;
        Qex.ParamByName('notrans').AsString := 'KT'+IntToStr(i);
        Qex.ParamByName('tanggal').AsDate := Qcekkt.FieldByName('tanggal').AsDateTime;
        Qex.ParamByName('jenis').AsString := '';
        Qex.ParamByName('debet').AsCurrency := 0;
        Qex.ParamByName('kredit').AsCurrency := Qcekkt.FieldByName('total').AsCurrency;
        Qex.Execute;

        Qcekkt.Next;
        cxProgressBar1.Position := cxProgressBar1.Position+1;
        Application.ProcessMessages;
      end;

      cxMemo1.Lines.Add('   -> Proses Jurnal Pembayaran Angsuran..');
      cxProgressBar1.Position := 0;
      cxProgressBar1.Properties.Max := Qcekang.RecordCount;
      for I := 1 to Qcekang.RecordCount do
      begin
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('Insert into dumpjpk (notrans,noref,penjelasan,jumlah,tanggal,tipejurnal) value (:notrans,:noref,:penjelasan,:jumlah,:tanggal,:tipejurnal)');
        Qex.ParamByName('notrans').AsString := 'ANG'+IntToStr(i);
        Qex.ParamByName('noref').AsString := Qcekang.FieldByName('notrans').AsString;
        Qex.ParamByName('penjelasan').AsString := Qcekang.FieldByName('keterangan').AsString;
        Qex.ParamByName('jumlah').AsCurrency := Qcekang.FieldByName('total').AsCurrency;
        Qex.ParamByName('tanggal').AsDate := Qcekang.FieldByName('tanggal').AsDateTime;
        Qex.ParamByName('tipejurnal').AsString := 'JURNAL PENERIMAAN KAS';
        Qex.Execute;

        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('Insert into dumpjpk_ (idcoa,notrans,tanggal,jenis,debet,kredit) value (:idcoa,:notrans,:tanggal,:jenis,:debet,:kredit)');
        Qex.ParamByName('idcoa').AsInteger := Qcekang.FieldByName('idcoadebet').AsInteger;
        Qex.ParamByName('notrans').AsString := 'ANG'+IntToStr(i);
        Qex.ParamByName('tanggal').AsDate := Qcekang.FieldByName('tanggal').AsDateTime;
        Qex.ParamByName('jenis').AsString := '';
        Qex.ParamByName('debet').AsCurrency := Qcekang.FieldByName('total').AsCurrency;
        Qex.ParamByName('kredit').AsCurrency := 0;
        Qex.Execute;        


        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('Insert into dumpjpk_ (idcoa,notrans,tanggal,jenis,debet,kredit) value (:idcoa,:notrans,:tanggal,:jenis,:debet,:kredit)');
        Qex.ParamByName('idcoa').AsInteger := Qcekang.FieldByName('idcoapokok').AsInteger;
        Qex.ParamByName('notrans').AsString := 'ANG'+IntToStr(i);
        Qex.ParamByName('tanggal').AsDate := Qcekang.FieldByName('tanggal').AsDateTime;
        Qex.ParamByName('jenis').AsString := '';
        Qex.ParamByName('debet').AsCurrency := 0;
        Qex.ParamByName('kredit').AsCurrency := Qcekang.FieldByName('pokok').AsCurrency;
        Qex.Execute;

        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('Insert into dumpjpk_ (idcoa,notrans,tanggal,jenis,debet,kredit) value (:idcoa,:notrans,:tanggal,:jenis,:debet,:kredit)');
        Qex.ParamByName('idcoa').AsInteger := Qcekang.FieldByName('idcoabunga').AsInteger;
        Qex.ParamByName('notrans').AsString := 'ANG'+IntToStr(i);
        Qex.ParamByName('tanggal').AsDate := Qcekang.FieldByName('tanggal').AsDateTime;
        Qex.ParamByName('jenis').AsString := '';
        Qex.ParamByName('debet').AsCurrency := 0;
        Qex.ParamByName('kredit').AsCurrency := Qcekang.FieldByName('bunga').AsCurrency;
        Qex.Execute;

        if Qcekang.FieldByName('denda').AsCurrency > 0 then
        begin
          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('Insert into dumpjpk_ (idcoa,notrans,tanggal,jenis,debet,kredit) value (:idcoa,:notrans,:tanggal,:jenis,:debet,:kredit)');
          Qex.ParamByName('idcoa').AsInteger := Qcekang.FieldByName('idcoadenda').AsInteger;
          Qex.ParamByName('notrans').AsString := 'ANG'+IntToStr(i);
          Qex.ParamByName('tanggal').AsDate := Qcekang.FieldByName('tanggal').AsDateTime;
          Qex.ParamByName('jenis').AsString := '';
          Qex.ParamByName('debet').AsCurrency := 0;
          Qex.ParamByName('kredit').AsCurrency := Qcekang.FieldByName('denda').AsCurrency;
          Qex.Execute;        
        end;
        Qcekang.Next;
        cxProgressBar1.Position := cxProgressBar1.Position+1;
        Application.ProcessMessages;
      end;

      Conn1.StartTransaction;
      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('DELETE FROM jpk where DATE_FORMAT(tanggal,"%Y%m")=:periode;');
      Qex.SQL.Add('DELETE FROM jpk_ where DATE_FORMAT(tanggal,"%Y%m")=:periode;');
      Qex.ParamByName('periode').AsString := periode;
      Qex.Execute;

      Qcek.Close;
      Qcek.SQL.Clear;
      Qcek.SQL.Add('SELECT * FROM dumpjpk order by tanggal,noref');
      Qcek.Open;
      cxMemo1.Lines.Add('   -> Proses Pengurutan Transaksi..');
      if Qcek.RecordCount > 0 then
      begin
        cxProgressBar1.Position := 0;
        cxProgressBar1.Properties.Max := Qcek.RecordCount;
        for i := 1 to qcek.RecordCount do
        begin
          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('Insert into jpk (notrans,noref,penjelasan,jumlah,tanggal,tipejurnal) value (noautojpk(:tanggal),:noref,:penjelasan,:jumlah,:tanggal,:tipejurnal)');
          Qex.ParamByName('noref').AsString := Qcek.FieldByName('noref').AsString;
          Qex.ParamByName('penjelasan').AsString := Qcek.FieldByName('penjelasan').AsString;
          Qex.ParamByName('jumlah').AsCurrency := Qcek.FieldByName('jumlah').AsCurrency;
          Qex.ParamByName('tanggal').AsDate := Qcek.FieldByName('tanggal').AsDateTime;
          Qex.ParamByName('tipejurnal').AsString := 'JURNAL PENERIMAAN KAS';
          Qex.Execute;

          Qdetail.Close;
          Qdetail.SQL.Clear;
          Qdetail.SQL.Add('Select idju from jpk where noref=:noref');
          Qdetail.ParamByName('noref').AsString := Qcek.FieldByName('noref').AsString;
          Qdetail.Open;

          idju := Qdetail.FieldByName('idju').AsInteger;

          Qdetail.Close;
          Qdetail.SQL.Clear;
          Qdetail.SQL.Add('select * from dumpjpk_ where notrans=:notrans order by id');
          Qdetail.ParamByName('notrans').AsString := Qcek.FieldByName('notrans').AsString;
          Qdetail.Open;
          for j := 1 to Qdetail.RecordCount do
          begin
            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('Insert into jpk_ (idcoa,idju,tanggal,jenis,debet,kredit) value (:idcoa,:idju,:tanggal,:jenis,:debet,:kredit)');
            Qex.ParamByName('idcoa').value := Qdetail.FieldByName('idcoa').value;
            Qex.ParamByName('idju').value := idju;
            Qex.ParamByName('tanggal').value := Qdetail.FieldByName('tanggal').value;
            Qex.ParamByName('jenis').value := Qdetail.FieldByName('jenis').value;
            Qex.ParamByName('debet').value := Qdetail.FieldByName('debet').value;
            Qex.ParamByName('kredit').value := Qdetail.FieldByName('kredit').value;
            Qex.Execute;

            qdetail.next;
            Application.ProcessMessages;
          end;

          Qcek.next;
          Application.ProcessMessages;
          cxProgressBar1.Position := cxProgressBar1.Position+1;
        end;
      end;

      Conn1.Commit;

      cxMemo1.Lines.Add('   -> Pemerosesan Tahap Akhir..');
      cxProgressBar1.Position := 0;
      cxProgressBar1.Properties.Max := 100;
      cxProgressBar1.Position := 50;

      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('UPDATE statusposting set postingjpk="0";');
      Qex.Execute;

      cxMemo1.Lines.Add('');
      cxMemo1.Lines.Add('Selesai..');

      MessageDlg('Proses Tambah & Pembaharuan JPK Berhasil .',mtInformation,[mbok],0);

      ModalResult := mrok;

    except
      on e : Exception do
      begin
        MessageDlg('Terdapat Kesalahan Posting..!'+#13+e.Message,mtWarning,[mbok],0);
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('UPDATE statusposting set postingjpk="0";');
        Qex.Execute;
        dm.Conn1.Rollback;
        kondisi1;
      end;
    end;
  end;
end;

end.
