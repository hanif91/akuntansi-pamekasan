unit usetorkas;

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
  frxDesgn, frxDBSet, RzLine, cxCurrencyEdit, dxBarBuiltInMenu,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxSkinsDefaultPainters,
  scDevExStyleAdapter;

type
  Tfosetorkas = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1setorsimp: TRzPanel;
    cxButton1: TcxButton;
    cxLabel1: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxLabel2: TcxLabel;
    MyDataSource1: TMyDataSource;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxComboBox1: TcxComboBox;
    cxCheckBox1: TcxCheckBox;
    cxComboBox2: TcxComboBox;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxComboBox3: TcxComboBox;
    cxCheckBox2: TcxCheckBox;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    RzLine1: TRzLine;
    RzLine2: TRzLine;
    cxCurrencyEdit6: TcxCurrencyEdit;
    Qdetailsetor: TMyQuery;
    Qdetailsetorid: TIntegerField;
    Qdetailsetortanggal: TDateField;
    Qdetailsetornamakas: TStringField;
    Qdetailsetorjumlah: TFloatField;
    Qdetailsetortglpost: TDateTimeField;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1namakas: TcxGridDBColumn;
    cxGrid1DBTableView1jumlah: TcxGridDBColumn;
    cxCurrencyEdit2: TcxCurrencyEdit;
    RzLine3: TRzLine;
    cxGridPopupMenu1: TcxGridPopupMenu;
    PopupMenu1: TPopupMenu;
    Hapus1: TMenuItem;
    cxLabel10: TcxLabel;
    cxComboBox4: TcxComboBox;
    cxComboBox5: TcxComboBox;
    Qdetailsetorkodeunit: TStringField;
    cxGrid1DBTableView1kodeunit: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure cxDateEdit1PropertiesCloseUp(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxCheckBox2Click(Sender: TObject);
    procedure cxCurrencyEdit1PropertiesChange(Sender: TObject);
    procedure Hapus1Click(Sender: TObject);
    procedure cxComboBox4PropertiesChange(Sender: TObject);
    procedure cxComboBox4PropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
        lastdate : TDate;
    procedure prosesjurnal;
    procedure viewjurnal;
  public
    { Public declarations }
    procedure viewsetor;
    procedure viewdetailsetor;
    procedure exesetoran;
    procedure exportexcel;
    procedure kondisi1;
    procedure kondisi2;
    procedure kondisiawal;
    procedure editvalue;
  end;

var
  fosetorkas: Tfosetorkas;

implementation

{$R *.dfm}

uses udm,dateutils,strutils;

procedure Tfosetorkas.cxButton1Click(Sender: TObject);
begin
  if cxComboBox1.Text='' then
  begin
    Messagedlg('Bank 1 Belum di pilih..!',mtWarning,[mbok],0);
    exit;
  end;
  if cxCurrencyEdit2.value=0 then
  begin
    Messagedlg('Nominal Bank 1 Masih Kosong..!',mtWarning,[mbok],0);
    exit;
  end;
  if cxComboBox4.Text='' then
  begin
    Messagedlg('Kode Unit Belum Dipilih',mtWarning,[mbok],0);
    exit;
  end;
  if cxCheckBox1.Checked then
  begin
    if cxComboBox2.Text='' then
    begin
      Messagedlg('Bank 2 Belum di pilih..!',mtWarning,[mbok],0);
      exit;
    end;

    if cxCurrencyEdit3.value=0 then
    begin
      Messagedlg('Nominal Bank 2 Masih Kosong..!',mtWarning,[mbok],0);
      exit;
    end;
  end;
  if cxCheckBox2.Checked then
  begin
    if cxComboBox3.Text='' then
    begin
      Messagedlg('Bank 2 Belum di pilih..!',mtWarning,[mbok],0);
      exit;
    end;

    if cxCurrencyEdit4.value=0 then
    begin
      Messagedlg('Nominal Bank 3 Masih Kosong..!',mtWarning,[mbok],0);
      exit;
    end;
  end;

{ if cxCurrencyEdit6.Value < 0 then
  begin
    Messagedlg('Penginputan Saldo Setoran Tidak Valid.!',mtWarning,[mbok],0);
    exit;
  end;

  if (cxCurrencyEdit6.Value = 0) and (cxCurrencyEdit5.Value= 0)then
  begin
    Messagedlg('Tidak Ada Data',mtWarning,[mbok],0);
    exit;
  end;  }

  if dm.cekstatusaktifperiodeposting(FormatDateTime('yyyymm',cxDateEdit1.Date))=0 then
  begin
    MessageDlg('Periode "'+FormatDateTime('yyyymm',cxDateEdit1.Date)+'" sudah dikunci / Belum dibuat !'+#13+'Harap Hubungi Bagian Akuntansi..!',mtWarning,[mbok],0);
    Exit;
  end;

  try
    exesetoran;
    kondisi1;
    viewdetailsetor;
    viewsetor;
  {  if cxCurrencyEdit6.Value=0 then
    begin
      cxButton1.Enabled := false;
    end
    else
    begin
     cxButton1.Enabled := true;
    end;  }

  except

  end;
end;

procedure Tfosetorkas.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked then
  begin
    cxComboBox2.Enabled := true;
    cxCurrencyEdit3.Enabled := true;
    cxComboBox2.SetFocus;
  end
  else
  begin
    cxComboBox2.Enabled := false;
    cxCurrencyEdit3.Enabled := false;
  end;
end;

procedure Tfosetorkas.cxCheckBox2Click(Sender: TObject);
begin
  if cxCheckBox2.Checked then
  begin
    cxComboBox3.Enabled := true;
    cxCurrencyEdit4.Enabled := true;
    cxComboBox2.SetFocus;
  end
  else
  begin
    cxComboBox3.Enabled := false;
    cxCurrencyEdit4.Enabled := false;
  end;
end;

procedure Tfosetorkas.cxComboBox4PropertiesChange(Sender: TObject);
begin
  cxComboBox5.ItemIndex := cxComboBox4.ItemIndex;
end;

procedure Tfosetorkas.cxComboBox4PropertiesCloseUp(Sender: TObject);
begin
  if cxDateEdit1.Text <>'' then
  begin
    if cxComboBox4.Text<>'' then
    begin
      try
        viewsetor;
        viewdetailsetor;
      except
        kondisi1;
      end;
    end;
  end;
end;

procedure Tfosetorkas.cxCurrencyEdit1PropertiesChange(Sender: TObject);
begin
  editvalue;
end;

procedure Tfosetorkas.cxDateEdit1PropertiesCloseUp(Sender: TObject);
begin
  if cxDateEdit1.Text <>'' then
  begin
    if cxComboBox4.Text<>'' then
    begin
      try
        viewsetor;
        viewdetailsetor;
      except
        kondisi1;
      end;
    end;
  end;
end;

procedure Tfosetorkas.editvalue;
begin
  cxCurrencyEdit6.Value := cxCurrencyEdit1.Value-cxCurrencyEdit2.Value-cxCurrencyEdit3.Value-cxCurrencyEdit4.Value;
  cxCurrencyEdit5.Value := cxCurrencyEdit2.Value+cxCurrencyEdit3.Value+cxCurrencyEdit4.Value;
end;

procedure Tfosetorkas.exesetoran;
begin
  with dm do
  begin
    Qex.Close;
    Qex.SQL.Clear;
    Qex.SQL.Add('INSERT INTO setorkas (tanggal,namakas,jumlah,kodeunit) value (:tanggal,:namakas,:jumlah,:kodeunit)');
    Qex.ParamByName('tanggal').AsDate := cxDateEdit1.Date;
    Qex.ParamByName('namakas').AsString := cxComboBox1.Text;
    Qex.ParamByName('jumlah').AsCurrency := cxCurrencyEdit2.Value;
    Qex.ParamByName('kodeunit').AsString := cxComboBox5.Text;
    Qex.Execute;

    if cxCheckBox1.Checked then
    begin
      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('INSERT INTO setorkas (tanggal,namakas,jumlah,kodeunit) value (:tanggal,:namakas,:jumlah,:kodeunit)');
      Qex.ParamByName('tanggal').AsDate := cxDateEdit1.Date;
      Qex.ParamByName('namakas').AsString := cxComboBox2.Text;
      Qex.ParamByName('jumlah').AsCurrency := cxCurrencyEdit3.Value;
      Qex.ParamByName('kodeunit').AsString := cxComboBox5.Text;
      Qex.Execute;
    end;

    if cxCheckBox2.Checked then
    begin
      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('INSERT INTO setorkas (tanggal,namakas,jumlah,kodeunit) value (:tanggal,:namakas,:jumlah,:kodeunit)');
      Qex.ParamByName('tanggal').AsDate := cxDateEdit1.Date;
      Qex.ParamByName('namakas').AsString := cxComboBox3.Text;
      Qex.ParamByName('jumlah').AsCurrency := cxCurrencyEdit4.Value;
      Qex.ParamByName('kodeunit').AsString := cxComboBox5.Text;
      Qex.Execute;
    end;

    MessageDlg('Setoran Kas Berhasil Disimpan.',mtInformation,[mbok],0);
  end;
end;

procedure Tfosetorkas.exportexcel;
begin

end;

procedure Tfosetorkas.FormShow(Sender: TObject);
begin
  kondisiawal;
  dm.isicombo1('akunkasbank',cxComboBox1);
  dm.isicombo1('akunkasbank',cxComboBox2);
  dm.isicombo1('akunkasbank',cxComboBox3);
  dm.isicombo2('unitkerja2',cxComboBox5,cxComboBox4);
  cxDateEdit1.SetFocus;
end;

procedure Tfosetorkas.Hapus1Click(Sender: TObject);
begin
  if MessageDlg('Yakin Menghapus Setoran Bank : '+Qdetailsetornamakas.Text+' ?',mtConfirmation,[mbyes,mbCancel],0)=mryes then
  begin
    with dm do
    begin
      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('delete from setorkas where id=:id');
      Qex.ParamByName('id').AsInteger := Qdetailsetorid.Value;
      Qex.Execute;

      viewsetor;
      viewdetailsetor;
    end;
  end;
end;

procedure Tfosetorkas.kondisi1;
begin
  cxCurrencyEdit1.Clear;
  cxCurrencyEdit2.Clear;
  cxCurrencyEdit3.Clear;
  cxCurrencyEdit4.Clear;
  cxCurrencyEdit5.Clear;
  cxCurrencyEdit6.Clear;
  cxCheckBox1.Checked := false;
  cxCheckBox2.Checked := false;
  cxComboBox2.Enabled := false;
  cxComboBox3.Enabled := false;
  cxCurrencyEdit3.Enabled := false;
  cxCurrencyEdit4.Enabled := false;
//  cxButton1.Enabled := false;
end;

procedure Tfosetorkas.kondisi2;
begin
  cxButton1.Enabled := true;
end;


procedure Tfosetorkas.kondisiawal;
begin
  cxDateEdit1.Text := '';
  Qdetailsetor.Close;
  kondisi1;
end;

procedure Tfosetorkas.prosesjurnal;
begin

end;

procedure Tfosetorkas.RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
begin
  close;
end;

procedure Tfosetorkas.viewdetailsetor;
begin
  Qdetailsetor.Close;
  Qdetailsetor.ParamByName('periode').AsDate := cxDateEdit1.Date;
  Qdetailsetor.ParamByName('kodeunit').AsString := cxComboBox5.Text;
  Qdetailsetor.Open;
end;

procedure Tfosetorkas.viewjurnal;
begin

end;

procedure Tfosetorkas.viewsetor;
begin
  with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('CALL view_setoran(:periode,"0",:kodeunit)');
    Qcek.ParamByName('periode').AsDate := cxDateEdit1.Date;
    Qcek.ParamByName('kodeunit').AsString := cxComboBox5.Text;
    Qcek.Open;
    if Qcek.RecordCount > 0 then
    begin
      cxCurrencyEdit1.Value := Qcek.FieldByName('saldobelum').AsCurrency;
    end
    else
    begin
      cxCurrencyEdit1.Value := 0;
    end;

   { if cxCurrencyEdit1.Value=0 then
    begin
      cxButton1.Enabled := false;
    end
    else
    begin
      cxButton1.Enabled := true;
    end;    }
  end;
end;

end.
