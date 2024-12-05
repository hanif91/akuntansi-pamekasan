object fotambahju: Tfotambahju
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fotambahju'
  ClientHeight = 569
  ClientWidth = 659
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
    Width = 659
    Height = 569
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 655
      Height = 565
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
        Caption = 'Tambah Jurnal Umum (Memorial)'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 655
          Height = 546
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          object cxGrid1: TcxGrid
            Left = 7
            Top = 225
            Width = 641
            Height = 275
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
              OnEditKeyDown = cxGrid1DBTableView1EditKeyDown
              DataController.DataSource = MyDataSource1
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,##0.##'
                  Kind = skSum
                  FieldName = 'debet'
                  Column = cxGrid1DBTableView1debet
                end
                item
                  Format = '#,##0.##'
                  Kind = skSum
                  FieldName = 'kredit'
                  Column = cxGrid1DBTableView1kredit
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Appending = True
              OptionsData.CancelOnExit = False
              OptionsData.DeletingConfirmation = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.Footer = dm.bold8
              Styles.Header = dm.bold8
              object cxGrid1DBTableView1RecId: TcxGridDBColumn
                DataBinding.FieldName = 'RecId'
                Visible = False
              end
              object cxGrid1DBTableView1kodeakun: TcxGridDBColumn
                Caption = 'Kode'
                DataBinding.FieldName = 'kodeakun'
                HeaderAlignmentHorz = taCenter
                Options.Filtering = False
                Options.Sorting = False
                Width = 84
              end
              object cxGrid1DBTableView1kodeunit: TcxGridDBColumn
                Caption = 'Unit'
                DataBinding.FieldName = 'kodeunit'
                Options.Filtering = False
                Options.Sorting = False
                Width = 54
              end
              object cxGrid1DBTableView1namaakun: TcxGridDBColumn
                Caption = 'Keterangan'
                DataBinding.FieldName = 'namaakun'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 318
              end
              object cxGrid1DBTableView1jenis: TcxGridDBColumn
                Caption = 'J'
                DataBinding.FieldName = 'jenis'
                Visible = False
                Width = 31
              end
              object cxGrid1DBTableView1debet: TcxGridDBColumn
                Caption = 'Debet'
                DataBinding.FieldName = 'debet'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 3
                Properties.DisplayFormat = '#,##0.###'
                Properties.EditFormat = '#,##0.###'
                Properties.UseThousandSeparator = True
                HeaderAlignmentHorz = taCenter
                Options.Filtering = False
                Options.Sorting = False
                Width = 85
              end
              object cxGrid1DBTableView1kredit: TcxGridDBColumn
                Caption = 'Kredit'
                DataBinding.FieldName = 'kredit'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 3
                Properties.DisplayFormat = '#,##0.###'
                Properties.EditFormat = '#,##0.###'
                Properties.UseThousandSeparator = True
                HeaderAlignmentHorz = taCenter
                Options.Filtering = False
                Options.Sorting = False
                Width = 86
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object cxGroupBox1: TcxGroupBox
            Left = 8
            Top = 4
            ParentBackground = False
            TabOrder = 1
            Height = 222
            Width = 640
            object cxLabel1: TcxLabel
              Left = 5
              Top = 41
              Caption = 'No. Jurnal'
              Transparent = True
            end
            object notrans: TcxTextEdit
              Left = 81
              Top = 39
              BeepOnEnter = False
              Properties.ReadOnly = True
              TabOrder = 1
              OnKeyPress = notransKeyPress
              Width = 145
            end
            object cxLabel2: TcxLabel
              Left = 5
              Top = 69
              Caption = 'Uraian'
              Transparent = True
            end
            object uraian: TcxMemo
              Left = 81
              Top = 69
              Properties.CharCase = ecUpperCase
              Properties.MaxLength = 155
              Properties.ScrollBars = ssVertical
              TabOrder = 2
              OnKeyPress = uraianKeyPress
              Height = 55
              Width = 547
            end
            object cxLabel3: TcxLabel
              Left = 5
              Top = 129
              Caption = 'Penjelasan'
              Transparent = True
            end
            object cxLabel4: TcxLabel
              Left = 5
              Top = 12
              Caption = 'Tanggal'
              Transparent = True
            end
            object tanggal: TcxDateEdit
              Left = 81
              Top = 12
              BeepOnEnter = False
              Properties.DisplayFormat = 'dd mmmm yyyy'
              Properties.EditFormat = 'dd mmmm yyyy'
              Properties.OnChange = tanggalPropertiesChange
              TabOrder = 0
              OnKeyPress = tanggalKeyPress
              Width = 145
            end
            object penjelasan: TcxMemo
              Left = 81
              Top = 129
              Properties.CharCase = ecUpperCase
              Properties.MaxLength = 155
              Properties.ScrollBars = ssBoth
              Properties.WantReturns = False
              TabOrder = 3
              OnKeyPress = penjelasanKeyPress
              Height = 81
              Width = 547
            end
          end
          object cxGroupBox2: TcxGroupBox
            Left = 7
            Top = 498
            PanelStyle.Active = True
            TabOrder = 2
            Height = 38
            Width = 641
            object cxButton1: TcxButton
              Left = 468
              Top = 3
              Width = 85
              Height = 32
              Align = alRight
              Caption = '&Simpan'
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = dm.img24
              TabOrder = 0
              OnClick = cxButton1Click
            end
            object cxButton2: TcxButton
              Left = 553
              Top = 3
              Width = 85
              Height = 32
              Align = alRight
              Caption = '&Batal'
              OptionsImage.ImageIndex = 2
              OptionsImage.Images = dm.img24
              TabOrder = 1
              OnClick = cxButton2Click
            end
          end
        end
      end
    end
  end
  object Qcek: TMyQuery
    Connection = dm.Conn1
    Left = 232
    Top = 352
  end
  object MyDataSource1: TMyDataSource
    DataSet = dxMemData1
    Left = 176
    Top = 320
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 192
    Top = 304
    object dxMemData1kodeakun: TStringField
      FieldName = 'kodeakun'
      EditMask = '##.##.##;1; '
      Size = 8
    end
    object dxMemData1namaakun: TStringField
      FieldName = 'namaakun'
      Size = 75
    end
    object dxMemData1jenis: TStringField
      FieldName = 'jenis'
      Size = 2
    end
    object dxMemData1kredit: TCurrencyField
      FieldName = 'kredit'
      DisplayFormat = '#,##0.###'
      EditFormat = '#,##0.##'
    end
    object dxMemData1debet: TCurrencyField
      FieldName = 'debet'
      DisplayFormat = '#,##0.###'
      EditFormat = '#,##0.###'
    end
    object dxMemData1idcoa: TIntegerField
      FieldName = 'idcoa'
    end
    object dxMemData1kodeunit: TStringField
      FieldName = 'kodeunit'
      Size = 10
    end
  end
  object ActionList1: TActionList
    Left = 368
    Top = 304
    object esc: TAction
      Caption = 'esc'
      ShortCut = 27
      OnExecute = escExecute
    end
  end
end
