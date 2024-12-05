unit uperiodeposting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, utambahperiodepost, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxImageComboBox, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGroupBox, cxGridCustomPopupMenu, cxGridPopupMenu,
  DBAccess, MyAccess, MemDS, Vcl.ExtCtrls, RzPanel, RzTabs,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarBuiltInMenu,
  dxSkinsDefaultPainters, scDevExStyleAdapter;

type
  Tfoperiodeposting = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    Qperiode: TMyQuery;
    Qperiodeperiode: TStringField;
    Qperiodenama: TStringField;
    Qperiodeaktif: TStringField;
    Dperiode: TMyDataSource;
    PopupMenu1: TPopupMenu;
    SetKunci1: TMenuItem;
    BukaKunci1: TMenuItem;
    cxGridPopupMenu1: TcxGridPopupMenu;
    RzPanel2: TRzPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1periode: TcxGridDBColumn;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1aktif: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    RzPanel3: TRzPanel;
    cxButton3: TcxButton;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    Qperiodearsip: TStringField;
    cxGrid1DBTableView1arsip: TcxGridDBColumn;
    N1: TMenuItem;
    ArispkanPeriode1: TMenuItem;
    Nonarsipkan1: TMenuItem;
    procedure SetKunci1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure BukaKunci1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ArispkanPeriode1Click(Sender: TObject);
    procedure Nonarsipkan1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure bukakunci(periode : string);
  end;

var
  foperiodeposting: Tfoperiodeposting;

implementation
uses strutils;

{$R *.dfm}

procedure Tfoperiodeposting.ArispkanPeriode1Click(Sender: TObject);
begin
  with dm do
  begin
    Qex.Close;
    Qex.SQL.Clear;
    Qex.SQL.Add('UPDATE periodeposting set arsip="1" where periode=:periode');
    Qex.ParamByName('periode').AsString := Qperiodeperiode.Value;
    Qex.Execute;

    Qperiode.Refresh;
  end;
end;

procedure Tfoperiodeposting.bukakunci(periode: string);
begin
  try
    dm.Conn1.StartTransaction;

    with dm do
    begin
      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('UPDATE periodeposting set aktif="1" where periode=:periode');
      Qex.ParamByName('periode').AsString := periode;
      Qex.Execute;
    end;

    dm.Conn1.Commit;
  finally

  end;
end;

procedure Tfoperiodeposting.BukaKunci1Click(Sender: TObject);
begin
  bukakunci(Qperiodeperiode.Value);
  Qperiode.Refresh;
end;

procedure Tfoperiodeposting.cxButton1Click(Sender: TObject);
begin
  if fotambahperiodepost.ShowModal=mrok then
  Qperiode.Refresh;
end;

procedure Tfoperiodeposting.cxButton2Click(Sender: TObject);
begin
  if MessageDlg('Yakin Menghapus Periode Posting "'+Qperiodenama.Value+'" ini ?',mtWarning,[mbyes,mbno],0)=mryes then
  begin
 //   bukakunci(Qperiodeperiode.Value);
    with dm do
    begin
      Qex.Close;
      Qex.SQL.Clear;
      Qex.SQL.Add('DELETE FROM periodeposting where periode=:periode');
      Qex.ParamByName('periode').AsString := Qperiodeperiode.Value;
      Qex.Execute;
    end;
    Qperiode.Refresh;
  end;
end;

procedure Tfoperiodeposting.cxButton3Click(Sender: TObject);
begin
  Qperiode.Close;
  Qperiode.Open;
end;

procedure Tfoperiodeposting.FormShow(Sender: TObject);
begin
  cxButton3.Click;
end;

procedure Tfoperiodeposting.Nonarsipkan1Click(Sender: TObject);
begin
  with dm do
  begin
    Qex.Close;
    Qex.SQL.Clear;
    Qex.SQL.Add('UPDATE periodeposting set arsip="0" where periode=:periode');
    Qex.ParamByName('periode').AsString := Qperiodeperiode.Value;
    Qex.Execute;

    Qperiode.Refresh;
  end;
end;

procedure Tfoperiodeposting.PopupMenu1Popup(Sender: TObject);
begin
  if Qperiodeaktif.Value='1' then
  begin
    BukaKunci1.Enabled := False;
    SetKunci1.Enabled := true;
  end
  else
  begin
    BukaKunci1.Enabled := true;
    SetKunci1.Enabled := false;
  end;

  if Qperiodearsip.Value='1' then
  begin
    Nonarsipkan1.Enabled := True;
    ArispkanPeriode1.Enabled := false;
  end
  else
  begin
    Nonarsipkan1.Enabled := false;
    ArispkanPeriode1.Enabled := true;
  end;
end;

procedure Tfoperiodeposting.SetKunci1Click(Sender: TObject);
begin
  with dm do
  begin
    Qex.Close;
    Qex.SQL.Clear;
    Qex.SQL.Add('UPDATE periodeposting set aktif="0" where periode=:periode');
    Qex.ParamByName('periode').AsString := Qperiodeperiode.Value;
    Qex.Execute;

    Qperiode.Refresh;
  end;
end;

end.
