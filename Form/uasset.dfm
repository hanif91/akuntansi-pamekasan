object foasset: Tfoasset
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Form Asset'
  ClientHeight = 623
  ClientWidth = 1044
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel4: TRzPanel
    Left = 0
    Top = 0
    Width = 1044
    Height = 623
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 1040
      Height = 619
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
      FixedDimension = 19
      object TabSheet1: TRzTabSheet
        Color = 52479
        Caption = 'Daftar Asset'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 1040
          Height = 600
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          object RzPanel1setorsimp: TRzPanel
            Left = 1
            Top = 1
            Width = 1038
            Height = 598
            Align = alClient
            BorderOuter = fsFlat
            TabOrder = 0
            object RzPanel2: TRzPanel
              Left = 1
              Top = 1
              Width = 1036
              Height = 596
              Align = alClient
              BorderOuter = fsNone
              TabOrder = 0
              object dxDockSite1: TdxDockSite
                Left = 0
                Top = 0
                Width = 1036
                Height = 596
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ManagerFont = False
                Align = alClient
                DockingType = 5
                OriginalWidth = 1036
                OriginalHeight = 596
                object dxLayoutDockSite2: TdxLayoutDockSite
                  Left = 0
                  Top = 0
                  Width = 792
                  Height = 596
                  DockingType = 0
                  OriginalWidth = 300
                  OriginalHeight = 200
                  object dxLayoutDockSite3: TdxLayoutDockSite
                    Left = 0
                    Top = 0
                    Width = 792
                    Height = 596
                    DockingType = 0
                    OriginalWidth = 300
                    OriginalHeight = 200
                  end
                  object dxDockPanel2: TdxDockPanel
                    Left = 0
                    Top = 0
                    Width = 792
                    Height = 596
                    AllowFloating = True
                    AutoHide = False
                    Caption = 'dxDockPanel2'
                    CustomCaptionButtons.Buttons = <>
                    ShowCaption = False
                    TabsProperties.CustomButtons.Buttons = <>
                    DockingType = 0
                    OriginalWidth = 185
                    OriginalHeight = 140
                    object RzPanel3: TRzPanel
                      Left = 0
                      Top = 0
                      Width = 784
                      Height = 37
                      Align = alTop
                      BorderOuter = fsFlat
                      BorderSides = [sdLeft, sdRight]
                      TabOrder = 0
                      DesignSize = (
                        784
                        37)
                      object RzToolButton1: TRzToolButton
                        Left = 0
                        Top = 2
                        Width = 137
                        Height = 32
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
                        Caption = '&Tambah Asset'
                        Color = 2250751
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clCream
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        OnClick = RzToolButton1Click
                      end
                      object RzToolButton2: TRzToolButton
                        Left = 143
                        Top = 2
                        Width = 98
                        Height = 32
                        GradientColorStyle = gcsCustom
                        SelectionColorStart = 3927039
                        SelectionColorStop = 7457838
                        SelectionFrameColor = 52479
                        ImageIndex = 5
                        Images = dm.img24
                        ShowCaption = True
                        Transparent = False
                        UseToolbarShowCaption = False
                        UseToolbarVisualStyle = False
                        VisualStyle = vsGradient
                        Caption = 'Expand'
                        Color = 2250751
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clCream
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        OnClick = RzToolButton2Click
                      end
                      object RzToolButton3: TRzToolButton
                        Left = 652
                        Top = 2
                        Width = 130
                        Height = 32
                        GradientColorStyle = gcsCustom
                        SelectionColorStart = 3927039
                        SelectionColorStop = 7457838
                        SelectionFrameColor = 52479
                        ImageIndex = 5
                        Images = dm.img24
                        ShowCaption = True
                        Transparent = False
                        UseToolbarShowCaption = False
                        UseToolbarVisualStyle = False
                        VisualStyle = vsGradient
                        Anchors = [akTop, akRight]
                        Caption = 'Export'
                        Color = 2250751
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clCream
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        OnClick = RzToolButton3Click
                      end
                      object RzToolButton4: TRzToolButton
                        Left = 255
                        Top = 2
                        Width = 154
                        Height = 32
                        GradientColorStyle = gcsCustom
                        SelectionColorStart = 3927039
                        SelectionColorStop = 7457838
                        SelectionFrameColor = 52479
                        ImageIndex = 13
                        Images = dm.img24
                        ShowCaption = True
                        Transparent = False
                        UseToolbarShowCaption = False
                        UseToolbarVisualStyle = False
                        VisualStyle = vsGradient
                        Caption = 'Tambah Penyusutan'
                        Color = 2250751
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clCream
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        OnClick = RzToolButton4Click
                      end
                      object RzToolButton5: TRzToolButton
                        Left = 415
                        Top = 2
                        Width = 154
                        Height = 32
                        GradientColorStyle = gcsCustom
                        SelectionColorStart = 3927039
                        SelectionColorStop = 7457838
                        SelectionFrameColor = 52479
                        ImageIndex = 1
                        Images = dm.img24
                        ShowCaption = True
                        Transparent = False
                        UseToolbarShowCaption = False
                        UseToolbarVisualStyle = False
                        VisualStyle = vsGradient
                        Caption = 'Hapus Penyusutan'
                        Color = 2250751
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clCream
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        OnClick = RzToolButton5Click
                      end
                      object cxCurrencyEdit1: TcxCurrencyEdit
                        Left = 883
                        Top = 10
                        Anchors = [akTop, akRight]
                        EditValue = 1.000000000000000000
                        Enabled = False
                        Properties.DisplayFormat = '#,##0.##'
                        Properties.MaxLength = 1
                        TabOrder = 0
                        Width = 22
                      end
                    end
                    object cxGrid1: TcxGrid
                      Left = 0
                      Top = 37
                      Width = 784
                      Height = 552
                      Align = alClient
                      BorderStyle = cxcbsNone
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Noto Sans'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 1
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
                        DataController.DataSource = Dasset
                        DataController.Summary.DefaultGroupSummaryItems.BeginText = '  ['
                        DataController.Summary.DefaultGroupSummaryItems.EndText = ']'
                        DataController.Summary.DefaultGroupSummaryItems = <
                          item
                            Format = '#,##0.##'
                            Kind = skSum
                            Position = spFooter
                            FieldName = 'nilai_perolehan'
                            Column = cxGrid1DBTableView1nilai_perolehan
                          end
                          item
                            Format = '#,##0.##'
                            Kind = skSum
                            Position = spFooter
                            FieldName = 'nilai_buku'
                            Column = cxGrid1DBTableView1nilai_buku
                          end
                          item
                            Format = '#,##0.##'
                            Kind = skSum
                            Position = spFooter
                            FieldName = 'nb_thnlalu'
                            Column = cxGrid1DBTableView1nb_thnlalu
                          end
                          item
                            Format = '#,##0.##'
                            Kind = skSum
                            Position = spFooter
                            FieldName = 'nb_periodeini'
                            Column = cxGrid1DBTableView1nb_periodeini
                          end
                          item
                            Format = '#,##0.##'
                            Position = spFooter
                            FieldName = 'susut_thnlalu'
                            Column = cxGrid1DBTableView1susut_thnlalu
                          end
                          item
                            Format = '#,##0.##'
                            Kind = skSum
                            Position = spFooter
                            FieldName = 'susut_sd_blnini'
                            Column = cxGrid1DBTableView1susut_sd_blnini
                          end
                          item
                            Format = '#,##0.##'
                            Kind = skSum
                            Position = spFooter
                            FieldName = 'susut_blnini'
                            Column = cxGrid1DBTableView1susut_blnini
                          end
                          item
                            Format = '#,##0.##'
                            Kind = skSum
                            FieldName = 'nb_periodeini'
                            Column = cxGrid1DBTableView1nb_periodeini
                          end>
                        DataController.Summary.FooterSummaryItems = <
                          item
                            Format = '#,##0.##'
                            Kind = skSum
                            FieldName = 'nilai_buku'
                            Column = cxGrid1DBTableView1nilai_buku
                          end
                          item
                            Format = '#,##0.##'
                            Kind = skSum
                            FieldName = 'nilai_perolehan'
                            Column = cxGrid1DBTableView1nilai_perolehan
                          end
                          item
                            Format = '#,##0.##'
                            Kind = skSum
                            FieldName = 'nb_thnlalu'
                            Column = cxGrid1DBTableView1nb_thnlalu
                          end
                          item
                            Format = '#,##0.##'
                            Kind = skSum
                            FieldName = 'nb_periodeini'
                            Column = cxGrid1DBTableView1nb_periodeini
                          end
                          item
                            Format = '#,##0.##'
                            Kind = skSum
                            FieldName = 'susut_thnlalu'
                            Column = cxGrid1DBTableView1susut_thnlalu
                          end
                          item
                            Format = '#,##0.##'
                            Kind = skSum
                            FieldName = 'susut_sd_blnini'
                            Column = cxGrid1DBTableView1susut_sd_blnini
                          end
                          item
                            Format = '#,##0.##'
                            Kind = skSum
                            FieldName = 'susut_blnini'
                            Column = cxGrid1DBTableView1susut_blnini
                          end>
                        DataController.Summary.SummaryGroups = <
                          item
                            Links = <>
                            SummaryItems.BeginText = '  ['
                            SummaryItems.EndText = ']'
                            SummaryItems = <
                              item
                              end>
                          end>
                        OptionsCustomize.ColumnsQuickCustomization = True
                        OptionsData.CancelOnExit = False
                        OptionsData.Deleting = False
                        OptionsData.DeletingConfirmation = False
                        OptionsData.Editing = False
                        OptionsData.Inserting = False
                        OptionsView.CellAutoHeight = True
                        OptionsView.Footer = True
                        OptionsView.GroupFooterMultiSummaries = True
                        OptionsView.GroupFooters = gfVisibleWhenExpanded
                        OptionsView.HeaderAutoHeight = True
                        OptionsView.Indicator = True
                        Styles.Footer = dm.bold8
                        Styles.GroupSummary = dm.bold8
                        Styles.Header = dm.bold8
                        object cxGrid1DBTableView1idasset_ak: TcxGridDBColumn
                          Caption = 'Id'
                          DataBinding.FieldName = 'idasset_ak'
                          Visible = False
                          Width = 36
                        end
                        object cxGrid1DBTableView1tgl_asset: TcxGridDBColumn
                          Caption = 'Tanggal'
                          DataBinding.FieldName = 'tgl_asset'
                          Options.Editing = False
                          Options.Filtering = False
                          Options.FilteringWithFindPanel = False
                          Options.IgnoreTimeForFiltering = False
                          Options.FilteringAddValueItems = False
                          Options.FilteringFilteredItemsList = False
                          Options.FilteringMRUItemsList = False
                          Options.FilteringPopup = False
                          Options.FilteringPopupMultiSelect = False
                          Options.Sorting = False
                          Width = 74
                        end
                        object cxGrid1DBTableView1noref: TcxGridDBColumn
                          Caption = 'No. Ref'
                          DataBinding.FieldName = 'noref'
                          PropertiesClassName = 'TcxTextEditProperties'
                          Properties.ReadOnly = True
                          Options.Editing = False
                          Options.Filtering = False
                          Options.FilteringWithFindPanel = False
                          Options.IgnoreTimeForFiltering = False
                          Options.FilteringAddValueItems = False
                          Options.FilteringFilteredItemsList = False
                          Options.FilteringMRUItemsList = False
                          Options.FilteringPopup = False
                          Options.FilteringPopupMultiSelect = False
                          Options.Sorting = False
                          Width = 75
                        end
                        object cxGrid1DBTableView1namaasset: TcxGridDBColumn
                          Caption = 'Uraian'
                          DataBinding.FieldName = 'namaasset'
                          Options.Editing = False
                          Options.Filtering = False
                          Options.FilteringWithFindPanel = False
                          Options.IgnoreTimeForFiltering = False
                          Options.FilteringAddValueItems = False
                          Options.FilteringFilteredItemsList = False
                          Options.FilteringMRUItemsList = False
                          Options.FilteringPopup = False
                          Options.FilteringPopupMultiSelect = False
                          Options.Sorting = False
                          Width = 298
                        end
                        object cxGrid1DBTableView1nilai_perolehan: TcxGridDBColumn
                          Caption = 'Perolehan'
                          DataBinding.FieldName = 'nilai_perolehan'
                          HeaderAlignmentHorz = taRightJustify
                          Options.Editing = False
                          Options.Filtering = False
                          Options.FilteringWithFindPanel = False
                          Options.IgnoreTimeForFiltering = False
                          Options.FilteringAddValueItems = False
                          Options.FilteringFilteredItemsList = False
                          Options.FilteringMRUItemsList = False
                          Options.FilteringPopup = False
                          Options.FilteringPopupMultiSelect = False
                          Options.Sorting = False
                          Width = 125
                        end
                        object cxGrid1DBTableView1nilai_buku: TcxGridDBColumn
                          Caption = 'Nilai Buku Awal'
                          DataBinding.FieldName = 'nilai_buku'
                          HeaderAlignmentHorz = taRightJustify
                          Options.Editing = False
                          Options.Filtering = False
                          Options.FilteringWithFindPanel = False
                          Options.IgnoreTimeForFiltering = False
                          Options.FilteringAddValueItems = False
                          Options.FilteringFilteredItemsList = False
                          Options.FilteringMRUItemsList = False
                          Options.FilteringPopup = False
                          Options.FilteringPopupMultiSelect = False
                          Options.Sorting = False
                          Width = 119
                        end
                        object cxGrid1DBTableView1susut_thnlalu: TcxGridDBColumn
                          Caption = 'Penyust. Thn Lalu'
                          DataBinding.FieldName = 'susut_thnlalu'
                          HeaderAlignmentHorz = taRightJustify
                          Width = 108
                        end
                        object cxGrid1DBTableView1nb_thnlalu: TcxGridDBColumn
                          Caption = 'Nilai Buku Tahun lalu'
                          DataBinding.FieldName = 'nb_thnlalu'
                          HeaderAlignmentHorz = taRightJustify
                          Options.Editing = False
                          Options.Filtering = False
                          Options.FilteringWithFindPanel = False
                          Options.IgnoreTimeForFiltering = False
                          Options.FilteringAddValueItems = False
                          Options.FilteringFilteredItemsList = False
                          Options.FilteringMRUItemsList = False
                          Options.FilteringPopup = False
                          Options.FilteringPopupMultiSelect = False
                          Options.Sorting = False
                          Width = 124
                        end
                        object cxGrid1DBTableView1susut_sd_blnini: TcxGridDBColumn
                          Caption = 'Penyust. Sd_Bulan ini'
                          DataBinding.FieldName = 'susut_sd_blnini'
                          HeaderAlignmentHorz = taRightJustify
                          Width = 105
                        end
                        object cxGrid1DBTableView1nb_periodeini: TcxGridDBColumn
                          Caption = 'Nilai Buku Periode ini'
                          DataBinding.FieldName = 'nb_periodeini'
                          HeaderAlignmentHorz = taRightJustify
                          Options.Editing = False
                          Options.Filtering = False
                          Options.FilteringWithFindPanel = False
                          Options.IgnoreTimeForFiltering = False
                          Options.FilteringAddValueItems = False
                          Options.FilteringFilteredItemsList = False
                          Options.FilteringMRUItemsList = False
                          Options.FilteringPopup = False
                          Options.FilteringPopupMultiSelect = False
                          Options.Sorting = False
                          Width = 138
                        end
                        object cxGrid1DBTableView1susut_blnini: TcxGridDBColumn
                          Caption = 'Penyust. Bulan_Ini'
                          DataBinding.FieldName = 'susut_blnini'
                          HeaderAlignmentHorz = taRightJustify
                          Width = 101
                        end
                        object cxGrid1DBTableView1kondisi: TcxGridDBColumn
                          DataBinding.FieldName = 'kondisi'
                          Options.Editing = False
                          Options.Filtering = False
                          Options.FilteringWithFindPanel = False
                          Options.IgnoreTimeForFiltering = False
                          Options.FilteringAddValueItems = False
                          Options.FilteringFilteredItemsList = False
                          Options.FilteringMRUItemsList = False
                          Options.FilteringPopup = False
                          Options.FilteringPopupMultiSelect = False
                          Options.Sorting = False
                          Width = 52
                        end
                        object cxGrid1DBTableView1flagdisusutkan: TcxGridDBColumn
                          Caption = 'Flag Disusutkan'
                          DataBinding.FieldName = 'flagdisusutkan'
                          Visible = False
                          Width = 32
                        end
                        object cxGrid1DBTableView1golaktiva: TcxGridDBColumn
                          Caption = 'Kode Gol'
                          DataBinding.FieldName = 'golaktiva'
                          Options.Editing = False
                          Options.Filtering = False
                          Options.FilteringWithFindPanel = False
                          Options.IgnoreTimeForFiltering = False
                          Options.FilteringAddValueItems = False
                          Options.FilteringFilteredItemsList = False
                          Options.FilteringMRUItemsList = False
                          Options.FilteringPopup = False
                          Options.FilteringPopupMultiSelect = False
                          Options.Sorting = False
                          Width = 36
                        end
                        object cxGrid1DBTableView1persenaktiva: TcxGridDBColumn
                          Caption = '%'
                          DataBinding.FieldName = 'persenaktiva'
                          Options.Editing = False
                          Options.Filtering = False
                          Options.FilteringWithFindPanel = False
                          Options.IgnoreTimeForFiltering = False
                          Options.FilteringAddValueItems = False
                          Options.FilteringFilteredItemsList = False
                          Options.FilteringMRUItemsList = False
                          Options.FilteringPopup = False
                          Options.FilteringPopupMultiSelect = False
                          Options.Sorting = False
                          Width = 27
                        end
                        object cxGrid1DBTableView1kodeakun3: TcxGridDBColumn
                          DataBinding.FieldName = 'kodeakun3'
                          Visible = False
                          Width = 103
                        end
                        object cxGrid1DBTableView1kodeakun: TcxGridDBColumn
                          DataBinding.FieldName = 'kodeakun'
                          Visible = False
                        end
                        object cxGrid1DBTableView1namaakun: TcxGridDBColumn
                          Caption = 'Nama Akun'
                          DataBinding.FieldName = 'namaakun'
                          Visible = False
                        end
                        object cxGrid1DBTableView1suburain: TcxGridDBColumn
                          Caption = 'Sub Uraian'
                          DataBinding.FieldName = 'suburain'
                          Visible = False
                          GroupIndex = 0
                        end
                        object cxGrid1DBTableView1kodesusut: TcxGridDBColumn
                          Caption = 'Kode Susut'
                          DataBinding.FieldName = 'kodesusut'
                          Visible = False
                          Width = 37
                        end
                        object cxGrid1DBTableView1jmltahun: TcxGridDBColumn
                          Caption = 'Umur Teknis'
                          DataBinding.FieldName = 'jmltahun'
                          Visible = False
                          Width = 43
                        end
                        object cxGrid1DBTableView1tgljttempo: TcxGridDBColumn
                          Caption = 'Tanggal JT.Tempo'
                          DataBinding.FieldName = 'tgljttempo'
                          Options.Editing = False
                          Options.Filtering = False
                          Options.FilteringWithFindPanel = False
                          Options.IgnoreTimeForFiltering = False
                          Options.FilteringAddValueItems = False
                          Options.FilteringFilteredItemsList = False
                          Options.FilteringMRUItemsList = False
                          Options.FilteringPopup = False
                          Options.FilteringPopupMultiSelect = False
                          Options.Sorting = False
                        end
                        object cxGrid1DBTableView1idcoa: TcxGridDBColumn
                          DataBinding.FieldName = 'idcoa'
                          Visible = False
                          Width = 51
                        end
                        object cxGrid1DBTableView1tipe3: TcxGridDBColumn
                          DataBinding.FieldName = 'tipe3'
                          Visible = False
                          Width = 196
                        end
                      end
                      object cxGrid1Level1: TcxGridLevel
                        GridView = cxGrid1DBTableView1
                      end
                    end
                  end
                end
                object dxDockPanel1: TdxDockPanel
                  Left = 792
                  Top = 0
                  Width = 244
                  Height = 596
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ManagerFont = False
                  AllowFloating = True
                  AutoHide = False
                  Caption = 'Filter && Pencarian Data'
                  CustomCaptionButtons.Buttons = <>
                  TabsProperties.CustomButtons.Buttons = <>
                  DockingType = 3
                  OriginalWidth = 244
                  OriginalHeight = 140
                  object cxButton5: TcxButton
                    Left = 60
                    Top = 395
                    Width = 128
                    Height = 35
                    Caption = '  &Tampilkan'
                    OptionsImage.ImageIndex = 10
                    OptionsImage.Images = dm.img24
                    TabOrder = 0
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    WordWrap = True
                    OnClick = cxButton5Click
                  end
                  object cxDateEdit2: TcxDateEdit
                    Left = 113
                    Top = 267
                    BeepOnEnter = False
                    Enabled = False
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 1
                    OnKeyDown = cxComboBox1KeyDown
                    Width = 111
                  end
                  object cxLabel1: TcxLabel
                    Left = 42
                    Top = 268
                    Caption = 'S/d'
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                  end
                  object cxDateEdit1: TcxDateEdit
                    Left = 113
                    Top = 242
                    BeepOnEnter = False
                    Enabled = False
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 3
                    OnKeyDown = cxComboBox1KeyDown
                    Width = 112
                  end
                  object cxCheckBox2: TcxCheckBox
                    Left = 7
                    Top = 242
                    Caption = 'Tgl Asset'
                    ParentBackground = False
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 4
                    OnClick = cxCheckBox2Click
                  end
                  object cxTextEdit1: TcxTextEdit
                    Left = 113
                    Top = 192
                    BeepOnEnter = False
                    Enabled = False
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 5
                    OnKeyDown = cxComboBox1KeyDown
                    Width = 111
                  end
                  object cxCheckBox1: TcxCheckBox
                    Left = 7
                    Top = 193
                    Caption = 'No Ref'
                    ParentBackground = False
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 6
                    OnClick = cxCheckBox1Click
                  end
                  object cxCheckBox3: TcxCheckBox
                    Left = 8
                    Top = 317
                    Caption = 'Thn Jt Tempo'
                    ParentBackground = False
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 7
                    OnClick = cxCheckBox3Click
                  end
                  object cxCheckBox5: TcxCheckBox
                    Left = 8
                    Top = 295
                    Caption = 'Uraian'
                    ParentBackground = False
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 8
                    OnClick = cxCheckBox5Click
                  end
                  object cxTextEdit2: TcxTextEdit
                    Left = 113
                    Top = 294
                    Enabled = False
                    Style.TextStyle = []
                    TabOrder = 9
                    OnKeyDown = cxComboBox1KeyDown
                    Width = 111
                  end
                  object RzDateTimePicker1: TRzDateTimePicker
                    Left = 160
                    Top = 3
                    Width = 65
                    Height = 21
                    Date = 44795.000000000000000000
                    Format = 'yyyy'
                    Time = 0.419776747687137700
                    DateMode = dmUpDown
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 10
                    OnChange = RzDateTimePicker1Change
                  end
                  object cxLabel2: TcxLabel
                    Left = 8
                    Top = 3
                    Caption = 'Tahun'
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                  end
                  object RzDateTimePicker2: TRzDateTimePicker
                    Left = 104
                    Top = 30
                    Width = 121
                    Height = 21
                    Date = 44795.000000000000000000
                    Format = 'MMMM yyyy'
                    Time = 0.419776747687137700
                    DateMode = dmUpDown
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 12
                    OnChange = RzDateTimePicker2Change
                  end
                  object cxLabel3: TcxLabel
                    Left = 8
                    Top = 30
                    Caption = 'Per Periode'
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                  end
                  object cxCurrencyEdit2: TcxCurrencyEdit
                    Left = 160
                    Top = 317
                    Enabled = False
                    Properties.AssignedValues.DisplayFormat = True
                    Properties.HideSelection = False
                    Properties.MaxLength = 4
                    TabOrder = 14
                    OnKeyDown = cxComboBox1KeyDown
                    Width = 64
                  end
                  object cxCheckBox4: TcxCheckBox
                    Left = 7
                    Top = 61
                    Caption = 'NB. Thn Lalu'
                    ParentBackground = False
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 15
                    OnClick = cxCheckBox4Click
                  end
                  object cxComboBox1: TcxComboBox
                    Left = 113
                    Top = 61
                    Enabled = False
                    ParentFont = False
                    Properties.DropDownListStyle = lsFixedList
                    Properties.Items.Strings = (
                      '='
                      '>'
                      '<'
                      '>='
                      '<='
                      '<>')
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 16
                    OnKeyDown = cxComboBox1KeyDown
                    Width = 41
                  end
                  object cxCurrencyEdit3: TcxCurrencyEdit
                    Left = 160
                    Top = 61
                    Enabled = False
                    Properties.DisplayFormat = '#,##0.##'
                    Properties.EditFormat = '#,##0.##'
                    Properties.HideSelection = False
                    Properties.MaxLength = 0
                    TabOrder = 17
                    OnKeyDown = cxComboBox1KeyDown
                    Width = 65
                  end
                  object cxCheckBox6: TcxCheckBox
                    Left = 7
                    Top = 88
                    Caption = 'NB. Bulan Ini'
                    ParentBackground = False
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 18
                    OnClick = cxCheckBox6Click
                  end
                  object cxComboBox2: TcxComboBox
                    Left = 113
                    Top = 88
                    Enabled = False
                    ParentFont = False
                    Properties.DropDownListStyle = lsFixedList
                    Properties.Items.Strings = (
                      '='
                      '>'
                      '<'
                      '>='
                      '<='
                      '<>')
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 19
                    OnKeyDown = cxComboBox1KeyDown
                    Width = 41
                  end
                  object cxCurrencyEdit4: TcxCurrencyEdit
                    Left = 160
                    Top = 88
                    Enabled = False
                    Properties.DisplayFormat = '#,##0.##'
                    Properties.EditFormat = '#,##0.##'
                    Properties.HideSelection = False
                    Properties.MaxLength = 0
                    TabOrder = 20
                    OnKeyDown = cxComboBox1KeyDown
                    Width = 65
                  end
                  object cxCheckBox7: TcxCheckBox
                    Left = 7
                    Top = 115
                    Caption = 'Susut Thn Lalu'
                    ParentBackground = False
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 21
                    OnClick = cxCheckBox7Click
                  end
                  object cxComboBox3: TcxComboBox
                    Left = 113
                    Top = 115
                    Enabled = False
                    ParentFont = False
                    Properties.DropDownListStyle = lsFixedList
                    Properties.Items.Strings = (
                      '='
                      '>'
                      '<'
                      '>='
                      '<='
                      '<>')
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 22
                    OnKeyDown = cxComboBox1KeyDown
                    Width = 41
                  end
                  object cxCurrencyEdit5: TcxCurrencyEdit
                    Left = 160
                    Top = 115
                    Enabled = False
                    Properties.DisplayFormat = '#,##0.##'
                    Properties.EditFormat = '#,##0.##'
                    Properties.HideSelection = False
                    Properties.MaxLength = 0
                    TabOrder = 23
                    OnKeyDown = cxComboBox1KeyDown
                    Width = 65
                  end
                  object cxCheckBox8: TcxCheckBox
                    Left = 7
                    Top = 140
                    Caption = 'Susut Sd. Bln ini'
                    ParentBackground = False
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 24
                    OnClick = cxCheckBox8Click
                  end
                  object cxComboBox4: TcxComboBox
                    Left = 113
                    Top = 140
                    Enabled = False
                    ParentFont = False
                    Properties.DropDownListStyle = lsFixedList
                    Properties.Items.Strings = (
                      '='
                      '>'
                      '<'
                      '>='
                      '<='
                      '<>')
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 25
                    OnKeyDown = cxComboBox1KeyDown
                    Width = 41
                  end
                  object cxCurrencyEdit6: TcxCurrencyEdit
                    Left = 160
                    Top = 140
                    Enabled = False
                    Properties.DisplayFormat = '#,##0.##'
                    Properties.EditFormat = '#,##0.##'
                    Properties.HideSelection = False
                    Properties.MaxLength = 0
                    TabOrder = 26
                    OnKeyDown = cxComboBox1KeyDown
                    Width = 65
                  end
                  object cxCheckBox9: TcxCheckBox
                    Left = 7
                    Top = 166
                    Caption = 'Susut Bln ini'
                    ParentBackground = False
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 27
                    OnClick = cxCheckBox9Click
                  end
                  object cxComboBox5: TcxComboBox
                    Left = 113
                    Top = 166
                    Enabled = False
                    ParentFont = False
                    Properties.DropDownListStyle = lsFixedList
                    Properties.Items.Strings = (
                      '='
                      '>'
                      '<'
                      '>='
                      '<='
                      '<>')
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 28
                    OnKeyDown = cxComboBox1KeyDown
                    Width = 41
                  end
                  object cxCurrencyEdit7: TcxCurrencyEdit
                    Left = 160
                    Top = 166
                    Enabled = False
                    Properties.DisplayFormat = '#,##0.##'
                    Properties.EditFormat = '#,##0.##'
                    Properties.HideSelection = False
                    Properties.MaxLength = 0
                    TabOrder = 29
                    OnKeyDown = cxComboBox1KeyDown
                    Width = 65
                  end
                  object cxComboBox6: TcxComboBox
                    Left = 113
                    Top = 317
                    Enabled = False
                    ParentFont = False
                    Properties.DropDownListStyle = lsFixedList
                    Properties.Items.Strings = (
                      '='
                      '>'
                      '<'
                      '>='
                      '<='
                      '<>')
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 30
                    OnKeyDown = cxComboBox1KeyDown
                    Width = 41
                  end
                  object cxCheckBox10: TcxCheckBox
                    Left = 7
                    Top = 218
                    Caption = 'Kode Akun'
                    ParentBackground = False
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 31
                    OnClick = cxCheckBox10Click
                  end
                  object cxTextEdit3: TcxTextEdit
                    Left = 113
                    Top = 217
                    BeepOnEnter = False
                    Enabled = False
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 32
                    OnKeyDown = cxComboBox1KeyDown
                    Width = 111
                  end
                  object cxComboBox7: TcxComboBox
                    Left = 113
                    Top = 341
                    Enabled = False
                    ParentFont = False
                    Properties.DropDownListStyle = lsFixedList
                    Properties.Items.Strings = (
                      '='
                      '>'
                      '<'
                      '>='
                      '<='
                      '<>')
                    Properties.OnChange = cxComboBox7PropertiesChange
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 33
                    OnKeyDown = cxComboBox1KeyDown
                    Width = 64
                  end
                  object cxComboBox8: TcxComboBox
                    Left = 113
                    Top = 365
                    Enabled = False
                    ParentFont = False
                    Properties.DropDownListStyle = lsFixedList
                    Properties.Items.Strings = (
                      '='
                      '>'
                      '<'
                      '>='
                      '<='
                      '<>')
                    Properties.OnChange = cxComboBox8PropertiesChange
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 34
                    OnKeyDown = cxComboBox1KeyDown
                    Width = 112
                  end
                  object cxCheckBox11: TcxCheckBox
                    Left = 8
                    Top = 342
                    Caption = 'Unit'
                    ParentBackground = False
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 35
                    OnClick = cxCheckBox11Click
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  object Qasset: TMyQuery
    SQLRefresh.Strings = (
      'SELECT * FROM ('
      
        'SELECT a.*,tipe3,b.kodeakun3,b.kodeakun,b.namaakun,CONCAT(b.kode' +
        'akun," - ",b.namaakun) AS suburain,'
      'DATE_ADD(a.tgl_asset, INTERVAL a.jmltahun YEAR) AS tgljttempo,'
      
        '(a.nilai_buku-IFNULL(b.jumlah,0)) AS nb_thnlalu,IFNULL(d.jumlah,' +
        '0) AS susut_blnini,IFNULL(c.jumlah,0) AS susut_sd_blnini,'
      
        'IFNULL(b.jumlah,0) AS susut_thnlalu,((a.nilai_buku-IFNULL(b.juml' +
        'ah,0))-IFNULL(c.jumlah,0)) AS nb_periodeini'
      ' FROM asset_ak a '
      'LEFT JOIN masterakun b ON a.idcoa=b.idcoa '
      
        'LEFT JOIN (SELECT SUM(jumlah) AS jumlah,idasset_ak FROM `asset_a' +
        'k_susut` WHERE LEFT(periode,4)<:tahun group by idasset_ak) b  ON' +
        ' a.idasset_ak=b.idasset_ak'
      
        'LEFT JOIN (SELECT SUM(jumlah) AS jumlah,idasset_ak FROM `asset_a' +
        'k_susut` WHERE LEFT(periode,4)=:tahun AND periode<=:periode grou' +
        'p by idasset_ak) c  ON a.idasset_ak=c.idasset_ak'
      
        'LEFT JOIN (SELECT SUM(jumlah) AS jumlah,idasset_ak FROM `asset_a' +
        'k_susut` WHERE periode=:periode group by idasset_ak) d  ON a.ida' +
        'sset_ak=d.idasset_ak'
      
        'ORDER BY kodeakun,a.tgl_asset,a.idasset_ak) a where a.idasset_ak' +
        '>0')
    Connection = dm.Conn1
    SQL.Strings = (
      'SELECT * FROM ('
      
        'SELECT a.*,tipe3,b.kodeakun3,b.kodeakun,b.namaakun,CONCAT(b.kode' +
        'akun," - ",b.namaakun) AS suburain,DATE_ADD(a.tgl_asset, INTERVA' +
        'L a.jmltahun YEAR) AS tgljttempo,'
      
        '(a.nilai_buku-IFNULL(b.jumlah,0)) AS nb_thnlalu,IFNULL(d.jumlah,' +
        '0) AS susut_blnini,IFNULL(c.jumlah,0) AS susut_sd_blnini,'
      
        'IFNULL(b.jumlah,0) AS susut_thnlalu,((a.nilai_buku-IFNULL(b.juml' +
        'ah,0))-IFNULL(c.jumlah,0)) AS nb_periodeini'
      ' FROM asset_ak a '
      'LEFT JOIN masterakun b ON a.idcoa=b.idcoa '
      
        'LEFT JOIN (SELECT SUM(jumlah) AS jumlah,idasset_ak FROM `asset_a' +
        'k_susut` WHERE LEFT(periode,4)<2022 group by idasset_ak) b  ON a' +
        '.idasset_ak=b.idasset_ak'
      
        'LEFT JOIN (SELECT SUM(jumlah) AS jumlah,idasset_ak FROM `asset_a' +
        'k_susut` WHERE LEFT(periode,4)=2022 AND periode<=202201 group by' +
        ' idasset_ak) c  ON a.idasset_ak=c.idasset_ak'
      
        'LEFT JOIN (SELECT SUM(jumlah) AS jumlah,idasset_ak FROM `asset_a' +
        'k_susut` WHERE periode=202201 group by idasset_ak) d  ON a.idass' +
        'et_ak=d.idasset_ak'
      
        'ORDER BY kodeakun) a where a.idasset_ak>0 and kodeakun="31.01.10' +
        '"')
    Options.FieldOrigins = foNone
    Left = 220
    Top = 327
    object Qassetidasset_ak: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'idasset_ak'
    end
    object Qassettgl_asset: TDateField
      FieldName = 'tgl_asset'
    end
    object Qassetnamaasset: TStringField
      FieldName = 'namaasset'
      Size = 200
    end
    object Qassetnilai_perolehan: TFloatField
      FieldName = 'nilai_perolehan'
      DisplayFormat = '#,##0.##'
    end
    object Qassetnilai_buku: TFloatField
      FieldName = 'nilai_buku'
      DisplayFormat = '#,##0.##'
    end
    object Qassetkondisi: TStringField
      FieldName = 'kondisi'
      FixedChar = True
      Size = 5
    end
    object Qassetnoref: TStringField
      FieldName = 'noref'
      Size = 45
    end
    object Qassetidcoa: TIntegerField
      FieldName = 'idcoa'
    end
    object Qassetflagdisusutkan: TSmallintField
      FieldName = 'flagdisusutkan'
    end
    object Qassetgolaktiva: TIntegerField
      FieldName = 'golaktiva'
    end
    object Qassetpersenaktiva: TFloatField
      FieldName = 'persenaktiva'
    end
    object Qassetkodesusut: TStringField
      FieldName = 'kodesusut'
      FixedChar = True
      Size = 1
    end
    object Qassetjmltahun: TFloatField
      FieldName = 'jmltahun'
    end
    object Qassettipe3: TStringField
      FieldName = 'tipe3'
      Size = 45
    end
    object Qassetkodeakun3: TStringField
      FieldName = 'kodeakun3'
      Size = 9
    end
    object Qassetkodeakun: TStringField
      FieldName = 'kodeakun'
      Size = 9
    end
    object Qassetnamaakun: TStringField
      FieldName = 'namaakun'
      Size = 75
    end
    object Qassetsuburain: TStringField
      FieldName = 'suburain'
      Size = 87
    end
    object Qassettgljttempo: TDateField
      FieldName = 'tgljttempo'
    end
    object Qassetnb_thnlalu: TFloatField
      FieldName = 'nb_thnlalu'
      DisplayFormat = '#,##0.##'
    end
    object Qassetsusut_blnini: TFloatField
      FieldName = 'susut_blnini'
      DisplayFormat = '#,##0.##'
    end
    object Qassetsusut_thnlalu: TFloatField
      FieldName = 'susut_thnlalu'
      DisplayFormat = '#,##0.##'
    end
    object Qassetnb_periodeini: TFloatField
      FieldName = 'nb_periodeini'
      DisplayFormat = '#,##0.##'
    end
    object Qassetsusut_sd_blnini: TFloatField
      FieldName = 'susut_sd_blnini'
      DisplayFormat = '#,##0.##'
    end
  end
  object Dasset: TMyDataSource
    DataSet = Qasset
    Left = 448
    Top = 400
  end
  object SaveDialog1: TSaveDialog
    Left = 400
    Top = 272
  end
  object PopupMenu1: TPopupMenu
    Images = dm.img16
    Left = 316
    Top = 231
    object KoreksiAsset1: TMenuItem
      Caption = 'Koreksi Asset'
      OnClick = KoreksiAsset1Click
    end
    object HapusAsset1: TMenuItem
      Caption = 'Hapus Asset'
      OnClick = HapusAsset1Click
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
    Left = 292
    Top = 407
  end
end
