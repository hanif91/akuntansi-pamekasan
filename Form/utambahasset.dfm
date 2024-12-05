object fotambahasset: Tfotambahasset
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fotambahasset'
  ClientHeight = 390
  ClientWidth = 358
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
    Width = 358
    Height = 390
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 354
      Height = 386
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
        Color = 52479
        Caption = 'Tambah Asset'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 354
          Height = 364
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          object RzLabel1: TRzLabel
            Left = 7
            Top = 16
            Width = 329
            Height = 96
            Caption = 
              'Tambah Asset Dibuat Secara Otomatis Dari Transaksi : '#13'1. JPK    ' +
              '       3. DHHD'#13'2. JPBIK        4. JU'#13#13'Asset yang sudah pernah di' +
              'tambahkan sebelumnya Akan Diupdate Sesuai dengan No. Ref '
            WordWrap = True
            Blinking = True
            BlinkColor = clBlue
          end
          object cxProgressBar1: TcxProgressBar
            Left = 9
            Top = 313
            AutoSize = False
            TabOrder = 5
            Height = 31
            Width = 333
          end
          object cxComboBox1: TcxComboBox
            Left = 173
            Top = 135
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = cxComboBox1PropertiesChange
            TabOrder = 0
            Height = 30
            Width = 169
          end
          object cxComboBox2: TcxComboBox
            Left = 173
            Top = 115
            AutoSize = False
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Noto Sans'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Visible = False
            Height = 30
            Width = 169
          end
          object cxLabel2: TcxLabel
            Left = 82
            Top = 143
            Caption = 'Periode Jurnal'
          end
          object cxButton2: TcxButton
            Left = 109
            Top = 313
            Width = 153
            Height = 31
            Caption = '&Proses'
            OptionsImage.ImageIndex = 8
            OptionsImage.Images = dm.img24
            TabOrder = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Noto Sans'
            Font.Style = []
            ParentFont = False
            WordWrap = True
            OnClick = cxButton2Click
          end
          object Memo1: TMemo
            Left = 9
            Top = 171
            Width = 333
            Height = 136
            Lines.Strings = (
              'Memo1')
            ScrollBars = ssBoth
            TabOrder = 3
          end
        end
      end
    end
  end
  object Qass: TMyQuery
    Connection = dm.Conn1
    Left = 34
    Top = 232
  end
  object QassCek: TMyQuery
    Connection = dm.Conn1
    Left = 58
    Top = 208
  end
end
