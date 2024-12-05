object foupdatesaldoawal: Tfoupdatesaldoawal
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'folockjurnal'
  ClientHeight = 141
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object RzPanel4: TRzPanel
    Left = 0
    Top = 0
    Width = 393
    Height = 141
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 389
      Height = 137
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
      FixedDimension = 22
      object TabSheet1: TRzTabSheet
        AlignWithMargins = True
        Color = 52479
        Caption = 'Update Saldo Awal'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 383
          Height = 109
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          object dxActivityIndicator1: TdxActivityIndicator
            Left = 9
            Top = 62
            Width = 360
            Height = 31
            BorderStyle = cxcbsDefault
            PropertiesClassName = 'TdxActivityIndicatorHorizontalDotsProperties'
            Properties.DotColor = -65536
            Transparent = True
          end
          object cxButton2: TcxButton
            Left = 9
            Top = 62
            Width = 360
            Height = 31
            Caption = '&Proses'
            OptionsImage.ImageIndex = 8
            OptionsImage.Images = dm.img24
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Noto Sans'
            Font.Style = []
            ParentFont = False
            WordWrap = True
            OnClick = cxButton2Click
          end
          object cxLabel2: TcxLabel
            Left = 206
            Top = 22
            Caption = 'Neraca Tahun'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object RzDateTimePicker1: TRzDateTimePicker
            Left = 119
            Top = 15
            Width = 70
            Height = 33
            Date = 44795.000000000000000000
            Format = 'yyyy'
            Time = 0.419776747687137700
            DateMode = dmUpDown
            TabOrder = 3
            OnChange = RzDateTimePicker1Change
          end
          object RzDateTimePicker2: TRzDateTimePicker
            Left = 296
            Top = 15
            Width = 73
            Height = 33
            Date = 44795.000000000000000000
            Format = 'yyyy'
            Time = 0.419776747687137700
            DateMode = dmUpDown
            Enabled = False
            TabOrder = 4
          end
          object cxLabel1: TcxLabel
            Left = 9
            Top = 22
            Caption = 'Update SA Tahun'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
        end
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 235
    Top = 4
  end
end
