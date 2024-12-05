unit ujbk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxPC, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxMemo, Vcl.Menus,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxCheckBox,
  cxLabel, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, RzButton, dxDockPanel, dxDockControl,
  Vcl.ExtCtrls, RzPanel, RzTabs, DBAccess, MyAccess, MemDS,
  cxGridCustomPopupMenu, cxGridPopupMenu, utambahjpk, frxClass, frxDBSet,
  frxDesgn, usettgllap, System.Actions, Vcl.ActnList, utambahjbk;

type
  Tfojbk = class(TForm)
    cxGridPopupMenu1: TcxGridPopupMenu;
    PopupMenu1: TPopupMenu;
    Koreksi1: TMenuItem;
    Qdju: TMyQuery;
    Qdjukodeakun: TStringField;
    Qdjunamaakun: TStringField;
    Qdjudebet: TFloatField;
    Qdjukredit: TFloatField;
    Qdjuidcoa: TIntegerField;
    ddju: TMyDataSource;
    Qju: TMyQuery;
    Qjuidju: TIntegerField;
    Qjunotrans: TStringField;
    Qjupenjelasan: TMemoField;
    Qjujumlah: TFloatField;
    Qjutanggal: TDateField;
    Qjutipejurnal: TStringField;
    Dju: TMyDataSource;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1setorsimp: TRzPanel;
    RzPanel2: TRzPanel;
    dxDockSite1: TdxDockSite;
    dxLayoutDockSite4: TdxLayoutDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxLayoutDockSite3: TdxLayoutDockSite;
    dxDockPanel2: TdxDockPanel;
    RzPanel1: TRzPanel;
    RzToolButton1: TRzToolButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1idju: TcxGridDBColumn;
    cxGrid1DBTableView1tipejurnal: TcxGridDBColumn;
    cxGrid1DBTableView1notrans: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1uraian: TcxGridDBColumn;
    cxGrid1DBTableView1penjelasan: TcxGridDBColumn;
    cxGrid1DBTableView1jumlah: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    dxDockPanel1: TdxDockPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1kodeakun: TcxGridDBColumn;
    cxGridDBTableView1namaakun: TcxGridDBColumn;
    cxGridDBTableView1debet: TcxGridDBColumn;
    cxGridDBTableView1kredit: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxDockPanel4: TdxDockPanel;
    cxButton5: TcxButton;
    cxDateEdit2: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxCheckBox2: TcxCheckBox;
    cxTextEdit1: TcxTextEdit;
    cxCheckBox1: TcxCheckBox;
    Qjunoref: TStringField;
    cxTextEdit2: TcxTextEdit;
    cxCheckBox3: TcxCheckBox;
    cxTextEdit3: TcxTextEdit;
    cxCheckBox4: TcxCheckBox;
    Qdetail: TMyQuery;
    RzToolButton2: TRzToolButton;
    frxDesigner1: TfrxDesigner;
    lapjpk: TfrxReport;
    db0: TfrxDBDataset;
    Qdjuid: TIntegerField;
    Qlap: TMyQuery;
    ActionList1: TActionList;
    F7: TAction;
    procedure cxButton5Click(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxCheckBox2Click(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure cxCheckBox3Click(Sender: TObject);
    procedure cxCheckBox4Click(Sender: TObject);
    procedure Koreksi1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure F7Execute(Sender: TObject);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fojbk: Tfojbk;

implementation

{$R *.dfm}

procedure Tfojbk.cxButton5Click(Sender: TObject);
begin
  Qju.Close;
  Qju.SQL.Clear;
  Qju.SQL.Add(Qju.SQLRefresh.Text);
  if cxCheckBox1.Checked then
  begin
    Qju.SQL.Add('where notrans like :notrans ');
    Qju.ParamByName('notrans').AsString := '%'+cxTextEdit1.Text+'%';
  end
  else
    Qju.SQL.Add('where idju > 0');
  if cxCheckBox2.Checked then
  begin
    Qju.SQL.Add('and tanggal between :tgl1 and :tgl2 ');
    Qju.ParamByName('tgl1').AsDate := cxDateEdit1.Date;
    Qju.ParamByName('tgl2').AsDate := cxDateEdit2.Date;
  end;
  if cxCheckBox3.Checked then
  begin
    Qju.SQL.Add('and noref like :noref ');
    Qju.ParamByName('noref').AsString := '%'+cxTextEdit2.Text+'%';
  end;
  if cxCheckBox4.Checked then
  begin
    Qju.SQL.Add('and penjelasan like :penjelasan ');
    Qju.ParamByName('penjelasan').AsString := '%'+cxTextEdit3.Text+'%';
  end;
  Qju.SQL.Add('order by tanggal,idju');
  Qju.Open;
  cxGrid1.SetFocus;
  cxGrid1DBTableView1.Controller.FocusedRowIndex := 0;
  cxGrid1DBTableView1.Controller.FocusedColumnIndex := 0;
end;

procedure Tfojbk.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked then
  begin
    cxTextEdit1.Enabled := True;
    cxTextEdit1.SetFocus;
  end
  else
  begin
    cxTextEdit1.Enabled := False;
  end;
end;

procedure Tfojbk.cxCheckBox2Click(Sender: TObject);
begin
  if cxCheckBox2.Checked then
  begin
    cxDateEdit1.Enabled := True;
    cxDateEdit2.Enabled := True;
    cxDateEdit1.SetFocus;
  end
  else
  begin
    cxDateEdit1.Enabled := false;
    cxDateEdit2.Enabled := false;
  end;
end;

procedure Tfojbk.cxCheckBox3Click(Sender: TObject);
begin
  if cxCheckBox3.Checked then
  begin
    cxTextEdit2.Enabled := True;
    cxTextEdit2.SetFocus;
  end
  else
  begin
    cxTextEdit2.Enabled := False;
  end;
end;

procedure Tfojbk.cxCheckBox4Click(Sender: TObject);
begin
  if cxCheckBox4.Checked then
  begin
    cxTextEdit3.Enabled := True;
    cxTextEdit3.SetFocus;
  end
  else
  begin
    cxTextEdit3.Enabled := False;
  end;
end;

procedure Tfojbk.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Qdju.Close;
  Qdju.SQL.Clear;
  Qdju.SQL.Add(Qdju.SQLRefresh.Text);
  Qdju.ParamByName('idju').AsInteger := Qjuidju.Value;
  Qdju.Open;
end;

procedure Tfojbk.cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    cxButton5.Click;
  end;
end;

procedure Tfojbk.F7Execute(Sender: TObject);
begin
  lapjpk.LoadFromFile(ExtractFilePath(Application.ExeName)+'report\lapjbk.fr3');
  frxDesigner1.OpenDir :=ExtractFilePath(Application.ExeName)+'report\';
  lapjpk.DesignReport;
end;

procedure Tfojbk.FormCreate(Sender: TObject);
begin
  cxDateEdit1.Date := Date;
  cxDateEdit2.Date := Date;
end;

procedure Tfojbk.FormShow(Sender: TObject);
begin
  cxButton5.Click;
end;

procedure Tfojbk.Koreksi1Click(Sender: TObject);
var
  i : integer;
begin
  with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('CALL ceknotransjbk(:notrans)');
    Qcek.ParamByName('notrans').AsString := Qjunoref.Text;
    Qcek.Open;
    if Qcek.RecordCount > 0 then
    begin
      if Qcek.Fields[0].AsString<>'-1' then
      begin
        if Qcek.FieldByName('kode').AsString='KK' then
        begin
          Qdetail.Close;
          Qdetail.SQL.Clear;
          Qdetail.SQL.Add('SELECT a.*,b.`idcoa` FROM d_kaskeluar a LEFT JOIN ketkas b ON a.namaketkas=b.namaketkas where a.notrans=:notrans');
          Qdetail.ParamByName('notrans').AsString :=Qjunoref.Text;
          Qdetail.Open;
          if Qdetail.RecordCount > 0 then
          begin
            try
              Conn1.StartTransaction;

              Qex.Close;
              Qex.SQL.Clear;
              Qex.SQL.Add('UPDATE jbk set penjelasan=:penjelasan,jumlah=:jumlah,tanggal=:tanggal where noref=:noref');
              Qex.ParamByName('penjelasan').AsString := Qcek.FieldByName('keterangan').AsString;
              Qex.ParamByName('jumlah').AsCurrency := Qcek.FieldByName('total').AsCurrency;
              Qex.ParamByName('tanggal').AsDate := Qcek.FieldByName('tanggal').AsDateTime;
              Qex.ParamByName('noref').AsString := Qjunoref.Text;
              Qex.Execute;

              Qex.Close;
              Qex.SQL.Clear;
              Qex.SQL.Add('delete from jbk_ where idju=:idju');
              Qex.ParamByName('idju').AsInteger := Qjuidju.Value;
              Qex.Execute;

              for i := 1 to Qdetail.RecordCount do
              begin
                Qex.Close;
                Qex.SQL.Clear;
                Qex.SQL.Add('Insert into jbk_ (idcoa,idju,tanggal,jenis,debet,kredit) value (:idcoa,:idju,:tanggal,:jenis,:debet,:kredit)');
                Qex.ParamByName('idcoa').AsInteger := Qdetail.FieldByName('idcoa').AsInteger;
                Qex.ParamByName('idju').AsInteger := Qjuidju.Value;
                Qex.ParamByName('tanggal').AsDate := Qcek.FieldByName('tanggal').AsDateTime;
                Qex.ParamByName('jenis').AsString := '';
                Qex.ParamByName('debet').AsCurrency := Qdetail.FieldByName('jumlah').AsCurrency;
                Qex.ParamByName('kredit').AsCurrency := 0;
                Qex.Execute;

                Qdetail.Next;
                Application.ProcessMessages;
              end;

              Qex.Close;
              Qex.SQL.Clear;
              Qex.SQL.Add('Insert into jbk_ (idcoa,idju,tanggal,jenis,debet,kredit) value (:idcoa,:idju,:tanggal,:jenis,:debet,:kredit)');
              Qex.ParamByName('idcoa').AsInteger := Qcek.FieldByName('idcoa').AsInteger;
              Qex.ParamByName('idju').AsInteger := Qjuidju.Value;
              Qex.ParamByName('tanggal').AsDate := Qcek.FieldByName('tanggal').AsDateTime;
              Qex.ParamByName('jenis').AsString := '';
              Qex.ParamByName('debet').AsCurrency := 0;
              Qex.ParamByName('kredit').AsCurrency := Qcek.FieldByName('total').AsCurrency;
              Qex.Execute;

              Conn1.Commit;
            except
              on e : exception do
              begin
                Conn1.Rollback;
                MessageDlg('Terdapat Kesalahan Hapus Data..!'+#13+e.Message,mtWarning,[mbok],0);
              end;
            end;
          end
          else
          begin
            MessageDlg('No Refrensi "'+Qjunoref.Text+'" Detail Transaksi Tidak Tersedia..!',mtWarning,[mbok],0);
            Conn1.StartTransaction;

            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('delete from jbk where noref=:noref;');
            Qex.SQL.Add('delete from jbk_ where idju=:idju');
            Qex.ParamByName('noref').AsString := Qjunoref.Value;
            Qex.ParamByName('idju').AsInteger := Qjuidju.Value;
            Qex.Execute;

            Conn1.Commit;
          end;

        end;

        if Qcek.FieldByName('kode').AsString='PJ' then
        begin
          try
            Conn1.StartTransaction;

            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('UPDATE jbk set penjelasan=:penjelasan,jumlah=:jumlah,tanggal=:tanggal where noref=:noref');
            Qex.ParamByName('penjelasan').AsString := Qcek.FieldByName('keterangan').AsString;
            Qex.ParamByName('jumlah').AsCurrency := Qcek.FieldByName('total').AsCurrency;
            Qex.ParamByName('tanggal').AsDate := Qcek.FieldByName('tanggal').AsDateTime;
            Qex.ParamByName('noref').AsString := Qjunoref.Text;
            Qex.Execute;

            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('delete from jbk_ where idju=:idju');
            Qex.ParamByName('idju').AsInteger := Qjuidju.Value;
            Qex.Execute;

            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('Insert into jbk_ (idcoa,idju,tanggal,jenis,debet,kredit) value (:idcoa,:idju,:tanggal,:jenis,:debet,:kredit)');
            Qex.ParamByName('idcoa').AsInteger := Qcek.FieldByName('idcoa').AsInteger;
            Qex.ParamByName('idju').AsInteger := Qjuidju.Value;
            Qex.ParamByName('tanggal').AsDate := Qcek.FieldByName('tanggal').AsDateTime;
            Qex.ParamByName('jenis').AsString := '';
            Qex.ParamByName('debet').AsCurrency := Qcek.FieldByName('total').AsCurrency;
            Qex.ParamByName('kredit').AsCurrency := 0;
            Qex.Execute;

            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('Insert into jbk_ (idcoa,idju,tanggal,jenis,debet,kredit) value (:idcoa,:idju,:tanggal,:jenis,:debet,:kredit)');
            Qex.ParamByName('idcoa').AsInteger := Qcek.FieldByName('idcoakredit').AsInteger;
            Qex.ParamByName('idju').AsInteger := Qjuidju.Value;
            Qex.ParamByName('tanggal').AsDate := Qcek.FieldByName('tanggal').AsDateTime;
            Qex.ParamByName('jenis').AsString := '';
            Qex.ParamByName('debet').AsCurrency := 0;
            Qex.ParamByName('kredit').AsCurrency := Qcek.FieldByName('total').AsCurrency;
            Qex.Execute;

            Application.ProcessMessages;

            Conn1.Commit;
          except
            on e : exception do
            begin
              Conn1.Rollback;
              MessageDlg('Terdapat Kesalahan Hapus Data..!'+#13+e.Message,mtWarning,[mbok],0);
            end;
          end;

        end;

        if Qcek.FieldByName('kode').AsString='LA' then
        begin
          try
            Conn1.StartTransaction;

            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('UPDATE jpk set penjelasan=:penjelasan,jumlah=:jumlah,tanggal=:tanggal where noref=:noref');
            Qex.ParamByName('penjelasan').AsString := Qcek.FieldByName('keterangan').AsString;
            Qex.ParamByName('jumlah').AsCurrency := Qcek.FieldByName('total').AsCurrency;
            Qex.ParamByName('tanggal').AsDate := Qcek.FieldByName('tanggal').AsDateTime;
            Qex.ParamByName('noref').AsString := Qjunoref.Text;
            Qex.Execute;

            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('delete from jpk_ where idju=:idju');
            Qex.ParamByName('idju').AsInteger := Qjuidju.Value;
            Qex.Execute;

            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('Insert into jpk_ (idcoa,idju,tanggal,jenis,debet,kredit) value (:idcoa,:idju,:tanggal,:jenis,:debet,:kredit)');
            Qex.ParamByName('idcoa').AsInteger := Qcek.FieldByName('idcoa').AsInteger;
            Qex.ParamByName('idju').AsInteger := Qjuidju.Value;
            Qex.ParamByName('tanggal').AsDate := Qcek.FieldByName('tanggal').AsDateTime;
            Qex.ParamByName('jenis').AsString := '';
            Qex.ParamByName('debet').AsCurrency := Qcek.FieldByName('total').AsCurrency;
            Qex.ParamByName('kredit').AsCurrency := 0;
            Qex.Execute;

            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('Insert into jpk_ (idcoa,idju,tanggal,jenis,debet,kredit) value (:idcoa,:idju,:tanggal,:jenis,:debet,:kredit)');
            Qex.ParamByName('idcoa').AsInteger := Qcek.FieldByName('idcoa').AsInteger;
            Qex.ParamByName('idju').AsInteger := Qjuidju.Value;
            Qex.ParamByName('tanggal').AsDate := Qcek.FieldByName('tanggal').AsDateTime;
            Qex.ParamByName('jenis').AsString := '';
            Qex.ParamByName('debet').AsCurrency := 0;
            Qex.ParamByName('kredit').AsCurrency := Qcek.FieldByName('pokok').AsCurrency;
            Qex.Execute;

            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('Insert into jpk_ (idcoa,idju,tanggal,jenis,debet,kredit) value (:idcoa,:idju,:tanggal,:jenis,:debet,:kredit)');
            Qex.ParamByName('idcoa').AsInteger := Qcek.FieldByName('idcoa').AsInteger;
            Qex.ParamByName('idju').AsInteger := Qjuidju.Value;
            Qex.ParamByName('tanggal').AsDate := Qcek.FieldByName('tanggal').AsDateTime;
            Qex.ParamByName('jenis').AsString := '';
            Qex.ParamByName('debet').AsCurrency := 0;
            Qex.ParamByName('kredit').AsCurrency := Qcek.FieldByName('bunga').AsCurrency;
            Qex.Execute;

            if Qcek.FieldByName('denda').AsCurrency > 0 then
            begin
              Qex.Close;
              Qex.SQL.Clear;
              Qex.SQL.Add('Insert into jpk_ (idcoa,idju,tanggal,jenis,debet,kredit) value (:idcoa,:idju,:tanggal,:jenis,:debet,:kredit)');
              Qex.ParamByName('idcoa').AsInteger := Qcek.FieldByName('idcoa').AsInteger;
              Qex.ParamByName('idju').AsInteger := Qjuidju.Value;
              Qex.ParamByName('tanggal').AsDate := Qcek.FieldByName('tanggal').AsDateTime;
              Qex.ParamByName('jenis').AsString := '';
              Qex.ParamByName('debet').AsCurrency := 0;
              Qex.ParamByName('kredit').AsCurrency := Qcek.FieldByName('denda').AsCurrency;
              Qex.Execute;
            end;

            Conn1.Commit;
          except
            on e : exception do
            begin
              Conn1.Rollback;
              MessageDlg('Terdapat Kesalahan Hapus Data..!'+#13+e.Message,mtWarning,[mbok],0);
            end;
          end;
        end;


        MessageDlg('Perbaharui Data Berhasil...!',mtConfirmation,[mbok],0);
        Qju.Refresh;
      end
      else
      begin
        MessageDlg('No Refrensi "'+Qjunoref.Text+'" Tidak Terdaftar..!',mtWarning,[mbok],0);
        Conn1.StartTransaction;
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('delete from jpk where noref=:noref;');
        Qex.SQL.Add('delete from jpk_ where idju=:idju');
        Qex.ParamByName('noref').AsString := Qjunoref.Value;
        Qex.ParamByName('idju').AsInteger := Qjuidju.Value;
        Qex.Execute;
        Conn1.Commit;
      end;
    end
    else
    begin
      MessageDlg('No Refrensi "'+Qjunoref.Text+'" Tidak Ada Data yang merefresnsikan..!',mtWarning,[mbok],0);
      try
        Conn1.StartTransaction;
        Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('delete from jpk where noref=:noref;');
        Qex.SQL.Add('delete from jpk_ where idju=:idju');
        Qex.ParamByName('noref').AsString := Qjunoref.Value;
        Qex.ParamByName('idju').AsInteger := Qjuidju.Value;
        Qex.Execute;
        Conn1.Commit;
      except
        on e : exception do
        begin
          Conn1.Rollback;
          MessageDlg('Terdapat Kesalahan Hapus Data..!'+#13+e.Message,mtWarning,[mbok],0);
        end;

      end;

    end;
  end;


end;

procedure Tfojbk.RzToolButton1Click(Sender: TObject);
begin
  if fotambahjbk.ShowModal=mrok then
  begin
    Qju.Refresh;
  end
  else
  begin
    Qju.Refresh;
  end;
end;

procedure Tfojbk.RzToolButton2Click(Sender: TObject);
var
  dirlogo,filter : string;
begin
  if Qju.RecordCount>0 then
  begin
    filter := '';
    Qlap.Close;
    Qlap.SQL.Clear;
    Qlap.SQL.Add(Qlap.SQLUpdate.Text);
    if cxCheckBox1.Checked then
    begin
      filter := 'No. Trans';
      Qlap.SQL.Add('where c.notrans like :notrans ');
      Qlap.ParamByName('notrans').AsString := '%'+cxTextEdit1.Text+'%';
    end
    else
      Qlap.SQL.Add('where a.idju > 0');
    if cxCheckBox2.Checked then
    begin
      Qlap.SQL.Add('and c.tanggal between :tgl1 and :tgl2 ');
      Qlap.ParamByName('tgl1').AsDate := cxDateEdit1.Date;
      Qlap.ParamByName('tgl2').AsDate := cxDateEdit2.Date;
    end;
    if cxCheckBox3.Checked then
    begin
      if filter<>'' then
        filter := filter + ', No. Refrensi'
      else
        filter := 'No. Refrensi';
      Qlap.SQL.Add('and c.noref like :noref ');
      Qlap.ParamByName('noref').AsString := '%'+cxTextEdit2.Text+'%';
    end;
    if cxCheckBox4.Checked then
    begin
      if filter<>'' then
        filter := filter + ', Penjelasan'
      else
        filter := 'Penjelasan';
      Qlap.SQL.Add('and c.penjelasan like :penjelasan ');
      Qlap.ParamByName('penjelasan').AsString := '%'+cxTextEdit3.Text+'%';
    end;


    Qlap.SQL.Add(Qlap.SQLDelete.Text);


    if cxCheckBox1.Checked then
    begin
      Qlap.SQL.Add('where c.notrans like :notrans ');
      Qlap.ParamByName('notrans').AsString := '%'+cxTextEdit1.Text+'%';
    end
    else
      Qlap.SQL.Add('where a.idju > 0');
    if cxCheckBox2.Checked then
    begin
      Qlap.SQL.Add('and c.tanggal between :tgl1 and :tgl2 ');
      Qlap.ParamByName('tgl1').AsDate := cxDateEdit1.Date;
      Qlap.ParamByName('tgl2').AsDate := cxDateEdit2.Date;
    end;
    if cxCheckBox3.Checked then
    begin
      Qlap.SQL.Add('and c.noref like :noref ');
      Qlap.ParamByName('noref').AsString := '%'+cxTextEdit2.Text+'%';
    end;
    if cxCheckBox4.Checked then
    begin
      Qlap.SQL.Add('and c.penjelasan like :penjelasan ');
      Qlap.ParamByName('penjelasan').AsString := '%'+cxTextEdit3.Text+'%';
    end;
    Qlap.SQL.Add(Qlap.SQLLock.Text);
    Qlap.Open;

    if fosettgllap.ShowModal=mrok then
    begin
      dm.isidatattd('jbk',userlogin);
      lapjpk.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\lapjbk.fr3');


      dirlogo := ExtractFilePath(Application.ExeName)+'\logo\Kop Laporan.png';
      if FileExists(dirlogo) then
      begin
        TfrxPictureView(lapjpk.FindObject('Picture1')).Picture.LoadFromFile(dirlogo);
        //TfrxMemoView(lapkm.FindObject('header1')).Left := 3;
        //TfrxMemoView(lapkm.FindObject('header2')).Left := 3;
       // TfrxMemoView(lapkm.FindObject('alamat1')).Left := 3;
       // TfrxMemoView(lapkm.FindObject('alamat2')).Left := 3;

      end
      else
      begin
        TfrxPictureView(lapjpk.FindObject('Picture1')).Picture.Graphic := nil;
        TfrxMemoView(lapjpk.FindObject('header1')).Left := 0;
        TfrxMemoView(lapjpk.FindObject('header2')).Left := 0;
        TfrxMemoView(lapjpk.FindObject('alamat1')).Left := 0;
        TfrxMemoView(lapjpk.FindObject('alamat2')).Left := 0;
      end;
      TfrxMemoView(lapjpk.FindObject('header1')).Memo.Text:= headerlap1;
      TfrxMemoView(lapjpk.FindObject('header2')).Memo.Text:= headerlap2;
      TfrxMemoView(lapjpk.FindObject('alamat1')).Memo.Text:= alamat1;
      TfrxMemoView(lapjpk.FindObject('alamat2')).Memo.Text:= alamat2;
      if cxCheckBox2.Checked then
      begin

        TfrxMemoView(lapjpk.FindObject('periode')).Memo.Text:= UpperCase(FormatDateTime('dd/mm/yyyy',cxDateEdit1.Date))+ ' - ' + UpperCase(FormatDateTime('dd/mm/yyyy',cxDateEdit2.Date));
      end
      else
      begin
        TfrxMemoView(lapjpk.FindObject('periode')).Memo.Text:= '';
      end;
      if filter<>'' then
      begin
        filter := 'Filter Data : '+filter;
      end;
      TfrxMemoView(lapjpk.FindObject('footer2')).Memo.Text:= filter;
      TfrxMemoView(lapjpk.FindObject('tanggalbawah')).Memo.Text:= footerkota+', '+FormatDateTime('dd mmmm yyyy',fosettgllap.cxDateEdit1.Date);
      lapjpk.ShowReport(true);
    end;
  end
  else
  begin
    MessageDlg('Tidak Ada Yang Ingin Ditampilkan..!',mtWarning,[mbok],0);
  end;
end;

end.
