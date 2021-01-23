object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Form8'
  ClientHeight = 428
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 304
    Top = 8
    Width = 146
    Height = 19
    Caption = 'LIST STOK BARANG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 104
    Top = 304
    Width = 65
    Height = 13
    Caption = 'Jumlah_Stock'
  end
  object Label3: TLabel
    Left = 104
    Top = 339
    Width = 55
    Height = 13
    Caption = 'Jumlah_Beli'
  end
  object Label4: TLabel
    Left = 104
    Top = 376
    Width = 58
    Height = 13
    Caption = 'Jumlah_Jual'
  end
  object DBGrid1: TDBGrid
    Left = 64
    Top = 33
    Width = 657
    Height = 224
    DataSource = DM.DSBarang
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Kode'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Barang'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Harga_Beli'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Harga_Jual'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Stock'
        ReadOnly = True
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 208
    Top = 304
    Width = 121
    Height = 21
    DataField = 'sum(stock)'
    DataSource = DM.QDSJumlah_Stock
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 208
    Top = 336
    Width = 121
    Height = 21
    DataField = 'sum(Harga_Beli)'
    DataSource = DM.QJumlah_Beli
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 208
    Top = 373
    Width = 121
    Height = 21
    DataField = 'sum(Harga_Jual)'
    DataSource = DM.Q_Jumlah_Jual
    TabOrder = 3
  end
end
