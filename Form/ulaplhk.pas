unit ulaplhk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, Vcl.Menus, Data.DB, DBAccess, MyAccess, MemDS, frxClass,
  frxDBSet, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLabel, RzTabs, Vcl.ExtCtrls, RzPanel, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxCalendar, System.Actions, Vcl.ActnList, frxDesgn,
  dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxProgressBar, dxActivityIndicator, frxDMPExport,frxDMPClass,
  dxSkinsDefaultPainters, scDevExStyleAdapter, cxCheckBox;

type
  Tfolaplhk = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    cxlabel1: TcxLabel;
    cxButton2: TcxButton;
    SaveDialog1: TSaveDialog;
    dblr: TfrxDBDataset;
    Qlrrekap: TMyQuery;
    dblrrekap: TfrxDBDataset;
    Qlr: TMyQuery;
    cxLabel3: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    ActionList1: TActionList;
    F7: TAction;
    frxDesigner1: TfrxDesigner;
    dxActivityIndicator1: TdxActivityIndicator;
    Timer1: TTimer;
    cxDateEdit2: TcxDateEdit;
    frxReport1: TfrxReport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxReport2: TfrxReport;
    frxReport3: TfrxReport;
    cxCheckBox2: TcxCheckBox;
    CombKodeunit: TcxComboBox;
    Combnamaunit: TcxComboBox;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure F7Execute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cxCheckBox2Click(Sender: TObject);
    procedure CombKodeunitPropertiesChange(Sender: TObject);
    procedure CombnamaunitPropertiesChange(Sender: TObject);
  private
    lastdate : TDate;
    mythread : TThread;
    tglawaltahun,tglsdbulanini : tdate;
    periode,msgerror : string;
     flag,flagreport : byte;
    { Private declarations }


  public
    procedure generatelr;
    procedure previewreport;
    procedure exportlr;
  end;

var
  folaplhk: Tfolaplhk;

implementation
uses dateutils,strutils,cxGridExportLink, usettgllap;

{$R *.dfm}

{ Tfolaplhk }

procedure Tfolaplhk.CombKodeunitPropertiesChange(Sender: TObject);
begin
  Combnamaunit.ItemIndex := CombKodeunit.ItemIndex;
end;

procedure Tfolaplhk.CombnamaunitPropertiesChange(Sender: TObject);
begin
  CombKodeunit.ItemIndex := Combnamaunit.ItemIndex;
end;

procedure Tfolaplhk.cxButton1Click(Sender: TObject);
begin
  folaplhk.ShowModal;
end;

procedure Tfolaplhk.cxButton2Click(Sender: TObject);
var
  dirlogo : string;
begin
  if FormatDateTime('yyyymm',cxDateEdit1.Date) = FormatDateTime('yyyymm',cxDateEdit2.Date)  then
  begin

    lastdate := cxDateEdit2.Date;
    tglsdbulanini := lastdate;
    tglawaltahun := cxDateEdit1.Date;
    flagreport := 0;
    flag := 0;
    msgerror := '';
    Timer1.Enabled := true;
    if cxCheckBox2.Checked then
    begin
      if Trim(CombKodeunit.Text)='' then
      begin
        MessageDlg('Kodeunit Masih Kosong..!',mtWarning,[mbOK],0);
        Exit;
      end;
    end;

    mythread := TThread.CreateAnonymousThread(generatelr);
    mythread.FreeOnTerminate := true;
    mythread.Start;
  end
  else
  begin
    MessageDlg('Periode Tanggal Tidak Boleh Berbeda..',mtWarning,[mbok],0);
  end;
end;



procedure Tfolaplhk.cxCheckBox2Click(Sender: TObject);
begin
  if cxCheckBox2.Checked then
  begin
    CombKodeunit.Enabled := True;
    Combnamaunit.Enabled := True;
  end
  else
  begin
    CombKodeunit.Enabled := false;
    Combnamaunit.Enabled := false;
  end;
end;

procedure Tfolaplhk.exportlr;
begin
{ if Qlr.RecordCount > 0 then
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
  end; }

end;

procedure Tfolaplhk.F7Execute(Sender: TObject);
begin
{  if cxComboBox3.ItemIndex=0 then
  begin
    replr.LoadFromFile(ExtractFilePath(Application.ExeName)+'report\lr1.fr3');
    frxDesigner1.OpenDir :=ExtractFilePath(Application.ExeName)+'report\';
    replr.DesignReport;
  end
  else if cxComboBox1.ItemIndex=1 then
  begin
    replrrekap.LoadFromFile(ExtractFilePath(Application.ExeName)+'report\lr2.fr3');
    frxDesigner1.OpenDir :=ExtractFilePath(Application.ExeName)+'report\';
    replrrekap.DesignReport;
  end; }
end;

procedure Tfolaplhk.FormCreate(Sender: TObject);
begin
  Self.Height := cxButton2.Top+cxButton2.Height+50;
  Self.width := cxDateEdit1.Left+cxDateEdit2.Width+50;
  cxDateEdit1.Date := Date;
  cxDateEdit2.Date := Date;
end;

procedure Tfolaplhk.FormShow(Sender: TObject);
begin
 // dm.isicombo2('periodeposting',cxComboBox1,cxComboBox2);
  dm.isicombo2('unitkerja',CombKodeunit,Combnamaunit);
end;



