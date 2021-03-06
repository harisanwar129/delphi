object DM: TDM
  OldCreateOrder = False
  Height = 434
  Width = 675
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=Prakt' +
      'ikum;Initial Catalog=praktikum'
    LoginPrompt = False
    Left = 336
    Top = 64
  end
  object ADOUsers: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'users'
    Left = 56
    Top = 120
  end
  object DSUsers: TDataSource
    DataSet = ADOUsers
    Left = 136
    Top = 120
  end
  object ADOBarang: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'barang'
    Left = 248
    Top = 128
    object ADOBarangKode: TStringField
      FieldName = 'Kode'
      Size = 10
    end
    object ADOBarangBarang: TStringField
      FieldName = 'Barang'
      Size = 50
    end
    object ADOBarangHarga_Beli: TFloatField
      FieldName = 'Harga_Beli'
    end
    object ADOBarangHarga_Jual: TFloatField
      FieldName = 'Harga_Jual'
    end
    object ADOBarangStock: TIntegerField
      FieldName = 'Stock'
    end
  end
  object DSBarang: TDataSource
    DataSet = ADOBarang
    Left = 320
    Top = 128
  end
  object ADSuplayer: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'suplayer'
    Left = 424
    Top = 136
  end
  object DSSuplayer: TDataSource
    DataSet = ADSuplayer
    Left = 504
    Top = 136
  end
  object ADOFakturJual: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'fakturjual'
    Left = 56
    Top = 224
  end
  object DSFakturJual: TDataSource
    DataSet = ADOFakturJual
    Left = 136
    Top = 224
  end
  object ADODetailJual: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    BeforePost = ADODetailJualBeforePost
    OnCalcFields = ADODetailJualCalcFields
    IndexFieldNames = 'NoFaktur'
    MasterFields = 'NoFaktur'
    MasterSource = DSFakturJual
    TableName = 'detailjual'
    Left = 240
    Top = 232
    object ADODetailJualNoFaktur: TStringField
      FieldName = 'NoFaktur'
      Size = 15
    end
    object ADODetailJualKode: TStringField
      FieldName = 'Kode'
      Size = 15
    end
    object ADODetailJualNama_Barang: TStringField
      FieldKind = fkLookup
      FieldName = 'Nama_Barang'
      LookupDataSet = ADOBarang
      LookupKeyFields = 'Kode'
      LookupResultField = 'Barang'
      KeyFields = 'Kode'
      Lookup = True
    end
    object ADODetailJualHarga_Barang: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'Harga_Barang'
      LookupDataSet = ADOBarang
      LookupKeyFields = 'Kode'
      LookupResultField = 'Harga_Jual'
      KeyFields = 'Kode'
      Lookup = True
    end
    object ADODetailJualJumlah: TIntegerField
      FieldName = 'Jumlah'
    end
    object ADODetailJualTotal_Jual: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total_Jual'
      Calculated = True
    end
  end
  object DSDetailJual: TDataSource
    DataSet = ADODetailJual
    Left = 312
    Top = 232
  end
  object ADOFakturBeli: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'fakturbeli'
    Left = 408
    Top = 232
    object ADOFakturBeliNoFaktur: TStringField
      FieldName = 'NoFaktur'
      Size = 15
    end
    object ADOFakturBeliKodeSuplayer: TStringField
      FieldName = 'KodeSuplayer'
      Size = 10
    end
    object ADOFakturBeliTgl: TDateField
      FieldName = 'Tgl'
    end
    object ADOFakturBeliTotal: TFloatField
      FieldName = 'Total'
    end
  end
  object DSFakturBeli: TDataSource
    DataSet = ADOFakturBeli
    Left = 496
    Top = 232
  end
  object ADODetailBeil: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnCalcFields = ADODetailBeilCalcFields
    IndexFieldNames = 'NoFaktur'
    MasterFields = 'NoFaktur'
    MasterSource = DSFakturBeli
    TableName = 'detailbeli'
    Left = 56
    Top = 312
    object ADODetailBeilNoFaktur: TStringField
      FieldName = 'NoFaktur'
      Size = 15
    end
    object ADODetailBeilKode: TStringField
      FieldName = 'Kode'
      Size = 15
    end
    object ADODetailBeilNama_Barang: TStringField
      FieldKind = fkLookup
      FieldName = 'Nama_Barang'
      LookupDataSet = ADOBarang
      LookupKeyFields = 'Kode'
      LookupResultField = 'Barang'
      KeyFields = 'Kode'
      Lookup = True
    end
    object ADODetailBeilHarga_Barang: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'Harga_Barang'
      LookupDataSet = ADOBarang
      LookupKeyFields = 'Kode'
      LookupResultField = 'Harga_Beli'
      KeyFields = 'Kode'
      Lookup = True
    end
    object ADODetailBeilJumlah: TIntegerField
      FieldName = 'Jumlah'
    end
    object ADODetailBeilTotal_Beli: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total_Beli'
      Calculated = True
    end
  end
  object DSDetailBeli: TDataSource
    DataSet = ADODetailBeil
    Left = 144
    Top = 312
  end
  object QBarang: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Barang')
    Left = 240
    Top = 312
  end
  object DSQBarang: TDataSource
    DataSet = QBarang
    Left = 304
    Top = 312
  end
  object Q_Jumlah_Stock: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(stock) from barang')
    Left = 416
    Top = 320
  end
  object Q_Jumlah_Beli: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(Harga_Beli) from barang')
    Left = 256
    Top = 386
  end
  object QDSJumlah_Stock: TDataSource
    DataSet = Q_Jumlah_Stock
    Left = 496
    Top = 320
  end
  object QJumlah_Beli: TDataSource
    DataSet = Q_Jumlah_Beli
    Left = 336
    Top = 386
  end
  object Q__jumlah_Jual: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(Harga_Jual) from barang')
    Left = 64
    Top = 392
    object Q__jumlah_JualsumHarga_Jual: TFloatField
      FieldName = 'sum(Harga_Jual)'
      ReadOnly = True
    end
  end
  object Q_Jumlah_Jual: TDataSource
    DataSet = Q__jumlah_Jual
    Left = 136
    Top = 400
  end
end
