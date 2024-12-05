object fopinjaman: Tfopinjaman
  Left = 0
  Top = 0
  Caption = 'Buat Pinjaman'
  ClientHeight = 509
  ClientWidth = 760
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
    Width = 760
    Height = 509
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
      Caption = 'Data Pinjaman'
      object RzPanel1setorsimp: TRzPanel
        Left = 0
        Top = 0
        Width = 760
        Height = 490
        Align = alClient
        BorderOuter = fsFlat
        TabOrder = 0
        object RzPanel2: TRzPanel
          Left = 1
          Top = 1
          Width = 327
          Height = 488
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          DesignSize = (
            327
            488)
          object dxDockSite1: TdxDockSite
            Left = 0
            Top = 0
            Width = 327
            Height = 488
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ManagerFont = False
            Align = alClient
            DockingType = 5
            OriginalWidth = 327
            OriginalHeight = 488
            object dxLayoutDockSite1: TdxLayoutDockSite
              Left = 0
              Top = 0
              Width = 299
              Height = 488
              DockingType = 0
              OriginalWidth = 300
              OriginalHeight = 200
              object dxLayoutDockSite2: TdxLayoutDockSite
                Left = 0
                Top = 0
                Width = 299
                Height = 488
                DockingType = 0
                OriginalWidth = 300
                OriginalHeight = 200
              end
              object dxDockPanel2: TdxDockPanel
                Left = 0
                Top = 0
                Width = 299
                Height = 488
                AllowFloating = False
                AutoHide = False
                CaptionButtons = []
                CustomCaptionButtons.Buttons = <>
                ShowCaption = False
                TabsProperties.CustomButtons.Buttons = <>
                DockingType = 0
                OriginalWidth = 185
                OriginalHeight = 140
                object cxGrid1: TcxGrid
                  Left = 0
                  Top = 31
                  Width = 291
                  Height = 450
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
                    OnFocusedRecordChanged = cxGrid1DBTableView1FocusedRecordChanged
                    DataController.DataSource = Dpinjaman
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = 'Trx : #,##0.##'
                        Kind = skCount
                        FieldName = 'notrans'
                        Column = cxGrid1DBTableView1nopinjaman
                      end
                      item
                        Format = '#,##0.##'
                        Kind = skSum
                        FieldName = 'platform'
                        Column = cxGrid1DBTableView1platform
                      end>
                    DataController.Summary.SummaryGroups = <>
                    OptionsCustomize.ColumnsQuickCustomization = True
                    OptionsData.CancelOnExit = False
                    OptionsData.Deleting = False
                    OptionsData.DeletingConfirmation = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsView.CellEndEllipsis = True
                    OptionsView.CellAutoHeight = True
                    OptionsView.ColumnAutoWidth = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    OptionsView.HeaderAutoHeight = True
                    OptionsView.Indicator = True
                    Styles.Footer = dm.bold8
                    Styles.Header = dm.bold8
                    object cxGrid1DBTableView1nopinjaman: TcxGridDBColumn
                      Caption = 'No Pinjaman'
                      DataBinding.FieldName = 'nopinjaman'
                      Width = 59
                    end
                    object cxGrid1DBTableView1idanggota: TcxGridDBColumn
                      Caption = 'Id Anggota'
                      DataBinding.FieldName = 'idanggota'
                      Visible = False
                      Width = 51
                    end
                    object cxGrid1DBTableView1tglpinjam: TcxGridDBColumn
                      Caption = 'Tgl Pinjam'
                      DataBinding.FieldName = 'tglpinjam'
                      Width = 51
                    end
                    object cxGrid1DBTableView1pokokbulan: TcxGridDBColumn
                      Caption = 'Pokok'
                      DataBinding.FieldName = 'pokokbulan'
                      Visible = False
                      Width = 44
                    end
                    object cxGrid1DBTableView1bungabulan: TcxGridDBColumn
                      Caption = 'Bunga'
                      DataBinding.FieldName = 'bungabulan'
                      Visible = False
                      Width = 20
                    end
                    object cxGrid1DBTableView1jumlahbulan: TcxGridDBColumn
                      Caption = 'Jumlah'
                      DataBinding.FieldName = 'jumlahbulan'
                      Visible = False
                      Width = 38
                    end
                    object cxGrid1DBTableView1namaanggota: TcxGridDBColumn
                      Caption = 'Anggota Peminjam'
                      DataBinding.FieldName = 'namaanggota'
                      Width = 163
                    end
                    object cxGrid1DBTableView1namakolektif: TcxGridDBColumn
                      Caption = 'Sales'
                      DataBinding.FieldName = 'namakolektif'
                      Width = 98
                    end
                    object cxGrid1DBTableView1persentase: TcxGridDBColumn
                      Caption = 'Bung %'
                      DataBinding.FieldName = 'persentase'
                      Width = 28
                    end
                    object cxGrid1DBTableView1byadmin: TcxGridDBColumn
                      Caption = 'Administrasi'
                      DataBinding.FieldName = 'byadmin'
                    end
                    object cxGrid1DBTableView1platform: TcxGridDBColumn
                      Caption = 'Plaform Pinjaman'
                      DataBinding.FieldName = 'platform'
                      Width = 58
                    end
                  end
                  object cxGrid1Level1: TcxGridLevel
                    GridView = cxGrid1DBTableView1
                  end
                end
                object RzPanel3: TRzPanel
                  Left = 0
                  Top = 0
                  Width = 291
                  Height = 31
                  Align = alTop
                  BorderOuter = fsNone
                  TabOrder = 1
                  object RzToolButton1: TRzToolButton
                    Left = 0
                    Top = 1
                    Width = 169
                    Height = 28
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
                    Caption = '&Tambah Pinjaman Baru'
                    Color = 2250751
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clCream
                    Font.Height = -12
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    OnClick = RzToolButton1Click
                  end
                end
              end
            end
            object dxDockPanel1: TdxDockPanel
              Left = -185
              Top = 0
              Width = 185
              Height = 0
              Visible = False
              AllowFloating = False
              AutoHide = True
              Caption = 'Filter && Pencarian Data'
              CaptionButtons = [cbHide]
              CustomCaptionButtons.Buttons = <>
              TabsProperties.CustomButtons.Buttons = <>
              AutoHidePosition = 0
              DockingType = 1
              OriginalWidth = 185
              OriginalHeight = 140
              object RzToolButton2: TRzToolButton
                Left = 35
                Top = 261
                Width = 113
                Height = 35
                GradientColorStyle = gcsCustom
                SelectionColorStart = 3927039
                SelectionColorStop = 7457838
                SelectionFrameColor = 52479
                ImageIndex = 10
                Images = dm.img24
                ShowCaption = True
                Transparent = False
                UseToolbarShowCaption = False
                UseToolbarVisualStyle = False
                VisualStyle = vsGradient
                Caption = '&Filter Data'
                Color = 2250751
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clCream
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = RzToolButton2Click
              end
              object cxCheckBox1: TcxCheckBox
                Left = 3
                Top = 3
                Caption = 'No. Pinj'
                TabOrder = 0
                OnClick = cxCheckBox1Click
              end
              object cxTextEdit1: TcxTextEdit
                Left = 78
                Top = 3
                Enabled = False
                TabOrder = 1
                OnKeyDown = cxTextEdit1KeyDown
                Width = 96
              end
              object cxCheckBox2: TcxCheckBox
                Left = 3
                Top = 79
                Caption = 'Tgl Pinjam'
                TabOrder = 2
                OnClick = cxCheckBox2Click
              end
              object cxDateEdit1: TcxDateEdit
                Left = 78
                Top = 79
                Enabled = False
                TabOrder = 3
                OnKeyDown = cxTextEdit1KeyDown
                Width = 96
              end
              object cxDateEdit2: TcxDateEdit
                Left = 78
                Top = 104
                Enabled = False
                TabOrder = 4
                OnKeyDown = cxTextEdit1KeyDown
                Width = 96
              end
              object cxLabel1: TcxLabel
                Left = 32
                Top = 106
                Caption = 'S / d'
              end
              object cxCheckBox3: TcxCheckBox
                Left = 3
                Top = 128
                Caption = 'Tgl Input'
                TabOrder = 6
                OnClick = cxCheckBox3Click
              end
              object cxDateEdit3: TcxDateEdit
                Left = 78
                Top = 129
                Enabled = False
                TabOrder = 7
                OnKeyDown = cxTextEdit1KeyDown
                Width = 96
              end
              object cxDateEdit4: TcxDateEdit
                Left = 78
                Top = 155
                Enabled = False
                TabOrder = 8
                OnKeyDown = cxTextEdit1KeyDown
                Width = 96
              end
              object cxLabel3: TcxLabel
                Left = 32
                Top = 157
                Caption = 'S / d'
              end
              object cxDBLookupComboBox1: TcxDBLookupComboBox
                Left = 78
                Top = 28
                DataBinding.DataField = 'idanggota'
                DataBinding.DataSource = dm.Danggota_dbl
                Enabled = False
                Properties.DropDownAutoSize = True
                Properties.KeyFieldNames = 'idanggota'
                Properties.ListColumns = <
                  item
                    Caption = 'Kode'
                    Width = 100
                    FieldName = 'kodeanggota'
                  end
                  item
                    Caption = 'Nama Anggota'
                    Width = 200
                    FieldName = 'namaanggota'
                  end>
                Properties.ListFieldIndex = 1
                Properties.ListSource = dm.Dlist_anggota
                TabOrder = 10
                OnKeyDown = cxTextEdit1KeyDown
                Width = 96
              end
              object cxCheckBox4: TcxCheckBox
                Left = 3
                Top = 28
                Caption = 'Anggota'
                TabOrder = 11
                OnClick = cxCheckBox4Click
              end
              object cxCheckBox5: TcxCheckBox
                Left = 3
                Top = 53
                Caption = 'Sales'
                TabOrder = 12
                OnClick = cxCheckBox5Click
              end
              object cxDBLookupComboBox2: TcxDBLookupComboBox
                Left = 78
                Top = 53
                DataBinding.DataField = 'idkolektif'
                DataBinding.DataSource = dm.Dsales_dbl
                Enabled = False
                Properties.DropDownAutoSize = True
                Properties.KeyFieldNames = 'idkolektif'
                Properties.ListColumns = <
                  item
                    Caption = 'Nama Sales'
                    FieldName = 'namakolektif'
                  end>
                Properties.ListSource = dm.Dlist_sales
                TabOrder = 13
                OnKeyDown = cxTextEdit1KeyDown
                Width = 96
              end
              object cxCheckBox6: TcxCheckBox
                Left = 3
                Top = 180
                Caption = 'Platform Pinjaman'
                TabOrder = 14
                OnClick = cxCheckBox6Click
              end
              object cxCurrencyEdit1: TcxCurrencyEdit
                Left = 112
                Top = 181
                Enabled = False
                Properties.DecimalPlaces = 2
                Properties.DisplayFormat = '#,##0.##'
                Properties.EditFormat = '#,##0.##'
                Properties.UseThousandSeparator = True
                TabOrder = 15
                OnKeyDown = cxTextEdit1KeyDown
                Width = 62
              end
              object cxCurrencyEdit2: TcxCurrencyEdit
                Left = 78
                Top = 206
                Enabled = False
                Properties.DecimalPlaces = 2
                Properties.DisplayFormat = '#,##0.##'
                Properties.EditFormat = '#,##0.##'
                Properties.UseThousandSeparator = True
                TabOrder = 16
                OnKeyDown = cxTextEdit1KeyDown
                Width = 96
              end
              object cxLabel14: TcxLabel
                Left = 32
                Top = 208
                Caption = 'S / d'
              end
              object cxCheckBox7: TcxCheckBox
                Left = 3
                Top = 232
                Caption = 'Pelunasan'
                TabOrder = 18
                OnClick = cxCheckBox7Click
              end
              object cxComboBox1: TcxComboBox
                Left = 78
                Top = 233
                Enabled = False
                Properties.DropDownListStyle = lsFixedList
                Properties.Items.Strings = (
                  'Belum Lunas'
                  'Sudah Lunas')
                TabOrder = 19
                OnKeyDown = cxTextEdit1KeyDown
                Width = 96
              end
            end
          end
        end
        object cxScrollBox1: TcxScrollBox
          Left = 328
          Top = 1
          Width = 431
          Height = 488
          Align = alRight
          TabOrder = 1
          object cxLabel2: TcxLabel
            Left = 0
            Top = 0
            Align = alTop
            AutoSize = False
            Caption = 'Detail Pinjaman'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold, fsUnderline]
            Style.IsFontAssigned = True
            Height = 20
            Width = 429
          end
          object cxGrid2: TcxGrid
            Left = 0
            Top = 209
            Width = 429
            Height = 277
            Align = alClient
            BorderStyle = cxcbsNone
            TabOrder = 1
            object cxGrid2DBTableView1: TcxGridDBTableView
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
              DataController.DataSource = Ddetail
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,##0.##'
                  Kind = skSum
                  FieldName = 'jumlah'
                  Column = cxGrid2DBTableView1jumlah
                end
                item
                  Format = '#,##0.##'
                  Kind = skSum
                  FieldName = 'pokok'
                  Column = cxGrid2DBTableView1pokok
                end
                item
                  Format = '#,##0.##'
                  Kind = skSum
                  FieldName = 'bunga'
                  Column = cxGrid2DBTableView1bunga
                end
                item
                  Format = '#,##0.##'
                  Kind = skSum
                  FieldName = 'denda'
                  Column = cxGrid2DBTableView1denda
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.CellEndEllipsis = True
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderAutoHeight = True
              OptionsView.Indicator = True
              Styles.Header = dm.bold8
              object cxGrid2DBTableView1noangsuran: TcxGridDBColumn
                Caption = 'No.'
                DataBinding.FieldName = 'noangsuran'
                Width = 24
              end
              object cxGrid2DBTableView1tgljatuhtempo: TcxGridDBColumn
                Caption = 'Tgl Jatuh Tempo'
                DataBinding.FieldName = 'tgljatuhtempo'
                Width = 71
              end
              object cxGrid2DBTableView1pokok: TcxGridDBColumn
                Caption = 'Pokok'
                DataBinding.FieldName = 'pokok'
                HeaderAlignmentHorz = taCenter
                Width = 73
              end
              object cxGrid2DBTableView1bunga: TcxGridDBColumn
                Caption = 'Bunga'
                DataBinding.FieldName = 'bunga'
                HeaderAlignmentHorz = taCenter
                Width = 52
              end
              object cxGrid2DBTableView1denda: TcxGridDBColumn
                Caption = 'Denda'
                DataBinding.FieldName = 'denda'
                HeaderAlignmentHorz = taCenter
                Width = 43
              end
              object cxGrid2DBTableView1jumlah: TcxGridDBColumn
                Caption = 'Jumlah'
                DataBinding.FieldName = 'jumlah'
                HeaderAlignmentHorz = taCenter
                Width = 78
              end
              object cxGrid2DBTableView1tglbayar: TcxGridDBColumn
                Caption = 'Status Pelunasan'
                DataBinding.FieldName = 'tglbayar'
                HeaderAlignmentHorz = taCenter
                Width = 76
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGrid2DBTableView1
            end
          end
          object RzPanel5: TRzPanel
            Left = 0
            Top = 129
            Width = 429
            Height = 60
            Align = alTop
            BorderInner = fsFlatRounded
            BorderOuter = fsNone
            TabOrder = 2
            object cxLabel15: TcxLabel
              Left = 5
              Top = 8
              Caption = 'Sisa Angsuran Bunga'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel9: TcxLabel
              Left = 5
              Top = 33
              Caption = 'Sisa Angsuran Pokok'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object sisaangsuranpokok: TcxCurrencyEdit
              Left = 134
              Top = 32
              Properties.Alignment.Horz = taRightJustify
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '#,##0.##'
              Properties.EditFormat = '#,##0.##'
              Properties.ReadOnly = True
              Properties.UseThousandSeparator = True
              TabOrder = 2
              Width = 107
            end
            object sisaangsuranbunga: TcxCurrencyEdit
              Left = 134
              Top = 7
              Properties.Alignment.Horz = taRightJustify
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '#,##0.##'
              Properties.EditFormat = '#,##0.##'
              Properties.ReadOnly = True
              Properties.UseThousandSeparator = True
              TabOrder = 3
              Width = 107
            end
            object cxLabel13: TcxLabel
              Left = 262
              Top = 15
              Caption = 'Sisa Angsuran'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
            end
            object sisaangsuran: TcxCurrencyEdit
              Left = 262
              Top = 32
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '#,##0.##'
              Properties.EditFormat = '#,##0.##'
              Properties.ReadOnly = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 5
              Width = 139
            end
          end
          object RzPanel1: TRzPanel
            Left = 0
            Top = 20
            Width = 429
            Height = 89
            Align = alTop
            BorderInner = fsFlatRounded
            BorderOuter = fsNone
            TabOrder = 3
            object cxLabel4: TcxLabel
              Left = 85
              Top = 60
              Caption = 'Jumlah Angsuran'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
            end
            object cxLabel5: TcxLabel
              Left = 219
              Top = 30
              Caption = 'Angsuran Bunga'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel6: TcxLabel
              Left = 219
              Top = 7
              Caption = 'Angsuran Pokok'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel7: TcxLabel
              Left = 6
              Top = 29
              Caption = 'Lama Angsuran'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel8: TcxLabel
              Left = 5
              Top = 6
              Caption = 'Tipe Angusran'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object jmlangsuran: TcxCurrencyEdit
              Left = 193
              Top = 59
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '#,##0.##'
              Properties.EditFormat = '#,##0.##'
              Properties.ReadOnly = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 5
              Width = 118
            end
            object angsuranbunga: TcxCurrencyEdit
              Left = 306
              Top = 29
              Properties.Alignment.Horz = taRightJustify
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '#,##0.##'
              Properties.EditFormat = '#,##0.##'
              Properties.ReadOnly = True
              Properties.UseThousandSeparator = True
              TabOrder = 6
              Width = 96
            end
            object angsuranpokok: TcxCurrencyEdit
              Left = 306
              Top = 6
              Properties.Alignment.Horz = taRightJustify
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '#,##0.##'
              Properties.EditFormat = '#,##0.##'
              Properties.ReadOnly = True
              Properties.UseThousandSeparator = True
              TabOrder = 7
              Width = 96
            end
            object tipeangsuran: TcxTextEdit
              Left = 94
              Top = 6
              Properties.ReadOnly = True
              TabOrder = 8
              Width = 94
            end
            object lamaangs: TcxCurrencyEdit
              Left = 94
              Top = 29
              Properties.Alignment.Horz = taRightJustify
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '#,##0.##'
              Properties.EditFormat = '#,##0.##'
              Properties.ReadOnly = True
              Properties.UseThousandSeparator = True
              TabOrder = 9
              Width = 29
            end
            object cxLabel11: TcxLabel
              Left = 124
              Top = 30
              Caption = 'X'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
          end
          object cxLabel10: TcxLabel
            Left = 0
            Top = 109
            Align = alTop
            AutoSize = False
            Caption = 'Informasi Pinjaman'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold, fsUnderline]
            Style.IsFontAssigned = True
            Height = 20
            Width = 429
          end
          object cxLabel12: TcxLabel
            Left = 0
            Top = 189
            Align = alTop
            AutoSize = False
            Caption = 'Detail Angsuran'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold, fsUnderline]
            Style.IsFontAssigned = True
            Height = 20
            Width = 429
          end
        end
      end
    end
  end
  object dxDockingManager1: TdxDockingManager
    Color = clBtnFace
    DefaultHorizContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultHorizContainerSiteProperties.Dockable = True
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultVertContainerSiteProperties.Dockable = True
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultTabContainerSiteProperties.Dockable = True
    DefaultTabContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.TabsProperties.CustomButtons.Buttons = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 256
    Top = 179
    PixelsPerInch = 96
  end
  object Qpinjaman: TMyQuery
    SQLRefresh.Strings = (
      'SELECT a.*,'
      'b.`sisabunga`,'
      'b.`sisapokokangsuran`,'
      'c.namaanggota,'
      'd.namakolektif FROM m_pinjaman a '
      'LEFT JOIN v_sisa_angsuran b ON a.nopinjaman=b.nopinjaman'
      'LEFT JOIN anggota c ON a.idanggota=c.`idanggota`'
      'LEFT JOIN kolektif d ON c.idkolektif=d.`idkolektif`'
      '')
    Connection = dm.Conn1
    SQL.Strings = (
      'SELECT a.*,'
      'b.`sisabunga`,'
      'b.`sisapokokangsuran`,'
      'c.namaanggota,'
      'd.namakolektif FROM m_pinjaman a '
      'LEFT JOIN v_sisa_angsuran b ON a.nopinjaman=b.nopinjaman'
      'LEFT JOIN anggota c ON a.idanggota=c.`idanggota`'
      'LEFT JOIN kolektif d ON c.idkolektif=d.`idkolektif`')
    Left = 131
    Top = 174
    object Qpinjamannopinjaman: TStringField
      FieldName = 'nopinjaman'
      Size = 15
    end
    object Qpinjamanidanggota: TIntegerField
      FieldName = 'idanggota'
    end
    object Qpinjamanplatform: TFloatField
      FieldName = 'platform'
      DisplayFormat = '#,##0.##'
    end
    object Qpinjamantipeangsuran: TStringField
      FieldName = 'tipeangsuran'
      FixedChar = True
      Size = 7
    end
    object Qpinjamanbyadmin: TFloatField
      FieldName = 'byadmin'
      DisplayFormat = '#,##0.##'
    end
    object Qpinjamanpersentase: TFloatField
      FieldName = 'persentase'
      DisplayFormat = '#,##0.##'
    end
    object Qpinjamanlamaangsuran: TSmallintField
      FieldName = 'lamaangsuran'
      DisplayFormat = '#,##0.##'
    end
    object Qpinjamantglpinjam: TDateField
      FieldName = 'tglpinjam'
    end
    object Qpinjamanpokokbulan: TFloatField
      FieldName = 'pokokbulan'
      DisplayFormat = '#,##0.##'
    end
    object Qpinjamanbungabulan: TFloatField
      FieldName = 'bungabulan'
      DisplayFormat = '#,##0.##'
    end
    object Qpinjamanjumlahbulan: TFloatField
      FieldName = 'jumlahbulan'
      DisplayFormat = '#,##0.##'
    end
    object Qpinjamanwaktuinput: TDateTimeField
      FieldName = 'waktuinput'
    end
    object Qpinjamanidparam: TIntegerField
      FieldName = 'idparam'
    end
    object Qpinjamansisabunga: TFloatField
      FieldName = 'sisabunga'
      DisplayFormat = '#,##0.##'
    end
    object Qpinjamansisapokokangsuran: TFloatField
      FieldName = 'sisapokokangsuran'
      DisplayFormat = '#,##0.##'
    end
    object Qpinjamannamaanggota: TStringField
      FieldName = 'namaanggota'
      Size = 75
    end
    object Qpinjamannamakolektif: TStringField
      FieldName = 'namakolektif'
      Size = 35
    end
    object Qpinjamankaskredit: TStringField
      FieldName = 'kaskredit'
      Size = 25
    end
  end
  object Dpinjaman: TMyDataSource
    DataSet = Qpinjaman
    Left = 232
    Top = 264
  end
  object Qdetail: TMyQuery
    SQLRefresh.Strings = (
      'SELECT nopinjaman,periode,pokok,bunga,denda,jumlah,'
      'flaglunas,tgljatuhtempo,noangsuran,'
      
        'IF(flaglunas=0,"Belum Lunas",DATE_FORMAT(tglbayar,"%d/%m/%Y")) A' +
        'S tglbayar FROM  d_angsuran'
      'where nopinjaman=:nopinjaman'
      'order by noangsuran')
    Connection = dm.Conn1
    SQL.Strings = (
      'SELECT nopinjaman,periode,pokok,bunga,denda,jumlah,'
      'flaglunas,tgljatuhtempo,noangsuran,'
      
        'IF(flaglunas=0,"Belum Lunas",DATE_FORMAT(tglbayar,"%d-%m-%Y")) A' +
        'S tglbayar FROM  d_angsuran'
      'order by noangsuran')
    Left = 492
    Top = 340
    object Qdetailnopinjaman: TStringField
      FieldName = 'nopinjaman'
      Size = 15
    end
    object Qdetailperiode: TStringField
      FieldName = 'periode'
      Size = 6
    end
    object Qdetailpokok: TFloatField
      FieldName = 'pokok'
      DisplayFormat = '#,##0.##'
    end
    object Qdetailbunga: TFloatField
      FieldName = 'bunga'
      DisplayFormat = '#,##0.##'
    end
    object Qdetaildenda: TFloatField
      FieldName = 'denda'
      DisplayFormat = '#,##0.##'
    end
    object Qdetailjumlah: TFloatField
      FieldName = 'jumlah'
      DisplayFormat = '#,##0.##'
    end
    object Qdetailflaglunas: TStringField
      FieldName = 'flaglunas'
      FixedChar = True
      Size = 1
    end
    object Qdetailtglbayar: TStringField
      FieldName = 'tglbayar'
      Size = 11
    end
    object Qdetailtgljatuhtempo: TDateField
      FieldName = 'tgljatuhtempo'
    end
    object Qdetailnoangsuran: TSmallintField
      FieldName = 'noangsuran'
    end
  end
  object Ddetail: TMyDataSource
    DataSet = Qdetail
    Left = 504
    Top = 360
  end
  object PopupMenu1: TPopupMenu
    Images = dm.img16
    Left = 91
    Top = 252
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
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <
      item
        GridView = cxGrid1DBTableView1
        HitTypes = [gvhtCell]
        Index = 0
        PopupMenu = PopupMenu1
      end>
    Left = 160
    Top = 232
  end
end