procedure Tfolaplhk.generatelr;
begin
  try
    TThread.Synchronize (TThread.CurrentThread,
    procedure ()
    begin
      cxButton2.Enabled := false;
      cxButton2.Visible := false;
      dxActivityIndicator1.Active := true;
    end);

    try
      with dm do
      begin
        if cxCheckBox2.Checked then
        begin
          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('CALL `ex_lhk_rep_unit`(:tgl1,:tgl2,:namauser,:kodeunit)');
          Qex.ParamByName('tgl1').AsDate := cxDateEdit1.Date;
          Qex.ParamByName('tgl2').AsDate := cxDateEdit2.Date;
          Qex.ParamByName('namauser').AsString := userlogin;
          Qex.ParamByName('kodeunit').AsString := CombKodeunit.Text;
          Qex.Execute;
        end
        else
        begin
          Qex.Close;
          Qex.SQL.Clear;
          Qex.SQL.Add('CALL `ex_lhk_rep`(:tgl1,:tgl2,:namauser)');
          Qex.ParamByName('tgl1').AsDate := cxDateEdit1.Date;
          Qex.ParamByName('tgl2').AsDate := cxDateEdit2.Date;
          Qex.ParamByName('namauser').AsString := userlogin;
          Qex.Execute;
        end;



     {   Qex.Close;
        Qex.SQL.Clear;
        Qex.SQL.Add('CALL `ex_lr_detail`(:awaltahun,:tglbulanini,:periodeini,:namauser);');
        Qex.ParamByName('awaltahun').AsDate := tglawaltahun;
        Qex.ParamByName('tglbulanini').AsDate := tglsdbulanini;
        Qex.ParamByName('periodeini').AsString := periode;
        Qex.ParamByName('namauser').AsString := userlogin;
        Qex.Execute;     }



        qlr.Close;
        Qlr.ParamByName('namauser').AsString := userlogin;
        Qlr.Open;

        Qlrrekap.Close;
        Qlrrekap.ParamByName('namauser').AsString := userlogin;
        Qlrrekap.Open;

      end;
    except
      on e:exception do
      begin
        msgerror := e.Message;
        flag:=1;
      end;
    end;

    TThread.Synchronize (TThread.CurrentThread,
    procedure ()
    begin
      flag:=1;
    end);
  except
    flag:=1;
  end;
end;

procedure Tfolaplhk.previewreport;
var
 dirlogo : string;
begin
  try
    with dm do
    begin
     if Qlr.RecordCount > 0 then
      begin
        dm.isidatattd('lhk',userlogin);
        frxReport3.LoadFromFile(ExtractFilePath(Application.ExeName)+'\report\lhk-2.fr3');

        dirlogo := ExtractFilePath(Application.ExeName)+'\logo\Kop Laporan.png';

      {  if FileExists(dirlogo) then
        begin
         // TfrxPictureView(frxReport1.FindObject('Picture1')).Picture.LoadFromFile(dirlogo);
          //TfrxMemoView(lapkm.FindObject('header1')).Left := 3;
          //TfrxMemoView(lapkm.FindObject('header2')).Left := 3;
         // TfrxMemoView(lapkm.FindObject('alamat1')).Left := 3;
         // TfrxMemoView(lapkm.FindObject('alamat2')).Left := 3;

        end
        else
        begin
          TfrxPictureView(replr.FindObject('Picture1')).Picture.Graphic := nil;
          TfrxMemoView(replr.FindObject('header1')).Left := 0;
          TfrxMemoView(replr.FindObject('header2')).Left := 0;
          TfrxMemoView(replr.FindObject('alamat1')).Left := 0;
          TfrxMemoView(replr.FindObject('alamat2')).Left := 0;
        end;  }
        TfrxMemoView(frxReport3.FindObject('header1')).Memo.Text:= headerlap1;
        TfrxMemoView(frxReport3.FindObject('header2')).Memo.Text:= headerlap2;
        TfrxMemoView(frxReport3.FindObject('header11')).Memo.Text:= headerlap1;
        TfrxMemoView(frxReport3.FindObject('header22')).Memo.Text:= headerlap2;
        if cxCheckBox2.Checked then
        begin
          TfrxMemoView(frxReport3.FindObject('kodeunit1')).Memo.Text:= 'UNIT: '+UpperCase(Combnamaunit.Text);
          TfrxMemoView(frxReport3.FindObject('kodeunit2')).Memo.Text:= 'UNIT: '+UpperCase(Combnamaunit.Text);
        end
        else
        begin
          TfrxMemoView(frxReport3.FindObject('kodeunit1')).Memo.Text:= 'KONSOLIDASI';
          TfrxMemoView(frxReport3.FindObject('kodeunit2')).Memo.Text:= 'KONSOLIDASI';
        end;

        TfrxMemoView(frxReport3.FindObject('periode2')).Memo.Text:= FormatDateTime('dd mmmm yyyy',cxDateEdit1.Date)+' s/d '+FormatDateTime('dd mmmm yyyy',cxDateEdit2.Date);
        TfrxMemoView(frxReport3.FindObject('footer2')).Memo.Text:= footerkota+', '+FormatDateTime('dd mmmm yyyy',cxDateEdit2.Date);

        frxReport3.ShowReport();
      end
      else
      begin
        MessageDlg('Tidak ada data ..!',mtWarning,[mbok],0);
      end;
    end;
  except
    on e:exception do
    begin
      MessageDlg('Terdapatt Kesalahan..!!'+#13+e.Message,mtError,[mbok],0);

    end;
  end;
end;

procedure Tfolaplhk.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  self.Close;
end;

procedure Tfolaplhk.Timer1Timer(Sender: TObject);
begin
 if flag=1 then
  begin
    Timer1.Enabled := false;
    dxActivityIndicator1.Active := false;
    cxButton2.Enabled := true;
    cxButton2.Visible := true;
    dxActivityIndicator1.Active := false;
    flag:=0;
    if msgerror<>'' then
      MessageDlg(msgerror,mtError,[mbok],0);
    if flagreport=0 then
    previewreport
    else
      exportlr;
  end;

end;

end.
