object fovocerbayar: Tfovocerbayar
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
      Caption = 'Pembayaran Voucher'
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
                    object RzToolButton1: TRzToolButton
                      Left = 2
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
                      Caption = '&Proses Pembayaran'
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
                      object cxGrid1DBTableView1notrans: TcxGridDBColumn
                        Caption = 'No Voucher'
                        DataBinding.FieldName = 'notrans'
                        Width = 56
                      end
                      object cxGrid1DBTableView1tanggal: TcxGridDBColumn
                        Caption = 'Tgl Voucher'
                        DataBinding.FieldName = 'tanggal'
                        Width = 52
                      end
                      object cxGrid1DBTableView1Column1: TcxGridDBColumn
                        Caption = 'Tgl Usulan'
                        DataBinding.FieldName = 'tglusulan'
                        Width = 58
                      end
                      object cxGrid1DBTableView1uraian: TcxGridDBColumn
                        Caption = 'Uraian'
                        DataBinding.FieldName = 'uraian'
                        Width = 210
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
                      object cxGrid1DBTableView1jumlah: TcxGridDBColumn
                        Caption = 'Jumlah'
                        DataBinding.FieldName = 'jumlah'
                        HeaderAlignmentHorz = taRightJustify
                        Width = 63
                      end
                      object cxGrid1DBTableView1bagian: TcxGridDBColumn
                        Caption = 'Bagian'
                        DataBinding.FieldName = 'bagian'
                        Visible = False
                        Width = 56
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
                        MinWidth = 22
                        Options.HorzSizing = False
                        Width = 22
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
                Caption = 'Detail Pembayaran'
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
                  object cxGridLevel1: TcxGridLevel
                    GridView = cxGridDBTableView1
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
                Top = 118
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
                Enabled = False
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
                Enabled = False
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
                TabOrder = 7
                OnClick = cxCheckBox5Click
              end
              object cxTextEdit2: TcxTextEdit
                Left = 87
                Top = 82
                Enabled = False
                Style.TextStyle = []
                TabOrder = 8
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
      
        'select notrans,namabank,termin,tglbayar,jmlbayar from vcbayar wh' +
        'ere notrans=:notrans')
    Connection = dm.Conn1
    SQL.Strings = (
      'select notrans,namabank,termin,tglbayar,jmlbayar from vcbayar')
    Options.FieldOrigins = foNone
    Left = 544
    Top = 237
    object Qdjunamabank: TStringField
      FieldName = 'namabank'
      Size = 50
    end
    object Qdjutermin: TIntegerField
      FieldName = 'termin'
    end
    object Qdjutglbayar: TDateField
      FieldName = 'tglbayar'
    end
    object Qdjujmlbayar: TFloatField
      FieldName = 'jmlbayar'
      DisplayFormat = '#,##0.##'
    end
    object Qdjunotrans: TStringField
      FieldName = 'notrans'
      Size = 30
    end
  end
  object ddju: TMyDataSource
    DataSet = Qdju
    Left = 560
    Top = 285
  end
  object Dju: TMyDataSource
    DataSet = Qju
    Left = 512
    Top = 192
  end
  object Qju: TMyQuery
    SQLRefresh.Strings = (
      'select * from voucher where flaglunas="0" and flagusulan="1"')
    Connection = dm.Conn1
    SQL.Strings = (
      'select * from voucher order by idvoucher')
    Options.FieldOrigins = foNone
    Left = 528
    Top = 320
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
    object Qjujumlah: TFloatField
      FieldName = 'jumlah'
      Origin = 'voucher.jumlah'
      DisplayFormat = '#,##0.##'
    end
    object Qjutypebayar: TStringField
      FieldName = 'typebayar'
      Origin = 'voucher.typebayar'
      FixedChar = True
      Size = 6
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
    object Qjuflagusulan: TSmallintField
      FieldName = 'flagusulan'
    end
    object Qjutglusulan: TDateField
      FieldName = 'tglusulan'
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
    Left = 424
    Top = 184
  end
  object PopupMenu1: TPopupMenu
    Images = dm.img16
    Left = 475
    Top = 300
    object Koreksi1: TMenuItem
      Caption = 'Proses Pembayaran'
      ImageIndex = 3
      ShortCut = 13
      OnClick = Koreksi1Click
    end
  end
  object MyQuery1: TMyQuery
    SQLRefresh.Strings = (
      
        'select notrans,namabank,termin,tglbayar,jmlbayar from vcbayar wh' +
        'ere notrans=:notrans')
    Connection = dm.Conn1
    SQL.Strings = (
      'select notrans,namabank,termin,tglbayar,jmlbayar from vcbayar')
    Options.FieldOrigins = foNone
    Left = 680
    Top = 229
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
  end
  object MyDataSource1: TMyDataSource
    DataSet = MyQuery1
    Left = 696
    Top = 277
  end
end
