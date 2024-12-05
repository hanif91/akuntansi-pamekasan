object fotambahkaskeluar: Tfotambahkaskeluar
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Tambah Transaksi Kas Keluar'
  ClientHeight = 453
  ClientWidth = 316
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel4: TRzPanel
    Left = 0
    Top = 0
    Width = 316
    Height = 453
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
      Height = 449
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
        Caption = 'Kas Keluar Untuk'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 312
          Height = 430
          Align = alClient
          BorderOuter = fsFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 10485760
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object btnnext: TRzToolButton
            Left = 162
            Top = 391
            Width = 111
            Height = 31
            GradientColorStyle = gcsCustom
            SelectionColorStart = 3927039
            SelectionColorStop = 7457838
            SelectionFrameColor = 52479
            Images = dm.img24
            ShowCaption = True
            Transparent = False
            UseToolbarShowCaption = False
            UseToolbarVisualStyle = False
            VisualStyle = vsGradient
            Caption = 'S&elanjutnya >>'
            Color = 2250751
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btnnextClick
          end
          object cxGrid1: TcxGrid
            Left = 10
            Top = 154
            Width = 263
            Height = 231
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
              DataController.DataSource = MyDataSource1
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,##0.##'
                  Kind = skSum
                  FieldName = 'jumlah'
                  Column = cxGrid1DBTableView1jumlah
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.CancelOnExit = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsView.CellEndEllipsis = True
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
              object cxGrid1DBTableView1ket: TcxGridDBColumn
                Caption = 'Keterangan'
                DataBinding.FieldName = 'ket'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Options.Moving = False
                Options.Sorting = False
                Width = 170
              end
              object cxGrid1DBTableView1jumlah: TcxGridDBColumn
                Caption = 'Jumlah'
                DataBinding.FieldName = 'jumlah'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.EditFormat = '#,##0.##'
                Properties.UseThousandSeparator = True
                HeaderAlignmentHorz = taRightJustify
                Options.Filtering = False
                Options.Grouping = False
                Options.Moving = False
                Options.Sorting = False
                Width = 87
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object cxLabel7: TcxLabel
            Left = 10
            Top = 131
            Caption = 'Daftar Ket. Kas Keluar'
            ParentColor = False
            Style.Color = clBtnFace
            Style.TextStyle = [fsBold, fsUnderline]
          end
          object cxGroupBox1: TcxGroupBox
            Left = 10
            Top = 4
            Caption = 'Input Ket. Kas Keluar'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = 10485760
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold, fsUnderline]
            Style.IsFontAssigned = True
            TabOrder = 2
            Height = 121
            Width = 263
            object btnadd: TRzToolButton
              Left = 45
              Top = 71
              Width = 158
              Height = 38
              GradientColorStyle = gcsCustom
              SelectionColorStart = 52479
              SelectionColorStop = 52479
              SelectionFrameColor = 52479
              ImageIndex = 13
              Images = dm.img24
              ShowCaption = True
              Transparent = False
              UseToolbarShowCaption = False
              UseToolbarVisualStyle = False
              VisualStyle = vsGradient
              Caption = 'Tambahkan Ke Daftar'
              Color = 3927039
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8421440
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = btnaddClick
            end
            object cxCurrencyEdit1: TcxCurrencyEdit
              Left = 119
              Top = 40
              AutoSize = False
              ParentFont = False
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '#,##0.##'
              Properties.EditFormat = '#,##0.##'
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = 10485760
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 0
              OnKeyDown = cxCurrencyEdit1KeyDown
              Height = 27
              Width = 110
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox
              Left = 119
              Top = 13
              DataBinding.DataField = 'namaketkas'
              DataBinding.DataSource = D_ket
              ParentFont = False
              Properties.KeyFieldNames = 'namaketkas'
              Properties.ListColumns = <
                item
                  Caption = 'Keterangan'
                  FieldName = 'namaketkas'
                end>
              Properties.ListSource = D_kistket
              TabOrder = 1
              OnKeyDown = cxDBLookupComboBox1KeyDown
              Width = 140
            end
            object cxLabel4: TcxLabel
              Left = 5
              Top = 15
              Caption = 'Ket. Kas Keluar Untuk'
              ParentFont = False
            end
            object cxLabel5: TcxLabel
              Left = 68
              Top = 44
              Caption = 'Jumlah'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = 10485760
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
            end
          end
        end
      end
      object TabSheet2: TRzTabSheet
        Color = 52479
        Caption = 'Transaksi '
        object RzPanel2: TRzPanel
          Left = 0
          Top = 0
          Width = 312
          Height = 430
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          DesignSize = (
            312
            430)
          object btnsimpan: TRzToolButton
            Left = 208
            Top = 267
            Width = 97
            Height = 31
            GradientColorStyle = gcsCustom
            SelectionColorStart = 3927039
            SelectionColorStop = 7457838
            SelectionFrameColor = 52479
            ImageIndex = 6
            Images = dm.img24
            ShowCaption = True
            Transparent = False
            UseToolbarShowCaption = False
            UseToolbarVisualStyle = False
            VisualStyle = vsGradient
            Anchors = [akTop, akRight]
            Caption = '&Simpan'
            Color = 2250751
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btnsimpanClick
          end
          object btnkembali: TRzToolButton
            Left = 104
            Top = 267
            Width = 98
            Height = 31
            GradientColorStyle = gcsCustom
            SelectionColorStart = 3927039
            SelectionColorStop = 7457838
            SelectionFrameColor = 52479
            Images = dm.img24
            ShowCaption = True
            Transparent = False
            UseToolbarShowCaption = False
            UseToolbarVisualStyle = False
            VisualStyle = vsGradient
            Caption = '&Kembali'
            Color = 2250751
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btnkembaliClick
          end
          object cxButton1: TcxButton
            Left = 247
            Top = 16
            Width = 58
            Height = 20
            Caption = 'No. Auto'
            TabOrder = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = cxButton1Click
          end
          object cxTextEdit1: TcxTextEdit
            Left = 104
            Top = 16
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 1
            Text = 'cxTextEdit1'
            Width = 133
          end
          object cxLabel1: TcxLabel
            Left = 10
            Top = 14
            Caption = 'No. Trans'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxDateEdit1: TcxDateEdit
            Left = 104
            Top = 43
            Properties.OnValidate = cxDateEdit1PropertiesValidate
            TabOrder = 3
            Width = 133
          end
          object cxLabel2: TcxLabel
            Left = 10
            Top = 41
            Caption = 'Tanggal'
          end
          object cxComboBox1: TcxComboBox
            Left = 104
            Top = 70
            Properties.DropDownListStyle = lsFixedList
            TabOrder = 5
            Width = 133
          end
          object cxLabel6: TcxLabel
            Left = 10
            Top = 69
            Caption = 'Keluar Dari Kas'
          end
          object cxMemo1: TcxMemo
            Left = 104
            Top = 97
            Lines.Strings = (
              'cxMemo1')
            Properties.ScrollBars = ssVertical
            TabOrder = 7
            Height = 113
            Width = 201
          end
          object cxLabel3: TcxLabel
            Left = 10
            Top = 93
            Caption = 'Penjelasan'
          end
          object cxLabel8: TcxLabel
            Left = 10
            Top = 217
            AutoSize = False
            Caption = 'Total Kas Keluar'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.WordWrap = True
            Height = 40
            Width = 88
          end
          object cxLabel9: TcxLabel
            Left = 104
            Top = 219
            AutoSize = False
            Caption = 'Total Kas Masuk'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Height = 31
            Width = 201
            AnchorY = 235
          end
        end
      end
    end
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 186
    Top = 325
    object dxMemData1ket: TStringField
      FieldName = 'ket'
      Size = 50
    end
    object dxMemData1jumlah: TCurrencyField
      FieldName = 'jumlah'
      DisplayFormat = '#,##0.##'
    end
  end
  object MyDataSource1: TMyDataSource
    DataSet = dxMemData1
    Left = 48
    Top = 368
  end
  object Qket: TMyQuery
    SQLRefresh.Strings = (
      'select * from ketkas'
      'where tipe=:tipe;')
    Connection = dm.Conn1
    SQL.Strings = (
      'select * from ketkas'
      'where tipe="KELUAR"')
    Options.FieldOrigins = foNone
    Left = 26
    Top = 413
  end
  object Qlistket: TMyQuery
    SQLRefresh.Strings = (
      'select * from ketkas'
      'where tipe=:tipe;')
    Connection = dm.Conn1
    SQL.Strings = (
      'select * from ketkas'
      'where tipe="KELUAR"')
    Options.FieldOrigins = foNone
    Left = 50
    Top = 413
  end
  object D_ket: TMyDataSource
    DataSet = Qket
    Left = 112
    Top = 344
  end
  object D_kistket: TMyDataSource
    DataSet = Qlistket
    Left = 88
    Top = 400
  end
end
