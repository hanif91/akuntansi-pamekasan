object foperiodeposting: Tfoperiodeposting
  Left = 0
  Top = 0
  Caption = 'Periode Posting'
  ClientHeight = 539
  ClientWidth = 679
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 679
    Height = 539
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
    ShowHint = False
    TabColors.HighlightBar = 6336039
    TabColors.Shadow = 52479
    TabColors.Unselected = 3927039
    TabIndex = 0
    TabOrder = 0
    TextColors.Selected = 6710886
    TextColors.Unselected = 10260600
    UseGradients = False
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Color = 52479
      Caption = 'Daftar Periode Posting'
      object RzPanel1: TRzPanel
        Left = 0
        Top = 0
        Width = 679
        Height = 520
        Align = alClient
        BorderOuter = fsFlat
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          679
          520)
        object RzPanel2: TRzPanel
          Left = 97
          Top = 24
          Width = 447
          Height = 469
          Anchors = [akTop, akBottom]
          BorderOuter = fsFlat
          TabOrder = 0
          Transparent = True
          object cxGrid1: TcxGrid
            Left = 48
            Top = 1
            Width = 398
            Height = 467
            Align = alClient
            BorderStyle = cxcbsNone
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
              DataController.DataSource = Dperiode
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
              Styles.Header = dm.bold8
              object cxGrid1DBTableView1periode: TcxGridDBColumn
                Caption = 'Kode Periode'
                DataBinding.FieldName = 'periode'
                Visible = False
                Width = 53
              end
              object cxGrid1DBTableView1nama: TcxGridDBColumn
                Caption = 'Bulan Tahun'
                DataBinding.FieldName = 'nama'
                Width = 269
              end
              object cxGrid1DBTableView1aktif: TcxGridDBColumn
                Caption = 'Kunci'
                DataBinding.FieldName = 'aktif'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Images = dm.img16
                Properties.Items = <
                  item
                    ImageIndex = 2
                  end
                  item
                    ImageIndex = 2
                    Value = '1'
                  end
                  item
                    ImageIndex = 3
                    Value = '0'
                  end>
                HeaderAlignmentHorz = taCenter
                Width = 67
              end
              object cxGrid1DBTableView1arsip: TcxGridDBColumn
                Caption = 'Arsip'
                DataBinding.FieldName = 'arsip'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Images = dm.img16
                Properties.Items = <
                  item
                    ImageIndex = 0
                    Value = '1'
                  end
                  item
                    ImageIndex = 1
                  end
                  item
                    ImageIndex = 1
                    Value = '0'
                  end>
                Width = 50
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object RzPanel3: TRzPanel
            Left = 1
            Top = 1
            Width = 47
            Height = 467
            Align = alLeft
            BorderOuter = fsFlat
            BorderSides = [sdRight]
            TabOrder = 1
            object cxButton3: TcxButton
              Left = 0
              Top = 73
              Width = 46
              Height = 35
              Hint = 'Refresh'
              Align = alTop
              OptionsImage.ImageIndex = 8
              OptionsImage.Images = dm.img24
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              WordWrap = True
              OnClick = cxButton3Click
            end
            object cxButton2: TcxButton
              Left = 0
              Top = 38
              Width = 46
              Height = 35
              Hint = 'Hapus'
              Align = alTop
              OptionsImage.ImageIndex = 7
              OptionsImage.Images = dm.img24
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              Visible = False
              WordWrap = True
              OnClick = cxButton2Click
            end
            object cxButton1: TcxButton
              Left = 0
              Top = 0
              Width = 46
              Height = 38
              Hint = 'Tambah Data'
              Align = alTop
              OptionsImage.ImageIndex = 13
              OptionsImage.Images = dm.img24
              OptionsImage.Layout = blGlyphTop
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              WordWrap = True
              OnClick = cxButton1Click
            end
          end
        end
      end
    end
  end
  object Qperiode: TMyQuery
    SQLRefresh.Strings = (
      'SELECT * FROM periodeposting ORDER BY periode desc')
    Connection = dm.Conn1
    SQL.Strings = (
      'SELECT * FROM periodeposting ORDER BY periode desc')
    Options.FieldOrigins = foNone
    Left = 560
    Top = 320
    object Qperiodeperiode: TStringField
      FieldName = 'periode'
      FixedChar = True
      Size = 6
    end
    object Qperiodenama: TStringField
      FieldName = 'nama'
      Size = 35
    end
    object Qperiodeaktif: TStringField
      FieldName = 'aktif'
      FixedChar = True
      Size = 1
    end
    object Qperiodearsip: TStringField
      FieldName = 'arsip'
      FixedChar = True
      Size = 1
    end
  end
  object Dperiode: TMyDataSource
    DataSet = Qperiode
    Left = 584
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    Images = dm.img16
    OnPopup = PopupMenu1Popup
    Left = 576
    Top = 160
    object SetKunci1: TMenuItem
      Caption = 'Kunci Jurnal'
      ImageIndex = 3
      OnClick = SetKunci1Click
    end
    object BukaKunci1: TMenuItem
      Caption = 'Buka Kunci Jurnal'
      ImageIndex = 2
      OnClick = BukaKunci1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ArispkanPeriode1: TMenuItem
      Caption = 'Arispkan Periode'
      OnClick = ArispkanPeriode1Click
    end
    object Nonarsipkan1: TMenuItem
      Caption = 'Batal Arsipkan'
      OnClick = Nonarsipkan1Click
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <
      item
        GridView = cxGrid1DBTableView1
        HitTypes = [gvhtCell]
        Index = 0
        PopupMenu = PopupMenu1
      end>
    Left = 576
    Top = 96
  end
end
