object fotambahanggota: Tfotambahanggota
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Tambah Anggota'
  ClientHeight = 411
  ClientWidth = 306
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel4: TRzPanel
    Left = 0
    Top = 0
    Width = 306
    Height = 411
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPanel3: TRzPanel
      Left = 2
      Top = 373
      Width = 302
      Height = 36
      Align = alBottom
      BorderOuter = fsFlat
      TabOrder = 0
      DesignSize = (
        302
        36)
      object btnkembali2: TRzToolButton
        Left = 77
        Top = 3
        Width = 105
        Height = 31
        GradientColorStyle = gcsCustom
        SelectionColorStart = 3927039
        SelectionColorStop = 7457838
        SelectionFrameColor = 52479
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
        OnClick = btnkembali2Click
      end
      object btnnext: TRzToolButton
        Left = 187
        Top = 3
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
        Caption = '&Selanjutnya >>'
        Color = 2250751
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btnnextClick
      end
      object btnsimpan: TRzToolButton
        Left = 199
        Top = 3
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
        Left = 88
        Top = 3
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
    end
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 302
      Height = 371
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
      TabOrder = 1
      TextColors.Selected = 6710886
      TextColors.Unselected = 10260600
      UseGradients = False
      OnClose = RzPageControl1Close
      FixedDimension = 19
      object TabSheet1: TRzTabSheet
        Color = 52479
        Caption = 'Biodata Pribadi'
        object RzPanel1tambanggo: TRzPanel
          Left = 0
          Top = 0
          Width = 302
          Height = 352
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          object cxLabel1: TcxLabel
            Left = 9
            Top = 37
            Caption = 'Kode Anggota'
            Transparent = True
          end
          object cxLabel4: TcxLabel
            Left = 9
            Top = 144
            Caption = 'Alamat'
            Transparent = True
          end
          object cxLabel3: TcxLabel
            Left = 9
            Top = 65
            Caption = 'Nama Anggota'
            Transparent = True
          end
          object cxLabel5: TcxLabel
            Left = 9
            Top = 12
            Caption = 'Sales'
            Transparent = True
          end
          object cxLabel6: TcxLabel
            Left = 9
            Top = 243
            Caption = 'Pekerjaan'
            Transparent = True
          end
          object cxLabel7: TcxLabel
            Left = 9
            Top = 92
            Caption = 'Tempat Tgl Lahir'
            Transparent = True
          end
          object cxLabel8: TcxLabel
            Left = 9
            Top = 119
            Caption = 'Jenis Kelamin'
            Transparent = True
          end
          object cxLabel9: TcxLabel
            Left = 9
            Top = 270
            Caption = 'No Hp'
            Transparent = True
          end
          object cxLabel10: TcxLabel
            Left = 9
            Top = 295
            Caption = 'Status Keanggotaan'
            Transparent = True
          end
          object kodeanggota: TcxTextEdit
            Left = 100
            Top = 37
            BeepOnEnter = False
            Properties.ReadOnly = True
            TabOrder = 1
            Width = 128
          end
          object nama: TcxTextEdit
            Left = 100
            Top = 64
            BeepOnEnter = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            TabOrder = 2
            TextHint = 'Nama Lengkap'
            Width = 189
          end
          object alamat: TcxMemo
            Left = 100
            Top = 146
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            Properties.ScrollBars = ssVertical
            Properties.WantReturns = False
            ShowHint = True
            TabOrder = 6
            Height = 89
            Width = 189
          end
          object tempat: TcxTextEdit
            Left = 100
            Top = 91
            BeepOnEnter = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            TabOrder = 3
            TextHint = 'Tempat Lahir'
            Width = 101
          end
          object pekerjaan: TcxTextEdit
            Left = 100
            Top = 241
            BeepOnEnter = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            TabOrder = 7
            TextHint = 'Contoh : Swasta'
            Width = 189
          end
          object nohp: TcxTextEdit
            Left = 100
            Top = 268
            BeepOnEnter = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            TabOrder = 8
            TextHint = 'Contoh : 081653910'
            Width = 189
          end
          object combkolektif: TcxComboBox
            Left = 100
            Top = 10
            BeepOnEnter = False
            Properties.OnChange = combkolektifPropertiesChange
            TabOrder = 0
            TextHint = 'Pilih Salah Satu'
            Width = 128
          end
          object combkodekol: TcxComboBox
            Left = 14
            Top = 213
            TabOrder = 20
            TextHint = 'Pilih Salah Satu'
            Visible = False
            Width = 80
          end
          object combidkol: TcxComboBox
            Left = 14
            Top = 186
            TabOrder = 21
            TextHint = 'combidkolektif'
            Visible = False
            Width = 80
          end
          object cxDateEdit1: TcxDateEdit
            Left = 200
            Top = 91
            BeepOnEnter = False
            TabOrder = 4
            TextHint = 'Tgl Lahir'
            Width = 89
          end
          object jeniskel: TcxComboBox
            Left = 100
            Top = 118
            BeepOnEnter = False
            Properties.Items.Strings = (
              'LAKI - LAKI'
              'PEREMPUAN')
            TabOrder = 5
            TextHint = 'Pilih Salah Satu'
            Width = 128
          end
          object combaktif: TcxComboBox
            Left = 117
            Top = 295
            BeepOnEnter = False
            Properties.CharCase = ecUpperCase
            Properties.Items.Strings = (
              'NONAKTIF'
              'AKTIF')
            TabOrder = 9
            TextHint = 'Aktif / Nonaktif'
            Width = 115
          end
          object cxDateEdit2: TcxDateEdit
            Left = 117
            Top = 322
            BeepOnEnter = False
            TabOrder = 10
            TextHint = 'Tgl Lahir'
            Width = 115
          end
          object cxLabel2: TcxLabel
            Left = 9
            Top = 323
            Caption = 'Tanggal Gabung'
            Transparent = True
          end
        end
      end
      object TabSheet2: TRzTabSheet
        Color = 52479
        Caption = 'Simpanan Awal'
        object RzPanel2: TRzPanel
          Left = 0
          Top = 0
          Width = 302
          Height = 352
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          object cxGrid1: TcxGrid
            Left = 6
            Top = 29
            Width = 290
            Height = 319
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
              DataController.DataSource = Dsimp
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
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
                Width = 168
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
                Caption = 'Jumlah Setor'
                DataBinding.FieldName = 'setor'
                HeaderAlignmentHorz = taRightJustify
                Options.Filtering = False
                Options.Moving = False
                Options.Sorting = False
                Width = 93
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object cxLabel11: TcxLabel
            Left = 6
            Top = 6
            Caption = 'Setor Simpanan Ke Kas '
            Transparent = True
          end
          object cxComboBox1: TcxComboBox
            Left = 128
            Top = 5
            Properties.DropDownListStyle = lsFixedList
            TabOrder = 2
            Width = 121
          end
        end
      end
    end
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 256
    Top = 35
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
  object Dsimp: TMyDataSource
    DataSet = dxMemData1
    Left = 232
    Top = 192
  end
end
