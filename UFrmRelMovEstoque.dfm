object FrmRelMovEstoque: TFrmRelMovEstoque
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'MOVIMENTA'#199#195'O DE ESTOQUE COM GRADE'
  ClientHeight = 78
  ClientWidth = 387
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
  object RzDateTimeEdit1: TRzDateTimeEdit
    Left = 12
    Top = 26
    Width = 111
    Height = 21
    EditType = etDate
    TabOrder = 0
  end
  object RzDateTimeEdit2: TRzDateTimeEdit
    Left = 150
    Top = 26
    Width = 111
    Height = 21
    EditType = etDate
    TabOrder = 1
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
    TabOrder = 2
    OnClick = Button1Click
  end
  object RLReport1: TRLReport
    Left = -685
    Top = 62
    Width = 1123
    Height = 794
    Borders.Sides = sdAll
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    Visible = False
    object RLBand4: TRLBand
      Left = 39
      Top = 39
      Width = 1045
      Height = 23
      BandType = btHeader
      object RLSystemInfo2: TRLSystemInfo
        Left = 913
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
    object RLBand3: TRLBand
      Left = 39
      Top = 121
      Width = 1045
      Height = 49
      BandType = btTitle
      BeforePrint = RLBand3BeforePrint
      object RLLabel11: TRLLabel
        Left = 14
        Top = 11
        Width = 151
        Height = 16
        Caption = 'RELAT'#211'RIO DE VENDAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 14
        Top = 30
        Width = 119
        Height = 13
        Caption = 'RELAT'#211'RIO DE VENDAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 39
      Top = 219
      Width = 1045
      Height = 29
      BandType = btSummary
      object RLLabel10: TRLLabel
        Left = 919
        Top = 0
        Width = 126
        Height = 16
        Align = faRightTop
        Alignment = taRightJustify
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = '    TOTAL DE VENDAS    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLDetailGrid1: TRLDetailGrid
      Left = 39
      Top = 187
      Width = 1045
      Height = 16
      BeforePrint = RLDetailGrid1BeforePrint
      object RLDBText2: TRLDBText
        Left = 305
        Top = 0
        Width = 233
        Height = 16
        Align = faLeft
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'PRODUTO'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 822
        Top = -1
        Width = 90
        Height = 14
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'VALOR_UNITARIO'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 919
        Top = 0
        Width = 92
        Height = 14
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'VALOR_TOTAL'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 81
        Top = 0
        Width = 61
        Height = 16
        Align = faLeft
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'ID_PEDIDO'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 0
        Top = 0
        Width = 81
        Height = 16
        Align = faLeft
        AutoSize = False
        DataField = 'DATA_FATURAMENTO'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 142
        Top = 0
        Width = 59
        Height = 16
        Align = faLeft
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
      end
      object RLDBText5: TRLDBText
        Left = 731
        Top = -1
        Width = 62
        Height = 14
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'TAMANHO'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 544
        Top = 0
        Width = 153
        Height = 14
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'GRADE'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel9: TRLLabel
        Left = 201
        Top = 0
        Width = 104
        Height = 16
        Align = faLeft
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand1: TRLBand
      Left = 39
      Top = 170
      Width = 1045
      Height = 17
      BandType = btColumnHeader
      object RLLabel3: TRLLabel
        Left = 305
        Top = 3
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
        Holder = RLDBText2
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 822
        Top = 0
        Width = 32
        Height = 14
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLDBText6
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 731
        Top = 0
        Width = 54
        Height = 14
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Tamanho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLDBText5
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 919
        Top = -3
        Width = 88
        Height = 14
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Total do Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLDBText7
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 81
        Top = 0
        Width = 54
        Height = 14
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'ID Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLDBText9
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 0
        Width = 65
        Height = 17
        Align = faLeft
        Caption = 'Data de Fat.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLDBText3
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 201
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
        Holder = RLLabel9
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 142
        Top = 0
        Width = 24
        Height = 14
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
        Holder = RLDBText4
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 544
        Top = 0
        Width = 23
        Height = 14
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Cor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLDBText8
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 39
      Top = 203
      Width = 1045
      Height = 16
      BandType = btColumnFooter
      object RLSystemInfo1: TRLSystemInfo
        Left = 842
        Top = 0
        Width = 91
        Height = 16
        Align = faRight
        Info = itPageNumber
        Text = '#/'
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 933
        Top = 0
        Width = 112
        Height = 16
        Align = faRight
        Info = itLastPageNumber
        Text = ''
      end
    end
    object RLBand6: TRLBand
      Left = 39
      Top = 62
      Width = 1045
      Height = 59
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLDBText1: TRLDBText
        Left = 451
        Top = 18
        Width = 142
        Height = 22
        Align = faCenter
        Alignment = taCenter
        DataField = 'NOME_EMPRESA'
        DataSource = DM.DS_Emitente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
    end
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'select * from REL_IC_MOV_PRODUTOS2'#13#10'where data_faturamento >=:i ' +
      'and data_faturamento <=:f  and ES = 1 and status = 2'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'i'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'f'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection1
    Left = 128
    Top = 64
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 312
    Top = 64
    object ClientDataSet1DATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
    end
    object ClientDataSet1DATA_FATURAMENTO: TDateField
      FieldName = 'DATA_FATURAMENTO'
    end
    object ClientDataSet1ID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object ClientDataSet1ID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
    end
    object ClientDataSet1ID_CATEGORIA_PAI: TIntegerField
      FieldName = 'ID_CATEGORIA_PAI'
    end
    object ClientDataSet1MARCA: TStringField
      FieldName = 'MARCA'
      Size = 50
    end
    object ClientDataSet1ID_PRODUTO: TFMTBCDField
      FieldName = 'ID_PRODUTO'
      Precision = 18
      Size = 0
    end
    object ClientDataSet1PRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object ClientDataSet1REF: TStringField
      FieldName = 'REF'
      Size = 15
    end
    object ClientDataSet1CODIGO_FAB: TStringField
      FieldName = 'CODIGO_FAB'
    end
    object ClientDataSet1CODIGO_BARRA: TStringField
      FieldName = 'CODIGO_BARRA'
      Size = 40
    end
    object ClientDataSet1ES: TSmallintField
      FieldName = 'ES'
    end
    object ClientDataSet1CES: TStringField
      FieldName = 'CES'
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1ID_DEPTO: TIntegerField
      FieldName = 'ID_DEPTO'
    end
    object ClientDataSet1CLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 70
    end
    object ClientDataSet1NOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Size = 18
    end
    object ClientDataSet1ID_PEDIDO: TFMTBCDField
      FieldName = 'ID_PEDIDO'
      Precision = 18
      Size = 0
    end
    object ClientDataSet1PEDIDO: TStringField
      FieldName = 'PEDIDO'
      Size = 18
    end
    object ClientDataSet1ID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object ClientDataSet1QTDE: TSingleField
      FieldName = 'QTDE'
    end
    object ClientDataSet1VALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      currency = True
      Precision = 18
      Size = 4
    end
    object ClientDataSet1VALOR_CUSTO: TFMTBCDField
      FieldName = 'VALOR_CUSTO'
      currency = True
      Precision = 18
      Size = 4
    end
    object ClientDataSet1VALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object ClientDataSet1PROCESSO: TSmallintField
      FieldName = 'PROCESSO'
    end
    object ClientDataSet1MOVF1: TIntegerField
      FieldName = 'MOVF1'
    end
    object ClientDataSet1MOVF2: TIntegerField
      FieldName = 'MOVF2'
    end
    object ClientDataSet1ESTOQUE: TSingleField
      FieldName = 'ESTOQUE'
    end
    object ClientDataSet1PESO: TSingleField
      FieldName = 'PESO'
    end
    object ClientDataSet1STATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object ClientDataSet1LOTE: TStringField
      FieldName = 'LOTE'
      Size = 18
    end
    object ClientDataSet1PENEIRA: TStringField
      FieldName = 'PENEIRA'
      Size = 18
    end
    object ClientDataSet1ENTREGA: TSmallintField
      FieldName = 'ENTREGA'
    end
    object ClientDataSet1SALDO: TFloatField
      FieldName = 'SALDO'
    end
    object ClientDataSet1CFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object ClientDataSet1GRADE: TStringField
      FieldName = 'GRADE'
      Size = 50
    end
    object ClientDataSet1TAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object ClientDataSet1COP: TStringField
      FieldName = 'COP'
      FixedChar = True
      Size = 3
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 216
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 408
    Top = 72
  end
  object SQLDataSet2: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 528
    Top = 32
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 704
    Top = 40
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLDataSet2
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 616
    Top = 40
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 776
    Top = 32
  end
end
