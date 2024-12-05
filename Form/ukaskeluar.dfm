object fokaskeluar: Tfokaskeluar
  Left = 0
  Top = 0
  Caption = 'Transaksi Kas Keluar'
  ClientHeight = 678
  ClientWidth = 1081
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
    Width = 1081
    Height = 678
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
      Caption = 'TRANSAKSI KAS KELUAR'
      object RzPanel1setorsimp: TRzPanel
        Left = 0
        Top = 0
        Width = 1081
        Height = 659
        Align = alClient
        BorderOuter = fsFlat
        TabOrder = 0
        object RzPanel2: TRzPanel
          Left = 1
          Top = 1
          Width = 803
          Height = 657
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 1
          DesignSize = (
            803
            657)
          object dxDockSite1: TdxDockSite
            Left = 0
            Top = 0
            Width = 803
            Height = 657
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ManagerFont = False
            Align = alClient
            DockingType = 5
            OriginalWidth = 803
            OriginalHeight = 657
            object dxLayoutDockSite1: TdxLayoutDockSite
              Left = 0
              Top = 0
              Width = 775
              Height = 657
              DockingType = 0
              OriginalWidth = 300
              OriginalHeight = 200
              object dxLayoutDockSite2: TdxLayoutDockSite
                Left = 0
                Top = 0
                Width = 775
                Height = 657
                DockingType = 0
                OriginalWidth = 300
                OriginalHeight = 200
              end
              object dxDockPanel2: TdxDockPanel
                Left = 0
                Top = 0
                Width = 775
                Height = 657
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
                  Width = 767
                  Height = 619
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
                    DataController.DataSource = Dkas
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = 'Trx : #,##0.##'
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
                    OptionsView.HeaderAutoHeight = True
                    OptionsView.Indicator = True
                    Styles.Footer = dm.bold8
                    Styles.Header = dm.bold8
                    object cxGrid1DBTableView1notrans: TcxGridDBColumn
                      Caption = 'Notrans'
                      DataBinding.FieldName = 'notrans'
                      Width = 63
                    end
                    object cxGrid1DBTableView1kas: TcxGridDBColumn
                      Caption = 'Kas'
                      DataBinding.FieldName = 'kas'
                      Width = 56
                    end
                    object cxGrid1DBTableView1tanggal: TcxGridDBColumn
                      Caption = 'Tanggal'
                      DataBinding.FieldName = 'tanggal'
                      Width = 62
                    end
                    object cxGrid1DBTableView1keterangan: TcxGridDBColumn
                      Caption = 'Penjelasan'
                      DataBinding.FieldName = 'keterangan'
                      Width = 233
                    end
                    object cxGrid1DBTableView1total: TcxGridDBColumn
                      Caption = 'Total'
                      DataBinding.FieldName = 'total'
                      HeaderAlignmentHorz = taRightJustify
                      Width = 71
                    end
                    object cxGrid1DBTableView1waktuinput: TcxGridDBColumn
                      Caption = 'Waktu Input'
                      DataBinding.FieldName = 'waktuinput'
                      Visible = False
                      Width = 67
                    end
                    object cxGrid1DBTableView1userinput: TcxGridDBColumn
                      Caption = 'User Input'
                      DataBinding.FieldName = 'userinput'
                      Visible = False
                      Width = 128
                    end
                  end
                  object cxGrid1Level1: TcxGridLevel
                    GridView = cxGrid1DBTableView1
                  end
                end
                object RzPanel3: TRzPanel
                  Left = 0
                  Top = 0
                  Width = 767
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
                    Caption = '&Tambah Transaksi'
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
                Left = 33
                Top = 181
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
                Left = 79
                Top = 3
                Enabled = False
                TabOrder = 1
                OnKeyPress = cxTextEdit1KeyPress
                Width = 96
              end
              object cxCheckBox2: TcxCheckBox
                Left = 4
                Top = 52
                Caption = 'Tanggal'
                TabOrder = 2
                OnClick = cxCheckBox2Click
              end
              object cxDateEdit1: TcxDateEdit
                Left = 79
                Top = 52
                Enabled = False
                TabOrder = 3
                OnKeyPress = cxTextEdit1KeyPress
                Width = 96
              end
              object cxDateEdit2: TcxDateEdit
                Left = 79
                Top = 78
                Enabled = False
                TabOrder = 4
                OnKeyPress = cxTextEdit1KeyPress
                Width = 96
              end
              object cxLabel1: TcxLabel
                Left = 33
                Top = 80
                Caption = 'S / d'
              end
              object cxCheckBox3: TcxCheckBox
                Left = 4
                Top = 127
                Caption = 'Tgl Input'
                TabOrder = 6
                OnClick = cxCheckBox3Click
              end
              object cxDateEdit3: TcxDateEdit
                Left = 79
                Top = 128
                Enabled = False
                TabOrder = 7
                OnKeyPress = cxTextEdit1KeyPress
                Width = 96
              end
              object cxDateEdit4: TcxDateEdit
                Left = 79
                Top = 154
                Enabled = False
                TabOrder = 8
                OnKeyPress = cxTextEdit1KeyPress
                Width = 96
              end
              object cxLabel3: TcxLabel
                Left = 33
                Top = 156
                Caption = 'S / d'
              end
              object cxCheckBox4: TcxCheckBox
                Left = 3
                Top = 28
                Caption = 'Kas'
                TabOrder = 10
                OnClick = cxCheckBox4Click
              end
              object cxDBLookupComboBox1: TcxDBLookupComboBox
                Left = 79
                Top = 28
                DataBinding.DataField = 'namakas'
                DataBinding.DataSource = dm.Dkas_dbl
                Enabled = False
                Properties.DropDownAutoSize = True
                Properties.KeyFieldNames = 'namakas'
                Properties.ListColumns = <
                  item
                    Caption = 'Nama Kas'
                    Width = 100
                    FieldName = 'namakas'
                  end>
                Properties.ListSource = dm.Dlist_kas
                TabOrder = 11
                Width = 96
              end
              object cxCheckBox5: TcxCheckBox
                Left = 3
                Top = 102
                Caption = 'Penjelasan'
                TabOrder = 12
                OnClick = cxCheckBox5Click
              end
              object cxTextEdit2: TcxTextEdit
                Left = 79
                Top = 103
                Enabled = False
                TabOrder = 13
                OnKeyPress = cxTextEdit1KeyPress
                Width = 96
              end
            end
          end
        end
        object RzPanel4: TRzPanel
          Left = 804
          Top = 1
          Width = 276
          Height = 657
          Align = alRight
          BorderOuter = fsFlat
          TabOrder = 0
          object cxLabel2: TcxLabel
            Left = 1
            Top = 1
            Align = alTop
            AutoSize = False
            Caption = 'Detail Transaksi Kas'
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
            Height = 635
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
                  FieldName = 'jumlah'
                  Column = cxGrid2DBTableView1jumlah
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
              object cxGrid2DBTableView1namaketkas: TcxGridDBColumn
                Caption = 'Ket '
                DataBinding.FieldName = 'namaketkas'
                Width = 135
              end
              object cxGrid2DBTableView1kodeakun: TcxGridDBColumn
                Caption = 'Kode Akun'
                DataBinding.FieldName = 'kodeakun'
                HeaderAlignmentHorz = taCenter
                Width = 57
              end
              object cxGrid2DBTableView1jumlah: TcxGridDBColumn
                Caption = 'Jumlah'
                DataBinding.FieldName = 'jumlah'
                HeaderAlignmentHorz = taRightJustify
                Width = 68
              end
              object cxGrid2DBTableView1namaakun: TcxGridDBColumn
                DataBinding.FieldName = 'namaakun'
                Visible = False
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
  object Qkas: TMyQuery
    SQLRefresh.Strings = (
      'select * from m_kaskeluar')
    Connection = dm.Conn1
    SQL.Strings = (
      'select * from m_kaskeluar')
    Options.FieldOrigins = foNone
    Left = 323
    Top = 171
    object Qkasnotrans: TStringField
      FieldName = 'notrans'
      Size = 15
    end
    object Qkastanggal: TDateField
      FieldName = 'tanggal'
    end
    object Qkasketerangan: TMemoField
      FieldName = 'keterangan'
      BlobType = ftMemo
    end
    object Qkastotal: TFloatField
      FieldName = 'total'
      DisplayFormat = '#,##0.##'
    end
    object Qkaswaktuinput: TDateTimeField
      FieldName = 'waktuinput'
    end
    object Qkasuserinput: TStringField
      FieldName = 'userinput'
      Size = 35
    end
    object Qkaskas: TStringField
      FieldName = 'kas'
      Size = 15
    end
  end
  object Dkas: TMyDataSource
    DataSet = Qkas
    Left = 320
    Top = 224
  end
  object QDetail: TMyQuery
    SQLRefresh.Strings = (
      
        'Select a.*,c.namaakun,c.kodeakun from d_kaskeluar a left join ke' +
        'tkas b on a.namaketkas=b.namaketkas'
      
        'left join masterakun c on b.idcoa=c.idcoa where a.notrans=:notra' +
        'ns'
      '')
    Connection = dm.Conn1
    SQL.Strings = (
      
        'Select a.*,c.namaakun,c.kodeakun from d_kaskeluar a left join ke' +
        'tkas b on a.namaketkas=b.namaketkas'
      'left join masterakun c on b.idcoa=c.idcoa')
    Options.FieldOrigins = foNone
    Left = 710
    Top = 236
    object QDetailnotrans: TStringField
      FieldName = 'notrans'
      Size = 25
    end
    object QDetailnamaketkas: TStringField
      FieldName = 'namaketkas'
      Size = 45
    end
    object QDetailjumlah: TFloatField
      FieldName = 'jumlah'
      DisplayFormat = '#,##0.##'
    end
    object QDetailnamaakun: TStringField
      FieldName = 'namaakun'
      Size = 75
    end
    object QDetailkodeakun: TStringField
      FieldName = 'kodeakun'
      Size = 9
    end
  end
  object Ddetail: TMyDataSource
    DataSet = QDetail
    Left = 712
    Top = 296
  end
  object PopupMenu1: TPopupMenu
    Images = dm.img16
    Left = 387
    Top = 244
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
    Left = 256
    Top = 168
  end
end
