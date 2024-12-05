unit ukoreksiaktiva;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, RzTabs, Vcl.ExtCtrls, RzPanel,
  cxContainer, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit,
  cxCurrencyEdit, cxLabel, cxTextEdit;

type
  Tfokoreksiaktiva = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxComboBox1: TcxComboBox;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel2: TcxLabel;
    cxButton2: TcxButton;
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idasset_ak : integer;
  end;

var
  fokoreksiaktiva: Tfokoreksiaktiva;

implementation

{$R *.dfm}

uses udm;

procedure Tfokoreksiaktiva.cxButton2Click(Sender: TObject);
begin
  with dm do
  begin
    Qex.Close;
    Qex.SQL.Clear;
    Qex.SQL.Add('UPDATE asset_ak set nilai_perolehan=:nilai,nilai_buku=:nilai,golaktiva=:golaktiva,persenaktiva=:persenaktiva,kodesusut=:kodesusut,jmltahun=:jmltahun where idasset_ak=:id');
    Qex.ParamByName('nilai').AsCurrency := cxCurrencyEdit1.Value;
    Qex.ParamByName('golaktiva').AsCurrency := cxCurrencyEdit2.Value;
    Qex.ParamByName('persenaktiva').AsCurrency := cxCurrencyEdit4.Value;
    Qex.ParamByName('kodesusut').AsString := cxComboBox1.Text;
    Qex.ParamByName('jmltahun').AsCurrency := cxCurrencyEdit3.Value;
    Qex.ParamByName('id').AsInteger := idasset_ak;
    Qex.Execute;

    MessageDlg('Koreksi berhasil..!',mtInformation,[mbok],0);
    ModalResult := mrOk;
  end;
end;

procedure Tfokoreksiaktiva.RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
begin
  Self.Close;
end;

end.
