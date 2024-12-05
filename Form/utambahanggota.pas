unit utambahanggota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, Vcl.Menus, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons,
  cxMaskEdit, cxMemo, cxTextEdit, cxLabel, udm, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, RzButton, Vcl.ExtCtrls, RzPanel, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, DBAccess, MyAccess, dxmdaset, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, RzTabs, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  Tfotambahanggota = class(TForm)
    btnnext: TRzToolButton;
    btnsimpan: TRzToolButton;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    RzPanel1tambanggo: TRzPanel;
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    kodeanggota: TcxTextEdit;
    nama: TcxTextEdit;
    alamat: TcxMemo;
    tempat: TcxTextEdit;
    pekerjaan: TcxTextEdit;
    nohp: TcxTextEdit;
    combkolektif: TcxComboBox;
    combkodekol: TcxComboBox;
    combidkol: TcxComboBox;
    cxDateEdit1: TcxDateEdit;
    jeniskel: TcxComboBox;
    combaktif: TcxComboBox;
    RzPanel2: TRzPanel;
    btnkembali: TRzToolButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxMemData1: TdxMemData;
    dxMemData1idsimpanan: TIntegerField;
    dxMemData1namasimpanan: TStringField;
    dxMemData1minimsetor: TCurrencyField;
    Dsimp: TMyDataSource;
    cxGrid1DBTableView1RecId: TcxGridDBColumn;
    cxGrid1DBTableView1idsimpanan: TcxGridDBColumn;
    cxGrid1DBTableView1namasimpanan: TcxGridDBColumn;
    cxGrid1DBTableView1minimsetor: TcxGridDBColumn;
    dxMemData1setor: TCurrencyField;
    cxGrid1DBTableView1setor: TcxGridDBColumn;
    RzPanel3: TRzPanel;
    btnkembali2: TRzToolButton;
    RzPanel4: TRzPanel;
    cxDateEdit2: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxLabel11: TcxLabel;
    cxComboBox1: TcxComboBox;
    procedure FormShow(Sender: TObject);
    procedure combkolektifPropertiesChange(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btnkembali2Click(Sender: TObject);
    procedure btnkembaliClick(Sender: TObject);
    procedure btnnextClick(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure cxGrid1DBTableView1EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dxMemData1setorValidate(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    keterangan : string;
  public
    { Public declarations }
    mode,flagubahcombo,idanggota,idkollama : byte;
    kodeanggotalama : string;
    procedure kosongkantext;
    function cekisiankosong : Boolean;
    procedure isimemdata;

  end;

var
  fotambahanggota: Tfotambahanggota;

implementation
uses strutils;

{$R *.dfm}

function Tfotambahanggota.cekisiankosong: Boolean;
begin
  if trim(combkolektif.Text)='' then
  begin
    namaisian := 'Sales';
    combkolektif.SetFocus;
    Result := false;
    Exit;
  end;
  if trim(kodeanggota.Text)='' then
  begin
    namaisian := 'Kode Anggota';
    kodeanggota.SetFocus;
    Result := false;
    Exit;
  end;

  if trim(nama.Text)='' then
  begin
    namaisian := 'Nama Anggota';
    nama.SetFocus;
    Result := false;
    Exit;
  end;
  if trim(tempat.Text)='' then
  begin
    namaisian := 'Tempat lahir';
    tempat.SetFocus;
    Result := false;
    Exit;
  end;
  if trim(cxDateEdit1.Text)='' then
  begin
    namaisian := 'Tanggal Lahir';
    cxDateEdit1.SetFocus;
    Result := false;
    Exit;
  end;

  if trim(jeniskel.Text)='' then
  begin
    namaisian := 'Jenis Kelamin';
    jeniskel.SetFocus;
    Result := false;
    Exit;
  end;
  if trim(pekerjaan.Text)='' then
  begin
    namaisian := 'Pekerjaan';
    pekerjaan.SetFocus;
    Result := false;
    Exit;
  end;

  if trim(pekerjaan.Text)='' then
  begin
    namaisian := 'Pekerjaan';
    pekerjaan.SetFocus;
    Result := false;
    Exit;
  end;

  if trim(nohp.Text)='' then
  begin
    namaisian := 'No Hp';
    nohp.SetFocus;
    Result := false;
    Exit;
  end;

  if trim(combaktif.Text)='' then
  begin
    namaisian := 'Status Keanggotaan';
    nohp.SetFocus;
    Result := false;
    Exit;
  end;
  if trim(cxDateEdit2.Text)='' then
  begin
    namaisian := 'Tanggal Gabung';
    cxDateEdit2.SetFocus;
    Result := false;
    Exit;
  end;
  Result := true;
end;

procedure Tfotambahanggota.combkolektifPropertiesChange(Sender: TObject);
begin
  if flagubahcombo=0 then
  begin
    combidkol.ItemIndex := combkolektif.ItemIndex;
    combkodekol.ItemIndex := combkolektif.ItemIndex;
    with dm do
    begin
      if mode=0 then
      begin
        Qcek.Close;
        Qcek.SQL.Clear;
        Qcek.SQL.add('CALL noautoanggota(:idkolektif)');
        Qcek.ParamByName('idkolektif').AsInteger := StrToIntDef(combidkol.Text,-1);
        Qcek.Open;
        if Qcek.Fields[0].AsString='-' then
          kodeanggota.Text := ''
        else
          kodeanggota.Text := combkodekol.Text+ Qcek.Fields[0].AsString;
      end
      else
      begin
        if idkollama=StrToInt(combidkol.Text)  then
        begin
          kodeanggota.Text := kodeanggotalama;
        end
        else
        begin
          Qcek.Close;
          Qcek.SQL.Clear;
          Qcek.SQL.add('CALL noautoanggota(:idkolektif)');
          Qcek.ParamByName('idkolektif').AsInteger := StrToIntDef(combidkol.Text,-1);
          Qcek.Open;
          if Qcek.Fields[0].AsString='-' then
            kodeanggota.Text := ''
          else
            kodeanggota.Text := combkodekol.Text+ Qcek.Fields[0].AsString;
        end;
      end;
    end;
  end;

end;

procedure Tfotambahanggota.cxGrid1DBTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
{  if key=vk_return then
  begin
    if cxGrid1DBTableView1setor.Focused then
    begin
      if AItem.Index=cxGrid1DBTableView1setor.Index then
      begin
        if Sender.Controller.EditingController.Edit.EditingValue < dxMemData1minimsetor.Value then
        begin
          MessageDlg('Setoran Tidak Valid..!'+#13+'Minim Setor Untuk Jenis Simpanan "'+dxMemData1namasimpanan.Value+
          '" adalah : '+FormatCurr('#,##0.##',dxMemData1minimsetor.Value),mtWarning,[mbok],0);
          dxMemData1minimsetor.FocusControl;
        end;
      end;
    end
  end;   }
end;

procedure Tfotambahanggota.dxMemData1setorValidate(Sender: TField);
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

procedure Tfotambahanggota.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mode<>0 then
  kosongkantext;
end;

procedure Tfotambahanggota.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_F6 then
  begin
    combaktif.ItemIndex := 1;
    combkolektif.ItemIndex := 1;
    combidkol.ItemIndex := 1;
    combkodekol.ItemIndex := 1;
    nama.Text := 'TITOK PROYOGO';
    alamat.Text := 'Probolinggo';
    pekerjaan.Text := 'SWASTA';
    nohp.Text := '08113452565';
    jeniskel.ItemIndex := 0;
    tempat.Text := 'Probolinggo';
    cxDateEdit1.Date := StrToDate('02/08/1990');
    cxDateEdit2.Date := Date;
  end;

end;

procedure Tfotambahanggota.FormShow(Sender: TObject);
begin
  if mode=0 then
  begin
    flagubahcombo := 1;
    dm.isicombo3('kolektif',combkolektif,combkodekol,combidkol);
    flagubahcombo := 0;

    dm.isicombo1('akunkas',cxComboBox1);

    isimemdata;

    btnsimpan.Visible := false;
    btnkembali.Visible := false;
    btnnext.Visible := true;
    btnkembali2.Visible := true;

    kosongkantext;
  end
  else
  begin
    btnsimpan.Visible := true;
    btnkembali.Visible := true;
    btnnext.Visible := false;
    btnkembali2.Visible := false;
  end;
  TabSheet1.TabVisible := true;
  RzPageControl1.ActivePage := TabSheet1;
  TabSheet2.TabVisible := false;
end;

procedure Tfotambahanggota.isimemdata;
var
  i : byte;
begin
  dxMemData1.Close;
  dxMemData1.Open;
  with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('Select * from jenis_simpanan order by indek');
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

procedure Tfotambahanggota.kosongkantext;
begin
  flagubahcombo := 1;
  combkolektif.ItemIndex := -1;
  combkodekol.ItemIndex := -1;
  combidkol.ItemIndex := -1;
  nama.Clear;
  alamat.Clear;
  tempat.Clear;
  cxDateEdit1.Clear;
  jeniskel.Clear;
  pekerjaan.Clear;
  nohp.Clear;
  combaktif.Clear;
  cxDateEdit2.Clear;
  flagubahcombo := 0;
  cxComboBox1.ItemIndex := 0;
end;

procedure Tfotambahanggota.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  Self.Close;

end;

procedure Tfotambahanggota.btnkembali2Click(Sender: TObject);
begin
  Close;
end;

procedure Tfotambahanggota.btnkembaliClick(Sender: TObject);
begin
  if mode=0 then
  begin
    TabSheet1.TabVisible := true;
    TabSheet2.TabVisible := false;
    RzPageControl1.ActivePage := TabSheet1;
    btnsimpan.Visible := false;
    btnkembali.Visible := false;
    btnkembali2.Visible := true;
    btnnext.Visible := true;
  end
  else
  begin
    close;
  end;

end;

procedure Tfotambahanggota.btnnextClick(Sender: TObject);
begin

  if cekisiankosong  then
  begin
    TabSheet1.TabVisible := false;
    TabSheet2.TabVisible := true;
    RzPageControl1.ActivePage := TabSheet2;
    btnkembali2.Visible :=false;
    btnkembali.Visible := true;
    btnnext.Visible := false;
    btnsimpan.Visible := true;
  end
  else
  begin
   MessageDlg('Isian "'+namaisian+'" masih kosong..!',mtWarning,[mbok],0);
  end;
end;

procedure Tfotambahanggota.btnsimpanClick(Sender: TObject);
var
  i : byte;
  idanggotatambah : integer;
begin
  if mode=0 then
  begin
    with dm do
    begin
      try
        try

          Conn1.StartTransaction;

          Qcek.Close;
          Qcek.SQL.Clear;
          Qcek.SQL.Add('SELECT idanggota+1 AS id FROM anggota ORDER BY idanggota DESC LIMIT 1');
          Qcek.Open;
          if qcek.RecordCount=0 then
            idanggotatambah := 1
          else
            idanggotatambah := Qcek.Fields[0].AsInteger;

          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('Insert into anggota (idanggota,kodeanggota,namaanggota,alamat,idkolektif,pekerjaan,nohp,jeniskelamin,tglgabung,tempat,tgllahir,aktif)');
          Qex.SQL.Add('value (:idanggota,:kodeanggota,:namaanggota,:alamat,:idkolektif,:pekerjaan,:nohp,:jeniskelamin,:tglgabung,:tempat,:tgllahir,:aktif);');
          Qex.ParamByName('kodeanggota').AsString := kodeanggota.Text;
          Qex.ParamByName('idanggota').AsInteger := idanggotatambah;
          Qex.ParamByName('namaanggota').AsString := nama.Text;
          Qex.ParamByName('alamat').AsString := alamat.Text;
          Qex.ParamByName('idkolektif').AsString := combidkol.Text;
          Qex.ParamByName('pekerjaan').AsString := pekerjaan.Text;
          Qex.ParamByName('nohp').AsString := nohp.Text;
          Qex.ParamByName('jeniskelamin').AsString := jeniskel.Text;
          Qex.ParamByName('tglgabung').AsDate := cxDateEdit2.Date;
          Qex.ParamByName('tempat').AsString := tempat.Text;
          Qex.ParamByName('tgllahir').AsDate := cxDateEdit1.date;
          Qex.ParamByName('aktif').AsString := combaktif.Text;
          Qex.Execute;

          dxMemData1.First;
          dxMemData1.DisableControls;
          keterangan := 'SETOR SIMPANAN AWAL : ';
          for i := 1 to dxMemData1.RecordCount do
          begin
            if dxMemData1setor.Value > 0 then
            begin
              Qex.Close;
              Qex.SQL.Clear;
              Qex.SQL.Add('Insert into d_simp_anggota (notrans,idsimpanan,debet,kredit) ');
              Qex.SQL.Add('value ((Select noautosimp(:tglmutasi,"M")),:idsimpanan,:debet,:kredit);');
              Qex.ParamByName('tglmutasi').AsDate := cxDateEdit2.Date;
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
          Qex.ParamByName('tglmutasi').AsDate := cxDateEdit2.Date;
          Qex.ParamByName('kasdebet').AsString := cxComboBox1.Text;
          Qex.ParamByName('idanggota').AsInteger := idanggotatambah;
          Qex.ParamByName('kaskredit').AsString := '-';
          Qex.ParamByName('keterangan').AsString := LeftStr(keterangan,Length(keterangan)-1);
          Qex.Execute;


          dxMemData1.First;
          dxMemData1.EnableControls;

          Conn1.Commit;
          MessageDlg('Berhasil Disimpan.!',mtInformation,[mbok],0);
          kosongkantext;
          ModalResult := mrOk
        except
          on e: Exception do
          begin
            Conn1.Rollback;
            MessageDlg('Terdapat Kesalahan..!'+#13+e.Message,mtError,[mbok],0);
            dxMemData1.First;
            dxMemData1.EnableControls;

            //Conn1.Rollback;
          end;
        end;
      finally
      end;
    end;
  end
  else
  begin
    if cekisiankosong  then
    begin
      with dm do
      begin
        try
          Qex.Close;
          Qex.SQL.Clear;
          //Qex.SQL.Add('LOCK TABLE anggota write;');
          Qex.SQL.Add('update anggota set kodeanggota=:kodeanggota,namaanggota=:namaanggota,alamat=:alamat,idkolektif=:idkolektif,pekerjaan=:pekerjaan,nohp=:nohp,jeniskelamin=:jeniskelamin,tglgabung=:tglgabung,tempat=:tempat,tgllahir=:tgllahir,aktif=:aktif');
          qex.SQL.add('where idanggota=:idanggota');
          Qex.ParamByName('kodeanggota').AsString := kodeanggota.Text;
          Qex.ParamByName('namaanggota').AsString := nama.Text;
          Qex.ParamByName('alamat').AsString := alamat.Text;
          Qex.ParamByName('idkolektif').AsString := combidkol.Text;
          Qex.ParamByName('pekerjaan').AsString := pekerjaan.Text;
          Qex.ParamByName('nohp').AsString := nohp.Text;
          Qex.ParamByName('jeniskelamin').AsString := jeniskel.Text;
          Qex.ParamByName('tglgabung').AsDate := cxDateEdit2.Date;
          Qex.ParamByName('tempat').AsString := tempat.Text;
          Qex.ParamByName('tgllahir').AsDate := cxDateEdit1.date;
          Qex.ParamByName('aktif').AsString := combaktif.Text;
          Qex.ParamByName('idanggota').AsInteger := idanggota;
          Qex.Execute;

          kosongkantext;
          ModalResult := mrOk;
          MessageDlg('Berhasil Disimpan.!',mtInformation,[mbok],0);
        except
            on e: Exception do
            begin
              MessageDlg('Terdapat Kesalahan..!'+#13+e.Message,mtError,[mbok],0);
            end;
        end;
      end;
    end
    else
    begin
      MessageDlg('Isian "'+namaisian+'" masih kosong..!',mtWarning,[mbok],0);
    end;
  end;

end;

end.
