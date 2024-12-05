object fosalesanggota: Tfosalesanggota
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Sales Anggota'
  ClientHeight = 560
  ClientWidth = 795
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
    Width = 795
    Height = 560
    Hint = ''
    ActivePage = TabSheet2
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
    ExplicitLeft = 8
    ExplicitTop = 2
    ExplicitWidth = 765
    ExplicitHeight = 527
    FixedDimension = 19
    object TabSheet2: TRzTabSheet
      Color = 52479
      Caption = 'Sales Anggota'
      ExplicitWidth = 765
      ExplicitHeight = 508
      object RzPanel6: TRzPanel
        Left = 0
        Top = 0
        Width = 795
        Height = 541
        Align = alClient
        BorderOuter = fsNone
        TabOrder = 0
        ExplicitWidth = 765
        ExplicitHeight = 508
        object RzPanel7: TRzPanel
          Left = 0
          Top = 0
          Width = 352
          Height = 541
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 1
          ExplicitWidth = 430
          ExplicitHeight = 510
          object RzPanel9: TRzPanel
            Left = 0
            Top = 0
            Width = 352
            Height = 37
            Align = alTop
            BorderOuter = fsFlat
            TabOrder = 0
            ExplicitWidth = 430
            object RzToolButton3: TRzToolButton
              Left = 3
              Top = 2
              Width = 150
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
              Caption = '&Tambah Sales Baru'
              Color = 2250751
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clCream
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = RzToolButton3Click
            end
          end
          object cxGrid2: TcxGrid
            Left = 0
            Top = 37
            Width = 352
            Height = 504
            Align = alClient
            BorderStyle = cxcbsNone
            TabOrder = 1
            ExplicitLeft = 3
            ExplicitTop = 28
            object cxGridDBTableView1: TcxGridDBTableView
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
              OnFocusedRecordChanged = cxGridDBTableView1FocusedRecordChanged
              DataController.DataSource = Dsales
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,##0.##'
                  Kind = skCount
                  FieldName = 'kodekolektif'
                  Column = cxGridDBTableView1kodekolektif
                end>
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
              object cxGridDBTableView1idkolektif: TcxGridDBColumn
                Caption = 'Id Sales'
                DataBinding.FieldName = 'idkolektif'
                Visible = False
                Width = 38
              end
              object cxGridDBTableView1kodekolektif: TcxGridDBColumn
                Caption = 'Kode Kolektif'
                DataBinding.FieldName = 'kodekolektif'
                Width = 53
              end
              object cxGridDBTableView1namakolektif: TcxGridDBColumn
                Caption = 'Nama Sales'
                DataBinding.FieldName = 'namakolektif'
                Width = 343
              end
              object cxGridDBTableView1aktif: TcxGridDBColumn
                Caption = 'Status'
                DataBinding.FieldName = 'aktif'
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
        object RzPanel10: TRzPanel
          Left = 352
          Top = 0
          Width = 443
          Height = 541
          Align = alRight
          BorderOuter = fsFlat
          TabOrder = 0
          object cxLabel11: TcxLabel
            Left = 1
            Top = 1
            Align = alTop
            AutoSize = False
            Caption = 'Daftar Anggota Yang dibawahi'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold, fsUnderline]
            Style.IsFontAssigned = True
            Height = 21
            Width = 441
          end
          object cxGrid1: TcxGrid
            Left = 1
            Top = 22
            Width = 441
            Height = 518
            Align = alClient
            BorderStyle = cxcbsNone
            TabOrder = 1
            ExplicitLeft = 6
            ExplicitTop = 28
            object cxGridDBTableView2: TcxGridDBTableView
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
              DataController.DataSource = Danggota
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,##0.##'
                  Kind = skCount
                  FieldName = 'kodeanggota'
                  Column = cxGridDBTableView2kodeanggota
                end>
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
              object cxGridDBTableView2kodeanggota: TcxGridDBColumn
                Caption = 'Kode Anggota'
                DataBinding.FieldName = 'kodeanggota'
                Width = 61
              end
              object cxGridDBTableView2namaanggota: TcxGridDBColumn
                Caption = 'Nama Anggota'
                DataBinding.FieldName = 'namaanggota'
                Width = 141
              end
              object cxGridDBTableView2alamat: TcxGridDBColumn
                Caption = 'Alamat'
                DataBinding.FieldName = 'alamat'
                Width = 227
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDBTableView2
            end
          end
        end
      end
    end
  end
  object Dsales: TMyDataSource
    DataSet = Qsales
    Left = 112
    Top = 208
  end
  object Qsales: TMyQuery
    Connection = dm.Conn1
    SQL.Strings = (
      'Select * from kolektif')
    Left = 88
    Top = 227
    object Qsalesidkolektif: TIntegerField
      FieldName = 'idkolektif'
    end
    object Qsaleskodekolektif: TStringField
      FieldName = 'kodekolektif'
      Size = 2
    end
    object Qsalesnamakolektif: TStringField
      FieldName = 'namakolektif'
      Size = 35
    end
    object Qsalesaktif: TStringField
      FieldName = 'aktif'
      FixedChar = True
      Size = 8
    end
  end
  object Qanggota: TMyQuery
    SQLRefresh.Strings = (
      
        'select kodeanggota,namaanggota,alamat from anggota where idkolek' +
        'tif=:idkolektif')
    Connection = dm.Conn1
    SQL.Strings = (
      'select kodeanggota,namaanggota,alamat from anggota')
    Left = 454
    Top = 283
    object Qanggotakodeanggota: TStringField
      FieldName = 'kodeanggota'
      Size = 10
    end
    object Qanggotanamaanggota: TStringField
      FieldName = 'namaanggota'
      Size = 75
    end
    object Qanggotaalamat: TStringField
      FieldName = 'alamat'
      Size = 125
    end
  end
  object Danggota: TMyDataSource
    DataSet = Qanggota
    Left = 472
    Top = 304
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid2
    PopupMenus = <
      item
        GridView = cxGridDBTableView1
        HitTypes = [gvhtCell]
        Index = 0
        PopupMenu = PopupMenu1
      end>
    Left = 232
    Top = 315
  end
  object PopupMenu1: TPopupMenu
    Images = dm.img16
    OnPopup = PopupMenu1Popup
    Left = 256
    Top = 336
    object KoreksiData1: TMenuItem
      Caption = 'Koreksi Data'
      ImageIndex = 4
      OnClick = KoreksiData1Click
    end
    object HapusData1: TMenuItem
      Caption = 'Hapus Data'
      ImageIndex = 5
      OnClick = HapusData1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object SetNonaktif1: TMenuItem
      Caption = 'Set Nonaktif'
      ImageIndex = 2
      OnClick = SetNonaktif1Click
    end
  end
end
