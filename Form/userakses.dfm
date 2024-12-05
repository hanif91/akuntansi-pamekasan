object fouserakses: Tfouserakses
  Left = 0
  Top = 0
  Caption = 'Daftar User Akses'
  ClientHeight = 641
  ClientWidth = 1065
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel4: TRzPanel
    Left = 0
    Top = 0
    Width = 1065
    Height = 641
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 1061
      Height = 637
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      FlatColor = 7457838
      HotTrackColor = 52479
      ParentBackgroundColor = False
      ParentColor = False
      ParentFont = False
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
      FixedDimension = 22
      object TabSheet1: TRzTabSheet
        Color = 52479
        Caption = 'Daftar User Akses'
        object dxDockSite1: TdxDockSite
          Left = 0
          Top = 0
          Width = 1061
          Height = 615
          ManagerFont = False
          ParentFont = True
          Align = alClient
          DockingType = 5
          OriginalWidth = 1061
          OriginalHeight = 615
          object dxLayoutDockSite3: TdxLayoutDockSite
            Left = 329
            Top = 0
            Width = 732
            Height = 615
            ManagerFont = False
            ParentFont = True
            DockingType = 0
            OriginalWidth = 300
            OriginalHeight = 200
            object dxLayoutDockSite2: TdxLayoutDockSite
              Left = 0
              Top = 0
              Width = 732
              Height = 615
              DockingType = 0
              OriginalWidth = 300
              OriginalHeight = 200
            end
            object dxDockPanel2: TdxDockPanel
              Left = 0
              Top = 0
              Width = 732
              Height = 615
              ManagerFont = False
              ParentFont = True
              AllowDock = []
              AllowFloating = False
              AutoHide = False
              Caption = 'dxDockPanel2'
              CaptionButtons = []
              CustomCaptionButtons.Buttons = <>
              Dockable = False
              ShowCaption = False
              TabsProperties.CustomButtons.Buttons = <>
              DockingType = 0
              OriginalWidth = 185
              OriginalHeight = 140
              object RzPanel1: TRzPanel
                Left = 0
                Top = 0
                Width = 724
                Height = 34
                Align = alTop
                BorderOuter = fsNone
                TabOrder = 0
                object RzToolButton1: TRzToolButton
                  Left = 559
                  Top = 0
                  Width = 165
                  Height = 34
                  GradientColorStyle = gcsCustom
                  SelectionColorStart = 3927039
                  SelectionColorStop = 7457838
                  SelectionFrameColor = 52479
                  ImageIndex = 13
                  Images = dm.img24
                  ShowCaption = True
                  Transparent = False
                  UseToolbarShowCaption = False
                  UseToolbarVisualStyle = False
                  VisualStyle = vsGradient
                  Align = alRight
                  Caption = '&Tambah User'
                  Color = 2250751
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clCream
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  OnClick = RzToolButton1Click
                  ExplicitLeft = 280
                end
              end
              object cxGrid1: TcxGrid
                Left = 0
                Top = 34
                Width = 724
                Height = 574
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
                  OnFocusedRecordChanged = cxGrid1DBTableView1FocusedRecordChanged
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
                  object cxGrid1DBTableView1id: TcxGridDBColumn
                    Caption = 'Id'
                    DataBinding.FieldName = 'id'
                    Visible = False
                    Width = 20
                  end
                  object cxGrid1DBTableView1username: TcxGridDBColumn
                    Caption = 'Username'
                    DataBinding.FieldName = 'username'
                    Width = 99
                  end
                  object cxGrid1DBTableView1nama: TcxGridDBColumn
                    Caption = 'Nama'
                    DataBinding.FieldName = 'nama'
                    Width = 101
                  end
                  object cxGrid1DBTableView1jabatan: TcxGridDBColumn
                    Caption = 'Nama Poli'
                    DataBinding.FieldName = 'jabatan'
                    Width = 91
                  end
                  object cxGrid1DBTableView1alamat: TcxGridDBColumn
                    Caption = 'Alamat'
                    DataBinding.FieldName = 'alamat'
                    Visible = False
                    Width = 72
                  end
                  object cxGrid1DBTableView1nik: TcxGridDBColumn
                    Caption = 'Nik'
                    DataBinding.FieldName = 'nik'
                    Width = 37
                  end
                end
                object cxGrid1Level1: TcxGridLevel
                  GridView = cxGrid1DBTableView1
                end
              end
            end
          end
          object dxDockPanel3: TdxDockPanel
            Left = 0
            Top = 0
            Width = 329
            Height = 615
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ManagerFont = False
            AllowFloating = True
            AutoHide = False
            Caption = 'Detail Pemeriksaan'
            CaptionButtons = [cbHide]
            CustomCaptionButtons.Buttons = <>
            ShowCaption = False
            TabsProperties.CustomButtons.Buttons = <>
            DockingType = 1
            OriginalWidth = 329
            OriginalHeight = 140
            object cxButton1: TcxButton
              Left = 0
              Top = 562
              Width = 321
              Height = 46
              Align = alBottom
              Caption = 'Edit Hak Akses'
              OptionsImage.ImageIndex = 11
              TabOrder = 0
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = cxButton1Click
            end
            object cxGrid2: TcxGrid
              Left = 0
              Top = 0
              Width = 321
              Height = 562
              Align = alClient
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
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
                DataController.DataSource = Dhakakses
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
                OptionsView.Indicator = True
                object cxGrid2DBTableView1iddm: TcxGridDBColumn
                  Caption = 'Id DM'
                  DataBinding.FieldName = 'iddm'
                  Visible = False
                  Width = 34
                end
                object cxGrid2DBTableView1idmu: TcxGridDBColumn
                  Caption = 'Id MU'
                  DataBinding.FieldName = 'idmu'
                  Visible = False
                end
                object cxGrid2DBTableView1namadm: TcxGridDBColumn
                  Caption = 'Nama Menu Akses'
                  DataBinding.FieldName = 'namadm'
                  Width = 227
                end
                object cxGrid2DBTableView1iduser: TcxGridDBColumn
                  DataBinding.FieldName = 'iduser'
                  Visible = False
                end
                object cxGrid2DBTableView1flag: TcxGridDBColumn
                  Caption = 'Boleh ?'
                  DataBinding.FieldName = 'flag'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.Alignment = taRightJustify
                  Properties.ValueChecked = '1'
                  Properties.ValueUnchecked = '0'
                  HeaderAlignmentHorz = taCenter
                  Width = 60
                end
                object cxGrid2DBTableView1group1: TcxGridDBColumn
                  Caption = 'Group'
                  DataBinding.FieldName = 'group1'
                  Visible = False
                  GroupIndex = 0
                end
              end
              object cxGrid2Level1: TcxGridLevel
                GridView = cxGrid2DBTableView1
              end
            end
          end
        end
      end
    end
  end
  object Duser: TMyDataSource
    DataSet = Quser
    Left = 464
    Top = 216
  end
  object Quser: TMyQuery
    Connection = dm.Conn1
    SQL.Strings = (
      'SELECT * FROM userakses')
    Options.FieldOrigins = foNone
    Left = 408
    Top = 224
    object Quserid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'userakses.id'
    end
    object Quserusername: TStringField
      FieldName = 'username'
      Origin = 'userakses.username'
      Size = 10
    end
    object Qusernama: TStringField
      FieldName = 'nama'
      Origin = 'userakses.nama'
      Size = 25
    end
    object Qusernik: TStringField
      FieldName = 'nik'
      Origin = 'userakses.nik'
      FixedChar = True
      Size = 15
    end
    object Quserpass: TStringField
      FieldName = 'pass'
      Origin = 'userakses.pass'
      Size = 55
    end
    object Quseralamat: TStringField
      FieldName = 'alamat'
      Origin = 'userakses.alamat'
      Size = 100
    end
    object Quserjabatan: TStringField
      FieldName = 'jabatan'
      Origin = 'userakses.jabatan'
      FixedChar = True
      Size = 35
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
    Left = 368
    Top = 304
  end
  object PopupMenu1: TPopupMenu
    Left = 496
    Top = 184
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
    object ResetPassword1: TMenuItem
      Caption = 'Reset Password'
      ImageIndex = 3
      OnClick = ResetPassword1Click
    end
  end
  object Dhakakses: TMyDataSource
    DataSet = Qhakakses
    Left = 190
    Top = 232
  end
  object Qhakakses: TMyQuery
    SQLRefresh.Strings = (
      'CALL viewuserakses(:iduser,2)')
    Connection = dm.Conn1
    SQL.Strings = (
      'CALL viewuserakses(4)')
    Options.FieldOrigins = foNone
    Left = 136
    Top = 112
    object Qhakaksesiddm: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'iddm'
      Origin = 'menu.iddm'
    end
    object Qhakaksesidmu: TIntegerField
      FieldName = 'idmu'
      Origin = 'menu.idmu'
    end
    object Qhakaksesnamadm: TStringField
      FieldName = 'namadm'
      Origin = 'menu.namadm'
      Size = 45
    end
    object Qhakaksesnamamu: TStringField
      FieldName = 'namamu'
      Origin = 'menu.namamu'
      Size = 35
    end
    object Qhakaksesiduser: TIntegerField
      FieldName = 'iduser'
      Origin = 'b.iduser'
    end
    object Qhakaksesflag: TLargeintField
      FieldName = 'flag'
      Origin = 'flag'
    end
    object Qhakaksesgroup1: TStringField
      FieldName = 'group1'
      Origin = 'group1'
      Size = 43
    end
  end
end
