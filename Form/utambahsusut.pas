unit utambahsusut;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinsDefaultPainters,
  scDevExStyleAdapter, Vcl.Menus, Vcl.StdCtrls, cxButtons, dxActivityIndicator,
  cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, RzLabel, RzTabs,
  Vcl.ExtCtrls, RzPanel, cxProgressBar, Data.DB, MemDS, DBAccess, MyAccess,
  Vcl.ComCtrls, RzDTP, cxGroupBox;

type
  Tfotambahsusut = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    cxComboBox1: TcxComboBox;
    cxComboBox2: TcxComboBox;
    cxLabel2: TcxLabel;
    cxButton2: TcxButton;
    Memo1: TMemo;
    cxProgressBar1: TcxProgressBar;
    Qass: TMyQuery;
    QassCek: TMyQuery;
    RzLabel1: TRzLabel;
    cxGroupBox1: TcxGroupBox;
    cxComboBox3: TcxComboBox;
    Label1: TLabel;
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure insertsusut(_idasset_ak,_periode : integer;_jumlah : variant);
    procedure updatesusut(_idasset_ak,_periode : integer;_jumlah : variant);
  end;

var
  fotambahsusut: Tfotambahsusut;

implementation

{$R *.dfm}

uses udm,strutils,dateutils;

procedure Tfotambahsusut.cxButton2Click(Sender: TObject);
const
   bln : array[1..12] of string = ('01','02','03','04','05','06','07','08','09','10','11','12');
var
  i,j,tahun,totaljmlbagi,jmlbagi,pengurang,id_ak,jumlahpersen,idju : integer;
  jmlsisaakhir,bagiselisih,totalju : Currency;
  periode,thnbln12,thnblnakhir : string;
  akhirtahun,akhirbulan : tdate;
