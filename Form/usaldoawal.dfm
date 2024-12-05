object fosaldoawal: Tfosaldoawal
  Left = 0
  Top = 0
  Caption = 'Saldo Awal'
  ClientHeight = 604
  ClientWidth = 1007
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 1007
    Height = 604
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
    ExplicitWidth = 800
    ExplicitHeight = 533
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Color = 52479
      Caption = 'Saldo Awal Neraca'
      ExplicitWidth = 800
      ExplicitHeight = 514
      object RzPanel1setorsimp: TRzPanel
        Left = 0
        Top = 0
        Width = 1007
        Height = 585
        Align = alClient
        BorderOuter = fsFlat
        TabOrder = 0
        ExplicitWidth = 800
        ExplicitHeight = 514
        object RzPanel2: TRzPanel
          Left = 1
          Top = 1
          Width = 1005
          Height = 583
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          ExplicitWidth = 798
          ExplicitHeight = 512
          object dxDockSite1: TdxDockSite
            Left = 0
            Top = 0
            Width = 1005
            Height = 583
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ManagerFont = False
            Align = alClient
            ExplicitWidth = 798
            ExplicitHeight = 512
            DockingType = 5
            OriginalWidth = 1005
            OriginalHeight = 583
            object dxLayoutDockSite2: TdxLayoutDockSite
              Left = 0
              Top = 0
              Width = 1005
              Height = 583
              ExplicitWidth = 798
              ExplicitHeight = 512
              DockingType = 0
              OriginalWidth = 300
              OriginalHeight = 200
            end
            object dxDockPanel2: TdxDockPanel
              Left = 0
              Top = 0
              Width = 1005
              Height = 583
              AllowFloating = False
              AutoHide = False
              CaptionButtons = []
              CustomCaptionButtons.Buttons = <>
              ShowCaption = False
              TabsProperties.CustomButtons.Buttons = <>
              ExplicitWidth = 798
              ExplicitHeight = 512
              DockingType = 0
              OriginalWidth = 185
              OriginalHeight = 140
              object cxGrid1: TcxGrid
                Left = 0
                Top = 35
                Width = 997
                Height = 541
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                ExplicitWidth = 790
                ExplicitHeight = 470
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
                  DataController.DataSource = dsa
                  DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
                  DataController.Summary.DefaultGroupSummaryItems = <
                    item
                      Format = '#,##0.##'
                      Kind = skSum
                      Position = spFooter
                      FieldName = 'blnini'
                      Column = cxGrid1DBTableView1bln12
                    end>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = '#,##0.##'
                      Kind = skSum
                      FieldName = 'blnini'
                      Column = cxGrid1DBTableView1bln12
                    end>
                  DataController.Summary.SummaryGroups = <
                    item
                      Links = <>
                      SummaryItems = <>
                    end>
                  OptionsCustomize.ColumnsQuickCustomization = True
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Inserting = False
                  OptionsView.Footer = True
                  OptionsView.GroupFooterMultiSummaries = True
                  OptionsView.GroupFooters = gfAlwaysVisible
                  OptionsView.Indicator = True
                  Styles.Group = dm.cxStyle1
                  Styles.Header = dm.cxStyle1
                  object cxGrid1DBTableView1tipe1: TcxGridDBColumn
                    DataBinding.FieldName = 'tipe1'
                    Visible = False
                    GroupIndex = 0
                  end
                  object cxGrid1DBTableView1tipe2: TcxGridDBColumn
                    DataBinding.FieldName = 'tipe2'
                    Visible = False
                    GroupIndex = 1
                    Width = 129
                  end
                  object cxGrid1DBTableView1tipe3: TcxGridDBColumn
                    Caption = 'Sub'
                    DataBinding.FieldName = 'tipe3'
                    Visible = False
                    GroupIndex = 2
                    Options.Editing = False
                    Width = 102
                  end
                  object cxGrid1DBTableView1kodeakun: TcxGridDBColumn
                    DataBinding.FieldName = 'kodeakun'
                    Options.Editing = False
                    Options.Grouping = False
                    Width = 75
                  end
                  object cxGrid1DBTableView1namaakun: TcxGridDBColumn
                    Caption = 'Nama Akun'
                    DataBinding.FieldName = 'namaakun'
                    Options.Editing = False
                    Options.Grouping = False
                    Width = 275
                  end
                  object cxGrid1DBTableView1bln12: TcxGridDBColumn
                    Caption = 'Jumlah'
                    DataBinding.FieldName = 'blnini'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DecimalPlaces = 2
                    Properties.DisplayFormat = '#,##0.##;(#,##0.##)'
                    Properties.EditFormat = '#,##0.##;(#,##0.##)'
                    Properties.UseDisplayFormatWhenEditing = True
                    Properties.UseThousandSeparator = True
                    HeaderAlignmentHorz = taRightJustify
                    Width = 131
                  end
                  object cxGrid1DBTableView1tahun: TcxGridDBColumn
                    DataBinding.FieldName = 'tahun'
                    Visible = False
                  end
                end
                object cxGrid1Level1: TcxGridLevel
                  GridView = cxGrid1DBTableView1
                end
              end
              object Panel1: TPanel
                Left = 0
                Top = 0
                Width = 997
                Height = 35
                Align = alTop
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                ExplicitWidth = 790
                DesignSize = (
                  997
                  35)
                object Label1: TLabel
                  Left = 801
                  Top = 9
                  Width = 36
                  Height = 16
                  Anchors = [akTop, akRight]
                  Caption = 'Tahun'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ExplicitLeft = 594
                end
                object Button1: TButton
                  Left = 915
                  Top = 3
                  Width = 75
                  Height = 28
                  Anchors = [akTop, akRight]
                  Caption = 'Tampilkan'
                  TabOrder = 0
                  OnClick = Button1Click
                  ExplicitLeft = 708
                end
                object RzDateTimePicker1: TRzDateTimePicker
                  Left = 842
                  Top = 5
                  Width = 71
                  Height = 24
                  Anchors = [akTop, akRight]
                  Date = 44576.000000000000000000
                  Format = 'yyyy'
                  Time = 0.416517986108374300
                  DateMode = dmUpDown
                  TabOrder = 1
                  ExplicitLeft = 635
                end
              end
            end
          end
        end
      end
    end
  end
  object Qsa: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT a.*,b.kodeakun,b.`tipe1`,b.`tipe2`,b.tipe3,b.namaakun,b.i' +
        'dtipe1 FROM saldoawal a,masterakun b WHERE a.tahun=:thn AND a.`i' +
        'dcoa`=b.`idcoa` order by b.idtipe1,a.idcoa')
    Connection = dm.Conn1
    SQL.Strings = (
      
        'SELECT a.idcoa,b.kodeakun,b.namaakun,a.blnini,CONCAT(b.kodeakun3' +
        ',"-",b.tipe3) AS tipe3,b.tipe1,CONCAT(b.kodeakun2,"-",b.tipe2) A' +
        'S tipe2,a.tahun FROM saldoawal a LEFT JOIN masterakun b ON a.`id' +
        'coa`=b.idcoa'
      'Where a.tahun=:tahun'
      'order by kodeakun')
    Options.FieldOrigins = foNone
    Left = 312
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tahun'
        Value = nil
      end>
    object Qsaidcoa: TIntegerField
      FieldName = 'idcoa'
      Origin = 'a.idcoa'
      ReadOnly = True
    end
    object Qsakodeakun: TStringField
      FieldName = 'kodeakun'
      Origin = 'b.kodeakun'
      ReadOnly = True
      Size = 9
    end
    object Qsanamaakun: TStringField
      FieldName = 'namaakun'
      Origin = 'b.namaakun'
      ReadOnly = True
      Size = 75
    end
    object Qsablnini: TFloatField
      FieldName = 'blnini'
      Origin = 'a.blnini'
    end
    object Qsatipe3: TStringField
      FieldName = 'tipe3'
      Origin = 'b.tipe3'
      Size = 55
    end
    object Qsatipe1: TStringField
      FieldName = 'tipe1'
      Origin = 'b.tipe1'
      Size = 15
    end
    object Qsatipe2: TStringField
      FieldName = 'tipe2'
      Size = 60
    end
    object Qsatahun: TIntegerField
      FieldName = 'tahun'
    end
  end
  object dsa: TMyDataSource
    DataSet = Qsa
    Left = 368
    Top = 192
  end
end
