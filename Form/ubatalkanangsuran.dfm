object fobatalkanangsuran: Tfobatalkanangsuran
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fobatalkanangsuran'
  ClientHeight = 341
  ClientWidth = 384
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
    Width = 384
    Height = 341
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    ExplicitTop = -141
    ExplicitWidth = 319
    ExplicitHeight = 510
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 380
      Height = 337
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
        Caption = 'Pembatalan Angsuran'
        ExplicitLeft = -2
        ExplicitTop = 17
        ExplicitWidth = 428
        ExplicitHeight = 458
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 380
          Height = 318
          Align = alClient
          BorderOuter = fsFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = -2
          ExplicitWidth = 391
          ExplicitHeight = 223
          object RzPanel2: TRzPanel
            Left = 1
            Top = 1
            Width = 378
            Height = 64
            Align = alTop
            BorderOuter = fsFlat
            TabOrder = 0
            ExplicitWidth = 389
            object cxLabel1: TcxLabel
              Left = 13
              Top = 21
              Caption = 'No. Pembayaran'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
            end
            object cxTextEdit1: TcxTextEdit
              Left = 135
              Top = 20
              ParentFont = False
              Properties.OnChange = cxTextEdit1PropertiesChange
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 1
              Text = 'cxTextEdit1'
              Width = 146
            end
            object cxButton1: TcxButton
              Left = 287
              Top = 14
              Width = 74
              Height = 37
              Caption = 'Cari'
              OptionsImage.ImageIndex = 10
              OptionsImage.Images = dm.img24
              TabOrder = 2
              OnClick = cxButton1Click
            end
          end
          object RzPanel3: TRzPanel
            Left = 1
            Top = 65
            Width = 378
            Height = 252
            Align = alClient
            BorderOuter = fsFlat
            TabOrder = 1
            ExplicitTop = 71
            ExplicitHeight = 263
            object cxLabel2: TcxLabel
              Left = 13
              Top = 10
              Caption = 'Kode Anggota'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel3: TcxLabel
              Left = 13
              Top = 36
              Caption = 'Nama Anggota'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel4: TcxLabel
              Left = 13
              Top = 62
              Caption = 'No. Pinjaman'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel5: TcxLabel
              Left = 13
              Top = 114
              Caption = 'Angsuran Ke'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel6: TcxLabel
              Left = 14
              Top = 88
              Caption = 'Periode Tagihan'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel7: TcxLabel
              Left = 13
              Top = 166
              Caption = 'Jumlah Angsuran'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
            end
            object cxLabel10: TcxLabel
              Left = 154
              Top = 11
              Caption = ':'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel11: TcxLabel
              Left = 154
              Top = 37
              Caption = ':'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel12: TcxLabel
              Left = 154
              Top = 63
              Caption = ':'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel13: TcxLabel
              Left = 155
              Top = 89
              Caption = ':'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel14: TcxLabel
              Left = 154
              Top = 115
              Caption = ':'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel15: TcxLabel
              Left = 154
              Top = 165
              Caption = ':'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
            end
            object cxButton2: TcxButton
              Left = 87
              Top = 201
              Width = 194
              Height = 36
              Caption = 'Batalkan Angsuran'
              OptionsImage.ImageIndex = 2
              OptionsImage.Images = dm.img24
              TabOrder = 12
              OnClick = cxButton2Click
            end
            object lbljumlahangsuran: TcxLabel
              Left = 182
              Top = 165
              AutoSize = False
              Caption = 'Jumlah Angsuran'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Height = 20
              Width = 179
            end
            object lblkode: TcxLabel
              Left = 182
              Top = 10
              AutoSize = False
              Caption = 'Kode Anggota'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Height = 20
              Width = 179
            end
            object lblnama: TcxLabel
              Left = 182
              Top = 36
              AutoSize = False
              Caption = 'Nama Anggota'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Height = 20
              Width = 179
            end
            object lblnopinjaman: TcxLabel
              Left = 182
              Top = 62
              AutoSize = False
              Caption = 'No. Pinjaman'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Height = 20
              Width = 179
            end
            object lblperiode: TcxLabel
              Left = 182
              Top = 88
              AutoSize = False
              Caption = 'Periode Tagihan'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Height = 20
              Width = 179
            end
            object lblangsuranke: TcxLabel
              Left = 182
              Top = 114
              AutoSize = False
              Caption = 'Angsuran Ke'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Height = 20
              Width = 179
            end
            object cxLabel8: TcxLabel
              Left = 13
              Top = 140
              Caption = 'Tanggal Bayar'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cxLabel9: TcxLabel
              Left = 154
              Top = 139
              Caption = ':'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object lbltglbayar: TcxLabel
              Left = 182
              Top = 140
              AutoSize = False
              Caption = 'Angsuran Ke'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Height = 20
              Width = 179
            end
          end
        end
      end
    end
  end
end
