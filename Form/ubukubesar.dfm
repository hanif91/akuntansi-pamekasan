object fobukubesar: Tfobukubesar
  Left = 0
  Top = 0
  Caption = 'Buku Besar'
  ClientHeight = 542
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 785
    Height = 542
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
      Caption = 'Buku Besar'
      object RzPanel1setorsimp: TRzPanel
        Left = 0
        Top = 0
        Width = 785
        Height = 523
        Align = alClient
        BorderOuter = fsFlat
        TabOrder = 0
        object RzPanel2: TRzPanel
          Left = 1
          Top = 1
          Width = 783
          Height = 521
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object dxDockSite1: TdxDockSite
            Left = 0
            Top = 0
            Width = 783
            Height = 521
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ManagerFont = False
            Align = alClient
            DockingType = 5
            OriginalWidth = 783
            OriginalHeight = 521
            object dxLayoutDockSite1: TdxLayoutDockSite
              Left = 0
              Top = 0
              Width = 312
              Height = 521
              DockingType = 0
              OriginalWidth = 300
              OriginalHeight = 200
              object dxLayoutDockSite3: TdxLayoutDockSite
                Left = 0
                Top = 0
                Width = 312
                Height = 521
                DockingType = 0
                OriginalWidth = 300
                OriginalHeight = 200
              end
              object dxDockPanel2: TdxDockPanel
                Left = 0
                Top = 0
                Width = 312
                Height = 521
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
                  Width = 304
                  Height = 37
                  Align = alTop
                  BorderOuter = fsFlat
                  BorderSides = [sdLeft, sdRight]
                  TabOrder = 0
                  object RzToolButton1: TRzToolButton
                    Left = 3
                    Top = -1
                    Width = 169
                    Height = 37
                    GradientColorStyle = gcsCustom
                    SelectionColorStart = 3927039
                    SelectionColorStop = 7457838
                    SelectionFrameColor = 52479
                    ImageIndex = 20
                    Images = dm.img24
                    ShowCaption = True
                    Transparent = False
                    UseToolbarShowCaption = False
                    UseToolbarVisualStyle = False
                    VisualStyle = vsGradient
                    Caption = '&Cetak Buku Besar'
                    Color = 2250751
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clCream
                    Font.Height = -12
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                  end
                end
                object cxGrid1: TcxGrid
                  Left = 0
                  Top = 37
                  Width = 304
                  Height = 477
                  Align = alClient
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
                    DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = '#,##0.##;(#,##0.##);0'
                        Kind = skSum
                        FieldName = 'debet'
                        Column = cxGrid1DBTableView1debet
                      end
                      item
                        Format = '#,##0.##;(#,##0.##);0'
                        Kind = skSum
                        FieldName = 'kredit'
                        Column = cxGrid1DBTableView1kredit
                      end>
                    DataController.Summary.SummaryGroups = <>
                    OptionsCustomize.ColumnsQuickCustomization = True
                    OptionsData.CancelOnExit = False
                    OptionsData.Deleting = False
                    OptionsData.DeletingConfirmation = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsView.CellAutoHeight = True
                    OptionsView.Footer = True
                    OptionsView.HeaderHeight = 35
                    OptionsView.Indicator = True
                    Styles.Group = dm.bold8
                    Styles.GroupByBox = dm.bold8
                    Styles.Header = dm.bold8
                    object cxGrid1DBTableView1idcoa: TcxGridDBColumn
                      Caption = 'id coa'
                      DataBinding.FieldName = 'idcoa'
                      Visible = False
                      Width = 24
                    end
                    object cxGrid1DBTableView1idju: TcxGridDBColumn
                      Caption = 'id ju'
                      DataBinding.FieldName = 'idju'
                      Visible = False
                      Width = 47
                    end
                    object cxGrid1DBTableView1tanggal: TcxGridDBColumn
                      Caption = 'Tanggal '
                      DataBinding.FieldName = 'tanggal'
                      Width = 72
                    end
                    object cxGrid1DBTableView1uraian: TcxGridDBColumn
                      Caption = 'Uraian'
                      DataBinding.FieldName = 'uraian'
                      HeaderAlignmentHorz = taCenter
                      Width = 229
                    end
                    object cxGrid1DBTableView1kodeakun: TcxGridDBColumn
                      Caption = 'Kode Akun'
                      DataBinding.FieldName = 'kodeakun'
                      Visible = False
                      GroupIndex = 0
                    end
                    object cxGrid1DBTableView1namaakun2: TcxGridDBColumn
                      Caption = 'Nama Akun'
                      DataBinding.FieldName = 'namaakun2'
                      Visible = False
                      GroupIndex = 1
                    end
                    object cxGrid1DBTableView1noju: TcxGridDBColumn
                      Caption = 'Ref'
                      DataBinding.FieldName = 'noju'
                      HeaderAlignmentHorz = taCenter
                      Width = 107
                    end
                    object cxGrid1DBTableView1debet: TcxGridDBColumn
                      Caption = 'Debet'
                      DataBinding.FieldName = 'debet'
                      HeaderAlignmentHorz = taCenter
                      Width = 99
                    end
                    object cxGrid1DBTableView1kredit: TcxGridDBColumn
                      Caption = 'Kredit'
                      DataBinding.FieldName = 'kredit'
                      HeaderAlignmentHorz = taCenter
                      Width = 95
                    end
                    object cxGrid1DBTableView1saldo: TcxGridDBColumn
                      Caption = 'Saldo'
                      DataBinding.FieldName = 'saldo'
                      HeaderAlignmentHorz = taCenter
                      Width = 109
                    end
                  end
                  object cxGrid1Level1: TcxGridLevel
                    GridView = cxGrid1DBTableView1
                  end
                end
              end
            end
            object dxDockPanel1: TdxDockPanel
              Left = 312
              Top = 0
              Width = 471
              Height = 521
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
              OriginalWidth = 471
              OriginalHeight = 140
              object RzPanel3: TRzPanel
                Left = 0
                Top = 0
                Width = 463
                Height = 201
                Align = alTop
                BorderOuter = fsNone
                TabOrder = 0
                object cxLabel8: TcxLabel
                  Left = 11
                  Top = 161
                  Caption = 'Sub Kode 2'
                  ParentFont = False
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -13
                  Style.Font.Name = 'Noto Sans'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxLabel7: TcxLabel
                  Left = 11
                  Top = 130
                  Caption = 'Sub Kode 1'
                  ParentFont = False
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -13
                  Style.Font.Name = 'Noto Sans'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxLabel5: TcxLabel
                  Left = 0
                  Top = 0
                  Align = alTop
                  Caption = 'Kode Akun'
                  ParentFont = False
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -13
                  Style.Font.Name = 'Noto Sans'
                  Style.Font.Style = [fsBold, fsUnderline]
                  Style.IsFontAssigned = True
                  Properties.Alignment.Horz = taCenter
                  AnchorX = 232
                end
                object cxLabel3: TcxLabel
                  Left = 9
                  Top = 65
                  Caption = 'Sub Kode 2'
                  ParentFont = False
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -13
                  Style.Font.Name = 'Noto Sans'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxLabel2: TcxLabel
                  Left = 9
                  Top = 34
                  Caption = 'Sub Kode 1'
                  ParentFont = False
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -13
                  Style.Font.Name = 'Noto Sans'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                end
                object cxCheckBox1: TcxCheckBox
                  Left = 24
                  Top = 102
                  Caption = 'S / D'
                  TabOrder = 5
                end
                object combsk22: TcxComboBox
                  Left = 98
                  Top = 158
                  AutoSize = False
                  Enabled = False
                  ParentFont = False
                  Properties.DropDownListStyle = lsFixedList
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -13
                  Style.Font.Name = 'Noto Sans'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 6
                  Height = 30
                  Width = 81
                end
                object combsk21: TcxComboBox
                  Left = 96
                  Top = 62
                  AutoSize = False
                  ParentFont = False
                  Properties.DropDownListStyle = lsFixedList
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -13
                  Style.Font.Name = 'Noto Sans'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 7
                  Height = 30
                  Width = 81
                end
                object combsk12: TcxComboBox
                  Left = 98
                  Top = 126
                  AutoSize = False
                  Enabled = False
                  ParentFont = False
                  Properties.DropDownListStyle = lsFixedList
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -13
                  Style.Font.Name = 'Noto Sans'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 8
                  Height = 30
                  Width = 81
                end
                object combsk11: TcxComboBox
                  Left = 96
                  Top = 30
                  AutoSize = False
                  ParentFont = False
                  Properties.DropDownListStyle = lsFixedList
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -13
                  Style.Font.Name = 'Noto Sans'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 9
                  Height = 30
                  Width = 81
                end
                object combs22: TcxComboBox
                  Left = 178
                  Top = 158
                  AutoSize = False
                  Enabled = False
                  ParentFont = False
                  Properties.DropDownListStyle = lsFixedList
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -13
                  Style.Font.Name = 'Noto Sans'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 10
                  Height = 30
                  Width = 281
                end
                object combs21: TcxComboBox
                  Left = 176
                  Top = 62
                  AutoSize = False
                  ParentFont = False
                  Properties.DropDownListStyle = lsFixedList
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -13
                  Style.Font.Name = 'Noto Sans'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 11
                  Height = 30
                  Width = 281
                end
                object combs12: TcxComboBox
                  Left = 178
                  Top = 126
                  AutoSize = False
                  Enabled = False
                  ParentFont = False
                  Properties.DropDownListStyle = lsFixedList
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -13
                  Style.Font.Name = 'Noto Sans'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 12
                  Height = 30
                  Width = 281
                end
                object combs11: TcxComboBox
                  Left = 176
                  Top = 30
                  AutoSize = False
                  ParentFont = False
                  Properties.DropDownListStyle = lsFixedList
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -13
                  Style.Font.Name = 'Noto Sans'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 13
                  Height = 30
                  Width = 281
                end
              end
              object cxLabel11: TcxLabel
                Left = 268
                Top = 282
                Caption = 'S/d'
                ParentFont = False
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Noto Sans'
                Style.Font.Style = []
                Style.IsFontAssigned = True
              end
              object cxLabel10: TcxLabel
                Left = 0
                Top = 201
                Align = alTop
                Caption = 'Periode Transaksi'
                ParentFont = False
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Noto Sans'
                Style.Font.Style = [fsBold, fsUnderline]
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                AnchorX = 232
              end
              object cxLabel1: TcxLabel
                Left = 5
                Top = 247
                Caption = 'Periode'
                ParentFont = False
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Noto Sans'
                Style.Font.Style = []
                Style.IsFontAssigned = True
              end
              object cxDateEdit2: TcxDateEdit
                Left = 296
                Top = 276
                AutoSize = False
                EditValue = '0:00:00'
                Enabled = False
                ParentFont = False
                Properties.DisplayFormat = 'dd mmmm yyyy'
                Properties.EditFormat = 'dd mmmm yyyy'
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Noto Sans'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 4
                Height = 30
                Width = 153
              end
              object cxDateEdit1: TcxDateEdit
                Left = 117
                Top = 276
                AutoSize = False
                EditValue = '0:00:00'
                Enabled = False
                ParentFont = False
                Properties.DisplayFormat = 'dd mmmm yyyy'
                Properties.EditFormat = 'dd mmmm yyyy'
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Noto Sans'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 5
                Height = 30
                Width = 148
              end
              object cxComboBox2: TcxComboBox
                Left = 8
                Top = 435
                AutoSize = False
                ParentFont = False
                Properties.DropDownListStyle = lsFixedList
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Noto Sans'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 6
                Visible = False
                Height = 30
                Width = 169
              end
              object cxComboBox1: TcxComboBox
                Left = 117
                Top = 240
                AutoSize = False
                ParentFont = False
                Properties.DropDownListStyle = lsFixedList
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Noto Sans'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 7
                Height = 30
                Width = 169
              end
              object cxCheckBox2: TcxCheckBox
                Left = 5
                Top = 284
                Caption = 'Range Tanggal'
                TabOrder = 8
              end
              object cxButton1: TcxButton
                Left = 296
                Top = 241
                Width = 153
                Height = 28
                Caption = '  &Tampilkan'
                OptionsImage.ImageIndex = 10
                OptionsImage.Images = dm.img24
                TabOrder = 9
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Noto Sans'
                Font.Style = []
                ParentFont = False
                WordWrap = True
              end
              object combid5: TcxComboBox
                Left = 184
                Top = 459
                AutoSize = False
                ParentFont = False
                Properties.DropDownListStyle = lsFixedList
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Noto Sans'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 10
                Visible = False
                Height = 30
                Width = 81
              end
              object combid4: TcxComboBox
                Left = 184
                Top = 491
                AutoSize = False
                ParentFont = False
                Properties.DropDownListStyle = lsFixedList
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Noto Sans'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 11
                Visible = False
                Height = 30
                Width = 81
              end
              object combid2: TcxComboBox
                Left = 24
                Top = 491
                AutoSize = False
                ParentFont = False
                Properties.DropDownListStyle = lsFixedList
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Noto Sans'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 12
                Visible = False
                Height = 30
                Width = 81
              end
              object combid1: TcxComboBox
                Left = 24
                Top = 459
                AutoSize = False
                ParentFont = False
                Properties.DropDownListStyle = lsFixedList
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Noto Sans'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 13
                Visible = False
                Height = 30
                Width = 81
              end
            end
          end
        end
      end
    end
  end
end
