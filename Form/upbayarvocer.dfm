object fopbayarvocer: Tfopbayarvocer
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fotambahju'
  ClientHeight = 467
  ClientWidth = 402
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
    Width = 402
    Height = 467
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 398
      Height = 463
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
        Caption = 'Tambah Voucher'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 398
          Height = 444
          Align = alClient
          BorderOuter = fsFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object cxGroupBox1: TcxGroupBox
            Left = 3
            Top = 4
            ParentBackground = False
            TabOrder = 0
            Height = 381
            Width = 388
            object cxLabel1: TcxLabel
              Left = 11
              Top = 45
              Caption = 'No. Voucher'
              Transparent = True
            end
            object notrans: TcxTextEdit
              Left = 107
              Top = 42
              BeepOnEnter = False
              Enabled = False
              Properties.ReadOnly = True
              TabOrder = 1
              OnKeyPress = notransKeyPress
              Width = 145
            end
            object cxLabel2: TcxLabel
              Left = 11
              Top = 72
              Caption = 'Uraian'
              Transparent = True
            end
            object cxLabel4: TcxLabel
              Left = 11
              Top = 11
              Caption = 'Tanggal VC'
              Transparent = True
            end
            object tanggal: TcxDateEdit
              Left = 107
              Top = 9
              BeepOnEnter = False
              Properties.DisplayFormat = 'dd mmmm yyyy'
              Properties.EditFormat = 'dd mmmm yyyy'
              Properties.ReadOnly = True
              TabOrder = 0
              OnKeyPress = tanggalKeyPress
              Width = 145
            end
            object uraian: TcxTextEdit
              Left = 107
              Top = 72
              AutoSize = False
              BeepOnEnter = False
              Properties.ReadOnly = True
              TabOrder = 2
              Height = 52
              Width = 270
            end
            object cxLabel6: TcxLabel
              Left = 11
              Top = 140
              Caption = 'Type Bayar'
              Style.BorderStyle = ebsNone
              Transparent = True
            end
            object RzRadioGroup1: TRzRadioGroup
              Left = 104
              Top = 137
              Width = 249
              Height = 26
              Caption = ''
              Columns = 2
              GroupStyle = gsCustom
              ItemHeight = 20
              ItemIndex = 0
              Items.Strings = (
                'Tunai'
                'Kredit')
              StartXPos = 10
              TabOnEnter = True
              TabOrder = 4
              Transparent = True
              OnClick = RzRadioGroup1Click
            end
            object cxLabel3: TcxLabel
              Left = 11
              Top = 171
              Caption = 'Termin'
              Style.BorderStyle = ebsNone
              Transparent = True
            end
            object cxLabel5: TcxLabel
              Left = 11
              Top = 202
              Caption = 'Nama Bank'
              Style.BorderStyle = ebsNone
              Transparent = True
            end
            object cxLabel7: TcxLabel
              Left = 11
              Top = 232
              Caption = 'Nomor Cek'
              Style.BorderStyle = ebsNone
              Transparent = True
            end
            object cxLabel8: TcxLabel
              Left = 12
              Top = 262
              Caption = 'Tgl Bayar'
              Style.BorderStyle = ebsNone
              Transparent = True
            end
            object cxLabel9: TcxLabel
              Left = 12
              Top = 293
              Caption = 'Total Bayar'
              Style.BorderStyle = ebsNone
              Transparent = True
            end
            object cxLabel10: TcxLabel
              Left = 12
              Top = 322
              Caption = 'Sisa Bayar'
              Style.BorderStyle = ebsNone
              Transparent = True
            end
            object cxLabel11: TcxLabel
              Left = 12
              Top = 351
              Caption = 'Jumlah Bayar'
              Style.BorderStyle = ebsNone
              Transparent = True
            end
            object RzEdit1: TRzEdit
              Left = 108
              Top = 230
              Width = 145
              Height = 24
              Text = ''
              FrameHotStyle = fsNone
              TabOnEnter = True
              TabOrder = 6
            end
            object RzComboBox1: TRzComboBox
              Left = 108
              Top = 200
              Width = 270
              Height = 24
              TabOnEnter = True
              TabOrder = 5
            end
            object RzDateTimeEdit1: TRzDateTimeEdit
              Left = 108
              Top = 260
              Width = 144
              Height = 24
              EditType = etDate
              Format = 'dd mmmm yyyy'
              TabOnEnter = True
              TabOrder = 7
            end
            object RzNumericEdit1: TRzNumericEdit
              Left = 108
              Top = 290
              Width = 145
              Height = 24
              Color = clInfoBk
              ReadOnly = True
              TabOnEnter = True
              TabOrder = 8
              DisplayFormat = '#,##0'
            end
            object RzNumericEdit2: TRzNumericEdit
              Left = 108
              Top = 320
              Width = 145
              Height = 24
              Color = clInfoBk
              ReadOnly = True
              TabOnEnter = True
              TabOrder = 9
              DisplayFormat = '#,##0'
            end
            object RzNumericEdit3: TRzNumericEdit
              Left = 108
              Top = 350
              Width = 145
              Height = 24
              Color = clInfoBk
              ReadOnly = True
              TabOnEnter = True
              TabOrder = 10
              DisplayFormat = '#,##0'
            end
            object RzNumericEdit4: TRzNumericEdit
              Left = 108
              Top = 169
              Width = 53
              Height = 24
              Enabled = False
              TabOnEnter = True
              TabOrder = 3
              DisplayFormat = '#,##0'
            end
          end
          object cxGroupBox2: TcxGroupBox
            Left = 3
            Top = 391
            PanelStyle.Active = True
            TabOrder = 1
            Height = 41
            Width = 388
            object cxButton1: TcxButton
              Left = 215
              Top = 3
              Width = 85
              Height = 35
              Align = alRight
              Caption = '&Simpan'
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = dm.img24
              TabOrder = 0
              OnClick = cxButton1Click
            end
            object cxButton2: TcxButton
              Left = 300
              Top = 3
              Width = 85
              Height = 35
              Align = alRight
              Caption = '&Batal'
              OptionsImage.ImageIndex = 2
              OptionsImage.Images = dm.img24
              TabOrder = 1
              OnClick = cxButton2Click
            end
          end
        end
      end
    end
  end
  object Qcek: TMyQuery
    Connection = dm.Conn1
    Left = 304
    Top = 304
  end
end
