object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'FBarang'
  ClientHeight = 454
  ClientWidth = 762
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
  object SpeedButton1: TSpeedButton
    Left = 576
    Top = 128
    Width = 23
    Height = 22
  end
  object PageControl1: TPageControl
    Left = 64
    Top = 29
    Width = 641
    Height = 425
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Daftar Barang'
      object DBGrid1: TDBGrid
        Left = 24
        Top = 84
        Width = 609
        Height = 177
        DataSource = DM.DSBarang
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBNavigator1: TDBNavigator
        Left = 64
        Top = 280
        Width = 440
        Height = 49
        DataSource = DM.DSBarang
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'List Barang'
      ImageIndex = 1
      object DBCtrlGrid1: TDBCtrlGrid
        Left = 0
        Top = 0
        Width = 630
        Height = 324
        DataSource = DM.DSBarang
        PanelHeight = 108
        PanelWidth = 613
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = -2
          Width = 24
          Height = 13
          Caption = 'Kode'
        end
        object Label2: TLabel
          Left = 16
          Top = 19
          Width = 34
          Height = 13
          Caption = 'Barang'
        end
        object Label3: TLabel
          Left = 16
          Top = 38
          Width = 48
          Height = 13
          Caption = 'Harga Beli'
        end
        object Label4: TLabel
          Left = 16
          Top = 57
          Width = 51
          Height = 13
          Caption = 'Harga Jual'
        end
        object Label9: TLabel
          Left = 16
          Top = 76
          Width = 21
          Height = 13
          Caption = 'Stok'
        end
        object DBEdit1: TDBEdit
          Left = 104
          Top = -3
          Width = 121
          Height = 21
          DataField = 'Kode'
          DataSource = DM.DSBarang
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 104
          Top = 16
          Width = 121
          Height = 21
          DataField = 'Barang'
          DataSource = DM.DSBarang
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 104
          Top = 40
          Width = 121
          Height = 21
          DataField = 'Harga_Beli'
          DataSource = DM.DSBarang
          TabOrder = 2
        end
        object DBEdit7: TDBEdit
          Left = 104
          Top = 56
          Width = 121
          Height = 21
          DataField = 'Harga_Jual'
          DataSource = DM.DSBarang
          TabOrder = 3
        end
        object DBEdit8: TDBEdit
          Left = 104
          Top = 80
          Width = 121
          Height = 21
          DataField = 'Stock'
          DataSource = DM.DSBarang
          TabOrder = 4
        end
      end
      object DBNavigator2: TDBNavigator
        Left = 0
        Top = 330
        Width = 348
        Height = 50
        DataSource = DM.DSBarang
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 1
      end
      object Button1: TButton
        Left = 408
        Top = 330
        Width = 75
        Height = 25
        Action = DatasetInsert1
        TabOrder = 2
      end
      object Button2: TButton
        Left = 504
        Top = 330
        Width = 75
        Height = 25
        Action = DatasetEdit1
        TabOrder = 3
      end
      object Button3: TButton
        Left = 376
        Top = 369
        Width = 75
        Height = 25
        Action = DatasetPost1
        TabOrder = 4
      end
      object Button4: TButton
        Left = 464
        Top = 369
        Width = 75
        Height = 25
        Action = DatasetDelete1
        TabOrder = 5
      end
      object Button5: TButton
        Left = 545
        Top = 369
        Width = 75
        Height = 25
        Action = DatasetCancel1
        TabOrder = 6
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Data Barang'
      ImageIndex = 2
      object Label5: TLabel
        Left = 24
        Top = 6
        Width = 24
        Height = 13
        Caption = 'Kode'
      end
      object Label6: TLabel
        Left = 24
        Top = 27
        Width = 34
        Height = 13
        Caption = 'Barang'
      end
      object Label7: TLabel
        Left = 24
        Top = 46
        Width = 48
        Height = 13
        Caption = 'Harga Beli'
      end
      object Label8: TLabel
        Left = 24
        Top = 65
        Width = 51
        Height = 13
        Caption = 'Harga Jual'
      end
      object Label10: TLabel
        Left = 32
        Top = 92
        Width = 21
        Height = 13
        Caption = 'Stok'
      end
      object Button6: TButton
        Left = 32
        Top = 272
        Width = 75
        Height = 25
        Action = DatasetInsert1
        TabOrder = 0
      end
      object Button7: TButton
        Left = 154
        Top = 272
        Width = 75
        Height = 25
        Action = DatasetDelete1
        TabOrder = 1
      end
      object Button8: TButton
        Left = 272
        Top = 272
        Width = 75
        Height = 25
        Action = DatasetPost1
        TabOrder = 2
      end
      object Button9: TButton
        Left = 400
        Top = 272
        Width = 75
        Height = 25
        Action = DatasetEdit1
        TabOrder = 3
      end
      object Button10: TButton
        Left = 528
        Top = 272
        Width = 75
        Height = 25
        Action = DatasetCancel1
        TabOrder = 4
      end
      object DBNavigator3: TDBNavigator
        Left = 388
        Top = 3
        Width = 96
        Height = 225
        DataSource = DM.DSBarang
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
        Kind = dbnVertical
        TabOrder = 5
      end
      object DBEdit4: TDBEdit
        Left = 112
        Top = 5
        Width = 121
        Height = 21
        DataField = 'Kode'
        DataSource = DM.DSBarang
        TabOrder = 6
      end
      object DBEdit5: TDBEdit
        Left = 112
        Top = 24
        Width = 121
        Height = 21
        DataField = 'Barang'
        DataSource = DM.DSBarang
        TabOrder = 7
      end
      object DBEdit6: TDBEdit
        Left = 112
        Top = 48
        Width = 121
        Height = 21
        DataField = 'Harga_Beli'
        DataSource = DM.DSBarang
        TabOrder = 8
      end
      object DBEdit9: TDBEdit
        Left = 112
        Top = 64
        Width = 121
        Height = 21
        DataField = 'Harga_Jual'
        DataSource = DM.DSBarang
        TabOrder = 9
      end
      object DBEdit10: TDBEdit
        Left = 112
        Top = 88
        Width = 121
        Height = 21
        DataField = 'Stock'
        DataSource = DM.DSBarang
        TabOrder = 10
      end
    end
  end
  object ActionList1: TActionList
    Left = 696
    Top = 426
    object DatasetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Tambah'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = DM.DSBarang
    end
    object DatasetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Hapus'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = DM.DSBarang
    end
    object DatasetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Ubah'
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = DM.DSBarang
    end
    object DatasetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = '&Simpan'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = DM.DSBarang
    end
    object DatasetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Keluar'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = DM.DSBarang
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 624
    Top = 426
  end
end
