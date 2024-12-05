object fomain: Tfomain
  Left = 0
  Top = 0
  Caption = 'Akuntansi - PDAM'
  ClientHeight = 673
  ClientWidth = 1102
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1102
    Height = 122
    ApplicationButton.Visible = False
    BarManager = dxBarManager1
    Style = rs2016
    ColorSchemeAccent = rcsaGreen
    ColorSchemeName = 'Colorful'
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Caption = 'Home'
      Groups = <
        item
          Caption = 'Master Data'
          ToolbarName = 'dxBarManager1Bar1'
        end
        item
          Caption = 'Master Data'
          ToolbarName = 'dxBarManager1Bar2'
        end
        item
          Caption = 'Laporan'
          ToolbarName = 'dxBarManager1Bar3'
        end>
      Index = 0
    end
    object dxRibbon1Tab4: TdxRibbonTab
      Active = True
      Caption = 'Jurnal & Asset'
      Groups = <
        item
          Caption = 'Jurnal'
          ToolbarName = 'dxBarManager1Bar6'
        end
        item
          Caption = 'Asset Penyusutan'
          ToolbarName = 'dxBarManager1Bar9'
        end>
      Index = 1
    end
    object dxRibbon1Tab5: TdxRibbonTab
      Caption = 'Kas'
      Groups = <
        item
          Caption = 'Posting Data'
          ToolbarName = 'dxBarManager1Bar11'
        end
        item
          Caption = 'Laporan'
          ToolbarName = 'dxBarManager1Bar5'
        end>
      Index = 2
    end
    object dxRibbon1Tab6: TdxRibbonTab
      Caption = 'Voucher'
      Groups = <
        item
          Caption = 'Posting & Laporan'
          ToolbarName = 'dxBarManager1Bar20'
        end
        item
          Caption = 'Kas Kecil'
          ToolbarName = 'dxBarManager1Bar8'
        end>
      Index = 3
    end
    object dxRibbon1Tab7: TdxRibbonTab
      Caption = 'Pengaturan'
      Groups = <
        item
          Caption = 'Umum'
          ToolbarName = 'dxBarManager1Bar18'
        end
        item
          Caption = 'Laporan'
          ToolbarName = 'dxBarManager1Bar19'
        end
        item
          Caption = 'Posting'
          ToolbarName = 'dxBarManager1Bar4'
        end>
      Index = 4
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 650
    Width = 1102
    Height = 23
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.CapsLockKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'OVR'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'INS'
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.EllipsisType = dxetSmartPath
        PanelStyle.Font.Charset = ANSI_CHARSET
        PanelStyle.Font.Color = clDefault
        PanelStyle.Font.Height = -13
        PanelStyle.Font.Name = 'Noto Sans'
        PanelStyle.Font.Style = [fsBold, fsUnderline]
        PanelStyle.ParentFont = False
        Text = 'Ganti Password'
        Width = 102
        OnClick = dxRibbonStatusBar1Panels1Click
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Font.Charset = ANSI_CHARSET
        PanelStyle.Font.Color = clDefault
        PanelStyle.Font.Height = -13
        PanelStyle.Font.Name = 'Noto Sans'
        PanelStyle.Font.Style = [fsItalic]
        PanelStyle.ParentFont = False
        Fixed = False
        Text = 'ADMIN'
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = '1.0.1'
        Width = 35
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Tahun Buku 2020'
        Width = 110
      end>
    Ribbon = dxRibbon1
    Font.Charset = ANSI_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Noto Sans'
    Font.Style = []
    ExplicitLeft = -34
    ExplicitTop = 620
    ExplicitWidth = 1109
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = dm.img36
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 992
    Top = 136
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 790
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar6: TdxBar
      Caption = 'Kas Masuk (Non Pinjaman & Angsuran)'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 812
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton47'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton48'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton24'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton25'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton49'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton50'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton27'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton55'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar11: TdxBar
      Caption = 'Custom 9'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 812
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton51'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton52'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar18: TdxBar
      Caption = 'Custom 16'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1109
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton36'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton45'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar19: TdxBar
      Caption = 'Custom 17'
      CaptionButtons = <>
      DockedLeft = 133
      DockedTop = 0
      FloatLeft = 1109
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton44'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton43'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar20: TdxBar
      Caption = 'Custom 18'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1109
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton14'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton18'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton56'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedLeft = 82
      DockedTop = 0
      FloatLeft = 1109
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton23'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton22'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton30'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton57'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockedLeft = 347
      DockedTop = 0
      FloatLeft = 1109
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton31'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton58'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar4: TdxBar
      Caption = 'Custom 4'
      CaptionButtons = <>
      DockedLeft = 336
      DockedTop = 0
      FloatLeft = 1109
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar5: TdxBar
      Caption = 'Custom 5'
      CaptionButtons = <>
      DockedLeft = 217
      DockedTop = 0
      FloatLeft = 1049
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton53'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton59'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton11'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar8: TdxBar
      Caption = 'Custom 6'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 386
      DockedTop = 0
      FloatLeft = 1043
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton37'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton39'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton41'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar9: TdxBar
      Caption = 'Penyusutan'
      CaptionButtons = <>
      DockedLeft = 620
      DockedTop = 0
      FloatLeft = 1111
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton40'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton42'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton54'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'Dashboard'
      Category = 0
      Hint = 'Dashboard'
      Visible = ivAlways
      LargeImageIndex = 9
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Caption = 'Cetak Daftar Penarikan'
      Category = 0
      Hint = 'Cetak Daftar Penarikan'
      Visible = ivAlways
      LargeImageIndex = 7
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Caption = 'Buat Pinjaman Baru'
      Category = 0
      Hint = 'Buat Pinjaman Baru'
      Visible = ivAlways
      LargeImageIndex = 6
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton13: TdxBarLargeButton
      Caption = 'Kas Masuk ( Non Pinjaman && Angsuran )'
      Category = 0
      Hint = 'Kas Masuk ( Non Pinjaman & Angsuran )'
      Visible = ivAlways
      LargeImageIndex = 23
    end
    object dxBarLargeButton15: TdxBarLargeButton
      Caption = 'Kas Transfer'
      Category = 0
      Hint = 'Kas Transfer'
      Visible = ivAlways
      LargeImageIndex = 21
    end
    object dxBarLargeButton16: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton17: TdxBarLargeButton
      Caption = 'Saldo Awal'
      Category = 0
      Hint = 'Saldo Awal'
      Visible = ivAlways
    end
    object dxBarLargeButton19: TdxBarLargeButton
      Caption = 'Laporan Kas Keluar'
      Category = 0
      Hint = 'Laporan Kas Keluar'
      Visible = ivAlways
    end
    object dxBarLargeButton20: TdxBarLargeButton
      Caption = 'Laporan Kas Transfer'
      Category = 0
      Hint = 'Laporan Kas Transfer'
      Visible = ivAlways
    end
    object dxBarLargeButton21: TdxBarLargeButton
      Caption = 'Laporan Harian Kas'
      Category = 0
      Hint = 'Laporan Harian Kas'
      Visible = ivAlways
    end
    object dxBarLargeButton22: TdxBarLargeButton
      Caption = 'Saldo Awal Neraca'
      Category = 0
      Hint = 'Saldo Awal Neraca'
      Visible = ivAlways
      OnClick = dxBarLargeButton22Click
      LargeImageIndex = 113
    end
    object dxBarLargeButton23: TdxBarLargeButton
      Caption = 'Kode Akun'
      Category = 0
      Hint = 'Kode Akun'
      Visible = ivAlways
      OnClick = dxBarLargeButton23Click
      LargeImageIndex = 50
    end
    object dxBarLargeButton24: TdxBarLargeButton
      Caption = 'Jurnal Penerimaan Kas'
      Category = 0
      Hint = 'Jurnal Penerimaan Kas'
      Visible = ivAlways
      OnClick = dxBarLargeButton24Click
      LargeImageIndex = 102
    end
    object dxBarLargeButton25: TdxBarLargeButton
      Caption = 'Jurnal Bayar Kas'
      Category = 0
      Hint = 'Jurnal Bayar Kas'
      Visible = ivAlways
      OnClick = dxBarLargeButton25Click
      LargeImageIndex = 103
    end
    object dxBarLargeButton26: TdxBarLargeButton
      Caption = 'Jurnal Transfer Kas'
      Category = 0
      Hint = 'Jurnal Transfer Kas'
      Visible = ivAlways
    end
    object dxBarLargeButton27: TdxBarLargeButton
      Caption = 'Jurnal Umum'
      Category = 0
      Hint = 'Jurnal Umum'
      Visible = ivAlways
      OnClick = dxBarLargeButton27Click
      LargeImageIndex = 106
    end
    object dxBarLargeButton28: TdxBarLargeButton
      Caption = 'Posting Buku Besar'
      Category = 0
      Hint = 'Posting Buku Besar'
      Visible = ivAlways
      LargeImageIndex = 0
    end
    object dxBarLargeButton29: TdxBarLargeButton
      Caption = 'Buku Besar'
      Category = 0
      Hint = 'Buku Besar'
      Visible = ivNever
      LargeImageIndex = 3
    end
    object dxBarLargeButton30: TdxBarLargeButton
      Caption = 'Anggaran Laba Rugi'
      Category = 0
      Hint = 'Anggaran Laba Rugi'
      Visible = ivAlways
      OnClick = dxBarLargeButton30Click
      LargeImageIndex = 58
    end
    object dxBarLargeButton31: TdxBarLargeButton
      Caption = 'Sub Buku Besar'
      Category = 0
      Hint = 'Sub Buku Besar'
      Visible = ivAlways
      OnClick = dxBarLargeButton31Click
      LargeImageIndex = 117
    end
    object dxBarLargeButton32: TdxBarLargeButton
      Caption = 'Posting Penutup'
      Category = 0
      Hint = 'Posting Penutup'
      Visible = ivAlways
      LargeImageIndex = 15
    end
    object dxBarLargeButton33: TdxBarLargeButton
      Caption = 'Laba Rugi'
      Category = 0
      Hint = 'Laba Rugi'
      Visible = ivAlways
      OnClick = dxBarLargeButton33Click
    end
    object dxBarLargeButton34: TdxBarLargeButton
      Caption = 'Neraca'
      Category = 0
      Hint = 'Neraca'
      Visible = ivAlways
      OnClick = dxBarLargeButton34Click
    end
    object dxBarLargeButton35: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'laporan'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 119
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end>
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Laba Rugi'
      Category = 0
      Hint = 'Laba Rugi'
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Neraca'
      Category = 0
      Hint = 'Neraca'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Arus kas'
      Category = 0
      Hint = 'Arus kas'
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Pengaturan'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarLargeButton36: TdxBarLargeButton
      Caption = 'Buka/Tutup Periode'
      Category = 0
      Hint = 'Buka/Tutup Periode'
      Visible = ivAlways
      OnClick = dxBarLargeButton36Click
      LargeImageIndex = 15
    end
    object dxBarLargeButton38: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton43: TdxBarLargeButton
      Caption = 'Paraf Laporan'
      Category = 0
      Hint = 'Paraf Laporan'
      Visible = ivAlways
      OnClick = dxBarLargeButton43Click
      LargeImageIndex = 34
    end
    object dxBarLargeButton44: TdxBarLargeButton
      Caption = 'Profile Perusahaan'
      Category = 0
      Hint = 'Profile Perusahaan'
      Visible = ivAlways
      LargeImageIndex = 5
    end
    object dxBarLargeButton45: TdxBarLargeButton
      Caption = 'User Akses'
      Category = 0
      Hint = 'User Akses'
      Visible = ivAlways
      OnClick = dxBarLargeButton45Click
      LargeImageIndex = 11
    end
    object dxBarLargeButton46: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton47: TdxBarLargeButton
      Caption = 'JRA (Jurnal Rekening Air)'
      Category = 0
      Hint = 'JRA (Jurnal Rekening Air)'
      Visible = ivAlways
      OnClick = dxBarLargeButton47Click
      LargeImageIndex = 100
    end
    object dxBarLargeButton48: TdxBarLargeButton
      Caption = 'JRNA ( Jurnal Rekening Non Air )'
      Category = 0
      Hint = 'JRNA ( Jurnal Rekening Non Air )'
      Visible = ivAlways
      OnClick = dxBarLargeButton48Click
      LargeImageIndex = 101
    end
    object dxBarLargeButton49: TdxBarLargeButton
      Caption = 'DHHD'
      Category = 0
      Hint = 'DHHD'
      Visible = ivAlways
      OnClick = dxBarLargeButton49Click
      LargeImageIndex = 104
    end
    object dxBarLargeButton50: TdxBarLargeButton
      Caption = 'JBPIK'
      Category = 0
      Hint = 'JBPIK'
      Visible = ivAlways
      OnClick = dxBarLargeButton50Click
      LargeImageIndex = 105
    end
    object dxBarLargeButton51: TdxBarLargeButton
      Caption = 'Posting Penerimaan Kas'
      Category = 0
      Hint = 'Posting Penerimaan Kas'
      Visible = ivAlways
      OnClick = dxBarLargeButton51Click
      LargeImageIndex = 140
    end
    object dxBarLargeButton52: TdxBarLargeButton
      Caption = 'Setor Bank Penerimaan Kas'
      Category = 0
      Hint = 'Setor Bank Penerimaan Kas'
      Visible = ivAlways
      OnClick = dxBarLargeButton52Click
      LargeImageIndex = 22
    end
    object dxBarLargeButton53: TdxBarLargeButton
      Caption = 'Daftar Posting Penerimaan Kas'
      Category = 0
      Hint = 'Daftar Posting Penerimaan Kas'
      Visible = ivAlways
      OnClick = dxBarLargeButton53Click
      LargeImageIndex = 111
    end
    object dxBarLargeButton14: TdxBarLargeButton
      Caption = 'Daftar Voucher'
      Category = 0
      Hint = 'Daftar Voucher'
      Visible = ivAlways
      OnClick = dxBarLargeButton14Click
      LargeImageIndex = 38
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Pembayaran Voucher'
      Category = 0
      Hint = 'Pembayaran Voucher'
      Visible = ivAlways
      OnClick = dxBarLargeButton1Click
      LargeImageIndex = 23
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Cetak Lembaran Voucher'
      Category = 0
      Hint = 'Cetak Lembaran Voucher'
      Visible = ivAlways
      OnClick = dxBarLargeButton2Click
      LargeImageIndex = 121
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'Posting Awal Tahun'
      Category = 0
      Hint = 'Posting Awal Tahun'
      Visible = ivAlways
      OnClick = dxBarLargeButton4Click
      LargeImageIndex = 44
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Caption = 'Posting Saldo Neraca Ke Tahun Baru'
      Category = 0
      Hint = 'Posting Saldo Neraca Ke Tahun Baru'
      Visible = ivAlways
      OnClick = dxBarLargeButton5Click
      LargeImageIndex = 20
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Caption = 'Nama TTD Lap'
      Category = 0
      Hint = 'Nama TTD Lap'
      Visible = ivAlways
      OnClick = dxBarLargeButton6Click
      LargeImageIndex = 13
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Caption = 'Penerimaan Kas Lainnya'
      Category = 0
      Hint = 'Penerimaan Kas Lainnya'
      Visible = ivAlways
      OnClick = dxBarLargeButton7Click
      LargeImageIndex = 23
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Caption = 'Pengeluaran Kas Lainnya'
      Category = 0
      Hint = 'Pengeluaran Kas Lainnya'
      Visible = ivAlways
      OnClick = dxBarLargeButton10Click
      LargeImageIndex = 57
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Caption = 'Laporan Harian Kas'
      Category = 0
      Hint = 'Laporan Harian Kas'
      Visible = ivAlways
      OnClick = dxBarLargeButton11Click
      LargeImageIndex = 67
    end
    object dxBarLargeButton18: TdxBarLargeButton
      Caption = 'Laporan Usulan'
      Category = 0
      Hint = 'Laporan Usulan'
      Visible = ivAlways
      OnClick = dxBarLargeButton18Click
      LargeImageIndex = 122
    end
    object dxBarLargeButton37: TdxBarLargeButton
      Caption = 'Daftar VKK'
      Category = 0
      Hint = 'Daftar VKK'
      Visible = ivAlways
      OnClick = dxBarLargeButton37Click
      LargeImageIndex = 120
    end
    object dxBarLargeButton39: TdxBarLargeButton
      Caption = 'Platform && Pengisian VKK'
      Category = 0
      Hint = 'Platform & Pengisian VKK'
      Visible = ivAlways
      OnClick = dxBarLargeButton39Click
      LargeImageIndex = 138
    end
    object dxBarLargeButton41: TdxBarLargeButton
      Caption = 'Laporan Usulan VKK'
      Category = 0
      Hint = 'Laporan Usulan VKK'
      Visible = ivAlways
      OnClick = dxBarLargeButton41Click
      LargeImageIndex = 36
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Rincian Biaya'
      Category = 0
      Hint = 'Rincian Biaya'
      Visible = ivAlways
      OnClick = dxBarButton4Click
    end
    object dxBarLargeButton40: TdxBarLargeButton
      Caption = 'Daftar Asset'
      Category = 0
      Hint = 'Daftar Asset'
      Visible = ivAlways
      OnClick = dxBarLargeButton40Click
      LargeImageIndex = 68
    end
    object dxBarLargeButton42: TdxBarLargeButton
      Caption = 'Gol Aktiva'
      Category = 0
      Hint = 'Gol Aktiva'
      Visible = ivAlways
      OnClick = dxBarLargeButton42Click
      LargeImageIndex = 76
    end
    object dxBarLargeButton54: TdxBarLargeButton
      Caption = 'Pengelompokan Aktiva'
      Category = 0
      Hint = 'Pengelompokan Aktiva'
      Visible = ivAlways
      OnClick = dxBarLargeButton54Click
      LargeImageIndex = 90
    end
    object dxBarLargeButton55: TdxBarLargeButton
      Caption = 'Kunci Semua Jurnal'
      Category = 0
      Hint = 'Kunci Semua Jurnal'
      Visible = ivAlways
      CloseSubMenuOnClick = False
      OnClick = dxBarLargeButton55Click
      LargeImageIndex = 43
    end
    object dxBarLargeButton56: TdxBarLargeButton
      Caption = 'Laporan DPH'
      Category = 0
      Hint = 'Laporan DPH'
      Visible = ivAlways
      OnClick = dxBarLargeButton56Click
      LargeImageIndex = 66
    end
    object dxBarLargeButton57: TdxBarLargeButton
      Caption = 'Anggaran Arus Kas'
      Category = 0
      Hint = 'Anggaran Arus Kas'
      Visible = ivAlways
      OnClick = dxBarLargeButton57Click
      LargeImageIndex = 48
    end
    object dxBarLargeButton58: TdxBarLargeButton
      Caption = 'Neraca Lajur'
      Category = 0
      Hint = 'Neraca Lajur'
      Visible = ivAlways
      OnClick = dxBarLargeButton58Click
      LargeImageIndex = 67
    end
    object dxBarLargeButton59: TdxBarLargeButton
      Caption = 'Daftar Setor Bank Penerimaan Kas'
      Category = 0
      Hint = 'Daftar Setor Bank Penerimaan Kas'
      Visible = ivAlways
      OnClick = dxBarLargeButton59Click
      LargeImageIndex = 113
    end
  end
end
