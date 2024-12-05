object fosetorkas: Tfosetorkas
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Posting Penerimaan Kas'
  ClientHeight = 631
  ClientWidth = 675
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
    Width = 675
    Height = 631
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 671
      Height = 627
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
          Width = 671
          Height = 608
          Align = alClient
          BorderOuter = fsFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object RzLine1: TRzLine
            Left = 0
            Top = 309
            Width = 332
            Height = 20
          end
          object RzLine2: TRzLine
            Left = 0
            Top = 409
            Width = 332
            Height = 20
          end
          object RzLine3: TRzLine
            Left = 0
            Top = 208
            Width = 332
            Height = 20
          end
          object cxButton1: TcxButton
            Left = 99
            Top = 526
            Width = 152
            Height = 50
            Caption = 'Simpan Setoran '
            OptionsImage.ImageIndex = 12
            OptionsImage.Images = dm.img24
            TabOrder = 2
            OnClick = cxButton1Click
          end
          object cxLabel1: TcxLabel
            Left = 23
            Top = 26
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
            Left = 160
            Top = 22
            AutoSize = False
            ParentFont = False
            Properties.DateOnError = deToday
            Properties.OnCloseUp = cxDateEdit1PropertiesCloseUp
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 32
            Width = 159
          end
          object cxGrid1: TcxGrid
            Left = 338
            Top = 40
            Width = 324
            Height = 473
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
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
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,##0.##'
                  Kind = skSum
                  FieldName = 'jumlah'
                  Column = cxGrid1DBTableView1jumlah
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
              OptionsView.GroupByBox = False
              Styles.Header = dm.cxStyle1
              object cxGrid1DBTableView1id: TcxGridDBColumn
                DataBinding.FieldName = 'id'
                Visible = False
              end
              object cxGrid1DBTableView1tanggal: TcxGridDBColumn
                DataBinding.FieldName = 'tanggal'
                Visible = False
              end
              object cxGrid1DBTableView1kodeunit: TcxGridDBColumn
                Caption = 'Unit'
                DataBinding.FieldName = 'kodeunit'
                Width = 35
              end
              object cxGrid1DBTableView1namakas: TcxGridDBColumn
                Caption = 'Keterangan'
                DataBinding.FieldName = 'namakas'
                Width = 194
              end
              object cxGrid1DBTableView1jumlah: TcxGridDBColumn
                Caption = 'Jumlah'
                DataBinding.FieldName = 'jumlah'
                HeaderAlignmentHorz = taRightJustify
                Width = 81
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object cxLabel2: TcxLabel
            Left = 338
            Top = 19
            Caption = 'Informasi Detail Setoran'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold, fsUnderline]
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxCurrencyEdit1: TcxCurrencyEdit
            Left = 160
            Top = 96
            AutoSize = False
            Enabled = False
            ParentFont = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            Properties.OnChange = cxCurrencyEdit1PropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 12
            Height = 33
            Width = 159
          end
          object cxLabel3: TcxLabel
            Left = 23
            Top = 101
            Caption = 'Saldo Belum Disetor'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxLabel4: TcxLabel
            Left = 23
            Top = 141
            Caption = 'Setor Ke Bank 1'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxLabel5: TcxLabel
            Left = 72
            Top = 179
            Caption = 'Jumlah'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxComboBox1: TcxComboBox
            Left = 160
            Top = 135
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            TabOrder = 1
            Height = 33
            Width = 159
          end
          object cxCheckBox1: TcxCheckBox
            Left = 21
            Top = 233
            Caption = 'Setor Ke Bank 2'
            TabOrder = 16
            OnClick = cxCheckBox1Click
          end
          object cxComboBox2: TcxComboBox
            Left = 160
            Top = 231
            AutoSize = False
            Enabled = False
            Properties.DropDownListStyle = lsFixedList
            TabOrder = 3
            Height = 33
            Width = 159
          end
          object cxCurrencyEdit3: TcxCurrencyEdit
            Left = 160
            Top = 270
            AutoSize = False
            Enabled = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            Properties.OnChange = cxCurrencyEdit1PropertiesChange
            TabOrder = 4
            Height = 33
            Width = 159
          end
          object cxLabel6: TcxLabel
            Left = 72
            Top = 275
            Caption = 'Jumlah'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxLabel7: TcxLabel
            Left = 72
            Top = 375
            Caption = 'Jumlah'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxCurrencyEdit4: TcxCurrencyEdit
            Left = 160
            Top = 370
            AutoSize = False
            Enabled = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            Properties.OnChange = cxCurrencyEdit1PropertiesChange
            TabOrder = 6
            Height = 33
            Width = 159
          end
          object cxComboBox3: TcxComboBox
            Left = 160
            Top = 331
            AutoSize = False
            Enabled = False
            Properties.DropDownListStyle = lsFixedList
            TabOrder = 5
            Height = 33
            Width = 159
          end
          object cxCheckBox2: TcxCheckBox
            Left = 21
            Top = 331
            Caption = 'Setor Ke Bank 3'
            TabOrder = 19
            OnClick = cxCheckBox2Click
          end
          object cxCurrencyEdit5: TcxCurrencyEdit
            Left = 160
            Top = 435
            AutoSize = False
            Enabled = False
            ParentFont = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 7
            Height = 33
            Width = 159
          end
          object cxLabel8: TcxLabel
            Left = 21
            Top = 440
            Caption = 'Total yang Disetor'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxLabel9: TcxLabel
            Left = 21
            Top = 485
            Caption = 'Sisa Belum Disetor'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxCurrencyEdit6: TcxCurrencyEdit
            Left = 160
            Top = 480
            AutoSize = False
            Enabled = False
            ParentFont = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 8
            Height = 33
            Width = 159
          end
          object cxCurrencyEdit2: TcxCurrencyEdit
            Left = 160
            Top = 174
            AutoSize = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.UseThousandSeparator = True
            Properties.OnChange = cxCurrencyEdit1PropertiesChange
            TabOrder = 22
            Height = 33
            Width = 159
          end
          object cxLabel10: TcxLabel
            Left = 23
            Top = 65
            Caption = 'Kode Loket'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxComboBox4: TcxComboBox
            Left = 160
            Top = 58
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = cxComboBox4PropertiesChange
            Properties.OnCloseUp = cxComboBox4PropertiesCloseUp
            TabOrder = 24
            Height = 33
            Width = 159
          end
          object cxComboBox5: TcxComboBox
            Left = 392
            Top = 519
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            TabOrder = 25
            Visible = False
            Height = 33
            Width = 159
          end
        end
      end
    end
  end
  object MyDataSource1: TMyDataSource
    DataSet = Qdetailsetor
    Left = 456
    Top = 344
  end
  object Qdetailsetor: TMyQuery
    SQLRefresh.Strings = (
      'select * from jrna where periode=:periode order by urut,id')
    Connection = dm.Conn1
    SQL.Strings = (
      'call view_setoran(:periode,"1",:kodeunit)')
    Options.FieldOrigins = foNone
    Left = 420
    Top = 102
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'periode'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'kodeunit'
        Value = nil
      end>
    object Qdetailsetorid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'setorkas.id'
    end
    object Qdetailsetortanggal: TDateField
      FieldName = 'tanggal'
      Origin = 'setorkas.tanggal'
    end
    object Qdetailsetornamakas: TStringField
      FieldName = 'namakas'
      Origin = 'setorkas.namakas'
      Size = 15
    end
    object Qdetailsetorjumlah: TFloatField
      FieldName = 'jumlah'
      Origin = 'setorkas.jumlah'
      DisplayFormat = '#,##0.##'
    end
    object Qdetailsetortglpost: TDateTimeField
      FieldName = 'tglpost'
      Origin = 'setorkas.tglpost'
    end
    object Qdetailsetorkodeunit: TStringField
      FieldName = 'kodeunit'
      Size = 4
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
    Left = 482
    Top = 213
  end
  object PopupMenu1: TPopupMenu
    Images = dm.img16
    Left = 402
    Top = 197
    object Hapus1: TMenuItem
      Caption = 'Hapus'
      ImageIndex = 5
      ShortCut = 46
      OnClick = Hapus1Click
    end
  end
end
