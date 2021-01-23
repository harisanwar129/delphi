object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'FSuplayer'
  ClientHeight = 497
  ClientWidth = 766
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
    Left = 0
    Top = 29
    Width = 705
    Height = 425
    ActivePage = TabSheet3
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Daftar Suplayer'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 75
        Width = 633
        Height = 142
        DataSource = DM.DSSuplayer
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBNavigator1: TDBNavigator
        Left = 64
        Top = 288
        Width = 440
        Height = 49
        DataSource = DM.DSSuplayer
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Kelola Suplyer'
      ImageIndex = 1
      object DBCtrlGrid1: TDBCtrlGrid
        Left = 3
        Top = 0
        Width = 694
        Height = 337
        DataSource = DM.DSSuplayer
        PanelHeight = 112
        PanelWidth = 677
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 8
          Width = 72
          Height = 13
          Caption = 'Kode_Suplayer'
        end
        object Label2: TLabel
          Left = 16
          Top = 27
          Width = 75
          Height = 13
          Caption = 'Nama_Suplayer'
        end
        object Label3: TLabel
          Left = 16
          Top = 46
          Width = 33
          Height = 13
          Caption = 'Alamat'
        end
        object Label4: TLabel
          Left = 19
          Top = 65
          Width = 22
          Height = 13
          Caption = 'Kota'
        end
        object Label9: TLabel
          Left = 280
          Top = 16
          Width = 33
          Height = 13
          Caption = 'Kontak'
        end
        object Label11: TLabel
          Left = 280
          Top = 35
          Width = 58
          Height = 13
          Caption = 'Non_Kontak'
        end
        object Label12: TLabel
          Left = 289
          Top = 54
          Width = 24
          Height = 13
          Caption = 'Email'
        end
        object DBEdit1: TDBEdit
          Left = 128
          Top = 5
          Width = 121
          Height = 21
          DataField = 'Kode_Suplayer'
          DataSource = DM.DSSuplayer
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 128
          Top = 24
          Width = 121
          Height = 21
          DataField = 'Nama_Suplayer'
          DataSource = DM.DSSuplayer
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 128
          Top = 51
          Width = 121
          Height = 21
          DataField = 'Alamat'
          DataSource = DM.DSSuplayer
          TabOrder = 2
        end
        object DBEdit7: TDBEdit
          Left = 128
          Top = 78
          Width = 121
          Height = 21
          DataField = 'Kota'
          DataSource = DM.DSSuplayer
          TabOrder = 3
        end
        object DBEdit8: TDBEdit
          Left = 408
          Top = 5
          Width = 121
          Height = 21
          DataField = 'Kontak'
          DataSource = DM.DSSuplayer
          TabOrder = 4
        end
        object DBEdit11: TDBEdit
          Left = 408
          Top = 32
          Width = 121
          Height = 21
          DataField = 'Non_Kontak'
          DataSource = DM.DSSuplayer
          TabOrder = 5
        end
        object DBEdit12: TDBEdit
          Left = 408
          Top = 59
          Width = 121
          Height = 21
          DataField = 'email'
          DataSource = DM.DSSuplayer
          TabOrder = 6
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
      Caption = 'Data Suplayer'
      ImageIndex = 2
      object Label5: TLabel
        Left = 297
        Top = 62
        Width = 24
        Height = 13
        Caption = 'Email'
      end
      object Label6: TLabel
        Left = 288
        Top = 43
        Width = 58
        Height = 13
        Caption = 'Non_Kontak'
      end
      object Label7: TLabel
        Left = 288
        Top = 24
        Width = 33
        Height = 13
        Caption = 'Kontak'
      end
      object Label8: TLabel
        Left = 27
        Top = 73
        Width = 22
        Height = 13
        Caption = 'Kota'
      end
      object Label10: TLabel
        Left = 24
        Top = 54
        Width = 33
        Height = 13
        Caption = 'Alamat'
      end
      object Label13: TLabel
        Left = 24
        Top = 35
        Width = 75
        Height = 13
        Caption = 'Nama_Suplayer'
      end
      object Label14: TLabel
        Left = 24
        Top = 16
        Width = 72
        Height = 13
        Caption = 'Kode_Suplayer'
      end
      object Button6: TButton
        Left = 27
        Top = 272
        Width = 75
        Height = 25
        Action = DatasetInsert1
        TabOrder = 0
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 136
        Top = 272
        Width = 75
        Height = 25
        Action = DatasetEdit1
        TabOrder = 1
        OnClick = Button7Click
      end
      object Button8: TButton
        Left = 271
        Top = 272
        Width = 75
        Height = 25
        Action = DatasetDelete1
        TabOrder = 2
        OnClick = Button8Click
      end
      object Button9: TButton
        Left = 416
        Top = 272
        Width = 75
        Height = 25
        Action = DatasetPost1
        TabOrder = 3
        OnClick = Button9Click
      end
      object Button10: TButton
        Left = 520
        Top = 272
        Width = 75
        Height = 25
        Action = DatasetCancel1
        TabOrder = 4
        OnClick = Button10Click
      end
      object DBNavigator3: TDBNavigator
        Left = 572
        Top = 13
        Width = 96
        Height = 225
        DataSource = DM.DSSuplayer
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
        Kind = dbnVertical
        TabOrder = 5
      end
      object DBEdit4: TDBEdit
        Left = 416
        Top = 67
        Width = 121
        Height = 21
        DataField = 'email'
        DataSource = DM.DSSuplayer
        TabOrder = 6
      end
      object DBEdit5: TDBEdit
        Left = 416
        Top = 40
        Width = 121
        Height = 21
        DataField = 'Non_Kontak'
        DataSource = DM.DSSuplayer
        TabOrder = 7
      end
      object DBEdit6: TDBEdit
        Left = 416
        Top = 13
        Width = 121
        Height = 21
        DataField = 'Kontak'
        DataSource = DM.DSSuplayer
        TabOrder = 8
      end
      object DBEdit9: TDBEdit
        Left = 136
        Top = 86
        Width = 121
        Height = 21
        DataField = 'Kota'
        DataSource = DM.DSSuplayer
        TabOrder = 9
      end
      object DBEdit10: TDBEdit
        Left = 136
        Top = 59
        Width = 121
        Height = 21
        DataField = 'Alamat'
        DataSource = DM.DSSuplayer
        TabOrder = 10
      end
      object DBEdit13: TDBEdit
        Left = 136
        Top = 32
        Width = 121
        Height = 21
        DataField = 'Nama_Suplayer'
        DataSource = DM.DSSuplayer
        TabOrder = 11
      end
      object DBEdit14: TDBEdit
        Left = 136
        Top = 13
        Width = 121
        Height = 21
        DataField = 'Kode_Suplayer'
        DataSource = DM.DSSuplayer
        TabOrder = 12
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
      DataSource = DM.DSSuplayer
    end
    object DatasetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Hapus'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = DM.DSSuplayer
    end
    object DatasetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Ubah'
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = DM.DSSuplayer
    end
    object DatasetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = '&Simpan'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = DM.DSSuplayer
    end
    object DatasetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Keluar'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = DM.DSSuplayer
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 624
    Top = 426
  end
end
