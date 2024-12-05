unit ucetakbukusimp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxmdaset, RzButton, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, RzTabs,
  Vcl.ExtCtrls, RzPanel, Data.DB, MemDS, DBAccess, MyAccess, frxClass, frxDBSet,
  System.Actions, Vcl.ActnList, frxDesgn;

type
  Tfocetakbukusimp = class(TForm)
    Bukusimpanan: TfrxReport;
    db0: TfrxDBDataset;
    Qlap: TMyQuery;
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1bukusimp: TRzPanel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    btnsimpan: TRzToolButton;
    dxMemData1: TdxMemData;
    frxDesigner1: TfrxDesigner;
    ActionList1: TActionList;
    F7: TAction;
    procedure btnsimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure F7Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  focetakbukusimp: Tfocetakbukusimp;

implementation

{$R *.dfm}

procedure Tfocetakbukusimp.btnsimpanClick(Sender: TObject);
var
  i : integer;
  hasilsisarow : integer;
  dirlogo : string;
begin
  dxMemData1.Close;
  dxMemData1.Open;
  Qlap.Close;
  Qlap.SQL.Clear;
  Qlap.SQL.Add(Qlap.SQLRefresh.Text);
  Qlap.ParamByName('id').AsInteger := cxDBLookupComboBox1.EditValue;
  Qlap.Open;
  if Qlap.RecordCount > 0 then
  begin
    dxMemData1.Edit;
    dxMemData1.ClearFields;
    dxMemData1.Post;
    dxMemData1.CreateFieldsFromDataSet(Qlap);
    dxMemData1.LoadFromDataSet(Qlap);
    if Qlap.RecordCount<25 then
    begin
      hasilsisarow := 25-Qlap.RecordCount;
    end
    else
    begin
      hasilsisarow := (Qlap.RecordCount div 25);
      hasilsisarow := hasilsisarow*25;
      if Qlap.RecordCount>hasilsisarow then
        hasilsisarow:=(hasilsisarow+25)-Qlap.RecordCount
      else
        hasilsisarow:=0;
    end;
    if hasilsisarow>0 then
    begin
      for I := 1 to hasilsisarow do
      begin
        dxMemData1.Append;
        dxMemData1.FieldByName('tgltrx').Value := '';
        dxMemData1.FieldByName('simppokok').Value :=0;
        dxMemData1.FieldByName('simpwajib').Value :=0;
        dxMemData1.FieldByName('simpmanasuka').Value :=0;
        dxMemData1.FieldByName('simphariraya').Value :=0;
        dxMemData1.FieldByName('simplain').Value :=0;
        dxMemData1.FieldByName('saldo').Value :=0;
        dxMemData1.Post;
      end;
    end;
    dxMemData1.First;
    Bukusimpanan.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\bukusimp.fr3');
    dirlogo := ExtractFilePath(Application.ExeName)+'\logo\Kop Laporan.png';
    dm.isidatattd('bukusimp',userlogin);
    if FileExists(dirlogo) then
    begin
      TfrxPictureView(Bukusimpanan.FindObject('Picture1')).Picture.LoadFromFile(dirlogo);
      //TfrxMemoView(lapkm.FindObject('header1')).Left := 3;
      //TfrxMemoView(lapkm.FindObject('header2')).Left := 3;
     // TfrxMemoView(lapkm.FindObject('alamat1')).Left := 3;
     // TfrxMemoView(lapkm.FindObject('alamat2')).Left := 3;

    end
    else
    begin
      TfrxPictureView(Bukusimpanan.FindObject('Picture1')).Picture.Graphic := nil;
      TfrxMemoView(Bukusimpanan.FindObject('header1')).Left := 0;
      TfrxMemoView(Bukusimpanan.FindObject('header2')).Left := 0;
      TfrxMemoView(Bukusimpanan.FindObject('alamat1')).Left := 0;
      TfrxMemoView(Bukusimpanan.FindObject('alamat2')).Left := 0;
    end;
    TfrxMemoView(Bukusimpanan.FindObject('header1')).Memo.Text:= headerlap1;
    TfrxMemoView(Bukusimpanan.FindObject('header2')).Memo.Text:= headerlap2;
    TfrxMemoView(Bukusimpanan.FindObject('alamat1')).Memo.Text:= alamat1;
    TfrxMemoView(Bukusimpanan.FindObject('alamat2')).Memo.Text:= alamat2;
//      TfrxMemoView(lapkm.FindObject('periode')).Memo.Text:= UpperCase(FormatDateTime('mmmm yyyy',RzDateTimePicker1.Date));
//      TfrxMemoView(Bukusimpanan.FindObject('tanggalbawah')).Memo.Text:= footerkota+', '+FormatDateTime('dd mmmm yyyy',date);
    Bukusimpanan.ShowReport();
  end
  else
  begin
    MessageDlg('Tidak Ada Transaksi Simpanan Untuk Anggota "'+cxDBLookupComboBox1.Text+'" untuk anggota ini..?',mtWarning,[mbok],0);
  end;

end;

procedure Tfocetakbukusimp.F7Execute(Sender: TObject);
begin
  Bukusimpanan.LoadFromFile(ExtractFilePath(Application.ExeName)+'report\bukusimp.fr3');
  frxDesigner1.OpenDir :=ExtractFilePath(Application.ExeName)+'report\';
  Bukusimpanan.DesignReport;
end;

procedure Tfocetakbukusimp.FormShow(Sender: TObject);
begin
  DM.Qanggota_dbl.Close;
  DM.Qanggota_dbl.Open;
  DM.Qlist_anggota.Close;
  DM.Qlist_anggota.Open;

end;

procedure Tfocetakbukusimp.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  Self.Close;
end;

end.
