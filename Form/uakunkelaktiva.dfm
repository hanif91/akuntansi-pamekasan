object foakunkelaktiva: Tfoakunkelaktiva
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'foakunkelaktiva'
  ClientHeight = 377
  ClientWidth = 550
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object RzPanel4: TRzPanel
    Left = 0
    Top = 0
    Width = 550
    Height = 377
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 363
    ExplicitHeight = 410
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 546
      Height = 373
      Hint = ''
      ActivePage = TabSheet1
      Align = alClient
      BackgroundColor = 7457838
      BoldCurrentTab = True
      ButtonColor = 5264367
      ButtonSymbolColor = clWhite
      ButtonSymbolColorDisabled = 2250751
      Color = 52479
      LightenUnselectedColoredTabs = False
      FlatColor = 7457838
      HotTrackColor = 52479
      ParentBackgroundColor = False
      ParentColor = False
      ParentShowHint = False
      ShowCardFrame = False
      ShowCloseButton = True
      ShowHint = False
      TabColors.HighlightBar = 6336039
      TabColors.Shadow = 52479
      TabColors.Unselected = 3927039
      TabIndex = 0
      TabOrder = 0
      TextColors.Selected = 6710886
      TextColors.Unselected = 10260600
      UseGradients = False
      OnClose = RzPageControl1Close
      ExplicitWidth = 359
      ExplicitHeight = 406
      FixedDimension = 22
      object TabSheet1: TRzTabSheet
        Color = 52479
        Caption = 'Gol Aktiva'
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 546
          Height = 351
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          ExplicitWidth = 359
          ExplicitHeight = 384
          object cxGrid1: TcxGrid
            Left = 2
            Top = 9
            Width = 539
            Height = 336
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
              object cxGrid1DBTableView1idcoa: TcxGridDBColumn
                DataBinding.FieldName = 'idcoa'
                Visible = False
              end
              object cxGrid1DBTableView1kodeakun: TcxGridDBColumn
                Caption = 'Kode Akun'
                DataBinding.FieldName = 'kodeakun'
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.Sorting = False
                Width = 78
              end
              object cxGrid1DBTableView1namaakun: TcxGridDBColumn
                Caption = 'Nama Akun'
                DataBinding.FieldName = 'namaakun'
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.Sorting = False
                Width = 341
              end
              object cxGrid1DBTableView1kodeetap: TcxGridDBColumn
                Caption = 'Gol Aktiva'
                DataBinding.FieldName = 'kodeetap'
                Width = 77
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
        end
      end
    end
  end
  object MyQuery1: TMyQuery
    Connection = dm.Conn1
    SQL.Strings = (
      
        'Select * from coa where idtipe3 in (select idtipe3 from tipeakun' +
        'aktiva) order by kodeakun')
    Options.FieldOrigins = foNone
    Left = 216
    Top = 192
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
  object MyDataSource1: TMyDataSource
    DataSet = MyQuery1
    Left = 264
    Top = 200
  end
end
