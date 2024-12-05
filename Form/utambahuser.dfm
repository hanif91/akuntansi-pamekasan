object fotambahuser: Tfotambahuser
  Left = 498
  Top = 153
  BorderStyle = bsNone
  Caption = 'Tambah Data'
  ClientHeight = 312
  ClientWidth = 295
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object RzPanel4: TRzPanel
    Left = 0
    Top = 0
    Width = 295
    Height = 312
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 291
      Height = 308
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      FlatColor = 7457838
      HotTrackColor = 52479
      ParentBackgroundColor = False
      ParentColor = False
      ParentFont = False
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
        Caption = 'Tambah User Akses'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 291
          Height = 286
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          DesignSize = (
            291
            286)
          object btnsimpan: TRzToolButton
            Left = -49
            Top = 521
            Width = 327
            Height = 38
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
            ExplicitLeft = 13
          end
          object cxButton1: TcxButton
            Left = 97
            Top = 241
            Width = 97
            Height = 33
            Caption = '&Simpan'
            TabOrder = 6
            OnClick = cxButton1Click
          end
          object cxGroupBox1: TcxGroupBox
            Left = 9
            Top = 146
            Caption = 'Detail Login Aplikasi'
            TabOrder = 4
            Height = 89
            Width = 272
            object cxLabel5: TcxLabel
              Left = 8
              Top = 19
              Caption = 'Username'
              Transparent = True
            end
            object cxLabel6: TcxLabel
              Left = 8
              Top = 50
              Caption = 'Password'
              Transparent = True
            end
            object txtuser: TcxTextEdit
              Left = 80
              Top = 18
              Properties.MaxLength = 10
              TabOrder = 3
              Text = 'txtnama'
              Width = 189
            end
            object txtpass: TcxTextEdit
              Left = 80
              Top = 49
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taBottomJustify
              Properties.EchoMode = eemPassword
              Properties.MaxLength = 8
              TabOrder = 4
              Width = 105
            end
            object cxButton2: TcxButton
              Left = 179
              Top = 50
              Width = 89
              Height = 22
              Caption = 'Perlihatkan'
              TabOrder = 2
              OnClick = cxButton2Click
            end
          end
          object cxLabel1: TcxLabel
            Left = 8
            Top = 8
            Caption = 'Nama'
            Transparent = True
          end
          object cxLabel2: TcxLabel
            Left = 8
            Top = 32
            Caption = 'Alamat'
            Transparent = True
          end
          object cxLabel4: TcxLabel
            Left = 8
            Top = 90
            Caption = 'Nik'
            Transparent = True
          end
          object txtalamat: TcxMemo
            Left = 80
            Top = 34
            Lines.Strings = (
              'txtalamat')
            Properties.MaxLength = 100
            Properties.ScrollBars = ssVertical
            Properties.WantReturns = False
            TabOrder = 1
            Height = 49
            Width = 201
          end
          object txtnama: TcxTextEdit
            Left = 80
            Top = 8
            Properties.MaxLength = 25
            TabOrder = 0
            Text = 'txtnama'
            Width = 201
          end
          object txtnik: TcxTextEdit
            Left = 80
            Top = 89
            Properties.MaxLength = 0
            TabOrder = 2
            Text = 'cxTextEdit1'
            Width = 201
          end
          object cxLabel3: TcxLabel
            Left = 8
            Top = 119
            Caption = 'Jabatan'
            Transparent = True
          end
          object cxTextEdit1: TcxTextEdit
            Left = 80
            Top = 116
            Properties.MaxLength = 0
            TabOrder = 3
            Text = 'cxTextEdit1'
            Width = 201
          end
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 192
    Top = 59
    object enter: TAction
      Caption = 'enter'
      ShortCut = 13
      OnExecute = enterExecute
    end
    object esc: TAction
      Caption = 'esc'
      ShortCut = 27
      OnExecute = escExecute
    end
    object del: TAction
      Caption = 'del'
      ShortCut = 46
    end
  end
end
