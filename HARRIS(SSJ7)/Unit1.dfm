object Fuser: TFuser
  Left = 0
  Top = 0
  Caption = 'Form User'
  ClientHeight = 508
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
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
    Top = 32
    Width = 641
    Height = 481
    ActivePage = TabSheet3
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Daftar User'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label11: TLabel
        Left = 80
        Top = 381
        Width = 50
        Height = 13
        Caption = 'Filter Data'
      end
      object DBGrid1: TDBGrid
        Left = 64
        Top = 72
        Width = 449
        Height = 177
        DataSource = DM.DSUsers
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
        DataSource = DM.DSUsers
        TabOrder = 1
      end
      object CheckBox1: TCheckBox
        Left = 263
        Top = 380
        Width = 97
        Height = 17
        Caption = 'Seleksi'
        TabOrder = 2
        OnClick = CheckBox1Click
      end
      object Edit4: TEdit
        Left = 136
        Top = 378
        Width = 121
        Height = 21
        TabOrder = 3
        Text = 'Edit4'
        OnChange = CheckBox1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'List User'
      ImageIndex = 1
      object DBCtrlGrid1: TDBCtrlGrid
        Left = 0
        Top = 3
        Width = 606
        Height = 321
        DataSource = DM.DSUsers
        PanelHeight = 107
        PanelWidth = 589
        TabOrder = 0
        object Label1: TLabel
          Left = 24
          Top = 16
          Width = 48
          Height = 13
          Caption = 'Username'
        end
        object Label2: TLabel
          Left = 24
          Top = 35
          Width = 46
          Height = 13
          Caption = 'Password'
        end
        object Label3: TLabel
          Left = 24
          Top = 54
          Width = 25
          Height = 13
          Caption = 'Level'
        end
        object Label4: TLabel
          Left = 24
          Top = 78
          Width = 18
          Height = 13
          Caption = 'Mail'
        end
        object DBEdit1: TDBEdit
          Left = 112
          Top = 13
          Width = 121
          Height = 21
          DataField = 'Username'
          DataSource = DM.DSUsers
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 112
          Top = 32
          Width = 121
          Height = 21
          DataField = 'Password'
          DataSource = DM.DSUsers
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 112
          Top = 83
          Width = 121
          Height = 21
          DataField = 'email'
          DataSource = DM.DSUsers
          TabOrder = 2
        end
        object DBImage1: TDBImage
          Left = 480
          Top = 0
          Width = 105
          Height = 105
          DataField = 'foto'
          DataSource = DM.DSUsers
          TabOrder = 3
        end
        object DBComboBox1: TDBComboBox
          Left = 112
          Top = 56
          Width = 145
          Height = 21
          DataField = 'Level'
          DataSource = DM.DSUsers
          TabOrder = 4
        end
      end
      object DBNavigator2: TDBNavigator
        Left = 0
        Top = 330
        Width = 348
        Height = 50
        DataSource = DM.DSUsers
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
      Caption = 'Data User'
      ImageIndex = 2
      object Label5: TLabel
        Left = 24
        Top = 3
        Width = 48
        Height = 13
        Caption = 'Username'
      end
      object Label6: TLabel
        Left = 24
        Top = 22
        Width = 46
        Height = 13
        Caption = 'Password'
      end
      object Label7: TLabel
        Left = 24
        Top = 54
        Width = 25
        Height = 13
        Caption = 'Level'
      end
      object Label8: TLabel
        Left = 24
        Top = 80
        Width = 24
        Height = 13
        Caption = 'Email'
      end
      object Label9: TLabel
        Left = 41
        Top = 328
        Width = 45
        Height = 13
        Caption = 'Data Cari'
      end
      object Label10: TLabel
        Left = 35
        Top = 416
        Width = 37
        Height = 13
        Caption = 'Label10'
      end
      object DBEdit4: TDBEdit
        Left = 108
        Top = 0
        Width = 121
        Height = 21
        DataField = 'Username'
        DataSource = DM.DSUsers
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 108
        Top = 27
        Width = 121
        Height = 21
        DataField = 'Password'
        DataSource = DM.DSUsers
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 108
        Top = 81
        Width = 121
        Height = 21
        DataField = 'email'
        DataSource = DM.DSUsers
        TabOrder = 2
      end
      object DBImage2: TDBImage
        Left = 216
        Top = 128
        Width = 105
        Height = 105
        DataField = 'foto'
        DataSource = DM.DSUsers
        Stretch = True
        TabOrder = 3
        OnClick = DBImage2Click
      end
      object Button6: TButton
        Left = 32
        Top = 272
        Width = 75
        Height = 25
        Action = DatasetInsert1
        TabOrder = 4
      end
      object Button7: TButton
        Left = 154
        Top = 272
        Width = 75
        Height = 25
        Action = DatasetDelete1
        TabOrder = 5
      end
      object Button8: TButton
        Left = 272
        Top = 272
        Width = 75
        Height = 25
        Action = DatasetPost1
        TabOrder = 6
      end
      object Button9: TButton
        Left = 400
        Top = 272
        Width = 75
        Height = 25
        Action = DatasetEdit1
        TabOrder = 7
      end
      object Button10: TButton
        Left = 528
        Top = 272
        Width = 75
        Height = 25
        Action = DatasetCancel1
        TabOrder = 8
      end
      object DBNavigator3: TDBNavigator
        Left = 388
        Top = 3
        Width = 96
        Height = 225
        DataSource = DM.DSUsers
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
        Kind = dbnVertical
        TabOrder = 9
      end
      object DBComboBox2: TDBComboBox
        Left = 108
        Top = 54
        Width = 145
        Height = 21
        DataField = 'Level'
        DataSource = DM.DSUsers
        TabOrder = 10
      end
      object Edit1: TEdit
        Left = 96
        Top = 325
        Width = 121
        Height = 21
        TabOrder = 11
      end
      object Button11: TButton
        Left = 246
        Top = 323
        Width = 75
        Height = 25
        Caption = 'Cari'
        TabOrder = 12
        OnClick = Button11Click
      end
      object Edit2: TEdit
        Left = 96
        Top = 360
        Width = 121
        Height = 21
        TabOrder = 13
      end
      object Button12: TButton
        Left = 246
        Top = 354
        Width = 75
        Height = 25
        Caption = 'Cari'
        TabOrder = 14
        OnClick = Button12Click
      end
      object Edit3: TEdit
        Left = 272
        Top = 408
        Width = 121
        Height = 21
        TabOrder = 15
      end
      object Button13: TButton
        Left = 424
        Top = 408
        Width = 75
        Height = 25
        Caption = 'Cari'
        TabOrder = 16
        OnClick = Button13Click
      end
      object ComboBox1: TComboBox
        Left = 78
        Top = 408
        Width = 145
        Height = 21
        ItemIndex = 0
        TabOrder = 17
        Text = 'Username'
        Items.Strings = (
          'Username'
          'email')
      end
    end
  end
  object ActionList1: TActionList
    Left = 696
    Top = 440
    object DatasetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Tambah'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = DM.DSUsers
    end
    object DatasetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Hapus'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = DM.DSUsers
    end
    object DatasetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Ubah'
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = DM.DSUsers
    end
    object DatasetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = '&Simpan'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = DM.DSUsers
    end
    object DatasetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Keluar'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = DM.DSUsers
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 624
    Top = 456
  end
end
