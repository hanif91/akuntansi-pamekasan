object fokelaktiva: Tfokelaktiva
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Kelompok Aktiva'
  ClientHeight = 331
  ClientWidth = 525
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 8
    Top = 1
    Width = 510
    Height = 320
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = MyDataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1idcoa: TcxGridDBColumn
        DataBinding.FieldName = 'idcoa'
        Visible = False
      end
      object cxGrid1DBTableView1kodeakun: TcxGridDBColumn
        DataBinding.FieldName = 'kodeakun'
        Width = 67
      end
      object cxGrid1DBTableView1namaakun: TcxGridDBColumn
        Caption = 'Nama Akun'
        DataBinding.FieldName = 'namaakun'
        Width = 368
      end
      object cxGrid1DBTableView1idtipe3: TcxGridDBColumn
        DataBinding.FieldName = 'idtipe3'
        Visible = False
        Width = 42
      end
      object cxGrid1DBTableView1kodeetap: TcxGridDBColumn
        Caption = 'Gol Aktiva'
        DataBinding.FieldName = 'kodeetap'
        Width = 61
      end
      object cxGrid1DBTableView1kodebiayaetap: TcxGridDBColumn
        DataBinding.FieldName = 'kodebiayaetap'
        Visible = False
        Width = 35
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object MyDataSource1: TMyDataSource
    DataSet = MyQuery1
    Left = 296
    Top = 168
  end
  object MyQuery1: TMyQuery
    Connection = dm.Conn1
    SQL.Strings = (
      
        'Select * from coa where idtipe3 in (select idtipe3 from asset_ka' +
        't group by idtipe3)'
      'order by kodeakun ')
    Options.FieldOrigins = foNone
    Left = 176
    Top = 152
    object MyQuery1idcoa: TIntegerField
      FieldName = 'idcoa'
    end
    object MyQuery1kodeakun: TStringField
      FieldName = 'kodeakun'
      Size = 9
    end
    object MyQuery1namaakun: TStringField
      FieldName = 'namaakun'
      Size = 75
    end
    object MyQuery1idtipe3: TIntegerField
      FieldName = 'idtipe3'
    end
    object MyQuery1idtipearuskas_l: TIntegerField
      FieldName = 'idtipearuskas_l'
    end
    object MyQuery1kodeetap: TStringField
      FieldName = 'kodeetap'
      Size = 5
    end
    object MyQuery1kodebiayaetap: TStringField
      FieldName = 'kodebiayaetap'
      Size = 8
    end
  end
end
