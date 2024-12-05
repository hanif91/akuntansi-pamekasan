object fotambahjpk: Tfotambahjpk
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fotambahjpk'
  ClientHeight = 226
  ClientWidth = 279
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
    Width = 279
    Height = 226
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 275
      Height = 222
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
        Color = 52479
        Caption = 'Tambah && Perbaharui JPK'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 275
          Height = 203
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          object RzLabel1: TRzLabel
            Left = 10
            Top = 3
            Width = 256
            Height = 107
            AutoSize = False
            Caption = 
              'Tambah && Pembaharuan Jurnal Penerimaan Kas akan diproses (dijur' +
              'nal) otomatis berdasarkan daftar Transaksi :'#13'  - Kas Masuk'#13'  - K' +
              'as Transfer'#13'  - Setoran Anggota'#13'  - Biaya Administrasi Pinjaman ' +
              'Anggota'#13'  - Pembayaran Angsuran Pinjaman Anggota'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            WordWrap = True
            Blinking = True
            BlinkColor = 5482548
          end
          object RzPanel2: TRzPanel
            Left = 11
            Top = 145
            Width = 253
            Height = 200
            BorderOuter = fsNone
            TabOrder = 3
            object cxMemo1: TcxMemo
              Left = 0
              Top = 30
              Align = alClient
              Lines.Strings = (
                'cxMemo1')
              Properties.ScrollBars = ssBoth
              TabOrder = 0
              Height = 170
              Width = 253
            end
            object cxProgressBar1: TcxProgressBar
              Left = 0
              Top = 0
              Align = alTop
              AutoSize = False
              TabOrder = 1
              Visible = False
              Height = 30
              Width = 253
            end
          end
          object cxComboBox2: TcxComboBox
            Left = 87
            Top = 114
            AutoSize = False
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Noto Sans'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Visible = False
            Height = 30
            Width = 169
          end
          object cxComboBox1: TcxComboBox
            Left = 87
            Top = 113
            AutoSize = False
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = cxComboBox1PropertiesChange
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Noto Sans'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Height = 30
            Width = 177
          end
          object CxLabel1: TcxLabel
            Left = 10
            Top = 116
            Caption = 'Periode'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Noto Sans'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object RzPanel3: TRzPanel
            Left = 37
            Top = 142
            Width = 207
            Height = 52
            BorderOuter = fsNone
            TabOrder = 4
            object RzToolButton2: TRzToolButton
              Left = 0
              Top = 7
              Width = 207
              Height = 45
              GradientColorStyle = gcsCustom
              SelectionColorStart = 3927039
              SelectionColorStop = 7457838
              SelectionFrameColor = 52479
              ImageIndex = 3
              Images = dm.img24
              ShowCaption = True
              Transparent = False
              UseToolbarShowCaption = False
              UseToolbarVisualStyle = False
              VisualStyle = vsGradient
              Align = alBottom
              Caption = '&Proses'
              Color = 2250751
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clCream
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = RzToolButton2Click
              ExplicitTop = 5
            end
          end
        end
      end
    end
  end
  object Qcekkm: TMyQuery
    Connection = dm.Conn1
    Left = 138
    Top = 29
  end
  object Qceksetor: TMyQuery
    Connection = dm.Conn1
    Left = 170
    Top = 37
  end
  object Qcekbyadm: TMyQuery
    Connection = dm.Conn1
    Left = 122
    Top = 85
  end
  object Qcekang: TMyQuery
    Connection = dm.Conn1
    Left = 226
    Top = 29
  end
  object Qdetail: TMyQuery
    Connection = dm.Conn1
    Left = 50
    Top = 69
  end
  object Qcekkt: TMyQuery
    Connection = dm.Conn1
    Left = 194
    Top = 93
  end
end