begin
  try

    periode := cxComboBox2.Text;
    tahun := StrToInt(LeftStr(periode,4));
    akhirtahun := EncodeDate(tahun,12,31);
    akhirbulan := EncodeDate(tahun,StrToInt(RightStr(periode,2)),1);
    akhirbulan := EncodeDate(tahun,StrToInt(RightStr(periode,2)),DaysInMonth(akhirbulan));
    if dm.cekstatusaktifperiodeposting(FormatDateTime('yyyymm',akhirbulan))=0 then
    begin
      MessageDlg('Periode Posting "'+UpperCase(FormatDateTime('mmmm yyyy',akhirbulan))+'" Sudah Terkunci ..!',mtWarning,[mbok],0);
      Exit;
    end;

    if MessageDlg('Yakin Melakukan Penyusutan ini ?',mtConfirmation,[mbyes,mbno],0)=mrno then
    begin
      Exit;
    end;


    cxProgressBar1.Visible := true;
    cxButton2.Visible := false;
    periode := cxComboBox2.Text;
    Memo1.Clear;
    with dm do
    begin

      Conn1.StartTransaction;

      if cxComboBox3.ItemIndex=1 then       // kalau belum OPSI 1 pilih tidak
      begin
        // Sebelum Tahun Berjalan
        Qass.Close;
        Qass.SQL.Clear;
        Qass.SQL.Add(Qass.SQLRefresh.Text);
        Qass.ParamByName('tahun').AsInteger := tahun;
        Qass.ParamByName('akhirtahun').AsDate := akhirtahun;
        Qass.Open;
        Qass.First;
        Memo1.Lines.Add('--PROSES SEBELUM TAHUN BERJALAN--');
        if Qass.RecordCount > 0 then
        begin
          cxProgressBar1.Properties.Max := Qass.RecordCount;
          cxProgressBar1.Position := 0;
          for I := 1 to Qass.RecordCount do
          begin
            totaljmlbagi:=0;
            pengurang := (13-Qass.FieldByName('selisihbln').AsInteger);
            id_ak := Qass.FieldByName('idasset_ak').AsInteger;
            jmlbagi :=  Round(Qass.FieldByName('nilai_buku_lalu').value/12);

            for j := 12 downto pengurang do
            begin
              thnbln12 := IntToStr(tahun)+bln[j];
              thnblnakhir := IntToStr(tahun)+bln[12];
              //pengecualian tahun 2020
             { if Qass.FieldByName('thntempo').AsInteger<=2020 then
              begin
                if (Qass.FieldByName('idcoa').AsInteger<>128) and (Qass.FieldByName('idcoa').AsInteger<>129)  then
                begin
                  if j=pengurang then
                  begin
                    jmlsisaakhir := (Qass.FieldByName('nilai_buku_lalu').value-1)-totaljmlbagi;
                    insertsusut(id_ak,StrToInt(thnbln12),jmlbagi);
                    updatesusut(id_ak,StrToInt(thnblnakhir),jmlsisaakhir);
                  end
                  else
                  begin
                    insertsusut(id_ak,StrToInt(thnbln12),jmlbagi);
                  end;
                  totaljmlbagi := totaljmlbagi+jmlbagi;
                end;
              end
              else
              begin     }

                if j=pengurang then
                begin
                  jmlsisaakhir := (Qass.FieldByName('nilai_buku_lalu').value-1)-totaljmlbagi;
                  insertsusut(id_ak,StrToInt(thnbln12),jmlbagi);
                  updatesusut(id_ak,StrToInt(thnblnakhir),jmlsisaakhir);
                end
                else
                begin
                  insertsusut(id_ak,StrToInt(thnbln12),jmlbagi);
                end;
                totaljmlbagi := totaljmlbagi+jmlbagi;
              //end;
            end;

            Memo1.Lines.Add('Proses Susut Id Asset:'+IntToStr(Qass.FieldByName('idasset_ak').AsInteger));
            cxProgressBar1.Position :=cxProgressBar1.Position+1;
            Application.ProcessMessages;
            Qass.Next;
          end;

        end
        else
        begin
          Memo1.Lines.Add('Tidak Ada Data Asset Di Jatuh Tempo Sebelum Tahun Berjalan..!');
        end;
      end;


    // Setelah Tahun Berjalan
      Qass.Close;
      Qass.SQL.Clear;
      if cxComboBox3.ItemIndex=0 then  // jika tidak opsi dihabiskan
        Qass.SQL.Add(Qass.SQLUpdate.Text)
      else
        Qass.SQL.Add(Qass.SQLLock.Text);
      Qass.ParamByName('tahun').AsInteger := tahun;
      Qass.ParamByName('akhirtahun').AsDate := akhirtahun;
      Qass.Open;
      Memo1.Lines.Add('--PROSES SETELAH TAHUN BERJALAN--');
      if Qass.RecordCount > 0 then
      begin
        cxProgressBar1.Properties.Max := Qass.RecordCount;
        cxProgressBar1.Position := 0;
        for I := 1 to Qass.RecordCount do
        begin
          totaljmlbagi:=0;
          pengurang := (13-Qass.FieldByName('selisihbln').AsInteger);
          id_ak := Qass.FieldByName('idasset_ak').AsInteger;
          if Qass.FieldByName('kodesusut').AsString='B' then
          begin
            jumlahpersen := round(Qass.FieldByName('nilai_buku_lalu').value*Qass.FieldByName('persenaktiva').value/100)
          end
          else
          begin
            jumlahpersen := round(Qass.FieldByName('nilai_perolehan').value*Qass.FieldByName('persenaktiva').value/100)
          end;

          if jumlahpersen<=(Qass.FieldByName('nilai_buku_lalu').value-1) then
          begin
            if cxComboBox3.ItemIndex=0 then  // jika tidak opsi dihabiskan
            begin
              if (Qass.FieldByName('nilai_buku_lalu').value-jumlahpersen) < 1 then
              begin
                jmlbagi := (Qass.FieldByName('nilai_buku_lalu').value-1)/12;
                bagiselisih := 0;
              end
              else
              begin
                jmlbagi :=  Round(jumlahpersen/12);
                bagiselisih := 0;
              end;

            end
            else
            begin
              jmlbagi :=  Round(jumlahpersen/12);
              bagiselisih := 0;
            end;
          end
          else
          begin
            jmlbagi := Round((Qass.FieldByName('nilai_buku_lalu').value-1)/12);
            bagiselisih := (Qass.FieldByName('nilai_buku_lalu').value-1)-(jmlbagi*12);
          end;
          for j := 12 downto pengurang do
          begin
            thnbln12 := IntToStr(tahun)+bln[j];
            thnblnakhir := IntToStr(tahun)+bln[12];
            //pengecualian tahun 2020
           { if Qass.FieldByName('thntempo').AsInteger<=2020 then
            begin
              if (Qass.FieldByName('idcoa').AsInteger<>128) and (Qass.FieldByName('idcoa').AsInteger<>129)  then
              begin
                if j=pengurang then
                begin
                  jmlsisaakhir := jumlahpersen-totaljmlbagi;
                  insertsusut(id_ak,StrToInt(thnbln12),jmlbagi);
                  updatesusut(id_ak,StrToInt(thnblnakhir),jmlsisaakhir);
                end
                else
                begin
                  insertsusut(id_ak,StrToInt(thnbln12),jmlbagi);
                end;
                totaljmlbagi := totaljmlbagi+jmlbagi;
              end;
            end
            else
            begin      }

              if j=pengurang then
              begin
              //  jmlsisaakhir := jumlahpersen-totaljmlbagi;
                insertsusut(id_ak,StrToInt(thnbln12),jmlbagi);
                updatesusut(id_ak,StrToInt(thnblnakhir),jmlbagi+bagiselisih);
              end
              else
              begin
                insertsusut(id_ak,StrToInt(thnbln12),jmlbagi);
              end;
              totaljmlbagi := totaljmlbagi+jmlbagi;
          //  end;
          end;

          Memo1.Lines.Add('Proses Susut Id Asset:'+IntToStr(Qass.FieldByName('idasset_ak').AsInteger));
          cxProgressBar1.Position :=cxProgressBar1.Position+1;
          Application.ProcessMessages;
          Qass.Next;
        end;
      end
      else
      begin
        Memo1.Lines.Add('Tidak Ada Data Asset Di Jatuh Tempo Setelah Tahun Berjalan..!');
      end;


      Qcek.Close;
      Qcek.SQL.Clear;
      Qcek.SQL.Add('SELECT * FROM ju where tipejurnal=:tipejurnal and tanggal=:tanggal');
      Qcek.ParamByName('tanggal').AsDate := akhirbulan;
      Qcek.ParamByName('tipejurnal').AsString :='JURNAL PENYUSUTAN';
      Qcek.Open;
      if Qcek.RecordCount>0 then
      begin
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('DELETE FROM ju where idju=:idju;');
        Qex.SQL.Add('DELETE FROM ju_ where idju=:idju;');
        Qex.ParamByName('idju').AsInteger := Qcek.fieldbyname('idju').AsInteger;
        Qex.Execute;
      end;



    // Jurnal Penyusutan    DEBET
      dm.Qcek.Close;
      dm.Qcek.SQL.Clear;
      dm.Qcek.SQL.Add('select cariidjurnal() as nomor');
      dm.Qcek.Open;
      idju := dm.Qcek.fieldbyname('nomor').AsInteger;

      Memo1.Lines.Add('--PROSES PENYUSUTAN--');
      Qass.Close;
      Qass.SQL.Clear;
      Qass.SQL.Add('SELECT a.namaasset,a.idcoa,SUM(IFNULL(b.jumlah,0)) AS jmlsusutini,c.idtipe3,c.namaakun,d.idcoabiaya FROM asset_ak a');
      Qass.SQL.Add('LEFT JOIN (SELECT SUM(jumlah) AS jumlah,idasset_ak FROM `asset_ak_susut` WHERE periode=:periode GROUP BY idasset_ak) b  ON a.idasset_ak=b.idasset_ak');
      Qass.SQL.Add('LEFT JOIN masterakun c ON a.idcoa=c.idcoa LEFT JOIN set_penyusutan d ON c.idtipe3=d.idtipe3 WHERE IFNULL(b.jumlah,0) > 0 GROUP BY d.idcoabiaya');
      Qass.ParamByName('periode').AsString := cxComboBox2.Text;
      Qass.Open;
      totalju := 0;
      if Qass.RecordCount > 0 then
      begin


        for I := 1 to Qass.RecordCount do
        begin
          dm.insertdataju_(
          Qass.FieldByName('idcoabiaya').AsInteger,
          idju,
          akhirbulan,
          Qass.FieldByName('jmlsusutini').AsCurrency,
          0,
          '00');

          totalju := totalju+Qass.FieldByName('jmlsusutini').AsCurrency;
          Qass.Next;
        end;
      end
      else
      begin
        MessageDlg('Tidak ada data untuk cek penyusutan Biaya..!',mtError,[mbok],0);
        Memo1.Lines.Add('ERROR - Tidak ada data untuk cek penyusutan Biaya!');
      end;

    // Jurnal Penyusutan KREDIT

      Qass.Close;
      Qass.SQL.Clear;
      Qass.SQL.Add('SELECT a.namaasset,a.idcoa,SUM(IFNULL(b.jumlah,0)) AS jmlsusutini,c.idtipe3,c.namaakun,d.idcoaakm FROM asset_ak a');
      Qass.SQL.Add('LEFT JOIN (SELECT SUM(jumlah) AS jumlah,idasset_ak FROM `asset_ak_susut` WHERE periode=:periode GROUP BY idasset_ak) b  ON a.idasset_ak=b.idasset_ak');
      Qass.SQL.Add('LEFT JOIN masterakun c ON a.idcoa=c.idcoa LEFT JOIN set_penyusutan d ON c.idtipe3=d.idtipe3 WHERE IFNULL(b.jumlah,0) > 0 GROUP BY d.idcoaakm');
      Qass.ParamByName('periode').AsString := cxComboBox2.Text;
      Qass.Open;
      if Qass.RecordCount > 0 then
      begin
        for I := 1 to Qass.RecordCount do
        begin
          dm.insertdataju_(
          Qass.FieldByName('idcoaakm').AsInteger,
          idju,
          akhirbulan,
          0,
          Qass.FieldByName('jmlsusutini').AsCurrency,
          '00');

          Qass.Next;
        end;
      end
      else
      begin
        MessageDlg('Tidak ada data untuk cek kumulasi Penyusutan..!',mtError,[mbok],0);
        Memo1.Lines.Add('ERROR - Tidak ada data untuk cek Akumulasi Penyusutan..!');
      end;



      dm.insertdataju(
      dm.noautojurnal(akhirbulan),
      'JURNAL PENYUSUTAN PERIODE '+cxComboBox1.Text,
      'JURNAL PENYUSUTAN PERIODE '+cxComboBox1.Text,
      'JURNAL PENYUSUTAN',
      totalju,
      akhirbulan,
      idju);

      MessageDlg('Proses Penyusutan Selesai !',mtInformation,[mbok],0);
      cxProgressBar1.Visible := false;
      cxButton2.Visible := true;
      Memo1.Lines.Add('--- PROSES PENYUSUTAN SELESAI ---');

      Conn1.Commit;


    end;
  except
    on e:exception do
    begin
      MessageDlg('Terdapat Kesalahan..!'+#13+e.Message,mtError,[mbok],0);
      Memo1.Lines.Add('ERROR : '+e.Message);
      cxProgressBar1.Visible := false;
      cxButton2.Visible := true;
      dm.Conn1.Rollback;
    end;

  end;


end;

procedure Tfotambahsusut.cxComboBox1PropertiesChange(Sender: TObject);
begin
  cxComboBox2.ItemIndex := cxComboBox1.ItemIndex;
end;

procedure Tfotambahsusut.FormShow(Sender: TObject);
begin
  Memo1.Clear;
  cxProgressBar1.Visible := false;
  dm.isicombo2('periodeposting',cxComboBox1,cxComboBox2);
end;

procedure Tfotambahsusut.insertsusut(_idasset_ak,_periode : integer;_jumlah: variant);
begin
  dm.Qex.Close;
  dm.Qex.SQL.Clear;
  dm.Qex.SQL.Add('INSERT INTO asset_ak_susut VALUES (:idasset_ak,:periode,:jumlah)');
  dm.Qex.ParamByName('idasset_ak').AsInteger :=  _idasset_ak;
  dm.Qex.ParamByName('periode').AsInteger := _periode;
  dm.Qex.ParamByName('jumlah').Value :=_jumlah;
  dm.Qex.Execute;
end;

procedure Tfotambahsusut.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  Self.Close;
end;

procedure Tfotambahsusut.updatesusut(_idasset_ak, _periode: integer;
  _jumlah: variant);
begin
  dm.Qex.Close;
  dm.Qex.SQL.Clear;
  dm.Qex.SQL.Add('update asset_ak_susut  SET jumlah=:jumlah where idasset_ak=:idasset_ak and periode=:periode');
  dm.Qex.ParamByName('idasset_ak').AsInteger :=  _idasset_ak;
  dm.Qex.ParamByName('periode').AsInteger := _periode;
  dm.Qex.ParamByName('jumlah').Value :=_jumlah;
  dm.Qex.Execute;
end;

end.
