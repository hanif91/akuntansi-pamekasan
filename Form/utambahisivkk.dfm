object fotambahisivkk: Tfotambahisivkk
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'ISI VKK'
  ClientHeight = 429
  ClientWidth = 643
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
    Width = 643
    Height = 429
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 639
      Height = 425
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
        Caption = 'Tambah ISI VKK'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 639
          Height = 406
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          DesignSize = (
            639
            406)
          object btnsimpan: TRzToolButton
            Left = 369
            Top = 219
            Width = 247
            Height = 46
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
            Caption = '&Tambah Permintaan Pengisian'
            Color = 2250751
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btnsimpanClick
          end
          object Label2: TLabel
            Left = 354
            Top = 20
            Width = 134
            Height = 13
            Caption = 'Total Pengisian Kembali'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Panel1: TPanel
            Left = 1
            Top = 1
            Width = 336
            Height = 404
            Align = alLeft
            BevelKind = bkFlat
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              Left = 8
              Top = 8
              Width = 224
              Height = 13
              Caption = 'Daftar Transaksi Yang Belum di Realese'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object cxGrid1: TcxGrid
              Left = 8
              Top = 34
              Width = 320
              Height = 359
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
                DataController.DataSource = Dkas
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '#,##0.##'
                    Kind = skSum
                    FieldName = 'jumlah'
                    Column = cxGrid1DBTableView1jumlah
                  end
                  item
                    Format = '#,##0.##'
                    Kind = skCount
                    FieldName = 'kodeakun'
                    Column = cxGrid1DBTableView1kodeakun
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
                object cxGrid1DBTableView1kodeakun: TcxGridDBColumn
                  Caption = 'Kode'
                  DataBinding.FieldName = 'kodeakun'
                  Width = 66
                end
                object cxGrid1DBTableView1namaakun: TcxGridDBColumn
                  Caption = 'Nama Akun'
                  DataBinding.FieldName = 'namaakun'
                  Width = 145
                end
                object cxGrid1DBTableView1jumlah: TcxGridDBColumn
                  Caption = 'Jumlah'
                  DataBinding.FieldName = 'jumlah'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '#,##0.##'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 95
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object cxButton1: TcxButton
              Left = 253
              Top = 5
              Width = 75
              Height = 23
              Caption = 'Refresh'
              TabOrder = 1
              OnClick = cxButton1Click
            end
          end
          object cxCurrencyEdit1: TcxCurrencyEdit
            Left = 354
            Top = 39
            AutoSize = False
            ParentFont = False
            Properties.DisplayFormat = '#,##0.##'
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 1
            Height = 32
            Width = 279
          end
          object tanggal: TcxDateEdit
            Left = 459
            Top = 89
            BeepOnEnter = False
            Properties.DisplayFormat = 'dd mmmm yyyy'
            Properties.EditFormat = 'dd mmmm yyyy'
            TabOrder = 2
            Width = 174
          end
          object cxLabel4: TcxLabel
            Left = 354
            Top = 90
            Caption = 'Tanggal Usulan'
            Transparent = True
          end
          object cxComboBox1: TcxComboBox
            Left = 459
            Top = 120
            BeepOnEnter = False
            Properties.DropDownListStyle = lsFixedList
            TabOrder = 4
            Width = 174
          end
          object cxLabel5: TcxLabel
            Left = 356
            Top = 120
            Caption = 'Dibebankan Ke'
            Transparent = True
          end
          object cxLabel6: TcxLabel
            Left = 356
            Top = 151
            Caption = 'Dibayarkan Ke'
            Transparent = True
          end
          object cxComboBox2: TcxComboBox
            Left = 459
            Top = 150
            BeepOnEnter = False
            Properties.DropDownListStyle = lsFixedList
            TabOrder = 9
            Width = 174
          end
          object cxTextEdit1: TcxTextEdit
            Left = 459
            Top = 177
            BeepOnEnter = False
            TabOrder = 7
            Text = 'cxTextEdit1'
            Width = 174
          end
          object cxLabel7: TcxLabel
            Left = 356
            Top = 179
            Caption = 'A/n'
            Transparent = True
          end
        end
      end
    end
  end
  object Qkas: TMyQuery
    Connection = dm.Conn1
    SQL.Strings = (
      
        'SELECT a.idcoa,SUM(a.jumlah) as jumlah,b.`kodeakun`,b.`namaakun`' +
        ' FROM vkk_ a LEFT JOIN masterakun b ON a.`idcoa`=b.idcoa LEFT JO' +
        'IN vkk c ON a.`notrans`=c.`notrans` WHERE ISNULL(c.novoucher) '
      'GROUP BY a.`idcoa`'
      'ORDER BY b.`kodeakun`')
    Options.FieldOrigins = foNone
    Left = 179
    Top = 222
    object Qkasjumlah: TFloatField
      FieldName = 'jumlah'
    end
    object Qkaskodeakun: TStringField
      FieldName = 'kodeakun'
      Size = 9
    end
    object Qkasnamaakun: TStringField
      FieldName = 'namaakun'
      Size = 75
    end
    object Qkasidcoa: TIntegerField
      FieldName = 'idcoa'
    end
  end
  object Dkas: TMyDataSource
    DataSet = Qkas
    Left = 344
    Top = 352
  end
end
