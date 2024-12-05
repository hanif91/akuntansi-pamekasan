unit utambahsetor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, MemDS, DBAccess, MyAccess, cxDropDownEdit, cxDBEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, dxmdaset, cxMaskEdit, cxCalendar,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxLabel, RzTabs, Vcl.ExtCtrls, RzPanel,
  RzButton;
const
 CM_SHOWNEDITOR = WM_USER + 10000;
type
  Tfotambahsetor = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxButton1: TcxButton;
    cxLabel2: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel4: TcxLabel;
    Dsimp: TMyDataSource;
    dxMemData1: TdxMemData;
    dxMemData1idsimpanan: TIntegerField;
    dxMemData1namasimpanan: TStringField;
    dxMemData1minimsetor: TCurrencyField;
    dxMemData1setor: TCurrencyField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1RecId: TcxGridDBColumn;
    cxGrid1DBTableView1idsimpanan: TcxGridDBColumn;
    cxGrid1DBTableView1namasimpanan: TcxGridDBColumn;
    cxGrid1DBTableView1minimsetor: TcxGridDBColumn;
    cxGrid1DBTableView1setor: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxLabel5: TcxLabel;
    MyQuery1kodeanggota: TStringField;
    MyQuery1namaanggota: TStringField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Da1: TMyDataSource;
    Qa1: TMyQuery;
    Da2: TMyDataSource;
    dxMemData2: TdxMemData;
    dxMemData2idanggota: TIntegerField;
    dxMemData2kodeanggota: TStringField;
    dxMemData2namaanggota: TStringField;
    cxLabel6: TcxLabel;
    cxComboBox1: TcxComboBox;
    btnsimpan: TRzToolButton;
    btnkembali: TRzToolButton;
    Qa1idanggota: TLargeintField;
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure dxMemData1setorValidate(Sender: TField);
    procedure btnkembaliClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure cxDateEdit1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
    keterangan : string;
  public
    { Public declarations }
    mode : byte;
    periodelama : TDate;
    procedure kosongkantext;
    procedure isimemdata;
    function cekisiankosong : Boolean;
  end;

var
  fotambahsetor: Tfotambahsetor;

implementation
uses strutils;

{$R *.dfm}

procedure Tfotambahsetor.btnkembaliClick(Sender: TObject);
begin
  close;
end;

procedure Tfotambahsetor.btnsimpanClick(Sender: TObject);
var
 i : integer;
