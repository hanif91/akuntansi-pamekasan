unit utambahkt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.ExtCtrls, RzPanel, udm,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, cxControls, cxContainer, cxEdit, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCurrencyEdit, RzButton, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxMemo, cxDropDownEdit, cxMaskEdit, cxCalendar,
  cxLabel, cxTextEdit, Vcl.StdCtrls, cxButtons, DBAccess, MyAccess, dxmdaset,
  MemDS, cxGroupBox, dxSkinTheBezier;

type
  Tfotambahkastrf = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet2: TRzTabSheet;
    RzPanel2: TRzPanel;
    cxButton1: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxComboBox1: TcxComboBox;
    cxLabel6: TcxLabel;
    cxMemo1: TcxMemo;
    cxLabel3: TcxLabel;
    btnsimpan: TRzToolButton;
    btnkembali: TRzToolButton;
    cxLabel8: TcxLabel;
    cxLabel4: TcxLabel;
    cxComboBox2: TcxComboBox;
    cxCurrencyEdit1: TcxCurrencyEdit;
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure cxDBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnkembaliClick(Sender: TObject);
    procedure cxDateEdit1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure btnsimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mode,flagkosong2 : byte;
    periodelama : TDate;
    procedure kondisiawal2;
    procedure kosongkantext2;
    function cekisiankosong : Boolean;
  end;

var
  fotambahkastrf: Tfotambahkastrf;

implementation

{$R *.dfm}

procedure Tfotambahkastrf.btnkembaliClick(Sender: TObject);
begin
  self.Close;
end;

procedure Tfotambahkastrf.btnsimpanClick(Sender: TObject);
var
  i : byte;
begin
  if cekisiankosong then
  begin
    if cxComboBox1.Text <> cxComboBox2.Text then
    begin
      with dm do
      begin
        if mode=0 then
        begin
          try
            Conn1.StartTransaction;

            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('insert into m_kastransfer (notrans,tanggal,keterangan,total,kasdebet,kaskredit,waktuinput,userinput) value ((Select noautokt(:tgl)),:tgl,:keterangan,:total,:kasdebet,:kaskredit,NOW(),:userinput)');
            Qex.ParamByName('kasdebet').AsString := cxComboBox1.Text;
            Qex.ParamByName('kaskredit').AsString := cxComboBox2.Text;
            Qex.ParamByName('tgl').AsDate := cxDateEdit1.Date;
            Qex.ParamByName('keterangan').AsString := cxMemo1.Text;
            Qex.ParamByName('total').value := cxCurrencyEdit1.Value;
            Qex.ParamByName('userinput').AsString :=namauserlogin;
            Qex.Execute;

            Conn1.Commit;

            MessageDlg('Tambah Transaksi Kas Transfer Berhasil!',mtInformation,[mbok],0);
            ModalResult := mrok;

          except
            on e: Exception do
            begin
              Conn1.Rollback;
              MessageDlg('Terdapat Kesalahan..!'+#13+e.Message,mtError,[mbok],0);
            end;
          end;
        end
        else
        begin
          if FormatDateTime('yyyymm',periodelama)=FormatDateTime('yyyymm',cxDateEdit1.Date) then
          begin
            if MessageDlg('Yakin Koreksi Kas Transfer Dengan Total "'+cxCurrencyEdit1.Text+'" ini ?',mtConfirmation,[mbyes,mbno],0)=mryes then
            begin
              try
                Conn1.StartTransaction;

                Qex.Close;
                Qex.SQL.Clear;
                Qex.SQL.Add('update m_kastransfer set tanggal=:tanggal,keterangan=:keterangan,total=:total,kasdebet=:kasdebet,kaskredit=:kaskredit,waktuinput=now(),userinput=:userinput where notrans=:notrans');
                Qex.ParamByName('kasdebet').AsString := cxComboBox1.Text;
                Qex.ParamByName('kaskredit').AsString := cxComboBox2.Text;
                Qex.ParamByName('tanggal').AsDate := cxDateEdit1.Date;
                Qex.ParamByName('keterangan').AsString := cxMemo1.Text;
                Qex.ParamByName('total').value := cxCurrencyEdit1.Value;
                Qex.ParamByName('userinput').AsString :=namauserlogin;
                Qex.ParamByName('notrans').AsString := cxTextEdit1.Text;
                Qex.Execute;

                Conn1.Commit;

                ModalResult := mrok;

              except
                on e: Exception do
                begin
                  Conn1.Rollback;
                  MessageDlg('Terdapat Kesalahan..!'+#13+e.Message,mtError,[mbok],0);
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
    end
    else
    begin
      MessageDlg('Jenis Kas Tidak Boleh Sama..!',mtWarning,[mbok],0);
    end;
  end
  else
  begin
    MessageDlg('Isian "'+namaisian+'" Masih Kosong..!',mtWarning,[mbok],0);
  end;

end;

function Tfotambahkastrf.cekisiankosong: Boolean;
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
    namaisian := 'Jenis Kas';
    cxComboBox1.SetFocus;
    Result := false;
    Exit;
  end;


  if trim(cxComboBox2.Text)='' then
  begin
    namaisian := 'Jenis Kas Transfer';
    cxComboBox2.SetFocus;
    Result := false;
    Exit;
  end;


  if trim(cxMemo1.Text)='' then
  begin
    namaisian := 'Penjelasan';
    cxMemo1.SetFocus;
    Result := false;
    Exit;
  end;
  if trim(cxCurrencyEdit1.Text)='' then
  begin
    namaisian := 'Jumlah';
    cxCurrencyEdit1.SetFocus;
    Result := false;
    Exit;
  end;
  result := true;
end;

procedure Tfotambahkastrf.cxButton1Click(Sender: TObject);
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
      Qcek.SQL.Add('select noautokt(:tgl)');
      Qcek.ParamByName('tgl').AsDate := periode;
      Qcek.Open;
      cxTextEdit1.Text := Qcek.Fields[0].AsString;
    end;
  end

end;

procedure Tfotambahkastrf.cxDateEdit1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  cxButton1.Click;
end;

procedure Tfotambahkastrf.cxDBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=vk_return then
  cxCurrencyEdit1.SetFocus;
end;

procedure Tfotambahkastrf.FormShow(Sender: TObject);
begin

  if mode=0 then
  begin
    dm.isicombo1('akunkas',cxComboBox1);
    dm.isicombo1('akunkas',cxComboBox2);
    flagkosong2 := 0;
    kondisiawal2;
  end;
  cxDateEdit1.SetFocus;
end;



procedure Tfotambahkastrf.kondisiawal2;
begin
  TabSheet2.TabVisible := true;
  RzPageControl1.ActivePage := TabSheet2;
  cxButton1.Click;
  kosongkantext2;
end;


procedure Tfotambahkastrf.kosongkantext2;
begin
  if mode=0 then
  begin
    if flagkosong2=0 then
    begin
      cxDateEdit1.Clear;
      cxComboBox1.ItemIndex := -1;
      cxComboBox2.ItemIndex := -1;
      cxCurrencyEdit1.Clear;
      cxMemo1.Clear;
    end;
  end;
end;

procedure Tfotambahkastrf.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  Self.Close;
end;

end.
