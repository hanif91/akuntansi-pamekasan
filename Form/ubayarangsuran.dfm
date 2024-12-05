object fobayarangsuran: Tfobayarangsuran
  Left = 0
  Top = 0
  Caption = 'Bayar Angsuran'
  ClientHeight = 497
  ClientWidth = 967
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
    Width = 967
    Height = 497
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
      Caption = 'BAYAR ANGSURAN'
      object RzPanel1: TRzPanel
        Left = 0
        Top = 43
        Width = 967
        Height = 435
        Align = alClient
        BorderOuter = fsFlat
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object RzPageControl2: TRzPageControl
          Left = 472
          Top = 1
          Width = 494
          Height = 433
          Hint = ''
          ActivePage = RzTabSheet1
          Align = alClient
          BackgroundColor = 7457838
          BoldCurrentTab = True
          ButtonColor = 5264367
          ButtonSymbolColor = clWhite
          ButtonSymbolColorDisabled = 2250751
          Color = 52479
          UseColoredTabs = True
          LightenUnselectedColoredTabs = False
          FlatColor = 7457838
          HotTrackColor = 52479
          ParentBackgroundColor = False
          ParentColor = False
          ParentShowHint = False
          ShowHint = False
          TabColors.HighlightBar = 6336039
          TabColors.Shadow = 52479
          TabColors.Unselected = 3927039
          TabIndex = 0
          TabOrder = 0
          TextColors.Disabled = clMedGray
          TextColors.Selected = clWhite
          TextColors.Unselected = 10260600
          Transparent = True
          UseGradients = False
          FixedDimension = 22
          object RzTabSheet1: TRzTabSheet
            Color = 2250751
            Caption = 'Billing Pembayaran   '
            object RzPanel3: TRzPanel
              Left = 0
              Top = 0
              Width = 490
              Height = 407
              Align = alClient
              BorderOuter = fsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxGrid1: TcxGrid
                Left = 0
                Top = 0
                Width = 490
                Height = 366
                Align = alClient
                TabOrder = 0
                object cxGrid1DBTableView1: TcxGridDBTableView
                  OnKeyDown = cxGrid1DBTableView1KeyDown
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
                  DataController.DataSource = Dbill
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
                  OptionsView.CellEndEllipsis = True
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderAutoHeight = True
                  OptionsView.Indicator = True
                  Styles.Footer = dm.bold8
                  Styles.Header = dm.bold8
                  object cxGrid1DBTableView1RecId: TcxGridDBColumn
                    DataBinding.FieldName = 'RecId'
                    Visible = False
                  end
                  object cxGrid1DBTableView1nopinjaman: TcxGridDBColumn
                    Caption = 'No. Pinjaman'
                    DataBinding.FieldName = 'nopinjaman'
                    Width = 94
                  end
                  object cxGrid1DBTableView1anggota: TcxGridDBColumn
                    Caption = 'Anggota'
                    DataBinding.FieldName = 'anggota'
                    Width = 219
                  end
                  object cxGrid1DBTableView1tgljatuhtempo: TcxGridDBColumn
                    Caption = 'Tgl Jatuh Tempo'
                    DataBinding.FieldName = 'tgljatuhtempo'
                    Width = 86
                  end
                  object cxGrid1DBTableView1angsuranke: TcxGridDBColumn
                    Caption = 'Angs. Ke'
                    DataBinding.FieldName = 'angsuranke'
                    Width = 30
                  end
                  object cxGrid1DBTableView1pokok: TcxGridDBColumn
                    Caption = 'Pokok'
                    DataBinding.FieldName = 'pokok'
                    Visible = False
                    HeaderAlignmentHorz = taRightJustify
                    Width = 76
                  end
                  object cxGrid1DBTableView1bunga: TcxGridDBColumn
                    Caption = 'Bunga'
                    DataBinding.FieldName = 'bunga'
                    Visible = False
                    HeaderAlignmentHorz = taRightJustify
                  end
                  object cxGrid1DBTableView1denda: TcxGridDBColumn
                    Caption = 'Denda'
                    DataBinding.FieldName = 'denda'
                    Visible = False
                    HeaderAlignmentHorz = taRightJustify
                  end
                  object cxGrid1DBTableView1jumlah: TcxGridDBColumn
                    Caption = 'Jumlah'
                    DataBinding.FieldName = 'jumlah'
                    HeaderAlignmentHorz = taRightJustify
                    Width = 96
                  end
                end
                object cxGrid1Level1: TcxGridLevel
                  GridView = cxGrid1DBTableView1
                end
              end
              object RzPanel7: TRzPanel
                Left = 0
                Top = 366
                Width = 490
                Height = 41
                Align = alBottom
                BorderOuter = fsNone
                BorderSides = [sdLeft, sdRight, sdBottom]
                TabOrder = 1
                object RzToolButton4: TRzToolButton
                  Left = 279
                  Top = 0
                  Width = 211
                  Height = 41
                  GradientColorStyle = gcsCustom
                  SelectionColorStart = 3927039
                  SelectionColorStop = 7457838
                  SelectionFrameColor = 52479
                  ImageIndex = 20
                  Images = dm.img36
                  ShowCaption = True
                  Transparent = False
                  UseToolbarButtonSize = False
                  UseToolbarShowCaption = False
                  UseToolbarVisualStyle = False
                  VisualStyle = vsGradient
                  Align = alRight
                  Caption = 'PROSES PEMBAYARAN'
                  Color = 2250751
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clCream
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  OnClick = RzToolButton4Click
                  ExplicitLeft = 328
                end
              end
            end
          end
        end
        object RzPageControl3: TRzPageControl
          Left = 1
          Top = 1
          Width = 412
          Height = 433
          Hint = ''
          ActivePage = RzTabSheet2
          Align = alLeft
          BackgroundColor = 7457838
          BoldCurrentTab = True
          ButtonColor = 5264367
          ButtonSymbolColor = clWhite
          ButtonSymbolColorDisabled = 2250751
          Color = 52479
          UseColoredTabs = True
          LightenUnselectedColoredTabs = False
          FlatColor = 7457838
          HotTrackColor = 52479
          ParentBackgroundColor = False
          ParentColor = False
          ParentShowHint = False
          ShowHint = False
          TabColors.HighlightBar = 6336039
          TabColors.Shadow = 52479
          TabColors.Unselected = 3927039
          TabIndex = 0
          TabOrder = 1
          TextColors.Disabled = clMedGray
          TextColors.Selected = clWhite
          TextColors.Unselected = 10260600
          Transparent = True
          UseGradients = False
          FixedDimension = 22
          object RzTabSheet2: TRzTabSheet
            Color = 6994790
            Caption = 'Daftar Tagihan   '
            object RzPanel4: TRzPanel
              Left = 0
              Top = 0
              Width = 408
              Height = 407
              Align = alClient
              BorderOuter = fsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object RzPanel6: TRzPanel
                Left = 0
                Top = 0
                Width = 408
                Height = 83
                Align = alTop
                BorderOuter = fsFlat
                BorderSides = [sdLeft, sdTop, sdRight]
                TabOrder = 0
                object cxLabel5: TcxLabel
                  Left = 5
                  Top = 4
                  Caption = 'No. Pinjaman'
                end
                object cxLabel6: TcxLabel
                  Left = 5
                  Top = 21
                  Caption = 'Tanggal Pinjam'
                end
                object cxLabel7: TcxLabel
                  Left = 234
                  Top = 5
                  Caption = 'Bunga'
                end
                object cxLabel8: TcxLabel
                  Left = 234
                  Top = 21
                  Caption = 'Lama Angs.'
                end
                object cxLabel9: TcxLabel
                  Left = 234
                  Top = 39
                  Caption = 'Platform'
                end
                object cxLabel10: TcxLabel
                  Left = 5
                  Top = 39
                  Caption = 'Anggota'
                end
                object cxLabel11: TcxLabel
                  Left = 5
                  Top = 57
                  Caption = 'Sales'
                end
                object cxLabel12: TcxLabel
                  Left = 84
                  Top = 4
                  Caption = ':'
                end
                object cxLabel13: TcxLabel
                  Left = 84
                  Top = 21
                  Caption = ':'
                end
                object cxLabel14: TcxLabel
                  Left = 84
                  Top = 39
                  Caption = ':'
                end
                object cxLabel15: TcxLabel
                  Left = 84
                  Top = 57
                  Caption = ':'
                end
                object cxLabel16: TcxLabel
                  Left = 295
                  Top = 4
                  Caption = ':'
                end
                object cxLabel17: TcxLabel
                  Left = 295
                  Top = 21
                  Caption = ':'
                end
                object cxLabel18: TcxLabel
                  Left = 295
                  Top = 39
                  Caption = ':'
                end
                object lblnopinjaman: TcxLabel
                  Left = 93
                  Top = 5
                  AutoSize = False
                  Caption = 'No. Pinjaman'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  Height = 17
                  Width = 140
                end
                object lbltglpinjam: TcxLabel
                  Left = 93
                  Top = 22
                  AutoSize = False
                  Caption = 'Tanggal Pinjam'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  Height = 17
                  Width = 140
                end
                object lblnamaanggota: TcxLabel
                  Left = 93
                  Top = 40
                  AutoSize = False
                  Caption = 'Anggota'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  Height = 17
                  Width = 140
                end
                object lblsales: TcxLabel
                  Left = 93
                  Top = 58
                  AutoSize = False
                  Caption = 'Sales'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  Height = 17
                  Width = 140
                end
                object lblplatform: TcxLabel
                  Left = 304
                  Top = 40
                  AutoSize = False
                  Caption = 'Anggota'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  Height = 17
                  Width = 97
                end
                object lbllamaangs: TcxLabel
                  Left = 304
                  Top = 22
                  AutoSize = False
                  Caption = 'Tanggal Pinjam'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  Height = 17
                  Width = 97
                end
                object lblbunga: TcxLabel
                  Left = 304
                  Top = 5
                  AutoSize = False
                  Caption = 'No. Pinjaman'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  Height = 17
                  Width = 97
                end
              end
              object cxGrid2: TcxGrid
                Left = 0
                Top = 83
                Width = 408
                Height = 324
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
                  OnCellDblClick = cxGrid2DBTableView1CellDblClick
                  DataController.DataSource = Dtagihan
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
                  Styles.Footer = dm.bold8
                  Styles.Header = dm.bold8
                  object cxGrid2DBTableView1noangsuran: TcxGridDBColumn
                    Caption = 'No.'
                    DataBinding.FieldName = 'noangsuran'
                    Width = 23
                  end
                  object cxGrid2DBTableView1tgljatuhtempo: TcxGridDBColumn
                    Caption = 'Tgl Jatuh Tempo'
                    DataBinding.FieldName = 'tgljatuhtempo'
                    Width = 88
                  end
                  object cxGrid2DBTableView1pokok: TcxGridDBColumn
                    Caption = 'Pokok'
                    DataBinding.FieldName = 'pokok'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = '#,##0.##'
                    Properties.EditFormat = '#,##0.##'
                    Properties.UseThousandSeparator = True
                    HeaderAlignmentHorz = taCenter
                    Width = 85
                  end
                  object cxGrid2DBTableView1bunga: TcxGridDBColumn
                    Caption = 'Bunga'
                    DataBinding.FieldName = 'bunga'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = '#,##0.##'
                    Properties.EditFormat = '#,##0.##'
                    Properties.UseThousandSeparator = True
                    HeaderAlignmentHorz = taCenter
                    Width = 59
                  end
                  object cxGrid2DBTableView1denda: TcxGridDBColumn
                    Caption = 'Denda'
                    DataBinding.FieldName = 'denda'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = '#,##0.##'
                    Properties.EditFormat = '#,##0.##'
                    Properties.UseThousandSeparator = True
                    HeaderAlignmentHorz = taCenter
                    Width = 58
                  end
                  object cxGrid2DBTableView1jumlah: TcxGridDBColumn
                    Caption = 'Jumlah'
                    DataBinding.FieldName = 'jumlah'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = '#,##0.##'
                    Properties.EditFormat = '#,##0.##'
                    Properties.UseThousandSeparator = True
                    HeaderAlignmentHorz = taCenter
                    Width = 83
                  end
                end
                object cxGrid2Level1: TcxGridLevel
                  GridView = cxGrid2DBTableView1
                end
              end
            end
          end
        end
        object RzPanel5: TRzPanel
          Left = 413
          Top = 1
          Width = 59
          Height = 433
          Align = alLeft
          BorderOuter = fsFlat
          BorderSides = [sdLeft, sdRight, sdBottom]
          TabOrder = 2
          object RzToolButton2: TRzToolButton
            Left = 5
            Top = 97
            Width = 48
            Height = 50
            GradientColorStyle = gcsCustom
            SelectionColorStop = clBtnFace
            SelectionFrameColor = clBtnFace
            HotIndex = 4
            ImageIndex = 2
            Images = dm.img48
            Layout = blGlyphTop
            ShowCaption = True
            UseToolbarButtonLayout = False
            UseToolbarButtonSize = False
            UseToolbarShowCaption = False
            UseToolbarVisualStyle = False
            VisualStyle = vsGradient
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
            Left = 6
            Top = 185
            Width = 48
            Height = 50
            GradientColorStyle = gcsCustom
            SelectionColorStop = clBtnFace
            SelectionFrameColor = clBtnFace
            HotIndex = 5
            ImageIndex = 3
            Images = dm.img48
            Layout = blGlyphTop
            ShowCaption = True
            UseToolbarButtonLayout = False
            UseToolbarButtonSize = False
            UseToolbarShowCaption = False
            UseToolbarVisualStyle = False
            VisualStyle = vsGradient
            Color = 2250751
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = RzToolButton3Click
          end
          object cxLabel3: TcxLabel
            Left = 3
            Top = 145
            AutoSize = False
            Caption = 'Tambah Ke Billing'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextStyle = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.WordWrap = True
            Height = 40
            Width = 55
            AnchorX = 31
          end
          object cxLabel4: TcxLabel
            Left = 3
            Top = 233
            AutoSize = False
            Caption = 'Hapus Dari Billing'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextStyle = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.WordWrap = True
            Height = 40
            Width = 55
            AnchorX = 31
          end
        end
      end
      object RzPanel2: TRzPanel
        Left = 0
        Top = 0
        Width = 967
        Height = 43
        Align = alTop
        BorderOuter = fsFlat
        BorderSides = [sdLeft, sdTop, sdRight]
        TabOrder = 1
        DesignSize = (
          967
          43)
        object RzToolButton1: TRzToolButton
          Left = 261
          Top = 4
          Width = 114
          Height = 34
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
          Caption = 'Cari tagihan'
          Color = 2250751
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCream
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = RzToolButton1Click
        end
        object cxLabel1: TcxLabel
          Left = 7
          Top = 8
          Caption = 'No. Pinjaman'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object nopinjaman: TcxTextEdit
          Left = 101
          Top = 4
          AutoSize = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 1
          TextHint = 'Contoh: PJ1000001'
          Height = 34
          Width = 154
        end
        object cxLabel2: TcxLabel
          Left = 390
          Top = 8
          Anchors = [akTop, akRight]
          Caption = 'Setup Tanggal Bayar'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxDateEdit1: TcxDateEdit
          Left = 534
          Top = 7
          Anchors = [akTop, akRight]
          ParentFont = False
          Properties.OnChange = cxDateEdit1PropertiesChange
          Properties.OnValidate = cxDateEdit1PropertiesValidate
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 3
          Width = 130
        end
        object cxLabel19: TcxLabel
          Left = 686
          Top = 8
          Anchors = [akTop, akRight]
          Caption = 'Setup Target Kas'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 808
          Top = 6
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'namakas'
          DataBinding.DataSource = dm.Dkas_dbl
          ParentFont = False
          Properties.DropDownAutoSize = True
          Properties.DropDownListStyle = lsFixedList
          Properties.KeyFieldNames = 'namakas'
          Properties.ListColumns = <
            item
              Caption = 'Nama Kas'
              Width = 100
              FieldName = 'namakas'
            end>
          Properties.ListSource = dm.Dlist_kas
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 5
          Width = 155
        end
      end
    end
  end
  object tagihan: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 250
    Top = 254
  end
  object Dtagihan: TMyDataSource
    DataSet = tagihan
    Left = 296
    Top = 248
  end
  object Qcekt: TMyQuery
    Connection = dm.Conn1
    Left = 290
    Top = 334
  end
  object bill: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 514
    Top = 150
    object billnopinjaman: TStringField
      FieldName = 'nopinjaman'
      Size = 15
    end
    object billanggota: TStringField
      FieldName = 'anggota'
      Size = 45
    end
    object billangsuranke: TSmallintField
      FieldName = 'angsuranke'
      DisplayFormat = '#,##0.##'
    end
    object billpokok: TCurrencyField
      FieldName = 'pokok'
      DisplayFormat = '#,##0.##'
    end
    object billbunga: TCurrencyField
      FieldName = 'bunga'
      DisplayFormat = '#,##0.##'
    end
    object billdenda: TCurrencyField
      FieldName = 'denda'
      DisplayFormat = '#,##0.##'
    end
    object billjumlah: TCurrencyField
      FieldName = 'jumlah'
      DisplayFormat = '#,##0.##'
    end
    object billperiode: TStringField
      FieldName = 'periode'
      Size = 6
    end
    object billkode: TStringField
      FieldName = 'kode'
      Size = 30
    end
    object billtgljatuhtempo: TDateField
      FieldName = 'tgljatuhtempo'
    end
  end
  object Dbill: TMyDataSource
    DataSet = bill
    Left = 528
    Top = 168
  end
  object ActionList1: TActionList
    Left = 426
    Top = 350
    object enter: TAction
      Caption = 'enter'
      ShortCut = 13
      OnExecute = enterExecute
    end
    object esc: TAction
      Caption = 'esc'
    end
    object f5: TAction
      Caption = 'f5'
      ShortCut = 116
      OnExecute = f5Execute
    end
  end
end