begin

  if cekisiankosong then
  begin
    dxMemData1.Last;
    dxMemData1.First;
    if cxDBLookupComboBox1.EditValue=-1 then
    begin
      MessageDlg('Anggota Belum Dipilih..!',mtWarning,[mbok],0);
      cxDBLookupComboBox1.SetFocus;
      Exit;
    end
    else
    begin
      if cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0]=0 then
      begin
        MessageDlg('Jumlah Setoran Masih 0',mtWarning,[mbok],0);
      end
      else
      begin
        with dm do
        begin
          if mode=0 then
          begin

            if MessageDlg('Yakin Menyimpan Setoran Dengan Total "'+cxGrid1DBTableView1.DataController.Summary.FooterSummaryTexts[0]+'" ini >',mtConfirmation,[mbyes,mbno],0)=mryes then
            begin
              try
                Conn1.StartTransaction;
                dxMemData1.First;
                dxMemData1.DisableControls;
                keterangan := 'SETOR SIMPANAN : ';
                for i := 1 to dxMemData1.RecordCount do
                begin
                  if dxMemData1setor.Value > 0 then
                  begin
                    Qex.Close;
                    Qex.SQL.Clear;
                    Qex.SQL.Add('Insert into d_simp_anggota (notrans,idsimpanan,debet,kredit) ');
                    Qex.SQL.Add('value ((Select noautosimp(:tglmutasi,"M")),:idsimpanan,:debet,:kredit);');
                    Qex.ParamByName('tglmutasi').AsDate := cxDateEdit1.Date;
                    Qex.ParamByName('idsimpanan').AsInteger := dxMemData1idsimpanan.Value;
                    Qex.ParamByName('debet').AsCurrency := 0;
                    Qex.ParamByName('kredit').AsCurrency := dxMemData1setor.Value;
                    Qex.Execute;

                    keterangan := keterangan+dxMemData1namasimpanan.Text+',';
                  end;
                  dxMemData1.Next;
                end;


                Qex.Close;
                Qex.SQL.Clear;
                Qex.SQL.Add('Insert into simp_anggota (notrans,tglmutasi,idanggota,kasdebet,kaskredit,tglinput,keterangan) ');
                Qex.SQL.Add('value ((Select noautosimp(:tglmutasi,"M")),:tglmutasi,:idanggota,:kasdebet,:kaskredit,NOW(),:keterangan);');
                Qex.ParamByName('tglmutasi').AsDate := cxDateEdit1.Date;
                Qex.ParamByName('kasdebet').AsString := cxComboBox1.Text;
                Qex.ParamByName('idanggota').AsInteger := StrToInt(VarToStr(cxDBLookupComboBox1.EditValue));
                Qex.ParamByName('kaskredit').AsString := '-';
                Qex.ParamByName('keterangan').AsString := LeftStr(keterangan,Length(keterangan)-1);
                Qex.Execute;


                dxMemData1.First;
                dxMemData1.EnableControls;

                Conn1.Commit;

                ModalResult := mrok;

              except
                on e: Exception do
                begin
                  Conn1.Rollback;
                  MessageDlg('Terdapat Kesalahan..!'+#13+e.Message,mtError,[mbok],0);
                  dxMemData1.First;
                  dxMemData1.EnableControls;
                end;
              end;
            end;
          end
          else
          begin
            if FormatDateTime('yyyymm',periodelama)=FormatDateTime('yyyymm',cxDateEdit1.Date) then
            begin
              if MessageDlg('Yakin Koreksi Setoran Dengan Total "'+cxGrid1DBTableView1.DataController.Summary.FooterSummaryTexts[0]+'" ini >',mtConfirmation,[mbyes,mbno],0)=mryes then
              begin
                try
                  Conn1.StartTransaction;
                  dxMemData1.First;
                  dxMemData1.DisableControls;
                  keterangan := 'SETOR SIMPANAN : ';
                  for i := 1 to dxMemData1.RecordCount do
                  begin
                    if dxMemData1setor.Value > 0 then
                    begin
                      Qcek.Close;
                      Qcek.SQL.Clear;
                      Qcek.SQL.Add('select * from d_simp_anggota where idsimpanan=:idsimpanan and notrans=:notrans');
                      Qcek.ParamByName('idsimpanan').AsInteger := dxMemData1idsimpanan.Value;
                      Qcek.ParamByName('notrans').AsString := cxTextEdit1.Text;
                      Qcek.Open;
                      if Qcek.RecordCount>0 then
                      begin
                        Qex.Close;
                        Qex.SQL.Clear;
                        Qex.SQL.Add('update d_simp_anggota set kredit=:kredit where id=:id');
                        Qex.ParamByName('id').AsInteger := Qcek.FieldByName('id').AsInteger;
                        Qex.ParamByName('kredit').AsCurrency := dxMemData1setor.Value;
                        Qex.Execute;
                      end
                      else
                      begin
                        Qex.Close;
                        Qex.SQL.Clear;
                        Qex.SQL.Add('Insert into d_simp_anggota (notrans,idsimpanan,debet,kredit) ');
                        Qex.SQL.Add('value (:notrans,:idsimpanan,:debet,:kredit);');
                        Qex.ParamByName('idsimpanan').AsInteger := dxMemData1idsimpanan.Value;
                        Qex.ParamByName('debet').AsCurrency := 0;
                        Qex.ParamByName('kredit').AsCurrency := dxMemData1setor.Value;
                        Qex.ParamByName('notrans').AsString := cxTextEdit1.Text;
                        Qex.Execute;
                      end;
                      keterangan := keterangan+dxMemData1namasimpanan.Text+',';
                    end
                    else
                    begin
                      Qcek.Close;
                      Qcek.SQL.Clear;
                      Qcek.SQL.Add('select * from d_simp_anggota where idsimpanan=:idsimpanan and notrans=:notrans');
                      Qcek.ParamByName('idsimpanan').AsInteger := dxMemData1idsimpanan.Value;
                      Qcek.ParamByName('notrans').AsString := cxTextEdit1.Text;
                      Qcek.Open;
                      if Qcek.RecordCount>0 then
                      begin
                        Qex.Close;
                        Qex.SQL.Clear;
                        Qex.SQL.Add('delete from d_simp_anggota where id=:id');
                        Qex.ParamByName('id').AsInteger := Qcek.FieldByName('id').AsInteger;
                        Qex.Execute;
                      end;
                    end;
                    dxMemData1.Next;
                  end;


                  Qex.Close;
                  Qex.SQL.Clear;
                  Qex.SQL.Add('UPDATE simp_anggota set tglmutasi=:tglmutasi,idanggota=:idanggota,kasdebet=:kasdebet,kaskredit=:kaskredit,keterangan=:keterangan ');
                  Qex.SQL.Add('where notrans=:notrans');
                  Qex.ParamByName('tglmutasi').AsDate := cxDateEdit1.Date;
                  Qex.ParamByName('kasdebet').AsString := cxComboBox1.Text;
                  Qex.ParamByName('idanggota').AsInteger := StrToInt(VarToStr(cxDBLookupComboBox1.EditValue));
                  Qex.ParamByName('kaskredit').AsString := '-';
                  Qex.ParamByName('keterangan').AsString := LeftStr(keterangan,Length(keterangan)-1);
                  Qex.ParamByName('notrans').AsString := cxTextEdit1.Text;
                  Qex.Execute;

                  dxMemData1.First;
                  dxMemData1.EnableControls;

                  Conn1.Commit;

                  ModalResult := mrok;

                except
                  on e: Exception do
                  begin
                    Conn1.Rollback;
                    MessageDlg('Terdapat Kesalahan..!'+#13+e.Message,mtError,[mbok],0);
                    dxMemData1.First;
                    dxMemData1.EnableControls;
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

function Tfotambahsetor.cekisiankosong: Boolean;
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
    namaisian := 'Setor Ke Kas';
    cxComboBox1.SetFocus;
    Result := false;
    Exit;
  end;
  result := true;
end;



procedure Tfotambahsetor.cxButton1Click(Sender: TObject);
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
      Qcek.SQL.Add('select noautosimp(:tgl,"M")');
      Qcek.ParamByName('tgl').AsDate := periode;
      Qcek.Open;
      cxTextEdit1.Text := Qcek.Fields[0].AsString;
    end;
  end;


end;

procedure Tfotambahsetor.cxDateEdit1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  cxButton1.Click;
end;

procedure Tfotambahsetor.dxMemData1setorValidate(Sender: TField);
begin
  if dxMemData1setor.Value < dxMemData1minimsetor.Value then
  begin
    MessageDlg('Setoran Tidak Valid..!'+#13+'Minim Setor Untuk Jenis Simpanan "'+dxMemData1namasimpanan.Value+
    '" adalah : '+FormatCurr('#,##0.##',dxMemData1minimsetor.Value),mtWarning,[mbok],0);
    dxMemData1.Edit;
    dxMemData1setor.Value := dxMemData1minimsetor.Value;
    dxMemData1.Post;
    dxMemData1setor.FocusControl;
  end;
end;

procedure Tfotambahsetor.FormShow(Sender: TObject);
begin
  if mode=0 then
  begin
    try
      Qa1.Close;
      Qa1.Open;
      kosongkantext;
      isimemdata;
      dxMemData1.First;
      cxButton1.Click;
      dm.isicombo1('akunkas',cxComboBox1);
      cxDateEdit1.SetFocus;
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

procedure Tfotambahsetor.isimemdata;
var
  i : byte;
begin
  dxMemData1.Close;
  dxMemData1.Open;

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
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('Select * from jenis_simpanan where flagsetor="1"  order by indek');
    Qcek.Open;
    for i := 1 to Qcek.RecordCount do
    begin
      dxMemData1.Append;
      dxMemData1idsimpanan.Value := Qcek.FieldByName('idsimpanan').Value;
      dxMemData1minimsetor.Value := Qcek.FieldByName('minimsetor').Value;
      dxMemData1namasimpanan.Value := Qcek.FieldByName('namasimpanan').Value;
      dxMemData1setor.Value := Qcek.FieldByName('minimsetor').Value;
      dxMemData1.Post;

      Qcek.Next;
    end;

  end;
end;

procedure Tfotambahsetor.kosongkantext;
begin

  cxDBLookupComboBox1.Text := 'PILIH SALAH SATU ANGGOTA';
  cxComboBox1.ItemIndex := 0;
  cxDateEdit1.Text := '';
end;

procedure Tfotambahsetor.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  if mode<>0 then
  kosongkantext;
  Self.Close;
end;

end.
