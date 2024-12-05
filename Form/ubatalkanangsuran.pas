unit ubatalkanangsuran;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.ExtCtrls, RzPanel, udm,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxLabel;

type
  Tfobatalkanangsuran = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxButton1: TcxButton;
    RzPanel3: TRzPanel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxButton2: TcxButton;
    lbljumlahangsuran: TcxLabel;
    lblkode: TcxLabel;
    lblnama: TcxLabel;
    lblnopinjaman: TcxLabel;
    lblperiode: TcxLabel;
    lblangsuranke: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    lbltglbayar: TcxLabel;
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    flagsuksescari : byte;
    { Private declarations }
  public
    { Public declarations }
    procedure posisi1;
    procedure posisi2;
  end;

var
  fobatalkanangsuran: Tfobatalkanangsuran;

implementation
uses dateutils;

{$R *.dfm}

procedure Tfobatalkanangsuran.cxButton1Click(Sender: TObject);
var
  tglA : TDate;
begin
  with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('CALL ceknoangsuran(:nopelunasan)');
    Qcek.ParamByName('nopelunasan').AsString := cxTextEdit1.Text;
    Qcek.Open;
    if qcek.RecordCount > 0 then
    begin
      tglA := IncDay(tglserver,mundurpembatalan);
      lblangsuranke.Caption := Qcek.FieldByName('noangsuran').AsString;
      lbljumlahangsuran.Caption := FormatCurr('#,##0',Qcek.FieldByName('total').AsCurrency);
      lblkode.Caption := Qcek.FieldByName('kodeanggota').AsString;
      lblnama.Caption := Qcek.FieldByName('namaanggota').AsString;
      lblnopinjaman.Caption := Qcek.FieldByName('nopinjaman').AsString;
      lblperiode.Caption := Qcek.FieldByName('periode').AsString;
      lbltglbayar.Caption := FormatDateTime('dd/mm/yyyy',Qcek.FieldByName('tglbayar').AsDateTime);
      posisi2;
      if Qcek.FieldByName('tglbayar').AsDateTime <= tglA then
      begin
        cxButton2.Enabled := true;
      end
      else
      begin
        cxButton1.Enabled := false;
      end;
      flagsuksescari := 1;
      posisi2;
    end
    else
    begin
      MessageDlg('No. Pembayaran Tidak Valid..!',mtWarning,[mbok],0);
    end;
  end;

end;

procedure Tfobatalkanangsuran.cxButton2Click(Sender: TObject);
begin
  if MessageDlg('Yakin Membatalkan Angsuran dengan No "'+cxTextEdit1.Text+'" ini ?',mtWarning,[mbyes,mbno],0)=mrYes then
  begin
    with dm do
    begin
      try
        Conn1.StartTransaction;

        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('insert into batal_angsuran (nopinjaman,periode,nopelunasan,namauser,waktu,tglbayar)');
        Qex.SQL.Add('SELECT nopinjaman,periode,nopelunasan,:namauser,NOW(),tglbayar from d_angsuran where nopelunasan=:nopelunasan');
        Qex.ParamByName('namauser').AsString := namauserlogin;
        Qex.ParamByName('nopelunasan').AsString := cxTextEdit1.Text;
        Qex.Execute;

        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('Update d_angsuran set denda=0,jumlah=jumlah-denda,flaglunas="0",tglbayar=NULL,waktuupdate=now(),nopelunasan=NULL,kasdebet=NULL where nopelunasan=:nopelunasan');
        Qex.ParamByName('nopelunasan').AsString := cxTextEdit1.Text;
        Qex.Execute;

        Conn1.Commit;

        MessageDlg('Pembatalan Berhasil.',mtConfirmation,[mbok],0);

        cxTextEdit1.Text := '';
        posisi1;
      except
        on e: exception do
        begin
          MessageDlg('Terdapat Kesalahan Pembatalan..!'+#13+e.Message,mtWarning,[mbok],0);
          Conn1.Rollback;
        end;
      end;
    end;

  end;
end;

procedure Tfobatalkanangsuran.cxTextEdit1PropertiesChange(Sender: TObject);
begin
  if flagsuksescari = 1 then
  begin
    posisi1;
    flagsuksescari := 0;
  end;
end;

procedure Tfobatalkanangsuran.FormShow(Sender: TObject);
begin
  posisi1;
  flagsuksescari := 0;
  cxTextEdit1.Text := '';
end;

procedure Tfobatalkanangsuran.posisi1;
begin
  self.Height := 87;
end;

procedure Tfobatalkanangsuran.posisi2;
begin
  self.Height := 341;
end;

procedure Tfobatalkanangsuran.RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
begin
  self.Close;
end;

end.
