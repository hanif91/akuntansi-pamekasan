object fotambahcoa: Tfotambahcoa
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Tambah Kode Akun'
  ClientHeight = 250
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel4: TRzPanel
    Left = 0
    Top = 0
    Width = 480
    Height = 250
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 476
      Height = 246
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
        Caption = 'Tambah Kode Akun'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 476
          Height = 227
          Align = alClient
          BorderOuter = fsFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object RzToolButton2: TRzToolButton
            Left = 156
            Top = 171
            Width = 177
            Height = 49
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
            Caption = '&Simpan'
            Color = 2250751
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = RzToolButton2Click
          end
          object combsk11: TcxComboBox
            Left = 111
            Top = 9
            AutoSize = False
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = combsk11PropertiesChange
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Noto Sans'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 30
            Width = 81
          end
          object combs11: TcxComboBox
            Left = 191
            Top = 9
            AutoSize = False
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = combs11PropertiesChange
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Noto Sans'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Height = 30
            Width = 278
          end
          object combsk21: TcxComboBox
            Left = 111
            Top = 41
            AutoSize = False
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = combsk21PropertiesChange
            Properties.OnCloseUp = combsk21PropertiesCloseUp
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Noto Sans'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Height = 30
            Width = 81
          end
          object combs21: TcxComboBox
            Left = 191
            Top = 41
            AutoSize = False
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = combs21PropertiesChange
            Properties.OnCloseUp = combs21PropertiesCloseUp
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Noto Sans'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            Height = 30
            Width = 278
          end
          object cxLabel1: TcxLabel
            Left = 7
            Top = 12
            Caption = 'Sub 1'
            Transparent = True
          end
          object cxLabel2: TcxLabel
            Left = 7
            Top = 45
            Caption = 'Sub 2'
            Transparent = True
          end
          object cxLabel3: TcxLabel
            Left = 7
            Top = 76
            Caption = 'Kode Akun'
            Transparent = True
          end
          object cxTextEdit1: TcxTextEdit
            Left = 111
            Top = 73
            AutoSize = False
            Properties.ReadOnly = True
            TabOrder = 7
            Height = 28
            Width = 81
          end
          object cxLabel4: TcxLabel
            Left = 7
            Top = 105
            Caption = 'Nama Akun'
            Transparent = True
          end
          object cxTextEdit2: TcxTextEdit
            Left = 111
            Top = 103
            AutoSize = False
            Properties.ReadOnly = False
            TabOrder = 9
            Height = 28
            Width = 358
          end
          object cxLabel5: TcxLabel
            Left = 7
            Top = 138
            Caption = 'Tipe PU (DM)'
            Transparent = True
          end
          object cxComboBox1: TcxComboBox
            Left = 111
            Top = 135
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
            TabOrder = 11
            Height = 30
            Width = 241
          end
          object combid1: TcxComboBox
            Left = 676
            Top = 45
            AutoSize = False
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Noto Sans'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 12
            Height = 30
            Width = 81
          end
          object combid2: TcxComboBox
            Left = 636
            Top = 287
            AutoSize = False
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Noto Sans'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 13
            Height = 30
            Width = 81
          end
          object cxComboBox2: TcxComboBox
            Left = 572
            Top = 216
            AutoSize = False
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Noto Sans'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 14
            Height = 30
            Width = 233
          end
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 400
    Top = 65531
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
