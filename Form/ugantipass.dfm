object fogantipass: Tfogantipass
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Ganti Password'
  ClientHeight = 151
  ClientWidth = 405
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Noto Sans'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object cxLabel1: TcxLabel
    Left = 8
    Top = 11
    Caption = 'Password Lama'
  end
  object cxLabel2: TcxLabel
    Left = 9
    Top = 49
    Caption = 'Password Baru'
  end
  object txtpass: TcxTextEdit
    Left = 144
    Top = 8
    AutoSize = False
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = 'l'
    Style.Font.Charset = SYMBOL_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Wingdings'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    OnKeyPress = txtpassKeyPress
    Height = 30
    Width = 169
  end
  object txtpass2: TcxTextEdit
    Left = 144
    Top = 44
    AutoSize = False
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = 'l'
    Style.Font.Charset = SYMBOL_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Wingdings'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    OnKeyPress = txtpass2KeyPress
    Height = 30
    Width = 169
  end
  object cxButton1: TcxButton
    Left = 114
    Top = 92
    Width = 161
    Height = 45
    Caption = 'Ganti Password'
    TabOrder = 4
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 311
    Top = 45
    Width = 81
    Height = 28
    Caption = 'Perlihatkan'
    TabOrder = 5
    OnClick = cxButton2Click
  end
  object cxButton3: TcxButton
    Left = 311
    Top = 9
    Width = 81
    Height = 28
    Caption = 'Perlihatkan'
    TabOrder = 6
    OnClick = cxButton3Click
  end
  object Qex: TMyQuery
    Connection = dm.Conn1
    Left = 320
    Top = 96
  end
end
