object fogolaktiva: Tfogolaktiva
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Golongan Aktiva'
  ClientHeight = 333
  ClientWidth = 519
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
    Left = 3
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
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
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
      object cxGrid1DBTableView1golaktiva: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'golaktiva'
        Width = 48
      end
      object cxGrid1DBTableView1uraian: TcxGridDBColumn
        Caption = 'Golongan'
        DataBinding.FieldName = 'uraian'
        Width = 275
      end
      object cxGrid1DBTableView1jmltahun: TcxGridDBColumn
        Caption = 'Umur (thn)'
        DataBinding.FieldName = 'jmltahun'
        Width = 65
      end
      object cxGrid1DBTableView1jmlpersen: TcxGridDBColumn
        Caption = 'Persen/tahun'
        DataBinding.FieldName = 'jmlpersen'
        Width = 70
      end
      object cxGrid1DBTableView1kodesusut: TcxGridDBColumn
        Caption = 'KodeSusut'
        DataBinding.FieldName = 'kodesusut'
        Width = 38
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object MyQuery1: TMyQuery
    Connection = dm.Conn1
    SQL.Strings = (
      'Select * from golaktiva order by golaktiva')
    Options.FieldOrigins = foNone
    Left = 216
    Top = 192
    object MyQuery1golaktiva: TIntegerField
      FieldName = 'golaktiva'
    end
    object MyQuery1uraian: TStringField
      FieldName = 'uraian'
      Size = 50
    end
    object MyQuery1jmltahun: TFloatField
      FieldName = 'jmltahun'
    end
    object MyQuery1jmlpersen: TFloatField
      FieldName = 'jmlpersen'
    end
    object MyQuery1kodesusut: TStringField
      FieldName = 'kodesusut'
      Size = 2
    end
  end
  object MyDataSource1: TMyDataSource
    DataSet = MyQuery1
    Left = 232
    Top = 200
  end
end
