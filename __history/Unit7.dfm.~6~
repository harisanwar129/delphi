object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Transaksi Beli'
  ClientHeight = 364
  ClientWidth = 765
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
    Left = 400
    Top = 192
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 408
    Top = 200
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 765
    Height = 364
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Transaksi'
      OnContextPopup = TabSheet1ContextPopup
      ExplicitLeft = 8
      ExplicitTop = 28
      object Label3: TLabel
        Left = 15
        Top = 272
        Width = 31
        Height = 13
        Caption = 'Label3'
      end
      object Label4: TLabel
        Left = 15
        Top = 5
        Width = 31
        Height = 13
        Caption = 'Label4'
      end
      object DBGrid1: TDBGrid
        Left = 15
        Top = 24
        Width = 348
        Height = 57
        DataSource = DM.DSFakturBeli
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBNavigator1: TDBNavigator
        Left = 15
        Top = 87
        Width = 530
        Height = 42
        DataSource = DM.DSFakturBeli
        TabOrder = 1
      end
      object DBGrid2: TDBGrid
        Left = 15
        Top = 135
        Width = 546
        Height = 54
        DataSource = DM.DSDetailBeli
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBNavigator2: TDBNavigator
        Left = 15
        Top = 195
        Width = 560
        Height = 25
        DataSource = DM.DSDetailBeli
        TabOrder = 3
      end
      object Button3: TButton
        Left = 288
        Top = 243
        Width = 75
        Height = 25
        Caption = 'Cetak'
        TabOrder = 4
        OnClick = Button3Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Barang'
      ImageIndex = 1
      ExplicitLeft = 8
      ExplicitTop = 28
      object DBGrid3: TDBGrid
        Left = 40
        Top = 24
        Width = 601
        Height = 120
        DataSource = DM.DSBarang
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Button1: TButton
        Left = 566
        Top = 208
        Width = 75
        Height = 25
        Caption = 'Keluar'
        TabOrder = 1
      end
      object Button2: TButton
        Left = 112
        Top = 256
        Width = 75
        Height = 25
        Caption = 'Cetak'
        TabOrder = 2
        OnClick = Button2Click
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 608
    Top = 336
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DM.DSBarang
    BCDToCurrency = False
    Left = 376
    Top = 264
  end
  object frxReport1: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44165.989814328700000000
    ReportOptions.LastChange = 44165.989814328700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 432
    Top = 272
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 14211288
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 15790320
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 740.409927000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'Laporan Stock Barang')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 113.385900000000000000
        Top = 105.826840000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo2: TfrxMemoView
          Width = 76.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Kode')
          ParentFont = False
          Style = 'Header'
        end
        object Memo3: TfrxMemoView
          Left = 94.897650000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Kode'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Kode"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo4: TfrxMemoView
          Top = 18.897650000000000000
          Width = 76.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Barang')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 94.897650000000000000
          Top = 18.897650000000000000
          Width = 372.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Barang'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Barang"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo6: TfrxMemoView
          Top = 37.795300000000000000
          Width = 76.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Harga_Beli')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 94.897650000000000000
          Top = 37.795300000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Harga_Beli'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Harga_Beli"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo8: TfrxMemoView
          Top = 56.692950000000000000
          Width = 76.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Harga_Jual')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          Left = 94.897650000000000000
          Top = 56.692950000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Harga_Jual'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Harga_Jual"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          Top = 75.590600000000000000
          Width = 76.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Stock')
          ParentFont = False
          Style = 'Header'
        end
        object Memo11: TfrxMemoView
          Left = 94.897650000000000000
          Top = 75.590600000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Stock'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Stock"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 279.685220000000000000
        Width = 740.409927000000000000
        object Memo12: TfrxMemoView
          Align = baWidth
          Width = 740.409927000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo13: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo14: TfrxMemoView
          Align = baRight
          Left = 664.819327000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = DM.DSFakturBeli
    BCDToCurrency = False
    Left = 516
    Top = 288
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    DataSource = DM.DSDetailBeli
    BCDToCurrency = False
    Left = 612
    Top = 288
  end
  object frxReport2: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44165.995097986100000000
    ReportOptions.LastChange = 44165.995097986100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 692
    Top = 264
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 14211288
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 15790320
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 740.409927000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'Detail Beli')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 132.283550000000000000
        Top = 151.181200000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        object Memo2: TfrxMemoView
          Width = 95.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'NoFaktur')
          ParentFont = False
          Style = 'Header'
        end
        object Memo3: TfrxMemoView
          Left = 113.897650000000000000
          Width = 114.000000000000000000
          Height = 18.897650000000000000
          DataField = 'NoFaktur'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset3."NoFaktur"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo4: TfrxMemoView
          Top = 18.897650000000000000
          Width = 95.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Kode')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 113.897650000000000000
          Top = 18.897650000000000000
          Width = 114.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Kode'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset3."Kode"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo6: TfrxMemoView
          Top = 37.795300000000000000
          Width = 95.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Nama_Barang')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 113.897650000000000000
          Top = 37.795300000000000000
          Width = 151.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Nama_Barang'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset3."Nama_Barang"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo8: TfrxMemoView
          Top = 56.692950000000000000
          Width = 95.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Harga_Barang')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          Left = 113.897650000000000000
          Top = 56.692950000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Harga_Barang'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset3."Harga_Barang"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          Top = 75.590600000000000000
          Width = 95.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Jumlah')
          ParentFont = False
          Style = 'Header'
        end
        object Memo11: TfrxMemoView
          Left = 113.897650000000000000
          Top = 75.590600000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Jumlah'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset3."Jumlah"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          Top = 94.488250000000000000
          Width = 95.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Total_Beli')
          ParentFont = False
          Style = 'Header'
        end
        object Memo13: TfrxMemoView
          Left = 113.897650000000000000
          Top = 94.488250000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Total_Beli'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset3."Total_Beli"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 389.291590000000000000
        Width = 740.409927000000000000
        object Memo15: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo16: TfrxMemoView
          Align = baRight
          Left = 664.819327000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
        object Memo14: TfrxMemoView
          Align = baWidth
          Width = 740.409927000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 343.937230000000000000
        Width = 740.409927000000000000
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 740.409927000000000000
      end
    end
  end
end
