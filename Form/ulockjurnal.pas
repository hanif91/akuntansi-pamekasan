unit ulockjurnal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinsDefaultPainters, cxControls, cxContainer, cxEdit,
  cxMaskEdit, cxDropDownEdit, cxLabel, cxTextEdit, cxProgressBar, Vcl.StdCtrls,
  cxButtons, RzTabs, Vcl.ExtCtrls, RzPanel, Data.DB, MemDS, DBAccess, MyAccess,
  dxActivityIndicator, Vcl.ComCtrls, RzDTP;

type
  Tfolockjurnal = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    cxButton2: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Timer1: TTimer;
    dxActivityIndicator1: TdxActivityIndicator;
    RzDateTimePicker1: TRzDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
  private
    mythread : TThread;
    tahun : string;
     flag,flagreport : byte;
    { Private declarations }
  public
    { Public declarations }
    procedure generatelr;
  end;

var
  folockjurnal: Tfolockjurnal;

implementation

{$R *.dfm}

uses udm,dateutils,strutils;

procedure Tfolockjurnal.cxButton2Click(Sender: TObject);
begin

  flagreport := 1;
  flag := 0;
  Timer1.Enabled := true;
  tahun := FormatDateTime('yyyy',RzDateTimePicker1.Date);
  mythread := TThread.CreateAnonymousThread(generatelr);
  mythread.FreeOnTerminate := true;
  mythread.Start;
end;

procedure Tfolockjurnal.FormShow(Sender: TObject);
begin
  RzDateTimePicker1.Date := EncodeDate(yearof(date),MonthOf(date),1);
  with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select tgllastlock from pengaturan');
    Qcek.Open;
    cxTextEdit1.Text := FormatDateTime('dd mm yyyy hh:nn:ss',Qcek.FieldByName('tgllastlock').AsDateTime);
  end;
end;

procedure Tfolockjurnal.generatelr;
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
        Qex.close;
        Qex.SQL.Clear;
        Qex.SQL.Add('CREATE TEMPORARY TABLE IF NOT EXISTS jurnal_back LIKE jurnal;');
        Qex.SQL.Add('TRUNCATE jurnal_back;');
        Qex.SQL.Add('INSERT INTO jurnal_back SELECT * FROM jurnal WHERE YEAR(tanggal)<>:thn;');
        Qex.ParamByName('thn').AsString := tahun;
        Qex.Execute;

        Qex.close;
        Qex.SQL.Clear;
        Qex.SQL.Add('CREATE TEMPORARY TABLE IF NOT EXISTS jurnalkas_back LIKE jurnal_kas;');
        Qex.SQL.Add('TRUNCATE jurnalkas_back;');
        Qex.SQL.Add('INSERT INTO jurnalkas_back SELECT * FROM jurnal_kas WHERE YEAR(tanggal)<>:thn;');
        Qex.ParamByName('thn').AsString := tahun;
        Qex.Execute;

        Qex.close;
        Qex.SQL.Clear;
        Qex.SQL.Add('CREATE TEMPORARY TABLE IF NOT EXISTS jurnalbb_back_tahun LIKE jurnal_bb_tahun;');
        Qex.SQL.Add('TRUNCATE jurnalbb_back_tahun;');
        Qex.SQL.Add('INSERT INTO jurnalbb_back_tahun SELECT * FROM jurnal_bb_tahun WHERE YEAR(tanggal)<>:thn;');
        Qex.ParamByName('thn').AsString := tahun;
        Qex.Execute;




        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('truncate jurnal;');
        Qex.SQL.Add('truncate jurnal_kas;');
        Qex.SQL.Add('truncate jurnal_bb_tahun;');
        Qex.Execute;

        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('INSERT INTO jurnal (idcoa,kodeakun,tanggal,tipetambah,debet,kredit,namauser,`type`,kodeunit) SELECT idcoa,kodeakun,tanggal,tipetambah,debet,kredit,namauser,`type`,kodeunit FROM jurnal_back;');
        Qex.SQL.Add('INSERT INTO jurnal_kas (idcoa,kodeakun,tanggal,tipetambah,debet,kredit,namauser,`type`,kodeunit,idaruskas) SELECT idcoa,kodeakun,tanggal,tipetambah,debet,kredit,namauser,`type`,kodeunit,idaruskas FROM jurnalkas_back;');
        Qex.SQL.Add('INSERT INTO jurnal_bb_tahun (idcoa,kodeakun,uraian,tanggal,tipetambah,debet,kredit,`type`,ref,indek,namauser,kodeunit) SELECT idcoa,kodeakun,uraian,tanggal,tipetambah,debet,kredit,`type`,ref,indek,namauser,kodeunit FROM jurnalbb_back_tahun;');
        Qex.Execute;

        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('CALL `insertalljurnaltahun`(:namauser,:thn)');
        Qex.ParamByName('thn').AsString := tahun;
        Qex.ParamByName('namauser').AsString := userlogin;
        Qex.Execute;

        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('CALL `insertalljurnaltahun_kas`(:namauser,:thn)');
        Qex.ParamByName('thn').AsString := tahun;
        Qex.ParamByName('namauser').AsString := userlogin;
        Qex.Execute;

        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('CALL `insertalljurnaltahun_bb_v2`(:namauser,:thn)');
        Qex.ParamByName('thn').AsString := tahun;
        Qex.ParamByName('namauser').AsString := userlogin;
        Qex.Execute;

      end;
    except
      on e:exception do
      begin
        MessageDlg(e.Message,mtError,[mbok],0);
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

procedure Tfolockjurnal.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  self.Close;
end;

procedure Tfolockjurnal.Timer1Timer(Sender: TObject);
begin
  if flag=1 then
  begin
    Timer1.Enabled := false;
    dxActivityIndicator1.Active := false;
    cxButton2.Enabled := true;
    cxButton2.Visible := true;
    dxActivityIndicator1.Active := false;
    flag:=0;
    with dm do
    begin
      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('update pengaturan set tgllastlock=now()');
      Qex.Execute;
    end;
    MessageDlg('Proses Lock Selesai!',mtInformation,[mbok],0);

  end;
end;

end.
