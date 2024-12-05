object focaripinjaman: Tfocaripinjaman
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'focaripinjaman'
  ClientHeight = 471
  ClientWidth = 530
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
    Width = 530
    Height = 471
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 526
      Height = 467
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
      FixedDimension = 19
      object TabSheet1: TRzTabSheet
        Color = 52479
        Caption = 'Cari Pinjaman'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 526
          Height = 448
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object cxTextEdit1: TcxTextEdit
            Left = 82
            Top = 8
            Properties.OnChange = cxTextEdit1PropertiesChange
            TabOrder = 0
            Text = 'cxTextEdit1'
            Width = 437
          end
          object cxLabel1: TcxLabel
            Left = 8
            Top = 9
            Caption = 'Cari By Nama'
          end
          object cxGrid1: TcxGrid
            Left = 8
            Top = 35
            Width = 511
            Height = 406
            TabOrder = 2
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
              OnCellDblClick = cxGrid1DBTableView1CellDblClick
              DataController.DataSource = Ddtag
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
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.Header = dm.bold8
              object cxGrid1DBTableView1nopinjaman: TcxGridDBColumn
                Caption = 'No.Pinjaman'
                DataBinding.FieldName = 'nopinjaman'
                Width = 74
              end
              object cxGrid1DBTableView1namaanggota: TcxGridDBColumn
                Caption = 'Nama Anggota'
                DataBinding.FieldName = 'namaanggota'
                Width = 191
              end
              object cxGrid1DBTableView1namakolektif: TcxGridDBColumn
                Caption = 'Sales'
                DataBinding.FieldName = 'namakolektif'
                Width = 116
              end
              object cxGrid1DBTableView1jumlahbulan: TcxGridDBColumn
                Caption = 'Jumlah'
                DataBinding.FieldName = 'jumlahbulan'
                HeaderAlignmentHorz = taRightJustify
                Width = 104
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
        end
      end
    end
  end
  object Qtag: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT a.nopinjaman,a.idanggota,c.namaanggota,d.`namakolektif`,a' +
        '.`jumlahbulan` FROM m_pinjaman a LEFT JOIN v_sisa_angsuran b ON ' +
        'a.nopinjaman=b.nopinjaman '
      
        'LEFT JOIN anggota c ON a.idanggota=c.idanggota LEFT JOIN `kolekt' +
        'if` d ON c.`idkolektif`=d.`idkolektif` WHERE b.sisapokokangsuran' +
        '>0'
      '')
    Connection = dm.Conn1
    SQL.Strings = (
      
        'SELECT a.nopinjaman,a.idanggota,c.namaanggota,d.`namakolektif`,a' +
        '.`jumlahbulan` FROM m_pinjaman a LEFT JOIN v_sisa_angsuran b ON ' +
        'a.nopinjaman=b.nopinjaman '
      
        'LEFT JOIN anggota c ON a.idanggota=c.idanggota LEFT JOIN `kolekt' +
        'if` d ON c.`idkolektif`=d.`idkolektif` WHERE b.sisapokokangsuran' +
        '>0'
      'ORDER BY nopinjaman')
    Left = 226
    Top = 213
    object Qtagnopinjaman: TStringField
      FieldName = 'nopinjaman'
      Size = 15
    end
    object Qtagidanggota: TIntegerField
      FieldName = 'idanggota'
    end
    object Qtagnamaanggota: TStringField
      FieldName = 'namaanggota'
      Size = 75
    end
    object Qtagnamakolektif: TStringField
      FieldName = 'namakolektif'
      Size = 35
    end
    object Qtagjumlahbulan: TFloatField
      FieldName = 'jumlahbulan'
    end
  end
  object Ddtag: TMyDataSource
    DataSet = Qtag
    Left = 248
    Top = 256
  end
  object ActionList1: TActionList
    Left = 280
    Top = 80
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
