object fotambahsusut: Tfotambahsusut
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fotambahasset'
  ClientHeight = 471
  ClientWidth = 362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object RzPanel4: TRzPanel
    Left = 0
    Top = 0
    Width = 362
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
      Width = 358
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
      OnClose = RzPageControl1Close
      FixedDimension = 22
      object TabSheet1: TRzTabSheet
        Color = 52479
        Caption = 'Proses Penyusutan'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 358
          Height = 445
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          object RzLabel1: TRzLabel
            Left = 13
            Top = 17
            Width = 348
            Height = 96
            Caption = 
              'Proses Penyusutan dilakukan dengan langkah2 Berikut ini :'#13'1. Ass' +
              'et disusutkan langsung dalam 1 tahun berjalan.'#13'2. data Yang Di P' +
              'roses hanya data asset yang belum disusut dalam 1 tahun berjalan' +
              '.'#13'3. Data Penyusutan akan dijurnal sesuai dengan periode yang di' +
              'pilih. '
            WordWrap = True
            Blinking = True
            BlinkColor = clBlue
          end
          object cxProgressBar1: TcxProgressBar
            Left = 14
            Top = 390
            AutoSize = False
            TabOrder = 5
            Height = 31
            Width = 333
          end
          object cxComboBox1: TcxComboBox
            Left = 178
            Top = 125
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = cxComboBox1PropertiesChange
            TabOrder = 0
            Height = 30
            Width = 169
          end
          object cxComboBox2: TcxComboBox
            Left = 178
            Top = 411
            AutoSize = False
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Noto Sans'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Visible = False
            Height = 30
            Width = 169
          end
          object cxLabel2: TcxLabel
            Left = 48
            Top = 130
            Caption = 'Periode Penyusutan'
          end
          object cxButton2: TcxButton
            Left = 114
            Top = 390
            Width = 153
            Height = 31
            Caption = '&Proses'
            OptionsImage.ImageIndex = 8
            OptionsImage.Images = dm.img24
            TabOrder = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Noto Sans'
            Font.Style = []
            ParentFont = False
            WordWrap = True
            OnClick = cxButton2Click
          end
          object Memo1: TMemo
            Left = 14
            Top = 248
            Width = 333
            Height = 136
            Lines.Strings = (
              'Memo1')
            ScrollBars = ssBoth
            TabOrder = 3
          end
          object cxGroupBox1: TcxGroupBox
            Left = 14
            Top = 156
            Caption = 'Opsi Penyusutan'
            TabOrder = 6
            Height = 86
            Width = 333
            object Label1: TLabel
              Left = 12
              Top = 24
              Width = 158
              Height = 32
              Caption = 'Habiskan Asset Nilai Buku yang Melewati Umur Teknis'
              WordWrap = True
            end
            object cxComboBox3: TcxComboBox
              Left = 191
              Top = 22
              AutoSize = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'TIDAK'
                'IYA')
              TabOrder = 0
              Text = 'TIDAK'
              Height = 41
              Width = 138
            end
          end
        end
      end
    end
  end
  object Qass: TMyQuery
    SQLUpdate.Strings = (
      'SELECT a.* FROM ('
      
        'SELECT a.*,(a.nilai_buku-IFNULL(b.jumlah,0)) AS nilai_buku_lalu,' +
        '(a.nilai_buku-IFNULL(c.jumlah,0)) AS nilai_buku_akhirtahun,IFNUL' +
        'L(b.jumlah,0) AS jmlsusutawal,IFNULL(c.jumlah,0) AS jmlsusutini,'
      
        'IF(TIMESTAMPDIFF(MONTH,a.tgl_asset,:akhirtahun)>=12,12,TIMESTAMP' +
        'DIFF(MONTH,a.tgl_asset,:akhirtahun)) AS selisihbln,YEAR(DATE_ADD' +
        '(a.tgl_asset, INTERVAL a.jmltahun YEAR)) thntempo FROM asset_ak ' +
        'a '
      
        'LEFT JOIN (SELECT SUM(jumlah) AS jumlah,idasset_ak FROM `asset_a' +
        'k_susut` WHERE LEFT(periode,4)<:tahun GROUP BY idasset_ak) b  ON' +
        ' a.idasset_ak=b.idasset_ak'
      
        'LEFT JOIN (SELECT SUM(jumlah) AS jumlah,idasset_ak FROM `asset_a' +
        'k_susut` WHERE LEFT(periode,4)=:tahun GROUP BY idasset_ak) c  ON' +
        ' a.idasset_ak=c.idasset_ak'
      
        ') a WHERE nilai_buku_lalu > 1 AND persenaktiva > 0 AND jmlsusuti' +
        'ni = 0 and flagdisusutkan=1;')
    SQLRefresh.Strings = (
      'SELECT a.* FROM ('
      
        'SELECT a.*,(a.nilai_buku-IFNULL(b.jumlah,0)) AS nilai_buku_lalu,' +
        '(a.nilai_buku-IFNULL(c.jumlah,0)) AS nilai_buku_akhirtahun,IFNUL' +
        'L(b.jumlah,0) AS jmlsusutawal,IFNULL(c.jumlah,0) AS jmlsusutini,'
      
        'IF(TIMESTAMPDIFF(MONTH,a.tgl_asset,:akhirtahun)>=12,12,TIMESTAMP' +
        'DIFF(MONTH,a.tgl_asset,:akhirtahun)) AS selisihbln,YEAR(DATE_ADD' +
        '(a.tgl_asset, INTERVAL a.jmltahun YEAR)) thntempo FROM asset_ak ' +
        'a '
      
        'LEFT JOIN (SELECT SUM(jumlah) AS jumlah,idasset_ak FROM `asset_a' +
        'k_susut` WHERE LEFT(periode,4)<:tahun GROUP BY idasset_ak) b  ON' +
        ' a.idasset_ak=b.idasset_ak'
      
        'LEFT JOIN (SELECT SUM(jumlah) AS jumlah,idasset_ak FROM `asset_a' +
        'k_susut` WHERE LEFT(periode,4)=:tahun GROUP BY idasset_ak) c  ON' +
        ' a.idasset_ak=c.idasset_ak'
      
        'WHERE YEAR(DATE_ADD(a.tgl_asset, INTERVAL a.jmltahun YEAR)) <= :' +
        'tahun'
      
        ') a WHERE nilai_buku_lalu > 1 AND persenaktiva > 0 AND jmlsusuti' +
        'ni = 0 and flagdisusutkan=1;')
    SQLLock.Strings = (
      'SELECT a.* FROM ('
      
        'SELECT a.*,(a.nilai_buku-IFNULL(b.jumlah,0)) AS nilai_buku_lalu,' +
        '(a.nilai_buku-IFNULL(c.jumlah,0)) AS nilai_buku_akhirtahun,IFNUL' +
        'L(b.jumlah,0) AS jmlsusutawal,IFNULL(c.jumlah,0) AS jmlsusutini,'
      
        'IF(TIMESTAMPDIFF(MONTH,a.tgl_asset,:akhirtahun)>=12,12,TIMESTAMP' +
        'DIFF(MONTH,a.tgl_asset,:akhirtahun)) AS selisihbln,YEAR(DATE_ADD' +
        '(a.tgl_asset, INTERVAL a.jmltahun YEAR)) thntempo FROM asset_ak ' +
        'a '
      
        'LEFT JOIN (SELECT SUM(jumlah) AS jumlah,idasset_ak FROM `asset_a' +
        'k_susut` WHERE LEFT(periode,4)<:tahun GROUP BY idasset_ak) b  ON' +
        ' a.idasset_ak=b.idasset_ak'
      
        'LEFT JOIN (SELECT SUM(jumlah) AS jumlah,idasset_ak FROM `asset_a' +
        'k_susut` WHERE LEFT(periode,4)=:tahun GROUP BY idasset_ak) c  ON' +
        ' a.idasset_ak=c.idasset_ak'
      
        'WHERE YEAR(DATE_ADD(a.tgl_asset, INTERVAL a.jmltahun YEAR)) > :t' +
        'ahun'
      
        ') a WHERE nilai_buku_lalu > 1 AND persenaktiva > 0 AND jmlsusuti' +
        'ni = 0 and flagdisusutkan=1;')
    Connection = dm.Conn1
    SQL.Strings = (
      'SELECT a.* FROM ('
      
        'SELECT a.*,(a.nilai_buku-IFNULL(b.jumlah,0)) AS nilai_buku_lalu,' +
        '(a.nilai_buku-IFNULL(c.jumlah,0)) AS nilai_buku_akhirtahun,IFNUL' +
        'L(b.jumlah,0) AS jmlsusutawal,IFNULL(c.jumlah,0) AS jmlsusutini,'
      
        'IF(TIMESTAMPDIFF(MONTH,a.tgl_asset,"2022-12-31")>=12,12,TIMESTAM' +
        'PDIFF(MONTH,a.tgl_asset,"2022-12-12")) AS selisihbln FROM asset_' +
        'ak a '
      
        'LEFT JOIN (SELECT SUM(jumlah) AS jumlah,idasset_ak FROM `asset_a' +
        'k_susut` WHERE LEFT(periode,4)<2022) b  ON a.idasset_ak=b.idasse' +
        't_ak'
      
        'LEFT JOIN (SELECT SUM(jumlah) AS jumlah,idasset_ak FROM `asset_a' +
        'k_susut` WHERE LEFT(periode,4)=2022) c  ON a.idasset_ak=c.idasse' +
        't_ak'
      
        'WHERE YEAR(DATE_ADD(a.tgl_asset, INTERVAL a.jmltahun YEAR)) <= "' +
        '2022" '
      
        ') a WHERE nilai_buku_lalu > 1 AND persenaktiva > 0 AND jmlsusuti' +
        'ni = 0;')
    Options.FieldOrigins = foNone
    Left = 82
    Top = 304
  end
  object QassCek: TMyQuery
    Connection = dm.Conn1
    Left = 122
    Top = 344
  end
end
