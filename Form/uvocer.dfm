object fovocer: Tfovocer
  Left = 0
  Top = 0
  Caption = 'Voucher'
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
  OnCreate = FormCreate
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
      Caption = 'Daftar Voucher'
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
            object dxLayoutDockSite4: TdxLayoutDockSite
              Left = 209
              Top = 0
              Width = 955
              Height = 680
              DockingType = 0
              OriginalWidth = 300
              OriginalHeight = 200
              object dxLayoutDockSite1: TdxLayoutDockSite
                Left = 0
                Top = 0
                Width = 539
                Height = 680
                DockingType = 0
                OriginalWidth = 300
                OriginalHeight = 200
                object dxLayoutDockSite3: TdxLayoutDockSite
                  Left = 0
                  Top = 0
                  Width = 539
                  Height = 680
                  DockingType = 0
                  OriginalWidth = 300
                  OriginalHeight = 200
                end
                object dxDockPanel2: TdxDockPanel
                  Left = 0
                  Top = 0
                  Width = 539
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
                    Width = 531
                    Height = 37
                    Align = alTop
                    BorderOuter = fsFlat
                    BorderSides = [sdLeft, sdRight]
                    TabOrder = 0
                    DesignSize = (
                      531
                      37)
                    object RzToolButton1: TRzToolButton
                      Left = 0
                      Top = 2
                      Width = 169
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
                      Caption = '&Tambah Voucher Baru'
                      Color = 2250751
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clCream
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      OnClick = RzToolButton1Click
                    end
                    object cxCheckBox8: TcxCheckBox
                      Left = 279
                      Top = 12
                      Anchors = [akTop, akRight]
                      Caption = 'Set Tgl Usulan'
                      TabOrder = 0
                      OnClick = cxCheckBox8Click
                    end
                    object cxDateEdit4: TcxDateEdit
                      Left = 375
                      Top = 10
                      Anchors = [akTop, akRight]
                      Enabled = False
                      TabOrder = 1
                      Width = 121
                    end
                    object cxCurrencyEdit1: TcxCurrencyEdit
                      Left = 502
                      Top = 10
                      Anchors = [akTop, akRight]
                      EditValue = 1.000000000000000000
                      Enabled = False
                      Properties.DisplayFormat = '#,##0.##'
                      Properties.MaxLength = 1
                      TabOrder = 2
                      Width = 22
                    end
                  end
                  object cxGrid1: TcxGrid
                    Left = 0
                    Top = 37
                    Width = 531
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
                          Kind = skCount
                          FieldName = 'notrans'
                          Column = cxGrid1DBTableView1notrans
                        end
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
                      object cxGrid1DBTableView1idju: TcxGridDBColumn
                        Caption = 'Id'
                        DataBinding.FieldName = 'idvoucher'
                        Visible = False
                        Width = 37
                      end
                      object cxGrid1DBTableView1tipejurnal: TcxGridDBColumn
                        Caption = 'Tipe Jurnal'
                        DataBinding.FieldName = 'tipejurnal'
                        Visible = False
                        Width = 149
                      end
                      object cxGrid1DBTableView1flagusulan: TcxGridDBColumn
                        Caption = 'U'
                        DataBinding.FieldName = 'flagusulan'
                        PropertiesClassName = 'TcxImageComboBoxProperties'
                        Properties.Images = dm.img16
                        Properties.Items = <
                          item
                            ImageIndex = 3
                            Value = '1'
                          end
                          item
                            ImageIndex = 2
                          end
                          item
                            ImageIndex = 2
                            Value = '0'
                          end>
                        MinWidth = 27
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringWithFindPanel = False
                        Options.FilteringAddValueItems = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.HorzSizing = False
                        Width = 27
                      end
                      object cxGrid1DBTableView1tglusulan: TcxGridDBColumn
                        Caption = 'Tgl Usulan'
                        DataBinding.FieldName = 'tglusulan'
                        Width = 51
                      end
                      object cxGrid1DBTableView1notrans: TcxGridDBColumn
                        Caption = 'No Voucher'
                        DataBinding.FieldName = 'notrans'
                        Width = 67
                      end
                      object cxGrid1DBTableView1tanggal: TcxGridDBColumn
                        Caption = 'Tanggal Voucher'
                        DataBinding.FieldName = 'tanggal'
                        Width = 64
                      end
                      object cxGrid1DBTableView1uraian: TcxGridDBColumn
                        Caption = 'Uraian'
                        DataBinding.FieldName = 'uraian'
                        Width = 186
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
                      object cxGrid1DBTableView1bagian: TcxGridDBColumn
                        Caption = 'Bagian'
                        DataBinding.FieldName = 'bagian'
                        Visible = False
                        Width = 75
                      end
                      object cxGrid1DBTableView1jumlah: TcxGridDBColumn
                        Caption = 'Jumlah'
                        DataBinding.FieldName = 'jumlah'
                        HeaderAlignmentHorz = taRightJustify
                        Width = 100
                      end
                      object cxGrid1DBTableView1typebayar: TcxGridDBColumn
                        Caption = 'Type Bayar'
                        DataBinding.FieldName = 'typebayar'
                        HeaderAlignmentHorz = taCenter
                        MinWidth = 58
                        Options.HorzSizing = False
                        Width = 58
                      end
                      object cxGrid1DBTableView1flaglunas: TcxGridDBColumn
                        Caption = 'L'
                        DataBinding.FieldName = 'flaglunas'
                        PropertiesClassName = 'TcxImageComboBoxProperties'
                        Properties.Images = dm.img16
                        Properties.Items = <
                          item
                            ImageIndex = 3
                            Value = '1'
                          end
                          item
                            ImageIndex = 2
                            Value = '0'
                          end
                          item
                            ImageIndex = 2
                          end>
                        HeaderAlignmentHorz = taCenter
                        MinWidth = 27
                        Options.HorzSizing = False
                        Width = 27
                      end
                    end
                    object cxGrid1Level1: TcxGridLevel
                      GridView = cxGrid1DBTableView1
                    end
                  end
                end
              end
              object dxDockPanel1: TdxDockPanel
                Left = 539
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
                Caption = 'Detail Voucher'
                CustomCaptionButtons.Buttons = <>
                TabsProperties.CustomButtons.Buttons = <>
                DockingType = 3
                OriginalWidth = 416
                OriginalHeight = 140
                object cxGrid2: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 408
                  Height = 322
                  Align = alClient
                  BorderStyle = cxcbsNone
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Noto Sans'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
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
                        Column = cxGridDBTableView1debet
                      end
                      item
                        Format = '#,##0.##'
                        Kind = skSum
                        FieldName = 'kredit'
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
                    object cxGridDBTableView1kodeakun: TcxGridDBColumn
                      Caption = 'Kode Akun'
                      DataBinding.FieldName = 'kodeakun'
                      Width = 56
                    end
                    object cxGridDBTableView1kodeunit: TcxGridDBColumn
                      Caption = 'Unt'
                      DataBinding.FieldName = 'kodeunit'
                      Width = 28
                    end
                    object cxGridDBTableView1namaakun: TcxGridDBColumn
                      Caption = 'Nama Akun'
                      DataBinding.FieldName = 'namaakun'
                      Width = 166
                    end
                    object cxGridDBTableView1debet: TcxGridDBColumn
                      Caption = 'Debet'
                      DataBinding.FieldName = 'debet'
                      HeaderAlignmentHorz = taRightJustify
                      Width = 77
                    end
                    object cxGridDBTableView1kredit: TcxGridDBColumn
                      Caption = 'Kredit'
                      DataBinding.FieldName = 'kredit'
                      HeaderAlignmentHorz = taRightJustify
                      Width = 69
                    end
                  end
                  object cxGridLevel1: TcxGridLevel
                    GridView = cxGridDBTableView1
                  end
                end
                object RzGroupBox1: TRzGroupBox
                  Left = 0
                  Top = 322
                  Width = 408
                  Height = 314
                  Align = alBottom
                  Caption = 'Detail Pembayaran'
                  TabOrder = 1
                  object cxGrid3: TcxGrid
                    Left = 1
                    Top = 49
                    Width = 406
                    Height = 264
                    Align = alClient
                    BorderStyle = cxcbsNone
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Noto Sans'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    object cxGridDBTableView2: TcxGridDBTableView
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
                      DataController.DataSource = Dbyr
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <
                        item
                          Format = '#,##0.##'
                          Kind = skSum
                          FieldName = 'jmlbayar'
                          Column = cxGridDBTableView1jmlbayar
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
                      object cxGridDBTableView1notrans: TcxGridDBColumn
                        Caption = 'No Voucher'
                        DataBinding.FieldName = 'notrans'
                        Visible = False
                        Width = 83
                      end
                      object cxGridDBTableView1tglbayar: TcxGridDBColumn
                        Caption = 'Tgl Bayar'
                        DataBinding.FieldName = 'tglbayar'
                        Width = 83
                      end
                      object cxGridDBTableView1namabank: TcxGridDBColumn
                        Caption = 'Bank'
                        DataBinding.FieldName = 'namabank'
                        Width = 169
                      end
                      object cxGridDBTableView1termin: TcxGridDBColumn
                        Caption = 'Termin'
                        DataBinding.FieldName = 'termin'
                        Width = 51
                      end
                      object cxGridDBTableView1jmlbayar: TcxGridDBColumn
                        Caption = 'Jumlah'
                        DataBinding.FieldName = 'jmlbayar'
                        Width = 93
                      end
                    end
                    object cxGridLevel2: TcxGridLevel
                      GridView = cxGridDBTableView2
                    end
                  end
                  object RzPanel3: TRzPanel
                    Left = 1
                    Top = 14
                    Width = 406
                    Height = 35
                    Align = alTop
                    BorderOuter = fsNone
                    TabOrder = 1
                    object cxButton1: TcxButton
                      Left = 240
                      Top = 0
                      Width = 166
                      Height = 35
                      Align = alRight
                      Caption = 'Batalkan Pembayaran'
                      OptionsImage.ImageIndex = 2
                      OptionsImage.Images = dm.img24
                      TabOrder = 0
                      OnClick = cxButton1Click
                    end
                  end
                end
              end
            end
            object dxDockPanel4: TdxDockPanel
              Left = 0
              Top = 0
              Width = 209
              Height = 680
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
              DockingType = 1
              OriginalWidth = 209
              OriginalHeight = 140
              object cxButton5: TcxButton
                Left = 36
                Top = 222
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
                Left = 87
                Top = 55
                BeepOnEnter = False
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 1
                Width = 111
              end
              object cxLabel1: TcxLabel
                Left = 36
                Top = 55
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
                Left = 87
                Top = 30
                BeepOnEnter = False
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 3
                Width = 111
              end
              object cxCheckBox2: TcxCheckBox
                Left = 0
                Top = 31
                Caption = 'Tanggal'
                ParentBackground = False
                ParentFont = False
                State = cbsChecked
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
                Left = 87
                Top = 3
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
                Width = 111
              end
              object cxCheckBox1: TcxCheckBox
                Left = 0
                Top = 5
                Caption = 'No. Voucher'
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
                Left = 0
                Top = 109
                Caption = 'Type Byr'
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
              object cxCheckBox4: TcxCheckBox
                Left = 0
                Top = 134
                Caption = 'Lunas'
                ParentBackground = False
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 8
                OnClick = cxCheckBox4Click
              end
              object cxCheckBox5: TcxCheckBox
                Left = 0
                Top = 84
                Caption = 'Uraian'
                ParentBackground = False
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 9
                OnClick = cxCheckBox5Click
              end
              object cxTextEdit2: TcxTextEdit
                Left = 87
                Top = 82
                Enabled = False
                Style.TextStyle = []
                TabOrder = 10
                Width = 111
              end
              object cxComboBox1: TcxComboBox
                Left = 87
                Top = 108
                Enabled = False
                Properties.DropDownListStyle = lsFixedList
                Properties.Items.Strings = (
                  'TUNAI'
                  'KREDIT')
                Style.TextStyle = []
                TabOrder = 11
                Width = 111
              end
              object cxComboBox2: TcxComboBox
                Left = 87
                Top = 134
                Enabled = False
                Properties.DropDownListStyle = lsFixedList
                Properties.Items.Strings = (
                  'Belum Lunas'
                  'Sudah Lunas')
                Style.TextStyle = []
                TabOrder = 12
                Width = 111
              end
              object cxComboBox3: TcxComboBox
                Left = 87
                Top = 159
                Enabled = False
                Properties.DropDownListStyle = lsFixedList
                Properties.Items.Strings = (
                  'Belum'
                  'Sudah')
                Style.TextStyle = []
                TabOrder = 13
                Width = 111
              end
              object cxCheckBox6: TcxCheckBox
                Left = 0
                Top = 160
                Caption = 'Usulan'
                ParentBackground = False
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 14
                OnClick = cxCheckBox6Click
              end
              object cxCheckBox7: TcxCheckBox
                Left = 0
                Top = 186
                Caption = 'Tgl Usulan'
                ParentBackground = False
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 15
                OnClick = cxCheckBox7Click
              end
              object cxDateEdit3: TcxDateEdit
                Left = 87
                Top = 186
                BeepOnEnter = False
                Enabled = False
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 16
                Width = 111
              end
            end
          end
        end
      end
    end
  end
  object Qdju: TMyQuery
    SQLRefresh.Strings = (
      
        'select a.idcoa,b.kodeakun,b.namaakun,a.debet,a.kredit,a.kodeunit' +
        ' from voucher_ a left join coa b on a.idcoa=b.idcoa where a.notr' +
        'ans=:notrans')
    Connection = dm.Conn1
    SQL.Strings = (
      
        'select a.idcoa,b.kodeakun,b.namaakun,a.debet,a.kredit,a.kodeunit' +
        ' from voucher_ a left join coa b on a.idcoa=b.idcoa  order by je' +
        'nis')
    Options.FieldOrigins = foNone
    Left = 240
    Top = 237
    object Qdjukodeakun: TStringField
      FieldName = 'kodeakun'
      Size = 8
    end
    object Qdjunamaakun: TStringField
      FieldName = 'namaakun'
      Size = 75
    end
    object Qdjudebet: TFloatField
      FieldName = 'debet'
      DisplayFormat = '#,##0.##'
    end
    object Qdjukredit: TFloatField
      FieldName = 'kredit'
      DisplayFormat = '#,##0.##'
    end
    object Qdjuidcoa: TIntegerField
      FieldName = 'idcoa'
    end
    object Qdjukodeunit: TStringField
      FieldName = 'kodeunit'
      Size = 3
    end
  end
  object ddju: TMyDataSource
    DataSet = Qdju
    Left = 360
    Top = 277
  end
  object Dju: TMyDataSource
    DataSet = Qju
    Left = 512
    Top = 192
  end
  object Qju: TMyQuery
    SQLRefresh.Strings = (
      'select * from voucher')
    Connection = dm.Conn1
    SQL.Strings = (
      'select * from voucher order by idvoucher')
    Options.FieldOrigins = foNone
    Left = 296
    Top = 200
    object Qjuidvoucher: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'idvoucher'
      Origin = 'voucher.idvoucher'
    end
    object Qjunotrans: TStringField
      FieldName = 'notrans'
      Origin = 'voucher.notrans'
      Size = 30
    end
    object Qjutanggal: TDateField
      FieldName = 'tanggal'
      Origin = 'voucher.tanggal'
    end
    object Qjubagian: TStringField
      FieldName = 'bagian'
      Origin = 'voucher.bagian'
      Size = 35
    end
    object Qjutujuan: TStringField
      FieldName = 'tujuan'
      Origin = 'voucher.tujuan'
      Size = 35
    end
    object Qjuuraian: TStringField
      FieldName = 'uraian'
      Origin = 'voucher.uraian'
      Size = 155
    end
    object Qjuatasnama: TStringField
      FieldName = 'atasnama'
      Origin = 'voucher.atasnama'
      Size = 55
    end
    object Qjupenjelasan: TMemoField
      FieldName = 'penjelasan'
      Origin = 'voucher.penjelasan'
      BlobType = ftMemo
    end
    object Qjutypebayar: TStringField
      FieldName = 'typebayar'
      Origin = 'voucher.typebayar'
      FixedChar = True
      Size = 6
    end
    object Qjujumlah: TFloatField
      FieldName = 'jumlah'
      Origin = 'voucher.jumlah'
      DisplayFormat = '#,##0.##'
    end
    object Qjuflaglunas: TStringField
      FieldName = 'flaglunas'
      Origin = 'voucher.flaglunas'
      FixedChar = True
      Size = 1
    end
    object Qjutglpost: TDateTimeField
      FieldName = 'tglpost'
      Origin = 'voucher.tglpost'
    end
    object Qjuflaghutang: TSmallintField
      FieldName = 'flaghutang'
    end
    object Qjuflagusulan: TSmallintField
      FieldName = 'flagusulan'
    end
    object Qjutglusulan: TDateField
      FieldName = 'tglusulan'
    end
    object Qjuidaruskas: TIntegerField
      FieldName = 'idaruskas'
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
    Left = 232
    Top = 168
  end
  object PopupMenu1: TPopupMenu
    Images = dm.img16
    OnPopup = PopupMenu1Popup
    Left = 515
    Top = 300
    object SetUsulan1: TMenuItem
      Caption = 'Set Usulan'
      ShortCut = 113
      OnClick = SetUsulan1Click
    end
    object BatalkanUsulan1: TMenuItem
      Caption = 'Batalkan Usulan'
      ShortCut = 115
      OnClick = BatalkanUsulan1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Koreksi1: TMenuItem
      Caption = 'Koreksi Data'
      ImageIndex = 4
      OnClick = Koreksi1Click
    end
    object Hapus1: TMenuItem
      Caption = 'Hapus Data'
      ImageIndex = 5
      OnClick = Hapus1Click
    end
  end
  object Dbyr: TMyDataSource
    DataSet = Qbyr
    Left = 696
    Top = 277
  end
  object Qbyr: TMyQuery
    SQLRefresh.Strings = (
      
        'select notrans,namabank,termin,tglbayar,jmlbayar,nomor from vcba' +
        'yar where notrans=:notrans'
      'order by termin')
    Connection = dm.Conn1
    SQL.Strings = (
      
        'select notrans,namabank,termin,tglbayar,jmlbayar,nomor from vcba' +
        'yar')
    Options.FieldOrigins = foNone
    Left = 600
    Top = 213
    object StringField1: TStringField
      FieldName = 'namabank'
      Size = 50
    end
    object IntegerField1: TIntegerField
      FieldName = 'termin'
    end
    object DateField1: TDateField
      FieldName = 'tglbayar'
    end
    object FloatField1: TFloatField
      FieldName = 'jmlbayar'
      DisplayFormat = '#,##0.##'
    end
    object StringField2: TStringField
      FieldName = 'notrans'
      Size = 30
    end
    object Qbyrnomor: TStringField
      FieldName = 'nomor'
    end
  end
  object PopupMenu2: TPopupMenu
    Images = dm.img16
    Left = 907
    Top = 476
    object MenuItem2: TMenuItem
      Caption = 'Batalkan Pembayaran'
      ImageIndex = 5
      OnClick = MenuItem2Click
    end
  end
  object cxGridPopupMenu2: TcxGridPopupMenu
    Grid = cxGrid3
    PopupMenus = <
      item
        GridView = cxGridDBTableView2
        HitTypes = [gvhtCell]
        Index = 0
        PopupMenu = PopupMenu2
      end>
    Left = 376
    Top = 232
  end
end
