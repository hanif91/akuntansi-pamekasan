object fopdpk: Tfopdpk
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Posting Penerimaan Kas'
  ClientHeight = 589
  ClientWidth = 874
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
    Width = 874
    Height = 589
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 870
      Height = 585
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
        Caption = 'Posting Harian Kas'
        object RzPanel1setorsimp: TRzPanel
          Left = 0
          Top = 0
          Width = 870
          Height = 566
          Align = alClient
          BorderOuter = fsFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object RzLabel1: TRzLabel
            Left = 13
            Top = 11
            Width = 306
            Height = 32
            Caption = 
              '- Proses Posting di generate otomatis dari data billing'#13'- pastik' +
              'an aplikasi dalam satu jaringan'
            Blinking = True
          end
          object cxProgressBar1: TcxProgressBar
            Left = 718
            Top = 527
            AutoSize = False
            TabOrder = 6
            Height = 34
            Width = 139
          end
          object cxButton1: TcxButton
            Left = 718
            Top = 528
            Width = 139
            Height = 32
            Caption = 'Simpan'
            OptionsImage.ImageIndex = 12
            OptionsImage.Images = dm.img24
            TabOrder = 0
            OnClick = cxButton1Click
          end
          object cxLabel1: TcxLabel
            Left = 13
            Top = 65
            Caption = 'Tanggal Transaksi'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxDateEdit1: TcxDateEdit
            Left = 128
            Top = 60
            AutoSize = False
            ParentFont = False
            Properties.DateOnError = deToday
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Height = 32
            Width = 129
          end
          object cxGrid1: TcxGrid
            Left = 13
            Top = 131
            Width = 844
            Height = 390
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
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
              DataController.DataSource = MyDataSource1
              DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
              DataController.Summary.DefaultGroupSummaryItems.BeginText = '( '
              DataController.Summary.DefaultGroupSummaryItems.EndText = ' )'
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = '#,##0.##'
                  Kind = skSum
                  FieldName = 'total'
                  Column = cxGrid1DBTableView1total
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,##0.##'
                  Kind = skSum
                  FieldName = 'jumlah'
                  Column = cxGrid1DBTableView1Column1
                end
                item
                  Format = '#,##0.##'
                  Kind = skSum
                  FieldName = 'denda'
                  Column = cxGrid1DBTableView1denda
                end
                item
                  Format = '#,##0.##'
                  Kind = skSum
                  FieldName = 'total'
                  Column = cxGrid1DBTableView1total
                end
                item
                  Format = '#,##0.##'
                  Kind = skSum
                  FieldName = 'meterai'
                  Column = cxGrid1DBTableView1meterai
                end
                item
                  Format = '#,##0.##'
                  Kind = skSum
                  FieldName = 'ppn'
                  Column = cxGrid1DBTableView1ppn
                end
                item
                  Format = '#,##0.##'
                  Kind = skSum
                  FieldName = 'angsuran'
                  Column = cxGrid1DBTableView1angsuran
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.IncSearch = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              Styles.Group = dm.bold8
              Styles.Header = dm.cxStyle1
              object cxGrid1DBTableView1ket: TcxGridDBColumn
                Caption = 'Uraian'
                DataBinding.FieldName = 'ket'
                Width = 296
              end
              object cxGrid1DBTableView1Column1: TcxGridDBColumn
                Caption = 'Jumlah'
                DataBinding.FieldName = 'jumlah'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.##'
                Properties.EditFormat = '#,##0.##'
                HeaderAlignmentHorz = taRightJustify
                Width = 108
              end
              object cxGrid1DBTableView1denda: TcxGridDBColumn
                Caption = 'Denda'
                DataBinding.FieldName = 'denda'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.##'
                Properties.EditFormat = '#,##0.##'
                HeaderAlignmentHorz = taRightJustify
                Width = 86
              end
              object cxGrid1DBTableView1meterai: TcxGridDBColumn
                Caption = 'Meterai'
                DataBinding.FieldName = 'meterai'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 2
                Properties.DisplayFormat = '#,##0.##'
                Properties.EditFormat = '#,##0.##'
                HeaderAlignmentHorz = taRightJustify
                Width = 65
              end
              object cxGrid1DBTableView1angsuran: TcxGridDBColumn
                Caption = 'Angsuran'
                DataBinding.FieldName = 'angsuran'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 2
                Properties.DisplayFormat = '#,##0.##'
                Properties.EditFormat = '#,##0.##'
                HeaderAlignmentHorz = taRightJustify
                Width = 76
              end
              object cxGrid1DBTableView1ppn: TcxGridDBColumn
                Caption = 'Ppn'
                DataBinding.FieldName = 'ppn'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 2
                Properties.DisplayFormat = '#,##0.##'
                Properties.EditFormat = '#,##0.##'
                HeaderAlignmentHorz = taRightJustify
                Width = 65
              end
              object cxGrid1DBTableView1total: TcxGridDBColumn
                Caption = 'Total'
                DataBinding.FieldName = 'total'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.##'
                Properties.EditFormat = '#,##0.##'
                HeaderAlignmentHorz = taRightJustify
                Width = 113
              end
              object cxGrid1DBTableView1Column2: TcxGridDBColumn
                Caption = 'Jenis Penerimaan'
                DataBinding.FieldName = 'jenispen'
                Visible = False
                GroupIndex = 0
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object cxLabel2: TcxLabel
            Left = 13
            Top = 105
            Caption = 'Penerimaan'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold, fsUnderline]
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxButton2: TcxButton
            Left = 263
            Top = 60
            Width = 90
            Height = 32
            Caption = 'Post'
            OptionsImage.ImageIndex = 8
            OptionsImage.Images = dm.img24
            TabOrder = 4
            OnClick = cxButton2Click
          end
        end
      end
    end
  end
  object Qjrna: TMyQuery
    SQLRefresh.Strings = (
      'select * from jrna where periode=:periode order by urut,id')
    Connection = dm.Conn1
    SQL.Strings = (
      'select * from jrna where periode="202005" order by urut,id')
    Options.FieldOrigins = foNone
    Left = 396
    Top = 414
  end
  object Qvdpk: TMyQuery
    Connection = dm.conn2
    SQL.Strings = (
      'call view_dpk(:periode)')
    Options.FieldOrigins = foNone
    Left = 130
    Top = 453
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'periode'
        Value = nil
      end>
  end
  object MyDataSource1: TMyDataSource
    DataSet = Qvdpk
    Left = 192
    Top = 400
  end
end
