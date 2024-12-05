unit umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, cxClasses, dxRibbon, dxBar, udm, Vcl.Menus,
  Vcl.StdCtrls, cxButtons,dxribbonform, dxSkinsCore,
   ukodeakun, usaldoawal, uanggaranlr, uju, ujpk,
   usubbukubesar, ulaplabarugi, ulapneraca, ulaparuskas,
  uperiodeposting, uparaflaporan, dxSkinTheBezier, dxGDIPlusClasses,
  Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonSkins, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxStatusBar,
  dxRibbonStatusBar,data.db, dxSkinsDefaultPainters, scDevExStyleAdapter;

type
  Tfomain = class(TdxribbonForm)
    dxBarManager1: TdxBarManager;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxRibbon1Tab4: TdxRibbonTab;
    dxBarManager1Bar6: TdxBar;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarLargeButton17: TdxBarLargeButton;
    dxRibbon1Tab5: TdxRibbonTab;
    dxRibbon1Tab6: TdxRibbonTab;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarLargeButton20: TdxBarLargeButton;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarLargeButton22: TdxBarLargeButton;
    dxBarLargeButton23: TdxBarLargeButton;
    dxBarManager1Bar11: TdxBar;
    dxBarLargeButton24: TdxBarLargeButton;
    dxBarLargeButton25: TdxBarLargeButton;
    dxBarLargeButton26: TdxBarLargeButton;
    dxBarLargeButton27: TdxBarLargeButton;
    dxBarLargeButton28: TdxBarLargeButton;
    dxBarLargeButton29: TdxBarLargeButton;
    dxBarLargeButton30: TdxBarLargeButton;
    dxBarLargeButton31: TdxBarLargeButton;
    dxBarLargeButton32: TdxBarLargeButton;
    dxBarLargeButton33: TdxBarLargeButton;
    dxBarLargeButton34: TdxBarLargeButton;
    dxBarLargeButton35: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarLargeButton36: TdxBarLargeButton;
    dxBarLargeButton38: TdxBarLargeButton;
    dxBarLargeButton43: TdxBarLargeButton;
    dxBarLargeButton44: TdxBarLargeButton;
    dxBarLargeButton45: TdxBarLargeButton;
    dxBarLargeButton46: TdxBarLargeButton;
    dxRibbon1Tab7: TdxRibbonTab;
    dxBarManager1Bar18: TdxBar;
    dxBarManager1Bar19: TdxBar;
    dxBarManager1Bar20: TdxBar;
    dxBarLargeButton47: TdxBarLargeButton;
    dxBarLargeButton48: TdxBarLargeButton;
    dxBarLargeButton49: TdxBarLargeButton;
    dxBarLargeButton50: TdxBarLargeButton;
    dxBarLargeButton51: TdxBarLargeButton;
    dxBarLargeButton52: TdxBarLargeButton;
    dxBarLargeButton53: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxBarManager1Bar4: TdxBar;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarManager1Bar5: TdxBar;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    dxBarManager1Bar8: TdxBar;
    dxBarLargeButton37: TdxBarLargeButton;
    dxBarLargeButton39: TdxBarLargeButton;
    dxBarLargeButton41: TdxBarLargeButton;
    dxBarButton4: TdxBarButton;
    dxBarLargeButton40: TdxBarLargeButton;
    dxBarManager1Bar9: TdxBar;
    dxBarLargeButton42: TdxBarLargeButton;
    dxBarLargeButton54: TdxBarLargeButton;
    dxBarLargeButton55: TdxBarLargeButton;
    dxBarLargeButton56: TdxBarLargeButton;
    dxBarLargeButton57: TdxBarLargeButton;
    dxBarLargeButton58: TdxBarLargeButton;
    dxBarLargeButton59: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButton23Click(Sender: TObject);
    procedure dxBarLargeButton22Click(Sender: TObject);
    procedure dxBarLargeButton30Click(Sender: TObject);
    procedure dxBarLargeButton27Click(Sender: TObject);
    procedure dxBarLargeButton31Click(Sender: TObject);
    procedure dxBarLargeButton33Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarLargeButton34Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarLargeButton36Click(Sender: TObject);
    procedure dxBarLargeButton43Click(Sender: TObject);
    procedure dxBarLargeButton47Click(Sender: TObject);
    procedure dxBarLargeButton48Click(Sender: TObject);
    procedure dxBarLargeButton51Click(Sender: TObject);
    procedure dxBarLargeButton52Click(Sender: TObject);
    procedure dxBarLargeButton14Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton25Click(Sender: TObject);
    procedure dxBarLargeButton24Click(Sender: TObject);
    procedure dxBarLargeButton49Click(Sender: TObject);
    procedure dxBarLargeButton53Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton45Click(Sender: TObject);
    procedure dxRibbonStatusBar1Panels1Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton10Click(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dxBarLargeButton11Click(Sender: TObject);
    procedure dxBarLargeButton50Click(Sender: TObject);
    procedure dxBarLargeButton18Click(Sender: TObject);
    procedure dxBarLargeButton37Click(Sender: TObject);
    procedure dxBarLargeButton39Click(Sender: TObject);
    procedure dxBarLargeButton41Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarLargeButton42Click(Sender: TObject);
    procedure dxBarLargeButton40Click(Sender: TObject);
    procedure dxBarLargeButton54Click(Sender: TObject);
    procedure dxBarLargeButton55Click(Sender: TObject);
    procedure dxBarLargeButton56Click(Sender: TObject);
    procedure dxBarLargeButton57Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton58Click(Sender: TObject);
    procedure dxBarLargeButton59Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function cekhakakses : Boolean;
    procedure deklarasimenu;
  end;

var
  fomain: Tfomain;
  menuutama : array [1..5] of TdxRibbonTab;

implementation

{$R *.dfm}

uses ujra, ujrna, updpk, usetorkas, uvocer, upbayarvocer,
  uvocerbayar, ucetakvocer, ulapjbk, udhhd, udpk, ulogin, userakses, ugantipass,
  uparaf, ukaskeluar, ukasmasuk, ulaplhk, ujpbik, ulapusulan, uvkk, uplatformkk,
  ulapusulanvkk, ulaprincianbiaya, ugolaktiva, uasset, utambahsusut,
  uakunkelaktiva, ulockjurnal, ulapdph, uanggaranpu, upostingawaltahun,
  uupdatesaldoawal, uneracalajur, udspk;



function Tfomain.cekhakakses: Boolean;
var
 i : byte;
begin
  with dm do
  begin
    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('CALL cekhakakses(:iduser,2)');
    Qcek.ParamByName('iduser').AsString := iduser;
    Qcek.Open;
    if Qcek.RecordCount > 0 then
    begin
      Result := True;
      if Qcek.Locate('idmu','1',[loPartialKey])=false then
      begin
        menuutama[1].Visible := false;
      end;
      if Qcek.Locate('idmu','2',[loPartialKey])=false then
      begin
        menuutama[2].Visible := false;
      end;
      if Qcek.Locate('idmu','3',[loPartialKey])=false then
      begin
        menuutama[3].Visible := false;
      end;

      if Qcek.Locate('idmu','4',[loPartialKey])=false then
      begin
        menuutama[4].Visible := false;
      end;
      if Qcek.Locate('idmu','5',[loPartialKey])=false then
      begin
        menuutama[5].Visible := false;
      end;
    end
    else
    begin
      Result := false;
    end;
  end;
end;

procedure Tfomain.deklarasimenu;
begin
  menuutama[1] := dxRibbon1Tab1;
  menuutama[2] := dxRibbon1Tab4;
  menuutama[3] := dxRibbon1Tab5;
  menuutama[4] := dxRibbon1Tab6;
  menuutama[5] := dxRibbon1Tab7;
end;

procedure Tfomain.dxBarButton1Click(Sender: TObject);
begin
  if folaplabarugi<>nil then
  begin
    folaplabarugi.ShowModal;
  end
  else
  begin
    try
      folaplabarugi := Tfolaplabarugi.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;

    folaplabarugi.ShowModal;
  end;
end;

procedure Tfomain.dxBarButton2Click(Sender: TObject);
begin
  if folapneraca<>nil then
  begin
    folapneraca.ShowModal;
  end
  else
  begin
    try
      folapneraca := Tfolapneraca.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;
    folapneraca.ShowModal;
  end;
end;

procedure Tfomain.dxBarButton3Click(Sender: TObject);
begin
  if folaparuskas<>nil then
  begin
    folaparuskas.ShowModal;
  end
  else
  begin
    try
      folaparuskas := Tfolaparuskas.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;

    folaparuskas.ShowModal;
  end;
end;

procedure Tfomain.dxBarButton4Click(Sender: TObject);
begin
  if folaprincianbiaya<>nil then
  begin
    folaprincianbiaya.ShowModal;
  end
  else
  begin
    try
      folaprincianbiaya := Tfolaprincianbiaya.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;
    folaprincianbiaya.ShowModal;
  end;
end;

procedure Tfomain.dxBarLargeButton10Click(Sender: TObject);
begin
  if fokaskeluar<>nil then
  begin
    if fokaskeluar.Visible = false then
    begin
      fokaskeluar.FormStyle := fsMDIChild;
      fokaskeluar.Show;
    end
    else
    begin
      fokaskeluar.WindowState := wsMaximized;
    end;
  end
  else
  begin
    try
      fokaskeluar := Tfokaskeluar.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;

    if fokaskeluar.Visible = false then
    begin
      fokaskeluar.FormStyle := fsMDIChild;
      fokaskeluar.Show;
    end
    else
    begin
      fokaskeluar.WindowState := wsMaximized;
    end;
  end;
end;

procedure Tfomain.dxBarLargeButton11Click(Sender: TObject);
begin
  if folaplhk<>nil then
  begin
    folaplhk.ShowModal;
  end
  else
  begin
    try
      folaplhk := Tfolaplhk.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;
    folaplhk.ShowModal;
  end;
end;

procedure Tfomain.dxBarLargeButton14Click(Sender: TObject);
begin
  if fovocer<>nil then
  begin
    if fovocer.Visible = false then
    begin
      fovocer.FormStyle := fsMDIChild;
      fovocer.Show;
    end
    else
    begin
      fovocer.WindowState := wsMaximized;
    end;
  end
  else
  begin
    try
      fovocer := Tfovocer.Create(Application);

    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;

    if fovocer.Visible = false then
    begin
      fovocer.FormStyle := fsMDIChild;
      fovocer.Show;
    end
    else
    begin
      fovocer.WindowState := wsMaximized;
    end;
  end;
end;

procedure Tfomain.dxBarLargeButton18Click(Sender: TObject);
begin
  if folapusulan<>nil then
  begin
    folapusulan.ShowModal;
  end
  else
  begin
    try
      folapusulan := Tfolapusulan.Create(Application);
      folapusulan.ShowModal;
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;
  end;
end;

procedure Tfomain.dxBarLargeButton1Click(Sender: TObject);
begin
  if fovocerbayar<>nil then
  begin
    if fovocerbayar.Visible = false then
    begin
      fovocerbayar.FormStyle := fsMDIChild;
      fovocerbayar.Show;
    end
    else
    begin
      fovocerbayar.WindowState := wsMaximized;
    end;
  end
  else
  begin
    try
      fovocerbayar := Tfovocerbayar.Create(Application);

    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;

    if fovocerbayar.Visible = false then
    begin
      fovocerbayar.FormStyle := fsMDIChild;
      fovocerbayar.Show;
    end
    else
    begin
      fovocerbayar.WindowState := wsMaximized;
    end;
  end;
end;

procedure Tfomain.dxBarLargeButton22Click(Sender: TObject);
begin
  if fosaldoawal<>nil then
  begin
    if fosaldoawal.Visible = False then
    begin
      fosaldoawal.FormStyle := fsMDIChild;
      fosaldoawal.Show;
    end
    else
    begin
      fosaldoawal.WindowState := wsMaximized;
    end;

  end
  else
  begin
    try
      fosaldoawal := Tfosaldoawal.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;

    if fosaldoawal.Visible = False then
    begin
      fosaldoawal.FormStyle := fsMDIChild;
      fosaldoawal.Show;
    end
    else
    begin
      fosaldoawal.WindowState := wsMaximized;
    end;
  end;
end;

procedure Tfomain.dxBarLargeButton23Click(Sender: TObject);
begin

  if fokodeakun<>nil then
  begin
    if fokodeakun.Visible = false then
    begin
      fokodeakun.FormStyle := fsMDIChild;
      fokodeakun.Show;
    end
    else
    begin
      fokodeakun.WindowState := wsMaximized;
    end;
  end
  else
  begin
    try
      fokodeakun := Tfokodeakun.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;

    if fokodeakun.Visible = false then
    begin
      fokodeakun.FormStyle := fsMDIChild;
      fokodeakun.Show;
    end
    else
    begin
      fokodeakun.WindowState := wsMaximized;
    end;
  end;
end;

procedure Tfomain.dxBarLargeButton24Click(Sender: TObject);
begin
  if fojpk<>nil then
  begin
    fojpk.ShowModal;
  end
  else
  begin
    try
      fojpk := Tfojpk.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;
    fojpk.ShowModal;
  end;
end;

procedure Tfomain.dxBarLargeButton25Click(Sender: TObject);
begin
  if folapjbk<>nil then
  begin
    folapjbk.ShowModal;
  end
  else
  begin
    try
      folapjbk := Tfolapjbk.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;
    folapjbk.ShowModal;
  end;
end;

procedure Tfomain.dxBarLargeButton27Click(Sender: TObject);
begin
  if foju<>nil then
  begin
    if foju.Visible = false then
    begin
      foju.FormStyle := fsMDIChild;
      foju.Show;
    end
    else
    begin
      foju.WindowState := wsMaximized;
    end;
  end
  else
  begin
    try
      foju := Tfoju.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;
    if foju.Visible = false then
    begin
      foju.FormStyle := fsMDIChild;
      foju.Show;
    end
    else
    begin
      foju.WindowState := wsMaximized;
    end;
  end;
end;

procedure Tfomain.dxBarLargeButton2Click(Sender: TObject);
begin
  if focetakvoucher<>nil then
  begin
    focetakvoucher.ShowModal;
  end
  else
  begin
    try
      focetakvoucher := Tfocetakvoucher.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;
    focetakvoucher.ShowModal;
  end;
end;

procedure Tfomain.dxBarLargeButton30Click(Sender: TObject);
begin
  if foanggaranlr<>nil then
  begin
    if foanggaranlr.Visible = false then
    begin
      foanggaranlr.FormStyle := fsMDIChild;
      foanggaranlr.Show;
    end
    else
    begin
      foanggaranlr.WindowState := wsMaximized;
    end;
  end
  else
  begin
    try
      foanggaranlr := Tfoanggaranlr.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;

    if foanggaranlr.Visible = false then
    begin
      foanggaranlr.FormStyle := fsMDIChild;
      foanggaranlr.Show;
    end
    else
    begin
      foanggaranlr.WindowState := wsMaximized;
    end;

  end;


end;

procedure Tfomain.dxBarLargeButton31Click(Sender: TObject);
begin
  if fosubbukubesar<>nil then
  begin
    if fosubbukubesar.Visible = false then
    begin
      fosubbukubesar.FormStyle := fsMDIChild;
      fosubbukubesar.Show;
    end
    else
    begin
      fosubbukubesar.WindowState := wsMaximized;
    end;
  end
  else
  begin
    try
      fosubbukubesar := Tfosubbukubesar.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;


    if fosubbukubesar.Visible = false then
    begin
      fosubbukubesar.FormStyle := fsMDIChild;
      fosubbukubesar.Show;
    end
    else
    begin
      fosubbukubesar.WindowState := wsMaximized;
    end;
  end;
end;

procedure Tfomain.dxBarLargeButton33Click(Sender: TObject);
begin
  folaplabarugi.ShowModal;
end;

procedure Tfomain.dxBarLargeButton34Click(Sender: TObject);
begin
 folapneraca.ShowModal;
end;

procedure Tfomain.dxBarLargeButton36Click(Sender: TObject);
begin
  if foperiodeposting<>nil then
  begin
    if foperiodeposting.Visible = false then
    begin
      foperiodeposting.FormStyle := fsMDIChild;
      foperiodeposting.Show;
    end
    else
    begin
      foperiodeposting.WindowState := wsMaximized;
    end;
  end
  else
  begin
    try
      foperiodeposting := Tfoperiodeposting.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;

    if foperiodeposting.Visible = false then
    begin
      foperiodeposting.FormStyle := fsMDIChild;
      foperiodeposting.Show;
    end
    else
    begin
      foperiodeposting.WindowState := wsMaximized;
    end;
  end;
end;

procedure Tfomain.dxBarLargeButton37Click(Sender: TObject);
begin
  if fovkk<>nil then
  begin
    if fovkk.Visible = false then
    begin
      fovkk.FormStyle := fsMDIChild;
      fovkk.Show;
    end
    else
    begin
      fovkk.WindowState := wsMaximized;
    end;
  end
  else
  begin
    try
      fovkk := Tfovkk.Create(Application);

      if fovkk.Visible = false then
      begin
        fovkk.FormStyle := fsMDIChild;
        fovkk.Show;
      end
      else
      begin
        fovkk.WindowState := wsMaximized;
      end;

    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;


  end;
end;

procedure Tfomain.dxBarLargeButton39Click(Sender: TObject);
begin
  if foplatformkk<>nil then
  begin
    if foplatformkk.Visible = false then
    begin
      foplatformkk.FormStyle := fsMDIChild;
      foplatformkk.Show;
    end
    else
    begin
      foplatformkk.WindowState := wsMaximized;
    end;
  end
  else
  begin
    try
      foplatformkk := Tfoplatformkk.Create(Application);

    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;

    if foplatformkk.Visible = false then
    begin
      foplatformkk.FormStyle := fsMDIChild;
      foplatformkk.Show;
    end
    else
    begin
      foplatformkk.WindowState := wsMaximized;
    end;
  end;
end;

procedure Tfomain.dxBarLargeButton40Click(Sender: TObject);
begin
  if foasset<>nil then
  begin
    if foasset.Visible = false then
    begin
      foasset.FormStyle := fsMDIChild;
      foasset.Show;
    end
    else
    begin
      foasset.WindowState := wsMaximized;
    end;
  end
  else
  begin
    try
      foasset := Tfoasset.Create(Application);

    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;

    if foasset.Visible = false then
    begin
      foasset.FormStyle := fsMDIChild;
      foasset.Show;
    end
    else
    begin
      foasset.WindowState := wsMaximized;
    end;
  end;
end;

procedure Tfomain.dxBarLargeButton41Click(Sender: TObject);
begin
  if folapusulanvkk<>nil then
  begin
    folapusulanvkk.ShowModal;
  end
  else
  begin
    try
      folapusulanvkk := Tfolapusulanvkk.Create(Application);
      folapusulanvkk.ShowModal;
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;
  end;
end;

procedure Tfomain.dxBarLargeButton42Click(Sender: TObject);
begin

  if fogolaktiva<>nil then
  begin
    fogolaktiva.ShowModal;
  end
  else
  begin
    try
      fogolaktiva := Tfogolaktiva.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;
    fogolaktiva.ShowModal;
  end;
end;

procedure Tfomain.dxBarLargeButton43Click(Sender: TObject);
begin
  if foparaflaporan<>nil then
  begin
    if foparaflaporan.Visible = false then
    begin
      foparaflaporan.FormStyle := fsMDIChild;
      foparaflaporan.Show;
    end
    else
    begin
      foparaflaporan.WindowState := wsMaximized;
    end;
  end
  else
  begin
    try
      foparaflaporan := Tfoparaflaporan.Create(Application);


      if foparaflaporan.Visible = false then
      begin
        foparaflaporan.FormStyle := fsMDIChild;
        foparaflaporan.Show;
      end
      else
      begin
        foparaflaporan.WindowState := wsMaximized;
      end;
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;

  end;
end;

procedure Tfomain.dxBarLargeButton45Click(Sender: TObject);
begin
  if fouserakses<>nil then
  begin
    if fouserakses.Visible = false then
    begin
      fouserakses.FormStyle := fsMDIChild;
      fouserakses.Show;
    end
    else
    begin
      fouserakses.WindowState := wsMaximized;
    end;
  end
  else
  begin
    try
      fouserakses := Tfouserakses.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;

    if fouserakses.Visible = false then
    begin
      fouserakses.FormStyle := fsMDIChild;
      fouserakses.Show;
    end
    else
    begin
      fouserakses.WindowState := wsMaximized;
    end;
  end;
end;

procedure Tfomain.dxBarLargeButton47Click(Sender: TObject);
begin
  if fojra<>nil then
  begin
    fojra.ShowModal;
  end
  else
  begin
    try
      fojra := Tfojra.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;
    fojra.ShowModal;
  end;
end;

procedure Tfomain.dxBarLargeButton48Click(Sender: TObject);
begin
{  if fojrna<>nil then
  begin
    fojrna.ShowModal;
  end
  else
  begin
    try
      fojrna := Tfojrna.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;
    fojrna.ShowModal;
  end; }
  MessageDlg('JRNA Hanya Berlaku untuk Pasang Baru Yang Angsuran.!',mtInformation,[mbok],0);
end;

procedure Tfomain.dxBarLargeButton49Click(Sender: TObject);
begin
  if fodhhd<>nil then
  begin
    fodhhd.ShowModal;
  end
  else
  begin
    try
      fodhhd := Tfodhhd.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;
    fodhhd.ShowModal;
  end;
end;

procedure Tfomain.dxBarLargeButton4Click(Sender: TObject);
begin
  if fopostingawaltahun<>nil then
  begin
    fopostingawaltahun.ShowModal;
  end
  else
  begin
    try
      fopostingawaltahun := Tfopostingawaltahun.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;
    fopostingawaltahun.ShowModal;
  end;
end;

procedure Tfomain.dxBarLargeButton50Click(Sender: TObject);
begin
  if fojpbik<>nil then
  begin
    fojpbik.ShowModal;
  end
  else
  begin
    try
      fojpbik := Tfojpbik.Create(Application);
      fojpbik.ShowModal;
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;
  end;

//  MessageDlg('JPBIK Belum Diintegrasikan..!'+#13+'Harap Input data melalui Jurnal Umum Atau Hubungi Administrator Untuk Mengintegrasikan.!',mtInformation,[mbok],0);
end;

procedure Tfomain.dxBarLargeButton51Click(Sender: TObject);
begin
  if fopdpk<>nil then
  begin
    fopdpk.ShowModal;
  end
  else
  begin
    try
      fopdpk := Tfopdpk.Create(Application);
      fopdpk.ShowModal;
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;

  end;

end;

procedure Tfomain.dxBarLargeButton52Click(Sender: TObject);
begin
  if fosetorkas<>nil then
  begin
    fosetorkas.ShowModal;
  end
  else
  begin
    try
      fosetorkas := Tfosetorkas.Create(Application);
      fosetorkas.ShowModal;
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;

  end;
end;

procedure Tfomain.dxBarLargeButton53Click(Sender: TObject);
begin
  if fodpk<>nil then
  begin
    if fodpk.Visible = false then
    begin
      fodpk.FormStyle := fsMDIChild;
      fodpk.Show;
    end
    else
    begin
      fodpk.WindowState := wsMaximized;
    end;
  end
  else
  begin
    try
      fodpk := Tfodpk.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;

    if fodpk.Visible = false then
    begin
      fodpk.FormStyle := fsMDIChild;
      fodpk.Show;
    end
    else
    begin
      fodpk.WindowState := wsMaximized;
    end;
  end;
end;

procedure Tfomain.dxBarLargeButton54Click(Sender: TObject);
begin
  if foakunkelaktiva<>nil then
  begin
    foakunkelaktiva.ShowModal;
  end
  else
  begin
    try
      foakunkelaktiva := Tfoakunkelaktiva.Create(Application);
      foakunkelaktiva.ShowModal;
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;

  end;
end;

procedure Tfomain.dxBarLargeButton55Click(Sender: TObject);
begin

  if folockjurnal<>nil then
  begin
    folockjurnal.ShowModal;
  end
  else
  begin
    try
      folockjurnal := Tfolockjurnal.Create(Application);
      folockjurnal.ShowModal;
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;

  end;
end;

procedure Tfomain.dxBarLargeButton56Click(Sender: TObject);
begin
  if folapdph<>nil then
  begin
    folapdph.ShowModal;
  end
  else
  begin
    try
      folapdph := Tfolapdph.Create(Application);
      folapdph.ShowModal;
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;
  end;
end;

procedure Tfomain.dxBarLargeButton57Click(Sender: TObject);
begin
  if foanggaranpu<>nil then
  begin
    if foanggaranpu.Visible = false then
    begin
      foanggaranpu.FormStyle := fsMDIChild;
      foanggaranpu.Show;
    end
    else
    begin
      foanggaranpu.WindowState := wsMaximized;
    end;
  end
  else
  begin
    try
      foanggaranpu := Tfoanggaranpu.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;

    if foanggaranpu.Visible = false then
    begin
      foanggaranpu.FormStyle := fsMDIChild;
      foanggaranpu.Show;
    end
    else
    begin
      foanggaranpu.WindowState := wsMaximized;
    end;

  end;
end;

procedure Tfomain.dxBarLargeButton58Click(Sender: TObject);
begin
  if foneracalajur<>nil then
  begin
    if foneracalajur.Visible = false then
    begin
      foneracalajur.FormStyle := fsMDIChild;
      foneracalajur.Show;
    end
    else
    begin
      foneracalajur.WindowState := wsMaximized;
    end;
  end
  else
  begin
    try
      foneracalajur := Tfoneracalajur.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;


    if foneracalajur.Visible = false then
    begin
      foneracalajur.FormStyle := fsMDIChild;
      foneracalajur.Show;
    end
    else
    begin
      foneracalajur.WindowState := wsMaximized;
    end;
  end;
end;

procedure Tfomain.dxBarLargeButton59Click(Sender: TObject);
begin
  if fodspk<>nil then
  begin
    if fodspk.Visible = false then
    begin
      fodspk.FormStyle := fsMDIChild;
      fodspk.Show;
    end
    else
    begin
      fodspk.WindowState := wsMaximized;
    end;
  end
  else
  begin
    try
      fodspk := Tfodspk.Create(Application);
      if fodspk.Visible = false then
      begin
        fodspk.FormStyle := fsMDIChild;
        fodspk.Show;
      end
      else
      begin
        fodspk.WindowState := wsMaximized;
      end;
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;


  end;
end;

procedure Tfomain.dxBarLargeButton5Click(Sender: TObject);
begin
  if foupdatesaldoawal<>nil then
  begin
    foupdatesaldoawal.ShowModal;
  end
  else
  begin
    try
      foupdatesaldoawal := Tfoupdatesaldoawal.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;
    foupdatesaldoawal.ShowModal;
  end;
end;

procedure Tfomain.dxBarLargeButton6Click(Sender: TObject);
begin

  if foparaf<>nil then
  begin
    foparaf.ShowModal;
  end
  else
  begin
    try
      foparaf := Tfoparaf.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;
    foparaf.ShowModal;
  end;
end;

procedure Tfomain.dxBarLargeButton7Click(Sender: TObject);
begin
  if fokasmasuk<>nil then
  begin
    if fokasmasuk.Visible = false then
    begin
      fokasmasuk.FormStyle := fsMDIChild;
      fokasmasuk.Show;
    end
    else
    begin
      fokasmasuk.WindowState := wsMaximized;
    end;
  end
  else
  begin

    try
      fokasmasuk := Tfokasmasuk.Create(Application);
    except
      on e:Exception do
      begin
        MessageDlg('Error On create Form :'+e.Message,mtError,[mbok],0);
      end;
    end;

    if fokasmasuk.Visible = false then
    begin
      fokasmasuk.FormStyle := fsMDIChild;
      fokasmasuk.Show;
    end
    else
    begin
      fokasmasuk.WindowState := wsMaximized;
    end;
  end;
end;

procedure Tfomain.dxRibbonStatusBar1Panels1Click(Sender: TObject);
begin
  fogantipass.ShowModal;
end;

procedure Tfomain.FormCreate(Sender: TObject);
begin
  DisableAero := true;
end;

procedure Tfomain.FormShow(Sender: TObject);
begin
  deklarasimenu;
  if fologin.ShowModal=mrCancel then
  Application.Terminate;
end;

end.
