unit utambahsales;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uformcontoh, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, RzButton, cxLabel, cxTextEdit, RzTabs, Vcl.ExtCtrls,
  RzPanel, udm;

type
  Tfotambahsales = class(Tfoformcontoh)
    RzPanel1: TRzPanel;
    namasales: TcxTextEdit;
    kodesales: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel1: TcxLabel;
    btnsimpan: TRzToolButton;
    btnkembali: TRzToolButton;
    procedure btnsimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    mode : byte;
    kodesaleslama : string;
    idsales : integer;
    function cekisiankosong : Boolean;
    procedure kosongkantext;
  end;

var
  fotambahsales: Tfotambahsales;

implementation

{$R *.dfm}

procedure Tfotambahsales.btnsimpanClick(Sender: TObject);
begin
  if cekisiankosong then
  begin
    if mode=0 then
    begin
      with dm do
      begin
        try

          Qcek.Close;
          Qcek.SQL.Clear;
          Qcek.SQL.Add('select * from kolektif where kodekolektif=:kode');
          Qcek.ParamByName('kode').AsString := kodesales.Text;
          Qcek.Open;
          if Qcek.RecordCount > 0 then
          begin
            MessageDlg('Kode Kolektif Sudah terdaftar.!',mtWarning,[mbok],0);
            kodesales.Setfocus;
            exit;
          end
          else
          begin
            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('insert into kolektif (kodekolektif,namakolektif) value (:kodekolektif,:namakolektif)');
            Qex.ParamByName('kodekolektif').AsString := kodesales.Text;
            Qex.ParamByName('namakolektif').AsString := namasales.Text;
            Qex.Execute;

            MessageDlg('Tambah Sales Baru Berhasil.',mtInformation,[mbok],0);
            kosongkantext;
            ModalResult := mrok;
          end;
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
      with dm do
      begin
        try
          Qcek.Close;
          Qcek.SQL.Clear;
          Qcek.SQL.Add('select * from kolektif where kodekolektif=:kode and kodekolektif<>:kode2');
          Qcek.ParamByName('kode').AsString := kodesales.Text;
          Qcek.ParamByName('kode2').AsString := kodesaleslama;
          Qcek.Open;
          if Qcek.RecordCount > 0 then
          begin
            MessageDlg('Kode Kolektif Sudah terdaftar.!',mtWarning,[mbok],0);
            kodesales.Setfocus;
            exit;
          end
          else
          begin
            Qex.Close;
            Qex.SQL.Clear;
            Qex.SQL.Add('Update kolektif Set kodekolektif=:kodekolektif,namakolektif=:namakolektif where idkolektif=:idkolektif');
            Qex.ParamByName('kodekolektif').AsString := kodesales.Text;
            Qex.ParamByName('namakolektif').AsString := namasales.Text;
            Qex.ParamByName('idkolektif').AsInteger := idsales;
            Qex.Execute;

            MessageDlg('Koreksi Sales Baru Berhasil.',mtInformation,[mbok],0);
            kosongkantext;
            ModalResult := mrok;
          end;
        except
          on e: Exception do
          begin
            MessageDlg('Terdapat Kesalahan..!'+#13+e.Message,mtError,[mbok],0);
          end;
        end;
      end;
    end;
  end
  else
  begin
    MessageDlg('Isian "'+namaisian+'" masih kosong..!',mtWarning,[mbok],0);
  end;
end;

function Tfotambahsales.cekisiankosong: Boolean;
begin
  if trim(kodesales.Text)='' then
  begin
    namaisian := 'Kode Sales';
    kodesales.SetFocus;
    Result := false;
    Exit;
  end;
  if trim(namasales.Text)='' then
  begin
    namaisian := 'Nama Sales';
    namasales.SetFocus;
    Result := false;
    Exit;
  end;

  Result := true;
end;

procedure Tfotambahsales.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mode<>0 then
  kosongkantext;
end;

procedure Tfotambahsales.FormShow(Sender: TObject);
begin
  if mode=0 then
  begin
    kosongkantext;
  end;
  //kodesales.SetFocus;
end;

procedure Tfotambahsales.kosongkantext;
begin
  kodesales.Clear;
  namasales.Clear;
end;

procedure Tfotambahsales.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  Self.Close;
end;

end.
