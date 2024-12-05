object foparaf: Tfoparaf
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Paraf TTD Laporan'
  ClientHeight = 322
  ClientWidth = 509
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object cxGrid1: TcxGrid
    Left = 3
    Top = 1
    Width = 498
    Height = 314
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
      DataController.DataSource = Dttd
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
      object cxGrid1DBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Options.Editing = False
        Width = 29
      end
      object cxGrid1DBTableView1nama: TcxGridDBColumn
        DataBinding.FieldName = 'nama'
        Width = 252
      end
      object cxGrid1DBTableView1jabatan: TcxGridDBColumn
        DataBinding.FieldName = 'jabatan'
        Width = 158
      end
      object cxGrid1DBTableView1nik: TcxGridDBColumn
        Caption = 'Nik'
        DataBinding.FieldName = 'nik'
        Width = 81
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Qttd: TMyQuery
    Connection = dm.Conn1
    SQL.Strings = (
      'select * from paraf order by id'
      '')
    Options.FieldOrigins = foNone
    Left = 144
    Top = 216
    object Qttdid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object Qttdnama: TStringField
      FieldName = 'nama'
      Size = 75
    end
    object Qttdjabatan: TStringField
      FieldName = 'jabatan'
      Size = 75
    end
    object Qttdnik: TStringField
      FieldName = 'nik'
      Size = 50
    end
  end
  object Dttd: TMyDataSource
    DataSet = Qttd
    Left = 160
    Top = 248
  end
end
