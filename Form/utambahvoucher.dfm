object fotambahvoucher: Tfotambahvoucher
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fotambahju'
  ClientHeight = 637
  ClientWidth = 748
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
    Width = 748
    Height = 637
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 744
      Height = 633
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
      ExplicitLeft = 0
      ExplicitTop = 0
      FixedDimension = 19
      object TabSheet1: TRzTabSheet
        Color = 52479
        Caption = 'Tambah Voucher'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 744
          Height = 614
          Align = alClient
          BorderOuter = fsFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object cxGrid1: TcxGrid
            Left = 7
            Top = 280
            Width = 729
            Height = 282
            TabOrder = 0
            object cxGrid1DBTableView1: TcxGridDBTableView
              OnKeyDown = cxGrid1DBTableView1KeyDown
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
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderAutoHeight = True
              OptionsView.Indicator = True
              Styles.Footer = dm.cxStyle1
              Styles.Header = dm.cxStyle1
              object cxGrid1DBTableView1RecId: TcxGridDBColumn
                DataBinding.FieldName = 'RecId'
                Visible = False
              end
              object cxGrid1DBTableView1kodeakun: TcxGridDBColumn
                Caption = 'Kode Perkiraan'
                DataBinding.FieldName = 'kodeakun'
                HeaderAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringWithFindPanel = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.Sorting = False
                Width = 90
              end
              object cxGrid1DBTableView1kodeunit: TcxGridDBColumn
                Caption = 'Kode Unit'
                DataBinding.FieldName = 'kodeunit'
                MinWidth = 40
                Options.Filtering = False
                Options.FilteringWithFindPanel = False
                Options.Focusing = False
                Options.IgnoreTimeForFiltering = False
                Options.IncSearch = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                Options.HorzSizing = False
                Options.Moving = False
                Options.Sorting = False
                Width = 40
              end
              object cxGrid1DBTableView1namaakun: TcxGridDBColumn
                Caption = 'Keterangan'
                DataBinding.FieldName = 'namaakun'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringWithFindPanel = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.Sorting = False
                Width = 380
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
                Properties.DecimalPlaces = 2
                Properties.DisplayFormat = '#,##0.###'
                Properties.EditFormat = '#,##0.###'
                Properties.UseThousandSeparator = True
                HeaderAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.Sorting = False
                Width = 104
              end
              object cxGrid1DBTableView1kredit: TcxGridDBColumn
                Caption = 'Kredit'
                DataBinding.FieldName = 'kredit'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 2
                Properties.DisplayFormat = '#,##0.###'
                Properties.EditFormat = '#,##0.###'
                Properties.UseThousandSeparator = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Focusing = False
                Options.Sorting = False
                Width = 101
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object cxGroupBox1: TcxGroupBox
            Left = 7
            Top = 8
            ParentBackground = False
            TabOrder = 1
            Height = 225
            Width = 729
            object cxLabel1: TcxLabel
              Left = 275
              Top = 10
              Caption = 'No. Voucher'
              Transparent = True
            end
            object notrans: TcxTextEdit
              Left = 371
              Top = 9
              BeepOnEnter = False
              Properties.ReadOnly = True
              TabOrder = 1
              OnKeyPress = notransKeyPress
              Width = 145
            end
            object cxLabel2: TcxLabel
              Left = 11
              Top = 41
              Caption = 'Uraian'
              Transparent = True
            end
            object cxLabel3: TcxLabel
              Left = 11
              Top = 73
              Caption = 'Penjelasan'
              Transparent = True
            end
            object cxLabel4: TcxLabel
              Left = 11
              Top = 14
              Caption = 'Tanggal'
              Transparent = True
            end
            object tanggal: TcxDateEdit
              Left = 107
              Top = 9
              BeepOnEnter = False
              Properties.DisplayFormat = 'dd mmmm yyyy'
              Properties.EditFormat = 'dd mmmm yyyy'
              Properties.OnChange = tanggalPropertiesChange
              Properties.OnCloseUp = tanggalPropertiesCloseUp
              TabOrder = 0
              OnKeyPress = tanggalKeyPress
              Width = 145
            end
            object penjelasan: TcxMemo
              Left = 107
              Top = 73
              Properties.CharCase = ecUpperCase
              Properties.MaxLength = 0
              Properties.ScrollBars = ssBoth
              Properties.WantReturns = False
              TabOrder = 3
              OnKeyPress = penjelasanKeyPress
              Height = 81
              Width = 610
            end
            object cxLabel5: TcxLabel
              Left = 11
              Top = 160
              Caption = 'Dibebankan Ke'
              Transparent = True
            end
            object cxLabel6: TcxLabel
              Left = 11
              Top = 191
              Caption = 'Dibayarkan Ke'
              Transparent = True
            end
            object cxComboBox1: TcxComboBox
              Left = 107
              Top = 160
              BeepOnEnter = False
              Properties.DropDownListStyle = lsFixedList
              TabOrder = 4
              OnKeyPress = cxComboBox1KeyPress
              Width = 320
            end
            object cxComboBox2: TcxComboBox
              Left = 107
              Top = 190
              BeepOnEnter = False
              Properties.DropDownListStyle = lsFixedList
              TabOrder = 5
              OnKeyPress = cxComboBox2KeyPress
              Width = 320
            end
            object cxTextEdit1: TcxTextEdit
              Left = 476
              Top = 191
              BeepOnEnter = False
              TabOrder = 6
              Text = 'cxTextEdit1'
              OnKeyPress = cxTextEdit1KeyPress
              Width = 241
            end
            object cxLabel7: TcxLabel
              Left = 446
              Top = 192
              Caption = 'A/n'
              Transparent = True
            end
            object uraian: TcxTextEdit
              Left = 107
              Top = 41
              BeepOnEnter = False
              Properties.OnChange = uraianPropertiesChange
              TabOrder = 2
              OnKeyPress = uraianKeyPress
              Width = 610
            end
            object cxLabel8: TcxLabel
              Left = 446
              Top = 160
              Caption = 'Jenis Pengel.'
              Transparent = True
            end
            object cxComboBox3: TcxComboBox
              Left = 530
              Top = 160
              BeepOnEnter = False
              Properties.DropDownListStyle = lsFixedList
              Properties.OnChange = cxComboBox3PropertiesChange
              TabOrder = 15
              OnKeyPress = cxComboBox3KeyPress
              Width = 187
            end
            object cxComboBox4: TcxComboBox
              Left = 538
              Top = 11
              BeepOnEnter = False
              Properties.DropDownListStyle = lsFixedList
              TabOrder = 16
              Visible = False
              OnKeyPress = cxComboBox1KeyPress
              Width = 187
            end
          end
          object cxGroupBox2: TcxGroupBox
            Left = 7
            Top = 568
            PanelStyle.Active = True
            TabOrder = 2
            Height = 41
            Width = 729
            object cxButton1: TcxButton
              Left = 556
              Top = 3
              Width = 85
              Height = 35
              Align = alRight
              Caption = '&Simpan'
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = dm.img24
              TabOrder = 0
              OnClick = cxButton1Click
            end
            object cxButton2: TcxButton
              Left = 641
              Top = 3
              Width = 85
              Height = 35
              Align = alRight
              Caption = '&Batal'
              OptionsImage.ImageIndex = 2
              OptionsImage.Images = dm.img24
              TabOrder = 1
              OnClick = cxButton2Click
            end
          end
          object RzPanel2: TRzPanel
            Left = 7
            Top = 239
            Width = 729
            Height = 41
            BorderOuter = fsNone
            Color = 11355278
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8701825
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            object RzLabel1: TRzLabel
              Left = 446
              Top = 9
              Width = 198
              Height = 19
              Caption = 'F9 = Hutang Non Usaha '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8421631
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RzLabel2: TRzLabel
              Left = 272
              Top = 9
              Width = 156
              Height = 19
              Caption = 'F8 = Hutang Usaha'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clLime
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RzLabel3: TRzLabel
              Left = 121
              Top = 9
              Width = 131
              Height = 19
              Caption = 'Pos Tandingan :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
      end
    end
  end
  object Qcek: TMyQuery
    Connection = dm.Conn1
    Left = 408
    Top = 136
  end
  object MyDataSource1: TMyDataSource
    DataSet = dxMemData1
    Left = 392
    Top = 48
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 512
    Top = 88
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
      DisplayFormat = '#,##0.##'
      EditFormat = '#,##0.##'
    end
    object dxMemData1debet: TCurrencyField
      FieldName = 'debet'
      DisplayFormat = '#,##0.##'
      EditFormat = '#,##0.##'
    end
    object dxMemData1idcoa: TIntegerField
      FieldName = 'idcoa'
    end
    object dxMemData1flagpostand: TSmallintField
      FieldName = 'flagpostand'
    end
    object dxMemData1kodeunit: TStringField
      FieldName = 'kodeunit'
      Size = 3
    end
  end
  object ActionList1: TActionList
    Left = 560
    Top = 336
    object esc: TAction
      Caption = 'esc'
      ShortCut = 27
      OnExecute = escExecute
    end
  end
end
