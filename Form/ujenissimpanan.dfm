object fojenissimpanan: Tfojenissimpanan
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fojenissimpanan'
  ClientHeight = 467
  ClientWidth = 739
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 739
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
      Caption = 'Jenis Simpanan'
      object RzPanel1setorsimp: TRzPanel
        Left = 0
        Top = 0
        Width = 739
        Height = 448
        Align = alClient
        BorderOuter = fsFlat
        TabOrder = 0
        object RzPanel2: TRzPanel
          Left = 1
          Top = 1
          Width = 737
          Height = 446
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object dxDockSite1: TdxDockSite
            Left = 0
            Top = 0
            Width = 737
            Height = 446
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ManagerFont = False
            Align = alClient
            DockingType = 5
            OriginalWidth = 737
            OriginalHeight = 446
            object dxLayoutDockSite1: TdxLayoutDockSite
              Left = 0
              Top = 0
              Width = 512
              Height = 446
              DockingType = 0
              OriginalWidth = 300
              OriginalHeight = 200
              object dxLayoutDockSite2: TdxLayoutDockSite
                Left = 0
                Top = 0
                Width = 512
                Height = 446
                DockingType = 0
                OriginalWidth = 300
                OriginalHeight = 200
              end
              object dxDockPanel2: TdxDockPanel
                Left = 0
                Top = 0
                Width = 512
                Height = 446
                AllowFloating = True
                AutoHide = False
                CaptionButtons = []
                CustomCaptionButtons.Buttons = <>
                ShowCaption = False
                TabsProperties.CustomButtons.Buttons = <>
                DockingType = 0
                OriginalWidth = 185
                OriginalHeight = 140
                object RzPanel3: TRzPanel
                  Left = 0
                  Top = 0
                  Width = 504
                  Height = 31
                  Align = alTop
                  BorderOuter = fsNone
                  TabOrder = 0
                  object RzToolButton1: TRzToolButton
                    Left = 0
                    Top = 1
                    Width = 185
                    Height = 28
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
                    Caption = '&Tambah Jenis Simpanan'
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
                  Top = 31
                  Width = 504
                  Height = 408
                  Align = alClient
                  TabOrder = 1
                  ExplicitLeft = -2
                  ExplicitTop = 35
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
                    DataController.DataSource = Djenis
                    DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
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
                    object cxGrid1DBTableView1idsimpanan: TcxGridDBColumn
                      Caption = 'Id'
                      DataBinding.FieldName = 'idsimpanan'
                      Width = 20
                    end
                    object cxGrid1DBTableView1namasimpanan: TcxGridDBColumn
                      Caption = 'Jenis Simpanan'
                      DataBinding.FieldName = 'namasimpanan'
                      Width = 367
                    end
                    object cxGrid1DBTableView1minimsetor: TcxGridDBColumn
                      Caption = 'Minim Setor'
                      DataBinding.FieldName = 'minimsetor'
                      Width = 78
                    end
                    object cxGrid1DBTableView1flagmodal: TcxGridDBColumn
                      Caption = 'Flag Modal'
                      DataBinding.FieldName = 'flagmodal'
                      Visible = False
                      Width = 31
                    end
                    object cxGrid1DBTableView1indek: TcxGridDBColumn
                      Caption = 'Urut'
                      DataBinding.FieldName = 'indek'
                      Width = 25
                    end
                    object cxGrid1DBTableView1flagsetor: TcxGridDBColumn
                      Caption = 'Setor'
                      DataBinding.FieldName = 'flagsetor'
                      Visible = False
                      Width = 42
                    end
                    object cxGrid1DBTableView1idcoa: TcxGridDBColumn
                      Caption = 'Id Coa'
                      DataBinding.FieldName = 'idcoa'
                      Visible = False
                    end
                  end
                  object cxGrid1Level1: TcxGridLevel
                    GridView = cxGrid1DBTableView1
                  end
                end
              end
            end
            object dxDockPanel1: TdxDockPanel
              Left = 512
              Top = 0
              Width = 225
              Height = 446
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ManagerFont = False
              AllowFloating = True
              AutoHide = False
              Caption = 'Detail Data'
              CustomCaptionButtons.Buttons = <>
              TabsProperties.CustomButtons.Buttons = <>
              DockingType = 3
              OriginalWidth = 225
              OriginalHeight = 140
              object cxLabel1: TcxLabel
                Left = 7
                Top = 4
                Caption = 'Kategori Modal'
                ParentFont = False
              end
              object dxToggleSwitch1: TdxToggleSwitch
                Left = 131
                Top = 3
                Checked = False
                TabOrder = 1
                OnClick = dxToggleSwitch1Click
              end
              object cxLabel2: TcxLabel
                Left = 7
                Top = 32
                Caption = 'Bisa Setor Berkali-Kali'
                ParentFont = False
              end
              object dxToggleSwitch2: TdxToggleSwitch
                Left = 131
                Top = 30
                AutoSize = False
                Checked = False
                TabOrder = 3
                OnClick = dxToggleSwitch2Click
                Height = 21
                Width = 74
              end
              object cxLabel3: TcxLabel
                Left = 7
                Top = 57
                Caption = 'Urutan'
                ParentFont = False
              end
              object cxLabel4: TcxLabel
                Left = 7
                Top = 82
                Caption = 'Mininimal Setor'
                ParentFont = False
              end
              object cxCurrencyEdit1: TcxCurrencyEdit
                Left = 131
                Top = 55
                OnFocusChanged = cxCurrencyEdit1FocusChanged
                Properties.DisplayFormat = '#,##0.##'
                Properties.EditFormat = '#,##0.##'
                Properties.MaxLength = 2
                Properties.UseThousandSeparator = True
                Properties.OnChange = cxCurrencyEdit1PropertiesChange
                TabOrder = 6
                Width = 33
              end
              object cxCurrencyEdit2: TcxCurrencyEdit
                Left = 131
                Top = 78
                Properties.DisplayFormat = '#,##0.##'
                Properties.EditFormat = '#,##0.##'
                Properties.UseThousandSeparator = True
                Properties.OnChange = cxCurrencyEdit2PropertiesChange
                TabOrder = 7
                Width = 74
              end
              object cxLabel5: TcxLabel
                Left = 7
                Top = 104
                Caption = 'Link Kode Perkiraan'
                ParentFont = False
              end
              object cxTextEdit1: TcxTextEdit
                Left = 132
                Top = 103
                Enabled = False
                TabOrder = 9
                Text = 'cxTextEdit1'
                Width = 74
              end
              object cxButton1: TcxButton
                Left = 71
                Top = 156
                Width = 135
                Height = 20
                Caption = 'Ganti Kode Perkiraan'
                TabOrder = 10
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                OnClick = cxButton1Click
              end
              object cxTextEdit2: TcxTextEdit
                Left = 9
                Top = 129
                Enabled = False
                TabOrder = 11
                Text = 'cxTextEdit1'
                Width = 197
              end
            end
          end
        end
      end
    end
  end
  object Qjenis: TMyQuery
    Connection = dm.Conn1
    SQL.Strings = (
      
        'select a.*,b.kodeakun,b.namaakun from jenis_simpanan a left join' +
        ' masterakun b on a.idcoa=b.idcoa')
    Left = 65
    Top = 252
    object Qjenisidsimpanan: TIntegerField
      FieldName = 'idsimpanan'
    end
    object Qjenisnamasimpanan: TStringField
      FieldName = 'namasimpanan'
      Size = 50
    end
    object Qjenisminimsetor: TFloatField
      FieldName = 'minimsetor'
      DisplayFormat = '#,##0.##'
    end
    object Qjenisflagmodal: TStringField
      FieldName = 'flagmodal'
      FixedChar = True
      Size = 1
    end
    object Qjenisindek: TSmallintField
      FieldName = 'indek'
      DisplayFormat = '#,##0.##'
    end
    object Qjenisflagsetor: TStringField
      FieldName = 'flagsetor'
      FixedChar = True
      Size = 1
    end
    object Qjenisidcoa: TIntegerField
      FieldName = 'idcoa'
      DisplayFormat = '#,##0.##'
    end
    object Qjeniskodeakun: TStringField
      FieldName = 'kodeakun'
      Size = 9
    end
    object Qjenisnamaakun: TStringField
      FieldName = 'namaakun'
      Size = 75
    end
  end
  object Djenis: TMyDataSource
    DataSet = Qjenis
    Left = 80
    Top = 280
  end
  object PopupMenu1: TPopupMenu
    Left = 409
    Top = 292
    object HapusData1: TMenuItem
      Caption = 'Hapus Data'
      ShortCut = 46
      OnClick = HapusData1Click
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
    Left = 424
    Top = 304
  end
end
