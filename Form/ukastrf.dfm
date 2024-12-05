object fokastrf: Tfokastrf
  Left = 0
  Top = 0
  Caption = 'Transaksi Kas Transfer'
  ClientHeight = 455
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
    Height = 455
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
    ExplicitHeight = 533
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Color = 52479
      Caption = 'TRANSAKSI KAS TRANSFER'
      ExplicitHeight = 514
      object RzPanel1setorsimp: TRzPanel
        Left = 0
        Top = 0
        Width = 811
        Height = 436
        Align = alClient
        BorderOuter = fsFlat
        TabOrder = 0
        ExplicitHeight = 514
        object RzPanel2: TRzPanel
          Left = 1
          Top = 1
          Width = 809
          Height = 434
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          ExplicitHeight = 512
          object dxDockSite1: TdxDockSite
            Left = 0
            Top = 0
            Width = 809
            Height = 434
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ManagerFont = False
            Align = alClient
            ExplicitHeight = 512
            DockingType = 5
            OriginalWidth = 809
            OriginalHeight = 434
            object dxLayoutDockSite1: TdxLayoutDockSite
              Left = 185
              Top = 0
              Width = 624
              Height = 434
              ExplicitHeight = 512
              DockingType = 0
              OriginalWidth = 300
              OriginalHeight = 200
              object dxLayoutDockSite2: TdxLayoutDockSite
                Left = 0
                Top = 0
                Width = 624
                Height = 434
                DockingType = 0
                OriginalWidth = 300
                OriginalHeight = 200
              end
              object dxDockPanel2: TdxDockPanel
                Left = 0
                Top = 0
                Width = 624
                Height = 434
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
                  Width = 616
                  Height = 396
                  Align = alClient
                  BorderStyle = cxcbsNone
                  TabOrder = 0
                  ExplicitHeight = 474
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
                      Width = 53
                    end
                    object cxGrid1DBTableView1kas: TcxGridDBColumn
                      Caption = 'Trf. Dari Kas ?'
                      DataBinding.FieldName = 'kasdebet'
                      Width = 83
                    end
                    object cxGrid1DBTableView1kaskredit: TcxGridDBColumn
                      Caption = 'Trf. Ke Kas ?'
                      DataBinding.FieldName = 'kaskredit'
                      Width = 74
                    end
                    object cxGrid1DBTableView1tanggal: TcxGridDBColumn
                      Caption = 'Tanggal'
                      DataBinding.FieldName = 'tanggal'
                      Width = 46
                    end
                    object cxGrid1DBTableView1keterangan: TcxGridDBColumn
                      Caption = 'Penjelasan'
                      DataBinding.FieldName = 'keterangan'
                      Width = 177
                    end
                    object cxGrid1DBTableView1total: TcxGridDBColumn
                      Caption = 'Total'
                      DataBinding.FieldName = 'total'
                      HeaderAlignmentHorz = taRightJustify
                      Width = 52
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
                  Width = 616
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
              Left = 0
              Top = 0
              Width = 185
              Height = 434
              AllowFloating = False
              AutoHide = False
              Caption = 'Filter && Pencarian Data'
              CaptionButtons = [cbHide]
              CustomCaptionButtons.Buttons = <>
              TabsProperties.CustomButtons.Buttons = <>
              ExplicitHeight = 512
              DockingType = 1
              OriginalWidth = 185
              OriginalHeight = 140
              object RzToolButton2: TRzToolButton
                Left = 33
                Top = 208
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
                Left = 3
                Top = 82
                Caption = 'Tanggal'
                TabOrder = 2
                OnClick = cxCheckBox2Click
              end
              object cxDateEdit1: TcxDateEdit
                Left = 79
                Top = 79
                Enabled = False
                TabOrder = 3
                OnKeyPress = cxTextEdit1KeyPress
                Width = 96
              end
              object cxDateEdit2: TcxDateEdit
                Left = 79
                Top = 105
                Enabled = False
                TabOrder = 4
                OnKeyPress = cxTextEdit1KeyPress
                Width = 96
              end
              object cxLabel1: TcxLabel
                Left = 33
                Top = 107
                Caption = 'S / d'
              end
              object cxCheckBox3: TcxCheckBox
                Left = 4
                Top = 154
                Caption = 'Tgl Input'
                TabOrder = 6
                OnClick = cxCheckBox3Click
              end
              object cxDateEdit3: TcxDateEdit
                Left = 79
                Top = 155
                Enabled = False
                TabOrder = 7
                OnKeyPress = cxTextEdit1KeyPress
                Width = 96
              end
              object cxDateEdit4: TcxDateEdit
                Left = 79
                Top = 181
                Enabled = False
                TabOrder = 8
                OnKeyPress = cxTextEdit1KeyPress
                Width = 96
              end
              object cxLabel3: TcxLabel
                Left = 33
                Top = 183
                Caption = 'S / d'
              end
              object cxCheckBox4: TcxCheckBox
                Left = 3
                Top = 28
                Caption = 'Trf Dari'
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
                Top = 129
                Caption = 'Penjelasan'
                TabOrder = 12
                OnClick = cxCheckBox5Click
              end
              object cxTextEdit2: TcxTextEdit
                Left = 79
                Top = 130
                Enabled = False
                TabOrder = 13
                OnKeyPress = cxTextEdit1KeyPress
                Width = 96
              end
              object cxCheckBox6: TcxCheckBox
                Left = 3
                Top = 53
                Caption = 'Trf Ke'
                TabOrder = 14
                OnClick = cxCheckBox6Click
              end
              object cxDBLookupComboBox2: TcxDBLookupComboBox
                Left = 79
                Top = 53
                DataBinding.DataField = 'namakas'
                DataBinding.DataSource = dm.Dkas_dbl2
                Enabled = False
                Properties.DropDownAutoSize = True
                Properties.KeyFieldNames = 'namakas'
                Properties.ListColumns = <
                  item
                    Caption = 'Nama Kas'
                    Width = 100
                    FieldName = 'namakas'
                  end>
                Properties.ListSource = dm.Dlist_kas2
                TabOrder = 15
                Width = 96
              end
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
      'select * from m_kastransfer')
    Connection = dm.Conn1
    SQL.Strings = (
      'select * from m_kastransfer')
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
    object Qkaskasdebet: TStringField
      FieldName = 'kasdebet'
      Size = 15
    end
    object Qkaskaskredit: TStringField
      FieldName = 'kaskredit'
      Size = 15
    end
  end
  object Dkas: TMyDataSource
    DataSet = Qkas
    Left = 320
    Top = 224
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
