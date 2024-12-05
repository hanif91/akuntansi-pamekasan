unit uhapussusut;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinsDefaultPainters, scDevExStyleAdapter, cxControls,
  cxContainer, cxEdit, cxLabel, Vcl.ComCtrls, RzDTP, Vcl.StdCtrls, cxButtons,
  RzLabel, RzTabs, Vcl.ExtCtrls, RzPanel;

type
  Tfohpspenyusutan = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    cxButton2: TcxButton;
    RzDateTimePicker1: TRzDateTimePicker;
    cxLabel2: TcxLabel;
    RzDateTimePicker2: TRzDateTimePicker;
    cxLabel1: TcxLabel;
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fohpspenyusutan: Tfohpspenyusutan;

implementation

{$R *.dfm}

uses udm,dateutils;

procedure Tfohpspenyusutan.cxButton2Click(Sender: TObject);
const
   bln : array[1..12] of string = ('01','02','03','04','05','06','07','08','09','10','11','12');
var
  tahun,periode,thn : string;
  i,jml,maxjml : byte;

begin
  tahun  := FormatDateTime('yyyy',RzDateTimePicker1.Date);
  periode := FormatDateTime('yyyymm',RzDateTimePicker2.Date);
  jml := 0;

  with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('Select * from periodeposting where left(periode,4)=:tahun');
    qcek.ParamByName('tahun').AsString := tahun;
    Qcek.Open;

    maxjml := Qcek.RecordCount;
  end;
  for I := 1 to maxjml do
  begin
    jml := jml+dm.cekstatusaktifperiodeposting(tahun+bln[i]);
  end;

  if jml<maxjml then
  begin
    MessageDlg('Masih ada jumlah Periode Posting yang di kunci pada tahun "'+tahun+'" ini.'+#13+'Harap Hubungi Bagian Akuntansi..!',mtWarning,[mbok],0);
    Exit;
  end;

  try
    if messagedlg('Yakin Akan Menghapus Penyusutan pada tahun "'+tahun+'" Periode Asset = "'+periode+'" ini ?',mtWarning,[mbyes,mbno],0)=mrYes then
    begin
      with dm do
      begin
        Conn1.StartTransaction;

        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('DELETE FROM ju_ WHERE idju IN (SELECT idju FROM ju WHERE date_format(tanggal,"%Y%m")=:periode AND tipejurnal="JURNAL PENYUSUTAN");');
        Qex.SQL.Add('DELETE FROM ju WHERE date_format(tanggal,"%Y%m")=:periode AND tipejurnal="JURNAL PENYUSUTAN";');
        Qex.SQL.Add('DELETE FROM asset_ak_susut WHERE LEFT(periode,4)=:tahun and idasset_ak IN (Select idasset_ak from asset_ak where date_format(tgl_asset,"%Y%m")=:periode);');
        Qex.ParamByName('tahun').AsString := tahun;
        Qex.ParamByName('periode').AsString := periode;
        Qex.Execute;

        Conn1.Commit;

        MessageDlg('Menghapus Penyusutan Selesai.',mtInformation,[mbok],0);
        ModalResult := mrok;

      end;
    end;
  except
    on e:exception do
    begin
      MessageDlg('Terdapat Kesalahan..!'+#13+e.Message,mtError,[mbok],0);
      dm.Conn1.Rollback;
    end;

  end;

end;

procedure Tfohpspenyusutan.FormCreate(Sender: TObject);
begin
  RzDateTimePicker1.Date := EncodeDate(YearOf(date),MonthOf(date),1);
  RzDateTimePicker2.Date := EncodeDate(YearOf(date),MonthOf(date),1);
end;

procedure Tfohpspenyusutan.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  self.close;
end;

end.
