object foparampinjaman: Tfoparampinjaman
  Left = 0
  Top = 0
  Caption = 'Parameter'
  ClientHeight = 497
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel4: TRzPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 497
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 908
      Height = 493
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
      FixedDimension = 19
      object TabSheet1: TRzTabSheet
        Color = 52479
        Caption = 'Parameter Pembuatan Pinjaman Baru'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 908
          Height = 474
          Align = alClient
          BorderOuter = fsFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object btnsimpan: TRzToolButton
            Left = 632
            Top = 409
            Width = 257
            Height = 50
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
            Caption = '&Simpan Parameter'
            Color = 2250751
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btnsimpanClick
          end
          object RzToolButton1: TRzToolButton
            Left = 369
            Top = 409
            Width = 257
            Height = 50
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
            Caption = '&Kembali'
            Color = 2250751
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cxLabel1: TcxLabel
            Left = 16
            Top = 71
            AutoSize = False
            Caption = 'Param I'
            Properties.WordWrap = True
            Height = 26
            Width = 89
          end
          object cxLabel2: TcxLabel
            Left = 110
            Top = 22
            AutoSize = False
            Caption = 'Pinjaman Rp'
            Properties.WordWrap = True
            Height = 26
            Width = 106
          end
          object cxLabel3: TcxLabel
            Left = 135
            Top = 73
            AutoSize = False
            Caption = 'S/d'
            Properties.WordWrap = True
            Height = 26
            Width = 34
          end
          object pinj1: TcxCurrencyEdit
            Left = 95
            Top = 46
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            TabOrder = 3
            Width = 121
          end
          object pinj12: TcxCurrencyEdit
            Left = 95
            Top = 99
            Properties.DisplayFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            TabOrder = 4
            Width = 121
          end
          object cxLabel4: TcxLabel
            Left = 238
            Top = 22
            AutoSize = False
            Caption = 'B. Admin'
            Properties.WordWrap = True
            Height = 26
            Width = 99
          end
          object adm1: TcxCurrencyEdit
            Left = 238
            Top = 46
            EditValue = 0.000000000000000000
            Properties.DecimalPlaces = 2
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.MaxLength = 4
            Properties.UseThousandSeparator = True
            TabOrder = 6
            Width = 59
          end
          object cxLabel5: TcxLabel
            Left = 298
            Top = 47
            AutoSize = False
            Caption = '%'
            Properties.WordWrap = True
            Height = 26
            Width = 24
          end
          object cxLabel6: TcxLabel
            Left = 343
            Top = 22
            AutoSize = False
            Caption = 'Bunga'
            Properties.WordWrap = True
            Height = 26
            Width = 59
          end
          object bunga1: TcxCurrencyEdit
            Left = 343
            Top = 46
            EditValue = 0.000000000000000000
            Properties.DecimalPlaces = 2
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.MaxLength = 4
            Properties.UseThousandSeparator = True
            TabOrder = 9
            Width = 35
          end
          object cxLabel7: TcxLabel
            Left = 379
            Top = 47
            AutoSize = False
            Caption = '%'
            Properties.WordWrap = True
            Height = 26
            Width = 26
          end
          object cxLabel8: TcxLabel
            Left = 411
            Top = 22
            AutoSize = False
            Caption = 'Max Angs.'
            Properties.WordWrap = True
            Height = 26
            Width = 110
          end
          object maxangs1: TcxCurrencyEdit
            Left = 411
            Top = 46
            EditValue = 0.000000000000000000
            Properties.DecimalPlaces = 2
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.MaxLength = 4
            Properties.UseThousandSeparator = True
            TabOrder = 12
            Width = 38
          end
          object cxLabel9: TcxLabel
            Left = 453
            Top = 47
            AutoSize = False
            Caption = 'X'
            Properties.WordWrap = True
            Height = 26
            Width = 26
          end
          object cxLabel10: TcxLabel
            Left = 507
            Top = 22
            AutoSize = False
            Caption = 'Denda Angs.'
            Properties.WordWrap = True
            Height = 26
            Width = 102
          end
          object dendaangs1: TcxCurrencyEdit
            Left = 507
            Top = 46
            EditValue = 0.000000000000000000
            Properties.DecimalPlaces = 2
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.MaxLength = 4
            Properties.UseThousandSeparator = True
            TabOrder = 15
            Width = 46
          end
          object cxLabel11: TcxLabel
            Left = 559
            Top = 47
            AutoSize = False
            Caption = '%'
            Properties.WordWrap = True
            Height = 26
            Width = 26
          end
          object cxLabel13: TcxLabel
            Left = 615
            Top = 22
            AutoSize = False
            Caption = 'Denda Dari'
            Properties.WordWrap = True
            Height = 26
            Width = 102
          end
          object cxComboBox1: TcxComboBox
            Left = 615
            Top = 46
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'POKOK ANGSURAN'
              'POKOK PINJAMAN')
            TabOrder = 18
            Width = 146
          end
          object cxLabel12: TcxLabel
            Left = 775
            Top = 22
            AutoSize = False
            Caption = 'Denda Nominal'
            Properties.WordWrap = True
            Height = 26
            Width = 114
          end
          object dendanominal1: TcxCurrencyEdit
            Left = 775
            Top = 46
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            TabOrder = 20
            Width = 114
          end
          object cxLabel14: TcxLabel
            Left = 16
            Top = 192
            AutoSize = False
            Caption = 'Param II'
            Properties.WordWrap = True
            Height = 26
            Width = 89
          end
          object cxLabel15: TcxLabel
            Left = 110
            Top = 142
            AutoSize = False
            Caption = 'Pinjaman Rp'
            Properties.WordWrap = True
            Height = 26
            Width = 106
          end
          object cxLabel16: TcxLabel
            Left = 135
            Top = 193
            AutoSize = False
            Caption = 'S/d'
            Properties.WordWrap = True
            Height = 26
            Width = 34
          end
          object pinj2: TcxCurrencyEdit
            Left = 95
            Top = 166
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            TabOrder = 24
            Width = 121
          end
          object pinj22: TcxCurrencyEdit
            Left = 95
            Top = 219
            Properties.DisplayFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            TabOrder = 25
            Width = 121
          end
          object cxLabel17: TcxLabel
            Left = 238
            Top = 142
            AutoSize = False
            Caption = 'B. Admin'
            Properties.WordWrap = True
            Height = 26
            Width = 99
          end
          object adm2: TcxCurrencyEdit
            Left = 238
            Top = 166
            EditValue = 0.000000000000000000
            Properties.DecimalPlaces = 2
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.MaxLength = 4
            Properties.UseThousandSeparator = True
            TabOrder = 27
            Width = 59
          end
          object cxLabel18: TcxLabel
            Left = 298
            Top = 167
            AutoSize = False
            Caption = '%'
            Properties.WordWrap = True
            Height = 26
            Width = 24
          end
          object cxLabel19: TcxLabel
            Left = 343
            Top = 142
            AutoSize = False
            Caption = 'Bunga'
            Properties.WordWrap = True
            Height = 26
            Width = 59
          end
          object bunga2: TcxCurrencyEdit
            Left = 343
            Top = 166
            EditValue = 0.000000000000000000
            Properties.DecimalPlaces = 2
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.MaxLength = 4
            Properties.UseThousandSeparator = True
            TabOrder = 30
            Width = 35
          end
          object cxLabel20: TcxLabel
            Left = 379
            Top = 167
            AutoSize = False
            Caption = '%'
            Properties.WordWrap = True
            Height = 26
            Width = 26
          end
          object cxLabel21: TcxLabel
            Left = 411
            Top = 142
            AutoSize = False
            Caption = 'Max Angs'
            Properties.WordWrap = True
            Height = 26
            Width = 110
          end
          object maxangs2: TcxCurrencyEdit
            Left = 411
            Top = 166
            EditValue = 0.000000000000000000
            Properties.DecimalPlaces = 2
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.MaxLength = 4
            Properties.UseThousandSeparator = True
            TabOrder = 33
            Width = 38
          end
          object cxLabel22: TcxLabel
            Left = 453
            Top = 167
            AutoSize = False
            Caption = 'X'
            Properties.WordWrap = True
            Height = 26
            Width = 26
          end
          object cxLabel23: TcxLabel
            Left = 507
            Top = 142
            AutoSize = False
            Caption = 'Denda Angs.'
            Properties.WordWrap = True
            Height = 26
            Width = 102
          end
          object dendaangs2: TcxCurrencyEdit
            Left = 507
            Top = 166
            EditValue = 0.000000000000000000
            Properties.DecimalPlaces = 2
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.MaxLength = 4
            Properties.UseThousandSeparator = True
            TabOrder = 36
            Width = 46
          end
          object cxLabel24: TcxLabel
            Left = 559
            Top = 167
            AutoSize = False
            Caption = '%'
            Properties.WordWrap = True
            Height = 26
            Width = 26
          end
          object cxLabel25: TcxLabel
            Left = 615
            Top = 142
            AutoSize = False
            Caption = 'Denda Dari'
            Properties.WordWrap = True
            Height = 26
            Width = 102
          end
          object cxComboBox2: TcxComboBox
            Left = 615
            Top = 166
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'POKOK ANGSURAN'
              'POKOK PINJAMAN')
            TabOrder = 39
            Width = 146
          end
          object cxLabel26: TcxLabel
            Left = 775
            Top = 142
            AutoSize = False
            Caption = 'Denda Nominal'
            Properties.WordWrap = True
            Height = 26
            Width = 114
          end
          object dendanominal2: TcxCurrencyEdit
            Left = 775
            Top = 166
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            TabOrder = 41
            Width = 114
          end
          object adm3: TcxCurrencyEdit
            Left = 238
            Top = 302
            EditValue = 0.000000000000000000
            Properties.DecimalPlaces = 2
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.MaxLength = 4
            Properties.UseThousandSeparator = True
            TabOrder = 42
            Width = 59
          end
          object dendanominal3: TcxCurrencyEdit
            Left = 775
            Top = 302
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            TabOrder = 43
            Width = 114
          end
          object cxLabel27: TcxLabel
            Left = 775
            Top = 278
            AutoSize = False
            Caption = 'Denda Nominal'
            Properties.WordWrap = True
            Height = 26
            Width = 114
          end
          object cxComboBox3: TcxComboBox
            Left = 615
            Top = 302
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'POKOK ANGSURAN'
              'POKOK PINJAMAN')
            TabOrder = 45
            Width = 146
          end
          object cxLabel28: TcxLabel
            Left = 615
            Top = 278
            AutoSize = False
            Caption = 'Denda Dari'
            Properties.WordWrap = True
            Height = 26
            Width = 102
          end
          object cxLabel29: TcxLabel
            Left = 559
            Top = 303
            AutoSize = False
            Caption = '%'
            Properties.WordWrap = True
            Height = 26
            Width = 26
          end
          object dendaangs3: TcxCurrencyEdit
            Left = 507
            Top = 302
            EditValue = 0.000000000000000000
            Properties.DecimalPlaces = 2
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.MaxLength = 4
            Properties.UseThousandSeparator = True
            TabOrder = 48
            Width = 46
          end
          object cxLabel30: TcxLabel
            Left = 507
            Top = 278
            AutoSize = False
            Caption = 'Denda Angs.'
            Properties.WordWrap = True
            Height = 26
            Width = 102
          end
          object cxLabel31: TcxLabel
            Left = 453
            Top = 303
            AutoSize = False
            Caption = 'X'
            Properties.WordWrap = True
            Height = 26
            Width = 26
          end
          object maxangs3: TcxCurrencyEdit
            Left = 411
            Top = 302
            EditValue = 0.000000000000000000
            Properties.DecimalPlaces = 2
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.MaxLength = 4
            Properties.UseThousandSeparator = True
            TabOrder = 51
            Width = 38
          end
          object cxLabel32: TcxLabel
            Left = 411
            Top = 278
            AutoSize = False
            Caption = 'Max Angs.'
            Properties.WordWrap = True
            Height = 26
            Width = 90
          end
          object cxLabel33: TcxLabel
            Left = 379
            Top = 303
            AutoSize = False
            Caption = '%'
            Properties.WordWrap = True
            Height = 26
            Width = 26
          end
          object bunga3: TcxCurrencyEdit
            Left = 343
            Top = 302
            EditValue = 0.000000000000000000
            Properties.DecimalPlaces = 2
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.MaxLength = 4
            Properties.UseThousandSeparator = True
            TabOrder = 54
            Width = 35
          end
          object cxLabel34: TcxLabel
            Left = 343
            Top = 278
            AutoSize = False
            Caption = 'Bunga'
            Properties.WordWrap = True
            Height = 26
            Width = 59
          end
          object cxLabel35: TcxLabel
            Left = 298
            Top = 303
            AutoSize = False
            Caption = '%'
            Properties.WordWrap = True
            Height = 26
            Width = 24
          end
          object cxLabel36: TcxLabel
            Left = 238
            Top = 278
            AutoSize = False
            Caption = 'B. Admin'
            Properties.WordWrap = True
            Height = 26
            Width = 99
          end
          object pinj32: TcxCurrencyEdit
            Left = 95
            Top = 355
            Properties.DisplayFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            TabOrder = 58
            Width = 121
          end
          object pinj3: TcxCurrencyEdit
            Left = 95
            Top = 302
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            TabOrder = 59
            Width = 121
          end
          object cxLabel37: TcxLabel
            Left = 135
            Top = 329
            AutoSize = False
            Caption = 'S/d'
            Properties.WordWrap = True
            Height = 26
            Width = 34
          end
          object cxLabel38: TcxLabel
            Left = 110
            Top = 278
            AutoSize = False
            Caption = 'Pinjaman Rp'
            Properties.WordWrap = True
            Height = 26
            Width = 106
          end
          object cxLabel39: TcxLabel
            Left = 16
            Top = 327
            AutoSize = False
            Caption = 'Param III'
            Properties.WordWrap = True
            Height = 26
            Width = 73
          end
        end
      end
    end
  end
end
