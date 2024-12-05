object fotambahtarik: Tfotambahtarik
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fotambahsetor'
  ClientHeight = 461
  ClientWidth = 320
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
    Width = 320
    Height = 461
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 316
      Height = 457
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
        Caption = 'Tambah Transaksi Penarikan'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 316
          Height = 438
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          DesignSize = (
            316
            438)
          object btnsimpan: TRzToolButton
            Left = 211
            Top = 402
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
            ExplicitLeft = 210
          end
          object btnkembali: TRzToolButton
            Left = 100
            Top = 402
            Width = 105
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
          object cxLabel1: TcxLabel
            Left = 10
            Top = 16
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
          object cxTextEdit1: TcxTextEdit
            Left = 105
            Top = 16
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 0
            Text = 'cxTextEdit1'
            Width = 121
          end
          object cxButton1: TcxButton
            Left = 232
            Top = 17
            Width = 75
            Height = 20
            Caption = 'No. Auto'
            TabOrder = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = cxButton1Click
          end
          object cxLabel2: TcxLabel
            Left = 10
            Top = 43
            Caption = 'Tgl Penarikan'
          end
          object cxDateEdit1: TcxDateEdit
            Left = 105
            Top = 43
            Properties.OnValidate = cxDateEdit1PropertiesValidate
            TabOrder = 2
            Width = 121
          end
          object cxLabel4: TcxLabel
            Left = 10
            Top = 129
            Caption = 'Detail Penarikan'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold, fsUnderline]
            Style.IsFontAssigned = True
          end
          object cxGrid1: TcxGrid
            Left = 10
            Top = 149
            Width = 295
            Height = 247
            TabOrder = 5
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
              DataController.DataSource = Dsimp
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,##0.##'
                  Kind = skSum
                  FieldName = 'setor'
                  Column = cxGrid1DBTableView1setor
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsView.CellEndEllipsis = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.Header = dm.bold8
              object cxGrid1DBTableView1RecId: TcxGridDBColumn
                DataBinding.FieldName = 'RecId'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
              end
              object cxGrid1DBTableView1idsimpanan: TcxGridDBColumn
                Caption = 'Id Simpanan'
                DataBinding.FieldName = 'idsimpanan'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 58
              end
              object cxGrid1DBTableView1namasimpanan: TcxGridDBColumn
                Caption = 'Jenis Simpanan'
                DataBinding.FieldName = 'namasimpanan'
                Options.Editing = False
                Options.Filtering = False
                Options.Moving = False
                Options.Sorting = False
                Width = 167
              end
              object cxGrid1DBTableView1minimsetor: TcxGridDBColumn
                Caption = 'Minim Setor'
                DataBinding.FieldName = 'minimsetor'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
              end
              object cxGrid1DBTableView1setor: TcxGridDBColumn
                Caption = 'Jumlah Penarikan'
                DataBinding.FieldName = 'setor'
                HeaderAlignmentHorz = taRightJustify
                Options.Filtering = False
                Options.Moving = False
                Options.Sorting = False
                Width = 114
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object cxLabel5: TcxLabel
            Left = 10
            Top = 95
            Caption = 'Anggota'
          end
          object cxDBLookupComboBox1: TcxDBLookupComboBox
            Left = 105
            Top = 95
            DataBinding.DataField = 'idanggota'
            DataBinding.DataSource = Da1
            Properties.DropDownAutoSize = True
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'idanggota'
            Properties.ListColumns = <
              item
                Caption = 'Kode'
                Width = 50
                FieldName = 'kodeanggota'
              end
              item
                Caption = 'Nama Anggota'
                Width = 200
                FieldName = 'namaanggota'
              end>
            Properties.ListFieldIndex = 1
            Properties.ListSource = Da2
            TabOrder = 4
            Width = 202
          end
          object cxLabel6: TcxLabel
            Left = 10
            Top = 68
            Caption = 'Penarikan Dari Kas'
          end
          object cxComboBox1: TcxComboBox
            Left = 105
            Top = 68
            Properties.DropDownListStyle = lsFixedList
            TabOrder = 3
            Width = 121
          end
        end
      end
    end
  end
  object Dsimp: TMyDataSource
    DataSet = dxMemData1
    Left = 80
    Top = 160
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 208
    Top = 187
    object dxMemData1idsimpanan: TIntegerField
      FieldName = 'idsimpanan'
    end
    object dxMemData1namasimpanan: TStringField
      FieldName = 'namasimpanan'
      Size = 25
    end
    object dxMemData1minimsetor: TCurrencyField
      FieldName = 'minimsetor'
      DisplayFormat = '#,##0.##'
    end
    object dxMemData1setor: TCurrencyField
      FieldName = 'setor'
      OnValidate = dxMemData1setorValidate
      DisplayFormat = '#,##0.##'
    end
  end
  object Da1: TMyDataSource
    DataSet = Qa1
    Left = 354
    Top = 197
  end
  object Qa1: TMyQuery
    Connection = dm.Conn1
    SQL.Strings = (
      'SELECT idanggota FROM anggota WHERE aktif="AKTIF"'
      'UNION ALL '
      'SELECT -1'
      'ORDER BY idanggota')
    Left = 130
    Top = 221
    object Qa1idanggota: TLargeintField
      FieldName = 'idanggota'
    end
  end
  object Da2: TMyDataSource
    DataSet = dxMemData2
    Left = 336
    Top = 136
  end
  object dxMemData2: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 170
    Top = 285
    object dxMemData2idanggota: TIntegerField
      FieldName = 'idanggota'
    end
    object dxMemData2kodeanggota: TStringField
      FieldName = 'kodeanggota'
      Size = 25
    end
    object dxMemData2namaanggota: TStringField
      FieldName = 'namaanggota'
      Size = 75
    end
  end
end
