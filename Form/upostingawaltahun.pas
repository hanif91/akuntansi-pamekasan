unit upostingawaltahun;

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
  Tfopostingawaltahun = class(TForm)
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
    Qunit: TMyQuery;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
  private
    mythread : TThread;
    tahun,tahunlast : string;
     flag,flagreport : byte;
    { Private declarations }
  public
    { Public declarations }
    procedure generatelr;
  end;

var
  fopostingawaltahun: Tfopostingawaltahun;

implementation

{$R *.dfm}

uses udm,dateutils,strutils;

procedure Tfopostingawaltahun.cxButton2Click(Sender: TObject);
begin

  flagreport := 1;
  flag := 0;
  Timer1.Enabled := true;
  tahun := FormatDateTime('yyyy',RzDateTimePicker1.Date);



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
    MessageDlg('Posting Awal Tahun harus lebih besar dari tahun posting terakhir!',mtWarning,[mbok],0);
    Exit;
  end;
  if MessageDlg('Yakin Akan Proses Posting Awal Tahun "'+tahun+'" ini ?',mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    if StrToInt(tahun)=StrToInt(tahunlast) then
    begin
      if MessageDlg('Tahun Sudah Pernah Di posting ..'+#13+'Posting ulang akan mengakibatkan data awal neraca,dan anggaran terhapus..'+#13+'Yakin Posting Ulang Tahun "'+#13+tahun+'" ini?'
      ,mtConfirmation,[mbyes,mbno],0)=mryes then
      begin
        with dm do
        begin
          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('delete from anggaranlr where left(periode,4)=:tahun');
          Qex.ParamByName('tahun').AsString := tahun;
          Qex.Execute;

          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('delete from anggaranpu where left(periode,4)=:tahun');
          Qex.ParamByName('tahun').AsString := tahun;
          Qex.Execute;

          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('delete from saldoawal where tahun=:tahun');
          Qex.ParamByName('tahun').AsString := tahun;
          Qex.Execute;
        end;
      end
      else
      begin
        Exit;
      end;
    end;
    Qunit.Close;
    Qunit.SQL.Clear;
    Qunit.SQL.Add('select * from unit_kerja order by idunit');
    Qunit.Open;

    mythread := TThread.CreateAnonymousThread(generatelr);
    mythread.FreeOnTerminate := true;
    mythread.Start;
  end;

end;

procedure Tfopostingawaltahun.FormShow(Sender: TObject);
begin
  RzDateTimePicker1.Date := EncodeDate(yearof(date),MonthOf(date),1);
  with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select tahun from postingtahun order by tahun desc limit 1');
    Qcek.Open;
    cxTextEdit1.Text := 'Tahun : '+Qcek.FieldByName('tahun').AsString;
  end;
end;

procedure Tfopostingawaltahun.generatelr;
  const bln : array [1..12] of string = ('01','02','03','04','05','06','07','08','09','10','11','12');
var
  i,j : integer;
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

        for j := 1 to Qunit.RecordCount do
        begin
          for I := 1 to 12 do
          begin
            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('INSERT INTO anggaranlr SELECT idcoa,:periode,0,:idunit FROM `idakunbiayapend`');
            Qex.ParamByName('periode').AsString := tahun+bln[i];
            Qex.ParamByName('idunit').AsInteger := Qunit.FieldByName('idunit').AsInteger;
            Qex.Execute;
          end;
          Qunit.Next;
        end;

        for I := 1 to 12 do
        begin
          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('INSERT INTO anggaranpu SELECT id,:periode,0 FROM `tipearuskas_l`');
          Qex.ParamByName('periode').AsString := tahun+bln[i];
          Qex.Execute;
        end;
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('INSERT INTO saldoawal SELECT idcoa,0,0,:tahun FROM `idakunaktivapasiva`');
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

procedure Tfopostingawaltahun.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  self.Close;
end;

procedure Tfopostingawaltahun.Timer1Timer(Sender: TObject);
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
      Qex.SQL.Add('replace into postingtahun values (:tahun,NOW())');
      Qex.ParamByName('tahun').AsString := tahun;
      Qex.Execute;

      Qcek.Close;
      Qcek.SQL.Clear;
      Qcek.SQL.Add('select tahun from postingtahun order by tahun desc limit 1');
      Qcek.Open;
      cxTextEdit1.Text := 'Tahun : '+Qcek.FieldByName('tahun').AsString;
    end;
    MessageDlg('Proses Posting awal tahun Selesai!',mtInformation,[mbok],0);

  end;
end;

end.
