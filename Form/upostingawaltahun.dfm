object fopostingawaltahun: Tfopostingawaltahun
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'folockjurnal'
  ClientHeight = 145
  ClientWidth = 399
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
    Width = 399
    Height = 145
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 395
      Height = 141
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
        Caption = 'Posting Awal Tahun'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 389
          Height = 113
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          object dxActivityIndicator1: TdxActivityIndicator
            Left = 9
            Top = 72
            Width = 373
            Height = 31
            BorderStyle = cxcbsDefault
            PropertiesClassName = 'TdxActivityIndicatorHorizontalDotsProperties'
            Properties.DotColor = -65536
            Transparent = True
          end
          object cxButton2: TcxButton
            Left = 9
            Top = 72
            Width = 373
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
          object cxTextEdit1: TcxTextEdit
            Left = 135
            Top = 33
            AutoSize = False
            Properties.ReadOnly = True
            TabOrder = 1
            Text = 'cxTextEdit1'
            Height = 33
            Width = 247
          end
          object cxLabel1: TcxLabel
            Left = 135
            Top = 7
            Caption = 'Tahun Posting Terakhir'
          end
          object cxLabel2: TcxLabel
            Left = 9
            Top = 7
            Caption = 'Tahun'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object RzDateTimePicker1: TRzDateTimePicker
            Left = 9
            Top = 33
            Width = 120
            Height = 33
            Date = 44795.000000000000000000
            Format = 'yyyy'
            Time = 0.419776747687137700
            DateMode = dmUpDown
            TabOrder = 5
          end
        end
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 363
    Top = 28
  end
  object Qunit: TMyQuery
    Connection = dm.Conn1
    Left = 125
    Top = 43
  end
end
