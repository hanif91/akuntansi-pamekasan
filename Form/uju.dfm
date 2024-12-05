object foju: Tfoju
  Left = 0
  Top = 0
  Caption = 'foju'
  ClientHeight = 787
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
    Height = 787
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
      Caption = 'Jurnal Umum (Memorial)'
      object RzPanel1setorsimp: TRzPanel
        Left = 0
        Top = 0
        Width = 1166
        Height = 768
        Align = alClient
        BorderOuter = fsFlat
        TabOrder = 0
        object RzPanel2: TRzPanel
          Left = 1
          Top = 1
          Width = 1164
          Height = 766
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object dxDockSite1: TdxDockSite
            Left = 0
            Top = 0
            Width = 1164
            Height = 766
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ManagerFont = False
            Align = alClient
            DockingType = 5
            OriginalWidth = 1164
            OriginalHeight = 766
            object dxLayoutDockSite4: TdxLayoutDockSite
              Left = 193
              Top = 0
              Width = 971
              Height = 766
              DockingType = 0
              OriginalWidth = 300
              OriginalHeight = 200
              object dxLayoutDockSite1: TdxLayoutDockSite
                Left = 0
                Top = 0
                Width = 555
                Height = 766
                DockingType = 0
                OriginalWidth = 300
                OriginalHeight = 200
                object dxLayoutDockSite3: TdxLayoutDockSite
                  Left = 0
                  Top = 0
                  Width = 555
                  Height = 766
                  DockingType = 0
                  OriginalWidth = 300
                  OriginalHeight = 200
                end
                object dxDockPanel2: TdxDockPanel
                  Left = 0
                  Top = 0
                  Width = 555
                  Height = 766
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
                    Width = 547
                    Height = 37
                    Align = alTop
                    BorderOuter = fsFlat
                    BorderSides = [sdLeft, sdRight]
                    TabOrder = 0
                    object RzToolButton1: TRzToolButton
                      Left = 3
                      Top = 1
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
                      Caption = '&Tambah Jurnal Baru'
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
                    Width = 547
                    Height = 722
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
                      object cxGrid1DBTableView1notrans: TcxGridDBColumn
                        Caption = 'No. Transaksi'
                        DataBinding.FieldName = 'notrans'
                        Width = 59
                      end
                      object cxGrid1DBTableView1tanggal: TcxGridDBColumn
                        Caption = 'Tanggal'
                        DataBinding.FieldName = 'tanggal'
                        Width = 51
                      end
                      object cxGrid1DBTableView1uraian: TcxGridDBColumn
                        Caption = 'Uraian'
                        DataBinding.FieldName = 'uraian'
                        Width = 193
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
                        Width = 61
                      end
                    end
                    object cxGrid1Level1: TcxGridLevel
                      GridView = cxGrid1DBTableView1
                    end
                  end
                end
              end
              object dxDockPanel1: TdxDockPanel
                Left = 555
                Top = 0
                Width = 416
                Height = 766
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ManagerFont = False
                AllowFloating = True
                AutoHide = False
                Caption = 'Detail Jurnal'
                CustomCaptionButtons.Buttons = <>
                TabsProperties.CustomButtons.Buttons = <>
                DockingType = 3
                OriginalWidth = 416
                OriginalHeight = 140
                object cxGrid2: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 408
                  Height = 722
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
                      Width = 59
                    end
                    object cxGridDBTableView1namaakun: TcxGridDBColumn
                      Caption = 'Nama Akun'
                      DataBinding.FieldName = 'namaakun'
                      Width = 180
                    end
                    object cxGridDBTableView1debet: TcxGridDBColumn
                      Caption = 'Debet'
                      DataBinding.FieldName = 'debet'
                      HeaderAlignmentHorz = taRightJustify
                      Width = 82
                    end
                    object cxGridDBTableView1kredit: TcxGridDBColumn
                      Caption = 'Kredit'
                      DataBinding.FieldName = 'kredit'
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
            object dxDockPanel4: TdxDockPanel
              Left = 0
              Top = 0
              Width = 193
              Height = 766
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
              OriginalWidth = 193
              OriginalHeight = 140
              object cxButton5: TcxButton
                Left = 36
                Top = 88
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
                Left = 77
                Top = 53
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
                Width = 105
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
                Left = 77
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
                Width = 105
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
                Left = 77
                Top = 5
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
                Width = 105
              end
              object cxCheckBox1: TcxCheckBox
                Left = 0
                Top = 5
                Caption = 'No. Trans'
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
            end
          end
        end
      end
    end
  end
  object Qdju: TMyQuery
    SQLRefresh.Strings = (
      
        'select a.idcoa,b.kodeakun,b.namaakun,a.debet,a.kredit,kodeunit f' +
        'rom ju_ a left join coa b on a.idcoa=b.idcoa where a.idju=:idju')
    Connection = dm.Conn1
    SQL.Strings = (
      
        'select a.idcoa,b.kodeakun,b.namaakun,a.debet,a.kredit,kodeunit f' +
        'rom ju_ a left join coa b on a.idcoa=b.idcoa  order by jenis')
    Options.FieldOrigins = foNone
    Left = 280
    Top = 277
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
      Size = 25
    end
  end
  object ddju: TMyDataSource
    DataSet = Qdju
    Left = 312
    Top = 293
  end
  object Dju: TMyDataSource
    DataSet = Qju
    Left = 328
    Top = 48
  end
  object Qju: TMyQuery
    SQLRefresh.Strings = (
      'select * from ju')
    Connection = dm.Conn1
    SQL.Strings = (
      'select * from ju order by idju')
    Options.FieldOrigins = foNone
    Left = 360
    Top = 184
    object Qjuidju: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'idju'
      Origin = 'ju.idju'
    end
    object Qjunotrans: TStringField
      FieldName = 'notrans'
      Origin = 'ju.notrans'
      Size = 30
    end
    object Qjuuraian: TStringField
      FieldName = 'uraian'
      Origin = 'ju.uraian'
      Size = 155
    end
    object Qjupenjelasan: TMemoField
      FieldName = 'penjelasan'
      Origin = 'ju.penjelasan'
      BlobType = ftMemo
    end
    object Qjujumlah: TFloatField
      FieldName = 'jumlah'
      Origin = 'ju.jumlah'
      DisplayFormat = '#,##0.##'
    end
    object Qjutanggal: TDateField
      FieldName = 'tanggal'
      Origin = 'ju.tanggal'
      DisplayFormat = 'dd - mm - yyyyy'
    end
    object Qjutipejurnal: TStringField
      FieldName = 'tipejurnal'
      Origin = 'ju.tipejurnal'
      Size = 35
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
    Left = 192
    Top = 144
  end
  object PopupMenu1: TPopupMenu
    Images = dm.img16
    Left = 99
    Top = 220
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
end
