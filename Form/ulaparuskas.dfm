object folaparuskas: Tfolaparuskas
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'folaparuskas'
  ClientHeight = 602
  ClientWidth = 1069
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
    Width = 1069
    Height = 602
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    ExplicitWidth = 407
    ExplicitHeight = 223
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 1065
      Height = 598
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
      ExplicitWidth = 403
      ExplicitHeight = 219
      FixedDimension = 19
      object TabSheet1: TRzTabSheet
        Color = 52479
        Caption = 'Laporan Arus Kas'
        ExplicitWidth = 403
        ExplicitHeight = 200
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 1065
          Height = 579
          Align = alClient
          BorderOuter = fsFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitWidth = 403
          ExplicitHeight = 200
          object dxActivityIndicator1: TdxActivityIndicator
            Left = 69
            Top = 133
            Width = 241
            Height = 31
            BorderStyle = cxcbsDefault
            PropertiesClassName = 'TdxActivityIndicatorHorizontalDotsProperties'
            Properties.DotColor = -65536
            Transparent = True
          end
          object cxComboBox2: TcxComboBox
            Left = 160
            Top = 13
            AutoSize = False
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Noto Sans'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 8
            Visible = False
            Height = 30
            Width = 169
          end
          object cxButton2: TcxButton
            Left = 198
            Top = 133
            Width = 112
            Height = 31
            Caption = '&Cetak'
            OptionsImage.ImageIndex = 19
            OptionsImage.Images = dm.img24
            TabOrder = 0
            WordWrap = True
            OnClick = cxButton2Click
          end
          object cxButton1: TcxButton
            Left = 64
            Top = 133
            Width = 112
            Height = 31
            Caption = '  &Export'
            OptionsImage.ImageIndex = 15
            OptionsImage.Images = dm.img24
            TabOrder = 1
            WordWrap = True
            OnClick = cxButton1Click
          end
          object cxDateEdit1: TcxDateEdit
            Left = 160
            Top = 85
            AutoSize = False
            TabOrder = 2
            Height = 32
            Width = 217
          end
          object cxLabel3: TcxLabel
            Left = 22
            Top = 89
            Caption = 'Tanggal Laporan'
          end
          object cxLabel1: TcxLabel
            Left = 22
            Top = 52
            Caption = 'Opsi Laporan'
          end
          object cxComboBox3: TcxComboBox
            Left = 160
            Top = 49
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'METODE LANGSUNG'
              'METODE TIDAK LANGSUNG')
            TabOrder = 3
            Text = 'METODE LANGSUNG'
            Height = 30
            Width = 217
          end
          object cxComboBox1: TcxComboBox
            Left = 160
            Top = 13
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = cxComboBox1PropertiesChange
            Properties.OnCloseUp = cxComboBox1PropertiesCloseUp
            TabOrder = 4
            Height = 30
            Width = 217
          end
          object cxLabel2: TcxLabel
            Left = 22
            Top = 15
            Caption = 'Periode'
          end
          object cxGrid1: TcxGrid
            Left = 22
            Top = 185
            Width = 403
            Height = 444
            TabOrder = 9
            Visible = False
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
              DataController.DataSource = Daruskas
              DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = '#,##0.##;(#,##0.##);0'
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'saldo'
                  Column = cxGrid1DBTableView1saldo
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,##0.##;(#,##0.##);0'
                  Kind = skSum
                  FieldName = 'saldo2'
                  Column = cxGrid1DBTableView1saldo
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.Footer = True
              OptionsView.GroupFooters = gfAlwaysVisible
              OptionsView.Indicator = True
              object cxGrid1DBTableView1namatipe: TcxGridDBColumn
                Caption = 'URAIAN'
                DataBinding.FieldName = 'nama'
                HeaderAlignmentHorz = taCenter
                Width = 410
              end
              object cxGrid1DBTableView1saldo: TcxGridDBColumn
                Caption = 'JUMLAH'
                DataBinding.FieldName = 'jumlah'
                HeaderAlignmentHorz = taRightJustify
                Width = 132
              end
              object cxGrid1DBTableView1gr: TcxGridDBColumn
                Caption = 'Group'
                DataBinding.FieldName = 'gr'
                Visible = False
                GroupIndex = 0
              end
              object cxGrid1DBTableView1modtipe: TcxGridDBColumn
                Caption = 'Tipe'
                DataBinding.FieldName = 'modtipe'
                Visible = False
                GroupIndex = 1
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object cxGrid2: TcxGrid
            Left = 465
            Top = 89
            Width = 663
            Height = 588
            TabOrder = 10
            Visible = False
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
              DataController.DataSource = Daruskas
              DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = '#,##0.##;(#,##0.##);0'
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'selisih'
                  Column = cxGrid1DBTableView1selisih
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,##0.##;(#,##0.##);0'
                  Kind = skSum
                  FieldName = 'selisih'
                  Column = cxGrid1DBTableView1selisih
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.Footer = True
              OptionsView.GroupFooters = gfAlwaysVisible
              OptionsView.Indicator = True
              object cxGrid1DBTableView1tipe3: TcxGridDBColumn
                Caption = 'URAIAN'
                DataBinding.FieldName = 'nama'
                HeaderAlignmentHorz = taCenter
                Width = 284
              end
              object cxGrid1DBTableView1selisih: TcxGridDBColumn
                Caption = 'SALDO'
                DataBinding.FieldName = 'jumlah'
                HeaderAlignmentHorz = taRightJustify
                Width = 297
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
      end
    end
  end
  object dbaruskas2: TfrxDBDataset
    UserName = 'db1'
    CloseDataSource = False
    DataSet = Qlap2
    BCDToCurrency = False
    Left = 465
    Top = 320
  end
  object dbaruskas1: TfrxDBDataset
    UserName = 'db0'
    CloseDataSource = False
    DataSet = Qaruskas
    BCDToCurrency = False
    Left = 457
    Top = 368
  end
  object Qlap2: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT SUM(saldolalu) AS saldolalu,idtipe3,"SALDO KAS PERIODE SE' +
        'BELUMNYA" AS tipe3,idtipearuskas'
      'FROM neraca a LEFT JOIN masterakun b ON a.`idcoa`=b.`idcoa`'
      'WHERE periode=:periode AND tipe3 LIKE "%KAS%"'
      'ORDER BY `idtipearuskas`,idtipe3')
    SQLLock.Strings = (
      
        'SELECT "-1" AS idcoa,d.namatipe,SUM(saldolalu) AS saldo,SUM(sald' +
        'olalu) AS saldo2,"Z" AS tipekas,"-1" AS idju,"-1" idkas'
      'FROM neraca a LEFT JOIN masterakun b ON a.`idcoa`=b.`idcoa`'
      'LEFT JOIN tipearuskas_l d ON ("-1")=d.id'
      'WHERE tipe3 LIKE "%KAS%" and a.periode=:periode')
    Connection = dm.Conn1
    SQL.Strings = (
      'CALL `viewlapak`(:nmuser)')
    Options.FieldOrigins = foNone
    Left = 584
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmuser'
        Value = nil
      end>
  end
  object reparuskas: TfrxReport
    Version = '6.9.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42940.384421539400000000
    ReportOptions.LastChange = 45068.693207476850000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 768
    Top = 224
    Datasets = <
      item
        DataSet = dblaruskasawal
        DataSetName = 'db1'
      end
      item
        DataSet = dm.dbttd
        DataSetName = 'dbttd'
      end
      item
        DataSet = dblaruskas
        DataSetName = 'db0'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      LargeDesignHeight = True
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 117.165430000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Line29: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 64.692950000000000000
          Width = 1039.370750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 4.000000000000000000
        end
        object Line30: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 69.472480000000000000
          Width = 1039.370750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 71.252010000000000000
          Width = 1035.591220000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LAPORAN ARUS KAS METODE LANGSUNG')
          ParentFont = False
        end
        object periode: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 89.590600000000000000
          Width = 1035.591220000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LAPORAN KAS MASUK')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 60.472480000000000000
          Frame.Typ = []
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object header1: TfrxMemoView
          AllowVectorExport = True
          Left = 73.456710000000000000
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
          Left = 73.456710000000000000
          Top = 15.338590000000000000
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
        object alamat1: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 34.015770000000000000
          Width = 653.858690000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'KOTA PROBOLINGGO')
          ParentFont = False
        end
        object alamat2: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 47.133890000000000000
          Width = 653.858690000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'KOTA PROBOLINGGO')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 294.803340000000000000
        Width = 1046.929810000000000000
        Condition = 'db0."kodetipe"'
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Width = 313.700990000000000000
          Height = 15.118107800000000000
          DataSet = dbaruskas1
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db0."tipe"]')
          ParentFont = False
        end
        object db0kodetipe: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 30.236220470000000000
          Height = 15.118120000000000000
          DataField = 'kodetipe'
          DataSet = dblaruskas
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db0."kodetipe"]')
          ParentFont = False
        end
        object Line31: TfrxLineView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Height = 15.118107800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line32: TfrxLineView
          AllowVectorExport = True
          Left = 1043.150280000000000000
          Height = 15.118107800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line33: TfrxLineView
          AllowVectorExport = True
          Left = 812.598950000000000000
          Height = 15.118107800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line34: TfrxLineView
          AllowVectorExport = True
          Left = 699.213050000000000000
          Height = 15.118107800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line35: TfrxLineView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Height = 15.118107800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line36: TfrxLineView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Height = 15.118107800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line37: TfrxLineView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Height = 15.118107800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line71: TfrxLineView
          AllowVectorExport = True
          Height = 15.118107800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 257.008040000000000000
        Width = 1046.929810000000000000
        DataSet = dblaruskasawal
        DataSetName = 'db1'
        RowCount = 0
        object Line21: TfrxLineView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Height = 15.118107800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line22: TfrxLineView
          AllowVectorExport = True
          Left = 1043.150280000000000000
          Height = 15.118107800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line23: TfrxLineView
          AllowVectorExport = True
          Left = 812.598950000000000000
          Height = 15.118107800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line24: TfrxLineView
          AllowVectorExport = True
          Left = 699.213050000000000000
          Height = 15.118107800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line25: TfrxLineView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Height = 15.118107800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line26: TfrxLineView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Height = 15.118107800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line27: TfrxLineView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Height = 15.118107800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line28: TfrxLineView
          AllowVectorExport = True
          Height = 15.118107800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Width = 313.700990000000000000
          Height = 15.118107800000000000
          DataSet = dbaruskas1
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db1."namatipe"]')
          ParentFont = False
        end
        object db1saldoawal: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 362.834880000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskasawal
          DataSetName = 'db1'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."saldoawal"]')
          ParentFont = False
        end
        object db1saldoawalsd2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 480.000310000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskasawal
          DataSetName = 'db1'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."saldoawalsd2"]')
          ParentFont = False
        end
        object db1anggaranini: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 589.606680000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskasawal
          DataSetName = 'db1'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."anggaranini"]')
          ParentFont = False
        end
        object db1sdanggaranini: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 702.992580000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskasawal
          DataSetName = 'db1'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db1."sdanggaranini"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 816.378480000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskasawal
          DataSetName = 'db1'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<db1."saldoawal">-<db1."anggaranini">]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 929.764380000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskasawal
          DataSetName = 'db1'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<db1."saldoawalsd2">-<db1."sdanggaranini">]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 30.236240000000000000
          Height = 15.118107800000000000
          DataSet = dbaruskas1
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'A.')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897637800000000000
        Top = 457.323130000000000000
        Width = 1046.929810000000000000
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 3.779530000000000000
          Width = 313.700990000000000000
          Height = 15.118107800000000000
          DataSet = dbaruskas1
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TOTAL [db0."tipe"]')
          ParentFont = False
        end
        object Line60: TfrxLineView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line61: TfrxLineView
          AllowVectorExport = True
          Left = 1043.150280000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line62: TfrxLineView
          AllowVectorExport = True
          Left = 812.598950000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line63: TfrxLineView
          AllowVectorExport = True
          Left = 699.213050000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line64: TfrxLineView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line65: TfrxLineView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line66: TfrxLineView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line69: TfrxLineView
          AllowVectorExport = True
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo30: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskas
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<db0."jumlah">,masterdata2)]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 480.000310000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskas
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<db0."jumlahsd">,masterdata2)]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskas
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<db0."anggaranini">,masterdata2)]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 702.992580000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskas
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<db0."anggaransdini">,masterdata2)]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 812.598950000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskas
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<SUM(<db0."jumlah">,masterdata2)>-<SUM(<db0."anggaranini">,mast' +
              'erdata2)>]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 929.764380000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskas
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<SUM(<db0."jumlahsd">,masterdata2)>-<SUM(<db0."anggaransdini">,' +
              'masterdata2)>]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118110240000000000
        Top = 374.173470000000000000
        Width = 1046.929810000000000000
        DataSet = dblaruskas
        DataSetName = 'db0'
        RowCount = 0
        object Line45: TfrxLineView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line46: TfrxLineView
          AllowVectorExport = True
          Left = 1043.150280000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line47: TfrxLineView
          AllowVectorExport = True
          Left = 812.598950000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line48: TfrxLineView
          AllowVectorExport = True
          Left = 699.213050000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line49: TfrxLineView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line50: TfrxLineView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line51: TfrxLineView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Width = 279.685220000000000000
          Height = 15.118110240000000000
          DataSet = dbaruskas1
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db0."namatipe"]')
          ParentFont = False
        end
        object Line67: TfrxLineView
          AllowVectorExport = True
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object db0jumlah: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 362.834880000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskas
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."jumlah"]')
          ParentFont = False
        end
        object db0jumlahsd: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 480.000310000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskas
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."jumlahsd"]')
          ParentFont = False
        end
        object db0anggaranini: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 589.606680000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskas
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."anggaranini"]')
          ParentFont = False
        end
        object db0anggaransdini: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 702.992580000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskas
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."anggaransdini"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 816.378480000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskasawal
          DataSetName = 'db1'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<db0."jumlah">-<db0."anggaranini">]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 929.764380000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskasawal
          DataSetName = 'db1'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<db0."jumlahsd">-<db0."anggaransdini">]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 158.740260000000000000
        Top = 536.693260000000000000
        Width = 1046.929810000000000000
        object Line5: TfrxLineView
          AllowVectorExport = True
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 313.700990000000000000
          Height = 15.118107800000000000
          DataSet = dbaruskas1
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'D. SALDO AKHIR (A+B-C)')
          ParentFont = False
        end
        object Line70: TfrxLineView
          AllowVectorExport = True
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line73: TfrxLineView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line74: TfrxLineView
          AllowVectorExport = True
          Left = 1043.150280000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line75: TfrxLineView
          AllowVectorExport = True
          Left = 812.598950000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line76: TfrxLineView
          AllowVectorExport = True
          Left = 699.213050000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line77: TfrxLineView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line78: TfrxLineView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line79: TfrxLineView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo43: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 362.834880000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskas
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<SUM(<db0."jml1sum">,masterdata2)>+<db1."saldoawal">]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 480.000310000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskas
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<SUM(<db0."jmlsd1sum">,masterdata2)>+<db1."saldoawalsd2">]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 589.606680000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskas
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<SUM(<db0."anggaraninisum">,masterdata2)>+<db1."anggaranini">]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 702.992580000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskas
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<SUM(<db0."anggaransdinisum">,masterdata2)>+<db1."sdanggaranini' +
              '">]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 812.598950000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskas
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[(<SUM(<db0."jml1sum">,masterdata2)>+<db1."saldoawal">)-(<SUM(<d' +
              'b0."anggaraninisum">,masterdata2)>+<db1."anggaranini">)]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 929.764380000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskas
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[(<SUM(<db0."jmlsd1sum">,masterdata2)>+<db1."saldoawalsd2">)-(<S' +
              'UM(<db0."anggaransdinisum">,masterdata2)>+<db1."sdanggaranini">)' +
              ']')
          ParentFont = False
        end
        object tanggalbawah: TfrxMemoView
          AllowVectorExport = True
          Left = 768.819420000000000000
          Top = 22.677180000000000000
          Width = 268.346630000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
        end
        object dbttdheader1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 45.354360000000000000
          Width = 241.889920000000000000
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
        object dbttdnama1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 124.724490000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DataField = 'nama1'
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama1"]')
          ParentFont = False
        end
        object dbttdjab1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 56.692950000000000000
          Width = 241.889920000000000000
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
        object dbttdnik1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 139.842610000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DataField = 'nik1'
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
            '[dbttd."nik1"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 45.354360000000000000
          Width = 241.889920000000000000
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
        object Memo69: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 124.724490000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama2"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 56.692950000000000000
          Width = 241.889920000000000000
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
        object Memo71: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 139.842610000000000000
          Width = 241.889920000000000000
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
            '[dbttd."nik2"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 782.362710000000000000
          Top = 45.354360000000000000
          Width = 241.889920000000000000
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
        object Memo73: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 782.362710000000000000
          Top = 124.724490000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama4"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 782.362710000000000000
          Top = 56.692950000000000000
          Width = 241.889920000000000000
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
        object Memo75: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 782.362710000000000000
          Top = 139.842610000000000000
          Width = 241.889920000000000000
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
            '[dbttd."nik4"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897637800000000000
        Top = 332.598640000000000000
        Width = 1046.929810000000000000
        Condition = 'db0."kodemodtipe"'
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Width = 279.685220000000000000
          Height = 15.118107800000000000
          DataSet = dbaruskas1
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db0."modtipe"]')
          ParentFont = False
        end
        object db0kodemodtipe: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 34.015770000000000000
          Width = 30.236220470000000000
          Height = 15.118107800000000000
          DataField = 'kodemodtipe'
          DataSet = dblaruskas
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db0."kodemodtipe"]')
          ParentFont = False
        end
        object Line38: TfrxLineView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Height = 18.897637795275600000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line39: TfrxLineView
          AllowVectorExport = True
          Left = 1043.150280000000000000
          Height = 18.897637795275600000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line40: TfrxLineView
          AllowVectorExport = True
          Left = 812.598950000000000000
          Height = 18.897637795275600000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line41: TfrxLineView
          AllowVectorExport = True
          Left = 699.213050000000000000
          Height = 18.897637795275600000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line42: TfrxLineView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Height = 18.897637795275600000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line43: TfrxLineView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Height = 18.897637795275600000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line44: TfrxLineView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Height = 18.897637795275600000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line72: TfrxLineView
          AllowVectorExport = True
          Height = 18.897637795275600000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 411.968770000000000000
        Width = 1046.929810000000000000
        object Line52: TfrxLineView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Height = 22.677165354330700000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line53: TfrxLineView
          AllowVectorExport = True
          Left = 1043.150280000000000000
          Height = 22.677165354330700000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line54: TfrxLineView
          AllowVectorExport = True
          Left = 812.598950000000000000
          Height = 22.677165354330700000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line55: TfrxLineView
          AllowVectorExport = True
          Left = 699.213050000000000000
          Height = 22.677165354330700000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line56: TfrxLineView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Height = 22.677165354330700000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line57: TfrxLineView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Height = 22.677165354330700000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line58: TfrxLineView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Height = 22.677165354330700000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line59: TfrxLineView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 3.779530000000000000
          Width = 978.898270000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 3.779530000000000000
          Width = 279.685220000000000000
          Height = 15.118120000000000000
          DataSet = dbaruskas1
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'JUMLAH')
          ParentFont = False
        end
        object Line68: TfrxLineView
          AllowVectorExport = True
          Height = 22.677165354330700000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object db0jml1sum: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskas
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<db0."jumlah">,masterdata2)]')
          ParentFont = False
        end
        object db0jmlsd1sum: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 480.000310000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskas
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<db0."jumlahsd">,masterdata2)]')
          ParentFont = False
        end
        object db0anggaraninisum: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskas
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<db0."anggaranini">,masterdata2)]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 702.992580000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskas
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<db0."anggaransdini">,masterdata2)]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 812.598950000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskas
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<SUM(<db0."jumlah">,masterdata2)>-<SUM(<db0."anggaranini">,mast' +
              'erdata2)>]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 929.764380000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataSet = dblaruskas
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<SUM(<db0."jumlahsd">,masterdata2)>-<SUM(<db0."anggaransdini">,' +
              'masterdata2)>]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 158.740260000000000000
        Width = 1046.929810000000000000
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Width = 1043.150280000000000000
          Height = 37.795300000000000000
          Fill.BackColor = 13231816
          Frame.Typ = []
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 18.897650000000000000
          Width = 684.094930000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 18.897650000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 812.598950000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 1043.150280000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 699.213050000000000000
          Top = 18.897650000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Top = 18.897650000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Width = 219.212740000000000000
          Height = 15.118120000000000000
          DataSet = dbaruskas1
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'REALISASI')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Width = 219.212740000000000000
          Height = 15.118120000000000000
          DataSet = dbaruskas1
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ANGGARAN')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 816.378480000000000000
          Width = 222.992270000000000000
          Height = 15.118120000000000000
          DataSet = dbaruskas1
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SELISIH')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 7.559060000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DataSet = dbaruskas1
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'URAIAN')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataSet = dbaruskas1
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BULAN INI')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Top = 18.897650000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DataSet = dbaruskas1
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'S/D BULAN INI')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 18.897650000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataSet = dbaruskas1
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BULAN INI')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 702.992580000000000000
          Top = 18.897650000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataSet = dbaruskas1
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'S/D BULAN INI')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 816.378480000000000000
          Top = 18.897650000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataSet = dbaruskas1
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BULAN INI')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 929.764380000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataSet = dbaruskas1
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'S/D BULAN INI')
          ParentFont = False
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 496
    Top = 136
  end
  object Qaruskas: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT a.*,b.namatipe,CONCAT(CAST(idtipearuskas AS CHAR CHARACTE' +
        'R SET latin1),CAST("-" AS CHAR CHARACTER SET latin1),namatipe) A' +
        'S gr '
      
        'FROM (SELECT SUM(saldo2) AS selisih,"-1" AS idtipe3,"LABA / RUGI' +
        ' PERIODE BERJALAN" AS tipe3,"1" AS idtipearuskas FROM labarugi W' +
        'HERE periode=:periode '
      'UNION ALL'
      'SELECT '
      
        'IF(tipetambah="D",(SUM(saldo-saldolalu))*-1,SUM(saldo-saldolalu)' +
        ') AS selisih'
      ',idtipe3,tipe3,`idtipearuskas`'
      ' FROM neraca a LEFT JOIN masterakun b ON a.`idcoa`=b.`idcoa`'
      
        ' WHERE periode=:periode AND tipe3 NOT LIKE "%KAS%" AND b.`idcoa`' +
        ' NOT IN (SELECT idcoaselisihlr FROM pengaturan)'
      'GROUP BY idtipe3'
      'UNION ALL'
      
        'SELECT SUM(saldolalu) AS saldolalu,idtipe3,"SALDO KAS PERIODE SE' +
        'BELUMNYA",idtipearuskas'
      'FROM neraca a LEFT JOIN masterakun b ON a.`idcoa`=b.`idcoa`'
      'WHERE tipe3 LIKE "%KAS%" AND periode=:periode'
      'ORDER BY `idtipearuskas`,idtipe3)'
      'a LEFT JOIN tipearuskas b ON a.idtipearuskas=b.`id`')
    SQLLock.Strings = (
      'CALL `viewlapak`("admin")')
    Connection = dm.Conn1
    SQL.Strings = (
      'CALL `viewlapak`(:nmuser)')
    Options.FieldOrigins = foNone
    Left = 560
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmuser'
        Value = nil
      end>
  end
  object Daruskas: TMyDataSource
    DataSet = Qaruskas
    Left = 488
    Top = 216
  end
  object Qex: TMyQuery
    Connection = dm.Conn1
    Left = 432
    Top = 208
  end
  object Qcek: TMyQuery
    Connection = dm.Conn1
    Left = 304
    Top = 424
  end
  object Qmaster: TMyQuery
    Connection = dm.Conn1
    Left = 384
    Top = 208
  end
  object frxReport1: TfrxReport
    Version = '6.9.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42940.384421539400000000
    ReportOptions.LastChange = 45112.733337708330000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure MasterData2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<db0."flagheader">='#39'1'#39') then'
      '  begin'
      '    Memo14.font.Style := fsbold;'
      '    Memo15.text := '#39#39';'
      '    Memo15.font.Style := fsbold;'
      '    line7.visible:=false;'
      '  end'
      '  else'
      '  begin'
      '    Memo15.text := '#39'[db0."jumlah"]'#39';'
      '    Memo14.font.Style := 0;'
      '    Memo15.font.Style := 0;'
      '    line7.visible:=false;'
      '  end;'
      ''
      '  if (<db0."flagheader">='#39'2'#39') then'
      '  begin'
      '    Memo14.font.Style := fsbold;'
      '    Memo15.font.Style := fsbold;'
      '    line7.visible:=true;'
      '  end;'
      'end;'
      ''
      'procedure ColumnHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 225
    Top = 360
    Datasets = <
      item
        DataSet = dbaruskas1
        DataSetName = 'db0'
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 154.960730000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line29: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 83.590600000000000000
          Width = 706.772110000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 4.000000000000000000
        end
        object Line30: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 88.370130000000000000
          Width = 706.772110000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 68.031540000000000000
          Frame.Typ = []
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 97.708720000000000000
          Width = 695.433520000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LAPORAN ARUS KAS METODE TIDAK LANGSUNG')
          ParentFont = False
        end
        object header1: TfrxMemoView
          AllowVectorExport = True
          Left = 73.456710000000000000
          Top = 3.779530000000000000
          Width = 619.842920000000000000
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
          Left = 73.456710000000000000
          Top = 22.897650000000000000
          Width = 619.842920000000000000
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
        object alamat1: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 41.574830000000000000
          Width = 619.842920000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'KOTA PROBOLINGGO')
          ParentFont = False
        end
        object alamat2: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 54.692950000000000000
          Width = 619.842920000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'KOTA PROBOLINGGO')
          ParentFont = False
        end
        object periode: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 116.047310000000000000
          Width = 695.433520000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LAPORAN KAS MASUK')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 3.779530000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'ColumnHeader1OnBeforePrint'
        object Line1: TfrxLineView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897640240000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData2OnBeforePrint'
        DataSet = dbaruskas1
        DataSetName = 'db0'
        RowCount = 0
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 370.393940000000000000
          Height = 15.118110240000000000
          DataSet = dbaruskas1
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db0."nama"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 3.779530000000000000
          Width = 226.771800000000000000
          Height = 15.118110240000000000
          DataSet = dbaruskas2
          DataSetName = 'db1'
          DisplayFormat.FormatStr = '#,##0.##;(#,##0.##);0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db0."jumlah"]')
          ParentFont = False
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Width = 264.567100000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 188.976500000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
        object tanggalbawah: TfrxMemoView
          AllowVectorExport = True
          Left = 538.268090000000000000
          Top = 18.897650000000000000
          Width = 173.858267720000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 185.196970000000000000
          Top = 41.574830000000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."header2"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 185.196970000000000000
          Top = 154.960730000000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama2"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 185.196970000000000000
          Top = 60.472480000000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
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
          Left = 185.196970000000000000
          Top = 170.078850000000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nik2"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 41.574830000000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."header4"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 154.960730000000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama4"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 60.472480000000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."jab4"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 170.078850000000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nik4"]')
          ParentFont = False
        end
        object dbttdheader1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 41.574830000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'header1'
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."header1"]')
          ParentFont = False
        end
        object dbttdnama1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 154.960730000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DataField = 'nama1'
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama1"]')
          ParentFont = False
        end
        object dbttdjab1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 60.472480000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'jab1'
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."jab1"]')
          ParentFont = False
        end
        object dbttdnik1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 170.078850000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DataField = 'nik1'
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nik1"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 41.574830000000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."header3"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 154.960730000000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nama3"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 60.472480000000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."jab3"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 170.078850000000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          DataSet = dm.dbttd
          DataSetName = 'dbttd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbttd."nik3"]')
          ParentFont = False
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        Frame.Typ = []
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Width = 264.567100000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 354
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
    Left = 434
    Top = 157
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 27
    Top = 227
  end
  object Qlaruskas: TMyQuery
    SQLRefresh.Strings = (
      'CALL view_lapak_mut(:periode)')
    Connection = dm.Conn1
    SQL.Strings = (
      'CALL view_lapak_mut(202301)')
    Options.FieldOrigins = foNone
    Left = 786
    Top = 405
  end
  object Qlaruskasawal: TMyQuery
    SQLRefresh.Strings = (
      'CALL view_lapak_sa(:periode)')
    Connection = dm.Conn1
    SQL.Strings = (
      'CALL view_lapak_sa(202301)')
    Options.FieldOrigins = foNone
    Left = 762
    Top = 341
  end
  object dblaruskas: TfrxDBDataset
    UserName = 'db0'
    CloseDataSource = False
    DataSet = Qlaruskas
    BCDToCurrency = False
    Left = 872
    Top = 360
  end
  object dblaruskasawal: TfrxDBDataset
    UserName = 'db1'
    CloseDataSource = False
    DataSet = Qlaruskasawal
    BCDToCurrency = False
    Left = 848
    Top = 304
  end
end
