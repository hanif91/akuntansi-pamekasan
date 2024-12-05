unit utambahperiodepost;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.ExtCtrls, RzPanel, udm,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, Vcl.StdCtrls, cxButtons, Vcl.ComCtrls, RzDTP,
  dxSkinsDefaultPainters, scDevExStyleAdapter;

type
  Tfotambahperiodepost = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    RzDateTimePicker1: TRzDateTimePicker;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fotambahperiodepost: Tfotambahperiodepost;

implementation
uses dateutils,strutils;

{$R *.dfm}

procedure Tfotambahperiodepost.cxButton1Click(Sender: TObject);
var
  periode : string;
begin
  with dm do
  begin
    periode :=  FormatDateTime('yyyymm',RzDateTimePicker1.Date);
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('SELECT * FROM periodeposting where periode=:periode');
    Qcek.ParamByName('periode').AsString := periode;
    Qcek.Open;
    if Qcek.RecordCount > 0 then
    begin
      MessageDlg('Periode Posting "'+UpperCase(FormatDateTime('mmmm yyyy',RzDateTimePicker1.Date))+'" Sudah Terdaftar..!',mtWarning,[mbok],0);
      RzDateTimePicker1.SetFocus;
      Exit;
    end;
 {   Qex.Close;
    Qex.SQL.Clear;
    Qex.SQL.Add('CREATE TABLE IF NOT EXISTS bukubesar'+periode+' LIKE bukubesar;');
    Qex.Execute;

    Qex.Close;
    Qex.SQL.Clear;
    Qex.SQL.Add('CREATE TABLE IF NOT EXISTS bukubesar'+LeftStr(periode,4)+' LIKE bukubesar;');
    Qex.Execute;    }

    insertdataperiodeposting(periode,UpperCase(FormatDateTime('mmmm yyyy',RzDateTimePicker1.Date)));
    ModalResult := mrOk;
  end;
end;

procedure Tfotambahperiodepost.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure Tfotambahperiodepost.FormShow(Sender: TObject);
begin
  RzDateTimePicker1.Date :=  EncodeDate(YearOf(Date),MonthOf(date),1);
end;

procedure Tfotambahperiodepost.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  self.Close;
end;

end.
