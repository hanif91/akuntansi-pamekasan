object fotambahlap: Tfotambahlap
  Left = 498
  Top = 153
  BorderStyle = bsNone
  Caption = 'Tambah Data'
  ClientHeight = 399
  ClientWidth = 289
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
    Width = 289
    Height = 399
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    ExplicitWidth = 290
    ExplicitHeight = 239
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 285
      Height = 395
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
      ExplicitWidth = 286
      ExplicitHeight = 235
      FixedDimension = 22
      object TabSheet1: TRzTabSheet
        Color = 52479
        Caption = 'Tambah Laporan'
        ExplicitWidth = 286
        ExplicitHeight = 213
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 285
          Height = 373
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          ExplicitLeft = -3
          ExplicitTop = 3
          ExplicitWidth = 286
          ExplicitHeight = 356
          object comb1: TcxComboBox
            Left = 96
            Top = 102
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = comb1PropertiesChange
            TabOrder = 0
            Width = 177
          end
          object comb2: TcxComboBox
            Left = 344
            Top = 100
            Properties.DropDownListStyle = lsFixedList
            TabOrder = 1
            Visible = False
            Width = 57
          end
          object comb3: TcxComboBox
            Left = 96
            Top = 162
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = comb3PropertiesChange
            TabOrder = 2
            Width = 177
          end
          object comb4: TcxComboBox
            Left = 344
            Top = 132
            Properties.DropDownListStyle = lsFixedList
            TabOrder = 3
            Visible = False
            Width = 57
          end
          object comb5: TcxComboBox
            Left = 96
            Top = 223
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = comb5PropertiesChange
            TabOrder = 4
            Width = 177
          end
          object comb6: TcxComboBox
            Left = 344
            Top = 162
            Properties.DropDownListStyle = lsFixedList
            TabOrder = 5
            Visible = False
            Width = 57
          end
          object cxButton1: TcxButton
            Left = 96
            Top = 327
            Width = 105
            Height = 33
            Caption = '&Simpan'
            OptionsImage.ImageIndex = 3
            OptionsImage.Images = dm.img24
            TabOrder = 6
            OnClick = cxButton1Click
          end
          object cxLabel1: TcxLabel
            Left = 8
            Top = 13
            Caption = 'Kode'
            Transparent = True
          end
          object cxLabel2: TcxLabel
            Left = 8
            Top = 42
            Caption = 'Nama laporan'
            Transparent = True
          end
          object cxLabel3: TcxLabel
            Left = 8
            Top = 103
            Caption = 'Ttd 1'
            Transparent = True
          end
          object cxLabel4: TcxLabel
            Left = 9
            Top = 163
            Caption = 'Ttd 2'
            Transparent = True
          end
          object cxLabel5: TcxLabel
            Left = 9
            Top = 224
            Caption = 'Ttd 3 / Bawah'
            Transparent = True
          end
          object txtkode: TcxTextEdit
            Left = 96
            Top = 13
            Properties.MaxLength = 5
            TabOrder = 12
            Text = 'txtkode'
            Width = 177
          end
          object txtnama: TcxTextEdit
            Left = 96
            Top = 42
            Properties.MaxLength = 45
            TabOrder = 13
            Text = 'txtnama'
            Width = 177
          end
          object cxLabel6: TcxLabel
            Left = 9
            Top = 287
            Caption = 'Ttd 4'
            Transparent = True
          end
          object comb7: TcxComboBox
            Left = 96
            Top = 286
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = comb7PropertiesChange
            TabOrder = 15
            Width = 177
          end
          object cxTextEdit1: TcxTextEdit
            Left = 96
            Top = 132
            Properties.MaxLength = 45
            TabOrder = 16
            Text = 'txtnama'
            Width = 177
          end
          object cxTextEdit2: TcxTextEdit
            Left = 96
            Top = 192
            Properties.MaxLength = 45
            TabOrder = 17
            Text = 'txtnama'
            Width = 177
          end
          object cxTextEdit3: TcxTextEdit
            Left = 96
            Top = 255
            Properties.MaxLength = 45
            TabOrder = 18
            Text = 'txtnama'
            Width = 177
          end
          object cxTextEdit4: TcxTextEdit
            Left = 96
            Top = 72
            Properties.MaxLength = 45
            TabOrder = 19
            Text = 'txtnama'
            Width = 177
          end
          object cxLabel7: TcxLabel
            Left = 9
            Top = 73
            Caption = 'Ket 1'
            Transparent = True
          end
          object cxLabel8: TcxLabel
            Left = 9
            Top = 133
            Caption = 'Ket 2'
            Transparent = True
          end
          object cxLabel9: TcxLabel
            Left = 9
            Top = 193
            Caption = 'Ket 3'
            Transparent = True
          end
          object cxLabel10: TcxLabel
            Left = 9
            Top = 255
            Caption = 'Ket 3'
            Transparent = True
          end
          object comb8: TcxComboBox
            Left = 344
            Top = 192
            Properties.DropDownListStyle = lsFixedList
            TabOrder = 24
            Visible = False
            Width = 57
          end
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 192
    Top = 219
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
  end
end
