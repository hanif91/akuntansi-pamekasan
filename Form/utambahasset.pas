unit utambahasset;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinsDefaultPainters,
  scDevExStyleAdapter, Vcl.Menus, Vcl.StdCtrls, cxButtons, dxActivityIndicator,
  cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, RzLabel, RzTabs,
  Vcl.ExtCtrls, RzPanel, cxProgressBar, Data.DB, MemDS, DBAccess, MyAccess;

type
  Tfotambahasset = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    cxComboBox1: TcxComboBox;
    cxComboBox2: TcxComboBox;
    cxLabel2: TcxLabel;
    cxButton2: TcxButton;
    Memo1: TMemo;
    cxProgressBar1: TcxProgressBar;
    Qass: TMyQuery;
    QassCek: TMyQuery;
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fotambahasset: Tfotambahasset;

implementation

{$R *.dfm}

uses udm;

procedure Tfotambahasset.cxButton2Click(Sender: TObject);
var
  i,upt,inst : integer;
  periode : string;
begin
  try
    cxProgressBar1.Visible := true;
    cxButton2.Visible := false;
    periode := cxComboBox2.Text;
    //ShowMessage(periode+' '+userlogin);
    Memo1.Clear;
    with dm do
    begin
      Conn1.StartTransaction;
      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('CALL insertalljurnalpsy(:namauser,:periode)');
      Qex.ParamByName('periode').AsString := periode;
      Qex.ParamByName('namauser').AsString := userlogin;
      Qex.Execute;


      Qass.Close;
      Qass.SQL.Clear;
      Qass.SQL.Add('SELECT a.idcoa,a.kodeakun,a.uraian,SUM(IF(a.tipetambah="D",(a.debet-a.kredit),(a.kredit-a.debet))) AS jumlah,a.ref,g.golaktiva,g.jmlpersen,g.kodesusut,a.tanggal,g.jmltahun,a.kodeunit FROM jurnal_bb a');
      Qass.SQL.Add('LEFT JOIN masterakun b ON a.idcoa=b.idcoa left JOIN golaktiva g ON b.kodeetap=g.golaktiva WHERE namauser=:namauser GROUP BY a.ref,a.idcoa ');
      Qass.ParamByName('namauser').AsString := userlogin;
      Qass.Open;

      Qass.First;

      if Qass.RecordCount > 0 then
      begin
        cxProgressBar1.Properties.Max := Qass.RecordCount;
        cxProgressBar1.Position := 0;
        upt := 0;
        inst := 0;

        for I := 1 to Qass.RecordCount do
        begin
          Memo1.Lines.Add('Proses : "'+Qass.FieldByName('ref').AsString+'" ... ');

          QassCek.Close;
          QassCek.SQL.Clear;
          QassCek.SQL.Add('select * from asset_ak where noref=:noref and date_format(tgl_asset,"%Y%m")=:tgl_asset and idcoa=:idcoa');
          QassCek.ParamByName('tgl_asset').AsString := periode;
          QassCek.ParamByName('noref').AsString := Qass.FieldByName('ref').AsString;
          qasscek.ParamByName('idcoa').AsInteger := Qass.FieldByName('idcoa').AsInteger;
          QassCek.open;
          if QassCek.RecordCount  > 0  then
          begin
            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('UPDATE asset_ak SET tgl_asset=:tgl_asset,namaasset=:namaasset,nilai_perolehan=:nilai_perolehan,nilai_buku=:nilai_buku,');
            Qex.SQL.Add('idcoa=:idcoa,golaktiva=:golaktiva,persenaktiva=:persenaktiva,kodesusut=:kodesusut,jmltahun=:jmltahun,kodeunit=:kodeunit WHERE idasset_ak=:id');
            Qex.ParamByName('tgl_asset').AsDate := Qass.FieldByName('tanggal').AsDateTime;
            Qex.ParamByName('namaasset').AsString := Qass.FieldByName('uraian').AsString;
            Qex.ParamByName('nilai_perolehan').AsCurrency := Qass.FieldByName('jumlah').AsCurrency;
            Qex.ParamByName('nilai_buku').AsCurrency := Qass.FieldByName('jumlah').AsCurrency;
            Qex.ParamByName('idcoa').AsInteger := Qass.FieldByName('idcoa').AsInteger;
            Qex.ParamByName('golaktiva').AsInteger := Qass.FieldByName('golaktiva').AsInteger;
            Qex.ParamByName('persenaktiva').AsCurrency := Qass.FieldByName('jmlpersen').AsCurrency;
            Qex.ParamByName('kodesusut').AsString := Qass.FieldByName('kodesusut').AsString;
            Qex.ParamByName('id').AsInteger := QassCek.FieldByName('idasset_ak').AsInteger;
            Qex.ParamByName('jmltahun').AsCurrency := QassCek.FieldByName('jmltahun').AsCurrency;
            Qex.ParamByName('kodeunit').AsString := QassCek.FieldByName('kodeunit').AsString;
            Qex.Execute;

            upt := upt+1;
          end
          else
          begin
            // insert data
            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('INSERT INTO asset_ak (tgl_asset,namaasset,nilai_perolehan,nilai_buku,kondisi,noref,idcoa,golaktiva,persenaktiva,kodesusut,jmltahun,kodeunit) value ');
            Qex.SQL.Add('(:tgl_asset,:namaasset,:nilai_perolehan,:nilai_buku,:kondisi,:noref,:idcoa,:golaktiva,:persenaktiva,:kodesusut,:jmltahun,:kodeunit)');
            Qex.ParamByName('tgl_asset').AsDate := Qass.FieldByName('tanggal').AsDateTime;
            Qex.ParamByName('namaasset').AsString := Qass.FieldByName('uraian').AsString;
            Qex.ParamByName('nilai_perolehan').AsCurrency := Qass.FieldByName('jumlah').AsCurrency;
            Qex.ParamByName('nilai_buku').AsCurrency := Qass.FieldByName('jumlah').AsCurrency;
            Qex.ParamByName('kondisi').AsString := 'BAIK';
            Qex.ParamByName('noref').AsString := Qass.FieldByName('ref').AsString;
            Qex.ParamByName('idcoa').AsInteger := Qass.FieldByName('idcoa').AsInteger;
            Qex.ParamByName('golaktiva').AsInteger := Qass.FieldByName('golaktiva').AsInteger;
            Qex.ParamByName('persenaktiva').AsCurrency := Qass.FieldByName('jmlpersen').AsCurrency;
            Qex.ParamByName('kodesusut').AsString := Qass.FieldByName('kodesusut').AsString;
            Qex.ParamByName('jmltahun').AsCurrency := Qass.FieldByName('jmltahun').AsCurrency;
            Qex.ParamByName('kodeunit').AsString := Qass.FieldByName('kodeunit').AsString;
            Qex.Execute;
            inst := inst+1;
          end;


          Memo1.Text := Memo1.Text + 'Sukses';
          cxProgressBar1.Position :=cxProgressBar1.Position+1;
          Application.ProcessMessages;
          Qass.Next;

        end;

        Memo1.Lines.Add('');
        Memo1.Lines.Add('--> UPDATE = '+IntToStr(upt)+', BARU = '+IntToStr(inst));
        Memo1.Lines.Add('---- Selesai ----');

        MessageDlg('Proses Penambahan Asset Berhasil!',mtInformation,[mbok],0);
        cxProgressBar1.Visible := false;
        cxButton2.Visible := true;
       // ModalResult := mrOk;

        Conn1.Commit;
      end
      else
      begin
        MessageDlg('Tidak Ada Data Asset ..!',mtWarning,[mbOK],0);
        cxProgressBar1.Visible := false;
        cxButton2.Visible := true;
      end;
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

procedure Tfotambahasset.cxComboBox1PropertiesChange(Sender: TObject);
begin
  cxComboBox2.ItemIndex := cxComboBox1.ItemIndex;
end;

procedure Tfotambahasset.FormShow(Sender: TObject);
begin
  Memo1.Clear;
  cxProgressBar1.Visible := false;
  dm.isicombo2('periodeposting',cxComboBox1,cxComboBox2);
end;

procedure Tfotambahasset.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  Self.Close;
end;

end.
