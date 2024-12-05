object fodspk: Tfodspk
  Left = 0
  Top = 0
  Caption = 'Daftar Setor Penerimaan Kas'
  ClientHeight = 701
  ClientWidth = 1166
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
    Width = 1166
    Height = 701
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
      Caption = 'Daftar Penerimaan Kas'
      object RzPanel1setorsimp: TRzPanel
        Left = 0
        Top = 0
        Width = 1166
        Height = 682
        Align = alClient
        BorderOuter = fsFlat
        TabOrder = 0
        object RzPanel2: TRzPanel
          Left = 1
          Top = 1
          Width = 1164
          Height = 680
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object dxDockSite1: TdxDockSite
            Left = 0
            Top = 0
            Width = 1164
            Height = 680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ManagerFont = False
            Align = alClient
            DockingType = 5
            OriginalWidth = 1164
            OriginalHeight = 680
            object dxLayoutDockSite1: TdxLayoutDockSite
              Left = 0
              Top = 0
              Width = 748
              Height = 680
              DockingType = 0
              OriginalWidth = 300
              OriginalHeight = 200
              object dxLayoutDockSite3: TdxLayoutDockSite
                Left = 0
                Top = 0
                Width = 748
                Height = 680
                DockingType = 0
                OriginalWidth = 300
                OriginalHeight = 200
              end
              object dxDockPanel2: TdxDockPanel
                Left = 0
                Top = 0
                Width = 748
                Height = 680
                AllowFloating = True
                AutoHide = False
                Caption = 'dxDockPanel2'
                CustomCaptionButtons.Buttons = <>
                ShowCaption = False
                TabsProperties.CustomButtons.Buttons = <>
                DockingType = 0
                OriginalWidth = 185
                OriginalHeight = 140
                object RzPanel1: TRzPanel
                  Left = 0
                  Top = 0
                  Width = 740
                  Height = 37
                  Align = alTop
                  BorderOuter = fsFlat
                  BorderSides = [sdLeft, sdRight]
                  TabOrder = 0
                  object RzToolButton1: TRzToolButton
                    Left = 256
                    Top = 2
                    Width = 137
                    Height = 31
                    GradientColorStyle = gcsCustom
                    SelectionColorStart = 3927039
                    SelectionColorStop = 7457838
                    SelectionFrameColor = 52479
                    ImageIndex = 14
                    Images = dm.img24
                    ShowCaption = True
                    Transparent = False
                    UseToolbarShowCaption = False
                    UseToolbarVisualStyle = False
                    VisualStyle = vsGradient
                    Caption = '&Tampilkan'
                    Color = 2250751
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clCream
                    Font.Height = -12
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    OnClick = RzToolButton1Click
                  end
                  object cxComboBox2: TcxComboBox
                    Left = 81
                    Top = 2
                    AutoSize = False
                    ParentFont = False
                    Properties.DropDownListStyle = lsFixedList
                    Style.Font.Charset = ANSI_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -13
                    Style.Font.Name = 'Noto Sans'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 1
                    Visible = False
                    Height = 30
                    Width = 169
                  end
                  object cxComboBox1: TcxComboBox
                    Left = 81
                    Top = 2
                    AutoSize = False
                    ParentFont = False
                    Properties.DropDownListStyle = lsFixedList
                    Properties.OnChange = cxComboBox1PropertiesChange
                    Style.Font.Charset = ANSI_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -13
                    Style.Font.Name = 'Noto Sans'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 0
                    Height = 30
                    Width = 169
                  end
                  object cxLabel1: TcxLabel
                    Left = 12
                    Top = 7
                    Caption = 'Periode'
                    ParentFont = False
                    Style.Font.Charset = ANSI_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -13
                    Style.Font.Name = 'Noto Sans'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                  end
                end
                object cxGrid1: TcxGrid
                  Left = 0
                  Top = 37
                  Width = 740
                  Height = 636
                  Align = alClient
                  BorderStyle = cxcbsNone
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Noto Sans'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  ExplicitLeft = 2
                  ExplicitTop = 34
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
                    OnFocusedRecordChanged = cxGrid1DBTableView1FocusedRecordChanged
                    DataController.DataSource = Dju
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = '#,##0.##'
                        Kind = skSum
                        FieldName = 'jumlah'
                        Column = cxGrid1DBTableView1jumlah
                      end>
                    DataController.Summary.SummaryGroups = <>
                    OptionsCustomize.ColumnsQuickCustomization = True
                    OptionsData.CancelOnExit = False
                    OptionsData.Deleting = False
                    OptionsData.DeletingConfirmation = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsView.CellAutoHeight = True
                    OptionsView.ColumnAutoWidth = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    OptionsView.HeaderAutoHeight = True
                    OptionsView.Indicator = True
                    Styles.Footer = dm.bold8
                    Styles.Header = dm.bold8
                    object cxGrid1DBTableView1tanggal: TcxGridDBColumn
                      Caption = 'Tanggal'
                      DataBinding.FieldName = 'tanggal'
                      MinWidth = 117
                      Options.HorzSizing = False
                      Width = 117
                    end
                    object cxGrid1DBTableView1jumlah: TcxGridDBColumn
                      Caption = 'Jumlah'
                      DataBinding.FieldName = 'jumlah'
                      HeaderAlignmentHorz = taRightJustify
                      MinWidth = 145
                      Options.HorzSizing = False
                      Width = 145
                    end
                    object cxGrid1DBTableView1unit: TcxGridDBColumn
                      Caption = 'Keterangan Unit'
                      DataBinding.FieldName = 'unit'
                      HeaderAlignmentHorz = taCenter
                      Width = 305
                    end
                    object cxGrid1DBTableView1namakas: TcxGridDBColumn
                      Caption = 'Bank Tujuan'
                      DataBinding.FieldName = 'namakas'
                      Width = 161
                    end
                  end
                  object cxGrid1Level1: TcxGridLevel
                    GridView = cxGrid1DBTableView1
                  end
                end
              end
            end
            object dxDockPanel1: TdxDockPanel
              Left = 748
              Top = 0
              Width = 416
              Height = 680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ManagerFont = False
              AllowFloating = True
              AutoHide = False
              Caption = 'Detail Setoran Bank'
              CustomCaptionButtons.Buttons = <>
              TabsProperties.CustomButtons.Buttons = <>
              DockingType = 3
              OriginalWidth = 416
              OriginalHeight = 140
              object cxGrid2: TcxGrid
                Left = 0
                Top = 0
                Width = 408
                Height = 636
                Align = alClient
                BorderStyle = cxcbsNone
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Noto Sans'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                ExplicitLeft = 2
                ExplicitTop = 3
                object cxGridDBTableView1: TcxGridDBTableView
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
                  DataController.DataSource = ddju
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = '#,##0.##'
                      Kind = skSum
                      FieldName = 'debet'
                    end
                    item
                      Format = '#,##0.##'
                      Kind = skSum
                      FieldName = 'jumlah'
                      Column = cxGridDBTableView1kredit
                    end>
                  DataController.Summary.SummaryGroups = <>
                  OptionsCustomize.ColumnsQuickCustomization = True
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.CellAutoHeight = True
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderAutoHeight = True
                  OptionsView.Indicator = True
                  Styles.Footer = dm.bold8
                  Styles.Header = dm.bold8
                  object cxGridDBTableView1kodeunit: TcxGridDBColumn
                    Caption = 'Unit'
                    DataBinding.FieldName = 'kodeunit'
                    Width = 36
                  end
                  object cxGridDBTableView1namakas: TcxGridDBColumn
                    Caption = 'Bank Tujuan'
                    DataBinding.FieldName = 'namakas'
                    Width = 239
                  end
                  object cxGridDBTableView1kredit: TcxGridDBColumn
                    Caption = 'Jumlah'
                    DataBinding.FieldName = 'jumlah'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = '#,##0.##'
                    Properties.EditFormat = '#,##0.##'
                    Properties.UseThousandSeparator = True
                    HeaderAlignmentHorz = taRightJustify
                    Width = 121
                  end
                end
                object cxGridLevel1: TcxGridLevel
                  GridView = cxGridDBTableView1
                end
              end
            end
          end
        end
      end
    end
  end
  object Qdju: TMyQuery
    SQLRefresh.Strings = (
      'SELECT * '
      'FROM setorkas '
      'WHERE tanggal=:tanggal ORDER BY kodeunit')
    Connection = dm.Conn1
    SQL.Strings = (
      'SELECT * '
      'FROM setorkas '
      'WHERE tanggal="2023-01-05" ORDER BY kodeunit')
    Options.FieldOrigins = foNone
    Left = 248
    Top = 261
    object Qdjuid: TIntegerField
      FieldName = 'id'
    end
    object Qdjutanggal: TDateField
      FieldName = 'tanggal'
    end
    object Qdjunamakas: TStringField
      FieldName = 'namakas'
      Size = 35
    end
    object Qdjujumlah: TFloatField
      FieldName = 'jumlah'
      DisplayFormat = '#,##0.##'
    end
    object Qdjutglpost: TDateTimeField
      FieldName = 'tglpost'
    end
    object Qdjukodeunit: TStringField
      FieldName = 'kodeunit'
      Size = 10
    end
  end
  object ddju: TMyDataSource
    DataSet = Qdju
    Left = 304
    Top = 293
  end
  object Dju: TMyDataSource
    DataSet = Qju
    Left = 176
    Top = 264
  end
  object Qju: TMyQuery
    SQLRefresh.Strings = (
      ''
      
        'SELECT SUM(jumlah) AS jumlah,tanggal,GROUP_CONCAT(DISTINCT(kodeu' +
        'nit) ORDER BY kodeunit) AS unit,GROUP_CONCAT(DISTINCT(namakas) O' +
        'RDER BY namakas) AS namakas FROM setorkas '
      
        'WHERE DATE_FORMAT(tanggal,"%Y%m")=:periode GROUP BY tanggal ORDE' +
        'R BY tanggal')
    Connection = dm.Conn1
    SQL.Strings = (
      ''
      
        'SELECT SUM(jumlah) AS jumlah,tanggal,GROUP_CONCAT(DISTINCT(kodeu' +
        'nit) ORDER BY kodeunit) AS unit,GROUP_CONCAT(DISTINCT(namakas) O' +
        'RDER BY namakas) AS namakas FROM setorkas '
      
        'WHERE DATE_FORMAT(tanggal,"%Y%m")="202301" GROUP BY tanggal ORDE' +
        'R BY tanggal')
    Options.FieldOrigins = foNone
    Left = 296
    Top = 192
    object Qjutanggal: TDateField
      FieldName = 'tanggal'
    end
    object Qjujumlah: TFloatField
      FieldName = 'jumlah'
      DisplayFormat = '#,##0.##'
    end
    object Qjuunit: TMemoField
      FieldName = 'unit'
      BlobType = ftMemo
    end
    object Qjunamakas: TMemoField
      FieldName = 'namakas'
      BlobType = ftMemo
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
    Left = 184
    Top = 400
  end
  object PopupMenu1: TPopupMenu
    Images = dm.img16
    Left = 129
    Top = 332
    object HapusDataPenerimaan1: TMenuItem
      Caption = 'Hapus Data Penerimaan'
      ImageIndex = 5
      OnClick = HapusDataPenerimaan1Click
    end
  end
end
