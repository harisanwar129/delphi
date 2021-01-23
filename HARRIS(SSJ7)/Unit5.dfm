object Form5: TForm5
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 211
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 40
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 64
    Top = 59
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Edit1: TEdit
    Left = 128
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 128
    Top = 56
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    OnChange = Edit2Change
  end
  object Button1: TButton
    Left = 64
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Login'
    Enabled = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 3
    OnClick = Button2Click
  end
end
