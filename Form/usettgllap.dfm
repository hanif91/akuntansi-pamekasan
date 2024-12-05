object fosettgllap: Tfosettgllap
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fosettgllap'
  ClientHeight = 128
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
    Height = 128
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    ExplicitTop = -213
    ExplicitWidth = 319
    ExplicitHeight = 510
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 316
      Height = 124
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
        Caption = 'Setting Tanggal Laporan'
        ExplicitLeft = -2
        ExplicitTop = 17
        ExplicitWidth = 369
        ExplicitHeight = 119
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 316
          Height = 105
          Align = alClient
          BorderOuter = fsFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = -2
          ExplicitHeight = 119
          object cxLabel1: TcxLabel
            Left = 8
            Top = 18
            Caption = 'Tanggal Laporan'
          end
          object cxDateEdit1: TcxDateEdit
            Left = 137
            Top = 17
            TabOrder = 1
            Width = 173
          end
          object cxButton5: TcxButton
            Left = 97
            Top = 55
            Width = 149
            Height = 35
            Caption = '  &Tampilkan'
            OptionsImage.ImageIndex = 10
            OptionsImage.Images = dm.img24
            TabOrder = 2
            WordWrap = True
            OnClick = cxButton5Click
          end
        end
      end
    end
  end
end
