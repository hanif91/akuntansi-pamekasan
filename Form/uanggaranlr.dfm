object foanggaranlr: Tfoanggaranlr
  Left = 0
  Top = 0
  Caption = 'Anggaran Laba Rugi'
  ClientHeight = 597
  ClientWidth = 991
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
    Width = 991
    Height = 597
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
      Caption = 'Anggaran Laba Rugi'
      object RzPanel1setorsimp: TRzPanel
        Left = 0
        Top = 0
        Width = 991
        Height = 578
        Align = alClient
        BorderOuter = fsFlat
        TabOrder = 0
        object RzPanel2: TRzPanel
          Left = 1
          Top = 1
          Width = 989
          Height = 576
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object dxDockSite1: TdxDockSite
            Left = 0
            Top = 0
            Width = 989
            Height = 576
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ManagerFont = False
            Align = alClient
            DockingType = 5
            OriginalWidth = 989
            OriginalHeight = 576
            object dxLayoutDockSite1: TdxLayoutDockSite
              Left = 0
              Top = 0
              Width = 706
              Height = 576
              DockingType = 0
              OriginalWidth = 300
              OriginalHeight = 200
              object dxLayoutDockSite3: TdxLayoutDockSite
                Left = 0
                Top = 0
                Width = 706
                Height = 576
                DockingType = 0
                OriginalWidth = 300
                OriginalHeight = 200
              end
              object dxDockPanel3: TdxDockPanel
                Left = 0
                Top = 0
                Width = 706
                Height = 576
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ManagerFont = False
                AllowFloating = True
                AutoHide = False
                Caption = 'Daftar Kode Akun'
                CustomCaptionButtons.Buttons = <>
                TabsProperties.CustomButtons.Buttons = <>
                DockingType = 0
                OriginalWidth = 185
                OriginalHeight = 140
                object cxGrid1: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 698
                  Height = 532
                  Align = alClient
                  BorderStyle = cxcbsNone
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Noto Sans'
                  Font.Style = []
                  ParentFont = False
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
                    OnCanFocusRecord = cxGrid1DBTableView1CanFocusRecord
                    OnCanSelectRecord = cxGrid1DBTableView1CanSelectRecord
                    OnFocusedRecordChanged = cxGrid1DBTableView1FocusedRecordChanged
                    DataController.DataSource = Dkode
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
                    OptionsView.ColumnAutoWidth = True
                    OptionsView.Footer = True
                    OptionsView.Indicator = True
                    object cxGrid1DBTableView1idcoa: TcxGridDBColumn
                      DataBinding.FieldName = 'idcoa'
                      Visible = False
                    end
                    object cxGrid1DBTableView1kodeakun: TcxGridDBColumn
                      Caption = 'Kode Akun'
                      DataBinding.FieldName = 'kodeakun'
                      Styles.Footer = dm.bold8
                      Styles.Header = dm.bold8
                      Width = 100
                    end
                    object cxGrid1DBTableView1namaakun: TcxGridDBColumn
                      Caption = 'Nama Akun'
                      DataBinding.FieldName = 'namaakun'
                      Styles.Footer = dm.bold8
                      Styles.Header = dm.bold8
                      Width = 322
                    end
                    object cxGrid1DBTableView1sub3: TcxGridDBColumn
                      Caption = 'Group 1'
                      DataBinding.FieldName = 'sub3'
                      Visible = False
                      GroupIndex = 0
                      Width = 80
                    end
                  end
                  object cxGrid1Level1: TcxGridLevel
                    GridView = cxGrid1DBTableView1
                  end
                end
              end
            end
            object dxDockPanel1: TdxDockPanel
              Left = 706
              Top = 0
              Width = 283
              Height = 576
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ManagerFont = False
              AllowFloating = True
              AutoHide = False
              Caption = 'Data Anggaran'
              CustomCaptionButtons.Buttons = <>
              TabsProperties.CustomButtons.Buttons = <>
              DockingType = 3
              OriginalWidth = 283
              OriginalHeight = 140
              object cxGrid2: TcxGrid
                Left = 0
                Top = 35
                Width = 275
                Height = 497
                Align = alClient
                BorderStyle = cxcbsNone
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Noto Sans'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                ExplicitTop = 0
                ExplicitHeight = 532
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
                  DataController.DataSource = Dang
                  DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsCustomize.ColumnsQuickCustomization = True
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Inserting = False
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.Footer = True
                  OptionsView.Indicator = True
                  object cxGridDBTableView1idcoa: TcxGridDBColumn
                    DataBinding.FieldName = 'idcoa'
                    Visible = False
                    Width = 32
                  end
                  object cxGridDBTableView1idunit: TcxGridDBColumn
                    Caption = 'ID Unit'
                    DataBinding.FieldName = 'idunit'
                    Visible = False
                    GroupIndex = 0
                  end
                  object cxGridDBTableView1periode: TcxGridDBColumn
                    Caption = 'Periode'
                    DataBinding.FieldName = 'periode'
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.FilteringAddValueItems = False
                    Options.FilteringFilteredItemsList = False
                    Options.FilteringPopup = False
                    Options.FilteringPopupMultiSelect = False
                    Options.Sorting = False
                    Styles.Footer = dm.bold8
                    Styles.Header = dm.bold8
                    Width = 82
                  end
                  object cxGridDBTableView1anggaran: TcxGridDBColumn
                    Caption = 'Jumlah Anggaran'
                    DataBinding.FieldName = 'anggaran'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DecimalPlaces = 2
                    Properties.DisplayFormat = '#,##0.##'
                    Properties.EditFormat = '#,##0.##'
                    Properties.UseThousandSeparator = True
                    Properties.ValidationOptions = [evoRaiseException, evoAllowLoseFocus]
                    HeaderAlignmentHorz = taCenter
                    Options.Filtering = False
                    Options.FilteringAddValueItems = False
                    Options.FilteringFilteredItemsList = False
                    Options.FilteringPopup = False
                    Options.FilteringPopupMultiSelect = False
                    Options.Sorting = False
                    Styles.Footer = dm.bold8
                    Styles.Header = dm.bold8
                    Width = 160
                  end
                end
                object cxGridLevel1: TcxGridLevel
                  GridView = cxGridDBTableView1
                end
              end
              object Panel1: TPanel
                Left = 0
                Top = 0
                Width = 275
                Height = 35
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 1
                ExplicitTop = 8
                object Label1: TLabel
                  Left = 77
                  Top = 10
                  Width = 93
                  Height = 13
                  Caption = 'Tahun Anggaran'
                end
                object RzDateTimePicker1: TRzDateTimePicker
                  Left = 176
                  Top = 8
                  Width = 96
                  Height = 21
                  Date = 44902.000000000000000000
                  Format = 'yyyy'
                  Time = 0.542097071760508700
                  DateMode = dmUpDown
                  TabOrder = 0
                  OnChange = RzDateTimePicker1Change
                end
              end
            end
          end
        end
      end
    end
  end
  object Dkode: TMyDataSource
    DataSet = Qkode
    Left = 456
    Top = 336
  end
  object ActionList1: TActionList
    Left = 424
    Top = 328
    object enter: TAction
      Caption = 'enter'
      ShortCut = 13
      OnExecute = enterExecute
    end
    object ins: TAction
      Caption = 'ins'
      ShortCut = 45
    end
    object del: TAction
      Caption = 'del'
      ShortCut = 46
    end
    object esc: TAction
      Caption = 'esc'
      ShortCut = 27
    end
  end
  object Qkode: TMyQuery
    Connection = dm.Conn1
    SQL.Strings = (
      
        'SELECT b.*,CONCAT(kodeakun3,"-",tipe3) AS sub3,CONCAT(kodeakun2,' +
        '"-",tipe3) AS sub2 FROM `idakunbiayapend` a LEFT JOIN masterakun' +
        ' b'
      'ON a.idcoa=b.`idcoa`'
      'ORDER BY kodeakun')
    Options.FieldOrigins = foNone
    Left = 200
    Top = 224
    object Qkodeidcoa: TIntegerField
      FieldName = 'idcoa'
      Origin = 'b.idcoa'
    end
    object Qkodekodeakun: TStringField
      FieldName = 'kodeakun'
      Origin = 'b.kodeakun'
      Size = 9
    end
    object Qkodenamaakun: TStringField
      FieldName = 'namaakun'
      Origin = 'b.namaakun'
      Size = 75
    end
    object Qkodeidtipe3: TIntegerField
      FieldName = 'idtipe3'
      Origin = 'b.idtipe3'
    end
    object Qkodeidtipe2: TIntegerField
      FieldName = 'idtipe2'
      Origin = 'b.idtipe2'
    end
    object Qkodeidtipe1: TIntegerField
      FieldName = 'idtipe1'
      Origin = 'b.idtipe1'
    end
    object Qkodetipe1: TStringField
      FieldName = 'tipe1'
      Origin = 'b.tipe1'
      Size = 15
    end
    object Qkodetipe2: TStringField
      FieldName = 'tipe2'
      Origin = 'b.tipe2'
      Size = 35
    end
    object Qkodetipe3: TStringField
      FieldName = 'tipe3'
      Origin = 'b.tipe3'
      Size = 45
    end
    object Qkodetipetambah: TStringField
      FieldName = 'tipetambah'
      Origin = 'b.tipetambah'
      FixedChar = True
      Size = 1
    end
    object Qkodekodeakun2: TStringField
      FieldName = 'kodeakun2'
      Origin = 'b.kodeakun2'
      Size = 9
    end
    object Qkodekodeakun3: TStringField
      FieldName = 'kodeakun3'
      Origin = 'b.kodeakun3'
      Size = 9
    end
    object Qkodeidtipearuskas: TIntegerField
      FieldName = 'idtipearuskas'
      Origin = 'b.idtipearuskas'
    end
    object Qkodesub3: TStringField
      FieldName = 'sub3'
      Origin = 'sub3'
      Size = 55
    end
    object Qkodesub2: TStringField
      FieldName = 'sub2'
      Origin = 'sub2'
      Size = 55
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 136
    Top = 288
    object Bulanan1: TMenuItem
      Caption = 'Bulanan'
      OnClick = Bulanan1Click
    end
    object tahunan1: TMenuItem
      Caption = 'Tahunan'
    end
  end
  object Dang: TMyDataSource
    DataSet = Qang
    Left = 673
    Top = 248
  end
  object Qang: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT * FROM anggaranlr WHERE idcoa=:idcoa and left(periode,4)=' +
        ':thn')
    Connection = dm.Conn1
    SQL.Strings = (
      'select * from anggaranlr where left(periode,4)="2017"')
    Options.FieldOrigins = foNone
    Left = 617
    Top = 216
    object Qangidcoa: TIntegerField
      FieldName = 'idcoa'
      Origin = 'anggaranlr.idcoa'
      ReadOnly = True
    end
    object Qangperiode: TStringField
      FieldName = 'periode'
      Origin = 'anggaranlr.periode'
      ReadOnly = True
      FixedChar = True
      Size = 6
    end
    object Qanganggaran: TFloatField
      FieldName = 'anggaran'
      Origin = 'anggaranlr.anggaran'
    end
    object Qangidunit: TIntegerField
      FieldName = 'idunit'
    end
  end
end
