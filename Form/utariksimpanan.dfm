object fotariksimpanan: Tfotariksimpanan
  Left = 0
  Top = 0
  Caption = 'Setor Simpanan'
  ClientHeight = 533
  ClientWidth = 811
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
    Width = 811
    Height = 533
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
      Caption = 'Penarikan Simpanan'
      object RzPanel1: TRzPanel
        Left = 0
        Top = 0
        Width = 811
        Height = 514
        Align = alClient
        BorderOuter = fsFlat
        TabOrder = 0
        object RzPanel2: TRzPanel
          Left = 1
          Top = 1
          Width = 533
          Height = 512
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 1
          DesignSize = (
            533
            512)
          object dxDockSite1: TdxDockSite
            Left = 0
            Top = 0
            Width = 533
            Height = 512
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ManagerFont = False
            Align = alClient
            DockingType = 5
            OriginalWidth = 533
            OriginalHeight = 512
            object dxLayoutDockSite1: TdxLayoutDockSite
              Left = 0
              Top = 0
              Width = 505
              Height = 512
              DockingType = 0
              OriginalWidth = 300
              OriginalHeight = 200
              object dxLayoutDockSite2: TdxLayoutDockSite
                Left = 0
                Top = 0
                Width = 505
                Height = 512
                DockingType = 0
                OriginalWidth = 300
                OriginalHeight = 200
              end
              object dxDockPanel2: TdxDockPanel
                Left = 0
                Top = 0
                Width = 505
                Height = 512
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
                  Width = 497
                  Height = 474
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
                    DataController.DataSource = Dsimpanan
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = 'Jumlah Trx : #,##0.##'
                        Kind = skCount
                        FieldName = 'notrans'
                        Column = cxGrid1DBTableView1notrans
                      end
                      item
                        Format = '#,##0.##'
                        Kind = skSum
                        FieldName = 'total'
                        Column = cxGrid1DBTableView1total
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
                    OptionsView.Indicator = True
                    Styles.Footer = dm.bold8
                    Styles.Header = dm.bold8
                    object cxGrid1DBTableView1notrans: TcxGridDBColumn
                      Caption = 'No Trans'
                      DataBinding.FieldName = 'notrans'
                      Width = 42
                    end
                    object cxGrid1DBTableView1tglmutasi: TcxGridDBColumn
                      Caption = 'Tanggal'
                      DataBinding.FieldName = 'tglmutasi'
                      Width = 44
                    end
                    object cxGrid1DBTableView1idanggota: TcxGridDBColumn
                      Caption = 'Id Anggota'
                      DataBinding.FieldName = 'idanggota'
                      Visible = False
                    end
                    object cxGrid1DBTableView1namaanggota: TcxGridDBColumn
                      Caption = 'Anggota'
                      DataBinding.FieldName = 'namaanggota'
                      Width = 76
                    end
                    object cxGrid1DBTableView1total: TcxGridDBColumn
                      Caption = 'Total'
                      DataBinding.FieldName = 'total'
                      HeaderAlignmentHorz = taRightJustify
                      Width = 44
                    end
                    object cxGrid1DBTableView1kasdebet: TcxGridDBColumn
                      Caption = 'Setor Ke Kas?'
                      DataBinding.FieldName = 'kaskredit'
                      Width = 45
                    end
                    object cxGrid1DBTableView1tglinput: TcxGridDBColumn
                      Caption = 'Tgl Input'
                      DataBinding.FieldName = 'tglinput'
                      Visible = False
                    end
                    object cxGrid1DBTableView1keterangan: TcxGridDBColumn
                      Caption = 'Keterangan'
                      DataBinding.FieldName = 'keterangan'
                      Width = 234
                    end
                  end
                  object cxGrid1Level1: TcxGridLevel
                    GridView = cxGrid1DBTableView1
                  end
                end
                object RzPanel3: TRzPanel
                  Left = 0
                  Top = 0
                  Width = 497
                  Height = 31
                  Align = alTop
                  BorderOuter = fsNone
                  TabOrder = 1
                  object RzToolButton1: TRzToolButton
                    Left = 0
                    Top = 1
                    Width = 145
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
                    Caption = '&Tambah Penarikan'
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
                Left = 34
                Top = 169
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
                Caption = 'No. Trans'
                TabOrder = 0
                OnClick = cxCheckBox1Click
              end
              object cxTextEdit1: TcxTextEdit
                Left = 78
                Top = 3
                Enabled = False
                TabOrder = 1
                OnKeyPress = cxTextEdit1KeyPress
                Width = 96
              end
              object cxCheckBox2: TcxCheckBox
                Left = 3
                Top = 54
                Caption = 'Tanggal'
                TabOrder = 2
                OnClick = cxCheckBox2Click
              end
              object cxDateEdit1: TcxDateEdit
                Left = 78
                Top = 54
                Enabled = False
                TabOrder = 3
                OnKeyPress = cxTextEdit1KeyPress
                Width = 96
              end
              object cxDateEdit2: TcxDateEdit
                Left = 78
                Top = 81
                Enabled = False
                TabOrder = 4
                OnKeyPress = cxTextEdit1KeyPress
                Width = 96
              end
              object cxLabel1: TcxLabel
                Left = 32
                Top = 83
                Caption = 'S / d'
              end
              object cxCheckBox3: TcxCheckBox
                Left = 3
                Top = 106
                Caption = 'Tgl Input'
                TabOrder = 6
                OnClick = cxCheckBox3Click
              end
              object cxDateEdit3: TcxDateEdit
                Left = 78
                Top = 107
                Enabled = False
                TabOrder = 7
                OnKeyPress = cxTextEdit1KeyPress
                Width = 96
              end
              object cxDateEdit4: TcxDateEdit
                Left = 78
                Top = 134
                Enabled = False
                TabOrder = 8
                OnKeyPress = cxTextEdit1KeyPress
                Width = 96
              end
              object cxLabel3: TcxLabel
                Left = 32
                Top = 136
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
                OnKeyPress = cxTextEdit1KeyPress
                Width = 96
              end
              object cxCheckBox4: TcxCheckBox
                Left = 3
                Top = 28
                Caption = 'Anggota'
                TabOrder = 11
                OnClick = cxCheckBox4Click
              end
            end
          end
        end
        object RzPanel4: TRzPanel
          Left = 534
          Top = 1
          Width = 276
          Height = 512
          Align = alRight
          BorderOuter = fsFlat
          TabOrder = 0
          object cxLabel2: TcxLabel
            Left = 1
            Top = 1
            Align = alTop
            AutoSize = False
            Caption = 'Detail Penarikan Simpanan'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold, fsUnderline]
            Style.IsFontAssigned = True
            Height = 20
            Width = 274
          end
          object cxGrid2: TcxGrid
            Left = 1
            Top = 21
            Width = 274
            Height = 490
            Align = alClient
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
                  FieldName = 'debet'
                  Column = cxGrid2DBTableView1kredit
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
              OptionsView.Indicator = True
              Styles.Footer = dm.bold8
              Styles.Header = dm.bold8
              object cxGrid2DBTableView1namasimpanan: TcxGridDBColumn
                Caption = 'Jenis Simpanan'
                DataBinding.FieldName = 'namasimpanan'
                Width = 168
              end
              object cxGrid2DBTableView1kredit: TcxGridDBColumn
                Caption = 'Jumlah'
                DataBinding.FieldName = 'debet'
                HeaderAlignmentHorz = taRightJustify
                Width = 92
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGrid2DBTableView1
            end
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
    Left = 392
    Top = 195
    PixelsPerInch = 96
  end
  object Qsimpanan: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT a.*,b.namaanggota,c.total FROM simp_anggota a LEFT JOIN a' +
        'nggota b ON a.idanggota=b.idanggota'
      
        'LEFT JOIN (SELECT SUM(debet) AS total,notrans FROM d_simp_anggot' +
        'a GROUP BY notrans) c ON a.notrans=c.notrans'
      'WHERE a.kasdebet="-"')
    Connection = dm.Conn1
    SQL.Strings = (
      
        'SELECT a.*,b.namaanggota,c.total FROM simp_anggota a LEFT JOIN a' +
        'nggota b ON a.idanggota=b.idanggota'
      
        'LEFT JOIN (SELECT SUM(debet) AS total,notrans FROM d_simp_anggot' +
        'a GROUP BY notrans) c ON a.notrans=c.notrans'
      'WHERE a.kasdebet="-"')
    Left = 250
    Top = 252
    object Qsimpanannotrans: TStringField
      FieldName = 'notrans'
      Size = 25
    end
    object Qsimpanantglmutasi: TDateField
      FieldName = 'tglmutasi'
    end
    object Qsimpananidanggota: TIntegerField
      FieldName = 'idanggota'
    end
    object Qsimpanankasdebet: TStringField
      FieldName = 'kasdebet'
      Size = 15
    end
    object Qsimpanankaskredit: TStringField
      FieldName = 'kaskredit'
      Size = 15
    end
    object Qsimpanantglinput: TDateTimeField
      FieldName = 'tglinput'
    end
    object Qsimpananketerangan: TStringField
      FieldName = 'keterangan'
      Size = 155
    end
    object Qsimpanannamaanggota: TStringField
      FieldName = 'namaanggota'
      Size = 75
    end
    object Qsimpanantotal: TFloatField
      FieldName = 'total'
      DisplayFormat = '#,##0.##'
    end
  end
  object Dsimpanan: TMyDataSource
    DataSet = Qsimpanan
    Left = 320
    Top = 224
  end
  object QDetail: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT a.idsimpanan,b.namasimpanan,a.debet FROM d_simp_anggota a' +
        ' LEFT JOIN jenis_simpanan b ON a.`idsimpanan`=b.`idsimpanan`'
      'WHERE a.notrans=:notrans order by indek ')
    Connection = dm.Conn1
    SQL.Strings = (
      
        'SELECT a.idsimpanan,b.namasimpanan,a.debet FROM d_simp_anggota a' +
        ' LEFT JOIN jenis_simpanan b ON a.`idsimpanan`=b.`idsimpanan` ')
    Left = 622
    Top = 204
    object QDetailnamasimpanan: TStringField
      FieldName = 'namasimpanan'
      Size = 50
    end
    object QDetailidsimpanan: TIntegerField
      FieldName = 'idsimpanan'
    end
    object QDetaildebet: TFloatField
      FieldName = 'debet'
      DisplayFormat = '#,##0.##'
    end
  end
  object Ddetail: TMyDataSource
    DataSet = QDetail
    Left = 640
    Top = 240
  end
  object PopupMenu1: TPopupMenu
    Images = dm.img16
    Left = 227
    Top = 156
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
    object N1: TMenuItem
      Caption = '-'
    end
    object CetakKwitansi1: TMenuItem
      Caption = 'Cetak Kwitansi'
      Visible = False
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
