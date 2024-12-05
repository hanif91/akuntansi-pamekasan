unit usettgllap;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLabel, RzTabs, Vcl.ExtCtrls, RzPanel;

type
  Tfosettgllap = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    cxLabel1: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxButton5: TcxButton;
    procedure cxButton5Click(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fosettgllap: Tfosettgllap;

implementation

{$R *.dfm}

procedure Tfosettgllap.cxButton5Click(Sender: TObject);
begin
  ModalResult := mrok;
end;

procedure Tfosettgllap.FormShow(Sender: TObject);
begin
  cxDateEdit1.Date := date;
end;

procedure Tfosettgllap.RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
begin
  self.Close;
end;

end.
