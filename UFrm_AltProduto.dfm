object Frm_AltProduto: TFrm_AltProduto
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 78
  ClientWidth = 370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 12
    Top = 6
    Width = 64
    Height = 13
    Caption = 'Data Inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 151
    Top = 6
    Width = 56
    Height = 13
    Caption = 'Data Final'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RLReport2: TRLReport
    Left = 56
    Top = 118
    Width = 794
    Height = 1123
    Borders.Sides = sdAll
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Visible = False
    object RLBand7: TRLBand
      Left = 39
      Top = 39
      Width = 716
      Height = 23
      BandType = btHeader
      object RLSystemInfo4: TRLSystemInfo
        Left = 584
        Top = 0
        Width = 132
        Height = 23
        Align = faClientRight
        Alignment = taCenter
        Borders.Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itNow
        ParentFont = False
        Text = 'Relat'#243'rio emitido em '
      end
    end
    object RLBand8: TRLBand
      Left = 39
      Top = 62
      Width = 716
      Height = 46
      BandType = btTitle
      Color = clGradientActiveCaption
      ParentColor = False
      Transparent = False
      object RLLabel14: TRLLabel
        Left = 3
        Top = 3
        Width = 377
        Height = 23
        Caption = 'RELAT'#211'RIO ALTERA'#199#195'O DE PRODUTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel1: TRLLabel
        Left = 6
        Top = 26
        Width = 56
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
    object RLDetailGrid2: TRLDetailGrid
      Left = 39
      Top = 127
      Width = 716
      Height = 16
      Color = clInactiveBorder
      ParentColor = False
      Transparent = False
      BeforePrint = RLDetailGrid2BeforePrint
      object RLDBText10: TRLDBText
        Left = 289
        Top = 0
        Width = 245
        Height = 16
        Align = faLeft
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'DESCRICAO'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText15: TRLDBText
        Left = 126
        Top = 0
        Width = 53
        Height = 16
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'REF'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText11: TRLDBText
        Left = 179
        Top = 0
        Width = 110
        Height = 16
        Align = faLeft
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'CODIGO_BARRA'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText12: TRLDBText
        Left = 534
        Top = 0
        Width = 97
        Height = 16
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'NOME'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText1: TRLDBText
        Left = 0
        Top = 0
        Width = 126
        Height = 16
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        DataField = 'DATA_UP'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
    end
    object RLBand10: TRLBand
      Left = 39
      Top = 108
      Width = 716
      Height = 19
      BandType = btColumnHeader
      object RLLabel18: TRLLabel
        Left = 289
        Top = 2
        Width = 47
        Height = 14
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLDBText10
        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = 0
        Top = 0
        Width = 126
        Height = 19
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'Altera'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel24: TRLLabel
        Left = 190
        Top = 2
        Width = 84
        Height = 14
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'C'#243'd. de Barras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel25: TRLLabel
        Left = 140
        Top = 0
        Width = 24
        Height = 19
        Align = faLeft
        Alignment = taCenter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Ref.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLDBText15
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 559
        Top = 2
        Width = 46
        Height = 14
        Alignment = taCenter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Usu'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLDBText12
        ParentFont = False
      end
    end
    object RLBand11: TRLBand
      Left = 39
      Top = 143
      Width = 716
      Height = 16
      BandType = btColumnFooter
      object RLSystemInfo5: TRLSystemInfo
        Left = 447
        Top = 0
        Width = 157
        Height = 16
        Align = faRight
        Info = itPageNumber
        Text = 'Pagina # de  '
      end
      object RLSystemInfo6: TRLSystemInfo
        Left = 604
        Top = 0
        Width = 112
        Height = 16
        Align = faRight
        Info = itLastPageNumber
        Text = ''
      end
    end
  end
  object RzDateTimeEdit1: TRzDateTimeEdit
    Left = 12
    Top = 26
    Width = 111
    Height = 21
    EditType = etDate
    TabOrder = 1
  end
  object RzDateTimeEdit2: TRzDateTimeEdit
    Left = 150
    Top = 26
    Width = 111
    Height = 21
    EditType = etDate
    TabOrder = 2
  end
  object Button1: TButton
    Left = 267
    Top = 20
    Width = 93
    Height = 36
    Caption = 'Visualizar / Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'SELECT PRODUTOS.data_up,Produtos.codigo_barra, PRODUTOS.ref, pro' +
      'dutos.descricao, funcionarios.nome'#13#10'FROM PRODUTOS'#13#10'LEFT JOIN fun' +
      'cionarios ON(funcionarios.id_funcionario = PRODUTOS.user_up)'#13#10'WH' +
      'ERE ((CAST(PRODUTOS.DATA_UP as DATE) >=:I) AND (CAST(PRODUTOS.DA' +
      'TA_UP AS DATE) <=:f))'#13#10'order by PRODUTOS.data_up, funcionarios.i' +
      'd_funcionario'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'I'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'f'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection1
    Left = 128
    Top = 64
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 216
    Top = 64
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 312
    Top = 64
    object ClientDataSet1CODIGO_BARRA: TStringField
      FieldName = 'CODIGO_BARRA'
      Size = 40
    end
    object ClientDataSet1REF: TStringField
      FieldName = 'REF'
      Size = 15
    end
    object ClientDataSet1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object ClientDataSet1NOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object ClientDataSet1DATA_UP: TSQLTimeStampField
      FieldName = 'DATA_UP'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 408
    Top = 72
  end
end
