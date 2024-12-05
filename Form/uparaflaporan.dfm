object foparaflaporan: Tfoparaflaporan
  Left = 0
  Top = 0
  Caption = 'Paraf Laporan'
  ClientHeight = 556
  ClientWidth = 1054
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 1054
    Height = 556
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
    ShowHint = False
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
      Caption = 'Paraf Laporan'
      object RzPanel1: TRzPanel
        Left = 0
        Top = 0
        Width = 1054
        Height = 537
        Align = alClient
        BorderOuter = fsFlat
        TabOrder = 0
        object RzPanel2: TRzPanel
          Left = 1
          Top = 1
          Width = 1052
          Height = 37
          Align = alTop
          BorderOuter = fsFlat
          BorderSides = [sdLeft, sdRight]
          TabOrder = 0
          object RzToolButton1: TRzToolButton
            Left = 3
            Top = 1
            Width = 169
            Height = 32
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
            Caption = '&Tambah Paraf Laporan'
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
          Left = 1
          Top = 38
          Width = 1052
          Height = 498
          Align = alClient
          TabOrder = 1
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
            DataController.DataSource = Duser
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.Header = dm.bold8
            object cxGrid1DBTableView1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              Visible = False
              Width = 23
            end
            object cxGrid1DBTableView1kode: TcxGridDBColumn
              DataBinding.FieldName = 'kode'
              Visible = False
              Width = 33
            end
            object cxGrid1DBTableView1namalap: TcxGridDBColumn
              Caption = 'Nama laporan'
              DataBinding.FieldName = 'namalap'
              Width = 154
            end
            object cxGrid1DBTableView1header1: TcxGridDBColumn
              Caption = 'Ket 1'
              DataBinding.FieldName = 'header1'
              Width = 106
            end
            object cxGrid1DBTableView1nama1: TcxGridDBColumn
              Caption = 'Ttd 1'
              DataBinding.FieldName = 'nama1'
              Width = 107
            end
            object cxGrid1DBTableView1jab1: TcxGridDBColumn
              Caption = 'Jab Kiri'
              DataBinding.FieldName = 'jab1'
              Visible = False
              Width = 146
            end
            object cxGrid1DBTableView1nik1: TcxGridDBColumn
              Caption = 'Nik Kiri'
              DataBinding.FieldName = 'nik1'
              Visible = False
              Width = 59
            end
            object cxGrid1DBTableView1header2: TcxGridDBColumn
              Caption = 'Ket 2'
              DataBinding.FieldName = 'header2'
              Width = 109
            end
            object cxGrid1DBTableView1nama2: TcxGridDBColumn
              Caption = 'Ttd 2'
              DataBinding.FieldName = 'nama2'
              Width = 111
            end
            object cxGrid1DBTableView1jab2: TcxGridDBColumn
              Caption = 'Jab Tengah'
              DataBinding.FieldName = 'jab2'
              Visible = False
              Width = 143
            end
            object cxGrid1DBTableView1nik2: TcxGridDBColumn
              Caption = 'Nik Tengah'
              DataBinding.FieldName = 'nik2'
              Visible = False
              Width = 62
            end
            object cxGrid1DBTableView1header3: TcxGridDBColumn
              Caption = 'Ket 3'
              DataBinding.FieldName = 'header3'
              Width = 106
            end
            object cxGrid1DBTableView1nama3: TcxGridDBColumn
              Caption = 'Ttd 3 / Bawah'
              DataBinding.FieldName = 'nama3'
              Width = 152
            end
            object cxGrid1DBTableView1jab3: TcxGridDBColumn
              Caption = 'Jab Kanan / Bawah'
              DataBinding.FieldName = 'jab3'
              Visible = False
              Width = 129
            end
            object cxGrid1DBTableView1nik3: TcxGridDBColumn
              Caption = 'Nik Kanan/bawah'
              DataBinding.FieldName = 'nik3'
              Visible = False
              Width = 42
            end
            object cxGrid1DBTableView1header4: TcxGridDBColumn
              Caption = 'Ket 4'
              DataBinding.FieldName = 'header4'
              Width = 91
            end
            object cxGrid1DBTableView1nama4: TcxGridDBColumn
              Caption = 'TTD 4'
              DataBinding.FieldName = 'nama4'
              Width = 102
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
    end
  end
  object Duser: TMyDataSource
    DataSet = Quser
    Left = 360
    Top = 312
  end
  object Quser: TMyQuery
    Connection = dm.Conn1
    SQL.Strings = (
      #9'SELECT '
      '        t.id,'
      '        t.kode,'
      #9't.namalap,'
      '        t.header1,'
      '        t.header2,'
      '        t.header3,'
      '        t.header4,'
      #9'a.nama AS nama1,'
      #9'a.jabatan AS jab1,'
      #9'a.nik AS nik1,'
      #9'b.nama AS nama2,'
      #9'b.jabatan AS jab2,'
      #9'b.nik AS nik2,'
      #9'c.nama AS nama3,'
      #9'c.jabatan AS jab3,'
      #9'c.nik AS nik3,'
      #9'd.nama AS nama4,'
      #9'd.jabatan AS jab4,'
      #9'd.nik AS nik4'
      #9'FROM ttdlap t'
      #9'LEFT JOIN paraf a ON t.`id1`=a.`id`'
      #9'LEFT JOIN paraf b ON t.`id2`=b.`id`'
      #9'LEFT JOIN paraf c ON t.`id3`=c.`id`'
      #9'LEFT JOIN paraf d ON t.`id4`=d.`id`')
    Options.FieldOrigins = foNone
    Left = 56
    Top = 224
    object Quserkode: TStringField
      FieldName = 'kode'
      Origin = 't.kode'
      Size = 5
    end
    object Qusernamalap: TStringField
      FieldName = 'namalap'
      Origin = 't.namalap'
      Size = 45
    end
    object Qusernama1: TStringField
      FieldName = 'nama1'
      Origin = 'a.nama'
      Size = 50
    end
    object Quserjab1: TStringField
      FieldName = 'jab1'
      Origin = 'a.jabatan'
      Size = 50
    end
    object Qusernik1: TStringField
      FieldName = 'nik1'
      Origin = 'a.nik'
      Size = 15
    end
    object Qusernama2: TStringField
      FieldName = 'nama2'
      Origin = 'b.nama'
      Size = 50
    end
    object Quserjab2: TStringField
      FieldName = 'jab2'
      Origin = 'b.jabatan'
      Size = 50
    end
    object Qusernik2: TStringField
      FieldName = 'nik2'
      Origin = 'b.nik'
      Size = 15
    end
    object Qusernama3: TStringField
      FieldName = 'nama3'
      Origin = 'c.nama'
      Size = 50
    end
    object Quserjab3: TStringField
      FieldName = 'jab3'
      Origin = 'c.jabatan'
      Size = 50
    end
    object Qusernik3: TStringField
      FieldName = 'nik3'
      Origin = 'c.nik'
      Size = 15
    end
    object Quserid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 't.id'
    end
    object Quserheader1: TStringField
      FieldName = 'header1'
      Size = 35
    end
    object Quserheader2: TStringField
      FieldName = 'header2'
      Size = 35
    end
    object Quserheader3: TStringField
      FieldName = 'header3'
      Size = 35
    end
    object Quserheader4: TStringField
      FieldName = 'header4'
      Size = 35
    end
    object Qusernama4: TStringField
      FieldName = 'nama4'
      Size = 50
    end
    object Quserjab4: TStringField
      FieldName = 'jab4'
      Size = 50
    end
    object Qusernik4: TStringField
      FieldName = 'nik4'
      Size = 15
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
    Left = 112
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 224
    object Koreksi1: TMenuItem
      Caption = 'Koreksi'
      ImageIndex = 4
      OnClick = Koreksi1Click
    end
    object Hapus1: TMenuItem
      Caption = 'Hapus'
      ImageIndex = 5
      OnClick = Hapus1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      OnClick = Refresh1Click
    end
  end
  object ActionList1: TActionList
    Left = 504
    Top = 336
    object enter: TAction
      Caption = 'enter'
      ShortCut = 13
    end
    object ins: TAction
      Caption = 'ins'
      ShortCut = 45
    end
    object del: TAction
      Caption = 'del'
      ShortCut = 46
    end
  end
end
