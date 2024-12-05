unit uupdatesaldoawal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinsDefaultPainters, cxControls, cxContainer, cxEdit,
  cxMaskEdit, cxDropDownEdit, cxLabel, cxTextEdit, cxProgressBar, Vcl.StdCtrls,
  cxButtons, RzTabs, Vcl.ExtCtrls, RzPanel, Data.DB, MemDS, DBAccess, MyAccess,
  dxActivityIndicator, Vcl.ComCtrls, RzDTP, scDevExStyleAdapter;

type
  Tfoupdatesaldoawal = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    cxButton2: TcxButton;
    cxLabel2: TcxLabel;
    Timer1: TTimer;
    dxActivityIndicator1: TdxActivityIndicator;
    RzDateTimePicker1: TRzDateTimePicker;
    RzDateTimePicker2: TRzDateTimePicker;
    cxLabel1: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure RzDateTimePicker1Change(Sender: TObject);
  private
    mythread : TThread;
    tahun,tahunlast : string;
     flag,flagreport,flg : byte;
     tglawaltahun,tglsdbulanini,tglsdbulanlalu : tdate;
    { Private declarations }
  public
    { Public declarations }
    procedure generatelr;
  end;

var
  foupdatesaldoawal: Tfoupdatesaldoawal;

implementation

{$R *.dfm}

uses udm,dateutils,strutils;

procedure Tfoupdatesaldoawal.cxButton2Click(Sender: TObject);
begin
  tahun := FormatDateTime('yyyy',RzDateTimePicker1.Date);
  tahunlast := FormatDateTime('yyyy',RzDateTimePicker2.Date);
  with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select tahun from postingtahun order by tahun desc limit 1');
    Qcek.open;
    tahunlast := Qcek.FieldByName('tahun').AsString;
  end;

  if StrToInt(tahun)<StrToInt(tahunlast) then
  begin
    MessageDlg('Update saldo Awal harus tahun periode terbaru.!',mtWarning,[mbok],0);
    Exit;
  end;

  flagreport := 1;
  flag := 0;
  Timer1.Enabled := true;

  tahun := FormatDateTime('yyyy',RzDateTimePicker1.Date);
  tahunlast := FormatDateTime('yyyy',RzDateTimePicker2.Date);
  tglsdbulanini := RzDateTimePicker2.Date;
  tglsdbulanlalu := EncodeDate(YearOf(tglsdbulanini),MonthOf(IncMonth(tglsdbulanini,-1)),1);
  flg := DaysInMonth(tglsdbulanlalu);
  tglsdbulanlalu := EncodeDate(YearOf(tglsdbulanlalu),MonthOf(tglsdbulanlalu),flg);
  tglawaltahun := EncodeDate(YearOf(tglsdbulanini),1,1);




  with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select tahun from postingtahun where tahun=:tahun');
    Qcek.ParamByName('tahun').AsString := tahun;
    Qcek.open;
    if Qcek.RecordCount=0 then
    begin
      MessageDlg('Tahun "'+tahun+'"'+' Belum dilakukan Posting Awal Tahun..!'+#13+'Harap Lakukan Posting Awal Tahun dahulu..!',mtWarning,[mbok],0);
      Exit;
    end;
  end;

  if MessageDlg('Yakin Akan Proses Update Saldo Awal Tahun "'+tahun+'" Berdasarkan Neraca Akhir Tahun "'+tahunlast+'" ini?',mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    mythread := TThread.CreateAnonymousThread(generatelr);
    mythread.FreeOnTerminate := true;
    mythread.Start;
  end;

end;

procedure Tfoupdatesaldoawal.FormShow(Sender: TObject);
begin
  RzDateTimePicker1.Date := EncodeDate(yearof(date),12,31);
  RzDateTimePicker2.Date := IncYear(RzDateTimePicker1.Date,-1);
  RzDateTimePicker1.SetFocus;
end;

procedure Tfoupdatesaldoawal.generatelr;
  const bln : array [1..12] of string = ('01','02','03','04','05','06','07','08','09','10','11','12');
var
  i : integer;
begin
  try
    TThread.Synchronize (TThread.CurrentThread,
    procedure ()
    begin
      cxButton2.Enabled := false;
      cxButton2.Visible := false;
      dxActivityIndicator1.Active := true;
    end);

    try

      with dm do
      begin
        Conn1.StartTransaction;

        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('CALL `ex_nrc_detail`(:awaltahun,:tglbulanini,:tglbulanlalu,:namauser);');
        Qex.ParamByName('awaltahun').AsDate := tglawaltahun;
        Qex.ParamByName('tglbulanini').AsDate := tglsdbulanini;
        Qex.ParamByName('tglbulanlalu').AsDate := tglsdbulanlalu;
        Qex.ParamByName('namauser').AsString := userlogin;
        Qex.Execute;

        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('update saldoawal set blnini=0 where tahun=:tahun');
        Qex.ParamByName('tahun').AsString := tahun;
        Qex.Execute;


        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('CREATE TEMPORARY TABLE IF NOT EXISTS dumpupdatesa LIKE dump_nrc;');
        Qex.SQL.Add('TRUNCATE dumpupdatesa;');
        Qex.SQL.Add('INSERT INTO dumpupdatesa SELECT * FROM dump_nrc WHERE nmuser=:nmuser AND blnini<>0 ORDER BY kode;');
        Qex.SQL.Add('UPDATE saldoawal a,(SELECT a.*,b.idcoa FROM dumpupdatesa a,coa b WHERE a.kode=b.kodeakun) b SET a.blnini=b.blnini WHERE a.tahun=:tahun AND a.idcoa=b.idcoa;');
        Qex.SQL.Add('DROP TABLE dumpupdatesa;');
        Qex.ParamByName('nmuser').AsString := userlogin;
        Qex.ParamByName('tahun').AsString := tahun;
        Qex.Execute;

        Conn1.Commit;



      end;
    except
      on e:exception do
      begin
        MessageDlg(e.Message,mtError,[mbok],0);
        dm.Conn1.Rollback;
        flag:=1;
      end;
    end;

    TThread.Synchronize (TThread.CurrentThread,
    procedure ()
    begin
      flag:=1;
    end);
  except
    flag:=1;
  end;
end;

procedure Tfoupdatesaldoawal.RzDateTimePicker1Change(Sender: TObject);
begin
  RzDateTimePicker2.Date := IncYear(RzDateTimePicker1.Date,-1);
end;

procedure Tfoupdatesaldoawal.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  self.Close;
end;

procedure Tfoupdatesaldoawal.Timer1Timer(Sender: TObject);
begin
  if flag=1 then
  begin
    Timer1.Enabled := false;
    dxActivityIndicator1.Active := false;
    cxButton2.Enabled := true;
    cxButton2.Visible := true;
    dxActivityIndicator1.Active := false;
    flag:=0;
    MessageDlg('Update saldo awal tahun Selesai!',mtInformation,[mbok],0);

  end;
end;

end.
