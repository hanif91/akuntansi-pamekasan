unit updpk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.ExtCtrls, RzPanel,
  dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinTheBezier, cxPC,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  Vcl.Menus, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, MemDS, DBAccess,
  MyAccess, cxProgressBar, cxDropDownEdit, RzButton, cxTextEdit, cxCheckBox,
  cxLabel, cxMaskEdit, cxCalendar, Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxDockPanel, dxDockControl, RzLabel, frxClass,
  frxDesgn, frxDBSet, cxCurrencyEdit, dxSkinsDefaultPainters,
  scDevExStyleAdapter;

type
  Tfopdpk = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    Qjrna: TMyQuery;
    TabSheet1: TRzTabSheet;
    RzPanel1setorsimp: TRzPanel;
    cxButton1: TcxButton;
    cxLabel1: TcxLabel;
    RzLabel1: TRzLabel;
    cxDateEdit1: TcxDateEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxLabel2: TcxLabel;
    Qvdpk: TMyQuery;
    MyDataSource1: TMyDataSource;
    cxGrid1DBTableView1ket: TcxGridDBColumn;
    cxGrid1DBTableView1total: TcxGridDBColumn;
    cxGrid1DBTableView1denda: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1meterai: TcxGridDBColumn;
    cxGrid1DBTableView1angsuran: TcxGridDBColumn;
    cxGrid1DBTableView1ppn: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxButton2: TcxButton;
    cxProgressBar1: TcxProgressBar;
    procedure FormShow(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
        lastdate : TDate;
  public
    { Public declarations }
    procedure prosesjurnal;
    procedure viewjurnal;
    procedure exportexcel;
    procedure kondisi1;
    procedure kondisi2;
    procedure kondisiawal;
  end;

var
  fopdpk: Tfopdpk;

implementation

{$R *.dfm}

uses udm,dateutils,strutils;

procedure Tfopdpk.cxButton1Click(Sender: TObject);
begin
  try
    if dm.cekstatusaktifperiodeposting(FormatDateTime('yyyymm',cxDateEdit1.Date))=0 then
    begin
      MessageDlg('Periode "'+FormatDateTime('yyyymm',cxDateEdit1.Date)+'" sudah dikunci / Belum dibuat !'+#13+'Harap Hubungi Bagian Akuntansi..!',mtWarning,[mbok],0);
      Exit;
    end;


    if (Qvdpk.Active)  then
    begin
      if (Qvdpk.RecordCount = 0) then
      begin
        MessageDlg('Tidak Ada Data.!',mtWarning,[mbok],0);
      end
      else
      begin
        kondisi1;
        cxProgressBar1.BringToFront;
        prosesjurnal;
        MessageDlg('Data Berhasil Disimpan..!',mtInformation,[mbok],0);
        kondisi2;
        Qvdpk.Close;
        cxProgressBar1.SendToBack;
      end;

    end;
  except
    on e:exception do
    begin
      MessageDlg(E.Message,mtWarning,[mbok],0);
      kondisi2;
      cxProgressBar1.SendToBack;
      Qvdpk.Close;
    end;
  end;
end;

procedure Tfopdpk.cxButton2Click(Sender: TObject);
begin
  if cxDateEdit1.Text <>'' then
  begin
    if dm.konekconnbilling then
    begin
      try
        with dm do
        begin
          Qcek.Close;
          Qcek.SQL.Clear;
          qcek.SQL.Add('select id from dpk where tanggal=:periode limit 1');
          Qcek.ParamByName('periode').AsDate := cxDateEdit1.date;
          Qcek.Open;
          if Qcek.RecordCount>0 then
          begin
            if MessageDlg('Data Penerimaan tanggal : '+cxDateEdit1.Text+' Sudah ada!'+#13+'Apakah Anda mau melakukan Proses Ulang..?',mtConfirmation,[mbyes,mbno],0)=mrno then
            begin
              Qvdpk.Close;
              Exit;
            end;
          end;
          kondisi1;
          viewjurnal;
          kondisi2;
        end;
      except
        on e:exception do
        begin
          MessageDlg(E.Message,mtWarning,[mbok],0);
          kondisi1;
          Qvdpk.Close;
        end;
      end;
    end
    else
    begin
      MessageDlg('Tidak Bisa Konek Ke database Billing..!'+#13+'Harap Hubungi Administrator..!',mtInformation,[mbok],0);
    end;
  end;
end;

procedure Tfopdpk.exportexcel;
begin

end;

procedure Tfopdpk.FormShow(Sender: TObject);
begin
  kondisiawal;
end;

procedure Tfopdpk.kondisi1;
begin
  cxButton1.Enabled := false;
end;

procedure Tfopdpk.kondisi2;
begin
  cxButton1.Enabled := true;
end;


procedure Tfopdpk.kondisiawal;
begin
  cxDateEdit1.Text := '';
  Qvdpk.Close;
  qvdpk.Close;
  kondisi1;
end;

procedure Tfopdpk.prosesjurnal;
var
  i : integer;
begin
  with dm do
  begin
    Qcek2.Close;
    Qcek2.SQL.Clear;
    Qcek2.SQL.Add('CALL view_dpk_detail(:tgl)');
    Qcek2.ParamByName('tgl').AsDate := cxDateEdit1.Date;
    Qcek2.Open;
    if Qcek2.RecordCount>0 then
    begin
      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('truncate dump_dpk');
      Qex.Execute;

      cxProgressBar1.Position := 0;
      cxProgressBar1.Properties.Max := Qcek2.RecordCount;
      for i := 1 to Qcek2.RecordCount do
      begin
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('Insert into dump_dpk values (0,:tanggal,:kodeunit,:namaunit,:kodegol,:golongan,:keterangan,:kodedebet,:jumlah,:denda,:meterai,:angsuran,:ppn,:tglpost,:flagair,:kodepen,:jenispen,:namauser)');
        Qex.ParamByName('tanggal').AsDate := Qcek2.FieldByName('tgl_bayar').AsDateTime;
        Qex.ParamByName('kodeunit').AsString := Qcek2.FieldByName('kodeunit').AsString;
        Qex.ParamByName('namaunit').AsString := Qcek2.FieldByName('namaunit').AsString;
        Qex.ParamByName('kodegol').AsString := Qcek2.FieldByName('kodegol').AsString;
        Qex.ParamByName('golongan').AsString := Qcek2.FieldByName('golongan').AsString;
        Qex.ParamByName('keterangan').AsString := Qcek2.FieldByName('ket').AsString;
        Qex.ParamByName('kodedebet').AsString := Qcek2.FieldByName('nama_loket').AsString;
        Qex.ParamByName('jumlah').AsCurrency := Qcek2.FieldByName('jumlah').AsCurrency;
        Qex.ParamByName('denda').AsCurrency := Qcek2.FieldByName('denda').AsCurrency;
        Qex.ParamByName('meterai').AsCurrency := Qcek2.FieldByName('meterai').AsCurrency;
        Qex.ParamByName('angsuran').AsCurrency := Qcek2.FieldByName('angsuran').AsCurrency;
        Qex.ParamByName('ppn').AsCurrency := Qcek2.FieldByName('ppn').AsCurrency;
        Qex.ParamByName('tglpost').AsDateTime := Now;
        Qex.ParamByName('flagair').AsString := Qcek2.FieldByName('flagair').AsString;
        Qex.ParamByName('kodepen').AsInteger := 1;
        Qex.ParamByName('jenispen').AsString := Qcek2.FieldByName('jenispen').AsString;
        Qex.ParamByName('namauser').AsString := userlogin;
        Qex.Execute;

        Qcek2.Next;
        cxProgressBar1.Position := cxProgressBar1.Position+1;
        Application.ProcessMessages;
      end;

      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('UPDATE dump_dpk a,set_kas_air b set a.kodepen=b.flagbank where a.namauser=:namauser and a.kodedebet=b.loket');
      Qex.ParamByName('namauser').AsString := userlogin;
      Qex.Execute;

      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('CALL insert_dpk(:tgl,:namauser)');
      Qex.ParamByName('tgl').AsDate := cxDateEdit1.Date;
      Qex.ParamByName('namauser').AsString := userlogin;
      Qex.Execute;

    end
    else
    begin
      MessageDlg('Tidak ada Data..!',mtWarning,[mbok],0);
    end;

  end;
end;

procedure Tfopdpk.RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
begin
  close;
  dm.conn2.Close;
end;

procedure Tfopdpk.viewjurnal;
begin
  Qvdpk.Close;
  Qvdpk.ParamByName('periode').AsDate := cxDateEdit1.Date;
  Qvdpk.Open;
end;

end.
