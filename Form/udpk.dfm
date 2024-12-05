object fodpk: Tfodpk
  Left = 0
  Top = 0
  Caption = 'Daftar Penerimaan Kas'
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
    ExplicitHeight = 787
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Color = 52479
      Caption = 'Daftar Penerimaan Kas'
      ExplicitHeight = 768
      object RzPanel1setorsimp: TRzPanel
        Left = 0
        Top = 0
        Width = 1166
        Height = 682
        Align = alClient
        BorderOuter = fsFlat
        TabOrder = 0
        ExplicitHeight = 768
        object RzPanel2: TRzPanel
          Left = 1
          Top = 1
          Width = 1164
          Height = 680
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          ExplicitHeight = 766
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
            ExplicitHeight = 766
            DockingType = 5
            OriginalWidth = 1164
            OriginalHeight = 680
            object dxLayoutDockSite1: TdxLayoutDockSite
              Left = 0
              Top = 0
              Width = 748
              Height = 680
              ExplicitHeight = 766
              DockingType = 0
              OriginalWidth = 300
              OriginalHeight = 200
              object dxLayoutDockSite3: TdxLayoutDockSite
                Left = 0
                Top = 0
                Width = 748
                Height = 680
                ExplicitHeight = 766
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
                ExplicitHeight = 766
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
                  ExplicitHeight = 722
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
                        FieldName = 'jumlahtunai'
                        Column = cxGrid1DBTableView1jumlahtunai
                      end
                      item
                        Format = '#,##0.##'
                        Kind = skSum
                        FieldName = 'jumlahnontunai'
                        Column = cxGrid1DBTableView1jumlahnontunai
                      end
                      item
                        Format = '#,##0.##'
                        Kind = skSum
                        FieldName = 'jumlah'
                        Column = cxGrid1DBTableView1jumlah
                      end
                      item
                        Format = '#,##0.##'
                        Kind = skSum
                        FieldName = 'jumlahsetor'
                        Column = cxGrid1DBTableView1jumlahsetor
                      end
                      item
                        Format = '#,##0.##'
                        Kind = skSum
                        FieldName = 'sisabelumsetor'
                        Column = cxGrid1DBTableView1sisabelumsetor
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
                    object cxGrid1DBTableView1idju: TcxGridDBColumn
                      Caption = 'Id Ju'
                      DataBinding.FieldName = 'idju'
                      Visible = False
                      Width = 38
                    end
                    object cxGrid1DBTableView1tipejurnal: TcxGridDBColumn
                      Caption = 'Tipe Jurnal'
                      DataBinding.FieldName = 'tipejurnal'
                      Visible = False
                      Width = 149
                    end
                    object cxGrid1DBTableView1tanggal: TcxGridDBColumn
                      Caption = 'Tanggal'
                      DataBinding.FieldName = 'tanggal'
                      Width = 114
                    end
                    object cxGrid1DBTableView1penjelasan: TcxGridDBColumn
                      Caption = 'Penjelasan'
                      DataBinding.FieldName = 'penjelasan'
                      PropertiesClassName = 'TcxMemoProperties'
                      Properties.ReadOnly = True
                      Properties.ScrollBars = ssVertical
                      Visible = False
                      Width = 63
                    end
                    object cxGrid1DBTableView1jumlahtunai: TcxGridDBColumn
                      Caption = 'Jml Pener. Tunai'
                      DataBinding.FieldName = 'jumlahtunai'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DisplayFormat = '#,##0.##'
                      Properties.EditFormat = '#,##0.##'
                      Properties.UseThousandSeparator = True
                      Width = 128
                    end
                    object cxGrid1DBTableView1jumlahnontunai: TcxGridDBColumn
                      Caption = 'Jml. Pener. Non Tunai'
                      DataBinding.FieldName = 'jumlahnontunai'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DisplayFormat = '#,##0.##'
                      Properties.EditFormat = '#,##0.##'
                      Properties.UseThousandSeparator = True
                      Width = 140
                    end
                    object cxGrid1DBTableView1jumlah: TcxGridDBColumn
                      Caption = 'Jumlah Penerimaan'
                      DataBinding.FieldName = 'jumlah'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DisplayFormat = '#,##0.##'
                      Properties.EditFormat = '#,##0.##'
                      Properties.UseThousandSeparator = True
                      Width = 137
                    end
                    object cxGrid1DBTableView1jumlahsetor: TcxGridDBColumn
                      Caption = 'Jumlah Kas Tunai di Setor'
                      DataBinding.FieldName = 'jumlahsetor'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DisplayFormat = '#,##0.##'
                      Properties.EditFormat = '#,##0.##'
                      Properties.UseThousandSeparator = True
                      Width = 107
                    end
                    object cxGrid1DBTableView1sisabelumsetor: TcxGridDBColumn
                      Caption = 'Sisa Yg Belum Setor'
                      DataBinding.FieldName = 'sisabelumsetor'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DisplayFormat = '#,##0.##'
                      Properties.EditFormat = '#,##0.##'
                      Properties.UseThousandSeparator = True
                      Width = 102
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
              Caption = 'Detail Penerimaan'
              CustomCaptionButtons.Buttons = <>
              TabsProperties.CustomButtons.Buttons = <>
              ExplicitHeight = 766
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
                ExplicitHeight = 722
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
                  object cxGridDBTableView1namaakun: TcxGridDBColumn
                    Caption = 'Keterangan'
                    DataBinding.FieldName = 'keterangan'
                    Width = 180
                  end
                  object cxGridDBTableView1kredit: TcxGridDBColumn
                    Caption = 'Jumlah'
                    DataBinding.FieldName = 'jumlah'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = '#,##0.##'
                    Properties.EditFormat = '#,##0.##'
                    Properties.UseThousandSeparator = True
                    HeaderAlignmentHorz = taRightJustify
                    Width = 75
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
      'call view_dpk_detailsum(:tanggal)')
    Connection = dm.Conn1
    SQL.Strings = (
      'SELECT a.keterangan,a.jumlah+denda as jumlah,b.idcoa'
      'FROM dpk a '
      'LEFT JOIN set_kas_air b ON a.kodedebet=b.kasir '
      'WHERE tanggal="2020-05-05" ORDER BY b.idcoa,id')
    Options.FieldOrigins = foNone
    Left = 248
    Top = 261
    object Qdjuketerangan: TStringField
      FieldName = 'keterangan'
      Size = 150
    end
    object Qdjujumlah: TFloatField
      FieldName = 'jumlah'
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
      'CALL view_dpk_sum(:periode)')
    Connection = dm.Conn1
    SQL.Strings = (
      ''
      
        'SELECT a.tanggal,SUM(IF(b.idcoa=1,a.jumlah+a.denda,0)) AS jumlah' +
        'tunai,'
      'SUM(IF(b.idcoa<>1,a.jumlah+a.denda,0)) AS jumlahnontunai,'
      'COALESCE(c.jumlah,0) AS jumlahsetor,'
      
        'SUM(IF(b.idcoa=1,a.jumlah+a.denda,0))-COALESCE(c.jumlah,0) AS si' +
        'sabelumsetor,'
      'SUM(a.jumlah+a.denda) AS jumlah'
      'FROM dpk a '
      'LEFT JOIN set_kas_air b ON a.kodedebet=b.kasir '
      
        'LEFT JOIN (SELECT SUM(jumlah) AS jumlah,tanggal FROM setorkas WH' +
        'ERE DATE_FORMAT(tanggal,"%Y%m")="202005" GROUP BY tanggal) c ON ' +
        'a.tanggal=c.tanggal'
      'WHERE DATE_FORMAT(a.tanggal,"%Y%m")="202005" GROUP BY a.tanggal')
    Options.FieldOrigins = foNone
    Left = 296
    Top = 192
    object Qjutanggal: TDateField
      FieldName = 'tanggal'
    end
    object Qjujumlahtunai: TFloatField
      FieldName = 'jumlahtunai'
    end
    object Qjujumlahnontunai: TFloatField
      FieldName = 'jumlahnontunai'
    end
    object Qjujumlahsetor: TFloatField
      FieldName = 'jumlahsetor'
    end
    object Qjusisabelumsetor: TFloatField
      FieldName = 'sisabelumsetor'
    end
    object Qjujumlah: TFloatField
      FieldName = 'jumlah'
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
    Left = 152
    Top = 136
  end
  object PopupMenu1: TPopupMenu
    Images = dm.img16
    Left = 153
    Top = 180
    object HapusDataPenerimaan1: TMenuItem
      Caption = 'Hapus Data Penerimaan'
      ImageIndex = 5
      OnClick = HapusDataPenerimaan1Click
    end
  end
end
