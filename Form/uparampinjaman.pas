unit uparampinjaman;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, RzButton, cxMaskEdit, cxDropDownEdit, cxTextEdit,
  cxCurrencyEdit, cxLabel, RzTabs, Vcl.ExtCtrls, RzPanel, udm;

type
  Tfoparampinjaman = class(TForm)
    RzPanel4: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    pinj1: TcxCurrencyEdit;
    pinj12: TcxCurrencyEdit;
    cxLabel4: TcxLabel;
    adm1: TcxCurrencyEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    bunga1: TcxCurrencyEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    maxangs1: TcxCurrencyEdit;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    dendaangs1: TcxCurrencyEdit;
    cxLabel11: TcxLabel;
    cxLabel13: TcxLabel;
    cxComboBox1: TcxComboBox;
    cxLabel12: TcxLabel;
    dendanominal1: TcxCurrencyEdit;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    pinj2: TcxCurrencyEdit;
    pinj22: TcxCurrencyEdit;
    cxLabel17: TcxLabel;
    adm2: TcxCurrencyEdit;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    bunga2: TcxCurrencyEdit;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    maxangs2: TcxCurrencyEdit;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    dendaangs2: TcxCurrencyEdit;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxComboBox2: TcxComboBox;
    cxLabel26: TcxLabel;
    dendanominal2: TcxCurrencyEdit;
    adm3: TcxCurrencyEdit;
    dendanominal3: TcxCurrencyEdit;
    cxLabel27: TcxLabel;
    cxComboBox3: TcxComboBox;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    dendaangs3: TcxCurrencyEdit;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    maxangs3: TcxCurrencyEdit;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    bunga3: TcxCurrencyEdit;
    cxLabel34: TcxLabel;
    cxLabel35: TcxLabel;
    cxLabel36: TcxLabel;
    pinj32: TcxCurrencyEdit;
    pinj3: TcxCurrencyEdit;
    cxLabel37: TcxLabel;
    cxLabel38: TcxLabel;
    cxLabel39: TcxLabel;
    btnsimpan: TRzToolButton;
    RzToolButton1: TRzToolButton;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnsimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure refreshdata;
  end;

var
  foparampinjaman: Tfoparampinjaman;

implementation

{$R *.dfm}

procedure Tfoparampinjaman.btnsimpanClick(Sender: TObject);
begin
  with dm do
  begin
    Qex.Close;
    Qex.SQL.Clear;
    Qex.SQL.Add('update parampinjaman set platformbawah=:platformbawah,platformatas=:platformatas,byadmin=:byadmin,persenbunga=:persenbunga,maxkaliangsur=:maxkaliangsur,');
    Qex.SQL.Add('persendenda=:persendenda,persendendadari=:persendendadari,dendanominal=:dendanominal where idparam="1"');
    Qex.ParamByName('platformbawah').AsCurrency := pinj1.Value;
    Qex.ParamByName('platformatas').AsCurrency := pinj12.Value;
    Qex.ParamByName('byadmin').AsCurrency := adm1.Value;
    Qex.ParamByName('persenbunga').AsCurrency := bunga1.Value;
    Qex.ParamByName('maxkaliangsur').AsCurrency := maxangs1.Value;
    Qex.ParamByName('persendenda').AsCurrency := dendaangs1.Value;
    Qex.ParamByName('persendendadari').AsString := cxComboBox1.text;
    Qex.ParamByName('dendanominal').AsCurrency := dendanominal1.Value;
    Qex.Execute;

    Qex.Close;
    Qex.SQL.Clear;
    Qex.SQL.Add('update parampinjaman set platformbawah=:platformbawah,platformatas=:platformatas,byadmin=:byadmin,persenbunga=:persenbunga,maxkaliangsur=:maxkaliangsur,');
    Qex.SQL.Add('persendenda=:persendenda,persendendadari=:persendendadari,dendanominal=:dendanominal where idparam="2"');
    Qex.ParamByName('platformbawah').AsCurrency := pinj2.Value;
    Qex.ParamByName('platformatas').AsCurrency := pinj22.Value;
    Qex.ParamByName('byadmin').AsCurrency := adm2.Value;
    Qex.ParamByName('persenbunga').AsCurrency := bunga2.Value;
    Qex.ParamByName('maxkaliangsur').AsCurrency := maxangs2.Value;
    Qex.ParamByName('persendenda').AsCurrency := dendaangs2.Value;
    Qex.ParamByName('persendendadari').AsString := cxComboBox2.text;
    Qex.ParamByName('dendanominal').AsCurrency := dendanominal2.Value;
    Qex.Execute;

    Qex.Close;
    Qex.SQL.Clear;
    Qex.SQL.Add('update parampinjaman set platformbawah=:platformbawah,platformatas=:platformatas,byadmin=:byadmin,persenbunga=:persenbunga,maxkaliangsur=:maxkaliangsur,');
    Qex.SQL.Add('persendenda=:persendenda,persendendadari=:persendendadari,dendanominal=:dendanominal where idparam="3"');
    Qex.ParamByName('platformbawah').AsCurrency := pinj3.Value;
    Qex.ParamByName('platformatas').AsCurrency := pinj32.Value;
    Qex.ParamByName('byadmin').AsCurrency := adm3.Value;
    Qex.ParamByName('persenbunga').AsCurrency := bunga3.Value;
    Qex.ParamByName('maxkaliangsur').AsCurrency := maxangs3.Value;
    Qex.ParamByName('persendenda').AsCurrency := dendaangs3.Value;
    Qex.ParamByName('persendendadari').AsString := cxComboBox3.text;
    Qex.ParamByName('dendanominal').AsCurrency := dendanominal3.Value;
    Qex.Execute;
  end;

  MessageDlg('Parameter Berhasil Disimpan..!',mtConfirmation,[mbok],0);
  refreshdata;
