object fotambahpinjaman: Tfotambahpinjaman
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Tambah Pinjaman'
  ClientHeight = 448
  ClientWidth = 329
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
    Width = 329
    Height = 448
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 325
      Height = 444
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
        Caption = 'Pengajuan Pinjaman'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 325
          Height = 425
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          DesignSize = (
            325
            425)
          object btnsimpan: TRzToolButton
            Left = 217
            Top = 377
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
            ExplicitLeft = 209
          end
          object btnkembali: TRzToolButton
            Left = 99
            Top = 377
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
            TabOrder = 1
            Text = 'cxTextEdit1'
            Width = 121
          end
          object cxButton1: TcxButton
            Left = 232
            Top = 16
            Width = 75
            Height = 20
            Caption = 'No. Auto'
            TabOrder = 2
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
            TabOrder = 4
            Width = 121
          end
          object cxLabel5: TcxLabel
            Left = 10
            Top = 93
            Caption = 'Anggota'
          end
          object cxDBLookupComboBox1: TcxDBLookupComboBox
            Left = 105
            Top = 93
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
            TabOrder = 6
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
            TabOrder = 8
            Width = 121
          end
          object cxLabel3: TcxLabel
            Left = 10
            Top = 126
            Caption = 'Platform Pinjaman'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object platformpinj: TcxCurrencyEdit
            Left = 170
            Top = 125
            ParentFont = False
            Properties.DecimalPlaces = 2
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            Properties.OnChange = platformpinjPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 10
            Width = 137
          end
          object cxLabel4: TcxLabel
            Left = 10
            Top = 161
            Caption = 'Rincian Pinjaman'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel7: TcxLabel
            Left = 48
            Top = 184
            Caption = 'Biaya Administrasi'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxLabel9: TcxLabel
            Left = 48
            Top = 253
            Caption = 'Tipe Angusran'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxComboBox2: TcxComboBox
            Left = 170
            Top = 251
            TabStop = False
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'BULANAN')
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 14
            Text = 'BULANAN'
            Width = 137
          end
          object cxLabel10: TcxLabel
            Left = 48
            Top = 205
            Caption = 'Bunga %'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxLabel11: TcxLabel
            Left = 48
            Top = 276
            Caption = 'Lama Angsuran'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxLabel8: TcxLabel
            Left = 11
            Top = 227
            Caption = 'Rincian Angsuran'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object adm: TcxCurrencyEdit
            Left = 170
            Top = 180
            Enabled = False
            Properties.DecimalPlaces = 2
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            TabOrder = 18
            Width = 136
          end
          object bunga: TcxCurrencyEdit
            Left = 170
            Top = 205
            Enabled = False
            Properties.DecimalPlaces = 2
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            TabOrder = 19
            Width = 54
          end
          object cxLabel12: TcxLabel
            Left = 228
            Top = 207
            Caption = '/ Bulan'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object lamaangs: TcxCurrencyEdit
            Left = 170
            Top = 275
            Properties.DecimalPlaces = 2
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            Properties.OnChange = lamaangsPropertiesChange
            TabOrder = 21
            Width = 54
          end
          object cxLabel14: TcxLabel
            Left = 48
            Top = 300
            Caption = 'Angsuran Pokok'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxLabel13: TcxLabel
            Left = 227
            Top = 276
            Caption = 'X'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object angsuranpokok: TcxCurrencyEdit
            Left = 170
            Top = 298
            Enabled = False
            Properties.DecimalPlaces = 2
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            TabOrder = 24
            Width = 113
          end
          object angsuranbunga: TcxCurrencyEdit
            Left = 170
            Top = 322
            Enabled = False
            Properties.DecimalPlaces = 2
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            TabOrder = 25
            Width = 113
          end
          object cxLabel15: TcxLabel
            Left = 48
            Top = 323
            Caption = 'Angsuran Bunga'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxLabel16: TcxLabel
            Left = 48
            Top = 346
            Caption = 'Jumlah Angsuran'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object jmlangsuran: TcxCurrencyEdit
            Left = 170
            Top = 345
            Enabled = False
            ParentFont = False
            Properties.DecimalPlaces = 2
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 28
            Width = 113
          end
        end
      end
    end
  end
  object Da2: TMyDataSource
    DataSet = dxMemData2
    Left = 245
    Top = 192
  end
  object Da1: TMyDataSource
    DataSet = Qa1
    Left = 269
    Top = 237
  end
  object dxMemData2: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 42
    Top = 373
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
  object Qa1: TMyQuery
    Connection = dm.Conn1
    SQL.Strings = (
      'SELECT idanggota FROM anggota WHERE aktif="AKTIF"'
      'UNION ALL '
      'SELECT -1'
      'ORDER BY idanggota')
    Left = 282
    Top = 221
    object Qa1idanggota: TLargeintField
      FieldName = 'idanggota'
    end
  end
end
