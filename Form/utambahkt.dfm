object fotambahkastrf: Tfotambahkastrf
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Tambah Transaksi Kas Transfer'
  ClientHeight = 368
  ClientWidth = 323
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
    Width = 323
    Height = 368
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 319
      Height = 364
      Hint = ''
      ActivePage = TabSheet2
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
      object TabSheet2: TRzTabSheet
        Color = 52479
        Caption = 'Transaksi '
        object RzPanel2: TRzPanel
          Left = 0
          Top = 0
          Width = 319
          Height = 345
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          ExplicitLeft = -2
          DesignSize = (
            319
            345)
          object btnsimpan: TRzToolButton
            Left = 210
            Top = 295
            Width = 95
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
            Top = 295
            Width = 96
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
            TabOrder = 2
            Width = 133
          end
          object cxLabel2: TcxLabel
            Left = 10
            Top = 41
            Caption = 'Tanggal'
          end
          object cxComboBox1: TcxComboBox
            Left = 103
            Top = 70
            Properties.DropDownListStyle = lsFixedList
            TabOrder = 3
            Width = 133
          end
          object cxLabel6: TcxLabel
            Left = 10
            Top = 71
            Caption = 'Transfer Dari Kas'
          end
          object cxMemo1: TcxMemo
            Left = 104
            Top = 125
            Lines.Strings = (
              'cxMemo1')
            Properties.ScrollBars = ssVertical
            TabOrder = 5
            Height = 113
            Width = 201
          end
          object cxLabel3: TcxLabel
            Left = 10
            Top = 121
            Caption = 'Penjelasan'
          end
          object cxLabel8: TcxLabel
            Left = 10
            Top = 247
            AutoSize = False
            Caption = 'Jumlah Transfer'
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
          object cxCurrencyEdit1: TcxCurrencyEdit
            Left = 104
            Top = 246
            AutoSize = False
            EditValue = 5000.000000000000000000
            ParentFont = False
            Properties.DecimalPlaces = 2
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 6
            Height = 37
            Width = 201
          end
        end
      end
    end
  end
  object cxLabel4: TcxLabel
    Left = 62
    Top = 119
    Caption = 'Ke Kas'
  end
  object cxComboBox2: TcxComboBox
    Left = 106
    Top = 118
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 2
    Width = 133
  end
end
