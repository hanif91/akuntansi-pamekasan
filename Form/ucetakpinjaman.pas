unit ucetakpinjaman;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxmdaset, frxClass, frxDBSet, Data.DB, MemDS, DBAccess,
  MyAccess, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, RzButton, RzTabs, Vcl.ExtCtrls, RzPanel,
  frxDesgn, System.Actions, Vcl.ActnList;

type
  Tfocetakpinjam = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1bukusimp: TRzPanel;
    btnsimpan: TRzToolButton;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    Qlap: TMyQuery;
    db0: TfrxDBDataset;
    dxMemData1: TdxMemData;
    lapkm: TfrxReport;
    ActionList1: TActionList;
    F7: TAction;
    frxDesigner1: TfrxDesigner;
    procedure FormShow(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure btnsimpanClick(Sender: TObject);
    procedure F7Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  focetakpinjam: Tfocetakpinjam;

implementation

{$R *.dfm}

procedure Tfocetakpinjam.btnsimpanClick(Sender: TObject);
var
  dirlogo,nopinjaman : string;
begin
  Qlap.Close;
  Qlap.SQL.Clear;
  Qlap.SQL.Add('CALL bukupinjaman(:idanggota)');
  Qlap.ParamByName('idanggota').AsString := cxDBLookupComboBox1.EditValue;
  Qlap.Open;
  if Qlap.RecordCount > 0 then
  begin
    nopinjaman := Qlap.FieldByName('nopinjaman').AsString;

    Qlap.Close;
    Qlap.SQL.Clear;
    Qlap.SQL.Add('CALL bukupinjamanlap(:nopinjaman)');
    Qlap.ParamByName('nopinjaman').AsString := nopinjaman;
    Qlap.Open;
    if Qlap.RecordCount > 0 then
    begin
      dm.isidatattd('bpinj',userlogin);
      lapkm.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\bupinjaman.fr3');


      dirlogo := ExtractFilePath(Application.ExeName)+'\logo\Kop Laporan.png';
      if FileExists(dirlogo) then
      begin
        TfrxPictureView(lapkm.FindObject('Picture1')).Picture.LoadFromFile(dirlogo);
        //TfrxMemoView(lapkm.FindObject('header1')).Left := 3;
        //TfrxMemoView(lapkm.FindObject('header2')).Left := 3;
       // TfrxMemoView(lapkm.FindObject('alamat1')).Left := 3;
       // TfrxMemoView(lapkm.FindObject('alamat2')).Left := 3;

      end
      else
      begin
        TfrxPictureView(lapkm.FindObject('Picture1')).Picture.Graphic := nil;
        TfrxMemoView(lapkm.FindObject('header1')).Left := 0;
        TfrxMemoView(lapkm.FindObject('header2')).Left := 0;
        TfrxMemoView(lapkm.FindObject('alamat1')).Left := 0;
        TfrxMemoView(lapkm.FindObject('alamat2')).Left := 0;
      end;
      TfrxMemoView(lapkm.FindObject('header1')).Memo.Text:= headerlap1;
      TfrxMemoView(lapkm.FindObject('header2')).Memo.Text:= headerlap2;
      TfrxMemoView(lapkm.FindObject('alamat1')).Memo.Text:= alamat1;
      TfrxMemoView(lapkm.FindObject('alamat2')).Memo.Text:= alamat2;
//      TfrxMemoView(lapkm.FindObject('periode')).Memo.Text:= UpperCase(FormatDateTime('mmmm yyyy',RzDateTimePicker1.Date));
      TfrxMemoView(lapkm.FindObject('tanggalbawah')).Memo.Text:= footerkota+', '+FormatDateTime('dd mmmm yyyy',date);
      lapkm.ShowReport(true);
    end
    else
    begin
      MessageDlg('Tidak Ada Data Angsuran.!',mtInformation,[mbok],0);
    end;
  end
  else
  begin
    MessageDlg('Tidak Ada Data Pinjaman.!',mtInformation,[mbok],0);
  end;
end;

procedure Tfocetakpinjam.F7Execute(Sender: TObject);
begin
  lapkm.LoadFromFile(ExtractFilePath(Application.ExeName)+'report\bupinjaman.fr3');
  frxDesigner1.OpenDir :=ExtractFilePath(Application.ExeName)+'report\';
  lapkm.DesignReport;
end;

procedure Tfocetakpinjam.FormShow(Sender: TObject);
begin
  DM.Qanggota_dbl.Close;
  DM.Qanggota_dbl.Open;
  DM.Qlist_anggota.Close;
  DM.Qlist_anggota.Open;
end;

procedure Tfocetakpinjam.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  Self.Close;
end;

end.
