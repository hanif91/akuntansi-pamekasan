object foposbb: Tfoposbb
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'foposbb'
  ClientHeight = 439
  ClientWidth = 366
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
    Width = 366
    Height = 439
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 362
      Height = 435
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
        Caption = 'Posting Buku Besar'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 362
          Height = 416
          Align = alClient
          BorderOuter = fsFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          DesignSize = (
            362
            416)
          object cxProgressBar1: TcxProgressBar
            Left = 11
            Top = 368
            Anchors = [akTop]
            AutoSize = False
            TabOrder = 6
            Height = 34
            Width = 339
          end
          object cxComboBox2: TcxComboBox
            Left = 333
            Top = 0
            Properties.DropDownListStyle = lsFixedList
            TabOrder = 0
            Visible = False
            Width = 97
          end
          object cxComboBox1: TcxComboBox
            Left = 143
            Top = 17
            Anchors = [akTop]
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = cxComboBox1PropertiesChange
            TabOrder = 1
            Height = 33
            Width = 207
          end
          object cxMemo1: TcxMemo
            Left = 11
            Top = 80
            Anchors = [akTop]
            ParentFont = False
            Properties.ScrollBars = ssVertical
            TabOrder = 2
            Height = 285
            Width = 339
          end
          object cxLabel2: TcxLabel
            Left = 11
            Top = 53
            Anchors = [akTop]
            Caption = 'Log Posting'
            Transparent = True
          end
          object cxLabel1: TcxLabel
            Left = 11
            Top = 21
            Anchors = [akTop]
            Caption = 'Periode Posting : '
            Transparent = True
          end
          object cxButton1: TcxButton
            Left = 11
            Top = 369
            Width = 339
            Height = 34
            Anchors = [akTop]
            Caption = 'Mulai Posting'
            OptionsImage.ImageIndex = 15
            OptionsImage.Images = dm.img24
            TabOrder = 3
            OnClick = cxButton1Click
          end
        end
      end
    end
  end
  object Qcoa: TMyQuery
    Connection = dm.Conn1
    Left = 80
    Top = 291
  end
  object Qex: TMyQuery
    SQLInsert.Strings = (
      '('
      'idcoa,'
      'idju,'
      'tanggal,'
      'periode,'
      'jenis,'
      'debet,'
      'kredit,'
      'saldo,'
      'flagsa,'
      'kodejurnal,'
      'uraian,'
      'noju'
      ')'
      'value'
      '('
      ':idcoa,'
      ':idju,'
      ':tanggal,'
      ':periode,'
      ':jenis,'
      ':debet,'
      ':kredit,'
      ':saldo,'
      ':flagsa,'
      ':kodejurnal,'
      ':uraian,'
      ':noju'
      ')')
    SQLUpdate.Strings = (
      '')
    Connection = dm.Conn1
    Left = 64
    Top = 224
  end
  object Qcek: TMyQuery
    Connection = dm.Conn1
    Left = 56
    Top = 184
  end
end
