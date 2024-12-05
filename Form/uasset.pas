unit uasset;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinsDefaultPainters, scDevExStyleAdapter, cxPC,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxTextEdit,
  cxCheckBox, cxLabel, cxMaskEdit, cxCalendar, Vcl.StdCtrls, cxButtons,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCurrencyEdit, RzButton,
  dxDockPanel, dxDockControl, RzTabs, Vcl.ExtCtrls, RzPanel, DBAccess, MyAccess,
  MemDS, RzDTP, dxBarBuiltInMenu, cxGridCustomPopupMenu, cxGridPopupMenu;

type
  Tfoasset = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    RzPanel1setorsimp: TRzPanel;
    RzPanel2: TRzPanel;
    dxDockSite1: TdxDockSite;
    dxLayoutDockSite3: TdxLayoutDockSite;
    dxDockPanel2: TdxDockPanel;
    RzPanel3: TRzPanel;
    RzToolButton1: TRzToolButton;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dxDockPanel1: TdxDockPanel;
    dxLayoutDockSite2: TdxLayoutDockSite;
    cxButton5: TcxButton;
    cxDateEdit2: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxCheckBox2: TcxCheckBox;
    cxTextEdit1: TcxTextEdit;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox5: TcxCheckBox;
    cxTextEdit2: TcxTextEdit;
    Qasset: TMyQuery;
    Dasset: TMyDataSource;
    cxGrid1DBTableView1idasset_ak: TcxGridDBColumn;
    cxGrid1DBTableView1tgl_asset: TcxGridDBColumn;
    cxGrid1DBTableView1namaasset: TcxGridDBColumn;
    cxGrid1DBTableView1nilai_perolehan: TcxGridDBColumn;
    cxGrid1DBTableView1nilai_buku: TcxGridDBColumn;
    cxGrid1DBTableView1kondisi: TcxGridDBColumn;
    cxGrid1DBTableView1noref: TcxGridDBColumn;
    cxGrid1DBTableView1flagdisusutkan: TcxGridDBColumn;
    cxGrid1DBTableView1golaktiva: TcxGridDBColumn;
    cxGrid1DBTableView1persenaktiva: TcxGridDBColumn;
    cxGrid1DBTableView1kodeakun3: TcxGridDBColumn;
    cxGrid1DBTableView1kodeakun: TcxGridDBColumn;
    cxGrid1DBTableView1namaakun: TcxGridDBColumn;
    cxGrid1DBTableView1suburain: TcxGridDBColumn;
    cxGrid1DBTableView1kodesusut: TcxGridDBColumn;
    cxGrid1DBTableView1jmltahun: TcxGridDBColumn;
    cxGrid1DBTableView1tgljttempo: TcxGridDBColumn;
    cxGrid1DBTableView1nb_thnlalu: TcxGridDBColumn;
    cxGrid1DBTableView1nb_periodeini: TcxGridDBColumn;
    cxGrid1DBTableView1susut_blnini: TcxGridDBColumn;
    cxGrid1DBTableView1susut_sd_blnini: TcxGridDBColumn;
    cxGrid1DBTableView1idcoa: TcxGridDBColumn;
    cxGrid1DBTableView1tipe3: TcxGridDBColumn;
    cxGrid1DBTableView1susut_thnlalu: TcxGridDBColumn;
    RzDateTimePicker1: TRzDateTimePicker;
    cxLabel2: TcxLabel;
    RzDateTimePicker2: TRzDateTimePicker;
    cxLabel3: TcxLabel;
    cxCurrencyEdit2: TcxCurrencyEdit;
    RzToolButton2: TRzToolButton;
    cxCheckBox4: TcxCheckBox;
    cxComboBox1: TcxComboBox;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxCheckBox6: TcxCheckBox;
    cxComboBox2: TcxComboBox;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxCheckBox7: TcxCheckBox;
    cxComboBox3: TcxComboBox;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxCheckBox8: TcxCheckBox;
    cxComboBox4: TcxComboBox;
    cxCurrencyEdit6: TcxCurrencyEdit;
    cxCheckBox9: TcxCheckBox;
    cxComboBox5: TcxComboBox;
    cxCurrencyEdit7: TcxCurrencyEdit;
    cxComboBox6: TcxComboBox;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    cxGridPopupMenu1: TcxGridPopupMenu;
    KoreksiAsset1: TMenuItem;
    HapusAsset1: TMenuItem;
    cxCheckBox10: TcxCheckBox;
    cxTextEdit3: TcxTextEdit;
    Qassetidasset_ak: TIntegerField;
    Qassettgl_asset: TDateField;
    Qassetnamaasset: TStringField;
    Qassetnilai_perolehan: TFloatField;
    Qassetnilai_buku: TFloatField;
    Qassetkondisi: TStringField;
    Qassetnoref: TStringField;
    Qassetidcoa: TIntegerField;
    Qassetflagdisusutkan: TSmallintField;
    Qassetgolaktiva: TIntegerField;
    Qassetpersenaktiva: TFloatField;
    Qassetkodesusut: TStringField;
    Qassetjmltahun: TFloatField;
    Qassettipe3: TStringField;
    Qassetkodeakun3: TStringField;
    Qassetkodeakun: TStringField;
    Qassetnamaakun: TStringField;
    Qassetsuburain: TStringField;
    Qassettgljttempo: TDateField;
    Qassetnb_thnlalu: TFloatField;
    Qassetsusut_blnini: TFloatField;
    Qassetsusut_thnlalu: TFloatField;
    Qassetnb_periodeini: TFloatField;
    Qassetsusut_sd_blnini: TFloatField;
    RzToolButton5: TRzToolButton;
    cxComboBox7: TcxComboBox;
    cxComboBox8: TcxComboBox;
    cxCheckBox11: TcxCheckBox;
    procedure cxButton5Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzDateTimePicker2Change(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzDateTimePicker1Change(Sender: TObject);
    procedure cxCheckBox4Click(Sender: TObject);
    procedure cxCheckBox6Click(Sender: TObject);
    procedure cxCheckBox7Click(Sender: TObject);
    procedure cxCheckBox8Click(Sender: TObject);
    procedure cxCheckBox9Click(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxCheckBox2Click(Sender: TObject);
    procedure cxCheckBox5Click(Sender: TObject);
    procedure cxCheckBox3Click(Sender: TObject);
    procedure cxComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzToolButton3Click(Sender: TObject);
    procedure cxCheckBox10Click(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure KoreksiAsset1Click(Sender: TObject);
    procedure HapusAsset1Click(Sender: TObject);
    procedure cxComboBox7PropertiesChange(Sender: TObject);
    procedure cxComboBox8PropertiesChange(Sender: TObject);
    procedure cxCheckBox11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    thnfilter : string;
  end;

var
  foasset: Tfoasset;

implementation

{$R *.dfm}

uses udm, utambahasset,dateutils,cxgridexportlink, utambahsusut, uhapussusut,
  ukoreksiaktiva;

procedure Tfoasset.cxButton5Click(Sender: TObject);
var
  tahun,periode : string;
begin
  try
    tahun  := FormatDateTime('yyyy',RzDateTimePicker1.Date);
    periode  := FormatDateTime('yyyymm',RzDateTimePicker2.Date);

    thnfilter := tahun;
    Qasset.Close;
    Qasset.SQL.Clear;
    Qasset.SQL.Add(Qasset.SQLRefresh.Text);
    Qasset.ParamByName('tahun').AsString := tahun;
    Qasset.ParamByName('periode').AsString := periode;

    if cxCheckBox4.Checked then
    begin
      Qasset.SQL.Add('AND a.nb_thnlalu '+cxComboBox1.Text+' :jml1');
      Qasset.ParamByName('jml1').AsCurrency := cxCurrencyEdit3.Value;
    end;

    if cxCheckBox6.Checked then
    begin
      Qasset.SQL.Add('AND a.nb_periodeini '+cxComboBox2.Text+' :jml2');
      Qasset.ParamByName('jml2').AsCurrency := cxCurrencyEdit4.Value;
    end;

    if cxCheckBox7.Checked then
    begin
      Qasset.SQL.Add('AND a.susut_thnlalu '+cxComboBox3.Text+' :jml3');
      Qasset.ParamByName('jml3').AsCurrency := cxCurrencyEdit5.Value;
    end;

    if cxCheckBox8.Checked then
    begin
      Qasset.SQL.Add('AND a.susut_sd_blnini '+cxComboBox4.Text+' :jml4');
      Qasset.ParamByName('jml4').AsCurrency := cxCurrencyEdit6.Value;
    end;

    if cxCheckBox9.Checked then
    begin
      Qasset.SQL.Add('AND a.susut_blnini '+cxComboBox5.Text+' :jml5');
      Qasset.ParamByName('jml5').AsCurrency := cxCurrencyEdit7.Value;
    end;


    if cxCheckBox1.Checked then
    begin
      Qasset.SQL.Add('AND a.noref LIKE :noref');
      Qasset.ParamByName('noref').AsString := '%'+cxTextEdit1.Text+'%';
    end;

    if cxCheckBox10.Checked then
    begin
      Qasset.SQL.Add('AND a.kodeakun = :kodeakun');
      Qasset.ParamByName('kodeakun').AsString := cxTextEdit3.Text;
    end;


    if cxCheckBox2.Checked then
    begin
      Qasset.SQL.Add('AND a.tgl_asset between :tgl1 and :tgl2');
      Qasset.ParamByName('tgl1').AsDate := cxDateEdit1.Date;
      Qasset.ParamByName('tgl2').AsDate := cxDateEdit2.Date;
    end;

    if cxCheckBox5.Checked then
    begin
      Qasset.SQL.Add('AND a.namaasset LIKE :namaasset');
      Qasset.ParamByName('namaasset').AsString := '%'+cxTextEdit2.Text+'%';
    end;

    if cxCheckBox3.Checked then
    begin
      Qasset.SQL.Add('AND YEAR(a.tgljttempo) '+cxComboBox6.Text+' :jml6');
      Qasset.ParamByName('jml6').AsCurrency := cxCurrencyEdit2.Value;
    end;

    if cxCheckBox11.Checked then
    begin
      Qasset.SQL.Add('AND a.kodeunit = :kodeunit ');
      Qasset.ParamByName('kodeunit').AsString := cxComboBox7.Text;
    end;
    Qasset.Open;
  except
    on e:exception do
    begin
      MessageDlg('Terdapat Kesalahan..!'+#13+e.Message,mtError,[mbok],0);
    end;

  end;

end;

procedure Tfoasset.cxCheckBox10Click(Sender: TObject);
begin
  if cxCheckBox10.Checked then
  begin
    cxTextEdit3.Enabled := true;
    cxTextEdit3.SetFocus;
  end
  else
  begin
    cxTextEdit3.Enabled := false;
  end;
end;

procedure Tfoasset.cxCheckBox11Click(Sender: TObject);
begin
  if cxCheckBox11.Checked then
  begin
    cxComboBox7.Enabled := true;
    cxComboBox8.Enabled := true;
    cxComboBox7.SetFocus;
  end
  else
  begin
    cxComboBox7.Enabled := false;
    cxComboBox8.Enabled := false;
  end;
end;

procedure Tfoasset.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked then
  begin
    cxTextEdit1.Enabled := true;
    cxTextEdit1.SetFocus;
  end
  else
  begin
    cxTextEdit1.Enabled := false;
  end;
end;

procedure Tfoasset.cxCheckBox2Click(Sender: TObject);
begin
  if cxCheckBox2.Checked then
  begin
    cxDateEdit1.Enabled := true;
    cxDateEdit2.Enabled := true;
    cxDateEdit1.SetFocus;
  end
  else
  begin
    cxDateEdit1.Enabled := false;
    cxDateEdit2.Enabled := false;
  end;
end;

procedure Tfoasset.cxCheckBox3Click(Sender: TObject);
begin
  if cxCheckBox3.Checked then
  begin
    cxComboBox6.Enabled := true;
    cxCurrencyEdit2.Enabled := true;
    cxComboBox6.SetFocus;
  end
  else
  begin
    cxComboBox6.Enabled := false;
    cxCurrencyEdit2.Enabled := false;
  end;
end;

procedure Tfoasset.cxCheckBox4Click(Sender: TObject);
begin
  if cxCheckBox4.Checked then
  begin
    cxComboBox1.Enabled := true;
    cxCurrencyEdit3.Enabled := true;
    cxComboBox1.SetFocus;
  end
  else
  begin
    cxComboBox1.Enabled := false;
    cxCurrencyEdit3.Enabled := false;
  end;
end;

procedure Tfoasset.cxCheckBox5Click(Sender: TObject);
begin
  if cxCheckBox5.Checked then
  begin
    cxTextEdit2.Enabled := true;
    cxTextEdit2.SetFocus;
  end
  else
  begin
    cxTextEdit2.Enabled := false;
  end;
end;

procedure Tfoasset.cxCheckBox6Click(Sender: TObject);
begin
  if cxCheckBox6.Checked then
  begin
    cxComboBox2.Enabled := true;
    cxCurrencyEdit4.Enabled := true;
    cxComboBox2.SetFocus;
  end
  else
  begin
    cxComboBox2.Enabled := false;
    cxCurrencyEdit4.Enabled := false;
  end;
end;

procedure Tfoasset.cxCheckBox7Click(Sender: TObject);
begin
  if cxCheckBox7.Checked then
  begin
    cxComboBox3.Enabled := true;
    cxCurrencyEdit5.Enabled := true;
    cxComboBox3.SetFocus;
  end
  else
  begin
    cxComboBox3.Enabled := false;
    cxCurrencyEdit5.Enabled := false;
  end;
end;

procedure Tfoasset.cxCheckBox8Click(Sender: TObject);
begin
  if cxCheckBox8.Checked then
  begin
    cxComboBox4.Enabled := true;
    cxCurrencyEdit6.Enabled := true;
    cxComboBox4.SetFocus;
  end
  else
  begin
    cxComboBox4.Enabled := false;
    cxCurrencyEdit6.Enabled := false;
  end;
end;

procedure Tfoasset.cxCheckBox9Click(Sender: TObject);
begin
  if cxCheckBox9.Checked then
  begin
    cxComboBox5.Enabled := true;
    cxCurrencyEdit7.Enabled := true;
    cxComboBox5.SetFocus;
  end
  else
  begin
    cxComboBox5.Enabled := false;
    cxCurrencyEdit7.Enabled := false;
  end;
end;

procedure Tfoasset.cxComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
  cxButton5.Click;
end;

procedure Tfoasset.cxComboBox7PropertiesChange(Sender: TObject);
begin
  cxComboBox8.ItemIndex := cxComboBox7.ItemIndex;
end;

procedure Tfoasset.cxComboBox8PropertiesChange(Sender: TObject);
begin
  cxComboBox7.ItemIndex := cxComboBox8.ItemIndex;
end;

procedure Tfoasset.FormCreate(Sender: TObject);
begin
  RzDateTimePicker1.Date := EncodeDate(yearof(date),MonthOf(date),1);
  RzDateTimePicker2.Date := EncodeDate(yearof(date),MonthOf(date),1);
  cxDateEdit2.Date := Date;
  cxDateEdit1.Date := Date;
  cxComboBox1.ItemIndex :=0;
  cxComboBox2.ItemIndex :=0;
  cxComboBox3.ItemIndex :=0;
  cxComboBox4.ItemIndex :=0;
  cxComboBox5.ItemIndex :=0;
  cxComboBox6.ItemIndex :=0;
end;

procedure Tfoasset.HapusAsset1Click(Sender: TObject);
begin
   with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select * from asset_ak_susut where idasset_ak=:id');
    Qcek.ParamByName('id').AsInteger := Qassetidasset_ak.Value;
    Qcek.Open;
    if Qcek.RecordCount > 0 then
    begin
      MessageDlg('Tidak Dapat Hapus ..!'+#13+'data ini sudah pernah disusutkan..!',mtWarning,[mbok],0);
      Exit;
    end;

    if MessageDlg('Yakin Akan menghapus Asset ini .. ?',mtConfirmation,[mbyes,mbno],0)=mryes then
    begin
      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('delete from asset_ak where idasset_ak=:id');
      Qex.ParamByName('id').AsInteger := Qassetidasset_ak.Value;
      Qex.Execute;
      Qasset.Refresh;
    end;


  end;
end;

procedure Tfoasset.KoreksiAsset1Click(Sender: TObject);
begin
  with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select * from asset_ak_susut where idasset_ak=:id and left(periode,4)=:thn');
    Qcek.ParamByName('id').AsInteger := Qassetidasset_ak.Value;
    Qcek.ParamByName('thn').AsString := thnfilter;
    Qcek.Open;
    if Qcek.RecordCount > 0 then
    begin
      MessageDlg('Tidak Dapat Koreksi ..!'+#13+'data ini sudah ada data penyusutan di tahun ini..!',mtWarning,[mbok],0);
      Exit;
    end;
    fokoreksiaktiva.idasset_ak := Qassetidasset_ak.Value;
    fokoreksiaktiva.cxTextEdit1.Text := Qassetnamaasset.Text;
    fokoreksiaktiva.cxCurrencyEdit1.Value := Qassetnilai_perolehan.Value;
    fokoreksiaktiva.cxCurrencyEdit2.Value := Qassetgolaktiva.Value;
    fokoreksiaktiva.cxCurrencyEdit3.Value := Qassetjmltahun.Value;
    fokoreksiaktiva.cxCurrencyEdit4.Value := Qassetpersenaktiva.Value;
    fokoreksiaktiva.cxComboBox1.ItemIndex := fokoreksiaktiva.cxComboBox1.Properties.Items.IndexOf(Qassetkodesusut.Value);
    if fokoreksiaktiva.ShowModal=mrok then
      Qasset.Refresh;
  end;

end;

procedure Tfoasset.RzDateTimePicker1Change(Sender: TObject);
begin
  RzDateTimePicker2.Date := EncodeDate(YearOf(RzDateTimePicker1.Date),MonthOf(RzDateTimePicker1.Date),1);
end;

procedure Tfoasset.RzDateTimePicker2Change(Sender: TObject);
begin
  if YearOf(RzDateTimePicker2.Date)<>YearOf(RzDateTimePicker1.Date) then
  begin
    MessageDlg('Tahun Periode tidak boleh berbeda !',mtWarning,[mbok],0);
    RzDateTimePicker2.Date := EncodeDate(YearOf(RzDateTimePicker1.Date),MonthOf(RzDateTimePicker1.Date),1);
    Exit;
  end;
end;

procedure Tfoasset.RzToolButton1Click(Sender: TObject);
begin
  try
    if fotambahasset=nil then
    begin
      fotambahasset := Tfotambahasset.Create(Application);
    end;

    fotambahasset.ShowModal;
  except
    on e:Exception do
    begin
      MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
    end;
  end;
end;

procedure Tfoasset.RzToolButton2Click(Sender: TObject);

begin
  if RzToolButton2.Caption='Expand' then
  begin
    RzToolButton2.Caption:='Collapse';
    cxGrid1DBTableView1.DataController.Options := [dcoAssignGroupingValues,dcoAssignMasterDetailKeys,dcoSaveExpanding,dcoGroupsAlwaysExpanded];
  end
  else
  begin
    RzToolButton2.Caption:='Expand';
    cxGrid1DBTableView1.DataController.Options := [dcoAssignGroupingValues,dcoAssignMasterDetailKeys,dcoSaveExpanding];
  end
end;

procedure Tfoasset.RzToolButton3Click(Sender: TObject);
begin
  if Qasset.RecordCount > 0 then
  begin
    SaveDialog1.Filter := 'XLS|*.xls';
    if SaveDialog1.Execute then
    begin
      try

        ExportGridToExcel(SaveDialog1.FileName,cxGrid1);
        MessageDlg('Export Berhasil..',mtInformation,[mbok],0);
      except
        on e:exception do
        begin
          MessageDlg('Terdapat kesalahan..!'+#13+e.Message,mtError,[mbok],0);
        end;
      end;
    end;
  end;
end;

procedure Tfoasset.RzToolButton4Click(Sender: TObject);
begin
  if fotambahsusut<>nil then
  begin
    fotambahsusut.ShowModal;
  end
  else
  begin
    try
      fotambahsusut := Tfotambahsusut.Create(Application);
      fotambahsusut.ShowModal;
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;

  end;
end;

procedure Tfoasset.RzToolButton5Click(Sender: TObject);
begin
  if fohpspenyusutan<>nil then
  begin
    fohpspenyusutan.ShowModal;
  end
  else
  begin
    try
      fohpspenyusutan := Tfohpspenyusutan.Create(Application);
      fohpspenyusutan.ShowModal;
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;

  end;
end;

end.
