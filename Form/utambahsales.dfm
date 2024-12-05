inherited fotambahsales: Tfotambahsales
  BorderStyle = bsNone
  Caption = ''
  ClientHeight = 172
  ClientWidth = 315
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 315
  ExplicitHeight = 172
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzPanel4: TRzPanel
    Width = 315
    Height = 172
    ExplicitTop = 0
    ExplicitWidth = 429
    ExplicitHeight = 510
    inherited RzPageControl1: TRzPageControl
      Width = 311
      Height = 168
      OnClose = RzPageControl1Close
      ExplicitWidth = 425
      ExplicitHeight = 506
      FixedDimension = 19
      inherited TabSheet1: TRzTabSheet
        Caption = 'Tambah Sales'
        ExplicitWidth = 425
        ExplicitHeight = 487
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 311
          Height = 149
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          ExplicitLeft = 64
          ExplicitTop = 144
          ExplicitWidth = 185
          ExplicitHeight = 41
          DesignSize = (
            311
            149)
          object btnsimpan: TRzToolButton
            Left = 192
            Top = 86
            Width = 97
            Height = 31
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
            OnClick = btnsimpanClick
          end
          object btnkembali: TRzToolButton
            Left = 89
            Top = 86
            Width = 97
            Height = 31
            GradientColorStyle = gcsCustom
            SelectionColorStart = 3927039
            SelectionColorStop = 7457838
            SelectionFrameColor = 52479
            Images = dm.img24
            ShowCaption = True
            Transparent = False
            UseToolbarShowCaption = False
            UseToolbarVisualStyle = False
            VisualStyle = vsGradient
            Caption = '&Kembali'
            Color = 2250751
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object namasales: TcxTextEdit
            Left = 100
            Top = 51
            BeepOnEnter = False
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 35
            Properties.ReadOnly = False
            TabOrder = 1
            TextHint = 'Nama Lengkap Sales'
            Width = 189
          end
          object kodesales: TcxTextEdit
            Left = 100
            Top = 24
            BeepOnEnter = False
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 2
            Properties.ReadOnly = False
            TabOrder = 0
            TextHint = '2 Digit  inisial nama'
            Width = 189
          end
          object cxLabel3: TcxLabel
            Left = 9
            Top = 25
            Caption = 'Kode Sales'
            Transparent = True
          end
          object cxLabel1: TcxLabel
            Left = 9
            Top = 52
            Caption = 'Nama Sales'
            Transparent = True
          end
        end
      end
    end
  end
end
