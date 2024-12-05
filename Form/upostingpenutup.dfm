object fopostingpenutup: Tfopostingpenutup
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Posting Penutup'
  ClientHeight = 442
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
    Height = 442
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    ExplicitWidth = 371
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 368
      Height = 438
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
      ExplicitWidth = 367
      FixedDimension = 19
      object TabSheet1: TRzTabSheet
        Color = 52479
        Caption = 'Posting Penutup'
        ExplicitWidth = 367
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 368
          Height = 419
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          ExplicitWidth = 367
          object cxComboBox2: TcxComboBox
            Left = 172
            Top = 395
            Properties.DropDownListStyle = lsFixedList
            TabOrder = 0
            Visible = False
            Width = 195
          end
          object cxMemo1: TcxMemo
            Left = 5
            Top = 94
            Properties.ScrollBars = ssVertical
            TabOrder = 1
            Height = 317
            Width = 356
          end
          object cxProgressBar1: TcxProgressBar
            Left = 5
            Top = 56
            AutoSize = False
            TabOrder = 2
            Height = 31
            Width = 356
          end
          object cxLabel2: TcxLabel
            Left = 6
            Top = 37
            Caption = '(1 of 4)'
            Transparent = True
          end
          object cxComboBox1: TcxComboBox
            Left = 93
            Top = 7
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = cxComboBox1PropertiesChange
            TabOrder = 4
            Height = 30
            Width = 152
          end
          object cxLabel1: TcxLabel
            Left = 5
            Top = 11
            Caption = 'Periode Posting'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxButton1: TcxButton
            Left = 251
            Top = 9
            Width = 109
            Height = 28
            Caption = 'Mulai Posting'
            OptionsImage.ImageIndex = 15
            OptionsImage.Images = dm.img24
            TabOrder = 6
            OnClick = cxButton1Click
          end
        end
      end
    end
  end
  object Qcek2: TMyQuery
    Connection = dm.Conn1
    Left = 167
    Top = 126
  end
  object Qcek: TMyQuery
    Connection = dm.Conn1
    Left = 207
    Top = 126
  end
  object Qmaster: TMyQuery
    Connection = dm.Conn1
    Left = 255
    Top = 126
  end
  object Qex: TMyQuery
    Connection = dm.Conn1
    Left = 127
    Top = 126
  end
end
