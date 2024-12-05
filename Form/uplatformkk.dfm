object foplatformkk: Tfoplatformkk
  Left = 0
  Top = 0
  Caption = 'Platform VKK'
  ClientHeight = 574
  ClientWidth = 1047
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
    Width = 1047
    Height = 574
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 1043
      Height = 570
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
        Caption = 'Platform & Pengisian Kembali'
        object RzPanel2: TRzPanel
          Left = 0
          Top = 0
          Width = 1043
          Height = 551
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          object Panel1: TPanel
            Left = 1
            Top = 51
            Width = 677
            Height = 499
            Align = alClient
            BevelKind = bkFlat
            BevelOuter = bvNone
            Caption = 'Panel1'
            TabOrder = 0
            object cxGrid1: TcxGrid
              Left = 0
              Top = 25
              Width = 673
              Height = 470
              Align = alClient
              BorderStyle = cxcbsNone
              TabOrder = 0
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
                DataController.DataSource = Dkas
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = 'Trx : #,##0.##'
                    Kind = skCount
                    FieldName = 'tanggal'
                    Column = cxGrid1DBTableView1tanggal
                  end
                  item
                    Format = '#,##0.##'
                    Kind = skSum
                    FieldName = 'total'
                    Column = cxGrid1DBTableView1total
                  end>
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
                OptionsView.HeaderAutoHeight = True
                OptionsView.Indicator = True
                Styles.Footer = dm.bold8
                Styles.Header = dm.bold8
                object cxGrid1DBTableView1flaglunas: TcxGridDBColumn
                  Caption = 'T'
                  DataBinding.FieldName = 'flaglunas'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Images = dm.img16
                  Properties.Items = <
                    item
                      ImageIndex = 3
                      Value = '1'
                    end
                    item
                      ImageIndex = 2
                      Value = '0'
                    end
                    item
                      ImageIndex = 2
                    end>
                  HeaderAlignmentHorz = taCenter
                  MinWidth = 30
                  Options.Editing = False
                  Options.Filtering = False
                  Options.FilteringWithFindPanel = False
                  Options.FilteringAddValueItems = False
                  Options.FilteringFilteredItemsList = False
                  Options.FilteringMRUItemsList = False
                  Options.FilteringPopup = False
                  Options.AutoWidthSizable = False
                  Options.GroupFooters = False
                  Options.Grouping = False
                  Options.HorzSizing = False
                  Options.Sorting = False
                  Width = 30
                end
                object cxGrid1DBTableView1tanggal: TcxGridDBColumn
                  Caption = 'Tanggal'
                  DataBinding.FieldName = 'tanggal'
                  Width = 114
                end
                object cxGrid1DBTableView1novoucher: TcxGridDBColumn
                  Caption = 'No Voucher'
                  DataBinding.FieldName = 'novoucher'
                  Width = 414
                end
                object cxGrid1DBTableView1total: TcxGridDBColumn
                  Caption = 'Total'
                  DataBinding.FieldName = 'total'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '#,##0.##'
                  Properties.EditFormat = '#,##0.##'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 145
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 673
              Height = 25
              Align = alTop
              BevelKind = bkFlat
              BevelOuter = bvNone
              TabOrder = 1
              DesignSize = (
                669
                21)
              object cxCheckBox1: TcxCheckBox
                Left = 586
                Top = 1
                Anchors = [akTop, akRight]
                Caption = 'Belum Lunas'
                State = cbsChecked
                TabOrder = 0
                OnClick = cxCheckBox1Click
              end
              object cxCheckBox2: TcxCheckBox
                Left = 503
                Top = 1
                Anchors = [akTop, akRight]
                Caption = 'Sudah Lunas'
                State = cbsChecked
                TabOrder = 1
                OnClick = cxCheckBox2Click
              end
            end
          end
          object Panel2: TPanel
            Left = 1
            Top = 1
            Width = 1041
            Height = 50
            Align = alTop
            BevelKind = bkFlat
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              1037
              46)
            object Label1: TLabel
              Left = 366
              Top = 10
              Width = 93
              Height = 24
              Anchors = [akTop, akRight]
              Caption = 'Platform '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -20
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 684
              Top = 10
              Width = 138
              Height = 24
              Anchors = [akTop, akRight]
              Caption = 'Sisa Kas Kecil'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -20
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RzToolButton1: TRzToolButton
              Left = 8
              Top = 5
              Width = 209
              Height = 37
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
              Caption = '&Tambah Pengisian Kembali'
              Color = 2250751
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clCream
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = RzToolButton1Click
            end
            object cxDBCurrencyEdit1: TcxDBCurrencyEdit
              Left = 465
              Top = 5
              Anchors = [akTop, akRight]
              AutoSize = False
              DataBinding.DataField = 'total'
              DataBinding.DataSource = Dplat
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.##'
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -20
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 0
              Height = 37
              Width = 204
            end
            object cxDBCurrencyEdit2: TcxDBCurrencyEdit
              Left = 828
              Top = 5
              Anchors = [akTop, akRight]
              AutoSize = False
              DataBinding.DataField = 'sisa'
              DataBinding.DataSource = Dplat
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.##'
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -20
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 1
              Height = 36
              Width = 204
            end
          end
          object Panel3: TPanel
            Left = 678
            Top = 51
            Width = 364
            Height = 499
            Align = alRight
            BevelKind = bkFlat
            BevelOuter = bvNone
            Caption = 'Panel1'
            TabOrder = 2
            object cxGrid2: TcxGrid
              Left = 0
              Top = 25
              Width = 360
              Height = 470
              Align = alClient
              TabOrder = 0
              object cxGrid2DBTableView1: TcxGridDBTableView
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
                DataController.DataSource = DDkas
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '#,##0.##'
                    Kind = skSum
                    FieldName = 'total'
                    Column = cxGrid2DBTableView1total
                  end
                  item
                    Format = '#,##0.##'
                    Kind = skCount
                    FieldName = 'tanggal'
                    Column = cxGrid2DBTableView1tanggal
                  end>
                DataController.Summary.SummaryGroups = <>
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsCustomize.ColumnsQuickCustomizationSorted = True
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                Styles.Header = dm.bold8
                object cxGrid2DBTableView1tanggal: TcxGridDBColumn
                  DataBinding.FieldName = 'tanggal'
                  Width = 96
                end
                object cxGrid2DBTableView1notrans: TcxGridDBColumn
                  DataBinding.FieldName = 'notrans'
                  Width = 138
                end
                object cxGrid2DBTableView1total: TcxGridDBColumn
                  Caption = 'Total'
                  DataBinding.FieldName = 'total'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '#,##0.##'
                  Properties.EditFormat = '#,##0.##'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 112
                end
              end
              object cxGrid2Level1: TcxGridLevel
                GridView = cxGrid2DBTableView1
              end
            end
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 360
              Height = 25
              Align = alTop
              BevelKind = bkFlat
              BevelOuter = bvNone
              TabOrder = 1
              DesignSize = (
                356
                21)
              object Label3: TLabel
                Left = 2
                Top = 2
                Width = 91
                Height = 13
                Anchors = [akTop, akRight]
                Caption = 'Detail Transaksi'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
            end
          end
        end
      end
    end
  end
  object Qplat: TMyQuery
    Connection = dm.Conn1
    SQL.Strings = (
      'Select * from vkk_platform')
    Options.FieldOrigins = foNone
    Left = 521
    Top = 156
  end
  object Dplat: TMyDataSource
    DataSet = Qplat
    Left = 488
    Top = 232
  end
  object Qkas: TMyQuery
    SQLRefresh.Strings = (
      'Select * from vkk_isi')
    Connection = dm.Conn1
    SQL.Strings = (
      'Select * from vkk_isi order by tanggal')
    Options.FieldOrigins = foNone
    Left = 443
    Top = 296
    object Qkasid: TIntegerField
      FieldName = 'id'
    end
    object Qkastotal: TFloatField
      FieldName = 'total'
    end
    object Qkastanggal: TDateField
      FieldName = 'tanggal'
    end
    object Qkasnovoucher: TStringField
      FieldName = 'novoucher'
      Size = 35
    end
    object Qkasflaglunas: TSmallintField
      FieldName = 'flaglunas'
    end
  end
  object Dkas: TMyDataSource
    DataSet = Qkas
    Left = 536
    Top = 280
  end
  object Qdkas: TMyQuery
    SQLRefresh.Strings = (
      'Select * from vkk where novoucher=:novoucher order by notrans')
    Connection = dm.Conn1
    SQL.Strings = (
      'Select * from vkk')
    Options.FieldOrigins = foNone
    Left = 827
    Top = 280
    object Qdkasnotrans: TStringField
      FieldName = 'notrans'
      Size = 15
    end
    object Qdkastanggal: TDateField
      FieldName = 'tanggal'
    end
    object Qdkastotal: TFloatField
      FieldName = 'total'
    end
    object Qdkasnovoucher: TStringField
      FieldName = 'novoucher'
      Size = 35
    end
  end
  object DDkas: TMyDataSource
    DataSet = Qdkas
    Left = 896
    Top = 312
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
    Left = 272
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Images = dm.img16
    Left = 355
    Top = 236
    object Koreksi1: TMenuItem
      Caption = 'Terima Pengisian'
      ImageIndex = 4
      OnClick = Koreksi1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Hapus1: TMenuItem
      Caption = 'Hapus Usulan'
      ImageIndex = 5
      OnClick = Hapus1Click
    end
  end
end
