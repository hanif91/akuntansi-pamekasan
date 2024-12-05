object foedithakakses: Tfoedithakakses
  Left = 453
  Top = 80
  BorderStyle = bsNone
  Caption = 'Edit Hak Akses'
  ClientHeight = 582
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel4: TRzPanel
    Left = 0
    Top = 0
    Width = 459
    Height = 582
    Align = alClient
    BorderInner = fsPopup
    BorderOuter = fsPopup
    BorderHighlight = 5482548
    BorderShadow = 5482548
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 455
      Height = 578
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
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      FlatColor = 7457838
      HotTrackColor = 52479
      ParentBackgroundColor = False
      ParentColor = False
      ParentFont = False
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
      FixedDimension = 25
      object TabSheet1: TRzTabSheet
        Color = 52479
        Caption = 'Edit Hak Akses'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 455
          Height = 553
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          DesignSize = (
            455
            553)
          object btnsimpan: TRzToolButton
            Left = 115
            Top = 521
            Width = 327
            Height = 38
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
            Caption = '&Simpan'
            Color = 2250751
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 13
          end
          object cxGrid1: TcxGrid
            Left = 0
            Top = 0
            Width = 455
            Height = 507
            Align = alClient
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
              DataController.DataSource = MyDataSource1
              DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Appending = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.Indicator = True
              object cxGrid1DBTableView1iddm: TcxGridDBColumn
                Caption = 'Id DM'
                DataBinding.FieldName = 'iddm'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Moving = False
                Options.Sorting = False
                Width = 34
              end
              object cxGrid1DBTableView1idmu: TcxGridDBColumn
                Caption = 'Id MU'
                DataBinding.FieldName = 'idmu'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Moving = False
                Options.Sorting = False
              end
              object cxGrid1DBTableView1namadm: TcxGridDBColumn
                Caption = 'Nama Menu Akses'
                DataBinding.FieldName = 'namadm'
                Options.Editing = False
                Options.Filtering = False
                Options.Moving = False
                Options.Sorting = False
                Width = 227
              end
              object cxGrid1DBTableView1iduser: TcxGridDBColumn
                DataBinding.FieldName = 'iduser'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Moving = False
                Options.Sorting = False
              end
              object cxGrid1DBTableView1flag: TcxGridDBColumn
                Caption = 'Boleh ?'
                DataBinding.FieldName = 'flag'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.Alignment = taRightJustify
                Properties.ValueChecked = '1'
                Properties.ValueUnchecked = '0'
                Properties.OnChange = cxGrid1DBTableView1flagPropertiesChange
                HeaderAlignmentHorz = taCenter
                Options.Filtering = False
                Options.Moving = False
                Options.Sorting = False
                Width = 60
              end
              object cxGrid1DBTableView1group1: TcxGridDBColumn
                Caption = 'Group'
                DataBinding.FieldName = 'group1'
                Visible = False
                GroupIndex = 0
                Options.Editing = False
                Options.Filtering = False
                Options.Moving = False
                Options.Sorting = False
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object cxButton1: TcxButton
            Left = 0
            Top = 507
            Width = 455
            Height = 46
            Align = alBottom
            Caption = 'Simpan'
            OptionsImage.ImageIndex = 9
            TabOrder = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = cxButton1Click
          end
        end
      end
    end
  end
  object dxMemdata1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 176
    Top = 192
    object dxMemdata1iddm: TIntegerField
      FieldName = 'iddm'
    end
    object dxMemdata1idmu: TIntegerField
      FieldName = 'idmu'
    end
    object dxMemdata1namadm: TStringField
      FieldName = 'namadm'
      Size = 75
    end
    object dxMemdata1iduser: TIntegerField
      FieldName = 'iduser'
    end
    object dxMemdata1flag: TIntegerField
      FieldName = 'flag'
    end
    object dxMemdata1group1: TStringField
      FieldName = 'group1'
      Size = 50
    end
  end
  object MyDataSource1: TMyDataSource
    DataSet = dxMemdata1
    Left = 232
    Top = 192
  end
end
