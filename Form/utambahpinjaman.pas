unit utambahpinjaman;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, RzButton,
  cxCurrencyEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxLabel, RzTabs, Vcl.ExtCtrls, RzPanel, Data.DB, MemDS, DBAccess,
  MyAccess, dxmdaset;

type
  Tfotambahpinjaman = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    Da2: TMyDataSource;
    Da1: TMyDataSource;
    dxMemData2: TdxMemData;
    dxMemData2idanggota: TIntegerField;
    dxMemData2kodeanggota: TStringField;
    dxMemData2namaanggota: TStringField;
    Qa1: TMyQuery;
    Qa1idanggota: TLargeintField;
    RzPanel1: TRzPanel;
    btnsimpan: TRzToolButton;
    btnkembali: TRzToolButton;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxButton1: TcxButton;
    cxLabel2: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel5: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel6: TcxLabel;
    cxComboBox1: TcxComboBox;
    cxLabel3: TcxLabel;
    platformpinj: TcxCurrencyEdit;
    cxLabel4: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel9: TcxLabel;
    cxComboBox2: TcxComboBox;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel8: TcxLabel;
    adm: TcxCurrencyEdit;
    bunga: TcxCurrencyEdit;
    cxLabel12: TcxLabel;
    lamaangs: TcxCurrencyEdit;
    cxLabel14: TcxLabel;
    cxLabel13: TcxLabel;
    angsuranpokok: TcxCurrencyEdit;
    angsuranbunga: TcxCurrencyEdit;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    jmlangsuran: TcxCurrencyEdit;
    procedure btnkembaliClick(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cxDateEdit1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure platformpinjPropertiesChange(Sender: TObject);
    procedure lamaangsPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mode,idparam,flagc1,flagc2 : byte;
    idanggotalama : integer;
    periodelama : TDate;
    procedure kosongkantext;
    procedure kosongkantextrincian;
    procedure generaterincianpinjaman;
    procedure generaterincianpinjaman2;
    function cekisiankosong : Boolean;
    procedure isimemdata;
  end;

var
  fotambahpinjaman: Tfotambahpinjaman;

implementation
uses dateutils;

{$R *.dfm}

procedure Tfotambahpinjaman.btnkembaliClick(Sender: TObject);
begin
  if mode<>0 then
  kosongkantext;
  Self.Close;
end;

procedure Tfotambahpinjaman.btnsimpanClick(Sender: TObject);
var
 i : integer;
 totalangsuran,selisihangs,jmlangsuranlast : Currency;
begin

  if cekisiankosong then
  begin
    if cxDBLookupComboBox1.EditValue=-1 then
    begin
      MessageDlg('Anggota Belum Dipilih..!',mtWarning,[mbok],0);
      cxDBLookupComboBox1.SetFocus;
      Exit;
    end
    else
    begin
      if jmlangsuran.Value=0 then
      begin
        MessageDlg('Jumlah Angusran Masih 0',mtWarning,[mbok],0);
      end
      else
      begin
        with dm do
        begin
          if mode=0 then
          begin
            Qcek.Close;
            Qcek.SQL.Clear;
            Qcek.SQL.Add('select a.idanggota,b.sisapokokangsuran from m_pinjaman a left join v_sisa_angsuran b on a.nopinjaman=b.nopinjaman where b.sisapokokangsuran>0 and a.idanggota=:idanggota');
            Qcek.ParamByName('idanggota').Value := cxDBLookupComboBox1.EditValue;
            Qcek.Open;
            if Qcek.RecordCount > 0  then
            begin
              MessageDlg('Anggota "'+cxDBLookupComboBox1.Text+'" Masih Mempunyai Tunggakan Angsuran'+#13+'Proses Pengajuan Pinjaman Dibatalkan.!',mtWarning,[mbok],0);
              exit;
            end;
            if MessageDlg('Yakin Menyimpan Pengajuan Pinjaman ini Dengan Jumlah Angsuran "'+jmlangsuran.Text+'" ini >',mtConfirmation,[mbyes,mbno],0)=mryes then
            begin
              try
                Conn1.StartTransaction;
                totalangsuran := 0;
                jmlangsuranlast := 0;
                for i := 1 to round(lamaangs.Value) do
                begin
                  totalangsuran := totalangsuran+angsuranpokok.Value;
                  Qex.Close;
                  Qex.SQL.Clear;
                  Qex.SQL.Add('Insert into d_angsuran (nopinjaman,periode,tgljatuhtempo,pokok,bunga,jumlah,userinput,waktuupdate,noangsuran)');
                  Qex.SQL.Add('value ((Select noautopinj(:tgl)),:periode,:tgljatuhtempo,:pokok,:bunga,:jumlah,:userinput,NOW(),:noangsuran);');
                  Qex.ParamByName('periode').AsString := FormatDateTime('yyyymm',IncMonth(cxDateEdit1.Date,i));
                  Qex.ParamByName('tgl').AsDate := cxDateEdit1.Date;
                  Qex.ParamByName('tgljatuhtempo').AsDate := IncMonth(cxDateEdit1.Date,i);
                  Qex.ParamByName('noangsuran').AsInteger := i;
                  if i=lamaangs.Value then
                  begin
                    selisihangs := platformpinj.Value-totalangsuran;
                    jmlangsuranlast := angsuranpokok.Value+selisihangs;
                    Qex.ParamByName('pokok').AsCurrency := jmlangsuranlast;
                    Qex.ParamByName('bunga').AsCurrency := angsuranbunga.Value;
                    Qex.ParamByName('jumlah').AsCurrency := jmlangsuranlast+angsuranbunga.Value;
                  end
                  else
                  begin
                    Qex.ParamByName('pokok').AsCurrency := angsuranpokok.Value;
                    Qex.ParamByName('bunga').AsCurrency := angsuranbunga.Value;
                    Qex.ParamByName('jumlah').AsCurrency := jmlangsuran.Value;
                  end;
                  Qex.Execute;

                end;


                Qex.Close;
                Qex.SQL.Clear;
                Qex.SQL.Add('Insert into m_pinjaman (nopinjaman,idanggota,platform,tipeangsuran,byadmin,persentase,lamaangsuran,tglpinjam,pokokbulan,bungabulan,jumlahbulan,waktuinput,idparam,kaskredit) ');
                Qex.SQL.Add('value ((Select noautopinj(:tglpinjam)),:idanggota,:platform,:tipeangsuran,:byadmin,:persentase,:lamaangsuran,:tglpinjam,:pokokbulan,:bungabulan,:jumlahbulan,NOW(),:idparam,:kaskredit);');
                Qex.ParamByName('idanggota').Value := cxDBLookupComboBox1.EditValue;
                Qex.ParamByName('platform').AsCurrency := platformpinj.Value;
                Qex.ParamByName('tipeangsuran').AsString := cxComboBox2.Text;
                Qex.ParamByName('byadmin').AsCurrency := adm.Value;
                Qex.ParamByName('persentase').AsCurrency := bunga.Value;
                Qex.ParamByName('lamaangsuran').AsCurrency := lamaangs.Value;
                Qex.ParamByName('tglpinjam').AsDate := cxDateEdit1.Date;
                Qex.ParamByName('pokokbulan').AsCurrency := angsuranpokok.Value;
                Qex.ParamByName('bungabulan').AsCurrency := angsuranbunga.Value;
                Qex.ParamByName('jumlahbulan').AsCurrency :=jmlangsuran.Value;
                Qex.ParamByName('idparam').AsInteger := idparam;
                Qex.parambyname('kaskredit').AsString := cxComboBox1.Text;
                Qex.Execute;

                Conn1.Commit;

                MessageDlg('Proses Tambah Pinjaman Baru Berhasil Dilakukan..!',mtConfirmation,[mbok],0);
                ModalResult := mrok;

              except
                on e: Exception do
                begin
                  Conn1.Rollback;
                  MessageDlg('Terdapat Kesalahan..!'+#13+e.Message,mtError,[mbok],0);
                end;
              end;
            end;
          end
          else
          begin
            if FormatDateTime('yyyymm',periodelama)=FormatDateTime('yyyymm',cxDateEdit1.Date) then
            begin
              if idanggotalama<>StrToInt(VarToStr(cxDBLookupComboBox1.EditValue)) then
              begin
                Qcek.Close;
                Qcek.SQL.Clear;
                Qcek.SQL.Add('select a.idanggota,b.sisapokokangsuran from m_pinjaman a left join v_sisa_angsuran b on a.nopinjaman=b.nopinjaman where b.sisapokokangsuran>0 and a.idanggota=:idanggota');
                Qcek.ParamByName('idanggota').Value := cxDBLookupComboBox1.EditValue;
                Qcek.Open;
                if Qcek.RecordCount > 0  then
                begin
                  MessageDlg('Anggota "'+cxDBLookupComboBox1.Text+'" Masih Mempunyai Tunggakan Angsuran'+#13+'Proses Pengajuan Pinjaman Dibatalkan.!',mtWarning,[mbok],0);
                  exit;
                end;
              end;
              if MessageDlg('Yakin Koreksi Pinjaman Dengan Total "'+jmlangsuran.Text+'" ini >',mtConfirmation,[mbyes,mbno],0)=mryes then
              begin
                try
                  Conn1.StartTransaction;

                  Qex.Close;
                  Qex.SQL.Clear;
                  Qex.SQL.Add('delete from d_angsuran where nopinjaman=:nopinjaman');
                  Qex.ParamByName('nopinjaman').AsString := cxTextEdit1.Text;
                  Qex.Execute;


                  totalangsuran := 0;
                  jmlangsuranlast := 0;
                  for i := 1 to round(lamaangs.Value) do
                  begin
                    totalangsuran := totalangsuran+angsuranpokok.Value;
                    Qex.Close;
                    Qex.SQL.Clear;
                    Qex.SQL.Add('Insert into d_angsuran (nopinjaman,periode,tgljatuhtempo,pokok,bunga,jumlah,userinput,waktuupdate,noangsuran)');
                    Qex.SQL.Add('value (:nopinjaman,:periode,:tgljatuhtempo,:pokok,:bunga,:jumlah,:userinput,NOW(),:noangsuran);');
                    Qex.ParamByName('periode').AsString := FormatDateTime('yyyymm',IncMonth(cxDateEdit1.Date,i));
                    Qex.ParamByName('tgljatuhtempo').AsDate := IncMonth(cxDateEdit1.Date,i);
                    Qex.ParamByName('noangsuran').AsInteger := i;
                    Qex.ParamByName('nopinjaman').AsString := cxTextEdit1.Text;
                    if i=lamaangs.Value then
                    begin
                      selisihangs := platformpinj.Value-totalangsuran;
                      jmlangsuranlast := angsuranpokok.Value+selisihangs;
                      Qex.ParamByName('pokok').AsCurrency := jmlangsuranlast;
                      Qex.ParamByName('bunga').AsCurrency := angsuranbunga.Value;
                      Qex.ParamByName('jumlah').AsCurrency := jmlangsuranlast+angsuranbunga.Value;
                    end
                    else
                    begin
                      Qex.ParamByName('pokok').AsCurrency := angsuranpokok.Value;
                      Qex.ParamByName('bunga').AsCurrency := angsuranbunga.Value;
                      Qex.ParamByName('jumlah').AsCurrency := jmlangsuran.Value;
                    end;
                    Qex.Execute;
                  end;

                  Qex.Close;
                  Qex.SQL.Clear;
                  Qex.SQL.Add('Update m_pinjaman set idanggota=:idanggota,platform=:platform,tipeangsuran=:tipeangsuran,bungabulan=:bungabulan,idparam=:idparam,kaskredit=:kaskredit, ');
                  Qex.SQL.Add('byadmin=:byadmin,persentase=:persentase,lamaangsuran=:lamaangsuran,tglpinjam=:tglpinjam,pokokbulan=:pokokbulan,jumlahbulan=:jumlahbulan where nopinjaman=:nopinjaman;');
                  Qex.ParamByName('idanggota').Value := cxDBLookupComboBox1.EditValue;
                  Qex.ParamByName('platform').AsCurrency := platformpinj.Value;
                  Qex.ParamByName('tipeangsuran').AsString := cxComboBox2.Text;
                  Qex.ParamByName('byadmin').AsCurrency := adm.Value;
                  Qex.ParamByName('persentase').AsCurrency := bunga.Value;
                  Qex.ParamByName('lamaangsuran').AsCurrency := lamaangs.Value;
                  Qex.ParamByName('tglpinjam').AsDate := cxDateEdit1.Date;
                  Qex.ParamByName('pokokbulan').AsCurrency := angsuranpokok.Value;
                  Qex.ParamByName('bungabulan').AsCurrency := angsuranbunga.Value;
                  Qex.ParamByName('jumlahbulan').AsCurrency :=jmlangsuran.Value;
                  Qex.ParamByName('idparam').AsInteger := idparam;
                  Qex.ParamByName('nopinjaman').AsString := cxTextEdit1.Text;
                  Qex.parambyname('kaskredit').AsString := cxComboBox1.Text;
                  Qex.Execute;

                  Conn1.Commit;
                  MessageDlg('Proses Koreksi Pinjaman Berhasil Dilakukan..!',mtConfirmation,[mbok],0);
                  ModalResult := mrok;
                except
                  on e: Exception do
                  begin
                    Conn1.Rollback;
                    MessageDlg('Terdapat Kesalahan..!'+#13+e.Message,mtError,[mbok],0);
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
      end;
    end;
  end
  else
  begin
    MessageDlg('Isian "'+namaisian+'" Masih Kosong..!',mtWarning,[mbok],0);
  end;
end;

function Tfotambahpinjaman.cekisiankosong: Boolean;
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
    namaisian := 'Penarikan Dari Kas';
    cxComboBox1.SetFocus;
    Result := false;
    Exit;
  end;

  if trim(platformpinj.Text)='' then
  begin
    namaisian := 'Platform Pinjaman';
    platformpinj.SetFocus;
    Result := false;
    Exit;
  end;
  if trim(lamaangs.Text)='' then
  begin
    namaisian := 'Lama Angsuran';
    lamaangs.SetFocus;
    Result := false;
    Exit;
  end;
  result := true;
end;

procedure Tfotambahpinjaman.cxButton1Click(Sender: TObject);
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
      Qcek.SQL.Add('select noautopinj(:tgl)');
      Qcek.ParamByName('tgl').AsDate := periode;
      Qcek.Open;
      cxTextEdit1.Text := Qcek.Fields[0].AsString;
    end;
  end;

end;

procedure Tfotambahpinjaman.cxDateEdit1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  cxButton1.Click;
end;

procedure Tfotambahpinjaman.FormShow(Sender: TObject);
begin
  if mode=0 then
  begin
    try
      Qa1.Close;
      Qa1.Open;
      kosongkantext;
      isimemdata;
      cxButton1.Click;
      dm.isicombo1('akunkas',cxComboBox1);

    except
      on e: Exception do
      begin
        MessageDlg('Terdapat Kesalahan..!'+#13+e.Message,mtError,[mbok],0);
      end;
    end;
  end
  else
  begin

  end;
  cxDateEdit1.SetFocus;
end;

procedure Tfotambahpinjaman.generaterincianpinjaman;
begin

  with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select * from parampinjaman where platformbawah <= :jml and platformatas > :jml');
    Qcek.ParamByName('jml').Value := platformpinj.Value;
    Qcek.Open;
    if Qcek.RecordCount > 0 then
    begin
      adm.Value :=  Round(platformpinj.Value*Qcek.FieldByName('byadmin').Value/100);
      bunga.Value := Qcek.FieldByName('persenbunga').Value;
      lamaangs.Value := Round(Qcek.FieldByName('maxkaliangsur').Value / 2);
      idparam := Qcek.FieldByName('idparam').AsInteger;
      angsuranpokok.Value := Round(platformpinj.Value/lamaangs.Value);
      angsuranbunga.Value := Round(platformpinj.Value*bunga.Value/100);
      jmlangsuran.Value := angsuranbunga.Value+angsuranpokok.Value;
    end
    else
    begin
      kosongkantextrincian;
    end;
  end;
end;

procedure Tfotambahpinjaman.generaterincianpinjaman2;
begin
  with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select * from parampinjaman where platformbawah <= :jml and platformatas > :jml');
    Qcek.ParamByName('jml').Value := platformpinj.Value;
    Qcek.Open;
    if Qcek.RecordCount > 0 then
    begin
      if (Qcek.FieldByName('maxkaliangsur').Value < lamaangs.Value) then
      begin
        MessageDlg('Lama Angsuran Tidak Boleh Lebih Dari '+VarToStr(Qcek.FieldByName('maxkaliangsur').Value)+' Kali.!',mtWarning,[mbok],0);
        flagc2:=1;
        lamaangs.Value := Round(Qcek.FieldByName('maxkaliangsur').Value / 2);
        flagc2:=0;
      end;

      adm.Value :=  Round(platformpinj.Value*Qcek.FieldByName('byadmin').Value/100);
      bunga.Value := Qcek.FieldByName('persenbunga').Value;
      idparam := Qcek.FieldByName('idparam').AsInteger;
      angsuranpokok.Value := Round(platformpinj.Value/lamaangs.Value);
      angsuranbunga.Value := Round(platformpinj.Value*bunga.Value/100);
      jmlangsuran.Value := angsuranbunga.Value+angsuranpokok.Value;
    end
    else
    begin
      kosongkantextrincian;
    end;
  end;
end;

procedure Tfotambahpinjaman.isimemdata;
begin
  with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select idanggota,namaanggota,kodeanggota from anggota where aktif="AKTIF"');
    Qcek.Open;
    dxMemData2.Close;
    dxMemData2.Open;
    dxMemData2.Append;
    dxMemData2idanggota.Value := -1;
    dxMemData2kodeanggota.Value :='-1';
    dxMemData2namaanggota.Value :='PILIH SALAH SATU ANGGOTA';
    dxMemData2.Post;

    while not Qcek.Eof do
    begin
      dxMemData2.Append;
      dxMemData2idanggota.Value := Qcek.FieldByName('idanggota').Value;
      dxMemData2kodeanggota.Value :=Qcek.FieldByName('kodeanggota').Value;
      dxMemData2namaanggota.Value :=Qcek.FieldByName('namaanggota').Value;
      dxMemData2.Post;

      Qcek.Next;
    end;
  end;
end;

procedure Tfotambahpinjaman.kosongkantext;
begin
  cxDBLookupComboBox1.Text := 'PILIH SALAH SATU ANGGOTA';
  cxComboBox1.ItemIndex := 0;
  cxDateEdit1.Text := '';
  platformpinj.Text := '';
  kosongkantextrincian;
end;

procedure Tfotambahpinjaman.kosongkantextrincian;
begin
  adm.Clear;
  bunga.Clear;
  cxComboBox2.ItemIndex := 0;
  lamaangs.Clear;
  angsuranpokok.Clear;
  angsuranbunga.Clear;
  jmlangsuran.Clear;
end;

procedure Tfotambahpinjaman.lamaangsPropertiesChange(Sender: TObject);
begin
  if lamaangs.Value > 0 then
  begin
    flagc1 := 1;
    if flagc2=0 then
    begin
      generaterincianpinjaman2;
    end;
    flagc1 := 0;
  end
  else
  begin
    kosongkantextrincian;
  end;
end;

procedure Tfotambahpinjaman.platformpinjPropertiesChange(Sender: TObject);
begin
  if platformpinj.Value > 0 then
  begin
    flagc2 := 1;
    if flagc1=0 then
    begin
      generaterincianpinjaman;
    end;
    flagc2 := 0;
  end
  else
  begin
    kosongkantextrincian;
  end;
end;

procedure Tfotambahpinjaman.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  btnkembali.Click;
end;

end.
