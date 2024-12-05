object folaplhk: Tfolaplhk
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Laporan Laba Rugi'
  ClientHeight = 492
  ClientWidth = 923
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel4: TRzPanel
    Left = 0
    Top = 0
    Width = 923
    Height = 492
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 919
      Height = 488
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
      ShowCloseButton = True
      ShowHint = False
      TabColors.HighlightBar = 6336039
      TabColors.Shadow = 52479
      TabColors.Unselected = 3927039
      TabIndex = 0
      TabOrder = 0
      TextColors.Selected = 6710886
      TextColors.Unselected = 10260600
      UseGradients = False
      OnClose = RzPageControl1Close
      FixedDimension = 19
      object TabSheet1: TRzTabSheet
        Color = 52479
        Caption = 'Laporan Harian Kas'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 919
          Height = 469
          Align = alClient
          BorderOuter = fsFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object dxActivityIndicator1: TdxActivityIndicator
            Left = 40
            Top = 139
            Width = 241
            Height = 31
            BorderStyle = cxcbsDefault
            PropertiesClassName = 'TdxActivityIndicatorHorizontalDotsProperties'
            Properties.DotColor = -65536
            Transparent = True
          end
          object cxlabel1: TcxLabel
            Left = 20
            Top = 55
            Caption = 'S.d'
          end
          object cxButton2: TcxButton
            Left = 40
            Top = 139
            Width = 241
            Height = 31
            Caption = '&Preview'
            OptionsImage.ImageIndex = 19
            OptionsImage.Images = dm.img24
            TabOrder = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Noto Sans'
            Font.Style = []
            ParentFont = False
            WordWrap = True
            OnClick = cxButton2Click
          end
          object cxLabel3: TcxLabel
            Left = 18
            Top = 18
            Caption = 'Tanggal'
          end
          object cxDateEdit1: TcxDateEdit
            Left = 120
            Top = 14
            AutoSize = False
            TabOrder = 0
            Height = 32
            Width = 193
          end
          object cxDateEdit2: TcxDateEdit
            Left = 120
            Top = 52
            AutoSize = False
            TabOrder = 5
            Height = 32
            Width = 193
          end
          object cxCheckBox2: TcxCheckBox
            Left = 19
            Top = 93
            Caption = 'Loket'
            TabOrder = 6
            OnClick = cxCheckBox2Click
          end
          object CombKodeunit: TcxComboBox
            Left = 120
            Top = 90
            AutoSize = False
            Enabled = False
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = CombKodeunitPropertiesChange
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Noto Sans'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 7
            Height = 30
            Width = 57
          end
          object Combnamaunit: TcxComboBox
            Left = 183
            Top = 90
            AutoSize = False
            Enabled = False
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = CombnamaunitPropertiesChange
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Noto Sans'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 8
            Height = 30
            Width = 130
          end
        end
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 600
    Top = 88
  end
  object dblr: TfrxDBDataset
    UserName = 'db0'
    CloseDataSource = False
    DataSet = Qlr
    BCDToCurrency = False
    Left = 472
    Top = 128
  end
  object Qlrrekap: TMyQuery
    Connection = dm.Conn1
    SQL.Strings = (
      'CALL view_lhk("1",:namauser);')
    Options.FieldOrigins = foNone
    Left = 416
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'namauser'
        Value = nil
      end>
  end
  object dblrrekap: TfrxDBDataset
    UserName = 'db1'
    CloseDataSource = False
    DataSet = Qlrrekap
    BCDToCurrency = False
    Left = 408
    Top = 232
  end
  object Qlr: TMyQuery
    Connection = dm.Conn1
    SQL.Strings = (
      'CALL view_lhk("0",:namauser);')
    Options.FieldOrigins = foNone
    Left = 424
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'namauser'
        Value = nil
      end>
  end
  object ActionList1: TActionList
    Left = 370
    Top = 53
    object F7: TAction
      Caption = 'F7'
      ShortCut = 118
      OnExecute = F7Execute
    end
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 746
    Top = 141
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 147
    Top = 203
  end
  object frxReport1: TfrxReport
    Version = '6.9.6'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44099.383565740700000000
    ReportOptions.LastChange = 44161.502250416670000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 600
    Top = 144
    Datasets = <
      item
        DataSet = dblr
        DataSetName = 'db0'
      end
      item
        DataSet = dblrrekap
        DataSetName = 'db1'
      end
      item
        DataSet = dm.dbttd
        DataSetName = 'dbttd'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxDMPPage
      PaperWidth = 342.899778543893000000
      PaperHeight = 382.322669749942500000
      PaperSize = 256
      LeftMargin = 2.539998359584390000
      RightMargin = 2.539998359584390000
      TopMargin = 4.497913761764030000
      BottomMargin = 4.497913761764030000
      Frame.Typ = []
      MirrorMode = []
      FontStyle = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 221.000000000000000000
        Width = 1276.800000000000000000
        DataSet = dblr
        DataSetName = 'db0'
        RowCount = 0
        Stretched = True
        object DMPLine13: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1243.200000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine14: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1060.800000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine15: TfrxDMPLineView
          AllowVectorExport = True
          Left = 878.400000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine16: TfrxDMPLineView
          AllowVectorExport = True
          Left = 696.000000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine17: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine8: TfrxDMPLineView
          AllowVectorExport = True
          Left = 513.600000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine11: TfrxDMPLineView
          AllowVectorExport = True
          Left = 331.200000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object db0uraian: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Width = 307.200000000000000000
          Height = 17.000000000000000000
          DataField = 'uraian'
          DataSet = dblr
          DataSetName = 'db0'
          FontStyle = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db0."uraian"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object Memo1: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 336.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."kb"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo2: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 518.400000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."b1"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo9: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 700.800000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."b2"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo10: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 883.200000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."b3"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo11: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1065.600000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."total"]')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 153.000000000000000000
        Top = 17.000000000000000000
        Width = 1276.800000000000000000
        Condition = 'db0."tanggal"'
        StartNewPage = True
        object header1: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 57.600000000000000000
          Width = 1180.800000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PERUSAHAAN DAERAH AIR MINUM')
          TruncOutboundText = False
        end
        object DMPCommand1: TfrxDMPCommand
          AllowVectorExport = True
          Left = 28.800000000000000000
          Width = 9.600000000000000000
          Height = 17.000000000000000000
          Command = '#27#80'
        end
        object DMPCommand3: TfrxDMPCommand
          AllowVectorExport = True
          Left = 19.200000000000000000
          Width = 9.600000000000000000
          Height = 17.000000000000000000
          Command = '#18'
        end
        object DMPLine1: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 42.500000000000000000
          Width = 1228.800000000000000000
          Color = clBlack
        end
        object DMPMemo5: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 38.400000000000000000
          Top = 51.000000000000000000
          Width = 1190.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LAPORAN HARIAN KAS')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPLine6: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 110.500000000000000000
          Width = 1228.800000000000000000
          Color = clBlack
        end
        object DMPLine7: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 144.500000000000000000
          Width = 1228.800000000000000000
          Color = clBlack
        end
        object DMPMemo14: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 119.000000000000000000
          Width = 307.200000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'URAIAN')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPLine9: TfrxDMPLineView
          AllowVectorExport = True
          Left = 331.200000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPLine10: TfrxDMPLineView
          AllowVectorExport = True
          Left = 513.600000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPLine12: TfrxDMPLineView
          AllowVectorExport = True
          Left = 696.000000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPLine31: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1060.800000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object header2: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 17.000000000000000000
          Width = 1219.200000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PEMERINTAH KABUPATEN PAMEKASAN'
            'PERUSAHAAN DAERAH AIR MINUM')
          TruncOutboundText = False
        end
        object DMPCommand4: TfrxDMPCommand
          AllowVectorExport = True
          Left = 38.400000000000000000
          Width = 9.600000000000000000
          Height = 17.000000000000000000
          Command = '#15'
        end
        object DMPLine2: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPMemo1: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 336.000000000000000000
          Top = 119.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KAS BESAR')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo3: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 518.400000000000000000
          Top = 119.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'GIRO B. JATIM')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPLine3: TfrxDMPLineView
          AllowVectorExport = True
          Left = 878.400000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPMemo4: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 700.800000000000000000
          Top = 119.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BANK BTN')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo6: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 883.200000000000000000
          Top = 119.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KAS/BANK LAINNYA')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo7: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1065.600000000000000000
          Top = 119.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPLine4: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1243.200000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object db0tanggal: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 451.200000000000000000
          Top = 68.000000000000000000
          Width = 364.800000000000000000
          Height = 17.000000000000000000
          DataField = 'tanggal'
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[db0."tanggal"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPCommand5: TfrxDMPCommand
          AllowVectorExport = True
          Left = 48.000000000000000000
          Width = 9.600000000000000000
          Height = 17.000000000000000000
          Command = '#27#48'
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 204.000000000000000000
        Top = 272.000000000000000000
        Width = 1276.800000000000000000
        object DMPMemo18: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 67.200000000000000000
          Top = 51.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Mengetahui')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object dbttdjab1: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 67.200000000000000000
          Top = 68.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataField = 'jab1'
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."jab1"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object dbttdnama2: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 67.200000000000000000
          Top = 153.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama1"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object dbttdnik1: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 67.200000000000000000
          Top = 187.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataField = 'nik1'
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nik1"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo19: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 480.000000000000000000
          Top = 51.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Disetujui oleh')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo20: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 480.000000000000000000
          Top = 68.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."jab2"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo21: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 480.000000000000000000
          Top = 153.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama2"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo22: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 480.000000000000000000
          Top = 187.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nik2"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo23: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 892.800000000000000000
          Top = 51.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dibuat oleh')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo24: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 892.800000000000000000
          Top = 68.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."jab3"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo25: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 892.800000000000000000
          Top = 153.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama3"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo26: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 892.800000000000000000
          Top = 187.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nik3"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPLine19: TfrxDMPLineView
          AllowVectorExport = True
          Left = 72.000000000000000000
          Top = 178.500000000000000000
          Width = 268.800000000000000000
          Color = clBlack
        end
        object DMPLine24: TfrxDMPLineView
          AllowVectorExport = True
          Left = 484.800000000000000000
          Top = 178.500000000000000000
          Width = 268.800000000000000000
          Color = clBlack
        end
        object DMPLine25: TfrxDMPLineView
          AllowVectorExport = True
          Left = 897.600000000000000000
          Top = 178.500000000000000000
          Width = 268.800000000000000000
          Color = clBlack
        end
        object DMPCommand2: TfrxDMPCommand
          AllowVectorExport = True
          Left = 1171.200000000000000000
          Top = 187.000000000000000000
          Width = 9.600000000000000000
          Height = 17.000000000000000000
          Command = '#18'
        end
        object DMPLine18: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 8.500000000000000000
          Width = 1228.800000000000000000
          Color = clBlack
        end
        object DMPCommand6: TfrxDMPCommand
          AllowVectorExport = True
          Left = 1180.800000000000000000
          Top = 187.000000000000000000
          Width = 9.600000000000000000
          Height = 17.000000000000000000
          Command = '#27#50'
        end
        object footer: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 892.800000000000000000
          Top = 34.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[db0."tanggal"]')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 187.000000000000000000
        Width = 1276.800000000000000000
        Condition = 'db0."grouplhk"'
        object DMPLine5: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 8.500000000000000000
          Width = 1228.800000000000000000
          Color = clBlack
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Top = 255.000000000000000000
        Width = 1276.800000000000000000
      end
    end
    object Page2: TfrxDMPPage
      PaperWidth = 342.899778543893000000
      PaperHeight = 382.322669749942500000
      PaperSize = 256
      LeftMargin = 2.539998359584390000
      RightMargin = 2.539998359584390000
      TopMargin = 4.497913761764030000
      BottomMargin = 4.497913761764030000
      Frame.Typ = []
      MirrorMode = []
      FontStyle = []
      object GroupHeader4: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 204.000000000000000000
        Width = 1276.800000000000000000
        Condition = 'db1."grouplhk"'
        object DMPLine33: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 8.500000000000000000
          Width = 1228.800000000000000000
          Color = clBlack
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 238.000000000000000000
        Width = 1276.800000000000000000
        DataSet = dblrrekap
        DataSetName = 'db1'
        RowCount = 0
        Stretched = True
        object DMPLine34: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1243.200000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine35: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1060.800000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine36: TfrxDMPLineView
          AllowVectorExport = True
          Left = 878.400000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine37: TfrxDMPLineView
          AllowVectorExport = True
          Left = 696.000000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine38: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine39: TfrxDMPLineView
          AllowVectorExport = True
          Left = 513.600000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine40: TfrxDMPLineView
          AllowVectorExport = True
          Left = 331.200000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPMemo8: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Width = 307.200000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          FontStyle = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db1."uraian"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo31: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 336.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."kb"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo32: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 518.400000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."b1"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo33: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 700.800000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."b2"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo34: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 883.200000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."b3"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo35: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1065.600000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."total"]')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 153.000000000000000000
        Top = 17.000000000000000000
        Width = 1276.800000000000000000
        object DMPMemo12: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 57.600000000000000000
          Width = 1180.800000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PERUSAHAAN DAERAH AIR MINUM')
          TruncOutboundText = False
        end
        object DMPCommand7: TfrxDMPCommand
          AllowVectorExport = True
          Left = 38.400000000000000000
          Width = 9.600000000000000000
          Height = 17.000000000000000000
          Command = '#27#80'
        end
        object DMPCommand8: TfrxDMPCommand
          AllowVectorExport = True
          Left = 19.200000000000000000
          Width = 9.600000000000000000
          Height = 17.000000000000000000
          Command = '#18'
        end
        object DMPLine20: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 42.500000000000000000
          Width = 1228.800000000000000000
          Color = clBlack
        end
        object DMPMemo13: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 38.400000000000000000
          Top = 51.000000000000000000
          Width = 1190.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LAPORAN HARIAN KAS')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPLine21: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 110.500000000000000000
          Width = 1228.800000000000000000
          Color = clBlack
        end
        object DMPLine22: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 144.500000000000000000
          Width = 1228.800000000000000000
          Color = clBlack
        end
        object DMPMemo15: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 119.000000000000000000
          Width = 307.200000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'URAIAN')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPLine23: TfrxDMPLineView
          AllowVectorExport = True
          Left = 331.200000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPLine26: TfrxDMPLineView
          AllowVectorExport = True
          Left = 513.600000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPLine27: TfrxDMPLineView
          AllowVectorExport = True
          Left = 696.000000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPLine28: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1060.800000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPMemo16: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 17.000000000000000000
          Width = 1219.200000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PEMERINTAH KABUPATEN PAMEKASAN'
            'PERUSAHAAN DAERAH AIR MINUM')
          TruncOutboundText = False
        end
        object DMPCommand9: TfrxDMPCommand
          AllowVectorExport = True
          Left = 38.400000000000000000
          Width = 9.600000000000000000
          Height = 17.000000000000000000
          Command = '#15'
        end
        object DMPLine29: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPMemo17: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 336.000000000000000000
          Top = 119.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KAS BESAR')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo27: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 518.400000000000000000
          Top = 119.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'GIRO B. JATIM')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPLine30: TfrxDMPLineView
          AllowVectorExport = True
          Left = 878.400000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPMemo28: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 700.800000000000000000
          Top = 119.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BANK BTN')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo29: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 883.200000000000000000
          Top = 119.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KAS/BANK LAINNYA')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo30: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1065.600000000000000000
          Top = 119.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPLine32: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1243.200000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object periode2: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 460.800000000000000000
          Top = 68.000000000000000000
          Width = 364.800000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPCommand10: TfrxDMPCommand
          AllowVectorExport = True
          Left = 48.000000000000000000
          Width = 9.600000000000000000
          Height = 17.000000000000000000
          Command = '#27#48'
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 187.000000000000000000
        Top = 289.000000000000000000
        Width = 1276.800000000000000000
        object DMPMemo36: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 51.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Mengetahui')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo37: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 68.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataField = 'jab1'
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."jab1"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo38: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 136.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama1"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo39: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 170.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataField = 'nik1'
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nik1"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo40: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 451.200000000000000000
          Top = 51.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Disetujui oleh')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo41: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 451.200000000000000000
          Top = 68.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."jab2"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo42: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 451.200000000000000000
          Top = 136.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama2"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo43: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 451.200000000000000000
          Top = 170.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nik2"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo44: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 873.600000000000000000
          Top = 51.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dibuat oleh')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo45: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 873.600000000000000000
          Top = 68.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."jab3"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo46: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 873.600000000000000000
          Top = 136.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama3"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo47: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 873.600000000000000000
          Top = 170.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nik3"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPCommand11: TfrxDMPCommand
          AllowVectorExport = True
          Left = 1152.000000000000000000
          Top = 170.000000000000000000
          Width = 9.600000000000000000
          Height = 17.000000000000000000
          Command = '#18'
        end
        object DMPCommand12: TfrxDMPCommand
          AllowVectorExport = True
          Left = 1161.600000000000000000
          Top = 170.000000000000000000
          Width = 9.600000000000000000
          Height = 17.000000000000000000
          Command = '#27#50'
        end
        object footer2: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 844.800000000000000000
          Top = 34.000000000000000000
          Width = 336.000000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPLine43: TfrxDMPLineView
          AllowVectorExport = True
          Left = 878.400000000000000000
          Top = 161.500000000000000000
          Width = 268.800000000000000000
          Color = clBlack
        end
        object DMPLine42: TfrxDMPLineView
          AllowVectorExport = True
          Left = 456.000000000000000000
          Top = 161.500000000000000000
          Width = 268.800000000000000000
          Color = clBlack
        end
        object DMPLine41: TfrxDMPLineView
          AllowVectorExport = True
          Left = 52.800000000000000000
          Top = 161.500000000000000000
          Width = 268.800000000000000000
          Color = clBlack
        end
        object DMPLine44: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 8.500000000000000000
          Width = 1228.800000000000000000
          Color = clBlack
        end
      end
    end
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    FileName = 'C:\Users\USER\AppData\Local\Temp\fr1DFF.tmp'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 44607.406827893520000000
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 530
    Top = 157
  end
  object frxReport2: TfrxReport
    Version = '6.9.6'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44099.383565740700000000
    ReportOptions.LastChange = 44627.725371111110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 232
    Top = 208
    Datasets = <
      item
        DataSet = dblr
        DataSetName = 'db0'
      end
      item
        DataSet = dblrrekap
        DataSetName = 'db1'
      end
      item
        DataSet = dm.dbttd
        DataSetName = 'dbttd'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxDMPPage
      PaperWidth = 761.999507875317800000
      PaperHeight = 382.322669749942500000
      PaperSize = 256
      LeftMargin = 2.539998359584390000
      RightMargin = 2.539998359584390000
      TopMargin = 4.497913761764030000
      BottomMargin = 4.497913761764030000
      Frame.Typ = []
      MirrorMode = []
      FontStyle = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 221.000000000000000000
        Width = 2860.800000000000000000
        DataSet = dblr
        DataSetName = 'db0'
        RowCount = 0
        Stretched = True
        object DMPLine13: TfrxDMPLineView
          AllowVectorExport = True
          Left = 2097.600000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine14: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1915.200000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine15: TfrxDMPLineView
          AllowVectorExport = True
          Left = 878.400000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine16: TfrxDMPLineView
          AllowVectorExport = True
          Left = 696.000000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine17: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine8: TfrxDMPLineView
          AllowVectorExport = True
          Left = 513.600000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine11: TfrxDMPLineView
          AllowVectorExport = True
          Left = 331.200000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object db0uraian: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Width = 307.200000000000000000
          Height = 17.000000000000000000
          DataField = 'uraian'
          DataSet = dblr
          DataSetName = 'db0'
          FontStyle = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db0."uraian"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object Memo1: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 336.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."kb"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo2: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 700.800000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."b1"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo9: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 883.200000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."b2"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo10: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1430.400000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."b3"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo11: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1920.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."total"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPLine50: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1752.000000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine51: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1588.800000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine52: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1425.600000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine53: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1243.200000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine54: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1060.800000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object Memo2: TfrxDMPMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 518.400000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataField = 'kk'
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."kk"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object Memo3: TfrxDMPMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 1065.600000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataField = 'b6'
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."b6"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object Memo4: TfrxDMPMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 1248.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataField = 'b7'
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."b7"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object Memo5: TfrxDMPMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 1593.600000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          DataField = 'b4'
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."b4"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object Memo6: TfrxDMPMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 1756.800000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."b5"]')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 153.000000000000000000
        Top = 17.000000000000000000
        Width = 2860.800000000000000000
        Condition = 'db0."tanggal"'
        StartNewPage = True
        object header1: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 38.400000000000000000
          Width = 2044.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PERUSAHAAN DAERAH AIR MINUM')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPLine1: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 42.500000000000000000
          Width = 2083.200000000000000000
          Color = clBlack
        end
        object DMPMemo5: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 38.400000000000000000
          Top = 51.000000000000000000
          Width = 2044.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LAPORAN HARIAN KAS')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPLine6: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 110.500000000000000000
          Width = 2083.200000000000000000
          Color = clBlack
        end
        object DMPLine7: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 144.500000000000000000
          Width = 2083.200000000000000000
          Color = clBlack
        end
        object DMPMemo14: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 119.000000000000000000
          Width = 307.200000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'URAIAN')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPLine9: TfrxDMPLineView
          AllowVectorExport = True
          Left = 331.200000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPLine10: TfrxDMPLineView
          AllowVectorExport = True
          Left = 513.600000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPLine12: TfrxDMPLineView
          AllowVectorExport = True
          Left = 696.000000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPLine31: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1060.800000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object header2: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 17.000000000000000000
          Width = 2064.000000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PEMERINTAH KABUPATEN PAMEKASAN'
            'PERUSAHAAN DAERAH AIR MINUM')
          TruncOutboundText = False
        end
        object DMPLine2: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPMemo1: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 336.000000000000000000
          Top = 119.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KAS BESAR')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo3: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 700.800000000000000000
          Top = 119.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'GIRO B. JATIM')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPLine3: TfrxDMPLineView
          AllowVectorExport = True
          Left = 878.400000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPMemo4: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 883.200000000000000000
          Top = 119.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SIMPEDA')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo6: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1756.800000000000000000
          Top = 119.000000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BRI')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo7: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1248.000000000000000000
          Top = 119.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DEPOSITO')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPLine4: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1243.200000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object db0tanggal: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 873.600000000000000000
          Top = 68.000000000000000000
          Width = 364.800000000000000000
          Height = 17.000000000000000000
          DataField = 'tanggal'
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[db0."tanggal"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo48: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1593.600000000000000000
          Top = 119.000000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SIKLUS BPD')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo49: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1430.400000000000000000
          Top = 119.000000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SIKEMAS BPR')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo50: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1065.600000000000000000
          Top = 119.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BNI')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo51: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1920.000000000000000000
          Top = 119.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo52: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 518.400000000000000000
          Top = 119.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KAS KECIL')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPLine45: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1425.600000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPLine46: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1588.800000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPLine47: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1752.000000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPLine48: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1915.200000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPLine49: TfrxDMPLineView
          AllowVectorExport = True
          Left = 2097.600000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPCommand13: TfrxDMPCommand
          AllowVectorExport = True
          Left = 19.200000000000000000
          Width = 19.200000000000000000
          Height = 17.000000000000000000
          Hint = 'line space 1/6'
          Command = '#27#48'
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 204.000000000000000000
        Top = 272.000000000000000000
        Width = 2860.800000000000000000
        object DMPMemo18: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 67.200000000000000000
          Top = 51.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Mengetahui')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object dbttdjab1: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 67.200000000000000000
          Top = 68.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataField = 'jab1'
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."jab1"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object dbttdnama2: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 67.200000000000000000
          Top = 153.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama1"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object dbttdnik1: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 67.200000000000000000
          Top = 187.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataField = 'nik1'
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nik1"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo19: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 835.200000000000000000
          Top = 51.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Disetujui oleh')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo20: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 835.200000000000000000
          Top = 68.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."jab2"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo21: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 835.200000000000000000
          Top = 153.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama2"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo22: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 835.200000000000000000
          Top = 187.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nik2"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo23: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1795.200000000000000000
          Top = 51.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dibuat oleh')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo24: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1795.200000000000000000
          Top = 68.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."jab3"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo25: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1795.200000000000000000
          Top = 153.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama3"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo26: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1795.200000000000000000
          Top = 187.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nik3"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPLine19: TfrxDMPLineView
          AllowVectorExport = True
          Left = 72.000000000000000000
          Top = 178.500000000000000000
          Width = 268.800000000000000000
          Color = clBlack
        end
        object DMPLine24: TfrxDMPLineView
          AllowVectorExport = True
          Left = 840.000000000000000000
          Top = 178.500000000000000000
          Width = 268.800000000000000000
          Color = clBlack
        end
        object DMPLine25: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1800.000000000000000000
          Top = 178.500000000000000000
          Width = 268.800000000000000000
          Color = clBlack
        end
        object DMPLine18: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 8.500000000000000000
          Width = 2083.200000000000000000
          Color = clBlack
        end
        object DMPCommand6: TfrxDMPCommand
          AllowVectorExport = True
          Left = 2083.200000000000000000
          Top = 187.000000000000000000
          Width = 9.600000000000000000
          Height = 17.000000000000000000
          Hint = 'line space 1/6'
          Command = '#27#50'
        end
        object footer: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1795.200000000000000000
          Top = 34.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[db0."tanggal"]')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 187.000000000000000000
        Width = 2860.800000000000000000
        Condition = 'db0."grouplhk"'
        object DMPLine5: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 8.500000000000000000
          Width = 2083.200000000000000000
          Color = clBlack
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Top = 255.000000000000000000
        Width = 2860.800000000000000000
      end
    end
    object Page2: TfrxDMPPage
      PaperWidth = 761.999507875317800000
      PaperHeight = 382.322669749942500000
      PaperSize = 256
      LeftMargin = 2.539998359584393000
      RightMargin = 2.539998359584393000
      TopMargin = 4.497913761764029000
      BottomMargin = 4.497913761764029000
      Frame.Typ = []
      MirrorMode = []
      FontStyle = []
      object GroupHeader4: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 204.000000000000000000
        Width = 2860.800000000000000000
        Condition = 'db1."grouplhk"'
        object DMPLine33: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 8.500000000000000000
          Width = 2083.200000000000000000
          Color = clBlack
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 238.000000000000000000
        Width = 2860.800000000000000000
        DataSet = dblrrekap
        DataSetName = 'db1'
        RowCount = 0
        Stretched = True
        object DMPLine69: TfrxDMPLineView
          AllowVectorExport = True
          Left = 2097.600000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine70: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1915.200000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine71: TfrxDMPLineView
          AllowVectorExport = True
          Left = 878.400000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine72: TfrxDMPLineView
          AllowVectorExport = True
          Left = 686.400000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine73: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine74: TfrxDMPLineView
          AllowVectorExport = True
          Left = 513.600000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine75: TfrxDMPLineView
          AllowVectorExport = True
          Left = 331.200000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPMemo64: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Width = 307.200000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          FontStyle = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db1."uraian"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo65: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 336.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."kb"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo66: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 691.200000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."b1"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo67: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 883.200000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."b2"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo68: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1430.400000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."b3"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo69: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1920.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."total"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPLine76: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1752.000000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine77: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1588.800000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine78: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1425.600000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine79: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1243.200000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPLine80: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1060.800000000000000000
          Top = 8.500000000000000000
          Height = 8.500000000000000000
          Color = clBlack
        end
        object DMPMemo70: TfrxDMPMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 518.400000000000000000
          Width = 163.200000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."kk"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo71: TfrxDMPMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 1065.600000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."b6"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo72: TfrxDMPMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 1248.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."b7"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo73: TfrxDMPMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 1593.600000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."b4"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo74: TfrxDMPMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 1756.800000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."b5"]')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 153.000000000000000000
        Top = 17.000000000000000000
        Width = 2860.800000000000000000
        object DMPLine20: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 42.500000000000000000
          Width = 2064.000000000000000000
          Color = clBlack
        end
        object DMPMemo13: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 38.400000000000000000
          Top = 51.000000000000000000
          Width = 2025.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LAPORAN HARIAN KAS')
          ParentFont = False
          TruncOutboundText = False
        end
        object periode2: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 864.000000000000000000
          Top = 68.000000000000000000
          Width = 364.800000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          TruncOutboundText = False
        end
        object header11: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 38.400000000000000000
          Width = 2025.600000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PERUSAHAAN DAERAH AIR MINUM')
          ParentFont = False
          TruncOutboundText = False
        end
        object header22: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 17.000000000000000000
          Width = 2044.800000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PEMERINTAH KABUPATEN PAMEKASAN'
            'PERUSAHAAN DAERAH AIR MINUM')
          TruncOutboundText = False
        end
        object DMPCommand1: TfrxDMPCommand
          AllowVectorExport = True
          Left = 19.200000000000000000
          Width = 19.200000000000000000
          Height = 17.000000000000000000
          Hint = 'line space 1/6'
          Command = '#27#48'
        end
        object DMPLine55: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 110.500000000000000000
          Width = 2083.200000000000000000
          Color = clBlack
        end
        object DMPLine56: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 144.500000000000000000
          Width = 2083.200000000000000000
          Color = clBlack
        end
        object DMPMemo53: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 119.000000000000000000
          Width = 307.200000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'URAIAN')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPLine57: TfrxDMPLineView
          AllowVectorExport = True
          Left = 331.200000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPLine58: TfrxDMPLineView
          AllowVectorExport = True
          Left = 513.600000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPLine59: TfrxDMPLineView
          AllowVectorExport = True
          Left = 686.400000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPLine60: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1060.800000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPLine61: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPMemo54: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 336.000000000000000000
          Top = 119.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KAS BESAR')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo55: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 691.200000000000000000
          Top = 119.000000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'GIRO B. JATIM')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPLine62: TfrxDMPLineView
          AllowVectorExport = True
          Left = 878.400000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPMemo56: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 883.200000000000000000
          Top = 119.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SIMPEDA')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo57: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1756.800000000000000000
          Top = 119.000000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BRI')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo58: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1248.000000000000000000
          Top = 119.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DEPOSITO')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPLine63: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1243.200000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPMemo59: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1593.600000000000000000
          Top = 119.000000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SIKLUS BPD')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo60: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1430.400000000000000000
          Top = 119.000000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SIKEMAS BPR')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo61: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1065.600000000000000000
          Top = 119.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BNI')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo62: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1920.000000000000000000
          Top = 119.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo63: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 518.400000000000000000
          Top = 119.000000000000000000
          Width = 163.200000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KAS KECIL')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPLine64: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1425.600000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPLine65: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1588.800000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPLine66: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1752.000000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPLine67: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1915.200000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
        object DMPLine68: TfrxDMPLineView
          AllowVectorExport = True
          Left = 2097.600000000000000000
          Top = 110.500000000000000000
          Height = 34.000000000000000000
          Color = clBlack
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 204.000000000000000000
        Top = 289.000000000000000000
        Width = 2860.800000000000000000
        object footer2: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1747.200000000000000000
          Top = 34.000000000000000000
          Width = 336.000000000000000000
          Height = 17.000000000000000000
          DataSet = dblr
          DataSetName = 'db0'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPLine44: TfrxDMPLineView
          AllowVectorExport = True
          Left = 14.400000000000000000
          Top = 8.500000000000000000
          Width = 2083.200000000000000000
          Color = clBlack
        end
        object DMPMemo75: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 51.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Mengetahui')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo76: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 68.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataField = 'jab1'
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."jab1"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo77: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 153.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama1"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo78: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 187.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataField = 'nik1'
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nik1"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo79: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 835.200000000000000000
          Top = 51.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Disetujui oleh')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo80: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 835.200000000000000000
          Top = 68.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."jab2"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo81: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 835.200000000000000000
          Top = 153.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama2"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo82: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 835.200000000000000000
          Top = 187.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nik2"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo83: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1776.000000000000000000
          Top = 51.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dibuat oleh')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo84: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1776.000000000000000000
          Top = 68.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."jab3"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo85: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1776.000000000000000000
          Top = 153.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama3"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo86: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 1776.000000000000000000
          Top = 187.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nik3"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPLine81: TfrxDMPLineView
          AllowVectorExport = True
          Left = 52.800000000000000000
          Top = 178.500000000000000000
          Width = 268.800000000000000000
          Color = clBlack
        end
        object DMPLine82: TfrxDMPLineView
          AllowVectorExport = True
          Left = 840.000000000000000000
          Top = 178.500000000000000000
          Width = 268.800000000000000000
          Color = clBlack
        end
        object DMPLine83: TfrxDMPLineView
          AllowVectorExport = True
          Left = 1780.800000000000000000
          Top = 178.500000000000000000
          Width = 268.800000000000000000
          Color = clBlack
        end
        object DMPCommand2: TfrxDMPCommand
          AllowVectorExport = True
          Left = 2064.000000000000000000
          Top = 187.000000000000000000
          Width = 9.600000000000000000
          Height = 17.000000000000000000
          Hint = 'line space 1/6'
          Command = '#27#50'
        end
      end
    end
  end
  object frxReport3: TfrxReport
    Version = '6.9.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44826.400108217600000000
    ReportOptions.LastChange = 44839.772473553240000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 562
    Top = 269
    Datasets = <
      item
        DataSet = dblr
        DataSetName = 'db0'
      end
      item
        DataSet = dblrrekap
        DataSetName = 'db1'
      end
      item
        DataSet = dm.dbttd
        DataSetName = 'dbttd'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 143.622140000000000000
        Top = 18.897650000000000000
        Width = 1018.205382000000000000
        Condition = 'db0."tanggal"'
        StartNewPage = True
        object db0tanggal: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 83.149660000000000000
          Width = 1009.134510000000000000
          Height = 18.897650000000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[db0."tanggal"]')
          ParentFont = False
        end
        object Line29: TfrxLineView
          AllowVectorExport = True
          Top = 49.574830000000000000
          Width = 1016.693570000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 4.000000000000000000
        end
        object Line30: TfrxLineView
          AllowVectorExport = True
          Top = 54.354360000000000000
          Width = 1016.693570000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object header1: TfrxMemoView
          AllowVectorExport = True
          Left = 2.645640000000000000
          Top = 3.779530000000000000
          Width = 657.638220000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PERUSAHAAN DAERAH AIR MINUM')
          ParentFont = False
        end
        object header2: TfrxMemoView
          AllowVectorExport = True
          Left = 1.645640000000000000
          Top = 22.897650000000000000
          Width = 657.638220000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'KOTA PROBOLINGGO')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 60.472480000000000000
          Width = 1009.134510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LAPORAN HARIAN KAS')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 124.724490000000000000
          Width = 1016.693570000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 143.622140000000000000
          Width = 1016.693570000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 124.724490000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 124.724490000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 124.724490000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 124.724490000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 124.724490000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 124.724490000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 691.653990000000000000
          Top = 124.724490000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 793.701300000000000000
          Top = 124.724490000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 895.748610000000000000
          Top = 124.724490000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 1016.693570000000000000
          Top = 124.724490000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 124.724490000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KAS BESAR')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 124.724490000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'URAIAN')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 124.724490000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KAS KECIL')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 124.724490000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BPD JTIM :x230')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 124.724490000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BPD JTIM:X277')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 124.724490000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SIMPEDA x733')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 695.433520000000000000
          Top = 124.724490000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SIMPEDA x983')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 797.480830000000000000
          Top = 124.724490000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BRI')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 903.307670000000000000
          Top = 124.724490000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object kodeunit2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 102.047310000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'URAIAN')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Top = 185.196970000000000000
        Width = 1018.205382000000000000
        Condition = 'db0."grouplhk"'
        object Line23: TfrxLineView
          AllowVectorExport = True
          Width = 1016.693570000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118110240000000000
        Top = 207.874150000000000000
        Width = 1018.205382000000000000
        DataSet = dblr
        DataSetName = 'db0'
        RowCount = 0
        object Line13: TfrxLineView
          AllowVectorExport = True
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 691.653990000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Left = 793.701300000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line21: TfrxLineView
          AllowVectorExport = True
          Left = 895.748610000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line22: TfrxLineView
          AllowVectorExport = True
          Left = 1016.693570000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object db0uraian: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 188.976500000000000000
          Height = 15.118110236220500000
          DataField = 'uraian'
          DataSet = dblr
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db0."uraian"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 196.535560000000000000
          Width = 102.047310000000000000
          Height = 15.118110240000000000
          DataField = 'kb'
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."kb"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 302.362400000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          DataField = 'kk'
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."kk"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 385.512060000000000000
          Width = 98.267780000000000000
          Height = 15.118110240000000000
          DataField = 'b1'
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."b1"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 487.559370000000000000
          Width = 98.267780000000000000
          Height = 15.118110240000000000
          DataField = 'b2'
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."b2"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 589.606680000000000000
          Width = 98.267780000000000000
          Height = 15.118110240000000000
          DataField = 'b3'
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."b3"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 695.433520000000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          DataField = 'b4'
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."b4"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 797.480830000000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<db0."b5">+<db0."b6">+<db0."b7">]')
          ParentFont = False
        end
        object db0total: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 899.528140000000000000
          Width = 113.385900000000000000
          Height = 15.118110240000000000
          DataField = 'total'
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."total"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Top = 245.669450000000000000
        Width = 1018.205382000000000000
        object Line24: TfrxLineView
          AllowVectorExport = True
          Width = 1016.693570000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 124.724490000000000000
        Top = 268.346630000000000000
        Width = 1018.205382000000000000
        object Line25: TfrxLineView
          AllowVectorExport = True
          Width = 1016.693570000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object dbttdheader1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 7.559060000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'header1'
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."header1"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 7.559060000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."header2"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 820.158010000000000000
          Top = 7.559060000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."header4"]')
          ParentFont = False
        end
        object dbttdjab1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 22.677180000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'jab1'
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."jab1"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 22.677180000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."jab2"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 820.158010000000000000
          Top = 22.677180000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."jab4"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 86.929190000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama1"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 86.929190000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama2"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 820.158010000000000000
          Top = 86.929190000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama4"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 105.826840000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nik1"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 105.826840000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nik2"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 820.158010000000000000
          Top = 105.826840000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nik4"]')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 1018.205382000000000000
        object periode2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 75.590600000000000000
          Width = 1009.134510000000000000
          Height = 18.897650000000000000
          DataSet = dblr
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
        end
        object Line26: TfrxLineView
          AllowVectorExport = True
          Top = 49.574830000000000000
          Width = 1016.693570000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 4.000000000000000000
        end
        object Line27: TfrxLineView
          AllowVectorExport = True
          Top = 54.354360000000000000
          Width = 1016.693570000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object header11: TfrxMemoView
          AllowVectorExport = True
          Left = 2.645640000000000000
          Width = 657.638220000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PERUSAHAAN DAERAH AIR MINUM')
          ParentFont = False
        end
        object header22: TfrxMemoView
          AllowVectorExport = True
          Left = 1.645640000000000000
          Top = 19.118120000000000000
          Width = 657.638220000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'KOTA PROBOLINGGO')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 56.692950000000000000
          Width = 1009.134510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LAPORAN HARIAN KAS')
          ParentFont = False
        end
        object Line31: TfrxLineView
          AllowVectorExport = True
          Top = 120.944960000000000000
          Width = 1016.693570000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line32: TfrxLineView
          AllowVectorExport = True
          Top = 139.842610000000000000
          Width = 1016.693570000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line55: TfrxLineView
          AllowVectorExport = True
          Top = 120.944960000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line56: TfrxLineView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 120.944960000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line57: TfrxLineView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 120.944960000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line58: TfrxLineView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 120.944960000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line59: TfrxLineView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 120.944960000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line60: TfrxLineView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 120.944960000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line61: TfrxLineView
          AllowVectorExport = True
          Left = 691.653990000000000000
          Top = 120.944960000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line62: TfrxLineView
          AllowVectorExport = True
          Left = 793.701300000000000000
          Top = 120.944960000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line63: TfrxLineView
          AllowVectorExport = True
          Left = 895.748610000000000000
          Top = 120.944960000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line64: TfrxLineView
          AllowVectorExport = True
          Left = 1016.693570000000000000
          Top = 120.944960000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 120.944960000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KAS BESAR')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 120.944960000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'URAIAN')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 120.944960000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KAS KECIL')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 903.307670000000000000
          Top = 120.944960000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 120.944960000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BPD JTIM :x230')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 120.944960000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BPD JTIM:X277')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 120.944960000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SIMPEDA x733')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 695.433520000000000000
          Top = 120.944960000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SIMPEDA x983')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 797.480830000000000000
          Top = 120.944960000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BRI')
          ParentFont = False
        end
        object kodeunit1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 98.267780000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'URAIAN')
          ParentFont = False
        end
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Top = 219.212740000000000000
        Width = 1018.205382000000000000
        Condition = 'db1."grouplhk"'
        object Line43: TfrxLineView
          AllowVectorExport = True
          Width = 1016.693570000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118110240000000000
        Top = 241.889920000000000000
        Width = 1018.205382000000000000
        DataSet = dblrrekap
        DataSetName = 'db1'
        RowCount = 0
        object Line44: TfrxLineView
          AllowVectorExport = True
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line45: TfrxLineView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line46: TfrxLineView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line47: TfrxLineView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line48: TfrxLineView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line49: TfrxLineView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line50: TfrxLineView
          AllowVectorExport = True
          Left = 691.653990000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line51: TfrxLineView
          AllowVectorExport = True
          Left = 793.701300000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line52: TfrxLineView
          AllowVectorExport = True
          Left = 895.748610000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line53: TfrxLineView
          AllowVectorExport = True
          Left = 1016.693570000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo37: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 188.976500000000000000
          Height = 15.118110240000000000
          DataSet = dblr
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db1."uraian"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 196.535560000000000000
          Width = 102.047310000000000000
          Height = 15.118110240000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."kb"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 302.362400000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."kk"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 385.512060000000000000
          Width = 98.267780000000000000
          Height = 15.118110240000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."b1"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 487.559370000000000000
          Width = 98.267780000000000000
          Height = 15.118110240000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."b2"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 589.606680000000000000
          Width = 98.267780000000000000
          Height = 15.118110240000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."b3"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 695.433520000000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."b4"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 797.480830000000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<db1."b5">+<db1."b6">+<db1."b7">]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 899.528140000000000000
          Width = 113.385900000000000000
          Height = 15.118110240000000000
          DataSet = dblr
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."total"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 139.842610000000000000
        Top = 317.480520000000000000
        Width = 1018.205382000000000000
        object Line54: TfrxLineView
          AllowVectorExport = True
          Width = 1016.693570000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo55: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 22.677180000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'header1'
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."header1"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 22.677180000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."header2"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 816.378480000000000000
          Top = 22.677180000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."header4"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 37.795300000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'jab1'
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."jab1"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 37.795300000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."jab2"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 816.378480000000000000
          Top = 37.795300000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."jab4"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 102.047310000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama1"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 102.047310000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama2"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 816.378480000000000000
          Top = 102.047310000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama4"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 120.944960000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nik1"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 120.944960000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nik2"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 816.378480000000000000
          Top = 120.944960000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nik4"]')
          ParentFont = False
        end
        object footer2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 789.921770000000000000
          Top = 3.779530000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
        end
      end
    end
  end
end
