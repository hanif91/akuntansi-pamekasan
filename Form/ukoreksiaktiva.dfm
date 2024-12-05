object fokoreksiaktiva: Tfokoreksiaktiva
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fokoreksiaktiva'
  ClientHeight = 241
  ClientWidth = 359
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 16
  object RzPanel4: TRzPanel
    Left = 0
    Top = 0
    Width = 359
    Height = 241
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 550
    ExplicitHeight = 377
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 355
      Height = 237
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
      ExplicitWidth = 832
      ExplicitHeight = 470
      FixedDimension = 22
      object TabSheet1: TRzTabSheet
        AlignWithMargins = True
        Color = 52479
        Caption = 'Koreksi Aktiva'
        ExplicitLeft = 0
        ExplicitTop = 22
        ExplicitWidth = 546
        ExplicitHeight = 351
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 349
          Height = 209
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          ExplicitTop = -3
          ExplicitWidth = 826
          ExplicitHeight = 442
          object cxTextEdit1: TcxTextEdit
            Left = 110
            Top = 16
            Properties.ReadOnly = True
            TabOrder = 0
            Text = 'cxTextEdit1'
            Width = 225
          end
          object cxLabel1: TcxLabel
            Left = 15
            Top = 17
            Caption = 'Nama Asset'
          end
          object cxCurrencyEdit1: TcxCurrencyEdit
            Left = 110
            Top = 46
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = '#,##0.###'
            Properties.EditFormat = '#,##0.###'
            Properties.UseThousandSeparator = True
            TabOrder = 2
            Width = 131
          end
          object cxComboBox1: TcxComboBox
            Left = 110
            Top = 76
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'P'
              'B')
            TabOrder = 3
            Width = 58
          end
          object cxCurrencyEdit2: TcxCurrencyEdit
            Left = 245
            Top = 77
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = '#,##0.###'
            Properties.EditFormat = '#,##0.###'
            TabOrder = 4
            Width = 75
          end
          object cxCurrencyEdit3: TcxCurrencyEdit
            Left = 245
            Top = 106
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = '#,##0.###'
            Properties.EditFormat = '#,##0.###'
            TabOrder = 5
            Width = 75
          end
          object cxCurrencyEdit4: TcxCurrencyEdit
            Left = 110
            Top = 106
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = '#,##0.###'
            Properties.EditFormat = '#,##0.###'
            TabOrder = 6
            Width = 58
          end
          object cxLabel3: TcxLabel
            Left = 15
            Top = 76
            Caption = 'Kode Susut'
          end
          object cxLabel4: TcxLabel
            Left = 194
            Top = 76
            Caption = 'Gol'
          end
          object cxLabel5: TcxLabel
            Left = 15
            Top = 107
            Caption = 'Persen'
          end
          object cxLabel6: TcxLabel
            Left = 190
            Top = 107
            Caption = 'Jml Thn'
          end
          object cxLabel2: TcxLabel
            Left = 15
            Top = 50
            Caption = 'Nilai Perolehan'
          end
          object cxButton2: TcxButton
            Left = 110
            Top = 155
            Width = 153
            Height = 31
            Caption = '&Koreksi'
            OptionsImage.ImageIndex = 3
            OptionsImage.Images = dm.img24
            TabOrder = 12
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Noto Sans'
            Font.Style = []
            ParentFont = False
            WordWrap = True
            OnClick = cxButton2Click
          end
        end
      end
    end
  end
end
