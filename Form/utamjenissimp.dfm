object fotambjenissimp: Tfotambjenissimp
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fotambjenissimp'
  ClientHeight = 289
  ClientWidth = 372
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
    Width = 372
    Height = 289
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    ExplicitLeft = 16
    ExplicitTop = 16
    ExplicitWidth = 424
    ExplicitHeight = 182
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 368
      Height = 285
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
      ExplicitWidth = 315
      ExplicitHeight = 506
      FixedDimension = 19
      object TabSheet1: TRzTabSheet
        Color = 52479
        Caption = 'Tambah Jenis Simpanan'
        ExplicitWidth = 420
        ExplicitHeight = 159
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 368
          Height = 266
          Align = alClient
          BorderOuter = fsFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitWidth = 420
          ExplicitHeight = 159
          object RzToolButton1: TRzToolButton
            Left = 129
            Top = 213
            Width = 126
            Height = 37
            GradientColorStyle = gcsCustom
            SelectionColorStart = 3927039
            SelectionColorStop = 7457838
            SelectionFrameColor = 52479
            ImageIndex = 14
            Images = dm.img24
            ShowCaption = True
            Transparent = False
            UseToolbarShowCaption = False
            UseToolbarVisualStyle = False
            VisualStyle = vsGradient
            Caption = '&Simpan'
            Color = 2250751
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = RzToolButton1Click
          end
          object combkode1: TcxComboBox
            Left = 161
            Top = 151
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = combkode1PropertiesChange
            TabOrder = 3
            Width = 94
          end
          object combkode2: TcxComboBox
            Left = 161
            Top = 181
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = combkode2PropertiesChange
            TabOrder = 4
            Width = 192
          end
          object cxLabel6: TcxLabel
            Left = 11
            Top = 151
            Caption = 'Kode Akun'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object combid3: TcxComboBox
            Left = 42
            Top = 211
            AutoSize = False
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Noto Sans'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 6
            Visible = False
            Height = 30
            Width = 81
          end
          object dxToggleSwitch2: TdxToggleSwitch
            Left = 161
            Top = 36
            AutoSize = False
            Checked = True
            TabOrder = 7
            Height = 21
            Width = 74
          end
          object dxToggleSwitch1: TdxToggleSwitch
            Left = 161
            Top = 9
            Checked = True
            TabOrder = 8
            OnClick = dxToggleSwitch1Click
          end
          object cxLabel2: TcxLabel
            Left = 12
            Top = 10
            Caption = 'Kategori Modal'
          end
          object cxLabel5: TcxLabel
            Left = 12
            Top = 38
            Caption = 'Bisa Setor Berkali-Kali'
          end
          object cxLabel7: TcxLabel
            Left = 12
            Top = 122
            Caption = 'Nama Simpanan'
          end
          object cxTextEdit1: TcxTextEdit
            Left = 161
            Top = 121
            Properties.CharCase = ecUpperCase
            TabOrder = 2
            Text = 'CXTEXTEDIT1'
            Width = 152
          end
          object cxLabel8: TcxLabel
            Left = 12
            Top = 63
            Caption = 'Urutan'
          end
          object cxLabel9: TcxLabel
            Left = 12
            Top = 91
            Caption = 'Minim Setor'
          end
          object cxCurrencyEdit1: TcxCurrencyEdit
            Left = 161
            Top = 62
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.MaxLength = 2
            Properties.UseThousandSeparator = True
            TabOrder = 0
            Width = 33
          end
          object cxCurrencyEdit2: TcxCurrencyEdit
            Left = 161
            Top = 91
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            TabOrder = 1
            Width = 74
          end
        end
      end
    end
  end
end
