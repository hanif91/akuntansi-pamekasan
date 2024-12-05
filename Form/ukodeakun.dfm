object fokodeakun: Tfokodeakun
  Left = 0
  Top = 0
  Caption = 'fokodeakun'
  ClientHeight = 505
  ClientWidth = 929
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 929
    Height = 505
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
      Caption = 'Daftar Kode Akun (Kode Perkiraan)'
      object RzPanel1setorsimp: TRzPanel
        Left = 0
        Top = 0
        Width = 929
        Height = 486
        Align = alClient
        BorderOuter = fsFlat
        TabOrder = 0
        object RzPanel2: TRzPanel
          Left = 1
          Top = 1
          Width = 927
          Height = 484
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object dxDockSite1: TdxDockSite
            Left = 0
            Top = 0
            Width = 927
            Height = 484
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ManagerFont = False
            Align = alClient
            DockingType = 5
            OriginalWidth = 927
            OriginalHeight = 484
            object dxLayoutDockSite1: TdxLayoutDockSite
              Left = 185
              Top = 0
              Width = 742
              Height = 484
              DockingType = 0
              OriginalWidth = 300
              OriginalHeight = 200
              object dxLayoutDockSite2: TdxLayoutDockSite
                Left = 0
                Top = 0
                Width = 742
                Height = 484
                DockingType = 0
                OriginalWidth = 300
                OriginalHeight = 200
              end
              object dxDockPanel2: TdxDockPanel
                Left = 0
                Top = 0
                Width = 742
                Height = 484
                AllowFloating = False
                AutoHide = False
                CaptionButtons = []
                CustomCaptionButtons.Buttons = <>
                ShowCaption = False
                TabsProperties.CustomButtons.Buttons = <>
                DockingType = 0
                OriginalWidth = 185
                OriginalHeight = 140
                object RzPanel3: TRzPanel
                  Left = 0
                  Top = 0
                  Width = 734
                  Height = 41
                  Align = alTop
                  BorderOuter = fsNone
                  TabOrder = 0
                  DesignSize = (
                    734
                    41)
                  object RzToolButton1: TRzToolButton
                    Left = 0
                    Top = 5
                    Width = 169
                    Height = 33
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
                    Caption = '&Tambah Kode Akun'
                    Color = 2250751
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clCream
                    Font.Height = -12
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    OnClick = RzToolButton1Click
                  end
                  object RzToolButton3: TRzToolButton
                    Left = 565
                    Top = 1
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
                    Anchors = [akTop, akRight]
                    Caption = 'EXPORT EXCEL'
                    Color = 2250751
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clCream
                    Font.Height = -12
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    OnClick = RzToolButton3Click
                  end
                end
                object cxGrid1: TcxGrid
                  Left = 0
                  Top = 41
                  Width = 734
                  Height = 436
                  Align = alClient
                  TabOrder = 1
                  ExplicitLeft = 24
                  ExplicitTop = 38
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
                    DataController.DataSource = dkode
                    DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsCustomize.ColumnsQuickCustomization = True
                    OptionsData.CancelOnExit = False
                    OptionsData.Deleting = False
                    OptionsData.DeletingConfirmation = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsView.Footer = True
                    OptionsView.Indicator = True
                    Styles.Header = dm.bold8
                    object cxGrid1DBTableView1idcoa: TcxGridDBColumn
                      DataBinding.FieldName = 'idcoa'
                      Visible = False
                    end
                    object cxGrid1DBTableView1kodeakun: TcxGridDBColumn
                      Caption = 'Kode Akun'
                      DataBinding.FieldName = 'kodeakun'
                      Width = 26
                    end
                    object cxGrid1DBTableView1namaakun: TcxGridDBColumn
                      Caption = 'Nama Akun'
                      DataBinding.FieldName = 'namaakun'
                      Width = 464
                    end
                    object cxGrid1DBTableView1tipe3: TcxGridDBColumn
                      Caption = 'Sub'
                      DataBinding.FieldName = 'tipe3'
                      Visible = False
                      GroupIndex = 2
                    end
                    object cxGrid1DBTableView1tipe1: TcxGridDBColumn
                      DataBinding.FieldName = 'tipe1'
                      Visible = False
                      GroupIndex = 0
                    end
                    object cxGrid1DBTableView1tipe2: TcxGridDBColumn
                      DataBinding.FieldName = 'tipe2'
                      Visible = False
                      GroupIndex = 1
                    end
                  end
                  object cxGrid1Level1: TcxGridLevel
                    GridView = cxGrid1DBTableView1
                  end
                end
              end
            end
            object dxDockPanel1: TdxDockPanel
              Left = 0
              Top = 0
              Width = 185
              Height = 484
              AllowFloating = False
              AutoHide = False
              Caption = 'Filter && Pencarian Data'
              CaptionButtons = [cbHide]
              CustomCaptionButtons.Buttons = <>
              TabsProperties.CustomButtons.Buttons = <>
              ExplicitLeft = -2
              DockingType = 1
              OriginalWidth = 185
              OriginalHeight = 140
              object RzToolButton2: TRzToolButton
                Left = 34
                Top = 71
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
                Left = 4
                Top = 6
                Caption = 'Kode Akun'
                TabOrder = 0
                OnClick = cxCheckBox1Click
              end
              object cxCheckBox2: TcxCheckBox
                Left = 4
                Top = 38
                Caption = 'Nama Akun'
                TabOrder = 1
                OnClick = cxCheckBox2Click
              end
              object cxTextEdit2: TcxTextEdit
                Left = 80
                Top = 36
                Enabled = False
                TabOrder = 2
                Width = 93
              end
              object cxTextEdit1: TcxTextEdit
                Left = 80
                Top = 6
                Enabled = False
                TabOrder = 3
                Width = 93
              end
            end
          end
        end
      end
    end
  end
  object Qkode: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT b.idcoa,b.kodeakun,b.namaakun,CONCAT(b.kodeakun3,"-",b.ti' +
        'pe3) AS tipe3,b.tipe1,CONCAT(b.kodeakun2,"-",b.tipe2) AS tipe2 F' +
        'ROM masterakun b')
    Connection = dm.Conn1
    SQL.Strings = (
      
        'SELECT b.idcoa,b.kodeakun,b.namaakun,CONCAT(b.kodeakun3,"-",b.ti' +
        'pe3) AS tipe3,b.tipe1,CONCAT(b.kodeakun2,"-",b.tipe2) AS tipe2 F' +
        'ROM masterakun b'
      'ORDER BY kodeakun')
    Options.FieldOrigins = foNone
    Left = 696
    Top = 176
    object Qkodeidcoa: TIntegerField
      FieldName = 'idcoa'
    end
    object Qkodekodeakun: TStringField
      FieldName = 'kodeakun'
      Size = 9
    end
    object Qkodenamaakun: TStringField
      FieldName = 'namaakun'
      Size = 75
    end
    object Qkodetipe3: TStringField
      FieldName = 'tipe3'
      Size = 55
    end
    object Qkodetipe1: TStringField
      FieldName = 'tipe1'
      Size = 15
    end
    object Qkodetipe2: TStringField
      FieldName = 'tipe2'
      Size = 60
    end
  end
  object dkode: TMyDataSource
    DataSet = Qkode
    Left = 552
    Top = 168
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
    Left = 416
    Top = 288
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
  object SaveDialog1: TSaveDialog
    Left = 296
    Top = 320
  end
end
