object focaricoa: Tfocaricoa
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'focaricoa'
  ClientHeight = 471
  ClientWidth = 402
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel4: TRzPanel
    Left = 0
    Top = 0
    Width = 402
    Height = 471
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 398
      Height = 467
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
      ExplicitLeft = 0
      ExplicitTop = 0
      FixedDimension = 19
      object TabSheet1: TRzTabSheet
        Color = 52479
        Caption = 'Cari Kode Akun'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 398
          Height = 448
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          object cxGrid1: TcxGrid
            Left = 4
            Top = 31
            Width = 392
            Height = 410
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object cxGrid1DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.First.Visible = True
              Navigator.Buttons.PriorPage.Visible = True
              Navigator.Buttons.Prior.Visible = True
              Navigator.Buttons.Next.Visible = True
              Navigator.Buttons.NextPage.Visible = True
              Navigator.Buttons.Last.Visible = True
              Navigator.Buttons.Insert.Visible = True
              Navigator.Buttons.Append.Visible = False
              Navigator.Buttons.Delete.Visible = True
              Navigator.Buttons.Edit.Visible = True
              Navigator.Buttons.Post.Visible = True
              Navigator.Buttons.Cancel.Visible = True
              Navigator.Buttons.Refresh.Visible = True
              Navigator.Buttons.SaveBookmark.Visible = True
              Navigator.Buttons.GotoBookmark.Visible = True
              Navigator.Buttons.Filter.Visible = True
              OnCellDblClick = cxGrid1DBTableView1CellDblClick
              DataController.DataSource = Dcoa
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxGrid1DBTableView1kodeakun: TcxGridDBColumn
                Caption = 'Kode Akun'
                DataBinding.FieldName = 'kodeakun'
                Width = 58
              end
              object cxGrid1DBTableView1namaakun: TcxGridDBColumn
                Caption = 'Nama Akun'
                DataBinding.FieldName = 'namaakun'
                Width = 281
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object cxTextEdit1: TcxTextEdit
            Left = 41
            Top = 4
            Properties.OnChange = cxTextEdit1PropertiesChange
            TabOrder = 1
            Width = 355
          end
          object cxLabel1: TcxLabel
            Left = 4
            Top = 5
            Caption = 'Nama'
            Transparent = True
          end
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 280
    Top = 80
    object enter: TAction
      Caption = 'enter'
      ShortCut = 13
      OnExecute = enterExecute
    end
    object esc: TAction
      Caption = 'esc'
      ShortCut = 27
      OnExecute = escExecute
    end
  end
  object Dcoa: TMyDataSource
    DataSet = Qcoa
    Left = 152
    Top = 168
  end
  object Qcoa: TMyQuery
    Connection = dm.Conn1
    SQL.Strings = (
      'select * from masterakun')
    Options.FieldOrigins = foNone
    Left = 152
    Top = 136
    object Qcoaidcoa: TIntegerField
      FieldName = 'idcoa'
    end
    object Qcoakodeakun: TStringField
      FieldName = 'kodeakun'
      Size = 8
    end
    object Qcoanamaakun: TStringField
      FieldName = 'namaakun'
      Size = 75
    end
    object Qcoaflagunit: TSmallintField
      FieldName = 'flagunit'
    end
  end
end
