object fohpspenyusutan: Tfohpspenyusutan
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fohpspenyusutan'
  ClientHeight = 338
  ClientWidth = 396
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel4: TRzPanel
    Left = 0
    Top = 0
    Width = 396
    Height = 338
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 392
      Height = 334
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
        AlignWithMargins = True
        Color = 52479
        Caption = 'Hapus Penyusutan'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 386
          Height = 309
          Align = alClient
          BorderOuter = fsFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object RzLabel1: TRzLabel
            Left = 13
            Top = 17
            Width = 339
            Height = 112
            Caption = 
              '- Menghapus Penyusutan di lakukan hanya jika ada koreksi pada ni' +
              'lai prolehan.'#13'- data - data yang akan dihapus adalah :'#13'  1. Data' +
              ' Penyusutan 1 tahun yang di pilih.'#13'  2. Data Jurnal Penyusutan d' +
              'alam 1 tahun.'#13'- Proses ini hanya bisa dilakukan jika Periode Jur' +
              'nal tidak dikunci dalam 1 tahun yang di pilih '
            WordWrap = True
            Blinking = True
            BlinkColor = clBlue
          end
          object cxButton2: TcxButton
            Left = 105
            Top = 243
            Width = 161
            Height = 31
            Caption = '&Hapus'
            OptionsImage.ImageIndex = 7
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
          object RzDateTimePicker1: TRzDateTimePicker
            Left = 168
            Top = 148
            Width = 98
            Height = 27
            Date = 44795.000000000000000000
            Format = 'yyyy'
            Time = 0.419776747687137700
            DateMode = dmUpDown
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object cxLabel2: TcxLabel
            Left = 36
            Top = 149
            Caption = 'Tahun Penyustan'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object RzDateTimePicker2: TRzDateTimePicker
            Left = 168
            Top = 192
            Width = 186
            Height = 29
            Date = 44833.000000000000000000
            Format = 'MMMM yyyy'
            Time = 0.672297465280280400
            DateMode = dmUpDown
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object cxLabel1: TcxLabel
            Left = 36
            Top = 196
            Caption = 'Periode Aseet'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
        end
      end
    end
  end
end
