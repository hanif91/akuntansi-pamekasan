object foanggota: Tfoanggota
  Left = 0
  Top = 0
  Caption = 'Anggota & Kolektif'
  ClientHeight = 527
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 765
    Height = 527
    Hint = ''
    ActivePage = TabSheet1
    Align = alClient
    BackgroundColor = 7457838
    BoldCurrentTab = True
    Color = 52479
    LightenUnselectedColoredTabs = False
    FlatColor = 7457838
    HotTrack = False
    HotTrackColor = 52479
    ParentBackgroundColor = False
    ParentColor = False
    ShowCardFrame = False
    ShowFullFrame = False
    ShowShadow = False
    TabColors.HighlightBar = 6336039
    TabColors.Shadow = 52479
    TabColors.Unselected = 3927039
    TabIndex = 0
    TabOrder = 0
    TextColors.Selected = 6710886
    TextColors.Unselected = 10260600
    UseGradients = False
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Color = 52479
      Caption = 'Anggota'
      object RzPanel2: TRzPanel
        Left = 0
        Top = 0
        Width = 765
        Height = 508
        Align = alClient
        BorderOuter = fsNone
        TabOrder = 0
        object RzPanel5: TRzPanel
          Left = 0
          Top = 0
          Width = 489
          Height = 508
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 1
          object RzPanel3: TRzPanel
            Left = 0
            Top = 0
            Width = 489
            Height = 37
            Align = alTop
            BorderOuter = fsFlat
            TabOrder = 0
            object RzToolButton1: TRzToolButton
              Left = 3
              Top = 3
              Width = 142
              Height = 30
              GradientColorStyle = gcsCustom
              SelectionColorStart = 3927039
              SelectionColorStop = 7457838
              SelectionFrameColor = 52479
              ImageIndex = 14
              Images = dm.img24
              ShowCaption = True
              Transparent = False
              UseToolbarShowCaption = False
              UseToolbarVisualStyle = False
              VisualStyle = vsGradient
              Caption = '&Tambah Anggota'
              Color = 2250751
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clCream
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = RzToolButton1Click
            end
          end
          object cxGrid1: TcxGrid
            Left = 0
            Top = 37
            Width = 489
            Height = 471
            Align = alClient
            BorderStyle = cxcbsNone
            TabOrder = 1
            ExplicitTop = 66
            ExplicitHeight = 442
            object cxGrid1DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.First.Visible = True
              Navigator.Buttons.PriorPage.Visible = True
              Navigator.Buttons.Prior.Visible = True
              Navigator.Buttons.Next.Visible = True
              Navigator.Buttons.NextPage.Visible = True
              Navigator.Buttons.Last.Visible = True
              Navigator.Buttons.Insert.Visible = True
              Navigator.Buttons.Append.Visible = False
              Navigator.Buttons.Delete.Visible = True
              Navigator.Buttons.Edit.Visible = True
              Navigator.Buttons.Post.Visible = True
              Navigator.Buttons.Cancel.Visible = True
              Navigator.Buttons.Refresh.Visible = True
              Navigator.Buttons.SaveBookmark.Visible = True
              Navigator.Buttons.GotoBookmark.Visible = True
              Navigator.Buttons.Filter.Visible = True
              OnFocusedRecordChanged = cxGrid1DBTableView1FocusedRecordChanged
              DataController.DataSource = Danggota
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.CellEndEllipsis = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderAutoHeight = True
              OptionsView.Indicator = True
              Styles.Header = dm.bold8
              object cxGrid1DBTableView1idanggota: TcxGridDBColumn
                Caption = 'Id'
                DataBinding.FieldName = 'idanggota'
                Visible = False
                Width = 36
              end
              object cxGrid1DBTableView1aktif: TcxGridDBColumn
                Caption = 'Status'
                DataBinding.FieldName = 'aktif'
                HeaderAlignmentHorz = taCenter
                Width = 20
              end
              object cxGrid1DBTableView1kodeanggota: TcxGridDBColumn
                Caption = 'Kode Anggota'
                DataBinding.FieldName = 'kodeanggota'
                HeaderAlignmentHorz = taCenter
                Width = 25
              end
              object cxGrid1DBTableView1namaanggota: TcxGridDBColumn
                Caption = 'Nama Anggota'
                DataBinding.FieldName = 'namaanggota'
                Width = 115
              end
              object cxGrid1DBTableView1tempat: TcxGridDBColumn
                Caption = 'Tempat'
                DataBinding.FieldName = 'tempat'
                Visible = False
                Width = 79
              end
              object cxGrid1DBTableView1tgllahir: TcxGridDBColumn
                Caption = 'Tanggal Lahir'
                DataBinding.FieldName = 'tgllahir'
                Visible = False
                Width = 111
              end
              object cxGrid1DBTableView1alamat: TcxGridDBColumn
                Caption = 'Alamat'
                DataBinding.FieldName = 'alamat'
                Width = 309
              end
              object cxGrid1DBTableView1pekerjaan: TcxGridDBColumn
                Caption = 'Pekerjaan'
                DataBinding.FieldName = 'pekerjaan'
                Visible = False
              end
              object cxGrid1DBTableView1namakolektif: TcxGridDBColumn
                Caption = 'Kolektif'
                DataBinding.FieldName = 'namakolektif'
                Visible = False
              end
              object cxGrid1DBTableView1nohp: TcxGridDBColumn
                Caption = 'No Hp'
                DataBinding.FieldName = 'nohp'
                Visible = False
              end
              object cxGrid1DBTableView1jeniskelamin: TcxGridDBColumn
                Caption = 'Jenis Kelamin'
                DataBinding.FieldName = 'jeniskelamin'
                Visible = False
              end
              object cxGrid1DBTableView1tglgabung: TcxGridDBColumn
                Caption = 'Tgl Gabung'
                DataBinding.FieldName = 'tglgabung'
                Visible = False
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
        end
        object RzPanel4: TRzPanel
          Left = 489
          Top = 0
          Width = 276
          Height = 508
          Align = alRight
          BorderOuter = fsNone
          TabOrder = 0
          object cxScrollBox1: TcxScrollBox
            Left = 0
            Top = 0
            Width = 276
            Height = 508
            Align = alClient
            TabOrder = 0
            object RzToolButton2: TRzToolButton
              Left = 6
              Top = 355
              Width = 116
              Height = 39
              GradientColorStyle = gcsCustom
              SelectionColorStart = 3927039
              SelectionColorStop = 7457838
              SelectionFrameColor = 52479
              ImageIndex = 20
              Images = dm.img24
              ShowCaption = True
              Transparent = False
              UseToolbarShowCaption = False
              UseToolbarVisualStyle = False
              VisualStyle = vsGradient
              Caption = 'Cetak Buku Simpanan '
              Color = 2250751
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clCream
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = RzToolButton2Click
            end
            object RzToolButton3: TRzToolButton
              Left = 132
              Top = 355
              Width = 114
              Height = 39
              GradientColorStyle = gcsCustom
              SelectionColorStart = 3927039
              SelectionColorStop = 7457838
              SelectionFrameColor = 52479
              ImageIndex = 18
              Images = dm.img24
              ShowCaption = True
              Transparent = False
              UseToolbarShowCaption = False
              UseToolbarVisualStyle = False
              VisualStyle = vsGradient
              Caption = 'Cetak Buku Pinjaman'
              Color = 2250751
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clCream
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = RzToolButton1Click
            end
            object cxLabel1: TcxLabel
              Left = 6
              Top = 31
              Caption = 'Kode Anggota'
            end
            object txtkodeanggota: TcxTextEdit
              Left = 94
              Top = 31
              Properties.ReadOnly = True
              TabOrder = 1
              Width = 152
            end
            object nama: TcxTextEdit
              Left = 94
              Top = 58
              Properties.ReadOnly = True
              TabOrder = 2
              Width = 152
            end
            object cxLabel4: TcxLabel
              Left = 6
              Top = 137
              Caption = 'Alamat'
            end
            object cxLabel3: TcxLabel
              Left = 6
              Top = 59
              Caption = 'Nama Anggota'
            end
            object alamat: TcxMemo
              Left = 94
              Top = 140
              Properties.ReadOnly = True
              Properties.ScrollBars = ssVertical
              Properties.WantReturns = False
              TabOrder = 5
              Height = 89
              Width = 152
            end
            object cxLabel5: TcxLabel
              Left = 6
              Top = 236
              Caption = 'Kolektif'
            end
            object kolektif: TcxTextEdit
              Left = 94
              Top = 235
              Properties.ReadOnly = True
              TabOrder = 7
              Width = 152
            end
            object cxLabel6: TcxLabel
              Left = 6
              Top = 263
              Caption = 'Pekerjaan'
            end
            object cxLabel7: TcxLabel
              Left = 6
              Top = 85
              Caption = 'Tempat Tgl Lahir'
            end
            object tempat: TcxTextEdit
              Left = 95
              Top = 85
              Properties.ReadOnly = True
              TabOrder = 10
              Width = 82
            end
            object tgllahir: TcxTextEdit
              Left = 180
              Top = 85
              Properties.ReadOnly = True
              TabOrder = 11
              Width = 66
            end
            object pekerjaan: TcxTextEdit
              Left = 94
              Top = 262
              Properties.ReadOnly = True
              TabOrder = 12
              Width = 152
            end
            object cxLabel8: TcxLabel
              Left = 6
              Top = 113
              Caption = 'Jenis Kelamin'
            end
            object jeniskelamin: TcxTextEdit
              Left = 94
              Top = 112
              Properties.ReadOnly = True
              TabOrder = 14
              Width = 152
            end
            object cxLabel9: TcxLabel
              Left = 6
              Top = 290
              Caption = 'No Hp'
            end
            object nohp: TcxTextEdit
              Left = 94
              Top = 289
              Properties.ReadOnly = True
              TabOrder = 16
              Width = 152
            end
            object status: TcxTextEdit
              Left = 119
              Top = 316
              Properties.ReadOnly = True
              TabOrder = 17
              Width = 127
            end
            object cxLabel10: TcxLabel
              Left = 6
              Top = 317
              Caption = 'Status Keanggotaan'
            end
            object cxLabel2: TcxLabel
              Left = 0
              Top = 0
              Align = alTop
              AutoSize = False
              Caption = 'Detail Anggota'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold, fsUnderline]
              Style.IsFontAssigned = True
              Height = 24
              Width = 274
            end
          end
        end
      end
    end
  end
  object Qanggota: TMyQuery
    Connection = dm.Conn1
    SQL.Strings = (
      
        'Select a.*,b.namakolektif from anggota a LEFT JOIN kolektif b on' +
        ' a.idkolektif=b.idkolektif')
    Left = 448
    Top = 152
    object Qanggotaidanggota: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'idanggota'
      Origin = 'a.idanggota'
    end
    object Qanggotakodeanggota: TStringField
      FieldName = 'kodeanggota'
      Origin = 'a.kodeanggota'
      Size = 10
    end
    object Qanggotanamaanggota: TStringField
      FieldName = 'namaanggota'
      Origin = 'a.namaanggota'
      Size = 75
    end
    object Qanggotaalamat: TStringField
      FieldName = 'alamat'
      Origin = 'a.alamat'
      Size = 125
    end
    object Qanggotaidkolektif: TIntegerField
      FieldName = 'idkolektif'
      Origin = 'a.idkolektif'
    end
    object Qanggotapekerjaan: TStringField
      FieldName = 'pekerjaan'
      Origin = 'a.pekerjaan'
      Size = 45
    end
    object Qanggotaaktif: TStringField
      FieldName = 'aktif'
      Origin = 'a.aktif'
      FixedChar = True
      Size = 8
    end
    object Qanggotanamakolektif: TStringField
      FieldName = 'namakolektif'
      Origin = 'b.namakolektif'
      Size = 35
    end
    object Qanggotanohp: TStringField
      FieldName = 'nohp'
      Origin = 'a.nohp'
      Size = 15
    end
    object Qanggotajeniskelamin: TStringField
      FieldName = 'jeniskelamin'
      Origin = 'a.jeniskelamin'
      FixedChar = True
      Size = 11
    end
    object Qanggotatglgabung: TDateField
      FieldName = 'tglgabung'
      Origin = 'a.tglgabung'
    end
    object Qanggotatempat: TStringField
      FieldName = 'tempat'
      Origin = 'a.tempat'
    end
    object Qanggotatgllahir: TDateField
      FieldName = 'tgllahir'
      Origin = 'a.tgllahir'
    end
  end
  object Danggota: TMyDataSource
    DataSet = Qanggota
    Left = 352
    Top = 240
  end
  object PopupMenu1: TPopupMenu
    Images = dm.img16
    Left = 235
    Top = 300
    object Koreksi1: TMenuItem
      Caption = 'Koreksi Data'
      ImageIndex = 4
      OnClick = Koreksi1Click
    end
    object Hapus1: TMenuItem
      Caption = 'Hapus Data'
      ImageIndex = 5
      OnClick = Hapus1Click
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <
      item
        GridView = cxGrid1DBTableView1
        HitTypes = [gvhtCell]
        Index = 0
        PopupMenu = PopupMenu1
      end>
    Left = 232
    Top = 224
  end
end
