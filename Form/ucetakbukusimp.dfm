object focetakbukusimp: Tfocetakbukusimp
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Cetak Buku Simpanan'
  ClientHeight = 158
  ClientWidth = 316
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object RzPanel4: TRzPanel
    Left = 0
    Top = 0
    Width = 316
    Height = 158
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 312
      Height = 154
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
      FixedDimension = 22
      object TabSheet1: TRzTabSheet
        Color = 52479
        Caption = 'Buku Simpanan Anggota'
        object RzPanel1bukusimp: TRzPanel
          Left = 0
          Top = 0
          Width = 312
          Height = 132
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          DesignSize = (
            312
            132)
          object btnsimpan: TRzToolButton
            Left = 99
            Top = 61
            Width = 131
            Height = 44
            GradientColorStyle = gcsCustom
            SelectionColorStart = 3927039
            SelectionColorStop = 7457838
            SelectionFrameColor = 52479
            ImageIndex = 19
            Images = dm.img24
            ShowCaption = True
            Transparent = False
            UseToolbarShowCaption = False
            UseToolbarVisualStyle = False
            VisualStyle = vsGradient
            Anchors = [akTop, akRight]
            Caption = '&Tampilkan'
            Color = 2250751
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btnsimpanClick
            ExplicitLeft = 91
          end
          object cxDBLookupComboBox1: TcxDBLookupComboBox
            Left = 91
            Top = 23
            DataBinding.DataField = 'idanggota'
            DataBinding.DataSource = dm.Danggota_dbl
            Properties.DropDownAutoSize = True
            Properties.DropDownListStyle = lsFixedList
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
            TabOrder = 0
            Width = 198
          end
          object cxLabel1: TcxLabel
            Left = 7
            Top = 24
            Caption = 'Pilih Anggota'
            Transparent = True
          end
        end
      end
    end
  end
  object Bukusimpanan: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43201.372387222200000000
    ReportOptions.LastChange = 43320.386380949070000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      ''
      'begin'
      ''
      'end.')
    Left = 248
    Top = 104
    Datasets = <
      item
        DataSet = db0
        DataSetName = 'db0'
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
      Columns = 1
      ColumnWidth = 300.000000000000000000
      ColumnPositions.Strings = (
        '0')
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 54.624150000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Left = 5.059060000000000000
          Top = 1.710730000000000000
          Width = 708.913730000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Left = 5.059060000000000000
          Top = 54.624150000000000000
          Width = 707.913730000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          Left = 714.222790000000000000
          Top = 1.710730000000000000
          Height = 52.913420000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          Left = 5.059060000000000000
          Top = 1.710730000000000000
          Height = 52.913420000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 80.649660000000000000
          Top = 1.710730000000000000
          Height = 52.913420000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          Left = 80.649660000000000000
          Top = 28.167440000000000000
          Width = 409.921460000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line7: TfrxLineView
          Left = 190.240260000000000000
          Top = 28.167440000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          Left = 295.389920000000000000
          Top = 28.167440000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          Left = 390.980520000000000000
          Top = 28.167440000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          Left = 624.059370000000000000
          Top = 1.710730000000000000
          Height = 52.913420000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          Left = 491.571120000000000000
          Top = 1.710730000000000000
          Height = 52.913420000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo18: TfrxMemoView
          Left = 8.838590000000000000
          Top = 12.269790000000000000
          Width = 68.031540000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'TANGGAL TRX')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 118.444960000000000000
          Top = 5.490260000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'SIMPANAN')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 84.429190000000000000
          Top = 31.946970000000000000
          Width = 100.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'POKOK')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 195.019790000000000000
          Top = 31.946970000000000000
          Width = 92.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'WAJIB')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 299.169450000000000000
          Top = 31.946970000000000000
          Width = 87.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'MANASUKA')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 397.760050000000000000
          Top = 31.946970000000000000
          Width = 88.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'LAINNYA')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 499.350650000000000000
          Top = 20.608380000000000000
          Width = 117.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'SALDO')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 635.088900000000000000
          Top = 20.608380000000000000
          Width = 71.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'PARAF')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 32.236240000000000000
        Top = 336.378170000000000000
        Width = 718.110700000000000000
        DataSet = db0
        DataSetName = 'db0'
        RowCount = 0
        object Line23: TfrxLineView
          Left = 4.913385826771650000
          Height = 32.125984250000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line24: TfrxLineView
          Left = 80.503937007874000000
          Height = 32.125984250000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line25: TfrxLineView
          Left = 190.110236220472000000
          Height = 32.125984250000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line26: TfrxLineView
          Left = 295.559055118110000000
          Height = 32.125984250000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line27: TfrxLineView
          Left = 390.803149610000000000
          Height = 32.125984250000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line28: TfrxLineView
          Left = 491.716535433071000000
          Height = 32.125984250000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line29: TfrxLineView
          Left = 624.000000000000000000
          Height = 32.125984250000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          Left = 714.330708661417000000
          Height = 32.125984250000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object db0tglmutasi: TfrxMemoView
          Left = 7.338590000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = db0
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[db0."tgltrx"]')
          ParentFont = False
        end
        object db0simppokok: TfrxMemoView
          Left = 86.929190000000000000
          Top = 3.779530000000000000
          Width = 99.031540000000000000
          Height = 18.897650000000000000
          DataField = 'simppokok'
          DataSet = db0
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##;(#,##0.##)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[db0."simppokok"]')
          ParentFont = False
        end
        object db0simpmanasuka: TfrxMemoView
          Left = 299.669450000000000000
          Top = 3.779530000000000000
          Width = 87.031540000000000000
          Height = 18.897650000000000000
          DataField = 'simpmanasuka'
          DataSet = db0
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##;(#,##0.##)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[db0."simpmanasuka"]')
          ParentFont = False
        end
        object db0simphariraya: TfrxMemoView
          Left = 394.260050000000000000
          Top = 3.779530000000000000
          Width = 95.031540000000000000
          Height = 18.897650000000000000
          DataSet = db0
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##;(#,##0.##)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[<db0."simphariraya">+<db0."simplain">]')
          ParentFont = False
        end
        object db0saldo: TfrxMemoView
          Left = 496.850650000000000000
          Top = 3.779530000000000000
          Width = 124.929190000000000000
          Height = 18.897650000000000000
          DataField = 'saldo'
          DataSet = db0
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##;(#,##0.##)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[db0."saldo"]')
          ParentFont = False
        end
        object Line40: TfrxLineView
          Left = 5.416202860000000000
          Top = 32.236240000000000000
          Width = 708.342301430000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object db0simpwajib: TfrxMemoView
          Left = 193.805504290000000000
          Top = 3.779527560000000000
          Width = 96.590600000000000000
          Height = 18.897650000000000000
          DataSet = db0
          DataSetName = 'db0'
          DisplayFormat.FormatStr = '#,##0.##;(#,##0.##)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[db0."simpwajib"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 177.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 2.500000000000000000
          Top = 81.002128230000000000
          Width = 751.772110000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'KARTU SIMPANAN ANGGOTA')
          ParentFont = False
        end
        object header2: TfrxMemoView
          Left = 74.177180000000000000
          Top = 19.970470000000000000
          Width = 634.961040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KOTA PROBOLINGGO')
          ParentFont = False
        end
        object alamat1: TfrxMemoView
          Left = 74.311070000000000000
          Top = 37.647650000000000000
          Width = 634.961040000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            'KOTA PROBOLINGGO')
          ParentFont = False
        end
        object alamat2: TfrxMemoView
          Left = 74.311070000000000000
          Top = 50.765770000000000000
          Width = 634.961040000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            'KOTA PROBOLINGGO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 1.250000000000000000
          Top = 111.102350000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            'KODE ANGGOTA')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 1.250000000000000000
          Top = 129.202690000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            'NAMA ANGGOTA')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 1.250000000000000000
          Top = 148.897650000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            'ALAMAT')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 122.194960000000000000
          Top = 111.102350000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 122.194960000000000000
          Top = 129.202690000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 122.194960000000000000
          Top = 148.897650000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object db0namaanggota: TfrxMemoView
          Left = 144.872140000000000000
          Top = 130.000000000000000000
          Width = 381.732530000000000000
          Height = 18.897650000000000000
          DataField = 'namaanggota'
          DataSet = db0
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[db0."namaanggota"]')
          ParentFont = False
        end
        object db0alamat: TfrxMemoView
          Left = 144.872140000000000000
          Top = 148.897650000000000000
          Width = 381.732530000000000000
          Height = 18.897650000000000000
          DataSet = db0
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[db0."alamat"]')
          ParentFont = False
        end
        object db0kodeanggota: TfrxMemoView
          Left = 144.872140000000000000
          Top = 111.102350000000000000
          Width = 381.732530000000000000
          Height = 18.897650000000000000
          DataField = 'kodeanggota'
          DataSet = db0
          DataSetName = 'db0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[db0."kodeanggota"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 2.500000000000000000
          Top = 0.852350000000000000
          Width = 68.031540000000000000
          Height = 68.031540000000000000
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object header1: TfrxMemoView
          Left = 74.177180000000000000
          Top = 0.852350000000000000
          Width = 634.961040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PERUSAHAAN DAERAH AIR MINUM')
          ParentFont = False
        end
      end
    end
  end
  object db0: TfrxDBDataset
    UserName = 'db0'
    CloseDataSource = False
    DataSet = dxMemData1
    BCDToCurrency = False
    Left = 264
    Top = 64
  end
  object Qlap: TMyQuery
    SQLRefresh.Strings = (
      'CALL bukusimpanggota(:id)')
    Connection = dm.Conn1
    SQL.Strings = (
      'CALL bukusimpanggota(1)')
    Left = 280
    Top = 64
  end
  object dxMemData1: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 34
    Top = 88
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
    Left = 162
    Top = 85
  end
  object ActionList1: TActionList
    Left = 90
    Top = 69
    object F7: TAction
      Caption = 'F7'
      ShortCut = 118
      OnExecute = F7Execute
    end
  end
end