end;

procedure Tfoparampinjaman.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_f5 then
  refreshdata;
end;

procedure Tfoparampinjaman.FormShow(Sender: TObject);
begin
  refreshdata;
end;

procedure Tfoparampinjaman.refreshdata;
begin
  with dm do
  begin
    qcek.Close;
    qcek.sql.Clear;
    Qcek.SQL.Add('SELECT * FROM parampinjaman order by idparam');
    Qcek.Open;

    pinj1.Value := Qcek.FieldByName('platformbawah').AsCurrency;
    pinj12.Value := Qcek.FieldByName('platformatas').AsCurrency;
    adm1.Value := Qcek.FieldByName('byadmin').AsCurrency;
    bunga1.Value := Qcek.FieldByName('persenbunga').AsCurrency;
    maxangs1.Value := Qcek.FieldByName('maxkaliangsur').AsCurrency;
    dendaangs1.Value := Qcek.FieldByName('persendenda').AsCurrency;
    cxComboBox1.ItemIndex := cxComboBox1.Properties.Items.IndexOf(Qcek.FieldByName('persendendadari').AsString);
    dendanominal1.Value := Qcek.FieldByName('dendanominal').AsCurrency;
    Qcek.Next;

    pinj2.Value := Qcek.FieldByName('platformbawah').AsCurrency;
    pinj22.Value := Qcek.FieldByName('platformatas').AsCurrency;
    adm2.Value := Qcek.FieldByName('byadmin').AsCurrency;
    bunga2.Value := Qcek.FieldByName('persenbunga').AsCurrency;
    maxangs2.Value := Qcek.FieldByName('maxkaliangsur').AsCurrency;
    dendaangs2.Value := Qcek.FieldByName('persendenda').AsCurrency;
    cxComboBox2.ItemIndex := cxComboBox1.Properties.Items.IndexOf(Qcek.FieldByName('persendendadari').AsString);
    dendanominal2.Value := Qcek.FieldByName('dendanominal').AsCurrency;

    Qcek.Next;

    pinj3.Value := Qcek.FieldByName('platformbawah').AsCurrency;
    pinj32.Value := Qcek.FieldByName('platformatas').AsCurrency;
    adm3.Value := Qcek.FieldByName('byadmin').AsCurrency;
    bunga3.Value := Qcek.FieldByName('persenbunga').AsCurrency;
    maxangs3.Value := Qcek.FieldByName('maxkaliangsur').AsCurrency;
    dendaangs3.Value := Qcek.FieldByName('persendenda').AsCurrency;
    cxComboBox3.ItemIndex := cxComboBox1.Properties.Items.IndexOf(Qcek.FieldByName('persendendadari').AsString);
    dendanominal3.Value := Qcek.FieldByName('dendanominal').AsCurrency;

    Qcek.Next;

  end;
end;

end.
